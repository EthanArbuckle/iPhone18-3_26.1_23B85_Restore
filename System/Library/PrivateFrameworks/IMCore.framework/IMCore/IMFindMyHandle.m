@interface IMFindMyHandle
+ (id)handleWithFMFHandle:(id)a3;
+ (id)handleWithFMLHandle:(id)a3;
+ (id)handleWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IMFindMyHandle)initWithIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMFindMyHandle

+ (id)handleWithFMFHandle:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_identifier(v3, v4, v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v6;
    v9 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v7, v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)handleWithFMLHandle:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_identifier(v3, v4, v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v6;
    v9 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v7, v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)handleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [IMFindMyHandle alloc];
  v6 = objc_msgSend_initWithIdentifier_(v4, v5, v3);

  return v6;
}

- (IMFindMyHandle)initWithIdentifier:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = IMFindMyHandle;
  v6 = [(IMFindMyHandle *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9);
    SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v10, v11, v12);

    if (SessionEnabled)
    {
      v14 = MEMORY[0x1AC56C550](@"FMLHandle", @"FindMyLocateObjCWrapper");
      if (v14)
      {
        v15 = v14;
        if (objc_opt_respondsToSelector())
        {
          v17 = objc_msgSend_handleWithIdentifier_(v15, v16, v5);
          v18 = 24;
LABEL_9:
          v22 = *(&v7->super.isa + v18);
          *(&v7->super.isa + v18) = v17;
        }
      }
    }

    else
    {
      v19 = MEMORY[0x1AC56C550](@"FMFHandle", @"FMF");
      if (v19)
      {
        v20 = v19;
        if (objc_opt_respondsToSelector())
        {
          v17 = objc_msgSend_handleWithId_(v20, v21, v5);
          v18 = 16;
          goto LABEL_9;
        }
      }
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    isEqualToString = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v11 = objc_msgSend_identifier(self, v7, v8);
      if (v11 || (objc_msgSend_identifier(v6, v9, v10), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = objc_msgSend_identifier(self, v9, v10);
        v15 = objc_msgSend_identifier(v6, v13, v14);
        isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

        if (v11)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        isEqualToString = 1;
      }

      goto LABEL_11;
    }

    isEqualToString = 0;
  }

LABEL_12:

  return isEqualToString;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_fmfHandle(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_fmlHandle(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v7 = objc_msgSend_identifier(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p [%@]>", v4, self, v7);

  return v9;
}

@end