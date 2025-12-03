@interface CKConversationListFilter
+ (CKConversationListFilter)defaultFilter;
- (BOOL)_conversation:(id)_conversation matchesInbox:(unint64_t)inbox;
- (BOOL)_conversation:(id)_conversation matchesSpamFilterInbox:(unint64_t)inbox;
- (BOOL)_conversation:(id)_conversation matchesSpamFilterInboxGroup:(unint64_t)group;
- (BOOL)_isSpamFilteredConversation:(id)conversation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationListFilter:(id)filter;
- (CKConversationListFilter)initWithCoder:(id)coder;
- (NSPredicate)conversationPredicate;
- (id)_focusConfigurationSubPredicate;
- (id)_inboxSubPredicate;
- (id)_initWithInbox:(unint64_t)inbox unreadOnly:(BOOL)only focusConfiguration:(id)configuration;
- (id)_unreadOnlySubPredicate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filterByChangingFocusConfiguration:(id)configuration;
- (id)filterByChangingInbox:(unint64_t)inbox;
- (id)filterByChangingUnreadOnly:(BOOL)only;
- (unint64_t)_defaultSpamFilterInboxForCategory:(int64_t)category;
- (unint64_t)_spamFilterInboxForCategory:(int64_t)category subCategory:(int64_t)subCategory;
- (unint64_t)_spamFilterInboxForConversation:(id)conversation;
- (unint64_t)_spamFilterInboxForConversationListInbox:(unint64_t)inbox;
- (unint64_t)_spamFilterInboxGroupForConversationListInbox:(unint64_t)inbox;
- (unint64_t)_spamFilterInboxGroupForInbox:(unint64_t)inbox;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKConversationListFilter

- (id)_inboxSubPredicate
{
  inbox = [(CKConversationListFilter *)self inbox];
  if (inbox)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E696AE18];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__CKConversationListFilter_Inbox___inboxSubPredicate__block_invoke;
    v6[3] = &unk_1E72F5800;
    objc_copyWeak(v7, &location);
    v7[1] = inbox;
    inbox = [v4 predicateWithBlock:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }

  return inbox;
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

- (BOOL)_conversation:(id)_conversation matchesInbox:(unint64_t)inbox
{
  _conversationCopy = _conversation;
  v7 = _conversationCopy;
  LOBYTE(v8) = 0;
  if (inbox > 2)
  {
    if (inbox <= 0x13)
    {
      if (((1 << inbox) & 0x77FC0) != 0)
      {
        v9 = [(CKConversationListFilter *)self _conversation:_conversationCopy matchesSpamFilterInbox:[(CKConversationListFilter *)self _spamFilterInboxForConversationListInbox:inbox]];
LABEL_5:
        LOBYTE(v8) = v9;
        goto LABEL_6;
      }

      if (((1 << inbox) & 0x8030) != 0)
      {
        v9 = [(CKConversationListFilter *)self _conversation:_conversationCopy matchesSpamFilterInboxGroup:[(CKConversationListFilter *)self _spamFilterInboxGroupForConversationListInbox:inbox]];
        goto LABEL_5;
      }

      if (inbox == 19)
      {
        chat = [_conversationCopy chat];
        LOBYTE(v8) = [chat recoverableMessagesCount] != 0;

        goto LABEL_6;
      }
    }

    if (inbox != 3)
    {
      goto LABEL_6;
    }

    if ([(CKConversationListFilter *)self _isSpamFilteredConversation:_conversationCopy])
    {
      LOBYTE(v8) = [(CKConversationListFilter *)self _spamFilterInboxForConversation:v7]!= 0;
      goto LABEL_6;
    }

LABEL_19:
    LOBYTE(v8) = 1;
    goto LABEL_6;
  }

  switch(inbox)
  {
    case 0uLL:
      goto LABEL_19;
    case 1uLL:
      isKnownSender = [_conversationCopy isKnownSender];
      v8 = isKnownSender & [v7 wasKnownSender];
      break;
    case 2uLL:
      isKnownSender2 = [_conversationCopy isKnownSender];
      v8 = isKnownSender2 & [v7 wasKnownSender] ^ 1;
      break;
  }

LABEL_6:

  return v8;
}

- (BOOL)_isSpamFilteredConversation:(id)conversation
{
  conversationCopy = conversation;
  if (CKMessageSpamFilteringEnabled() && ([conversationCopy chat], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "account"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "service"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69A5C90], "smsService"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, v6 == v7) && objc_msgSend(conversationCopy, "wasDetectedAsSMSCategory"))
  {
    v8 = [conversationCopy isKnownSender] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)_spamFilterInboxForConversation:(id)conversation
{
  conversationCopy = conversation;
  spamCategory = [conversationCopy spamCategory];
  spamSubCategory = [conversationCopy spamSubCategory];

  return [(CKConversationListFilter *)self _spamFilterInboxForCategory:spamCategory subCategory:spamSubCategory];
}

- (unint64_t)_spamFilterInboxGroupForConversationListInbox:(unint64_t)inbox
{
  if (inbox <= 0x13)
  {
    if (inbox == 15)
    {
      return 2;
    }

    if (((1 << inbox) & 0x77FC0) != 0)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = @"Attempted to convert conversation list spam inbox to a spam inbox group";
      goto LABEL_13;
    }

    if (inbox == 19)
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

  if (inbox != 5)
  {
    if (inbox >= 4)
    {
      return 0;
    }

    goto LABEL_12;
  }

  return 1;
}

- (unint64_t)_spamFilterInboxForConversationListInbox:(unint64_t)inbox
{
  result = 0;
  switch(inbox)
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

- (unint64_t)_spamFilterInboxGroupForInbox:(unint64_t)inbox
{
  if (inbox - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_190DD1298[inbox - 1];
  }
}

- (BOOL)_conversation:(id)_conversation matchesSpamFilterInbox:(unint64_t)inbox
{
  _conversationCopy = _conversation;
  if ([(CKConversationListFilter *)self _isSpamFilteredConversation:_conversationCopy])
  {
    v7 = [(CKConversationListFilter *)self _spamFilterInboxForConversation:_conversationCopy]== inbox;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_conversation:(id)_conversation matchesSpamFilterInboxGroup:(unint64_t)group
{
  _conversationCopy = _conversation;
  if ([(CKConversationListFilter *)self _isSpamFilteredConversation:_conversationCopy])
  {
    v7 = [(CKConversationListFilter *)self _spamFilterInboxGroupForInbox:[(CKConversationListFilter *)self _spamFilterInboxForConversation:_conversationCopy]]== group;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_spamFilterInboxForCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  switch(subCategory)
  {
    case 0:
      result = [(CKConversationListFilter *)self _defaultSpamFilterInboxForCategory:category];
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

- (unint64_t)_defaultSpamFilterInboxForCategory:(int64_t)category
{
  if (category == 3)
  {
    return 12;
  }

  if (category == 4)
  {
    return 9;
  }

  if (category < 2)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to convert non-spam message filter action to a spam filter inbox" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 0;
}

- (id)_initWithInbox:(unint64_t)inbox unreadOnly:(BOOL)only focusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = CKConversationListFilter;
  v9 = [(CKConversationListFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_inbox = inbox;
    v9->_unreadOnly = only;
    v11 = [configurationCopy copy];
    focusConfiguration = v10->_focusConfiguration;
    v10->_focusConfiguration = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CKConversationListFilter *)self isEqualToConversationListFilter:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConversationListFilter:(id)filter
{
  filterCopy = filter;
  v5 = filterCopy;
  if (self->_inbox == filterCopy[2] && self->_unreadOnly == *(filterCopy + 8))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKConversationListFilter alloc];
  unreadOnly = self->_unreadOnly;
  inbox = self->_inbox;
  focusConfiguration = self->_focusConfiguration;

  return [(CKConversationListFilter *)v4 _initWithInbox:inbox unreadOnly:unreadOnly focusConfiguration:focusConfiguration];
}

- (void)encodeWithCoder:(id)coder
{
  inbox = self->_inbox;
  coderCopy = coder;
  [coderCopy encodeInteger:inbox forKey:@"i"];
  [coderCopy encodeBool:self->_unreadOnly forKey:@"u"];
  [coderCopy encodeObject:self->_focusConfiguration forKey:@"f"];
}

- (CKConversationListFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CKConversationListFilter;
  v5 = [(CKConversationListFilter *)&v9 init];
  if (v5)
  {
    v5->_inbox = [coderCopy decodeIntegerForKey:@"i"];
    v5->_unreadOnly = [coderCopy decodeBoolForKey:@"u"];
    v6 = [coderCopy decodeObjectOfClass:MEMORY[0x193AF5EC0](@"DNDConfiguration" forKey:{@"DoNotDisturb", @"f"}];
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

- (id)filterByChangingInbox:(unint64_t)inbox
{
  v3 = [[CKConversationListFilter alloc] _initWithInbox:inbox unreadOnly:self->_unreadOnly focusConfiguration:self->_focusConfiguration];

  return v3;
}

- (id)filterByChangingUnreadOnly:(BOOL)only
{
  v3 = [[CKConversationListFilter alloc] _initWithInbox:self->_inbox unreadOnly:only focusConfiguration:self->_focusConfiguration];

  return v3;
}

- (id)filterByChangingFocusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[CKConversationListFilter alloc] _initWithInbox:self->_inbox unreadOnly:self->_unreadOnly focusConfiguration:configurationCopy];

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
  _inboxSubPredicate = [(CKConversationListFilter *)self _inboxSubPredicate];
  if (_inboxSubPredicate)
  {
    [v6 addObject:_inboxSubPredicate];
  }

  _unreadOnlySubPredicate = [(CKConversationListFilter *)self _unreadOnlySubPredicate];
  if (_unreadOnlySubPredicate)
  {
    [v6 addObject:_unreadOnlySubPredicate];
  }

  _focusConfigurationSubPredicate = [(CKConversationListFilter *)self _focusConfigurationSubPredicate];
  if (_focusConfigurationSubPredicate)
  {
    [v6 addObject:_focusConfigurationSubPredicate];
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

    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v4 = firstObject;
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
  focusConfiguration = [(CKConversationListFilter *)self focusConfiguration];
  v3 = focusConfiguration;
  if (focusConfiguration)
  {
    v4 = MEMORY[0x1E696AE18];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__CKConversationListFilter_Focus___focusConfigurationSubPredicate__block_invoke;
    v7[3] = &unk_1E72F2F88;
    v8 = focusConfiguration;
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