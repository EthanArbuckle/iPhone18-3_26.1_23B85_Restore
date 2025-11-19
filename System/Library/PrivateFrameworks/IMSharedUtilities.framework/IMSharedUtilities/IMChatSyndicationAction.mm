@interface IMChatSyndicationAction
- (IMChatSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 autoDonateMessages:(BOOL)a5 version:(unsigned __int8)a6;
- (IMChatSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 deserializedSyndicationActionType:(unsigned __int8)a5 version:(unsigned __int8)a6;
- (IMChatSyndicationAction)initWithCoder:(id)a3;
- (IMChatSyndicationAction)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMChatSyndicationAction

- (IMChatSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 autoDonateMessages:(BOOL)a5 version:(unsigned __int8)a6
{
  v6 = self;
  if (IMSyndicationActionCurrentVersion == a6)
  {
    v12.receiver = self;
    v12.super_class = IMChatSyndicationAction;
    if (a5)
    {
      v8 = [(IMSyndicationAction *)&v12 initWithChatGUID:a3 syndicationStartDate:a4 syndicationActionType:4];
    }

    else
    {
      v8 = [(IMSyndicationAction *)&v12 initWithChatGUID:a3 syndicationStartDate:a4 syndicationActionType:8];
    }

    if (v8)
    {
      v8->_autoDonateMessages = a5;
    }

    v6 = v8;
    v9 = v6;
  }

  else
  {
    v10 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1ADC();
    }

    v9 = 0;
  }

  return v9;
}

- (IMChatSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 deserializedSyndicationActionType:(unsigned __int8)a5 version:(unsigned __int8)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (IMSyndicationActionCurrentVersion == v6)
  {
    v12 = v7 & 0xFFFFFFFB;
    if ((v7 & 4) == 0)
    {
      v12 = v7;
    }

    if ((v7 & 8) != 0)
    {
      v12 &= ~8u;
    }

    if ((v7 & 0x10) != 0)
    {
      v12 &= ~0x10u;
    }

    if ((v7 & 0x20) != 0)
    {
      v12 &= ~0x20u;
    }

    if ((v7 & 0x40) != 0)
    {
      v12 &= ~0x40u;
    }

    if (!v12)
    {
      self = [(IMChatSyndicationAction *)self initWithChatGUID:v10 syndicationStartDate:v11 autoDonateMessages:(v7 >> 2) & 1 version:v6];
      v15 = self;
      goto LABEL_20;
    }

    v13 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1B44(v7, v13);
    }
  }

  else
  {
    v14 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1ADC();
    }
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (IMChatSyndicationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sacg"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sasd"];
  v7 = [v4 decodeInt64ForKey:@"sat2"];
  v8 = [v4 decodeInt64ForKey:@"savs"];

  v9 = [(IMChatSyndicationAction *)self initWithChatGUID:v5 syndicationStartDate:v6 deserializedSyndicationActionType:v7 version:v8];
  return v9;
}

- (IMChatSyndicationAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"sacg"];
  v6 = objc_opt_class();
  v7 = [v4 objectForKeyedSubscript:@"sasd"];
  v8 = [v6 dateFromNanoSeconds:v7];
  v9 = [v4 objectForKeyedSubscript:@"sat2"];
  v10 = [v9 unsignedCharValue];
  v11 = [v4 objectForKeyedSubscript:@"savs"];

  v12 = -[IMChatSyndicationAction initWithChatGUID:syndicationStartDate:deserializedSyndicationActionType:version:](self, "initWithChatGUID:syndicationStartDate:deserializedSyndicationActionType:version:", v5, v8, v10, [v11 unsignedCharValue]);
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IMSyndicationAction *)self chatGUID];
  v6 = [(IMSyndicationAction *)self syndicationStartDate];
  v7 = [v4 initWithChatGUID:v5 syndicationStartDate:v6 autoDonateMessages:-[IMChatSyndicationAction autoSyndicateMessages](self version:{"autoSyndicateMessages"), -[IMSyndicationAction version](self, "version")}];

  return v7;
}

@end