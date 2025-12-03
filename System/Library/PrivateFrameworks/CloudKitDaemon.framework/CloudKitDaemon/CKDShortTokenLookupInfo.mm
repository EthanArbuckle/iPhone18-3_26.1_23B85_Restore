@interface CKDShortTokenLookupInfo
- (BOOL)isEqual:(id)equal;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CKDShortTokenLookupInfo

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_routingKey(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"routingKey");

  v10 = objc_msgSend_shortSharingTokenHashData(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"shortSharingTokenHashData");

  v12 = MEMORY[0x277CCABB0];
  RootRecord = objc_msgSend_shouldFetchRootRecord(self, v13, v14);
  v17 = objc_msgSend_numberWithBool_(v12, v16, RootRecord);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v17, @"shouldFetchRootRecord");

  v19 = MEMORY[0x277CCABB0];
  v22 = objc_msgSend_forceDSRefetch(self, v20, v21);
  v24 = objc_msgSend_numberWithBool_(v19, v23, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v25, v24, @"forceDSRefetch");

  v28 = objc_msgSend_participantID(self, v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v29, v28, @"participantID");

  v32 = objc_msgSend_properties(v3, v30, v31);

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_routingKey(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v11 = v4[2];
  v4[2] = v10;

  v14 = objc_msgSend_shortSharingTokenHashData(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  v18 = v4[3];
  v4[3] = v17;

  *(v4 + 8) = objc_msgSend_shouldFetchRootRecord(self, v19, v20);
  *(v4 + 9) = objc_msgSend_forceDSRefetch(self, v21, v22);
  v25 = objc_msgSend_participantID(self, v23, v24);
  v26 = v4[4];
  v4[4] = v25;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_routingKey(v5, v6, v7);
      v11 = objc_msgSend_routingKey(self, v9, v10);
      v14 = v11;
      if (v8 == v11)
      {
      }

      else
      {
        v15 = objc_msgSend_routingKey(self, v12, v13);
        v18 = objc_msgSend_routingKey(v5, v16, v17);
        isEqualToString = objc_msgSend_isEqualToString_(v15, v19, v18);

        if (!isEqualToString)
        {
          goto LABEL_15;
        }
      }

      v24 = objc_msgSend_shortSharingTokenHashData(v5, v21, v22);
      v27 = objc_msgSend_shortSharingTokenHashData(self, v25, v26);
      v30 = v27;
      if (v24 == v27)
      {
      }

      else
      {
        v31 = objc_msgSend_shortSharingTokenHashData(self, v28, v29);
        v34 = objc_msgSend_shortSharingTokenHashData(v5, v32, v33);
        isEqualToData = objc_msgSend_isEqualToData_(v31, v35, v34);

        if (!isEqualToData)
        {
          goto LABEL_15;
        }
      }

      RootRecord = objc_msgSend_shouldFetchRootRecord(v5, v37, v38);
      if (RootRecord == objc_msgSend_shouldFetchRootRecord(self, v40, v41))
      {
        v44 = objc_msgSend_forceDSRefetch(v5, v42, v43);
        if (v44 == objc_msgSend_forceDSRefetch(self, v45, v46))
        {
          v50 = objc_msgSend_participantID(v5, v47, v48);
          v55 = objc_msgSend_participantID(self, v51, v52);
          if (v50 == v55)
          {
            v23 = 1;
          }

          else
          {
            v56 = objc_msgSend_participantID(self, v53, v54);
            v59 = objc_msgSend_participantID(v5, v57, v58);
            v23 = objc_msgSend_isEqualToString_(v56, v60, v59);
          }

          goto LABEL_16;
        }
      }

LABEL_15:
      v23 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v23 = 0;
  }

LABEL_17:

  return v23 & 1;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_routingKey(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_shortSharingTokenHashData(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_participantID(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

@end