@interface IMDIndexingContext
+ (IMDIndexingContext)contextWithReason:(int64_t)reason;
- (IMDIndexingContext)initWithCoder:(id)coder;
- (IMDIndexingContext)initWithDictionary:(id)dictionary;
- (id)_initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t fullReindex:(BOOL)reindex messagesContributingToFullReindex:(int64_t)fullReindex chatsContributingToFullReindex:(int64_t)toFullReindex oldestFullReindexMessageGUID:(id)d preflight:(BOOL)self0 ignoreRejections:(BOOL)self1 ignoreThrottle:(BOOL)self2 forceDeferral:(BOOL)self3 laneOverride:(id)self4 needsPriorityCheck:(BOOL)self5 additionalReasons:(id)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t userInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMDIndexingContext

- (IMDIndexingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39 = objc_msgSend_decodeBoolForKey_(coderCopy, v4, @"ri");
  v38 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"r");
  v37 = objc_msgSend_decodeBoolForKey_(coderCopy, v6, @"b");
  v36 = objc_msgSend_decodeBoolForKey_(coderCopy, v7, @"f");
  v35 = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"m");
  v10 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"c");
  v11 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"o");
  v15 = objc_msgSend_decodeBoolForKey_(coderCopy, v14, @"p");
  v17 = objc_msgSend_decodeBoolForKey_(coderCopy, v16, @"i");
  v19 = objc_msgSend_decodeBoolForKey_(coderCopy, v18, @"t");
  v21 = objc_msgSend_decodeBoolForKey_(coderCopy, v20, @"d");
  v22 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"l");
  v26 = objc_msgSend_decodeBoolForKey_(coderCopy, v25, @"np");
  v27 = objc_opt_class();
  v29 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v28, v27, @"a");

  v34 = v26;
  HIBYTE(v33) = v21;
  BYTE2(v33) = v19;
  BYTE1(v33) = v17;
  LOBYTE(v33) = v15;
  v31 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(self, v30, v39, v38, v37, v36, v35, v10, v13, v33, v24, v34, v29);

  return v31;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = coderCopy;
  if (self->_reindexing)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v5, 1, @"ri");
    coderCopy = v12;
  }

  reason = self->_reason;
  if (reason)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, reason, @"r");
    coderCopy = v12;
  }

  if (self->_runningViaBGST)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"b");
    coderCopy = v12;
  }

  if (self->_fullReindex)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"f");
    coderCopy = v12;
  }

  messagesContributingToFullReindex = self->_messagesContributingToFullReindex;
  if (messagesContributingToFullReindex)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, messagesContributingToFullReindex, @"m");
    coderCopy = v12;
  }

  chatsContributingToFullReindex = self->_chatsContributingToFullReindex;
  if (chatsContributingToFullReindex)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, chatsContributingToFullReindex, @"c");
    coderCopy = v12;
  }

  oldestFullReindexMessageGUID = self->_oldestFullReindexMessageGUID;
  if (oldestFullReindexMessageGUID)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, oldestFullReindexMessageGUID, @"o");
    coderCopy = v12;
  }

  if (self->_preflight)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"p");
    coderCopy = v12;
  }

  if (self->_ignoreRejections)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"i");
    coderCopy = v12;
  }

  if (self->_ignoreThrottle)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"t");
    coderCopy = v12;
  }

  if (self->_forceDeferral)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"d");
    coderCopy = v12;
  }

  laneOverride = self->_laneOverride;
  if (laneOverride)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, laneOverride, @"l");
    coderCopy = v12;
  }

  if (self->_needsPriorityCheck)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"np");
    coderCopy = v12;
  }

  additionalReasons = self->_additionalReasons;
  if (additionalReasons)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, additionalReasons, @"a");
    coderCopy = v12;
  }
}

+ (IMDIndexingContext)contextWithReason:(int64_t)reason
{
  v4 = [IMDIndexingContext alloc];
  v6 = objc_msgSend_initForReindexing_reason_(v4, v5, 0, reason);

  return v6;
}

- (id)_initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t fullReindex:(BOOL)reindex messagesContributingToFullReindex:(int64_t)fullReindex chatsContributingToFullReindex:(int64_t)toFullReindex oldestFullReindexMessageGUID:(id)d preflight:(BOOL)self0 ignoreRejections:(BOOL)self1 ignoreThrottle:(BOOL)self2 forceDeferral:(BOOL)self3 laneOverride:(id)self4 needsPriorityCheck:(BOOL)self5 additionalReasons:(id)self6
{
  dCopy = d;
  overrideCopy = override;
  reasonsCopy = reasons;
  v29.receiver = self;
  v29.super_class = IMDIndexingContext;
  v23 = [(IMDIndexingContext *)&v29 init];
  v24 = v23;
  if (v23)
  {
    v23->_reindexing = reindexing;
    v23->_runningViaBGST = t;
    v23->_fullReindex = reindex;
    v23->_reason = reason;
    v23->_messagesContributingToFullReindex = fullReindex;
    v23->_chatsContributingToFullReindex = toFullReindex;
    objc_storeStrong(&v23->_oldestFullReindexMessageGUID, d);
    v24->_preflight = preflight;
    v24->_ignoreRejections = rejections;
    v24->_ignoreThrottle = throttle;
    v24->_forceDeferral = deferral;
    objc_storeStrong(&v24->_laneOverride, override);
    v24->_needsPriorityCheck = check;
    objc_storeStrong(&v24->_additionalReasons, reasons);
  }

  return v24;
}

- (id)initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t userInfo:(id)info
{
  result = objc_msgSend_initWithDictionary_(self, a2, info);
  if (result)
  {
    *(result + 8) = reindexing;
    *(result + 2) = reason;
    *(result + 9) = t;
  }

  return result;
}

- (IMDIndexingContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"f");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, @"np");
  v14 = objc_msgSend_BOOLValue(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v15, @"a");

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

- (id)copyWithZone:(_NSZone *)zone
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