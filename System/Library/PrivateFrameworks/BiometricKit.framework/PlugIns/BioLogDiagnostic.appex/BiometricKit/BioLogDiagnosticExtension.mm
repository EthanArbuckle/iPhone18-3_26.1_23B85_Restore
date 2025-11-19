@interface BioLogDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation BioLogDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = +[NSMutableArray array];
  v4 = +[BiometricKit manager];
  v5 = [v4 getLogs:1 withDetails:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [DEAttachmentItem attachmentWithPath:*(*(&v13 + 1) + 8 * i), v13];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

@end