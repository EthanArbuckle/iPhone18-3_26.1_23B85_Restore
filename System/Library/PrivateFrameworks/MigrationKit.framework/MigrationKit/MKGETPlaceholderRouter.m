@interface MKGETPlaceholderRouter
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKGETPlaceholderRouter

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v6 = a5;
  v7 = [a4 headers];
  v8 = [v7 path];
  v9 = [v8 pathComponents];
  if ([v9 count] < 3)
  {
    v10 = 0;
    v11 = 0;
    if ([0 isEqualToString:@"/"])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:2];
    if ([v10 isEqualToString:@"/"])
    {
      v11 = 0;
LABEL_8:

      goto LABEL_9;
    }

    if (v10)
    {
      v12 = [[MKPlaceholder alloc] initWithBundleIdentifier:v10];
      v11 = [(MKPlaceholder *)v12 enabled];

      goto LABEL_8;
    }

    v11 = 0;
  }

LABEL_9:
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v13 setObject:v14 forKey:@"enabled"];

  v18 = 0;
  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v18];
  v16 = v18;
  if (v16)
  {
    v17 = +[MKLog log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v16 import:v17];
    }
  }

  [v6 setBody:v15];
}

@end