@interface CoreDAVCopyOrMoveTask
+ (id)stringFromOverwriteValue:(int)value;
- (CoreDAVCopyOrMoveTask)initWithSourceURL:(id)l destinationURL:(id)rL andOverwrite:(int)overwrite;
- (id)additionalHeaderValues;
- (id)description;
- (void)finishCoreDAVTaskWithError:(id)error;
- (void)setPriorOrderedURL:(id)l;
@end

@implementation CoreDAVCopyOrMoveTask

- (CoreDAVCopyOrMoveTask)initWithSourceURL:(id)l destinationURL:(id)rL andOverwrite:(int)overwrite
{
  lCopy = l;
  rLCopy = rL;
  if (!lCopy || (v10 = rLCopy, [lCopy CDVRawPath], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE660];
    v20 = @"Non-nil and non-zero length sourceURL required.";
    goto LABEL_12;
  }

  if (!v10 || ([v10 CDVRawPath], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, !v14))
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE660];
    v20 = @"Non-nil and non-zero length destinationURL required.";
    goto LABEL_12;
  }

  if ([lCopy isEqual:v10])
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE660];
    v20 = @"The value for sourceURL and the value for destinationURL must not be the same.";
LABEL_12:
    v21 = [v18 exceptionWithName:v19 reason:v20 userInfo:0];
    objc_exception_throw(v21);
  }

  v22.receiver = self;
  v22.super_class = CoreDAVCopyOrMoveTask;
  v15 = [(CoreDAVTask *)&v22 initWithURL:lCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_destinationURL, rL);
    *(&v16->_overwrite + 1) = overwrite;
  }

  return v16;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v11.receiver = self;
  v11.super_class = CoreDAVCopyOrMoveTask;
  v4 = [(CoreDAVTask *)&v11 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVTask *)self url];
  absoluteString = [v5 absoluteString];
  [v3 appendFormat:@"| Source URL: [%@]", absoluteString];

  destinationURL = [(CoreDAVCopyOrMoveTask *)self destinationURL];
  absoluteString2 = [destinationURL absoluteString];
  [v3 appendFormat:@"| Destination URL: [%@]", absoluteString2];

  v9 = [objc_opt_class() stringFromOverwriteValue:{-[CoreDAVCopyOrMoveTask overwrite](self, "overwrite")}];
  [v3 appendFormat:@"| Overwrite: [%@]", v9];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14.receiver = self;
  v14.super_class = CoreDAVCopyOrMoveTask;
  additionalHeaderValues = [(CoreDAVTask *)&v14 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  destinationURL = [(CoreDAVCopyOrMoveTask *)self destinationURL];
  absoluteString = [destinationURL absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKey:@"Destination"];
  }

  overwrite = [(CoreDAVCopyOrMoveTask *)self overwrite];
  if (overwrite == 1)
  {
    v8 = @"T";
  }

  else
  {
    if (overwrite != 2)
    {
      goto LABEL_8;
    }

    v8 = @"F";
  }

  [v3 setObject:v8 forKey:@"Overwrite"];
LABEL_8:
  if (self->_shouldSendOrder)
  {
    cDVRawLastPathComponent = [(NSURL *)self->_priorOrderedURL CDVRawLastPathComponent];
    if ([cDVRawLastPathComponent length])
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = CDVRelativeOrderHeaderString();
      v12 = [v10 stringWithFormat:@"%@%@", v11, cDVRawLastPathComponent];

      [v3 setObject:v12 forKey:@"Position"];
    }
  }

  return v3;
}

- (void)setPriorOrderedURL:(id)l
{
  objc_storeStrong(&self->_priorOrderedURL, l);
  if (self->_priorOrderedURL)
  {
    self->_shouldSendOrder = 1;
  }
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    v7 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (code == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v27 = objc_opt_class();
          v11 = v27;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_11:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v9)
    {
      v22 = v9;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v5;
        v11 = v27;
        v12 = "%{public}@ failed: %@";
        v13 = v22;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_11;
      }

LABEL_12:
    }

    v23 = v5;
    goto LABEL_14;
  }

  responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_14:
    allObjects = 0;
    goto LABEL_15;
  }

  responseBodyParser2 = [(CoreDAVTask *)self responseBodyParser];
  rootElement = [responseBodyParser2 rootElement];
  responses = [rootElement responses];
  allObjects = [responses allObjects];

LABEL_15:
  self->super._numDownloadedElements = [allObjects count];
  [(CoreDAVCopyOrMoveTask *)self _callBackToDelegateWithResponses:allObjects error:v5];
  v25.receiver = self;
  v25.super_class = CoreDAVCopyOrMoveTask;
  [(CoreDAVTask *)&v25 finishCoreDAVTaskWithError:v5];

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)stringFromOverwriteValue:(int)value
{
  if (value > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E31468[value];
  }
}

@end