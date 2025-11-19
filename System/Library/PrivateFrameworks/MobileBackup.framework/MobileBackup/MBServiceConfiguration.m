@interface MBServiceConfiguration
+ (id)configurationWithPropertyList:(id)a3;
+ (id)configurationWithURL:(id)a3 error:(id *)a4;
+ (id)defaultConfiguration;
- (MBServiceConfiguration)initWithPropertyList:(id)a3;
- (NSArray)bundleIDsNotToBackUp;
- (NSSet)domainNamesNotToBackUp;
- (unint64_t)_positiveIntegerForKey:(id)a3 defaultValue:(unint64_t)a4;
- (void)dealloc;
@end

@implementation MBServiceConfiguration

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(MBServiceConfiguration);

  return v2;
}

+ (id)configurationWithPropertyList:(id)a3
{
  v3 = [[MBServiceConfiguration alloc] initWithPropertyList:a3];

  return v3;
}

+ (id)configurationWithURL:(id)a3 error:(id *)a4
{
  v13 = 0;
  v6 = [MBURLConnection sendSyncRequest:[MBURLRequest requestWithURL:?] properties:0 connection:0 response:0 error:&v13];
  if (v6)
  {
    v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v13];
    if (v7)
    {
      return [MBServiceConfiguration configurationWithPropertyList:v7];
    }

    if (a4)
    {
      v10 = v13;
      v11 = @"Error deserializing configuration";
      v9 = 1;
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    v9 = [MBError codeForNSError:v13];
    v10 = v13;
    v11 = @"Error getting configuration";
LABEL_8:
    v12 = [MBError errorWithCode:v9 error:v10 URL:a3 format:v11];
    result = 0;
    *a4 = v12;
    return result;
  }

  return 0;
}

- (MBServiceConfiguration)initWithPropertyList:(id)a3
{
  v6.receiver = self;
  v6.super_class = MBServiceConfiguration;
  v4 = [(MBServiceConfiguration *)&v6 init];
  if (v4)
  {
    v4->_plist = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBServiceConfiguration;
  [(MBServiceConfiguration *)&v3 dealloc];
}

- (NSArray)bundleIDsNotToBackUp
{
  v2 = [(NSDictionary *)self->_plist objectForKeyedSubscript:@"bundleIDsNotToBackUp"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        return v2;
      }
    }
  }

  return v2;
}

- (NSSet)domainNamesNotToBackUp
{
  v3 = +[NSMutableSet set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MBServiceConfiguration *)self bundleIDsNotToBackUp];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSSet *)v3 addObject:[MBDomain nameWithAppID:*(*(&v10 + 1) + 8 * v8)]];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)_positiveIntegerForKey:(id)a3 defaultValue:(unint64_t)a4
{
  v5 = [(NSDictionary *)self->_plist objectForKeyedSubscript:a3];
  if (!v5)
  {
    return a4;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 integerValue] < 1)
  {
    return a4;
  }

  return [v6 unsignedIntegerValue];
}

@end