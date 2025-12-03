@interface LBFProtoConverter
+ (id)createBitacoraBmltIdentifiers:(id)identifiers;
+ (id)createBitacoraExperimentIdentifiers:(id)identifiers;
+ (id)createLighthousePluginEventStatus:(id)status;
+ (id)createLighthousePluginProto:(id)proto;
+ (id)createLighthousePluginProtoData:(id)data;
+ (id)createMLRuntimeProto:(id)proto;
+ (id)createMLRuntimeProtoData:(id)data;
+ (id)createMLRuntimeScheduleStatus:(id)status;
+ (id)createMLRuntimeTaskEvent:(id)event;
+ (id)createTrialIdentifiers:(id)identifiers;
+ (id)createTrialdProto:(id)proto;
+ (id)createTrialdProtoData:(id)data;
+ (id)deserializeLighthousePluginProto:(id)proto;
+ (id)deserializeMLRuntimeProto:(id)proto;
+ (id)deserializeTrialdProto:(id)proto;
@end

@implementation LBFProtoConverter

+ (id)createBitacoraExperimentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
  v8 = objc_msgSend_objectForKey_(identifiersCopy, v5, @"trialTreatmentID", v6, v7);
  objc_msgSend_setTrialTreatmentID_(v4, v9, v8, v10, v11);

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_msgSend_objectForKey_(identifiersCopy, v13, @"trialDeploymentID", v14, v15);
  v20 = objc_msgSend_initWithFormat_(v12, v17, @"%@", v18, v19, v16);
  objc_msgSend_setTrialDeploymentID_(v4, v21, v20, v22, v23);

  v27 = objc_msgSend_objectForKey_(identifiersCopy, v24, @"trialExperimentID", v25, v26);

  objc_msgSend_setTrialExperimentID_(v4, v28, v27, v29, v30);

  return v4;
}

+ (id)createBitacoraBmltIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
  v8 = objc_msgSend_objectForKey_(identifiersCopy, v5, @"trialTaskID", v6, v7);
  objc_msgSend_setTrialTaskID_(v4, v9, v8, v10, v11);

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_msgSend_objectForKey_(identifiersCopy, v13, @"trialDeploymentID", v14, v15);

  v20 = objc_msgSend_initWithFormat_(v12, v17, @"%@", v18, v19, v16);
  objc_msgSend_setTrialDeploymentID_(v4, v21, v20, v22, v23);

  return v4;
}

+ (id)createTrialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
  v11 = objc_msgSend_objectForKey_(identifiersCopy, v5, @"experimentIdentifiers", v6, v7);
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_msgSend_createBitacoraExperimentIdentifiers_(LBFProtoConverter, v12, v11, v13, v14);
      if (v15)
      {
        v19 = v15;
        objc_msgSend_setExperimentIdentifiers_(v4, v16, v15, v17, v18);

        goto LABEL_5;
      }

      if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B5C0();
      }
    }

    else if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B558();
    }

    v29 = 0;
    goto LABEL_21;
  }

LABEL_5:
  v20 = objc_msgSend_objectForKey_(identifiersCopy, v8, @"bmltIdentifiers", v9, v10);
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = objc_msgSend_createBitacoraBmltIdentifiers_(LBFProtoConverter, v21, v20, v22, v23);
      if (v24)
      {
        v28 = v24;
        objc_msgSend_setBmltIdentifiers_(v4, v25, v24, v26, v27);

        goto LABEL_9;
      }

      if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B5C0();
      }
    }

    else if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B628();
    }

    v29 = 0;
    goto LABEL_20;
  }

LABEL_9:
  v29 = v4;
LABEL_20:

LABEL_21:

  return v29;
}

+ (id)createMLRuntimeTaskEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
  v8 = objc_msgSend_valueForKey_(eventCopy, v5, @"succeeded", v6, v7);
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_BOOLValue(v8, v9, v10, v11, v12);
    objc_msgSend_setSucceeded_(v4, v15, v14, v16, v17);
    v24 = objc_msgSend_valueForKey_(eventCopy, v18, @"errorDomain", v19, v20);
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setErrorDomain_(v4, v25, v24, v26, v27);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0B690();
          }

          v28 = 0;
          goto LABEL_15;
        }
      }
    }

    v29 = objc_msgSend_valueForKey_(eventCopy, v21, @"errorCode", v22, v23);
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = objc_msgSend_intValue(v29, v30, v31, v32, v33);
        objc_msgSend_setErrorCode_(v4, v35, v34, v36, v37);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0B6F8();
          }

          v28 = 0;
          goto LABEL_14;
        }
      }
    }

    v28 = v4;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0B760();
  }

  v28 = 0;
LABEL_16:

  return v28;
}

+ (id)createMLRuntimeScheduleStatus:(id)status
{
  statusCopy = status;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOScheduleStatus);
  v8 = objc_msgSend_valueForKey_(statusCopy, v5, @"scheduled", v6, v7);
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_BOOLValue(v8, v9, v10, v11, v12);
    objc_msgSend_setScheduled_(v4, v15, v14, v16, v17);
    v18 = v4;
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B7C8();
    }

    v18 = 0;
  }

  return v18;
}

+ (id)createMLRuntimeProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent);
  v8 = objc_msgSend_objectForKey_(protoCopy, v5, @"trialIdentifiers", v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_msgSend_createTrialIdentifiers_(LBFProtoConverter, v9, v8, v10, v11);
    if (!v15)
    {
      if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
      {
        sub_255F0BA38();
      }

      v72 = 0;
      goto LABEL_38;
    }

    objc_msgSend_setTrialIdentifiers_(v4, v12, v15, v13, v14);
    v19 = objc_msgSend_objectForKey_(protoCopy, v16, @"timestamp", v17, v18);
    objc_msgSend_doubleValue(v19, v20, v21, v22, v23);
    objc_msgSend_setTimestamp_(v4, v24, v25, v26, v27);

    v34 = objc_msgSend_objectForKey_(protoCopy, v28, @"activityScheduled", v29, v30);
    if (v34)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B898();
        }

        v72 = 0;
        goto LABEL_37;
      }

      v38 = objc_msgSend_createMLRuntimeScheduleStatus_(LBFProtoConverter, v35, v34, v36, v37);
      objc_msgSend_setActivityScheduleStatus_(v4, v39, v38, v40, v41);
    }

    v45 = objc_msgSend_objectForKey_(protoCopy, v31, @"taskScheduled", v32, v33);
    if (v45)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B900();
        }

        v72 = 0;
        goto LABEL_36;
      }

      v49 = objc_msgSend_createMLRuntimeTaskEvent_(LBFProtoConverter, v46, v45, v47, v48);
      objc_msgSend_setTaskScheduled_(v4, v50, v49, v51, v52);
    }

    v56 = objc_msgSend_objectForKey_(protoCopy, v42, @"taskFetched", v43, v44);
    if (v56)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B968();
        }

        v72 = 0;
        goto LABEL_35;
      }

      v60 = objc_msgSend_createMLRuntimeTaskEvent_(LBFProtoConverter, v57, v56, v58, v59);
      objc_msgSend_setTaskFetched_(v4, v61, v60, v62, v63);
    }

    v64 = objc_msgSend_objectForKey_(protoCopy, v53, @"taskCompleted", v54, v55);
    if (v64)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0B9D0();
        }

        v72 = 0;
        goto LABEL_34;
      }

      v68 = objc_msgSend_createMLRuntimeTaskEvent_(LBFProtoConverter, v65, v64, v66, v67);
      objc_msgSend_setTaskCompleted_(v4, v69, v68, v70, v71);
    }

    v72 = v4;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0B830();
  }

  v72 = 0;
LABEL_39:

  return v72;
}

+ (id)createMLRuntimeProtoData:(id)data
{
  v6 = objc_msgSend_createMLRuntimeProto_(LBFProtoConverter, a2, data, v3, v4);
  v11 = v6;
  if (data)
  {
    v12 = objc_msgSend_data(v6, v7, v8, v9, v10);
  }

  else
  {
    v13 = LBFLogContextProtoConverter;
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BAA0(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)deserializeMLRuntimeProto:(id)proto
{
  protoCopy = proto;
  v4 = [LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent alloc];
  v8 = objc_msgSend_initWithData_(v4, v5, protoCopy, v6, v7);

  return v8;
}

+ (id)createLighthousePluginEventStatus:(id)status
{
  statusCopy = status;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
  v8 = objc_msgSend_valueForKey_(statusCopy, v5, @"succeeded", v6, v7);
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_BOOLValue(v8, v9, v10, v11, v12);
    objc_msgSend_setSucceeded_(v4, v15, v14, v16, v17);
    v24 = objc_msgSend_valueForKey_(statusCopy, v18, @"errorDomain", v19, v20);
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setErrorDomain_(v4, v25, v24, v26, v27);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0BB10();
          }

          v28 = 0;
          goto LABEL_15;
        }
      }
    }

    v29 = objc_msgSend_valueForKey_(statusCopy, v21, @"errorCode", v22, v23);
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = objc_msgSend_intValue(v29, v30, v31, v32, v33);
        objc_msgSend_setErrorCode_(v4, v35, v34, v36, v37);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
          {
            sub_255F0BB78();
          }

          v28 = 0;
          goto LABEL_14;
        }
      }
    }

    v28 = v4;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0B760();
  }

  v28 = 0;
LABEL_16:

  return v28;
}

+ (id)createLighthousePluginProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent);
  v8 = objc_msgSend_objectForKey_(protoCopy, v5, @"trialIdentifiers", v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_msgSend_createTrialIdentifiers_(LBFProtoConverter, v9, v8, v10, v11);
    if (!v15)
    {
      v61 = 0;
LABEL_29:

      goto LABEL_30;
    }

    objc_msgSend_setTrialIdentifiers_(v4, v12, v15, v13, v14);
    v19 = objc_msgSend_objectForKey_(protoCopy, v16, @"timestamp", v17, v18);
    objc_msgSend_doubleValue(v19, v20, v21, v22, v23);
    objc_msgSend_setTimestamp_(v4, v24, v25, v26, v27);

    v34 = objc_msgSend_objectForKey_(protoCopy, v28, @"performTaskStatus", v29, v30);
    if (v34)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BC48();
        }

        v61 = 0;
        goto LABEL_28;
      }

      v38 = objc_msgSend_createLighthousePluginEventStatus_(LBFProtoConverter, v35, v34, v36, v37);
      objc_msgSend_setPerformTaskStatus_(v4, v39, v38, v40, v41);
    }

    v45 = objc_msgSend_objectForKey_(protoCopy, v31, @"performTrialTaskStatus", v32, v33);
    if (v45)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BCB0();
        }

        v61 = 0;
        goto LABEL_27;
      }

      v49 = objc_msgSend_createLighthousePluginEventStatus_(LBFProtoConverter, v46, v45, v47, v48);
      objc_msgSend_setPerformTrialTaskStatus_(v4, v50, v49, v51, v52);
    }

    v53 = objc_msgSend_objectForKey_(protoCopy, v42, @"stop", v43, v44);
    if (v53)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BD18();
        }

        v61 = 0;
        goto LABEL_26;
      }

      v57 = objc_msgSend_createLighthousePluginEventStatus_(LBFProtoConverter, v54, v53, v55, v56);
      objc_msgSend_setStop_(v4, v58, v57, v59, v60);
    }

    v61 = v4;
LABEL_26:

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BBE0();
  }

  v61 = 0;
LABEL_30:

  return v61;
}

+ (id)createLighthousePluginProtoData:(id)data
{
  v6 = objc_msgSend_createLighthousePluginProto_(LBFProtoConverter, a2, data, v3, v4);
  v11 = v6;
  if (data)
  {
    v12 = objc_msgSend_data(v6, v7, v8, v9, v10);
  }

  else
  {
    v13 = LBFLogContextProtoConverter;
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BAA0(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)deserializeLighthousePluginProto:(id)proto
{
  protoCopy = proto;
  v4 = [LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent alloc];
  v8 = objc_msgSend_initWithData_(v4, v5, protoCopy, v6, v7);

  return v8;
}

+ (id)createTrialdProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent);
  v8 = objc_msgSend_objectForKey_(protoCopy, v5, @"trialIdentifiers", v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_msgSend_createTrialIdentifiers_(LBFProtoConverter, v9, v8, v10, v11);
    if (!v15)
    {
      v48 = 0;
LABEL_31:

      goto LABEL_32;
    }

    objc_msgSend_setTrialIdentifiers_(v4, v12, v15, v13, v14);
    v19 = objc_msgSend_objectForKey_(protoCopy, v16, @"timestamp", v17, v18);
    objc_msgSend_doubleValue(v19, v20, v21, v22, v23);
    objc_msgSend_setTimestamp_(v4, v24, v25, v26, v27);

    v31 = objc_msgSend_objectForKey_(protoCopy, v28, @"eventType", v29, v30);
    if (v31)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BD80();
        }

        v48 = 0;
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(v31, v32, @"allocation", v33, v34))
      {
        objc_msgSend_setEventType_(v4, v35, 1, v36, v37);
      }

      if (objc_msgSend_isEqualToString_(v31, v35, @"activation", v36, v37))
      {
        objc_msgSend_setEventType_(v4, v38, 2, v39, v40);
      }

      if (objc_msgSend_isEqualToString_(v31, v38, @"deactivation", v39, v40))
      {
        objc_msgSend_setEventType_(v4, v41, 3, v43, v44);
      }

      if ((objc_msgSend_hasEventType(v4, v41, v42, v43, v44) & 1) == 0)
      {
        objc_msgSend_setEventType_(v4, v45, 0, v46, v47);
      }
    }

    else if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BDE8();
    }

    v49 = objc_msgSend_objectForKey_(protoCopy, v45, @"eventSucceeded", v46, v47);
    if (v49)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
        {
          sub_255F0BE50();
        }

        v48 = 0;
        goto LABEL_29;
      }

      v54 = objc_msgSend_BOOLValue(v49, v50, v51, v52, v53);
      objc_msgSend_setEventSucceeded_(v4, v55, v54, v56, v57);
    }

    v48 = v4;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BBE0();
  }

  v48 = 0;
LABEL_32:

  return v48;
}

+ (id)createTrialdProtoData:(id)data
{
  v6 = objc_msgSend_createTrialdProto_(LBFProtoConverter, a2, data, v3, v4);
  v11 = v6;
  if (data)
  {
    v12 = objc_msgSend_data(v6, v7, v8, v9, v10);
  }

  else
  {
    v13 = LBFLogContextProtoConverter;
    if (os_log_type_enabled(LBFLogContextProtoConverter, OS_LOG_TYPE_ERROR))
    {
      sub_255F0BAA0(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)deserializeTrialdProto:(id)proto
{
  protoCopy = proto;
  v4 = [LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent alloc];
  v8 = objc_msgSend_initWithData_(v4, v5, protoCopy, v6, v7);

  return v8;
}

@end