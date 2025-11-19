@interface IMDPersistentTask
+ (id)_dataForUserInfo:(id)a3;
+ (id)_decodeUserInfoData:(id)a3;
+ (id)keyPathsToColumns;
- (IMDPersistentTask)initWithCoder:(id)a3;
- (IMDPersistentTask)initWithGUID:(id)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 reason:(int64_t)a6 userInfo:(id)a7 retryCount:(int64_t)a8;
- (IMDPersistentTask)initWithGUIDForSpotlight:(id)a3 flag:(unint64_t)a4 context:(id)a5;
- (IMDPersistentTask)initWithRowID:(int64_t)a3 guid:(id)a4 group:(unint64_t)a5 flag:(unint64_t)a6 flagPriority:(int64_t)a7 lane:(unint64_t)a8 reason:(int64_t)a9 reasonPriority:(int64_t)a10 userInfo:(id)a11 retryCount:(int64_t)a12;
- (IMDPersistentTask)initWithStoreDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMDPersistentTask

- (IMDPersistentTask)initWithRowID:(int64_t)a3 guid:(id)a4 group:(unint64_t)a5 flag:(unint64_t)a6 flagPriority:(int64_t)a7 lane:(unint64_t)a8 reason:(int64_t)a9 reasonPriority:(int64_t)a10 userInfo:(id)a11 retryCount:(int64_t)a12
{
  v19 = a4;
  v20 = a11;
  v24.receiver = self;
  v24.super_class = IMDPersistentTask;
  v21 = [(IMDPersistentTask *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_rowID = a3;
    objc_storeStrong(&v21->_guid, a4);
    v22->_group = a5;
    v22->_flag = a6;
    v22->_flagPriority = a7;
    v22->_lane = a8;
    v22->_reason = a9;
    v22->_reasonPriority = a10;
    objc_storeStrong(&v22->_userInfo, a11);
    v22->_retryCount = a12;
  }

  return v22;
}

- (IMDPersistentTask)initWithGUID:(id)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 reason:(int64_t)a6 userInfo:(id)a7 retryCount:(int64_t)a8
{
  v14 = a7;
  v15 = a3;
  v17 = objc_msgSend_groupForFlag_(IMDPersistentTaskUtilities, v16, a4);
  v19 = objc_msgSend_priorityForFlag_(IMDPersistentTaskUtilities, v18, a4);
  v21 = objc_msgSend_priorityForReason_flag_(IMDPersistentTaskUtilities, v20, a6, a4);
  v23 = objc_msgSend_initWithRowID_guid_group_flag_flagPriority_lane_reason_reasonPriority_userInfo_retryCount_(self, v22, -1, v15, v17, a4, v19, a5, a6, v21, v14, a8);

  return v23;
}

- (IMDPersistentTask)initWithCoder:(id)a3
{
  v3 = a3;
  v28 = objc_msgSend_decodeIntegerForKey_(v3, v4, @"r");
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v6, v5, @"g");
  v27 = objc_msgSend_decodeIntegerForKey_(v3, v8, @"fg");
  v10 = objc_msgSend_decodeIntegerForKey_(v3, v9, @"f");
  v12 = objc_msgSend_decodeIntegerForKey_(v3, v11, @"fp");
  v14 = objc_msgSend_decodeIntegerForKey_(v3, v13, @"l");
  v16 = objc_msgSend_decodeIntegerForKey_(v3, v15, @"s");
  v18 = objc_msgSend_decodeIntegerForKey_(v3, v17, @"sp");
  v19 = IMGetAttributedInfoArrayAllowlistedClasses();
  v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v20, v19, @"u");
  v23 = objc_msgSend_decodeIntegerForKey_(v3, v22, @"c");

  v25 = objc_msgSend_initWithRowID_guid_group_flag_flagPriority_lane_reason_reasonPriority_userInfo_retryCount_(self, v24, v28, v7, v27, v10, v12, v14, v16, v18, v21, v23);
  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  rowID = self->_rowID;
  v17 = v4;
  if (rowID)
  {
    objc_msgSend_encodeInteger_forKey_(v4, v5, rowID, @"r");
    v4 = v17;
  }

  objc_msgSend_encodeObject_forKey_(v4, v5, self->_guid, @"g");
  group = self->_group;
  if (group)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v7, group, @"fg");
  }

  flag = self->_flag;
  if (flag)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v7, flag, @"f");
  }

  flagPriority = self->_flagPriority;
  if (flagPriority)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v7, flagPriority, @"fp");
  }

  lane = self->_lane;
  if (lane)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v7, lane, @"l");
  }

  reason = self->_reason;
  if (reason)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v7, reason, @"s");
  }

  reasonPriority = self->_reasonPriority;
  if (reasonPriority)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v7, reasonPriority, @"sp");
  }

  if (objc_msgSend_count(self->_userInfo, v7, reasonPriority))
  {
    objc_msgSend_encodeObject_forKey_(v17, v14, self->_userInfo, @"u");
  }

  retryCount = self->_retryCount;
  v16 = v17;
  if (retryCount)
  {
    objc_msgSend_encodeInteger_forKey_(v17, v14, retryCount, @"c");
    v16 = v17;
  }
}

- (IMDPersistentTask)initWithStoreDictionary:(id)a3
{
  v3 = a3;
  v53 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"ROWID");
  v49 = objc_msgSend_integerValue(v53, v5, v6);
  v47 = objc_msgSend_objectForKeyedSubscript_(v3, v7, @"guid");
  v52 = objc_msgSend_objectForKeyedSubscript_(v3, v8, @"flag_group");
  v46 = objc_msgSend_integerValue(v52, v9, v10);
  v50 = objc_msgSend_objectForKeyedSubscript_(v3, v11, @"flag");
  v45 = objc_msgSend_integerValue(v50, v12, v13);
  v48 = objc_msgSend_objectForKeyedSubscript_(v3, v14, @"flag_priority");
  v44 = objc_msgSend_integerValue(v48, v15, v16);
  v18 = objc_msgSend_objectForKeyedSubscript_(v3, v17, @"lane");
  v21 = objc_msgSend_integerValue(v18, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(v3, v22, @"reason");
  v26 = objc_msgSend_integerValue(v23, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(v3, v27, @"reason_priority");
  v31 = objc_msgSend_integerValue(v28, v29, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v3, v32, @"user_info");
  v35 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v34, v33);
  v37 = objc_msgSend_objectForKeyedSubscript_(v3, v36, @"retry_count");

  v40 = objc_msgSend_integerValue(v37, v38, v39);
  v42 = objc_msgSend_initWithRowID_guid_group_flag_flagPriority_lane_reason_reasonPriority_userInfo_retryCount_(self, v41, v49, v47, v46, v45, v44, v21, v26, v31, v35, v40);

  return v42;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_flag(self, a2, v2);
  v7 = objc_msgSend_nameForFlag_(IMDPersistentTaskUtilities, v6, v5);
  v10 = objc_msgSend_reason(self, v8, v9);
  v13 = objc_msgSend_flag(self, v11, v12);
  v15 = objc_msgSend_nameForReason_inFlag_(IMDPersistentTaskUtilities, v14, v10, v13);
  v17 = objc_msgSend_stringWithFormat_(v4, v16, @"<IMDPersistentTask: %p flag=%@ reason=%@>", self, v7, v15);

  return v17;
}

+ (id)_decodeUserInfoData:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5))
  {
    v11 = 0;
    v7 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v6, v3, 0, 0, &v11);
    v8 = v7;
    v9 = 0;
    if (!v11)
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_dataForUserInfo:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v12 = 0;
    v7 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v6, v3, 200, 0, &v12);
    v8 = v12;
    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE480(v8, v9);
      }

      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5AF8 != -1)
  {
    sub_1B7CEE4F8();
  }

  v3 = qword_1EDBE5B20;

  return v3;
}

- (IMDPersistentTask)initWithGUIDForSpotlight:(id)a3 flag:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v12 = objc_msgSend_laneOverride(v8, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_laneOverride(v8, v13, v14);
    v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);
  }

  else
  {
    v21 = objc_msgSend_reason(v8, v13, v14);
    v18 = objc_msgSend_laneForFlag_reason_(IMDPersistentTaskUtilities, v22, a4, v21);
  }

  v23 = objc_msgSend_reason(v8, v19, v20);
  v26 = objc_msgSend_dictionaryRepresentation(v8, v24, v25);
  v28 = objc_msgSend_initWithGUID_flag_lane_reason_userInfo_retryCount_(self, v27, v9, a4, v18, v23, v26, 0);

  return v28;
}

@end