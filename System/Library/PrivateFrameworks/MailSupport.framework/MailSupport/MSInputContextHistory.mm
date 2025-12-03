@interface MSInputContextHistory
- (BOOL)isEqual:(id)equal;
- (NSDictionary)ccRecipientNamesByEmailAddress;
- (NSDictionary)infoDict;
- (NSDictionary)recipientNamesByEmailAddress;
- (NSDictionary)toRecipientNamesByEmailAddress;
- (NSSet)firstPerson;
- (NSSet)primaryRecipients;
- (NSSet)secondaryRecipients;
- (NSString)ef_publicDescription;
- (id)_participantNameAndEmailAddressFromEmailAddress:(id)address;
- (id)_participantNamesByEmailAddressFromRecipients:(id)recipients;
- (unint64_t)hash;
@end

@implementation MSInputContextHistory

- (NSDictionary)toRecipientNamesByEmailAddress
{
  toRecipientNamesByEmailAddress = self->_toRecipientNamesByEmailAddress;
  if (!toRecipientNamesByEmailAddress)
  {
    toRecipients = [(MSInputContextHistory *)self toRecipients];
    v5 = [(MSInputContextHistory *)self _participantNamesByEmailAddressFromRecipients:toRecipients];
    v6 = self->_toRecipientNamesByEmailAddress;
    self->_toRecipientNamesByEmailAddress = v5;

    toRecipientNamesByEmailAddress = self->_toRecipientNamesByEmailAddress;
  }

  return toRecipientNamesByEmailAddress;
}

- (NSDictionary)ccRecipientNamesByEmailAddress
{
  ccRecipientNamesByEmailAddress = self->_ccRecipientNamesByEmailAddress;
  if (!ccRecipientNamesByEmailAddress)
  {
    ccRecipients = [(MSInputContextHistory *)self ccRecipients];
    v5 = [(MSInputContextHistory *)self _participantNamesByEmailAddressFromRecipients:ccRecipients];
    v6 = self->_ccRecipientNamesByEmailAddress;
    self->_ccRecipientNamesByEmailAddress = v5;

    ccRecipientNamesByEmailAddress = self->_ccRecipientNamesByEmailAddress;
  }

  return ccRecipientNamesByEmailAddress;
}

- (NSDictionary)recipientNamesByEmailAddress
{
  v47 = *MEMORY[0x277D85DE8];
  recipientNamesByEmailAddress = self->_recipientNamesByEmailAddress;
  if (!recipientNamesByEmailAddress)
  {
    selfCopy = self;
    senderEmailAddress = [(MSInputContextHistory *)self senderEmailAddress];
    v5 = [(MSInputContextHistory *)selfCopy _participantNameAndEmailAddressFromEmailAddress:senderEmailAddress];

    v29 = v5;
    first = [v5 first];
    second = [v5 second];
    originalContentMessages = [(MSInputContextHistory *)selfCopy originalContentMessages];
    v6 = objc_opt_new();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__MSInputContextHistory_recipientNamesByEmailAddress__block_invoke;
    aBlock[3] = &unk_27985B5D8;
    aBlock[4] = selfCopy;
    v7 = _Block_copy(aBlock);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = originalContentMessages;
    v8 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v8)
    {
      v9 = *v41;
      v10 = *MEMORY[0x277D07118];
      do
      {
        v35 = v8;
        for (i = 0; i != v35; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          if (((*(v10 + 16))(v10, v12) & 1) == 0)
          {
            sender = [v12 sender];
            v7[2](v7, sender, v6);

            toList = [v12 toList];
            ccList = [v12 ccList];
            v16 = [toList arrayByAddingObjectsFromArray:ccList];

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v18)
            {
              v19 = *v37;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v37 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v7[2](v7, *(*(&v36 + 1) + 8 * j), v6);
                }

                v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
              }

              while (v18);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v8);
    }

    v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
    ccRecipientNamesByEmailAddress = [(MSInputContextHistory *)selfCopy ccRecipientNamesByEmailAddress];
    [(NSDictionary *)v21 addEntriesFromDictionary:ccRecipientNamesByEmailAddress];

    toRecipientNamesByEmailAddress = [(MSInputContextHistory *)selfCopy toRecipientNamesByEmailAddress];
    [(NSDictionary *)v21 addEntriesFromDictionary:toRecipientNamesByEmailAddress];

    if (first)
    {
      v24 = [(NSDictionary *)v21 objectForKeyedSubscript:first];
      v25 = v24 == 0;

      if (v25)
      {
        [(NSDictionary *)v21 setObject:second forKeyedSubscript:first];
      }
    }

    v26 = selfCopy->_recipientNamesByEmailAddress;
    selfCopy->_recipientNamesByEmailAddress = v21;

    recipientNamesByEmailAddress = selfCopy->_recipientNamesByEmailAddress;
  }

  v27 = *MEMORY[0x277D85DE8];

  return recipientNamesByEmailAddress;
}

void __53__MSInputContextHistory_recipientNamesByEmailAddress__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 emailAddressValue];
  v6 = [*(a1 + 32) _participantNameAndEmailAddressFromEmailAddress:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 second];
    v9 = [v7 first];
    [v10 setObject:v8 forKeyedSubscript:v9];
  }
}

- (NSSet)firstPerson
{
  firstPerson = self->_firstPerson;
  if (!firstPerson)
  {
    senderEmailAddress = [(MSInputContextHistory *)self senderEmailAddress];
    v5 = [(MSInputContextHistory *)self _participantNameAndEmailAddressFromEmailAddress:senderEmailAddress];

    first = [v5 first];
    if (first)
    {
      [MEMORY[0x277CBEB98] setWithObject:first];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v7 = ;
    v8 = self->_firstPerson;
    self->_firstPerson = v7;

    firstPerson = self->_firstPerson;
  }

  return firstPerson;
}

- (NSSet)primaryRecipients
{
  primaryRecipients = self->_primaryRecipients;
  if (!primaryRecipients)
  {
    v4 = MEMORY[0x277CBEB98];
    toRecipientNamesByEmailAddress = [(MSInputContextHistory *)self toRecipientNamesByEmailAddress];
    allKeys = [toRecipientNamesByEmailAddress allKeys];
    v7 = [v4 setWithArray:allKeys];
    v8 = self->_primaryRecipients;
    self->_primaryRecipients = v7;

    primaryRecipients = self->_primaryRecipients;
  }

  return primaryRecipients;
}

- (NSSet)secondaryRecipients
{
  secondaryRecipients = self->_secondaryRecipients;
  if (!secondaryRecipients)
  {
    v4 = MEMORY[0x277CBEB98];
    toRecipientNamesByEmailAddress = [(MSInputContextHistory *)self toRecipientNamesByEmailAddress];
    allKeys = [toRecipientNamesByEmailAddress allKeys];
    v7 = [v4 setWithArray:allKeys];
    v8 = self->_secondaryRecipients;
    self->_secondaryRecipients = v7;

    secondaryRecipients = self->_secondaryRecipients;
  }

  return secondaryRecipients;
}

- (NSDictionary)infoDict
{
  v16[1] = *MEMORY[0x277D85DE8];
  infoDict = self->_infoDict;
  if (!infoDict)
  {
    v4 = MEMORY[0x277CBEB38];
    v15 = @"hasCustomSignature";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSInputContextHistory hasCustomSignature](self, "hasCustomSignature")}];
    v16[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v4 dictionaryWithDictionary:v6];

    subject = [(MSInputContextHistory *)self subject];
    if (subject)
    {
      [(NSDictionary *)v7 setObject:subject forKeyedSubscript:@"subject"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSInputContextHistory showSmartReplySuggestions](self, "showSmartReplySuggestions")}];
    [(NSDictionary *)v7 setObject:v9 forKeyedSubscript:@"showSmartReplySuggestions"];

    originalMessageCategorySubtype = [(MSInputContextHistory *)self originalMessageCategorySubtype];
    [(NSDictionary *)v7 setObject:originalMessageCategorySubtype forKeyedSubscript:@"messageCategorySubtype"];
    v12 = self->_infoDict;
    p_infoDict = &self->_infoDict;
    *p_infoDict = v7;

    infoDict = *p_infoDict;
  }

  v13 = *MEMORY[0x277D85DE8];

  return infoDict;
}

- (id)_participantNamesByEmailAddressFromRecipients:(id)recipients
{
  v21 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = recipientsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(MSInputContextHistory *)self _participantNameAndEmailAddressFromEmailAddress:*(*(&v16 + 1) + 8 * i), v16];
        v11 = v10;
        if (v10)
        {
          second = [v10 second];
          first = [v11 first];
          [v5 setObject:second forKeyedSubscript:first];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_participantNameAndEmailAddressFromEmailAddress:(id)address
{
  addressCopy = address;
  if ((*(*MEMORY[0x277D07118] + 16))())
  {
    v5 = 0;
  }

  else
  {
    participantsByEmailAddress = [(MSInputContextHistory *)self participantsByEmailAddress];
    v7 = [participantsByEmailAddress objectForKeyedSubscript:addressCopy];

    if (v7)
    {
      v5 = v7;
    }

    else
    {
      displayName = [addressCopy displayName];
      ec_personNameComponents = [displayName ec_personNameComponents];

      simpleAddress = [addressCopy simpleAddress];
      if (simpleAddress)
      {
        if (!ec_personNameComponents)
        {
          ec_personNameComponents = objc_alloc_init(MEMORY[0x277CCAC00]);
          [ec_personNameComponents setGivenName:simpleAddress];
        }

        v5 = [MEMORY[0x277D07190] pairWithFirst:simpleAddress second:ec_personNameComponents];
      }

      else
      {
        v5 = 0;
      }

      participantsByEmailAddress2 = [(MSInputContextHistory *)self participantsByEmailAddress];
      [participantsByEmailAddress2 setObject:v5 forKeyedSubscript:addressCopy];
    }
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  v33[1] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v32 = [objc_alloc(MEMORY[0x277D07090]) initWithStyle:2];
    senderEmailAddress = [(MSInputContextHistory *)self senderEmailAddress];
    if (senderEmailAddress)
    {
      senderEmailAddress2 = [(MSInputContextHistory *)self senderEmailAddress];
      v33[0] = senderEmailAddress2;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    }

    else
    {
      v31 = MEMORY[0x277CBEBF8];
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v28 = NSStringFromClass(v12);
    threadIdentifier = [(MSInputContextHistory *)self threadIdentifier];
    v26 = [v32 stringFromEmailAddressList:v31];
    toRecipients = [(MSInputContextHistory *)self toRecipients];
    v29 = [v32 stringFromEmailAddressList:?];
    ccRecipients = [(MSInputContextHistory *)self ccRecipients];
    v30 = [v32 stringFromEmailAddressList:?];
    v13 = MEMORY[0x277D07198];
    subject = [(MSInputContextHistory *)self subject];
    v15 = [v13 ec_partiallyRedactedStringForSubjectOrSummary:subject];
    hasCustomSignature = [(MSInputContextHistory *)self hasCustomSignature];
    showSmartReplySuggestions = [(MSInputContextHistory *)self showSmartReplySuggestions];
    originalMessageCategorySubtype = [(MSInputContextHistory *)self originalMessageCategorySubtype];
    originalContentMessages = [(MSInputContextHistory *)self originalContentMessages];
    v20 = [originalContentMessages count];
    originalContentMessages2 = [(MSInputContextHistory *)self originalContentMessages];
    v10 = [v11 stringWithFormat:@"<%@: %p>\n\tthreadIdentifier:%@\n\tsenderEmailAddress:%@\n\ttoRecipients:%@\n\tccRecipients:%@\n\tsubject:%@\n\thasCustomSignature:%d\n\tshowSmartReplySuggestions:%d\n\toriginalMessageCategorySubtype:%@\n\toriginalContentMessages: (%lu) %@\n", v28, self, threadIdentifier, v26, v29, v30, v15, hasCustomSignature, showSmartReplySuggestions, originalMessageCategorySubtype, v20, originalContentMessages2];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"<%@: %p>", v9, self];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      threadIdentifier = [(MSInputContextHistory *)self threadIdentifier];
      threadIdentifier2 = [(MSInputContextHistory *)v5 threadIdentifier];
      if (EFStringsAreEqual())
      {
        senderEmailAddress = [(MSInputContextHistory *)self senderEmailAddress];
        senderEmailAddress2 = [(MSInputContextHistory *)v5 senderEmailAddress];
        if (EFObjectsAreEqual())
        {
          toRecipients = [(MSInputContextHistory *)self toRecipients];
          toRecipients2 = [(MSInputContextHistory *)v5 toRecipients];
          if (EFObjectsAreEqual())
          {
            ccRecipients = [(MSInputContextHistory *)self ccRecipients];
            ccRecipients2 = [(MSInputContextHistory *)v5 ccRecipients];
            if (EFObjectsAreEqual())
            {
              subject = [(MSInputContextHistory *)self subject];
              subject2 = [(MSInputContextHistory *)v5 subject];
              if (EFStringsAreEqual() && (v12 = [(MSInputContextHistory *)self hasCustomSignature], v12 == [(MSInputContextHistory *)v5 hasCustomSignature]) && (v13 = [(MSInputContextHistory *)self showSmartReplySuggestions], v13 == [(MSInputContextHistory *)v5 showSmartReplySuggestions]))
              {
                originalMessageCategorySubtype = [(MSInputContextHistory *)self originalMessageCategorySubtype];
                originalMessageCategorySubtype2 = [(MSInputContextHistory *)v5 originalMessageCategorySubtype];
                if (EFStringsAreEqual())
                {
                  originalContentMessages = [(MSInputContextHistory *)self originalContentMessages];
                  originalContentMessages2 = [(MSInputContextHistory *)v5 originalContentMessages];
                  v14 = EFObjectsAreEqual();
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  threadIdentifier = [(MSInputContextHistory *)self threadIdentifier];
  v4 = [threadIdentifier hash];

  senderEmailAddress = [(MSInputContextHistory *)self senderEmailAddress];
  v6 = [senderEmailAddress hash];

  toRecipients = [(MSInputContextHistory *)self toRecipients];
  v8 = [toRecipients hash];

  ccRecipients = [(MSInputContextHistory *)self ccRecipients];
  v10 = [ccRecipients hash];

  subject = [(MSInputContextHistory *)self subject];
  v12 = [subject hash];

  hasCustomSignature = [(MSInputContextHistory *)self hasCustomSignature];
  showSmartReplySuggestions = [(MSInputContextHistory *)self showSmartReplySuggestions];
  originalMessageCategorySubtype = [(MSInputContextHistory *)self originalMessageCategorySubtype];
  v16 = [originalMessageCategorySubtype hash];

  originalContentMessages = [(MSInputContextHistory *)self originalContentMessages];
  v18 = [originalContentMessages hash] + 0x3774162F21C8AA5;

  return 33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * v4 + v6) + v8) + v10) + v12) + hasCustomSignature) + showSmartReplySuggestions) + v16) + v18;
}

@end