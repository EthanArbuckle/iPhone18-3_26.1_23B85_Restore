@interface PKPaymentPreferenceContact
- (BOOL)preferenceObject:(id)object representsContact:(id)contact;
- (PKPaymentPreferenceContact)initWithTitle:(id)title preferences:(id)preferences selectedIndex:(unint64_t)index readOnly:(BOOL)only;
- (id)_removeDuplicateContacts:(id)contacts;
- (id)errorsForPreference:(id)preference;
- (int64_t)indexOfContact:(id)contact;
- (void)_mergeContacts:(id)contacts;
- (void)_updateSelectedIndex;
- (void)addHideMyEmailPreference:(BOOL)preference;
- (void)mergeRecentsAndMeCard;
- (void)setContactKey:(id)key;
- (void)setErrors:(id)errors forPreference:(id)preference;
@end

@implementation PKPaymentPreferenceContact

- (PKPaymentPreferenceContact)initWithTitle:(id)title preferences:(id)preferences selectedIndex:(unint64_t)index readOnly:(BOOL)only
{
  v9.receiver = self;
  v9.super_class = PKPaymentPreferenceContact;
  v6 = [(PKPaymentPreference *)&v9 initWithTitle:title preferences:preferences selectedIndex:index readOnly:only];
  if (v6)
  {
    v7 = +[PKPaymentOptionsRecents defaultInstance];
    [(PKPaymentPreferenceContact *)v6 setPaymentOptionsRecents:v7];
  }

  return v6;
}

- (void)setContactKey:(id)key
{
  keyCopy = key;
  contactKeys = self->_contactKeys;
  v15 = keyCopy;
  if (contactKeys)
  {
    v6 = [(NSOrderedSet *)contactKeys indexOfObject:keyCopy];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
      array = [(NSOrderedSet *)self->_contactKeys array];
      v10 = [v8 arrayByAddingObjectsFromArray:array];

      v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v10];
    }

    else
    {
      v10 = [(NSOrderedSet *)self->_contactKeys mutableCopy];
      v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
      [v10 moveObjectsAtIndexes:v13 toIndex:0];

      v11 = [v10 copy];
    }

    v14 = self->_contactKeys;
    self->_contactKeys = v11;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB8] orderedSetWithObject:keyCopy];
    v10 = self->_contactKeys;
    self->_contactKeys = v12;
  }

LABEL_9:
}

- (id)_removeDuplicateContacts:(id)contacts
{
  v44 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = contactsCopy;
  v37 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v37)
  {
    v35 = *v40;
    v34 = *MEMORY[0x1E695C330];
    v32 = *MEMORY[0x1E695C208];
    v31 = *MEMORY[0x1E695C360];
    v30 = *MEMORY[0x1E695C230];
    v29 = *MEMORY[0x1E695C240];
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __55__PKPaymentPreferenceContact__removeDuplicateContacts___block_invoke;
        v38[3] = &unk_1E79C9A68;
        v38[4] = self;
        v38[5] = v6;
        v7 = [array indexOfObjectPassingTest:{v38, v29}];
        contactKeys = [(PKPaymentPreferenceContact *)self contactKeys];
        if (![contactKeys count])
        {
          goto LABEL_18;
        }

        if (![contactKeys containsObject:v34] || (objc_msgSend(v6, "phoneNumbers"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "value"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringValue"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v10, v9, v13))
        {
          if (![contactKeys containsObject:v32] || (objc_msgSend(v6, "emailAddresses"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "value"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v15, v14, v17))
          {
            if (![contactKeys containsObject:v31] || (objc_msgSend(v6, "postalAddresses"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "firstObject"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "value"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v20))
            {
              if (([contactKeys containsObject:v30] & 1) != 0 || objc_msgSend(contactKeys, "containsObject:", v29))
              {
                familyName = [v6 familyName];
                if ([familyName length])
                {
                }

                else
                {
                  givenName = [v6 givenName];
                  v23 = [givenName length];

                  if (!v23)
                  {
                    goto LABEL_26;
                  }
                }
              }

LABEL_18:
              if (v7 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [array addObject:v6];
                goto LABEL_26;
              }

              v24 = [array objectAtIndex:v7];
              if ([v24 contactSource] == 3)
              {
                [array removeObjectAtIndex:v7];
                [array addObject:v6];
                recentContact2 = +[PKPaymentOptionsRecents defaultInstance];
                recentContact = [v24 recentContact];
                [recentContact2 deleteRecent:recentContact];

                goto LABEL_24;
              }

              if ([v6 contactSource] == 3)
              {
                recentContact2 = [v6 recentContact];
                [v24 setRecentContact:recentContact2];
LABEL_24:
              }
            }
          }
        }

LABEL_26:
      }

      v37 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v37);
  }

  v27 = [array copy];

  return v27;
}

- (void)mergeRecentsAndMeCard
{
  if (![(PKPaymentPreference *)self isReadOnly])
  {
    preferences = [(PKPaymentPreference *)self preferences];
    v8 = [preferences mutableCopy];

    paymentOptionsRecents = [(PKPaymentPreferenceContact *)self paymentOptionsRecents];
    v5 = [paymentOptionsRecents recentsForPreference:self];
    [v8 addObjectsFromArray:v5];

    paymentOptionsRecents2 = [(PKPaymentPreferenceContact *)self paymentOptionsRecents];
    v7 = [paymentOptionsRecents2 meCardEntriesForPreference:self];
    [v8 addObjectsFromArray:v7];

    [(PKPaymentPreferenceContact *)self _mergeContacts:v8];
  }
}

- (void)_mergeContacts:(id)contacts
{
  contactsCopy = contacts;
  if (![(PKPaymentPreference *)self isReadOnly])
  {
    preferences = [(PKPaymentPreference *)self preferences];
    v5 = [preferences mutableCopy];

    [v5 addObjectsFromArray:contactsCopy];
    [v5 sortUsingComparator:&__block_literal_global_24];
    v6 = [(PKPaymentPreferenceContact *)self _removeDuplicateContacts:v5];

    [(PKPaymentPreference *)self setPreferences:v6];
    [(PKPaymentPreferenceContact *)self _updateSelectedIndex];
  }
}

uint64_t __45__PKPaymentPreferenceContact__mergeContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 recentFromContactInformation];
  v6 = [v4 recentFromContactInformation];

  if (v5)
  {
    return v5 & (v6 ^ 1);
  }

  else
  {
    return v6 << 63 >> 63;
  }
}

- (void)_updateSelectedIndex
{
  preferences = [(PKPaymentPreference *)self preferences];
  v4 = [preferences count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    if ([(PKPaymentPreference *)self selectedIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      selectedIndex = [(PKPaymentPreference *)self selectedIndex];
      preferences2 = [(PKPaymentPreference *)self preferences];
      v8 = [preferences2 count];

      if (selectedIndex < v8)
      {
        return;
      }
    }

    v5 = 0;
  }

  [(PKPaymentPreference *)self setSelectedIndex:v5];
}

- (int64_t)indexOfContact:(id)contact
{
  contactCopy = contact;
  preferences = [(PKPaymentPreference *)self preferences];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PKPaymentPreferenceContact_indexOfContact___block_invoke;
  v9[3] = &unk_1E79C9A68;
  v9[4] = self;
  v10 = contactCopy;
  v6 = contactCopy;
  v7 = [preferences indexOfObjectPassingTest:v9];

  return v7;
}

- (void)setErrors:(id)errors forPreference:(id)preference
{
  preferenceCopy = preference;
  errorsCopy = errors;
  errors = [(PKPaymentPreference *)self errors];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PKPaymentPreferenceContact_setErrors_forPreference___block_invoke;
  v15[3] = &unk_1E79C9A40;
  v9 = preferenceCopy;
  v16 = v9;
  v10 = [errors keysOfEntriesPassingTest:v15];
  anyObject = [v10 anyObject];

  errors2 = [(PKPaymentPreference *)self errors];
  v13 = errors2;
  if (anyObject)
  {
    v14 = anyObject;
  }

  else
  {
    v14 = v9;
  }

  [errors2 setObject:errorsCopy forKey:v14];
}

- (id)errorsForPreference:(id)preference
{
  preferenceCopy = preference;
  errors = [(PKPaymentPreference *)self errors];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PKPaymentPreferenceContact_errorsForPreference___block_invoke;
  v12[3] = &unk_1E79C9A40;
  v13 = preferenceCopy;
  v6 = preferenceCopy;
  v7 = [errors keysOfEntriesPassingTest:v12];
  anyObject = [v7 anyObject];

  if (anyObject)
  {
    errors2 = [(PKPaymentPreference *)self errors];
    v10 = [errors2 objectForKey:anyObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)preferenceObject:(id)object representsContact:(id)contact
{
  objectCopy = object;
  contactCopy = contact;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactKeys = self->_contactKeys;
    v9 = objectCopy;
    array = [(NSOrderedSet *)contactKeys array];
    v11 = [v9 representsContact:contactCopy forContactKeys:array];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)addHideMyEmailPreference:(BOOL)preference
{
  preferenceCopy = preference;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v6 = MEMORY[0x1E695CEE0];
  v7 = *MEMORY[0x1E695CB60];
  v8 = PKLocalizedHideMyEmailString(&cfstr_HmeSettingsRow.isa, 0);
  v9 = [v6 labeledValueWithLabel:v7 value:v8];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 setEmailAddresses:v10];

  [v5 setIsHideMyEmail:1];
  preferences = [(PKPaymentPreference *)self preferences];
  v12 = [preferences arrayByAddingObject:v5];
  [(PKPaymentPreference *)self setPreferences:v12];

  if (preferenceCopy)
  {
    preferences2 = [(PKPaymentPreference *)self preferences];
    -[PKPaymentPreference setSelectedIndex:](self, "setSelectedIndex:", [preferences2 count] - 1);
  }
}

@end