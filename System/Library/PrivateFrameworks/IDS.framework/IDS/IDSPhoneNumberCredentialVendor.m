@interface IDSPhoneNumberCredentialVendor
- (void)fetchPhoneNumbersOfType:(int64_t)a3 withCompletion:(id)a4;
- (void)requestPhoneNumberCredentialForService:(int64_t)a3 simLabelID:(id)a4 requestOption:(int64_t)a5 withCompletion:(id)a6;
@end

@implementation IDSPhoneNumberCredentialVendor

- (void)requestPhoneNumberCredentialForService:(int64_t)a3 simLabelID:(id)a4 requestOption:(int64_t)a5 withCompletion:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = v10;
  if (v10)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A4BAB0;
    v20[3] = &unk_1E743FD70;
    v22 = v23;
    v21 = v10;
    v12 = MEMORY[0x19A8BBEF0](v20);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A4BB04;
    v15[3] = &unk_1E743FD98;
    v13 = v12;
    v17 = v13;
    v18 = a3;
    v16 = v9;
    v19 = a5;
    [IDSXPCDaemonController performDaemonControllerTask:v15];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v14 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A714();
    }
  }
}

- (void)fetchPhoneNumbersOfType:(int64_t)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4BDAC;
    v13[3] = &unk_1E743FDC0;
    v15 = v16;
    v14 = v5;
    v7 = MEMORY[0x19A8BBEF0](v13);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A4BE00;
    v10[3] = &unk_1E743FDE8;
    v8 = v7;
    v11 = v8;
    v12 = a3;
    [IDSXPCDaemonController performDaemonControllerTask:v10];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v9 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A714();
    }
  }
}

@end