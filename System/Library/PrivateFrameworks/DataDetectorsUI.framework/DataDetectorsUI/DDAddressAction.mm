@interface DDAddressAction
+ (BOOL)actionAvailableForContact:(id)a3;
+ (id)actionWithURL:(id)a3 result:(__DDResult *)a4 enclosingResult:(__DDResult *)a5 context:(id)a6;
@end

@implementation DDAddressAction

+ (id)actionWithURL:(id)a3 result:(__DDResult *)a4 enclosingResult:(__DDResult *)a5 context:(id)a6
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___DDAddressAction;
  v7 = objc_msgSendSuper2(&v11, sel_actionWithURL_result_context_, a3, a4, a6);
  if (a5)
  {
    v8 = v7;
    v9 = CFRetain(a5);
    v7 = v8;
    *(v8 + 2) = v9;
    *(v8 + 80) = 1;
  }

  return v7;
}

+ (BOOL)actionAvailableForContact:(id)a3
{
  v4 = DDDefaultAddressForContact(a3);
  if (v4)
  {
    v5 = [a1 isAvailable];

    return v5;
  }

  else
  {

    return 0;
  }
}

@end