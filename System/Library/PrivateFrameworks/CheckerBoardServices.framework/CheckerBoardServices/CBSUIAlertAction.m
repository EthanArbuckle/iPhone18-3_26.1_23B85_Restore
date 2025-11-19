@interface CBSUIAlertAction
+ (id)alertActionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
- (CBSUIAlertAction)initWithCoder:(id)a3;
- (CBSUIAlertAction)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CBSUIAlertAction

- (CBSUIAlertAction)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CBSUIAlertAction;
  v11 = [(CBSUIAlertAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    v12->_style = a4;
    v13 = MEMORY[0x245D33540](v10);
    handler = v12->_handler;
    v12->_handler = v13;
  }

  return v12;
}

+ (id)alertActionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 style:a4 handler:v8];

  return v10;
}

- (CBSUIAlertAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CBSUIAlertAction;
  v5 = [(CBSUIAlertAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeIntegerForKey:@"style"];
    handler = v5->_handler;
    v5->_style = v8;
    v5->_handler = &__block_literal_global_0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CBSUIAlertAction *)self title];
  [v5 encodeObject:v4 forKey:@"title"];

  [v5 encodeInteger:-[CBSUIAlertAction style](self forKey:{"style"), @"style"}];
}

@end