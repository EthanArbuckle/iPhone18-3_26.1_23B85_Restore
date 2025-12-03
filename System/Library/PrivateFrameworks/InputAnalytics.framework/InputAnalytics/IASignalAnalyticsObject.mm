@interface IASignalAnalyticsObject
- (IASignalAnalyticsObject)initWithChannel:(id)channel signal:(id)signal sessionIdString:(id)string creationTimestamp:(id)timestamp payload:(id)payload;
- (IASignalAnalyticsObject)initWithChannel:(id)channel signal:(id)signal sessionIdString:(id)string payload:(id)payload;
- (IASignalAnalyticsObject)initWithCoder:(id)coder;
- (id)creationTimestampWithFallback;
- (id)description;
- (id)obtainPayloadValueSafelyForKey:(id)key expectedClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IASignalAnalyticsObject

- (IASignalAnalyticsObject)initWithChannel:(id)channel signal:(id)signal sessionIdString:(id)string payload:(id)payload
{
  channelCopy = channel;
  signalCopy = signal;
  stringCopy = string;
  payloadCopy = payload;
  v21.receiver = self;
  v21.super_class = IASignalAnalyticsObject;
  v14 = [(IAXPCObject *)&v21 init];
  v16 = v14;
  if (v14)
  {
    objc_msgSend_setChannelName_(v14, v15, channelCopy);
    objc_msgSend_setSignalName_(v16, v17, signalCopy);
    objc_msgSend_setAnalyticsSessionIdString_(v16, v18, stringCopy);
    objc_msgSend_setPayload_(v16, v19, payloadCopy);
  }

  return v16;
}

- (IASignalAnalyticsObject)initWithChannel:(id)channel signal:(id)signal sessionIdString:(id)string creationTimestamp:(id)timestamp payload:(id)payload
{
  timestampCopy = timestamp;
  v14 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(self, v13, channel, signal, string, payload);
  v16 = v14;
  if (v14)
  {
    objc_msgSend_setCreationTimestamp_(v14, v15, timestampCopy);
  }

  return v16;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  v49.receiver = self;
  v49.super_class = IASignalAnalyticsObject;
  v8 = [(IAXPCObject *)&v49 description];
  objc_msgSend_addObject_(v7, v9, v8);

  v10 = MEMORY[0x1E696AEC0];
  v13 = objc_msgSend_channelName(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v10, v14, @"channelName=%@", v13);
  objc_msgSend_addObject_(v7, v16, v15);

  v17 = MEMORY[0x1E696AEC0];
  v20 = objc_msgSend_signalName(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v17, v21, @"signalName=%@", v20);
  objc_msgSend_addObject_(v7, v23, v22);

  v26 = objc_msgSend_analyticsSessionIdString(self, v24, v25);

  if (v26)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_msgSend_analyticsSessionIdString(self, v27, v28);
    v32 = objc_msgSend_stringWithFormat_(v29, v31, @"analyticsSessionIdString=%@", v30);
    objc_msgSend_addObject_(v7, v33, v32);
  }

  v34 = objc_msgSend_payload(self, v27, v28);

  if (v34)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_msgSend_payload(self, v35, v36);
    v41 = objc_msgSend_description(v38, v39, v40);
    v43 = objc_msgSend_stringWithFormat_(v37, v42, @"payload=%@", v41);
    objc_msgSend_addObject_(v7, v44, v43);
  }

  v45 = objc_msgSend_componentsJoinedByString_(v7, v35, @", ");
  v47 = objc_msgSend_stringByAppendingFormat_(v4, v46, @": %@", v45);

  return v47;
}

- (id)obtainPayloadValueSafelyForKey:(id)key expectedClass:(Class)class
{
  if (!key)
  {
    v13 = 0;
    goto LABEL_14;
  }

  keyCopy = key;
  v9 = objc_msgSend_payload(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, keyCopy);

  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else if (objc_opt_class() == class && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = objc_msgSend_UUIDString(v11, v14, v15);
  }

  else
  {
    if (objc_opt_class() != class || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
      goto LABEL_13;
    }

    v16 = objc_alloc(MEMORY[0x1E696AFB0]);
    v12 = objc_msgSend_initWithUUIDString_(v16, v17, v11);
  }

  v13 = v12;
LABEL_13:

LABEL_14:

  return v13;
}

- (id)creationTimestampWithFallback
{
  v4 = objc_msgSend_creationTimestamp(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_timestamp(self, v5, v6);
  }

  v9 = v8;

  return v9;
}

- (IASignalAnalyticsObject)initWithCoder:(id)coder
{
  v29[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = IASignalAnalyticsObject;
  v5 = [(IAXPCObject *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"channelName");
    channelName = v5->_channelName;
    v5->_channelName = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"signalName");
    signalName = v5->_signalName;
    v5->_signalName = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"analyticsSessionIdString");
    analyticsSessionIdString = v5->_analyticsSessionIdString;
    v5->_analyticsSessionIdString = v16;

    v18 = objc_alloc(MEMORY[0x1E695DFD8]);
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v29[3] = objc_opt_class();
    v29[4] = objc_opt_class();
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v29, 5);
    v22 = objc_msgSend_initWithArray_(v18, v21, v20);
    v24 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v23, v22, @"payload");
    payload = v5->_payload;
    v5->_payload = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = IASignalAnalyticsObject;
  coderCopy = coder;
  [(IAXPCObject *)&v9 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_channelName, @"channelName", v9.receiver, v9.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_signalName, @"signalName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_analyticsSessionIdString, @"analyticsSessionIdString");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_payload, @"payload");
}

@end