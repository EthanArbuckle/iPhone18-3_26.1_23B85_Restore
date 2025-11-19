@interface EMMessage
+ (NSArray)externalDataTypeIdentifiers;
+ (OS_os_log)log;
+ (id)_predicateForMessagesWithObjectIDConstantValue:(id)a3 operatorType:(unint64_t)a4;
+ (id)combinedFlagsForMessageListItemFlags:(id)a3 forDisplay:(BOOL)a4;
+ (id)combinedFlagsForMessageListItems:(id)a3;
+ (id)predicateForExcludingMessageWithObjectID:(id)a3;
+ (id)predicateForExcludingMessagesWithObjectIDs:(id)a3;
+ (id)predicateForMessageWithItemID:(id)a3 mailboxPredicate:(id)a4 mailboxTypeResolver:(id)a5;
+ (id)predicateForMessageWithObjectID:(id)a3;
+ (id)predicateForMessagesWithObjectIDs:(id)a3;
- (BOOL)isInManagedAccountWithSourceMailboxScope:(id)a3;
- (BOOL)shouldShowReplyAll;
- (EMCollectionItemID)itemID;
- (EMMessage)initWithCoder:(id)a3;
- (EMMessage)initWithObjectID:(id)a3;
- (EMMessage)initWithObjectID:(id)a3 builder:(id)a4;
- (EMMessageRepository)repository;
- (NSArray)availableRepresentations;
- (NSString)contentID;
- (NSString)debugDescription;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)mailProviderDisplayNameForBIMI;
- (NSString)uniformTypeIdentifier;
- (UTType)type;
- (id)cachedMetadataOfClass:(Class)a3 forKey:(id)a4;
- (id)loaderBlock;
- (id)requestRepresentationWithOptions:(id)a3 completionHandler:(id)a4;
- (id)requestRepresentationWithOptions:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)senderDisplayNameUsingContactStore:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAvailableRepresentations:(id)a3;
- (void)setCachedMetadata:(id)a3 forKey:(id)a4;
- (void)setContentID:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setRepository:(id)a3;
- (void)setUniformTypeIdentifier:(id)a3;
@end

@implementation EMMessage

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMMessage;
  v4 = [(EMBaseMessageListItem *)&v7 repository];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:38 description:@"Wrong repository type"];
    }
  }

  return v4;
}

- (void)setRepository:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:38 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMMessage;
  [(EMBaseMessageListItem *)&v7 setRepository:v5];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __16__EMMessage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_21 != -1)
  {
    dispatch_once(&log_onceToken_21, block);
  }

  v2 = log_log_21;

  return v2;
}

void __16__EMMessage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_21;
  log_log_21 = v1;
}

- (EMMessage)initWithObjectID:(id)a3
{
  v5 = a3;
  [(EMMessage *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMessage initWithObjectID:]", "EMMessage.m", 64, "0");
}

- (EMMessage)initWithObjectID:(id)a3 builder:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __38__EMMessage_initWithObjectID_builder___block_invoke;
  v20[3] = &unk_1E826D028;
  v21 = self;
  v9 = v8;
  v22 = v9;
  v19.receiver = v21;
  v19.super_class = EMMessage;
  v10 = [(EMBaseMessageListItem *)&v19 initWithObjectID:v7 baseBuilder:v20];
  if (![(EMBaseMessageListItem *)v10 conversationID])
  {
    v11 = +[EMMessage log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = [(EMBaseMessageListItem *)v10 conversationID];
      v13 = [(EMMessage *)v10 description];
      [(EMMessage *)v13 initWithObjectID:buf builder:v12, v11];
    }
  }

  v14 = v22;
  v15 = v10;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)combinedFlagsForMessageListItems:(id)a3
{
  v3 = [EMMessage combinedFlagsForMessageListItems:a3 forDisplay:1];

  return v3;
}

id __57__EMMessage_combinedFlagsForMessageListItems_forDisplay___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];

  return v2;
}

+ (id)combinedFlagsForMessageListItemFlags:(id)a3 forDisplay:(BOOL)a4
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E699B308]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__EMMessage_combinedFlagsForMessageListItemFlags_forDisplay___block_invoke;
  v10[3] = &unk_1E826DA38;
  v7 = v5;
  v11 = v7;
  v12 = a4;
  v8 = [v6 initWithBuilder:v10];

  return v8;
}

void __61__EMMessage_combinedFlagsForMessageListItemFlags_forDisplay___block_invoke(uint64_t a1, void *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v99 objects:v113 count:16];
  if (v5)
  {
    v6 = *v100;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v100 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v99 + 1) + 8 * i) read] & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  [v3 setRead:v8];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v95 objects:v112 count:16];
  if (v10)
  {
    v11 = *v96;
    while (2)
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v96 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v95 + 1) + 8 * j) deleted] & 1) == 0)
        {
          v13 = 0;
          goto LABEL_21;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v95 objects:v112 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_21:

  [v3 setDeleted:v13];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v91 objects:v111 count:16];
  if (v15)
  {
    v16 = *v92;
    while (2)
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v92 != v16)
        {
          objc_enumerationMutation(v14);
        }

        if ([*(*(&v91 + 1) + 8 * k) replied])
        {
          v15 = 1;
          goto LABEL_31;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v91 objects:v111 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  [v3 setReplied:v15];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v18 = *(a1 + 32);
  v19 = [v18 countByEnumeratingWithState:&v87 objects:v110 count:16];
  if (v19)
  {
    v20 = *v88;
    while (2)
    {
      for (m = 0; m != v19; ++m)
      {
        if (*v88 != v20)
        {
          objc_enumerationMutation(v18);
        }

        if ([*(*(&v87 + 1) + 8 * m) draft])
        {
          v19 = 1;
          goto LABEL_41;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v87 objects:v110 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:

  [v3 setDraft:v19];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v22 = *(a1 + 32);
  v23 = [v22 countByEnumeratingWithState:&v83 objects:v109 count:16];
  if (v23)
  {
    v24 = *v84;
    while (2)
    {
      for (n = 0; n != v23; ++n)
      {
        if (*v84 != v24)
        {
          objc_enumerationMutation(v22);
        }

        if ([*(*(&v83 + 1) + 8 * n) forwarded])
        {
          v23 = 1;
          goto LABEL_51;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v83 objects:v109 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:

  [v3 setForwarded:v23];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v26 = *(a1 + 32);
  v27 = [v26 countByEnumeratingWithState:&v79 objects:v108 count:16];
  if (v27)
  {
    v28 = *v80;
    while (2)
    {
      for (ii = 0; ii != v27; ++ii)
      {
        if (*v80 != v28)
        {
          objc_enumerationMutation(v26);
        }

        if ([*(*(&v79 + 1) + 8 * ii) redirected])
        {
          v27 = 1;
          goto LABEL_61;
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v79 objects:v108 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_61:

  [v3 setRedirected:v27];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v30 = *(a1 + 32);
  v31 = [v30 countByEnumeratingWithState:&v75 objects:v107 count:16];
  if (v31)
  {
    v32 = *v76;
    while (2)
    {
      for (jj = 0; jj != v31; ++jj)
      {
        if (*v76 != v32)
        {
          objc_enumerationMutation(v30);
        }

        if ([*(*(&v75 + 1) + 8 * jj) junkLevelSetByUser])
        {
          v31 = 1;
          goto LABEL_71;
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v75 objects:v107 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_71:

  [v3 setJunkLevelSetByUser:v31];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v34 = *(a1 + 32);
  v35 = [v34 countByEnumeratingWithState:&v71 objects:v106 count:16];
  if (v35)
  {
    v36 = *v72;
    while (2)
    {
      for (kk = 0; kk != v35; ++kk)
      {
        if (*v72 != v36)
        {
          objc_enumerationMutation(v34);
        }

        if ([*(*(&v71 + 1) + 8 * kk) touchedByCleanup])
        {
          v35 = 1;
          goto LABEL_81;
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v71 objects:v106 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_81:

  [v3 setTouchedByCleanup:v35];
  if (*(a1 + 40) == 1)
  {
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v38 = *(a1 + 32);
    v39 = [v38 countByEnumeratingWithState:&v67 objects:v105 count:16];
    if (v39)
    {
      v40 = *v68;
      while (2)
      {
        for (mm = 0; mm != v39; ++mm)
        {
          if (*v68 != v40)
          {
            objc_enumerationMutation(v38);
          }

          if ([*(*(&v67 + 1) + 8 * mm) flagged])
          {
            v39 = 1;
            goto LABEL_101;
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v67 objects:v105 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

LABEL_101:

    [v3 setFlagged:v39];
  }

  else
  {
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v42 = *(a1 + 32);
    v43 = [v42 countByEnumeratingWithState:&v63 objects:v104 count:16];
    if (v43)
    {
      v44 = *v64;
      while (2)
      {
        for (nn = 0; nn != v43; ++nn)
        {
          if (*v64 != v44)
          {
            objc_enumerationMutation(v42);
          }

          if (([*(*(&v63 + 1) + 8 * nn) flagged] & 1) == 0)
          {
            v46 = 0;
            goto LABEL_103;
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v63 objects:v104 count:16];
        if (v43)
        {
          continue;
        }

        break;
      }
    }

    v46 = 1;
LABEL_103:

    [v3 setFlagged:v46];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v47 = *(a1 + 32);
  v58 = v3;
  v48 = 0;
  v49 = [v47 countByEnumeratingWithState:&v59 objects:v103 count:16];
  if (v49)
  {
    v50 = 0;
    v51 = 0;
    v52 = *v60;
    v53 = 1;
    while (1)
    {
      for (i1 = 0; i1 != v49; ++i1)
      {
        if (*v60 != v52)
        {
          objc_enumerationMutation(v47);
        }

        v55 = *(*(&v59 + 1) + 8 * i1);
        if (v50)
        {
          v50 = 1;
          if (v51)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v56 = [*(*(&v59 + 1) + 8 * i1) junkLevel];
          v50 = (v56 & 0xFFFFFFFFFFFFFFFDLL) == 0;
          if ((v56 & 0xFFFFFFFFFFFFFFFDLL) == 0)
          {
            v53 = 2;
          }

          if (v51)
          {
LABEL_111:
            if (v50)
            {
              goto LABEL_124;
            }

LABEL_118:
            v51 = 1;
            continue;
          }
        }

        if ([v55 flagged])
        {
          v48 = [v55 flagColor];
          if (v50)
          {
            goto LABEL_124;
          }

          goto LABEL_118;
        }

        v51 = 0;
      }

      v49 = [v47 countByEnumeratingWithState:&v59 objects:v103 count:16];
      if (!v49)
      {
        goto LABEL_124;
      }
    }
  }

  v53 = 1;
LABEL_124:

  [v58 setJunkLevel:v53];
  [v58 setFlagColor:v48];

  v57 = *MEMORY[0x1E69E9840];
}

- (NSString)mailProviderDisplayNameForBIMI
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(EMBaseMessageListItem *)self mailboxes];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) account];
        v9 = [v8 hostname];

        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [v3 ef_anyPassingTest:&__block_literal_global_30_1];
  v11 = EMBIMIMailProviderDisplayNameForIncomingMailServer(v10);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setCachedMetadata:(id)a3 forKey:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EMMessage *)self repository];
  v9 = v6;
  v10 = v7;
  if (v9)
  {
    v18 = 0;
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:12 error:&v18];
    v12 = v18;
    if (!v11)
    {
      v13 = +[EMMessage log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v12 ef_publicDescription];
        [(EMMessage *)v10 setCachedMetadata:v14 forKey:v19];
      }
    }

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(EMObject *)self objectID];
  [v8 setCachedMetadataJSON:v15 forKey:v10 messageID:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (id)cachedMetadataOfClass:(Class)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(EMMessage *)self repository];
  v7 = [(EMObject *)self objectID];
  v8 = [v6 cachedMetadataJSONForKey:v5 messageID:v7];

  v9 = v8;
  v10 = v5;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = [v9 dataUsingEncoding:4];
  if (!v11)
  {
    v13 = +[EMMessage log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [EMMessage cachedMetadataOfClass:v10 forKey:v13];
    }

    goto LABEL_10;
  }

  v20 = 0;
  v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:4 error:&v20];
  v13 = v20;
  if (!v12)
  {
    v14 = +[EMMessage log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 ef_publicDescription];
      [(EMMessage *)v10 cachedMetadataOfClass:v15 forKey:v21];
    }

LABEL_10:
    v12 = 0;
  }

LABEL_12:
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v12;
      goto LABEL_19;
    }

    v17 = +[EMMessage log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EMMessage cachedMetadataOfClass:v10 forKey:v17];
    }
  }

  v16 = 0;
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

- (EMMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMessage;
  v5 = [(EMBaseMessageListItem *)&v9 initWithCoder:v4];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__EMMessage_initWithCoder___block_invoke;
    v7[3] = &unk_1E826DA60;
    v8 = v4;
    [(EMMessage *)v5 _commonInitWithBuilder:v7];
  }

  return v5;
}

void __27__EMMessage_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_documentID"];
  [v5 setDocumentID:v3];

  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchableMessageID"];
  [v5 setSearchableMessageID:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMMessage;
  [(EMBaseMessageListItem *)&v7 encodeWithCoder:v4];
  v5 = [(EMMessage *)self documentID];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_documentID"];

  v6 = [(EMMessage *)self searchableMessageID];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_searchableMessageID"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EMMessage;
  v4 = [(EMBaseMessageListItem *)&v8 debugDescription];
  v5 = [(EMMessage *)self searchableMessageID];
  v6 = [v3 stringWithFormat:@"%@\n\tsearchableMessageID:%@", v4, v5];

  return v6;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EMMessage;
  v4 = [(EMBaseMessageListItem *)&v8 ef_publicDescription];
  v5 = [(EMMessage *)self searchableMessageID];
  v6 = [v3 stringWithFormat:@"%@\n\tsearchableMessageID:%@", v4, v5];

  return v6;
}

- (EMCollectionItemID)itemID
{
  v2 = [(EMObject *)self objectID];
  v3 = [v2 collectionItemID];

  return v3;
}

- (NSArray)availableRepresentations
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"raw";
  v5[1] = @"text/plain";
  v5[2] = @"text/html";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setAvailableRepresentations:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:289 description:@"EMMessage has a static set of availableRepresentations"];
}

- (NSString)uniformTypeIdentifier
{
  v2 = objc_opt_class();

  return [v2 uniformTypeIdentifier];
}

- (void)setUniformTypeIdentifier:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v5 = [objc_opt_class() uniformTypeIdentifier];
    v6 = [v9 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [objc_opt_class() uniformTypeIdentifier];
      [v7 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:297 description:{@"%@ can not be changed.", v8}];
    }
  }
}

- (UTType)type
{
  v3 = [(EMMessage *)self uniformTypeIdentifier];
  if (v3)
  {
    v4 = MEMORY[0x1E6982C40];
    v5 = [(EMMessage *)self uniformTypeIdentifier];
    v6 = [v4 typeWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)contentID
{
  v2 = [(EMObject *)self objectID];
  v3 = [v2 stringHash];
  v4 = [v3 stringValue];

  return v4;
}

- (void)setContentID:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:309 description:@"EMMessage has an unmodifiable content identifier"];
}

- (NSString)displayName
{
  v2 = [(EMBaseMessageListItem *)self subject];
  v3 = [v2 subjectString];

  return v3;
}

- (void)setDisplayName:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"EMMessage.m" lineNumber:317 description:@"EMMessage has an unmodifiable display name"];
}

- (id)requestRepresentationWithOptions:(id)a3 completionHandler:(id)a4
{
  v4 = [(EMMessage *)self requestRepresentationWithOptions:a3 delegate:0 completionHandler:a4];

  return v4;
}

- (id)requestRepresentationWithOptions:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1C6655000, "message content representation request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  v12 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 requestedRepresentation];
    v14 = [(EMMessage *)self ef_publicDescription];
    v15 = [(EMObject *)self objectID];
    *buf = 138543874;
    v30 = v13;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v15;
    _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "requesting %{public}@ content for message %{public}@ (%{public}@)", buf, 0x20u);
  }

  v16 = [(EMMessage *)self availableRepresentations];
  v17 = [v8 requestedRepresentation];
  v18 = [v16 containsObject:v17];

  if (v18)
  {
    v19 = [(EMMessage *)self loaderBlock];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__EMMessage_requestRepresentationWithOptions_delegate_completionHandler___block_invoke;
    v26[3] = &unk_1E826BFE8;
    v26[4] = self;
    v27 = v10;
    v20 = (v19)[2](v19, v8, v9, v26);
  }

  else
  {
    v21 = +[EMMessage log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(EMMessage *)self availableRepresentations];
      v23 = [v22 componentsJoinedByString:{@", "}];
      [(EMMessage *)v23 requestRepresentationWithOptions:buf delegate:v21 completionHandler:v22];
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2048 userInfo:0];
    v20 = 0;
    (*(v10 + 2))(v10, 0, v19);
  }

  os_activity_scope_leave(&state);
  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

void __73__EMMessage_requestRepresentationWithOptions_delegate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [v6 setContentItem:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (id)loaderBlock
{
  if (self->_loaderBlock)
  {
    loaderBlock = self->_loaderBlock;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__EMMessage_loaderBlock__block_invoke;
    aBlock[3] = &unk_1E826DA88;
    aBlock[4] = self;
    loaderBlock = aBlock;
  }

  v3 = _Block_copy(loaderBlock);

  return v3;
}

id __24__EMMessage_loaderBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) repository];
  v11 = [*(a1 + 32) objectID];
  v12 = [v10 requestRepresentationForMessageWithID:v11 options:v7 delegate:v8 completionHandler:v9];

  return v12;
}

+ (NSArray)externalDataTypeIdentifiers
{
  if (externalDataTypeIdentifiers_onceToken != -1)
  {
    +[EMMessage(ExternalDataTypes) externalDataTypeIdentifiers];
  }

  v3 = externalDataTypeIdentifiers_identifiers;

  return v3;
}

void __59__EMMessage_ExternalDataTypes__externalDataTypeIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = +[EMMessage uniformTypeIdentifier];
  [v0 addObject:v1];

  v2 = [*MEMORY[0x1E6982DA8] identifier];
  [v0 addObject:v2];

  v3 = [MEMORY[0x1E695DFF8] writableTypeIdentifiersForItemProvider];
  [v0 addObjectsFromArray:v3];

  if (objc_opt_respondsToSelector())
  {
    [v0 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E696AAB0], "performSelector:", sel_writableTypeIdentifiersForItemProvider)}];
  }

  v4 = [MEMORY[0x1E696AEC0] writableTypeIdentifiersForItemProvider];
  [v0 addObjectsFromArray:v4];

  v5 = externalDataTypeIdentifiers_identifiers;
  externalDataTypeIdentifiers_identifiers = v0;
}

- (BOOL)isInManagedAccountWithSourceMailboxScope:(id)a3
{
  v4 = a3;
  v5 = [(EMBaseMessageListItem *)self mailboxes];
  v6 = [v5 ef_filter:&__block_literal_global_467];

  if ([v6 count])
  {
    v7 = +[EMMailboxScope allMailboxesScope];

    if (v7 == v4)
    {
      v14 = 1;
    }

    else
    {
      v20 = 0;
      v8 = [(EMMessage *)self repository];
      v9 = [v8 mailboxRepository];
      v10 = [v4 allMailboxObjectIDsWithMailboxTypeResolver:v9 forExclusion:&v20];

      if (v20 == 1)
      {
        v11 = objc_alloc(MEMORY[0x1E695DFA8]);
        v12 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
        v13 = [v11 initWithArray:v12];

        [v13 minusSet:v10];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E695DFA8]);
        v16 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
        v13 = [v15 initWithArray:v16];

        [v13 intersectSet:v10];
      }

      if ([v13 count])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __69__EMMessage_ManagedSource__isInManagedAccountWithSourceMailboxScope___block_invoke_2;
        v18[3] = &unk_1E826DAB0;
        v19 = v13;
        v14 = [v6 ef_any:v18];
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __69__EMMessage_ManagedSource__isInManagedAccountWithSourceMailboxScope___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 sourceIsManaged];

  return v3;
}

uint64_t __69__EMMessage_ManagedSource__isInManagedAccountWithSourceMailboxScope___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)senderDisplayNameUsingContactStore:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(EMBaseMessageListItem *)self senderList];
    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
      v7 = [v4 displayNameForEmailAddress:v6 abbreviated:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldShowReplyAll
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v3 = [(EMBaseMessageListItem *)self toList];
  v4 = [v3 count];
  v5 = [(EMBaseMessageListItem *)self ccList];
  v6 = ([v5 count] + v4) > 1;

  return v6;
}

+ (id)predicateForMessageWithItemID:(id)a3 mailboxPredicate:(id)a4 mailboxTypeResolver:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"EMMessageQueryAdditions.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"[itemID isKindOfClass:[EMMessageCollectionItemID class]]"}];
  }

  v12 = [[EMMessageObjectID alloc] initWithCollectionItemID:v9 predicate:v10 mailboxTypeResolver:v11];
  v13 = [a1 predicateForMessageWithObjectID:v12];

  return v13;
}

+ (id)predicateForMessageWithObjectID:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"EMMessageQueryAdditions.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[objectID isKindOfClass:[EMMessageObjectID class]]"}];
  }

  v6 = [v5 serializedRepresentation];
  v7 = [a1 _predicateForMessagesWithObjectIDConstantValue:v6 operatorType:4];

  return v7;
}

+ (id)predicateForMessagesWithObjectIDs:(id)a3
{
  v4 = [a3 ef_filter:&__block_literal_global_34];
  v5 = [v4 ef_map:&__block_literal_global_24];

  v6 = [a1 _predicateForMessagesWithObjectIDConstantValue:v5 operatorType:10];

  return v6;
}

uint64_t __65__EMMessage_EMQueryAdditions__predicateForMessagesWithObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __65__EMMessage_EMQueryAdditions__predicateForMessagesWithObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serializedRepresentation];

  return v2;
}

+ (id)predicateForExcludingMessageWithObjectID:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"EMMessageQueryAdditions.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"[objectID isKindOfClass:[EMMessageObjectID class]]"}];
  }

  v6 = [v5 serializedRepresentation];
  v7 = [a1 _predicateForMessagesWithObjectIDConstantValue:v6 operatorType:5];

  return v7;
}

+ (id)predicateForExcludingMessagesWithObjectIDs:(id)a3
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForMessagesWithObjectIDs:a3];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)_predicateForMessagesWithObjectIDConstantValue:(id)a3 operatorType:(unint64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"objectID.serializedRepresentation"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:a4 options:0];

  return v9;
}

- (void)initWithObjectID:(uint64_t)a3 builder:(os_log_t)log .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_fault_impl(&dword_1C6655000, log, OS_LOG_TYPE_FAULT, "Error Message has NO conversationID:%llu, please check previous logs for more info %@", buf, 0x16u);
}

- (void)setCachedMetadata:(uint64_t)a3 forKey:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1C6655000, v5, OS_LOG_TYPE_ERROR, "Unable to encode object for key '%{public}@': %{public}@", v4, 0x16u);
}

- (void)cachedMetadataOfClass:(uint64_t)a3 forKey:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1C6655000, v5, OS_LOG_TYPE_ERROR, "Unable to decode cached metadata for key '%{public}@': %{public}@", v4, 0x16u);
}

- (void)cachedMetadataOfClass:(uint64_t)a1 forKey:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Found invalid JSON for key '%{public}@'.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cachedMetadataOfClass:(uint64_t)a1 forKey:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Cached metadata for key '%{public}@' is of unexpected class.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)requestRepresentationWithOptions:(os_log_t)log delegate:(void *)a4 completionHandler:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "available representations does not contain requested representation: {%{public}@}", buf, 0xCu);
}

@end