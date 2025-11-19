@interface ICHashtag
+ (BOOL)regenerateStandardizedContentForAllHashtagsInContext:(id)a3 hasChanges:(BOOL *)a4;
+ (id)allVisibleHashtagsForAccount:(id)a3;
+ (id)allVisibleHashtagsInContext:(id)a3;
+ (id)canonicalHashtagsInContext:(id)a3;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)hashtagObjectIDWithStandardizedContent:(id)a3 context:(id)a4;
+ (id)hashtagObjectIDsWithStandardizedContents:(id)a3 context:(id)a4;
+ (id)hashtagWithDisplayText:(id)a3 account:(id)a4 createIfNecessary:(BOOL)a5;
+ (id)hashtagWithIdentifier:(id)a3 context:(id)a4;
+ (id)hashtagWithStandardizedContent:(id)a3 account:(id)a4;
+ (id)hashtagWithStandardizedContent:(id)a3 onlyVisible:(BOOL)a4 account:(id)a5;
+ (id)hashtagsWithStandardizedContent:(id)a3 onlyVisible:(BOOL)a4 account:(id)a5 context:(id)a6;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newHashtagWithIdentifier:(id)a3 displayText:(id)a4 account:(id)a5;
+ (id)predicateForHashtagWithStandardizedContent:(id)a3 onlyVisible:(BOOL)a4 account:(id)a5;
+ (id)renameHashtagsWithStandardizedContent:(id)a3 newDisplayText:(id)a4 context:(id)a5;
+ (id)standardizedHashtagRepresentationForDisplayText:(id)a3;
+ (void)dedupeHashtagsInAccount:(id)a3 atomicityExploitationCallback:(id)a4;
+ (void)purgeHashtag:(id)a3;
- (BOOL)canRenameTagWithNewDisplayText:(id)a3;
- (BOOL)isInICloudAccount;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)searchableTextContent;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3;
@end

@implementation ICHashtag

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a3;
  if (a5)
  {
    v11 = MEMORY[0x277D36198];
    v12 = [(ICHashtag *)self className];
    v13 = ICStringFromSyncingApproach(a5);
    [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICHashtag(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v12, v13}];

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v25.receiver = self;
  v25.super_class = ICHashtag;
  if (![(ICCloudSyncingObject *)&v25 mergeCloudKitRecord:v10 accountID:a4 approach:0 mergeableFieldState:a6])
  {
    goto LABEL_5;
  }

  v14 = [v10 recordID];
  v15 = [v14 recordName];
  [(ICHashtag *)self setIdentifier:v15];

  v16 = [v10 objectForKeyedSubscript:@"CreationDate"];
  [(ICHashtag *)self setCreationDate:v16];

  v17 = [v10 encryptedValues];
  v18 = [v17 objectForKeyedSubscript:@"DisplayTextEncrypted"];
  v19 = [v18 ic_stringValue];
  [(ICHashtag *)self setDisplayText:v19];

  v20 = [v10 encryptedValues];
  v21 = [v20 objectForKeyedSubscript:@"StandardizedContentEncrypted"];
  v22 = [v21 ic_stringValue];
  [(ICHashtag *)self setStandardizedContent:v22];

  v23 = 1;
LABEL_6:

  return v23;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICHashtag *)self className:a3];
    v8 = ICStringFromSyncingApproach(a3);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICHashtag(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = ICHashtag;
    v9 = [(ICCloudSyncingObject *)&v21 makeCloudKitRecordForApproach:0 mergeableFieldState:a4];
    v10 = [(ICCloudSyncingObject *)self creationDate];

    if (v10)
    {
      v11 = [(ICCloudSyncingObject *)self creationDate];
      [v9 setObject:v11 forKeyedSubscript:@"CreationDate"];
    }

    v12 = [(ICHashtag *)self displayText];

    if (v12)
    {
      v13 = [(ICHashtag *)self displayText];
      v14 = [v13 ic_dataValue];
      v15 = [v9 encryptedValues];
      [v15 setObject:v14 forKeyedSubscript:@"DisplayTextEncrypted"];
    }

    v16 = [(ICHashtag *)self standardizedContent];

    if (v16)
    {
      v17 = [(ICHashtag *)self standardizedContent];
      v18 = [v17 ic_dataValue];
      v19 = [v9 encryptedValues];
      [v19 setObject:v18 forKeyedSubscript:@"StandardizedContentEncrypted"];
    }
  }

  return v9;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v6 = a5;
  v7 = [a3 recordName];
  v8 = [ICHashtag hashtagWithIdentifier:v7 context:v6];

  return v8;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ICAccount cloudKitAccountWithIdentifier:v7 context:a5];
  v10 = [v8 recordID];
  v11 = [v10 recordName];
  v12 = [ICHashtag newHashtagWithIdentifier:v11 displayText:&stru_2827172C0 account:v9];

  [v9 addHashtagsObject:v12];
  v13 = [MEMORY[0x277CBEAA8] distantPast];
  [v12 setCreationDate:v13];

  [v12 mergeCloudKitRecord:v8 accountID:v7 approach:0];
  [v12 setServerRecord:v8];

  [v12 setInCloud:1];
  [v12 clearChangeCountWithReason:@"Created tag"];
  [v12 updateParentReferenceIfNecessary];

  return v12;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICHashtag *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICHashtag_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __40__ICHashtag_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isInCloud])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) account];
    *(*(*(a1 + 40) + 8) + 24) = [v2 accountType] == 1;
  }
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(ICHashtag *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (NSString)searchDomainIdentifier
{
  v2 = [(ICHashtag *)self account];
  v3 = [v2 identifier];

  return v3;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  v4 = [(ICCloudSyncingObject *)self creationDate];
  [v3 setContentCreationDate:v4];

  v5 = [(ICCloudSyncingObject *)self creationDate];
  [v3 setAddedDate:v5];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v3 = [(ICHashtag *)self userActivityContentAttributeSet];
  v4 = [(ICHashtag *)self displayText];
  [v3 setDisplayName:v4];
  [v3 setTextContent:v4];
  [v3 setIc_searchResultType:4];
  [v3 ic_populateValuesForSpecializedFields];
  [v3 setDataOwnerType:&unk_282747B20];
  if (objc_opt_respondsToSelector())
  {
    [(ICHashtag *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  return v3;
}

- (id)searchableTextContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICHashtag *)self displayText];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(ICHashtag *)self standardizedContent];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [v3 componentsJoinedByString:@" "];

  return v6;
}

+ (id)hashtagWithDisplayText:(id)a3 account:(id)a4 createIfNecessary:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [a1 standardizedHashtagRepresentationForDisplayText:v8];
  v11 = [a1 hashtagWithStandardizedContent:v10 account:v9];
  if (!v11 && v5)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];

    v11 = [a1 newHashtagWithIdentifier:v13 displayText:v8 account:v9];
    [v11 updateChangeCountWithReason:@"Created tag"];
  }

  return v11;
}

+ (id)newHashtagWithIdentifier:(id)a3 displayText:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 managedObjectContext];
  v12 = [a1 newObjectWithIdentifier:v10 context:v11];

  v13 = [MEMORY[0x277CBEAA8] now];
  [v12 setCreationDate:v13];

  v14 = [v9 ic_withoutHashtagPrefix];
  [v12 setDisplayText:v14];

  v15 = [a1 standardizedHashtagRepresentationForDisplayText:v9];

  [v12 setStandardizedContent:v15];
  v16 = [v8 persistentStore];
  [v12 assignToPersistentStore:v16];

  [v8 addHashtagsObject:v12];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v12, @"ICAccountDidAddHashtagNotificationHashtagKey", 0}];
  [v17 postNotificationName:@"ICAccountDidAddHashtagNotification" object:v8 userInfo:v18];

  return v12;
}

+ (id)allVisibleHashtagsInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForVisibleObjects];
  v6 = [a1 ic_objectsMatchingPredicate:v5 context:v4];

  return v6;
}

+ (id)canonicalHashtagsInContext:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [a1 allVisibleHashtagsInContext:a3];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 standardizedContent];
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = v11;
        if (!v11 || ([v11 creationDate], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "creationDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "compare:", v14), v14, v13, v15 >= 1))
        {
          [v4 setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = MEMORY[0x277CCAC98];
  v17 = NSStringFromSelector(sel_standardizedContent);
  v18 = [v16 sortDescriptorWithKey:v17 ascending:1];

  v19 = [v4 allValues];
  v28 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21 = [v19 sortedArrayUsingDescriptors:v20];

  return v21;
}

- (BOOL)canRenameTagWithNewDisplayText:(id)a3
{
  v4 = [ICHashtag standardizedHashtagRepresentationForDisplayText:a3];
  v5 = [(ICHashtag *)self account];
  v6 = [ICHashtag hashtagWithStandardizedContent:v4 account:v5];

  if (v6)
  {
    v7 = [(ICHashtag *)self standardizedContent];
    v8 = [v7 isEqualToString:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)hashtagWithIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"identifier = %@", a3];
  v9 = [a1 ic_objectsMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)hashtagsWithStandardizedContent:(id)a3 onlyVisible:(BOOL)a4 account:(id)a5 context:(id)a6
{
  v7 = a4;
  v16[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (a3)
  {
    v11 = [a1 predicateForHashtagWithStandardizedContent:a3 onlyVisible:v7 account:a5];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

    v14 = [a1 ic_objectsMatchingPredicate:v11 sortDescriptors:v13 context:v10];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((standardizedContent) != nil)" functionName:"+[ICHashtag hashtagsWithStandardizedContent:onlyVisible:account:context:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "standardizedContent"}];
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

+ (id)hashtagObjectIDsWithStandardizedContents:(id)a3 context:(id)a4
{
  v6 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __62__ICHashtag_hashtagObjectIDsWithStandardizedContents_context___block_invoke;
  v14 = &unk_2781997B8;
  v15 = v6;
  v16 = a1;
  v7 = v6;
  v8 = [a3 ic_flatMap:&v11];
  v9 = [MEMORY[0x277CBEB98] setWithArray:{v8, v11, v12, v13, v14}];

  return v9;
}

id __62__ICHashtag_hashtagObjectIDsWithStandardizedContents_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 40) hashtagsWithStandardizedContent:a2 context:*(a1 + 32)];
  v3 = [v2 ic_compactMap:&__block_literal_global_59];

  return v3;
}

+ (id)hashtagObjectIDWithStandardizedContent:(id)a3 context:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [a1 hashtagObjectIDsWithStandardizedContents:v9 context:{v7, v13, v14}];

  v11 = [v10 anyObject];

  return v11;
}

+ (id)hashtagWithStandardizedContent:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [a1 hashtagsWithStandardizedContent:v7 onlyVisible:1 account:v6 context:v8];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)hashtagWithStandardizedContent:(id)a3 onlyVisible:(BOOL)a4 account:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v8 managedObjectContext];
  v11 = [a1 hashtagsWithStandardizedContent:v9 onlyVisible:v5 account:v8 context:v10];

  v12 = [v11 firstObject];

  return v12;
}

+ (id)allVisibleHashtagsForAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForHashtagWithStandardizedContent:0 onlyVisible:1 account:v4];
  v6 = [v4 managedObjectContext];

  v7 = [a1 ic_objectsMatchingPredicate:v5 context:v6];

  return v7;
}

+ (id)predicateForHashtagWithStandardizedContent:(id)a3 onlyVisible:(BOOL)a4 account:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  if (v6)
  {
    v11 = [a1 predicateForVisibleObjects];
    [v10 addObject:v11];
  }

  if (v9)
  {
    v12 = MEMORY[0x277CCAC30];
    v13 = [v9 identifier];
    v14 = [v12 predicateWithFormat:@"account.identifier == %@", v13];
    [v10 addObject:v14];
  }

  if ([v8 length])
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"standardizedContent == %@", v8];
    [v10 addObject:v15];
  }

  v16 = MEMORY[0x277CCA920];
  v17 = [v10 copy];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  return v18;
}

+ (void)purgeHashtag:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:@"ICAccountDidPurgeHashtagNotification" object:0 userInfo:0];

  v6 = [v4 managedObjectContext];
  [v6 deleteObject:v4];
}

+ (id)standardizedHashtagRepresentationForDisplayText:(id)a3
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  v5 = [v3 currentLocale];
  v6 = [v4 stringByFoldingWithOptions:257 locale:v5];

  v7 = [v6 ic_trimmedString];

  v8 = MEMORY[0x277CCA900];
  v9 = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
  v10 = [v8 characterSetWithCharactersInString:v9];
  v11 = [v7 ic_stringByTrimmingLeadingCharactersInSet:v10];

  v12 = [v11 uppercaseString];

  v13 = [v12 stringByReplacingOccurrencesOfString:@" " withString:&stru_2827172C0];

  return v13;
}

+ (void)dedupeHashtagsInAccount:(id)a3 atomicityExploitationCallback:(id)a4
{
  v86[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v66 = a4;
  v7 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICHashtag dedupeHashtagsInAccount:v6 atomicityExploitationCallback:v7];
  }

  v8 = MEMORY[0x277CCA9C0];
  v9 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"creationDate"];
  v86[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
  v11 = [v8 expressionForFunction:@"min:" arguments:v10];

  v12 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v12 setName:@"minCreationDate"];
  [v12 setExpression:v11];
  [v12 setExpressionResultType:900];
  v13 = MEMORY[0x277CCA920];
  v14 = +[ICCloudSyncingObject predicateForVisibleObjects];
  v85[0] = v14;
  v15 = MEMORY[0x277CCAC30];
  v16 = [v6 identifier];
  v17 = [v15 predicateWithFormat:@"account.identifier == %@", v16];
  v85[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
  v19 = [v13 andPredicateWithSubpredicates:v18];

  v20 = v19;
  v21 = [a1 fetchRequest];
  [v21 setPredicate:v19];
  [v21 setPropertiesToGroupBy:&unk_2827480C0];
  v84[0] = @"standardizedContent";
  v84[1] = v12;
  v84[2] = @"objectID";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
  [v21 setPropertiesToFetch:v22];

  [v21 setResultType:2];
  v23 = [v6 managedObjectContext];
  v76 = 0;
  v24 = [v23 executeFetchRequest:v21 error:&v76];
  v25 = v76;

  if (v25)
  {
    v26 = MEMORY[0x277D36198];
    v27 = [v6 identifier];
    [v26 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICHashtag dedupeHashtagsInAccount:atomicityExploitationCallback:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch unique hashtags for account %@: %@", v27, v25}];
    v28 = v66;
  }

  else
  {
    v59 = a1;
    v60 = v21;
    v62 = v11;
    v63 = v20;
    v61 = v12;
    v29 = os_log_create("com.apple.notes", "CoreData");
    v65 = v24;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v24 count];
      v31 = [v6 identifier];
      *buf = 134218242;
      v81 = v30;
      v82 = 2112;
      v83 = v31;
      _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Found %lu unique hashtags for account: %@", buf, 0x16u);

      v24 = v65;
    }

    v64 = v6;

    v27 = [MEMORY[0x277CBEB58] set];
    v32 = [MEMORY[0x277CBEB58] set];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v33 = v24;
    v34 = [v33 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v73;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v73 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v72 + 1) + 8 * i);
          v39 = [v38 objectForKeyedSubscript:@"objectID"];
          [v27 addObject:v39];

          v40 = [v38 objectForKeyedSubscript:@"standardizedContent"];
          [v32 addObject:v40];
        }

        v35 = [v33 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v35);
    }

    v28 = v66;
    if (v66)
    {
      (*(v66 + 2))(v66);
    }

    v41 = [v59 fetchRequest];
    v42 = MEMORY[0x277CCA920];
    v78[0] = v20;
    v43 = [MEMORY[0x277CCAC30] predicateWithFormat:@"standardizedContent IN %@", v32];
    v78[1] = v43;
    v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (self IN %@)", v27];
    v78[2] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
    v46 = [v42 andPredicateWithSubpredicates:v45];
    [v41 setPredicate:v46];

    v6 = v64;
    v47 = [v64 managedObjectContext];
    v71 = 0;
    v48 = [v47 executeFetchRequest:v41 error:&v71];
    v25 = v71;

    if (v25)
    {
      v49 = MEMORY[0x277D36198];
      v50 = [v64 identifier];
      [v49 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICHashtag dedupeHashtagsInAccount:atomicityExploitationCallback:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch hashtags to delete for account %@: %@", v50, v25}];
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v58 = v48;
      v51 = v48;
      v52 = [v51 countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v68;
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v68 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v67 + 1) + 8 * j);
            v57 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              [(ICHashtag *)buf dedupeHashtagsInAccount:v56 atomicityExploitationCallback:&v81, v57];
            }

            [v56 markForDeletion];
          }

          v53 = [v51 countByEnumeratingWithState:&v67 objects:v77 count:16];
        }

        while (v53);
      }

      v6 = v64;
      v50 = [v64 managedObjectContext];
      [v50 ic_save];
      v28 = v66;
      v20 = v63;
      v25 = 0;
      v48 = v58;
    }

    v12 = v61;
    v11 = v62;
    v21 = v60;
    v24 = v65;
  }
}

+ (BOOL)regenerateStandardizedContentForAllHashtagsInContext:(id)a3 hasChanges:(BOOL *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 predicateForHashtagWithStandardizedContent:0 onlyVisible:1 account:0];
  v25 = v6;
  [a1 ic_objectsMatchingPredicate:v7 context:v6];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v29 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {

    v20 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v22 = v7;
  v23 = a4;
  v24 = 0;
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
      v14 = objc_autoreleasePoolPush();
      v15 = [v13 displayText];
      v16 = [a1 standardizedHashtagRepresentationForDisplayText:v15];

      v17 = [v13 standardizedContent];
      v18 = [v16 isEqualToString:v17];

      if ((v18 & 1) == 0)
      {
        v19 = [v13 standardizedContent];
        [ICInlineAttachment regenerateTokenContentIdentifierForHashtagAttachmentsInContext:v25 currentTokenContentIdentifier:v19 save:0];

        [v13 setStandardizedContent:v16];
        [v13 updateChangeCountWithReason:@"Regenerated standardized content"];
        v24 = 1;
      }

      objc_autoreleasePoolPop(v14);
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v10);

  if (v24)
  {
    [v25 ic_save];
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v7 = v22;
  a4 = v23;
  if (v23)
  {
LABEL_16:
    *a4 = v20;
  }

LABEL_17:

  return 1;
}

+ (id)renameHashtagsWithStandardizedContent:(id)a3 newDisplayText:(id)a4 context:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v7 = a4;
  v8 = a5;
  if (![v7 length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"newDisplayText.length" functionName:"+[ICHashtag renameHashtagsWithStandardizedContent:newDisplayText:context:]" simulateCrash:1 showAlert:0 format:@"Hashtag must have a non-empty display text"];
  }

  v9 = 0x278192000uLL;
  v10 = [ICHashtag standardizedHashtagRepresentationForDisplayText:v7];
  v42 = v7;
  v11 = [v7 ic_withHashtagPrefix];
  v41 = [MEMORY[0x277CBEB18] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [ICAccount allActiveAccountsInContext:v8];
  v45 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v45)
  {
    v43 = *v61;
    v44 = v8;
    v50 = v11;
    do
    {
      v12 = 0;
      do
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v12;
        v13 = *(*(&v60 + 1) + 8 * v12);
        v14 = [*(v9 + 3328) hashtagWithStandardizedContent:v51 account:v13];
        [v14 markForDeletion];
        v48 = v14;
        if (v14)
        {
          v15 = [*(v9 + 3328) hashtagWithDisplayText:v42 account:v13 createIfNecessary:1];
          [v41 addObject:v15];
        }

        v47 = v13;
        v16 = MEMORY[0x277CCA920];
        v17 = +[(ICBaseAttachment *)ICInlineAttachment];
        v66[0] = v17;
        v18 = [ICInlineAttachment predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
        v66[1] = v18;
        v19 = [ICInlineAttachment predicateForTokenContentIdentifier:v51];
        v66[2] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
        v21 = [v16 andPredicateWithSubpredicates:v20];
        v22 = [ICInlineAttachment ic_objectsMatchingPredicate:v21 context:v8];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v57;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v57 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v56 + 1) + 8 * i);
              [v28 setTokenContentIdentifier:v10];
              [v28 setAltText:v50];
              [v28 updateChangeCountWithReason:@"Renamed tag"];
              v29 = [v28 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
            }

            v25 = [v23 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v25);
        }

        v46 = v23;

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v30 = [ICFolder visibleSmartFoldersForHashtagStandardizedContent:v51 account:v47];
        v31 = [v30 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v53;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v53 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v52 + 1) + 8 * j);
              v36 = [v35 smartFolderQuery];
              v37 = [v36 replacingTagIdentifier:v51 withNewTagIdentifier:v10];
              [v35 setSmartFolderQuery:v37];

              [v35 updateChangeCountWithReason:@"Renamed tag"];
            }

            v32 = [v30 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v32);
        }

        [ICInlineAttachment regenerateDerivedDataForInlineAttachments:v46 reason:@"Renamed tag"];
        v11 = v50;
        v12 = v49 + 1;
        v8 = v44;
        v9 = 0x278192000;
      }

      while (v49 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v45);
  }

  v38 = [v41 copy];

  return v38;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICHashtag;
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICHashtag *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__ICHashtag_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 performBlockAndWait:v9];

  v7 = v6;
  return v6;
}

void __29__ICHashtag_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) creationDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"creationDate"];

  v8 = [*(a1 + 40) standardizedContent];
  v5 = [v8 ic_sha256];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"nil";
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"standardizedContentHash"];
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3
{
  v4 = a3;
  v5 = self;
  ICHashtag.associateAppEntity(with:)(v4);
}

+ (void)dedupeHashtagsInAccount:(void *)a1 atomicityExploitationCallback:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Attempting to de-dupe hashtags for account: %@", &v4, 0xCu);
}

+ (void)dedupeHashtagsInAccount:(void *)a3 atomicityExploitationCallback:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Deleting duplicate hashtag: %@", a1, 0xCu);
}

@end