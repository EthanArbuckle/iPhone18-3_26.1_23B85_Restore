@interface LBFMLRuntimedEvent
- (BOOL)isEqual:(id)equal;
@end

@implementation LBFMLRuntimedEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_9;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v68 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C558(v68);
    }

    goto LABEL_12;
  }

  v10 = objc_msgSend_eventType(v5, v6, v7, v8, v9);
  if (v10 != objc_msgSend_eventType(self, v11, v12, v13, v14))
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C614();
    }

    goto LABEL_12;
  }

  v19 = objc_msgSend_succeeded(v5, v15, v16, v17, v18);
  v24 = objc_msgSend_succeeded(self, v20, v21, v22, v23);
  IsEqualNumberOrNil_n2 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v25, v19, v24, v26);

  if ((IsEqualNumberOrNil_n2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C6B8();
    }

    goto LABEL_12;
  }

  v32 = objc_msgSend_errorCode(v5, v28, v29, v30, v31);
  v37 = objc_msgSend_errorCode(self, v33, v34, v35, v36);
  v40 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v38, v32, v37, v39);

  if ((v40 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C760();
    }

    goto LABEL_12;
  }

  v45 = objc_msgSend_errorDomain(v5, v41, v42, v43, v44);
  v50 = objc_msgSend_errorDomain(self, v46, v47, v48, v49);
  IsEqualStringOrNil_s2 = objc_msgSend_IsEqualStringOrNil_s2_(LBFUtils, v51, v45, v50, v52);

  if ((IsEqualStringOrNil_s2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C808();
    }

    goto LABEL_12;
  }

  v58 = objc_msgSend_scheduled(v5, v54, v55, v56, v57);
  v63 = objc_msgSend_scheduled(self, v59, v60, v61, v62);
  v66 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v64, v58, v63, v65);

  if ((v66 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C8B0();
    }

LABEL_12:
    v67 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v67 = 1;
LABEL_13:

  return v67;
}

@end