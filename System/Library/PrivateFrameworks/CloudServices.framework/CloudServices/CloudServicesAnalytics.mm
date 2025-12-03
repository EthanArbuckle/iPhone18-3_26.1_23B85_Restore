@interface CloudServicesAnalytics
+ (id)logger;
- (void)logSuccessForEvent:(id)event;
- (void)logUnrecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes;
@end

@implementation CloudServicesAnalytics

+ (id)logger
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CloudServicesAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

- (void)logSuccessForEvent:(id)event
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", event);
  objc_msgSend_logSuccessForEventNamed_(self, v4, v5);
}

- (void)logUnrecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes
{
  v28[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  attributesCopy = attributes;
  if (error)
  {
    v27[0] = @"errorDomain";
    errorCopy = error;
    v13 = objc_msgSend_domain(errorCopy, v11, v12);
    v27[1] = @"errorCode";
    v28[0] = v13;
    v14 = MEMORY[0x277CCABB0];
    v17 = objc_msgSend_code(errorCopy, v15, v16);

    v19 = objc_msgSend_numberWithInteger_(v14, v18, v17);
    v28[1] = v19;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v28, v27, 2);

    if (attributesCopy)
    {
      v24 = objc_msgSend_mutableCopy(attributesCopy, v22, v23);
      objc_msgSend_setValuesForKeysWithDictionary_(v24, v25, v21);

      v21 = v24;
    }

    objc_msgSend_logHardFailureForEventNamed_withAttributes_(self, v22, eventCopy, v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end