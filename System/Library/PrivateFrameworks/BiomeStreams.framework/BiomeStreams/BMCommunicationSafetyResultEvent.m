@interface BMCommunicationSafetyResultEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMCommunicationSafetyResultEvent)initWithChildID:(id)a3 deviceID:(id)a4 sourceBundleID:(id)a5 absoluteTimeStamp:(double)a6 eventDirection:(unint64_t)a7 eventType:(unint64_t)a8 contentType:(unint64_t)a9 contactHandles:(id)a10 contentID:(id)a11 conversationID:(id)a12 imageData:(id)a13 senderHandle:(id)a14 contentURL:(id)a15 conversationURL:(id)a16;
- (BMCommunicationSafetyResultEvent)initWithCoder:(id)a3;
- (BMCommunicationSafetyResultEvent)initWithProto:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMCommunicationSafetyResultEvent

- (BMCommunicationSafetyResultEvent)initWithChildID:(id)a3 deviceID:(id)a4 sourceBundleID:(id)a5 absoluteTimeStamp:(double)a6 eventDirection:(unint64_t)a7 eventType:(unint64_t)a8 contentType:(unint64_t)a9 contactHandles:(id)a10 contentID:(id)a11 conversationID:(id)a12 imageData:(id)a13 senderHandle:(id)a14 contentURL:(id)a15 conversationURL:(id)a16
{
  v48 = a3;
  v47 = a4;
  v46 = a5;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v45 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v49.receiver = self;
  v49.super_class = BMCommunicationSafetyResultEvent;
  v26 = [(BMCommunicationSafetyResultEvent *)&v49 init];
  if (v26)
  {
    v27 = [v48 copy];
    childID = v26->_childID;
    v26->_childID = v27;

    v29 = [v47 copy];
    deviceID = v26->_deviceID;
    v26->_deviceID = v29;

    v31 = [v46 copy];
    sourceBundleID = v26->_sourceBundleID;
    v26->_sourceBundleID = v31;

    v26->_absoluteTimestamp = a6;
    v26->_eventDirection = a7;
    v26->_eventType = a8;
    v26->_contentType = a9;
    v33 = [v20 copy];
    contactHandles = v26->_contactHandles;
    v26->_contactHandles = v33;

    v35 = [v21 copy];
    contentID = v26->_contentID;
    v26->_contentID = v35;

    v37 = [v22 copy];
    conversationID = v26->_conversationID;
    v26->_conversationID = v37;

    objc_storeStrong(&v26->_imageData, a13);
    v39 = [v23 copy];
    senderHandle = v26->_senderHandle;
    v26->_senderHandle = v39;

    objc_storeStrong(&v26->_contentURL, a15);
    objc_storeStrong(&v26->_conversationURL, a16);
  }

  return v26;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = a1;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v7 = BMCommunicationSafetyResultEvent_v2;
LABEL_5:
    v8 = [[v7 alloc] initWithProtoData:v6];
    goto LABEL_9;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[BMCommunicationSafetyResultEvent eventWithData:dataVersion:];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)jsonDict
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *&self->_childID;
  v16[0] = @"childId";
  v16[1] = @"deviceId";
  sourceBundleID = self->_sourceBundleID;
  v17 = v3;
  v16[2] = @"sourceBundleId";
  v16[3] = @"absoluteTimestamp";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v19 = v4;
  v16[4] = @"eventDirection";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventDirection];
  v20 = v5;
  v16[5] = @"eventType";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventType];
  v21 = v6;
  v16[6] = @"contentType";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_contentType];
  v22 = v7;
  v23 = *&self->_contactHandles;
  v16[7] = @"contactHandles";
  v16[8] = @"contentID";
  conversationID = self->_conversationID;
  v16[9] = @"conversationID";
  v16[10] = @"imageDataLengthInBytes";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](self->_imageData, "length")}];
  senderHandle = self->_senderHandle;
  contentURL = self->_contentURL;
  v25 = v8;
  v26 = senderHandle;
  v16[11] = @"senderHandle";
  v16[12] = @"contentURL";
  v11 = [(NSURL *)contentURL absoluteString];
  v27 = v11;
  v16[13] = @"conversationURL";
  v12 = [(NSURL *)self->_conversationURL absoluteString];
  v28 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:v16 count:14];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMCommunicationSafetyResultEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMCommunicationSafetyResultEvent json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMCommunicationSafetyResultEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMCommunicationSafetyResultEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMCommunicationSafetyResultEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMCommunicationSafetyResultEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMCommunicationSafetyResultEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v37 = [v5 childId];
      v36 = [v5 deviceId];
      v35 = [v5 sourceBundleId];
      [v5 absoluteTimestamp];
      v7 = v6;
      v8 = [v5 communicationSafetyResultEventDirection];
      if (v8 >= 3)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMCommunicationSafetyResultEvent initWithProto:];
        }

        v9 = 2;
      }

      else
      {
        v9 = v8;
      }

      v34 = v9;
      v12 = [v5 communicationSafetyResultEventType];
      if (v12 >= 4)
      {
        v14 = __biome_log_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [BMCommunicationSafetyResultEvent initWithProto:];
        }

        v13 = 4;
      }

      else
      {
        v13 = v12;
      }

      v33 = v13;
      v15 = [v5 communicationSafetyResultContentType];
      v31 = v4;
      if (v15 >= 3)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [BMCommunicationSafetyResultEvent initWithProto:];
        }

        v16 = 3;
      }

      else
      {
        v16 = v15;
      }

      v30 = v16;
      v32 = [v5 contactHandles];
      v28 = [v32 copy];
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
      self = [(BMCommunicationSafetyResultEvent *)self initWithChildID:v37 deviceID:v36 sourceBundleID:v35 absoluteTimeStamp:v34 eventDirection:v33 eventType:v30 contentType:v7 contactHandles:v28 contentID:v27 conversationID:v26 imageData:v18 senderHandle:v19 contentURL:v21 conversationURL:v24];

      v10 = self;
      v4 = v31;
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

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMCommunicationSafetyResultEvent *)self deviceID];
  [v3 setDeviceId:v4];

  v5 = [(BMCommunicationSafetyResultEvent *)self childID];
  [v3 setChildId:v5];

  v6 = [(BMCommunicationSafetyResultEvent *)self sourceBundleID];
  [v3 setSourceBundleId:v6];

  [(BMCommunicationSafetyResultEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v7 = [(BMCommunicationSafetyResultEvent *)self eventDirection];
  v8 = v7;
  if (!v7 || v7 == 2 || v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BMCommunicationSafetyResultEvent *)v8 proto];
    }

    v8 = 0xFFFFFFFFLL;
    v9 = 1;
  }

  v11 = [(BMCommunicationSafetyResultEvent *)self eventType];
  v12 = v11;
  if (v11 > 1)
  {
    if (v11 == 2 || v11 == 3)
    {
      goto LABEL_16;
    }
  }

  else if (v11 < 2)
  {
    goto LABEL_16;
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(BMCommunicationSafetyResultEvent *)v12 proto];
  }

  v12 = 0xFFFFFFFFLL;
  v9 = 1;
LABEL_16:
  v14 = [(BMCommunicationSafetyResultEvent *)self contentType];
  if (v14 >= 3)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(BMCommunicationSafetyResultEvent *)v14 proto];
    }
  }

  else if ((v9 & 1) == 0)
  {
    [v3 setCommunicationSafetyResultEventDirection:v8];
    [v3 setCommunicationSafetyResultEventType:v12];
    [v3 setCommunicationSafetyResultContentType:v14];
    v15 = [(BMCommunicationSafetyResultEvent *)self contactHandles];
    v16 = [v15 mutableCopy];
    [v3 setContactHandles:v16];

    v17 = [(BMCommunicationSafetyResultEvent *)self contentID];
    [v3 setContentId:v17];

    v18 = [(BMCommunicationSafetyResultEvent *)self conversationID];
    [v3 setConversationId:v18];

    v19 = [(BMCommunicationSafetyResultEvent *)self imageData];
    [v3 setImageData:v19];

    v20 = [(BMCommunicationSafetyResultEvent *)self senderHandle];
    [v3 setSenderHandle:v20];

    v21 = [(BMCommunicationSafetyResultEvent *)self contentURL];
    v22 = [v21 absoluteString];
    [v3 setContentURL:v22];

    v23 = [(BMCommunicationSafetyResultEvent *)self conversationURL];
    v24 = [v23 absoluteString];
    [v3 setConversationURL:v24];

    v25 = v3;
    goto LABEL_23;
  }

  v25 = 0;
LABEL_23:

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_childID hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_deviceID hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_sourceBundleID hash];
  v8 = [(NSString *)self->_contentID hash];
  v9 = [(NSURL *)self->_contentURL absoluteString];
  v10 = v8 ^ [v9 hash];
  v11 = v7 ^ v10 ^ [(NSString *)self->_conversationID hash];
  v12 = [(NSURL *)self->_conversationURL absoluteString];
  v13 = [v12 hash];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_45;
  }

  v7 = v6;
  v8 = v7;
  childID = self->_childID;
  v10 = childID;
  if (!childID)
  {
    v11 = [v7 childID];
    if (!v11)
    {
      v78 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    v78 = v11;
    v10 = self->_childID;
  }

  v3 = [v8 childID];
  if (![(NSString *)v10 isEqualToString:v3])
  {

    v13 = 0;
    goto LABEL_42;
  }

  v12 = 1;
LABEL_10:
  deviceID = self->_deviceID;
  v15 = deviceID;
  if (!deviceID)
  {
    v16 = [v8 deviceID];
    if (!v16)
    {
      v17 = v12;
      v76 = 0;
      v77 = 0;
      goto LABEL_17;
    }

    v76 = v16;
    v15 = self->_deviceID;
  }

  v4 = [v8 deviceID];
  if (![(NSString *)v15 isEqualToString:v4])
  {

    v13 = 0;
    goto LABEL_39;
  }

  v17 = v12;
  v77 = 1;
LABEL_17:
  sourceBundleID = self->_sourceBundleID;
  v19 = sourceBundleID;
  if (!sourceBundleID)
  {
    v20 = [v8 sourceBundleID];
    if (!v20)
    {
      v74 = 0;
      v75 = 0;
      goto LABEL_24;
    }

    v74 = v20;
    v19 = self->_sourceBundleID;
  }

  v21 = [v8 sourceBundleID];
  v22 = v19;
  v23 = v21;
  if (![(NSString *)v22 isEqualToString:v21])
  {

    v13 = 0;
    v12 = v17;
    goto LABEL_36;
  }

  v73 = v23;
  v75 = 1;
LABEL_24:
  absoluteTimestamp = self->_absoluteTimestamp;
  [v8 absoluteTimestamp];
  if (absoluteTimestamp == v25)
  {
    eventDirection = self->_eventDirection;
    if (eventDirection == [v8 eventDirection])
    {
      eventType = self->_eventType;
      if (eventType == [v8 eventType])
      {
        contentType = self->_contentType;
        if (contentType == [v8 contentType])
        {
          contactHandles = self->_contactHandles;
          v72 = contactHandles;
          if (!contactHandles)
          {
            v30 = [v8 contactHandles];
            if (!v30)
            {
              v67 = 0;
              v70 = 0;
              goto LABEL_52;
            }

            v67 = v30;
            contactHandles = self->_contactHandles;
          }

          v71 = [v8 contactHandles];
          if (![(NSArray *)contactHandles isEqual:?])
          {
            v13 = 0;
            v12 = v17;
            goto LABEL_100;
          }

          v70 = 1;
LABEL_52:
          contentID = self->_contentID;
          v69 = contentID;
          if (!contentID)
          {
            v33 = [v8 contentID];
            if (!v33)
            {
              v63 = 0;
              v66 = 0;
              goto LABEL_59;
            }

            v63 = v33;
            contentID = self->_contentID;
          }

          v68 = [v8 contentID];
          if (![(NSString *)contentID isEqualToString:?])
          {
            v13 = 0;
            v12 = v17;
            goto LABEL_97;
          }

          v66 = 1;
LABEL_59:
          conversationID = self->_conversationID;
          v65 = conversationID;
          if (!conversationID)
          {
            v35 = [v8 conversationID];
            if (!v35)
            {
              v59 = 0;
              v62 = 0;
              goto LABEL_66;
            }

            v59 = v35;
            conversationID = self->_conversationID;
          }

          v64 = [v8 conversationID];
          if (![(NSString *)conversationID isEqualToString:?])
          {
            v13 = 0;
            v12 = v17;
            goto LABEL_94;
          }

          v62 = 1;
LABEL_66:
          senderHandle = self->_senderHandle;
          v61 = senderHandle;
          if (!senderHandle)
          {
            v37 = [v8 senderHandle];
            if (!v37)
            {
              v53 = 0;
              v57 = 0;
              goto LABEL_73;
            }

            v53 = v37;
            senderHandle = self->_senderHandle;
          }

          v60 = [v8 senderHandle];
          if (![(NSString *)senderHandle isEqualToString:?])
          {
            v13 = 0;
            v12 = v17;
            goto LABEL_91;
          }

          v57 = 1;
LABEL_73:
          v12 = v17;
          contentURL = self->_contentURL;
          v58 = contentURL;
          if (!contentURL)
          {
            v48 = [v8 contentURL];
            if (!v48)
            {
              v48 = 0;
              v52 = 0;
              goto LABEL_80;
            }

            contentURL = self->_contentURL;
          }

          v39 = [(NSURL *)contentURL absoluteString];
          v55 = [v8 contentURL];
          [v55 absoluteString];
          v54 = v56 = v39;
          if (![v39 isEqualToString:?])
          {
            v13 = 0;
            goto LABEL_89;
          }

          v52 = 1;
LABEL_80:
          v51 = v12;
          conversationURL = self->_conversationURL;
          v41 = conversationURL;
          if (!conversationURL)
          {
            v42 = [v8 conversationURL];
            if (!v42)
            {
              v45 = 0;
              v13 = 1;
              goto LABEL_88;
            }

            v46 = v42;
            v41 = self->_conversationURL;
          }

          v49 = [(NSURL *)v41 absoluteString:v46];
          v50 = [v8 conversationURL];
          v43 = [v50 absoluteString];
          v13 = [v49 isEqualToString:v43];

          if (conversationURL)
          {
            v12 = v51;
            if (!v52)
            {
              v44 = v58;
              goto LABEL_111;
            }

            goto LABEL_89;
          }

          v12 = v51;
          v45 = v47;
LABEL_88:

          v44 = v58;
          if ((v52 & 1) == 0)
          {
LABEL_111:
            if (!v44)
            {
LABEL_112:

              if ((v57 & 1) == 0)
              {
LABEL_92:
                if (v61)
                {
                  if (!v62)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {

                  if ((v62 & 1) == 0)
                  {
LABEL_95:
                    if (v65)
                    {
                      if (!v66)
                      {
                        goto LABEL_98;
                      }
                    }

                    else
                    {

                      if ((v66 & 1) == 0)
                      {
LABEL_98:
                        if (v69)
                        {
                          if (!v70)
                          {
LABEL_101:
                            if (v72)
                            {
                              if (!v75)
                              {
                                goto LABEL_36;
                              }

                              goto LABEL_35;
                            }

                            goto LABEL_34;
                          }
                        }

                        else
                        {

                          if ((v70 & 1) == 0)
                          {
                            goto LABEL_101;
                          }
                        }

LABEL_100:

                        goto LABEL_101;
                      }
                    }

LABEL_97:

                    goto LABEL_98;
                  }
                }

LABEL_94:

                goto LABEL_95;
              }

LABEL_91:

              goto LABEL_92;
            }

LABEL_90:
            if (!v57)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

LABEL_89:

          if (!v58)
          {
            goto LABEL_112;
          }

          goto LABEL_90;
        }
      }
    }
  }

  v13 = 0;
  v12 = v17;
LABEL_34:
  if (v75)
  {
LABEL_35:
  }

LABEL_36:
  if (!sourceBundleID)
  {

    if ((v77 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v77)
  {
LABEL_38:
  }

LABEL_39:
  if (!deviceID)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v12)
  {
LABEL_41:
  }

LABEL_42:
  if (!childID)
  {
  }

LABEL_45:
  return v13;
}

@end