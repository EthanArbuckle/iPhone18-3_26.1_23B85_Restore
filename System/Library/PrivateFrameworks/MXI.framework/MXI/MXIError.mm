@interface MXIError
+ (id)errorWithDescription:(id)a3;
+ (id)errorWithFormattedDescription:(id)a3;
+ (void)fillError:(id *)a3 withDescription:(id)a4;
+ (void)fillError:(id *)a3 withFormattedDescription:(id)a4;
@end

@implementation MXIError

+ (void)fillError:(id *)a3 withDescription:(id)a4
{
  if (a3)
  {
    *a3 = objc_msgSend_errorWithDescription_(a1, a2, a4, a4, v4);
  }
}

+ (void)fillError:(id *)a3 withFormattedDescription:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = a4;
    v8 = [v6 alloc];
    v11 = objc_msgSend_initWithFormat_arguments_(v8, v9, v7, &v15, v10);

    *a3 = objc_msgSend_errorWithDescription_(a1, v12, v11, v13, v14);
  }
}

+ (id)errorWithDescription:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_msgSend_prependMessage(a1, v6, v7, v8, v9);
  v14 = objc_msgSend_initWithFormat_(v5, v11, @"%@%@", v12, v13, v10, v4);

  v15 = _mxi_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = v4;
    _os_log_impl(&dword_22F9C3000, v15, OS_LOG_TYPE_ERROR, "[Core/MXIError.m:72] MXI error: %@", buf, 0xCu);
  }

  v16 = MEMORY[0x277CCA9B8];
  v21 = objc_msgSend_code(a1, v17, v18, v19, v20);
  v22 = *MEMORY[0x277CCA450];
  v35[0] = v14;
  v23 = *MEMORY[0x277CCA498];
  v34[0] = v22;
  v34[1] = v23;
  v28 = objc_msgSend_suggestion(a1, v24, v25, v26, v27);
  v35[1] = v28;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v35, v34, 2);
  v32 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v31, @"com.apple.mxi.MXIErrorDomain", v21, v30);

  return v32;
}

+ (id)errorWithFormattedDescription:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 alloc];
  v9 = objc_msgSend_initWithFormat_arguments_(v6, v7, v5, &v16, v8);

  v13 = objc_msgSend_errorWithDescription_(a1, v10, v9, v11, v12);

  return v13;
}

@end