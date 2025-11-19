@interface PKPaymentPreferenceContact
- (BOOL)preferenceObject:(id)a3 representsContact:(id)a4;
- (PKPaymentPreferenceContact)initWithTitle:(id)a3 preferences:(id)a4 selectedIndex:(unint64_t)a5 readOnly:(BOOL)a6;
- (id)_removeDuplicateContacts:(id)a3;
- (id)errorsForPreference:(id)a3;
- (int64_t)indexOfContact:(id)a3;
- (void)_mergeContacts:(id)a3;
- (void)_updateSelectedIndex;
- (void)addHideMyEmailPreference:(BOOL)a3;
- (void)mergeRecentsAndMeCard;
- (void)setContactKey:(id)a3;
- (void)setErrors:(id)a3 forPreference:(id)a4;
@end

@implementation PKPaymentPreferenceContact

- (PKPaymentPreferenceContact)initWithTitle:(id)a3 preferences:(id)a4 selectedIndex:(unint64_t)a5 readOnly:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = PKPaymentPreferenceContact;
  v6 = [(PKPaymentPreference *)&v9 initWithTitle:a3 preferences:a4 selectedIndex:a5 readOnly:a6];
  if (v6)
  {
    v7 = +[PKPaymentOptionsRecents defaultInstance];
    [(PKPaymentPreferenceContact *)v6 setPaymentOptionsRecents:v7];
  }

  return v6;
}

- (void)setContactKey:(id)a3
{
  v4 = a3;
  contactKeys = self->_contactKeys;
  v15 = v4;
  if (contactKeys)
  {
    v6 = [(NSOrderedSet *)contactKeys indexOfObject:v4];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
      v9 = [(NSOrderedSet *)self->_contactKeys array];
      v10 = [v8 arrayByAddingObjectsFromArray:v9];

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
    v12 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v4];
    v10 = self->_contactKeys;
    self->_contactKeys = v12;
  }

LABEL_9:
}

- (id)_removeDuplicateContacts:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
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
        v7 = [v4 indexOfObjectPassingTest:{v38, v29}];
        v8 = [(PKPaymentPreferenceContact *)self contactKeys];
        if (![v8 count])
        {
          goto LABEL_18;
        }

        if (![v8 containsObject:v34] || (objc_msgSend(v6, "phoneNumbers"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "value"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringValue"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v10, v9, v13))
        {
          if (![v8 containsObject:v32] || (objc_msgSend(v6, "emailAddresses"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "value"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v15, v14, v17))
          {
            if (![v8 containsObject:v31] || (objc_msgSend(v6, "postalAddresses"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "firstObject"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "value"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v20))
            {
              if (([v8 containsObject:v30] & 1) != 0 || objc_msgSend(v8, "containsObject:", v29))
              {
                v21 = [v6 familyName];
                if ([v21 length])
                {
                }

                else
                {
                  v22 = [v6 givenName];
                  v23 = [v22 length];

                  if (!v23)
                  {
                    goto LABEL_26;
                  }
                }
              }

LABEL_18:
              if (v7 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v4 addObject:v6];
                goto LABEL_26;
              }

              v24 = [v4 objectAtIndex:v7];
              if ([v24 contactSource] == 3)
              {
                [v4 removeObjectAtIndex:v7];
                [v4 addObject:v6];
                v25 = +[PKPaymentOptionsRecents defaultInstance];
                v26 = [v24 recentContact];
                [v25 deleteRecent:v26];

                goto LABEL_24;
              }

              if ([v6 contactSource] == 3)
              {
                v25 = [v6 recentContact];
                [v24 setRecentContact:v25];
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

  v27 = [v4 copy];

  return v27;
}

- (void)mergeRecentsAndMeCard
{
  if (![(PKPaymentPreference *)self isReadOnly])
  {
    v3 = [(PKPaymentPreference *)self preferences];
    v8 = [v3 mutableCopy];

    v4 = [(PKPaymentPreferenceContact *)self paymentOptionsRecents];
    v5 = [v4 recentsForPreference:self];
    [v8 addObjectsFromArray:v5];

    v6 = [(PKPaymentPreferenceContact *)self paymentOptionsRecents];
    v7 = [v6 meCardEntriesForPreference:self];
    [v8 addObjectsFromArray:v7];

    [(PKPaymentPreferenceContact *)self _mergeContacts:v8];
  }
}

- (void)_mergeContacts:(id)a3
{
  v7 = a3;
  if (![(PKPaymentPreference *)self isReadOnly])
  {
    v4 = [(PKPaymentPreference *)self preferences];
    v5 = [v4 mutableCopy];

    [v5 addObjectsFromArray:v7];
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
  v3 = [(PKPaymentPreference *)self preferences];
  v4 = [v3 count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    if ([(PKPaymentPreference *)self selectedIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(PKPaymentPreference *)self selectedIndex];
      v7 = [(PKPaymentPreference *)self preferences];
      v8 = [v7 count];

      if (v6 < v8)
      {
        return;
      }
    }

    v5 = 0;
  }

  [(PKPaymentPreference *)self setSelectedIndex:v5];
}

- (int64_t)indexOfContact:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPreference *)self preferences];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PKPaymentPreferenceContact_indexOfContact___block_invoke;
  v9[3] = &unk_1E79C9A68;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

- (void)setErrors:(id)a3 forPreference:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentPreference *)self errors];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PKPaymentPreferenceContact_setErrors_forPreference___block_invoke;
  v15[3] = &unk_1E79C9A40;
  v9 = v6;
  v16 = v9;
  v10 = [v8 keysOfEntriesPassingTest:v15];
  v11 = [v10 anyObject];

  v12 = [(PKPaymentPreference *)self errors];
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  [v12 setObject:v7 forKey:v14];
}

- (id)errorsForPreference:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPreference *)self errors];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PKPaymentPreferenceContact_errorsForPreference___block_invoke;
  v12[3] = &unk_1E79C9A40;
  v13 = v4;
  v6 = v4;
  v7 = [v5 keysOfEntriesPassingTest:v12];
  v8 = [v7 anyObject];

  if (v8)
  {
    v9 = [(PKPaymentPreference *)self errors];
    v10 = [v9 objectForKey:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)preferenceObject:(id)a3 representsContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactKeys = self->_contactKeys;
    v9 = v6;
    v10 = [(NSOrderedSet *)contactKeys array];
    v11 = [v9 representsContact:v7 forContactKeys:v10];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)addHideMyEmailPreference:(BOOL)a3
{
  v3 = a3;
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
  v11 = [(PKPaymentPreference *)self preferences];
  v12 = [v11 arrayByAddingObject:v5];
  [(PKPaymentPreference *)self setPreferences:v12];

  if (v3)
  {
    v13 = [(PKPaymentPreference *)self preferences];
    -[PKPaymentPreference setSelectedIndex:](self, "setSelectedIndex:", [v13 count] - 1);
  }
}

@end