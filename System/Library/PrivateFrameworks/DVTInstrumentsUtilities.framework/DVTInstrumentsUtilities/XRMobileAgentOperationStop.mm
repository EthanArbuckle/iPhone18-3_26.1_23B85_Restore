@interface XRMobileAgentOperationStop
- (void)receiveMobileAgent:(id)a3;
@end

@implementation XRMobileAgentOperationStop

- (void)receiveMobileAgent:(id)a3
{
  v20 = a3;
  objc_msgSend_hello(v20, v3, v4, v5, v6);
  v11 = objc_msgSend_ticket(v20, v7, v8, v9, v10);
  objc_msgSend_start(v11, v12, v13, v14, v15);

  objc_msgSend_goodbye(v20, v16, v17, v18, v19);
}

@end