@interface CHTextInputProtoSettings
+ (id)sharedSettings;
- (BOOL)isScribbleActive;
@end

@implementation CHTextInputProtoSettings

+ (id)sharedSettings
{
  if (qword_1EA84CE38 == -1)
  {
    v3 = qword_1EA84CE30;
  }

  else
  {
    dispatch_once(&qword_1EA84CE38, &unk_1EF1BC678);
    v3 = qword_1EA84CE30;
  }

  return v3;
}

- (BOOL)isScribbleActive
{
  v2 = sub_18366D128();
  v8 = objc_msgSend_sharedSettings(v2, v3, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = sub_1837406F4;
    v20 = &unk_1E6DDC180;
    v22 = &v23;
    v21 = v8;
    v9 = MEMORY[0x1865E6810](&v17);
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v10, v11, v12, v13, v14, v17, v18, v19, v20))
    {
      v9[2](v9);
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], v9);
    }

    v15 = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

@end