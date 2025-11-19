@interface BMCommunicationSafetyResultEvent_v2
- (BMCommunicationSafetyResultEvent_v2)initWithProto:(id)a3;
@end

@implementation BMCommunicationSafetyResultEvent_v2

- (BMCommunicationSafetyResultEvent_v2)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v36 = [v5 childId];
      v35 = [v5 deviceId];
      v34 = [v5 sourceBundleId];
      [v5 absoluteTimestamp];
      v7 = v6;
      v8 = [v5 communicationSafetyResultEventDirection];
      if (v8 >= 4)
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
        v9 = qword_184D27980[v8];
      }

      v33 = v9;
      v12 = [v5 communicationSafetyResultEventType];
      if (v12 >= 5)
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
        v13 = qword_184D279A0[v12];
      }

      v32 = v13;
      v15 = [v5 communicationSafetyResultContentType];
      if (v15 >= 4)
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
        v16 = qword_184D279C8[v15];
      }

      v30 = v16;
      v31 = [v5 contactHandles];
      v28 = [v31 copy];
      v27 = [v5 contentId];
      v26 = [v5 conversationId];
      v18 = [v5 imageData];
      v19 = [v5 senderHandle];
      v20 = MEMORY[0x1E695DFF8];
      v29 = [v5 contentURL];
      v21 = [v20 URLWithString:v29];
      v22 = MEMORY[0x1E695DFF8];
      v23 = [v5 conversationURL];
      v24 = [v22 URLWithString:v23];
      self = [(BMCommunicationSafetyResultEvent *)self initWithChildID:v36 deviceID:v35 sourceBundleID:v34 absoluteTimeStamp:v33 eventDirection:v32 eventType:v30 contentType:v7 contactHandles:v28 contentID:v27 conversationID:v26 imageData:v18 senderHandle:v19 contentURL:v21 conversationURL:v24];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMCommunicationSafetyResultEvent initWithProto:v5];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end