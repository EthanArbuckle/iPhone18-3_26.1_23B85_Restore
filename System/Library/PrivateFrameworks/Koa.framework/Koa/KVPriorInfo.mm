@interface KVPriorInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPriorInfo:(id)info;
- (KVPriorInfo)init;
- (KVPriorInfo)initWithCoder:(id)coder;
- (KVPriorInfo)initWithOrdinality:(unsigned int)ordinality score:(float)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KVPriorInfo

- (KVPriorInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = KVPriorInfo;
  v5 = [(KVPriorInfo *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"o", v8, v9);
    v5->_ordinality = objc_msgSend_unsignedIntValue(v10, v11, v12, v13, v14, v15);

    objc_msgSend_decodeFloatForKey_(coderCopy, v16, @"s", v17, v18, v19);
    v5->_score = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v4, self->_ordinality, v5, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"o", v10, v11);

  *&v12 = self->_score;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v13, @"s", v14, v15, v16, v12);
}

- (unint64_t)hash
{
  v6 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], a2, self->_ordinality, v2, v3, v4);
  v12 = objc_msgSend_hash(v6, v7, v8, v9, v10, v11);
  *&v13 = self->_score;
  v19 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v18, v13);
  v25 = objc_msgSend_hash(v19, v20, v21, v22, v23, v24);

  return v25 ^ v12;
}

- (BOOL)isEqualToPriorInfo:(id)info
{
  infoCopy = info;
  ordinality = self->_ordinality;
  if (ordinality == objc_msgSend_ordinality(infoCopy, v6, v7, v8, v9, v10))
  {
    score = self->_score;
    objc_msgSend_score(infoCopy, v11, v12, v13, v14, v15);
    v18 = score == v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToPriorInfo = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToPriorInfo = objc_msgSend_isEqualToPriorInfo_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToPriorInfo = 0;
  }

  return isEqualToPriorInfo;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = KVPriorInfo;
  v3 = [(KVPriorInfo *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" ordinality: %d, prior score: %f", v5, v6, v7, self->_ordinality, self->_score);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9);
  *(result + 2) = self->_ordinality;
  *(result + 3) = LODWORD(self->_score);
  return result;
}

- (KVPriorInfo)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

- (KVPriorInfo)initWithOrdinality:(unsigned int)ordinality score:(float)score
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = KVPriorInfo;
  v6 = [(KVPriorInfo *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  v6->_score = score;
  if (score >= 0.0 && score <= 1.0)
  {
    v6->_ordinality = ordinality;
LABEL_5:
    v8 = v6;
    goto LABEL_9;
  }

  v9 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[KVPriorInfo initWithOrdinality:score:]";
    v15 = 2048;
    scoreCopy = score;
    _os_log_error_impl(&dword_2559A5000, v9, OS_LOG_TYPE_ERROR, "%s Invalid score: %f", buf, 0x16u);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end