@interface EMBaseMessageListItem
+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)a3;
+ (OS_os_log)log;
- (BOOL)arePropertiesEqual:(id)a3;
- (BOOL)deleteMovesToTrash;
- (BOOL)hasUnflagged;
- (BOOL)isEditable;
- (BOOL)shouldArchiveByDefault;
- (BOOL)supportsArchiving;
- (EMBaseMessageListItem)initWithCoder:(id)a3;
- (EMBaseMessageListItem)initWithObjectID:(id)a3;
- (EMBaseMessageListItem)initWithObjectID:(id)a3 baseBuilder:(id)a4;
- (EMMessageRepository)repository;
- (NSArray)mailboxObjectIDs;
- (NSArray)mailboxes;
- (NSArray)mailboxesIfAvailable;
- (NSArray)senderList;
- (NSIndexSet)flagColors;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSString)ef_shortPublicDescription;
- (id)changeFrom:(id)a3;
- (id)flagDescription;
- (id)valueForUndefinedKey:(id)a3;
- (void)_commonInitWithBaseBuilder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDisplayMessageItemID:(id)a3;
- (void)setFlagColors:(id)a3;
- (void)setHasUnflagged:(BOOL)a3;
- (void)setMailboxObjectIDs:(id)a3;
- (void)setMailboxes:(id)a3;
- (void)setRepository:(id)a3;
- (void)setSenderList:(id)a3;
@end

@implementation EMBaseMessageListItem

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMBaseMessageListItem;
  v4 = [(EMRepositoryObject *)&v7 repository];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:34 description:@"Wrong repository type"];
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
      [v6 handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:34 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMBaseMessageListItem;
  [(EMRepositoryObject *)&v7 setRepository:v5];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EMBaseMessageListItem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __28__EMBaseMessageListItem_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

- (EMBaseMessageListItem)initWithObjectID:(id)a3
{
  v5 = a3;
  [(EMBaseMessageListItem *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMBaseMessageListItem initWithObjectID:]", "EMBaseMessageListItem.m", 101, "0");
}

- (EMBaseMessageListItem)initWithObjectID:(id)a3 baseBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v15.receiver = self;
  v15.super_class = EMBaseMessageListItem;
  v9 = [(EMObject *)&v15 initWithObjectID:v7];
  v10 = v9;
  if (v9)
  {
    v13 = v9;
    v14 = v8;
    ECAllowNetworkActivityButLog();
  }

  return v10;
}

- (void)_commonInitWithBaseBuilder:(id)a3
{
  v4 = a3;
  self->_mailboxesLock._os_unfair_lock_opaque = 0;
  v7 = v4;
  (*(v4 + 2))(v4, self);
  v5 = [(EMBaseMessageListItem *)self displayDate];

  if (!v5)
  {
    v6 = [(EMBaseMessageListItem *)self date];
    [(EMBaseMessageListItem *)self setDisplayDate:v6];
  }
}

- (id)changeFrom:(id)a3
{
  v3 = [EMMessageListItemChange changeFrom:a3 to:self];

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"readLaterDate"])
  {
    v5 = [(EMBaseMessageListItem *)self readLater];
    v6 = [v5 date];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EMBaseMessageListItem;
    v6 = [(EMBaseMessageListItem *)&v8 valueForUndefinedKey:v4];
  }

  return v6;
}

- (BOOL)arePropertiesEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(EMObject *)self objectID];
      v6 = [(EMObject *)v4 objectID];
      if (EFObjectsAreEqual())
      {
        v7 = [(EMBaseMessageListItem *)self subject];
        v8 = [(EMBaseMessageListItem *)v4 subject];
        if (EFObjectsAreEqual())
        {
          v9 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
          v10 = [(EMBaseMessageListItem *)v4 mailboxObjectIDs];
          if (EFObjectsAreEqual())
          {
            v56 = [(EMBaseMessageListItem *)self senderAddress];
            v11 = [(EMBaseMessageListItem *)v4 senderAddress];
            if (EFObjectsAreEqual())
            {
              v55 = [(EMBaseMessageListItem *)self flags];
              v54 = [(EMBaseMessageListItem *)v4 flags];
              if (EFObjectsAreEqual() && (v12 = [(EMBaseMessageListItem *)self isVIP], v12 == [(EMBaseMessageListItem *)v4 isVIP]) && (v13 = [(EMBaseMessageListItem *)self isBlocked], v13 == [(EMBaseMessageListItem *)v4 isBlocked]) && (v14 = [(EMBaseMessageListItem *)self searchResultType], v14 == [(EMBaseMessageListItem *)v4 searchResultType]))
              {
                v53 = [(EMBaseMessageListItem *)self searchRelevanceScore];
                v52 = [(EMBaseMessageListItem *)v4 searchRelevanceScore];
                if (v53 == v52 && (v15 = [(EMBaseMessageListItem *)self unsubscribeType], v15 == [(EMBaseMessageListItem *)v4 unsubscribeType]) && (v16 = [(EMBaseMessageListItem *)self isToMe], v16 == [(EMBaseMessageListItem *)v4 isToMe]) && (v17 = [(EMBaseMessageListItem *)self isCCMe], v17 == [(EMBaseMessageListItem *)v4 isCCMe]) && (v18 = [(EMBaseMessageListItem *)self hasAttachments], v18 == [(EMBaseMessageListItem *)v4 hasAttachments]) && (v19 = [(EMBaseMessageListItem *)self isAuthenticated], v19 == [(EMBaseMessageListItem *)v4 isAuthenticated]) && (v20 = [(EMBaseMessageListItem *)self allowAuthenticationWarning], v20 == [(EMBaseMessageListItem *)v4 allowAuthenticationWarning]) && (v21 = [(EMBaseMessageListItem *)self conversationNotificationLevel], v21 == [(EMBaseMessageListItem *)v4 conversationNotificationLevel]))
                {
                  v51 = [(EMBaseMessageListItem *)self brandIndicatorLocation];
                  v50 = [(EMBaseMessageListItem *)v4 brandIndicatorLocation];
                  if (EFObjectsAreEqual())
                  {
                    v49 = [(EMBaseMessageListItem *)self date];
                    v48 = [(EMBaseMessageListItem *)v4 date];
                    if (EFObjectsAreEqual())
                    {
                      v47 = [(EMBaseMessageListItem *)self displayDate];
                      v46 = [(EMBaseMessageListItem *)v4 displayDate];
                      if (EFObjectsAreEqual())
                      {
                        v45 = [(EMBaseMessageListItem *)self readLater];
                        v44 = [(EMBaseMessageListItem *)v4 readLater];
                        if (EFObjectsAreEqual())
                        {
                          v43 = [(EMBaseMessageListItem *)self sendLaterDate];
                          v42 = [(EMBaseMessageListItem *)v4 sendLaterDate];
                          if (EFObjectsAreEqual())
                          {
                            v41 = [(EMBaseMessageListItem *)self followUp];
                            v40 = [(EMBaseMessageListItem *)v4 followUp];
                            if (EFObjectsAreEqual())
                            {
                              v39 = [(EMBaseMessageListItem *)self category];
                              v38 = [(EMBaseMessageListItem *)v4 category];
                              if (EFObjectsAreEqual())
                              {
                                v37 = [(EMBaseMessageListItem *)self groupedSenderMessageListItems];
                                v36 = [(EMBaseMessageListItem *)v4 groupedSenderMessageListItems];
                                if (EFArraysAreEqual() && (v22 = [(EMBaseMessageListItem *)self businessID], v22 == [(EMBaseMessageListItem *)v4 businessID]))
                                {
                                  v35 = [(EMBaseMessageListItem *)self businessLogoID];
                                  v34 = [(EMBaseMessageListItem *)v4 businessLogoID];
                                  if (v35 == v34)
                                  {
                                    v33 = [(EMBaseMessageListItem *)self summary];
                                    v32 = [(EMBaseMessageListItem *)v4 summary];
                                    if (EFObjectsAreEqual() && (v25 = [(EMBaseMessageListItem *)self conversationID], v25 == [(EMBaseMessageListItem *)v4 conversationID]))
                                    {
                                      v26 = [(EMBaseMessageListItem *)self toList];
                                      v31 = [(EMBaseMessageListItem *)v4 toList];
                                      if (EFArraysAreEqual())
                                      {
                                        v30 = [(EMBaseMessageListItem *)self ccList];
                                        v29 = [(EMBaseMessageListItem *)v4 ccList];
                                        if (EFArraysAreEqual())
                                        {
                                          v28 = [(EMBaseMessageListItem *)self bccList];
                                          v27 = [(EMBaseMessageListItem *)v4 bccList];
                                          v23 = EFArraysAreEqual();
                                        }

                                        else
                                        {
                                          v23 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v23 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v23 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v23 = 0;
                                  }
                                }

                                else
                                {
                                  v23 = 0;
                                }
                              }

                              else
                              {
                                v23 = 0;
                              }
                            }

                            else
                            {
                              v23 = 0;
                            }
                          }

                          else
                          {
                            v23 = 0;
                          }
                        }

                        else
                        {
                          v23 = 0;
                        }
                      }

                      else
                      {
                        v23 = 0;
                      }
                    }

                    else
                    {
                      v23 = 0;
                    }
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (NSString)debugDescription
{
  v28 = MEMORY[0x1E696AEC0];
  v45.receiver = self;
  v45.super_class = EMBaseMessageListItem;
  v44 = [(EMObject *)&v45 debugDescription];
  v37 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
  v43 = [v37 debugDescription];
  v36 = [(EMBaseMessageListItem *)self senderAddress];
  v42 = [v36 debugDescription];
  v35 = [(EMBaseMessageListItem *)self subject];
  v41 = [v35 debugDescription];
  v34 = [(EMBaseMessageListItem *)self category];
  v40 = [v34 debugDescription];
  v25 = [(EMBaseMessageListItem *)self businessID];
  v39 = [(EMBaseMessageListItem *)self businessLogoID];
  v3 = [(EMBaseMessageListItem *)self isAuthenticated];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v23 = v4;
  v33 = [(EMBaseMessageListItem *)self toList];
  v38 = [v33 debugDescription];
  v31 = [(EMBaseMessageListItem *)self ccList];
  v32 = [v31 debugDescription];
  v27 = [(EMBaseMessageListItem *)self bccList];
  v30 = [v27 debugDescription];
  v26 = [(EMBaseMessageListItem *)self flags];
  v21 = [(EMBaseMessageListItem *)self conversationNotificationLevel];
  v5 = [(EMBaseMessageListItem *)self isVIP];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v19 = v6;
  v7 = [(EMBaseMessageListItem *)self isBlocked];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v17 = v8;
  v16 = [(EMBaseMessageListItem *)self searchResultType];
  v24 = [(EMBaseMessageListItem *)self searchRelevanceScore];
  v14 = [(EMBaseMessageListItem *)self unsubscribeType];
  [(EMBaseMessageListItem *)self conversationID];
  v22 = EFStringWithInt64();
  v20 = [(EMBaseMessageListItem *)self date];
  v18 = [(EMBaseMessageListItem *)self displayDate];
  v15 = [(EMBaseMessageListItem *)self summary];
  v9 = [(EMBaseMessageListItem *)self generatedSummary];
  v10 = [v9 debugDescription];
  v11 = [(EMBaseMessageListItem *)self isUrgent];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v29 = [v28 stringWithFormat:@"%@\n\tMailboxes:%@\n\tSenderAddress:%@\n\tSubject:%@ \n\tCategory:%@\n\tBusinessID:%llu\n\tBusinessLogoID:%@\n\tisAuthenticated:%@\n\tToList:%@ \n\tCCList:%@ \n\tBCCList:%@ \n\tFlags:%@ \n\tConversationNotificationLevel:%ld \n\tIsVIP:%@ \n\tIsBlocked:%@ \n\tSearchResultType:%ld \n\tSearchRelevanceScore:%@ \n\tUnsubscribeType:%ld \n\tConversationID:%@ \n\tDate:%@ \n\tDisplayDate:%@ \n\tSummary:%@\n\tGenerated Summary:%@ (isUrgent = %@)", v44, v43, v42, v41, v40, v25, v39, v23, v38, v32, v30, v26, v21, v19, v17, v16, v24, v14, v22, v20, v18, v15, v10, v12];

  return v29;
}

- (NSString)ef_publicDescription
{
  v63 = [(EMBaseMessageListItem *)self mailboxesIfAvailable];
  v3 = [v63 count];
  v4 = [v63 firstObject];
  v5 = [v4 accountIfAvailable];

  if (v3)
  {
    [EMMailbox supportsArchivingForMailboxes:v63];
    v62 = NSStringFromBOOL();
    if (v5)
    {
LABEL_3:
      [objc_opt_class() _shouldArchiveByDefaultForMailboxes:v63];
      v61 = NSStringFromBOOL();
      goto LABEL_6;
    }
  }

  else
  {
    v62 = @"?";
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v61 = @"?";
LABEL_6:
  v6 = [MEMORY[0x1E699B7B0] currentDevice];
  v7 = [v6 isInternal];

  if (v7)
  {
    v64 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
    v43 = MEMORY[0x1E696AEC0];
    v66.receiver = self;
    v66.super_class = EMBaseMessageListItem;
    v60 = [(EMObject *)&v66 ef_publicDescription];
    v59 = [(EMObject *)self objectID];
    v56 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
    v57 = [(EMBaseMessageListItem *)self senderAddress];
    v58 = [v57 emailAddressValue];
    v55 = [(EMBaseMessageListItem *)self subject];
    v49 = [(EMBaseMessageListItem *)self category];
    v54 = EMShortStringForCategory(v49);
    v41 = [(EMBaseMessageListItem *)self businessID];
    v53 = [(EMBaseMessageListItem *)self businessLogoID];
    v8 = [(EMBaseMessageListItem *)self isAuthenticated];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    v40 = v9;
    v48 = [(EMBaseMessageListItem *)self toList];
    v52 = [v64 stringFromEmailAddressList:v48];
    v47 = [(EMBaseMessageListItem *)self ccList];
    v51 = [v64 stringFromEmailAddressList:v47];
    v46 = [(EMBaseMessageListItem *)self bccList];
    v50 = [v64 stringFromEmailAddressList:v46];
    v45 = [(EMBaseMessageListItem *)self flags];
    v36 = [(EMBaseMessageListItem *)self conversationNotificationLevel];
    v10 = [(EMBaseMessageListItem *)self isVIP];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v34 = v11;
    v12 = [(EMBaseMessageListItem *)self isBlocked];
    v13 = @"NO";
    if (v12)
    {
      v13 = @"YES";
    }

    v32 = v13;
    v31 = [(EMBaseMessageListItem *)self searchResultType];
    v42 = [(EMBaseMessageListItem *)self searchRelevanceScore];
    v30 = [(EMBaseMessageListItem *)self unsubscribeType];
    [(EMBaseMessageListItem *)self conversationID];
    v39 = EFStringWithInt64();
    v38 = [(EMBaseMessageListItem *)self date];
    v37 = [(EMBaseMessageListItem *)self displayDate];
    v33 = [(EMBaseMessageListItem *)self readLater];
    v35 = [v33 ef_publicDescription];
    v28 = [(EMBaseMessageListItem *)self followUp];
    v29 = [v28 ef_publicDescription];
    v14 = MEMORY[0x1E699B858];
    v26 = [(EMBaseMessageListItem *)self summary];
    v27 = [v14 ec_partiallyRedactedStringForSubjectOrSummary:v26];
    v15 = [(EMBaseMessageListItem *)self generatedSummary];
    v16 = [v15 ef_publicDescription];
    v17 = [(EMBaseMessageListItem *)self isUrgent];
    v18 = @"NO";
    if (v17)
    {
      v18 = @"YES";
    }

    v44 = [v43 stringWithFormat:@"%@\n\tObjectID:%@\n\tMailboxes:%@\n\tSenderAddress:%@\n\tSubject:%@ \n\tCategory:%@\n\tBusinessID:%llu\n\tBusinessLogoID:%@\n\tisAuthenticated:%@\n\tToList:%@ \n\tCCList:%@ \n\tBCCList:%@ \n\tFlags:%@ \n\tConversationNotificationLevel:%ld \n\tIsVIP:%@ \n\tIsBlocked:%@ \n\tSearchResultType:%ld \n\tSearchRelevanceScore:%@ \n\tUnsubscribeType:%ld \n\tConversationID:%@ \n\tDate:%@ \n\tDisplayDate:%@ \n\tRemind Me:%@ \n\tFollow Up:%@ \n\tSummary:%@ \n\tGenerated Summary:%@ (isUrgent = %@)\n\tSupportsArchiving:%@ \n\tShouldArchive:%@", v60, v59, v56, v58, v55, v54, v41, v53, v40, v52, v51, v50, v45, v36, v34, v32, v31, v42, v30, v39, v38, v37, v35, v29, v27, v16, v18, v62, v61];

    v19 = v44;
  }

  else
  {
    v64 = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMBaseMessageListItem conversationID](self, "conversationID")}];
    v20 = MEMORY[0x1E696AEC0];
    v65.receiver = self;
    v65.super_class = EMBaseMessageListItem;
    v60 = [(EMObject *)&v65 ef_publicDescription];
    v59 = [v64 ef_publicDescription];
    v56 = [(EMBaseMessageListItem *)self flags];
    v57 = [v56 ef_publicDescription];
    v21 = [(EMBaseMessageListItem *)self conversationNotificationLevel];
    if ([(EMBaseMessageListItem *)self isBlocked])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = [(EMBaseMessageListItem *)self searchResultType];
    v58 = [(EMBaseMessageListItem *)self searchRelevanceScore];
    v24 = [(EMBaseMessageListItem *)self unsubscribeType];
    v55 = [(EMBaseMessageListItem *)self date];
    v19 = [v20 stringWithFormat:@"%@ \n\tConversationID:%@ \n\tFlags:%@ \n\tConversationNotificationLevel:%ld \n\tIsBlocked:%@ \n\tSearchResultType:%ld \n\tSearchRelevanceScore:%@ \n\tunsubscribeType:%ld \n\tDate:%@ \n\tSupports Archiving:%@ \n\tShould Archive By Default:%@", v60, v59, v57, v21, v22, v23, v58, v24, v55, v62, v61];
  }

  return v19;
}

- (NSString)ef_shortPublicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v17.receiver = self;
    v17.super_class = EMBaseMessageListItem;
    v6 = [(EMObject *)&v17 ef_publicDescription];
    [(EMBaseMessageListItem *)self conversationID];
    v7 = EFStringWithInt64();
    v8 = [(EMBaseMessageListItem *)self subject];
    v9 = [v8 ef_publicDescription];
    v10 = [(EMBaseMessageListItem *)self flags];
    v11 = [v10 ef_publicDescription];
    v12 = [v5 stringWithFormat:@"%@ \n\tConversationID:%@\n\tSubject:%@ \n\tFlags:%@ \n", v6, v7, v9, v11];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMBaseMessageListItem conversationID](self, "conversationID")}];
    v13 = MEMORY[0x1E696AEC0];
    v16.receiver = self;
    v16.super_class = EMBaseMessageListItem;
    v7 = [(EMObject *)&v16 ef_publicDescription];
    v8 = [v6 ef_publicDescription];
    v9 = [(EMBaseMessageListItem *)self flags];
    v10 = [v9 ef_publicDescription];
    v11 = [(EMBaseMessageListItem *)self date];
    v12 = [v13 stringWithFormat:@"%@ \n\tConversationID:%@ \n\tFlags:%@ \n\tDate:%@ \n", v7, v8, v10, v11];
  }

  v14 = v12;

  return v14;
}

- (id)flagDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EMObject *)self objectID];
  [(EMBaseMessageListItem *)self conversationID];
  v7 = EFStringWithInt64();
  v8 = [(EMBaseMessageListItem *)self flags];
  v9 = [v3 stringWithFormat:@"<%@: %p> ObjectID:%@, ConversationID:%@, Flags:%@", v5, self, v6, v7, v8];

  return v9;
}

- (EMBaseMessageListItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMBaseMessageListItem;
  v5 = [(EMObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__EMBaseMessageListItem_initWithCoder___block_invoke;
    v7[3] = &unk_1E826C2A0;
    v8 = v4;
    [(EMBaseMessageListItem *)v5 _commonInitWithBaseBuilder:v7];
  }

  return v5;
}

void __39__EMBaseMessageListItem_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v52 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
  [v52 setSubject:v3];

  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_mailboxObjectIDs"];
  [v52 setMailboxObjectIDs:v8];

  v9 = *(a1 + 32);
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v9 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_senderAddress"];
  [v52 setSenderAddress:v13];

  v14 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flags"];
  [v52 setFlags:v14];

  [v52 setIsVIP:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isVIP"}];
  [v52 setIsBlocked:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isBlocked"}];
  [v52 setSearchResultType:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_searchResultType"}];
  v15 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchRelevanceScore"];
  [v52 setSearchRelevanceScore:v15];

  [v52 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_unsubscribeType"}];
  [v52 setIsToMe:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isToMe"}];
  [v52 setIsCCMe:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isCCMe"}];
  [v52 setHasAttachments:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_hasAttachments"}];
  [v52 setIsAuthenticated:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isAuthenticated"}];
  [v52 setAllowAuthenticationWarning:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_allowAuthenticationWarning"}];
  v16 = *(a1 + 32);
  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v18 = [v16 decodeObjectOfClasses:v17 forKey:@"EFPropertyKey_conversationNotificationLevel"];
  [v52 setConversationNotificationLevel:{objc_msgSend(v18, "integerValue")}];

  v19 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_brandIndicatorLocation"];
  [v52 setBrandIndicatorLocation:v19];

  v20 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
  [v52 setDate:v20];

  v21 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayDate"];
  [v52 setDisplayDate:v21];

  v22 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_readLater"];
  [v52 setReadLater:v22];

  v23 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sendLaterDate"];
  [v52 setSendLaterDate:v23];

  v24 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_followUp"];
  [v52 setFollowUp:v24];

  v25 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_category"];
  [v52 setCategory:v25];

  v26 = *(a1 + 32);
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v30 = [v26 decodeObjectOfClasses:v29 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];
  [v52 setGroupedSenderMessageListItems:v30];

  [v52 setBusinessID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"EFPropertyKey_businessID"}];
  v31 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessLogoID"];
  [v52 setBusinessLogoID:v31];

  v32 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_summary"];
  [v52 setSummary:v32];

  v33 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_generatedSummary"];
  [v52 setGeneratedSummary:v33];

  [v52 setConversationID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"EFPropertyKey_conversationID"}];
  v34 = *(a1 + 32);
  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
  v39 = [v34 decodeObjectOfClasses:v38 forKey:@"EFPropertyKey_toList"];
  [v52 setToList:v39];

  v40 = *(a1 + 32);
  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v41 setWithObjects:{v42, v43, objc_opt_class(), 0}];
  v45 = [v40 decodeObjectOfClasses:v44 forKey:@"EFPropertyKey_ccList"];
  [v52 setCcList:v45];

  v46 = *(a1 + 32);
  v47 = MEMORY[0x1E695DFD8];
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = [v47 setWithObjects:{v48, v49, objc_opt_class(), 0}];
  v51 = [v46 decodeObjectOfClasses:v50 forKey:@"EFPropertyKey_bccList"];
  [v52 setBccList:v51];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = EMBaseMessageListItem;
  [(EMObject *)&v25 encodeWithCoder:v4];
  v5 = [(EMBaseMessageListItem *)self subject];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_subject"];

  v6 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_mailboxObjectIDs"];

  v7 = [(EMBaseMessageListItem *)self senderAddress];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_senderAddress"];

  v8 = [(EMBaseMessageListItem *)self flags];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_flags"];

  [v4 encodeBool:-[EMBaseMessageListItem isVIP](self forKey:{"isVIP"), @"EFPropertyKey_isVIP"}];
  [v4 encodeBool:-[EMBaseMessageListItem isBlocked](self forKey:{"isBlocked"), @"EFPropertyKey_isBlocked"}];
  [v4 encodeInteger:-[EMBaseMessageListItem searchResultType](self forKey:{"searchResultType"), @"EFPropertyKey_searchResultType"}];
  v9 = [(EMBaseMessageListItem *)self searchRelevanceScore];
  [v4 encodeObject:v9 forKey:@"EFPropertyKey_searchRelevanceScore"];

  [v4 encodeInteger:-[EMBaseMessageListItem unsubscribeType](self forKey:{"unsubscribeType"), @"EFPropertyKey_unsubscribeType"}];
  [v4 encodeBool:-[EMBaseMessageListItem isToMe](self forKey:{"isToMe"), @"EFPropertyKey_isToMe"}];
  [v4 encodeBool:-[EMBaseMessageListItem isCCMe](self forKey:{"isCCMe"), @"EFPropertyKey_isCCMe"}];
  [v4 encodeBool:-[EMBaseMessageListItem hasAttachments](self forKey:{"hasAttachments"), @"EFPropertyKey_hasAttachments"}];
  [v4 encodeBool:-[EMBaseMessageListItem isAuthenticated](self forKey:{"isAuthenticated"), @"EFPropertyKey_isAuthenticated"}];
  [v4 encodeBool:-[EMBaseMessageListItem allowAuthenticationWarning](self forKey:{"allowAuthenticationWarning"), @"EFPropertyKey_allowAuthenticationWarning"}];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EMBaseMessageListItem conversationNotificationLevel](self, "conversationNotificationLevel")}];
  [v4 encodeObject:v10 forKey:@"EFPropertyKey_conversationNotificationLevel"];

  v11 = [(EMBaseMessageListItem *)self brandIndicatorLocation];
  [v4 encodeObject:v11 forKey:@"EFPropertyKey_brandIndicatorLocation"];

  v12 = [(EMBaseMessageListItem *)self date];
  [v4 encodeObject:v12 forKey:@"EFPropertyKey_date"];

  v13 = [(EMBaseMessageListItem *)self displayDate];
  [v4 encodeObject:v13 forKey:@"EFPropertyKey_displayDate"];

  v14 = [(EMBaseMessageListItem *)self readLater];
  [v4 encodeObject:v14 forKey:@"EFPropertyKey_readLater"];

  v15 = [(EMBaseMessageListItem *)self sendLaterDate];
  [v4 encodeObject:v15 forKey:@"EFPropertyKey_sendLaterDate"];

  v16 = [(EMBaseMessageListItem *)self followUp];
  [v4 encodeObject:v16 forKey:@"EFPropertyKey_followUp"];

  v17 = [(EMBaseMessageListItem *)self category];
  [v4 encodeObject:v17 forKey:@"EFPropertyKey_category"];

  v18 = [(EMBaseMessageListItem *)self groupedSenderMessageListItems];
  [v4 encodeObject:v18 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];

  [v4 encodeInt64:-[EMBaseMessageListItem businessID](self forKey:{"businessID"), @"EFPropertyKey_businessID"}];
  v19 = [(EMBaseMessageListItem *)self businessLogoID];
  [v4 encodeObject:v19 forKey:@"EFPropertyKey_businessLogoID"];

  v20 = [(EMBaseMessageListItem *)self summary];
  [v4 encodeObject:v20 forKey:@"EFPropertyKey_summary"];

  v21 = [(EMBaseMessageListItem *)self generatedSummary];
  [v4 encodeObject:v21 forKey:@"EFPropertyKey_generatedSummary"];

  [v4 encodeInt64:-[EMBaseMessageListItem conversationID](self forKey:{"conversationID"), @"EFPropertyKey_conversationID"}];
  v22 = [(EMBaseMessageListItem *)self toList];
  [v4 encodeObject:v22 forKey:@"EFPropertyKey_toList"];

  v23 = [(EMBaseMessageListItem *)self ccList];
  [v4 encodeObject:v23 forKey:@"EFPropertyKey_ccList"];

  v24 = [(EMBaseMessageListItem *)self bccList];
  [v4 encodeObject:v24 forKey:@"EFPropertyKey_bccList"];
}

- (NSArray)mailboxObjectIDs
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxObjectIDs;
  os_unfair_lock_unlock(&self->_mailboxesLock);

  return v3;
}

- (void)setMailboxObjectIDs:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_mailboxesLock);
  mailboxObjectIDs = self->_mailboxObjectIDs;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    v5 = [v8 copy];
    v6 = self->_mailboxObjectIDs;
    self->_mailboxObjectIDs = v5;

    mailboxes = self->_mailboxes;
    self->_mailboxes = 0;

    self->_isEditable = 0;
  }

  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (NSArray)mailboxes
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxes;
  os_unfair_lock_unlock(&self->_mailboxesLock);
  if (!v3)
  {
    v4 = [(EMBaseMessageListItem *)self repository];
    v5 = [v4 mailboxRepository];

    if (v5)
    {
      v6 = MEMORY[0x1E699B7C8];
      v7 = [(EMBaseMessageListItem *)self repository];
      v8 = [v7 mailboxRepository];
      v9 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
      v10 = [v8 mailboxesForObjectIDs:v9];
      v11 = [v6 combine:v10];
      v12 = [v11 result:0];
      v3 = [v12 ef_filter:*MEMORY[0x1E699B748]];
    }

    else
    {
      v13 = +[EMBaseMessageListItem log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(EMBaseMessageListItem *)v13 mailboxes];
      }

      v3 = MEMORY[0x1E695E0F0];
    }
  }

  return v3;
}

- (NSArray)mailboxesIfAvailable
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxes;
  os_unfair_lock_unlock(&self->_mailboxesLock);
  if (!v3)
  {
    v4 = [(EMBaseMessageListItem *)self repository];
    v5 = [v4 mailboxRepository];

    if (v5)
    {
      v6 = [(EMBaseMessageListItem *)self mailboxObjectIDs];
      v3 = [v5 mailboxesIfAvailableForObjectIDs:v6];
    }

    else
    {
      v7 = +[EMBaseMessageListItem log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(EMBaseMessageListItem *)v7 mailboxesIfAvailable];
      }

      v3 = MEMORY[0x1E695E0F0];
    }
  }

  return v3;
}

- (void)setMailboxes:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_mailboxesLock);
  v4 = [v8 copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v4;

  v6 = [v8 ef_mapSelector:sel_objectID];
  mailboxObjectIDs = self->_mailboxObjectIDs;
  self->_mailboxObjectIDs = v6;

  self->_isEditable = 0;
  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (BOOL)hasUnflagged
{
  v2 = [(EMBaseMessageListItem *)self flags];
  v3 = [v2 flagged];

  return v3 ^ 1;
}

- (void)setHasUnflagged:(BOOL)a3
{
  v5 = objc_alloc(MEMORY[0x1E699B300]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__EMBaseMessageListItem_setHasUnflagged___block_invoke;
  v9[3] = &__block_descriptor_33_e38_v16__0___ECMessageFlagChangeBuilder__8l;
  v10 = a3;
  v6 = [v5 initWithBuilder:v9];
  v7 = [(EMBaseMessageListItem *)self flags];
  v8 = [v6 flagsAfterChangingFlags:v7 flagsWereChanged:0];
  [(EMBaseMessageListItem *)self setFlags:v8];
}

- (NSIndexSet)flagColors
{
  v3 = [(EMBaseMessageListItem *)self flags];
  v4 = [v3 flagged];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AC90]);
    v6 = [(EMBaseMessageListItem *)self flags];
    v7 = [v5 initWithIndex:{objc_msgSend(v6, "flagColor")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setFlagColors:(id)a3
{
  v4 = a3;
  v5 = [(EMBaseMessageListItem *)self flags];
  v6 = [v5 flagged];

  if (v6)
  {
    v7 = [v4 firstIndex];
    if (v7 <= 6)
    {
      v8 = objc_alloc(MEMORY[0x1E699B300]);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__EMBaseMessageListItem_setFlagColors___block_invoke;
      v12[3] = &__block_descriptor_40_e38_v16__0___ECMessageFlagChangeBuilder__8l;
      v12[4] = v7;
      v9 = [v8 initWithBuilder:v12];
      v10 = [(EMBaseMessageListItem *)self flags];
      v11 = [v9 flagsAfterChangingFlags:v10 flagsWereChanged:0];
      [(EMBaseMessageListItem *)self setFlags:v11];
    }
  }
}

- (NSArray)senderList
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(EMBaseMessageListItem *)self senderAddress];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setSenderList:(id)a3
{
  v4 = [a3 firstObject];
  [(EMBaseMessageListItem *)self setSenderAddress:?];
}

- (void)setDisplayMessageItemID:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:622 description:@"displayMessageItemID cannot be set on EMMessage"];
}

- (BOOL)deleteMovesToTrash
{
  v2 = [(EMBaseMessageListItem *)self mailboxes];
  v3 = [EMMailbox deleteMovesToTrashForMailboxes:v2];

  return v3;
}

- (BOOL)supportsArchiving
{
  v2 = [(EMBaseMessageListItem *)self mailboxes];
  v3 = [EMMailbox supportsArchivingForMailboxes:v2];

  return v3;
}

- (BOOL)shouldArchiveByDefault
{
  v3 = objc_opt_class();
  v4 = [(EMBaseMessageListItem *)self mailboxes];
  LOBYTE(v3) = [v3 _shouldArchiveByDefaultForMailboxes:v4];

  return v3;
}

+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)a3
{
  v3 = a3;
  if ([EMMailbox supportsArchivingForMailboxes:v3])
  {
    v4 = [EMMailbox shouldArchiveByDefaultForMailboxes:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEditable
{
  isEditable = self->_isEditable;
  if (!isEditable)
  {
    v4 = [(EMBaseMessageListItem *)self mailboxes];
    v5 = [v4 ef_any:&__block_literal_global_1];

    isEditable = 1;
    if (v5)
    {
      isEditable = 2;
    }

    self->_isEditable = isEditable;
  }

  return isEditable == 2;
}

BOOL __35__EMBaseMessageListItem_isEditable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 5 || objc_msgSend(v2, "type") == 6;

  return v3;
}

@end