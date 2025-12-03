@interface ICInlineAttachment
+ (BOOL)isHashtagStandardizedContent:(id)content usedInAccount:(id)account;
+ (id)canonicalHashtagAttachmentsInContext:(id)context;
+ (id)cloneInlineAttachmentWithIdentifier:(id)identifier context:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)existingInlineAttachmentWithTokenContentIdentifier:(id)identifier typeUTI:(id)i context:(id)context;
+ (id)newAttachmentWithIdentifier:(id)identifier typeUTI:(id)i altText:(id)text tokenContentIdentifier:(id)contentIdentifier note:(id)note parentAttachment:(id)attachment;
+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)identifier altText:(id)text note:(id)note parentAttachment:(id)attachment rightToLeft:(BOOL)left;
+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)identifier note:(id)note parentAttachment:(id)attachment rightToLeft:(BOOL)left;
+ (id)newCalculateResultAttachmentWithIdentifier:(id)identifier note:(id)note parentAttachment:(id)attachment rightToLeft:(BOOL)left;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newHashtagAttachmentWithIdentifier:(id)identifier forHashtag:(id)hashtag note:(id)note parentAttachment:(id)attachment;
+ (id)newHashtagAttachmentWithIdentifier:(id)identifier hashtagText:(id)text creatingHashtagIfNecessary:(BOOL)necessary note:(id)note parentAttachment:(id)attachment;
+ (id)newLinkAttachmentWithIdentifier:(id)identifier toNote:(id)note fromNote:(id)fromNote parentAttachment:(id)attachment;
+ (id)newMentionAttachmentWithIdentifier:(id)identifier mentionText:(id)text userRecordName:(id)name note:(id)note parentAttachment:(id)attachment;
+ (id)noteFromAttachmentRecord:(id)record accountID:(id)d context:(id)context;
+ (id)predicateForMentionsInContext:(id)context;
+ (id)recentlyUsedDatesForHashtagsStandardizedContents:(id)contents context:(id)context;
+ (unint64_t)countOfVisibleInlineAttachmentsForHashtagStandardizedContent:(id)content includingTrash:(BOOL)trash account:(id)account;
+ (void)changeLinkDestinationFromNote:(id)note toNote:(id)toNote;
+ (void)enumerateInlineAttachmentsInContext:(id)context typeUTI:(id)i tokenContentIdentifier:(id)identifier batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch usingBlock:(id)block;
+ (void)enumerateLinksToNote:(id)note batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch context:(id)context usingBlock:(id)block;
+ (void)purgeAttachment:(id)attachment;
+ (void)regenerateDerivedDataForInlineAttachments:(id)attachments reason:(id)reason;
+ (void)regenerateTokenContentIdentifierForHashtagAttachmentsInContext:(id)context currentTokenContentIdentifier:(id)identifier save:(BOOL)save;
+ (void)reviveOrTouchHashtag:(id)hashtag;
- (BOOL)hasAllMandatoryFields;
- (BOOL)isCalculateGraphExpressionAttachment;
- (BOOL)isCalculateResultAttachment;
- (BOOL)isHashtagAttachment;
- (BOOL)isInICloudAccount;
- (BOOL)isLinkAttachment;
- (BOOL)isMentionAttachment;
- (BOOL)isRightToLeftCalculateAttachment;
- (BOOL)isValidCalculateAttachment;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)saveToArchive:(void *)archive dataPersister:(id)persister error:(id *)error;
- (BOOL)shouldAlwaysDownloadAssets;
- (BOOL)updateCalculateGraphExpressionText:(id)text;
- (BOOL)updateCalculateResult:(id)result isRightToLeft:(BOOL)left;
- (BOOL)updateCalculateText:(id)text isValid:(BOOL)valid isRightToLeft:(BOOL)left;
- (NSAttributedString)searchableTextContentInNote;
- (NSString)altText;
- (NSString)calculateState;
- (NSString)displayText;
- (NSString)tokenContentIdentifier;
- (_NSRange)animatableRange;
- (_NSRange)displayTextRangeForSearchRange:(_NSRange)range inSearchableString:(id)string;
- (id)clone;
- (id)fallbackDisplayText;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)nonNilAltText;
- (id)parentAttachmentFromRecord:(id)record accountID:(id)d context:(id)context;
- (id)parentEncryptableObject;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario;
- (signed)attachmentType;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)loadFromArchive:(const void *)archive dataPersister:(id)persister withIdentifierMap:(id)map;
- (void)markDisplayTextNeedsUpdate;
- (void)markForDeletion;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force;
- (void)propagateDeletionToHashtagForMarkForDeletion:(BOOL)deletion;
- (void)setAltText:(id)text;
- (void)setCalculateState:(id)state;
- (void)setTokenContentIdentifier:(id)identifier;
- (void)unmarkForDeletion;
- (void)updateMarkedForDeletionStateInlineAttachmentIsInUse:(BOOL)use;
- (void)willTurnIntoFault;
- (void)writeMergeableFieldStateIfNecessary:(id)necessary;
@end

@implementation ICInlineAttachment

- (void)loadFromArchive:(const void *)archive dataPersister:(id)persister withIdentifierMap:(id)map
{
  v47 = *MEMORY[0x277D85DE8];
  persisterCopy = persister;
  mapCopy = map;
  if (*(archive + 32))
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = *(archive + 5);
    v13 = *(v12 + 23);
    if (v13 < 0)
    {
      v12 = *v12;
      v13 = *(*(archive + 5) + 8);
    }

    v14 = [v11 initWithBytes:v12 length:v13 encoding:4];
    if (mapCopy)
    {
      identifier = [(ICInlineAttachment *)self identifier];
      [mapCopy setObject:identifier forKeyedSubscript:v14];
    }

    v10 = v14;
  }

  else
  {
    v10 = &stru_2827172C0;
  }

  if ((*(archive + 8) & 0x1000000) != 0)
  {
    v16 = *(archive + 29);
  }

  else
  {
    v16 = 0;
  }

  [(ICCloudSyncingObject *)self requireMinimumSupportedVersionAndPropagateToChildObjects:v16];
  v17 = *(archive + 8);
  if ((v17 & 0x40) != 0)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = *(archive + 10);
    v20 = *(v19 + 23);
    if (v20 < 0)
    {
      v19 = *v19;
      v20 = *(*(archive + 10) + 8);
    }

    v21 = [v18 initWithBytes:v19 length:v20 encoding:4];
    [(ICInlineAttachment *)self setTypeUTI:v21];

    v17 = *(archive + 8);
  }

  if ((v17 & 0x20) != 0)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = *(archive + 9);
    v24 = *(v23 + 23);
    if (v24 < 0)
    {
      v23 = *v23;
      v24 = *(*(archive + 9) + 8);
    }

    v25 = [v22 initWithBytes:v23 length:v24 encoding:4];
    [(ICInlineAttachment *)self setAltText:v25];
  }

  if ((*(archive + 36) & 2) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277CBEA90]);
    v27 = *(archive + 38);
    v28 = *(v27 + 23);
    if (v28 < 0)
    {
      v27 = *v27;
      v28 = *(*(archive + 38) + 8);
    }

    v29 = [v26 initWithBytes:v27 length:v28];
    v40 = 0;
    v30 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v29 options:0 error:&v40];
    v31 = v40;
    v32 = v31;
    if (!v30 || v31)
    {
      v37 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        className = [(ICInlineAttachment *)self className];
        identifier2 = [(ICInlineAttachment *)self identifier];
        *buf = 138412802;
        v42 = className;
        v43 = 2112;
        v44 = identifier2;
        v45 = 2112;
        v46 = v32;
        _os_log_error_impl(&dword_214D51000, v37, OS_LOG_TYPE_ERROR, "Error parsing metadata JSON for %@ (%@): %@", buf, 0x20u);
      }

      v34 = v37;
    }

    else
    {
      objc_opt_class();
      v33 = [v30 objectForKeyedSubscript:@"creationDateKey"];
      v34 = ICDynamicCast();

      if (v34)
      {
        v35 = MEMORY[0x277CBEAA8];
        [v34 doubleValue];
        v36 = [v35 dateWithTimeIntervalSinceReferenceDate:?];
        [(ICInlineAttachment *)self setCreationDate:v36];
      }

      v37 = [v30 objectForKeyedSubscript:@"tokenContentIdentifierKey"];
      [(ICInlineAttachment *)self setTokenContentIdentifier:v37];
    }
  }
}

- (BOOL)saveToArchive:(void *)archive dataPersister:(id)persister error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  persisterCopy = persister;
  identifier = [(ICInlineAttachment *)self identifier];

  if (identifier)
  {
    identifier2 = [(ICInlineAttachment *)self identifier];
    uTF8String = [identifier2 UTF8String];
    *(archive + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v12 = uTF8String;
    v13 = *(archive + 5);
    if (v13 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v13, v12);
  }

  v14 = [(ICInlineAttachment *)self intrinsicNotesVersionForScenario:1];
  if (v14)
  {
    *(archive + 8) |= 0x1000000u;
    *(archive + 29) = v14;
  }

  typeUTI = [(ICInlineAttachment *)self typeUTI];

  if (typeUTI)
  {
    typeUTI2 = [(ICInlineAttachment *)self typeUTI];
    uTF8String2 = [typeUTI2 UTF8String];
    *(archive + 8) |= 0x40u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v18 = uTF8String2;
    v19 = *(archive + 10);
    if (v19 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v19, v18);
  }

  altText = [(ICInlineAttachment *)self altText];

  if (altText)
  {
    altText2 = [(ICInlineAttachment *)self altText];
    uTF8String3 = [altText2 UTF8String];
    *(archive + 8) |= 0x20u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v23 = uTF8String3;
    v24 = *(archive + 9);
    if (v24 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v24, v23);
  }

  v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v26 = MEMORY[0x277CCABB0];
  creationDate = [(ICCloudSyncingObject *)self creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  v28 = [v26 numberWithDouble:?];
  [v25 ic_setNonNilObject:v28 forKey:@"creationDateKey"];

  tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
  [v25 ic_setNonNilObject:tokenContentIdentifier forKey:@"tokenContentIdentifierKey"];

  if ([v25 count])
  {
    v46 = 0;
    v30 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v25 options:0 error:&v46];
    v31 = v46;
    v32 = v31;
    if (v30)
    {
      v33 = v31 == 0;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    if (v33)
    {
      v35 = v30;
      bytes = [v30 bytes];
      v37 = [v30 length];
      *(archive + 9) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v38 = v37;
      v39 = *(archive + 38);
      if (v39 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v39, bytes, v38);
    }

    else
    {
      v40 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        className = [(ICInlineAttachment *)self className];
        identifier3 = [(ICInlineAttachment *)self identifier];
        *buf = 138412802;
        v48 = className;
        v49 = 2112;
        v50 = identifier3;
        v51 = 2112;
        v52 = v32;
        _os_log_error_impl(&dword_214D51000, v40, OS_LOG_TYPE_ERROR, "Error converting metadata to JSON for %@ (%@): %@", buf, 0x20u);
      }

      if (error)
      {
        v42 = v32;
        *error = v32;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  return v34;
}

+ (id)newHashtagAttachmentWithIdentifier:(id)identifier hashtagText:(id)text creatingHashtagIfNecessary:(BOOL)necessary note:(id)note parentAttachment:(id)attachment
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  textCopy = text;
  noteCopy = note;
  attachmentCopy = attachment;
  account = [noteCopy account];
  v16 = [ICHashtag hashtagWithDisplayText:textCopy account:account createIfNecessary:necessaryCopy];

  displayText = [v16 displayText];
  ic_withHashtagPrefix = [displayText ic_withHashtagPrefix];
  ic_withHashtagPrefix2 = ic_withHashtagPrefix;
  if (!ic_withHashtagPrefix)
  {
    ic_withHashtagPrefix2 = [textCopy ic_withHashtagPrefix];
  }

  standardizedContent = [v16 standardizedContent];
  selfCopy = self;
  if (standardizedContent)
  {
    selfCopy2 = self;
    v22 = identifierCopy;
    v23 = attachmentCopy;
    v24 = [selfCopy2 newAttachmentWithIdentifier:identifierCopy typeUTI:@"com.apple.notes.inlinetextattachment.hashtag" altText:ic_withHashtagPrefix2 tokenContentIdentifier:standardizedContent note:noteCopy parentAttachment:attachmentCopy];
  }

  else
  {
    [ICHashtag standardizedHashtagRepresentationForDisplayText:textCopy];
    v25 = v28 = textCopy;
    selfCopy3 = self;
    v22 = identifierCopy;
    v23 = attachmentCopy;
    v24 = [selfCopy3 newAttachmentWithIdentifier:identifierCopy typeUTI:@"com.apple.notes.inlinetextattachment.hashtag" altText:ic_withHashtagPrefix2 tokenContentIdentifier:v25 note:noteCopy parentAttachment:attachmentCopy];

    textCopy = v28;
  }

  if (!ic_withHashtagPrefix)
  {
  }

  if (v24 && v16)
  {
    [selfCopy reviveOrTouchHashtag:v16];
  }

  return v24;
}

+ (id)newHashtagAttachmentWithIdentifier:(id)identifier forHashtag:(id)hashtag note:(id)note parentAttachment:(id)attachment
{
  hashtagCopy = hashtag;
  attachmentCopy = attachment;
  noteCopy = note;
  identifierCopy = identifier;
  displayText = [hashtagCopy displayText];
  ic_withHashtagPrefix = [displayText ic_withHashtagPrefix];
  standardizedContent = [hashtagCopy standardizedContent];
  v17 = [self newAttachmentWithIdentifier:identifierCopy typeUTI:@"com.apple.notes.inlinetextattachment.hashtag" altText:ic_withHashtagPrefix tokenContentIdentifier:standardizedContent note:noteCopy parentAttachment:attachmentCopy];

  if (hashtagCopy && v17)
  {
    [self reviveOrTouchHashtag:hashtagCopy];
  }

  return v17;
}

+ (void)reviveOrTouchHashtag:(id)hashtag
{
  hashtagCopy = hashtag;
  if (([hashtagCopy needsInitialFetchFromCloud] & 1) == 0)
  {
    if ([hashtagCopy markedForDeletion])
    {
      [hashtagCopy unmarkForDeletion];
    }

    else
    {
      [hashtagCopy updateChangeCountWithReason:@"Touched tag"];
    }
  }
}

+ (id)newMentionAttachmentWithIdentifier:(id)identifier mentionText:(id)text userRecordName:(id)name note:(id)note parentAttachment:(id)attachment
{
  attachmentCopy = attachment;
  noteCopy = note;
  nameCopy = name;
  identifierCopy = identifier;
  ic_mentionString = [text ic_mentionString];
  v17 = [self newAttachmentWithIdentifier:identifierCopy typeUTI:@"com.apple.notes.inlinetextattachment.mention" altText:ic_mentionString tokenContentIdentifier:nameCopy note:noteCopy parentAttachment:attachmentCopy];

  return v17;
}

+ (id)newLinkAttachmentWithIdentifier:(id)identifier toNote:(id)note fromNote:(id)fromNote parentAttachment:(id)attachment
{
  attachmentCopy = attachment;
  fromNoteCopy = fromNote;
  noteCopy = note;
  identifierCopy = identifier;
  v14 = [ICAppURLUtilities entityURIForNote:noteCopy];
  titleForLinking = [noteCopy titleForLinking];

  absoluteString = [v14 absoluteString];
  v17 = [self newAttachmentWithIdentifier:identifierCopy typeUTI:@"com.apple.notes.inlinetextattachment.link" altText:titleForLinking tokenContentIdentifier:absoluteString note:fromNoteCopy parentAttachment:attachmentCopy];

  return v17;
}

+ (id)newCalculateResultAttachmentWithIdentifier:(id)identifier note:(id)note parentAttachment:(id)attachment rightToLeft:(BOOL)left
{
  if (left)
  {
    v6 = @"ICInlineAttachmentCalculateStateInvalidRTL";
  }

  else
  {
    v6 = @"ICInlineAttachmentCalculateStateInvalidLTR";
  }

  return [self newAttachmentWithIdentifier:identifier typeUTI:@"com.apple.notes.inlinetextattachment.calculateresult" altText:0 tokenContentIdentifier:v6 note:note parentAttachment:attachment];
}

+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)identifier note:(id)note parentAttachment:(id)attachment rightToLeft:(BOOL)left
{
  leftCopy = left;
  v11 = @"ICInlineAttachmentCalculateStateValidLTR";
  if (left)
  {
    v11 = @"ICInlineAttachmentCalculateStateValidRTL";
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = v11;
  attachmentCopy = attachment;
  noteCopy = note;
  identifierCopy = identifier;
  ic_calculateGraphExpressionString = [v12 ic_calculateGraphExpressionString];
  v18 = ic_calculateGraphExpressionString;
  if (leftCopy)
  {
    ic_rightToLeftString = [ic_calculateGraphExpressionString ic_rightToLeftString];

    v18 = ic_rightToLeftString;
  }

  v20 = [self newAttachmentWithIdentifier:identifierCopy typeUTI:@"com.apple.notes.inlinetextattachment.calculategraphexpression" altText:v18 tokenContentIdentifier:v13 note:noteCopy parentAttachment:attachmentCopy];

  return v20;
}

+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)identifier altText:(id)text note:(id)note parentAttachment:(id)attachment rightToLeft:(BOOL)left
{
  if (left)
  {
    v8 = @"ICInlineAttachmentCalculateStateValidRTL";
  }

  else
  {
    v8 = @"ICInlineAttachmentCalculateStateValidLTR";
  }

  return [self newAttachmentWithIdentifier:identifier typeUTI:@"com.apple.notes.inlinetextattachment.calculategraphexpression" altText:text tokenContentIdentifier:v8 note:note parentAttachment:attachment];
}

+ (id)newAttachmentWithIdentifier:(id)identifier typeUTI:(id)i altText:(id)text tokenContentIdentifier:(id)contentIdentifier note:(id)note parentAttachment:(id)attachment
{
  iCopy = i;
  noteCopy = note;
  attachmentCopy = attachment;
  contentIdentifierCopy = contentIdentifier;
  textCopy = text;
  identifierCopy = identifier;
  if (![textCopy length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"altText.length" functionName:"+[ICInlineAttachment newAttachmentWithIdentifier:typeUTI:altText:tokenContentIdentifier:note:parentAttachment:]" simulateCrash:1 showAlert:0 format:@"Inline attachment must have a non-empty alt text"];
  }

  managedObjectContext = [noteCopy managedObjectContext];
  v21 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  account = [noteCopy account];
  persistentStore = [account persistentStore];
  [v21 assignToPersistentStore:persistentStore];

  account2 = [noteCopy account];
  [v21 setAccount:account2];

  [v21 setNote:noteCopy];
  [v21 setParentAttachment:attachmentCopy];
  if ([noteCopy isPasswordProtected])
  {
    [v21 setIsPasswordProtected:1];
    [v21 initializeCryptoProperties];
  }

  [v21 setTypeUTI:iCopy];
  [v21 setAltText:textCopy];

  [v21 setTokenContentIdentifier:contentIdentifierCopy];
  v25 = [MEMORY[0x277CBEAA8] now];
  [v21 setCreationDate:v25];

  [noteCopy addInlineAttachmentsObject:v21];
  [attachmentCopy addInlineAttachmentsObject:v21];

  return v21;
}

+ (id)cloneInlineAttachmentWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v7 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:identifierCopy context:contextCopy];
  v8 = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__27;
  v19 = __Block_byref_object_dispose__27;
  v20 = 0;
  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__ICInlineAttachment_cloneInlineAttachmentWithIdentifier_context___block_invoke;
    v12[3] = &unk_278194DE8;
    v14 = &v15;
    v13 = v7;
    [contextCopy performBlockAndWait:v12];

    v9 = v16[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __66__ICInlineAttachment_cloneInlineAttachmentWithIdentifier_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clone];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)existingInlineAttachmentWithTokenContentIdentifier:(id)identifier typeUTI:(id)i context:(id)context
{
  v22[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v10 = [self predicateForTypeUTI:i];
  v11 = [self predicateForTokenContentIdentifier:identifierCopy];
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v13 = MEMORY[0x277CCA920];
  v22[0] = v10;
  v22[1] = v11;
  v22[2] = predicateForVisibleObjects;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  fetchRequest = [self fetchRequest];
  [fetchRequest setPredicate:v15];
  [fetchRequest setFetchLimit:1];
  v21 = 0;
  v17 = [contextCopy executeFetchRequest:fetchRequest error:&v21];

  v18 = v21;
  if (v18)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment existingInlineAttachmentWithTokenContentIdentifier:typeUTI:context:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch inline attachments with standardizedContent %@: %@", identifierCopy, v18}];
  }

  firstObject = [v17 firstObject];

  return firstObject;
}

- (id)clone
{
  v3 = objc_opt_class();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  altText = [(ICInlineAttachment *)self altText];
  tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
  note = [(ICInlineAttachment *)self note];
  parentAttachment = [(ICInlineAttachment *)self parentAttachment];
  v11 = [v3 newAttachmentWithIdentifier:uUIDString typeUTI:typeUTI altText:altText tokenContentIdentifier:tokenContentIdentifier note:note parentAttachment:parentAttachment];

  return v11;
}

+ (id)canonicalHashtagAttachmentsInContext:(id)context
{
  v26[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277CCA9C0];
  v6 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"creationDate"];
  v26[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v8 = [v5 expressionForFunction:@"min:" arguments:v7];

  v9 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v9 setName:@"minCreationDate"];
  [v9 setExpression:v8];
  [v9 setExpressionResultType:900];
  v10 = +[ICInlineAttachment fetchRequest];
  v25[0] = @"objectID";
  v25[1] = @"tokenContentIdentifier";
  v25[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v10 setPropertiesToFetch:v11];

  [v10 setPropertiesToGroupBy:&unk_282747FD0];
  [v10 setResultType:2];
  v12 = [self predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
  [v10 setPredicate:v12];

  v23 = 0;
  v13 = [contextCopy executeFetchRequest:v10 error:&v23];
  v14 = v23;
  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ICInlineAttachment *)v14 canonicalHashtagAttachmentsInContext:v15];
    }

    v16 = MEMORY[0x277CBEBF8];
    v17 = v15;
  }

  else
  {
    v17 = [v13 ic_map:&__block_literal_global_33];
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self IN %@", v17];
    [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v22 = v8;
    v19 = v18 = contextCopy;
    v24 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v16 = [self ic_objectsMatchingPredicate:v15 sortDescriptors:v20 context:v18];

    contextCopy = v18;
    v8 = v22;
  }

  return v16;
}

+ (void)changeLinkDestinationFromNote:(id)note toNote:(id)toNote
{
  v47[3] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  toNoteCopy = toNote;
  managedObjectContext = [noteCopy managedObjectContext];
  if (!managedObjectContext)
  {
    goto LABEL_15;
  }

  v9 = managedObjectContext;
  managedObjectContext2 = [toNoteCopy managedObjectContext];
  if (!managedObjectContext2)
  {

    goto LABEL_15;
  }

  v11 = managedObjectContext2;
  managedObjectContext3 = [noteCopy managedObjectContext];
  managedObjectContext4 = [toNoteCopy managedObjectContext];

  if (managedObjectContext3 != managedObjectContext4)
  {
LABEL_15:
    v35 = MEMORY[0x277D36198];
    v36 = @"From note context must be non-nil and the same as to note context";
LABEL_16:
    [v35 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment changeLinkDestinationFromNote:toNote:]" simulateCrash:1 showAlert:0 format:v36];
    goto LABEL_17;
  }

  identifier = [toNoteCopy identifier];
  if (![identifier length])
  {

    goto LABEL_19;
  }

  identifier2 = [noteCopy identifier];
  v16 = [identifier2 length];

  if (!v16)
  {
LABEL_19:
    v35 = MEMORY[0x277D36198];
    v36 = @"From and to notes must have non-empty identifiers";
    goto LABEL_16;
  }

  selfCopy = self;
  v17 = [ICAppURLUtilities entityURIForNote:noteCopy];
  v18 = [ICAppURLUtilities entityURIForNote:toNoteCopy];
  v19 = MEMORY[0x277CCA920];
  v38 = +[(ICBaseAttachment *)ICInlineAttachment];
  v47[0] = v38;
  v37 = [ICInlineAttachment predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.link"];
  v47[1] = v37;
  v39 = v17;
  absoluteString = [v17 absoluteString];
  v21 = [ICInlineAttachment predicateForTokenContentIdentifier:absoluteString];
  v47[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v23 = [v19 andPredicateWithSubpredicates:v22];
  v41 = noteCopy;
  managedObjectContext5 = [noteCopy managedObjectContext];
  v25 = [ICInlineAttachment ic_objectsMatchingPredicate:v23 context:managedObjectContext5];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * i);
        absoluteString2 = [v18 absoluteString];
        [v31 setTokenContentIdentifier:absoluteString2];

        titleForLinking = [toNoteCopy titleForLinking];
        [v31 setAltText:titleForLinking];

        [v31 updateChangeCountWithReason:@"Updated link destination"];
        v34 = [v31 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v28);
  }

  [selfCopy regenerateDerivedDataForInlineAttachments:v26 reason:@"Updated link destination"];
  noteCopy = v41;
LABEL_17:
}

+ (void)enumerateLinksToNote:(id)note batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch context:(id)context usingBlock:(id)block
{
  batchCopy = batch;
  onlyCopy = only;
  blockCopy = block;
  contextCopy = context;
  v17 = [ICAppURLUtilities entityURIForNote:note];
  absoluteString = [v17 absoluteString];
  [self enumerateInlineAttachmentsInContext:contextCopy typeUTI:@"com.apple.notes.inlinetextattachment.link" tokenContentIdentifier:absoluteString batchSize:size visibleOnly:onlyCopy saveAfterBatch:batchCopy usingBlock:blockCopy];
}

+ (void)enumerateInlineAttachmentsInContext:(id)context typeUTI:(id)i tokenContentIdentifier:(id)identifier batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch usingBlock:(id)block
{
  batchCopy = batch;
  onlyCopy = only;
  contextCopy = context;
  iCopy = i;
  identifierCopy = identifier;
  blockCopy = block;
  v18 = objc_opt_new();
  if (iCopy)
  {
    v19 = [self predicateForTypeUTI:iCopy];
    [v18 ic_addNonNilObject:v19];
  }

  if (identifierCopy)
  {
    v20 = [self predicateForTokenContentIdentifier:identifierCopy];
    [v18 ic_addNonNilObject:v20];
  }

  if (onlyCopy)
  {
    v21 = [self predicateForVisibleAttachmentsInContext:contextCopy];
    [v18 ic_addNonNilObject:v21];
  }

  v22 = MEMORY[0x277CCA920];
  v23 = [v18 copy];
  v24 = [v22 andPredicateWithSubpredicates:v23];

  [self ic_enumerateObjectsMatchingPredicate:v24 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 context:contextCopy batchSize:size saveAfterBatch:batchCopy usingBlock:blockCopy];
}

+ (void)regenerateDerivedDataForInlineAttachments:(id)attachments reason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  reasonCopy = reason;
  v7 = [attachmentsCopy ic_compactMap:&__block_literal_global_94];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        attachmentModel = [v13 attachmentModel];
        [attachmentModel regenerateTextContentInNote];

        [v13 updateChangeCountWithReason:reasonCopy];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v15 = [attachmentsCopy ic_map:&__block_literal_global_98];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [MEMORY[0x277CBEB98] setWithArray:{v15, 0}];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * j);
        if ([v21 regenerateTitle:1 snippet:1])
        {
          [v21 markShareDirtyIfNeededWithReason:reasonCopy];
          [v21 updateChangeCountWithReason:reasonCopy];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (id)parentEncryptableObject
{
  note = [(ICInlineAttachment *)self note];
  v4 = note;
  if (note)
  {
    account = note;
  }

  else
  {
    account = [(ICInlineAttachment *)self account];
  }

  v6 = account;

  return v6;
}

- (BOOL)isCalculateResultAttachment
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  v3 = [typeUTI isEqualToString:@"com.apple.notes.inlinetextattachment.calculateresult"];

  return v3;
}

- (BOOL)isCalculateGraphExpressionAttachment
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  v3 = [typeUTI isEqualToString:@"com.apple.notes.inlinetextattachment.calculategraphexpression"];

  return v3;
}

- (BOOL)isLinkAttachment
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  v3 = [typeUTI isEqualToString:@"com.apple.notes.inlinetextattachment.link"];

  return v3;
}

- (BOOL)isMentionAttachment
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  v3 = [typeUTI isEqualToString:@"com.apple.notes.inlinetextattachment.mention"];

  return v3;
}

- (BOOL)isHashtagAttachment
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  v3 = [typeUTI isEqualToString:@"com.apple.notes.inlinetextattachment.hashtag"];

  return v3;
}

+ (id)predicateForMentionsInContext:(id)context
{
  v11[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [self predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.mention"];
  v6 = [self predicateForVisibleAttachmentsInContext:contextCopy];

  v7 = MEMORY[0x277CCA920];
  v11[0] = v5;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

- (NSString)tokenContentIdentifier
{
  v3 = NSStringFromSelector(sel_tokenContentIdentifier);
  v4 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v3];

  return v4;
}

- (void)setTokenContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = NSStringFromSelector(sel_tokenContentIdentifier);
  [(ICCloudSyncingObject *)self setValue:identifierCopy forEncryptableKey:v5];
}

- (NSString)altText
{
  v3 = NSStringFromSelector(sel_altText);
  v4 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v3];

  return v4;
}

- (void)setAltText:(id)text
{
  textCopy = text;
  v5 = NSStringFromSelector(sel_altText);
  [(ICCloudSyncingObject *)self setValue:textCopy forEncryptableKey:v5];

  [(ICInlineAttachment *)self markDisplayTextNeedsUpdate];
}

- (id)nonNilAltText
{
  altText = [(ICInlineAttachment *)self altText];
  v3 = altText;
  if (altText)
  {
    v4 = altText;
  }

  else
  {
    v4 = &stru_2827172C0;
  }

  v5 = v4;

  return v4;
}

- (id)fallbackDisplayText
{
  if ([(ICInlineAttachment *)self isHashtagAttachment])
  {
    v3 = MEMORY[0x277CCACA8];
    ic_hashtagCharacterString = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
LABEL_5:
    v5 = ic_hashtagCharacterString;
    ic_ellipsisCharacterString = [MEMORY[0x277CCACA8] ic_ellipsisCharacterString];
    ic_ellipsisCharacterString2 = [v3 stringWithFormat:@"%@%@", v5, ic_ellipsisCharacterString];

LABEL_6:
    goto LABEL_7;
  }

  if ([(ICInlineAttachment *)self isMentionAttachment])
  {
    v3 = MEMORY[0x277CCACA8];
    ic_hashtagCharacterString = [MEMORY[0x277CCACA8] ic_mentionCharacterString];
    goto LABEL_5;
  }

  if ([(ICInlineAttachment *)self isCalculateResultAttachment])
  {
    isRightToLeftCalculateAttachment = [(ICInlineAttachment *)self isRightToLeftCalculateAttachment];
    ic_calculateEqualsSignString = [MEMORY[0x277CCACA8] ic_calculateEqualsSignString];
LABEL_14:
    v5 = ic_calculateEqualsSignString;
    if (isRightToLeftCalculateAttachment)
    {
      [ic_calculateEqualsSignString ic_rightToLeftString];
    }

    else
    {
      [ic_calculateEqualsSignString ic_leftToRightString];
    }
    ic_ellipsisCharacterString2 = ;
    goto LABEL_6;
  }

  if ([(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    isRightToLeftCalculateAttachment = [(ICInlineAttachment *)self isRightToLeftCalculateAttachment];
    ic_calculateEqualsSignString = [MEMORY[0x277CCACA8] ic_calculateGraphExpressionString];
    goto LABEL_14;
  }

  ic_ellipsisCharacterString2 = [MEMORY[0x277CCACA8] ic_ellipsisCharacterString];
LABEL_7:

  return ic_ellipsisCharacterString2;
}

- (NSString)displayText
{
  if ([(NSString *)self->_displayText length])
  {
    v3 = self->_displayText;
    goto LABEL_22;
  }

  altText = [(ICInlineAttachment *)self altText];
  if ([altText length])
  {
    [(ICInlineAttachment *)self altText];
  }

  else
  {
    [(ICInlineAttachment *)self fallbackDisplayText];
  }
  v3 = ;

  if ([(ICInlineAttachment *)self isHashtagAttachment])
  {
    tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
    note = [(ICInlineAttachment *)self note];
    account = [note account];
    v8 = [ICHashtag hashtagWithStandardizedContent:tokenContentIdentifier account:account];

    displayText = [v8 displayText];
    v10 = [displayText length];

    if (v10)
    {
      displayText2 = [v8 displayText];
      ic_withHashtagPrefix = [displayText2 ic_withHashtagPrefix];

      v3 = ic_withHashtagPrefix;
    }
  }

  else if ([(ICInlineAttachment *)self isLinkAttachment])
  {
    tokenContentIdentifier2 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v8 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(tokenContentIdentifier2);

    if (v8)
    {
      v14 = [ICAppURLUtilities noteIdentifierFromNotesAppURL:v8];
      managedObjectContext = [(ICInlineAttachment *)self managedObjectContext];
      v16 = [ICNote noteWithIdentifier:v14 context:managedObjectContext];

      titleForLinking = [v16 titleForLinking];
      if ([titleForLinking length])
      {
        v18 = titleForLinking;

        v3 = v18;
      }
    }
  }

  else
  {
    if (![(ICInlineAttachment *)self isCalculateResultAttachment]&& ![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
    {
      goto LABEL_21;
    }

    if ([(ICInlineAttachment *)self isValidCalculateAttachment])
    {
      [(ICInlineAttachment *)self altText];
    }

    else
    {
      [(ICInlineAttachment *)self fallbackDisplayText];
    }

    v3 = v8 = v3;
  }

LABEL_21:
  v19 = [(NSString *)v3 copy];
  displayText = self->_displayText;
  self->_displayText = v19;

LABEL_22:

  return v3;
}

- (void)markDisplayTextNeedsUpdate
{
  displayText = self->_displayText;
  self->_displayText = &stru_2827172C0;
}

- (signed)attachmentType
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];
  v4 = [typeUTI isEqualToString:@"com.apple.notes.inlinetextattachment.hashtag"];

  if (v4)
  {
    return 1;
  }

  typeUTI2 = [(ICInlineAttachment *)self typeUTI];
  v7 = [typeUTI2 isEqualToString:@"com.apple.notes.inlinetextattachment.mention"];

  if (v7)
  {
    return 2;
  }

  typeUTI3 = [(ICInlineAttachment *)self typeUTI];
  v9 = [typeUTI3 isEqualToString:@"com.apple.notes.inlinetextattachment.link"];

  if (v9)
  {
    return 3;
  }

  typeUTI4 = [(ICInlineAttachment *)self typeUTI];
  v11 = [typeUTI4 isEqualToString:@"com.apple.notes.inlinetextattachment.calculateresult"];

  if (v11)
  {
    return 4;
  }

  typeUTI5 = [(ICInlineAttachment *)self typeUTI];
  v13 = [typeUTI5 isEqualToString:@"com.apple.notes.inlinetextattachment.calculategraphexpression"];

  if (v13)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario
{
  if (![(ICCloudSyncingObject *)self isUnsupported]&& ![(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {
    typeUTI = [(ICInlineAttachment *)self typeUTI];

    if (typeUTI)
    {
      if (([(ICInlineAttachment *)self isPasswordProtected]& 1) == 0)
      {
        typeUTI2 = [(ICInlineAttachment *)self typeUTI];
        v9 = [typeUTI2 isEqualToString:@"com.apple.notes.inlinetextattachment.calculateresult"];

        if (v9 & 1) != 0 || (-[ICInlineAttachment typeUTI](self, "typeUTI"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:@"com.apple.notes.inlinetextattachment.calculategraphexpression"], v10, (v11))
        {
          v6 = 15;
LABEL_12:
          v18.receiver = self;
          v18.super_class = ICInlineAttachment;
          result = [(ICCloudSyncingObject *)&v18 intrinsicNotesVersionForScenario:scenario];
          if (v6 > result)
          {
            return v6;
          }

          return result;
        }

        typeUTI3 = [(ICInlineAttachment *)self typeUTI];
        v13 = [typeUTI3 isEqualToString:@"com.apple.notes.inlinetextattachment.link"];

        if ((v13 & 1) == 0)
        {
          typeUTI4 = [(ICInlineAttachment *)self typeUTI];
          v15 = [typeUTI4 isEqualToString:@"com.apple.notes.inlinetextattachment.hashtag"];

          if (v15)
          {
            v6 = 7;
          }

          else
          {
            typeUTI5 = [(ICInlineAttachment *)self typeUTI];
            v17 = [typeUTI5 isEqualToString:@"com.apple.notes.inlinetextattachment.mention"];

            if (v17)
            {
              v6 = 7;
            }

            else
            {
              v6 = 6;
            }
          }

          goto LABEL_12;
        }
      }

      v6 = 13;
      goto LABEL_12;
    }
  }

  return [(ICInlineAttachment *)self minimumSupportedNotesVersion];
}

- (void)awakeFromFetch
{
  v7.receiver = self;
  v7.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v7 awakeFromFetch];
  if (![(ICInlineAttachment *)self didAddAttachmentDataChangedObservers])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objectID = [(ICInlineAttachment *)self objectID];
    [defaultCenter addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICInlineAttachmentDataChangedNotification" object:objectID];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidAddHashtagNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidPurgeHashtagNotification" object:0];

    [(ICInlineAttachment *)self setDidAddAttachmentDataChangedObservers:1];
  }
}

- (void)awakeFromInsert
{
  v7.receiver = self;
  v7.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v7 awakeFromInsert];
  if (![(ICInlineAttachment *)self didAddAttachmentDataChangedObservers])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objectID = [(ICInlineAttachment *)self objectID];
    [defaultCenter addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICInlineAttachmentDataChangedNotification" object:objectID];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidAddHashtagNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidPurgeHashtagNotification" object:0];

    [(ICInlineAttachment *)self setDidAddAttachmentDataChangedObservers:1];
  }
}

- (void)willTurnIntoFault
{
  [(ICInlineAttachment *)self markDisplayTextNeedsUpdate];
  v3.receiver = self;
  v3.super_class = ICInlineAttachment;
  [(ICInlineAttachment *)&v3 willTurnIntoFault];
}

- (_NSRange)animatableRange
{
  if ([(ICInlineAttachment *)self isMentionAttachment])
  {
    displayText = [(ICInlineAttachment *)self displayText];
    ic_range = [displayText ic_range];
    v6 = v5;
  }

  else
  {
    if (![(ICInlineAttachment *)self isCalculateResultAttachment])
    {
      v6 = 0;
      ic_range = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    displayText2 = [(ICInlineAttachment *)self displayText];
    ic_calculateEqualsSignString = [MEMORY[0x277CCACA8] ic_calculateEqualsSignString];
    v9 = [displayText2 rangeOfString:ic_calculateEqualsSignString];
    v11 = v10;

    ic_range = v9 + v11;
    displayText = [(ICInlineAttachment *)self displayText];
    v6 = [displayText length] - (v9 + v11);
  }

LABEL_7:
  v12 = ic_range;
  v13 = v6;
  result.length = v13;
  result.location = v12;
  return result;
}

- (NSAttributedString)searchableTextContentInNote
{
  altText = [(ICInlineAttachment *)self altText];
  ic_stringByRemovingLanguageDirectionCharacters = [altText ic_stringByRemovingLanguageDirectionCharacters];
  v4 = ic_stringByRemovingLanguageDirectionCharacters;
  if (ic_stringByRemovingLanguageDirectionCharacters)
  {
    v5 = ic_stringByRemovingLanguageDirectionCharacters;
  }

  else
  {
    v5 = &stru_2827172C0;
  }

  v6 = v5;

  ic_thinSpaceCharacterString = [MEMORY[0x277CCACA8] ic_thinSpaceCharacterString];
  v8 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:ic_thinSpaceCharacterString withString:&stru_2827172C0];

  v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];

  return v9;
}

- (_NSRange)displayTextRangeForSearchRange:(_NSRange)range inSearchableString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  note = [(ICInlineAttachment *)self note];
  v9 = [note rangeForAttachment:self];
  v11 = v10;

  parentAttachment = [(ICInlineAttachment *)self parentAttachment];

  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (!parentAttachment && v11)
  {
    v23[0] = 0;
    v23[1] = 0;
    v15 = [stringCopy attribute:@"ICAttachmentSearchable" atIndex:location effectiveRange:v23];
    note2 = [(ICInlineAttachment *)self note];
    v17 = [note2 textOffsetAtSearchIndex:v23[0] inSearchableString:stringCopy];

    nonNilAltText = [(ICInlineAttachment *)self nonNilAltText];
    v26.location = [nonNilAltText ic_range];
    v26.length = v19;
    v24.location = location - v9 - v17;
    v24.length = length;
    v20 = NSIntersectionRange(v24, v26);
    v14 = v20.location;
    v13 = v20.length;
  }

  v21 = v14;
  v22 = v13;
  result.length = v22;
  result.location = v21;
  return result;
}

- (void)updateMarkedForDeletionStateInlineAttachmentIsInUse:(BOOL)use
{
  typeUTI = [(ICInlineAttachment *)self typeUTI];

  if (typeUTI)
  {
    if (use)
    {
      needsInitialFetchFromCloud = 1;
    }

    else
    {
      needsInitialFetchFromCloud = [(ICInlineAttachment *)self needsInitialFetchFromCloud];
    }

    if ([(ICInlineAttachment *)self markedForDeletion]&& needsInitialFetchFromCloud)
    {

      [(ICInlineAttachment *)self unmarkForDeletion];
    }

    else if ((([(ICInlineAttachment *)self markedForDeletion]| needsInitialFetchFromCloud) & 1) == 0)
    {

      [(ICInlineAttachment *)self markForDeletion];
    }
  }
}

- (void)markForDeletion
{
  v4.receiver = self;
  v4.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v4 markForDeletion];
  [(ICInlineAttachment *)self propagateDeletionToHashtagForMarkForDeletion:1];
  note = [(ICInlineAttachment *)self note];
  [note resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (void)unmarkForDeletion
{
  v4.receiver = self;
  v4.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v4 unmarkForDeletion];
  [(ICInlineAttachment *)self propagateDeletionToHashtagForMarkForDeletion:0];
  note = [(ICInlineAttachment *)self note];
  [note resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (id)ic_loggingValues
{
  v15.receiver = self;
  v15.super_class = ICInlineAttachment;
  ic_loggingValues = [(ICCloudSyncingObject *)&v15 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICInlineAttachment *)self managedObjectContext];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __38__ICInlineAttachment_ic_loggingValues__block_invoke;
  v12 = &unk_278194AD8;
  v13 = v4;
  selfCopy = self;
  v6 = v4;
  [managedObjectContext performBlockAndWait:&v9];

  v7 = [v6 copy];

  return v7;
}

void __38__ICInlineAttachment_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) tokenContentIdentifier];
  v3 = [v2 ic_sha256];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"nil";
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"tokenContentIdentifierHash"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 40) displayText];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"displayTextLength"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 40) altText];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"altTextLength"];

  v12 = [*(a1 + 40) creationDate];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"creationDate"];

  if ([*(a1 + 40) isUnsupported])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isUnsupported"];
  }

  if ([*(a1 + 40) isHashtagAttachment])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isHashtagAttachment"];
  }

  if ([*(a1 + 40) isMentionAttachment])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isMentionAttachment"];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 40), "mentionNotificationState")}];
    [*(a1 + 32) setObject:v15 forKeyedSubscript:@"mentionNotificationState"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 40), "mentionNotificationAttemptCount")}];
    [*(a1 + 32) setObject:v16 forKeyedSubscript:@"mentionNotificationAttemptCount"];
  }
}

+ (unint64_t)countOfVisibleInlineAttachmentsForHashtagStandardizedContent:(id)content includingTrash:(BOOL)trash account:(id)account
{
  accountCopy = account;
  v9 = [self predicateForTokenContentIdentifier:content];
  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.account == %@", accountCopy];
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v12 = [MEMORY[0x277CBEB18] arrayWithObjects:{accountCopy, v9, predicateForVisibleObjects, 0}];
  if (!trash)
  {
    managedObjectContext = [accountCopy managedObjectContext];
    v14 = [ICBaseAttachment predicateForVisibleAttachmentsInContext:managedObjectContext];

    [v12 addObject:v14];
  }

  v15 = MEMORY[0x277CCA920];
  v16 = [v12 copy];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  fetchRequest = [self fetchRequest];
  [fetchRequest setPredicate:v17];
  [fetchRequest setIncludesSubentities:0];
  managedObjectContext2 = [accountCopy managedObjectContext];
  v23 = 0;
  v20 = [managedObjectContext2 countForFetchRequest:fetchRequest error:&v23];
  v21 = v23;

  if (v21)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment countOfVisibleInlineAttachmentsForHashtagStandardizedContent:includingTrash:account:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch count of inline attachments for hashtag standardized content: %@", v21}];
    v20 = 0;
  }

  return v20;
}

+ (BOOL)isHashtagStandardizedContent:(id)content usedInAccount:(id)account
{
  accountCopy = account;
  contentCopy = content;
  v8 = [self countOfNonTrashFolderVisibleInlineAttachmentsForHashtagStandardizedContent:contentCopy account:accountCopy];
  v9 = [ICFolder visibleSmartFoldersForHashtagStandardizedContent:contentCopy account:accountCopy];

  v10 = [v9 count];
  return (v8 | v10) != 0;
}

- (void)propagateDeletionToHashtagForMarkForDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  if ([(ICInlineAttachment *)self isHashtagAttachment])
  {
    note = [(ICInlineAttachment *)self note];
    account = [note account];

    v7 = objc_opt_class();
    tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
    v9 = [v7 isHashtagStandardizedContent:tokenContentIdentifier usedInAccount:account];

    if (deletionCopy)
    {
      if ((v9 & 1) == 0)
      {
        tokenContentIdentifier2 = [(ICInlineAttachment *)self tokenContentIdentifier];
        note2 = [(ICInlineAttachment *)self note];
        account2 = [note2 account];
        v13 = [ICHashtag hashtagWithStandardizedContent:tokenContentIdentifier2 account:account2];

        if (([v13 markedForDeletion] & 1) == 0)
        {
          v14 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [ICInlineAttachment propagateDeletionToHashtagForMarkForDeletion:v13];
          }

          [v13 markForDeletion];
        }

LABEL_13:
      }
    }

    else if (v9)
    {
      tokenContentIdentifier3 = [(ICInlineAttachment *)self tokenContentIdentifier];
      v13 = [ICHashtag hashtagWithStandardizedContent:tokenContentIdentifier3 onlyVisible:0 account:account];

      if ([v13 markedForDeletion])
      {
        v16 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [ICInlineAttachment propagateDeletionToHashtagForMarkForDeletion:v13];
        }

        [v13 unmarkForDeletion];
      }

      goto LABEL_13;
    }
  }
}

+ (id)recentlyUsedDatesForHashtagsStandardizedContents:(id)contents context:(id)context
{
  v53[1] = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  contextCopy = context;
  v8 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICInlineAttachment recentlyUsedDatesForHashtagsStandardizedContents:v8 context:?];
  }

  v9 = MEMORY[0x277CCA9C0];
  v10 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"creationDate"];
  v53[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v12 = [v9 expressionForFunction:@"max:" arguments:v11];

  v13 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v13 setName:@"maxCreationDate"];
  v41 = v12;
  [v13 setExpression:v12];
  [v13 setExpressionResultType:900];
  contentsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"tokenContentIdentifier IN %@", contentsCopy];
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v16 = MEMORY[0x277CCA920];
  v39 = predicateForVisibleObjects;
  v40 = contentsCopy;
  v52[0] = contentsCopy;
  v52[1] = predicateForVisibleObjects;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  fetchRequest = [self fetchRequest];
  v38 = v18;
  [fetchRequest setPredicate:v18];
  [fetchRequest setPropertiesToGroupBy:&unk_282747FE8];
  v51[0] = @"tokenContentIdentifier";
  v51[1] = v13;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  [fetchRequest setPropertiesToFetch:v20];

  [fetchRequest setResultType:2];
  v49 = 0;
  v21 = [contextCopy executeFetchRequest:fetchRequest error:&v49];
  v22 = v49;
  v42 = contextCopy;
  v43 = contentsCopy;
  v37 = v22;
  if (v22)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment recentlyUsedDatesForHashtagsStandardizedContents:context:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch last used dates for hashtags: %@", v22}];
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_DEFAULT, "Fetched last used dates for hashtags", buf, 2u);
    }
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v44 + 1) + 8 * i);
        v31 = [v30 objectForKeyedSubscript:@"tokenContentIdentifier"];
        v32 = [v30 objectForKeyedSubscript:@"maxCreationDate"];
        v33 = v32;
        if (v31)
        {
          v34 = v32 == 0;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          [v24 setObject:v32 forKeyedSubscript:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v27);
  }

  v35 = [v24 copy];

  return v35;
}

+ (void)regenerateTokenContentIdentifierForHashtagAttachmentsInContext:(id)context currentTokenContentIdentifier:(id)identifier save:(BOOL)save
{
  saveCopy = save;
  v40[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = [self predicateForTokenContentIdentifier:identifier];
  v10 = [self predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v12 = MEMORY[0x277CCA920];
  v40[0] = v9;
  v40[1] = v10;
  v40[2] = predicateForVisibleObjects;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [self ic_objectsMatchingPredicate:v14 context:contextCopy];
  if ([v15 count])
  {
    v34 = v14;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v28 = v15;
      v29 = predicateForVisibleObjects;
      v30 = saveCopy;
      v31 = v10;
      v32 = v9;
      v33 = contextCopy;
      v19 = 0;
      v20 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          altText = [v22 altText];

          if (altText)
          {
            altText2 = [v22 altText];
            v25 = [ICHashtag standardizedHashtagRepresentationForDisplayText:altText2];

            tokenContentIdentifier = [v22 tokenContentIdentifier];
            v27 = [tokenContentIdentifier isEqualToString:v25];

            if ((v27 & 1) == 0)
            {
              [v22 setTokenContentIdentifier:v25];
              [v22 updateChangeCountWithReason:@"Changed token content identifier"];
              v19 = 1;
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);

      v9 = v32;
      contextCopy = v33;
      v10 = v31;
      v15 = v28;
      predicateForVisibleObjects = v29;
      v14 = v34;
      if ((v30 & v19) == 1)
      {
        [v33 ic_save];
      }
    }

    else
    {
    }
  }
}

- (NSString)calculateState
{
  if (![(ICInlineAttachment *)self isCalculateResultAttachment]&& ![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment || self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment calculateState]" simulateCrash:1 showAlert:0 format:@"Getting Calculate state for inline attachment of wrong type"];
  }

  return [(ICInlineAttachment *)self tokenContentIdentifier];
}

- (void)setCalculateState:(id)state
{
  stateCopy = state;
  if (![(ICInlineAttachment *)self isCalculateResultAttachment]&& ![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment || self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment setCalculateState:]" simulateCrash:1 showAlert:0 format:@"Setting Calculate state for inline attachment of wrong type"];
  }

  [(ICInlineAttachment *)self setTokenContentIdentifier:stateCopy];
}

- (BOOL)isValidCalculateAttachment
{
  tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
  if ([tokenContentIdentifier isEqual:@"ICInlineAttachmentCalculateStateValidLTR"])
  {
    v4 = 1;
  }

  else
  {
    tokenContentIdentifier2 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v4 = [tokenContentIdentifier2 isEqual:@"ICInlineAttachmentCalculateStateValidRTL"];
  }

  return v4;
}

- (BOOL)isRightToLeftCalculateAttachment
{
  tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
  if ([tokenContentIdentifier isEqual:@"ICInlineAttachmentCalculateStateValidRTL"])
  {
    v4 = 1;
  }

  else
  {
    tokenContentIdentifier2 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v4 = [tokenContentIdentifier2 isEqual:@"ICInlineAttachmentCalculateStateInvalidRTL"];
  }

  return v4;
}

- (BOOL)updateCalculateResult:(id)result isRightToLeft:(BOOL)left
{
  leftCopy = left;
  resultCopy = result;
  if (![(ICInlineAttachment *)self isCalculateResultAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment" functionName:"-[ICInlineAttachment updateCalculateResult:isRightToLeft:]" simulateCrash:1 showAlert:0 format:@"Updating Calculate result for inline attachment of wrong type"];
  }

  formattedResult = [resultCopy formattedResult];
  v8 = MEMORY[0x277CCACA8];
  ic_calculateEqualsSignString = [MEMORY[0x277CCACA8] ic_calculateEqualsSignString];
  if (formattedResult)
  {
    formattedResult2 = [resultCopy formattedResult];
    v11 = [v8 stringWithFormat:@"%@%@", ic_calculateEqualsSignString, formattedResult2];

    ic_calculateEqualsSignString = v11;
  }

  v12 = [(ICInlineAttachment *)self updateCalculateText:ic_calculateEqualsSignString isValid:resultCopy != 0 isRightToLeft:leftCopy];
  return v12;
}

- (BOOL)updateCalculateGraphExpressionText:(id)text
{
  textCopy = text;
  if (![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment updateCalculateGraphExpressionText:]" simulateCrash:1 showAlert:0 format:@"Updating Calculate text for inline attachment of wrong type"];
  }

  altText = [(ICInlineAttachment *)self altText];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == textCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = textCopy;
  }

  v8 = v7;
  if (v6 == altText)
  {
    v9 = 0;
  }

  else
  {
    v9 = altText;
  }

  v10 = v9;
  if (!(v8 | v10))
  {

    goto LABEL_17;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

    goto LABEL_19;
  }

  v14 = [v8 isEqual:v10];

  if (v14)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_23;
  }

LABEL_19:
  [(ICInlineAttachment *)self setAltText:textCopy];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objectID = [(ICInlineAttachment *)self objectID];
    [defaultCenter postNotificationName:@"ICInlineAttachmentDataChangedNotification" object:objectID];
  }

  else
  {
    v17 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
  }

  v13 = 1;
LABEL_23:

  return v13;
}

- (BOOL)updateCalculateText:(id)text isValid:(BOOL)valid isRightToLeft:(BOOL)left
{
  leftCopy = left;
  validCopy = valid;
  textCopy = text;
  if (![(ICInlineAttachment *)self isCalculateResultAttachment]&& ![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment || self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment updateCalculateText:isValid:isRightToLeft:]" simulateCrash:1 showAlert:0 format:@"Updating Calculate text for inline attachment of wrong type"];
  }

  v9 = @"ICInlineAttachmentCalculateStateValidLTR";
  if (leftCopy)
  {
    v9 = @"ICInlineAttachmentCalculateStateValidRTL";
  }

  v10 = @"ICInlineAttachmentCalculateStateInvalidRTL";
  if (!leftCopy)
  {
    v10 = @"ICInlineAttachmentCalculateStateInvalidLTR";
  }

  if (!validCopy)
  {
    v9 = v10;
  }

  v11 = v9;
  calculateState = [(ICInlineAttachment *)self calculateState];
  v13 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;
  if (v13 == calculateState)
  {
    v16 = 0;
  }

  else
  {
    v16 = calculateState;
  }

  v17 = v16;
  if (v13 == v11 && v17 == 0)
  {

    goto LABEL_27;
  }

  v19 = v17;
  if (v13 != v11 && v17 != 0)
  {
    v22 = [(__CFString *)v15 isEqual:v17];

    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_30;
  }

LABEL_29:
  [(ICInlineAttachment *)self setCalculateState:v11];
  v21 = 1;
LABEL_30:
  altText = [(ICInlineAttachment *)self altText];
  if (v13 == textCopy)
  {
    v24 = 0;
  }

  else
  {
    v24 = textCopy;
  }

  v25 = v24;
  if (v13 == altText)
  {
    v26 = 0;
  }

  else
  {
    v26 = altText;
  }

  v27 = v26;
  if (v25 | v27)
  {
    v28 = v27;
    if (v25)
    {
      v29 = v27 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
    }

    else
    {
      v31 = [v25 isEqual:v27];

      if (v31)
      {
        if (v21)
        {
          goto LABEL_49;
        }

LABEL_44:
        v30 = 0;
        goto LABEL_53;
      }
    }

    [(ICInlineAttachment *)self setAltText:textCopy];
  }

  else
  {

    if ((v21 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_49:
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objectID = [(ICInlineAttachment *)self objectID];
    [defaultCenter postNotificationName:@"ICInlineAttachmentDataChangedNotification" object:objectID];
  }

  else
  {
    v34 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
  }

  v30 = 1;
LABEL_53:

  return v30;
}

+ (void)purgeAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  if (v7)
  {
    note = [v7 note];
    [note removeInlineAttachmentsObject:v7];

    parentAttachment = [v7 parentAttachment];
    [parentAttachment removeInlineAttachmentsObject:v7];

    managedObjectContext = [v7 managedObjectContext];
    [managedObjectContext deleteObject:v7];
  }
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  dCopy = d;
  stateCopy = state;
  v38.receiver = self;
  v38.super_class = ICInlineAttachment;
  v13 = [(ICCloudSyncingObject *)&v38 mergeCloudKitRecord:recordCopy accountID:dCopy approach:approach mergeableFieldState:stateCopy];
  if (v13)
  {
    [(ICInlineAttachment *)self writeMergeableFieldStateIfNecessary:stateCopy];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(ICInlineAttachment *)self setIdentifier:recordName];

    objc_opt_class();
    encryptedValues = [recordCopy encryptedValues];
    v17 = [encryptedValues objectForKeyedSubscript:@"UTIEncrypted"];
    v18 = ICCheckedDynamicCast();
    ic_stringValue = [v18 ic_stringValue];
    [(ICInlineAttachment *)self setTypeUTI:ic_stringValue];

    managedObjectContext = [(ICInlineAttachment *)self managedObjectContext];
    v21 = [objc_opt_class() noteFromAttachmentRecord:recordCopy accountID:dCopy context:managedObjectContext];
    if (v21)
    {
      [(ICInlineAttachment *)self setNote:v21];
      note = [(ICInlineAttachment *)self note];
      [note addInlineAttachmentsObject:self];
    }

    v23 = [(ICInlineAttachment *)self parentAttachmentFromRecord:recordCopy accountID:dCopy context:managedObjectContext];
    if (v23)
    {
      [(ICBaseAttachment *)self setParentAttachment:v23];
      parentAttachment = [(ICInlineAttachment *)self parentAttachment];
      [parentAttachment addInlineAttachmentsObject:self];
    }

    v25 = [recordCopy objectForKeyedSubscript:@"CreationDate"];
    [(ICInlineAttachment *)self setCreationDate:v25];

    if (([(ICInlineAttachment *)self isPasswordProtected]& 1) == 0)
    {
      objc_opt_class();
      encryptedValues2 = [recordCopy encryptedValues];
      [encryptedValues2 objectForKeyedSubscript:@"AltTextEncrypted"];
      v27 = v36 = v21;
      v28 = ICCheckedDynamicCast();
      [v28 ic_stringValue];
      v29 = v37 = managedObjectContext;
      [(ICInlineAttachment *)self setAltText:v29];

      objc_opt_class();
      encryptedValues3 = [recordCopy encryptedValues];
      v31 = [encryptedValues3 objectForKeyedSubscript:@"TokenContentIdentifierEncrypted"];
      v32 = ICCheckedDynamicCast();
      ic_stringValue2 = [v32 ic_stringValue];
      [(ICInlineAttachment *)self setTokenContentIdentifier:ic_stringValue2];

      managedObjectContext = v37;
      v21 = v36;
    }

    v34 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification", v36];
  }

  return v13;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  v31.receiver = self;
  v31.super_class = ICInlineAttachment;
  stateCopy = state;
  v7 = [(ICCloudSyncingObject *)&v31 makeCloudKitRecordForApproach:approach mergeableFieldState:stateCopy];
  note = [(ICInlineAttachment *)self note];
  recordID = [note recordID];

  parentAttachment = [(ICInlineAttachment *)self parentAttachment];
  recordID2 = [parentAttachment recordID];

  [(ICInlineAttachment *)self writeMergeableFieldStateIfNecessary:stateCopy];
  v12 = MEMORY[0x277CBC070];
  if (recordID)
  {
    v13 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID action:*MEMORY[0x277CBC070]];
    [v7 setObject:v13 forKeyedSubscript:@"Note"];
  }

  if (recordID2)
  {
    v14 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID2 action:*v12];
    [v7 setObject:v14 forKeyedSubscript:@"ParentAttachment"];
  }

  altText = [(ICInlineAttachment *)self altText];

  if (altText)
  {
    altText2 = [(ICInlineAttachment *)self altText];
    ic_dataValue = [altText2 ic_dataValue];
    encryptedValues = [v7 encryptedValues];
    [encryptedValues setObject:ic_dataValue forKeyedSubscript:@"AltTextEncrypted"];
  }

  creationDate = [(ICCloudSyncingObject *)self creationDate];

  if (creationDate)
  {
    creationDate2 = [(ICCloudSyncingObject *)self creationDate];
    [v7 setObject:creationDate2 forKeyedSubscript:@"CreationDate"];
  }

  tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];

  if (tokenContentIdentifier)
  {
    tokenContentIdentifier2 = [(ICInlineAttachment *)self tokenContentIdentifier];
    ic_dataValue2 = [tokenContentIdentifier2 ic_dataValue];
    encryptedValues2 = [v7 encryptedValues];
    [encryptedValues2 setObject:ic_dataValue2 forKeyedSubscript:@"TokenContentIdentifierEncrypted"];
  }

  typeUTI = [(ICInlineAttachment *)self typeUTI];

  if (typeUTI)
  {
    typeUTI2 = [(ICInlineAttachment *)self typeUTI];
    ic_dataValue3 = [typeUTI2 ic_dataValue];
    encryptedValues3 = [v7 encryptedValues];
    [encryptedValues3 setObject:ic_dataValue3 forKeyedSubscript:@"UTIEncrypted"];
  }

  else
  {
    v29 = MEMORY[0x277D36198];
    typeUTI2 = [(ICCloudSyncingObject *)self loggingDescription];
    [v29 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICInlineAttachment(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:{@"Trying to create a record for an inline attachment that is of an unknown type: %@", typeUTI2}];
  }

  return v7;
}

- (void)writeMergeableFieldStateIfNecessary:(id)necessary
{
  if (necessary)
  {
    necessaryCopy = necessary;
    identifier = [(ICInlineAttachment *)self identifier];
    v5 = [identifier dataUsingEncoding:4];
    [necessaryCopy setObject:v5 forKey:@"TokenContentIdentifierEncrypted"];
  }
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  contextCopy = context;
  recordName = [d recordName];
  v8 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:recordName context:contextCopy];

  return v8;
}

+ (id)noteFromAttachmentRecord:(id)record accountID:(id)d context:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  v11 = [recordCopy objectForKeyedSubscript:@"Note"];
  v12 = v11;
  if (v11)
  {
    recordID = [v11 recordID];
    v14 = [ICNote existingCloudObjectForRecordID:recordID accountID:dCopy context:contextCopy];

    if (v14)
    {
      goto LABEL_10;
    }

    v15 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      className = [self className];
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      recordID3 = [v12 recordID];
      recordName2 = [recordID3 recordName];
      *buf = 138413058;
      v29 = className;
      v30 = 2112;
      v31 = recordName;
      v32 = 2112;
      v33 = recordName2;
      v34 = 2112;
      v35 = dCopy;
      _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a note (%@) that we don't know about yet in account ID %@", buf, 0x2Au);
    }

    v16 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:contextCopy];
    v14 = [ICNote newNoteWithoutIdentifierInAccount:v16];
    recordID4 = [v12 recordID];
    recordName3 = [recordID4 recordName];
    [v14 setIdentifier:recordName3];

    [v14 setNeedsInitialFetchFromCloud:1];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      className2 = [self className];
      recordID5 = [recordCopy recordID];
      recordName4 = [recordID5 recordName];
      *buf = 138412802;
      v29 = className2;
      v30 = 2112;
      v31 = recordName4;
      v32 = 2112;
      v33 = dCopy;
      _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Found an %@ (%@) in the cloud with no note in account ID %@", buf, 0x20u);
    }

    v14 = 0;
  }

LABEL_10:

  return v14;
}

- (id)parentAttachmentFromRecord:(id)record accountID:(id)d context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  v11 = [recordCopy objectForKeyedSubscript:@"ParentAttachment"];
  v12 = v11;
  if (v11)
  {
    recordID = [v11 recordID];
    v14 = [ICAttachment existingCloudObjectForRecordID:recordID accountID:dCopy context:contextCopy];

    if (!v14)
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        className = [(ICInlineAttachment *)self className];
        recordID2 = [recordCopy recordID];
        recordName = [recordID2 recordName];
        recordID3 = [v12 recordID];
        recordName2 = [recordID3 recordName];
        *buf = 138412802;
        v26 = className;
        v27 = 2112;
        v28 = recordName;
        v29 = 2112;
        v30 = recordName2;
        _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a parent attachment (%@) that we don't know about yet", buf, 0x20u);
      }

      recordID4 = [v12 recordID];
      recordName3 = [recordID4 recordName];
      note = [(ICInlineAttachment *)self note];
      v14 = [(ICBaseAttachment *)ICAttachment newAttachmentWithIdentifier:recordName3 note:note];

      [v14 setNeedsInitialFetchFromCloud:1];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v10 = [self noteFromAttachmentRecord:recordCopy accountID:dCopy context:context];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v13 = [v10 addInlineAttachmentWithIdentifier:recordName];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [v13 setCreationDate:distantPast];

  [v13 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];
  [v13 setServerRecord:recordCopy];

  [v13 setInCloud:1];
  [v13 clearChangeCountWithReason:@"Created inline attachment"];
  [v13 updateParentReferenceIfNecessary];
  v15 = [v13 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];

  return v13;
}

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force
{
  v7.receiver = self;
  v7.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v7 objectWasFetchedFromCloudWithRecord:record accountID:d force:force];
  v6 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];
}

- (BOOL)shouldAlwaysDownloadAssets
{
  selfCopy = self;
  managedObjectContext = [(ICInlineAttachment *)self managedObjectContext];
  LOBYTE(selfCopy) = [ICAssetSignature hasLocallyStoredAssetsInObject:selfCopy context:managedObjectContext];

  return selfCopy;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICInlineAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ICInlineAttachment_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __49__ICInlineAttachment_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isInCloud])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) note];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
  }
}

- (BOOL)hasAllMandatoryFields
{
  v16.receiver = self;
  v16.super_class = ICInlineAttachment;
  hasAllMandatoryFields = [(ICCloudSyncingObject *)&v16 hasAllMandatoryFields];
  note = [(ICInlineAttachment *)self note];
  v5 = hasAllMandatoryFields & [note hasAllMandatoryFields];

  typeUTI = [(ICInlineAttachment *)self typeUTI];
  if (![typeUTI length])
  {
    v5 = 0;
  }

  parentAttachment = [(ICInlineAttachment *)self parentAttachment];

  if (parentAttachment)
  {
    parentAttachment2 = [(ICInlineAttachment *)self parentAttachment];
    v5 &= [parentAttachment2 hasAllMandatoryFields];
  }

  if ([(ICInlineAttachment *)self isPasswordProtected])
  {
    encryptedValuesJSON = [(ICInlineAttachment *)self encryptedValuesJSON];
    v10 = [encryptedValuesJSON length] == 0;
  }

  else
  {
    tokenContentIdentifier = [(ICInlineAttachment *)self tokenContentIdentifier];
    v12 = [tokenContentIdentifier length];

    encryptedValuesJSON = [(ICInlineAttachment *)self altText];
    v13 = [encryptedValuesJSON length];
    if (v12)
    {
      v10 = v13 == 0;
    }

    else
    {
      v10 = 1;
    }
  }

  v14 = !v10;

  return v5 & v14;
}

+ (void)canonicalHashtagAttachmentsInContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Failed fetching canonical hashtag attachment identifiers: %@", &v4, 0xCu);
}

- (void)propagateDeletionToHashtagForMarkForDeletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Unmarking hashtag for deletion because there is a new reference to it: %@", v4, v5, v6, v7, 2u);
}

- (void)propagateDeletionToHashtagForMarkForDeletion:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Marking hashtag for deletion because there are no more references to it: %@", v4, v5, v6, v7, 2u);
}

@end