@interface MXService
- (BOOL)startService;
- (BOOL)stopService;
- (MXService)initWithSourceID:(int64_t)a3;
- (id)pruneSourceData:(id)a3;
@end

@implementation MXService

- (MXService)initWithSourceID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MXService;
  result = [(MXService *)&v5 init];
  if (result)
  {
    result->_isStarted = 0;
    result->_sourceID = a3;
  }

  return result;
}

- (BOOL)startService
{
  isStarted = self->_isStarted;
  if (!isStarted)
  {
    self->_isStarted = 1;
  }

  return !isStarted;
}

- (BOOL)stopService
{
  isStarted = self->_isStarted;
  if (isStarted)
  {
    self->_isStarted = 0;
  }

  return isStarted;
}

- (id)pruneSourceData:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v4 = +[MXUtilities getServicesAllowlist];
  v5 = [&unk_286A1CAE8 objectAtIndexedSubscript:{-[MXService sourceID](self, "sourceID")}];
  v26 = [v4 objectForKeyedSubscript:v5];

  outCount = 0;
  v6 = objc_opt_class();
  v28 = class_copyPropertyList(v6, &outCount);
  if (outCount)
  {
    v8 = 0;
    *&v7 = 138412546;
    v25 = v7;
    do
    {
      Name = property_getName(v28[v8]);
      if (Name)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithCString:Name encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding", v25)}];
        v11 = [v26 allKeys];
        v12 = [v11 containsObject:v10];

        if (v12)
        {
          v13 = [v27 valueForKey:v10];
          v14 = [v26 objectForKeyedSubscript:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v29 = 0;
            v16 = objc_opt_class();
            v17 = class_copyPropertyList(v16, &v29);
            if (v29)
            {
              for (i = 0; i < v29; ++i)
              {
                v19 = property_getName(v17[i]);
                if (v19)
                {
                  v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
                  v21 = [v15 allKeys];
                  v22 = [v21 containsObject:v20];

                  if ((v22 & 1) == 0)
                  {
                    [v13 setValue:0 forKey:v20];
                  }
                }
              }
            }

            free(v17);
          }

          [v27 setValue:v13 forKey:v10];
        }

        else
        {
          [v27 setValue:0 forKey:v10];
        }
      }

      ++v8;
    }

    while (v8 < outCount);
  }

  free(v28);

  v23 = *MEMORY[0x277D85DE8];

  return v27;
}

@end