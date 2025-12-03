@interface IDSAllocateResponseWrapper
- (IDSAllocateResponseWrapper)initWithResponse:(id)response cleanupTime:(unint64_t)time;
@end

@implementation IDSAllocateResponseWrapper

- (IDSAllocateResponseWrapper)initWithResponse:(id)response cleanupTime:(unint64_t)time
{
  responseCopy = response;
  v11.receiver = self;
  v11.super_class = IDSAllocateResponseWrapper;
  v8 = [(IDSAllocateResponseWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_response, response);
    v9->_cleanupTime = time;
  }

  return v9;
}

@end