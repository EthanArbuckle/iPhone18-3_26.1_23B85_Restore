@interface XRMobileAgentInlineStop
- (void)receiveMobileAgent:(id)agent;
@end

@implementation XRMobileAgentInlineStop

- (void)receiveMobileAgent:(id)agent
{
  agentCopy = agent;
  objc_msgSend_hello(agentCopy, v3, v4, v5, v6);
  objc_msgSend_goodbye(agentCopy, v7, v8, v9, v10);
}

@end