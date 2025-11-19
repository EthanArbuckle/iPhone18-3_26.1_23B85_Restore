@interface DURequestObjC
- (DURequestObjC)initWithClient:(id)a3 contentType:(id)a4 strategies:(id)a5;
- (void)executeWithDocument:(id)a3 completion:(id)a4;
@end

@implementation DURequestObjC

- (void)executeWithDocument:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_documentForObjCDocument_(DUObjCCompatibilityUtils, v7, a3, v8, v9);
  underlyingRequest = self->_underlyingRequest;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_232CE0890;
  v15[3] = &unk_2789A7BD0;
  v16 = v6;
  v12 = v6;
  objc_msgSend_executeWithDocument_completion_(underlyingRequest, v13, v10, v15, v14);
}

- (DURequestObjC)initWithClient:(id)a3 contentType:(id)a4 strategies:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46.receiver = self;
  v46.super_class = DURequestObjC;
  v14 = [(DURequestObjC *)&v46 init];
  if (v14)
  {
    v41 = v8;
    v40 = objc_msgSend_clientForObjCClient_(DUObjCCompatibilityUtils, v11, v8, v12, v13);
    v39 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v15, v9, v16, v17);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = v10;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v42, v47, 16);
    if (v21)
    {
      v25 = v21;
      v26 = *v43;
      do
      {
        v27 = 0;
        do
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v31 = objc_msgSend_strategyForObjCStrategy_(DUObjCCompatibilityUtils, v22, *(*(&v42 + 1) + 8 * v27), v23, v24);
          if (v31)
          {
            objc_msgSend_addObject_(v18, v28, v31, v29, v30);
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v42, v47, 16);
      }

      while (v25);
    }

    v32 = [_TtC21DocumentUnderstanding9DURequest alloc];
    v34 = objc_msgSend_initWithClient_contentType_strategies_(v32, v33, v40, v39, v18);
    underlyingRequest = v14->_underlyingRequest;
    v14->_underlyingRequest = v34;

    v36 = v14;
    v8 = v41;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v14;
}

@end