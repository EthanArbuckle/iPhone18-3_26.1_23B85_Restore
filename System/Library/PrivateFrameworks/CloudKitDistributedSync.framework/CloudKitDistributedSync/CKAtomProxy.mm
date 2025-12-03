@interface CKAtomProxy
- (id)location;
- (id)references;
- (id)timestamp;
- (id)value;
- (unint64_t)atomType;
- (unint64_t)size;
- (unint64_t)valueSize;
- (unint64_t)version;
- (unsigned)atomBehavior;
- (void)copyValueBytes:(void *)bytes length:(unint64_t *)length isNull:(BOOL *)null;
@end

@implementation CKAtomProxy

- (unint64_t)size
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 0;
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_valueSizeForField_(v15, v23, v22[10], v24, v25, v26, v27);
    v106[3] += v28;

    v35 = objc_msgSend_location(self, v29, v30, v31, v32, v33, v34);
    v42 = objc_msgSend_size(v35, v36, v37, v38, v39, v40, v41);
    v106[3] += v42;

    v49 = objc_msgSend_timestamp(self, v43, v44, v45, v46, v47, v48);
    v56 = objc_msgSend_size(v49, v50, v51, v52, v53, v54, v55);
    v106[3] += v56;

    v63 = objc_msgSend_references(self, v57, v58, v59, v60, v61, v62);
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = sub_243971E4C;
    v104[3] = &unk_278DDB120;
    v104[4] = &v105;
    objc_msgSend_enumerate_(v63, v64, v104, v65, v66, v67, v68);

    v75 = objc_msgSend_binding(v14, v69, v70, v71, v72, v73, v74);
    v81 = objc_msgSend_valueSizeForField_(v15, v76, v75[27], v77, v78, v79, v80);
    v106[3] += v81;

    v88 = objc_msgSend_binding(v14, v82, v83, v84, v85, v86, v87);
    v94 = objc_msgSend_valueSizeForField_(v15, v89, v88[13], v90, v91, v92, v93);
    v106[3] += v94;

    v101 = objc_msgSend_valueSize(self, v95, v96, v97, v98, v99, v100);
    v102 = v106[3] + v101;
    v106[3] = v102;
    _Block_object_dispose(&v105, 8);
  }

  else
  {
    v102 = 0;
  }

  return v102;
}

- (unint64_t)version
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[10];
    objc_msgSend_structInstance(self, v24, v25, v26, v27, v28, v29);
    objc_msgSend_copyData_forField_inStruct_(v15, v30, &v36, v23, &v35, v31, v32);

    v33 = v36;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)location
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[26], 0, v24, v25, v26);
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
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[11], 0, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)references
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structListProxyForListReference_mutable_(v15, v23, v22[12], 0, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (unsigned)atomBehavior
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[27];
    objc_msgSend_structInstance(self, v24, v25, v26, v27, v28, v29);
    objc_msgSend_copyData_forField_inStruct_(v15, v30, &v36, v23, &v35, v31, v32);

    v33 = v36;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (unint64_t)atomType
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[13];
    objc_msgSend_structInstance(self, v24, v25, v26, v27, v28, v29);
    objc_msgSend_copyData_forField_inStruct_(v15, v30, &v36, v23, &v35, v31, v32);

    v33 = v36;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (unint64_t)valueSize
{
  v6 = 0;
  v5 = 0;
  objc_msgSend_copyValueBytes_length_isNull_(self, a2, 0, &v5, &v6, v2, v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5 + 8;
  }
}

- (id)value
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v15 = v8;
  if (v8)
  {
    v16 = objc_msgSend_binding(v8, v9, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_dataForToken_(self, v17, v16[14], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copyValueBytes:(void *)bytes length:(unint64_t *)length isNull:(BOOL *)null
{
  v11 = objc_msgSend_backingStore(self, a2, bytes, length, null, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, bytes, length, null, v18[14], v20);

    v11 = v21;
  }

  else
  {
    if (length)
    {
      *length = 0;
    }

    if (null)
    {
      *null = 1;
    }
  }
}

@end