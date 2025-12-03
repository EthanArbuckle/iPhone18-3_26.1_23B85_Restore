@interface DDAddressAction
+ (BOOL)actionAvailableForContact:(id)contact;
+ (id)actionWithURL:(id)l result:(__DDResult *)result enclosingResult:(__DDResult *)enclosingResult context:(id)context;
@end

@implementation DDAddressAction

+ (id)actionWithURL:(id)l result:(__DDResult *)result enclosingResult:(__DDResult *)enclosingResult context:(id)context
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___DDAddressAction;
  v7 = objc_msgSendSuper2(&v11, sel_actionWithURL_result_context_, l, result, context);
  if (enclosingResult)
  {
    v8 = v7;
    v9 = CFRetain(enclosingResult);
    v7 = v8;
    *(v8 + 2) = v9;
    *(v8 + 80) = 1;
  }

  return v7;
}

+ (BOOL)actionAvailableForContact:(id)contact
{
  v4 = DDDefaultAddressForContact(contact);
  if (v4)
  {
    isAvailable = [self isAvailable];

    return isAvailable;
  }

  else
  {

    return 0;
  }
}

@end