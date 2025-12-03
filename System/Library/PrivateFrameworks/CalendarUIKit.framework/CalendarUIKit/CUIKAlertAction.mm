@interface CUIKAlertAction
+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (CUIKAlertAction)initWithTitle:(id)title style:(int64_t)style handler:(id)handler;
@end

@implementation CUIKAlertAction

+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy style:style handler:handlerCopy];

  return v10;
}

- (CUIKAlertAction)initWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CUIKAlertAction;
  v11 = [(CUIKAlertAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_style = style;
    v13 = _Block_copy(handlerCopy);
    handler = v12->_handler;
    v12->_handler = v13;
  }

  return v12;
}

@end