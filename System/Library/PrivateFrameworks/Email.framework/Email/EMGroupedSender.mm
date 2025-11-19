@interface EMGroupedSender
+ (OS_os_log)log;
- (EFFuture)displayMessage;
- (EMCollectionItemID)itemID;
- (EMGroupedSender)initWithCoder:(id)a3;
- (EMGroupedSender)initWithObjectID:(id)a3 builder:(id)a4;
- (EMObjectID)displayMessageObjectID;
- (NSURL)brandIndicatorLocation;
- (id)changeFrom:(id)a3;
- (id)preferredSenderDisplayNameWithContactStore:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRepository:(id)a3;
@end

@implementation EMGroupedSender

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__EMGroupedSender_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_15 != -1)
  {
    dispatch_once(&log_onceToken_15, block);
  }

  v2 = log_log_15;

  return v2;
}

void __22__EMGroupedSender_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_15;
  log_log_15 = v1;
}

- (EMGroupedSender)initWithObjectID:(id)a3 builder:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EMGroupedSender.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__EMGroupedSender_initWithObjectID_builder___block_invoke;
  v14[3] = &unk_1E826D028;
  v15 = self;
  v9 = v8;
  v16 = v9;
  v13.receiver = v15;
  v13.super_class = EMGroupedSender;
  v10 = [(EMBaseMessageListItem *)&v13 initWithObjectID:v7 baseBuilder:v14];

  return v10;
}

- (EMGroupedSender)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMGroupedSender;
  v5 = [(EMBaseMessageListItem *)&v9 initWithCoder:v4];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__EMGroupedSender_initWithCoder___block_invoke;
    v7[3] = &unk_1E826D050;
    v8 = v4;
    [(EMGroupedSender *)v5 _commonInitWithBuilder:v7];
  }

  return v5;
}

void __33__EMGroupedSender_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setUnreadCount:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_unreadCount"}];
  [v5 setUnseenCount:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_unseenCount"}];
  [v5 setCount:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_count"}];
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessDisplayName"];
  [v5 setBusinessDisplayName:v3];

  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayMessageItemID"];
  [v5 setDisplayMessageItemID:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMGroupedSender;
  [(EMBaseMessageListItem *)&v7 encodeWithCoder:v4];
  [v4 encodeInteger:-[EMGroupedSender unreadCount](self forKey:{"unreadCount"), @"EFPropertyKey_unreadCount"}];
  [v4 encodeInteger:-[EMGroupedSender unseenCount](self forKey:{"unseenCount"), @"EFPropertyKey_unseenCount"}];
  [v4 encodeInteger:-[EMGroupedSender count](self forKey:{"count"), @"EFPropertyKey_count"}];
  v5 = [(EMGroupedSender *)self businessDisplayName];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_businessDisplayName"];

  v6 = [(EMGroupedSender *)self displayMessageItemID];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_displayMessageItemID"];
}

- (id)changeFrom:(id)a3
{
  v3 = [EMGroupedSenderChange changeFrom:a3 to:self];

  return v3;
}

- (void)setRepository:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMGroupedSender;
  [(EMBaseMessageListItem *)&v9 setRepository:v4];
  v5 = [(EMBaseMessageListItem *)self groupedSenderMessageListItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__EMGroupedSender_setRepository___block_invoke;
  v7[3] = &unk_1E826D078;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __33__EMGroupedSender_setRepository___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setRepository:*(a1 + 32)];
  }

  else
  {
    v4 = +[EMGroupedSender log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 ef_publicDescription];
      __33__EMGroupedSender_setRepository___block_invoke_cold_1(v5, v7, v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (EMCollectionItemID)itemID
{
  v2 = [(EMObject *)self objectID];
  v3 = [v2 collectionItemID];

  return v3;
}

- (EMObjectID)displayMessageObjectID
{
  v4 = [(EMGroupedSender *)self displayMessageItemID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EMGroupedSender.m" lineNumber:104 description:@"displayMessageItemID is not an EMMessageCollectionItemID"];
  }

  v5 = [EMMessageObjectID alloc];
  v6 = [(EMObject *)self objectID];
  v7 = [v6 threadScope];
  v8 = [v7 mailboxScope];
  v9 = [(EMMessageObjectID *)v5 initWithCollectionItemID:v4 mailboxScope:v8];

  return v9;
}

- (EFFuture)displayMessage
{
  v3 = [(EMGroupedSender *)self displayMessageObjectID];
  v4 = [(EMBaseMessageListItem *)self repository];
  v5 = [v4 messageForObjectID:v3];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__EMGroupedSender_displayMessage__block_invoke;
  v13[3] = &unk_1E826D0A0;
  v13[4] = self;
  v6 = v3;
  v14 = v6;
  v7 = [v5 recover:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__EMGroupedSender_displayMessage__block_invoke_47;
  v11[3] = &unk_1E826D0C8;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = [v7 then:v11];

  return v9;
}

id __33__EMGroupedSender_displayMessage__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) displayMessageObjectID];
  if (![v3 em_isItemNotFoundError] || *(a1 + 40) == v4)
  {
    v10 = +[EMGroupedSender log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) ef_publicDescription];
      v15 = [*(a1 + 32) displayMessageObjectID];
      v16 = [*(a1 + 32) displayMessageItemID];
      v17 = [v3 ef_publicDescription];
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_1C6655000, v10, OS_LOG_TYPE_ERROR, "%{public}@\ndisplayMessageObjectID: %{public}@, displayMessageItemID: %{public}@, error: %{public}@", &v18, 0x2Au);
    }

    v9 = [MEMORY[0x1E699B7C8] futureWithError:v3];
  }

  else
  {
    v5 = +[EMGroupedSender log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) ef_publicDescription];
      v7 = *(a1 + 40);
      v8 = [v3 ef_publicDescription];
      v18 = 138544130;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@\nre-trying request for displayMessage: objectID: %{public}@, updatedObjectID: %{public}@, error: %{public}@", &v18, 0x2Au);
    }

    v9 = [*(a1 + 32) displayMessage];
  }

  v11 = v9;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __33__EMGroupedSender_displayMessage__block_invoke_47(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [MEMORY[0x1E699B7C8] futureWithResult:v3];
  }

  else
  {
    v4 = +[EMGroupedSender log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) ef_publicDescription];
      v11 = [*(a1 + 32) displayMessageObjectID];
      v12 = [*(a1 + 32) displayMessageItemID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_1C6655000, v4, OS_LOG_TYPE_ERROR, "%{public}@\ndisplayMessageObjectID: %{public}@, displayMessageItemID: %{public}@, message isNull", &v13, 0x20u);
    }

    v5 = MEMORY[0x1E699B7C8];
    v6 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 40)];
    v7 = [v5 futureWithError:v6];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)preferredSenderDisplayNameWithContactStore:(id)a3
{
  v4 = a3;
  v5 = [(EMGroupedSender *)self businessDisplayName];
  v6 = [(EMBaseMessageListItem *)self senderList];
  v7 = [v6 firstObject];
  v8 = [v7 emailAddressValue];

  if (v5)
  {
    v9 = v5;
LABEL_3:
    v10 = v9;
    goto LABEL_16;
  }

  if (!v8)
  {
    v9 = _EFLocalizedString();
    goto LABEL_3;
  }

  v11 = [v8 stringValue];
  v12 = [v4 displayNameForEmailAddress:v11];

  if (v12)
  {
    v10 = v12;
  }

  else
  {
    v13 = v8;
    v14 = [v13 emailAddressValue];
    v15 = [v14 em_displayableString];
    v16 = v15;
    if (v15)
    {
      v10 = v15;
    }

    else
    {
      v17 = [v14 simpleAddress];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [v13 stringValue];
      }

      v10 = v19;
    }
  }

LABEL_16:

  return v10;
}

- (NSURL)brandIndicatorLocation
{
  if ([EMInternalPreferences preferenceEnabled:59])
  {
    v5.receiver = self;
    v5.super_class = EMGroupedSender;
    v3 = [(EMBaseMessageListItem *)&v5 brandIndicatorLocation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __33__EMGroupedSender_setRepository___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Attempting to set repository on a non-EMMessage groupedSenderMessageListItem %{public}@", buf, 0xCu);
}

@end