@interface KVFieldMatch
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFieldMatch:(id)match;
- (KVFieldMatch)initWithFieldMatch:(id)match;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fieldSpanInfo;
- (int64_t)fieldType;
@end

@implementation KVFieldMatch

- (BOOL)isEqualToFieldMatch:(id)match
{
  fieldMatch = self->_fieldMatch;
  v7 = objc_msgSend_fieldMatch(match, a2, match, v3, v4, v5);
  LOBYTE(fieldMatch) = objc_msgSend_isEqual_(fieldMatch, v8, v7, v9, v10, v11);

  return fieldMatch;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToFieldMatch = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToFieldMatch = objc_msgSend_isEqualToFieldMatch_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToFieldMatch = 0;
  }

  return isEqualToFieldMatch;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9);
  v15 = objc_msgSend_copyWithZone_(self->_fieldMatch, v11, zone, v12, v13, v14);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (int64_t)fieldType
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_entityFieldInfo(self->_fieldMatch, a2, v2, v3, v4, v5);
  v18 = 0;
  v12 = objc_msgSend_toKVFieldType_(v7, v8, &v18, v9, v10, v11);
  v13 = v18;

  if (!v12)
  {
    v14 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      fieldMatch = self->_fieldMatch;
      *buf = 136315650;
      v20 = "[KVFieldMatch fieldType]";
      v21 = 2112;
      v22 = fieldMatch;
      v23 = 2112;
      v24 = v13;
      _os_log_error_impl(&dword_2559A5000, v14, OS_LOG_TYPE_ERROR, "%s Failed to resolve fieldType from match: %@ error: %@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)fieldSpanInfo
{
  v3 = [KVSpanInfo alloc];
  v9 = objc_msgSend_fieldSpanInfo(self->_fieldMatch, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithSpanInfo_(v3, v10, v9, v11, v12, v13);

  return v14;
}

- (KVFieldMatch)initWithFieldMatch:(id)match
{
  v40 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v33.receiver = self;
  v33.super_class = KVFieldMatch;
  v6 = [(KVFieldMatch *)&v33 init];
  p_isa = &v6->super.isa;
  if (v6 && (objc_storeStrong(&v6->_fieldMatch, match), objc_msgSend_entityFieldInfo(p_isa[1], v8, v9, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_entityType(v13, v14, v15, v16, v17, v18), v13, v19 != 1))
  {
    v21 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      v24 = p_isa[1];
      v25 = v21;
      v31 = objc_msgSend_entityFieldInfo(v24, v26, v27, v28, v29, v30);
      v32 = p_isa[1];
      *buf = 136315650;
      v35 = "[KVFieldMatch initWithFieldMatch:]";
      v36 = 2112;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
      _os_log_error_impl(&dword_2559A5000, v25, OS_LOG_TYPE_ERROR, "%s Unsupported entityFieldInfo: %@ for match: %@", buf, 0x20u);
    }

    v20 = 0;
  }

  else
  {
    v20 = p_isa;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

@end