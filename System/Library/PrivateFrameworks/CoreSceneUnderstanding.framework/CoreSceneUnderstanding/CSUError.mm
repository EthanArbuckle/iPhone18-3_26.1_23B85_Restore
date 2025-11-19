@interface CSUError
+ (id)CSUAssert:(BOOL)a3 log:(id)a4;
+ (id)errorForDataUnavailableWithLocalizedDescription:(id)a3;
+ (id)errorForDataUnavailableWithLocalizedDescription:(id)a3 underlyingError:(id)a4;
+ (id)errorForDatabase:(id)a3;
+ (id)errorForDictionaryDeserialization:(id)a3;
+ (id)errorForEspressoErrorInfo:(id)a3 localizedDescription:(id)a4;
+ (id)errorForFailedEspressoPlan:(void *)a3 localizedDescription:(id)a4;
+ (id)errorForInternalErrorWithLocalizedDescription:(id)a3;
+ (id)errorForInternalErrorWithLocalizedDescription:(id)a3 underlyingError:(id)a4;
+ (id)errorForInvalidArgument:(id)a3 named:(id)a4;
+ (id)errorForInvalidArgumentWithLocalizedDescription:(id)a3;
+ (id)errorForInvalidModelWithLocalizedDescription:(id)a3;
+ (id)errorForInvalidModelWithLocalizedDescription:(id)a3 underlyingError:(id)a4;
+ (id)errorForMemoryAllocationFailureWithLocalizedDescription:(id)a3;
+ (id)errorForOSStatus:(int)a3 localizedDescription:(id)a4;
+ (id)errorForUnknownErrorWithLocalizedDescription:(id)a3;
+ (id)errorForUnsupportedRevision:(id)a3;
+ (id)errorFromErrors:(id)a3 And:(id)a4;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
+ (void)logInternalError:(id)a3;
@end

@implementation CSUError

+ (id)errorWithCode:(int64_t)a3 message:(id)a4
{
  v4 = objc_msgSend_errorWithCode_message_underlyingError_(a1, a2, a3, a4, 0);

  return v4;
}

+ (id)errorWithCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5
{
  v6 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], a2, a4, a4, a5, *MEMORY[0x1E696A578], a5, *MEMORY[0x1E696AA08], 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"com.apple.coresceneunderstanding", a3, v6);

  return v8;
}

+ (id)errorForMemoryAllocationFailureWithLocalizedDescription:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v3;
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v12, &v11, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"com.apple.coresceneunderstanding", 4, v6);
  }

  else
  {
    v6 = 0;
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"com.apple.coresceneunderstanding", 4, 0);
  }
  v8 = ;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorForInternalErrorWithLocalizedDescription:(id)a3
{
  v4 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(a1, a2, a3, 0, v3);

  return v4;
}

+ (id)errorForInternalErrorWithLocalizedDescription:(id)a3 underlyingError:(id)a4
{
  v5 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], a2, a3, a4, v4, *MEMORY[0x1E696A578], a4, *MEMORY[0x1E696AA08], 0);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"com.apple.coresceneunderstanding", 2, v5);

  return v7;
}

+ (id)errorForInvalidArgumentWithLocalizedDescription:(id)a3
{
  v4 = objc_msgSend_errorWithCode_message_(a1, a2, 8, a3, v3);

  return v4;
}

+ (id)errorForInvalidArgument:(id)a3 named:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = v6;
  objc_opt_class();
  v13 = v9;
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%@", v11, v12, v9);
  }

  v14 = objc_msgSend_stringWithFormat_(v8, v10, @"argument %@ has an invalid value of %@", v11, v12, v7, v13);

  v18 = objc_msgSend_errorForInvalidArgumentWithLocalizedDescription_(a1, v15, v14, v16, v17);

  return v18;
}

+ (id)errorForInvalidModelWithLocalizedDescription:(id)a3
{
  v4 = objc_msgSend_errorForInvalidModelWithLocalizedDescription_underlyingError_(a1, a2, a3, 0, v3);

  return v4;
}

+ (id)errorForInvalidModelWithLocalizedDescription:(id)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = *MEMORY[0x1E696A578];
  v12[0] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"com.apple.coresceneunderstanding", 9, v6);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorForUnknownErrorWithLocalizedDescription:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v11, &v10, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"com.apple.coresceneunderstanding", 5, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)errorForDataUnavailableWithLocalizedDescription:(id)a3
{
  v4 = objc_msgSend_errorForDataUnavailableWithLocalizedDescription_underlyingError_(a1, a2, a3, 0, v3);

  return v4;
}

+ (id)errorForDataUnavailableWithLocalizedDescription:(id)a3 underlyingError:(id)a4
{
  v4 = objc_msgSend_errorWithCode_message_underlyingError_(a1, a2, 10, a3, a4);

  return v4;
}

+ (id)errorForEspressoErrorInfo:(id)a3 localizedDescription:(id)a4
{
  var2 = a3.var2;
  v5 = *&a3.var0;
  v10 = a4;
  v11 = MEMORY[0x1E696AEC0];
  if (v5 >= 3)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"espresso plan phase %ul", v8, v9, v5);
  }

  else
  {
    v12 = off_1E7967DC0[v5 & 3];
  }

  v13 = objc_msgSend_stringWithFormat_(v11, v7, @"%s (%@)", v8, v9, var2, v12);

  if (v10)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@ - %@", v15, v16, v10, v13);

    v13 = v17;
  }

  v18 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(a1, v14, v13, v15, v16);

  return v18;
}

+ (id)errorForFailedEspressoPlan:(void *)a3 localizedDescription:(id)a4
{
  v5 = a4;
  error_info = espresso_plan_get_error_info();
  v8 = objc_msgSend_errorForEspressoErrorInfo_localizedDescription_(a1, v7, error_info, v7, v5);

  return v8;
}

+ (id)errorForOSStatus:(int)a3 localizedDescription:(id)a4
{
  v6 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], a2, a4, a4, v4, *MEMORY[0x1E696A578], 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, *MEMORY[0x1E696A768], a3, v6);

  return v8;
}

+ (id)errorForUnsupportedRevision:(id)a3
{
  v4 = objc_msgSend_errorWithCode_message_(a1, a2, 13, a3, v3);

  return v4;
}

+ (id)errorForDatabase:(id)a3
{
  v4 = objc_msgSend_errorWithCode_message_(a1, a2, 14, a3, v3);

  return v4;
}

+ (id)errorForDictionaryDeserialization:(id)a3
{
  v4 = objc_msgSend_errorWithCode_message_(a1, a2, 16, a3, v3);

  return v4;
}

+ (void)logInternalError:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = sub_1AC090E50();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_msgSend_code(v3, v5, v6, v7, v8);
      v15 = objc_msgSend_localizedDescription(v3, v11, v12, v13, v14);
      v16 = v15;
      v20 = objc_msgSend_cStringUsingEncoding_(v16, v17, 1, v18, v19);
      v25 = objc_msgSend_localizedFailureReason(v3, v21, v22, v23, v24);
      v26 = v25;
      v30[0] = 67109634;
      v30[1] = v10;
      v31 = 2080;
      v32 = v20;
      v33 = 2080;
      v34 = objc_msgSend_cStringUsingEncoding_(v26, v27, 1, v28, v29);
      _os_log_error_impl(&dword_1AC05D000, v4, OS_LOG_TYPE_ERROR, "Internal Error Occurred. Code: %d; description: %s; reason: %s", v30, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)CSUAssert:(BOOL)a3 log:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1AC090E50();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v13 = objc_msgSend_UTF8String(v8, v9, v10, v11, v12);
      sub_1AC11F600(v13, v19, v7);
    }

    v6 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v14, v5, v15, v16);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)errorFromErrors:(id)a3 And:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = v6;
  if (v5)
  {
    if (v6)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_msgSend_localizedDescription(v5, v7, v8, v9, v10);
      v18 = objc_msgSend_localizedDescription(v11, v14, v15, v16, v17);
      v22 = objc_msgSend_stringWithFormat_(v12, v19, @"%@ | %@", v20, v21, v13, v18);
      v26 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v23, v22, v24, v25);

      goto LABEL_9;
    }

    v27 = v5;
    goto LABEL_7;
  }

  if (v6)
  {
    v27 = v6;
LABEL_7:
    v26 = v27;
    goto LABEL_9;
  }

  v26 = 0;
LABEL_9:

  return v26;
}

@end