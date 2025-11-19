@interface CKConversationListFilter
+ (CKConversationListFilter)defaultFilter;
- (BOOL)_conversation:(id)a3 matchesInbox:(unint64_t)a4;
- (BOOL)_conversation:(id)a3 matchesSpamFilterInbox:(unint64_t)a4;
- (BOOL)_conversation:(id)a3 matchesSpamFilterInboxGroup:(unint64_t)a4;
- (BOOL)_isSpamFilteredConversation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationListFilter:(id)a3;
- (CKConversationListFilter)initWithCoder:(id)a3;
- (NSPredicate)conversationPredicate;
- (id)_focusConfigurationSubPredicate;
- (id)_inboxSubPredicate;
- (id)_initWithInbox:(unint64_t)a3 unreadOnly:(BOOL)a4 focusConfiguration:(id)a5;
- (id)_unreadOnlySubPredicate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filterByChangingFocusConfiguration:(id)a3;
- (id)filterByChangingInbox:(unint64_t)a3;
- (id)filterByChangingUnreadOnly:(BOOL)a3;
- (unint64_t)_defaultSpamFilterInboxForCategory:(int64_t)a3;
- (unint64_t)_spamFilterInboxForCategory:(int64_t)a3 subCategory:(int64_t)a4;
- (unint64_t)_spamFilterInboxForConversation:(id)a3;
- (unint64_t)_spamFilterInboxForConversationListInbox:(unint64_t)a3;
- (unint64_t)_spamFilterInboxGroupForConversationListInbox:(unint64_t)a3;
- (unint64_t)_spamFilterInboxGroupForInbox:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKConversationListFilter

- (id)_inboxSubPredicate
{
  v3 = [(CKConversationListFilter *)self inbox];
  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E696AE18];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__CKConversationListFilter_Inbox___inboxSubPredicate__block_invoke;
    v6[3] = &unk_1E72F5800;
    objc_copyWeak(v7, &location);
    v7[1] = v3;
    v3 = [v4 predicateWithBlock:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __53__CKConversationListFilter_Inbox___inboxSubPredicate__block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _conversation:v3 matchesInbox:*(a1 + 40)];

  return v5;
}

- (BOOL)_conversation:(id)a3 matchesInbox:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  LOBYTE(v8) = 0;
  if (a4 > 2)
  {
    if (a4 <= 0x13)
    {
      if (((1 << a4) & 0x77FC0) != 0)
      {
        v9 = [(CKConversationListFilter *)self _conversation:v6 matchesSpamFilterInbox:[(CKConversationListFilter *)self _spamFilterInboxForConversationListInbox:a4]];
LABEL_5:
        LOBYTE(v8) = v9;
        goto LABEL_6;
      }

      if (((1 << a4) & 0x8030) != 0)
      {
        v9 = [(CKConversationListFilter *)self _conversation:v6 matchesSpamFilterInboxGroup:[(CKConversationListFilter *)self _spamFilterInboxGroupForConversationListInbox:a4]];
        goto LABEL_5;
      }

      if (a4 == 19)
      {
        v13 = [v6 chat];
        LOBYTE(v8) = [v13 recoverableMessagesCount] != 0;

        goto LABEL_6;
      }
    }

    if (a4 != 3)
    {
      goto LABEL_6;
    }

    if ([(CKConversationListFilter *)self _isSpamFilteredConversation:v6])
    {
      LOBYTE(v8) = [(CKConversationListFilter *)self _spamFilterInboxForConversation:v7]!= 0;
      goto LABEL_6;
    }

LABEL_19:
    LOBYTE(v8) = 1;
    goto LABEL_6;
  }

  switch(a4)
  {
    case 0uLL:
      goto LABEL_19;
    case 1uLL:
      v12 = [v6 isKnownSender];
      v8 = v12 & [v7 wasKnownSender];
      break;
    case 2uLL:
      v11 = [v6 isKnownSender];
      v8 = v11 & [v7 wasKnownSender] ^ 1;
      break;
  }

LABEL_6:

  return v8;
}

- (BOOL)_isSpamFilteredConversation:(id)a3
{
  v3 = a3;
  if (CKMessageSpamFilteringEnabled() && ([v3 chat], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "account"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "service"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69A5C90], "smsService"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, v6 == v7) && objc_msgSend(v3, "wasDetectedAsSMSCategory"))
  {
    v8 = [v3 isKnownSender] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)_spamFilterInboxForConversation:(id)a3
{
  v4 = a3;
  v5 = [v4 spamCategory];
  v6 = [v4 spamSubCategory];

  return [(CKConversationListFilter *)self _spamFilterInboxForCategory:v5 subCategory:v6];
}

- (unint64_t)_spamFilterInboxGroupForConversationListInbox:(unint64_t)a3
{
  if (a3 <= 0x13)
  {
    if (a3 == 15)
    {
      return 2;
    }

    if (((1 << a3) & 0x77FC0) != 0)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = @"Attempted to convert conversation list spam inbox to a spam inbox group";
      goto LABEL_13;
    }

    if (a3 == 19)
    {
LABEL_12:
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = @"Attempted to convert non-spam message conversation list inbox to a spam filter inbox group";
LABEL_13:
      v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
      objc_exception_throw(v7);
    }
  }

  if (a3 != 5)
  {
    if (a3 >= 4)
    {
      return 0;
    }

    goto LABEL_12;
  }

  return 1;
}

- (unint64_t)_spamFilterInboxForConversationListInbox:(unint64_t)a3
{
  result = 0;
  switch(a3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 0x13uLL:
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = @"Attempted to convert non-spam message conversation list inbox to a spam filter inbox";
      goto LABEL_17;
    case 5uLL:
    case 0xFuLL:
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = @"Attempted to convert conversation list spam inbox group to a spam filter inbox";
LABEL_17:
      v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
      objc_exception_throw(v7);
    case 6uLL:
      result = 1;
      break;
    case 7uLL:
      result = 2;
      break;
    case 8uLL:
      result = 3;
      break;
    case 9uLL:
      result = 4;
      break;
    case 0xAuLL:
      result = 5;
      break;
    case 0xBuLL:
      result = 6;
      break;
    case 0xCuLL:
      result = 7;
      break;
    case 0xDuLL:
      result = 8;
      break;
    case 0xEuLL:
      result = 9;
      break;
    case 0x10uLL:
      result = 10;
      break;
    case 0x11uLL:
      result = 11;
      break;
    case 0x12uLL:
      result = 12;
      break;
    default:
      return result;
  }

  return result;
}

- (unint64_t)_spamFilterInboxGroupForInbox:(unint64_t)a3
{
  if (a3 - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_190DD1298[a3 - 1];
  }
}

- (BOOL)_conversation:(id)a3 matchesSpamFilterInbox:(unint64_t)a4
{
  v6 = a3;
  if ([(CKConversationListFilter *)self _isSpamFilteredConversation:v6])
  {
    v7 = [(CKConversationListFilter *)self _spamFilterInboxForConversation:v6]== a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_conversation:(id)a3 matchesSpamFilterInboxGroup:(unint64_t)a4
{
  v6 = a3;
  if ([(CKConversationListFilter *)self _isSpamFilteredConversation:v6])
  {
    v7 = [(CKConversationListFilter *)self _spamFilterInboxGroupForInbox:[(CKConversationListFilter *)self _spamFilterInboxForConversation:v6]]== a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_spamFilterInboxForCategory:(int64_t)a3 subCategory:(int64_t)a4
{
  switch(a4)
  {
    case 0:
      result = [(CKConversationListFilter *)self _defaultSpamFilterInboxForCategory:a3];
      break;
    case 1:
      result = 9;
      break;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 12;
      break;
    case 11:
      result = 10;
      break;
    case 12:
      result = 11;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (unint64_t)_defaultSpamFilterInboxForCategory:(int64_t)a3
{
  if (a3 == 3)
  {
    return 12;
  }

  if (a3 == 4)
  {
    return 9;
  }

  if (a3 < 2)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to convert non-spam message filter action to a spam filter inbox" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 0;
}

- (id)_initWithInbox:(unint64_t)a3 unreadOnly:(BOOL)a4 focusConfiguration:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = CKConversationListFilter;
  v9 = [(CKConversationListFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_inbox = a3;
    v9->_unreadOnly = a4;
    v11 = [v8 copy];
    focusConfiguration = v10->_focusConfiguration;
    v10->_focusConfiguration = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CKConversationListFilter *)self isEqualToConversationListFilter:v4];
  }

  return v5;
}

- (BOOL)isEqualToConversationListFilter:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inbox == v4[2] && self->_unreadOnly == *(v4 + 8))
  {
    focusConfiguration = self->_focusConfiguration;
    if (focusConfiguration | v5[3])
    {
      v7 = [(DNDConfiguration *)focusConfiguration isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKConversationListFilter alloc];
  unreadOnly = self->_unreadOnly;
  inbox = self->_inbox;
  focusConfiguration = self->_focusConfiguration;

  return [(CKConversationListFilter *)v4 _initWithInbox:inbox unreadOnly:unreadOnly focusConfiguration:focusConfiguration];
}

- (void)encodeWithCoder:(id)a3
{
  inbox = self->_inbox;
  v5 = a3;
  [v5 encodeInteger:inbox forKey:@"i"];
  [v5 encodeBool:self->_unreadOnly forKey:@"u"];
  [v5 encodeObject:self->_focusConfiguration forKey:@"f"];
}

- (CKConversationListFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKConversationListFilter;
  v5 = [(CKConversationListFilter *)&v9 init];
  if (v5)
  {
    v5->_inbox = [v4 decodeIntegerForKey:@"i"];
    v5->_unreadOnly = [v4 decodeBoolForKey:@"u"];
    v6 = [v4 decodeObjectOfClass:MEMORY[0x193AF5EC0](@"DNDConfiguration" forKey:{@"DoNotDisturb", @"f"}];
    focusConfiguration = v5->_focusConfiguration;
    v5->_focusConfiguration = v6;
  }

  return v5;
}

+ (CKConversationListFilter)defaultFilter
{
  v2 = [[CKConversationListFilter alloc] _initWithInbox:0 unreadOnly:0 focusConfiguration:0];

  return v2;
}

- (id)filterByChangingInbox:(unint64_t)a3
{
  v3 = [[CKConversationListFilter alloc] _initWithInbox:a3 unreadOnly:self->_unreadOnly focusConfiguration:self->_focusConfiguration];

  return v3;
}

- (id)filterByChangingUnreadOnly:(BOOL)a3
{
  v3 = [[CKConversationListFilter alloc] _initWithInbox:self->_inbox unreadOnly:a3 focusConfiguration:self->_focusConfiguration];

  return v3;
}

- (id)filterByChangingFocusConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[CKConversationListFilter alloc] _initWithInbox:self->_inbox unreadOnly:self->_unreadOnly focusConfiguration:v4];

  return v5;
}

- (NSPredicate)conversationPredicate
{
  p_cachedConversationPredicate = &self->_cachedConversationPredicate;
  cachedConversationPredicate = self->_cachedConversationPredicate;
  if (cachedConversationPredicate)
  {
    v4 = cachedConversationPredicate;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(CKConversationListFilter *)self _inboxSubPredicate];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [(CKConversationListFilter *)self _unreadOnlySubPredicate];
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = [(CKConversationListFilter *)self _focusConfigurationSubPredicate];
  if (v9)
  {
    [v6 addObject:v9];
  }

  if ([v6 count])
  {
    if ([v6 count] != 1)
    {
      v11 = MEMORY[0x1E696AB28];
      v12 = [v6 copy];
      v4 = [v11 andPredicateWithSubpredicates:v12];

      goto LABEL_15;
    }

    v10 = [v6 firstObject];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v4 = v10;
LABEL_15:
  objc_storeStrong(p_cachedConversationPredicate, v4);

LABEL_16:

  return v4;
}

- (id)_unreadOnlySubPredicate
{
  if ([(CKConversationListFilter *)self unreadOnly])
  {
    v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_239];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __62__CKConversationListFilter_Predicate___unreadOnlySubPredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hasUnreadMessages];
  v4 = [v2 shouldHoldInUnreadFilter];

  return (v3 | v4) & 1;
}

- (id)_focusConfigurationSubPredicate
{
  v2 = [(CKConversationListFilter *)self focusConfiguration];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E696AE18];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__CKConversationListFilter_Focus___focusConfigurationSubPredicate__block_invoke;
    v7[3] = &unk_1E72F2F88;
    v8 = v2;
    v5 = [v4 predicateWithBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __66__CKConversationListFilter_Focus___focusConfigurationSubPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 chat];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 participantDNDContactHandles];
    v6 = [MEMORY[0x1E69A8088] focusConfiguration:*(a1 + 32) matchesConversationWithHandles:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end