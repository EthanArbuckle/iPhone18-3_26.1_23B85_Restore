@interface CKAtomBatchProxy
- (id)atoms;
@end

@implementation CKAtomBatchProxy

- (id)atoms
{
  v14 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  if (v14)
  {
    v15 = objc_msgSend_childProxyCache(self, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_binding(v14, v16, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_structListProxyForListReference_mutable_(v15, v23, v22[16], 0, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end