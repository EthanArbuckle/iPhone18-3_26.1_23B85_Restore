@interface CloudServicesAnalytics
+ (id)logger;
- (void)logSuccessForEvent:(id)a3;
- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5;
@end

@implementation CloudServicesAnalytics

+ (id)logger
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CloudServicesAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

- (void)logSuccessForEvent:(id)a3
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", a3);
  objc_msgSend_logSuccessForEventNamed_(self, v4, v5);
}

- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5
{
  v28[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v27[0] = @"errorDomain";
    v10 = a3;
    v13 = objc_msgSend_domain(v10, v11, v12);
    v27[1] = @"errorCode";
    v28[0] = v13;
    v14 = MEMORY[0x277CCABB0];
    v17 = objc_msgSend_code(v10, v15, v16);

    v19 = objc_msgSend_numberWithInteger_(v14, v18, v17);
    v28[1] = v19;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v28, v27, 2);

    if (v9)
    {
      v24 = objc_msgSend_mutableCopy(v9, v22, v23);
      objc_msgSend_setValuesForKeysWithDictionary_(v24, v25, v21);

      v21 = v24;
    }

    objc_msgSend_logHardFailureForEventNamed_withAttributes_(self, v22, v8, v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end