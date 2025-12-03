@interface XRMobileAgentOperationStop
- (void)receiveMobileAgent:(id)agent;
@end

@implementation XRMobileAgentOperationStop

- (void)receiveMobileAgent:(id)agent
{
  agentCopy = agent;
  objc_msgSend_hello(agentCopy, v3, v4, v5, v6);
  v11 = objc_msgSend_ticket(agentCopy, v7, v8, v9, v10);
  objc_msgSend_start(v11, v12, v13, v14, v15);

  objc_msgSend_goodbye(agentCopy, v16, v17, v18, v19);
}

@end