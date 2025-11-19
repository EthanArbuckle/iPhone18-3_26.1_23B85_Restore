@interface CSExattrCryptoService
+ (id)sharedService;
- (void)computeUpdatedCryptoData:(id)a3 newParams:(id)a4 isPrivateMDAttributes:(BOOL)a5 doMergeArrayValues:(BOOL)a6 replyBlock:(id)a7;
- (void)decryptAttributesWithData:(id)a3 withReply:(id)a4;
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

- (void)computeUpdatedCryptoData:(id)a3 newParams:(id)a4 isPrivateMDAttributes:(BOOL)a5 doMergeArrayValues:(BOOL)a6 replyBlock:(id)a7
{
  v8 = objc_autoreleasePoolPush();
  v9 = copyUpdatedData(+[MDPrivateXattrServices defaultServices]);
  (*(a7 + 2))(a7, 0, 0, v9, 0);

  objc_autoreleasePoolPop(v8);
}

- (void)decryptAttributesWithData:(id)a3 withReply:(id)a4
{
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(a3);
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

      v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  (*(a4 + 2))(a4, 0, v6);
}

@end