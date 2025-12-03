@interface DDUIPairInitiateMessage
- (DDUIPairInitiateMessage)initWithApplicationInfo:(id)info;
- (DDUIPairInitiateMessage)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation DDUIPairInitiateMessage

- (DDUIPairInitiateMessage)initWithApplicationInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v10.receiver = self;
    v10.super_class = DDUIPairInitiateMessage;
    v6 = [(DDUIPairInitiateMessage *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_applicationInfo, info);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DDUIPairInitiateMessage)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [[DDUIApplicationInfo alloc] initWithDictionaryRepresentation:representationCopy];

    self = [(DDUIPairInitiateMessage *)self initWithApplicationInfo:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  applicationInfo = [(DDUIPairInitiateMessage *)self applicationInfo];
  dictionaryRepresentation = [applicationInfo dictionaryRepresentation];

  return dictionaryRepresentation;
}

@end