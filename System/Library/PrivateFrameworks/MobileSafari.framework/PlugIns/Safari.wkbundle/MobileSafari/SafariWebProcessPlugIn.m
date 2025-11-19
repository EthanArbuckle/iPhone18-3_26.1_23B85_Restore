@interface SafariWebProcessPlugIn
- (id)pageControllerWithBrowserContextController:(id)a3;
@end

@implementation SafariWebProcessPlugIn

- (id)pageControllerWithBrowserContextController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend__groupIdentifier(v4, v5, v6, v7);
  }

  else
  {
    v13 = objc_msgSend_pageGroup(v4, v5, v6, v7);
    v10 = objc_msgSend_identifier(v13, v14, v15, v16);
  }

  if (objc_msgSend_isEqualToString_(v10, v8, *MEMORY[0x277CDB9E8], v9))
  {
    v17 = 0x277CDB888;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277D4A988], v12);
    v17 = &off_2798ED200;
    if (isEqualToString)
    {
      v17 = 0x277D4A870;
    }
  }

  v19 = objc_alloc(*v17);
  v21 = objc_msgSend_initWithPlugIn_contextController_(v19, v20, self, v4);

  return v21;
}

@end