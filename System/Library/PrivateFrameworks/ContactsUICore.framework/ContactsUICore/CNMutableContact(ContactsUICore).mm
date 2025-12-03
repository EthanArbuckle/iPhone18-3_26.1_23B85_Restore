@interface CNMutableContact(ContactsUICore)
- (uint64_t)saveContactInStore:()ContactsUICore group:container:request:authorizationContext:;
- (uint64_t)saveContactInStore:()ContactsUICore groups:container:request:authorizationContext:;
- (void)setBackgroundColors:()ContactsUICore;
@end

@implementation CNMutableContact(ContactsUICore)

- (void)setBackgroundColors:()ContactsUICore
{
  data = [a3 data];
  [self setImageBackgroundColorsData:data];
}

- (uint64_t)saveContactInStore:()ContactsUICore group:container:request:authorizationContext:
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a4)
  {
    v20 = a4;
    v16 = MEMORY[0x1E695DEC8];
    v17 = a4;
    a4 = [v16 arrayWithObjects:&v20 count:1];
  }

  v18 = [self saveContactInStore:v12 groups:a4 container:v13 request:v14 authorizationContext:{v15, v20, v21}];

  return v18;
}

- (uint64_t)saveContactInStore:()ContactsUICore groups:container:request:authorizationContext:
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[CNUICoreLogProvider contact_card_os_log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    selfCopy3 = self;
    v40 = 1024;
    LODWORD(v41) = v15 != 0;
    _os_log_impl(&dword_1A31E6000, v17, OS_LOG_TYPE_DEFAULT, "[CNContact+ContactsUICore] Saving contact %{public}p with request? %d", buf, 0x12u);
  }

  if (!v15)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  if (![self hasBeenPersisted] || (objc_msgSend(self, "isSuggestedMe") & 1) != 0)
  {
    v18 = +[CNUICoreLogProvider contact_card_os_log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v14 identifier];
      type = [v14 type];
      *buf = 134349570;
      selfCopy3 = self;
      v40 = 2114;
      v41 = identifier;
      v42 = 2048;
      v43 = type;
      _os_log_impl(&dword_1A31E6000, v18, OS_LOG_TYPE_DEFAULT, "[CNContact+ContactsUICore] Saving contact %{public}p by adding, to container with identifier %{public}@ type %ld", buf, 0x20u);
    }

    identifier2 = [v14 identifier];
    [v15 addContact:self toContainerWithIdentifier:identifier2];

    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_14:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v13;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        v27 = 0;
        do
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [v15 addMember:self toGroup:*(*(&v34 + 1) + 8 * v27++)];
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v25);
    }

    goto LABEL_22;
  }

  v22 = +[CNUICoreLogProvider contact_card_os_log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    selfCopy3 = self;
    _os_log_impl(&dword_1A31E6000, v22, OS_LOG_TYPE_DEFAULT, "[CNContact+ContactsUICore] Saving contact %{public}p by updating", buf, 0xCu);
  }

  [v15 updateContact:self];
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_22:
  v33 = 0;
  v28 = [v12 executeSaveRequest:v15 response:0 authorizationContext:v16 error:&v33];
  v29 = v33;
  if ((v28 & 1) == 0)
  {
    v30 = +[CNUICoreLogProvider contact_card_os_log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [self identifier];
      *buf = 138544130;
      selfCopy3 = identifier3;
      v40 = 2114;
      v41 = v29;
      v42 = 2114;
      v43 = v12;
      v44 = 2112;
      selfCopy4 = self;
      _os_log_error_impl(&dword_1A31E6000, v30, OS_LOG_TYPE_ERROR, "[CNContact+ContactsUICore] Could not save contact with identifer %{public}@, error %{public}@, store %{public}@, full contact %@", buf, 0x2Au);
    }
  }

  return v28;
}

@end