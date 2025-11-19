@interface BLUIHostServiceNonUI
- (void)handleAuthenticateRequest:(id)a3 withReply:(id)a4;
- (void)handleDialogRequest:(id)a3 withReply:(id)a4;
- (void)handleEngagementRequest:(id)a3 withReply:(id)a4;
@end

@implementation BLUIHostServiceNonUI

- (void)handleAuthenticateRequest:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = BLDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use out-of-process authenticate", buf, 2u);
  }

  v8 = objc_alloc(MEMORY[0x277CEE3E8]);
  v11 = objc_msgSend_initWithRequest_(v8, v9, v6, v10);

  v15 = objc_msgSend_performAuthentication(v11, v12, v13, v14);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241D17C08;
  v19[3] = &unk_278D156F0;
  v20 = v5;
  v16 = v5;
  objc_msgSend_addFinishBlock_(v15, v17, v19, v18);
}

- (void)handleDialogRequest:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BLDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use out-of-process dialog", buf, 2u);
  }

  v8 = objc_alloc(MEMORY[0x277CEE6B0]);
  v11 = objc_msgSend_initWithRequest_(v8, v9, v5, v10);
  v15 = objc_msgSend_present(v11, v12, v13, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_241D17DB4;
  v20[3] = &unk_278D15768;
  v21 = v5;
  v22 = v6;
  v16 = v6;
  v17 = v5;
  objc_msgSend_addFinishBlock_(v15, v18, v20, v19);
}

- (void)handleEngagementRequest:(id)a3 withReply:(id)a4
{
  v4 = a4;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v5, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: Engagement request not supported for non-UI", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CEE630]);
  v7 = BLError();
  objc_msgSend_finishWithError_(v6, v8, v7, v9);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D1801C;
  v13[3] = &unk_278D15790;
  v14 = v4;
  v10 = v4;
  objc_msgSend_addFinishBlock_(v6, v11, v13, v12);
}

@end