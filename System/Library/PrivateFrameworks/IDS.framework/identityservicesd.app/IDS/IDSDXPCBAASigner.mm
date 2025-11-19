@interface IDSDXPCBAASigner
- (IDSDXPCBAASigner)initWithTopic:(id)a3 queue:(id)a4 connection:(id)a5;
- (void)baaHeadersBySigningData:(id)a3 serverTimestamp:(id)a4 completion:(id)a5;
- (void)purgeBAACertWithCompletion:(id)a3;
@end

@implementation IDSDXPCBAASigner

- (IDSDXPCBAASigner)initWithTopic:(id)a3 queue:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 valueForEntitlement:kIDSRegistrationEntitlement];
  objc_opt_class();
  v41 = a3;
  v42 = self;
  obj = a4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v12 isEqualToString:v9];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = 0;
        goto LABEL_19;
      }

      v20 = [v12 BOOLValue];
    }

    v16 = v20;
    goto LABEL_19;
  }

  v38 = v11;
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
          v16 |= [v19 isEqualToString:v9];
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

  v11 = v38;
LABEL_19:
  v21 = [v11 valueForEntitlement:kIDSMessagingEntitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v12;
    v39 = v10;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = v11;
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
            v16 |= [v28 isEqualToString:v9];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = v11;
    }

    v11 = v25;
    v12 = v37;
    v10 = v39;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v16 & 1) != 0 || ([v21 isEqualToString:v9])
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
    v43.receiver = v42;
    v43.super_class = IDSDXPCBAASigner;
    v32 = [(IDSDXPCBAASigner *)&v43 init];
    v33 = v32;
    if (v32)
    {
      objc_storeStrong(&v32->_queue, obj);
      objc_storeStrong(&v33->_topic, v41);
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
    v53 = v11;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Missing IDS Registration entitlement -- failing creation of IDSDXPCBAASigner collaborator {connection: %@}", buf, 0xCu);
  }

  v30 = 0;
  v31 = v42;
LABEL_46:

  return v30;
}

- (void)baaHeadersBySigningData:(id)a3 serverTimestamp:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(IDSDXPCBAASigner *)self baaSigner];
    v12 = [(IDSDXPCBAASigner *)self topic];
    [v11 headersBySigningData:v8 serverTimestamp:v9 topic:v12 completion:v10];
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

- (void)purgeBAACertWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(IDSDXPCBAASigner *)self baaSigner];
  v5 = [(IDSDXPCBAASigner *)self topic];
  [v6 purgeBAACertForTopic:v5 completion:v4];
}

@end