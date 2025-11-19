@interface PKApplicationMessage
+ (id)createLocalWithIdentifier:(id)a3 createdDate:(id)a4 priority:(unint64_t)a5 badge:(BOOL)a6 content:(id)a7;
+ (id)createWithRegistration:(id)a3 content:(id)a4;
- (PKApplicationMessage)initWithCoder:(id)a3;
- (id)_initWithRegistration:(void *)a3 content:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationMessage

+ (id)createLocalWithIdentifier:(id)a3 createdDate:(id)a4 priority:(unint64_t)a5 badge:(BOOL)a6 content:(id)a7
{
  v11 = a7;
  v12 = [PKApplicationMessageRegistration _createLocalWithIdentifier:a3 createdDate:a4 priority:a5 badge:a6];
  v13 = [[PKApplicationMessage alloc] _initWithRegistration:v12 content:v11];

  return v13;
}

- (id)_initWithRegistration:(void *)a3 content:
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (a1 && v6 && v7)
  {
    v13.receiver = a1;
    v13.super_class = PKApplicationMessage;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(v11 + 2, a3);
    }

    a1 = v11;
    v9 = a1;
  }

  return v9;
}

+ (id)createWithRegistration:(id)a3 content:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PKApplicationMessage alloc] _initWithRegistration:v6 content:v5];

  return v7;
}

- (PKApplicationMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKApplicationMessage;
  v5 = [(PKApplicationMessage *)&v13 init];
  if (!v5 || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"registration"], v6 = objc_claimAutoreleasedReturnValue(), registration = v5->_registration, v5->_registration = v6, registration, v5->_registration) && (objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"content"), v8 = objc_claimAutoreleasedReturnValue(), content = v5->_content, v5->_content = v8, content, v5->_content))
  {
    v10 = v5;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessage" code:0 userInfo:0];
    [v4 failWithError:v11];

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  registration = self->_registration;
  v5 = a3;
  [v5 encodeObject:registration forKey:@"registration"];
  [v5 encodeObject:self->_content forKey:@"content"];
}

@end