@interface FCIssueRecordSource
+ (id)_URLStringForCoverImageKey:(id)key inRecord:(id)record;
- (id)alwaysLocalizedKeys;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCIssueRecordSource

- (id)nonLocalizableKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FCIssueRecordSource_nonLocalizableKeys__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB26E88 != -1)
  {
    dispatch_once(&qword_1EDB26E88, block);
  }

  return _MergedGlobals_130;
}

void __41__FCIssueRecordSource_nonLocalizableKeys__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__FCIssueRecordSource_nonLocalizableKeys__block_invoke_2;
  v3[3] = &unk_1E7C36D40;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] fc_array:v3];
  v2 = _MergedGlobals_130;
  _MergedGlobals_130 = v1;
}

void __41__FCIssueRecordSource_nonLocalizableKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 addObject:@"allArticleIDs"];
  [v5 addObject:@"allowedStorefrontIDs"];
  [v5 addObject:@"blockedStorefrontIDs"];
  [v5 addObject:@"channelTagID"];
  [v5 addObject:@"coverArticleID"];
  [v5 addObject:@"coverAspectRatio"];
  [v5 addObject:@"coverImage"];
  [v5 addObject:@"coverPrimaryColor"];
  [v5 addObject:@"coverBackgroundColor"];
  [v5 addObject:@"coverTextColor"];
  [v5 addObject:@"coverAccentColor"];
  [v5 addObject:@"description"];
  [v5 addObject:@"edition"];
  [v5 addObject:@"halfLife"];
  [v5 addObject:@"isDraft"];
  [v5 addObject:@"isPaid"];
  [v5 addObject:@"minNewsVersion"];
  [v5 addObject:@"layeredCover"];
  [v5 addObject:@"layeredCoverAspectRatio"];
  [v5 addObject:@"layeredCoverPrimaryColor"];
  [v5 addObject:@"metadataAssetEncrypted"];
  [v5 addObject:@"notificationDescription"];
  [v5 addObject:@"pdfResourceArchive"];
  [v5 addObject:@"publishDate"];
  [v5 addObject:@"title"];
  [v5 addObject:@"topicTagIDs"];
  [v5 addObject:@"type"];
  [v5 addObject:@"sortDate"];
  v3 = *(a1 + 32);
  if ([objc_opt_class() _useTaggedImages])
  {
    v4 = [@"coverImage" stringByAppendingString:@"2"];
    [v5 addObject:v4];
  }
}

- (id)alwaysLocalizedKeys
{
  if (qword_1EDB26E98 != -1)
  {
    dispatch_once(&qword_1EDB26E98, &__block_literal_global_5);
  }

  v3 = qword_1EDB26E90;

  return v3;
}

uint64_t __42__FCIssueRecordSource_alwaysLocalizedKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"scores", 0}];
  v1 = qword_1EDB26E90;
  qword_1EDB26E90 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  recordCopy = record;
  baseCopy = base;
  v8 = objc_alloc_init(MEMORY[0x1E69B6E60]);
  [v8 setBase:baseCopy];
  v9 = [recordCopy objectForKey:@"allArticleIDs"];
  v10 = [v9 mutableCopy];
  [v8 setAllArticleIDs:v10];

  v11 = [recordCopy objectForKey:@"allowedStorefrontIDs"];
  v12 = [v11 mutableCopy];
  [v8 setAllowedStorefrontIDs:v12];

  v13 = [recordCopy objectForKey:@"blockedStorefrontIDs"];
  v14 = [v13 mutableCopy];
  [v8 setBlockedStorefrontIDs:v14];

  v15 = [recordCopy objectForKey:@"channelTagID"];
  [v8 setChannelTagID:v15];

  objc_opt_class();
  v16 = [recordCopy objectForKey:@"coverArticleID"];
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  [v8 setCoverArticleID:v18];

  objc_opt_class();
  v19 = [recordCopy objectForKey:@"coverAspectRatio"];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v21 doubleValue];
  [v8 setCoverAspectRatio:?];

  v22 = [objc_opt_class() _URLStringForCoverImageKey:@"coverImage" inRecord:recordCopy];
  [v8 setCoverImageURL:v22];

  v23 = [recordCopy objectForKey:@"coverPrimaryColor"];
  [v8 setCoverPrimaryColor:v23];

  v24 = [recordCopy objectForKey:@"coverBackgroundColor"];
  [v8 setCoverBackgroundColor:v24];

  v25 = [recordCopy objectForKey:@"coverTextColor"];
  [v8 setCoverTextColor:v25];

  v26 = [recordCopy objectForKey:@"coverAccentColor"];
  [v8 setCoverAccentColor:v26];

  v27 = [recordCopy objectForKey:@"edition"];
  [v8 setEdition:v27];

  v28 = [recordCopy objectForKey:@"halfLife"];
  [v8 setHalfLifeMilliseconds:{objc_msgSend(v28, "unsignedLongLongValue")}];

  objc_opt_class();
  v29 = [recordCopy objectForKey:@"isDraft"];
  if (v29)
  {
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  [v8 setIsDraft:{objc_msgSend(v31, "BOOLValue")}];

  objc_opt_class();
  v32 = [recordCopy objectForKey:@"isPaid"];
  if (v32)
  {
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  [v8 setIsPaid:{objc_msgSend(v34, "BOOLValue")}];

  v35 = [recordCopy objectForKey:@"description"];
  [v8 setIssueDescription:v35];

  v36 = [recordCopy objectForKey:@"minNewsVersion"];
  [v8 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v36)}];

  v37 = [recordCopy objectForKey:@"layeredCover"];
  [v8 setLayeredCover:v37];

  objc_opt_class();
  v38 = [recordCopy objectForKey:@"layeredCoverAspectRatio"];
  if (v38)
  {
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;
  [v40 doubleValue];
  [v8 setLayeredCoverAspectRatio:?];

  v41 = [recordCopy objectForKey:@"layeredCoverPrimaryColor"];
  [v8 setLayeredCoverPrimaryColor:v41];

  v42 = [recordCopy objectForKey:@"notificationDescription"];
  [v8 setNotificationDescription:v42];

  objc_opt_class();
  v43 = [recordCopy objectForKey:@"pdfResourceArchive"];
  if (v43)
  {
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v8 setPdfResourceArchiveURL:v45];

  v46 = [recordCopy objectForKey:@"publishDate"];
  pbDate = [v46 pbDate];
  [v8 setPublishDate:pbDate];

  v48 = [recordCopy objectForKey:@"title"];
  [v8 setTitle:v48];

  v49 = [recordCopy objectForKey:@"topicTagIDs"];
  [v8 setTopicTagIDs:v49];

  v50 = [recordCopy objectForKey:@"sortDate"];
  pbDate2 = [v50 pbDate];
  [v8 setSortDate:pbDate2];

  v52 = [recordCopy objectForKey:@"type"];
  if ([v52 isEqualToString:@"flint"])
  {
    v53 = 1;
  }

  else
  {
    if (![v52 isEqualToString:@"pdf"])
    {
      goto LABEL_36;
    }

    v53 = 2;
  }

  [v8 setType:v53];
LABEL_36:
  if ([v8 type] == 2)
  {
    objc_opt_class();
    v54 = [recordCopy objectForKey:@"metadataAssetEncrypted"];
    if (v54)
    {
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v55 = 0;
    }

    v57 = v55;

    if (v57)
    {
      [v8 setMetadataURL:v57];
    }
  }

  else
  {
    identifier = [baseCopy identifier];
    v57 = [FCRecordFieldURLProtocol URLForRecordID:identifier fieldName:@"metadataAsset"];

    absoluteString = [v57 absoluteString];
    [v8 setMetadataURL:absoluteString];
  }

  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v60 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"scores"];
  v61 = [recordCopy objectForKey:v60];
  v62 = v61;
  if (v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = [recordCopy objectForKey:@"scores"];
  }

  v64 = v63;

  v65 = [objc_alloc(MEMORY[0x1E69B6C88]) initWithData:v64];
  [v8 setScores:v65];

  return v8;
}

+ (id)_URLStringForCoverImageKey:(id)key inRecord:(id)record
{
  keyCopy = key;
  recordCopy = record;
  if ([self _useTaggedImages])
  {
    v8 = [keyCopy stringByAppendingString:@"2"];
    objc_opt_class();
    v9 = [recordCopy objectForKeyedSubscript:v8];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
      v11 = v10;
    }

    else
    {
      objc_opt_class();
      v13 = [recordCopy objectForKeyedSubscript:keyCopy];
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v11 = v14;

      v10 = 0;
    }
  }

  else
  {
    objc_opt_class();
    v8 = [recordCopy objectForKeyedSubscript:keyCopy];
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v8;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v11 = v12;
  }

  return v11;
}

@end