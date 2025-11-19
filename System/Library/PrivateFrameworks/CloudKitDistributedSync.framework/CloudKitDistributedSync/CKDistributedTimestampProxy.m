@interface CKDistributedTimestampProxy
- (BOOL)unordered;
- (id)distributedSiteIdentifier;
- (id)siteIdentifier;
- (id)timestamp;
- (unint64_t)clock;
- (unint64_t)siteIdentifierSize;
- (unint64_t)size;
- (unsigned)modifier;
- (void)copySiteIdentifierBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5;
@end

@implementation CKDistributedTimestampProxy

- (unint64_t)size
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_distributedSiteIdentifier(self, v16, v17, v18, v19, v20, v21);
    v29 = objc_msgSend_size(v22, v23, v24, v25, v26, v27, v28);

    v36 = objc_msgSend_siteIdentifierSize(self, v30, v31, v32, v33, v34, v35);
    v43 = objc_msgSend_binding(v14, v37, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_valueSizeForField_(v15, v44, v43[18], v45, v46, v47, v48);

    v56 = objc_msgSend_binding(v14, v50, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_valueSizeForField_(v15, v57, v56[6], v58, v59, v60, v61);

    v69 = objc_msgSend_binding(v14, v63, v64, v65, v66, v67, v68);
    v75 = v36 + v29 + v49 + v62 + objc_msgSend_valueSizeForField_(v15, v70, v69[19], v71, v72, v73, v74);
  }

  else
  {
    v75 = 0;
  }

  return v75;
}

- (id)distributedSiteIdentifier
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[5], 0, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (unint64_t)siteIdentifierSize
{
  v6 = 0;
  v5 = 0;
  objc_msgSend_copySiteIdentifierBytes_length_isNull_(self, a2, 0, &v5, &v6, v2, v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5 + 8;
  }
}

- (id)siteIdentifier
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v15 = v8;
  if (v8)
  {
    v16 = objc_msgSend_binding(v8, v9, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_dataForToken_(self, v17, v16[17], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copySiteIdentifierBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5
{
  v11 = objc_msgSend_backingStore(self, a2, a3, a4, a5, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, a3, a4, a5, v18[17], v20);

    v11 = v21;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 1;
    }
  }
}

- (unsigned)modifier
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[18];
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

- (unint64_t)clock
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[6];
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

- (BOOL)unordered
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    v36 = 0;
    v15 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v23 = v22[19];
    objc_msgSend_structInstance(self, v24, v25, v26, v27, v28, v29);
    objc_msgSend_copyData_forField_inStruct_(v15, v30, &v36, v23, &v35, v31, v32);

    v33 = v36 != 0;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)timestamp
{
  v14 = objc_msgSend_distributedSiteIdentifier(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_distributedSiteIdentifier(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_siteIdentifier(v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x277CBC2C8]);
    v15 = objc_msgSend_siteIdentifier(self, v24, v25, v26, v27, v28, v29);
    v22 = objc_msgSend_initWithIdentifier_(v23, v30, v15, v31, v32, v33, v34);
  }

  v35 = v22;

  v36 = objc_alloc(MEMORY[0x277CBC2D0]);
  v43 = objc_msgSend_clock(self, v37, v38, v39, v40, v41, v42);
  v48 = objc_msgSend_initWithSiteIdentifierObject_clockValue_(v36, v44, v35, v43, v45, v46, v47);

  return v48;
}

@end