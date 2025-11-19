@interface MFIMAPMessageDownload
- (BOOL)isComplete;
- (MFIMAPMessageDownload)initWithMessage:(id)a3;
- (id)data;
- (id)topLevelPart;
- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4;
- (void)dealloc;
- (void)handleFetchResult:(id)a3;
- (void)processResults;
- (void)setFetchBodyData:(BOOL)a3;
- (void)setTopLevelPart:(id)a3;
@end

@implementation MFIMAPMessageDownload

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v3 dealloc];
}

- (MFIMAPMessageDownload)initWithMessage:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFIMAPMessageDownload;
  v4 = -[MFIMAPDownload initWithUid:](&v6, sel_initWithUid_, [a3 uid]);
  if (v4)
  {
    v4->_message = a3;
  }

  return v4;
}

- (id)topLevelPart
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = self->_topLevelPart;
  [(MFIMAPMessageDownload *)self mf_unlock];

  return v3;
}

- (void)setTopLevelPart:(id)a3
{
  [(MFIMAPMessageDownload *)self mf_lock];
  topLevelPart = self->_topLevelPart;
  if (topLevelPart != a3)
  {

    self->_topLevelPart = a3;
  }

  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (id)data
{
  if (![(MFIMAPMessageDownload *)self isComplete])
  {
    return 0;
  }

  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = *(self + 64);
  v4 = [(MFCollectingDataConsumer *)self->_headerConsumer data];
  v5 = v4;
  if ((v3 & 2) == 0)
  {
    if (v4)
    {
      v6 = [(MFCollectingDataConsumer *)self->_textConsumer data];
      if (v6)
      {
        v7 = v6;
        v8 = [v5 mutableCopy];
        v9 = v8;
        goto LABEL_10;
      }
    }

    [(MFIMAPMessageDownload *)self mf_unlock];
    return 0;
  }

  v9 = [v4 mutableCopy];
  v10 = [(MFCollectingDataConsumer *)self->_textConsumer data];
  if (!v10)
  {
    if (self->_topLevelPart)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v9)
      {
        if ([-[MFMimePart type](self->_topLevelPart "type")])
        {
          if (![(MFMimePart *)self->_topLevelPart bodyParameterForKey:@"boundary"])
          {
            v15 = *MEMORY[0x277D06F88];
            [v9 length];
            if (ECGetNextHeaderFromDataInRange())
            {
              topLevelPart = self->_topLevelPart;
              [v9 bytes];
              MFMimePartParseContentTypeHeader();
            }
          }
        }
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x277D24F70]) initWithBytes:"\n" length:1];
      }

      v17 = objc_alloc_init(MEMORY[0x277D28470]);
      [v17 appendDataForMimePart:self->_topLevelPart toData:v9 withPartData:Mutable];

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    goto LABEL_11;
  }

  v7 = v10;
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D24F70]) initWithBytes:"\n" length:1];
  }

  v8 = v9;
LABEL_10:
  [v8 appendData:v7];
LABEL_11:
  v11 = v9;
  [(MFIMAPMessageDownload *)self mf_unlock];
  if (v11)
  {
    v12 = (*(self + 64) & 2) != 0 && (*(self + 64) & 0x10) == 0;
    [(MFMessage *)self->_message setMessageData:v11 isPartial:v12];
  }

  return v11;
}

- (BOOL)isComplete
{
  v3 = [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
  if (v3)
  {
    v4 = [v3 mf_shouldFailDownload] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  if ((*(self + 64) & 4) == 0 || (*(self + 64) & 0x20) == 0)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MFIMAPMessageDownload;
  return [(MFIMAPCompoundDownload *)&v6 isComplete]& v4;
}

- (void)handleFetchResult:(id)a3
{
  [(MFIMAPMessageDownload *)self mf_lock];
  if (!self->_topLevelPart && [a3 type] == 6)
  {
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      pendingFetchResults = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      self->super.super._pendingFetchResults = pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:a3];
  }

  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)processResults
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = [(NSMutableArray *)self->super.super._pendingFetchResults count];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [(NSMutableArray *)self->super.super._pendingFetchResults objectAtIndex:0];
      if (!self->_topLevelPart)
      {
        v6 = v5;
        if ([v5 type] == 6)
        {
          v7 = [v6 bodyStructure];
          if (v7)
          {
            v8 = v7;
            v9 = objc_alloc_init(MEMORY[0x277D28448]);
            if (([(MFMimePart *)v9 parseIMAPPropertyList:v8]& 1) != 0)
            {
              if (v9)
              {
                self->_topLevelPart = v9;
                if ((*(self + 64) & 2) != 0)
                {
                  v10 = 0;
                  [(MFMimePart *)v9 getNumberOfAttachments:0 isSigned:&v10 + 1 isEncrypted:&v10];
                }
              }
            }

            else
            {
            }
          }
        }
      }

      [(NSMutableArray *)self->super.super._pendingFetchResults removeObjectAtIndex:0];
      --v4;
    }

    while (v4);
  }

  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4
{
  [(MFIMAPMessageDownload *)self mf_lock];
  if ((*(self + 64) & 4) == 0)
  {
    v7 = *(self + 64);
    if (v7)
    {
      if ((*(self + 64) & 0x40) != 0)
      {
        v9 = [(MFMessage *)self->_message messageSize];
        v8 = 2 * (v9 >= [a3 chunkSize]);
        goto LABEL_10;
      }
    }

    else if ((*(self + 64) & 0x40) != 0)
    {
      goto LABEL_11;
    }

    v8 = 2;
LABEL_10:
    *(self + 64) = *(self + 64) & 0xFD | v8;
LABEL_11:
    if (!self->_headerConsumer)
    {
      self->_headerConsumer = objc_alloc_init(MEMORY[0x277D24EE8]);
      self->_headerFilter = [objc_alloc(MEMORY[0x277D24F20]) initWithConsumer:self->_headerConsumer];
    }

    -[MFIMAPCompoundDownload addSubdownload:](self, "addSubdownload:", [a4 downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"HEADER" consumer:{1024, self->_headerFilter}]);
    if ((*(self + 64) & 2) != 0)
    {
      [a3 addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"BODYSTRUCTURE" bodyDataConsumer:256 consumerSection:{0, 0}];
    }

    else
    {
      if (!self->_textConsumer)
      {
        self->_textConsumer = objc_alloc_init(MEMORY[0x277D24EE8]);
        self->_textFilter = [objc_alloc(MEMORY[0x277D24F20]) initWithConsumer:self->_textConsumer];
      }

      -[MFIMAPCompoundDownload addSubdownload:](self, "addSubdownload:", [a4 downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"TEXT" consumer:{-[MFMessage messageSize](self->_message, "messageSize"), self->_textFilter}]);
      *(self + 64) |= 8u;
      *(self + 64) |= 0x20u;
    }

    *(self + 64) |= 4u;
    goto LABEL_19;
  }

  if ((*(self + 64) & 0x20) == 0)
  {
    *(self + 64) |= 0x20u;
  }

LABEL_19:
  v10.receiver = self;
  v10.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v10 addCommandsToPipeline:a3 withCache:a4];
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)setFetchBodyData:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xBF | v3;
}

@end