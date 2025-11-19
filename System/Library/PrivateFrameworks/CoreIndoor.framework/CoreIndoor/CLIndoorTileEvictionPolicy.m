@interface CLIndoorTileEvictionPolicy
- (BOOL)tileLastModified:(double)a3 needsEvictionAt:(double)a4;
- (CLIndoorTileEvictionPolicy)init;
- (CLIndoorTileEvictionPolicy)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLIndoorTileEvictionPolicy

- (CLIndoorTileEvictionPolicy)init
{
  v7.receiver = self;
  v7.super_class = CLIndoorTileEvictionPolicy;
  v2 = [(CLIndoorTileEvictionPolicy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_forceClean = 0;
    activity = v2->_activity;
    v2->_maxModifiedAge = 604800.0;
    v2->_activity = 0;

    v5 = v3;
  }

  return v3;
}

- (CLIndoorTileEvictionPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CLIndoorTileEvictionPolicy;
  v6 = [(CLIndoorTileEvictionPolicy *)&v17 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(v4, v5, v7, v8, v9, @"_maxModifiedAge");
    v6->_maxModifiedAge = v10;
    v6->_forceClean = objc_msgSend_decodeBoolForKey_(v4, v11, v10, v12, v13, @"_forceClean");
    activity = v6->_activity;
    v6->_activity = 0;

    v15 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  objc_msgSend_encodeDouble_forKey_(v11, v4, self->_maxModifiedAge, v5, v6, @"_maxModifiedAge");
  LOBYTE(v7) = self->_forceClean;
  objc_msgSend_encodeDouble_forKey_(v11, v8, v7, v9, v10, @"_forceClean");
}

- (BOOL)tileLastModified:(double)a3 needsEvictionAt:(double)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (qword_27EE33010 != -1)
  {
    sub_245A8F2E8();
    v7 = qword_27EE33018;
    if (os_log_type_enabled(qword_27EE33018, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = a4 - a3;
    goto LABEL_6;
  }

  v7 = qword_27EE33018;
  if (!os_log_type_enabled(qword_27EE33018, OS_LOG_TYPE_INFO))
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = a4 - a3;
  maxModifiedAge = self->_maxModifiedAge;
  v12 = 134350080;
  v13 = a4;
  v14 = 2050;
  v15 = a3;
  v16 = 2050;
  v17 = a4 - a3;
  v18 = 2050;
  v19 = maxModifiedAge;
  v20 = 1024;
  v21 = a4 - a3 >= maxModifiedAge;
  _os_log_impl(&dword_245A2E000, v7, OS_LOG_TYPE_INFO, "@EvictCheck, modified, %{public}.1f, %{public}.1f, ages, %{public}.1f, %{public}.1f, evict, %d", &v12, 0x30u);
LABEL_6:
  result = v8 >= self->_maxModifiedAge;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v4 = @"NO";
  if (self->_forceClean)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_activity)
  {
    v4 = @"YES";
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, self->_maxModifiedAge, v2, v3, @"CLIndoorTileEvictionPolicy[maxModifiedAge=%lfs,forceClean=%@,xpc_activity=%@]", *&self->_maxModifiedAge, v5, v4);
}

@end