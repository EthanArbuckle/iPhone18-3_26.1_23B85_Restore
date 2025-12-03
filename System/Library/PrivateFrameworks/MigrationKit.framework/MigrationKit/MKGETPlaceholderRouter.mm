@interface MKGETPlaceholderRouter
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETPlaceholderRouter

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  responseCopy = response;
  headers = [request headers];
  path = [headers path];
  pathComponents = [path pathComponents];
  if ([pathComponents count] < 3)
  {
    v10 = 0;
    enabled = 0;
    if ([0 isEqualToString:@"/"])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [pathComponents objectAtIndexedSubscript:2];
    if ([v10 isEqualToString:@"/"])
    {
      enabled = 0;
LABEL_8:

      goto LABEL_9;
    }

    if (v10)
    {
      v12 = [[MKPlaceholder alloc] initWithBundleIdentifier:v10];
      enabled = [(MKPlaceholder *)v12 enabled];

      goto LABEL_8;
    }

    enabled = 0;
  }

LABEL_9:
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
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

  [responseCopy setBody:v15];
}

@end