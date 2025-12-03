@interface CNContactStore(CallHistory)
- (id)contactsByContactHandleForContactHandles:()CallHistory keyDescriptors:error:;
@end

@implementation CNContactStore(CallHistory)

- (id)contactsByContactHandleForContactHandles:()CallHistory keyDescriptors:error:
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v10 = getCNContactFetchRequestClass_softClass;
    v27 = getCNContactFetchRequestClass_softClass;
    if (!getCNContactFetchRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCNContactFetchRequestClass_block_invoke;
      v29 = &unk_1E81DC190;
      v30 = &v24;
      __getCNContactFetchRequestClass_block_invoke(buf);
      v10 = v25[3];
    }

    v11 = v10;
    _Block_object_dispose(&v24, 8);
    v12 = [v10 alloc];
    v13 = [v12 initWithKeysToFetch:{v9, v24}];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v14 = getCNContactClass_softClass;
    v27 = getCNContactClass_softClass;
    if (!getCNContactClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCNContactClass_block_invoke;
      v29 = &unk_1E81DC190;
      v30 = &v24;
      __getCNContactClass_block_invoke(buf);
      v14 = v25[3];
    }

    v15 = v14;
    _Block_object_dispose(&v24, 8);
    v16 = [v14 predicateForContactsMatchingHandleStrings:{v8, v24}];
    [v13 setPredicate:v16];

    v17 = ch_framework_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      *&buf[4] = v13;
      *&buf[12] = 2117;
      *&buf[14] = self;
      _os_log_impl(&dword_1C3E90000, v17, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ using contact store %{sensitive}@", buf, 0x16u);
    }

    v18 = [self executeFetchRequest:v13 error:a5];
    value = [v18 value];
    v20 = ch_framework_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [value count];
      *buf = 134217984;
      *&buf[4] = v21;
      _os_log_impl(&dword_1C3E90000, v20, OS_LOG_TYPE_DEFAULT, "Contact fetch request returned %lu results", buf, 0xCu);
    }
  }

  else
  {
    value = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return value;
}

@end