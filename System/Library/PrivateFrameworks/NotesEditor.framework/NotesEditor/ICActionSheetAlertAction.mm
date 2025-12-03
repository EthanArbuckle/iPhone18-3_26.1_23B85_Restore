@interface ICActionSheetAlertAction
+ (id)actionWithTitle:(id)title iconImage:(id)image style:(int64_t)style handler:(id)handler;
- (ICActionSheetAlertAction)initWithTitle:(id)title iconImage:(id)image style:(int64_t)style handler:(id)handler;
@end

@implementation ICActionSheetAlertAction

+ (id)actionWithTitle:(id)title iconImage:(id)image style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v13 = [[self alloc] initWithTitle:titleCopy iconImage:imageCopy style:style handler:handlerCopy];

  return v13;
}

- (ICActionSheetAlertAction)initWithTitle:(id)title iconImage:(id)image style:(int64_t)style handler:(id)handler
{
  v16.receiver = self;
  v16.super_class = ICActionSheetAlertAction;
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v13 = [(ICActionSheetAlertAction *)&v16 class];
  v14 = [v13 _actionWithTitle:titleCopy image:imageCopy style:style handler:handlerCopy shouldDismissHandler:{0, v16.receiver, v16.super_class}];

  return v14;
}

@end