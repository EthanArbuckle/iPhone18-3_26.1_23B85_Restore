@interface CloudServicesError
+ (id)errorForNSError:(id)error path:(id)path format:(id)format;
+ (id)errorWithCode:(int64_t)code URL:(id)l format:(id)format;
+ (id)errorWithCode:(int64_t)code error:(id)error URL:(id)l format:(id)format;
+ (id)errorWithCode:(int64_t)code error:(id)error format:(id)format;
+ (id)errorWithCode:(int64_t)code format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error format:(id)format;
+ (int64_t)codeForErrno:(int64_t)errno;
+ (int64_t)codeForNSError:(id)error;
@end

@implementation CloudServicesError

+ (int64_t)codeForNSError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_domain(errorCopy, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050]);

  if (isEqualToString)
  {
    if ((objc_msgSend_code(errorCopy, v9, v10) | 0x100) == 0x104)
    {
      v13 = 4;
    }

    else
    {
      v27 = objc_msgSend_userInfo(errorCopy, v11, v12);
      v29 = objc_msgSend_objectForKey_(v27, v28, *MEMORY[0x277CCA7E8]);

      if (v29)
      {
        v13 = objc_msgSend_codeForNSError_(CloudServicesError, v30, v29);
      }

      else
      {
        v13 = 100;
      }
    }
  }

  else
  {
    v14 = objc_msgSend_domain(errorCopy, v9, v10);
    v16 = objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x277CCA738]);

    if (v16)
    {
      if (objc_msgSend_code(errorCopy, v17, v18) == -999)
      {
        v13 = 202;
      }

      else
      {
        v13 = 300;
      }
    }

    else
    {
      v19 = objc_msgSend_domain(errorCopy, v17, v18);
      v21 = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CCA5B8]);

      if (v21)
      {
        v24 = objc_msgSend_code(errorCopy, v22, v23);
        v26 = objc_msgSend_codeForErrno_(CloudServicesError, v25, v24);
      }

      else
      {
        v31 = objc_msgSend_domain(errorCopy, v22, v23);
        v33 = objc_msgSend_isEqualToString_(v31, v32, @"EscrowServiceErrorDomain");

        if (!v33)
        {
          v13 = 100;
          goto LABEL_18;
        }

        v26 = objc_msgSend_code(errorCopy, v34, v35);
      }

      v13 = v26;
    }
  }

LABEL_18:

  return v13;
}

+ (int64_t)codeForErrno:(int64_t)errno
{
  if (errno > 20)
  {
    if (errno > 61)
    {
      if (errno == 62)
      {
        return 7;
      }

      if (errno == 93)
      {
        return 8;
      }
    }

    else
    {
      if (errno == 21)
      {
        return 6;
      }

      if (errno == 28)
      {
        return 105;
      }
    }
  }

  else if (errno > 16)
  {
    if (errno == 17)
    {
      return 3;
    }

    if (errno == 20)
    {
      return 5;
    }
  }

  else
  {
    result = 4;
    if (errno == 2 || errno == 9)
    {
      return result;
    }
  }

  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F5054(v4);
  }

  return 100;
}

+ (id)errorWithCode:(int64_t)code format:(id)format
{
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [v5 alloc];
  v9 = objc_msgSend_initWithFormat_arguments_(v7, v8, formatCopy, &v16);

  v11 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v10, v9, *MEMORY[0x277CCA450], 0);
  v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"CloudServicesErrorDomain", code, v11);

  return v13;
}

+ (id)errorWithCode:(int64_t)code error:(id)error format:(id)format
{
  v7 = MEMORY[0x277CCACA8];
  formatCopy = format;
  errorCopy = error;
  v10 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, formatCopy, &v19);

  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v13, v12, *MEMORY[0x277CCA450], errorCopy, *MEMORY[0x277CCA7E8], 0);

  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"CloudServicesErrorDomain", code, v14);

  return v16;
}

+ (id)errorWithCode:(int64_t)code URL:(id)l format:(id)format
{
  v7 = MEMORY[0x277CCACA8];
  formatCopy = format;
  lCopy = l;
  v10 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, formatCopy, &v19);

  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v13, v12, *MEMORY[0x277CCA450], lCopy, *MEMORY[0x277CCA760], 0);

  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"CloudServicesErrorDomain", code, v14);

  return v16;
}

+ (id)errorWithCode:(int64_t)code error:(id)error URL:(id)l format:(id)format
{
  v9 = MEMORY[0x277CCACA8];
  formatCopy = format;
  lCopy = l;
  errorCopy = error;
  v13 = [v9 alloc];
  v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, formatCopy, &v22);

  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v16, v15, *MEMORY[0x277CCA450], errorCopy, *MEMORY[0x277CCA7E8], lCopy, *MEMORY[0x277CCA760], 0);

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, @"CloudServicesErrorDomain", code, v17);

  return v19;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format
{
  v7 = MEMORY[0x277CCACA8];
  formatCopy = format;
  domainCopy = domain;
  v10 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, formatCopy, &v19);

  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v13, v12, *MEMORY[0x277CCA450], 0);
  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, domainCopy, code, v14);

  return v16;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error format:(id)format
{
  v9 = MEMORY[0x277CCACA8];
  formatCopy = format;
  errorCopy = error;
  domainCopy = domain;
  v13 = [v9 alloc];
  v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, formatCopy, &v22);

  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v16, v15, *MEMORY[0x277CCA450], errorCopy, *MEMORY[0x277CCA7E8], 0);

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, domainCopy, code, v17);

  return v19;
}

+ (id)errorForNSError:(id)error path:(id)path format:(id)format
{
  v7 = MEMORY[0x277CCACA8];
  formatCopy = format;
  pathCopy = path;
  errorCopy = error;
  v11 = [v7 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, formatCopy, &v23);

  v15 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v14, v13, *MEMORY[0x277CCA450], errorCopy, *MEMORY[0x277CCA7E8], pathCopy, *MEMORY[0x277CCA170], 0);

  v16 = MEMORY[0x277CCA9B8];
  v18 = objc_msgSend_codeForNSError_(CloudServicesError, v17, errorCopy);

  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, @"CloudServicesErrorDomain", v18, v15);

  return v20;
}

@end