@interface NoteAccountObject
+ (BOOL)shouldDataAccessCreateAccountForACAccount:(id)a3;
- (BOOL)isICloudIMAPAccount;
- (BOOL)preventMovingNotesToOtherAccounts;
- (BOOL)shouldMarkNotesAsDeleted;
- (BOOL)validateDefaultStore:(id *)a3 error:(id *)a4;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSDictionary)constraints;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (id)collectionInfo;
- (id)predicateForNotes;
- (id)storeForExternalId:(id)a3;
- (id)titleForTableViewCell;
- (int64_t)accountType;
- (void)didTurnIntoFault;
- (void)setAccountType:(int64_t)a3;
- (void)setPathToConstraintsPlist:(id)a3;
- (void)willSave;
@end

@implementation NoteAccountObject

- (void)didTurnIntoFault
{
  [(NoteAccountObject *)self setConstraints:0];
  v3.receiver = self;
  v3.super_class = NoteAccountObject;
  [(NoteAccountObject *)&v3 didTurnIntoFault];
}

+ (BOOL)shouldDataAccessCreateAccountForACAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 parentAccount];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = [v7 isEnabledForDataclass:*MEMORY[0x277CB89F8]];
  if ([v7 aa_isNotesMigrated])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D360A0]];
    v9 = [v10 BOOLValue] ^ 1;
  }

  return v8 & v9;
}

- (id)predicateForNotes
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [(NoteAccountObject *)self stores];
  v4 = [v2 predicateWithFormat:@"(store IN %@)", v3];

  return v4;
}

- (id)collectionInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [v3 setValue:@"Account" forKey:@"NoteCollectionType"];
  v4 = [(NoteAccountObject *)self accountIdentifier];
  [v3 setValue:v4 forKey:@"NoteCollectionPrimaryIdentifier"];

  return v3;
}

- (void)willSave
{
  v9.receiver = self;
  v9.super_class = NoteAccountObject;
  [(NoteAccountObject *)&v9 willSave];
  if ([(NoteAccountObject *)self isInserted])
  {
    v3 = [MEMORY[0x277CB8F48] defaultStore];
    v4 = [(NoteAccountObject *)self accountIdentifier];
    v5 = [v3 accountWithIdentifier:v4];

    if (v5)
    {
      v6 = [v5 displayAccount];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D36098]];
      v8 = [v7 BOOLValue];

      if (v8 != [(NoteAccountObject *)self didChooseToMigrate])
      {
        [(NoteAccountObject *)self setDidChooseToMigrate:v8];
      }
    }
  }
}

- (id)storeForExternalId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = MEMORY[0x277CBE408];
  v7 = [(NoteAccountObject *)self managedObjectContext];
  v8 = [v6 entityForName:@"Store" inManagedObjectContext:v7];
  [v5 setEntity:v8];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(account == %@) AND (externalIdentifier == %@)", self, v4];
  [v5 setPredicate:v9];

  v10 = [(NoteAccountObject *)self managedObjectContext];
  v16 = 0;
  v11 = [v10 executeFetchRequest:v5 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = [v12 userInfo];
    NSLog(&cfstr_ErrorGettingSt.isa, v4, v12, v13);
  }

  v14 = [v11 lastObject];

  return v14;
}

- (void)setAccountType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NoteAccountObject *)self setType:v4];
}

- (int64_t)accountType
{
  v2 = [(NoteAccountObject *)self type];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)preventMovingNotesToOtherAccounts
{
  preventMovingNotesToOtherAccounts = self->_preventMovingNotesToOtherAccounts;
  if (!preventMovingNotesToOtherAccounts)
  {
    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v5 = [(NoteAccountObject *)self accountIdentifier];
    v6 = [v4 accountWithIdentifier:v5];

    v7 = [v6 displayAccount];
    v8 = [v7 objectForKeyedSubscript:@"MFRestrictMessageTransfersToOtherAccounts"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v6 displayAccount];
      v12 = [v11 objectForKeyedSubscript:@"MCAccountIsManaged"];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        Helper_x8__OBJC_CLASS___MCProfileConnection = gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(v14);
        v17 = [*(v16 + 672) sharedConnection];
        v10 = [v17 isOpenInRestrictionInEffect];
      }

      else
      {
        v10 = 0;
      }
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v19 = self->_preventMovingNotesToOtherAccounts;
    self->_preventMovingNotesToOtherAccounts = v18;

    preventMovingNotesToOtherAccounts = self->_preventMovingNotesToOtherAccounts;
  }

  return [(NSNumber *)preventMovingNotesToOtherAccounts BOOLValue];
}

- (void)setPathToConstraintsPlist:(id)a3
{
  v4 = a3;
  [(NoteAccountObject *)self setConstraints:0];
  [(NoteAccountObject *)self setConstraintsPath:v4];
}

- (NSDictionary)constraints
{
  if (!self->_constraints)
  {
    v3 = [(NoteAccountObject *)self constraintsPath];

    if (v3)
    {
      v4 = objc_alloc(MEMORY[0x277CBEAC0]);
      v5 = [(NoteAccountObject *)self constraintsPath];
      v6 = [v4 initWithContentsOfFile:v5];
      constraints = self->_constraints;
      self->_constraints = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v5 = self->_constraints;
      self->_constraints = v8;
    }
  }

  v9 = self->_constraints;

  return v9;
}

- (BOOL)shouldMarkNotesAsDeleted
{
  v2 = [(NoteAccountObject *)self constraints];
  v3 = [v2 objectForKey:0x286E2FB60];
  v4 = [v3 objectForKey:0x286E2FB80];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)validateDefaultStore:(id *)a3 error:(id *)a4
{
  if (!*a3)
  {
    return 1;
  }

  v6 = [(NoteAccountObject *)self stores];
  v7 = [v6 containsObject:*a3];

  if (a4 && (v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA050];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Tried to use default store not from within account's stores." forKey:@"reason"];
    *a4 = [v8 errorWithDomain:v9 code:1550 userInfo:v10];

    return 0;
  }

  return v7;
}

- (BOOL)isICloudIMAPAccount
{
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [(NoteAccountObject *)self accountIdentifier];
  v5 = [v3 accountWithIdentifier:v4];

  v6 = [v5 parentAccount];
  v7 = [v6 accountType];
  v8 = [v7 identifier];

  LOBYTE(v6) = [v8 isEqualToString:*MEMORY[0x277CB8BA0]];
  return v6;
}

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [v3 accountStore];

  v5 = [(NoteAccountObject *)self accountIdentifier];
  v6 = [v4 accountWithIdentifier:v5];

  v7 = [v6 parentAccount];
  v8 = v7;
  if (!v7)
  {
    v7 = v6;
  }

  v9 = [v7 identifier];

  return v9;
}

- (id)titleForTableViewCell
{
  v3 = MEMORY[0x277CCACA8];
  v4 = __ICLocalizedFrameworkString_impl(@"All %@", @"All %@", 0);
  v5 = [(NoteAccountObject *)self name];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(NoteAccountObject *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v2 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];

  return v2;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v3 = [(NoteAccountObject *)self userActivityContentAttributeSet];
  v4 = [(NoteAccountObject *)self name];
  [v3 setDisplayName:v4];

  v5 = [(NoteAccountObject *)self name];
  [v3 setTextContent:v5];

  [v3 setIc_searchResultType:3];
  if ([(NoteAccountObject *)self preventMovingNotesToOtherAccounts])
  {
    v6 = &unk_286E32A98;
  }

  else
  {
    v6 = &unk_286E32AB0;
  }

  [v3 setDataOwnerType:v6];
  [v3 ic_populateValuesForSpecializedFields];
  if (objc_opt_respondsToSelector())
  {
    [(NoteAccountObject *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  return v3;
}

@end