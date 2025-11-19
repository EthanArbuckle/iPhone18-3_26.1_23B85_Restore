@interface IDSTransactionLogTaskHandler
+ (id)handlerWithTask:(id)a3 delegate:(id)a4 queue:(id)a5;
- (id)_init;
- (void)perform;
@end

@implementation IDSTransactionLogTaskHandler

+ (id)handlerWithTask:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isMemberOfClass:objc_opt_class()])
  {
    v12 = [[IDSTransactionLogBaseTaskHandler alloc] initWithTask:v9 delegate:v10 queue:v11];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
      v12 = [[IDSTransactionLogSyncTaskHandler alloc] initWithTask:v13 delegate:v10 queue:v11];
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:a1 file:@"IDSTransactionLogTaskHandler.m" lineNumber:55 description:@"Unexpected task type"];

      v12 = 0;
    }
  }

  return v12;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IDSTransactionLogTaskHandler;
  return [(IDSTransactionLogTaskHandler *)&v3 init];
}

- (void)perform
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"IDSTransactionLogTaskHandler.m" lineNumber:65 description:@"Abstract method"];
}

@end