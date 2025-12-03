@interface EDSortableThreadProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (EDSortableThreadProxy)initWithThread:(id)thread originatingQuery:(id)query;
- (NSString)ef_publicDescription;
- (id)_setValueFromThreadAndReturnIfChanged:(id)changed keyPath:(id)path isPrimary:(BOOL)primary;
- (id)_sortValueForRawValue:(id)value keyPath:(id)path;
- (id)_targetForSelector:(SEL)selector;
- (id)calculateChangeFromThread:(id)thread;
- (int64_t)conversationID;
- (void)_copySortPropertiesForDescriptors:(id)descriptors thread:(id)thread;
- (void)updateFromThread:(id)thread addingAdditionalInformation:(BOOL)information query:(id)query;
@end

@implementation EDSortableThreadProxy

- (EDSortableThreadProxy)initWithThread:(id)thread originatingQuery:(id)query
{
  threadCopy = thread;
  queryCopy = query;
  v15.receiver = self;
  v15.super_class = EDSortableThreadProxy;
  v8 = [(EDSortableThreadProxy *)&v15 init];
  if (v8)
  {
    objectID = [threadCopy objectID];
    objectID = v8->_objectID;
    v8->_objectID = objectID;

    sortDescriptors = [queryCopy sortDescriptors];
    [(EDSortableThreadProxy *)v8 _copySortPropertiesForDescriptors:sortDescriptors thread:threadCopy];

    date = [threadCopy date];
    date = v8->_date;
    v8->_date = date;
  }

  return v8;
}

- (void)_copySortPropertiesForDescriptors:(id)descriptors thread:(id)thread
{
  descriptorsCopy = descriptors;
  threadCopy = thread;
  firstObject = [descriptorsCopy firstObject];
  v8 = [firstObject key];

  v9 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:threadCopy keyPath:v8 isPrimary:1];
  if ([descriptorsCopy count] >= 2)
  {
    v10 = [descriptorsCopy objectAtIndexedSubscript:1];
    v11 = [v10 key];

    v12 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:threadCopy keyPath:v11 isPrimary:0];
  }
}

- (id)_setValueFromThreadAndReturnIfChanged:(id)changed keyPath:(id)path isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  pathCopy = path;
  v9 = [changed valueForKeyPath:pathCopy];
  v10 = [(EDSortableThreadProxy *)self _sortValueForRawValue:v9 keyPath:pathCopy];
  primarySortValue = [(EDSortableThreadProxy *)self primarySortValue];
  if (v10 == primarySortValue)
  {

    v9 = 0;
  }

  else if (primaryCopy)
  {
    [(EDSortableThreadProxy *)self setPrimarySortValue:v10];
  }

  return v9;
}

- (id)_sortValueForRawValue:(id)value keyPath:(id)path
{
  valueCopy = value;
  v8 = [path isEqualToString:*MEMORY[0x1E699A898]];
  v9 = valueCopy;
  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    if (valueCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EDSortableThreadProxy.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"[rawSortValue isKindOfClass:[NSIndexSet class]]"}];
      }

      v10 = valueCopy;
      if ([v10 lastIndex] >= 7)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"EDSortableThreadProxy.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"flagColors.lastIndex <= ECMessageFlagColorLast"}];
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__EDSortableThreadProxy__sortValueForRawValue_keyPath___block_invoke;
      v15[3] = &unk_1E8257C78;
      v15[4] = &v16;
      [v10 enumerateIndexesUsingBlock:v15];

      v11 = v17[3];
    }

    else
    {
      v11 = 0;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];

    _Block_object_dispose(&v16, 8);
  }

  return v9;
}

- (void)updateFromThread:(id)thread addingAdditionalInformation:(BOOL)information query:(id)query
{
  threadCopy = thread;
  queryCopy = query;
  sortDescriptors = [queryCopy sortDescriptors];
  [(EDSortableThreadProxy *)self _copySortPropertiesForDescriptors:sortDescriptors thread:threadCopy];

  date = [threadCopy date];
  [(EDSortableThreadProxy *)self setDate:date];

  if (information || ([(EDSortableThreadProxy *)self properties], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    properties = [(EDSortableThreadProxy *)self properties];

    if (!properties)
    {
      v13 = objc_alloc_init(EDSortableThreadProxyAdditionalProperties);
      [(EDSortableThreadProxy *)self setProperties:v13];
    }

    displayMessageObjectID = [threadCopy displayMessageObjectID];
    displayDate = [threadCopy displayDate];
    [(EDSortableThreadProxy *)self setDisplayDate:displayDate];

    category = [threadCopy category];
    [(EDSortableThreadProxy *)self setCategory:category];

    -[EDSortableThreadProxy setBusinessID:](self, "setBusinessID:", [threadCopy businessID]);
    businessLogoID = [threadCopy businessLogoID];
    [(EDSortableThreadProxy *)self setBusinessLogoID:businessLogoID];

    readLater = [threadCopy readLater];
    [(EDSortableThreadProxy *)self setReadLater:readLater];

    sendLaterDate = [threadCopy sendLaterDate];
    [(EDSortableThreadProxy *)self setSendLaterDate:sendLaterDate];

    -[EDSortableThreadProxy setDisplayMessageGlobalID:](self, "setDisplayMessageGlobalID:", [displayMessageObjectID globalMessageID]);
    senderList = [threadCopy senderList];
    [(EDSortableThreadProxy *)self setSenderList:senderList];

    toList = [threadCopy toList];
    [(EDSortableThreadProxy *)self setToList:toList];

    ccList = [threadCopy ccList];
    [(EDSortableThreadProxy *)self setCcList:ccList];

    flags = [threadCopy flags];
    [(EDSortableThreadProxy *)self setFlags:flags];

    -[EDSortableThreadProxy setHasUnflagged:](self, "setHasUnflagged:", [threadCopy hasUnflagged]);
    flagColors = [threadCopy flagColors];
    [(EDSortableThreadProxy *)self setFlagColors:flagColors];

    -[EDSortableThreadProxy setIsVIP:](self, "setIsVIP:", [threadCopy isVIP]);
    -[EDSortableThreadProxy setIsBlocked:](self, "setIsBlocked:", [threadCopy isBlocked]);
    -[EDSortableThreadProxy setHasAttachments:](self, "setHasAttachments:", [threadCopy hasAttachments]);
    -[EDSortableThreadProxy setIsAuthenticated:](self, "setIsAuthenticated:", [threadCopy isAuthenticated]);
    -[EDSortableThreadProxy setAllowAuthenticationWarning:](self, "setAllowAuthenticationWarning:", [threadCopy allowAuthenticationWarning]);
    -[EDSortableThreadProxy setNumberOfMessagesInThread:](self, "setNumberOfMessagesInThread:", [threadCopy count]);
    mailboxObjectIDs = [threadCopy mailboxObjectIDs];
    [(EDSortableThreadProxy *)self setMailboxObjectIDs:mailboxObjectIDs];

    generatedSummary = [threadCopy generatedSummary];
    [(EDSortableThreadProxy *)self setGeneratedSummary:generatedSummary];
  }
}

- (id)calculateChangeFromThread:(id)thread
{
  threadCopy = thread;
  v5 = objc_alloc_init(MEMORY[0x1E699AD98]);
  query = [threadCopy query];
  sortDescriptors = [query sortDescriptors];

  v91 = sortDescriptors;
  firstObject = [sortDescriptors firstObject];
  v9 = [firstObject key];

  v90 = v9;
  v10 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:threadCopy keyPath:v9 isPrimary:1];
  v11 = v10 != 0;
  v92 = v10;
  if (v10)
  {
    [v5 setValue:v10 forKeyPath:v90];
  }

  if ([sortDescriptors count] >= 2)
  {
    v12 = [sortDescriptors objectAtIndexedSubscript:1];
    v13 = [v12 key];

    v14 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:threadCopy keyPath:v13 isPrimary:0];

    if (v14)
    {
      [v5 setValue:v14 forKeyPath:v90];
      v11 = 1;
    }

    v92 = v14;
  }

  date = [threadCopy date];
  date2 = [(EDSortableThreadProxy *)self date];
  v17 = [date isEqualToDate:date2];

  if ((v17 & 1) == 0)
  {
    date3 = [threadCopy date];
    [v5 setDate:date3];

    v11 = 1;
  }

  properties = [(EDSortableThreadProxy *)self properties];

  if (properties)
  {
    displayMessageObjectID = [threadCopy displayMessageObjectID];
    globalMessageID = [displayMessageObjectID globalMessageID];
    if (globalMessageID != [(EDSortableThreadProxy *)self displayMessageGlobalID])
    {
      subject = [threadCopy subject];
      null = subject;
      if (!subject)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setSubject:null];
      if (!subject)
      {
      }

      summary = [threadCopy summary];
      null2 = summary;
      if (!summary)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setSummary:null2];
      if (!summary)
      {
      }

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(threadCopy, "unsubscribeType")}];
      [v5 setUnsubscribeType:v25];

      v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(threadCopy, "conversationNotificationLevel")}];
      [v5 setConversationNotificationLevel:v26];

      followUp = [threadCopy followUp];
      null3 = followUp;
      if (!followUp)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setFollowUp:null3];
      if (!followUp)
      {
      }

      displayMessageItemID = [threadCopy displayMessageItemID];
      [v5 setDisplayMessageItemID:displayMessageItemID];

      LOBYTE(v11) = 1;
    }

    displayDate = [threadCopy displayDate];
    displayDate2 = [(EDSortableThreadProxy *)self displayDate];
    v32 = [displayDate isEqualToDate:displayDate2];

    if ((v32 & 1) == 0)
    {
      displayDate3 = [threadCopy displayDate];
      [v5 setDisplayDate:displayDate3];

      LOBYTE(v11) = 1;
    }

    category = [threadCopy category];
    category2 = [(EDSortableThreadProxy *)self category];
    v35 = EFObjectsAreEqual();

    if ((v35 & 1) == 0)
    {
      null4 = category;
      if (!category)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setCategory:null4];
      if (!category)
      {
      }

      LOBYTE(v11) = 1;
    }

    businessID = [threadCopy businessID];
    if (businessID != [(EDSortableThreadProxy *)self businessID])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithLongLong:businessID];
      [v5 setBusinessID:v38];

      LOBYTE(v11) = 1;
    }

    businessLogoID = [threadCopy businessLogoID];
    businessLogoID2 = [(EDSortableThreadProxy *)self businessLogoID];

    if (businessLogoID != businessLogoID2)
    {
      null5 = businessLogoID;
      if (!businessLogoID)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setBusinessLogoID:null5];
      if (!businessLogoID)
      {
      }

      LOBYTE(v11) = 1;
    }

    sendLaterDate = [threadCopy sendLaterDate];
    sendLaterDate2 = [(EDSortableThreadProxy *)self sendLaterDate];
    v42 = EFObjectsAreEqual();

    if ((v42 & 1) == 0)
    {
      null6 = sendLaterDate;
      if (!sendLaterDate)
      {
        null6 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setSendLaterDate:null6];
      if (!sendLaterDate)
      {
      }

      LOBYTE(v11) = 1;
    }

    readLater = [threadCopy readLater];
    readLater2 = [(EDSortableThreadProxy *)self readLater];
    v45 = EFObjectsAreEqual();

    if ((v45 & 1) == 0)
    {
      null7 = readLater;
      if (!readLater)
      {
        null7 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setReadLater:null7];
      if (!readLater)
      {
      }

      LOBYTE(v11) = 1;
    }

    senderList = [threadCopy senderList];
    senderList2 = [(EDSortableThreadProxy *)self senderList];
    v48 = EFArraysAreEqual();

    if ((v48 & 1) == 0)
    {
      [v5 setSenderList:senderList];
      LOBYTE(v11) = 1;
    }

    toList = [threadCopy toList];
    toList2 = [(EDSortableThreadProxy *)self toList];
    v50 = EFArraysAreEqual();

    if ((v50 & 1) == 0)
    {
      [v5 setToList:toList];
      LOBYTE(v11) = 1;
    }

    ccList = [threadCopy ccList];
    ccList2 = [(EDSortableThreadProxy *)self ccList];
    v52 = EFArraysAreEqual();

    if ((v52 & 1) == 0)
    {
      [v5 setCcList:ccList];
      LOBYTE(v11) = 1;
    }

    flags = [threadCopy flags];
    flags2 = [(EDSortableThreadProxy *)self flags];
    v55 = EFObjectsAreEqual();

    if ((v55 & 1) == 0)
    {
      [v5 setFlags:flags];
      LOBYTE(v11) = 1;
    }

    hasUnflagged = [threadCopy hasUnflagged];
    if (hasUnflagged != [(EDSortableThreadProxy *)self hasUnflagged])
    {
      v57 = [MEMORY[0x1E696AD98] numberWithBool:hasUnflagged];
      [v5 setHasUnflagged:v57];

      LOBYTE(v11) = 1;
    }

    flagColors = [threadCopy flagColors];
    flagColors2 = [(EDSortableThreadProxy *)self flagColors];
    v60 = EFObjectsAreEqual();

    if ((v60 & 1) == 0)
    {
      null8 = flagColors;
      if (!flagColors)
      {
        null8 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setFlagColors:null8];
      if (!flagColors)
      {
      }

      LOBYTE(v11) = 1;
    }

    isVIP = [threadCopy isVIP];
    if (isVIP != [(EDSortableThreadProxy *)self isVIP])
    {
      v63 = [MEMORY[0x1E696AD98] numberWithBool:isVIP];
      [v5 setIsVIP:v63];

      LOBYTE(v11) = 1;
    }

    isBlocked = [threadCopy isBlocked];
    if (isBlocked != [(EDSortableThreadProxy *)self isBlocked])
    {
      v65 = [MEMORY[0x1E696AD98] numberWithBool:isBlocked];
      [v5 setIsBlocked:v65];

      LOBYTE(v11) = 1;
    }

    hasAttachments = [(EDSortableThreadProxy *)self hasAttachments];
    if (hasAttachments != [(EDSortableThreadProxy *)self hasAttachments])
    {
      v67 = [MEMORY[0x1E696AD98] numberWithBool:hasAttachments];
      [v5 setHasAttachments:v67];

      LOBYTE(v11) = 1;
    }

    isAuthenticated = [(EDSortableThreadProxy *)self isAuthenticated];
    if (isAuthenticated != [(EDSortableThreadProxy *)self isAuthenticated])
    {
      v69 = [MEMORY[0x1E696AD98] numberWithBool:isAuthenticated];
      [v5 setIsAuthenticated:v69];

      LOBYTE(v11) = 1;
    }

    allowAuthenticationWarning = [(EDSortableThreadProxy *)self allowAuthenticationWarning];
    if (allowAuthenticationWarning != [(EDSortableThreadProxy *)self allowAuthenticationWarning])
    {
      v71 = [MEMORY[0x1E696AD98] numberWithBool:allowAuthenticationWarning];
      [v5 setAllowAuthenticationWarning:v71];

      LOBYTE(v11) = 1;
    }

    v72 = [threadCopy count];
    if (v72 != [(EDSortableThreadProxy *)self numberOfMessagesInThread])
    {
      v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v72];
      [v5 setCount:v73];

      LOBYTE(v11) = 1;
    }

    mailboxObjectIDs = [threadCopy mailboxObjectIDs];
    mailboxObjectIDs2 = [(EDSortableThreadProxy *)self mailboxObjectIDs];
    if ((EFArraysAreEqual() & 1) == 0)
    {
      [v5 setMailboxObjectIDs:mailboxObjectIDs];
      LOBYTE(v11) = 1;
    }

    generatedSummary = [threadCopy generatedSummary];
    generatedSummary2 = [(EDSortableThreadProxy *)self generatedSummary];
    v78 = [generatedSummary isEqual:generatedSummary2];

    if ((v78 & 1) == 0)
    {
      null9 = generatedSummary;
      if (!generatedSummary)
      {
        null9 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setGeneratedSummary:null9];
      if (!generatedSummary)
      {
      }

      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      goto LABEL_89;
    }
  }

  else if (v11)
  {
LABEL_89:
    v80 = v5;
    goto LABEL_92;
  }

  v80 = 0;
LABEL_92:

  return v80;
}

- (int64_t)conversationID
{
  objectID = [(EDSortableThreadProxy *)self objectID];
  conversationID = [objectID conversationID];

  return conversationID;
}

- (id)_targetForSelector:(SEL)selector
{
  selfCopy = self;
  properties = [(EDSortableThreadProxy *)self properties];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = properties;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  properties = [(EDSortableThreadProxy *)self properties];
  if (properties && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EDSortableThreadProxy;
    v6 = [(EDSortableThreadProxy *)&v8 respondsToSelector:selector];
  }

  return v6;
}

- (NSString)ef_publicDescription
{
  primarySortValue = [(EDSortableThreadProxy *)self primarySortValue];
  objc_opt_class();
  v4 = primarySortValue;
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:primarySortValue];

    v4 = v5;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%lld - %@]", -[EDSortableThreadProxy conversationID](self, "conversationID"), v4];

  return v6;
}

@end