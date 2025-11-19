@interface EDSortableThreadProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (EDSortableThreadProxy)initWithThread:(id)a3 originatingQuery:(id)a4;
- (NSString)ef_publicDescription;
- (id)_setValueFromThreadAndReturnIfChanged:(id)a3 keyPath:(id)a4 isPrimary:(BOOL)a5;
- (id)_sortValueForRawValue:(id)a3 keyPath:(id)a4;
- (id)_targetForSelector:(SEL)a3;
- (id)calculateChangeFromThread:(id)a3;
- (int64_t)conversationID;
- (void)_copySortPropertiesForDescriptors:(id)a3 thread:(id)a4;
- (void)updateFromThread:(id)a3 addingAdditionalInformation:(BOOL)a4 query:(id)a5;
@end

@implementation EDSortableThreadProxy

- (EDSortableThreadProxy)initWithThread:(id)a3 originatingQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = EDSortableThreadProxy;
  v8 = [(EDSortableThreadProxy *)&v15 init];
  if (v8)
  {
    v9 = [v6 objectID];
    objectID = v8->_objectID;
    v8->_objectID = v9;

    v11 = [v7 sortDescriptors];
    [(EDSortableThreadProxy *)v8 _copySortPropertiesForDescriptors:v11 thread:v6];

    v12 = [v6 date];
    date = v8->_date;
    v8->_date = v12;
  }

  return v8;
}

- (void)_copySortPropertiesForDescriptors:(id)a3 thread:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 firstObject];
  v8 = [v7 key];

  v9 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:v6 keyPath:v8 isPrimary:1];
  if ([v13 count] >= 2)
  {
    v10 = [v13 objectAtIndexedSubscript:1];
    v11 = [v10 key];

    v12 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:v6 keyPath:v11 isPrimary:0];
  }
}

- (id)_setValueFromThreadAndReturnIfChanged:(id)a3 keyPath:(id)a4 isPrimary:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 valueForKeyPath:v8];
  v10 = [(EDSortableThreadProxy *)self _sortValueForRawValue:v9 keyPath:v8];
  v11 = [(EDSortableThreadProxy *)self primarySortValue];
  if (v10 == v11)
  {

    v9 = 0;
  }

  else if (v5)
  {
    [(EDSortableThreadProxy *)self setPrimarySortValue:v10];
  }

  return v9;
}

- (id)_sortValueForRawValue:(id)a3 keyPath:(id)a4
{
  v7 = a3;
  v8 = [a4 isEqualToString:*MEMORY[0x1E699A898]];
  v9 = v7;
  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"EDSortableThreadProxy.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"[rawSortValue isKindOfClass:[NSIndexSet class]]"}];
      }

      v10 = v7;
      if ([v10 lastIndex] >= 7)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"EDSortableThreadProxy.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"flagColors.lastIndex <= ECMessageFlagColorLast"}];
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

- (void)updateFromThread:(id)a3 addingAdditionalInformation:(BOOL)a4 query:(id)a5
{
  v27 = a3;
  v8 = a5;
  v9 = [v8 sortDescriptors];
  [(EDSortableThreadProxy *)self _copySortPropertiesForDescriptors:v9 thread:v27];

  v10 = [v27 date];
  [(EDSortableThreadProxy *)self setDate:v10];

  if (a4 || ([(EDSortableThreadProxy *)self properties], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [(EDSortableThreadProxy *)self properties];

    if (!v12)
    {
      v13 = objc_alloc_init(EDSortableThreadProxyAdditionalProperties);
      [(EDSortableThreadProxy *)self setProperties:v13];
    }

    v14 = [v27 displayMessageObjectID];
    v15 = [v27 displayDate];
    [(EDSortableThreadProxy *)self setDisplayDate:v15];

    v16 = [v27 category];
    [(EDSortableThreadProxy *)self setCategory:v16];

    -[EDSortableThreadProxy setBusinessID:](self, "setBusinessID:", [v27 businessID]);
    v17 = [v27 businessLogoID];
    [(EDSortableThreadProxy *)self setBusinessLogoID:v17];

    v18 = [v27 readLater];
    [(EDSortableThreadProxy *)self setReadLater:v18];

    v19 = [v27 sendLaterDate];
    [(EDSortableThreadProxy *)self setSendLaterDate:v19];

    -[EDSortableThreadProxy setDisplayMessageGlobalID:](self, "setDisplayMessageGlobalID:", [v14 globalMessageID]);
    v20 = [v27 senderList];
    [(EDSortableThreadProxy *)self setSenderList:v20];

    v21 = [v27 toList];
    [(EDSortableThreadProxy *)self setToList:v21];

    v22 = [v27 ccList];
    [(EDSortableThreadProxy *)self setCcList:v22];

    v23 = [v27 flags];
    [(EDSortableThreadProxy *)self setFlags:v23];

    -[EDSortableThreadProxy setHasUnflagged:](self, "setHasUnflagged:", [v27 hasUnflagged]);
    v24 = [v27 flagColors];
    [(EDSortableThreadProxy *)self setFlagColors:v24];

    -[EDSortableThreadProxy setIsVIP:](self, "setIsVIP:", [v27 isVIP]);
    -[EDSortableThreadProxy setIsBlocked:](self, "setIsBlocked:", [v27 isBlocked]);
    -[EDSortableThreadProxy setHasAttachments:](self, "setHasAttachments:", [v27 hasAttachments]);
    -[EDSortableThreadProxy setIsAuthenticated:](self, "setIsAuthenticated:", [v27 isAuthenticated]);
    -[EDSortableThreadProxy setAllowAuthenticationWarning:](self, "setAllowAuthenticationWarning:", [v27 allowAuthenticationWarning]);
    -[EDSortableThreadProxy setNumberOfMessagesInThread:](self, "setNumberOfMessagesInThread:", [v27 count]);
    v25 = [v27 mailboxObjectIDs];
    [(EDSortableThreadProxy *)self setMailboxObjectIDs:v25];

    v26 = [v27 generatedSummary];
    [(EDSortableThreadProxy *)self setGeneratedSummary:v26];
  }
}

- (id)calculateChangeFromThread:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E699AD98]);
  v6 = [v4 query];
  v7 = [v6 sortDescriptors];

  v91 = v7;
  v8 = [v7 firstObject];
  v9 = [v8 key];

  v90 = v9;
  v10 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:v4 keyPath:v9 isPrimary:1];
  v11 = v10 != 0;
  v92 = v10;
  if (v10)
  {
    [v5 setValue:v10 forKeyPath:v90];
  }

  if ([v7 count] >= 2)
  {
    v12 = [v7 objectAtIndexedSubscript:1];
    v13 = [v12 key];

    v14 = [(EDSortableThreadProxy *)self _setValueFromThreadAndReturnIfChanged:v4 keyPath:v13 isPrimary:0];

    if (v14)
    {
      [v5 setValue:v14 forKeyPath:v90];
      v11 = 1;
    }

    v92 = v14;
  }

  v15 = [v4 date];
  v16 = [(EDSortableThreadProxy *)self date];
  v17 = [v15 isEqualToDate:v16];

  if ((v17 & 1) == 0)
  {
    v18 = [v4 date];
    [v5 setDate:v18];

    v11 = 1;
  }

  v19 = [(EDSortableThreadProxy *)self properties];

  if (v19)
  {
    v82 = [v4 displayMessageObjectID];
    v20 = [v82 globalMessageID];
    if (v20 != [(EDSortableThreadProxy *)self displayMessageGlobalID])
    {
      v21 = [v4 subject];
      v22 = v21;
      if (!v21)
      {
        v22 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setSubject:v22];
      if (!v21)
      {
      }

      v23 = [v4 summary];
      v24 = v23;
      if (!v23)
      {
        v24 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setSummary:v24];
      if (!v23)
      {
      }

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "unsubscribeType")}];
      [v5 setUnsubscribeType:v25];

      v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "conversationNotificationLevel")}];
      [v5 setConversationNotificationLevel:v26];

      v27 = [v4 followUp];
      v28 = v27;
      if (!v27)
      {
        v28 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setFollowUp:v28];
      if (!v27)
      {
      }

      v29 = [v4 displayMessageItemID];
      [v5 setDisplayMessageItemID:v29];

      LOBYTE(v11) = 1;
    }

    v30 = [v4 displayDate];
    v31 = [(EDSortableThreadProxy *)self displayDate];
    v32 = [v30 isEqualToDate:v31];

    if ((v32 & 1) == 0)
    {
      v33 = [v4 displayDate];
      [v5 setDisplayDate:v33];

      LOBYTE(v11) = 1;
    }

    v86 = [v4 category];
    v34 = [(EDSortableThreadProxy *)self category];
    v35 = EFObjectsAreEqual();

    if ((v35 & 1) == 0)
    {
      v36 = v86;
      if (!v86)
      {
        v36 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setCategory:v36];
      if (!v86)
      {
      }

      LOBYTE(v11) = 1;
    }

    v37 = [v4 businessID];
    if (v37 != [(EDSortableThreadProxy *)self businessID])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithLongLong:v37];
      [v5 setBusinessID:v38];

      LOBYTE(v11) = 1;
    }

    v89 = [v4 businessLogoID];
    v39 = [(EDSortableThreadProxy *)self businessLogoID];

    if (v89 != v39)
    {
      v40 = v89;
      if (!v89)
      {
        v40 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setBusinessLogoID:v40];
      if (!v89)
      {
      }

      LOBYTE(v11) = 1;
    }

    v85 = [v4 sendLaterDate];
    v41 = [(EDSortableThreadProxy *)self sendLaterDate];
    v42 = EFObjectsAreEqual();

    if ((v42 & 1) == 0)
    {
      v43 = v85;
      if (!v85)
      {
        v43 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setSendLaterDate:v43];
      if (!v85)
      {
      }

      LOBYTE(v11) = 1;
    }

    v84 = [v4 readLater];
    v44 = [(EDSortableThreadProxy *)self readLater];
    v45 = EFObjectsAreEqual();

    if ((v45 & 1) == 0)
    {
      v46 = v84;
      if (!v84)
      {
        v46 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setReadLater:v46];
      if (!v84)
      {
      }

      LOBYTE(v11) = 1;
    }

    v83 = [v4 senderList];
    v47 = [(EDSortableThreadProxy *)self senderList];
    v48 = EFArraysAreEqual();

    if ((v48 & 1) == 0)
    {
      [v5 setSenderList:v83];
      LOBYTE(v11) = 1;
    }

    v88 = [v4 toList];
    v49 = [(EDSortableThreadProxy *)self toList];
    v50 = EFArraysAreEqual();

    if ((v50 & 1) == 0)
    {
      [v5 setToList:v88];
      LOBYTE(v11) = 1;
    }

    v87 = [v4 ccList];
    v51 = [(EDSortableThreadProxy *)self ccList];
    v52 = EFArraysAreEqual();

    if ((v52 & 1) == 0)
    {
      [v5 setCcList:v87];
      LOBYTE(v11) = 1;
    }

    v53 = [v4 flags];
    v54 = [(EDSortableThreadProxy *)self flags];
    v55 = EFObjectsAreEqual();

    if ((v55 & 1) == 0)
    {
      [v5 setFlags:v53];
      LOBYTE(v11) = 1;
    }

    v56 = [v4 hasUnflagged];
    if (v56 != [(EDSortableThreadProxy *)self hasUnflagged])
    {
      v57 = [MEMORY[0x1E696AD98] numberWithBool:v56];
      [v5 setHasUnflagged:v57];

      LOBYTE(v11) = 1;
    }

    v58 = [v4 flagColors];
    v59 = [(EDSortableThreadProxy *)self flagColors];
    v60 = EFObjectsAreEqual();

    if ((v60 & 1) == 0)
    {
      v61 = v58;
      if (!v58)
      {
        v61 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setFlagColors:v61];
      if (!v58)
      {
      }

      LOBYTE(v11) = 1;
    }

    v62 = [v4 isVIP];
    if (v62 != [(EDSortableThreadProxy *)self isVIP])
    {
      v63 = [MEMORY[0x1E696AD98] numberWithBool:v62];
      [v5 setIsVIP:v63];

      LOBYTE(v11) = 1;
    }

    v64 = [v4 isBlocked];
    if (v64 != [(EDSortableThreadProxy *)self isBlocked])
    {
      v65 = [MEMORY[0x1E696AD98] numberWithBool:v64];
      [v5 setIsBlocked:v65];

      LOBYTE(v11) = 1;
    }

    v66 = [(EDSortableThreadProxy *)self hasAttachments];
    if (v66 != [(EDSortableThreadProxy *)self hasAttachments])
    {
      v67 = [MEMORY[0x1E696AD98] numberWithBool:v66];
      [v5 setHasAttachments:v67];

      LOBYTE(v11) = 1;
    }

    v68 = [(EDSortableThreadProxy *)self isAuthenticated];
    if (v68 != [(EDSortableThreadProxy *)self isAuthenticated])
    {
      v69 = [MEMORY[0x1E696AD98] numberWithBool:v68];
      [v5 setIsAuthenticated:v69];

      LOBYTE(v11) = 1;
    }

    v70 = [(EDSortableThreadProxy *)self allowAuthenticationWarning];
    if (v70 != [(EDSortableThreadProxy *)self allowAuthenticationWarning])
    {
      v71 = [MEMORY[0x1E696AD98] numberWithBool:v70];
      [v5 setAllowAuthenticationWarning:v71];

      LOBYTE(v11) = 1;
    }

    v72 = [v4 count];
    if (v72 != [(EDSortableThreadProxy *)self numberOfMessagesInThread])
    {
      v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v72];
      [v5 setCount:v73];

      LOBYTE(v11) = 1;
    }

    v74 = [v4 mailboxObjectIDs];
    v75 = [(EDSortableThreadProxy *)self mailboxObjectIDs];
    if ((EFArraysAreEqual() & 1) == 0)
    {
      [v5 setMailboxObjectIDs:v74];
      LOBYTE(v11) = 1;
    }

    v76 = [v4 generatedSummary];
    v77 = [(EDSortableThreadProxy *)self generatedSummary];
    v78 = [v76 isEqual:v77];

    if ((v78 & 1) == 0)
    {
      v79 = v76;
      if (!v76)
      {
        v79 = [MEMORY[0x1E695DFB0] null];
      }

      [v5 setGeneratedSummary:v79];
      if (!v76)
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
  v2 = [(EDSortableThreadProxy *)self objectID];
  v3 = [v2 conversationID];

  return v3;
}

- (id)_targetForSelector:(SEL)a3
{
  v3 = self;
  v4 = [(EDSortableThreadProxy *)self properties];
  if (objc_opt_respondsToSelector())
  {
    v3 = v4;
  }

  v5 = v3;

  return v3;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = [(EDSortableThreadProxy *)self properties];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EDSortableThreadProxy;
    v6 = [(EDSortableThreadProxy *)&v8 respondsToSelector:a3];
  }

  return v6;
}

- (NSString)ef_publicDescription
{
  v3 = [(EDSortableThreadProxy *)self primarySortValue];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v3];

    v4 = v5;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%lld - %@]", -[EDSortableThreadProxy conversationID](self, "conversationID"), v4];

  return v6;
}

@end