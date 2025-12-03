@interface CSExattrCryptoService
+ (id)sharedService;
- (void)computeUpdatedCryptoData:(id)data newParams:(id)params isPrivateMDAttributes:(BOOL)attributes doMergeArrayValues:(BOOL)values replyBlock:(id)block;
- (void)decryptAttributesWithData:(id)data withReply:(id)reply;
@end

@implementation CSExattrCryptoService

+ (id)sharedService
{
  if (qword_10001A248 != -1)
  {
    sub_10000CD34();
  }

  return qword_10001A250;
}

- (void)computeUpdatedCryptoData:(id)data newParams:(id)params isPrivateMDAttributes:(BOOL)attributes doMergeArrayValues:(BOOL)values replyBlock:(id)block
{
  v8 = objc_autoreleasePoolPush();
  v9 = copyUpdatedData(+[MDPrivateXattrServices defaultServices]);
  (*(block + 2))(block, 0, 0, v9, 0);

  objc_autoreleasePoolPop(v8);
}

- (void)decryptAttributesWithData:(id)data withReply:(id)reply
{
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [data count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [data countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(data);
        }

        v11 = [+[MDPrivateXattrServices defaultServices](MDPrivateXattrServices "defaultServices")];
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = kCFNull;
        }

        [(NSMutableArray *)v6 addObject:v12];
      }

      v8 = [data countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  (*(reply + 2))(reply, 0, v6);
}

@end