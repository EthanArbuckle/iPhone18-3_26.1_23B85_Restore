@interface CBSUIAlertAction
+ (id)alertActionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (CBSUIAlertAction)initWithCoder:(id)coder;
- (CBSUIAlertAction)initWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBSUIAlertAction

- (CBSUIAlertAction)initWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CBSUIAlertAction;
  v11 = [(CBSUIAlertAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_style = style;
    v13 = MEMORY[0x245D33540](handlerCopy);
    handler = v12->_handler;
    v12->_handler = v13;
  }

  return v12;
}

+ (id)alertActionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy style:style handler:handlerCopy];

  return v10;
}

- (CBSUIAlertAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CBSUIAlertAction;
  v5 = [(CBSUIAlertAction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeIntegerForKey:@"style"];
    handler = v5->_handler;
    v5->_style = v8;
    v5->_handler = &__block_literal_global_0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CBSUIAlertAction *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeInteger:-[CBSUIAlertAction style](self forKey:{"style"), @"style"}];
}

@end