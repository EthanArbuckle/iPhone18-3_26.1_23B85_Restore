@interface CKDApplicationID
- (BOOL)isEqual:(id)equal;
- (CKDApplicationID)init;
- (CKDApplicationID)initWithApplicationBundleIdentifier:(id)identifier applicationBundleIdentifierOverrideForContainerAccess:(id)access applicationBundleIdentifierOverrideForNetworkAttribution:(id)attribution applicationBundleIdentifierOverrideForPushTopicGeneration:(id)generation applicationBundleIdentifierOverrideForTCC:(id)c;
- (CKDApplicationID)initWithCoder:(id)coder;
- (CKDApplicationID)initWithSqliteRepresentation:(id)representation;
- (id)sqliteRepresentation;
- (unint64_t)hash;
- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDApplicationID

- (id)sqliteRepresentation
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifier(self, v5, v6);
  v8 = NSStringFromSelector(sel_applicationBundleIdentifier);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v9, v7, v8);

  v12 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v13, v14);
    v16 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v17, v15, v16);
  }

  v18 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v13, v14);

  if (v18)
  {
    v21 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v19, v20);
    v22 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v23, v21, v22);
  }

  v24 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v19, v20);

  if (v24)
  {
    v27 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v25, v26);
    v28 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v29, v27, v28);
  }

  v30 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v25, v26);

  if (v30)
  {
    v33 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v31, v32);
    v34 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v35, v33, v34);
  }

  v44 = 0;
  v36 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v31, v4, 0, &v44);
  v37 = v44;
  if (v37)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v37;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Error converting CKDApplicationID to JSON: %@", buf, 0xCu);
    }
  }

  v39 = objc_alloc(MEMORY[0x277CCACA8]);
  v41 = objc_msgSend_initWithData_encoding_(v39, v40, v36, 4);

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_applicationBundleIdentifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);

  v10 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v11, v12);
    v7 ^= objc_msgSend_hash(v13, v14, v15);
  }

  v16 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v11, v12);

  if (v16)
  {
    v19 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v17, v18);
    v7 ^= objc_msgSend_hash(v19, v20, v21);
  }

  v22 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v17, v18);

  if (v22)
  {
    v25 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v23, v24);
    v7 ^= objc_msgSend_hash(v25, v26, v27);
  }

  v28 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v23, v24);

  if (v28)
  {
    v31 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v29, v30);
    v7 ^= objc_msgSend_hash(v31, v32, v33);
  }

  return v7;
}

- (CKDApplicationID)init
{
  v2 = objc_alloc(MEMORY[0x277CBC360]);
  v3 = *MEMORY[0x277CBE660];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"[%@ init] is unavailable", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKDApplicationID)initWithApplicationBundleIdentifier:(id)identifier applicationBundleIdentifierOverrideForContainerAccess:(id)access applicationBundleIdentifierOverrideForNetworkAttribution:(id)attribution applicationBundleIdentifierOverrideForPushTopicGeneration:(id)generation applicationBundleIdentifierOverrideForTCC:(id)c
{
  identifierCopy = identifier;
  accessCopy = access;
  attributionCopy = attribution;
  generationCopy = generation;
  cCopy = c;
  v53 = 0;
  v17 = _CKCheckArgument();
  v18 = 0;
  if ((v17 & 1) == 0)
  {
    v41 = v18;
    v42 = objc_alloc(MEMORY[0x277CBC360]);
    v45 = objc_msgSend_code(v41, v43, v44);
    v48 = objc_msgSend_localizedDescription(v41, v46, v47);
    v50 = objc_msgSend_initWithCode_format_(v42, v49, v45, @"%@", v48);
    v51 = v50;

    objc_exception_throw(v50);
  }

  v52.receiver = self;
  v52.super_class = CKDApplicationID;
  v21 = [(CKDApplicationID *)&v52 init];
  if (v21)
  {
    v22 = objc_msgSend_copy(identifierCopy, v19, v20);
    applicationBundleIdentifier = v21->_applicationBundleIdentifier;
    v21->_applicationBundleIdentifier = v22;

    v26 = objc_msgSend_copy(accessCopy, v24, v25);
    applicationBundleIdentifierOverrideForContainerAccess = v21->_applicationBundleIdentifierOverrideForContainerAccess;
    v21->_applicationBundleIdentifierOverrideForContainerAccess = v26;

    v30 = objc_msgSend_copy(attributionCopy, v28, v29);
    applicationBundleIdentifierOverrideForNetworkAttribution = v21->_applicationBundleIdentifierOverrideForNetworkAttribution;
    v21->_applicationBundleIdentifierOverrideForNetworkAttribution = v30;

    v34 = objc_msgSend_copy(generationCopy, v32, v33);
    applicationBundleIdentifierOverrideForPushTopicGeneration = v21->_applicationBundleIdentifierOverrideForPushTopicGeneration;
    v21->_applicationBundleIdentifierOverrideForPushTopicGeneration = v34;

    v38 = objc_msgSend_copy(cCopy, v36, v37);
    applicationBundleIdentifierOverrideForTCC = v21->_applicationBundleIdentifierOverrideForTCC;
    v21->_applicationBundleIdentifierOverrideForTCC = v38;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v40 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = objc_msgSend_applicationBundleIdentifier(self, v5, v6);
    v10 = objc_msgSend_applicationBundleIdentifier(equalCopy, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v11, v10);

    if (!isEqualToString)
    {
      goto LABEL_8;
    }

    v15 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v13, v14);
    v18 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(equalCopy, v16, v17);
    v19 = CKObjectsAreBothNilOrEqual();

    if (!v19)
    {
      goto LABEL_8;
    }

    v22 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v20, v21);
    v25 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(equalCopy, v23, v24);
    v26 = CKObjectsAreBothNilOrEqual();

    if (!v26)
    {
      goto LABEL_8;
    }

    v29 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v27, v28);
    v32 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(equalCopy, v30, v31);
    v33 = CKObjectsAreBothNilOrEqual();

    if (v33)
    {
      v36 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v34, v35);
      v39 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(equalCopy, v37, v38);
      v40 = CKObjectsAreBothNilOrEqual();
    }

    else
    {
LABEL_8:
      v40 = 0;
    }
  }

  return v40;
}

- (CKDApplicationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CKDApplicationID;
  v5 = [(CKDApplicationID *)&v32 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_applicationBundleIdentifier);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7);
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v11, v12);
    applicationBundleIdentifierOverrideForContainerAccess = v5->_applicationBundleIdentifierOverrideForContainerAccess;
    v5->_applicationBundleIdentifierOverrideForContainerAccess = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v16, v17);
    applicationBundleIdentifierOverrideForNetworkAttribution = v5->_applicationBundleIdentifierOverrideForNetworkAttribution;
    v5->_applicationBundleIdentifierOverrideForNetworkAttribution = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v21, v22);
    applicationBundleIdentifierOverrideForPushTopicGeneration = v5->_applicationBundleIdentifierOverrideForPushTopicGeneration;
    v5->_applicationBundleIdentifierOverrideForPushTopicGeneration = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v26, v27);
    applicationBundleIdentifierOverrideForTCC = v5->_applicationBundleIdentifierOverrideForTCC;
    v5->_applicationBundleIdentifierOverrideForTCC = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_applicationBundleIdentifier(self, v4, v5);
  v7 = NSStringFromSelector(sel_applicationBundleIdentifier);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v6, v7);

  v11 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v12, v13);
    v15 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
    objc_msgSend_encodeObject_forKey_(coderCopy, v16, v14, v15);
  }

  v17 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v12, v13);

  if (v17)
  {
    v20 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v18, v19);
    v21 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
    objc_msgSend_encodeObject_forKey_(coderCopy, v22, v20, v21);
  }

  v23 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v18, v19);

  if (v23)
  {
    v26 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v24, v25);
    v27 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
    objc_msgSend_encodeObject_forKey_(coderCopy, v28, v26, v27);
  }

  v29 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v24, v25);

  v32 = coderCopy;
  if (v29)
  {
    v33 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v30, v31);
    v34 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
    objc_msgSend_encodeObject_forKey_(coderCopy, v35, v33, v34);

    v32 = coderCopy;
  }
}

- (CKDApplicationID)initWithSqliteRepresentation:(id)representation
{
  v35 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if (objc_msgSend_length(representationCopy, v5, v6))
  {
    v8 = objc_msgSend_dataUsingEncoding_(representationCopy, v7, 4);
    v32 = 0;
    v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v9, v8, 0, &v32);
    v11 = v32;
    if (v11 || !v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v11;
        _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Error converting JSON data to CKDApplicationID: %@", buf, 0xCu);
      }

      selfCopy = 0;
    }

    else
    {
      v12 = NSStringFromSelector(sel_applicationBundleIdentifier);
      v31 = objc_msgSend_objectForKeyedSubscript_(v10, v13, v12);

      v14 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
      v16 = objc_msgSend_objectForKeyedSubscript_(v10, v15, v14);

      v17 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
      v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, v17);

      v20 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
      v22 = objc_msgSend_objectForKeyedSubscript_(v10, v21, v20);

      v23 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
      v25 = objc_msgSend_objectForKeyedSubscript_(v10, v24, v23);

      self = objc_msgSend_initWithApplicationBundleIdentifier_applicationBundleIdentifierOverrideForContainerAccess_applicationBundleIdentifierOverrideForNetworkAttribution_applicationBundleIdentifierOverrideForPushTopicGeneration_applicationBundleIdentifierOverrideForTCC_(self, v26, v31, v16, v19, v22, v25);
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index
{
  statementCopy = statement;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(statementCopy, v9, v10, index);
}

@end