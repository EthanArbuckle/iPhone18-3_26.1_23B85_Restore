@interface DDUIPairInitiateMessage
- (DDUIPairInitiateMessage)initWithApplicationInfo:(id)a3;
- (DDUIPairInitiateMessage)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation DDUIPairInitiateMessage

- (DDUIPairInitiateMessage)initWithApplicationInfo:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = DDUIPairInitiateMessage;
    v6 = [(DDUIPairInitiateMessage *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_applicationInfo, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (DDUIPairInitiateMessage)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[DDUIApplicationInfo alloc] initWithDictionaryRepresentation:v4];

    self = [(DDUIPairInitiateMessage *)self initWithApplicationInfo:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v2 = [(DDUIPairInitiateMessage *)self applicationInfo];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

@end