@interface CKDPushToken
- (BOOL)isEqual:(id)a3;
- (CKDPushToken)initWithAPSEnvironmentString:(id)a3 apsToken:(id)a4;
- (unint64_t)hash;
@end

@implementation CKDPushToken

- (CKDPushToken)initWithAPSEnvironmentString:(id)a3 apsToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CKDPushToken;
  v10 = [(CKDPushToken *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    apsEnvironmentString = v10->_apsEnvironmentString;
    v10->_apsEnvironmentString = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    apsToken = v10->_apsToken;
    v10->_apsToken = v15;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_apsToken(self, v6, v7);
      v11 = objc_msgSend_apsToken(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual();

      if (v12)
      {
        v15 = objc_msgSend_apsEnvironmentString(self, v13, v14);
        v18 = objc_msgSend_apsEnvironmentString(v5, v16, v17);
        v19 = CKObjectsAreBothNilOrEqual();
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_apsToken(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_apsEnvironmentString(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

@end