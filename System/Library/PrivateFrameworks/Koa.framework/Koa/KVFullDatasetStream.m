@interface KVFullDatasetStream
- (BOOL)registerCascadeItem:(id)a3 error:(id *)a4;
- (BOOL)registerItem:(id)a3 error:(id *)a4;
- (unsigned)errorCode;
@end

@implementation KVFullDatasetStream

- (BOOL)registerItem:(id)a3 error:(id *)a4
{
  v11 = objc_msgSend__cascadeItemFromItem_error_(self, a2, a3, a4, v4, v5);
  if (v11)
  {
    v12 = objc_msgSend_registerCascadeItem_error_(self, v8, v11, a4, v9, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)registerCascadeItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = objc_msgSend_donation(self, v7, v8, v9, v10, v11);
  v20 = 0;
  v16 = objc_msgSend_registerItem_error_(v12, v13, v6, &v20, v14, v15);

  v17 = v20;
  if ((v16 & 1) == 0)
  {
    v18 = sub_2559CA340(v17);
    if (a4 && v18)
    {
      v18 = v18;
      *a4 = v18;
    }
  }

  return v16;
}

- (unsigned)errorCode
{
  v6 = objc_msgSend_donation(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_errorCode(v6, v7, v8, v9, v10, v11);
  if ((v12 - 1) >= 0xB)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 + 6;
  }

  return v13;
}

@end