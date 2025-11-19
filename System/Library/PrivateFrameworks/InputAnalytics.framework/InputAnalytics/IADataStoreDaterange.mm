@interface IADataStoreDaterange
- (BOOL)_clearWithMask:(int64_t)a3;
- (BOOL)_updateStartDate;
- (BOOL)destroy;
- (BOOL)markToday;
- (BOOL)persist;
- (id)timesUsedInDayRangeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (unint64_t)bitmaskForLessThanDayN:(unint64_t)a3;
- (unint64_t)usageFrequency;
- (unint64_t)usedInDayRangeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)setOriginDate:(id)a3;
- (void)setStartDate:(id)a3;
@end

@implementation IADataStoreDaterange

- (BOOL)persist
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v31 = sub_1D4621008();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v31, v42);
    }

    goto LABEL_8;
  }

  v45.receiver = self;
  v45.super_class = IADataStoreDaterange;
  if (![(IADataStoreObject *)&v45 persist])
  {
    v31 = sub_1D4621008();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DFA4(self, v31, v43);
    }

LABEL_8:
    v41 = 0;
    goto LABEL_9;
  }

  v7 = objc_msgSend_defaultsHandle(v4, v5, v6);
  v10 = objc_msgSend_originDate(self, v8, v9);
  v13 = objc_msgSend_name(self, v11, v12);
  v15 = objc_msgSend_stringByAppendingString_(v13, v14, @"_originDate");
  objc_msgSend_setObject_forKey_(v7, v16, v10, v15);

  v19 = objc_msgSend_defaultsHandle(v4, v17, v18);
  v22 = objc_msgSend_startDate(self, v20, v21);
  v25 = objc_msgSend_name(self, v23, v24);
  v27 = objc_msgSend_stringByAppendingString_(v25, v26, @"_startDate");
  objc_msgSend_setObject_forKey_(v19, v28, v22, v27);

  v31 = objc_msgSend_defaultsHandle(v4, v29, v30);
  v34 = objc_msgSend_bitfield(self, v32, v33);
  v37 = objc_msgSend_name(self, v35, v36);
  v39 = objc_msgSend_stringByAppendingString_(v37, v38, @"_bitfield");
  objc_msgSend_setInteger_forKey_(v31, v40, v34, v39);

  v41 = 1;
LABEL_9:

  return v41;
}

- (BOOL)destroy
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v25 = sub_1D4621008();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v25, v33);
    }

    goto LABEL_8;
  }

  v36.receiver = self;
  v36.super_class = IADataStoreDaterange;
  if (![(IADataStoreObject *)&v36 destroy])
  {
    v25 = sub_1D4621008();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E028(self, v25, v34);
    }

LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }

  v7 = objc_msgSend_defaultsHandle(v4, v5, v6);
  v10 = objc_msgSend_name(self, v8, v9);
  v12 = objc_msgSend_stringByAppendingString_(v10, v11, @"_originDate");
  objc_msgSend_removeObjectForKey_(v7, v13, v12);

  v16 = objc_msgSend_defaultsHandle(v4, v14, v15);
  v19 = objc_msgSend_name(self, v17, v18);
  v21 = objc_msgSend_stringByAppendingString_(v19, v20, @"_startDate");
  objc_msgSend_removeObjectForKey_(v16, v22, v21);

  v25 = objc_msgSend_defaultsHandle(v4, v23, v24);
  v28 = objc_msgSend_name(self, v26, v27);
  v30 = objc_msgSend_stringByAppendingString_(v28, v29, @"_bitfield");
  objc_msgSend_removeObjectForKey_(v25, v31, v30);

  v32 = 1;
LABEL_9:

  return v32;
}

- (unint64_t)usedInDayRangeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v4 = objc_msgSend_timesUsedInDayRangeFrom_to_(self, a2, a3, a4);
  v7 = v4;
  if (v4)
  {
    if (objc_msgSend_unsignedLongValue(v4, v5, v6))
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)usageFrequency
{
  v4 = objc_msgSend_now(MEMORY[0x1E695DF00], a2, v2);
  v7 = objc_msgSend_originDate(self, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v4, v8, v7);
  v10 = v9;

  if (v10 >= 2505600.0)
  {
    v13 = objc_msgSend_timesUsedInDayRangeFrom_to_(self, v11, 1, 29);
    v16 = v13;
    if (v13)
    {
      if (objc_msgSend_unsignedLongValue(v13, v14, v15) == 28)
      {
        v12 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v20 = objc_msgSend_usedInDayRangeFrom_to_(self, v17, 1, 8);
      v22 = objc_msgSend_usedInDayRangeFrom_to_(self, v21, 8, 15);
      v24 = objc_msgSend_usedInDayRangeFrom_to_(self, v23, 15, 22);
      v26 = objc_msgSend_usedInDayRangeFrom_to_(self, v25, 22, 29);
      if (v20 && v22 && v24 && v26)
      {
        if (v20 == 2 && v22 == 2 && v24 == 2 && v26 == 2)
        {
          v12 = 2;
          goto LABEL_20;
        }

        v30 = objc_msgSend_usedInDayRangeFrom_to_(self, v27, 1, 29);
        if (v30 == 2)
        {
          v12 = 3;
          goto LABEL_20;
        }

        if (v30)
        {
          v12 = 4;
          goto LABEL_20;
        }

        v18 = sub_1D4621008();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1D462E130(self, v18, v31);
        }
      }

      else
      {
        v18 = sub_1D4621008();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1D462E1B4(self, v18, v28);
        }
      }
    }

    else
    {
      v18 = sub_1D4621008();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1D462E238(self, v18, v19);
      }
    }

    v12 = 5;
    goto LABEL_20;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (unint64_t)bitmaskForLessThanDayN:(unint64_t)a3
{
  if (a3 <= 0x1F)
  {
    return ~(-1 << a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

- (id)timesUsedInDayRangeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (a4 < a3)
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_msgSend_name(self, v8, v9);
      v24 = 138478339;
      v25 = v10;
      v26 = 2048;
      v27 = a4;
      v28 = 2048;
      v29 = a3;
      _os_log_fault_impl(&dword_1D460F000, v7, OS_LOG_TYPE_FAULT, "Daterange with name %{private}@ requires endDayNumber (%lu) >= startDayNumber (%lu)", &v24, 0x20u);
    }

LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

  if ((objc_msgSend__updateStartDate(self, a2, a3) & 1) == 0)
  {
    v7 = sub_1D4621008();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E2BC(self, v7, v21);
    }

    goto LABEL_10;
  }

  v12 = objc_msgSend_bitmaskForDayRangeFrom_to_(self, v11, a3, a4);
  v16 = vdup_n_s32(objc_msgSend_bitfield(self, v13, v14) & v12);
  v17 = 0x100000000;
  v18 = 0uLL;
  v19 = 32;
  do
  {
    v18 = vaddw_u32(v18, vand_s8(vshl_u32(v16, vneg_s32(v17)), 0x100000001));
    v17 = vadd_s32(v17, 0x200000002);
    v19 -= 2;
  }

  while (v19);
  v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v15, vaddvq_s64(v18));
LABEL_11:
  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)_updateStartDate
{
  v4 = objc_msgSend_now(MEMORY[0x1E695DF00], a2, v2);
  v7 = objc_msgSend_startDate(self, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v4, v8, v7);
  v10 = v9;

  v13 = (v10 / 86400.0);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v15 = sub_1D4621008();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E340(self, v15, v16);
    }

    v14 = 0;
  }

  else
  {
    if (v13)
    {
      if (v13 < 0x20)
      {
        v17 = objc_msgSend_bitfield(self, v11, v12) > (0x80000000 >> v13) - 1;
        self->_bitfield = (objc_msgSend_bitfield(self, v18, v19) << v13) | (v17 << 31);
        v20 = MEMORY[0x1E695DF00];
        v23 = objc_msgSend_startDate(self, v21, v22);
        v25 = objc_msgSend_dateWithTimeInterval_sinceDate_(v20, v24, v23, v13 * 86400.0);
        startDate = self->_startDate;
        self->_startDate = v25;

        v14 = objc_msgSend_persist(self, v27, v28);
        goto LABEL_10;
      }

      self->_bitfield = (objc_msgSend_bitfield(self, v11, v12) != 0) << 31;
    }

    v14 = 1;
  }

LABEL_10:

  return v14;
}

- (BOOL)markToday
{
  if (objc_msgSend__updateStartDate(self, a2, v2))
  {
    self->_bitfield = objc_msgSend_bitfield(self, v4, v5) | 1;

    return objc_msgSend_persist(self, v6, v7);
  }

  else
  {
    v9 = sub_1D4621008();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E2BC(self, v9, v10);
    }

    return 0;
  }
}

- (BOOL)_clearWithMask:(int64_t)a3
{
  v3 = a3;
  updated = objc_msgSend__updateStartDate(self, a2, a3);
  if (updated)
  {
    self->_bitfield &= v3;
  }

  else
  {
    v6 = sub_1D4621008();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E2BC(self, v6, v7);
    }
  }

  return updated;
}

- (void)setStartDate:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  startDate = self->_startDate;
  self->_startDate = v4;

  MEMORY[0x1EEE66BB8](v4, startDate);
}

- (void)setOriginDate:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  originDate = self->_originDate;
  self->_originDate = v4;

  MEMORY[0x1EEE66BB8](v4, originDate);
}

@end