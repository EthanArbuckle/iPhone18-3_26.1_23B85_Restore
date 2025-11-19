@interface MSInputContextHistory
- (BOOL)isEqual:(id)a3;
- (NSDictionary)ccRecipientNamesByEmailAddress;
- (NSDictionary)infoDict;
- (NSDictionary)recipientNamesByEmailAddress;
- (NSDictionary)toRecipientNamesByEmailAddress;
- (NSSet)firstPerson;
- (NSSet)primaryRecipients;
- (NSSet)secondaryRecipients;
- (NSString)ef_publicDescription;
- (id)_participantNameAndEmailAddressFromEmailAddress:(id)a3;
- (id)_participantNamesByEmailAddressFromRecipients:(id)a3;
- (unint64_t)hash;
@end

@implementation MSInputContextHistory

- (NSDictionary)toRecipientNamesByEmailAddress
{
  toRecipientNamesByEmailAddress = self->_toRecipientNamesByEmailAddress;
  if (!toRecipientNamesByEmailAddress)
  {
    v4 = [(MSInputContextHistory *)self toRecipients];
    v5 = [(MSInputContextHistory *)self _participantNamesByEmailAddressFromRecipients:v4];
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
    v4 = [(MSInputContextHistory *)self ccRecipients];
    v5 = [(MSInputContextHistory *)self _participantNamesByEmailAddressFromRecipients:v4];
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
    v33 = self;
    v4 = [(MSInputContextHistory *)self senderEmailAddress];
    v5 = [(MSInputContextHistory *)v33 _participantNameAndEmailAddressFromEmailAddress:v4];

    v29 = v5;
    v32 = [v5 first];
    v30 = [v5 second];
    v31 = [(MSInputContextHistory *)v33 originalContentMessages];
    v6 = objc_opt_new();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__MSInputContextHistory_recipientNamesByEmailAddress__block_invoke;
    aBlock[3] = &unk_27985B5D8;
    aBlock[4] = v33;
    v7 = _Block_copy(aBlock);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v31;
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
            v13 = [v12 sender];
            v7[2](v7, v13, v6);

            v14 = [v12 toList];
            v15 = [v12 ccList];
            v16 = [v14 arrayByAddingObjectsFromArray:v15];

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
    v22 = [(MSInputContextHistory *)v33 ccRecipientNamesByEmailAddress];
    [(NSDictionary *)v21 addEntriesFromDictionary:v22];

    v23 = [(MSInputContextHistory *)v33 toRecipientNamesByEmailAddress];
    [(NSDictionary *)v21 addEntriesFromDictionary:v23];

    if (v32)
    {
      v24 = [(NSDictionary *)v21 objectForKeyedSubscript:v32];
      v25 = v24 == 0;

      if (v25)
      {
        [(NSDictionary *)v21 setObject:v30 forKeyedSubscript:v32];
      }
    }

    v26 = v33->_recipientNamesByEmailAddress;
    v33->_recipientNamesByEmailAddress = v21;

    recipientNamesByEmailAddress = v33->_recipientNamesByEmailAddress;
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
    v4 = [(MSInputContextHistory *)self senderEmailAddress];
    v5 = [(MSInputContextHistory *)self _participantNameAndEmailAddressFromEmailAddress:v4];

    v6 = [v5 first];
    if (v6)
    {
      [MEMORY[0x277CBEB98] setWithObject:v6];
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
    v5 = [(MSInputContextHistory *)self toRecipientNamesByEmailAddress];
    v6 = [v5 allKeys];
    v7 = [v4 setWithArray:v6];
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
    v5 = [(MSInputContextHistory *)self toRecipientNamesByEmailAddress];
    v6 = [v5 allKeys];
    v7 = [v4 setWithArray:v6];
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

    v8 = [(MSInputContextHistory *)self subject];
    if (v8)
    {
      [(NSDictionary *)v7 setObject:v8 forKeyedSubscript:@"subject"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSInputContextHistory showSmartReplySuggestions](self, "showSmartReplySuggestions")}];
    [(NSDictionary *)v7 setObject:v9 forKeyedSubscript:@"showSmartReplySuggestions"];

    v10 = [(MSInputContextHistory *)self originalMessageCategorySubtype];
    [(NSDictionary *)v7 setObject:v10 forKeyedSubscript:@"messageCategorySubtype"];
    v12 = self->_infoDict;
    p_infoDict = &self->_infoDict;
    *p_infoDict = v7;

    infoDict = *p_infoDict;
  }

  v13 = *MEMORY[0x277D85DE8];

  return infoDict;
}

- (id)_participantNamesByEmailAddressFromRecipients:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
          v12 = [v10 second];
          v13 = [v11 first];
          [v5 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_participantNameAndEmailAddressFromEmailAddress:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x277D07118] + 16))())
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MSInputContextHistory *)self participantsByEmailAddress];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v8 = [v4 displayName];
      v9 = [v8 ec_personNameComponents];

      v10 = [v4 simpleAddress];
      if (v10)
      {
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x277CCAC00]);
          [v9 setGivenName:v10];
        }

        v5 = [MEMORY[0x277D07190] pairWithFirst:v10 second:v9];
      }

      else
      {
        v5 = 0;
      }

      v11 = [(MSInputContextHistory *)self participantsByEmailAddress];
      [v11 setObject:v5 forKeyedSubscript:v4];
    }
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D07148] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v32 = [objc_alloc(MEMORY[0x277D07090]) initWithStyle:2];
    v5 = [(MSInputContextHistory *)self senderEmailAddress];
    if (v5)
    {
      v6 = [(MSInputContextHistory *)self senderEmailAddress];
      v33[0] = v6;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    }

    else
    {
      v31 = MEMORY[0x277CBEBF8];
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v28 = NSStringFromClass(v12);
    v27 = [(MSInputContextHistory *)self threadIdentifier];
    v26 = [v32 stringFromEmailAddressList:v31];
    v24 = [(MSInputContextHistory *)self toRecipients];
    v29 = [v32 stringFromEmailAddressList:?];
    v25 = [(MSInputContextHistory *)self ccRecipients];
    v30 = [v32 stringFromEmailAddressList:?];
    v13 = MEMORY[0x277D07198];
    v14 = [(MSInputContextHistory *)self subject];
    v15 = [v13 ec_partiallyRedactedStringForSubjectOrSummary:v14];
    v16 = [(MSInputContextHistory *)self hasCustomSignature];
    v17 = [(MSInputContextHistory *)self showSmartReplySuggestions];
    v18 = [(MSInputContextHistory *)self originalMessageCategorySubtype];
    v19 = [(MSInputContextHistory *)self originalContentMessages];
    v20 = [v19 count];
    v21 = [(MSInputContextHistory *)self originalContentMessages];
    v10 = [v11 stringWithFormat:@"<%@: %p>\n\tthreadIdentifier:%@\n\tsenderEmailAddress:%@\n\ttoRecipients:%@\n\tccRecipients:%@\n\tsubject:%@\n\thasCustomSignature:%d\n\tshowSmartReplySuggestions:%d\n\toriginalMessageCategorySubtype:%@\n\toriginalContentMessages: (%lu) %@\n", v28, self, v27, v26, v29, v30, v15, v16, v17, v18, v20, v21];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MSInputContextHistory *)self threadIdentifier];
      v7 = [(MSInputContextHistory *)v5 threadIdentifier];
      if (EFStringsAreEqual())
      {
        v8 = [(MSInputContextHistory *)self senderEmailAddress];
        v9 = [(MSInputContextHistory *)v5 senderEmailAddress];
        if (EFObjectsAreEqual())
        {
          v10 = [(MSInputContextHistory *)self toRecipients];
          v11 = [(MSInputContextHistory *)v5 toRecipients];
          if (EFObjectsAreEqual())
          {
            v23 = [(MSInputContextHistory *)self ccRecipients];
            v22 = [(MSInputContextHistory *)v5 ccRecipients];
            if (EFObjectsAreEqual())
            {
              v21 = [(MSInputContextHistory *)self subject];
              v20 = [(MSInputContextHistory *)v5 subject];
              if (EFStringsAreEqual() && (v12 = [(MSInputContextHistory *)self hasCustomSignature], v12 == [(MSInputContextHistory *)v5 hasCustomSignature]) && (v13 = [(MSInputContextHistory *)self showSmartReplySuggestions], v13 == [(MSInputContextHistory *)v5 showSmartReplySuggestions]))
              {
                v19 = [(MSInputContextHistory *)self originalMessageCategorySubtype];
                v18 = [(MSInputContextHistory *)v5 originalMessageCategorySubtype];
                if (EFStringsAreEqual())
                {
                  v17 = [(MSInputContextHistory *)self originalContentMessages];
                  v16 = [(MSInputContextHistory *)v5 originalContentMessages];
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
  v3 = [(MSInputContextHistory *)self threadIdentifier];
  v4 = [v3 hash];

  v5 = [(MSInputContextHistory *)self senderEmailAddress];
  v6 = [v5 hash];

  v7 = [(MSInputContextHistory *)self toRecipients];
  v8 = [v7 hash];

  v9 = [(MSInputContextHistory *)self ccRecipients];
  v10 = [v9 hash];

  v11 = [(MSInputContextHistory *)self subject];
  v12 = [v11 hash];

  v13 = [(MSInputContextHistory *)self hasCustomSignature];
  v14 = [(MSInputContextHistory *)self showSmartReplySuggestions];
  v15 = [(MSInputContextHistory *)self originalMessageCategorySubtype];
  v16 = [v15 hash];

  v17 = [(MSInputContextHistory *)self originalContentMessages];
  v18 = [v17 hash] + 0x3774162F21C8AA5;

  return 33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * v4 + v6) + v8) + v10) + v12) + v13) + v14) + v16) + v18;
}

@end