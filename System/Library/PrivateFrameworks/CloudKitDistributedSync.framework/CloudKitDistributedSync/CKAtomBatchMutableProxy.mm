@interface CKAtomBatchMutableProxy
- (id)atoms;
- (void)copyFromReadProxy:(id)a3;
@end

@implementation CKAtomBatchMutableProxy

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
        v53 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v41, v42, v43, v44, v45, v46);
        v54 = NSStringFromClass(v40);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v53, v55, a2, self, @"CKAtomSerialization.mm", 1128, @"Proxy needs to be of type %@", v54);
      }

      v47 = objc_msgSend_atoms(v19, v41, v42, v43, v44, v45, v46);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_243974E54;
      v56[3] = &unk_278DDB1C0;
      v56[4] = self;
      objc_msgSend_enumerate_(v47, v48, v56, v49, v50, v51, v52);
    }
  }
}

- (id)atoms
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structListProxyForListReference_mutable_(v15, v23, v22[16], 1, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end