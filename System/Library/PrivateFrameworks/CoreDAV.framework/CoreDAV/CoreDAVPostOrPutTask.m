@interface CoreDAVPostOrPutTask
- (CoreDAVPostOrPutTask)initWithDataPayload:(id)a3 dataContentType:(id)a4 atURL:(id)a5 previousETag:(id)a6;
- (id)additionalHeaderValues;
- (id)description;
- (void)setPriorOrderedURL:(id)a3;
@end

@implementation CoreDAVPostOrPutTask

- (CoreDAVPostOrPutTask)initWithDataPayload:(id)a3 dataContentType:(id)a4 atURL:(id)a5 previousETag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CoreDAVPostOrPutTask;
  v14 = [(CoreDAVTask *)&v17 initWithURL:a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestDataPayload, a3);
    objc_storeStrong(&v15->_requestDataContentType, a4);
    v15->_forceToServer = 0;
    objc_storeStrong(&v15->_previousETag, a6);
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

  v5 = [(CoreDAVPostOrPutTask *)self previousETag];
  [v3 appendFormat:@"| Previous ETag: [%@]", v5];

  v6 = [(CoreDAVPostOrPutTask *)self forceToServer];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@"| Force to server: [%@]", v7];
  v8 = [(CoreDAVPostOrPutTask *)self requestDataPayload];
  [v3 appendFormat:@"| Request data payload length in bytes: [%lu]", objc_msgSend(v8, "length")];

  v9 = [(CoreDAVPostOrPutTask *)self requestDataContentType];
  [v3 appendFormat:@"| Request data content type: [%@]", v9];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16.receiver = self;
  v16.super_class = CoreDAVPostOrPutTask;
  v4 = [(CoreDAVTask *)&v16 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(CoreDAVPostOrPutTask *)self requestDataContentType];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"Content-Type"];
  }

  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    v6 = [(CoreDAVPostOrPutTask *)self previousETag];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"*";
    }

    v9 = CoreDAVHTTPHeader_IfNoneMatch;
    if (v6)
    {
      v9 = CoreDAVHTTPHeader_IfMatch;
    }

    [v3 setObject:v8 forKey:*v9];
  }

  if (self->_sendOrder)
  {
    v10 = [(NSURL *)self->_priorOrderedURL CDVRawLastPathComponent];
    if ([v10 length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = CDVRelativeOrderHeaderString();
      v13 = [v11 stringWithFormat:@"%@%@", v12, v10];
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_absoluteOrder];
      v13 = [v14 stringValue];

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    [v3 setObject:v13 forKey:@"Position"];
    goto LABEL_15;
  }

LABEL_16:

  return v3;
}

- (void)setPriorOrderedURL:(id)a3
{
  v5 = a3;
  if (self->_priorOrderedURL != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_priorOrderedURL, a3);
    v5 = v6;
    if (self->_priorOrderedURL)
    {
      self->_sendOrder = 1;
    }
  }
}

@end