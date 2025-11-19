@interface IDSTapToRadarRequest
- (IDSTapToRadarRequest)initWithTitle:(id)a3 message:(id)a4;
@end

@implementation IDSTapToRadarRequest

- (IDSTapToRadarRequest)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSTapToRadarRequest;
  v9 = [(IDSTapToRadarRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_message, a4);
  }

  return v10;
}

@end