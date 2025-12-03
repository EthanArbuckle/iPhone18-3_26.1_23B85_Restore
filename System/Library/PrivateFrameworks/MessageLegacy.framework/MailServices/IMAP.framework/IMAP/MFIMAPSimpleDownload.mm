@interface MFIMAPSimpleDownload
- (unint64_t)bytesFetched;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)dealloc;
- (void)handleFetchResult:(id)result;
- (void)processResults;
- (void)setError:(id)error;
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

- (void)handleFetchResult:(id)result
{
  type = [result type];
  switch(type)
  {
    case 7:
      section = self->_section;
      section = [result section];
      v6 = section;
      break;
    case 5:
      v6 = self->_section;
      section = @"TEXT";
      break;
    case 4:
      v6 = self->_section;
      section = @"HEADER";
      break;
    default:
      return;
  }

  if ([(NSString *)v6 caseInsensitiveCompare:section]== NSOrderedSame)
  {
    [(MFIMAPSimpleDownload *)self mf_lock];
    pendingFetchResults = self->super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      pendingFetchResults = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->super._pendingFetchResults = pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:result];

    [(MFIMAPSimpleDownload *)self mf_unlock];
  }
}

- (void)processResults
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  if ((*(self + 64) & 2) == 0)
  {
    currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
    v4 = [(NSMutableArray *)self->super._pendingFetchResults count];
    [(NSMutableArray *)self->super._pendingFetchResults sortUsingFunction:_comparePartialFetchResults context:0];
    for (i = *(self + 64); v4; --v4)
    {
      if ((i & 2) != 0)
      {
        break;
      }

      [(NSMutableArray *)self->super._pendingFetchResults removeObjectAtIndex:0];
      bytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
      v7 = *(self + 64);
      if ((v7 & 2) == 0 && bytesFetched != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      i = v7 & 0xFD;
      *(self + 64) = v8 | v7 & 0xFD;
      if ((v7 & 2) != 0 || bytesFetched == 0 || (*(self + 64) & 1) == 0 || bytesFetched >= self->_length)
      {
        *(self + 64) = v7 | 2;
        error = [currentMonitor error];
        if (error)
        {
          if ([error mf_shouldFailDownload])
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

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  [(MFIMAPSimpleDownload *)self mf_lock:pipeline];
  if (([pipeline isFull] & 1) == 0 && !-[MFIMAPSimpleDownload isComplete](self, "isComplete"))
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    bytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
    [v6 appendString:@"BODY.PEEK["];
    if (self->_section)
    {
      [v6 appendString:?];
    }

    [v6 appendString:@"]"];
    length = self->_length;
    if (*(self + 64))
    {
      length -= bytesFetched;
      v9 = length;
      if (bytesFetched || (v9 = self->_range.length, v9 != 0x7FFFFFFFFFFFFFFFLL))
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

    [pipeline addFetchCommandForUid:self->super._uid fetchItem:v6 expectedLength:length bodyDataConsumer:self->super._mainConsumer consumerSection:self->_section];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)setError:(id)error
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  error = self->_error;
  if (error != error)
  {

    self->_error = error;
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

@end