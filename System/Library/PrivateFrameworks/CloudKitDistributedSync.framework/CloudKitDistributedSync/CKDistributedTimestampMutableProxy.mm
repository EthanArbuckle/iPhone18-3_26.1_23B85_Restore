@interface CKDistributedTimestampMutableProxy
- (id)distributedSiteIdentifier;
- (void)assignDistributedSiteIdentifierFromProxy:(id)proxy;
- (void)copyFromReadProxy:(id)proxy;
- (void)copyFromTimestamp:(id)timestamp;
- (void)setClock:(unint64_t)clock;
- (void)setSiteIdentifier:(id)identifier;
- (void)setSiteIdentifierBytes:(void *)bytes length:(unint64_t)length;
@end

@implementation CKDistributedTimestampMutableProxy

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
        v108 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v40, v41, v42, v43, v44, v45);
        v109 = NSStringFromClass(v39);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v108, v110, a2, self, @"CKAtomSerialization.mm", 773, @"Proxy needs to be of type %@", v109);
      }

      v46 = objc_msgSend_distributedSiteIdentifier(v18, v40, v41, v42, v43, v44, v45);

      if (v46)
      {
        v53 = objc_msgSend_distributedSiteIdentifier(self, v47, v48, v49, v50, v51, v52);
        v60 = objc_msgSend_distributedSiteIdentifier(v18, v54, v55, v56, v57, v58, v59);
        objc_msgSend_copyFromReadProxy_(v53, v61, v60, v62, v63, v64, v65);
      }

      v66 = objc_msgSend_siteIdentifier(v18, v47, v48, v49, v50, v51, v52);
      objc_msgSend_setSiteIdentifier_(self, v67, v66, v68, v69, v70, v71);

      v78 = objc_msgSend_clock(v18, v72, v73, v74, v75, v76, v77);
      objc_msgSend_setClock_(self, v79, v78, v80, v81, v82, v83);
      v90 = objc_msgSend_modifier(v18, v84, v85, v86, v87, v88, v89);
      objc_msgSend_setModifier_(self, v91, v90, v92, v93, v94, v95);
      v102 = objc_msgSend_unordered(v18, v96, v97, v98, v99, v100, v101);
      objc_msgSend_setUnordered_(self, v103, v102, v104, v105, v106, v107);
    }
  }
}

- (id)distributedSiteIdentifier
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[5], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)assignDistributedSiteIdentifierFromProxy:(id)proxy
{
  proxyCopy = proxy;
  v11 = objc_msgSend_backingStore(self, v5, v6, v7, v8, v9, v10);
  v17 = v11;
  if (v11)
  {
    v24 = objc_msgSend_writerForProxy_(v11, v12, self, v13, v14, v15, v16);
    if (proxyCopy)
    {
      objc_msgSend_structInstance(proxyCopy, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      memset(v37, 0, sizeof(v37));
    }

    v25 = objc_msgSend_binding(v17, v18, v19, v20, v21, v22, v23);
    v26 = v25[5];
    objc_msgSend_structInstance(self, v27, v28, v29, v30, v31, v32);
    objc_msgSend_assignStruct_toReference_inStruct_(v24, v33, v37, v26, &v36, v34, v35);
  }
}

- (void)setSiteIdentifier:(id)identifier
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
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKAtomSerialization.mm", 806, @"Non-zero-length NSData has empty bytes");
    }

    v20 = &v28;
  }

  v21 = objc_msgSend_length(identifierCopy, v14, v15, v16, v17, v18, v19);
  objc_msgSend_setSiteIdentifierBytes_length_(self, v22, v20, v21, v23, v24, v25);
}

- (void)setSiteIdentifierBytes:(void *)bytes length:(unint64_t)length
{
  v10 = objc_msgSend_backingStore(self, a2, bytes, length, v4, v5, v6);
  v17 = v10;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_binding(v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[17], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, bytes, length, v33, v31, v32);
  }
}

- (void)setClock:(unint64_t)clock
{
  v9 = objc_msgSend_backingStore(self, a2, clock, v3, v4, v5, v6);
  v15 = v9;
  if (v9)
  {
    clockCopy = clock;
    v16 = objc_msgSend_writerForProxy_(v9, v10, self, v11, v12, v13, v14);
    v23 = objc_msgSend_binding(v15, v17, v18, v19, v20, v21, v22);
    v24 = v23[6];
    objc_msgSend_structInstance(self, v25, v26, v27, v28, v29, v30);
    objc_msgSend_setData_withEncoding_forField_inStruct_(v16, v31, &clockCopy, "Q", v24, &v33, v32);
  }
}

- (void)copyFromTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v10 = objc_msgSend_distributedSiteIdentifier(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_siteIdentifierObject(timestampCopy, v11, v12, v13, v14, v15, v16);
  objc_msgSend_copyFromSiteIdentifier_(v10, v18, v17, v19, v20, v21, v22);

  v29 = objc_msgSend_siteIdentifierObject(timestampCopy, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_identifier(v29, v30, v31, v32, v33, v34, v35);
  objc_msgSend_setSiteIdentifier_(self, v37, v36, v38, v39, v40, v41);

  v48 = objc_msgSend_clockValue(timestampCopy, v42, v43, v44, v45, v46, v47);
  objc_msgSend_setClock_(self, v49, v48, v50, v51, v52, v53);
}

@end