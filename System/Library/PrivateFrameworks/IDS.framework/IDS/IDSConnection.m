@interface IDSConnection
- (BOOL)isActive;
- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (IDSAccount)account;
- (_IDSConnection)_internal;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)removeDelegate:(id)a3;
@end

@implementation IDSConnection

- (_IDSConnection)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2ABB8();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A00714;
  v6[4] = sub_195A03D30;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A52040;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSConnection;
  [(IDSConnection *)&v4 dealloc];
}

- (IDSAccount)account
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00714;
  v11 = sub_195A03D30;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A52194;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A522CC;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A523E4;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11 waitUntilDone:1];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A524A4;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = v4;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = -86;
  v17 = +[IDSInternalQueueController sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195A52634;
  v22[3] = &unk_1E7440218;
  v26 = &v30;
  v22[4] = self;
  v18 = v14;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  v27 = a5;
  v20 = v16;
  v25 = v20;
  v28 = a7;
  v29 = a8;
  [v17 performBlock:v22 waitUntilDone:1];

  LOBYTE(a8) = *(v31 + 24);
  _Block_object_dispose(&v30, 8);

  return a8;
}

- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = -86;
  v17 = +[IDSInternalQueueController sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195A527FC;
  v22[3] = &unk_1E7440218;
  v26 = &v30;
  v22[4] = self;
  v18 = v14;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  v27 = a5;
  v20 = v16;
  v25 = v20;
  v28 = a7;
  v29 = a8;
  [v17 performBlock:v22 waitUntilDone:1];

  LOBYTE(a8) = *(v31 + 24);
  _Block_object_dispose(&v30, 8);

  return a8;
}

- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = -86;
  v17 = +[IDSInternalQueueController sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195A529C4;
  v22[3] = &unk_1E7440218;
  v26 = &v30;
  v22[4] = self;
  v18 = v14;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  v27 = a5;
  v20 = v16;
  v25 = v20;
  v28 = a7;
  v29 = a8;
  [v17 performBlock:v22 waitUntilDone:1];

  LOBYTE(a8) = *(v31 + 24);
  _Block_object_dispose(&v30, 8);

  return a8;
}

@end