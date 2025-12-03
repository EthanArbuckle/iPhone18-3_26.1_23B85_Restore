@interface BMCommunicationSafetyResultEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMCommunicationSafetyResultEvent)initWithChildID:(id)d deviceID:(id)iD sourceBundleID:(id)bundleID absoluteTimeStamp:(double)stamp eventDirection:(unint64_t)direction eventType:(unint64_t)type contentType:(unint64_t)contentType contactHandles:(id)self0 contentID:(id)self1 conversationID:(id)self2 imageData:(id)self3 senderHandle:(id)self4 contentURL:(id)self5 conversationURL:(id)self6;
- (BMCommunicationSafetyResultEvent)initWithCoder:(id)coder;
- (BMCommunicationSafetyResultEvent)initWithProto:(id)proto;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMCommunicationSafetyResultEvent

- (BMCommunicationSafetyResultEvent)initWithChildID:(id)d deviceID:(id)iD sourceBundleID:(id)bundleID absoluteTimeStamp:(double)stamp eventDirection:(unint64_t)direction eventType:(unint64_t)type contentType:(unint64_t)contentType contactHandles:(id)self0 contentID:(id)self1 conversationID:(id)self2 imageData:(id)self3 senderHandle:(id)self4 contentURL:(id)self5 conversationURL:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  handlesCopy = handles;
  contentIDCopy = contentID;
  conversationIDCopy = conversationID;
  dataCopy = data;
  handleCopy = handle;
  lCopy = l;
  rLCopy = rL;
  v49.receiver = self;
  v49.super_class = BMCommunicationSafetyResultEvent;
  v26 = [(BMCommunicationSafetyResultEvent *)&v49 init];
  if (v26)
  {
    v27 = [dCopy copy];
    childID = v26->_childID;
    v26->_childID = v27;

    v29 = [iDCopy copy];
    deviceID = v26->_deviceID;
    v26->_deviceID = v29;

    v31 = [bundleIDCopy copy];
    sourceBundleID = v26->_sourceBundleID;
    v26->_sourceBundleID = v31;

    v26->_absoluteTimestamp = stamp;
    v26->_eventDirection = direction;
    v26->_eventType = type;
    v26->_contentType = contentType;
    v33 = [handlesCopy copy];
    contactHandles = v26->_contactHandles;
    v26->_contactHandles = v33;

    v35 = [contentIDCopy copy];
    contentID = v26->_contentID;
    v26->_contentID = v35;

    v37 = [conversationIDCopy copy];
    conversationID = v26->_conversationID;
    v26->_conversationID = v37;

    objc_storeStrong(&v26->_imageData, data);
    v39 = [handleCopy copy];
    senderHandle = v26->_senderHandle;
    v26->_senderHandle = v39;

    objc_storeStrong(&v26->_contentURL, l);
    objc_storeStrong(&v26->_conversationURL, rL);
  }

  return v26;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  if (version == 2)
  {
    selfCopy = BMCommunicationSafetyResultEvent_v2;
LABEL_5:
    v8 = [[selfCopy alloc] initWithProtoData:dataCopy];
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
  absoluteString = [(NSURL *)contentURL absoluteString];
  v27 = absoluteString;
  v16[13] = @"conversationURL";
  absoluteString2 = [(NSURL *)self->_conversationURL absoluteString];
  v28 = absoluteString2;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:v16 count:14];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMCommunicationSafetyResultEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMCommunicationSafetyResultEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMCommunicationSafetyResultEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMCommunicationSafetyResultEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMCommunicationSafetyResultEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMCommunicationSafetyResultEvent)initWithProto:(id)proto
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
      if (communicationSafetyResultEventDirection >= 3)
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
        v9 = communicationSafetyResultEventDirection;
      }

      v34 = v9;
      communicationSafetyResultEventType = [v5 communicationSafetyResultEventType];
      if (communicationSafetyResultEventType >= 4)
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
        v13 = communicationSafetyResultEventType;
      }

      v33 = v13;
      communicationSafetyResultContentType = [v5 communicationSafetyResultContentType];
      v31 = protoCopy;
      if (communicationSafetyResultContentType >= 3)
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
        v16 = communicationSafetyResultContentType;
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
      self = [(BMCommunicationSafetyResultEvent *)self initWithChildID:childId deviceID:deviceId sourceBundleID:sourceBundleId absoluteTimeStamp:v34 eventDirection:v33 eventType:v30 contentType:v7 contactHandles:v28 contentID:contentId conversationID:conversationId imageData:imageData senderHandle:senderHandle contentURL:v21 conversationURL:v24];

      selfCopy = self;
      protoCopy = v31;
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

- (id)proto
{
  v3 = objc_opt_new();
  deviceID = [(BMCommunicationSafetyResultEvent *)self deviceID];
  [v3 setDeviceId:deviceID];

  childID = [(BMCommunicationSafetyResultEvent *)self childID];
  [v3 setChildId:childID];

  sourceBundleID = [(BMCommunicationSafetyResultEvent *)self sourceBundleID];
  [v3 setSourceBundleId:sourceBundleID];

  [(BMCommunicationSafetyResultEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  eventDirection = [(BMCommunicationSafetyResultEvent *)self eventDirection];
  v8 = eventDirection;
  if (!eventDirection || eventDirection == 2 || eventDirection == 1)
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

  eventType = [(BMCommunicationSafetyResultEvent *)self eventType];
  v12 = eventType;
  if (eventType > 1)
  {
    if (eventType == 2 || eventType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (eventType < 2)
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
  contentType = [(BMCommunicationSafetyResultEvent *)self contentType];
  if (contentType >= 3)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(BMCommunicationSafetyResultEvent *)contentType proto];
    }
  }

  else if ((v9 & 1) == 0)
  {
    [v3 setCommunicationSafetyResultEventDirection:v8];
    [v3 setCommunicationSafetyResultEventType:v12];
    [v3 setCommunicationSafetyResultContentType:contentType];
    contactHandles = [(BMCommunicationSafetyResultEvent *)self contactHandles];
    v16 = [contactHandles mutableCopy];
    [v3 setContactHandles:v16];

    contentID = [(BMCommunicationSafetyResultEvent *)self contentID];
    [v3 setContentId:contentID];

    conversationID = [(BMCommunicationSafetyResultEvent *)self conversationID];
    [v3 setConversationId:conversationID];

    imageData = [(BMCommunicationSafetyResultEvent *)self imageData];
    [v3 setImageData:imageData];

    senderHandle = [(BMCommunicationSafetyResultEvent *)self senderHandle];
    [v3 setSenderHandle:senderHandle];

    contentURL = [(BMCommunicationSafetyResultEvent *)self contentURL];
    absoluteString = [contentURL absoluteString];
    [v3 setContentURL:absoluteString];

    conversationURL = [(BMCommunicationSafetyResultEvent *)self conversationURL];
    absoluteString2 = [conversationURL absoluteString];
    [v3 setConversationURL:absoluteString2];

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
  absoluteString = [(NSURL *)self->_contentURL absoluteString];
  v10 = v8 ^ [absoluteString hash];
  v11 = v7 ^ v10 ^ [(NSString *)self->_conversationID hash];
  absoluteString2 = [(NSURL *)self->_conversationURL absoluteString];
  v13 = [absoluteString2 hash];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_45;
  }

  v7 = equalCopy;
  v8 = v7;
  childID = self->_childID;
  v10 = childID;
  if (!childID)
  {
    childID = [v7 childID];
    if (!childID)
    {
      v78 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    v78 = childID;
    v10 = self->_childID;
  }

  childID2 = [v8 childID];
  if (![(NSString *)v10 isEqualToString:childID2])
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
    deviceID = [v8 deviceID];
    if (!deviceID)
    {
      v17 = v12;
      v76 = 0;
      v77 = 0;
      goto LABEL_17;
    }

    v76 = deviceID;
    v15 = self->_deviceID;
  }

  deviceID2 = [v8 deviceID];
  if (![(NSString *)v15 isEqualToString:deviceID2])
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
    sourceBundleID = [v8 sourceBundleID];
    if (!sourceBundleID)
    {
      v74 = 0;
      v75 = 0;
      goto LABEL_24;
    }

    v74 = sourceBundleID;
    v19 = self->_sourceBundleID;
  }

  sourceBundleID2 = [v8 sourceBundleID];
  v22 = v19;
  v23 = sourceBundleID2;
  if (![(NSString *)v22 isEqualToString:sourceBundleID2])
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
            contactHandles = [v8 contactHandles];
            if (!contactHandles)
            {
              v67 = 0;
              v70 = 0;
              goto LABEL_52;
            }

            v67 = contactHandles;
            contactHandles = self->_contactHandles;
          }

          contactHandles2 = [v8 contactHandles];
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
            contentID = [v8 contentID];
            if (!contentID)
            {
              v63 = 0;
              v66 = 0;
              goto LABEL_59;
            }

            v63 = contentID;
            contentID = self->_contentID;
          }

          contentID2 = [v8 contentID];
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
            conversationID = [v8 conversationID];
            if (!conversationID)
            {
              v59 = 0;
              v62 = 0;
              goto LABEL_66;
            }

            v59 = conversationID;
            conversationID = self->_conversationID;
          }

          conversationID2 = [v8 conversationID];
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
            senderHandle = [v8 senderHandle];
            if (!senderHandle)
            {
              v53 = 0;
              v57 = 0;
              goto LABEL_73;
            }

            v53 = senderHandle;
            senderHandle = self->_senderHandle;
          }

          senderHandle2 = [v8 senderHandle];
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
            contentURL = [v8 contentURL];
            if (!contentURL)
            {
              contentURL = 0;
              v52 = 0;
              goto LABEL_80;
            }

            contentURL = self->_contentURL;
          }

          absoluteString = [(NSURL *)contentURL absoluteString];
          contentURL2 = [v8 contentURL];
          [contentURL2 absoluteString];
          v54 = v56 = absoluteString;
          if (![absoluteString isEqualToString:?])
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
            conversationURL = [v8 conversationURL];
            if (!conversationURL)
            {
              v45 = 0;
              v13 = 1;
              goto LABEL_88;
            }

            v46 = conversationURL;
            v41 = self->_conversationURL;
          }

          v49 = [(NSURL *)v41 absoluteString:v46];
          conversationURL2 = [v8 conversationURL];
          absoluteString2 = [conversationURL2 absoluteString];
          v13 = [v49 isEqualToString:absoluteString2];

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