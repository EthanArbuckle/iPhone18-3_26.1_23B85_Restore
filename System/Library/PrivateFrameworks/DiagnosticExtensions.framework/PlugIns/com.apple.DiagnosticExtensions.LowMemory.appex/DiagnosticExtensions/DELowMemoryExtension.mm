@interface DELowMemoryExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation DELowMemoryExtension

- (id)attachmentList
{
  v3 = [NSRegularExpression regularExpressionWithPattern:@".*(ExcResource|JetsamEvent|LowMemory).*" options:1 error:0];
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v5 = [(DELowMemoryExtension *)self filesInDir:v4 matchingPattern:v3 excludingPattern:0];

  return v5;
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = [(DELowMemoryExtension *)self attachmentList];
  v4 = [v3 mutableCopy];
  v5 = [[NSDate alloc] initWithTimeIntervalSinceNow:-1800.0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 modificationDate];
        v13 = [v12 compare:v5];

        if (v13 == -1)
        {
          [v4 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

@end