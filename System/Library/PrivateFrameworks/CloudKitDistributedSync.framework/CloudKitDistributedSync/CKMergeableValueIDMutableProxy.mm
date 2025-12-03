@interface CKMergeableValueIDMutableProxy
- (void)copyFromMergeableValueID:(id)d;
- (void)copyFromReadProxy:(id)proxy;
- (void)setIdentifier:(id)identifier;
- (void)setIdentifierBytes:(void *)bytes length:(unint64_t)length;
- (void)setZoneName:(id)name;
- (void)setZoneNameBytes:(void *)bytes length:(unint64_t)length;
- (void)setZoneOwnerName:(id)name;
- (void)setZoneOwnerNameBytes:(void *)bytes length:(unint64_t)length;
@end

@implementation CKMergeableValueIDMutableProxy

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
        v76 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v40, v41, v42, v43, v44, v45);
        v77 = NSStringFromClass(v39);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v78, a2, self, @"CKAtomSerialization.mm", 864, @"Proxy needs to be of type %@", v77);
      }

      v46 = objc_msgSend_identifier(v18, v40, v41, v42, v43, v44, v45);
      objc_msgSend_setIdentifier_(self, v47, v46, v48, v49, v50, v51);

      v58 = objc_msgSend_zoneName(v18, v52, v53, v54, v55, v56, v57);
      objc_msgSend_setZoneName_(self, v59, v58, v60, v61, v62, v63);

      v70 = objc_msgSend_zoneOwnerName(v18, v64, v65, v66, v67, v68, v69);
      objc_msgSend_setZoneOwnerName_(self, v71, v70, v72, v73, v74, v75);
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
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKAtomSerialization.mm", 875, @"Non-zero-length NSData has empty bytes");
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
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[21], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, bytes, length, v33, v31, v32);
  }
}

- (void)setZoneName:(id)name
{
  nameCopy = name;
  v22 = nameCopy;
  if (nameCopy)
  {
    v9 = nameCopy;
    v16 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13, v14, v15);
    v17 = strlen(v16);
    objc_msgSend_setZoneNameBytes_length_(self, v18, v16, v17, v19, v20, v21);
  }

  else
  {
    objc_msgSend_setZoneNameBytes_length_(self, v5, 0, 0, v6, v7, v8);
  }
}

- (void)setZoneNameBytes:(void *)bytes length:(unint64_t)length
{
  v10 = objc_msgSend_backingStore(self, a2, bytes, length, v4, v5, v6);
  v17 = v10;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_binding(v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[22], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, bytes, length, v33, v31, v32);
  }
}

- (void)setZoneOwnerName:(id)name
{
  nameCopy = name;
  v22 = nameCopy;
  if (nameCopy)
  {
    v9 = nameCopy;
    v16 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13, v14, v15);
    v17 = strlen(v16);
    objc_msgSend_setZoneOwnerNameBytes_length_(self, v18, v16, v17, v19, v20, v21);
  }

  else
  {
    objc_msgSend_setZoneOwnerNameBytes_length_(self, v5, 0, 0, v6, v7, v8);
  }
}

- (void)setZoneOwnerNameBytes:(void *)bytes length:(unint64_t)length
{
  v10 = objc_msgSend_backingStore(self, a2, bytes, length, v4, v5, v6);
  v17 = v10;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_binding(v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[23], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, bytes, length, v33, v31, v32);
  }
}

- (void)copyFromMergeableValueID:(id)d
{
  dCopy = d;
  v10 = objc_msgSend_identifier(dCopy, v4, v5, v6, v7, v8, v9);
  objc_msgSend_setIdentifier_(self, v11, v10, v12, v13, v14, v15);

  v22 = objc_msgSend_zoneName(dCopy, v16, v17, v18, v19, v20, v21);
  objc_msgSend_setZoneName_(self, v23, v22, v24, v25, v26, v27);

  v34 = objc_msgSend_zoneOwner(dCopy, v28, v29, v30, v31, v32, v33);
  objc_msgSend_setZoneOwnerName_(self, v35, v34, v36, v37, v38, v39);
}

@end