@interface OABReaderClient
+ (BOOL)sourceDrawableIsTopLevel:(id)a3;
@end

@implementation OABReaderClient

+ (BOOL)sourceDrawableIsTopLevel:(id)a3
{
  v3 = a3;
  v4 = [v3 eshObject];
  v5 = v3;
  if ((*(*v4 + 16))(v4) == 6)
  {
    v5 = [v3 parent];
  }

  v6 = [v5 parent];
  v7 = [v6 parent];
  v8 = [v7 eshObject];

  if (v8)
  {
    v9 = (*(*v8 + 16))(v8) == 61442;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end