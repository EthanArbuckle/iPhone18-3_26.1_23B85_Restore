@interface DYGLCaptureSessionInfo
+ (DYGLCaptureSessionInfo)captureSessionInfoWithCaptureStore:(id)a3;
- (DYGLCaptureSessionInfo)initWithCaptureStore:(id)a3;
- (id)contextInfoForContext:(unint64_t)a3;
- (void)dealloc;
- (void)deleteContexts:(const void *)a3;
@end

@implementation DYGLCaptureSessionInfo

+ (DYGLCaptureSessionInfo)captureSessionInfoWithCaptureStore:(id)a3
{
  v3 = [[a1 alloc] initWithCaptureStore:a3];

  return v3;
}

- (DYGLCaptureSessionInfo)initWithCaptureStore:(id)a3
{
  v6.receiver = self;
  v6.super_class = DYGLCaptureSessionInfo;
  v4 = [(DYCaptureSessionInfo *)&v6 initWithCaptureStore:?];
  if (v4)
  {
    v4->_wasCheckingGLErrors = [objc_msgSend(a3 metadataValueForKey:{*MEMORY[0x277D0B0C0]), "BOOLValue"}];
    v4->_contextsInfo = [objc_msgSend(a3 openFileWithFilename:*MEMORY[0x277D0AF38] error:{0), "decodeArchivedObject"}];
    v4->_requiredExtensions = [objc_msgSend(a3 openFileWithFilename:*MEMORY[0x277D0AF40] error:{0), "decodeSerializedPropertyListWithOptions:error:", 0, 0}];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYGLCaptureSessionInfo;
  [(DYCaptureSessionInfo *)&v3 dealloc];
}

- (id)contextInfoForContext:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contextsInfo = self->_contextsInfo;
  v5 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(contextsInfo);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 identifier] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __93__DYGLCaptureSessionInfo_canPlaybackOnDeviceWithInfo_limitBackwardsCompatibility_isInternal___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) contextsInfo];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      result = [*(a1 + 40) supportsCapabilitiesOfGraphicsAPI:*(*(&v9 + 1) + 8 * v6) allowedClass:objc_opt_class()];
      if (!result)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    result = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteContexts:(const void *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_contextsInfo)
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    contextsInfo = self->_contextsInfo;
    v7 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(contextsInfo);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (*a3 == *(a3 + 1))
          {
            goto LABEL_15;
          }

          v12 = *a3 + 8;
          do
          {
            v13 = [v11 identifier];
            v14 = *(v12 - 8);
            v15 = v12 == *(a3 + 1);
            v12 += 8;
            v15 = v15 || v13 == v14;
          }

          while (!v15);
          if (v13 != v14)
          {
LABEL_15:
            [(NSArray *)v5 addObject:v11];
          }
        }

        v8 = [(NSArray *)contextsInfo countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if (![(NSArray *)v5 count])
    {

      v5 = 0;
    }

    self->_contextsInfo = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end