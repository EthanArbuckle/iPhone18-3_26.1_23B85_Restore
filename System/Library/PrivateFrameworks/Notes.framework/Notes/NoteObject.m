@interface NoteObject
- (BOOL)belongsToCollection:(id)a3;
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
- (id)dataForTypeIdentifier:(id)a3;
- (int64_t)serverIntId;
- (unint64_t)flags;
- (unint64_t)sequenceNumber;
- (void)markForDeletion;
- (void)setContent:(id)a3;
- (void)setExternalContentRef:(id)a3;
- (void)setExternalRepresentation:(id)a3;
- (void)setFlags:(unint64_t)a3;
- (void)setSequenceNumber:(unint64_t)a3;
- (void)setServerIntId:(int64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation NoteObject

- (void)setContent:(id)a3
{
  v5 = a3;
  v4 = [(NoteObject *)self body];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setContent:v5];
  }

  else
  {
    NSLog(&cfstr_TheBodyObjectI.isa, self, v4);
  }
}

- (void)setTitle:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NoteObject *)self title];
  v6 = [v5 isEqualToString:v4];

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

  if (!v4 || ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "stringByTrimmingCharactersInSet:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12, !v14))
  {
    v15 = [(NoteObject *)self defaultTitleForEmptyNote];

    v4 = v15;
  }

  [(NoteObject *)self willChangeValueForKey:@"title"];
  [(NoteObject *)self setPrimitiveValue:v4 forKey:@"title"];
  [(NoteObject *)self didChangeValueForKey:@"title"];

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)content
{
  v2 = [(NoteObject *)self body];
  v3 = [v2 content];

  return v3;
}

- (NSString)contentAsPlainText
{
  v2 = [(NoteObject *)self body];
  v3 = [v2 contentAsPlainText];

  return v3;
}

- (NSString)contentAsPlainTextPreservingNewlines
{
  v3 = [(NoteObject *)self isPlainText];
  v4 = [(NoteObject *)self body];
  v5 = v4;
  if (v3)
  {
    [v4 content];
  }

  else
  {
    [v4 contentAsPlainTextPreservingNewlines];
  }
  v6 = ;

  return v6;
}

- (BOOL)isPlainText
{
  v2 = [(NoteObject *)self contentType];
  v3 = [v2 intValue] == 1;

  return v3;
}

- (void)markForDeletion
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [(NoteObject *)self setDeletedFlag:v3];
}

- (BOOL)isMarkedForDeletion
{
  v2 = [(NoteObject *)self deletedFlag];
  v3 = [v2 BOOLValue];

  return v3;
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
  v2 = [(NoteObject *)self objectID];
  v3 = [v2 URIRepresentation];

  return v3;
}

- (void)setFlags:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NoteObject *)self setExternalFlags:v4];
}

- (unint64_t)flags
{
  v2 = [(NoteObject *)self externalFlags];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setServerIntId:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(NoteObject *)self setExternalServerIntId:v4];
}

- (int64_t)serverIntId
{
  v2 = [(NoteObject *)self externalServerIntId];
  v3 = [v2 longLongValue];

  return v3;
}

- (BOOL)hasValidServerIntId
{
  v2 = [(NoteObject *)self externalServerIntId];
  v3 = [v2 longLongValue];

  return (v3 + 0xFFFFFFFFLL) < 0x1FFFFFFFFLL;
}

- (NSData)externalRepresentation
{
  v2 = [(NoteObject *)self body];
  v3 = [v2 externalRepresentation];

  return v3;
}

- (void)setExternalRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(NoteObject *)self body];
  [v5 setExternalRepresentation:v4];
}

- (NSString)externalContentRef
{
  v2 = [(NoteObject *)self body];
  v3 = [v2 externalContentRef];

  return v3;
}

- (void)setExternalContentRef:(id)a3
{
  v4 = a3;
  v5 = [(NoteObject *)self body];
  [v5 setExternalContentRef:v4];
}

- (BOOL)containsAttachments
{
  v2 = [(NoteObject *)self attachments];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setSequenceNumber:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NoteObject *)self setExternalSequenceNumber:v4];
}

- (unint64_t)sequenceNumber
{
  v2 = [(NoteObject *)self externalSequenceNumber];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (BOOL)belongsToCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[NoteObject store](self, "store"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:v4], v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(NoteObject *)self store];
      v9 = [v8 account];
      v7 = [v9 isEqual:v4];
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
  v2 = [(NoteObject *)self title];
  v3 = v2;
  v4 = &stru_286E2F780;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  if ([(__CFString *)v5 length])
  {
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [(__CFString *)v5 stringByTrimmingCharactersInSet:v6];

    v5 = [v7 ic_whitespaceAndNewlineCoalescedString];
  }

  return v5;
}

- (NSString)folderName
{
  v3 = [(NoteObject *)self store];
  v4 = [(NoteObject *)self store];
  v5 = [v4 account];
  v6 = [v5 defaultStore];

  if (v3 == v6)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"Notes", @"Notes", 0);
  }

  else
  {
    v7 = [(NoteObject *)self store];
    v8 = [v7 name];
  }

  return v8;
}

- (NSString)folderManagedIdentifier
{
  v2 = [(NoteObject *)self store];
  v3 = [v2 externalIdentifier];

  return v3;
}

- (NSString)accountName
{
  v2 = [(NoteObject *)self store];
  v3 = [v2 account];
  v4 = [v3 name];

  return v4;
}

- (BOOL)isHiddenFromIndexing
{
  v3 = [(NoteObject *)self store];
  v4 = [v3 account];

  if (!v4)
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

  v5 = [(NoteObject *)self store];
  v6 = [v5 account];
  v7 = [v6 didChooseToMigrate];

  if (v7)
  {
    return 1;
  }

  v9 = MEMORY[0x277D361A0];
  v10 = [(NoteObject *)self store];
  v11 = [v10 account];
  v12 = [v11 accountIdentifier];
  LOBYTE(v9) = [v9 isAccountReindexedForMigration:v12];

  return v9;
}

- (NSString)noteAsPlainTextWithoutTitle
{
  v3 = MEMORY[0x277D36228];
  v4 = [(NoteObject *)self title];
  v5 = [(NoteObject *)self contentAsPlainTextPreservingNewlines];
  v6 = [v3 stringByRemovingTitle:v4 fromString:v5];

  return v6;
}

- (NSString)contentInfoText
{
  v3 = MEMORY[0x277D36228];
  v4 = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  v5 = [v3 snippetForContent:v4];

  if (![v5 length])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = __ICLocalizedFrameworkString_impl(@"NOTE_LIST_ATTACHMENTS_%lu", @"NOTE_LIST_ATTACHMENTS_%lu", 0);
    v8 = [(NoteObject *)self attachments];
    v9 = [v6 localizedStringWithFormat:v7, objc_msgSend(v8, "count")];

    v5 = v9;
  }

  return v5;
}

- (NSAttributedString)attributedContentInfoText
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [(NoteObject *)self contentInfoText];
  v5 = [v3 initWithString:v4];

  return v5;
}

- (NSString)widgetInfoText
{
  v3 = MEMORY[0x277D36228];
  v4 = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  v5 = [v3 widgetSnippetForContent:v4];

  if (![v5 length])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = __ICLocalizedFrameworkString_impl(@"NOTE_LIST_ATTACHMENTS_%lu", @"NOTE_LIST_ATTACHMENTS_%lu", 0);
    v8 = [(NoteObject *)self attachments];
    v9 = [v6 localizedStringWithFormat:v7, objc_msgSend(v8, "count")];

    v5 = v9;
  }

  return v5;
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(NoteObject *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [v3 accountStore];

  v5 = [(NoteObject *)self store];
  v6 = [v5 account];
  v7 = [v6 accountIdentifier];
  v8 = [v4 accountWithIdentifier:v7];

  v9 = [v8 parentAccount];
  v10 = v9;
  if (!v9)
  {
    v9 = v8;
  }

  v11 = [v9 identifier];

  return v11;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  v4 = [(NoteObject *)self creationDate];
  [v3 setContentCreationDate:v4];

  v5 = [(NoteObject *)self modificationDate];
  [v3 setContentModificationDate:v5];

  v6 = [(NoteObject *)self title];
  [v3 setDisplayName:v6];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = [(NoteObject *)self userActivityContentAttributeSet];
  v4 = MEMORY[0x277D36228];
  v5 = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  v6 = [v4 snippetForContent:v5];
  [v3 setContentDescription:v6];

  v7 = [(NoteObject *)self noteAsPlainTextWithoutTitle];
  [v3 setTextContent:v7];

  [v3 setIc_searchResultType:0];
  v8 = [(NoteObject *)self store];
  v9 = [v8 account];
  if ([v9 preventMovingNotesToOtherAccounts])
  {
    v10 = &unk_286E32B58;
  }

  else
  {
    v10 = &unk_286E32B70;
  }

  [v3 setDataOwnerType:v10];

  [v3 ic_populateValuesForSpecializedFields];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(NoteObject *)self searchableItemViewAttributeSet];
    [v3 addAttributesFromAttributeSet:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    [(NoteObject *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  v12 = [*MEMORY[0x277CE1EB0] identifier];
  v13 = [*MEMORY[0x277CE1DA0] identifier];
  v17[1] = v13;
  v17[2] = @"com.apple.notes.htmlnoteitemprovider";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v3 setProviderDataTypes:v14];

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dataForTypeIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(NoteObject *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NoteObject_SearchIndexableNote__dataForTypeIdentifier___block_invoke;
  v9[3] = &unk_2799AC9F0;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 performBlockAndWait:v9];

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