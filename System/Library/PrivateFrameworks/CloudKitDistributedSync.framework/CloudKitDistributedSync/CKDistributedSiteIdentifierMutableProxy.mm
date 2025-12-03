@interface CKDistributedSiteIdentifierMutableProxy
- (void)copyFromReadProxy:(id)proxy;
- (void)copyFromSiteIdentifier:(id)identifier;
- (void)setIdentifier:(id)identifier;
- (void)setIdentifierBytes:(void *)bytes length:(unint64_t)length;
- (void)setModifier:(id)modifier;
- (void)setModifierBytes:(void *)bytes length:(unint64_t)length;
@end

@implementation CKDistributedSiteIdentifierMutableProxy

- (void)copyFromReadProxy:(id)proxy
{
  proxyCopy = proxy;
  v11 = objc_msgSend_backingStore(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v18 = proxyCopy;
    if (v18)
    {
      v19 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
      v26 = objc_msgSend_binding(v11, v20, v21, v22, v23, v24, v25);
      v27 = objc_opt_class();
      v33 = objc_msgSend_structTokenForClass_(v26, v28, v27, v29, v30, v31, v32);
      v39 = objc_msgSend_proxyClassForStructToken_(v19, v34, v33, v35, v36, v37, v38);

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v64 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v40, v41, v42, v43, v44, v45);
        v65 = NSStringFromClass(v39);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v64, v66, a2, self, @"CKAtomSerialization.mm", 714, @"Proxy needs to be of type %@", v65);
      }

      v46 = objc_msgSend_identifier(v18, v40, v41, v42, v43, v44, v45);
      objc_msgSend_setIdentifier_(self, v47, v46, v48, v49, v50, v51);

      v58 = objc_msgSend_modifier(v18, v52, v53, v54, v55, v56, v57);
      objc_msgSend_setModifier_(self, v59, v58, v60, v61, v62, v63);
    }
  }
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v28 = 0;
  v6 = identifierCopy;
  v13 = objc_msgSend_bytes(v6, v7, v8, v9, v10, v11, v12);
  v20 = v13;
  if (identifierCopy && !v13)
  {
    if (objc_msgSend_length(identifierCopy, v14, v15, v16, v17, v18, v19))
    {
      v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKAtomSerialization.mm", 724, @"Non-zero-length NSData has empty bytes");
    }

    v20 = &v28;
  }

  v21 = objc_msgSend_length(identifierCopy, v14, v15, v16, v17, v18, v19);
  objc_msgSend_setIdentifierBytes_length_(self, v22, v20, v21, v23, v24, v25);
}

- (void)setIdentifierBytes:(void *)bytes length:(unint64_t)length
{
  v10 = objc_msgSend_backingStore(self, a2, bytes, length, v4, v5, v6);
  v17 = v10;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_binding(v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[2], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, bytes, length, v33, v31, v32);
  }
}

- (void)setModifier:(id)modifier
{
  modifierCopy = modifier;
  v28 = 0;
  v6 = modifierCopy;
  v13 = objc_msgSend_bytes(v6, v7, v8, v9, v10, v11, v12);
  v20 = v13;
  if (modifierCopy && !v13)
  {
    if (objc_msgSend_length(modifierCopy, v14, v15, v16, v17, v18, v19))
    {
      v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKAtomSerialization.mm", 744, @"Non-zero-length NSData has empty bytes");
    }

    v20 = &v28;
  }

  v21 = objc_msgSend_length(modifierCopy, v14, v15, v16, v17, v18, v19);
  objc_msgSend_setModifierBytes_length_(self, v22, v20, v21, v23, v24, v25);
}

- (void)setModifierBytes:(void *)bytes length:(unint64_t)length
{
  v10 = objc_msgSend_backingStore(self, a2, bytes, length, v4, v5, v6);
  v17 = v10;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_binding(v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[3], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, bytes, length, v33, v31, v32);
  }
}

- (void)copyFromSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = objc_msgSend_identifier(identifierCopy, v4, v5, v6, v7, v8, v9);
  objc_msgSend_setIdentifier_(self, v11, v10, v12, v13, v14, v15);

  v22 = objc_msgSend_modifier(identifierCopy, v16, v17, v18, v19, v20, v21);
  objc_msgSend_setModifier_(self, v23, v22, v24, v25, v26, v27);
}

@end