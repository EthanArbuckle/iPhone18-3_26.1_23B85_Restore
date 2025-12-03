@interface LBFLighthouseEvent
- (BOOL)isEqual:(id)equal;
@end

@implementation LBFLighthouseEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_8;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v55 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C558(v55);
    }

    goto LABEL_11;
  }

  v10 = objc_msgSend_succeeded(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_succeeded(self, v11, v12, v13, v14);
  IsEqualNumberOrNil_n2 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v16, v10, v15, v17);

  if ((IsEqualNumberOrNil_n2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C2BC();
    }

    goto LABEL_11;
  }

  v23 = objc_msgSend_errorCode(v5, v19, v20, v21, v22);
  v28 = objc_msgSend_errorCode(self, v24, v25, v26, v27);
  v31 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v29, v23, v28, v30);

  if ((v31 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C364();
    }

    goto LABEL_11;
  }

  v36 = objc_msgSend_errorDomain(v5, v32, v33, v34, v35);
  v41 = objc_msgSend_errorDomain(self, v37, v38, v39, v40);
  IsEqualStringOrNil_s2 = objc_msgSend_IsEqualStringOrNil_s2_(LBFUtils, v42, v36, v41, v43);

  if ((IsEqualStringOrNil_s2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C40C();
    }

    goto LABEL_11;
  }

  v49 = objc_msgSend_eventType(v5, v45, v46, v47, v48);
  if (v49 != objc_msgSend_eventType(self, v50, v51, v52, v53))
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C4B4();
    }

LABEL_11:
    v54 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v54 = 1;
LABEL_12:

  return v54;
}

@end