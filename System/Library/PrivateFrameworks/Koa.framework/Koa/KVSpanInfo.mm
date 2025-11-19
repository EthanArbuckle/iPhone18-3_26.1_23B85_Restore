@interface KVSpanInfo
+ (id)spanInfoFromEncodedString:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSpanInfo:(id)a3;
- (KVSpanInfo)initWithSpanInfo:(id)a3;
- (_NSRange)spanRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getAliasTypesArray;
@end

@implementation KVSpanInfo

- (id)getAliasTypesArray
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  matched = objc_msgSend_aliasMatchOptions(self->_spanInfo, v8, v9, v10, v11, v12);
  if (matched)
  {
    v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, 1, v14, v15, v16);
    objc_msgSend_addObject_(v7, v19, v18, v20, v21, v22);
  }

  if ((matched & 2) != 0)
  {
    v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, 2, v14, v15, v16);
    objc_msgSend_addObject_(v7, v24, v23, v25, v26, v27);
  }

  if ((matched & 4) != 0)
  {
    v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, 4, v14, v15, v16);
    objc_msgSend_addObject_(v7, v29, v28, v30, v31, v32);
  }

  if ((matched & 8) != 0)
  {
    v33 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, 8, v14, v15, v16);
    objc_msgSend_addObject_(v7, v34, v33, v35, v36, v37);
  }

  return v7;
}

- (BOOL)isEqualToSpanInfo:(id)a3
{
  v5 = a3;
  v11 = v5;
  spanInfo = self->_spanInfo;
  v13 = spanInfo;
  if (!spanInfo)
  {
    v3 = objc_msgSend_spanInfo(v5, v6, v7, v8, v9, v10);
    if (!v3)
    {
      isEqual = 1;
LABEL_7:

      goto LABEL_8;
    }

    v13 = self->_spanInfo;
  }

  v14 = objc_msgSend_spanInfo(v11, v6, v7, v8, v9, v10);
  isEqual = objc_msgSend_isEqual_(v13, v15, v14, v16, v17, v18);

  if (!spanInfo)
  {
    goto LABEL_7;
  }

LABEL_8:

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToSpanInfo = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToSpanInfo = objc_msgSend_isEqualToSpanInfo_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToSpanInfo = 0;
  }

  return isEqualToSpanInfo;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8, v9);
  v15 = objc_msgSend_copyWithZone_(self->_spanInfo, v11, a3, v12, v13, v14);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (_NSRange)spanRange
{
  v6 = objc_msgSend_spanRange(self->_spanInfo, a2, v2, v3, v4, v5);
  result.length = v7;
  result.location = v6;
  return result;
}

- (KVSpanInfo)initWithSpanInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KVSpanInfo;
  v6 = [(KVSpanInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spanInfo, a3);
  }

  return v7;
}

+ (id)spanInfoFromEncodedString:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_spanInfoFromEncodedString_error_(KVEncodedSpanInfo, a2, a3, a4, v4, v5);

  return v6;
}

@end