@interface CLIntersiloInterface
+ (id)sharedInterface;
- (BOOL)hasInfoForSelector:(SEL)a3;
- (id)getInfoForSelector:(SEL)a3;
- (void)extendSelectorInfoWithProtocol:(id)a3 bases:(id)a4;
@end

@implementation CLIntersiloInterface

+ (id)sharedInterface
{
  if (qword_1ED5FAE20 != -1)
  {
    dispatch_once(&qword_1ED5FAE20, &unk_1F5AC6340);
  }

  v3 = qword_1ED5FAE18;

  return v3;
}

- (void)extendSelectorInfoWithProtocol:(id)a3 bases:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v5 = a4;
  if ((sub_1DF807F18(v10, v5) & 1) == 0)
  {
    v7 = sub_1DF80C018();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290051;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Selector extension failed!, proto:%{public, location:escape_only}@, bases:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v8 = sub_1DF80C018();
    if (os_signpost_enabled(v8))
    {
      *buf = 68290051;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "__objc_no";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Selector extension failed!", "{msg%{public}.0s:Selector extension failed!, proto:%{public, location:escape_only}@, bases:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v9 = sub_1DF80C018();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 68290051;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Selector extension failed!, proto:%{public, location:escape_only}@, bases:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np();
    __break(1u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)getInfoForSelector:(SEL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1DF8090BC;
  v10 = sub_1DF8090FC;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1DF80C4A8;
  v5[3] = &unk_1E86C82A8;
  v5[4] = &v6;
  v5[5] = a3;
  sub_1DF7FF4D8(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasInfoForSelector:(SEL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1DF8090BC;
  v10 = sub_1DF8090FC;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1DF80C7C0;
  v5[3] = &unk_1E86C82A8;
  v5[4] = &v6;
  v5[5] = a3;
  sub_1DF7FF4D8(v5);
  v3 = v7[5] != 0;
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end