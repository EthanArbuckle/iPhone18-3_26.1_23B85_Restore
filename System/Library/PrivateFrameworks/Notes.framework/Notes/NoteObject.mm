@interface NoteObject
- (BOOL)belongsToCollection:(id)collection;
- (BOOL)containsAttachments;
- (BOOL)hasValidServerIntId;
- (BOOL)isBeingMarkedForDeletion;
- (BOOL)isHiddenFromIndexing;
- (BOOL)isMarkedForDeletion;
- (BOOL)isPlainText;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSAttributedString)attributedContentInfoText;
- (NSData)externalRepresentation;
- (NSString)accountName;
- (NSString)content;
- (NSString)contentAsPlainText;
- (NSString)contentAsPlainTextPreservingNewlines;
- (NSString)contentInfoText;
- (NSString)externalContentRef;
- (NSString)folderManagedIdentifier;
- (NSString)folderName;
- (NSString)noteAsPlainTextWithoutTitle;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (NSString)trimmedTitle;
- (NSString)widgetInfoText;
- (NSURL)noteId;
- (id)dataForTypeIdentifier:(id)identifier;
- (int64_t)serverIntId;
- (unint64_t)flags;
- (unint64_t)sequenceNumber;
- (void)markForDeletion;
- (void)setContent:(id)content;
- (void)setExternalContentRef:(id)ref;
- (void)setExternalRepresentation:(id)representation;
- (void)setFlags:(unint64_t)flags;
- (void)setSequenceNumber:(unint64_t)number;
- (void)setServerIntId:(int64_t)id;
- (void)setTitle:(id)title;
@end

@implementation NoteObject

- (void)setContent:(id)content
{
  contentCopy = content;
  body = [(NoteObject *)self body];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [body setContent:contentCopy];
  }

  else
  {
    NSLog(&cfstr_TheBodyObjectI.isa, self, body);
  }
}

- (void)setTitle:(id)title
{
  v17[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  title = [(NoteObject *)self title];
  v6 = [title isEqualToString:titleCopy];

  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277D36268];
    v8 = ICCheckedProtocolCast();
    v9 = [v7 userActivityPersistentIdentifierForNote:v8];

    if (v9)
    {
      v10 = MEMORY[0x277CC1EF0];
      v17[0] = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [v10 deleteSavedUserActivitiesWithPersistentIdentifiers:v11 completionHandler:&__block_literal_global_2];
    }
  }

  if (!titleCopy || ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(titleCopy, "stringByTrimmingCharactersInSet:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12, !v14))
  {
    defaultTitleForEmptyNote = [(NoteObject *)self defaultTitleForEmptyNote];

    titleCopy = defaultTitleForEmptyNote;
  }

  [(NoteObject *)self willChangeValueForKey:@"title"];
  [(NoteObject *)self setPrimitiveValue:titleCopy forKey:@"title"];
  [(NoteObject *)self didChangeValueForKey:@"title"];

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)content
{
  body = [(NoteObject *)self body];
  content = [body content];

  return content;
}

- (NSString)contentAsPlainText
{
  body = [(NoteObject *)self body];
  contentAsPlainText = [body contentAsPlainText];

  return contentAsPlainText;
}

- (NSString)contentAsPlainTextPreservingNewlines
{
  isPlainText = [(NoteObject *)self isPlainText];
  body = [(NoteObject *)self body];
  v5 = body;
  if (isPlainText)
  {
    [body content];
  }

  else
  {
    [body contentAsPlainTextPreservingNewlines];
  }
  v6 = ;

  return v6;
}

- (BOOL)isPlainText
{
  contentType = [(NoteObject *)self contentType];
  v3 = [contentType intValue] == 1;

  return v3;
}

- (void)markForDeletion
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [(NoteObject *)self setDeletedFlag:v3];
}

- (BOOL)isMarkedForDeletion
{
  deletedFlag = [(NoteObject *)self deletedFlag];
  bOOLValue = [deletedFlag BOOLValue];

  return bOOLValue;
}

- (BOOL)isBeingMarkedForDeletion
{
  if ([(NoteObject *)self isMarkedForDeletion])
  {
    v3 = [(NoteObject *)self committedValuesForKeys:&unk_286E32A80];
    v4 = [v3 objectForKeyedSubscript:@"deletedFlag"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSURL)noteId
{
  objectID = [(NoteObject *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];

  return uRIRepresentation;
}

- (void)setFlags:(unint64_t)flags
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:flags];
  [(NoteObject *)self setExternalFlags:v4];
}

- (unint64_t)flags
{
  externalFlags = [(NoteObject *)self externalFlags];
  unsignedLongLongValue = [externalFlags unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setServerIntId:(int64_t)id
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:id];
  [(NoteObject *)self setExternalServerIntId:v4];
}

- (int64_t)serverIntId
{
  externalServerIntId = [(NoteObject *)self externalServerIntId];
  longLongValue = [externalServerIntId longLongValue];

  return longLongValue;
}

- (BOOL)hasValidServerIntId
{
  externalServerIntId = [(NoteObject *)self externalServerIntId];
  longLongValue = [externalServerIntId longLongValue];

  return (longLongValue + 0xFFFFFFFFLL) < 0x1FFFFFFFFLL;
}

- (NSData)externalRepresentation
{
  body = [(NoteObject *)self body];
  externalRepresentation = [body externalRepresentation];

  return externalRepresentation;
}

- (void)setExternalRepresentation:(id)representation
{
  representationCopy = representation;
  body = [(NoteObject *)self body];
  [body setExternalRepresentation:representationCopy];
}

- (NSString)externalContentRef
{
  body = [(NoteObject *)self body];
  externalContentRef = [body externalContentRef];

  return externalContentRef;
}

- (void)setExternalContentRef:(id)ref
{
  refCopy = ref;
  body = [(NoteObject *)self body];
  [body setExternalContentRef:refCopy];
}

- (BOOL)containsAttachments
{
  attachments = [(NoteObject *)self attachments];
  v3 = [attachments count] != 0;

  return v3;
}

- (void)setSequenceNumber:(unint64_t)number
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:number];
  [(NoteObject *)self setExternalSequenceNumber:v4];
}

- (unint64_t)sequenceNumber
{
  externalSequenceNumber = [(NoteObject *)self externalSequenceNumber];
  unsignedLongLongValue = [externalSequenceNumber unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)belongsToCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[NoteObject store](self, "store"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:collectionCopy], v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      store = [(NoteObject *)self store];
      account = [store account];
      v7 = [account isEqual:collectionCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)trimmedTitle
{
  title = [(NoteObject *)self title];
  v3 = title;
  v4 = &stru_286E2F780;
  if (title)
  {
    v4 = title;
  }

  ic_whitespaceAndNewlineCoalescedString = v4;

  if ([(__CFString *)ic_whitespaceAndNewlineCoalescedString length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [(__CFString *)ic_whitespaceAndNewlineCoalescedString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    ic_whitespaceAndNewlineCoalescedString = [v7 ic_whitespaceAndNewlineCoalescedString];
  }

  return ic_whitespaceAndNewlineCoalescedString;
}

- (NSString)folderName
{
  store = [(NoteObject *)self store];
  store2 = [(NoteObject *)self store];
  account = [store2 account];
  defaultStore = [account defaultStore];

  if (store == defaultStore)
  {
    name = __ICLocalizedFrameworkString_impl(@"Notes", @"Notes", 0);
  }

  else
  {
    store3 = [(NoteObject *)self store];
    name = [store3 name];
  }

  return name;
}

- (NSString)folderManagedIdentifier
{
  store = [(NoteObject *)self store];
  externalIdentifier = [store externalIdentifier];

  return externalIdentifier;
}

- (NSString)accountName
{
  store = [(NoteObject *)self store];
  account = [store account];
  name = [account name];

  return name;
}

- (BOOL)isHiddenFromIndexing
{
  store = [(NoteObject *)self store];
  account = [store account];

  if (!account)
  {
    return 1;
  }

  if (([(NoteObject *)self isDeleted]& 1) != 0)
  {
    return 1;
  }

  if ([(NoteObject *)self isMarkedForDeletion])
  {
    return 1;
  }

  store2 = [(NoteObject *)self store];
  account2 = [store2 account];
  didChooseToMigrate = [account2 didChooseToMigrate];

  if (didChooseToMigrate)
  {
    return 1;
  }

  v9 = MEMORY[0x277D361A0];
  store3 = [(NoteObject *)self store];
  account3 = [store3 account];
  accountIdentifier = [account3 accountIdentifier];
  LOBYTE(v9) = [v9 isAccountReindexedForMigration:accountIdentifier];

  return v9;
}

- (NSString)noteAsPlainTextWithoutTitle
{
  v3 = MEMORY[0x277D36228];
  title = [(NoteObject *)self title];
  contentAsPlainTextPreservingNewlines = [(NoteObject *)self contentAsPlainTextPreservingNewlines];
  v6 = [v3 stringByRemovingTitle:title fromString:contentAsPlainTextPreservingNewlines];

  return v6;
}

- (NSString)contentInfoText
{
  v3 = MEMORY[0x277D36228];
  noteAsPlainTextWithoutTitle = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  v5 = [v3 snippetForContent:noteAsPlainTextWithoutTitle];

  if (![v5 length])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = __ICLocalizedFrameworkString_impl(@"NOTE_LIST_ATTACHMENTS_%lu", @"NOTE_LIST_ATTACHMENTS_%lu", 0);
    attachments = [(NoteObject *)self attachments];
    v9 = [v6 localizedStringWithFormat:v7, objc_msgSend(attachments, "count")];

    v5 = v9;
  }

  return v5;
}

- (NSAttributedString)attributedContentInfoText
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  contentInfoText = [(NoteObject *)self contentInfoText];
  v5 = [v3 initWithString:contentInfoText];

  return v5;
}

- (NSString)widgetInfoText
{
  v3 = MEMORY[0x277D36228];
  noteAsPlainTextWithoutTitle = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  v5 = [v3 widgetSnippetForContent:noteAsPlainTextWithoutTitle];

  if (![v5 length])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = __ICLocalizedFrameworkString_impl(@"NOTE_LIST_ATTACHMENTS_%lu", @"NOTE_LIST_ATTACHMENTS_%lu", 0);
    attachments = [(NoteObject *)self attachments];
    v9 = [v6 localizedStringWithFormat:v7, objc_msgSend(attachments, "count")];

    v5 = v9;
  }

  return v5;
}

- (NSString)searchIndexingIdentifier
{
  objectID = [(NoteObject *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  accountStore = [v3 accountStore];

  store = [(NoteObject *)self store];
  account = [store account];
  accountIdentifier = [account accountIdentifier];
  v8 = [accountStore accountWithIdentifier:accountIdentifier];

  parentAccount = [v8 parentAccount];
  v10 = parentAccount;
  if (!parentAccount)
  {
    parentAccount = v8;
  }

  identifier = [parentAccount identifier];

  return identifier;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  creationDate = [(NoteObject *)self creationDate];
  [v3 setContentCreationDate:creationDate];

  modificationDate = [(NoteObject *)self modificationDate];
  [v3 setContentModificationDate:modificationDate];

  title = [(NoteObject *)self title];
  [v3 setDisplayName:title];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v17[3] = *MEMORY[0x277D85DE8];
  userActivityContentAttributeSet = [(NoteObject *)self userActivityContentAttributeSet];
  v4 = MEMORY[0x277D36228];
  noteAsPlainTextWithoutTitle = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  v6 = [v4 snippetForContent:noteAsPlainTextWithoutTitle];
  [userActivityContentAttributeSet setContentDescription:v6];

  noteAsPlainTextWithoutTitle2 = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  [userActivityContentAttributeSet setTextContent:noteAsPlainTextWithoutTitle2];

  [userActivityContentAttributeSet setIc_searchResultType:0];
  store = [(NoteObject *)self store];
  account = [store account];
  if ([account preventMovingNotesToOtherAccounts])
  {
    v10 = &unk_286E32B58;
  }

  else
  {
    v10 = &unk_286E32B70;
  }

  [userActivityContentAttributeSet setDataOwnerType:v10];

  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  if (objc_opt_respondsToSelector())
  {
    searchableItemViewAttributeSet = [(NoteObject *)self searchableItemViewAttributeSet];
    [userActivityContentAttributeSet addAttributesFromAttributeSet:searchableItemViewAttributeSet];
  }

  if (objc_opt_respondsToSelector())
  {
    [(NoteObject *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  identifier = [*MEMORY[0x277CE1EB0] identifier];
  identifier2 = [*MEMORY[0x277CE1DA0] identifier];
  v17[1] = identifier2;
  v17[2] = @"com.apple.notes.htmlnoteitemprovider";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [userActivityContentAttributeSet setProviderDataTypes:v14];

  v15 = *MEMORY[0x277D85DE8];

  return userActivityContentAttributeSet;
}

- (id)dataForTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  managedObjectContext = [(NoteObject *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NoteObject_SearchIndexableNote__dataForTypeIdentifier___block_invoke;
  v9[3] = &unk_2799AC9F0;
  v6 = identifierCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __57__NoteObject_SearchIndexableNote__dataForTypeIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*MEMORY[0x277CE1EB0] identifier];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v4 = [*(a1 + 40) contentAsPlainText];
LABEL_5:
    v13 = v4;
    v7 = [v4 dataUsingEncoding:4];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    return;
  }

  v5 = *(a1 + 32);
  v6 = [*MEMORY[0x277CE1DA0] identifier];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    v4 = [*(a1 + 40) content];
    goto LABEL_5;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.notes.htmlnoteitemprovider"])
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__NoteObject_SearchIndexableNote__dataForTypeIdentifier___block_invoke_cold_1(v10);
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

@end