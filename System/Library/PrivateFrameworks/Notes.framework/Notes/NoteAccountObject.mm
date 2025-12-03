@interface NoteAccountObject
+ (BOOL)shouldDataAccessCreateAccountForACAccount:(id)account;
- (BOOL)isICloudIMAPAccount;
- (BOOL)preventMovingNotesToOtherAccounts;
- (BOOL)shouldMarkNotesAsDeleted;
- (BOOL)validateDefaultStore:(id *)store error:(id *)error;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSDictionary)constraints;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (id)collectionInfo;
- (id)predicateForNotes;
- (id)storeForExternalId:(id)id;
- (id)titleForTableViewCell;
- (int64_t)accountType;
- (void)didTurnIntoFault;
- (void)setAccountType:(int64_t)type;
- (void)setPathToConstraintsPlist:(id)plist;
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

+ (BOOL)shouldDataAccessCreateAccountForACAccount:(id)account
{
  accountCopy = account;
  parentAccount = [accountCopy parentAccount];
  v5 = parentAccount;
  if (parentAccount)
  {
    v6 = parentAccount;
  }

  else
  {
    v6 = accountCopy;
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
  stores = [(NoteAccountObject *)self stores];
  v4 = [v2 predicateWithFormat:@"(store IN %@)", stores];

  return v4;
}

- (id)collectionInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [v3 setValue:@"Account" forKey:@"NoteCollectionType"];
  accountIdentifier = [(NoteAccountObject *)self accountIdentifier];
  [v3 setValue:accountIdentifier forKey:@"NoteCollectionPrimaryIdentifier"];

  return v3;
}

- (void)willSave
{
  v9.receiver = self;
  v9.super_class = NoteAccountObject;
  [(NoteAccountObject *)&v9 willSave];
  if ([(NoteAccountObject *)self isInserted])
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountIdentifier = [(NoteAccountObject *)self accountIdentifier];
    v5 = [defaultStore accountWithIdentifier:accountIdentifier];

    if (v5)
    {
      displayAccount = [v5 displayAccount];
      v7 = [displayAccount objectForKeyedSubscript:*MEMORY[0x277D36098]];
      bOOLValue = [v7 BOOLValue];

      if (bOOLValue != [(NoteAccountObject *)self didChooseToMigrate])
      {
        [(NoteAccountObject *)self setDidChooseToMigrate:bOOLValue];
      }
    }
  }
}

- (id)storeForExternalId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteAccountObject *)self managedObjectContext];
  v8 = [v6 entityForName:@"Store" inManagedObjectContext:managedObjectContext];
  [v5 setEntity:v8];

  idCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(account == %@) AND (externalIdentifier == %@)", self, idCopy];
  [v5 setPredicate:idCopy];

  managedObjectContext2 = [(NoteAccountObject *)self managedObjectContext];
  v16 = 0;
  v11 = [managedObjectContext2 executeFetchRequest:v5 error:&v16];
  v12 = v16;

  if (v12)
  {
    userInfo = [v12 userInfo];
    NSLog(&cfstr_ErrorGettingSt.isa, idCopy, v12, userInfo);
  }

  lastObject = [v11 lastObject];

  return lastObject;
}

- (void)setAccountType:(int64_t)type
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NoteAccountObject *)self setType:v4];
}

- (int64_t)accountType
{
  type = [(NoteAccountObject *)self type];
  intValue = [type intValue];

  return intValue;
}

- (BOOL)preventMovingNotesToOtherAccounts
{
  preventMovingNotesToOtherAccounts = self->_preventMovingNotesToOtherAccounts;
  if (!preventMovingNotesToOtherAccounts)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountIdentifier = [(NoteAccountObject *)self accountIdentifier];
    v6 = [defaultStore accountWithIdentifier:accountIdentifier];

    displayAccount = [v6 displayAccount];
    v8 = [displayAccount objectForKeyedSubscript:@"MFRestrictMessageTransfersToOtherAccounts"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      isOpenInRestrictionInEffect = 1;
    }

    else
    {
      displayAccount2 = [v6 displayAccount];
      v12 = [displayAccount2 objectForKeyedSubscript:@"MCAccountIsManaged"];
      bOOLValue2 = [v12 BOOLValue];

      if (bOOLValue2)
      {
        Helper_x8__OBJC_CLASS___MCProfileConnection = gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(v14);
        sharedConnection = [*(v16 + 672) sharedConnection];
        isOpenInRestrictionInEffect = [sharedConnection isOpenInRestrictionInEffect];
      }

      else
      {
        isOpenInRestrictionInEffect = 0;
      }
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:isOpenInRestrictionInEffect];
    v19 = self->_preventMovingNotesToOtherAccounts;
    self->_preventMovingNotesToOtherAccounts = v18;

    preventMovingNotesToOtherAccounts = self->_preventMovingNotesToOtherAccounts;
  }

  return [(NSNumber *)preventMovingNotesToOtherAccounts BOOLValue];
}

- (void)setPathToConstraintsPlist:(id)plist
{
  plistCopy = plist;
  [(NoteAccountObject *)self setConstraints:0];
  [(NoteAccountObject *)self setConstraintsPath:plistCopy];
}

- (NSDictionary)constraints
{
  if (!self->_constraints)
  {
    constraintsPath = [(NoteAccountObject *)self constraintsPath];

    if (constraintsPath)
    {
      v4 = objc_alloc(MEMORY[0x277CBEAC0]);
      constraintsPath2 = [(NoteAccountObject *)self constraintsPath];
      v6 = [v4 initWithContentsOfFile:constraintsPath2];
      constraints = self->_constraints;
      self->_constraints = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      constraintsPath2 = self->_constraints;
      self->_constraints = v8;
    }
  }

  v9 = self->_constraints;

  return v9;
}

- (BOOL)shouldMarkNotesAsDeleted
{
  constraints = [(NoteAccountObject *)self constraints];
  v3 = [constraints objectForKey:0x286E2FB60];
  v4 = [v3 objectForKey:0x286E2FB80];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)validateDefaultStore:(id *)store error:(id *)error
{
  if (!*store)
  {
    return 1;
  }

  stores = [(NoteAccountObject *)self stores];
  v7 = [stores containsObject:*store];

  if (error && (v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA050];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Tried to use default store not from within account's stores." forKey:@"reason"];
    *error = [v8 errorWithDomain:v9 code:1550 userInfo:v10];

    return 0;
  }

  return v7;
}

- (BOOL)isICloudIMAPAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  accountIdentifier = [(NoteAccountObject *)self accountIdentifier];
  v5 = [defaultStore accountWithIdentifier:accountIdentifier];

  parentAccount = [v5 parentAccount];
  accountType = [parentAccount accountType];
  identifier = [accountType identifier];

  LOBYTE(parentAccount) = [identifier isEqualToString:*MEMORY[0x277CB8BA0]];
  return parentAccount;
}

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  accountStore = [v3 accountStore];

  accountIdentifier = [(NoteAccountObject *)self accountIdentifier];
  v6 = [accountStore accountWithIdentifier:accountIdentifier];

  parentAccount = [v6 parentAccount];
  v8 = parentAccount;
  if (!parentAccount)
  {
    parentAccount = v6;
  }

  identifier = [parentAccount identifier];

  return identifier;
}

- (id)titleForTableViewCell
{
  v3 = MEMORY[0x277CCACA8];
  v4 = __ICLocalizedFrameworkString_impl(@"All %@", @"All %@", 0);
  name = [(NoteAccountObject *)self name];
  v6 = [v3 localizedStringWithFormat:v4, name];

  return v6;
}

- (NSString)searchIndexingIdentifier
{
  objectID = [(NoteAccountObject *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v2 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];

  return v2;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  userActivityContentAttributeSet = [(NoteAccountObject *)self userActivityContentAttributeSet];
  name = [(NoteAccountObject *)self name];
  [userActivityContentAttributeSet setDisplayName:name];

  name2 = [(NoteAccountObject *)self name];
  [userActivityContentAttributeSet setTextContent:name2];

  [userActivityContentAttributeSet setIc_searchResultType:3];
  if ([(NoteAccountObject *)self preventMovingNotesToOtherAccounts])
  {
    v6 = &unk_286E32A98;
  }

  else
  {
    v6 = &unk_286E32AB0;
  }

  [userActivityContentAttributeSet setDataOwnerType:v6];
  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  if (objc_opt_respondsToSelector())
  {
    [(NoteAccountObject *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  return userActivityContentAttributeSet;
}

@end