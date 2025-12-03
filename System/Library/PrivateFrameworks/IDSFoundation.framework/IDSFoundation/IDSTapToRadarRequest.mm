@interface IDSTapToRadarRequest
- (IDSTapToRadarRequest)initWithTitle:(id)title message:(id)message;
@end

@implementation IDSTapToRadarRequest

- (IDSTapToRadarRequest)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = IDSTapToRadarRequest;
  v9 = [(IDSTapToRadarRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_message, message);
  }

  return v10;
}

@end