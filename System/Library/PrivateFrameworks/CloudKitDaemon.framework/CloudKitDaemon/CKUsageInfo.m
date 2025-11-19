@interface CKUsageInfo
+ (id)none;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNone;
- (CKUsageInfo)initWithCoder:(id)a3;
- (CKUsageInfo)initWithLastUsed:(id)a3;
- (CKUsageInfo)initWithLastUsed:(id)a3 lastSent:(id)a4 sending:(id)a5 failureCount:(unint64_t)a6;
- (CKUsageInfo)initWithUsageInfoEntry:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)startSendingWithResendingRefreshInterval:(double)a3 maxFailureCount:(unint64_t)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)completeSendingForDate:(id)a3 withSuccess:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKUsageInfo

- (CKUsageInfo)initWithUsageInfoEntry:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_lastUsed(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_lastUsed(v4, v8, v9);
    v13 = objc_msgSend_lastSent(v4, v11, v12);
    v16 = objc_msgSend_sending(v4, v14, v15);
    v19 = objc_msgSend_failureCount(v4, v17, v18);
    self = objc_msgSend_initWithLastUsed_lastSent_sending_failureCount_(self, v20, v10, v13, v16, v19);

    v7 = self;
  }

  return v7;
}

+ (id)none
{
  if (qword_280D58118 != -1)
  {
    dispatch_once(&qword_280D58118, &unk_28385CBA0);
  }

  v3 = qword_280D58120;

  return v3;
}

- (CKUsageInfo)initWithLastUsed:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKUsageInfo;
  v7 = [(CKUsageInfo *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    lastUsed = v7->_lastUsed;
    v7->_lastUsed = v8;
  }

  return v7;
}

- (CKUsageInfo)initWithLastUsed:(id)a3 lastSent:(id)a4 sending:(id)a5 failureCount:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27.receiver = self;
  v27.super_class = CKUsageInfo;
  v15 = [(CKUsageInfo *)&v27 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(v11, v13, v14);
    lastSent = v15->_lastSent;
    v15->_lastSent = v16;

    v20 = objc_msgSend_copy(v10, v18, v19);
    lastUsed = v15->_lastUsed;
    v15->_lastUsed = v20;

    v24 = objc_msgSend_copy(v12, v22, v23);
    sending = v15->_sending;
    v15->_sending = v24;

    v15->_failureCount = a6;
  }

  return v15;
}

- (BOOL)isNone
{
  v4 = objc_msgSend_none(CKUsageInfo, a2, v2);
  LOBYTE(self) = objc_msgSend_isEqual_(self, v5, v4);

  return self;
}

- (id)startSendingWithResendingRefreshInterval:(double)a3 maxFailureCount:(unint64_t)a4
{
  v7 = objc_msgSend_sending(self, a2, a4);

  if (v7)
  {
    v10 = objc_msgSend_now(MEMORY[0x277CBEAA8], v8, v9);
    v13 = objc_msgSend_sending(self, v11, v12);
    objc_msgSend_timeIntervalSinceDate_(v10, v14, v13);
    v16 = v15;

    if (v16 <= a3)
    {

LABEL_6:
      v24 = 0;
      goto LABEL_8;
    }

    v19 = objc_msgSend_failureCount(self, v17, v18);
    objc_msgSend_setFailureCount_(self, v20, v19 + 1);
    objc_msgSend_setSending_(self, v21, 0);
  }

  if (objc_msgSend_failureCount(self, v8, v9) > a4)
  {
    goto LABEL_6;
  }

  v25 = objc_msgSend_lastUsed(self, v22, v23);
  objc_msgSend_setSending_(self, v26, v25);

  v24 = objc_msgSend_sending(self, v27, v28);
LABEL_8:

  return v24;
}

- (void)completeSendingForDate:(id)a3 withSuccess:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = objc_msgSend_sending(self, v7, v8);

  if (!v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v24 = 0;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "completeSendingForDate called when sending is nil", v24, 2u);
    }
  }

  v13 = objc_msgSend_sending(self, v10, v11);
  isEqualToDate = objc_msgSend_isEqualToDate_(v13, v14, v6);

  if (isEqualToDate)
  {
    if (v4)
    {
      v18 = objc_msgSend_sending(self, v16, v17);
      objc_msgSend_setLastSent_(self, v19, v18);

      objc_msgSend_setFailureCount_(self, v20, 0);
    }

    else
    {
      v22 = objc_msgSend_failureCount(self, v16, v17) + 1;
      objc_msgSend_setFailureCount_(self, v23, v22);
    }

    objc_msgSend_setSending_(self, v21, 0);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_lastUsed(self, v6, v7);
      v11 = objc_msgSend_lastUsed(v5, v9, v10);
      if (CKObjectsAreBothNilOrEqual())
      {
        v14 = objc_msgSend_lastSent(self, v12, v13);
        v17 = objc_msgSend_lastSent(v5, v15, v16);
        if (CKObjectsAreBothNilOrEqual())
        {
          v20 = objc_msgSend_sending(self, v18, v19);
          v23 = objc_msgSend_sending(v5, v21, v22);
          if (CKObjectsAreBothNilOrEqual())
          {
            v26 = objc_msgSend_failureCount(self, v24, v25);
            v29 = v26 == objc_msgSend_failureCount(v5, v27, v28);
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_lastSent(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v21, v8, v7, @"LastSent");

  v11 = objc_msgSend_lastUsed(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v21, v12, v11, @"LastUsed");

  v15 = objc_msgSend_sending(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v21, v16, v15, @"Sending");

  v19 = objc_msgSend_failureCount(self, v17, v18);
  objc_msgSend_encodeInteger_forKey_(v21, v20, v19, @"FailureCount");
  objc_autoreleasePoolPop(v4);
}

- (CKUsageInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CKUsageInfo;
  v5 = [(CKUsageInfo *)&v21 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"LastSent");
    lastSent = v5->_lastSent;
    v5->_lastSent = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"LastUsed");
    lastUsed = v5->_lastUsed;
    v5->_lastUsed = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"Sending");
    sending = v5->_sending;
    v5->_sending = v17;

    v5->_failureCount = objc_msgSend_decodeIntegerForKey_(v4, v19, @"FailureCount");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKUsageInfo alloc];
  v7 = objc_msgSend_lastUsed(self, v5, v6);
  Used = objc_msgSend_initWithLastUsed_(v4, v8, v7);

  v12 = objc_msgSend_lastSent(self, v10, v11);
  objc_msgSend_setLastSent_(Used, v13, v12);

  v16 = objc_msgSend_failureCount(self, v14, v15);
  objc_msgSend_setFailureCount_(Used, v17, v16);
  v20 = objc_msgSend_sending(self, v18, v19);
  objc_msgSend_setSending_(Used, v21, v20);

  return Used;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_lastSent(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v8, @"lastSent", v7, 0);

  v11 = objc_msgSend_lastUsed(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v12, @"lastUsed", v11, 0);

  v15 = objc_msgSend_sending(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v16, @"sending", v15, 0);

  v17 = MEMORY[0x277CCABB0];
  v20 = objc_msgSend_failureCount(self, v18, v19);
  v23 = objc_msgSend_numberWithUnsignedInteger_(v17, v21, v20);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v22, @"failureCount", v23, 0);
}

@end