@interface IDSDXPCBAASigner
- (IDSDXPCBAASigner)initWithTopic:(id)topic queue:(id)queue connection:(id)connection;
- (void)baaHeadersBySigningData:(id)data serverTimestamp:(id)timestamp completion:(id)completion;
- (void)purgeBAACertWithCompletion:(id)completion;
@end

@implementation IDSDXPCBAASigner

- (IDSDXPCBAASigner)initWithTopic:(id)topic queue:(id)queue connection:(id)connection
{
  topicCopy = topic;
  queueCopy = queue;
  connectionCopy = connection;
  v12 = [connectionCopy valueForEntitlement:kIDSRegistrationEntitlement];
  objc_opt_class();
  topicCopy2 = topic;
  selfCopy = self;
  obj = queue;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v12 isEqualToString:topicCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = 0;
        goto LABEL_19;
      }

      bOOLValue = [v12 BOOLValue];
    }

    v16 = bOOLValue;
    goto LABEL_19;
  }

  v38 = connectionCopy;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v49;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 |= [v19 isEqualToString:topicCopy];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  connectionCopy = v38;
LABEL_19:
  v21 = [connectionCopy valueForEntitlement:kIDSMessagingEntitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v12;
    v39 = queueCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = connectionCopy;
      v26 = *v45;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v44 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 |= [v28 isEqualToString:topicCopy];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = connectionCopy;
    }

    connectionCopy = v25;
    v12 = v37;
    queueCopy = v39;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v16 & 1) != 0 || ([v21 isEqualToString:topicCopy])
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v16 & 1) != 0 || ([v21 BOOLValue])
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }
  }

  if (v16)
  {
LABEL_43:
    v43.receiver = selfCopy;
    v43.super_class = IDSDXPCBAASigner;
    v32 = [(IDSDXPCBAASigner *)&v43 init];
    v33 = v32;
    if (v32)
    {
      objc_storeStrong(&v32->_queue, obj);
      objc_storeStrong(&v33->_topic, topicCopy2);
      v34 = [[IDSBAASigner alloc] initWithQueue:v33->_queue];
      baaSigner = v33->_baaSigner;
      v33->_baaSigner = v34;
    }

    v31 = v33;
    v30 = v31;
    goto LABEL_46;
  }

LABEL_37:
  v29 = +[IMRGLog registration];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Missing IDS Registration entitlement -- failing creation of IDSDXPCBAASigner collaborator {connection: %@}", buf, 0xCu);
  }

  v30 = 0;
  v31 = selfCopy;
LABEL_46:

  return v30;
}

- (void)baaHeadersBySigningData:(id)data serverTimestamp:(id)timestamp completion:(id)completion
{
  dataCopy = data;
  timestampCopy = timestamp;
  completionCopy = completion;
  if (completionCopy)
  {
    baaSigner = [(IDSDXPCBAASigner *)self baaSigner];
    topic = [(IDSDXPCBAASigner *)self topic];
    [baaSigner headersBySigningData:dataCopy serverTimestamp:timestampCopy topic:topic completion:completionCopy];
  }

  else
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100914DB8(v13);
    }
  }
}

- (void)purgeBAACertWithCompletion:(id)completion
{
  completionCopy = completion;
  baaSigner = [(IDSDXPCBAASigner *)self baaSigner];
  topic = [(IDSDXPCBAASigner *)self topic];
  [baaSigner purgeBAACertForTopic:topic completion:completionCopy];
}

@end