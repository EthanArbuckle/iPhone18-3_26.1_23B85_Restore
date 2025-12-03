@interface CoreDAVPostOrPutTask
- (CoreDAVPostOrPutTask)initWithDataPayload:(id)payload dataContentType:(id)type atURL:(id)l previousETag:(id)tag;
- (id)additionalHeaderValues;
- (id)description;
- (void)setPriorOrderedURL:(id)l;
@end

@implementation CoreDAVPostOrPutTask

- (CoreDAVPostOrPutTask)initWithDataPayload:(id)payload dataContentType:(id)type atURL:(id)l previousETag:(id)tag
{
  payloadCopy = payload;
  typeCopy = type;
  tagCopy = tag;
  v17.receiver = self;
  v17.super_class = CoreDAVPostOrPutTask;
  v14 = [(CoreDAVTask *)&v17 initWithURL:l];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestDataPayload, payload);
    objc_storeStrong(&v15->_requestDataContentType, type);
    v15->_forceToServer = 0;
    objc_storeStrong(&v15->_previousETag, tag);
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v11.receiver = self;
  v11.super_class = CoreDAVPostOrPutTask;
  v4 = [(CoreDAVActionBackedTask *)&v11 description];
  [v3 appendFormat:@"[%@ ", v4];

  previousETag = [(CoreDAVPostOrPutTask *)self previousETag];
  [v3 appendFormat:@"| Previous ETag: [%@]", previousETag];

  forceToServer = [(CoreDAVPostOrPutTask *)self forceToServer];
  v7 = @"NO";
  if (forceToServer)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@"| Force to server: [%@]", v7];
  requestDataPayload = [(CoreDAVPostOrPutTask *)self requestDataPayload];
  [v3 appendFormat:@"| Request data payload length in bytes: [%lu]", objc_msgSend(requestDataPayload, "length")];

  requestDataContentType = [(CoreDAVPostOrPutTask *)self requestDataContentType];
  [v3 appendFormat:@"| Request data content type: [%@]", requestDataContentType];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16.receiver = self;
  v16.super_class = CoreDAVPostOrPutTask;
  additionalHeaderValues = [(CoreDAVTask *)&v16 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  requestDataContentType = [(CoreDAVPostOrPutTask *)self requestDataContentType];
  if (requestDataContentType)
  {
    [v3 setObject:requestDataContentType forKey:@"Content-Type"];
  }

  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    previousETag = [(CoreDAVPostOrPutTask *)self previousETag];
    v7 = previousETag;
    if (previousETag)
    {
      v8 = previousETag;
    }

    else
    {
      v8 = @"*";
    }

    v9 = CoreDAVHTTPHeader_IfNoneMatch;
    if (previousETag)
    {
      v9 = CoreDAVHTTPHeader_IfMatch;
    }

    [v3 setObject:v8 forKey:*v9];
  }

  if (self->_sendOrder)
  {
    cDVRawLastPathComponent = [(NSURL *)self->_priorOrderedURL CDVRawLastPathComponent];
    if ([cDVRawLastPathComponent length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = CDVRelativeOrderHeaderString();
      stringValue = [v11 stringWithFormat:@"%@%@", v12, cDVRawLastPathComponent];
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_absoluteOrder];
      stringValue = [v14 stringValue];

      if (!stringValue)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    [v3 setObject:stringValue forKey:@"Position"];
    goto LABEL_15;
  }

LABEL_16:

  return v3;
}

- (void)setPriorOrderedURL:(id)l
{
  lCopy = l;
  if (self->_priorOrderedURL != lCopy)
  {
    v6 = lCopy;
    objc_storeStrong(&self->_priorOrderedURL, l);
    lCopy = v6;
    if (self->_priorOrderedURL)
    {
      self->_sendOrder = 1;
    }
  }
}

@end