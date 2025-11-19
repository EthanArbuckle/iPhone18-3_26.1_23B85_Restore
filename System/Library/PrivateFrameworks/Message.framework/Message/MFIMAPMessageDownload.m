@interface MFIMAPMessageDownload
- (BOOL)isComplete;
- (BOOL)isSuccessful;
- (MFIMAPMessageDownload)initWithMessage:(id)a3;
- (id)_networkConverterWithConsumer:(id)a3 didReceiveData:(id)a4;
- (id)data;
- (id)topLevelPart;
- (void)_addSubdownloadForBodyTextWithCache:(id)a3;
- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4;
- (void)handleFetchResult:(id)a3;
- (void)processResults;
- (void)setFetchBodyData:(BOOL)a3;
- (void)setTopLevelPart:(id)a3;
@end

@implementation MFIMAPMessageDownload

void ___ef_log_MFIMAPMessageDownload_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFIMAPMessageDownload");
  v1 = _ef_log_MFIMAPMessageDownload_log;
  _ef_log_MFIMAPMessageDownload_log = v0;
}

- (MFIMAPMessageDownload)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFIMAPMessageDownload;
  v6 = -[MFIMAPDownload initWithUid:](&v9, sel_initWithUid_, [v5 uid]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
    v7->_nextByteToFetch = 0;
  }

  return v7;
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
  v5 = a3;
  [(MFIMAPMessageDownload *)self mf_lock];
  objc_storeStrong(&self->_topLevelPart, a3);
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (id)data
{
  if (![(MFIMAPMessageDownload *)self isComplete])
  {
    v7 = 0;
    goto LABEL_35;
  }

  [(MFIMAPMessageDownload *)self mf_lock];
  [(_MFSharedBufferedDataConsumer *)self->_textConsumer _reallyDone];
  receivedHeaders = self->_receivedHeaders;
  if ((*(self + 64) & 2) != 0)
  {
    if (self->_receivedHeaders)
    {
      v8 = [(MFCollectingDataConsumer *)self->_headerConsumer data];
      v7 = [v8 mutableCopy];
    }

    else
    {
      v7 = 0;
    }

    if (self->_receivedText && ([(MFBufferedDataConsumer *)self->_textConsumer data], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v9;
      if (!v7)
      {
        v7 = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytes:"\n" length:1];
      }

      [v7 appendData:v5];
    }

    else
    {
      if (self->_topLevelPart)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v7)
        {
          v11 = [(MFMimePart *)self->_topLevelPart type];
          if ([v11 isEqualToString:@"multipart"])
          {
            v12 = [(MFMimePart *)self->_topLevelPart bodyParameterForKey:@"boundary"];

            if (!v12)
            {
              [v7 length];
              v13 = *MEMORY[0x1E699B0D0];
              if (MFMimeDataGetRangeOfHeader())
              {
                topLevelPart = self->_topLevelPart;
                [v7 bytes];
                MFMimePartParseContentTypeHeader();
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v7 = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytes:"\n" length:1];
        }

        v15 = objc_alloc_init(MFMessageWriter);
        [(MFMessageWriter *)v15 appendDataForMimePart:self->_topLevelPart toData:v7 withPartData:Mutable];
      }

      v5 = 0;
    }
  }

  else
  {
    if (!self->_receivedHeaders || ([(MFCollectingDataConsumer *)self->_headerConsumer data], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = 0;
      goto LABEL_30;
    }

    v5 = v4;
    if (self->_receivedText && ([(MFBufferedDataConsumer *)self->_textConsumer data], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [v5 mutableCopy];
      [v7 appendData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_30:
  [(MFIMAPMessageDownload *)self mf_unlock];
  if (v7)
  {
    v16 = (*(self + 64) & 2) != 0 && (*(self + 64) & 0x10) == 0;
    [(MFMessage *)self->_message setMessageData:v7 isPartial:v16];
  }

LABEL_35:

  return v7;
}

- (BOOL)isComplete
{
  v3 = +[MFActivityMonitor currentMonitor];
  v4 = [v3 error];

  if (v4)
  {
    v5 = [v4 mf_shouldFailDownload] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if ((*(self + 64) & 4) == 0 || (*(self + 64) & 0x20) == 0)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = MFIMAPMessageDownload;
  return [(MFIMAPCompoundDownload *)&v7 isComplete]& v5;
}

- (BOOL)isSuccessful
{
  if (![(MFIMAPMessageDownload *)self isComplete])
  {
    return 0;
  }

  headerConsumer = self->_headerConsumer;
  textConsumer = self->_textConsumer;
  if (!headerConsumer)
  {
    if (textConsumer)
    {
      return headerConsumer == 0 && self->_receivedText;
    }

    return 0;
  }

  receivedHeaders = self->_receivedHeaders;
  if (textConsumer)
  {
    if (self->_receivedHeaders && self->_receivedText)
    {
      return 1;
    }

    return headerConsumer == 0 && self->_receivedText;
  }

  return receivedHeaders;
}

- (void)handleFetchResult:(id)a3
{
  v8 = a3;
  [(MFIMAPMessageDownload *)self mf_lock];
  if (self->_topLevelPart || [v8 type] != 6)
  {
    if ([v8 type] != 12)
    {
      goto LABEL_9;
    }

    p_pendingFetchResults = &self->super.super._pendingFetchResults;
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      goto LABEL_7;
    }
  }

  else
  {
    p_pendingFetchResults = &self->super.super._pendingFetchResults;
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
LABEL_7:
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v7 = *p_pendingFetchResults;
      *p_pendingFetchResults = v6;

      pendingFetchResults = *p_pendingFetchResults;
    }
  }

  [(NSMutableArray *)pendingFetchResults addObject:v8];
LABEL_9:
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)processResults
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = [(NSMutableArray *)self->super.super._pendingFetchResults count];
  if (v3)
  {
    v4 = v3;
    v13 = sel_setRemoteContentLinks_;
    while (1)
    {
      v5 = [(NSMutableArray *)self->super.super._pendingFetchResults objectAtIndex:0, v13];
      v6 = v5;
      if (!self->_topLevelPart && [v5 type] == 6)
      {
        break;
      }

      if ([v6 type] != 12)
      {
        goto LABEL_23;
      }

      message = self->_message;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_23;
      }

      v10 = self->_message;
      v7 = [v6 appleRemoteLinks];
      [(MFMessage *)v10 setRemoteContentLinks:v7];
LABEL_22:

LABEL_23:
      [(NSMutableArray *)self->super.super._pendingFetchResults removeObjectAtIndex:0];
      --v4;

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v7 = [v6 bodyStructure];
    if (v7)
    {
      topLevelPart = objc_alloc_init(MFMailMimePart);
      v9 = [(MFMailMimePart *)topLevelPart parseIMAPPropertyList:v7];
      if ((v9 & 1) == 0)
      {
        v10 = 0;
        goto LABEL_14;
      }

      if (topLevelPart)
      {
        v10 = topLevelPart;
        topLevelPart = self->_topLevelPart;
        self->_topLevelPart = v10;
LABEL_14:

LABEL_15:
        if (![(MFMessage *)v10 isSecurePart]&& [(MFMessage *)v10 hasSecureSubparts])
        {
          *(self + 64) &= ~2u;
          *(self + 64) |= 8u;
        }

        v12 = v9 ^ 1;
        if ((*(self + 64) & 2) == 0)
        {
          v12 = 1;
        }

        if ((v12 & 1) == 0)
        {
          v15 = -86;
          v14 = -86;
          [(MFMessage *)v10 getNumberOfAttachments:0 isSigned:&v15 isEncrypted:&v14];
        }

        goto LABEL_22;
      }
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

LABEL_24:
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (id)_networkConverterWithConsumer:(id)a3 didReceiveData:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69AD6D0]) initWithConsumer:v5];
  v8 = v7;
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x1E69AD690]);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __70__MFIMAPMessageDownload__networkConverterWithConsumer_didReceiveData___block_invoke;
    v19 = &unk_1E7AA57E8;
    v20 = v6;
    v10 = [v9 initWithAppendHandler:&v16 doneHandler:0];
    v11 = MEMORY[0x1E69AD688];
    v21[0] = v8;
    v21[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:{2, v16, v17, v18, v19}];
    v13 = [v11 filterWithConsumers:v12];
  }

  else
  {
    v13 = v7;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __70__MFIMAPMessageDownload__networkConverterWithConsumer_didReceiveData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = [v3 length];

  return v4;
}

- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFIMAPMessageDownload *)self mf_lock];
  if ((*(self + 64) & 4) == 0)
  {
    v8 = *(self + 64);
    if (v8)
    {
      if ((*(self + 64) & 0x40) != 0)
      {
        v12 = [(MFMessage *)self->_message messageSize];
        v11 = 2 * (v12 >= [v6 chunkSize]);
        goto LABEL_12;
      }
    }

    else if ((*(self + 64) & 0x40) != 0)
    {
      goto LABEL_13;
    }

    v11 = 2;
LABEL_12:
    *(self + 64) = *(self + 64) & 0xFD | v11;
LABEL_13:
    v13 = objc_alloc_init(MEMORY[0x1E69AD698]);
    headerConsumer = self->_headerConsumer;
    self->_headerConsumer = v13;

    v15 = self->_headerConsumer;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__MFIMAPMessageDownload_addCommandsToPipeline_withCache___block_invoke;
    v23[3] = &unk_1E7AA25C0;
    v23[4] = self;
    v16 = [(MFIMAPMessageDownload *)self _networkConverterWithConsumer:v15 didReceiveData:v23];
    v17 = [v7 downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"HEADER" consumer:{1024, v16}];
    [(MFIMAPCompoundDownload *)self addSubdownload:v17];

    if ((*(self + 64) & 2) != 0)
    {
      [v6 addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"BODYSTRUCTURE" bodyDataConsumer:256 consumerSection:{0, 0}];
    }

    else
    {
      [(MFIMAPMessageDownload *)self _addSubdownloadForBodyTextWithCache:v7];
      *(self + 64) |= 8u;
    }

    message = self->_message;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [(MFMessage *)self->_message account];
      v20 = [(MFMessage *)self->_message dateReceived];
      v21 = [v19 shouldFetchRemoteLinksWithDateReceived:v20];

      if (v21)
      {
        [v6 addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"X-APPLE-REMOTE-LINKS" bodyDataConsumer:1024 consumerSection:{0, 0}];
      }
    }

    *(self + 64) |= 4u;

    goto LABEL_23;
  }

  v9 = *(self + 64);
  if ((v9 & 0x20) == 0)
  {
    if ((*(self + 64) & 8) != 0)
    {
      nextByteToFetch = self->_nextByteToFetch;
      if (nextByteToFetch < [(MFMessage *)self->_message messageSize])
      {
        [(MFIMAPMessageDownload *)self _addSubdownloadForBodyTextWithCache:v7];
        goto LABEL_23;
      }

      v9 = *(self + 64);
    }

    *(self + 64) = v9 | 0x20;
  }

LABEL_23:
  v22.receiver = self;
  v22.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v22 addCommandsToPipeline:v6 withCache:v7];
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)_addSubdownloadForBodyTextWithCache:(id)a3
{
  v4 = a3;
  message = self->_message;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MFMessage *)self->_message account];
    v7 = [v6 fetchLimits];
    v8 = [v7 fetchMinBytes];

    if (v8)
    {
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0x4000;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = 0x4000;
  }

  if (self->_nextByteToFetch)
  {
    v11 = [(MFIMAPMessageDownload *)self _networkConverterWithConsumer:self->_textConsumer didReceiveData:0];
    v12 = [(MFMessage *)self->_message messageSize];
    nextByteToFetch = self->_nextByteToFetch;
    if (v10 >= v12 - nextByteToFetch)
    {
      v10 = v12 - nextByteToFetch;
    }

    v14 = [v4 downloadForUid:-[MFIMAPDownload uid](self section:"uid") range:@"TEXT" consumer:{nextByteToFetch, v10, v11}];
    [(MFIMAPCompoundDownload *)self addSubdownload:v14];

    self->_nextByteToFetch = v10 + nextByteToFetch;
  }

  else
  {
    v15 = objc_alloc_init(_MFSharedBufferedDataConsumer);
    textConsumer = self->_textConsumer;
    self->_textConsumer = v15;

    v17 = self->_textConsumer;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__MFIMAPMessageDownload__addSubdownloadForBodyTextWithCache___block_invoke;
    v21[3] = &unk_1E7AA25C0;
    v21[4] = self;
    v11 = [(MFIMAPMessageDownload *)self _networkConverterWithConsumer:v17 didReceiveData:v21];
    v18 = [(MFMessage *)self->_message messageSize];
    if (v18 <= v10)
    {
      v20 = [v4 downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"TEXT" consumer:{v18, v11}];
      [(MFIMAPCompoundDownload *)self addSubdownload:v20];

      *(self + 64) |= 0x20u;
    }

    else
    {
      v19 = [v4 downloadForUid:-[MFIMAPDownload uid](self section:"uid") range:@"TEXT" consumer:{self->_nextByteToFetch, v10, v11}];
      [(MFIMAPCompoundDownload *)self addSubdownload:v19];

      self->_nextByteToFetch = v10;
    }
  }
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