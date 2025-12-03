@interface CKAtomReferenceMutableProxy
- (id)location;
- (id)timestamp;
- (void)assignLocationFromProxy:(id)proxy;
- (void)assignTimestampFromProxy:(id)proxy;
- (void)copyFromReadProxy:(id)proxy;
- (void)copyFromReference:(id)reference;
@end

@implementation CKAtomReferenceMutableProxy

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
        v98 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v40, v41, v42, v43, v44, v45);
        v99 = NSStringFromClass(v39);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v98, v100, a2, self, @"CKAtomSerialization.mm", 942, @"Proxy needs to be of type %@", v99);
      }

      v46 = objc_msgSend_type(v18, v40, v41, v42, v43, v44, v45);
      objc_msgSend_setType_(self, v47, v46, v48, v49, v50, v51);
      v58 = objc_msgSend_location(v18, v52, v53, v54, v55, v56, v57);

      if (v58)
      {
        v65 = objc_msgSend_location(self, v59, v60, v61, v62, v63, v64);
        v72 = objc_msgSend_location(v18, v66, v67, v68, v69, v70, v71);
        objc_msgSend_copyFromReadProxy_(v65, v73, v72, v74, v75, v76, v77);
      }

      v78 = objc_msgSend_timestamp(v18, v59, v60, v61, v62, v63, v64);

      if (v78)
      {
        v85 = objc_msgSend_timestamp(self, v79, v80, v81, v82, v83, v84);
        v92 = objc_msgSend_timestamp(v18, v86, v87, v88, v89, v90, v91);
        objc_msgSend_copyFromReadProxy_(v85, v93, v92, v94, v95, v96, v97);
      }
    }
  }
}

- (id)location
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[25], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)assignLocationFromProxy:(id)proxy
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
    v26 = v25[25];
    objc_msgSend_structInstance(self, v27, v28, v29, v30, v31, v32);
    objc_msgSend_assignStruct_toReference_inStruct_(v24, v33, v37, v26, &v36, v34, v35);
  }
}

- (id)timestamp
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structProxyForStructReference_mutable_(v15, v23, v22[8], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)assignTimestampFromProxy:(id)proxy
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
    v26 = v25[8];
    objc_msgSend_structInstance(self, v27, v28, v29, v30, v31, v32);
    objc_msgSend_assignStruct_toReference_inStruct_(v24, v33, v37, v26, &v36, v34, v35);
  }
}

- (void)copyFromReference:(id)reference
{
  referenceCopy = reference;
  v10 = objc_msgSend_type(referenceCopy, v4, v5, v6, v7, v8, v9);
  objc_msgSend_setType_(self, v11, v10, v12, v13, v14, v15);
  v22 = objc_msgSend_mergeableValueID(referenceCopy, v16, v17, v18, v19, v20, v21);

  if (v22)
  {
    v29 = objc_msgSend_location(self, v23, v24, v25, v26, v27, v28);
    v36 = objc_msgSend_mergeableValueID(referenceCopy, v30, v31, v32, v33, v34, v35);
    objc_msgSend_copyFromMergeableValueID_(v29, v37, v36, v38, v39, v40, v41);
  }

  v42 = objc_msgSend_timestamp(referenceCopy, v23, v24, v25, v26, v27, v28);

  if (v42)
  {
    v49 = objc_msgSend_timestamp(self, v43, v44, v45, v46, v47, v48);
    v56 = objc_msgSend_timestamp(referenceCopy, v50, v51, v52, v53, v54, v55);
    objc_msgSend_copyFromTimestamp_(v49, v57, v56, v58, v59, v60, v61);
  }
}

@end