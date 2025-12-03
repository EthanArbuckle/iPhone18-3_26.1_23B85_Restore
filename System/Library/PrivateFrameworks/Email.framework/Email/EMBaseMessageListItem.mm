@interface EMBaseMessageListItem
+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)mailboxes;
+ (OS_os_log)log;
- (BOOL)arePropertiesEqual:(id)equal;
- (BOOL)deleteMovesToTrash;
- (BOOL)hasUnflagged;
- (BOOL)isEditable;
- (BOOL)shouldArchiveByDefault;
- (BOOL)supportsArchiving;
- (EMBaseMessageListItem)initWithCoder:(id)coder;
- (EMBaseMessageListItem)initWithObjectID:(id)d;
- (EMBaseMessageListItem)initWithObjectID:(id)d baseBuilder:(id)builder;
- (EMMessageRepository)repository;
- (NSArray)mailboxObjectIDs;
- (NSArray)mailboxes;
- (NSArray)mailboxesIfAvailable;
- (NSArray)senderList;
- (NSIndexSet)flagColors;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSString)ef_shortPublicDescription;
- (id)changeFrom:(id)from;
- (id)flagDescription;
- (id)valueForUndefinedKey:(id)key;
- (void)_commonInitWithBaseBuilder:(id)builder;
- (void)encodeWithCoder:(id)coder;
- (void)setDisplayMessageItemID:(id)d;
- (void)setFlagColors:(id)colors;
- (void)setHasUnflagged:(BOOL)unflagged;
- (void)setMailboxObjectIDs:(id)ds;
- (void)setMailboxes:(id)mailboxes;
- (void)setRepository:(id)repository;
- (void)setSenderList:(id)list;
@end

@implementation EMBaseMessageListItem

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMBaseMessageListItem;
  repository = [(EMRepositoryObject *)&v7 repository];
  if (repository)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:34 description:@"Wrong repository type"];
    }
  }

  return repository;
}

- (void)setRepository:(id)repository
{
  repositoryCopy = repository;
  if (repositoryCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:34 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMBaseMessageListItem;
  [(EMRepositoryObject *)&v7 setRepository:repositoryCopy];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EMBaseMessageListItem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EMBaseMessageListItem)initWithObjectID:(id)d
{
  dCopy = d;
  [(EMBaseMessageListItem *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMBaseMessageListItem initWithObjectID:]", "EMBaseMessageListItem.m", 101, "0");
}

- (EMBaseMessageListItem)initWithObjectID:(id)d baseBuilder:(id)builder
{
  dCopy = d;
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v15.receiver = self;
  v15.super_class = EMBaseMessageListItem;
  v9 = [(EMObject *)&v15 initWithObjectID:dCopy];
  v10 = v9;
  if (v9)
  {
    v13 = v9;
    v14 = builderCopy;
    ECAllowNetworkActivityButLog();
  }

  return v10;
}

- (void)_commonInitWithBaseBuilder:(id)builder
{
  builderCopy = builder;
  self->_mailboxesLock._os_unfair_lock_opaque = 0;
  v7 = builderCopy;
  (*(builderCopy + 2))(builderCopy, self);
  displayDate = [(EMBaseMessageListItem *)self displayDate];

  if (!displayDate)
  {
    date = [(EMBaseMessageListItem *)self date];
    [(EMBaseMessageListItem *)self setDisplayDate:date];
  }
}

- (id)changeFrom:(id)from
{
  v3 = [EMMessageListItemChange changeFrom:from to:self];

  return v3;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"readLaterDate"])
  {
    readLater = [(EMBaseMessageListItem *)self readLater];
    date = [readLater date];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EMBaseMessageListItem;
    date = [(EMBaseMessageListItem *)&v8 valueForUndefinedKey:keyCopy];
  }

  return date;
}

- (BOOL)arePropertiesEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(EMObject *)self objectID];
      objectID2 = [(EMObject *)equalCopy objectID];
      if (EFObjectsAreEqual())
      {
        subject = [(EMBaseMessageListItem *)self subject];
        subject2 = [(EMBaseMessageListItem *)equalCopy subject];
        if (EFObjectsAreEqual())
        {
          mailboxObjectIDs = [(EMBaseMessageListItem *)self mailboxObjectIDs];
          mailboxObjectIDs2 = [(EMBaseMessageListItem *)equalCopy mailboxObjectIDs];
          if (EFObjectsAreEqual())
          {
            senderAddress = [(EMBaseMessageListItem *)self senderAddress];
            senderAddress2 = [(EMBaseMessageListItem *)equalCopy senderAddress];
            if (EFObjectsAreEqual())
            {
              flags = [(EMBaseMessageListItem *)self flags];
              flags2 = [(EMBaseMessageListItem *)equalCopy flags];
              if (EFObjectsAreEqual() && (v12 = [(EMBaseMessageListItem *)self isVIP], v12 == [(EMBaseMessageListItem *)equalCopy isVIP]) && (v13 = [(EMBaseMessageListItem *)self isBlocked], v13 == [(EMBaseMessageListItem *)equalCopy isBlocked]) && (v14 = [(EMBaseMessageListItem *)self searchResultType], v14 == [(EMBaseMessageListItem *)equalCopy searchResultType]))
              {
                searchRelevanceScore = [(EMBaseMessageListItem *)self searchRelevanceScore];
                searchRelevanceScore2 = [(EMBaseMessageListItem *)equalCopy searchRelevanceScore];
                if (searchRelevanceScore == searchRelevanceScore2 && (v15 = [(EMBaseMessageListItem *)self unsubscribeType], v15 == [(EMBaseMessageListItem *)equalCopy unsubscribeType]) && (v16 = [(EMBaseMessageListItem *)self isToMe], v16 == [(EMBaseMessageListItem *)equalCopy isToMe]) && (v17 = [(EMBaseMessageListItem *)self isCCMe], v17 == [(EMBaseMessageListItem *)equalCopy isCCMe]) && (v18 = [(EMBaseMessageListItem *)self hasAttachments], v18 == [(EMBaseMessageListItem *)equalCopy hasAttachments]) && (v19 = [(EMBaseMessageListItem *)self isAuthenticated], v19 == [(EMBaseMessageListItem *)equalCopy isAuthenticated]) && (v20 = [(EMBaseMessageListItem *)self allowAuthenticationWarning], v20 == [(EMBaseMessageListItem *)equalCopy allowAuthenticationWarning]) && (v21 = [(EMBaseMessageListItem *)self conversationNotificationLevel], v21 == [(EMBaseMessageListItem *)equalCopy conversationNotificationLevel]))
                {
                  brandIndicatorLocation = [(EMBaseMessageListItem *)self brandIndicatorLocation];
                  brandIndicatorLocation2 = [(EMBaseMessageListItem *)equalCopy brandIndicatorLocation];
                  if (EFObjectsAreEqual())
                  {
                    date = [(EMBaseMessageListItem *)self date];
                    date2 = [(EMBaseMessageListItem *)equalCopy date];
                    if (EFObjectsAreEqual())
                    {
                      displayDate = [(EMBaseMessageListItem *)self displayDate];
                      displayDate2 = [(EMBaseMessageListItem *)equalCopy displayDate];
                      if (EFObjectsAreEqual())
                      {
                        readLater = [(EMBaseMessageListItem *)self readLater];
                        readLater2 = [(EMBaseMessageListItem *)equalCopy readLater];
                        if (EFObjectsAreEqual())
                        {
                          sendLaterDate = [(EMBaseMessageListItem *)self sendLaterDate];
                          sendLaterDate2 = [(EMBaseMessageListItem *)equalCopy sendLaterDate];
                          if (EFObjectsAreEqual())
                          {
                            followUp = [(EMBaseMessageListItem *)self followUp];
                            followUp2 = [(EMBaseMessageListItem *)equalCopy followUp];
                            if (EFObjectsAreEqual())
                            {
                              category = [(EMBaseMessageListItem *)self category];
                              category2 = [(EMBaseMessageListItem *)equalCopy category];
                              if (EFObjectsAreEqual())
                              {
                                groupedSenderMessageListItems = [(EMBaseMessageListItem *)self groupedSenderMessageListItems];
                                groupedSenderMessageListItems2 = [(EMBaseMessageListItem *)equalCopy groupedSenderMessageListItems];
                                if (EFArraysAreEqual() && (v22 = [(EMBaseMessageListItem *)self businessID], v22 == [(EMBaseMessageListItem *)equalCopy businessID]))
                                {
                                  businessLogoID = [(EMBaseMessageListItem *)self businessLogoID];
                                  businessLogoID2 = [(EMBaseMessageListItem *)equalCopy businessLogoID];
                                  if (businessLogoID == businessLogoID2)
                                  {
                                    summary = [(EMBaseMessageListItem *)self summary];
                                    summary2 = [(EMBaseMessageListItem *)equalCopy summary];
                                    if (EFObjectsAreEqual() && (v25 = [(EMBaseMessageListItem *)self conversationID], v25 == [(EMBaseMessageListItem *)equalCopy conversationID]))
                                    {
                                      toList = [(EMBaseMessageListItem *)self toList];
                                      toList2 = [(EMBaseMessageListItem *)equalCopy toList];
                                      if (EFArraysAreEqual())
                                      {
                                        ccList = [(EMBaseMessageListItem *)self ccList];
                                        ccList2 = [(EMBaseMessageListItem *)equalCopy ccList];
                                        if (EFArraysAreEqual())
                                        {
                                          bccList = [(EMBaseMessageListItem *)self bccList];
                                          bccList2 = [(EMBaseMessageListItem *)equalCopy bccList];
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
  mailboxObjectIDs = [(EMBaseMessageListItem *)self mailboxObjectIDs];
  v43 = [mailboxObjectIDs debugDescription];
  senderAddress = [(EMBaseMessageListItem *)self senderAddress];
  v42 = [senderAddress debugDescription];
  subject = [(EMBaseMessageListItem *)self subject];
  v41 = [subject debugDescription];
  category = [(EMBaseMessageListItem *)self category];
  v40 = [category debugDescription];
  businessID = [(EMBaseMessageListItem *)self businessID];
  businessLogoID = [(EMBaseMessageListItem *)self businessLogoID];
  isAuthenticated = [(EMBaseMessageListItem *)self isAuthenticated];
  v4 = @"NO";
  if (isAuthenticated)
  {
    v4 = @"YES";
  }

  v23 = v4;
  toList = [(EMBaseMessageListItem *)self toList];
  v38 = [toList debugDescription];
  ccList = [(EMBaseMessageListItem *)self ccList];
  v32 = [ccList debugDescription];
  bccList = [(EMBaseMessageListItem *)self bccList];
  v30 = [bccList debugDescription];
  flags = [(EMBaseMessageListItem *)self flags];
  conversationNotificationLevel = [(EMBaseMessageListItem *)self conversationNotificationLevel];
  isVIP = [(EMBaseMessageListItem *)self isVIP];
  v6 = @"NO";
  if (isVIP)
  {
    v6 = @"YES";
  }

  v19 = v6;
  isBlocked = [(EMBaseMessageListItem *)self isBlocked];
  v8 = @"NO";
  if (isBlocked)
  {
    v8 = @"YES";
  }

  v17 = v8;
  searchResultType = [(EMBaseMessageListItem *)self searchResultType];
  searchRelevanceScore = [(EMBaseMessageListItem *)self searchRelevanceScore];
  unsubscribeType = [(EMBaseMessageListItem *)self unsubscribeType];
  [(EMBaseMessageListItem *)self conversationID];
  v22 = EFStringWithInt64();
  date = [(EMBaseMessageListItem *)self date];
  displayDate = [(EMBaseMessageListItem *)self displayDate];
  summary = [(EMBaseMessageListItem *)self summary];
  generatedSummary = [(EMBaseMessageListItem *)self generatedSummary];
  v10 = [generatedSummary debugDescription];
  isUrgent = [(EMBaseMessageListItem *)self isUrgent];
  v12 = @"NO";
  if (isUrgent)
  {
    v12 = @"YES";
  }

  v29 = [v28 stringWithFormat:@"%@\n\tMailboxes:%@\n\tSenderAddress:%@\n\tSubject:%@ \n\tCategory:%@\n\tBusinessID:%llu\n\tBusinessLogoID:%@\n\tisAuthenticated:%@\n\tToList:%@ \n\tCCList:%@ \n\tBCCList:%@ \n\tFlags:%@ \n\tConversationNotificationLevel:%ld \n\tIsVIP:%@ \n\tIsBlocked:%@ \n\tSearchResultType:%ld \n\tSearchRelevanceScore:%@ \n\tUnsubscribeType:%ld \n\tConversationID:%@ \n\tDate:%@ \n\tDisplayDate:%@ \n\tSummary:%@\n\tGenerated Summary:%@ (isUrgent = %@)", v44, v43, v42, v41, v40, businessID, businessLogoID, v23, v38, v32, v30, flags, conversationNotificationLevel, v19, v17, searchResultType, searchRelevanceScore, unsubscribeType, v22, date, displayDate, summary, v10, v12];

  return v29;
}

- (NSString)ef_publicDescription
{
  mailboxesIfAvailable = [(EMBaseMessageListItem *)self mailboxesIfAvailable];
  v3 = [mailboxesIfAvailable count];
  firstObject = [mailboxesIfAvailable firstObject];
  accountIfAvailable = [firstObject accountIfAvailable];

  if (v3)
  {
    [EMMailbox supportsArchivingForMailboxes:mailboxesIfAvailable];
    v62 = NSStringFromBOOL();
    if (accountIfAvailable)
    {
LABEL_3:
      [objc_opt_class() _shouldArchiveByDefaultForMailboxes:mailboxesIfAvailable];
      v61 = NSStringFromBOOL();
      goto LABEL_6;
    }
  }

  else
  {
    v62 = @"?";
    if (accountIfAvailable)
    {
      goto LABEL_3;
    }
  }

  v61 = @"?";
LABEL_6:
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v64 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
    v43 = MEMORY[0x1E696AEC0];
    v66.receiver = self;
    v66.super_class = EMBaseMessageListItem;
    ef_publicDescription = [(EMObject *)&v66 ef_publicDescription];
    objectID = [(EMObject *)self objectID];
    mailboxObjectIDs = [(EMBaseMessageListItem *)self mailboxObjectIDs];
    senderAddress = [(EMBaseMessageListItem *)self senderAddress];
    emailAddressValue = [senderAddress emailAddressValue];
    subject = [(EMBaseMessageListItem *)self subject];
    category = [(EMBaseMessageListItem *)self category];
    v54 = EMShortStringForCategory(category);
    businessID = [(EMBaseMessageListItem *)self businessID];
    businessLogoID = [(EMBaseMessageListItem *)self businessLogoID];
    isAuthenticated = [(EMBaseMessageListItem *)self isAuthenticated];
    v9 = @"NO";
    if (isAuthenticated)
    {
      v9 = @"YES";
    }

    v40 = v9;
    toList = [(EMBaseMessageListItem *)self toList];
    v52 = [v64 stringFromEmailAddressList:toList];
    ccList = [(EMBaseMessageListItem *)self ccList];
    v51 = [v64 stringFromEmailAddressList:ccList];
    bccList = [(EMBaseMessageListItem *)self bccList];
    v50 = [v64 stringFromEmailAddressList:bccList];
    flags = [(EMBaseMessageListItem *)self flags];
    conversationNotificationLevel = [(EMBaseMessageListItem *)self conversationNotificationLevel];
    isVIP = [(EMBaseMessageListItem *)self isVIP];
    v11 = @"NO";
    if (isVIP)
    {
      v11 = @"YES";
    }

    v34 = v11;
    isBlocked = [(EMBaseMessageListItem *)self isBlocked];
    v13 = @"NO";
    if (isBlocked)
    {
      v13 = @"YES";
    }

    v32 = v13;
    searchResultType = [(EMBaseMessageListItem *)self searchResultType];
    searchRelevanceScore = [(EMBaseMessageListItem *)self searchRelevanceScore];
    unsubscribeType = [(EMBaseMessageListItem *)self unsubscribeType];
    [(EMBaseMessageListItem *)self conversationID];
    v39 = EFStringWithInt64();
    date = [(EMBaseMessageListItem *)self date];
    displayDate = [(EMBaseMessageListItem *)self displayDate];
    readLater = [(EMBaseMessageListItem *)self readLater];
    ef_publicDescription2 = [readLater ef_publicDescription];
    followUp = [(EMBaseMessageListItem *)self followUp];
    ef_publicDescription3 = [followUp ef_publicDescription];
    v14 = MEMORY[0x1E699B858];
    summary = [(EMBaseMessageListItem *)self summary];
    v27 = [v14 ec_partiallyRedactedStringForSubjectOrSummary:summary];
    generatedSummary = [(EMBaseMessageListItem *)self generatedSummary];
    ef_publicDescription4 = [generatedSummary ef_publicDescription];
    isUrgent = [(EMBaseMessageListItem *)self isUrgent];
    v18 = @"NO";
    if (isUrgent)
    {
      v18 = @"YES";
    }

    v44 = [v43 stringWithFormat:@"%@\n\tObjectID:%@\n\tMailboxes:%@\n\tSenderAddress:%@\n\tSubject:%@ \n\tCategory:%@\n\tBusinessID:%llu\n\tBusinessLogoID:%@\n\tisAuthenticated:%@\n\tToList:%@ \n\tCCList:%@ \n\tBCCList:%@ \n\tFlags:%@ \n\tConversationNotificationLevel:%ld \n\tIsVIP:%@ \n\tIsBlocked:%@ \n\tSearchResultType:%ld \n\tSearchRelevanceScore:%@ \n\tUnsubscribeType:%ld \n\tConversationID:%@ \n\tDate:%@ \n\tDisplayDate:%@ \n\tRemind Me:%@ \n\tFollow Up:%@ \n\tSummary:%@ \n\tGenerated Summary:%@ (isUrgent = %@)\n\tSupportsArchiving:%@ \n\tShouldArchive:%@", ef_publicDescription, objectID, mailboxObjectIDs, emailAddressValue, subject, v54, businessID, businessLogoID, v40, v52, v51, v50, flags, conversationNotificationLevel, v34, v32, searchResultType, searchRelevanceScore, unsubscribeType, v39, date, displayDate, ef_publicDescription2, ef_publicDescription3, v27, ef_publicDescription4, v18, v62, v61];

    v19 = v44;
  }

  else
  {
    v64 = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMBaseMessageListItem conversationID](self, "conversationID")}];
    v20 = MEMORY[0x1E696AEC0];
    v65.receiver = self;
    v65.super_class = EMBaseMessageListItem;
    ef_publicDescription = [(EMObject *)&v65 ef_publicDescription];
    objectID = [v64 ef_publicDescription];
    mailboxObjectIDs = [(EMBaseMessageListItem *)self flags];
    senderAddress = [mailboxObjectIDs ef_publicDescription];
    conversationNotificationLevel2 = [(EMBaseMessageListItem *)self conversationNotificationLevel];
    if ([(EMBaseMessageListItem *)self isBlocked])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    searchResultType2 = [(EMBaseMessageListItem *)self searchResultType];
    emailAddressValue = [(EMBaseMessageListItem *)self searchRelevanceScore];
    unsubscribeType2 = [(EMBaseMessageListItem *)self unsubscribeType];
    subject = [(EMBaseMessageListItem *)self date];
    v19 = [v20 stringWithFormat:@"%@ \n\tConversationID:%@ \n\tFlags:%@ \n\tConversationNotificationLevel:%ld \n\tIsBlocked:%@ \n\tSearchResultType:%ld \n\tSearchRelevanceScore:%@ \n\tunsubscribeType:%ld \n\tDate:%@ \n\tSupports Archiving:%@ \n\tShould Archive By Default:%@", ef_publicDescription, objectID, senderAddress, conversationNotificationLevel2, v22, searchResultType2, emailAddressValue, unsubscribeType2, subject, v62, v61];
  }

  return v19;
}

- (NSString)ef_shortPublicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v5 = MEMORY[0x1E696AEC0];
    v17.receiver = self;
    v17.super_class = EMBaseMessageListItem;
    ef_publicDescription = [(EMObject *)&v17 ef_publicDescription];
    [(EMBaseMessageListItem *)self conversationID];
    ef_publicDescription4 = EFStringWithInt64();
    subject = [(EMBaseMessageListItem *)self subject];
    ef_publicDescription2 = [subject ef_publicDescription];
    flags = [(EMBaseMessageListItem *)self flags];
    ef_publicDescription3 = [flags ef_publicDescription];
    v12 = [v5 stringWithFormat:@"%@ \n\tConversationID:%@\n\tSubject:%@ \n\tFlags:%@ \n", ef_publicDescription, ef_publicDescription4, ef_publicDescription2, ef_publicDescription3];
  }

  else
  {
    ef_publicDescription = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMBaseMessageListItem conversationID](self, "conversationID")}];
    v13 = MEMORY[0x1E696AEC0];
    v16.receiver = self;
    v16.super_class = EMBaseMessageListItem;
    ef_publicDescription4 = [(EMObject *)&v16 ef_publicDescription];
    subject = [ef_publicDescription ef_publicDescription];
    ef_publicDescription2 = [(EMBaseMessageListItem *)self flags];
    flags = [ef_publicDescription2 ef_publicDescription];
    ef_publicDescription3 = [(EMBaseMessageListItem *)self date];
    v12 = [v13 stringWithFormat:@"%@ \n\tConversationID:%@ \n\tFlags:%@ \n\tDate:%@ \n", ef_publicDescription4, subject, flags, ef_publicDescription3];
  }

  v14 = v12;

  return v14;
}

- (id)flagDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objectID = [(EMObject *)self objectID];
  [(EMBaseMessageListItem *)self conversationID];
  v7 = EFStringWithInt64();
  flags = [(EMBaseMessageListItem *)self flags];
  v9 = [v3 stringWithFormat:@"<%@: %p> ObjectID:%@, ConversationID:%@, Flags:%@", v5, self, objectID, v7, flags];

  return v9;
}

- (EMBaseMessageListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMBaseMessageListItem;
  v5 = [(EMObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__EMBaseMessageListItem_initWithCoder___block_invoke;
    v7[3] = &unk_1E826C2A0;
    v8 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = EMBaseMessageListItem;
  [(EMObject *)&v25 encodeWithCoder:coderCopy];
  subject = [(EMBaseMessageListItem *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  mailboxObjectIDs = [(EMBaseMessageListItem *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];

  senderAddress = [(EMBaseMessageListItem *)self senderAddress];
  [coderCopy encodeObject:senderAddress forKey:@"EFPropertyKey_senderAddress"];

  flags = [(EMBaseMessageListItem *)self flags];
  [coderCopy encodeObject:flags forKey:@"EFPropertyKey_flags"];

  [coderCopy encodeBool:-[EMBaseMessageListItem isVIP](self forKey:{"isVIP"), @"EFPropertyKey_isVIP"}];
  [coderCopy encodeBool:-[EMBaseMessageListItem isBlocked](self forKey:{"isBlocked"), @"EFPropertyKey_isBlocked"}];
  [coderCopy encodeInteger:-[EMBaseMessageListItem searchResultType](self forKey:{"searchResultType"), @"EFPropertyKey_searchResultType"}];
  searchRelevanceScore = [(EMBaseMessageListItem *)self searchRelevanceScore];
  [coderCopy encodeObject:searchRelevanceScore forKey:@"EFPropertyKey_searchRelevanceScore"];

  [coderCopy encodeInteger:-[EMBaseMessageListItem unsubscribeType](self forKey:{"unsubscribeType"), @"EFPropertyKey_unsubscribeType"}];
  [coderCopy encodeBool:-[EMBaseMessageListItem isToMe](self forKey:{"isToMe"), @"EFPropertyKey_isToMe"}];
  [coderCopy encodeBool:-[EMBaseMessageListItem isCCMe](self forKey:{"isCCMe"), @"EFPropertyKey_isCCMe"}];
  [coderCopy encodeBool:-[EMBaseMessageListItem hasAttachments](self forKey:{"hasAttachments"), @"EFPropertyKey_hasAttachments"}];
  [coderCopy encodeBool:-[EMBaseMessageListItem isAuthenticated](self forKey:{"isAuthenticated"), @"EFPropertyKey_isAuthenticated"}];
  [coderCopy encodeBool:-[EMBaseMessageListItem allowAuthenticationWarning](self forKey:{"allowAuthenticationWarning"), @"EFPropertyKey_allowAuthenticationWarning"}];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EMBaseMessageListItem conversationNotificationLevel](self, "conversationNotificationLevel")}];
  [coderCopy encodeObject:v10 forKey:@"EFPropertyKey_conversationNotificationLevel"];

  brandIndicatorLocation = [(EMBaseMessageListItem *)self brandIndicatorLocation];
  [coderCopy encodeObject:brandIndicatorLocation forKey:@"EFPropertyKey_brandIndicatorLocation"];

  date = [(EMBaseMessageListItem *)self date];
  [coderCopy encodeObject:date forKey:@"EFPropertyKey_date"];

  displayDate = [(EMBaseMessageListItem *)self displayDate];
  [coderCopy encodeObject:displayDate forKey:@"EFPropertyKey_displayDate"];

  readLater = [(EMBaseMessageListItem *)self readLater];
  [coderCopy encodeObject:readLater forKey:@"EFPropertyKey_readLater"];

  sendLaterDate = [(EMBaseMessageListItem *)self sendLaterDate];
  [coderCopy encodeObject:sendLaterDate forKey:@"EFPropertyKey_sendLaterDate"];

  followUp = [(EMBaseMessageListItem *)self followUp];
  [coderCopy encodeObject:followUp forKey:@"EFPropertyKey_followUp"];

  category = [(EMBaseMessageListItem *)self category];
  [coderCopy encodeObject:category forKey:@"EFPropertyKey_category"];

  groupedSenderMessageListItems = [(EMBaseMessageListItem *)self groupedSenderMessageListItems];
  [coderCopy encodeObject:groupedSenderMessageListItems forKey:@"EFPropertyKey_groupedSenderMessageListItems"];

  [coderCopy encodeInt64:-[EMBaseMessageListItem businessID](self forKey:{"businessID"), @"EFPropertyKey_businessID"}];
  businessLogoID = [(EMBaseMessageListItem *)self businessLogoID];
  [coderCopy encodeObject:businessLogoID forKey:@"EFPropertyKey_businessLogoID"];

  summary = [(EMBaseMessageListItem *)self summary];
  [coderCopy encodeObject:summary forKey:@"EFPropertyKey_summary"];

  generatedSummary = [(EMBaseMessageListItem *)self generatedSummary];
  [coderCopy encodeObject:generatedSummary forKey:@"EFPropertyKey_generatedSummary"];

  [coderCopy encodeInt64:-[EMBaseMessageListItem conversationID](self forKey:{"conversationID"), @"EFPropertyKey_conversationID"}];
  toList = [(EMBaseMessageListItem *)self toList];
  [coderCopy encodeObject:toList forKey:@"EFPropertyKey_toList"];

  ccList = [(EMBaseMessageListItem *)self ccList];
  [coderCopy encodeObject:ccList forKey:@"EFPropertyKey_ccList"];

  bccList = [(EMBaseMessageListItem *)self bccList];
  [coderCopy encodeObject:bccList forKey:@"EFPropertyKey_bccList"];
}

- (NSArray)mailboxObjectIDs
{
  os_unfair_lock_lock(&self->_mailboxesLock);
  v3 = self->_mailboxObjectIDs;
  os_unfair_lock_unlock(&self->_mailboxesLock);

  return v3;
}

- (void)setMailboxObjectIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock(&self->_mailboxesLock);
  mailboxObjectIDs = self->_mailboxObjectIDs;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    v5 = [dsCopy copy];
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
    repository = [(EMBaseMessageListItem *)self repository];
    mailboxRepository = [repository mailboxRepository];

    if (mailboxRepository)
    {
      v6 = MEMORY[0x1E699B7C8];
      repository2 = [(EMBaseMessageListItem *)self repository];
      mailboxRepository2 = [repository2 mailboxRepository];
      mailboxObjectIDs = [(EMBaseMessageListItem *)self mailboxObjectIDs];
      v10 = [mailboxRepository2 mailboxesForObjectIDs:mailboxObjectIDs];
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
    repository = [(EMBaseMessageListItem *)self repository];
    mailboxRepository = [repository mailboxRepository];

    if (mailboxRepository)
    {
      mailboxObjectIDs = [(EMBaseMessageListItem *)self mailboxObjectIDs];
      v3 = [mailboxRepository mailboxesIfAvailableForObjectIDs:mailboxObjectIDs];
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

- (void)setMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  os_unfair_lock_lock(&self->_mailboxesLock);
  v4 = [mailboxesCopy copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v4;

  v6 = [mailboxesCopy ef_mapSelector:sel_objectID];
  mailboxObjectIDs = self->_mailboxObjectIDs;
  self->_mailboxObjectIDs = v6;

  self->_isEditable = 0;
  os_unfair_lock_unlock(&self->_mailboxesLock);
}

- (BOOL)hasUnflagged
{
  flags = [(EMBaseMessageListItem *)self flags];
  flagged = [flags flagged];

  return flagged ^ 1;
}

- (void)setHasUnflagged:(BOOL)unflagged
{
  v5 = objc_alloc(MEMORY[0x1E699B300]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__EMBaseMessageListItem_setHasUnflagged___block_invoke;
  v9[3] = &__block_descriptor_33_e38_v16__0___ECMessageFlagChangeBuilder__8l;
  unflaggedCopy = unflagged;
  v6 = [v5 initWithBuilder:v9];
  flags = [(EMBaseMessageListItem *)self flags];
  v8 = [v6 flagsAfterChangingFlags:flags flagsWereChanged:0];
  [(EMBaseMessageListItem *)self setFlags:v8];
}

- (NSIndexSet)flagColors
{
  flags = [(EMBaseMessageListItem *)self flags];
  flagged = [flags flagged];

  if (flagged)
  {
    v5 = objc_alloc(MEMORY[0x1E696AC90]);
    flags2 = [(EMBaseMessageListItem *)self flags];
    v7 = [v5 initWithIndex:{objc_msgSend(flags2, "flagColor")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setFlagColors:(id)colors
{
  colorsCopy = colors;
  flags = [(EMBaseMessageListItem *)self flags];
  flagged = [flags flagged];

  if (flagged)
  {
    firstIndex = [colorsCopy firstIndex];
    if (firstIndex <= 6)
    {
      v8 = objc_alloc(MEMORY[0x1E699B300]);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__EMBaseMessageListItem_setFlagColors___block_invoke;
      v12[3] = &__block_descriptor_40_e38_v16__0___ECMessageFlagChangeBuilder__8l;
      v12[4] = firstIndex;
      v9 = [v8 initWithBuilder:v12];
      flags2 = [(EMBaseMessageListItem *)self flags];
      v11 = [v9 flagsAfterChangingFlags:flags2 flagsWereChanged:0];
      [(EMBaseMessageListItem *)self setFlags:v11];
    }
  }
}

- (NSArray)senderList
{
  v7[1] = *MEMORY[0x1E69E9840];
  senderAddress = [(EMBaseMessageListItem *)self senderAddress];
  v3 = senderAddress;
  if (senderAddress)
  {
    v7[0] = senderAddress;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setSenderList:(id)list
{
  firstObject = [list firstObject];
  [(EMBaseMessageListItem *)self setSenderAddress:?];
}

- (void)setDisplayMessageItemID:(id)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EMBaseMessageListItem.m" lineNumber:622 description:@"displayMessageItemID cannot be set on EMMessage"];
}

- (BOOL)deleteMovesToTrash
{
  mailboxes = [(EMBaseMessageListItem *)self mailboxes];
  v3 = [EMMailbox deleteMovesToTrashForMailboxes:mailboxes];

  return v3;
}

- (BOOL)supportsArchiving
{
  mailboxes = [(EMBaseMessageListItem *)self mailboxes];
  v3 = [EMMailbox supportsArchivingForMailboxes:mailboxes];

  return v3;
}

- (BOOL)shouldArchiveByDefault
{
  v3 = objc_opt_class();
  mailboxes = [(EMBaseMessageListItem *)self mailboxes];
  LOBYTE(v3) = [v3 _shouldArchiveByDefaultForMailboxes:mailboxes];

  return v3;
}

+ (BOOL)_shouldArchiveByDefaultForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([EMMailbox supportsArchivingForMailboxes:mailboxesCopy])
  {
    v4 = [EMMailbox shouldArchiveByDefaultForMailboxes:mailboxesCopy];
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
    mailboxes = [(EMBaseMessageListItem *)self mailboxes];
    v5 = [mailboxes ef_any:&__block_literal_global_1];

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