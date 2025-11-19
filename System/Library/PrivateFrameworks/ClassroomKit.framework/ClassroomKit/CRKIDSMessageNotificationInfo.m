@interface CRKIDSMessageNotificationInfo
+ (id)instanceWithDictionary:(id)a3;
- (CRKIDSMessageNotificationInfo)initWithMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKIDSMessageNotificationInfo

- (CRKIDSMessageNotificationInfo)initWithMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CRKIDSMessageNotificationInfo;
  v11 = [(CRKIDSMessageNotificationInfo *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    message = v11->_message;
    v11->_message = v12;

    v14 = [v9 copy];
    senderAppleID = v11->_senderAppleID;
    v11->_senderAppleID = v14;

    v16 = [v10 copy];
    senderAddress = v11->_senderAddress;
    v11->_senderAddress = v16;
  }

  return v11;
}

- (NSDictionary)dictionaryValue
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"Message";
  v3 = [(CRKIDSMessageNotificationInfo *)self message];
  v9[0] = v3;
  v8[1] = @"SenderAppleID";
  v4 = [(CRKIDSMessageNotificationInfo *)self senderAppleID];
  v9[1] = v4;
  v8[2] = @"SenderAddress";
  v5 = [(CRKIDSMessageNotificationInfo *)self senderAddress];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Message"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRKIDSMessageNotificationInfo instanceWithDictionary:];
  }

  v6 = [v4 objectForKeyedSubscript:@"SenderAppleID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRKIDSMessageNotificationInfo instanceWithDictionary:];
  }

  v7 = [v4 objectForKeyedSubscript:@"SenderAddress"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRKIDSMessageNotificationInfo instanceWithDictionary:];
  }

  v8 = [[a1 alloc] initWithMessage:v5 senderAppleID:v6 senderAddress:v7];

  return v8;
}

+ (void)instanceWithDictionary:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKIDSMessageNotificationInfo instanceWithDictionary:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)instanceWithDictionary:.cold.2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKIDSMessageNotificationInfo instanceWithDictionary:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)instanceWithDictionary:.cold.3()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKIDSMessageNotificationInfo instanceWithDictionary:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

@end