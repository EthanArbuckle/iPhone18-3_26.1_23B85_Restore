@interface XRMobileAgentInlineStop
- (void)receiveMobileAgent:(id)a3;
@end

@implementation XRMobileAgentInlineStop

- (void)receiveMobileAgent:(id)a3
{
  v11 = a3;
  objc_msgSend_hello(v11, v3, v4, v5, v6);
  objc_msgSend_goodbye(v11, v7, v8, v9, v10);
}

@end