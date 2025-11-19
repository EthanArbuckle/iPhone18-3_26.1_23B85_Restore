@interface CKLastSentCapabilitiesAndUsage
+ (id)none;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNone;
- (CKLastSentCapabilitiesAndUsage)initWithCapabilitySet:(id)a3 savedDate:(id)a4 usageSavedDate:(id)a5;
- (CKLastSentCapabilitiesAndUsage)initWithCoder:(id)a3;
- (CKLastSentCapabilitiesAndUsage)initWithLastSentCapabilitiesAndUsageEntry:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKLastSentCapabilitiesAndUsage

- (CKLastSentCapabilitiesAndUsage)initWithLastSentCapabilitiesAndUsageEntry:(id)a3
{
  v4 = MEMORY[0x277CBC2B0];
  v5 = a3;
  v8 = objc_msgSend_deviceCapabilityStringSet(v5, v6, v7);
  v10 = objc_msgSend_fromSqliteRepresentations_(v4, v9, v8);

  v13 = objc_msgSend_capabilitySetSavedDate(v5, v11, v12);
  v16 = objc_msgSend_usageSavedDate(v5, v14, v15);

  v18 = objc_msgSend_initWithCapabilitySet_savedDate_usageSavedDate_(self, v17, v10, v13, v16);
  return v18;
}

+ (id)none
{
  if (qword_280D58108 != -1)
  {
    dispatch_once(&qword_280D58108, &unk_28385CB80);
  }

  v3 = qword_280D58110;

  return v3;
}

- (CKLastSentCapabilitiesAndUsage)initWithCapabilitySet:(id)a3 savedDate:(id)a4 usageSavedDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKLastSentCapabilitiesAndUsage;
  v13 = [(CKLastSentCapabilitiesAndUsage *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    capabilitySet = v13->_capabilitySet;
    v13->_capabilitySet = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    capabilitySetSavedDate = v13->_capabilitySetSavedDate;
    v13->_capabilitySetSavedDate = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    usageSavedDate = v13->_usageSavedDate;
    v13->_usageSavedDate = v22;
  }

  return v13;
}

- (BOOL)isNone
{
  v4 = objc_msgSend_none(CKLastSentCapabilitiesAndUsage, a2, v2);
  LOBYTE(self) = objc_msgSend_isEqual_(self, v5, v4);

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v11 = objc_msgSend_capabilitySet(self, v7, v8);
      if (v11 || (objc_msgSend_capabilitySet(v6, v9, v10), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = MEMORY[0x277CBC2B0];
        v13 = objc_msgSend_capabilitySet(self, v9, v10);
        v16 = objc_msgSend_capabilitySet(v6, v14, v15);
        isCapabilitySet_equalTo = objc_msgSend_isCapabilitySet_equalTo_(v12, v17, v13, v16);

        if (v11)
        {

          if (isCapabilitySet_equalTo)
          {
            goto LABEL_7;
          }
        }

        else
        {

          if (isCapabilitySet_equalTo)
          {
            goto LABEL_7;
          }
        }

        v29 = 0;
LABEL_15:

        goto LABEL_16;
      }

LABEL_7:
      v19 = objc_msgSend_capabilitySetSavedDate(self, v9, v10);
      v22 = objc_msgSend_capabilitySetSavedDate(v6, v20, v21);
      if (CKObjectsAreBothNilOrEqual())
      {
        v25 = objc_msgSend_usageSavedDate(self, v23, v24);
        v28 = objc_msgSend_usageSavedDate(v6, v26, v27);
        v29 = CKObjectsAreBothNilOrEqual();
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_15;
    }

    v29 = 0;
  }

LABEL_16:

  return v29;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_capabilitySet(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v8, @"capabilitySet", v7, 0);

  v11 = objc_msgSend_capabilitySetSavedDate(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v12, @"capabilitySavedDate", v11, 0);

  v16 = objc_msgSend_usageSavedDate(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v15, @"usageSavedDate", v16, 0);
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_capabilitySet(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v17, v8, v7, @"CapabilitySet");

  v11 = objc_msgSend_capabilitySetSavedDate(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v17, v12, v11, @"CapabilitySavedDate");

  v15 = objc_msgSend_usageSavedDate(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v17, v16, v15, @"UsageSavedDate");

  objc_autoreleasePoolPop(v4);
}

- (CKLastSentCapabilitiesAndUsage)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CKLastSentCapabilitiesAndUsage;
  v5 = [(CKLastSentCapabilitiesAndUsage *)&v25 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v13, v12, @"CapabilitySet");
    capabilitySet = v5->_capabilitySet;
    v5->_capabilitySet = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"CapabilitySavedDate");
    capabilitySetSavedDate = v5->_capabilitySetSavedDate;
    v5->_capabilitySetSavedDate = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"UsageSavedDate");
    usageSavedDate = v5->_usageSavedDate;
    v5->_usageSavedDate = v22;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKLastSentCapabilitiesAndUsage alloc];
  v7 = objc_msgSend_capabilitySet(self, v5, v6);
  v10 = objc_msgSend_capabilitySetSavedDate(self, v8, v9);
  v13 = objc_msgSend_usageSavedDate(self, v11, v12);
  v15 = objc_msgSend_initWithCapabilitySet_savedDate_usageSavedDate_(v4, v14, v7, v10, v13);

  return v15;
}

@end