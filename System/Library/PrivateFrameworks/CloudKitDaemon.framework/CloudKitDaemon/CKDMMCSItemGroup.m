@interface CKDMMCSItemGroup
- (CKDMMCSItemGroup)initWithItem:(id)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKDMMCSItemGroup

- (CKDMMCSItemGroup)initWithItem:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CKDMMCSItemGroup;
  v7 = [(CKDMMCSItemGroup *)&v29 init];
  if (v7)
  {
    v8 = objc_msgSend_contentBaseURL(v4, v5, v6);
    contentBaseURL = v7->_contentBaseURL;
    v7->_contentBaseURL = v8;

    v12 = objc_msgSend_owner(v4, v10, v11);
    owner = v7->_owner;
    v7->_owner = v12;

    v16 = objc_msgSend_requestor(v4, v14, v15);
    requestor = v7->_requestor;
    v7->_requestor = v16;

    v20 = objc_msgSend_downloadPreauthorization(v4, v18, v19);
    downloadPreauthorization = v7->_downloadPreauthorization;
    v7->_downloadPreauthorization = v20;

    if (!v7->_owner)
    {
      v7->_owner = &stru_28385ED00;
    }

    if (!v7->_contentBaseURL)
    {
      v23 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v22, @"/dev/null");
      v24 = v7->_contentBaseURL;
      v7->_contentBaseURL = v23;

      v25 = v7->_owner;
      v7->_owner = &stru_28385ED00;
    }

    if (!v7->_requestor)
    {
      v7->_requestor = &stru_28385ED00;
    }

    v7->_cachedHash = objc_msgSend_hashOfItem_(CKDMMCSItemGroupSet, v22, v7);
    v26 = objc_opt_new();
    items = v7->_items;
    v7->_items = v26;
  }

  return v7;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 5);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_contentBaseURL(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"contentBaseURL=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v11 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_owner(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v11, v15, @"owner=%@", v14);
  objc_msgSend_addObject_(v3, v17, v16);

  v20 = objc_msgSend_requestor(self, v18, v19);
  v23 = objc_msgSend_owner(self, v21, v22);
  isEqualToString = objc_msgSend_isEqualToString_(v20, v24, v23);

  if ((isEqualToString & 1) == 0)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = objc_msgSend_requestor(self, v26, v27);
    v31 = objc_msgSend_stringWithFormat_(v28, v30, @"requestor=%@", v29);
    objc_msgSend_addObject_(v3, v32, v31);
  }

  v33 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v26, 2);
  if (objc_msgSend_complete(self, v34, v35))
  {
    objc_msgSend_addObject_(v33, v36, @"complete");
  }

  v38 = objc_msgSend_downloadPreauthorization(self, v36, v37);

  if (v38)
  {
    objc_msgSend_addObject_(v33, v39, @"use-download-preauth");
  }

  if (objc_msgSend_count(v33, v39, v40))
  {
    v43 = MEMORY[0x277CCACA8];
    v44 = objc_msgSend_componentsJoinedByString_(v33, v41, @"|");
    v46 = objc_msgSend_stringWithFormat_(v43, v45, @"flags=%@", v44);
    objc_msgSend_addObject_(v3, v47, v46);
  }

  v48 = objc_msgSend_error(self, v41, v42);

  if (v48)
  {
    v51 = MEMORY[0x277CCACA8];
    v52 = objc_msgSend_error(self, v49, v50);
    v54 = objc_msgSend_stringWithFormat_(v51, v53, @"error=%@", v52);
    objc_msgSend_addObject_(v3, v55, v54);
  }

  v56 = objc_msgSend_componentsJoinedByString_(v3, v49, @", ");

  return v56;
}

@end