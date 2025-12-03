@interface OABReaderClient
+ (BOOL)sourceDrawableIsTopLevel:(id)level;
@end

@implementation OABReaderClient

+ (BOOL)sourceDrawableIsTopLevel:(id)level
{
  levelCopy = level;
  eshObject = [levelCopy eshObject];
  parent = levelCopy;
  if ((*(*eshObject + 16))(eshObject) == 6)
  {
    parent = [levelCopy parent];
  }

  v5Parent = [parent parent];
  v6Parent = [v5Parent parent];
  eshObject2 = [v6Parent eshObject];

  if (eshObject2)
  {
    v9 = (*(*eshObject2 + 16))(eshObject2) == 61442;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end