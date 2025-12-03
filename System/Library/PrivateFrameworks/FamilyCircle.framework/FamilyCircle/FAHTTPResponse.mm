@interface FAHTTPResponse
- (FAHTTPResponse)initWithHTTPResponse:(id)response body:(id)body familyRefreshTriggered:(BOOL)triggered;
@end

@implementation FAHTTPResponse

- (FAHTTPResponse)initWithHTTPResponse:(id)response body:(id)body familyRefreshTriggered:(BOOL)triggered
{
  responseCopy = response;
  bodyCopy = body;
  if (responseCopy)
  {
    v15.receiver = self;
    v15.super_class = FAHTTPResponse;
    v11 = [(FAHTTPResponse *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_HTTPResponse, response);
      objc_storeStrong(&v12->_body, body);
      v12->_familyRefreshTriggered = triggered;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end