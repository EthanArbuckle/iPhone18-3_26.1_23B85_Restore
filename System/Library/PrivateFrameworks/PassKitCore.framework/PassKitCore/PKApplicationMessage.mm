@interface PKApplicationMessage
+ (id)createLocalWithIdentifier:(id)identifier createdDate:(id)date priority:(unint64_t)priority badge:(BOOL)badge content:(id)content;
+ (id)createWithRegistration:(id)registration content:(id)content;
- (PKApplicationMessage)initWithCoder:(id)coder;
- (id)_initWithRegistration:(void *)registration content:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessage

+ (id)createLocalWithIdentifier:(id)identifier createdDate:(id)date priority:(unint64_t)priority badge:(BOOL)badge content:(id)content
{
  contentCopy = content;
  v12 = [PKApplicationMessageRegistration _createLocalWithIdentifier:identifier createdDate:date priority:priority badge:badge];
  v13 = [[PKApplicationMessage alloc] _initWithRegistration:v12 content:contentCopy];

  return v13;
}

- (id)_initWithRegistration:(void *)registration content:
{
  v6 = a2;
  registrationCopy = registration;
  v8 = registrationCopy;
  selfCopy = 0;
  if (self && v6 && registrationCopy)
  {
    v13.receiver = self;
    v13.super_class = PKApplicationMessage;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(v11 + 2, registration);
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)createWithRegistration:(id)registration content:(id)content
{
  contentCopy = content;
  registrationCopy = registration;
  v7 = [[PKApplicationMessage alloc] _initWithRegistration:registrationCopy content:contentCopy];

  return v7;
}

- (PKApplicationMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKApplicationMessage;
  v5 = [(PKApplicationMessage *)&v13 init];
  if (!v5 || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registration"], v6 = objc_claimAutoreleasedReturnValue(), registration = v5->_registration, v5->_registration = v6, registration, v5->_registration) && (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"content"), v8 = objc_claimAutoreleasedReturnValue(), content = v5->_content, v5->_content = v8, content, v5->_content))
  {
    v10 = v5;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessage" code:0 userInfo:0];
    [coderCopy failWithError:v11];

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  registration = self->_registration;
  coderCopy = coder;
  [coderCopy encodeObject:registration forKey:@"registration"];
  [coderCopy encodeObject:self->_content forKey:@"content"];
}

@end