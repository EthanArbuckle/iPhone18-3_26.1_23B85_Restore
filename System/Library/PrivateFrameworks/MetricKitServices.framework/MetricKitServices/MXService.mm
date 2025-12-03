@interface MXService
- (BOOL)startService;
- (BOOL)stopService;
- (MXService)initWithSourceID:(int64_t)d;
- (id)pruneSourceData:(id)data;
@end

@implementation MXService

- (MXService)initWithSourceID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = MXService;
  result = [(MXService *)&v5 init];
  if (result)
  {
    result->_isStarted = 0;
    result->_sourceID = d;
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

- (id)pruneSourceData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
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
        allKeys = [v26 allKeys];
        v12 = [allKeys containsObject:v10];

        if (v12)
        {
          v13 = [dataCopy valueForKey:v10];
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
                  allKeys2 = [v15 allKeys];
                  v22 = [allKeys2 containsObject:v20];

                  if ((v22 & 1) == 0)
                  {
                    [v13 setValue:0 forKey:v20];
                  }
                }
              }
            }

            free(v17);
          }

          [dataCopy setValue:v13 forKey:v10];
        }

        else
        {
          [dataCopy setValue:0 forKey:v10];
        }
      }

      ++v8;
    }

    while (v8 < outCount);
  }

  free(v28);

  v23 = *MEMORY[0x277D85DE8];

  return dataCopy;
}

@end