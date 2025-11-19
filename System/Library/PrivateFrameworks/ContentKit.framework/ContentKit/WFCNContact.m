@interface WFCNContact
+ (WFCNContact)contactWithCNContact:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5;
+ (WFCNContact)contactWithVCardData:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5;
+ (id)addContactsChangeObserver:(id)a3;
+ (id)contactsWithVCardData:(id)a3;
+ (id)lock_changeObservers;
+ (id)requiredKeysToFetch;
+ (void)contactStoreDidChange:(id)a3;
+ (void)lock_updateContactStoreObservation;
+ (void)removeContactsChangeObserver:(id)a3;
- (BOOL)hasImageData;
- (BOOL)hasValueForPropertyID:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPropertyIDRepresented:(int)a3;
- (NSString)accountIdentifier;
- (NSString)contactIdentifier;
- (WFCNContact)contactWithPropertyID:(int)a3 multivalueIndex:(int64_t)a4;
- (WFCNContact)initWithCNContact:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5 fromVCard:(BOOL)a6;
- (WFCNContact)initWithCoder:(id)a3;
- (id)URLs;
- (id)attributionSetWithCachingIdentifier:(id)a3;
- (id)birthday;
- (id)contactIdentifierForINPerson;
- (id)contactRelations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dates;
- (id)emailAddresses;
- (id)firstName;
- (id)formattedName;
- (id)imageData;
- (id)instantMessageAddresses;
- (id)lastName;
- (id)middleName;
- (id)namePrefix;
- (id)nameSuffix;
- (id)nickname;
- (id)organization;
- (id)phoneNumbers;
- (id)relationsWithContact:(id)a3;
- (id)relationsWithMeContact;
- (id)socialProfiles;
- (id)streetAddresses;
- (id)thumbnailImageData;
- (id)vCardRepresentationWithFullData:(BOOL)a3;
- (id)valueForPropertyID:(int)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)refetchContact;
@end

@implementation WFCNContact

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFCNContact;
  v4 = a3;
  [(WFContact *)&v6 encodeWithCoder:v4];
  v5 = [(WFCNContact *)self contactIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"contactIdentifier"];
}

- (WFCNContact)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFCNContact;
  v5 = [(WFContact *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFCNContact *)self contact];
  v6 = [v4 initWithCNContact:v5 propertyID:-[WFCNContact propertyID](self multivalueIndex:"propertyID") fromVCard:{-[WFCNContact multivalueIndex](self, "multivalueIndex"), -[WFCNContact fromVCard](self, "fromVCard")}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFCNContact *)v4 contact];
      v6 = [v5 identifier];
      v7 = [(WFCNContact *)self contact];
      v8 = [v7 identifier];
      if ([v6 isEqual:v8] && (v9 = -[WFCNContact propertyID](v4, "propertyID"), v9 == -[WFCNContact propertyID](self, "propertyID")))
      {
        v10 = [(WFCNContact *)v4 multivalueIndex];
        v11 = v10 == [(WFCNContact *)self multivalueIndex];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(WFCNContact *)self contact];
  v4 = [v3 hash];
  multivalueIndex = self->_multivalueIndex;
  v6 = v4 ^ self->_propertyID;
  v7 = multivalueIndex ^ 0xCCC;

  return v6 ^ v7;
}

- (id)relationsWithMeContact
{
  v3 = objc_opt_new();
  v4 = [v3 currentUserContact];

  if (v4)
  {
    v5 = [(WFCNContact *)self relationsWithContact:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)relationsWithContact:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WFCNContactAuthorizationStatus() == 3)
  {
    v5 = [v4 contactRelations];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__WFCNContact_relationsWithContact___block_invoke;
    v9[3] = &unk_278347278;
    v9[4] = self;
    v6 = [v5 if_objectsPassingTest:v9];
  }

  else
  {
    v7 = getWFWFContactLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[WFCNContact relationsWithContact:]";
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEBUG, "%s WFCNContact is not authorized to access CNContactStore!", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __36__WFCNContact_relationsWithContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 name];

  CNContactFormatterClass = getCNContactFormatterClass();
  v6 = [*(a1 + 32) contact];
  v7 = [CNContactFormatterClass stringFromContact:v6 style:0];
  v8 = [v7 isEqualToString:v4];

  return v8;
}

- (id)attributionSetWithCachingIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CD3A58]);
  v6 = [v5 initWithBundleIdentifier:*MEMORY[0x277D7A238]];
  v7 = [MEMORY[0x277CD3A88] sharedResolver];
  v8 = [v7 resolvedAppMatchingDescriptor:v6];

  v9 = [(WFCNContact *)self accountIdentifier];

  if (v9)
  {
    v10 = [(WFCNContact *)self accountIdentifier];
    v11 = [WFContentAttributionSet attributionSetWithAccountBasedAppDescriptor:v8 accountIdentifier:v10 disclosureLevel:1 originalItemIdentifier:v4];
  }

  else
  {
    v11 = [WFContentAttributionSet attributionSetWithAppDescriptor:v8 disclosureLevel:1 originalItemIdentifier:v4];
  }

  return v11;
}

- (NSString)accountIdentifier
{
  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    getCNContactStoreClass();
    v4 = objc_opt_new();
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v5 = getCNContainerClass_softClass;
    v30 = getCNContainerClass_softClass;
    if (!getCNContainerClass_softClass)
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __getCNContainerClass_block_invoke;
      v25 = &unk_27834A178;
      v26 = &v27;
      __getCNContainerClass_block_invoke(&v22);
      v5 = v28[3];
    }

    v6 = v5;
    _Block_object_dispose(&v27, 8);
    v7 = [(WFCNContact *)self contact];
    v8 = [v7 identifier];
    v9 = [v5 predicateForContainerOfContactWithIdentifier:v8];

    v10 = [v4 containersMatchingPredicate:v9 error:0];
    v11 = [v10 firstObject];

    if (v11)
    {
      v12 = [v10 firstObject];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v13 = getCNAccountClass_softClass;
      v30 = getCNAccountClass_softClass;
      if (!getCNAccountClass_softClass)
      {
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __getCNAccountClass_block_invoke;
        v25 = &unk_27834A178;
        v26 = &v27;
        __getCNAccountClass_block_invoke(&v22);
        v13 = v28[3];
      }

      v14 = v13;
      _Block_object_dispose(&v27, 8);
      v15 = [v12 identifier];
      v16 = [v13 predicateForAccountForContainerWithIdentifier:v15];

      v17 = [v4 accountsMatchingPredicate:v16 error:0];
      v18 = [v17 firstObject];
      v19 = [v18 externalIdentifierString];
      v20 = self->_accountIdentifier;
      self->_accountIdentifier = v19;
    }

    accountIdentifier = self->_accountIdentifier;
  }

  return accountIdentifier;
}

- (id)instantMessageAddresses
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:13])
  {
    v3 = objc_opt_new();
    v4 = [(WFCNContact *)self contact];
    v5 = [v4 instantMessageAddresses];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = *v26;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v24)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 value];
          if (-[WFCNContact propertyID](self, "propertyID") == 13 && (v12 = -[WFCNContact multivalueIndex](self, "multivalueIndex"), v12 == [v6 indexOfObject:v10]))
          {
            v13 = [(WFCNContact *)self formattedName];
            v14 = 1;
          }

          else
          {
            CNLabeledValueClass = getCNLabeledValueClass();
            v16 = [v10 label];
            v17 = [CNLabeledValueClass localizedStringForLabel:v16];
            [MEMORY[0x277CBEAF8] currentLocale];
            v19 = v18 = v3;
            v13 = [v17 capitalizedStringWithLocale:v19];

            v3 = v18;
            v14 = 0;
          }

          v20 = [WFContactLabeledValue labeledValueWithLabel:v13 value:v11];
          v21 = v20;
          if (v14)
          {
            v29 = v20;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

            goto LABEL_17;
          }

          [v3 addObject:v20];
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v22 = v3;
LABEL_17:
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

- (id)contactRelations
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:47])
  {
    v3 = objc_opt_new();
    v4 = [(WFCNContact *)self contact];
    v5 = [v4 contactRelations];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 value];
          if (-[WFCNContact propertyID](self, "propertyID") == 47 && (v13 = -[WFCNContact multivalueIndex](self, "multivalueIndex"), v13 == [v6 indexOfObject:v11]))
          {
            v14 = [(WFCNContact *)self formattedName];
            v15 = 1;
          }

          else
          {
            CNLabeledValueClass = getCNLabeledValueClass();
            v17 = [v11 label];
            v14 = [CNLabeledValueClass localizedStringForLabel:v17];

            v15 = 0;
          }

          v18 = [WFContactLabeledValue labeledValueWithLabel:v14 value:v12];
          v19 = v18;
          if (v15)
          {
            v26 = v18;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

            goto LABEL_17;
          }

          [v3 addObject:v18];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v20 = v3;
LABEL_17:
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)socialProfiles
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:46])
  {
    v3 = objc_opt_new();
    v4 = [(WFCNContact *)self contact];
    v5 = [v4 socialProfiles];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = *v26;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v24)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 value];
          if (-[WFCNContact propertyID](self, "propertyID") == 46 && (v12 = -[WFCNContact multivalueIndex](self, "multivalueIndex"), v12 == [v6 indexOfObject:v10]))
          {
            v13 = [(WFCNContact *)self formattedName];
            v14 = 1;
          }

          else
          {
            CNLabeledValueClass = getCNLabeledValueClass();
            v16 = [v10 label];
            v17 = [CNLabeledValueClass localizedStringForLabel:v16];
            [MEMORY[0x277CBEAF8] currentLocale];
            v19 = v18 = v3;
            v13 = [v17 capitalizedStringWithLocale:v19];

            v3 = v18;
            v14 = 0;
          }

          v20 = [WFContactLabeledValue labeledValueWithLabel:v13 value:v11];
          v21 = v20;
          if (v14)
          {
            v29 = v20;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

            goto LABEL_17;
          }

          [v3 addObject:v20];
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v22 = v3;
LABEL_17:
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

- (id)URLs
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:22])
  {
    v32 = objc_opt_new();
    v3 = [(WFCNContact *)self contact];
    v4 = [v3 urlAddresses];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      v9 = 0x277CBE000uLL;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = *(v9 + 3008);
        v13 = [v11 value];
        v14 = [v12 URLWithString:v13];

        v15 = [v14 scheme];

        if (v15)
        {
          if (v14)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v16 = *(v9 + 3008);
          v17 = [v11 value];
          v18 = [@"http://" stringByAppendingString:v17];
          v19 = [v16 URLWithString:v18];

          v9 = 0x277CBE000;
          v14 = v19;
          if (v19)
          {
LABEL_11:
            if (-[WFCNContact propertyID](self, "propertyID") == 22 && (v20 = -[WFCNContact multivalueIndex](self, "multivalueIndex"), v20 == [v5 indexOfObject:v11]))
            {
              v21 = [(WFCNContact *)self formattedName];
              v22 = 1;
            }

            else
            {
              CNLabeledValueClass = getCNLabeledValueClass();
              v24 = [v11 label];
              v25 = [CNLabeledValueClass localizedStringForLabel:v24];
              v26 = [MEMORY[0x277CBEAF8] currentLocale];
              v21 = [v25 capitalizedStringWithLocale:v26];

              v9 = 0x277CBE000;
              v22 = 0;
            }

            v27 = [WFContactLabeledValue labeledValueWithLabel:v21 value:v14];
            v28 = v27;
            if (v22)
            {
              v37 = v27;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];

              v29 = v32;
              goto LABEL_22;
            }

            [v32 addObject:v27];
          }
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v29 = v32;
    v30 = v32;
LABEL_22:
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  return v30;
}

- (id)streetAddresses
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:5])
  {
    v28 = objc_opt_new();
    v3 = [(WFCNContact *)self contact];
    v4 = [v3 postalAddresses];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v29 = *v32;
      v30 = v5;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = [v9 label];
          v12 = [WFStreetAddress streetAddressWithPostalAddress:v10 label:v11];

          if ([(WFCNContact *)self propertyID]== 5)
          {
            v13 = [(WFCNContact *)self multivalueIndex];
            v14 = v13 == [v5 indexOfObject:v9];
          }

          else
          {
            v14 = 0;
          }

          CNLabeledValueClass = getCNLabeledValueClass();
          v16 = [v9 label];
          v17 = [CNLabeledValueClass localizedStringForLabel:v16];
          v18 = [MEMORY[0x277CBEAF8] currentLocale];
          v19 = [v17 capitalizedStringWithLocale:v18];

          if (v14)
          {
            v20 = [(WFCNContact *)self formattedName];
          }

          else
          {
            v20 = v19;
          }

          v21 = v20;
          v22 = [WFContactLabeledValue labeledValueWithLabel:v20 value:v12];
          v23 = v22;
          if (v14)
          {
            v35 = v22;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          }

          else
          {
            [v28 addObject:v22];
          }

          if (v14)
          {
            v5 = v30;

            v25 = v27;
            v24 = v28;
            goto LABEL_22;
          }

          v5 = v30;
        }

        v7 = [v30 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v24 = v28;
    v25 = v28;
LABEL_22:
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  return v25;
}

- (id)emailAddresses
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:4])
  {
    v30 = objc_opt_new();
    v3 = [(WFCNContact *)self contact];
    v4 = [v3 emailAddresses];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = v4;
    v32 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v32)
    {
      v31 = *v34;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(v5);
          }

          v7 = *(*(&v33 + 1) + 8 * i);
          v8 = [v7 value];
          v9 = [v8 length];

          if (v9)
          {
            v10 = [v7 value];
            v11 = [v7 label];
            v12 = [WFEmailAddress addressWithEmailAddress:v10 label:v11];

            if ([(WFCNContact *)self propertyID]== 4)
            {
              v13 = [(WFCNContact *)self multivalueIndex];
              v14 = v13 == [v5 indexOfObject:v7];
            }

            else
            {
              v14 = 0;
            }

            v15 = v5;
            v16 = [v7 label];
            if ([v16 length])
            {
              CNLabeledValueClass = getCNLabeledValueClass();
              v18 = [v7 label];
              v19 = [CNLabeledValueClass localizedStringForLabel:v18];
              v20 = [MEMORY[0x277CBEAF8] currentLocale];
              v21 = [v19 capitalizedStringWithLocale:v20];
            }

            else
            {
              v21 = 0;
            }

            if (v14)
            {
              v22 = [(WFCNContact *)self formattedName];
            }

            else
            {
              v22 = v21;
            }

            v23 = v22;
            v5 = v15;
            v24 = [WFContactLabeledValue labeledValueWithLabel:v22 value:v12];
            v25 = v24;
            if (v14)
            {
              v37 = v24;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
            }

            else
            {
              [v30 addObject:v24];
            }

            if (v14)
            {

              v27 = v29;
              v26 = v30;
              goto LABEL_26;
            }
          }
        }

        v32 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v26 = v30;
    v27 = v30;
LABEL_26:
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  return v27;
}

- (id)phoneNumbers
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(WFCNContact *)self isPropertyIDRepresented:3])
  {
    v28 = objc_opt_new();
    v3 = [(WFCNContact *)self contact];
    v4 = [v3 phoneNumbers];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      obj = v5;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 value];
          v12 = [v11 stringValue];
          v13 = [(WFCNContact *)self formattedName];
          v14 = [v10 label];
          v15 = [WFPhoneNumber phoneNumberWithPhoneNumberString:v12 contactName:v13 label:v14];

          if (v15)
          {
            if (-[WFCNContact propertyID](self, "propertyID") == 3 && (v16 = -[WFCNContact multivalueIndex](self, "multivalueIndex"), v16 == [obj indexOfObject:v10]))
            {
              v17 = [(WFCNContact *)self formattedName];
              v18 = 1;
            }

            else
            {
              CNLabeledValueClass = getCNLabeledValueClass();
              v20 = [v10 label];
              v21 = [CNLabeledValueClass localizedStringForLabel:v20];
              v22 = [MEMORY[0x277CBEAF8] currentLocale];
              v17 = [v21 capitalizedStringWithLocale:v22];

              v18 = 0;
            }

            v23 = [WFContactLabeledValue labeledValueWithLabel:v17 value:v15];
            v24 = v23;
            if (v18)
            {
              v34 = v23;
              v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];

              v5 = obj;
              v25 = v28;
              goto LABEL_19;
            }

            [v28 addObject:v23];
          }
        }

        v5 = obj;
        v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v25 = v28;
    v26 = v28;
LABEL_19:
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  return v26;
}

- (id)dates
{
  if ([(WFCNContact *)self isPropertyIDRepresented:12])
  {
    v3 = [(WFCNContact *)self contact];
    v4 = [v3 dates];
    v5 = [v4 if_map:&__block_literal_global_142_11689];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

id __20__WFCNContact_dates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA80];
  v3 = a2;
  v4 = [v2 currentCalendar];
  v5 = [v3 value];
  v6 = [v4 wf_dateFromComponentsInCurrentTimeZone:v5];

  CNLabeledValueClass = getCNLabeledValueClass();
  v8 = [v3 label];

  v9 = [CNLabeledValueClass localizedStringForLabel:v8];
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [v9 capitalizedStringWithLocale:v10];

  v12 = [WFContactLabeledValue labeledValueWithLabel:v11 value:v6];

  return v12;
}

- (id)birthday
{
  if ([(WFCNContact *)self isPropertyIDRepresented:17])
  {
    v3 = [(WFCNContact *)self contact];
    v4 = [v3 birthday];

    if (v4)
    {
      v5 = [MEMORY[0x277CBEA80] currentCalendar];
      v6 = [v5 wf_dateFromComponentsInCurrentTimeZone:v4];

      if (v6)
      {
        CNContactClass = getCNContactClass();
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v8 = getCNContactBirthdayKeySymbolLoc_ptr_11692;
        v18 = getCNContactBirthdayKeySymbolLoc_ptr_11692;
        if (!getCNContactBirthdayKeySymbolLoc_ptr_11692)
        {
          v9 = ContactsLibrary_11559();
          v16[3] = dlsym(v9, "CNContactBirthdayKey");
          getCNContactBirthdayKeySymbolLoc_ptr_11692 = v16[3];
          v8 = v16[3];
        }

        _Block_object_dispose(&v15, 8);
        if (!v8)
        {
          v13 = [MEMORY[0x277CCA890] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactBirthdayKey(void)"];
          [v13 handleFailureInFunction:v14 file:@"WFCNContact.m" lineNumber:40 description:{@"%s", dlerror()}];

          __break(1u);
          return result;
        }

        v10 = [CNContactClass localizedStringForKey:*v8];
        v11 = [WFContactLabeledValue labeledValueWithLabel:v10 value:v6];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)thumbnailImageData
{
  v3 = [(WFCNContact *)self contact];
  v4 = [v3 thumbnailImageData];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(WFCNContact *)self imageData];
  }

  v7 = v6;

  return v7;
}

- (id)imageData
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 imageData];

  return v3;
}

- (BOOL)hasImageData
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 imageDataAvailable];

  return v3;
}

- (BOOL)hasValueForPropertyID:(int)a3
{
  v3 = *&a3;
  if (![(WFCNContact *)self isPropertyIDRepresented:?])
  {
    return 0;
  }

  v5 = [(WFCNContact *)self valueForPropertyID:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 count] == 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  v7 = !v6;

  return v7;
}

- (BOOL)isPropertyIDRepresented:(int)a3
{
  if ([(WFCNContact *)self propertyID]== -1)
  {
    return 1;
  }

  if ([(WFCNContact *)self propertyID]== a3)
  {
    return [(WFCNContact *)self multivalueIndex]!= -1;
  }

  return 0;
}

- (id)organization
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 organizationName];

  return v3;
}

- (id)nickname
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 nickname];

  return v3;
}

- (id)nameSuffix
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 nameSuffix];

  return v3;
}

- (id)lastName
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 familyName];

  return v3;
}

- (id)middleName
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 middleName];

  return v3;
}

- (id)firstName
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 givenName];

  return v3;
}

- (id)namePrefix
{
  v2 = [(WFCNContact *)self contact];
  v3 = [v2 namePrefix];

  return v3;
}

- (id)formattedName
{
  v38[3] = *MEMORY[0x277D85DE8];
  v3 = [getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
  v4 = getCNContactEmailAddressesKey();
  v5 = getCNContactPhoneNumbersKey();
  v38[0] = v3;
  v38[1] = v4;
  v38[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  if ([(CNContact *)self->_contact areKeysAvailable:v6])
  {
    goto LABEL_5;
  }

  v7 = getWFWFContactLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    contact = self->_contact;
    *buf = 136315650;
    v33 = "[WFCNContact formattedName]";
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = contact;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEFAULT, "%s Required keys %@ are not available for contact %@, re-fetching", buf, 0x20u);
  }

  [(WFCNContact *)self refetchContact];
  v9 = self->_contact;
  v31 = v3;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  LOBYTE(v9) = [(CNContact *)v9 areKeysAvailable:v10];

  if (v9)
  {
LABEL_5:
    CNContactFormatterClass = getCNContactFormatterClass();
    v12 = [(WFCNContact *)self contact];
    v13 = [CNContactFormatterClass stringFromContact:v12 style:0];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = WFLocalizedString(@"No Name");
    }

    v15 = v14;
    goto LABEL_9;
  }

  v17 = getWFWFContactLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "[WFCNContact formattedName]";
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_21E1BD000, v17, OS_LOG_TYPE_ERROR, "%s Required key %@ still not available, falling back to other contact properties", buf, 0x16u);
  }

  v18 = self->_contact;
  v30 = v4;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  LODWORD(v18) = [(CNContact *)v18 areKeysAvailable:v19];

  if (v18)
  {
    v20 = [(WFCNContact *)self contact];
    v13 = [v20 emailAddresses];

    if ([v13 count])
    {
      v21 = [v13 firstObject];
      v15 = [v21 value];

LABEL_9:
      goto LABEL_10;
    }
  }

  v22 = self->_contact;
  v29 = v5;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  LODWORD(v22) = [(CNContact *)v22 areKeysAvailable:v23];

  if (v22)
  {
    v24 = [(WFCNContact *)self contact];
    v13 = [v24 phoneNumbers];

    if ([v13 count])
    {
      v25 = [v13 firstObject];
      v26 = [v25 value];
      v27 = [v26 stringValue];
      v28 = [WFPhoneNumber phoneNumberWithPhoneNumberString:v27];

      v15 = [v28 formattedPhoneNumber];

      goto LABEL_9;
    }
  }

  v15 = WFLocalizedString(@"No Name");
LABEL_10:

  return v15;
}

- (NSString)contactIdentifier
{
  if ([(WFCNContact *)self fromVCard])
  {
    v3 = self->_contactIdentifier;
  }

  else
  {
    v4 = [(WFCNContact *)self contact];
    v3 = [v4 identifier];
  }

  return v3;
}

- (id)vCardRepresentationWithFullData:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v5 = [getCNContactVCardSerializationClass() descriptorForRequiredKeys];
  v33 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];

  if (WFCNContactAuthorizationStatus() == 3 && ![(CNContact *)self->_contact areKeysAvailable:v6])
  {
    contact = self->_contact;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v8 = getCNContactIdentifierKeySymbolLoc_ptr;
    v31 = getCNContactIdentifierKeySymbolLoc_ptr;
    if (!getCNContactIdentifierKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCNContactIdentifierKeySymbolLoc_block_invoke;
      v35 = &unk_27834A178;
      v36 = &v28;
      v9 = ContactsLibrary_11559();
      v10 = dlsym(v9, "CNContactIdentifierKey");
      *(v36[1] + 24) = v10;
      getCNContactIdentifierKeySymbolLoc_ptr = *(v36[1] + 24);
      v8 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (!v8)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactIdentifierKey(void)"];
      [v26 handleFailureInFunction:v27 file:@"WFCNContact.m" lineNumber:39 description:{@"%s", dlerror()}];

      __break(1u);
    }

    if ([(CNContact *)contact isKeyAvailable:*v8])
    {
      v11 = getWFWFContactLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_contact;
        *buf = 136315394;
        *&buf[4] = "[WFCNContact vCardRepresentationWithFullData:]";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_DEFAULT, "%s Insufficient information available for serializing %@, re-fetching", buf, 0x16u);
      }

      [(WFCNContact *)self refetchContact];
    }
  }

  v13 = self->_contact;
  if (![(CNContact *)v13 areKeysAvailable:v6])
  {
    v14 = getWFWFContactLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[WFCNContact vCardRepresentationWithFullData:]";
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_DEFAULT, "%s Keys required for serialization still not available, a new copy generated", buf, 0xCu);
    }

    v15 = [(CNContact *)self->_contact copyWithDistinctIdentifier];
    v13 = v15;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v16 = getCNVCardWritingOptionsClass_softClass;
  v31 = getCNVCardWritingOptionsClass_softClass;
  if (!getCNVCardWritingOptionsClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCNVCardWritingOptionsClass_block_invoke;
    v35 = &unk_27834A178;
    v36 = &v28;
    __getCNVCardWritingOptionsClass_block_invoke(buf);
    v16 = v29[3];
  }

  v17 = v16;
  _Block_object_dispose(&v28, 8);
  v18 = [v16 optionsFromPreferences];
  [v18 setShouldSuppressRegulatoryLogging:1];
  if (v3)
  {
    [v18 setIncludeNotes:1];
    [v18 setIncludePhotos:1];
    [v18 setIncludePrivateFields:1];
    [v18 setPrefersUncroppedPhotos:1];
  }

  CNContactVCardSerializationClass = getCNContactVCardSerializationClass();
  v32 = v13;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v21 = [CNContactVCardSerializationClass dataWithContacts:v20 options:v18 error:0];

  if (v21)
  {
    v22 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1EB8]];
    v23 = [(WFContact *)self wfName];
    v24 = [WFFileRepresentation fileWithData:v21 ofType:v22 proposedFilename:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)contactIdentifierForINPerson
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFCNContact *)self contactIdentifier];
  getCNContactStoreClass();
  v4 = objc_opt_new();
  if (v3)
  {
    CNContactClass = getCNContactClass();
    v39[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v7 = [CNContactClass predicateForContactsWithIdentifiers:v6];

    v8 = [v4 unifiedContactsMatchingPredicate:v7 keysToFetch:MEMORY[0x277CBEBF8] error:0];
    v9 = [v8 count] == 0;

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = objc_opt_new();
  v11 = [(WFCNContact *)self emailAddresses];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__WFCNContact_contactIdentifierForINPerson__block_invoke;
  v31[3] = &unk_278347208;
  v12 = v10;
  v32 = v12;
  [v11 enumerateObjectsUsingBlock:v31];

  v13 = [(WFCNContact *)self phoneNumbers];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__WFCNContact_contactIdentifierForINPerson__block_invoke_2;
  v29[3] = &unk_278347208;
  v7 = v12;
  v30 = v7;
  [v13 enumerateObjectsUsingBlock:v29];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__11717;
  v27 = __Block_byref_object_dispose__11718;
  v28 = 0;
  if ([v7 count])
  {
    v14 = [getCNContactClass() predicateForContactsMatchingHandleStrings:v7];
    v15 = objc_alloc(getCNContactFetchRequestClass());
    v16 = [objc_opt_class() requiredKeysToFetch];
    v17 = [v15 initWithKeysToFetch:v16];

    [v17 setPredicate:v14];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__WFCNContact_contactIdentifierForINPerson__block_invoke_128;
    v21[3] = &unk_278347230;
    v21[5] = &v23;
    v22 = 0;
    v21[4] = self;
    LOBYTE(v16) = [v4 enumerateContactsWithFetchRequest:v17 error:&v22 usingBlock:v21];
    v18 = v22;
    if ((v16 & 1) == 0)
    {
      v19 = getWFWFContactLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v34 = "[WFCNContact contactIdentifierForINPerson]";
        v35 = 2112;
        v36 = v7;
        v37 = 2114;
        v38 = v18;
        _os_log_impl(&dword_21E1BD000, v19, OS_LOG_TYPE_ERROR, "%s Failed to enumerate contacts when fetching contact identifier for handleStrings %@: %{public}@", buf, 0x20u);
      }
    }
  }

  v3 = v24[5];
  _Block_object_dispose(&v23, 8);

LABEL_11:

  return v3;
}

void __43__WFCNContact_contactIdentifierForINPerson__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 address];
  [v2 addObject:v3];
}

void __43__WFCNContact_contactIdentifierForINPerson__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 normalizedPhoneNumber];
  [v2 addObject:v3];
}

void __43__WFCNContact_contactIdentifierForINPerson__block_invoke_128(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 identifier];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) contact];
  v10 = [v9 isEqualIgnoringIdentifiers:v5];

  if (v10)
  {
    *a3 = 1;
  }
}

- (WFCNContact)contactWithPropertyID:(int)a3 multivalueIndex:(int64_t)a4
{
  v5 = *&a3;
  v7 = objc_opt_class();
  v8 = [(WFCNContact *)self contact];
  v9 = [v7 contactWithCNContact:v8 propertyID:v5 multivalueIndex:a4];

  return v9;
}

- (id)valueForPropertyID:(int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = CNContactPropertyKeyFromWFContactPropertyID(a3);
  if (v4)
  {
    if ([(CNContact *)self->_contact isKeyAvailable:v4])
    {
      goto LABEL_6;
    }

    v5 = getWFWFContactLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      contact = self->_contact;
      v10 = 136315650;
      v11 = "[WFCNContact valueForPropertyID:]";
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = contact;
      _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEFAULT, "%s Required key %@ is not available for contact %@, re-fetching", &v10, 0x20u);
    }

    [(WFCNContact *)self refetchContact];
    if ([(CNContact *)self->_contact isKeyAvailable:v4])
    {
LABEL_6:
      v7 = [(CNContact *)self->_contact valueForKey:v4];
      goto LABEL_11;
    }

    v8 = getWFWFContactLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFCNContact valueForPropertyID:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s Required key %@ still not available, bailing", &v10, 0x16u);
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)refetchContact
{
  v15 = *MEMORY[0x277D85DE8];
  if (WFCNContactAuthorizationStatus() == 3)
  {
    getCNContactStoreClass();
    v3 = objc_opt_new();
    v4 = [(CNContact *)self->_contact identifier];
    v5 = [objc_opt_class() requiredKeysToFetch];
    v10 = 0;
    v6 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:v5 error:&v10];
    v7 = v10;

    if (v6)
    {
      v8 = v6;
      p_super = &self->_contact->super;
      self->_contact = v8;
    }

    else
    {
      p_super = getWFWFContactLogObject();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[WFCNContact refetchContact]";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_21E1BD000, p_super, OS_LOG_TYPE_ERROR, "%s Failed to re-fetch contact with error %@", buf, 0x16u);
      }
    }
  }
}

- (WFCNContact)initWithCNContact:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5 fromVCard:(BOOL)a6
{
  v11 = a3;
  if (!v11)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFCNContact.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v18.receiver = self;
  v18.super_class = WFCNContact;
  v12 = [(WFCNContact *)&v18 init];
  if (v12)
  {
    v13 = [v11 copy];
    contact = v12->_contact;
    v12->_contact = v13;

    v12->_propertyID = a4;
    v12->_multivalueIndex = a5;
    v12->_fromVCard = a6;
    v15 = v12;
  }

  return v12;
}

+ (void)removeContactsChangeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&WFChangeObserversLock);
    v5 = [a1 lock_changeObservers];
    [v5 removeObjectForKey:v4];

    [a1 lock_updateContactStoreObservation];

    os_unfair_lock_unlock(&WFChangeObserversLock);
  }
}

+ (id)addContactsChangeObserver:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  os_unfair_lock_lock(&WFChangeObserversLock);
  v7 = [a1 lock_changeObservers];
  v8 = _Block_copy(v5);

  [v7 setObject:v8 forKey:v6];
  [a1 lock_updateContactStoreObservation];
  os_unfair_lock_unlock(&WFChangeObserversLock);

  return v6;
}

+ (void)contactStoreDidChange:(id)a3
{
  os_unfair_lock_lock(&WFChangeObserversLock);
  v4 = [a1 lock_changeObservers];
  v5 = [v4 copy];

  os_unfair_lock_unlock(&WFChangeObserversLock);
  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_163_11748];
}

+ (void)lock_updateContactStoreObservation
{
  v3 = [a1 lock_changeObservers];
  v4 = [v3 count];

  v5 = lock_updateContactStoreObservation_observingChanges;
  if (v4)
  {
    v6 = lock_updateContactStoreObservation_observingChanges;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = getCNContactStoreDidChangeNotification();
    [v7 addObserver:a1 selector:sel_contactStoreDidChange_ name:v8 object:0];
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = getCNContactStoreDidChangeNotification();
    [v7 removeObserver:a1 name:v8 object:0];
LABEL_10:

    lock_updateContactStoreObservation_observingChanges = v6 ^ 1;
  }
}

+ (id)lock_changeObservers
{
  if (lock_changeObservers_onceToken != -1)
  {
    dispatch_once(&lock_changeObservers_onceToken, &__block_literal_global_156);
  }

  v3 = lock_changeObservers_changeObservers;

  return v3;
}

uint64_t __35__WFCNContact_lock_changeObservers__block_invoke()
{
  lock_changeObservers_changeObservers = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (WFCNContact)contactWithCNContact:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = [[a1 alloc] initWithCNContact:v8 propertyID:v6 multivalueIndex:a5 fromVCard:0];

  return v9;
}

+ (WFCNContact)contactWithVCardData:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *&a4;
    v8 = a3;
    v16 = 0;
    v9 = [getCNContactVCardSerializationClass() contactsWithData:v8 error:&v16];

    v10 = v16;
    v11 = [v9 firstObject];

    if (v11)
    {
      v12 = [a1 alloc];
      v13 = [v9 firstObject];
      v14 = [v12 initWithCNContact:v13 propertyID:v6 multivalueIndex:a5 fromVCard:1];
    }

    else
    {
      v13 = getWFWFContactLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "+[WFCNContact contactWithVCardData:propertyID:multivalueIndex:]";
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Contact failed to deserialize from vCard data: %{public}@", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)contactsWithVCardData:(id)a3
{
  v4 = a3;
  v5 = [getCNContactVCardSerializationClass() contactsWithData:v4 error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__WFCNContact_contactsWithVCardData___block_invoke;
  v8[3] = &__block_descriptor_40_e22__24__0__CNContact_8Q16l;
  v8[4] = a1;
  v6 = [v5 if_map:v8];

  return v6;
}

id __37__WFCNContact_contactsWithVCardData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[v2 alloc] initWithCNContact:v3 propertyID:0xFFFFFFFFLL multivalueIndex:-1 fromVCard:1];

  return v4;
}

+ (id)requiredKeysToFetch
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = [getCNContactVCardSerializationClass() descriptorForRequiredKeys];
  v43[0] = v38;
  v2 = [getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
  v43[1] = v2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v3 = getCNContactImageDataAvailableKeySymbolLoc_ptr;
  v42 = getCNContactImageDataAvailableKeySymbolLoc_ptr;
  if (!getCNContactImageDataAvailableKeySymbolLoc_ptr)
  {
    v4 = ContactsLibrary_11559();
    v40[3] = dlsym(v4, "CNContactImageDataAvailableKey");
    getCNContactImageDataAvailableKeySymbolLoc_ptr = v40[3];
    v3 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v3)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactImageDataAvailableKey(void)"];
    [v26 handleFailureInFunction:v27 file:@"WFCNContact.m" lineNumber:34 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v5 = *v3;
  v43[2] = v5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v6 = getCNContactImageDataKeySymbolLoc_ptr;
  v42 = getCNContactImageDataKeySymbolLoc_ptr;
  if (!getCNContactImageDataKeySymbolLoc_ptr)
  {
    v7 = ContactsLibrary_11559();
    v40[3] = dlsym(v7, "CNContactImageDataKey");
    getCNContactImageDataKeySymbolLoc_ptr = v40[3];
    v6 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v6)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactImageDataKey(void)"];
    [v28 handleFailureInFunction:v29 file:@"WFCNContact.m" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v8 = *v6;
  v43[3] = v8;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v9 = getCNContactThumbnailImageDataKeySymbolLoc_ptr;
  v42 = getCNContactThumbnailImageDataKeySymbolLoc_ptr;
  if (!getCNContactThumbnailImageDataKeySymbolLoc_ptr)
  {
    v10 = ContactsLibrary_11559();
    v40[3] = dlsym(v10, "CNContactThumbnailImageDataKey");
    getCNContactThumbnailImageDataKeySymbolLoc_ptr = v40[3];
    v9 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v9)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactThumbnailImageDataKey(void)"];
    [v30 handleFailureInFunction:v31 file:@"WFCNContact.m" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v11 = *v9;
  v43[4] = v11;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v12 = getCNContactModificationDateKeySymbolLoc_ptr_11757;
  v42 = getCNContactModificationDateKeySymbolLoc_ptr_11757;
  if (!getCNContactModificationDateKeySymbolLoc_ptr_11757)
  {
    v13 = ContactsLibrary_11559();
    v40[3] = dlsym(v13, "CNContactModificationDateKey");
    getCNContactModificationDateKeySymbolLoc_ptr_11757 = v40[3];
    v12 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v12)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactModificationDateKey(void)"];
    [v32 handleFailureInFunction:v33 file:@"WFCNContact.m" lineNumber:37 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v14 = *v12;
  v43[5] = v14;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v15 = getCNContactCreationDateKeySymbolLoc_ptr_11760;
  v42 = getCNContactCreationDateKeySymbolLoc_ptr_11760;
  if (!getCNContactCreationDateKeySymbolLoc_ptr_11760)
  {
    v16 = ContactsLibrary_11559();
    v40[3] = dlsym(v16, "CNContactCreationDateKey");
    getCNContactCreationDateKeySymbolLoc_ptr_11760 = v40[3];
    v15 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v15)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactCreationDateKey(void)"];
    [v34 handleFailureInFunction:v35 file:@"WFCNContact.m" lineNumber:38 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v17 = *v15;
  v43[6] = v17;
  v18 = getCNContactPhoneNumbersKey();
  v43[7] = v18;
  v19 = getCNContactEmailAddressesKey();
  v43[8] = v19;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v20 = getCNContactNicknameKeySymbolLoc_ptr_11763;
  v42 = getCNContactNicknameKeySymbolLoc_ptr_11763;
  if (!getCNContactNicknameKeySymbolLoc_ptr_11763)
  {
    v21 = ContactsLibrary_11559();
    v40[3] = dlsym(v21, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr_11763 = v40[3];
    v20 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v20)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactNicknameKey(void)"];
    [v36 handleFailureInFunction:v37 file:@"WFCNContact.m" lineNumber:43 description:{@"%s", dlerror()}];

LABEL_28:
    __break(1u);
  }

  v44 = *v20;
  v22 = MEMORY[0x277CBEA60];
  v23 = v44;
  v24 = [v22 arrayWithObjects:v43 count:10];

  return v24;
}

@end