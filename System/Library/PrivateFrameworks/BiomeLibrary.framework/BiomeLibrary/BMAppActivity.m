@interface BMAppActivity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppActivity)initWithBundleID:(id)a3 activityType:(id)a4 beginningOfActivity:(id)a5 contentDescription:(id)a6 expirationDate:(id)a7 isEligibleForPrediction:(id)a8 isPubliclyIndexable:(id)a9 itemIdentifier:(id)a10 itemRelatedContentURL:(id)a11 itemRelatedUniqueIdentifier:(id)a12 shortcutAvailability:(id)a13 suggestedInvocationPhrase:(id)a14 title:(id)a15 userActivityRequiredString:(id)a16 userActivityUUID:(id)a17 sourceID:(id)a18 sourceBundleID:(id)a19 sourceItemID:(id)a20 sourceGroupID:(id)a21 calendarUserActivityDate:(id)a22 calendarUserActivityExternalID:(id)a23 calendarUserActivityEndDate:(id)a24;
- (BMAppActivity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)calendarUserActivityDate;
- (NSDate)calendarUserActivityEndDate;
- (NSDate)expirationDate;
- (NSString)description;
- (NSURL)itemRelatedContentURL;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppActivity

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppActivity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

+ (id)columns
{
  v27[22] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"beginningOfActivity" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentDescription" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expirationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEligibleForPrediction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPubliclyIndexable" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedContentURL" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:4];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortcutAvailability" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedInvocationPhrase" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityRequiredString" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityUUID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceItemID" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceGroupID" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityDate" dataType:3 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:1];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityExternalID" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityEndDate" dataType:3 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:1];
  v27[0] = v26;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v14;
  v27[4] = v23;
  v27[5] = v22;
  v27[6] = v21;
  v27[7] = v20;
  v27[8] = v19;
  v27[9] = v18;
  v27[10] = v17;
  v27[11] = v16;
  v27[12] = v2;
  v27[13] = v3;
  v27[14] = v4;
  v27[15] = v15;
  v27[16] = v5;
  v27[17] = v13;
  v27[18] = v6;
  v27[19] = v12;
  v27[20] = v7;
  v27[21] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:22];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppActivity *)self bundleID];
    v7 = [v5 bundleID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppActivity *)self bundleID];
      v10 = [v5 bundleID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_89;
      }
    }

    v13 = [(BMAppActivity *)self activityType];
    v14 = [v5 activityType];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppActivity *)self activityType];
      v17 = [v5 activityType];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasBeginningOfActivity](self, "hasBeginningOfActivity") || [v5 hasBeginningOfActivity])
    {
      if (![(BMAppActivity *)self hasBeginningOfActivity])
      {
        goto LABEL_89;
      }

      if (![v5 hasBeginningOfActivity])
      {
        goto LABEL_89;
      }

      v19 = [(BMAppActivity *)self beginningOfActivity];
      if (v19 != [v5 beginningOfActivity])
      {
        goto LABEL_89;
      }
    }

    v20 = [(BMAppActivity *)self contentDescription];
    v21 = [v5 contentDescription];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMAppActivity *)self contentDescription];
      v24 = [v5 contentDescription];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_89;
      }
    }

    v26 = [(BMAppActivity *)self expirationDate];
    v27 = [v5 expirationDate];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMAppActivity *)self expirationDate];
      v30 = [v5 expirationDate];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasIsEligibleForPrediction](self, "hasIsEligibleForPrediction") || [v5 hasIsEligibleForPrediction])
    {
      if (![(BMAppActivity *)self hasIsEligibleForPrediction])
      {
        goto LABEL_89;
      }

      if (![v5 hasIsEligibleForPrediction])
      {
        goto LABEL_89;
      }

      v32 = [(BMAppActivity *)self isEligibleForPrediction];
      if (v32 != [v5 isEligibleForPrediction])
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasIsPubliclyIndexable](self, "hasIsPubliclyIndexable") || [v5 hasIsPubliclyIndexable])
    {
      if (![(BMAppActivity *)self hasIsPubliclyIndexable])
      {
        goto LABEL_89;
      }

      if (![v5 hasIsPubliclyIndexable])
      {
        goto LABEL_89;
      }

      v33 = [(BMAppActivity *)self isPubliclyIndexable];
      if (v33 != [v5 isPubliclyIndexable])
      {
        goto LABEL_89;
      }
    }

    v34 = [(BMAppActivity *)self itemIdentifier];
    v35 = [v5 itemIdentifier];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(BMAppActivity *)self itemIdentifier];
      v38 = [v5 itemIdentifier];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_89;
      }
    }

    v40 = [(BMAppActivity *)self itemRelatedContentURL];
    v41 = [v5 itemRelatedContentURL];
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      v43 = [(BMAppActivity *)self itemRelatedContentURL];
      v44 = [v5 itemRelatedContentURL];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_89;
      }
    }

    v46 = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
    v47 = [v5 itemRelatedUniqueIdentifier];
    v48 = v47;
    if (v46 == v47)
    {
    }

    else
    {
      v49 = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
      v50 = [v5 itemRelatedUniqueIdentifier];
      v51 = [v49 isEqual:v50];

      if (!v51)
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasShortcutAvailability](self, "hasShortcutAvailability") || [v5 hasShortcutAvailability])
    {
      if (![(BMAppActivity *)self hasShortcutAvailability])
      {
        goto LABEL_89;
      }

      if (![v5 hasShortcutAvailability])
      {
        goto LABEL_89;
      }

      v52 = [(BMAppActivity *)self shortcutAvailability];
      if (v52 != [v5 shortcutAvailability])
      {
        goto LABEL_89;
      }
    }

    v53 = [(BMAppActivity *)self suggestedInvocationPhrase];
    v54 = [v5 suggestedInvocationPhrase];
    v55 = v54;
    if (v53 == v54)
    {
    }

    else
    {
      v56 = [(BMAppActivity *)self suggestedInvocationPhrase];
      v57 = [v5 suggestedInvocationPhrase];
      v58 = [v56 isEqual:v57];

      if (!v58)
      {
        goto LABEL_89;
      }
    }

    v59 = [(BMAppActivity *)self title];
    v60 = [v5 title];
    v61 = v60;
    if (v59 == v60)
    {
    }

    else
    {
      v62 = [(BMAppActivity *)self title];
      v63 = [v5 title];
      v64 = [v62 isEqual:v63];

      if (!v64)
      {
        goto LABEL_89;
      }
    }

    v65 = [(BMAppActivity *)self userActivityRequiredString];
    v66 = [v5 userActivityRequiredString];
    v67 = v66;
    if (v65 == v66)
    {
    }

    else
    {
      v68 = [(BMAppActivity *)self userActivityRequiredString];
      v69 = [v5 userActivityRequiredString];
      v70 = [v68 isEqual:v69];

      if (!v70)
      {
        goto LABEL_89;
      }
    }

    v71 = [(BMAppActivity *)self userActivityUUID];
    v72 = [v5 userActivityUUID];
    v73 = v72;
    if (v71 == v72)
    {
    }

    else
    {
      v74 = [(BMAppActivity *)self userActivityUUID];
      v75 = [v5 userActivityUUID];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_89;
      }
    }

    v77 = [(BMAppActivity *)self sourceID];
    v78 = [v5 sourceID];
    v79 = v78;
    if (v77 == v78)
    {
    }

    else
    {
      v80 = [(BMAppActivity *)self sourceID];
      v81 = [v5 sourceID];
      v82 = [v80 isEqual:v81];

      if (!v82)
      {
        goto LABEL_89;
      }
    }

    v83 = [(BMAppActivity *)self sourceBundleID];
    v84 = [v5 sourceBundleID];
    v85 = v84;
    if (v83 == v84)
    {
    }

    else
    {
      v86 = [(BMAppActivity *)self sourceBundleID];
      v87 = [v5 sourceBundleID];
      v88 = [v86 isEqual:v87];

      if (!v88)
      {
        goto LABEL_89;
      }
    }

    v89 = [(BMAppActivity *)self sourceItemID];
    v90 = [v5 sourceItemID];
    v91 = v90;
    if (v89 == v90)
    {
    }

    else
    {
      v92 = [(BMAppActivity *)self sourceItemID];
      v93 = [v5 sourceItemID];
      v94 = [v92 isEqual:v93];

      if (!v94)
      {
        goto LABEL_89;
      }
    }

    v95 = [(BMAppActivity *)self sourceGroupID];
    v96 = [v5 sourceGroupID];
    v97 = v96;
    if (v95 == v96)
    {
    }

    else
    {
      v98 = [(BMAppActivity *)self sourceGroupID];
      v99 = [v5 sourceGroupID];
      v100 = [v98 isEqual:v99];

      if (!v100)
      {
        goto LABEL_89;
      }
    }

    v101 = [(BMAppActivity *)self calendarUserActivityDate];
    v102 = [v5 calendarUserActivityDate];
    v103 = v102;
    if (v101 == v102)
    {
    }

    else
    {
      v104 = [(BMAppActivity *)self calendarUserActivityDate];
      v105 = [v5 calendarUserActivityDate];
      v106 = [v104 isEqual:v105];

      if (!v106)
      {
        goto LABEL_89;
      }
    }

    v107 = [(BMAppActivity *)self calendarUserActivityExternalID];
    v108 = [v5 calendarUserActivityExternalID];
    v109 = v108;
    if (v107 == v108)
    {
    }

    else
    {
      v110 = [(BMAppActivity *)self calendarUserActivityExternalID];
      v111 = [v5 calendarUserActivityExternalID];
      v112 = [v110 isEqual:v111];

      if (!v112)
      {
LABEL_89:
        v12 = 0;
LABEL_90:

        goto LABEL_91;
      }
    }

    v114 = [(BMAppActivity *)self calendarUserActivityEndDate];
    v115 = [v5 calendarUserActivityEndDate];
    if (v114 == v115)
    {
      v12 = 1;
    }

    else
    {
      v116 = [(BMAppActivity *)self calendarUserActivityEndDate];
      v117 = [v5 calendarUserActivityEndDate];
      v12 = [v116 isEqual:v117];
    }

    goto LABEL_90;
  }

  v12 = 0;
LABEL_91:

  return v12;
}

- (NSDate)calendarUserActivityEndDate
{
  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_calendarUserActivityEndDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)calendarUserActivityDate
{
  if (self->_hasRaw_calendarUserActivityDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_calendarUserActivityDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)itemRelatedContentURL
{
  raw_itemRelatedContentURL = self->_raw_itemRelatedContentURL;
  if (raw_itemRelatedContentURL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_itemRelatedContentURL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)expirationDate
{
  if (self->_hasRaw_expirationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_expirationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v83[22] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppActivity *)self bundleID];
  v4 = [(BMAppActivity *)self activityType];
  if ([(BMAppActivity *)self hasBeginningOfActivity])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity beginningOfActivity](self, "beginningOfActivity")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMAppActivity *)self contentDescription];
  v7 = [(BMAppActivity *)self expirationDate];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMAppActivity *)self expirationDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMAppActivity *)self hasIsEligibleForPrediction])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMAppActivity *)self hasIsPubliclyIndexable])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  }

  else
  {
    v80 = 0;
  }

  v79 = [(BMAppActivity *)self itemIdentifier];
  v11 = [(BMAppActivity *)self itemRelatedContentURL];
  v78 = [v11 absoluteString];

  v77 = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
  if ([(BMAppActivity *)self hasShortcutAvailability])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppActivity shortcutAvailability](self, "shortcutAvailability")}];
  }

  else
  {
    v76 = 0;
  }

  v75 = [(BMAppActivity *)self suggestedInvocationPhrase];
  v74 = [(BMAppActivity *)self title];
  v73 = [(BMAppActivity *)self userActivityRequiredString];
  v72 = [(BMAppActivity *)self userActivityUUID];
  v71 = [(BMAppActivity *)self sourceID];
  v70 = [(BMAppActivity *)self sourceBundleID];
  v69 = [(BMAppActivity *)self sourceItemID];
  v68 = [(BMAppActivity *)self sourceGroupID];
  v12 = [(BMAppActivity *)self calendarUserActivityDate];
  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [(BMAppActivity *)self calendarUserActivityDate];
    [v14 timeIntervalSinceReferenceDate];
    v67 = [v13 numberWithDouble:?];
  }

  else
  {
    v67 = 0;
  }

  v66 = [(BMAppActivity *)self calendarUserActivityExternalID];
  v15 = [(BMAppActivity *)self calendarUserActivityEndDate];
  if (v15)
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = [(BMAppActivity *)self calendarUserActivityEndDate];
    [v17 timeIntervalSinceReferenceDate];
    v18 = [v16 numberWithDouble:?];
  }

  else
  {
    v18 = 0;
  }

  v82[0] = @"bundleID";
  v19 = v3;
  if (!v3)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v19;
  v83[0] = v19;
  v82[1] = @"activityType";
  v20 = v4;
  if (!v4)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v20;
  v83[1] = v20;
  v82[2] = @"beginningOfActivity";
  v21 = v5;
  if (!v5)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v21;
  v83[2] = v21;
  v82[3] = @"contentDescription";
  v22 = v6;
  if (!v6)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v22;
  v83[3] = v22;
  v82[4] = @"expirationDate";
  v23 = v10;
  if (!v10)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v23;
  v83[4] = v23;
  v82[5] = @"isEligibleForPrediction";
  v24 = v81;
  if (!v81)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v83[5] = v24;
  v82[6] = @"isPubliclyIndexable";
  v25 = v80;
  if (!v80)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v83[6] = v25;
  v82[7] = @"itemIdentifier";
  v26 = v79;
  if (!v79)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v83[7] = v26;
  v82[8] = @"itemRelatedContentURL";
  v27 = v78;
  if (!v78)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v83[8] = v27;
  v82[9] = @"itemRelatedUniqueIdentifier";
  v28 = v77;
  if (!v77)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v28;
  v83[9] = v28;
  v82[10] = @"shortcutAvailability";
  v29 = v76;
  if (!v76)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v29;
  v83[10] = v29;
  v82[11] = @"suggestedInvocationPhrase";
  v30 = v75;
  if (!v75)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v3;
  v83[11] = v30;
  v82[12] = @"title";
  v31 = v74;
  v32 = v30;
  if (!v74)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v31;
  v83[12] = v31;
  v82[13] = @"userActivityRequiredString";
  v33 = v73;
  if (!v73)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v5;
  v59 = v33;
  v83[13] = v33;
  v82[14] = @"userActivityUUID";
  v34 = v72;
  if (!v72)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v25;
  v46 = v34;
  v83[14] = v34;
  v82[15] = @"sourceID";
  v35 = v71;
  if (!v71)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v27;
  v50 = v26;
  v83[15] = v35;
  v82[16] = @"sourceBundleID";
  v36 = v70;
  if (!v70)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v24;
  v63 = v10;
  v83[16] = v36;
  v82[17] = @"sourceItemID";
  v37 = v69;
  if (!v69)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v32;
  v38 = v4;
  v83[17] = v37;
  v82[18] = @"sourceGroupID";
  v39 = v68;
  if (!v68)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v83[18] = v39;
  v82[19] = @"calendarUserActivityDate";
  v41 = v67;
  if (!v67)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v83[19] = v41;
  v82[20] = @"calendarUserActivityExternalID";
  v42 = v66;
  if (!v66)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v83[20] = v42;
  v82[21] = @"calendarUserActivityEndDate";
  v43 = v18;
  if (!v18)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v83[21] = v43;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:{22, v46}];
  if (!v18)
  {
  }

  if (!v66)
  {
  }

  if (!v67)
  {
  }

  if (!v68)
  {
  }

  if (!v69)
  {
  }

  if (!v70)
  {
  }

  if (!v71)
  {
  }

  if (!v72)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!v75)
  {
  }

  if (!v76)
  {
  }

  if (!v77)
  {
  }

  if (!v78)
  {
  }

  if (!v79)
  {
  }

  if (!v80)
  {
  }

  if (v81)
  {
    if (v63)
    {
      goto LABEL_100;
    }
  }

  else
  {

    if (v63)
    {
LABEL_100:
      if (v40)
      {
        goto LABEL_101;
      }

      goto LABEL_109;
    }
  }

  if (v40)
  {
LABEL_101:
    if (v64)
    {
      goto LABEL_102;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (v64)
  {
LABEL_102:
    if (v38)
    {
      goto LABEL_103;
    }

LABEL_111:

    if (v65)
    {
      goto LABEL_104;
    }

    goto LABEL_112;
  }

LABEL_110:

  if (!v38)
  {
    goto LABEL_111;
  }

LABEL_103:
  if (v65)
  {
    goto LABEL_104;
  }

LABEL_112:

LABEL_104:
  v44 = *MEMORY[0x1E69E9840];

  return v58;
}

- (BMAppActivity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v246[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v200 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v200 = v7;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"activityType"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v199 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v199 = v8;
LABEL_7:
      v9 = [v6 objectForKeyedSubscript:@"beginningOfActivity"];
      v198 = self;
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v196 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v196 = v9;
LABEL_10:
        v10 = [v6 objectForKeyedSubscript:@"contentDescription"];
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v197 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v197 = v10;
LABEL_13:
          v11 = [v6 objectForKeyedSubscript:@"expirationDate"];
          v193 = v11;
          if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v194 = 0;
            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = objc_alloc(MEMORY[0x1E695DF00]);
            [v13 doubleValue];
            v194 = [v14 initWithTimeIntervalSince1970:?];
LABEL_37:

            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v31 = v12;
            v194 = [v13 dateFromString:v31];

            goto LABEL_37;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v194 = v12;
LABEL_38:
            v32 = [v6 objectForKeyedSubscript:@"isEligibleForPrediction"];
            v192 = v32;
            if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v191 = 0;
              goto LABEL_41;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v191 = v33;
LABEL_41:
              v34 = [v6 objectForKeyedSubscript:@"isPubliclyIndexable"];
              v188 = v7;
              v189 = v34;
              if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v35 = v8;
                v36 = v9;
                v37 = v10;
                v190 = 0;
LABEL_44:
                v38 = [v6 objectForKeyedSubscript:@"itemIdentifier"];
                v187 = v38;
                if (v38 && (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!a4)
                    {
                      v186 = 0;
                      v20 = 0;
                      v17 = v199;
                      v19 = v200;
                      a4 = v196;
                      v10 = v37;
                      v9 = v36;
                      v8 = v35;
                      v7 = v188;
                      goto LABEL_146;
                    }

                    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v71 = *MEMORY[0x1E698F240];
                    v231 = *MEMORY[0x1E696A578];
                    v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
                    v232 = v185;
                    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v232 forKeys:&v231 count:1];
                    v73 = [v70 initWithDomain:v71 code:2 userInfo:v72];
                    v186 = 0;
                    v20 = 0;
                    *a4 = v73;
                    v74 = v72;
                    v17 = v199;
                    v19 = v200;
                    a4 = v196;
                    v10 = v37;
                    v9 = v36;
                    v8 = v35;
                    v7 = v188;
                    v34 = v189;
                    goto LABEL_144;
                  }

                  v186 = v39;
                }

                else
                {
                  v186 = 0;
                }

                v40 = [v6 objectForKeyedSubscript:@"itemRelatedContentURL"];
                v184 = v37;
                v185 = v40;
                if (v40)
                {
                  v41 = v40;
                  objc_opt_class();
                  v9 = v36;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v8 = v35;
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v7 = v188;
                      v20 = a4;
                      if (!a4)
                      {
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        v10 = v184;
                        goto LABEL_145;
                      }

                      v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v75 = *MEMORY[0x1E698F240];
                      v227 = *MEMORY[0x1E696A578];
                      v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemRelatedContentURL"];
                      v228 = v76;
                      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
                      v20->super.super.isa = [v183 initWithDomain:v75 code:2 userInfo:v77];

                      v74 = v76;
                      v20 = 0;
                      v17 = v199;
                      v19 = v200;
                      a4 = v196;
                      goto LABEL_143;
                    }

                    v182 = v9;
                    v59 = v41;
                    v60 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v59];
                    v7 = v188;
                    if (!v60)
                    {
                      v20 = a4;
                      if (a4)
                      {
                        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v117 = *MEMORY[0x1E698F240];
                        v229 = *MEMORY[0x1E696A578];
                        v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"itemRelatedContentURL"];
                        v230 = v118;
                        v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v230 forKeys:&v229 count:1];
                        v20->super.super.isa = [v116 initWithDomain:v117 code:2 userInfo:v119];

                        v20 = 0;
                      }

                      v74 = v59;
                      v185 = v59;
                      v17 = v199;
                      v19 = v200;
                      a4 = v196;
                      v34 = v189;
                      v9 = v182;
                      v10 = v184;
                      goto LABEL_144;
                    }

                    v61 = v60;

                    v181 = v61;
LABEL_56:
                    v42 = [v6 objectForKeyedSubscript:@"itemRelatedUniqueIdentifier"];
                    v180 = v42;
                    if (v42 && (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!a4)
                        {
                          v44 = 0;
                          v20 = 0;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          goto LABEL_142;
                        }

                        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v79 = *MEMORY[0x1E698F240];
                        v225 = *MEMORY[0x1E696A578];
                        v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemRelatedUniqueIdentifier"];
                        v226 = v80;
                        v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
                        v81 = [v78 initWithDomain:v79 code:2 userInfo:?];
                        v44 = 0;
                        v20 = 0;
                        *a4 = v81;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
LABEL_141:

LABEL_142:
                        v74 = v181;
                        v9 = v182;
LABEL_143:
                        v10 = v184;
LABEL_144:

LABEL_145:
                        goto LABEL_146;
                      }

                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0;
                    }

                    v45 = [v6 objectForKeyedSubscript:@"shortcutAvailability"];
                    v179 = v45;
                    if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!a4)
                        {
                          v80 = 0;
                          v20 = 0;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          goto LABEL_141;
                        }

                        v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v100 = *MEMORY[0x1E698F240];
                        v223 = *MEMORY[0x1E696A578];
                        v101 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v154 = objc_opt_class();
                        v102 = v101;
                        v34 = v189;
                        v178 = [v102 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v154, @"shortcutAvailability"];
                        v224 = v178;
                        v177 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
                        v103 = [v99 initWithDomain:v100 code:2 userInfo:?];
                        v80 = 0;
                        v20 = 0;
                        *a4 = v103;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        goto LABEL_140;
                      }

                      v47 = v8;
                      v48 = v46;
                    }

                    else
                    {
                      v47 = v8;
                      v48 = 0;
                    }

                    v49 = [v6 objectForKeyedSubscript:@"suggestedInvocationPhrase"];
                    v177 = v49;
                    if (v49 && (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!a4)
                        {
                          v178 = 0;
                          v20 = 0;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          v80 = v48;
                          v8 = v47;
                          v7 = v188;
                          goto LABEL_140;
                        }

                        v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v105 = *MEMORY[0x1E698F240];
                        v221 = *MEMORY[0x1E696A578];
                        v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestedInvocationPhrase"];
                        v222 = v175;
                        v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
                        v106 = [v104 initWithDomain:v105 code:2 userInfo:?];
                        v178 = 0;
                        v20 = 0;
                        *a4 = v106;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        v80 = v48;
                        v8 = v47;
                        v7 = v188;
LABEL_139:

LABEL_140:
                        goto LABEL_141;
                      }

                      v178 = v50;
                    }

                    else
                    {
                      v178 = 0;
                    }

                    v51 = [v6 objectForKeyedSubscript:@"title"];
                    v174 = v51;
                    v176 = v44;
                    if (v51 && (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      v53 = v188;
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!a4)
                        {
                          v175 = 0;
                          v20 = 0;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          v80 = v48;
                          v8 = v47;
                          v7 = v188;
                          v34 = v189;
                          goto LABEL_139;
                        }

                        v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v109 = *MEMORY[0x1E698F240];
                        v219 = *MEMORY[0x1E696A578];
                        v173 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
                        v220 = v173;
                        v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
                        v110 = [v108 initWithDomain:v109 code:2 userInfo:?];
                        v175 = 0;
                        v20 = 0;
                        *a4 = v110;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        v80 = v48;
                        v8 = v47;
                        v7 = v188;
                        v34 = v189;
                        goto LABEL_138;
                      }

                      v175 = v52;
                    }

                    else
                    {
                      v175 = 0;
                      v53 = v188;
                    }

                    v54 = [v6 objectForKeyedSubscript:@"userActivityRequiredString"];
                    v171 = v48;
                    v172 = v54;
                    v169 = v47;
                    if (v54 && (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      v7 = v53;
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!a4)
                        {
                          v173 = 0;
                          v20 = 0;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          v34 = v189;
                          v80 = v48;
                          v8 = v169;
                          goto LABEL_138;
                        }

                        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v114 = *MEMORY[0x1E698F240];
                        v217 = *MEMORY[0x1E696A578];
                        v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userActivityRequiredString"];
                        v218 = v170;
                        v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
                        v115 = [v113 initWithDomain:v114 code:2 userInfo:?];
                        v173 = 0;
                        v20 = 0;
                        *a4 = v115;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        v34 = v189;
                        v80 = v48;
                        v8 = v169;
LABEL_137:

LABEL_138:
                        goto LABEL_139;
                      }

                      v173 = v55;
                      v56 = v48;
                    }

                    else
                    {
                      v173 = 0;
                      v7 = v53;
                      v56 = v48;
                    }

                    v57 = [v6 objectForKeyedSubscript:@"userActivityUUID"];
                    v168 = v57;
                    if (v57)
                    {
                      v58 = v57;
                      objc_opt_class();
                      v8 = v169;
                      if (objc_opt_isKindOfClass())
                      {
                        v170 = 0;
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!a4)
                          {
                            v170 = 0;
                            v20 = 0;
                            v17 = v199;
                            v19 = v200;
                            a4 = v196;
                            v80 = v56;
                            v34 = v189;
                            goto LABEL_137;
                          }

                          v120 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v121 = *MEMORY[0x1E698F240];
                          v215 = *MEMORY[0x1E696A578];
                          v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userActivityUUID"];
                          v216 = v166;
                          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
                          v122 = [v120 initWithDomain:v121 code:2 userInfo:v82];
                          v170 = 0;
                          v20 = 0;
                          *a4 = v122;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          v80 = v56;
                          goto LABEL_136;
                        }

                        v170 = v58;
                      }
                    }

                    else
                    {
                      v170 = 0;
                      v8 = v169;
                    }

                    v82 = [v6 objectForKeyedSubscript:@"sourceID"];
                    v80 = v56;
                    if (v82 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!a4)
                        {
                          v166 = 0;
                          v20 = 0;
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          v80 = v171;
                          goto LABEL_136;
                        }

                        v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v125 = *MEMORY[0x1E698F240];
                        v213 = *MEMORY[0x1E696A578];
                        v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceID"];
                        v214 = v165;
                        v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
                        v126 = [v167 initWithDomain:v125 code:2 userInfo:?];
                        v166 = 0;
                        v20 = 0;
                        *a4 = v126;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        goto LABEL_213;
                      }

                      v166 = v82;
                      v80 = v171;
                    }

                    else
                    {
                      v166 = 0;
                    }

                    v83 = [v6 objectForKeyedSubscript:@"sourceBundleID"];
                    v163 = v83;
                    if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v165 = 0;
                      goto LABEL_114;
                    }

                    v107 = v82;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v165 = v84;
                      v80 = v171;
LABEL_114:
                      v85 = [v6 objectForKeyedSubscript:@"sourceItemID"];
                      v161 = v85;
                      if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v164 = 0;
                        goto LABEL_117;
                      }

                      v107 = v82;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v164 = v86;
                        v80 = v171;
LABEL_117:
                        v87 = [v6 objectForKeyedSubscript:@"sourceGroupID"];
                        v160 = v87;
                        if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v162 = 0;
                          goto LABEL_120;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v162 = v88;
                          v80 = v171;
LABEL_120:
                          v89 = [v6 objectForKeyedSubscript:@"calendarUserActivityDate"];
                          v158 = v89;
                          if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v156 = 0;
LABEL_123:
                            v91 = [v6 objectForKeyedSubscript:@"calendarUserActivityExternalID"];
                            v157 = v91;
                            if (v91 && (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                if (!a4)
                                {
                                  v159 = 0;
                                  v20 = 0;
                                  v19 = v200;
                                  a4 = v196;
                                  v80 = v171;
                                  v96 = v156;
                                  goto LABEL_131;
                                }

                                v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v141 = *MEMORY[0x1E698F240];
                                v203 = *MEMORY[0x1E696A578];
                                v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"calendarUserActivityExternalID"];
                                v204 = v95;
                                v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                                v142 = [v140 initWithDomain:v141 code:2 userInfo:?];
                                v159 = 0;
                                v20 = 0;
                                *a4 = v142;
                                v19 = v200;
                                a4 = v196;
                                goto LABEL_230;
                              }

                              v159 = v92;
                              v80 = v171;
                            }

                            else
                            {
                              v159 = 0;
                            }

                            v93 = [v6 objectForKeyedSubscript:@"calendarUserActivityEndDate"];
                            v155 = v93;
                            if (!v93 || (v94 = v93, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v95 = 0;
                              v19 = v200;
LABEL_129:
                              v96 = v156;
                              a4 = v196;
                              v20 = [(BMAppActivity *)v198 initWithBundleID:v19 activityType:v199 beginningOfActivity:v196 contentDescription:v197 expirationDate:v194 isEligibleForPrediction:v191 isPubliclyIndexable:v190 itemIdentifier:v186 itemRelatedContentURL:v181 itemRelatedUniqueIdentifier:v176 shortcutAvailability:v80 suggestedInvocationPhrase:v178 title:v175 userActivityRequiredString:v173 userActivityUUID:v170 sourceID:v166 sourceBundleID:v165 sourceItemID:v164 sourceGroupID:v162 calendarUserActivityDate:v156 calendarUserActivityExternalID:v159 calendarUserActivityEndDate:v95];
                              v198 = v20;
LABEL_130:

LABEL_131:
                              v17 = v199;
LABEL_132:

LABEL_133:
LABEL_134:

LABEL_135:
LABEL_136:

                              v34 = v189;
                              v44 = v176;
                              goto LABEL_137;
                            }

                            objc_opt_class();
                            v19 = v200;
                            if (objc_opt_isKindOfClass())
                            {
                              v130 = v94;
                              v131 = objc_alloc(MEMORY[0x1E695DF00]);
                              [v130 doubleValue];
                              v95 = [v131 initWithTimeIntervalSinceReferenceDate:?];

                              goto LABEL_129;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v143 = objc_alloc_init(MEMORY[0x1E696AC80]);
                              v144 = v94;
                              v95 = [v143 dateFromString:v144];

LABEL_223:
                              v80 = v171;
                              goto LABEL_129;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v95 = v94;
                              goto LABEL_223;
                            }

                            if (a4)
                            {
                              v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v149 = *MEMORY[0x1E698F240];
                              v201 = *MEMORY[0x1E696A578];
                              v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"calendarUserActivityEndDate"];
                              v202 = v150;
                              v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                              v152 = v149;
                              v19 = v200;
                              *a4 = [v148 initWithDomain:v152 code:2 userInfo:v151];
                            }

                            v95 = 0;
                            v20 = 0;
                            a4 = v196;
LABEL_230:
                            v80 = v171;
                            v96 = v156;
                            goto LABEL_130;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v123 = v90;
                            v124 = objc_alloc(MEMORY[0x1E695DF00]);
                            [v123 doubleValue];
                            v156 = [v124 initWithTimeIntervalSinceReferenceDate:?];

                            goto LABEL_123;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v138 = objc_alloc_init(MEMORY[0x1E696AC80]);
                            v139 = v90;
                            v156 = [v138 dateFromString:v139];

LABEL_218:
                            v80 = v171;
                            goto LABEL_123;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v156 = v90;
                            goto LABEL_218;
                          }

                          if (a4)
                          {
                            v145 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v146 = *MEMORY[0x1E698F240];
                            v205 = *MEMORY[0x1E696A578];
                            v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"calendarUserActivityDate"];
                            v206 = v159;
                            v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                            v147 = [v145 initWithDomain:v146 code:2 userInfo:?];
                            v96 = 0;
                            v20 = 0;
                            *a4 = v147;
                            v19 = v200;
                            a4 = v196;
                            v80 = v171;
                            goto LABEL_131;
                          }

                          v96 = 0;
                          v20 = 0;
LABEL_201:
                          v17 = v199;
                          v19 = v200;
                          a4 = v196;
                          v80 = v171;
                          goto LABEL_132;
                        }

                        if (a4)
                        {
                          v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v136 = *MEMORY[0x1E698F240];
                          v207 = *MEMORY[0x1E696A578];
                          v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceGroupID"];
                          v208 = v96;
                          v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
                          v137 = [v135 initWithDomain:v136 code:2 userInfo:?];
                          v162 = 0;
                          v20 = 0;
                          *a4 = v137;
                          goto LABEL_201;
                        }

                        v162 = 0;
                        v20 = 0;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
LABEL_220:
                        v80 = v171;
                        goto LABEL_133;
                      }

                      if (a4)
                      {
                        v132 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v133 = *MEMORY[0x1E698F240];
                        v209 = *MEMORY[0x1E696A578];
                        v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceItemID"];
                        v210 = v162;
                        v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                        v134 = [v132 initWithDomain:v133 code:2 userInfo:?];
                        v164 = 0;
                        v20 = 0;
                        *a4 = v134;
                        v17 = v199;
                        v19 = v200;
                        a4 = v196;
                        goto LABEL_220;
                      }

                      v164 = 0;
                      v20 = 0;
LABEL_215:
                      v17 = v199;
                      v19 = v200;
                      a4 = v196;
                      v82 = v107;
                      v80 = v171;
                      goto LABEL_134;
                    }

                    if (a4)
                    {
                      v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v128 = *MEMORY[0x1E698F240];
                      v211 = *MEMORY[0x1E696A578];
                      v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleID"];
                      v212 = v164;
                      v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
                      v129 = [v127 initWithDomain:v128 code:2 userInfo:?];
                      v165 = 0;
                      v20 = 0;
                      *a4 = v129;
                      goto LABEL_215;
                    }

                    v165 = 0;
                    v20 = 0;
                    v17 = v199;
                    v19 = v200;
                    a4 = v196;
LABEL_213:
                    v80 = v171;
                    goto LABEL_135;
                  }

                  v181 = 0;
                  v182 = v36;
                }

                else
                {
                  v181 = 0;
                  v182 = v36;
                }

                v8 = v35;
                v7 = v188;
                goto LABEL_56;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = v8;
                v36 = v9;
                v37 = v10;
                v190 = v34;
                goto LABEL_44;
              }

              if (a4)
              {
                v65 = objc_alloc(MEMORY[0x1E696ABC0]);
                v66 = *MEMORY[0x1E698F240];
                v233 = *MEMORY[0x1E696A578];
                v67 = objc_alloc(MEMORY[0x1E696AEC0]);
                v153 = objc_opt_class();
                v68 = v67;
                v34 = v189;
                v186 = [v68 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v153, @"isPubliclyIndexable"];
                v234 = v186;
                v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v234 forKeys:&v233 count:1];
                v69 = [v65 initWithDomain:v66 code:2 userInfo:?];
                v190 = 0;
                v20 = 0;
                *a4 = v69;
                v17 = v199;
                v19 = v200;
                a4 = v196;
LABEL_146:

LABEL_147:
LABEL_148:

                goto LABEL_149;
              }

              v190 = 0;
              v20 = 0;
LABEL_162:
              v17 = v199;
              v19 = v200;
              a4 = v196;
              goto LABEL_147;
            }

            if (a4)
            {
              v62 = objc_alloc(MEMORY[0x1E696ABC0]);
              v63 = *MEMORY[0x1E698F240];
              v235 = *MEMORY[0x1E696A578];
              v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isEligibleForPrediction"];
              v236 = v190;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v236 forKeys:&v235 count:1];
              v64 = [v62 initWithDomain:v63 code:2 userInfo:v34];
              v191 = 0;
              v20 = 0;
              *a4 = v64;
              goto LABEL_162;
            }

            v191 = 0;
            v20 = 0;
LABEL_170:
            v17 = v199;
            v19 = v200;
            a4 = v196;
            goto LABEL_148;
          }

          if (a4)
          {
            v195 = objc_alloc(MEMORY[0x1E696ABC0]);
            v111 = *MEMORY[0x1E698F240];
            v237 = *MEMORY[0x1E696A578];
            v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
            v238 = v191;
            v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v238 forKeys:&v237 count:1];
            v112 = [v195 initWithDomain:v111 code:2 userInfo:?];
            v194 = 0;
            v20 = 0;
            *a4 = v112;
            goto LABEL_170;
          }

          v194 = 0;
          v20 = 0;
LABEL_34:
          v17 = v199;
          v19 = v200;
          a4 = v196;
LABEL_149:

          goto LABEL_150;
        }

        if (a4)
        {
          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v239 = *MEMORY[0x1E696A578];
          v194 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentDescription"];
          v240 = v194;
          v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
          v30 = [v28 initWithDomain:v29 code:2 userInfo:?];
          v197 = 0;
          v20 = 0;
          *a4 = v30;
          goto LABEL_34;
        }

        v197 = 0;
        v20 = 0;
        v17 = v199;
        v19 = v200;
        a4 = v196;
LABEL_150:

        self = v198;
        goto LABEL_151;
      }

      if (a4)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v241 = *MEMORY[0x1E696A578];
        v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"beginningOfActivity"];
        v242 = v197;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v10];
        v20 = 0;
        *a4 = v27;
        a4 = 0;
        v17 = v199;
        v19 = v200;
        goto LABEL_150;
      }

      v20 = 0;
      v17 = v199;
      v19 = v200;
LABEL_151:

      goto LABEL_152;
    }

    if (a4)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v243 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityType"];
      v244 = v23;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v244 forKeys:&v243 count:1];
      v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
      v17 = 0;
      v20 = 0;
      *a4 = v24;
      a4 = v23;
      v19 = v200;
      goto LABEL_151;
    }

    v17 = 0;
    v20 = 0;
    v19 = v200;
LABEL_152:

    goto LABEL_153;
  }

  if (a4)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v245 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v246[0] = v17;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v246 forKeys:&v245 count:1];
    v18 = [v15 initWithDomain:v16 code:2 userInfo:v8];
    v19 = 0;
    v20 = 0;
    *a4 = v18;
    goto LABEL_152;
  }

  v19 = 0;
  v20 = 0;
LABEL_153:

  v97 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_hasBeginningOfActivity)
  {
    beginningOfActivity = self->_beginningOfActivity;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_contentDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_hasRaw_expirationDate)
  {
    raw_expirationDate = self->_raw_expirationDate;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }

  if (self->_hasIsEligibleForPrediction)
  {
    isEligibleForPrediction = self->_isEligibleForPrediction;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_hasIsPubliclyIndexable)
  {
    isPubliclyIndexable = self->_isPubliclyIndexable;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_raw_itemRelatedContentURL)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_itemRelatedUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_hasShortcutAvailability)
  {
    shortcutAvailability = self->_shortcutAvailability;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_suggestedInvocationPhrase)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_userActivityRequiredString)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_userActivityUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sourceItemID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sourceGroupID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_hasRaw_calendarUserActivityDate)
  {
    raw_calendarUserActivityDate = self->_raw_calendarUserActivityDate;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }

  if (self->_calendarUserActivityExternalID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    raw_calendarUserActivityEndDate = self->_raw_calendarUserActivityEndDate;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = BMAppActivity;
  v5 = [(BMEventBase *)&v59 init];
  if (!v5)
  {
    goto LABEL_104;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v60 & 0x7F) << v7;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 88;
          goto LABEL_76;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_76;
        case 3u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasBeginningOfActivity = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v22 = [v4 position] + 1;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
            {
              v24 = [v4 data];
              [v24 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v21 |= (v60 & 0x7F) << v19;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_85;
            }
          }

          v25 = (v21 != 0) & ~[v4 hasError];
LABEL_85:
          v51 = 72;
          goto LABEL_90;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 104;
          goto LABEL_76;
        case 5u:
          v5->_hasRaw_expirationDate = 1;
          v60 = 0;
          v17 = [v4 position] + 8;
          if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
          {
            v52 = [v4 data];
            [v52 getBytes:&v60 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v53 = v60;
          v54 = 24;
          goto LABEL_101;
        case 6u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsEligibleForPrediction = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v29 = [v4 position] + 1;
            if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
            {
              v31 = [v4 data];
              [v31 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v28 |= (v60 & 0x7F) << v26;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v13 = v27++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_87;
            }
          }

          v25 = (v28 != 0) & ~[v4 hasError];
LABEL_87:
          v51 = 74;
          goto LABEL_90;
        case 7u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasIsPubliclyIndexable = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v37 = [v4 position] + 1;
            if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
            {
              v39 = [v4 data];
              [v39 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v36 |= (v60 & 0x7F) << v34;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_89;
            }
          }

          v25 = (v36 != 0) & ~[v4 hasError];
LABEL_89:
          v51 = 76;
LABEL_90:
          *(&v5->super.super.isa + v51) = v25;
          goto LABEL_77;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 112;
          goto LABEL_76;
        case 9u:
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_76;
        case 0xAu:
          v15 = PBReaderReadString();
          v16 = 120;
          goto LABEL_76;
        case 0xBu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v5->_hasShortcutAvailability = 1;
          break;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 128;
          goto LABEL_76;
        case 0xDu:
          v15 = PBReaderReadString();
          v16 = 136;
          goto LABEL_76;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 144;
          goto LABEL_76;
        case 0xFu:
          v15 = PBReaderReadString();
          v16 = 152;
          goto LABEL_76;
        case 0x10u:
          v15 = PBReaderReadString();
          v16 = 160;
          goto LABEL_76;
        case 0x11u:
          v15 = PBReaderReadString();
          v16 = 168;
          goto LABEL_76;
        case 0x12u:
          v15 = PBReaderReadString();
          v16 = 176;
          goto LABEL_76;
        case 0x13u:
          v15 = PBReaderReadString();
          v16 = 184;
          goto LABEL_76;
        case 0x14u:
          v5->_hasRaw_calendarUserActivityDate = 1;
          v60 = 0;
          v49 = [v4 position] + 8;
          if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 8, v50 <= objc_msgSend(v4, "length")))
          {
            v56 = [v4 data];
            [v56 getBytes:&v60 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v53 = v60;
          v54 = 48;
          goto LABEL_101;
        case 0x15u:
          v15 = PBReaderReadString();
          v16 = 192;
LABEL_76:
          v47 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_77;
        case 0x16u:
          v5->_hasRaw_calendarUserActivityEndDate = 1;
          v60 = 0;
          v32 = [v4 position] + 8;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
          {
            v55 = [v4 data];
            [v55 getBytes:&v60 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v53 = v60;
          v54 = 64;
LABEL_101:
          *(&v5->super.super.isa + v54) = v53;
          goto LABEL_77;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_103;
          }

          goto LABEL_77;
      }

      while (1)
      {
        LOBYTE(v60) = 0;
        v43 = [v4 position] + 1;
        if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
        {
          v45 = [v4 data];
          [v45 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v42 |= (v60 & 0x7F) << v40;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v13 = v41++ >= 9;
        if (v13)
        {
          v46 = 0;
          goto LABEL_94;
        }
      }

      v46 = [v4 hasError] ? 0 : v42;
LABEL_94:
      v5->_shortcutAvailability = v46;
LABEL_77:
      v48 = [v4 position];
    }

    while (v48 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_103:
    v57 = 0;
  }

  else
  {
LABEL_104:
    v57 = v5;
  }

  return v57;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = [(BMAppActivity *)self bundleID];
  v27 = [(BMAppActivity *)self activityType];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity beginningOfActivity](self, "beginningOfActivity")}];
  v26 = [(BMAppActivity *)self contentDescription];
  v15 = [(BMAppActivity *)self expirationDate];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  v22 = [(BMAppActivity *)self itemIdentifier];
  v14 = [(BMAppActivity *)self itemRelatedContentURL];
  v21 = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppActivity shortcutAvailability](self, "shortcutAvailability")}];
  v19 = [(BMAppActivity *)self suggestedInvocationPhrase];
  v13 = [(BMAppActivity *)self title];
  v12 = [(BMAppActivity *)self userActivityRequiredString];
  v11 = [(BMAppActivity *)self userActivityUUID];
  v3 = [(BMAppActivity *)self sourceID];
  v4 = [(BMAppActivity *)self sourceBundleID];
  v5 = [(BMAppActivity *)self sourceItemID];
  v6 = [(BMAppActivity *)self sourceGroupID];
  v7 = [(BMAppActivity *)self calendarUserActivityDate];
  v8 = [(BMAppActivity *)self calendarUserActivityExternalID];
  v9 = [(BMAppActivity *)self calendarUserActivityEndDate];
  v18 = [v17 initWithFormat:@"BMAppActivity with bundleID: %@, activityType: %@, beginningOfActivity: %@, contentDescription: %@, expirationDate: %@, isEligibleForPrediction: %@, isPubliclyIndexable: %@, itemIdentifier: %@, itemRelatedContentURL: %@, itemRelatedUniqueIdentifier: %@, shortcutAvailability: %@, suggestedInvocationPhrase: %@, title: %@, userActivityRequiredString: %@, userActivityUUID: %@, sourceID: %@, sourceBundleID: %@, sourceItemID: %@, sourceGroupID: %@, calendarUserActivityDate: %@, calendarUserActivityExternalID: %@, calendarUserActivityEndDate: %@", v25, v27, v16, v26, v15, v24, v23, v22, v14, v21, v20, v19, v13, v12, v11, v3, v4, v5, v6, v7, v8, v9];

  return v18;
}

- (BMAppActivity)initWithBundleID:(id)a3 activityType:(id)a4 beginningOfActivity:(id)a5 contentDescription:(id)a6 expirationDate:(id)a7 isEligibleForPrediction:(id)a8 isPubliclyIndexable:(id)a9 itemIdentifier:(id)a10 itemRelatedContentURL:(id)a11 itemRelatedUniqueIdentifier:(id)a12 shortcutAvailability:(id)a13 suggestedInvocationPhrase:(id)a14 title:(id)a15 userActivityRequiredString:(id)a16 userActivityUUID:(id)a17 sourceID:(id)a18 sourceBundleID:(id)a19 sourceItemID:(id)a20 sourceGroupID:(id)a21 calendarUserActivityDate:(id)a22 calendarUserActivityExternalID:(id)a23 calendarUserActivityEndDate:(id)a24
{
  v61 = a3;
  v44 = a4;
  v60 = a4;
  v46 = a5;
  v45 = a6;
  v59 = a6;
  v62 = a7;
  v28 = a8;
  v29 = a9;
  v58 = a10;
  v30 = a11;
  v56 = a12;
  v31 = a13;
  v55 = a14;
  v54 = a15;
  v53 = a16;
  v52 = a17;
  v51 = a18;
  v50 = a19;
  v49 = a20;
  v48 = a21;
  v32 = a22;
  v33 = a23;
  v34 = a24;
  v63.receiver = self;
  v63.super_class = BMAppActivity;
  v35 = [(BMEventBase *)&v63 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v35->_bundleID, a3);
    objc_storeStrong(&v35->_activityType, v44);
    if (v46)
    {
      v35->_hasBeginningOfActivity = 1;
      v35->_beginningOfActivity = [v46 BOOLValue];
    }

    else
    {
      v35->_hasBeginningOfActivity = 0;
      v35->_beginningOfActivity = 0;
    }

    objc_storeStrong(&v35->_contentDescription, v45);
    if (v62)
    {
      v35->_hasRaw_expirationDate = 1;
      [v62 timeIntervalSince1970];
    }

    else
    {
      v35->_hasRaw_expirationDate = 0;
      v36 = -1.0;
    }

    v35->_raw_expirationDate = v36;
    if (v28)
    {
      v35->_hasIsEligibleForPrediction = 1;
      v35->_isEligibleForPrediction = [v28 BOOLValue];
    }

    else
    {
      v35->_hasIsEligibleForPrediction = 0;
      v35->_isEligibleForPrediction = 0;
    }

    if (v29)
    {
      v35->_hasIsPubliclyIndexable = 1;
      v35->_isPubliclyIndexable = [v29 BOOLValue];
    }

    else
    {
      v35->_hasIsPubliclyIndexable = 0;
      v35->_isPubliclyIndexable = 0;
    }

    objc_storeStrong(&v35->_itemIdentifier, a10);
    if (v30)
    {
      v37 = [v30 absoluteString];
    }

    else
    {
      v37 = 0;
    }

    raw_itemRelatedContentURL = v35->_raw_itemRelatedContentURL;
    v35->_raw_itemRelatedContentURL = v37;

    objc_storeStrong(&v35->_itemRelatedUniqueIdentifier, a12);
    if (v31)
    {
      v35->_hasShortcutAvailability = 1;
      v39 = [v31 intValue];
    }

    else
    {
      v35->_hasShortcutAvailability = 0;
      v39 = -1;
    }

    v35->_shortcutAvailability = v39;
    objc_storeStrong(&v35->_suggestedInvocationPhrase, a14);
    objc_storeStrong(&v35->_title, a15);
    objc_storeStrong(&v35->_userActivityRequiredString, a16);
    objc_storeStrong(&v35->_userActivityUUID, a17);
    objc_storeStrong(&v35->_sourceID, a18);
    objc_storeStrong(&v35->_sourceBundleID, a19);
    objc_storeStrong(&v35->_sourceItemID, a20);
    objc_storeStrong(&v35->_sourceGroupID, a21);
    if (v32)
    {
      v35->_hasRaw_calendarUserActivityDate = 1;
      [v32 timeIntervalSinceReferenceDate];
    }

    else
    {
      v35->_hasRaw_calendarUserActivityDate = 0;
      v40 = -1.0;
    }

    v35->_raw_calendarUserActivityDate = v40;
    objc_storeStrong(&v35->_calendarUserActivityExternalID, a23);
    if (v34)
    {
      v35->_hasRaw_calendarUserActivityEndDate = 1;
      [v34 timeIntervalSinceReferenceDate];
    }

    else
    {
      v35->_hasRaw_calendarUserActivityEndDate = 0;
      v41 = -1.0;
    }

    v35->_raw_calendarUserActivityEndDate = v41;
  }

  return v35;
}

+ (id)protoFields
{
  v27[22] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v27[0] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:2 type:13 subMessageClass:0];
  v27[1] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"beginningOfActivity" number:3 type:12 subMessageClass:0];
  v27[2] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentDescription" number:4 type:13 subMessageClass:0];
  v27[3] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expirationDate" number:5 type:0 subMessageClass:0];
  v27[4] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEligibleForPrediction" number:6 type:12 subMessageClass:0];
  v27[5] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPubliclyIndexable" number:7 type:12 subMessageClass:0];
  v27[6] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:8 type:13 subMessageClass:0];
  v27[7] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedContentURL" number:9 type:13 subMessageClass:0];
  v27[8] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedUniqueIdentifier" number:10 type:13 subMessageClass:0];
  v27[9] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortcutAvailability" number:11 type:2 subMessageClass:0];
  v27[10] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedInvocationPhrase" number:12 type:13 subMessageClass:0];
  v27[11] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:13 type:13 subMessageClass:0];
  v27[12] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityRequiredString" number:14 type:13 subMessageClass:0];
  v27[13] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityUUID" number:15 type:13 subMessageClass:0];
  v27[14] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:16 type:13 subMessageClass:0];
  v27[15] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:17 type:13 subMessageClass:0];
  v27[16] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceItemID" number:18 type:13 subMessageClass:0];
  v27[17] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceGroupID" number:19 type:13 subMessageClass:0];
  v27[18] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityDate" number:20 type:0 subMessageClass:0];
  v27[19] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityExternalID" number:21 type:13 subMessageClass:0];
  v27[20] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityEndDate" number:22 type:0 subMessageClass:0];
  v27[21] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:22];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMAppActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[20] = 0;
    }
  }

  return v4;
}

@end