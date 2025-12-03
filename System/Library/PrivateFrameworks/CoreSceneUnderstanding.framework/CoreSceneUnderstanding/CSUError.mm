@interface CSUError
+ (id)CSUAssert:(BOOL)assert log:(id)log;
+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description;
+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForDatabase:(id)database;
+ (id)errorForDictionaryDeserialization:(id)deserialization;
+ (id)errorForEspressoErrorInfo:(id)info localizedDescription:(id)description;
+ (id)errorForFailedEspressoPlan:(void *)plan localizedDescription:(id)description;
+ (id)errorForInternalErrorWithLocalizedDescription:(id)description;
+ (id)errorForInternalErrorWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForInvalidArgument:(id)argument named:(id)named;
+ (id)errorForInvalidArgumentWithLocalizedDescription:(id)description;
+ (id)errorForInvalidModelWithLocalizedDescription:(id)description;
+ (id)errorForInvalidModelWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForMemoryAllocationFailureWithLocalizedDescription:(id)description;
+ (id)errorForOSStatus:(int)status localizedDescription:(id)description;
+ (id)errorForUnknownErrorWithLocalizedDescription:(id)description;
+ (id)errorForUnsupportedRevision:(id)revision;
+ (id)errorFromErrors:(id)errors And:(id)and;
+ (id)errorWithCode:(int64_t)code message:(id)message;
+ (id)errorWithCode:(int64_t)code message:(id)message underlyingError:(id)error;
+ (void)logInternalError:(id)error;
@end

@implementation CSUError

+ (id)errorWithCode:(int64_t)code message:(id)message
{
  v4 = objc_msgSend_errorWithCode_message_underlyingError_(self, a2, code, message, 0);

  return v4;
}

+ (id)errorWithCode:(int64_t)code message:(id)message underlyingError:(id)error
{
  v6 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], a2, message, message, error, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"com.apple.coresceneunderstanding", code, v6);

  return v8;
}

+ (id)errorForMemoryAllocationFailureWithLocalizedDescription:(id)description
{
  v12[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (descriptionCopy)
  {
    v11 = *MEMORY[0x1E696A578];
    v12[0] = descriptionCopy;
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

+ (id)errorForInternalErrorWithLocalizedDescription:(id)description
{
  v4 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(self, a2, description, 0, v3);

  return v4;
}

+ (id)errorForInternalErrorWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v5 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], a2, description, error, v4, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], 0);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"com.apple.coresceneunderstanding", 2, v5);

  return v7;
}

+ (id)errorForInvalidArgumentWithLocalizedDescription:(id)description
{
  v4 = objc_msgSend_errorWithCode_message_(self, a2, 8, description, v3);

  return v4;
}

+ (id)errorForInvalidArgument:(id)argument named:(id)named
{
  argumentCopy = argument;
  namedCopy = named;
  v8 = MEMORY[0x1E696AEC0];
  v9 = argumentCopy;
  objc_opt_class();
  v13 = v9;
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%@", v11, v12, v9);
  }

  v14 = objc_msgSend_stringWithFormat_(v8, v10, @"argument %@ has an invalid value of %@", v11, v12, namedCopy, v13);

  v18 = objc_msgSend_errorForInvalidArgumentWithLocalizedDescription_(self, v15, v14, v16, v17);

  return v18;
}

+ (id)errorForInvalidModelWithLocalizedDescription:(id)description
{
  v4 = objc_msgSend_errorForInvalidModelWithLocalizedDescription_underlyingError_(self, a2, description, 0, v3);

  return v4;
}

+ (id)errorForInvalidModelWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v11 = *MEMORY[0x1E696A578];
  v12[0] = descriptionCopy;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"com.apple.coresceneunderstanding", 9, v6);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorForUnknownErrorWithLocalizedDescription:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v10 = *MEMORY[0x1E696A578];
  v11[0] = descriptionCopy;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v11, &v10, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"com.apple.coresceneunderstanding", 5, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description
{
  v4 = objc_msgSend_errorForDataUnavailableWithLocalizedDescription_underlyingError_(self, a2, description, 0, v3);

  return v4;
}

+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v4 = objc_msgSend_errorWithCode_message_underlyingError_(self, a2, 10, description, error);

  return v4;
}

+ (id)errorForEspressoErrorInfo:(id)info localizedDescription:(id)description
{
  var2 = info.var2;
  v5 = *&info.var0;
  descriptionCopy = description;
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

  if (descriptionCopy)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@ - %@", v15, v16, descriptionCopy, v13);

    v13 = v17;
  }

  v18 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(self, v14, v13, v15, v16);

  return v18;
}

+ (id)errorForFailedEspressoPlan:(void *)plan localizedDescription:(id)description
{
  descriptionCopy = description;
  error_info = espresso_plan_get_error_info();
  v8 = objc_msgSend_errorForEspressoErrorInfo_localizedDescription_(self, v7, error_info, v7, descriptionCopy);

  return v8;
}

+ (id)errorForOSStatus:(int)status localizedDescription:(id)description
{
  v6 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], a2, description, description, v4, *MEMORY[0x1E696A578], 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, *MEMORY[0x1E696A768], status, v6);

  return v8;
}

+ (id)errorForUnsupportedRevision:(id)revision
{
  v4 = objc_msgSend_errorWithCode_message_(self, a2, 13, revision, v3);

  return v4;
}

+ (id)errorForDatabase:(id)database
{
  v4 = objc_msgSend_errorWithCode_message_(self, a2, 14, database, v3);

  return v4;
}

+ (id)errorForDictionaryDeserialization:(id)deserialization
{
  v4 = objc_msgSend_errorWithCode_message_(self, a2, 16, deserialization, v3);

  return v4;
}

+ (void)logInternalError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v4 = sub_1AC090E50();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_msgSend_code(errorCopy, v5, v6, v7, v8);
      v15 = objc_msgSend_localizedDescription(errorCopy, v11, v12, v13, v14);
      v16 = v15;
      v20 = objc_msgSend_cStringUsingEncoding_(v16, v17, 1, v18, v19);
      v25 = objc_msgSend_localizedFailureReason(errorCopy, v21, v22, v23, v24);
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

+ (id)CSUAssert:(BOOL)assert log:(id)log
{
  v20 = *MEMORY[0x1E69E9840];
  logCopy = log;
  if (assert)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1AC090E50();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = logCopy;
      v13 = objc_msgSend_UTF8String(v8, v9, v10, v11, v12);
      sub_1AC11F600(v13, v19, v7);
    }

    v6 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v14, logCopy, v15, v16);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)errorFromErrors:(id)errors And:(id)and
{
  errorsCopy = errors;
  andCopy = and;
  v11 = andCopy;
  if (errorsCopy)
  {
    if (andCopy)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_msgSend_localizedDescription(errorsCopy, v7, v8, v9, v10);
      v18 = objc_msgSend_localizedDescription(v11, v14, v15, v16, v17);
      v22 = objc_msgSend_stringWithFormat_(v12, v19, @"%@ | %@", v20, v21, v13, v18);
      v26 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v23, v22, v24, v25);

      goto LABEL_9;
    }

    v27 = errorsCopy;
    goto LABEL_7;
  }

  if (andCopy)
  {
    v27 = andCopy;
LABEL_7:
    v26 = v27;
    goto LABEL_9;
  }

  v26 = 0;
LABEL_9:

  return v26;
}

@end