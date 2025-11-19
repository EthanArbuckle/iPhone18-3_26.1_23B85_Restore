@interface BUCellularIdentity
+ (id)_digestMD5:(id)a3;
+ (id)identityForSubscription:(id)a3 usingClient:(id)a4 error:(id *)a5;
- (BUCellularIdentity)initWithSIMIdentity:(id)a3 roaming:(BOOL)a4;
@end

@implementation BUCellularIdentity

+ (id)identityForSubscription:(id)a3 usingClient:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v10 = v8;
  v11 = 0;
  if (!v7 || !v8 || (v27 = 0, v12 = objc_msgSend_copySIMIdentity_error_(v8, v9, v7, &v27), v11 = v27, !v12) || (!objc_msgSend_length(v12, v13, v14) ? (v21 = objc_alloc_init(_BUNullCellularIdentity)) : ((v26 = v11, objc_msgSend_getDataStatus_error_(v10, v15, v7, &v26), v16 = objc_claimAutoreleasedReturnValue(), v17 = v26, v11, !v16) ? (v20 = 0) : (v20 = objc_msgSend_inHomeCountry(v16, v18, v19) ^ 1), v22 = [a1 alloc], v21 = objc_msgSend_initWithSIMIdentity_roaming_(v22, v23, v12, v20), v16, v11 = v17), v12, !v21))
  {
    v24 = BookUtilityLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_241DD19C8(v11, v24);
    }

    v21 = objc_alloc_init(_BUNullCellularIdentity);
  }

  return v21;
}

- (BUCellularIdentity)initWithSIMIdentity:(id)a3 roaming:(BOOL)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = BUCellularIdentity;
  v8 = [(BUCellularIdentity *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_simIdentity, a3);
    v9->_roaming = a4;
    v10 = objc_opt_class();
    v12 = objc_msgSend_dataUsingEncoding_(v7, v11, 4);
    v14 = objc_msgSend__digestMD5_(v10, v13, v12);
    defaultsKey = v9->_defaultsKey;
    v9->_defaultsKey = v14;
  }

  return v9;
}

+ (id)_digestMD5:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  v7 = objc_msgSend_bytes(v4, v5, v6);
  v10 = objc_msgSend_length(v3, v8, v9);
  CC_MD5(v7, v10, md);
  v13 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v11, 32);
  for (i = 0; i != 16; ++i)
  {
    objc_msgSend_appendFormat_(v13, v12, @"%02x", md[i]);
  }

  v16 = objc_msgSend_copy(v13, v12, v15);

  return v16;
}

@end