@interface IMChatSyndicationAction
- (IMChatSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date autoDonateMessages:(BOOL)messages version:(unsigned __int8)version;
- (IMChatSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date deserializedSyndicationActionType:(unsigned __int8)type version:(unsigned __int8)version;
- (IMChatSyndicationAction)initWithCoder:(id)coder;
- (IMChatSyndicationAction)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMChatSyndicationAction

- (IMChatSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date autoDonateMessages:(BOOL)messages version:(unsigned __int8)version
{
  selfCopy = self;
  if (IMSyndicationActionCurrentVersion == version)
  {
    v12.receiver = self;
    v12.super_class = IMChatSyndicationAction;
    if (messages)
    {
      v8 = [(IMSyndicationAction *)&v12 initWithChatGUID:d syndicationStartDate:date syndicationActionType:4];
    }

    else
    {
      v8 = [(IMSyndicationAction *)&v12 initWithChatGUID:d syndicationStartDate:date syndicationActionType:8];
    }

    if (v8)
    {
      v8->_autoDonateMessages = messages;
    }

    selfCopy = v8;
    v9 = selfCopy;
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

- (IMChatSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date deserializedSyndicationActionType:(unsigned __int8)type version:(unsigned __int8)version
{
  versionCopy = version;
  typeCopy = type;
  dCopy = d;
  dateCopy = date;
  if (IMSyndicationActionCurrentVersion == versionCopy)
  {
    v12 = typeCopy & 0xFFFFFFFB;
    if ((typeCopy & 4) == 0)
    {
      v12 = typeCopy;
    }

    if ((typeCopy & 8) != 0)
    {
      v12 &= ~8u;
    }

    if ((typeCopy & 0x10) != 0)
    {
      v12 &= ~0x10u;
    }

    if ((typeCopy & 0x20) != 0)
    {
      v12 &= ~0x20u;
    }

    if ((typeCopy & 0x40) != 0)
    {
      v12 &= ~0x40u;
    }

    if (!v12)
    {
      self = [(IMChatSyndicationAction *)self initWithChatGUID:dCopy syndicationStartDate:dateCopy autoDonateMessages:(typeCopy >> 2) & 1 version:versionCopy];
      selfCopy = self;
      goto LABEL_20;
    }

    v13 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1B44(typeCopy, v13);
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

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (IMChatSyndicationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sacg"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sasd"];
  v7 = [coderCopy decodeInt64ForKey:@"sat2"];
  v8 = [coderCopy decodeInt64ForKey:@"savs"];

  v9 = [(IMChatSyndicationAction *)self initWithChatGUID:v5 syndicationStartDate:v6 deserializedSyndicationActionType:v7 version:v8];
  return v9;
}

- (IMChatSyndicationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"sacg"];
  v6 = objc_opt_class();
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sasd"];
  v8 = [v6 dateFromNanoSeconds:v7];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"sat2"];
  unsignedCharValue = [v9 unsignedCharValue];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"savs"];

  v12 = -[IMChatSyndicationAction initWithChatGUID:syndicationStartDate:deserializedSyndicationActionType:version:](self, "initWithChatGUID:syndicationStartDate:deserializedSyndicationActionType:version:", v5, v8, unsignedCharValue, [v11 unsignedCharValue]);
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  chatGUID = [(IMSyndicationAction *)self chatGUID];
  syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
  v7 = [v4 initWithChatGUID:chatGUID syndicationStartDate:syndicationStartDate autoDonateMessages:-[IMChatSyndicationAction autoSyndicateMessages](self version:{"autoSyndicateMessages"), -[IMSyndicationAction version](self, "version")}];

  return v7;
}

@end