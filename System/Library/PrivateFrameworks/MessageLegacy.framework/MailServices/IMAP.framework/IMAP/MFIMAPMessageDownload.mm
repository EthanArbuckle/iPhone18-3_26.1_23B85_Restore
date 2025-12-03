@interface MFIMAPMessageDownload
- (BOOL)isComplete;
- (MFIMAPMessageDownload)initWithMessage:(id)message;
- (id)data;
- (id)topLevelPart;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)dealloc;
- (void)handleFetchResult:(id)result;
- (void)processResults;
- (void)setFetchBodyData:(BOOL)data;
- (void)setTopLevelPart:(id)part;
@end

@implementation MFIMAPMessageDownload

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v3 dealloc];
}

- (MFIMAPMessageDownload)initWithMessage:(id)message
{
  v6.receiver = self;
  v6.super_class = MFIMAPMessageDownload;
  v4 = -[MFIMAPDownload initWithUid:](&v6, sel_initWithUid_, [message uid]);
  if (v4)
  {
    v4->_message = message;
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

- (void)setTopLevelPart:(id)part
{
  [(MFIMAPMessageDownload *)self mf_lock];
  topLevelPart = self->_topLevelPart;
  if (topLevelPart != part)
  {

    self->_topLevelPart = part;
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
  data = [(MFCollectingDataConsumer *)self->_headerConsumer data];
  v5 = data;
  if ((v3 & 2) == 0)
  {
    if (data)
    {
      data2 = [(MFCollectingDataConsumer *)self->_textConsumer data];
      if (data2)
      {
        v7 = data2;
        v8 = [v5 mutableCopy];
        v9 = v8;
        goto LABEL_10;
      }
    }

    [(MFIMAPMessageDownload *)self mf_unlock];
    return 0;
  }

  v9 = [data mutableCopy];
  data3 = [(MFCollectingDataConsumer *)self->_textConsumer data];
  if (!data3)
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

  v7 = data3;
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

- (void)handleFetchResult:(id)result
{
  [(MFIMAPMessageDownload *)self mf_lock];
  if (!self->_topLevelPart && [result type] == 6)
  {
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      pendingFetchResults = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      self->super.super._pendingFetchResults = pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:result];
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
          bodyStructure = [v6 bodyStructure];
          if (bodyStructure)
          {
            v8 = bodyStructure;
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

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  [(MFIMAPMessageDownload *)self mf_lock];
  if ((*(self + 64) & 4) == 0)
  {
    v7 = *(self + 64);
    if (v7)
    {
      if ((*(self + 64) & 0x40) != 0)
      {
        messageSize = [(MFMessage *)self->_message messageSize];
        v8 = 2 * (messageSize >= [pipeline chunkSize]);
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

    -[MFIMAPCompoundDownload addSubdownload:](self, "addSubdownload:", [cache downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"HEADER" consumer:{1024, self->_headerFilter}]);
    if ((*(self + 64) & 2) != 0)
    {
      [pipeline addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"BODYSTRUCTURE" bodyDataConsumer:256 consumerSection:{0, 0}];
    }

    else
    {
      if (!self->_textConsumer)
      {
        self->_textConsumer = objc_alloc_init(MEMORY[0x277D24EE8]);
        self->_textFilter = [objc_alloc(MEMORY[0x277D24F20]) initWithConsumer:self->_textConsumer];
      }

      -[MFIMAPCompoundDownload addSubdownload:](self, "addSubdownload:", [cache downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"TEXT" consumer:{-[MFMessage messageSize](self->_message, "messageSize"), self->_textFilter}]);
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
  [(MFIMAPCompoundDownload *)&v10 addCommandsToPipeline:pipeline withCache:cache];
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)setFetchBodyData:(BOOL)data
{
  if (data)
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