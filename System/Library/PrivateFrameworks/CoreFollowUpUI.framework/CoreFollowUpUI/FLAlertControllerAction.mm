@interface FLAlertControllerAction
+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
@end

@implementation FLAlertControllerAction

+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v9 = objc_alloc_init(FLAlertControllerAction);
  [(FLAlertControllerAction *)v9 setTitle:titleCopy];

  [(FLAlertControllerAction *)v9 setStyle:style];
  [(FLAlertControllerAction *)v9 setHandler:handlerCopy];

  return v9;
}

@end