@interface ICHashtag
+ (BOOL)regenerateStandardizedContentForAllHashtagsInContext:(id)context hasChanges:(BOOL *)changes;
+ (id)allVisibleHashtagsForAccount:(id)account;
+ (id)allVisibleHashtagsInContext:(id)context;
+ (id)canonicalHashtagsInContext:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)hashtagObjectIDWithStandardizedContent:(id)content context:(id)context;
+ (id)hashtagObjectIDsWithStandardizedContents:(id)contents context:(id)context;
+ (id)hashtagWithDisplayText:(id)text account:(id)account createIfNecessary:(BOOL)necessary;
+ (id)hashtagWithIdentifier:(id)identifier context:(id)context;
+ (id)hashtagWithStandardizedContent:(id)content account:(id)account;
+ (id)hashtagWithStandardizedContent:(id)content onlyVisible:(BOOL)visible account:(id)account;
+ (id)hashtagsWithStandardizedContent:(id)content onlyVisible:(BOOL)visible account:(id)account context:(id)context;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newHashtagWithIdentifier:(id)identifier displayText:(id)text account:(id)account;
+ (id)predicateForHashtagWithStandardizedContent:(id)content onlyVisible:(BOOL)visible account:(id)account;
+ (id)renameHashtagsWithStandardizedContent:(id)content newDisplayText:(id)text context:(id)context;
+ (id)standardizedHashtagRepresentationForDisplayText:(id)text;
+ (void)dedupeHashtagsInAccount:(id)account atomicityExploitationCallback:(id)callback;
+ (void)purgeHashtag:(id)hashtag;
- (BOOL)canRenameTagWithNewDisplayText:(id)text;
- (BOOL)isInICloudAccount;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)searchableTextContent;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set;
@end

@implementation ICHashtag

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  if (approach)
  {
    v11 = MEMORY[0x277D36198];
    className = [(ICHashtag *)self className];
    v13 = ICStringFromSyncingApproach(approach);
    [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICHashtag(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v13}];

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v25.receiver = self;
  v25.super_class = ICHashtag;
  if (![(ICCloudSyncingObject *)&v25 mergeCloudKitRecord:recordCopy accountID:d approach:0 mergeableFieldState:state])
  {
    goto LABEL_5;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [(ICHashtag *)self setIdentifier:recordName];

  v16 = [recordCopy objectForKeyedSubscript:@"CreationDate"];
  [(ICHashtag *)self setCreationDate:v16];

  encryptedValues = [recordCopy encryptedValues];
  v18 = [encryptedValues objectForKeyedSubscript:@"DisplayTextEncrypted"];
  ic_stringValue = [v18 ic_stringValue];
  [(ICHashtag *)self setDisplayText:ic_stringValue];

  encryptedValues2 = [recordCopy encryptedValues];
  v21 = [encryptedValues2 objectForKeyedSubscript:@"StandardizedContentEncrypted"];
  ic_stringValue2 = [v21 ic_stringValue];
  [(ICHashtag *)self setStandardizedContent:ic_stringValue2];

  v23 = 1;
LABEL_6:

  return v23;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  if (approach)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICHashtag *)self className:approach];
    v8 = ICStringFromSyncingApproach(approach);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICHashtag(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = ICHashtag;
    v9 = [(ICCloudSyncingObject *)&v21 makeCloudKitRecordForApproach:0 mergeableFieldState:state];
    creationDate = [(ICCloudSyncingObject *)self creationDate];

    if (creationDate)
    {
      creationDate2 = [(ICCloudSyncingObject *)self creationDate];
      [v9 setObject:creationDate2 forKeyedSubscript:@"CreationDate"];
    }

    displayText = [(ICHashtag *)self displayText];

    if (displayText)
    {
      displayText2 = [(ICHashtag *)self displayText];
      ic_dataValue = [displayText2 ic_dataValue];
      encryptedValues = [v9 encryptedValues];
      [encryptedValues setObject:ic_dataValue forKeyedSubscript:@"DisplayTextEncrypted"];
    }

    standardizedContent = [(ICHashtag *)self standardizedContent];

    if (standardizedContent)
    {
      standardizedContent2 = [(ICHashtag *)self standardizedContent];
      ic_dataValue2 = [standardizedContent2 ic_dataValue];
      encryptedValues2 = [v9 encryptedValues];
      [encryptedValues2 setObject:ic_dataValue2 forKeyedSubscript:@"StandardizedContentEncrypted"];
    }
  }

  return v9;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  contextCopy = context;
  recordName = [d recordName];
  v8 = [ICHashtag hashtagWithIdentifier:recordName context:contextCopy];

  return v8;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v9 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:context];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v12 = [ICHashtag newHashtagWithIdentifier:recordName displayText:&stru_2827172C0 account:v9];

  [v9 addHashtagsObject:v12];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [v12 setCreationDate:distantPast];

  [v12 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];
  [v12 setServerRecord:recordCopy];

  [v12 setInCloud:1];
  [v12 clearChangeCountWithReason:@"Created tag"];
  [v12 updateParentReferenceIfNecessary];

  return v12;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICHashtag *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICHashtag_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  objectID = [(ICHashtag *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (NSString)searchDomainIdentifier
{
  account = [(ICHashtag *)self account];
  identifier = [account identifier];

  return identifier;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  creationDate = [(ICCloudSyncingObject *)self creationDate];
  [v3 setContentCreationDate:creationDate];

  creationDate2 = [(ICCloudSyncingObject *)self creationDate];
  [v3 setAddedDate:creationDate2];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  userActivityContentAttributeSet = [(ICHashtag *)self userActivityContentAttributeSet];
  displayText = [(ICHashtag *)self displayText];
  [userActivityContentAttributeSet setDisplayName:displayText];
  [userActivityContentAttributeSet setTextContent:displayText];
  [userActivityContentAttributeSet setIc_searchResultType:4];
  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  [userActivityContentAttributeSet setDataOwnerType:&unk_282747B20];
  if (objc_opt_respondsToSelector())
  {
    [(ICHashtag *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  return userActivityContentAttributeSet;
}

- (id)searchableTextContent
{
  array = [MEMORY[0x277CBEB18] array];
  displayText = [(ICHashtag *)self displayText];
  if (displayText)
  {
    [array addObject:displayText];
  }

  standardizedContent = [(ICHashtag *)self standardizedContent];
  if (standardizedContent)
  {
    [array addObject:standardizedContent];
  }

  v6 = [array componentsJoinedByString:@" "];

  return v6;
}

+ (id)hashtagWithDisplayText:(id)text account:(id)account createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  textCopy = text;
  accountCopy = account;
  v10 = [self standardizedHashtagRepresentationForDisplayText:textCopy];
  v11 = [self hashtagWithStandardizedContent:v10 account:accountCopy];
  if (!v11 && necessaryCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v11 = [self newHashtagWithIdentifier:uUIDString displayText:textCopy account:accountCopy];
    [v11 updateChangeCountWithReason:@"Created tag"];
  }

  return v11;
}

+ (id)newHashtagWithIdentifier:(id)identifier displayText:(id)text account:(id)account
{
  accountCopy = account;
  textCopy = text;
  identifierCopy = identifier;
  managedObjectContext = [accountCopy managedObjectContext];
  v12 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  v13 = [MEMORY[0x277CBEAA8] now];
  [v12 setCreationDate:v13];

  ic_withoutHashtagPrefix = [textCopy ic_withoutHashtagPrefix];
  [v12 setDisplayText:ic_withoutHashtagPrefix];

  v15 = [self standardizedHashtagRepresentationForDisplayText:textCopy];

  [v12 setStandardizedContent:v15];
  persistentStore = [accountCopy persistentStore];
  [v12 assignToPersistentStore:persistentStore];

  [accountCopy addHashtagsObject:v12];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v12, @"ICAccountDidAddHashtagNotificationHashtagKey", 0}];
  [defaultCenter postNotificationName:@"ICAccountDidAddHashtagNotification" object:accountCopy userInfo:v18];

  return v12;
}

+ (id)allVisibleHashtagsInContext:(id)context
{
  contextCopy = context;
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v6 = [self ic_objectsMatchingPredicate:predicateForVisibleObjects context:contextCopy];

  return v6;
}

+ (id)canonicalHashtagsInContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [self allVisibleHashtagsInContext:context];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        standardizedContent = [v9 standardizedContent];
        v11 = [dictionary objectForKeyedSubscript:standardizedContent];
        v12 = v11;
        if (!v11 || ([v11 creationDate], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "creationDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "compare:", v14), v14, v13, v15 >= 1))
        {
          [dictionary setObject:v9 forKeyedSubscript:standardizedContent];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = MEMORY[0x277CCAC98];
  v17 = NSStringFromSelector(sel_standardizedContent);
  v18 = [v16 sortDescriptorWithKey:v17 ascending:1];

  allValues = [dictionary allValues];
  v28 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21 = [allValues sortedArrayUsingDescriptors:v20];

  return v21;
}

- (BOOL)canRenameTagWithNewDisplayText:(id)text
{
  v4 = [ICHashtag standardizedHashtagRepresentationForDisplayText:text];
  account = [(ICHashtag *)self account];
  v6 = [ICHashtag hashtagWithStandardizedContent:v4 account:account];

  if (v6)
  {
    standardizedContent = [(ICHashtag *)self standardizedContent];
    v8 = [standardizedContent isEqualToString:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)hashtagWithIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"identifier = %@", identifier];
  v9 = [self ic_objectsMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)hashtagsWithStandardizedContent:(id)content onlyVisible:(BOOL)visible account:(id)account context:(id)context
{
  visibleCopy = visible;
  v16[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (content)
  {
    v11 = [self predicateForHashtagWithStandardizedContent:content onlyVisible:visibleCopy account:account];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

    v14 = [self ic_objectsMatchingPredicate:v11 sortDescriptors:v13 context:contextCopy];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((standardizedContent) != nil)" functionName:"+[ICHashtag hashtagsWithStandardizedContent:onlyVisible:account:context:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "standardizedContent"}];
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

+ (id)hashtagObjectIDsWithStandardizedContents:(id)contents context:(id)context
{
  contextCopy = context;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __62__ICHashtag_hashtagObjectIDsWithStandardizedContents_context___block_invoke;
  v14 = &unk_2781997B8;
  v15 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  v8 = [contents ic_flatMap:&v11];
  v9 = [MEMORY[0x277CBEB98] setWithArray:{v8, v11, v12, v13, v14}];

  return v9;
}

id __62__ICHashtag_hashtagObjectIDsWithStandardizedContents_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 40) hashtagsWithStandardizedContent:a2 context:*(a1 + 32)];
  v3 = [v2 ic_compactMap:&__block_literal_global_59];

  return v3;
}

+ (id)hashtagObjectIDWithStandardizedContent:(id)content context:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v6 = MEMORY[0x277CBEA60];
  contextCopy = context;
  contentCopy2 = content;
  v9 = [v6 arrayWithObjects:&contentCopy count:1];

  v10 = [self hashtagObjectIDsWithStandardizedContents:v9 context:{contextCopy, contentCopy, v14}];

  anyObject = [v10 anyObject];

  return anyObject;
}

+ (id)hashtagWithStandardizedContent:(id)content account:(id)account
{
  accountCopy = account;
  contentCopy = content;
  managedObjectContext = [accountCopy managedObjectContext];
  v9 = [self hashtagsWithStandardizedContent:contentCopy onlyVisible:1 account:accountCopy context:managedObjectContext];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)hashtagWithStandardizedContent:(id)content onlyVisible:(BOOL)visible account:(id)account
{
  visibleCopy = visible;
  accountCopy = account;
  contentCopy = content;
  managedObjectContext = [accountCopy managedObjectContext];
  v11 = [self hashtagsWithStandardizedContent:contentCopy onlyVisible:visibleCopy account:accountCopy context:managedObjectContext];

  firstObject = [v11 firstObject];

  return firstObject;
}

+ (id)allVisibleHashtagsForAccount:(id)account
{
  accountCopy = account;
  v5 = [self predicateForHashtagWithStandardizedContent:0 onlyVisible:1 account:accountCopy];
  managedObjectContext = [accountCopy managedObjectContext];

  v7 = [self ic_objectsMatchingPredicate:v5 context:managedObjectContext];

  return v7;
}

+ (id)predicateForHashtagWithStandardizedContent:(id)content onlyVisible:(BOOL)visible account:(id)account
{
  visibleCopy = visible;
  contentCopy = content;
  accountCopy = account;
  v10 = objc_opt_new();
  if (visibleCopy)
  {
    predicateForVisibleObjects = [self predicateForVisibleObjects];
    [v10 addObject:predicateForVisibleObjects];
  }

  if (accountCopy)
  {
    v12 = MEMORY[0x277CCAC30];
    identifier = [accountCopy identifier];
    v14 = [v12 predicateWithFormat:@"account.identifier == %@", identifier];
    [v10 addObject:v14];
  }

  if ([contentCopy length])
  {
    contentCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"standardizedContent == %@", contentCopy];
    [v10 addObject:contentCopy];
  }

  v16 = MEMORY[0x277CCA920];
  v17 = [v10 copy];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  return v18;
}

+ (void)purgeHashtag:(id)hashtag
{
  v3 = MEMORY[0x277CCAB98];
  hashtagCopy = hashtag;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountDidPurgeHashtagNotification" object:0 userInfo:0];

  managedObjectContext = [hashtagCopy managedObjectContext];
  [managedObjectContext deleteObject:hashtagCopy];
}

+ (id)standardizedHashtagRepresentationForDisplayText:(id)text
{
  v3 = MEMORY[0x277CBEAF8];
  textCopy = text;
  currentLocale = [v3 currentLocale];
  v6 = [textCopy stringByFoldingWithOptions:257 locale:currentLocale];

  ic_trimmedString = [v6 ic_trimmedString];

  v8 = MEMORY[0x277CCA900];
  ic_hashtagCharacterString = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
  v10 = [v8 characterSetWithCharactersInString:ic_hashtagCharacterString];
  v11 = [ic_trimmedString ic_stringByTrimmingLeadingCharactersInSet:v10];

  uppercaseString = [v11 uppercaseString];

  v13 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:&stru_2827172C0];

  return v13;
}

+ (void)dedupeHashtagsInAccount:(id)account atomicityExploitationCallback:(id)callback
{
  v86[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  callbackCopy = callback;
  v7 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICHashtag dedupeHashtagsInAccount:accountCopy atomicityExploitationCallback:v7];
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
  identifier = [accountCopy identifier];
  v17 = [v15 predicateWithFormat:@"account.identifier == %@", identifier];
  v85[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
  v19 = [v13 andPredicateWithSubpredicates:v18];

  v20 = v19;
  fetchRequest = [self fetchRequest];
  [fetchRequest setPredicate:v19];
  [fetchRequest setPropertiesToGroupBy:&unk_2827480C0];
  v84[0] = @"standardizedContent";
  v84[1] = v12;
  v84[2] = @"objectID";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
  [fetchRequest setPropertiesToFetch:v22];

  [fetchRequest setResultType:2];
  managedObjectContext = [accountCopy managedObjectContext];
  v76 = 0;
  v24 = [managedObjectContext executeFetchRequest:fetchRequest error:&v76];
  v25 = v76;

  if (v25)
  {
    v26 = MEMORY[0x277D36198];
    identifier2 = [accountCopy identifier];
    [v26 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICHashtag dedupeHashtagsInAccount:atomicityExploitationCallback:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch unique hashtags for account %@: %@", identifier2, v25}];
    v28 = callbackCopy;
  }

  else
  {
    selfCopy = self;
    v60 = fetchRequest;
    v62 = v11;
    v63 = v20;
    v61 = v12;
    v29 = os_log_create("com.apple.notes", "CoreData");
    v65 = v24;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v24 count];
      identifier3 = [accountCopy identifier];
      *buf = 134218242;
      v81 = v30;
      v82 = 2112;
      v83 = identifier3;
      _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Found %lu unique hashtags for account: %@", buf, 0x16u);

      v24 = v65;
    }

    v64 = accountCopy;

    identifier2 = [MEMORY[0x277CBEB58] set];
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
          [identifier2 addObject:v39];

          v40 = [v38 objectForKeyedSubscript:@"standardizedContent"];
          [v32 addObject:v40];
        }

        v35 = [v33 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v35);
    }

    v28 = callbackCopy;
    if (callbackCopy)
    {
      (*(callbackCopy + 2))(callbackCopy);
    }

    fetchRequest2 = [selfCopy fetchRequest];
    v42 = MEMORY[0x277CCA920];
    v78[0] = v20;
    v43 = [MEMORY[0x277CCAC30] predicateWithFormat:@"standardizedContent IN %@", v32];
    v78[1] = v43;
    v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (self IN %@)", identifier2];
    v78[2] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
    v46 = [v42 andPredicateWithSubpredicates:v45];
    [fetchRequest2 setPredicate:v46];

    accountCopy = v64;
    managedObjectContext2 = [v64 managedObjectContext];
    v71 = 0;
    v48 = [managedObjectContext2 executeFetchRequest:fetchRequest2 error:&v71];
    v25 = v71;

    if (v25)
    {
      v49 = MEMORY[0x277D36198];
      identifier4 = [v64 identifier];
      [v49 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICHashtag dedupeHashtagsInAccount:atomicityExploitationCallback:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch hashtags to delete for account %@: %@", identifier4, v25}];
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

      accountCopy = v64;
      identifier4 = [v64 managedObjectContext];
      [identifier4 ic_save];
      v28 = callbackCopy;
      v20 = v63;
      v25 = 0;
      v48 = v58;
    }

    v12 = v61;
    v11 = v62;
    fetchRequest = v60;
    v24 = v65;
  }
}

+ (BOOL)regenerateStandardizedContentForAllHashtagsInContext:(id)context hasChanges:(BOOL *)changes
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [self predicateForHashtagWithStandardizedContent:0 onlyVisible:1 account:0];
  v25 = contextCopy;
  [self ic_objectsMatchingPredicate:v7 context:contextCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v29 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {

    v20 = 0;
    if (!changes)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v22 = v7;
  changesCopy = changes;
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
      displayText = [v13 displayText];
      v16 = [self standardizedHashtagRepresentationForDisplayText:displayText];

      standardizedContent = [v13 standardizedContent];
      v18 = [v16 isEqualToString:standardizedContent];

      if ((v18 & 1) == 0)
      {
        standardizedContent2 = [v13 standardizedContent];
        [ICInlineAttachment regenerateTokenContentIdentifierForHashtagAttachmentsInContext:v25 currentTokenContentIdentifier:standardizedContent2 save:0];

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
  changes = changesCopy;
  if (changesCopy)
  {
LABEL_16:
    *changes = v20;
  }

LABEL_17:

  return 1;
}

+ (id)renameHashtagsWithStandardizedContent:(id)content newDisplayText:(id)text context:(id)context
{
  v68 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  textCopy = text;
  contextCopy = context;
  if (![textCopy length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"newDisplayText.length" functionName:"+[ICHashtag renameHashtagsWithStandardizedContent:newDisplayText:context:]" simulateCrash:1 showAlert:0 format:@"Hashtag must have a non-empty display text"];
  }

  v9 = 0x278192000uLL;
  v10 = [ICHashtag standardizedHashtagRepresentationForDisplayText:textCopy];
  v42 = textCopy;
  ic_withHashtagPrefix = [textCopy ic_withHashtagPrefix];
  array = [MEMORY[0x277CBEB18] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [ICAccount allActiveAccountsInContext:contextCopy];
  v45 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v45)
  {
    v43 = *v61;
    v44 = contextCopy;
    v50 = ic_withHashtagPrefix;
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
        v14 = [*(v9 + 3328) hashtagWithStandardizedContent:contentCopy account:v13];
        [v14 markForDeletion];
        v48 = v14;
        if (v14)
        {
          v15 = [*(v9 + 3328) hashtagWithDisplayText:v42 account:v13 createIfNecessary:1];
          [array addObject:v15];
        }

        v47 = v13;
        v16 = MEMORY[0x277CCA920];
        v17 = +[(ICBaseAttachment *)ICInlineAttachment];
        v66[0] = v17;
        v18 = [ICInlineAttachment predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
        v66[1] = v18;
        v19 = [ICInlineAttachment predicateForTokenContentIdentifier:contentCopy];
        v66[2] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
        v21 = [v16 andPredicateWithSubpredicates:v20];
        v22 = [ICInlineAttachment ic_objectsMatchingPredicate:v21 context:contextCopy];

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
        v30 = [ICFolder visibleSmartFoldersForHashtagStandardizedContent:contentCopy account:v47];
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
              smartFolderQuery = [v35 smartFolderQuery];
              v37 = [smartFolderQuery replacingTagIdentifier:contentCopy withNewTagIdentifier:v10];
              [v35 setSmartFolderQuery:v37];

              [v35 updateChangeCountWithReason:@"Renamed tag"];
            }

            v32 = [v30 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v32);
        }

        [ICInlineAttachment regenerateDerivedDataForInlineAttachments:v46 reason:@"Renamed tag"];
        ic_withHashtagPrefix = v50;
        v12 = v49 + 1;
        contextCopy = v44;
        v9 = 0x278192000;
      }

      while (v49 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v45);
  }

  v38 = [array copy];

  return v38;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICHashtag;
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICHashtag *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__ICHashtag_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

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

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  ICHashtag.associateAppEntity(with:)(setCopy);
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