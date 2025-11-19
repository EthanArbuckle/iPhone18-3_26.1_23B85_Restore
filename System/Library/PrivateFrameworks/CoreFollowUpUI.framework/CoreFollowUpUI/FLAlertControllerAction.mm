@interface FLAlertControllerAction
+ (id)actionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
@end

@implementation FLAlertControllerAction

+ (id)actionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(FLAlertControllerAction);
  [(FLAlertControllerAction *)v9 setTitle:v8];

  [(FLAlertControllerAction *)v9 setStyle:a4];
  [(FLAlertControllerAction *)v9 setHandler:v7];

  return v9;
}

@end