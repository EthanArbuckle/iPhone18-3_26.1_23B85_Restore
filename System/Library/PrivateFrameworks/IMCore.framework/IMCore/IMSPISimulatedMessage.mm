@interface IMSPISimulatedMessage
+ (id)_dateFormatter;
- (IMSPISimulatedMessage)init;
- (IMSPISimulatedMessage)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)_calculateGUID;
- (id)_calculateSender;
- (id)_calculateServiceName;
- (id)_calculateTimestamp;
- (id)_createItem;
- (id)_createSimulatedMessage;
- (id)debugDescription;
@end

@implementation IMSPISimulatedMessage

- (id)_calculateSender
{
  if (objc_msgSend_fromMe(self, a2, v2))
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_msgSend_sender(self, v4, v5);

    if (v7)
    {
      v6 = objc_msgSend_sender(self, v8, v9);
    }

    else
    {
      v10 = objc_msgSend_handles(self, v8, v9);
      v6 = objc_msgSend_firstObject(v10, v11, v12);
    }
  }

  return v6;
}

- (id)_calculateServiceName
{
  v3 = objc_msgSend_serviceName(self, a2, v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69A7AE0];
  }

  v6 = v5;

  return v5;
}

- (id)_calculateTimestamp
{
  v3 = objc_msgSend_date(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = objc_msgSend_now(MEMORY[0x1E695DF00], v4, v5);
  }

  v8 = v7;

  return v8;
}

- (id)_calculateGUID
{
  v3 = objc_msgSend_guid(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v4, v5);
  }

  v8 = v7;

  return v8;
}

- (id)_createItem
{
  v4 = objc_msgSend__calculateSender(self, a2, v2);
  v7 = objc_msgSend__calculateTimestamp(self, v5, v6);
  v8 = objc_alloc(MEMORY[0x1E69A8138]);
  v11 = objc_msgSend__calculateGUID(self, v9, v10);
  v13 = objc_msgSend_initWithSender_time_guid_type_(v8, v12, v4, v7, v11, 0);

  v16 = objc_msgSend__calculateServiceName(self, v14, v15);
  objc_msgSend_setService_(v13, v17, v16);

  v20 = objc_msgSend_flags(self, v18, v19);
  objc_msgSend_setFlags_(v13, v21, v20);
  if (objc_msgSend_fromMe(self, v22, v23))
  {
    v26 = objc_msgSend_flags(v13, v24, v25);
    objc_msgSend_setFlags_(v13, v27, v26 | 4);
    v30 = objc_msgSend_flags(v13, v28, v29);
    objc_msgSend_setFlags_(v13, v31, v30 | 0x8000);
  }

  v32 = objc_msgSend_accountID(self, v24, v25);
  objc_msgSend_setAccountID_(v13, v33, v32);

  if (!objc_msgSend_flags(self, v34, v35))
  {
    v38 = objc_msgSend_flags(v13, v36, v37);
    objc_msgSend_setFlags_(v13, v39, v38 | 1);
    v42 = objc_msgSend_flags(v13, v40, v41);
    objc_msgSend_setFlags_(v13, v43, v42 & 0xFFFFFFFFFFFFFFF7);
  }

  v44 = objc_alloc(MEMORY[0x1E69A82F8]);
  v46 = objc_msgSend_initWithContent_(v44, v45, &stru_1F1B76F98);
  v49 = objc_msgSend_text(self, v47, v48);
  objc_msgSend_appendString_(v46, v50, v49);

  v53 = objc_msgSend_body(v46, v51, v52);
  objc_msgSend_setBody_(v13, v54, v53);

  v57 = objc_msgSend_body(v46, v55, v56);
  v60 = objc_msgSend_string(v57, v58, v59);
  objc_msgSend_setPlainBody_(v13, v61, v60);

  v64 = objc_msgSend_lastAddressedHandle(self, v62, v63);
  objc_msgSend_setDestinationCallerID_(v13, v65, v64);

  v68 = objc_msgSend_effectID(self, v66, v67);
  objc_msgSend_setExpressiveSendStyleID_(v13, v69, v68);

  v72 = objc_msgSend_bundleID(self, v70, v71);
  objc_msgSend_setBalloonBundleID_(v13, v73, v72);

  v76 = objc_msgSend_payloadData(self, v74, v75);
  objc_msgSend_setPayloadData_(v13, v77, v76);

  v80 = objc_msgSend_threadIdentifier(self, v78, v79);
  objc_msgSend_setThreadIdentifier_(v13, v81, v80);

  return v13;
}

- (id)_createSimulatedMessage
{
  v3 = objc_alloc_init(MEMORY[0x1E69A8290]);
  v6 = objc_msgSend__createItem(self, v4, v5);
  objc_msgSend_setItem_(v3, v7, v6);

  v10 = objc_msgSend_groupID(self, v8, v9);
  objc_msgSend_setGroupID_(v3, v11, v10);

  v14 = objc_msgSend_chatGUID(self, v12, v13);
  objc_msgSend_setChatGUID_(v3, v15, v14);

  v18 = objc_msgSend_handles(self, v16, v17);
  v20 = objc_msgSend_arrayByApplyingSelector_(v18, v19, sel_lowercaseString);
  objc_msgSend_setHandles_(v3, v21, v20);

  v24 = objc_msgSend_lastAddressedHandle(self, v22, v23);
  objc_msgSend_setLastAddressedHandle_(v3, v25, v24);

  return v3;
}

- (IMSPISimulatedMessage)init
{
  v3.receiver = self;
  v3.super_class = IMSPISimulatedMessage;
  return [(IMSPISimulatedMessage *)&v3 init];
}

+ (id)_dateFormatter
{
  if (qword_1EB2EA258 != -1)
  {
    sub_1A84E0108();
  }

  v3 = qword_1EB2EA250;

  return v3;
}

- (IMSPISimulatedMessage)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_init(self, v5, v6);
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v4, v7, @"guid");
    objc_msgSend_setGuid_(v8, v10, v9);

    v12 = objc_msgSend_objectForKeyedSubscript_(v4, v11, @"text");
    objc_msgSend_setText_(v8, v13, v12);

    v15 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"sender");
    objc_msgSend_setSender_(v8, v16, v15);

    v18 = objc_msgSend_objectForKeyedSubscript_(v4, v17, @"serviceName");
    objc_msgSend_setServiceName_(v8, v19, v18);

    v21 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"accountID");
    objc_msgSend_setAccountID_(v8, v22, v21);

    v24 = objc_msgSend_objectForKeyedSubscript_(v4, v23, @"fromMe");
    v27 = objc_msgSend_BOOLValue(v24, v25, v26);
    objc_msgSend_setFromMe_(v8, v28, v27);

    v30 = objc_msgSend_objectForKeyedSubscript_(v4, v29, @"chatGUID");
    objc_msgSend_setChatGUID_(v8, v31, v30);

    v33 = objc_msgSend_objectForKeyedSubscript_(v4, v32, @"groupID");
    objc_msgSend_setGroupID_(v8, v34, v33);

    v36 = objc_msgSend_objectForKeyedSubscript_(v4, v35, @"handles");
    objc_msgSend_setHandles_(v8, v37, v36);

    v39 = objc_msgSend_objectForKeyedSubscript_(v4, v38, @"lastAddressedHandle");
    objc_msgSend_setLastAddressedHandle_(v8, v40, v39);

    v42 = objc_msgSend_objectForKeyedSubscript_(v4, v41, @"flags");
    v45 = objc_msgSend_unsignedIntValue(v42, v43, v44);
    objc_msgSend_setFlags_(v8, v46, v45);

    v50 = objc_msgSend_objectForKeyedSubscript_(v4, v47, @"date");
    if (v50)
    {
      v51 = objc_msgSend__dateFormatter(IMSPISimulatedMessage, v48, v49);
      v53 = objc_msgSend_dateFromString_(v51, v52, v50);
      objc_msgSend_setDate_(v8, v54, v53);
    }

    v55 = objc_msgSend_objectForKeyedSubscript_(v4, v48, @"effectID");
    objc_msgSend_setEffectID_(v8, v56, v55);

    v58 = objc_msgSend_objectForKeyedSubscript_(v4, v57, @"bundleID");
    objc_msgSend_setBundleID_(v8, v59, v58);

    v61 = objc_msgSend_objectForKeyedSubscript_(v4, v60, @"payloadData");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = objc_alloc(MEMORY[0x1E695DEF0]);
      v64 = objc_msgSend_initWithBase64EncodedString_options_(v62, v63, v61, 1);
      objc_msgSend_setPayloadData_(v8, v65, v64);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setPayloadData_(v8, v66, v61);
      }
    }

    v67 = objc_msgSend_objectForKeyedSubscript_(v4, v66, @"threadIdentifier");
    objc_msgSend_setThreadIdentifier_(v8, v68, v67);
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_guid(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_guid(self, v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v10, v9, @"guid");
  }

  v11 = objc_msgSend_text(self, v7, v8);

  if (v11)
  {
    v14 = objc_msgSend_text(self, v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v14, @"text");
  }

  v16 = objc_msgSend_sender(self, v12, v13);

  if (v16)
  {
    v19 = objc_msgSend_sender(self, v17, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v20, v19, @"sender");
  }

  v21 = objc_msgSend_serviceName(self, v17, v18);

  if (v21)
  {
    v24 = objc_msgSend_serviceName(self, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, v24, @"serviceName");
  }

  v26 = objc_msgSend_accountID(self, v22, v23);

  if (v26)
  {
    v29 = objc_msgSend_accountID(self, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v30, v29, @"accountID");
  }

  v31 = MEMORY[0x1E696AD98];
  v32 = objc_msgSend_fromMe(self, v27, v28);
  v34 = objc_msgSend_numberWithBool_(v31, v33, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v35, v34, @"fromMe");

  v38 = objc_msgSend_chatGUID(self, v36, v37);

  if (v38)
  {
    v41 = objc_msgSend_chatGUID(self, v39, v40);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v42, v41, @"chatGUID");
  }

  v43 = objc_msgSend_groupID(self, v39, v40);

  if (v43)
  {
    v46 = objc_msgSend_groupID(self, v44, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v47, v46, @"groupID");
  }

  v48 = objc_msgSend_handles(self, v44, v45);

  if (v48)
  {
    v51 = objc_msgSend_handles(self, v49, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v52, v51, @"handles");
  }

  v53 = objc_msgSend_lastAddressedHandle(self, v49, v50);

  if (v53)
  {
    v56 = objc_msgSend_lastAddressedHandle(self, v54, v55);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v57, v56, @"lastAddressedHandle");
  }

  v58 = objc_msgSend_date(self, v54, v55);

  if (v58)
  {
    v61 = objc_msgSend__dateFormatter(IMSPISimulatedMessage, v59, v60);
    v64 = objc_msgSend_date(self, v62, v63);
    v66 = objc_msgSend_stringFromDate_(v61, v65, v64);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v67, v66, @"date");
  }

  v68 = objc_msgSend_effectID(self, v59, v60);

  if (v68)
  {
    v71 = objc_msgSend_effectID(self, v69, v70);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v72, v71, @"effectID");
  }

  if (objc_msgSend_flags(self, v69, v70))
  {
    v75 = MEMORY[0x1E696AD98];
    v76 = objc_msgSend_flags(self, v73, v74);
    v78 = objc_msgSend_numberWithUnsignedLongLong_(v75, v77, v76);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v79, v78, @"flags");
  }

  v80 = objc_msgSend_bundleID(self, v73, v74);

  if (v80)
  {
    v83 = objc_msgSend_bundleID(self, v81, v82);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v84, v83, @"bundleID");
  }

  v85 = objc_msgSend_payloadData(self, v81, v82);

  if (v85)
  {
    v88 = objc_msgSend_payloadData(self, v86, v87);
    v90 = objc_msgSend_base64EncodedStringWithOptions_(v88, v89, 0);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v91, v90, @"payloadData");
  }

  v92 = objc_msgSend_threadIdentifier(self, v86, v87);

  if (v92)
  {
    v95 = objc_msgSend_threadIdentifier(self, v93, v94);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v96, v95, @"threadIdentifier");
  }

  v97 = objc_msgSend_copy(v3, v93, v94);

  return v97;
}

- (id)debugDescription
{
  v52 = MEMORY[0x1E696AEC0];
  v51 = objc_msgSend_text(self, a2, v2);
  v56 = objc_msgSend_sender(self, v4, v5);
  v55 = objc_msgSend_serviceName(self, v6, v7);
  v54 = objc_msgSend_accountID(self, v8, v9);
  v12 = objc_msgSend_fromMe(self, v10, v11);
  v15 = @"YES";
  if (!v12)
  {
    v15 = @"NO";
  }

  v50 = v15;
  v49 = objc_msgSend_chatGUID(self, v13, v14);
  v18 = objc_msgSend_groupID(self, v16, v17);
  v21 = objc_msgSend_handles(self, v19, v20);
  v24 = objc_msgSend_lastAddressedHandle(self, v22, v23);
  v27 = objc_msgSend_lastAddressedHandle(self, v25, v26);
  v30 = objc_msgSend_date(self, v28, v29);
  v33 = objc_msgSend_effectID(self, v31, v32);
  v36 = objc_msgSend_flags(self, v34, v35);
  v39 = objc_msgSend_bundleID(self, v37, v38);
  v42 = objc_msgSend_payloadData(self, v40, v41);
  v45 = objc_msgSend_length(v42, v43, v44);
  v47 = @"YES";
  if (!v45)
  {
    v47 = @"NO";
  }

  v53 = objc_msgSend_stringWithFormat_(v52, v46, @"<IMSPISimulatedMessage %p text: %@ sender: %@ service: %@ account: %@ fromMe: %@ chatGUID: %@ groupID: %@ handles: %@ lastAddressedHandle: %@ date: %@ effectID: %@ flags: %llu bundleID: %@ hasPayloadData: %@>", v51, v56, v55, v54, v50, v49, v18, v21, v24, v27, v30, v33, v36, v39, v47);

  return v53;
}

@end