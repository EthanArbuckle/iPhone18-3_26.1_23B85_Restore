@interface IAXPCObject
- (BOOL)isEqual:(id)equal;
- (IAXPCObject)init;
- (IAXPCObject)initWithCoder:(id)coder;
- (IAXPCObject)initWithTimestamp:(id)timestamp;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IAXPCObject

- (IAXPCObject)init
{
  v15.receiver = self;
  v15.super_class = IAXPCObject;
  v4 = [(IAXPCObject *)&v15 init];
  if (v4)
  {
    v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v2, v3);
    v8 = objc_msgSend_bundleIdentifier(v5, v6, v7);
    objc_msgSend_setAppBundleId_(v4, v9, v8);

    v12 = objc_msgSend_now(MEMORY[0x1E695DF00], v10, v11);
    objc_msgSend_setTimestamp_(v4, v13, v12);
  }

  return v4;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_textInputSessionId(self, a2, v2);
  v8 = objc_msgSend_appSessionId(self, v6, v7);
  v11 = objc_msgSend_appBundleId(self, v9, v10);
  v14 = objc_msgSend_description(self->timestamp, v12, v13);
  v17 = objc_msgSend_description(self->creationTimestamp, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"textInputSessionId='%@', appSessionId='%@', appBundleId='%@', timestamp='%@', creationTimestamp='%@'", v5, v8, v11, v14, v17);

  return v19;
}

- (IAXPCObject)initWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = IAXPCObject;
  v7 = [(IAXPCObject *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v5, v6);
    v11 = objc_msgSend_bundleIdentifier(v8, v9, v10);
    objc_msgSend_setAppBundleId_(v7, v12, v11);

    objc_msgSend_setTimestamp_(v7, v13, timestampCopy);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v15 = objc_msgSend_textInputSessionId(self, v11, v12);
    if (v15 || (objc_msgSend_textInputSessionId(v10, v13, v14), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = objc_msgSend_textInputSessionId(self, v13, v14);
      v5 = objc_msgSend_textInputSessionId(v10, v16, v17);
      isEqual = objc_msgSend_isEqual_(v4, v18, v5);

      if (v15)
      {
LABEL_12:

        v24 = objc_msgSend_appSessionId(self, v20, v21);
        if (v24 || (objc_msgSend_appSessionId(v10, v22, v23), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v5 = objc_msgSend_appSessionId(self, v22, v23);
          v6 = objc_msgSend_appSessionId(v10, v25, v26);
          v28 = objc_msgSend_isEqual_(v5, v27, v6);

          if (v24)
          {
LABEL_18:

            v33 = objc_msgSend_appBundleId(self, v29, v30);
            if (v33 || (objc_msgSend_appBundleId(v10, v31, v32), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v6 = objc_msgSend_appBundleId(self, v31, v32);
              v36 = objc_msgSend_appBundleId(v10, v34, v35);
              v38 = objc_msgSend_isEqual_(v6, v37, v36);

              if (v33)
              {
LABEL_24:

                v43 = objc_msgSend_timestamp(self, v39, v40);
                if (v43 || (objc_msgSend_timestamp(v10, v41, v42), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v44 = objc_msgSend_timestamp(self, v41, v42);
                  v47 = objc_msgSend_timestamp(v10, v45, v46);
                  v49 = objc_msgSend_isEqual_(v44, v48, v47);

                  if (v43)
                  {
LABEL_30:

                    v54 = objc_msgSend_creationTimestamp(self, v50, v51);
                    if (v54 || (objc_msgSend_creationTimestamp(v10, v52, v53), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v55 = objc_msgSend_creationTimestamp(self, v52, v53);
                      v58 = objc_msgSend_creationTimestamp(v10, v56, v57);
                      v60 = objc_msgSend_isEqual_(v55, v59, v58);

                      if (v54)
                      {
LABEL_36:

                        v19 = isEqual & v28 & v38 & v49 & v60;
                        goto LABEL_37;
                      }
                    }

                    else
                    {
                      v60 = 1;
                    }

                    goto LABEL_36;
                  }
                }

                else
                {
                  v49 = 1;
                }

                goto LABEL_30;
              }
            }

            else
            {
              v38 = 1;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v28 = 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      isEqual = 1;
    }

    goto LABEL_12;
  }

  v19 = 0;
LABEL_37:

  return v19;
}

- (IAXPCObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = IAXPCObject;
  v5 = [(IAXPCObject *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"textInputSessionId");
    textInputSessionId = v5->textInputSessionId;
    v5->textInputSessionId = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"appSessionId");
    appSessionId = v5->appSessionId;
    v5->appSessionId = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"appBundleId");
    appBundleId = v5->appBundleId;
    v5->appBundleId = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"timestamp");
    timestamp = v5->timestamp;
    v5->timestamp = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"creationTimestamp");
    creationTimestamp = v5->creationTimestamp;
    v5->creationTimestamp = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  textInputSessionId = self->textInputSessionId;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, textInputSessionId, @"textInputSessionId");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->appSessionId, @"appSessionId");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->appBundleId, @"appBundleId");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->timestamp, @"timestamp");
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->creationTimestamp, @"creationTimestamp");
}

@end