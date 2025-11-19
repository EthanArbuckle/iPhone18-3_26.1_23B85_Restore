@interface ICInlineAttachment
+ (BOOL)isHashtagStandardizedContent:(id)a3 usedInAccount:(id)a4;
+ (id)canonicalHashtagAttachmentsInContext:(id)a3;
+ (id)cloneInlineAttachmentWithIdentifier:(id)a3 context:(id)a4;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)existingInlineAttachmentWithTokenContentIdentifier:(id)a3 typeUTI:(id)a4 context:(id)a5;
+ (id)newAttachmentWithIdentifier:(id)a3 typeUTI:(id)a4 altText:(id)a5 tokenContentIdentifier:(id)a6 note:(id)a7 parentAttachment:(id)a8;
+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)a3 altText:(id)a4 note:(id)a5 parentAttachment:(id)a6 rightToLeft:(BOOL)a7;
+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)a3 note:(id)a4 parentAttachment:(id)a5 rightToLeft:(BOOL)a6;
+ (id)newCalculateResultAttachmentWithIdentifier:(id)a3 note:(id)a4 parentAttachment:(id)a5 rightToLeft:(BOOL)a6;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newHashtagAttachmentWithIdentifier:(id)a3 forHashtag:(id)a4 note:(id)a5 parentAttachment:(id)a6;
+ (id)newHashtagAttachmentWithIdentifier:(id)a3 hashtagText:(id)a4 creatingHashtagIfNecessary:(BOOL)a5 note:(id)a6 parentAttachment:(id)a7;
+ (id)newLinkAttachmentWithIdentifier:(id)a3 toNote:(id)a4 fromNote:(id)a5 parentAttachment:(id)a6;
+ (id)newMentionAttachmentWithIdentifier:(id)a3 mentionText:(id)a4 userRecordName:(id)a5 note:(id)a6 parentAttachment:(id)a7;
+ (id)noteFromAttachmentRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)predicateForMentionsInContext:(id)a3;
+ (id)recentlyUsedDatesForHashtagsStandardizedContents:(id)a3 context:(id)a4;
+ (unint64_t)countOfVisibleInlineAttachmentsForHashtagStandardizedContent:(id)a3 includingTrash:(BOOL)a4 account:(id)a5;
+ (void)changeLinkDestinationFromNote:(id)a3 toNote:(id)a4;
+ (void)enumerateInlineAttachmentsInContext:(id)a3 typeUTI:(id)a4 tokenContentIdentifier:(id)a5 batchSize:(unint64_t)a6 visibleOnly:(BOOL)a7 saveAfterBatch:(BOOL)a8 usingBlock:(id)a9;
+ (void)enumerateLinksToNote:(id)a3 batchSize:(unint64_t)a4 visibleOnly:(BOOL)a5 saveAfterBatch:(BOOL)a6 context:(id)a7 usingBlock:(id)a8;
+ (void)purgeAttachment:(id)a3;
+ (void)regenerateDerivedDataForInlineAttachments:(id)a3 reason:(id)a4;
+ (void)regenerateTokenContentIdentifierForHashtagAttachmentsInContext:(id)a3 currentTokenContentIdentifier:(id)a4 save:(BOOL)a5;
+ (void)reviveOrTouchHashtag:(id)a3;
- (BOOL)hasAllMandatoryFields;
- (BOOL)isCalculateGraphExpressionAttachment;
- (BOOL)isCalculateResultAttachment;
- (BOOL)isHashtagAttachment;
- (BOOL)isInICloudAccount;
- (BOOL)isLinkAttachment;
- (BOOL)isMentionAttachment;
- (BOOL)isRightToLeftCalculateAttachment;
- (BOOL)isValidCalculateAttachment;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)saveToArchive:(void *)a3 dataPersister:(id)a4 error:(id *)a5;
- (BOOL)shouldAlwaysDownloadAssets;
- (BOOL)updateCalculateGraphExpressionText:(id)a3;
- (BOOL)updateCalculateResult:(id)a3 isRightToLeft:(BOOL)a4;
- (BOOL)updateCalculateText:(id)a3 isValid:(BOOL)a4 isRightToLeft:(BOOL)a5;
- (NSAttributedString)searchableTextContentInNote;
- (NSString)altText;
- (NSString)calculateState;
- (NSString)displayText;
- (NSString)tokenContentIdentifier;
- (_NSRange)animatableRange;
- (_NSRange)displayTextRangeForSearchRange:(_NSRange)a3 inSearchableString:(id)a4;
- (id)clone;
- (id)fallbackDisplayText;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)nonNilAltText;
- (id)parentAttachmentFromRecord:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)parentEncryptableObject;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3;
- (signed)attachmentType;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)loadFromArchive:(const void *)a3 dataPersister:(id)a4 withIdentifierMap:(id)a5;
- (void)markDisplayTextNeedsUpdate;
- (void)markForDeletion;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
- (void)propagateDeletionToHashtagForMarkForDeletion:(BOOL)a3;
- (void)setAltText:(id)a3;
- (void)setCalculateState:(id)a3;
- (void)setTokenContentIdentifier:(id)a3;
- (void)unmarkForDeletion;
- (void)updateMarkedForDeletionStateInlineAttachmentIsInUse:(BOOL)a3;
- (void)willTurnIntoFault;
- (void)writeMergeableFieldStateIfNecessary:(id)a3;
@end

@implementation ICInlineAttachment

- (void)loadFromArchive:(const void *)a3 dataPersister:(id)a4 withIdentifierMap:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (*(a3 + 32))
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = *(a3 + 5);
    v13 = *(v12 + 23);
    if (v13 < 0)
    {
      v12 = *v12;
      v13 = *(*(a3 + 5) + 8);
    }

    v14 = [v11 initWithBytes:v12 length:v13 encoding:4];
    if (v9)
    {
      v15 = [(ICInlineAttachment *)self identifier];
      [v9 setObject:v15 forKeyedSubscript:v14];
    }

    v10 = v14;
  }

  else
  {
    v10 = &stru_2827172C0;
  }

  if ((*(a3 + 8) & 0x1000000) != 0)
  {
    v16 = *(a3 + 29);
  }

  else
  {
    v16 = 0;
  }

  [(ICCloudSyncingObject *)self requireMinimumSupportedVersionAndPropagateToChildObjects:v16];
  v17 = *(a3 + 8);
  if ((v17 & 0x40) != 0)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = *(a3 + 10);
    v20 = *(v19 + 23);
    if (v20 < 0)
    {
      v19 = *v19;
      v20 = *(*(a3 + 10) + 8);
    }

    v21 = [v18 initWithBytes:v19 length:v20 encoding:4];
    [(ICInlineAttachment *)self setTypeUTI:v21];

    v17 = *(a3 + 8);
  }

  if ((v17 & 0x20) != 0)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = *(a3 + 9);
    v24 = *(v23 + 23);
    if (v24 < 0)
    {
      v23 = *v23;
      v24 = *(*(a3 + 9) + 8);
    }

    v25 = [v22 initWithBytes:v23 length:v24 encoding:4];
    [(ICInlineAttachment *)self setAltText:v25];
  }

  if ((*(a3 + 36) & 2) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277CBEA90]);
    v27 = *(a3 + 38);
    v28 = *(v27 + 23);
    if (v28 < 0)
    {
      v27 = *v27;
      v28 = *(*(a3 + 38) + 8);
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
        v38 = [(ICInlineAttachment *)self className];
        v39 = [(ICInlineAttachment *)self identifier];
        *buf = 138412802;
        v42 = v38;
        v43 = 2112;
        v44 = v39;
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

- (BOOL)saveToArchive:(void *)a3 dataPersister:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(ICInlineAttachment *)self identifier];

  if (v9)
  {
    v10 = [(ICInlineAttachment *)self identifier];
    v11 = [v10 UTF8String];
    *(a3 + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v12 = v11;
    v13 = *(a3 + 5);
    if (v13 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v13, v12);
  }

  v14 = [(ICInlineAttachment *)self intrinsicNotesVersionForScenario:1];
  if (v14)
  {
    *(a3 + 8) |= 0x1000000u;
    *(a3 + 29) = v14;
  }

  v15 = [(ICInlineAttachment *)self typeUTI];

  if (v15)
  {
    v16 = [(ICInlineAttachment *)self typeUTI];
    v17 = [v16 UTF8String];
    *(a3 + 8) |= 0x40u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v18 = v17;
    v19 = *(a3 + 10);
    if (v19 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v19, v18);
  }

  v20 = [(ICInlineAttachment *)self altText];

  if (v20)
  {
    v21 = [(ICInlineAttachment *)self altText];
    v22 = [v21 UTF8String];
    *(a3 + 8) |= 0x20u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v23 = v22;
    v24 = *(a3 + 9);
    if (v24 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v24, v23);
  }

  v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v26 = MEMORY[0x277CCABB0];
  v27 = [(ICCloudSyncingObject *)self creationDate];
  [v27 timeIntervalSinceReferenceDate];
  v28 = [v26 numberWithDouble:?];
  [v25 ic_setNonNilObject:v28 forKey:@"creationDateKey"];

  v29 = [(ICInlineAttachment *)self tokenContentIdentifier];
  [v25 ic_setNonNilObject:v29 forKey:@"tokenContentIdentifierKey"];

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
      v36 = [v30 bytes];
      v37 = [v30 length];
      *(a3 + 9) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v38 = v37;
      v39 = *(a3 + 38);
      if (v39 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v39, v36, v38);
    }

    else
    {
      v40 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v44 = [(ICInlineAttachment *)self className];
        v45 = [(ICInlineAttachment *)self identifier];
        *buf = 138412802;
        v48 = v44;
        v49 = 2112;
        v50 = v45;
        v51 = 2112;
        v52 = v32;
        _os_log_error_impl(&dword_214D51000, v40, OS_LOG_TYPE_ERROR, "Error converting metadata to JSON for %@ (%@): %@", buf, 0x20u);
      }

      if (a5)
      {
        v42 = v32;
        *a5 = v32;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  return v34;
}

+ (id)newHashtagAttachmentWithIdentifier:(id)a3 hashtagText:(id)a4 creatingHashtagIfNecessary:(BOOL)a5 note:(id)a6 parentAttachment:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v30 = a7;
  v15 = [v14 account];
  v16 = [ICHashtag hashtagWithDisplayText:v13 account:v15 createIfNecessary:v9];

  v17 = [v16 displayText];
  v18 = [v17 ic_withHashtagPrefix];
  v19 = v18;
  if (!v18)
  {
    v19 = [v13 ic_withHashtagPrefix];
  }

  v20 = [v16 standardizedContent];
  v29 = a1;
  if (v20)
  {
    v21 = a1;
    v22 = v12;
    v23 = v30;
    v24 = [v21 newAttachmentWithIdentifier:v12 typeUTI:@"com.apple.notes.inlinetextattachment.hashtag" altText:v19 tokenContentIdentifier:v20 note:v14 parentAttachment:v30];
  }

  else
  {
    [ICHashtag standardizedHashtagRepresentationForDisplayText:v13];
    v25 = v28 = v13;
    v26 = a1;
    v22 = v12;
    v23 = v30;
    v24 = [v26 newAttachmentWithIdentifier:v12 typeUTI:@"com.apple.notes.inlinetextattachment.hashtag" altText:v19 tokenContentIdentifier:v25 note:v14 parentAttachment:v30];

    v13 = v28;
  }

  if (!v18)
  {
  }

  if (v24 && v16)
  {
    [v29 reviveOrTouchHashtag:v16];
  }

  return v24;
}

+ (id)newHashtagAttachmentWithIdentifier:(id)a3 forHashtag:(id)a4 note:(id)a5 parentAttachment:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 displayText];
  v15 = [v14 ic_withHashtagPrefix];
  v16 = [v10 standardizedContent];
  v17 = [a1 newAttachmentWithIdentifier:v13 typeUTI:@"com.apple.notes.inlinetextattachment.hashtag" altText:v15 tokenContentIdentifier:v16 note:v12 parentAttachment:v11];

  if (v10 && v17)
  {
    [a1 reviveOrTouchHashtag:v10];
  }

  return v17;
}

+ (void)reviveOrTouchHashtag:(id)a3
{
  v3 = a3;
  if (([v3 needsInitialFetchFromCloud] & 1) == 0)
  {
    if ([v3 markedForDeletion])
    {
      [v3 unmarkForDeletion];
    }

    else
    {
      [v3 updateChangeCountWithReason:@"Touched tag"];
    }
  }
}

+ (id)newMentionAttachmentWithIdentifier:(id)a3 mentionText:(id)a4 userRecordName:(id)a5 note:(id)a6 parentAttachment:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [a4 ic_mentionString];
  v17 = [a1 newAttachmentWithIdentifier:v15 typeUTI:@"com.apple.notes.inlinetextattachment.mention" altText:v16 tokenContentIdentifier:v14 note:v13 parentAttachment:v12];

  return v17;
}

+ (id)newLinkAttachmentWithIdentifier:(id)a3 toNote:(id)a4 fromNote:(id)a5 parentAttachment:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [ICAppURLUtilities entityURIForNote:v12];
  v15 = [v12 titleForLinking];

  v16 = [v14 absoluteString];
  v17 = [a1 newAttachmentWithIdentifier:v13 typeUTI:@"com.apple.notes.inlinetextattachment.link" altText:v15 tokenContentIdentifier:v16 note:v11 parentAttachment:v10];

  return v17;
}

+ (id)newCalculateResultAttachmentWithIdentifier:(id)a3 note:(id)a4 parentAttachment:(id)a5 rightToLeft:(BOOL)a6
{
  if (a6)
  {
    v6 = @"ICInlineAttachmentCalculateStateInvalidRTL";
  }

  else
  {
    v6 = @"ICInlineAttachmentCalculateStateInvalidLTR";
  }

  return [a1 newAttachmentWithIdentifier:a3 typeUTI:@"com.apple.notes.inlinetextattachment.calculateresult" altText:0 tokenContentIdentifier:v6 note:a4 parentAttachment:a5];
}

+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)a3 note:(id)a4 parentAttachment:(id)a5 rightToLeft:(BOOL)a6
{
  v6 = a6;
  v11 = @"ICInlineAttachmentCalculateStateValidLTR";
  if (a6)
  {
    v11 = @"ICInlineAttachmentCalculateStateValidRTL";
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = v11;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 ic_calculateGraphExpressionString];
  v18 = v17;
  if (v6)
  {
    v19 = [v17 ic_rightToLeftString];

    v18 = v19;
  }

  v20 = [a1 newAttachmentWithIdentifier:v16 typeUTI:@"com.apple.notes.inlinetextattachment.calculategraphexpression" altText:v18 tokenContentIdentifier:v13 note:v15 parentAttachment:v14];

  return v20;
}

+ (id)newCalculateGraphExpressionAttachmentWithIdentifier:(id)a3 altText:(id)a4 note:(id)a5 parentAttachment:(id)a6 rightToLeft:(BOOL)a7
{
  if (a7)
  {
    v8 = @"ICInlineAttachmentCalculateStateValidRTL";
  }

  else
  {
    v8 = @"ICInlineAttachmentCalculateStateValidLTR";
  }

  return [a1 newAttachmentWithIdentifier:a3 typeUTI:@"com.apple.notes.inlinetextattachment.calculategraphexpression" altText:a4 tokenContentIdentifier:v8 note:a5 parentAttachment:a6];
}

+ (id)newAttachmentWithIdentifier:(id)a3 typeUTI:(id)a4 altText:(id)a5 tokenContentIdentifier:(id)a6 note:(id)a7 parentAttachment:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  if (![v18 length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"altText.length" functionName:"+[ICInlineAttachment newAttachmentWithIdentifier:typeUTI:altText:tokenContentIdentifier:note:parentAttachment:]" simulateCrash:1 showAlert:0 format:@"Inline attachment must have a non-empty alt text"];
  }

  v20 = [v15 managedObjectContext];
  v21 = [a1 newObjectWithIdentifier:v19 context:v20];

  v22 = [v15 account];
  v23 = [v22 persistentStore];
  [v21 assignToPersistentStore:v23];

  v24 = [v15 account];
  [v21 setAccount:v24];

  [v21 setNote:v15];
  [v21 setParentAttachment:v16];
  if ([v15 isPasswordProtected])
  {
    [v21 setIsPasswordProtected:1];
    [v21 initializeCryptoProperties];
  }

  [v21 setTypeUTI:v14];
  [v21 setAltText:v18];

  [v21 setTokenContentIdentifier:v17];
  v25 = [MEMORY[0x277CBEAA8] now];
  [v21 setCreationDate:v25];

  [v15 addInlineAttachmentsObject:v21];
  [v16 addInlineAttachmentsObject:v21];

  return v21;
}

+ (id)cloneInlineAttachmentWithIdentifier:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:v5 context:v6];
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
    [v6 performBlockAndWait:v12];

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

+ (id)existingInlineAttachmentWithTokenContentIdentifier:(id)a3 typeUTI:(id)a4 context:(id)a5
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a1 predicateForTypeUTI:a4];
  v11 = [a1 predicateForTokenContentIdentifier:v8];
  v12 = [a1 predicateForVisibleObjects];
  v13 = MEMORY[0x277CCA920];
  v22[0] = v10;
  v22[1] = v11;
  v22[2] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  v16 = [a1 fetchRequest];
  [v16 setPredicate:v15];
  [v16 setFetchLimit:1];
  v21 = 0;
  v17 = [v9 executeFetchRequest:v16 error:&v21];

  v18 = v21;
  if (v18)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment existingInlineAttachmentWithTokenContentIdentifier:typeUTI:context:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch inline attachments with standardizedContent %@: %@", v8, v18}];
  }

  v19 = [v17 firstObject];

  return v19;
}

- (id)clone
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [(ICInlineAttachment *)self typeUTI];
  v7 = [(ICInlineAttachment *)self altText];
  v8 = [(ICInlineAttachment *)self tokenContentIdentifier];
  v9 = [(ICInlineAttachment *)self note];
  v10 = [(ICInlineAttachment *)self parentAttachment];
  v11 = [v3 newAttachmentWithIdentifier:v5 typeUTI:v6 altText:v7 tokenContentIdentifier:v8 note:v9 parentAttachment:v10];

  return v11;
}

+ (id)canonicalHashtagAttachmentsInContext:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v12 = [a1 predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
  [v10 setPredicate:v12];

  v23 = 0;
  v13 = [v4 executeFetchRequest:v10 error:&v23];
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
    v19 = v18 = v4;
    v24 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v16 = [a1 ic_objectsMatchingPredicate:v15 sortDescriptors:v20 context:v18];

    v4 = v18;
    v8 = v22;
  }

  return v16;
}

+ (void)changeLinkDestinationFromNote:(id)a3 toNote:(id)a4
{
  v47[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 managedObjectContext];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v7 managedObjectContext];
  if (!v10)
  {

    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v6 managedObjectContext];
  v13 = [v7 managedObjectContext];

  if (v12 != v13)
  {
LABEL_15:
    v35 = MEMORY[0x277D36198];
    v36 = @"From note context must be non-nil and the same as to note context";
LABEL_16:
    [v35 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment changeLinkDestinationFromNote:toNote:]" simulateCrash:1 showAlert:0 format:v36];
    goto LABEL_17;
  }

  v14 = [v7 identifier];
  if (![v14 length])
  {

    goto LABEL_19;
  }

  v15 = [v6 identifier];
  v16 = [v15 length];

  if (!v16)
  {
LABEL_19:
    v35 = MEMORY[0x277D36198];
    v36 = @"From and to notes must have non-empty identifiers";
    goto LABEL_16;
  }

  v40 = a1;
  v17 = [ICAppURLUtilities entityURIForNote:v6];
  v18 = [ICAppURLUtilities entityURIForNote:v7];
  v19 = MEMORY[0x277CCA920];
  v38 = +[(ICBaseAttachment *)ICInlineAttachment];
  v47[0] = v38;
  v37 = [ICInlineAttachment predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.link"];
  v47[1] = v37;
  v39 = v17;
  v20 = [v17 absoluteString];
  v21 = [ICInlineAttachment predicateForTokenContentIdentifier:v20];
  v47[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v23 = [v19 andPredicateWithSubpredicates:v22];
  v41 = v6;
  v24 = [v6 managedObjectContext];
  v25 = [ICInlineAttachment ic_objectsMatchingPredicate:v23 context:v24];

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
        v32 = [v18 absoluteString];
        [v31 setTokenContentIdentifier:v32];

        v33 = [v7 titleForLinking];
        [v31 setAltText:v33];

        [v31 updateChangeCountWithReason:@"Updated link destination"];
        v34 = [v31 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v28);
  }

  [v40 regenerateDerivedDataForInlineAttachments:v26 reason:@"Updated link destination"];
  v6 = v41;
LABEL_17:
}

+ (void)enumerateLinksToNote:(id)a3 batchSize:(unint64_t)a4 visibleOnly:(BOOL)a5 saveAfterBatch:(BOOL)a6 context:(id)a7 usingBlock:(id)a8
{
  v9 = a6;
  v10 = a5;
  v14 = a8;
  v15 = a7;
  v17 = [ICAppURLUtilities entityURIForNote:a3];
  v16 = [v17 absoluteString];
  [a1 enumerateInlineAttachmentsInContext:v15 typeUTI:@"com.apple.notes.inlinetextattachment.link" tokenContentIdentifier:v16 batchSize:a4 visibleOnly:v10 saveAfterBatch:v9 usingBlock:v14];
}

+ (void)enumerateInlineAttachmentsInContext:(id)a3 typeUTI:(id)a4 tokenContentIdentifier:(id)a5 batchSize:(unint64_t)a6 visibleOnly:(BOOL)a7 saveAfterBatch:(BOOL)a8 usingBlock:(id)a9
{
  v9 = a8;
  v10 = a7;
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a9;
  v18 = objc_opt_new();
  if (v15)
  {
    v19 = [a1 predicateForTypeUTI:v15];
    [v18 ic_addNonNilObject:v19];
  }

  if (v16)
  {
    v20 = [a1 predicateForTokenContentIdentifier:v16];
    [v18 ic_addNonNilObject:v20];
  }

  if (v10)
  {
    v21 = [a1 predicateForVisibleAttachmentsInContext:v25];
    [v18 ic_addNonNilObject:v21];
  }

  v22 = MEMORY[0x277CCA920];
  v23 = [v18 copy];
  v24 = [v22 andPredicateWithSubpredicates:v23];

  [a1 ic_enumerateObjectsMatchingPredicate:v24 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 context:v25 batchSize:a6 saveAfterBatch:v9 usingBlock:v17];
}

+ (void)regenerateDerivedDataForInlineAttachments:(id)a3 reason:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 ic_compactMap:&__block_literal_global_94];
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
        v14 = [v13 attachmentModel];
        [v14 regenerateTextContentInNote];

        [v13 updateChangeCountWithReason:v6];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v15 = [v5 ic_map:&__block_literal_global_98];
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
          [v21 markShareDirtyIfNeededWithReason:v6];
          [v21 updateChangeCountWithReason:v6];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (id)parentEncryptableObject
{
  v3 = [(ICInlineAttachment *)self note];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ICInlineAttachment *)self account];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isCalculateResultAttachment
{
  v2 = [(ICInlineAttachment *)self typeUTI];
  v3 = [v2 isEqualToString:@"com.apple.notes.inlinetextattachment.calculateresult"];

  return v3;
}

- (BOOL)isCalculateGraphExpressionAttachment
{
  v2 = [(ICInlineAttachment *)self typeUTI];
  v3 = [v2 isEqualToString:@"com.apple.notes.inlinetextattachment.calculategraphexpression"];

  return v3;
}

- (BOOL)isLinkAttachment
{
  v2 = [(ICInlineAttachment *)self typeUTI];
  v3 = [v2 isEqualToString:@"com.apple.notes.inlinetextattachment.link"];

  return v3;
}

- (BOOL)isMentionAttachment
{
  v2 = [(ICInlineAttachment *)self typeUTI];
  v3 = [v2 isEqualToString:@"com.apple.notes.inlinetextattachment.mention"];

  return v3;
}

- (BOOL)isHashtagAttachment
{
  v2 = [(ICInlineAttachment *)self typeUTI];
  v3 = [v2 isEqualToString:@"com.apple.notes.inlinetextattachment.hashtag"];

  return v3;
}

+ (id)predicateForMentionsInContext:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.mention"];
  v6 = [a1 predicateForVisibleAttachmentsInContext:v4];

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

- (void)setTokenContentIdentifier:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_tokenContentIdentifier);
  [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:v5];
}

- (NSString)altText
{
  v3 = NSStringFromSelector(sel_altText);
  v4 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v3];

  return v4;
}

- (void)setAltText:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_altText);
  [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:v5];

  [(ICInlineAttachment *)self markDisplayTextNeedsUpdate];
}

- (id)nonNilAltText
{
  v2 = [(ICInlineAttachment *)self altText];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
    v4 = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
LABEL_5:
    v5 = v4;
    v6 = [MEMORY[0x277CCACA8] ic_ellipsisCharacterString];
    v7 = [v3 stringWithFormat:@"%@%@", v5, v6];

LABEL_6:
    goto LABEL_7;
  }

  if ([(ICInlineAttachment *)self isMentionAttachment])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] ic_mentionCharacterString];
    goto LABEL_5;
  }

  if ([(ICInlineAttachment *)self isCalculateResultAttachment])
  {
    v9 = [(ICInlineAttachment *)self isRightToLeftCalculateAttachment];
    v10 = [MEMORY[0x277CCACA8] ic_calculateEqualsSignString];
LABEL_14:
    v5 = v10;
    if (v9)
    {
      [v10 ic_rightToLeftString];
    }

    else
    {
      [v10 ic_leftToRightString];
    }
    v7 = ;
    goto LABEL_6;
  }

  if ([(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    v9 = [(ICInlineAttachment *)self isRightToLeftCalculateAttachment];
    v10 = [MEMORY[0x277CCACA8] ic_calculateGraphExpressionString];
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CCACA8] ic_ellipsisCharacterString];
LABEL_7:

  return v7;
}

- (NSString)displayText
{
  if ([(NSString *)self->_displayText length])
  {
    v3 = self->_displayText;
    goto LABEL_22;
  }

  v4 = [(ICInlineAttachment *)self altText];
  if ([v4 length])
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
    v5 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v6 = [(ICInlineAttachment *)self note];
    v7 = [v6 account];
    v8 = [ICHashtag hashtagWithStandardizedContent:v5 account:v7];

    v9 = [v8 displayText];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [v8 displayText];
      v12 = [v11 ic_withHashtagPrefix];

      v3 = v12;
    }
  }

  else if ([(ICInlineAttachment *)self isLinkAttachment])
  {
    v13 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v8 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(v13);

    if (v8)
    {
      v14 = [ICAppURLUtilities noteIdentifierFromNotesAppURL:v8];
      v15 = [(ICInlineAttachment *)self managedObjectContext];
      v16 = [ICNote noteWithIdentifier:v14 context:v15];

      v17 = [v16 titleForLinking];
      if ([v17 length])
      {
        v18 = v17;

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
  v3 = [(ICInlineAttachment *)self typeUTI];
  v4 = [v3 isEqualToString:@"com.apple.notes.inlinetextattachment.hashtag"];

  if (v4)
  {
    return 1;
  }

  v6 = [(ICInlineAttachment *)self typeUTI];
  v7 = [v6 isEqualToString:@"com.apple.notes.inlinetextattachment.mention"];

  if (v7)
  {
    return 2;
  }

  v8 = [(ICInlineAttachment *)self typeUTI];
  v9 = [v8 isEqualToString:@"com.apple.notes.inlinetextattachment.link"];

  if (v9)
  {
    return 3;
  }

  v10 = [(ICInlineAttachment *)self typeUTI];
  v11 = [v10 isEqualToString:@"com.apple.notes.inlinetextattachment.calculateresult"];

  if (v11)
  {
    return 4;
  }

  v12 = [(ICInlineAttachment *)self typeUTI];
  v13 = [v12 isEqualToString:@"com.apple.notes.inlinetextattachment.calculategraphexpression"];

  if (v13)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3
{
  if (![(ICCloudSyncingObject *)self isUnsupported]&& ![(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {
    v5 = [(ICInlineAttachment *)self typeUTI];

    if (v5)
    {
      if (([(ICInlineAttachment *)self isPasswordProtected]& 1) == 0)
      {
        v8 = [(ICInlineAttachment *)self typeUTI];
        v9 = [v8 isEqualToString:@"com.apple.notes.inlinetextattachment.calculateresult"];

        if (v9 & 1) != 0 || (-[ICInlineAttachment typeUTI](self, "typeUTI"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:@"com.apple.notes.inlinetextattachment.calculategraphexpression"], v10, (v11))
        {
          v6 = 15;
LABEL_12:
          v18.receiver = self;
          v18.super_class = ICInlineAttachment;
          result = [(ICCloudSyncingObject *)&v18 intrinsicNotesVersionForScenario:a3];
          if (v6 > result)
          {
            return v6;
          }

          return result;
        }

        v12 = [(ICInlineAttachment *)self typeUTI];
        v13 = [v12 isEqualToString:@"com.apple.notes.inlinetextattachment.link"];

        if ((v13 & 1) == 0)
        {
          v14 = [(ICInlineAttachment *)self typeUTI];
          v15 = [v14 isEqualToString:@"com.apple.notes.inlinetextattachment.hashtag"];

          if (v15)
          {
            v6 = 7;
          }

          else
          {
            v16 = [(ICInlineAttachment *)self typeUTI];
            v17 = [v16 isEqualToString:@"com.apple.notes.inlinetextattachment.mention"];

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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [(ICInlineAttachment *)self objectID];
    [v3 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICInlineAttachmentDataChangedNotification" object:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidAddHashtagNotification" object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidPurgeHashtagNotification" object:0];

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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [(ICInlineAttachment *)self objectID];
    [v3 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICInlineAttachmentDataChangedNotification" object:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidAddHashtagNotification" object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_markDisplayTextNeedsUpdate name:@"ICAccountDidPurgeHashtagNotification" object:0];

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
    v3 = [(ICInlineAttachment *)self displayText];
    v4 = [v3 ic_range];
    v6 = v5;
  }

  else
  {
    if (![(ICInlineAttachment *)self isCalculateResultAttachment])
    {
      v6 = 0;
      v4 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    v7 = [(ICInlineAttachment *)self displayText];
    v8 = [MEMORY[0x277CCACA8] ic_calculateEqualsSignString];
    v9 = [v7 rangeOfString:v8];
    v11 = v10;

    v4 = v9 + v11;
    v3 = [(ICInlineAttachment *)self displayText];
    v6 = [v3 length] - (v9 + v11);
  }

LABEL_7:
  v12 = v4;
  v13 = v6;
  result.length = v13;
  result.location = v12;
  return result;
}

- (NSAttributedString)searchableTextContentInNote
{
  v2 = [(ICInlineAttachment *)self altText];
  v3 = [v2 ic_stringByRemovingLanguageDirectionCharacters];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2827172C0;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CCACA8] ic_thinSpaceCharacterString];
  v8 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:v7 withString:&stru_2827172C0];

  v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];

  return v9;
}

- (_NSRange)displayTextRangeForSearchRange:(_NSRange)a3 inSearchableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICInlineAttachment *)self note];
  v9 = [v8 rangeForAttachment:self];
  v11 = v10;

  v12 = [(ICInlineAttachment *)self parentAttachment];

  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v12 && v11)
  {
    v23[0] = 0;
    v23[1] = 0;
    v15 = [v7 attribute:@"ICAttachmentSearchable" atIndex:location effectiveRange:v23];
    v16 = [(ICInlineAttachment *)self note];
    v17 = [v16 textOffsetAtSearchIndex:v23[0] inSearchableString:v7];

    v18 = [(ICInlineAttachment *)self nonNilAltText];
    v26.location = [v18 ic_range];
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

- (void)updateMarkedForDeletionStateInlineAttachmentIsInUse:(BOOL)a3
{
  v5 = [(ICInlineAttachment *)self typeUTI];

  if (v5)
  {
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(ICInlineAttachment *)self needsInitialFetchFromCloud];
    }

    if ([(ICInlineAttachment *)self markedForDeletion]&& v6)
    {

      [(ICInlineAttachment *)self unmarkForDeletion];
    }

    else if ((([(ICInlineAttachment *)self markedForDeletion]| v6) & 1) == 0)
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
  v3 = [(ICInlineAttachment *)self note];
  [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (void)unmarkForDeletion
{
  v4.receiver = self;
  v4.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v4 unmarkForDeletion];
  [(ICInlineAttachment *)self propagateDeletionToHashtagForMarkForDeletion:0];
  v3 = [(ICInlineAttachment *)self note];
  [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (id)ic_loggingValues
{
  v15.receiver = self;
  v15.super_class = ICInlineAttachment;
  v3 = [(ICCloudSyncingObject *)&v15 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICInlineAttachment *)self managedObjectContext];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __38__ICInlineAttachment_ic_loggingValues__block_invoke;
  v12 = &unk_278194AD8;
  v13 = v4;
  v14 = self;
  v6 = v4;
  [v5 performBlockAndWait:&v9];

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

+ (unint64_t)countOfVisibleInlineAttachmentsForHashtagStandardizedContent:(id)a3 includingTrash:(BOOL)a4 account:(id)a5
{
  v8 = a5;
  v9 = [a1 predicateForTokenContentIdentifier:a3];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.account == %@", v8];
  v11 = [a1 predicateForVisibleObjects];
  v12 = [MEMORY[0x277CBEB18] arrayWithObjects:{v10, v9, v11, 0}];
  if (!a4)
  {
    v13 = [v8 managedObjectContext];
    v14 = [ICBaseAttachment predicateForVisibleAttachmentsInContext:v13];

    [v12 addObject:v14];
  }

  v15 = MEMORY[0x277CCA920];
  v16 = [v12 copy];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  v18 = [a1 fetchRequest];
  [v18 setPredicate:v17];
  [v18 setIncludesSubentities:0];
  v19 = [v8 managedObjectContext];
  v23 = 0;
  v20 = [v19 countForFetchRequest:v18 error:&v23];
  v21 = v23;

  if (v21)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICInlineAttachment countOfVisibleInlineAttachmentsForHashtagStandardizedContent:includingTrash:account:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch count of inline attachments for hashtag standardized content: %@", v21}];
    v20 = 0;
  }

  return v20;
}

+ (BOOL)isHashtagStandardizedContent:(id)a3 usedInAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 countOfNonTrashFolderVisibleInlineAttachmentsForHashtagStandardizedContent:v7 account:v6];
  v9 = [ICFolder visibleSmartFoldersForHashtagStandardizedContent:v7 account:v6];

  v10 = [v9 count];
  return (v8 | v10) != 0;
}

- (void)propagateDeletionToHashtagForMarkForDeletion:(BOOL)a3
{
  v3 = a3;
  if ([(ICInlineAttachment *)self isHashtagAttachment])
  {
    v5 = [(ICInlineAttachment *)self note];
    v6 = [v5 account];

    v7 = objc_opt_class();
    v8 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v9 = [v7 isHashtagStandardizedContent:v8 usedInAccount:v6];

    if (v3)
    {
      if ((v9 & 1) == 0)
      {
        v10 = [(ICInlineAttachment *)self tokenContentIdentifier];
        v11 = [(ICInlineAttachment *)self note];
        v12 = [v11 account];
        v13 = [ICHashtag hashtagWithStandardizedContent:v10 account:v12];

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
      v15 = [(ICInlineAttachment *)self tokenContentIdentifier];
      v13 = [ICHashtag hashtagWithStandardizedContent:v15 onlyVisible:0 account:v6];

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

+ (id)recentlyUsedDatesForHashtagsStandardizedContents:(id)a3 context:(id)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"tokenContentIdentifier IN %@", v6];
  v15 = [a1 predicateForVisibleObjects];
  v16 = MEMORY[0x277CCA920];
  v39 = v15;
  v40 = v14;
  v52[0] = v14;
  v52[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  v19 = [a1 fetchRequest];
  v38 = v18;
  [v19 setPredicate:v18];
  [v19 setPropertiesToGroupBy:&unk_282747FE8];
  v51[0] = @"tokenContentIdentifier";
  v51[1] = v13;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  [v19 setPropertiesToFetch:v20];

  [v19 setResultType:2];
  v49 = 0;
  v21 = [v7 executeFetchRequest:v19 error:&v49];
  v22 = v49;
  v42 = v7;
  v43 = v6;
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

+ (void)regenerateTokenContentIdentifierForHashtagAttachmentsInContext:(id)a3 currentTokenContentIdentifier:(id)a4 save:(BOOL)a5
{
  v5 = a5;
  v40[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a1 predicateForTokenContentIdentifier:a4];
  v10 = [a1 predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
  v11 = [a1 predicateForVisibleObjects];
  v12 = MEMORY[0x277CCA920];
  v40[0] = v9;
  v40[1] = v10;
  v40[2] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [a1 ic_objectsMatchingPredicate:v14 context:v8];
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
      v29 = v11;
      v30 = v5;
      v31 = v10;
      v32 = v9;
      v33 = v8;
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
          v23 = [v22 altText];

          if (v23)
          {
            v24 = [v22 altText];
            v25 = [ICHashtag standardizedHashtagRepresentationForDisplayText:v24];

            v26 = [v22 tokenContentIdentifier];
            v27 = [v26 isEqualToString:v25];

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
      v8 = v33;
      v10 = v31;
      v15 = v28;
      v11 = v29;
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

- (void)setCalculateState:(id)a3
{
  v4 = a3;
  if (![(ICInlineAttachment *)self isCalculateResultAttachment]&& ![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment || self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment setCalculateState:]" simulateCrash:1 showAlert:0 format:@"Setting Calculate state for inline attachment of wrong type"];
  }

  [(ICInlineAttachment *)self setTokenContentIdentifier:v4];
}

- (BOOL)isValidCalculateAttachment
{
  v3 = [(ICInlineAttachment *)self tokenContentIdentifier];
  if ([v3 isEqual:@"ICInlineAttachmentCalculateStateValidLTR"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v4 = [v5 isEqual:@"ICInlineAttachmentCalculateStateValidRTL"];
  }

  return v4;
}

- (BOOL)isRightToLeftCalculateAttachment
{
  v3 = [(ICInlineAttachment *)self tokenContentIdentifier];
  if ([v3 isEqual:@"ICInlineAttachmentCalculateStateValidRTL"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v4 = [v5 isEqual:@"ICInlineAttachmentCalculateStateInvalidRTL"];
  }

  return v4;
}

- (BOOL)updateCalculateResult:(id)a3 isRightToLeft:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(ICInlineAttachment *)self isCalculateResultAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment" functionName:"-[ICInlineAttachment updateCalculateResult:isRightToLeft:]" simulateCrash:1 showAlert:0 format:@"Updating Calculate result for inline attachment of wrong type"];
  }

  v7 = [v6 formattedResult];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCACA8] ic_calculateEqualsSignString];
  if (v7)
  {
    v10 = [v6 formattedResult];
    v11 = [v8 stringWithFormat:@"%@%@", v9, v10];

    v9 = v11;
  }

  v12 = [(ICInlineAttachment *)self updateCalculateText:v9 isValid:v6 != 0 isRightToLeft:v4];
  return v12;
}

- (BOOL)updateCalculateGraphExpressionText:(id)a3
{
  v4 = a3;
  if (![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment updateCalculateGraphExpressionText:]" simulateCrash:1 showAlert:0 format:@"Updating Calculate text for inline attachment of wrong type"];
  }

  v5 = [(ICInlineAttachment *)self altText];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
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
  [(ICInlineAttachment *)self setAltText:v4];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [(ICInlineAttachment *)self objectID];
    [v15 postNotificationName:@"ICInlineAttachmentDataChangedNotification" object:v16];
  }

  else
  {
    v17 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
  }

  v13 = 1;
LABEL_23:

  return v13;
}

- (BOOL)updateCalculateText:(id)a3 isValid:(BOOL)a4 isRightToLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (![(ICInlineAttachment *)self isCalculateResultAttachment]&& ![(ICInlineAttachment *)self isCalculateGraphExpressionAttachment])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isCalculateResultAttachment || self.isCalculateGraphExpressionAttachment" functionName:"-[ICInlineAttachment updateCalculateText:isValid:isRightToLeft:]" simulateCrash:1 showAlert:0 format:@"Updating Calculate text for inline attachment of wrong type"];
  }

  v9 = @"ICInlineAttachmentCalculateStateValidLTR";
  if (v5)
  {
    v9 = @"ICInlineAttachmentCalculateStateValidRTL";
  }

  v10 = @"ICInlineAttachmentCalculateStateInvalidRTL";
  if (!v5)
  {
    v10 = @"ICInlineAttachmentCalculateStateInvalidLTR";
  }

  if (!v6)
  {
    v9 = v10;
  }

  v11 = v9;
  v12 = [(ICInlineAttachment *)self calculateState];
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
  if (v13 == v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
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
  v23 = [(ICInlineAttachment *)self altText];
  if (v13 == v8)
  {
    v24 = 0;
  }

  else
  {
    v24 = v8;
  }

  v25 = v24;
  if (v13 == v23)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
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

    [(ICInlineAttachment *)self setAltText:v8];
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
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    v33 = [(ICInlineAttachment *)self objectID];
    [v32 postNotificationName:@"ICInlineAttachmentDataChangedNotification" object:v33];
  }

  else
  {
    v34 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
  }

  v30 = 1;
LABEL_53:

  return v30;
}

+ (void)purgeAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  if (v7)
  {
    v4 = [v7 note];
    [v4 removeInlineAttachmentsObject:v7];

    v5 = [v7 parentAttachment];
    [v5 removeInlineAttachmentsObject:v7];

    v6 = [v7 managedObjectContext];
    [v6 deleteObject:v7];
  }
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v38.receiver = self;
  v38.super_class = ICInlineAttachment;
  v13 = [(ICCloudSyncingObject *)&v38 mergeCloudKitRecord:v10 accountID:v11 approach:a5 mergeableFieldState:v12];
  if (v13)
  {
    [(ICInlineAttachment *)self writeMergeableFieldStateIfNecessary:v12];
    v14 = [v10 recordID];
    v15 = [v14 recordName];
    [(ICInlineAttachment *)self setIdentifier:v15];

    objc_opt_class();
    v16 = [v10 encryptedValues];
    v17 = [v16 objectForKeyedSubscript:@"UTIEncrypted"];
    v18 = ICCheckedDynamicCast();
    v19 = [v18 ic_stringValue];
    [(ICInlineAttachment *)self setTypeUTI:v19];

    v20 = [(ICInlineAttachment *)self managedObjectContext];
    v21 = [objc_opt_class() noteFromAttachmentRecord:v10 accountID:v11 context:v20];
    if (v21)
    {
      [(ICInlineAttachment *)self setNote:v21];
      v22 = [(ICInlineAttachment *)self note];
      [v22 addInlineAttachmentsObject:self];
    }

    v23 = [(ICInlineAttachment *)self parentAttachmentFromRecord:v10 accountID:v11 context:v20];
    if (v23)
    {
      [(ICBaseAttachment *)self setParentAttachment:v23];
      v24 = [(ICInlineAttachment *)self parentAttachment];
      [v24 addInlineAttachmentsObject:self];
    }

    v25 = [v10 objectForKeyedSubscript:@"CreationDate"];
    [(ICInlineAttachment *)self setCreationDate:v25];

    if (([(ICInlineAttachment *)self isPasswordProtected]& 1) == 0)
    {
      objc_opt_class();
      v26 = [v10 encryptedValues];
      [v26 objectForKeyedSubscript:@"AltTextEncrypted"];
      v27 = v36 = v21;
      v28 = ICCheckedDynamicCast();
      [v28 ic_stringValue];
      v29 = v37 = v20;
      [(ICInlineAttachment *)self setAltText:v29];

      objc_opt_class();
      v30 = [v10 encryptedValues];
      v31 = [v30 objectForKeyedSubscript:@"TokenContentIdentifierEncrypted"];
      v32 = ICCheckedDynamicCast();
      v33 = [v32 ic_stringValue];
      [(ICInlineAttachment *)self setTokenContentIdentifier:v33];

      v20 = v37;
      v21 = v36;
    }

    v34 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification", v36];
  }

  return v13;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v31.receiver = self;
  v31.super_class = ICInlineAttachment;
  v6 = a4;
  v7 = [(ICCloudSyncingObject *)&v31 makeCloudKitRecordForApproach:a3 mergeableFieldState:v6];
  v8 = [(ICInlineAttachment *)self note];
  v9 = [v8 recordID];

  v10 = [(ICInlineAttachment *)self parentAttachment];
  v11 = [v10 recordID];

  [(ICInlineAttachment *)self writeMergeableFieldStateIfNecessary:v6];
  v12 = MEMORY[0x277CBC070];
  if (v9)
  {
    v13 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v9 action:*MEMORY[0x277CBC070]];
    [v7 setObject:v13 forKeyedSubscript:@"Note"];
  }

  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v11 action:*v12];
    [v7 setObject:v14 forKeyedSubscript:@"ParentAttachment"];
  }

  v15 = [(ICInlineAttachment *)self altText];

  if (v15)
  {
    v16 = [(ICInlineAttachment *)self altText];
    v17 = [v16 ic_dataValue];
    v18 = [v7 encryptedValues];
    [v18 setObject:v17 forKeyedSubscript:@"AltTextEncrypted"];
  }

  v19 = [(ICCloudSyncingObject *)self creationDate];

  if (v19)
  {
    v20 = [(ICCloudSyncingObject *)self creationDate];
    [v7 setObject:v20 forKeyedSubscript:@"CreationDate"];
  }

  v21 = [(ICInlineAttachment *)self tokenContentIdentifier];

  if (v21)
  {
    v22 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v23 = [v22 ic_dataValue];
    v24 = [v7 encryptedValues];
    [v24 setObject:v23 forKeyedSubscript:@"TokenContentIdentifierEncrypted"];
  }

  v25 = [(ICInlineAttachment *)self typeUTI];

  if (v25)
  {
    v26 = [(ICInlineAttachment *)self typeUTI];
    v27 = [v26 ic_dataValue];
    v28 = [v7 encryptedValues];
    [v28 setObject:v27 forKeyedSubscript:@"UTIEncrypted"];
  }

  else
  {
    v29 = MEMORY[0x277D36198];
    v26 = [(ICCloudSyncingObject *)self loggingDescription];
    [v29 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICInlineAttachment(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:{@"Trying to create a record for an inline attachment that is of an unknown type: %@", v26}];
  }

  return v7;
}

- (void)writeMergeableFieldStateIfNecessary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(ICInlineAttachment *)self identifier];
    v5 = [v6 dataUsingEncoding:4];
    [v4 setObject:v5 forKey:@"TokenContentIdentifierEncrypted"];
  }
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v6 = a5;
  v7 = [a3 recordName];
  v8 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:v7 context:v6];

  return v8;
}

+ (id)noteFromAttachmentRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"Note"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 recordID];
    v14 = [ICNote existingCloudObjectForRecordID:v13 accountID:v9 context:v10];

    if (v14)
    {
      goto LABEL_10;
    }

    v15 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = [a1 className];
      v27 = [v8 recordID];
      v24 = [v27 recordName];
      v25 = [v12 recordID];
      v26 = [v25 recordName];
      *buf = 138413058;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a note (%@) that we don't know about yet in account ID %@", buf, 0x2Au);
    }

    v16 = [ICAccount cloudKitAccountWithIdentifier:v9 context:v10];
    v14 = [ICNote newNoteWithoutIdentifierInAccount:v16];
    v17 = [v12 recordID];
    v18 = [v17 recordName];
    [v14 setIdentifier:v18];

    [v14 setNeedsInitialFetchFromCloud:1];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [a1 className];
      v21 = [v8 recordID];
      v22 = [v21 recordName];
      *buf = 138412802;
      v29 = v20;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v9;
      _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Found an %@ (%@) in the cloud with no note in account ID %@", buf, 0x20u);
    }

    v14 = 0;
  }

LABEL_10:

  return v14;
}

- (id)parentAttachmentFromRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"ParentAttachment"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 recordID];
    v14 = [ICAttachment existingCloudObjectForRecordID:v13 accountID:v9 context:v10];

    if (!v14)
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = [(ICInlineAttachment *)self className];
        v24 = [v8 recordID];
        v21 = [v24 recordName];
        v23 = [v12 recordID];
        v22 = [v23 recordName];
        *buf = 138412802;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a parent attachment (%@) that we don't know about yet", buf, 0x20u);
      }

      v16 = [v12 recordID];
      v17 = [v16 recordName];
      v18 = [(ICInlineAttachment *)self note];
      v14 = [(ICBaseAttachment *)ICAttachment newAttachmentWithIdentifier:v17 note:v18];

      [v14 setNeedsInitialFetchFromCloud:1];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 noteFromAttachmentRecord:v9 accountID:v8 context:a5];
  v11 = [v9 recordID];
  v12 = [v11 recordName];
  v13 = [v10 addInlineAttachmentWithIdentifier:v12];

  v14 = [MEMORY[0x277CBEAA8] distantPast];
  [v13 setCreationDate:v14];

  [v13 mergeCloudKitRecord:v9 accountID:v8 approach:0];
  [v13 setServerRecord:v9];

  [v13 setInCloud:1];
  [v13 clearChangeCountWithReason:@"Created inline attachment"];
  [v13 updateParentReferenceIfNecessary];
  v15 = [v13 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];

  return v13;
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = ICInlineAttachment;
  [(ICCloudSyncingObject *)&v7 objectWasFetchedFromCloudWithRecord:a3 accountID:a4 force:a5];
  v6 = [(ICInlineAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];
}

- (BOOL)shouldAlwaysDownloadAssets
{
  v2 = self;
  v3 = [(ICInlineAttachment *)self managedObjectContext];
  LOBYTE(v2) = [ICAssetSignature hasLocallyStoredAssetsInObject:v2 context:v3];

  return v2;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICInlineAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ICInlineAttachment_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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
  v3 = [(ICCloudSyncingObject *)&v16 hasAllMandatoryFields];
  v4 = [(ICInlineAttachment *)self note];
  v5 = v3 & [v4 hasAllMandatoryFields];

  v6 = [(ICInlineAttachment *)self typeUTI];
  if (![v6 length])
  {
    v5 = 0;
  }

  v7 = [(ICInlineAttachment *)self parentAttachment];

  if (v7)
  {
    v8 = [(ICInlineAttachment *)self parentAttachment];
    v5 &= [v8 hasAllMandatoryFields];
  }

  if ([(ICInlineAttachment *)self isPasswordProtected])
  {
    v9 = [(ICInlineAttachment *)self encryptedValuesJSON];
    v10 = [v9 length] == 0;
  }

  else
  {
    v11 = [(ICInlineAttachment *)self tokenContentIdentifier];
    v12 = [v11 length];

    v9 = [(ICInlineAttachment *)self altText];
    v13 = [v9 length];
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