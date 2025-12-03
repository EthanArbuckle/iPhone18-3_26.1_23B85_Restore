@interface CKMessageAcknowledgmentDraftDescriptor
+ (id)acknowledgmentBarColor;
+ (id)allMessageAcknowledgmentDescriptorsWithServiceName:(id)name;
- (CKMessageAcknowledgmentDraftDescriptor)initWithMessageAcknowledgmentType:(int64_t)type serviceName:(id)name;
- (NSString)acknowledgmentImageName;
- (UIColor)acknowledgmentImageColor;
- (UIColor)selectedAcknowledgmentImageColor;
- (UIColor)selectedBalloonColor;
- (id)symbolName;
- (int64_t)themeColor;
@end

@implementation CKMessageAcknowledgmentDraftDescriptor

- (CKMessageAcknowledgmentDraftDescriptor)initWithMessageAcknowledgmentType:(int64_t)type serviceName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CKMessageAcknowledgmentDraftDescriptor;
  v7 = [(CKMessageAcknowledgmentDraftDescriptor *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_messageAcknowledgmentType = type;
    v9 = [nameCopy copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;
  }

  return v8;
}

- (NSString)acknowledgmentImageName
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 messageAcknowledgmentImageNameForType:{-[CKMessageAcknowledgmentDraftDescriptor messageAcknowledgmentType](self, "messageAcknowledgmentType")}];

  return v4;
}

- (id)symbolName
{
  messageAcknowledgmentType = [(CKMessageAcknowledgmentDraftDescriptor *)self messageAcknowledgmentType];
  if ((messageAcknowledgmentType - 2000) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72F13D8[messageAcknowledgmentType - 2000];
  }
}

- (int64_t)themeColor
{
  if (self->_messageAcknowledgmentType == 2000)
  {
    return [(NSString *)self->_serviceName isEqualToString:*MEMORY[0x1E69A7AF0], v2, v3];
  }

  else
  {
    return 0;
  }
}

- (UIColor)acknowledgmentImageColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  v4 = [theme messageAcknowledgment:2 acknowledgmentImageColor:0];

  return v4;
}

- (UIColor)selectedAcknowledgmentImageColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  v5 = [theme messageAcknowledgment:2 selectedAcknowledgmentImageColor:{-[CKMessageAcknowledgmentDraftDescriptor themeColor](self, "themeColor")}];

  return v5;
}

- (UIColor)selectedBalloonColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  v5 = [theme messageAcknowledgmentSelectedBalloonColorForStyle:2 serviceName:self->_serviceName];

  return v5;
}

+ (id)acknowledgmentBarColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  v4 = [theme messageAcknowledgmentBalloonColorForStyle:2];

  return v4;
}

+ (id)allMessageAcknowledgmentDescriptorsWithServiceName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[CKUIBehavior sharedBehaviors];
  messageAcknowledgmentPickerBarAcknowledgmentOrder = [v5 messageAcknowledgmentPickerBarAcknowledgmentOrder];

  v7 = [messageAcknowledgmentPickerBarAcknowledgmentOrder countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(messageAcknowledgmentPickerBarAcknowledgmentOrder);
        }

        v11 = -[CKMessageAcknowledgmentDraftDescriptor initWithMessageAcknowledgmentType:serviceName:]([CKMessageAcknowledgmentDraftDescriptor alloc], "initWithMessageAcknowledgmentType:serviceName:", [*(*(&v13 + 1) + 8 * i) integerValue], nameCopy);
        [array addObject:v11];
      }

      v8 = [messageAcknowledgmentPickerBarAcknowledgmentOrder countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

@end