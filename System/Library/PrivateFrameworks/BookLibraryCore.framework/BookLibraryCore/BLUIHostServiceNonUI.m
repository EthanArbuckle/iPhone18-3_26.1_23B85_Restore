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
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use out-of-process authenticate", buf, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x277CEE3E8]) initWithRequest:v6];
  v9 = [v8 performAuthentication];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D4AED0;
  v11[3] = &unk_278D17880;
  v12 = v5;
  v10 = v5;
  [v9 addFinishBlock:v11];
}

- (void)handleDialogRequest:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BLDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use out-of-process dialog", buf, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x277CEE6B0]) initWithRequest:v5];
  v9 = [v8 present];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D4B07C;
  v12[3] = &unk_278D178A8;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [v9 addFinishBlock:v12];
}

- (void)handleEngagementRequest:(id)a3 withReply:(id)a4
{
  v4 = a4;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: Engagement request not supported for non-UI", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CEE630]);
  v7 = BLError(0, @"Engagement request not supported for non-UI", 0);
  [v6 finishWithError:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D4B2E4;
  v9[3] = &unk_278D178D0;
  v10 = v4;
  v8 = v4;
  [v6 addFinishBlock:v9];
}

@end