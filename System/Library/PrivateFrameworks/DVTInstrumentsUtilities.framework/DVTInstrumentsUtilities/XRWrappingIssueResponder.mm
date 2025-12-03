@interface XRWrappingIssueResponder
- (XRWrappingIssueResponder)init;
- (XRWrappingIssueResponder)initWithNextResponder:(id)responder prototype:(id)prototype;
@end

@implementation XRWrappingIssueResponder

- (XRWrappingIssueResponder)initWithNextResponder:(id)responder prototype:(id)prototype
{
  responderCopy = responder;
  prototypeCopy = prototype;
  v11.receiver = self;
  v11.super_class = XRWrappingIssueResponder;
  v8 = [(XRWrappingIssueResponder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_nextResponder, responderCopy);
    objc_storeStrong(&v9->_prototype, prototype);
  }

  return v9;
}

- (XRWrappingIssueResponder)init
{
  v6 = objc_msgSend_defaultResponder(XRStandardIssueResponder, a2, v2, v3, v4);
  v10 = objc_msgSend_dvtiuErrorWithCode_(MEMORY[0x277CCA9B8], v7, 0, v8, v9);
  Responder_prototype = objc_msgSend_initWithNextResponder_prototype_(self, v11, v6, v10, v12);

  return Responder_prototype;
}

@end