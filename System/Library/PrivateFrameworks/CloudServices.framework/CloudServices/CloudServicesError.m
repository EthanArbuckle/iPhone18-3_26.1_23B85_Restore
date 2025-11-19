@interface CloudServicesError
+ (id)errorForNSError:(id)a3 path:(id)a4 format:(id)a5;
+ (id)errorWithCode:(int64_t)a3 URL:(id)a4 format:(id)a5;
+ (id)errorWithCode:(int64_t)a3 error:(id)a4 URL:(id)a5 format:(id)a6;
+ (id)errorWithCode:(int64_t)a3 error:(id)a4 format:(id)a5;
+ (id)errorWithCode:(int64_t)a3 format:(id)a4;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 format:(id)a5;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 format:(id)a6;
+ (int64_t)codeForErrno:(int64_t)a3;
+ (int64_t)codeForNSError:(id)a3;
@end

@implementation CloudServicesError

+ (int64_t)codeForNSError:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_domain(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050]);

  if (isEqualToString)
  {
    if ((objc_msgSend_code(v3, v9, v10) | 0x100) == 0x104)
    {
      v13 = 4;
    }

    else
    {
      v27 = objc_msgSend_userInfo(v3, v11, v12);
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
    v14 = objc_msgSend_domain(v3, v9, v10);
    v16 = objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x277CCA738]);

    if (v16)
    {
      if (objc_msgSend_code(v3, v17, v18) == -999)
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
      v19 = objc_msgSend_domain(v3, v17, v18);
      v21 = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CCA5B8]);

      if (v21)
      {
        v24 = objc_msgSend_code(v3, v22, v23);
        v26 = objc_msgSend_codeForErrno_(CloudServicesError, v25, v24);
      }

      else
      {
        v31 = objc_msgSend_domain(v3, v22, v23);
        v33 = objc_msgSend_isEqualToString_(v31, v32, @"EscrowServiceErrorDomain");

        if (!v33)
        {
          v13 = 100;
          goto LABEL_18;
        }

        v26 = objc_msgSend_code(v3, v34, v35);
      }

      v13 = v26;
    }
  }

LABEL_18:

  return v13;
}

+ (int64_t)codeForErrno:(int64_t)a3
{
  if (a3 > 20)
  {
    if (a3 > 61)
    {
      if (a3 == 62)
      {
        return 7;
      }

      if (a3 == 93)
      {
        return 8;
      }
    }

    else
    {
      if (a3 == 21)
      {
        return 6;
      }

      if (a3 == 28)
      {
        return 105;
      }
    }
  }

  else if (a3 > 16)
  {
    if (a3 == 17)
    {
      return 3;
    }

    if (a3 == 20)
    {
      return 5;
    }
  }

  else
  {
    result = 4;
    if (a3 == 2 || a3 == 9)
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

+ (id)errorWithCode:(int64_t)a3 format:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [v5 alloc];
  v9 = objc_msgSend_initWithFormat_arguments_(v7, v8, v6, &v16);

  v11 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v10, v9, *MEMORY[0x277CCA450], 0);
  v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"CloudServicesErrorDomain", a3, v11);

  return v13;
}

+ (id)errorWithCode:(int64_t)a3 error:(id)a4 format:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, v8, &v19);

  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v13, v12, *MEMORY[0x277CCA450], v9, *MEMORY[0x277CCA7E8], 0);

  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"CloudServicesErrorDomain", a3, v14);

  return v16;
}

+ (id)errorWithCode:(int64_t)a3 URL:(id)a4 format:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, v8, &v19);

  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v13, v12, *MEMORY[0x277CCA450], v9, *MEMORY[0x277CCA760], 0);

  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"CloudServicesErrorDomain", a3, v14);

  return v16;
}

+ (id)errorWithCode:(int64_t)a3 error:(id)a4 URL:(id)a5 format:(id)a6
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v9 alloc];
  v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, v10, &v22);

  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v16, v15, *MEMORY[0x277CCA450], v12, *MEMORY[0x277CCA7E8], v11, *MEMORY[0x277CCA760], 0);

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, @"CloudServicesErrorDomain", a3, v17);

  return v19;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 format:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, v8, &v19);

  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v13, v12, *MEMORY[0x277CCA450], 0);
  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, v9, a4, v14);

  return v16;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 format:(id)a6
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v9 alloc];
  v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, v10, &v22);

  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v16, v15, *MEMORY[0x277CCA450], v11, *MEMORY[0x277CCA7E8], 0);

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, v12, a4, v17);

  return v19;
}

+ (id)errorForNSError:(id)a3 path:(id)a4 format:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, v8, &v23);

  v15 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v14, v13, *MEMORY[0x277CCA450], v10, *MEMORY[0x277CCA7E8], v9, *MEMORY[0x277CCA170], 0);

  v16 = MEMORY[0x277CCA9B8];
  v18 = objc_msgSend_codeForNSError_(CloudServicesError, v17, v10);

  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, @"CloudServicesErrorDomain", v18, v15);

  return v20;
}

@end