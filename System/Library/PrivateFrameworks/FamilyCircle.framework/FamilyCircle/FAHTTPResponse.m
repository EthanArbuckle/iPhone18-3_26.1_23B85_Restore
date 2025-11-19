@interface FAHTTPResponse
- (FAHTTPResponse)initWithHTTPResponse:(id)a3 body:(id)a4 familyRefreshTriggered:(BOOL)a5;
@end

@implementation FAHTTPResponse

- (FAHTTPResponse)initWithHTTPResponse:(id)a3 body:(id)a4 familyRefreshTriggered:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = FAHTTPResponse;
    v11 = [(FAHTTPResponse *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_HTTPResponse, a3);
      objc_storeStrong(&v12->_body, a4);
      v12->_familyRefreshTriggered = a5;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end