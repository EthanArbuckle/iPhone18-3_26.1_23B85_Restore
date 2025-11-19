@interface IMDIndexingContext
+ (IMDIndexingContext)contextWithReason:(int64_t)a3;
- (IMDIndexingContext)initWithCoder:(id)a3;
- (IMDIndexingContext)initWithDictionary:(id)a3;
- (id)_initForReindexing:(BOOL)a3 reason:(int64_t)a4 runningViaBGST:(BOOL)a5 fullReindex:(BOOL)a6 messagesContributingToFullReindex:(int64_t)a7 chatsContributingToFullReindex:(int64_t)a8 oldestFullReindexMessageGUID:(id)a9 preflight:(BOOL)a10 ignoreRejections:(BOOL)a11 ignoreThrottle:(BOOL)a12 forceDeferral:(BOOL)a13 laneOverride:(id)a14 needsPriorityCheck:(BOOL)a15 additionalReasons:(id)a16;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)initForReindexing:(BOOL)a3 reason:(int64_t)a4 runningViaBGST:(BOOL)a5 userInfo:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMDIndexingContext

- (IMDIndexingContext)initWithCoder:(id)a3
{
  v3 = a3;
  v39 = objc_msgSend_decodeBoolForKey_(v3, v4, @"ri");
  v38 = objc_msgSend_decodeIntegerForKey_(v3, v5, @"r");
  v37 = objc_msgSend_decodeBoolForKey_(v3, v6, @"b");
  v36 = objc_msgSend_decodeBoolForKey_(v3, v7, @"f");
  v35 = objc_msgSend_decodeIntegerForKey_(v3, v8, @"m");
  v10 = objc_msgSend_decodeIntegerForKey_(v3, v9, @"c");
  v11 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v12, v11, @"o");
  v15 = objc_msgSend_decodeBoolForKey_(v3, v14, @"p");
  v17 = objc_msgSend_decodeBoolForKey_(v3, v16, @"i");
  v19 = objc_msgSend_decodeBoolForKey_(v3, v18, @"t");
  v21 = objc_msgSend_decodeBoolForKey_(v3, v20, @"d");
  v22 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v23, v22, @"l");
  v26 = objc_msgSend_decodeBoolForKey_(v3, v25, @"np");
  v27 = objc_opt_class();
  v29 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v3, v28, v27, @"a");

  v34 = v26;
  HIBYTE(v33) = v21;
  BYTE2(v33) = v19;
  BYTE1(v33) = v17;
  LOBYTE(v33) = v15;
  v31 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(self, v30, v39, v38, v37, v36, v35, v10, v13, v33, v24, v34, v29);

  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_reindexing)
  {
    objc_msgSend_encodeBool_forKey_(v4, v5, 1, @"ri");
    v4 = v12;
  }

  reason = self->_reason;
  if (reason)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, reason, @"r");
    v4 = v12;
  }

  if (self->_runningViaBGST)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"b");
    v4 = v12;
  }

  if (self->_fullReindex)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"f");
    v4 = v12;
  }

  messagesContributingToFullReindex = self->_messagesContributingToFullReindex;
  if (messagesContributingToFullReindex)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, messagesContributingToFullReindex, @"m");
    v4 = v12;
  }

  chatsContributingToFullReindex = self->_chatsContributingToFullReindex;
  if (chatsContributingToFullReindex)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, chatsContributingToFullReindex, @"c");
    v4 = v12;
  }

  oldestFullReindexMessageGUID = self->_oldestFullReindexMessageGUID;
  if (oldestFullReindexMessageGUID)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, oldestFullReindexMessageGUID, @"o");
    v4 = v12;
  }

  if (self->_preflight)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"p");
    v4 = v12;
  }

  if (self->_ignoreRejections)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"i");
    v4 = v12;
  }

  if (self->_ignoreThrottle)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"t");
    v4 = v12;
  }

  if (self->_forceDeferral)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"d");
    v4 = v12;
  }

  laneOverride = self->_laneOverride;
  if (laneOverride)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, laneOverride, @"l");
    v4 = v12;
  }

  if (self->_needsPriorityCheck)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"np");
    v4 = v12;
  }

  additionalReasons = self->_additionalReasons;
  if (additionalReasons)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, additionalReasons, @"a");
    v4 = v12;
  }
}

+ (IMDIndexingContext)contextWithReason:(int64_t)a3
{
  v4 = [IMDIndexingContext alloc];
  v6 = objc_msgSend_initForReindexing_reason_(v4, v5, 0, a3);

  return v6;
}

- (id)_initForReindexing:(BOOL)a3 reason:(int64_t)a4 runningViaBGST:(BOOL)a5 fullReindex:(BOOL)a6 messagesContributingToFullReindex:(int64_t)a7 chatsContributingToFullReindex:(int64_t)a8 oldestFullReindexMessageGUID:(id)a9 preflight:(BOOL)a10 ignoreRejections:(BOOL)a11 ignoreThrottle:(BOOL)a12 forceDeferral:(BOOL)a13 laneOverride:(id)a14 needsPriorityCheck:(BOOL)a15 additionalReasons:(id)a16
{
  v20 = a9;
  v21 = a14;
  v22 = a16;
  v29.receiver = self;
  v29.super_class = IMDIndexingContext;
  v23 = [(IMDIndexingContext *)&v29 init];
  v24 = v23;
  if (v23)
  {
    v23->_reindexing = a3;
    v23->_runningViaBGST = a5;
    v23->_fullReindex = a6;
    v23->_reason = a4;
    v23->_messagesContributingToFullReindex = a7;
    v23->_chatsContributingToFullReindex = a8;
    objc_storeStrong(&v23->_oldestFullReindexMessageGUID, a9);
    v24->_preflight = a10;
    v24->_ignoreRejections = a11;
    v24->_ignoreThrottle = a12;
    v24->_forceDeferral = a13;
    objc_storeStrong(&v24->_laneOverride, a14);
    v24->_needsPriorityCheck = a15;
    objc_storeStrong(&v24->_additionalReasons, a16);
  }

  return v24;
}

- (id)initForReindexing:(BOOL)a3 reason:(int64_t)a4 runningViaBGST:(BOOL)a5 userInfo:(id)a6
{
  result = objc_msgSend_initWithDictionary_(self, a2, a6);
  if (result)
  {
    *(result + 8) = a3;
    *(result + 2) = a4;
    *(result + 9) = a5;
  }

  return result;
}

- (IMDIndexingContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"f");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"np");
  v14 = objc_msgSend_BOOLValue(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v4, v15, @"a");

  v21 = v14;
  v20 = 0;
  v18 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(self, v17, 0, 0, 0, v9, 0, 0, 0, v20, 0, v21, v16);

  return v18;
}

- (id)dictionaryRepresentation
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_fullReindex)
  {
    v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v3, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v7, v6, @"f");
  }

  if (self->_needsPriorityCheck)
  {
    v8 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v3, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v8, @"np");
  }

  if (objc_msgSend_count(self->_additionalReasons, v3, v4))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v5, v10, self->_additionalReasons, @"a");
  }

  if (objc_msgSend_count(v5, v10, v11))
  {
    v14 = objc_msgSend_copy(v5, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = [IMDIndexingContext alloc];
  reindexing = self->_reindexing;
  runningViaBGST = self->_runningViaBGST;
  fullReindex = self->_fullReindex;
  reason = self->_reason;
  messagesContributingToFullReindex = self->_messagesContributingToFullReindex;
  chatsContributingToFullReindex = self->_chatsContributingToFullReindex;
  oldestFullReindexMessageGUID = self->_oldestFullReindexMessageGUID;
  v10 = *&self->_preflight;
  needsPriorityCheck = self->_needsPriorityCheck;
  laneOverride = self->_laneOverride;
  v15 = objc_msgSend_copy(self->_additionalReasons, v13, v14);
  v20 = needsPriorityCheck;
  v19 = v10;
  v17 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(v22, v16, reindexing, reason, runningViaBGST, fullReindex, messagesContributingToFullReindex, chatsContributingToFullReindex, oldestFullReindexMessageGUID, v19, laneOverride, v20, v15);

  return v17;
}

@end