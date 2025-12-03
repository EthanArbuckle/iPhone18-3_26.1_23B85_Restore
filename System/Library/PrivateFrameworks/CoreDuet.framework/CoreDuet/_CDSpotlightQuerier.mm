@interface _CDSpotlightQuerier
+ (id)mdSearchableQueryAttributes;
+ (id)orQueryStrings:(uint64_t)strings;
+ (id)querySpotlightForPredicateString:(void *)string startDate:(void *)date endDate:;
+ (id)queryStringWithPredicateStr:(void *)str userEmails:(void *)emails startDate:(void *)date endDate:;
+ (uint64_t)queryStringForMail;
+ (uint64_t)queryStringForMessages;
- (NSMutableArray)requestQuery:(uint64_t)query;
@end

@implementation _CDSpotlightQuerier

+ (id)querySpotlightForPredicateString:(void *)string startDate:(void *)date endDate:
{
  v21[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  stringCopy = string;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = objc_alloc_init(_CDSpotlightQuerier);
  v11 = [(_CDSpotlightQuerier *)v9 queryStringWithPredicateStr:v8 userEmails:0 startDate:stringCopy endDate:dateCopy];

  v12 = +[_CDSpotlightQuerier mdSearchableQueryAttributes];
  if (v12)
  {
    v13 = getMDSearchQueryOptionFetchAttributes();
    v20 = v13;
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  MDSearchQueryClass = getMDSearchQueryClass();
  if (MDSearchQueryClass)
  {
    v19 = [[MDSearchQueryClass alloc] initWithQueryString:v11 options:v14];
    v16 = [(_CDSpotlightQuerier *)v10 requestQuery:v19];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)queryStringWithPredicateStr:(void *)str userEmails:(void *)emails startDate:(void *)date endDate:
{
  v50 = *MEMORY[0x1E69E9840];
  v39 = a2;
  strCopy = str;
  emailsCopy = emails;
  dateCopy = date;
  objc_opt_self();
  v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v37 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v11 setLocale:?];
  [v11 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v11 stringFromDate:emailsCopy];
  v38 = v11;
  v14 = [v11 stringFromDate:dateCopy];
  v36 = [v12 stringWithFormat:@"(InRange(kMDItemContentCreationDate, $time.iso(%@), $time.iso(%@)))", v13, v14];

  string = [MEMORY[0x1E696AD60] string];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = strCopy;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        if ([string length])
        {
          v22 = @" || ";
        }

        else
        {
          v22 = &stru_1F05B9908;
        }

        [string appendFormat:@"%@%@=%@", v22, 0, v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v18);
  }

  string2 = [MEMORY[0x1E696AD60] string];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = v16;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        if ([string2 length])
        {
          v30 = @" || ";
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        [string2 appendFormat:@"%@%@=%@", v30, 0, v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ || %@)", string, string2];
  v32 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@ && (%@)", v36, v39];
  v33 = v32;
  if (v24)
  {
    [v32 appendFormat:@" && %@", v31];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (id)mdSearchableQueryAttributes
{
  v21[16] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v0 = mdSearchableQueryAttributes_mdSearchQueryAttributes;
  if (!mdSearchableQueryAttributes_mdSearchQueryAttributes)
  {
    v20 = getMDItemContentType();
    v21[0] = v20;
    v19 = getMDItemContentCreationDate();
    v21[1] = v19;
    v18 = getMDItemAccountIdentifier();
    v21[2] = v18;
    v17 = getMDItemAuthorPersons();
    v21[3] = v17;
    v16 = getMDItemRecipientEmailAddresses();
    v21[4] = v16;
    v15 = getMDItemPrimaryRecipientPersons();
    v21[5] = v15;
    v1 = getMDItemRecipients();
    v21[6] = v1;
    v2 = getMDItemSubject();
    v21[7] = v2;
    v3 = getMDItemDisplayName();
    v21[8] = v3;
    v4 = getMDItemMailboxes();
    v21[9] = v4;
    v5 = getMDItemEmailHeadersDictionary();
    v21[10] = v5;
    v6 = getMDItemPrimaryRecipientPersons();
    v21[11] = v6;
    v7 = getMDItemAdditionalRecipientPersons();
    v21[12] = v7;
    v8 = getMDItemHiddenAdditionalRecipientPersons();
    v21[13] = v8;
    v9 = getMDItemAccountHandles();
    v21[14] = v9;
    v10 = getMDItemAccountIdentifier();
    v21[15] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];
    v12 = mdSearchableQueryAttributes_mdSearchQueryAttributes;
    mdSearchableQueryAttributes_mdSearchQueryAttributes = v11;

    v0 = mdSearchableQueryAttributes_mdSearchQueryAttributes;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (uint64_t)queryStringForMail
{
  objc_opt_self();
  objc_opt_self();
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@=com.apple.mail.emlx || %@=public.email-message)", @"kMDItemContentType", @"kMDItemContentType"];
}

+ (uint64_t)queryStringForMessages
{
  objc_opt_self();
  objc_opt_self();
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@=public.message || %@=public.email-message || %@= com.apple.mail.emlx)", @"kMDItemContentType", @"kMDItemContentType", @"kMDItemContentType"];
}

+ (id)orQueryStrings:(uint64_t)strings
{
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [v2 componentsJoinedByString:@" || "];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSMutableArray)requestQuery:(uint64_t)query
{
  v3 = a2;
  if (query)
  {
    v4 = objc_alloc_init(_CDMDSearchQueryDelegate);
    v5 = dispatch_semaphore_create(0);
    [(_DKPredictionTimeline *)v4 setStartDate:v5];

    [v3 setDelegate:v4];
    [v3 start];
    if (v4)
    {
      v6 = v4->_mdQuerySem;
      v7 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v6, v7);

      [v3 cancel];
      recentMDSearchQueryResults = v4->_recentMDSearchQueryResults;
    }

    else
    {
      v11 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(0, v11);
      [v3 cancel];
      recentMDSearchQueryResults = 0;
    }

    v9 = recentMDSearchQueryResults;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end