@interface CKAtomMutableProxy
- (id)location;
- (id)references;
- (id)timestamp;
- (void)assignTimestampFromProxy:(id)a3;
- (void)copyFromReadProxy:(id)a3;
- (void)setAtomType:(unint64_t)a3;
- (void)setValue:(id)a3;
- (void)setValueBytes:(void *)a3 length:(unint64_t)a4;
- (void)setVersion:(unint64_t)a3;
@end

@implementation CKAtomMutableProxy

- (void)copyFromReadProxy:(id)a3
{
  v5 = a3;
  v12 = objc_msgSend_backingStore(self, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    v19 = v5;
    if (v19)
    {
      v20 = objc_msgSend_binding(v12, v13, v14, v15, v16, v17, v18);
      v27 = objc_msgSend_binding(v12, v21, v22, v23, v24, v25, v26);
      v28 = objc_opt_class();
      v34 = objc_msgSend_structTokenForClass_(v27, v29, v28, v30, v31, v32, v33);
      v40 = objc_msgSend_proxyClassForStructToken_(v20, v35, v34, v36, v37, v38, v39);

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v141 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v41, v42, v43, v44, v45, v46);
        v142 = NSStringFromClass(v40);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v141, v143, a2, self, @"CKAtomSerialization.mm", 1011, @"Proxy needs to be of type %@", v142);
      }

      v47 = objc_msgSend_version(v19, v41, v42, v43, v44, v45, v46);
      objc_msgSend_setVersion_(self, v48, v47, v49, v50, v51, v52);
      v59 = objc_msgSend_location(v19, v53, v54, v55, v56, v57, v58);

      if (v59)
      {
        v66 = objc_msgSend_location(self, v60, v61, v62, v63, v64, v65);
        v73 = objc_msgSend_location(v19, v67, v68, v69, v70, v71, v72);
        objc_msgSend_copyFromReadProxy_(v66, v74, v73, v75, v76, v77, v78);
      }

      v79 = objc_msgSend_timestamp(v19, v60, v61, v62, v63, v64, v65);

      if (v79)
      {
        v86 = objc_msgSend_timestamp(self, v80, v81, v82, v83, v84, v85);
        v93 = objc_msgSend_timestamp(v19, v87, v88, v89, v90, v91, v92);
        objc_msgSend_copyFromReadProxy_(v86, v94, v93, v95, v96, v97, v98);
      }

      v99 = objc_msgSend_references(v19, v80, v81, v82, v83, v84, v85);
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = sub_24397440C;
      v144[3] = &unk_278DDB170;
      v144[4] = self;
      objc_msgSend_enumerate_(v99, v100, v144, v101, v102, v103, v104);

      v111 = objc_msgSend_atomBehavior(v19, v105, v106, v107, v108, v109, v110);
      objc_msgSend_setAtomBehavior_(self, v112, v111, v113, v114, v115, v116);
      v123 = objc_msgSend_atomType(v19, v117, v118, v119, v120, v121, v122);
      objc_msgSend_setAtomType_(self, v124, v123, v125, v126, v127, v128);
      v135 = objc_msgSend_value(v19, v129, v130, v131, v132, v133, v134);
      objc_msgSend_setValue_(self, v136, v135, v137, v138, v139, v140);
    }
  }
}

- (void)setVersion:(unint64_t)a3
{
  v9 = objc_msgSend_backingStore(self, a2, a3, v3, v4, v5, v6);
  v15 = v9;
  if (v9)
  {
    v34 = a3;
    v16 = objc_msgSend_writerForProxy_(v9, v10, self, v11, v12, v13, v14);
    v23 = objc_msgSend_binding(v15, v17, v18, v19, v20, v21, v22);
    v24 = v23[10];
    objc_msgSend_structInstance(self, v25, v26, v27, v28, v29, v30);
    objc_msgSend_setData_withEncoding_forField_inStruct_(v16, v31, &v34, "Q", v24, &v33, v32);
  }
}

- (id)location
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[26], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)timestamp
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[11], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)assignTimestampFromProxy:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_backingStore(self, v5, v6, v7, v8, v9, v10);
  v17 = v11;
  if (v11)
  {
    v24 = objc_msgSend_writerForProxy_(v11, v12, self, v13, v14, v15, v16);
    if (v4)
    {
      objc_msgSend_structInstance(v4, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      memset(v37, 0, sizeof(v37));
    }

    v25 = objc_msgSend_binding(v17, v18, v19, v20, v21, v22, v23);
    v26 = v25[11];
    objc_msgSend_structInstance(self, v27, v28, v29, v30, v31, v32);
    objc_msgSend_assignStruct_toReference_inStruct_(v24, v33, v37, v26, &v36, v34, v35);
  }
}

- (id)references
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structListProxyForListReference_mutable_(v15, v23, v22[12], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setAtomType:(unint64_t)a3
{
  v9 = objc_msgSend_backingStore(self, a2, a3, v3, v4, v5, v6);
  v15 = v9;
  if (v9)
  {
    v34 = a3;
    v16 = objc_msgSend_writerForProxy_(v9, v10, self, v11, v12, v13, v14);
    v23 = objc_msgSend_binding(v15, v17, v18, v19, v20, v21, v22);
    v24 = v23[13];
    objc_msgSend_structInstance(self, v25, v26, v27, v28, v29, v30);
    objc_msgSend_setData_withEncoding_forField_inStruct_(v16, v31, &v34, "Q", v24, &v33, v32);
  }
}

- (void)setValue:(id)a3
{
  v5 = a3;
  v28 = 0;
  v6 = v5;
  v13 = objc_msgSend_bytes(v6, v7, v8, v9, v10, v11, v12);
  v20 = v13;
  if (v5 && !v13)
  {
    if (objc_msgSend_length(v5, v14, v15, v16, v17, v18, v19))
    {
      v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKAtomSerialization.mm", 1099, @"Non-zero-length NSData has empty bytes");
    }

    v20 = &v28;
  }

  v21 = objc_msgSend_length(v5, v14, v15, v16, v17, v18, v19);
  objc_msgSend_setValueBytes_length_(self, v22, v20, v21, v23, v24, v25);
}

- (void)setValueBytes:(void *)a3 length:(unint64_t)a4
{
  v10 = objc_msgSend_backingStore(self, a2, a3, a4, v4, v5, v6);
  v17 = v10;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v18 = objc_msgSend_binding(v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_mutableListInstanceForField_(self, v19, v18[14], v20, v21, v22, v23);

    v29 = objc_msgSend_writerForProxy_(v17, v24, self, v25, v26, v27, v28);
    v33[0] = v34;
    v33[1] = v35;
    objc_msgSend_setData_withLength_forList_(v29, v30, a3, a4, v33, v31, v32);
  }
}

@end