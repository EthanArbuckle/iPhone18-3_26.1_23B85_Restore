@interface BMCommunicationSafetyResultEvent_v2
- (BMCommunicationSafetyResultEvent_v2)initWithProto:(id)proto;
@end

@implementation BMCommunicationSafetyResultEvent_v2

- (BMCommunicationSafetyResultEvent_v2)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      childId = [v5 childId];
      deviceId = [v5 deviceId];
      sourceBundleId = [v5 sourceBundleId];
      [v5 absoluteTimestamp];
      v7 = v6;
      communicationSafetyResultEventDirection = [v5 communicationSafetyResultEventDirection];
      if (communicationSafetyResultEventDirection >= 4)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMCommunicationSafetyResultEvent_v2 initWithProto:];
        }

        v9 = 2;
      }

      else
      {
        v9 = qword_184D27980[communicationSafetyResultEventDirection];
      }

      v33 = v9;
      communicationSafetyResultEventType = [v5 communicationSafetyResultEventType];
      if (communicationSafetyResultEventType >= 5)
      {
        v14 = __biome_log_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [BMCommunicationSafetyResultEvent_v2 initWithProto:];
        }

        v13 = 4;
      }

      else
      {
        v13 = qword_184D279A0[communicationSafetyResultEventType];
      }

      v32 = v13;
      communicationSafetyResultContentType = [v5 communicationSafetyResultContentType];
      if (communicationSafetyResultContentType >= 4)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [BMCommunicationSafetyResultEvent_v2 initWithProto:];
        }

        v16 = 3;
      }

      else
      {
        v16 = qword_184D279C8[communicationSafetyResultContentType];
      }

      v30 = v16;
      contactHandles = [v5 contactHandles];
      v28 = [contactHandles copy];
      contentId = [v5 contentId];
      conversationId = [v5 conversationId];
      imageData = [v5 imageData];
      senderHandle = [v5 senderHandle];
      v20 = MEMORY[0x1E695DFF8];
      contentURL = [v5 contentURL];
      v21 = [v20 URLWithString:contentURL];
      v22 = MEMORY[0x1E695DFF8];
      conversationURL = [v5 conversationURL];
      v24 = [v22 URLWithString:conversationURL];
      self = [(BMCommunicationSafetyResultEvent *)self initWithChildID:childId deviceID:deviceId sourceBundleID:sourceBundleId absoluteTimeStamp:v33 eventDirection:v32 eventType:v30 contentType:v7 contactHandles:v28 contentID:contentId conversationID:conversationId imageData:imageData senderHandle:senderHandle contentURL:v21 conversationURL:v24];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMCommunicationSafetyResultEvent initWithProto:v5];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end