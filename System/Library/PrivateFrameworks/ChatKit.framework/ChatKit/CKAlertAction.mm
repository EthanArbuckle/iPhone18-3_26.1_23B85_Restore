@interface CKAlertAction
+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
@end

@implementation CKAlertAction

+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___CKAlertAction;
  handlerCopy = handler;
  v8 = objc_msgSendSuper2(&v10, sel_actionWithTitle_style_handler_, title, style, handlerCopy);
  [v8 set__ck_handler:{handlerCopy, v10.receiver, v10.super_class}];

  return v8;
}

@end