@interface CKDLongLivedOperationPersistedCallback
- (CKDLongLivedOperationPersistedCallback)initWithCoder:(id)a3;
- (CKDLongLivedOperationPersistedCallback)initWithProtocol:(id)a3 invocation:(id)a4 isCompletionCallback:(BOOL)a5;
- (void)_validateInvocation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDLongLivedOperationPersistedCallback

- (void)_validateInvocation
{
  v5 = objc_msgSend_protocol(self, a2, v2);
  v6 = NSStringFromProtocol(v5);

  v9 = objc_msgSend_invocation(self, v7, v8);
  v12 = objc_msgSend_selector(v9, v10, v11);
  v13 = NSStringFromSelector(v12);

  v16 = objc_msgSend_protocol(self, v14, v15);
  v19 = objc_msgSend_invocation(self, v17, v18);
  objc_msgSend_selector(v19, v20, v21);
  v22 = CKExtendedMethodSignatureForProtocolSelector();

  if (!v22)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v23, v24);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKDLongLivedOperationPersistedCallback.m", 40, @"Selector %@ not part of expected protocol %@", v6, v13);
  }

  v25 = objc_msgSend_invocation(self, v23, v24);
  v28 = objc_msgSend_methodSignature(v25, v26, v27);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225263C90;
  aBlock[3] = &unk_27854B490;
  aBlock[4] = self;
  v51 = a2;
  v29 = v6;
  v49 = v29;
  v30 = v13;
  v50 = v30;
  v31 = _Block_copy(aBlock);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_225263D30;
  v44[3] = &unk_27854B490;
  v44[4] = self;
  v45 = v29;
  v46 = v30;
  v47 = a2;
  v32 = v30;
  v33 = v29;
  v34 = _Block_copy(v44);
  v37 = objc_msgSend_invocation(self, v35, v36);
  v40 = objc_msgSend_numberOfArguments(v28, v38, v39);
  objc_msgSend_CKIterateArgumentsForIndexRange_primitiveTypeBlock_objectBlock_blockBlock_(v37, v41, 2, v40 - 2, 0, v34, v31);
}

- (CKDLongLivedOperationPersistedCallback)initWithProtocol:(id)a3 invocation:(id)a4 isCompletionCallback:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = CKDLongLivedOperationPersistedCallback;
  v11 = [(CKDLongLivedOperationPersistedCallback *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_protocol, a3);
    objc_storeStrong(&v12->_invocation, a4);
    v12->_isCompletionCallback = a5;
    objc_msgSend__validateInvocation(v12, v13, v14);
  }

  return v12;
}

- (CKDLongLivedOperationPersistedCallback)initWithCoder:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56.receiver = self;
  v56.super_class = CKDLongLivedOperationPersistedCallback;
  v5 = [(CKDLongLivedOperationPersistedCallback *)&v56 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  context = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"ProtocolNamme");
  v9 = NSProtocolFromString(v8);
  if (!v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v58 = v8;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Unknown protocol name %{public}@ in operation info, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_22;
  }

  objc_storeStrong(&v5->_protocol, v9);
  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"SelectorName");
  v13 = NSSelectorFromString(v12);
  MethodDescription = protocol_getMethodDescription(v9, v13, 1, 1);
  if (!MethodDescription.name)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v58 = v12;
      v59 = 2112;
      v60 = v9;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Unknown selector name %{public}@ not found on protocol %@, ignoring", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_22;
  }

  v5->_isCompletionCallback = objc_msgSend_decodeBoolForKey_(v4, MethodDescription.types, @"isCompletionCallback");
  v15 = objc_opt_class();
  v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"ArgumentTypes");
  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, MethodDescription.types);
  if ((objc_msgSend_isEqualToString_(v44, v18, v45) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v58 = v44;
      v59 = 2114;
      v60 = v45;
      v61 = 2114;
      v62 = v8;
      v63 = 2114;
      v64 = v12;
      _os_log_error_impl(&dword_22506F000, v39, OS_LOG_TYPE_ERROR, "Unexpected live argument types %{public}@ vs. archived argument types %{public}@ on [%{public}@ %{public}@], ignoring", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
LABEL_22:
    v36 = 0;
    goto LABEL_23;
  }

  v43 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], v19, MethodDescription.types);
  v21 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x277CBEAE8], v20, v43);
  objc_msgSend_retainArguments(v21, v22, v23);
  objc_msgSend_setSelector_(v21, v24, v13);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22526457C;
  aBlock[3] = &unk_27854B4B8;
  v25 = v4;
  v54 = v25;
  v26 = v21;
  v55 = v26;
  v42 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2252645FC;
  v50[3] = &unk_27854B4E0;
  v27 = v25;
  v51 = v27;
  v28 = v26;
  v52 = v28;
  v29 = _Block_copy(v50);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_2252646C4;
  v47[3] = &unk_27854B4E0;
  v48 = v27;
  v30 = v28;
  v49 = v30;
  v31 = _Block_copy(v47);
  v34 = objc_msgSend_numberOfArguments(v43, v32, v33);
  objc_msgSend_CKIterateArgumentsForIndexRange_primitiveTypeBlock_objectBlock_blockBlock_(v30, v35, 2, v34 - 2, v42, v29, v31);
  objc_storeStrong(&v5->_invocation, v21);

  objc_autoreleasePoolPop(context);
LABEL_6:
  v36 = v5;
LABEL_23:

  v40 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_protocol(self, v6, v7);
  Name = protocol_getName(v8);

  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, Name);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"ProtocolNamme");

  v15 = objc_msgSend_invocation(self, v13, v14);
  v18 = objc_msgSend_selector(v15, v16, v17);

  v19 = sel_getName(v18);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v19);
  objc_msgSend_encodeObject_forKey_(v4, v22, v21, @"SelectorName");

  objc_msgSend_encodeBool_forKey_(v4, v23, self->_isCompletionCallback, @"isCompletionCallback");
  v26 = objc_msgSend_protocol(self, v24, v25);
  types = protocol_getMethodDescription(v26, v18, 1, 1).types;

  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, types);
  objc_msgSend_encodeObject_forKey_(v4, v30, v29, @"ArgumentTypes");
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225264A74;
  aBlock[3] = &unk_27854B4B8;
  aBlock[4] = self;
  v31 = v4;
  v59 = v31;
  v32 = _Block_copy(aBlock);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_225264B60;
  v56[3] = &unk_27854B4E0;
  v56[4] = self;
  v33 = v31;
  v57 = v33;
  v34 = _Block_copy(v56);
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = sub_225264C14;
  v53 = &unk_27854B4E0;
  v54 = self;
  v35 = v33;
  v55 = v35;
  v36 = _Block_copy(&v50);
  v39 = objc_msgSend_invocation(self, v37, v38, v50, v51, v52, v53, v54);
  v42 = objc_msgSend_invocation(self, v40, v41);
  v45 = objc_msgSend_methodSignature(v42, v43, v44);
  v48 = objc_msgSend_numberOfArguments(v45, v46, v47);
  objc_msgSend_CKIterateArgumentsForIndexRange_primitiveTypeBlock_objectBlock_blockBlock_(v39, v49, 2, v48 - 2, v32, v34, v36);

  objc_autoreleasePoolPop(v5);
}

@end