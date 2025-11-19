@interface LBFTrialEvent
- (BOOL)isEqual:(id)a3;
@end

@implementation LBFTrialEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v29 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C278(v29);
    }

    goto LABEL_9;
  }

  v10 = objc_msgSend_succeeded(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_succeeded(self, v11, v12, v13, v14);
  IsEqualNumberOrNil_n2 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v16, v10, v15, v17);

  if ((IsEqualNumberOrNil_n2 & 1) == 0)
  {
    v31 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C104(v31, v5, self);
    }

    goto LABEL_9;
  }

  v23 = objc_msgSend_eventType(v5, v19, v20, v21, v22);
  if (v23 != objc_msgSend_eventType(self, v24, v25, v26, v27))
  {
    v32 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C1C8(v32, v5, self);
    }

LABEL_9:
    v28 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v28 = 1;
LABEL_10:

  return v28;
}

@end