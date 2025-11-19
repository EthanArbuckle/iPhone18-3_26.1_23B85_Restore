@interface MFIMAPSimpleDownload
- (unint64_t)bytesFetched;
- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4;
- (void)dealloc;
- (void)handleFetchResult:(id)a3;
- (void)processResults;
- (void)setError:(id)a3;
@end

@implementation MFIMAPSimpleDownload

- (unint64_t)bytesFetched
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  v3 = [(MFCountingDataConsumer *)self->super._countingConsumer count];
  [(MFIMAPSimpleDownload *)self mf_unlock];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPSimpleDownload;
  [(MFIMAPDownload *)&v3 dealloc];
}

- (void)handleFetchResult:(id)a3
{
  v5 = [a3 type];
  switch(v5)
  {
    case 7:
      section = self->_section;
      v7 = [a3 section];
      v6 = section;
      break;
    case 5:
      v6 = self->_section;
      v7 = @"TEXT";
      break;
    case 4:
      v6 = self->_section;
      v7 = @"HEADER";
      break;
    default:
      return;
  }

  if ([(NSString *)v6 caseInsensitiveCompare:v7]== NSOrderedSame)
  {
    [(MFIMAPSimpleDownload *)self mf_lock];
    pendingFetchResults = self->super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      pendingFetchResults = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->super._pendingFetchResults = pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:a3];

    [(MFIMAPSimpleDownload *)self mf_unlock];
  }
}

- (void)processResults
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  if ((*(self + 64) & 2) == 0)
  {
    v3 = [MEMORY[0x277D283F8] currentMonitor];
    v4 = [(NSMutableArray *)self->super._pendingFetchResults count];
    [(NSMutableArray *)self->super._pendingFetchResults sortUsingFunction:_comparePartialFetchResults context:0];
    for (i = *(self + 64); v4; --v4)
    {
      if ((i & 2) != 0)
      {
        break;
      }

      [(NSMutableArray *)self->super._pendingFetchResults removeObjectAtIndex:0];
      v6 = [(MFIMAPSimpleDownload *)self bytesFetched];
      v7 = *(self + 64);
      if ((v7 & 2) == 0 && v6 != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      i = v7 & 0xFD;
      *(self + 64) = v8 | v7 & 0xFD;
      if ((v7 & 2) != 0 || v6 == 0 || (*(self + 64) & 1) == 0 || v6 >= self->_length)
      {
        *(self + 64) = v7 | 2;
        v9 = [v3 error];
        if (v9)
        {
          if ([v9 mf_shouldFailDownload])
          {
            v10 = 0;
          }

          else
          {
            v10 = 2;
          }
        }

        else
        {
          v10 = 2;
        }

        i = *(self + 64) & 0xFD | v10;
      }

      *(self + 64) = i;
    }

    if ((i & 2) != 0 && self->_range.length == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_originalDataLength = [(MFIMAPSimpleDownload *)self bytesFetched];
    }

    [(MFBaseFilterDataConsumer *)[(MFIMAPDownload *)self mainConsumer] done];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4
{
  [(MFIMAPSimpleDownload *)self mf_lock:a3];
  if (([a3 isFull] & 1) == 0 && !-[MFIMAPSimpleDownload isComplete](self, "isComplete"))
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v7 = [(MFIMAPSimpleDownload *)self bytesFetched];
    [v6 appendString:@"BODY.PEEK["];
    if (self->_section)
    {
      [v6 appendString:?];
    }

    [v6 appendString:@"]"];
    length = self->_length;
    if (*(self + 64))
    {
      length -= v7;
      v9 = length;
      if (v7 || (v9 = self->_range.length, v9 != 0x7FFFFFFFFFFFFFFFLL))
      {
        if (v9)
        {
          [v6 appendString:@"<"];
          location = self->_range.location;
          [v6 appendString:EFStringWithUnsignedInteger()];
          [v6 appendString:@"."];
          [v6 appendString:EFStringWithUnsignedInteger()];
          [v6 appendString:@">"];
        }
      }
    }

    [a3 addFetchCommandForUid:self->super._uid fetchItem:v6 expectedLength:length bodyDataConsumer:self->super._mainConsumer consumerSection:self->_section];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)setError:(id)a3
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  error = self->_error;
  if (error != a3)
  {

    self->_error = a3;
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

@end