@interface CKAtomReferenceProxy
- (id)location;
- (id)reference;
- (id)timestamp;
- (unint64_t)size;
- (unsigned)type;
@end

@implementation CKAtomReferenceProxy

- (unint64_t)size
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_valueSizeForField_(v15, v23, v22[24], v24, v25, v26, v27);

    v35 = objc_msgSend_location(self, v29, v30, v31, v32, v33, v34);
    v42 = objc_msgSend_size(v35, v36, v37, v38, v39, v40, v41);

    v49 = objc_msgSend_timestamp(self, v43, v44, v45, v46, v47, v48);
    v56 = v42 + v28 + objc_msgSend_size(v49, v50, v51, v52, v53, v54, v55);
  }

  else
  {
    v56 = 0;
  }

  return v56;
}

- (unsigned)type
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[24];
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
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[25], 0, v24, v25, v26);
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
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[8], 0, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)reference
{
  v3 = [CKAtomReference alloc];
  v10 = objc_msgSend_location(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_mergeableValueID(v10, v11, v12, v13, v14, v15, v16);
  v24 = objc_msgSend_timestamp(self, v18, v19, v20, v21, v22, v23);
  v31 = objc_msgSend_timestamp(v24, v25, v26, v27, v28, v29, v30);
  v38 = objc_msgSend_type(self, v32, v33, v34, v35, v36, v37);
  v42 = objc_msgSend_initWithMergeableValueID_timestamp_type_(v3, v39, v17, v31, v38, v40, v41);

  return v42;
}

@end