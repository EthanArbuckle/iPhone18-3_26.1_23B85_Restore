@interface DUStructuredEntityResponseObjC
- (DUDebugInfoObjC)responseDebugInfo;
- (DUStructuredEntityResponseObjC)init;
- (NSArray)structuredEntities;
- (void)setResponseDebugInfo:(id)a3;
- (void)setStructuredEntities:(id)a3;
@end

@implementation DUStructuredEntityResponseObjC

- (void)setResponseDebugInfo:(id)a3
{
  v9 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, a2, a3, v3, v4);
  objc_msgSend_setResponseDebugInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)responseDebugInfo
{
  v5 = objc_msgSend_responseDebugInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setStructuredEntities:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_structuredEntityForObjCStructuredEntity_(DUObjCCompatibilityUtils, v9, *(*(&v23 + 1) + 8 * v14), v10, v11, v23);
        objc_msgSend_addObject_(v5, v16, v15, v17, v18);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
    }

    while (v12);
  }

  objc_msgSend_setStructuredEntities_(self->_underlying, v19, v5, v20, v21);
  v22 = *MEMORY[0x277D85DE8];
}

- (NSArray)structuredEntities
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = objc_msgSend_structuredEntities(self->_underlying, v4, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = objc_msgSend_objCStructuredEntityForStructuredEntity_(DUObjCCompatibilityUtils, v11, *(*(&v23 + 1) + 8 * i), v12, v13);
        objc_msgSend_addObject_(v3, v18, v17, v19, v20);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (DUStructuredEntityResponseObjC)init
{
  v7.receiver = self;
  v7.super_class = DUStructuredEntityResponseObjC;
  v2 = [(DUStructuredEntityResponseObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding26DUStructuredEntityResponse);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end