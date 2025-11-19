@interface ICActionSheetAlertAction
+ (id)actionWithTitle:(id)a3 iconImage:(id)a4 style:(int64_t)a5 handler:(id)a6;
- (ICActionSheetAlertAction)initWithTitle:(id)a3 iconImage:(id)a4 style:(int64_t)a5 handler:(id)a6;
@end

@implementation ICActionSheetAlertAction

+ (id)actionWithTitle:(id)a3 iconImage:(id)a4 style:(int64_t)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithTitle:v12 iconImage:v11 style:a5 handler:v10];

  return v13;
}

- (ICActionSheetAlertAction)initWithTitle:(id)a3 iconImage:(id)a4 style:(int64_t)a5 handler:(id)a6
{
  v16.receiver = self;
  v16.super_class = ICActionSheetAlertAction;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(ICActionSheetAlertAction *)&v16 class];
  v14 = [v13 _actionWithTitle:v12 image:v11 style:a5 handler:v10 shouldDismissHandler:{0, v16.receiver, v16.super_class}];

  return v14;
}

@end