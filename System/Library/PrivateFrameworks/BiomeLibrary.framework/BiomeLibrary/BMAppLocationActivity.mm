@interface BMAppLocationActivity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppLocationActivity)initWithBundleID:(id)d activityType:(id)type beginningOfActivity:(id)activity contentDescription:(id)description expirationDate:(id)date isEligibleForPrediction:(id)prediction isPubliclyIndexable:(id)indexable itemIdentifier:(id)self0 itemRelatedContentURL:(id)self1 itemRelatedUniqueIdentifier:(id)self2 shortcutAvailability:(id)self3 suggestedInvocationPhrase:(id)self4 title:(id)self5 userActivityRequiredString:(id)self6 userActivityUUID:(id)self7 sourceID:(id)self8 sourceBundleID:(id)self9 sourceItemID:(id)itemID sourceGroupID:(id)groupID calendarUserActivityDate:(id)activityDate calendarUserActivityExternalID:(id)externalID calendarUserActivityEndDate:(id)endDate locationName:(id)name latitude:(id)latitude longitude:(id)longitude city:(id)city stateOrProvince:(id)province country:(id)d0 thoroughfare:(id)d1 fullyFormattedAddress:(id)d2 subThoroughfare:(id)d3 postalCode:(id)d4 phoneNumbers:(id)d5 displayName:(id)d6 URL:(id)d7;
- (BMAppLocationActivity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)calendarUserActivityDate;
- (NSDate)calendarUserActivityEndDate;
- (NSDate)expirationDate;
- (NSString)description;
- (NSURL)URL;
- (NSURL)itemRelatedContentURL;
- (id)_phoneNumbersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppLocationActivity

+ (id)columns
{
  v40[35] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"beginningOfActivity" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentDescription" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expirationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEligibleForPrediction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPubliclyIndexable" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedContentURL" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:4];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortcutAvailability" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedInvocationPhrase" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityRequiredString" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityUUID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceItemID" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceGroupID" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityDate" dataType:3 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:1];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityExternalID" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityEndDate" dataType:3 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:1];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationName" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"latitude" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"longitude" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:0 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"city" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateOrProvince" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"country" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"thoroughfare" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullyFormattedAddress" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subThoroughfare" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"postalCode" dataType:2 requestOnly:0 fieldNumber:32 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"phoneNumbers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_40388];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayName" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"URL" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:4];
  v40[0] = v39;
  v40[1] = v38;
  v40[2] = v37;
  v40[3] = v36;
  v40[4] = v35;
  v40[5] = v34;
  v40[6] = v33;
  v40[7] = v32;
  v40[8] = v31;
  v40[9] = v30;
  v40[10] = v29;
  v40[11] = v28;
  v40[12] = v27;
  v40[13] = v26;
  v40[14] = v25;
  v40[15] = v24;
  v40[16] = v23;
  v40[17] = v22;
  v40[18] = v21;
  v40[19] = v20;
  v40[20] = v19;
  v40[21] = v18;
  v40[22] = v17;
  v40[23] = v16;
  v40[24] = v15;
  v40[25] = v2;
  v40[26] = v14;
  v40[27] = v3;
  v40[28] = v13;
  v40[29] = v4;
  v40[30] = v5;
  v40[31] = v6;
  v40[32] = v7;
  v40[33] = v12;
  v40[34] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:35];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMAppLocationActivity *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppLocationActivity *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_143;
      }
    }

    activityType = [(BMAppLocationActivity *)self activityType];
    activityType2 = [v5 activityType];
    v15 = activityType2;
    if (activityType == activityType2)
    {
    }

    else
    {
      activityType3 = [(BMAppLocationActivity *)self activityType];
      activityType4 = [v5 activityType];
      v18 = [activityType3 isEqual:activityType4];

      if (!v18)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasBeginningOfActivity](self, "hasBeginningOfActivity") || [v5 hasBeginningOfActivity])
    {
      if (![(BMAppLocationActivity *)self hasBeginningOfActivity])
      {
        goto LABEL_143;
      }

      if (![v5 hasBeginningOfActivity])
      {
        goto LABEL_143;
      }

      beginningOfActivity = [(BMAppLocationActivity *)self beginningOfActivity];
      if (beginningOfActivity != [v5 beginningOfActivity])
      {
        goto LABEL_143;
      }
    }

    contentDescription = [(BMAppLocationActivity *)self contentDescription];
    contentDescription2 = [v5 contentDescription];
    v22 = contentDescription2;
    if (contentDescription == contentDescription2)
    {
    }

    else
    {
      contentDescription3 = [(BMAppLocationActivity *)self contentDescription];
      contentDescription4 = [v5 contentDescription];
      v25 = [contentDescription3 isEqual:contentDescription4];

      if (!v25)
      {
        goto LABEL_143;
      }
    }

    expirationDate = [(BMAppLocationActivity *)self expirationDate];
    expirationDate2 = [v5 expirationDate];
    v28 = expirationDate2;
    if (expirationDate == expirationDate2)
    {
    }

    else
    {
      expirationDate3 = [(BMAppLocationActivity *)self expirationDate];
      expirationDate4 = [v5 expirationDate];
      v31 = [expirationDate3 isEqual:expirationDate4];

      if (!v31)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasIsEligibleForPrediction](self, "hasIsEligibleForPrediction") || [v5 hasIsEligibleForPrediction])
    {
      if (![(BMAppLocationActivity *)self hasIsEligibleForPrediction])
      {
        goto LABEL_143;
      }

      if (![v5 hasIsEligibleForPrediction])
      {
        goto LABEL_143;
      }

      isEligibleForPrediction = [(BMAppLocationActivity *)self isEligibleForPrediction];
      if (isEligibleForPrediction != [v5 isEligibleForPrediction])
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasIsPubliclyIndexable](self, "hasIsPubliclyIndexable") || [v5 hasIsPubliclyIndexable])
    {
      if (![(BMAppLocationActivity *)self hasIsPubliclyIndexable])
      {
        goto LABEL_143;
      }

      if (![v5 hasIsPubliclyIndexable])
      {
        goto LABEL_143;
      }

      isPubliclyIndexable = [(BMAppLocationActivity *)self isPubliclyIndexable];
      if (isPubliclyIndexable != [v5 isPubliclyIndexable])
      {
        goto LABEL_143;
      }
    }

    itemIdentifier = [(BMAppLocationActivity *)self itemIdentifier];
    itemIdentifier2 = [v5 itemIdentifier];
    v36 = itemIdentifier2;
    if (itemIdentifier == itemIdentifier2)
    {
    }

    else
    {
      itemIdentifier3 = [(BMAppLocationActivity *)self itemIdentifier];
      itemIdentifier4 = [v5 itemIdentifier];
      v39 = [itemIdentifier3 isEqual:itemIdentifier4];

      if (!v39)
      {
        goto LABEL_143;
      }
    }

    itemRelatedContentURL = [(BMAppLocationActivity *)self itemRelatedContentURL];
    itemRelatedContentURL2 = [v5 itemRelatedContentURL];
    v42 = itemRelatedContentURL2;
    if (itemRelatedContentURL == itemRelatedContentURL2)
    {
    }

    else
    {
      itemRelatedContentURL3 = [(BMAppLocationActivity *)self itemRelatedContentURL];
      itemRelatedContentURL4 = [v5 itemRelatedContentURL];
      v45 = [itemRelatedContentURL3 isEqual:itemRelatedContentURL4];

      if (!v45)
      {
        goto LABEL_143;
      }
    }

    itemRelatedUniqueIdentifier = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
    itemRelatedUniqueIdentifier2 = [v5 itemRelatedUniqueIdentifier];
    v48 = itemRelatedUniqueIdentifier2;
    if (itemRelatedUniqueIdentifier == itemRelatedUniqueIdentifier2)
    {
    }

    else
    {
      itemRelatedUniqueIdentifier3 = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
      itemRelatedUniqueIdentifier4 = [v5 itemRelatedUniqueIdentifier];
      v51 = [itemRelatedUniqueIdentifier3 isEqual:itemRelatedUniqueIdentifier4];

      if (!v51)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasShortcutAvailability](self, "hasShortcutAvailability") || [v5 hasShortcutAvailability])
    {
      if (![(BMAppLocationActivity *)self hasShortcutAvailability])
      {
        goto LABEL_143;
      }

      if (![v5 hasShortcutAvailability])
      {
        goto LABEL_143;
      }

      shortcutAvailability = [(BMAppLocationActivity *)self shortcutAvailability];
      if (shortcutAvailability != [v5 shortcutAvailability])
      {
        goto LABEL_143;
      }
    }

    suggestedInvocationPhrase = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
    suggestedInvocationPhrase2 = [v5 suggestedInvocationPhrase];
    v55 = suggestedInvocationPhrase2;
    if (suggestedInvocationPhrase == suggestedInvocationPhrase2)
    {
    }

    else
    {
      suggestedInvocationPhrase3 = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
      suggestedInvocationPhrase4 = [v5 suggestedInvocationPhrase];
      v58 = [suggestedInvocationPhrase3 isEqual:suggestedInvocationPhrase4];

      if (!v58)
      {
        goto LABEL_143;
      }
    }

    title = [(BMAppLocationActivity *)self title];
    title2 = [v5 title];
    v61 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMAppLocationActivity *)self title];
      title4 = [v5 title];
      v64 = [title3 isEqual:title4];

      if (!v64)
      {
        goto LABEL_143;
      }
    }

    userActivityRequiredString = [(BMAppLocationActivity *)self userActivityRequiredString];
    userActivityRequiredString2 = [v5 userActivityRequiredString];
    v67 = userActivityRequiredString2;
    if (userActivityRequiredString == userActivityRequiredString2)
    {
    }

    else
    {
      userActivityRequiredString3 = [(BMAppLocationActivity *)self userActivityRequiredString];
      userActivityRequiredString4 = [v5 userActivityRequiredString];
      v70 = [userActivityRequiredString3 isEqual:userActivityRequiredString4];

      if (!v70)
      {
        goto LABEL_143;
      }
    }

    userActivityUUID = [(BMAppLocationActivity *)self userActivityUUID];
    userActivityUUID2 = [v5 userActivityUUID];
    v73 = userActivityUUID2;
    if (userActivityUUID == userActivityUUID2)
    {
    }

    else
    {
      userActivityUUID3 = [(BMAppLocationActivity *)self userActivityUUID];
      userActivityUUID4 = [v5 userActivityUUID];
      v76 = [userActivityUUID3 isEqual:userActivityUUID4];

      if (!v76)
      {
        goto LABEL_143;
      }
    }

    sourceID = [(BMAppLocationActivity *)self sourceID];
    sourceID2 = [v5 sourceID];
    v79 = sourceID2;
    if (sourceID == sourceID2)
    {
    }

    else
    {
      sourceID3 = [(BMAppLocationActivity *)self sourceID];
      sourceID4 = [v5 sourceID];
      v82 = [sourceID3 isEqual:sourceID4];

      if (!v82)
      {
        goto LABEL_143;
      }
    }

    sourceBundleID = [(BMAppLocationActivity *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v85 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMAppLocationActivity *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v88 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v88)
      {
        goto LABEL_143;
      }
    }

    sourceItemID = [(BMAppLocationActivity *)self sourceItemID];
    sourceItemID2 = [v5 sourceItemID];
    v91 = sourceItemID2;
    if (sourceItemID == sourceItemID2)
    {
    }

    else
    {
      sourceItemID3 = [(BMAppLocationActivity *)self sourceItemID];
      sourceItemID4 = [v5 sourceItemID];
      v94 = [sourceItemID3 isEqual:sourceItemID4];

      if (!v94)
      {
        goto LABEL_143;
      }
    }

    sourceGroupID = [(BMAppLocationActivity *)self sourceGroupID];
    sourceGroupID2 = [v5 sourceGroupID];
    v97 = sourceGroupID2;
    if (sourceGroupID == sourceGroupID2)
    {
    }

    else
    {
      sourceGroupID3 = [(BMAppLocationActivity *)self sourceGroupID];
      sourceGroupID4 = [v5 sourceGroupID];
      v100 = [sourceGroupID3 isEqual:sourceGroupID4];

      if (!v100)
      {
        goto LABEL_143;
      }
    }

    calendarUserActivityDate = [(BMAppLocationActivity *)self calendarUserActivityDate];
    calendarUserActivityDate2 = [v5 calendarUserActivityDate];
    v103 = calendarUserActivityDate2;
    if (calendarUserActivityDate == calendarUserActivityDate2)
    {
    }

    else
    {
      calendarUserActivityDate3 = [(BMAppLocationActivity *)self calendarUserActivityDate];
      calendarUserActivityDate4 = [v5 calendarUserActivityDate];
      v106 = [calendarUserActivityDate3 isEqual:calendarUserActivityDate4];

      if (!v106)
      {
        goto LABEL_143;
      }
    }

    calendarUserActivityExternalID = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
    calendarUserActivityExternalID2 = [v5 calendarUserActivityExternalID];
    v109 = calendarUserActivityExternalID2;
    if (calendarUserActivityExternalID == calendarUserActivityExternalID2)
    {
    }

    else
    {
      calendarUserActivityExternalID3 = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
      calendarUserActivityExternalID4 = [v5 calendarUserActivityExternalID];
      v112 = [calendarUserActivityExternalID3 isEqual:calendarUserActivityExternalID4];

      if (!v112)
      {
        goto LABEL_143;
      }
    }

    calendarUserActivityEndDate = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
    calendarUserActivityEndDate2 = [v5 calendarUserActivityEndDate];
    v115 = calendarUserActivityEndDate2;
    if (calendarUserActivityEndDate == calendarUserActivityEndDate2)
    {
    }

    else
    {
      calendarUserActivityEndDate3 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
      calendarUserActivityEndDate4 = [v5 calendarUserActivityEndDate];
      v118 = [calendarUserActivityEndDate3 isEqual:calendarUserActivityEndDate4];

      if (!v118)
      {
        goto LABEL_143;
      }
    }

    locationName = [(BMAppLocationActivity *)self locationName];
    locationName2 = [v5 locationName];
    v121 = locationName2;
    if (locationName == locationName2)
    {
    }

    else
    {
      locationName3 = [(BMAppLocationActivity *)self locationName];
      locationName4 = [v5 locationName];
      v124 = [locationName3 isEqual:locationName4];

      if (!v124)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasLatitude](self, "hasLatitude") || [v5 hasLatitude])
    {
      if (![(BMAppLocationActivity *)self hasLatitude])
      {
        goto LABEL_143;
      }

      if (![v5 hasLatitude])
      {
        goto LABEL_143;
      }

      [(BMAppLocationActivity *)self latitude];
      v126 = v125;
      [v5 latitude];
      if (v126 != v127)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasLongitude](self, "hasLongitude") || [v5 hasLongitude])
    {
      if (![(BMAppLocationActivity *)self hasLongitude])
      {
        goto LABEL_143;
      }

      if (![v5 hasLongitude])
      {
        goto LABEL_143;
      }

      [(BMAppLocationActivity *)self longitude];
      v129 = v128;
      [v5 longitude];
      if (v129 != v130)
      {
        goto LABEL_143;
      }
    }

    city = [(BMAppLocationActivity *)self city];
    city2 = [v5 city];
    v133 = city2;
    if (city == city2)
    {
    }

    else
    {
      city3 = [(BMAppLocationActivity *)self city];
      city4 = [v5 city];
      v136 = [city3 isEqual:city4];

      if (!v136)
      {
        goto LABEL_143;
      }
    }

    stateOrProvince = [(BMAppLocationActivity *)self stateOrProvince];
    stateOrProvince2 = [v5 stateOrProvince];
    v139 = stateOrProvince2;
    if (stateOrProvince == stateOrProvince2)
    {
    }

    else
    {
      stateOrProvince3 = [(BMAppLocationActivity *)self stateOrProvince];
      stateOrProvince4 = [v5 stateOrProvince];
      v142 = [stateOrProvince3 isEqual:stateOrProvince4];

      if (!v142)
      {
        goto LABEL_143;
      }
    }

    country = [(BMAppLocationActivity *)self country];
    country2 = [v5 country];
    v145 = country2;
    if (country == country2)
    {
    }

    else
    {
      country3 = [(BMAppLocationActivity *)self country];
      country4 = [v5 country];
      v148 = [country3 isEqual:country4];

      if (!v148)
      {
        goto LABEL_143;
      }
    }

    thoroughfare = [(BMAppLocationActivity *)self thoroughfare];
    thoroughfare2 = [v5 thoroughfare];
    v151 = thoroughfare2;
    if (thoroughfare == thoroughfare2)
    {
    }

    else
    {
      thoroughfare3 = [(BMAppLocationActivity *)self thoroughfare];
      thoroughfare4 = [v5 thoroughfare];
      v154 = [thoroughfare3 isEqual:thoroughfare4];

      if (!v154)
      {
        goto LABEL_143;
      }
    }

    fullyFormattedAddress = [(BMAppLocationActivity *)self fullyFormattedAddress];
    fullyFormattedAddress2 = [v5 fullyFormattedAddress];
    v157 = fullyFormattedAddress2;
    if (fullyFormattedAddress == fullyFormattedAddress2)
    {
    }

    else
    {
      fullyFormattedAddress3 = [(BMAppLocationActivity *)self fullyFormattedAddress];
      fullyFormattedAddress4 = [v5 fullyFormattedAddress];
      v160 = [fullyFormattedAddress3 isEqual:fullyFormattedAddress4];

      if (!v160)
      {
        goto LABEL_143;
      }
    }

    subThoroughfare = [(BMAppLocationActivity *)self subThoroughfare];
    subThoroughfare2 = [v5 subThoroughfare];
    v163 = subThoroughfare2;
    if (subThoroughfare == subThoroughfare2)
    {
    }

    else
    {
      subThoroughfare3 = [(BMAppLocationActivity *)self subThoroughfare];
      subThoroughfare4 = [v5 subThoroughfare];
      v166 = [subThoroughfare3 isEqual:subThoroughfare4];

      if (!v166)
      {
        goto LABEL_143;
      }
    }

    postalCode = [(BMAppLocationActivity *)self postalCode];
    postalCode2 = [v5 postalCode];
    v169 = postalCode2;
    if (postalCode == postalCode2)
    {
    }

    else
    {
      postalCode3 = [(BMAppLocationActivity *)self postalCode];
      postalCode4 = [v5 postalCode];
      v172 = [postalCode3 isEqual:postalCode4];

      if (!v172)
      {
        goto LABEL_143;
      }
    }

    phoneNumbers = [(BMAppLocationActivity *)self phoneNumbers];
    phoneNumbers2 = [v5 phoneNumbers];
    v175 = phoneNumbers2;
    if (phoneNumbers == phoneNumbers2)
    {
    }

    else
    {
      phoneNumbers3 = [(BMAppLocationActivity *)self phoneNumbers];
      phoneNumbers4 = [v5 phoneNumbers];
      v178 = [phoneNumbers3 isEqual:phoneNumbers4];

      if (!v178)
      {
        goto LABEL_143;
      }
    }

    displayName = [(BMAppLocationActivity *)self displayName];
    displayName2 = [v5 displayName];
    v181 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(BMAppLocationActivity *)self displayName];
      displayName4 = [v5 displayName];
      v184 = [displayName3 isEqual:displayName4];

      if (!v184)
      {
LABEL_143:
        v12 = 0;
LABEL_144:

        goto LABEL_145;
      }
    }

    v186 = [(BMAppLocationActivity *)self URL];
    v187 = [v5 URL];
    if (v186 == v187)
    {
      v12 = 1;
    }

    else
    {
      v188 = [(BMAppLocationActivity *)self URL];
      v189 = [v5 URL];
      v12 = [v188 isEqual:v189];
    }

    goto LABEL_144;
  }

  v12 = 0;
LABEL_145:

  return v12;
}

- (NSURL)URL
{
  raw_URL = self->_raw_URL;
  if (raw_URL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_URL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v126[35] = *MEMORY[0x1E69E9840];
  bundleID = [(BMAppLocationActivity *)self bundleID];
  activityType = [(BMAppLocationActivity *)self activityType];
  if ([(BMAppLocationActivity *)self hasBeginningOfActivity])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity beginningOfActivity](self, "beginningOfActivity")}];
  }

  else
  {
    v5 = 0;
  }

  contentDescription = [(BMAppLocationActivity *)self contentDescription];
  expirationDate = [(BMAppLocationActivity *)self expirationDate];
  if (expirationDate)
  {
    v8 = MEMORY[0x1E696AD98];
    expirationDate2 = [(BMAppLocationActivity *)self expirationDate];
    [expirationDate2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMAppLocationActivity *)self hasIsEligibleForPrediction])
  {
    v124 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  }

  else
  {
    v124 = 0;
  }

  if ([(BMAppLocationActivity *)self hasIsPubliclyIndexable])
  {
    v123 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  }

  else
  {
    v123 = 0;
  }

  itemIdentifier = [(BMAppLocationActivity *)self itemIdentifier];
  itemRelatedContentURL = [(BMAppLocationActivity *)self itemRelatedContentURL];
  absoluteString = [itemRelatedContentURL absoluteString];

  itemRelatedUniqueIdentifier = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
  if ([(BMAppLocationActivity *)self hasShortcutAvailability])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppLocationActivity shortcutAvailability](self, "shortcutAvailability")}];
  }

  else
  {
    v119 = 0;
  }

  suggestedInvocationPhrase = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
  title = [(BMAppLocationActivity *)self title];
  userActivityRequiredString = [(BMAppLocationActivity *)self userActivityRequiredString];
  userActivityUUID = [(BMAppLocationActivity *)self userActivityUUID];
  sourceID = [(BMAppLocationActivity *)self sourceID];
  sourceBundleID = [(BMAppLocationActivity *)self sourceBundleID];
  sourceItemID = [(BMAppLocationActivity *)self sourceItemID];
  sourceGroupID = [(BMAppLocationActivity *)self sourceGroupID];
  calendarUserActivityDate = [(BMAppLocationActivity *)self calendarUserActivityDate];
  if (calendarUserActivityDate)
  {
    v13 = MEMORY[0x1E696AD98];
    calendarUserActivityDate2 = [(BMAppLocationActivity *)self calendarUserActivityDate];
    [calendarUserActivityDate2 timeIntervalSinceReferenceDate];
    v110 = [v13 numberWithDouble:?];
  }

  else
  {
    v110 = 0;
  }

  calendarUserActivityExternalID = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
  calendarUserActivityEndDate = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
  if (calendarUserActivityEndDate)
  {
    v16 = MEMORY[0x1E696AD98];
    calendarUserActivityEndDate2 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
    [calendarUserActivityEndDate2 timeIntervalSinceReferenceDate];
    v108 = [v16 numberWithDouble:?];
  }

  else
  {
    v108 = 0;
  }

  locationName = [(BMAppLocationActivity *)self locationName];
  if (![(BMAppLocationActivity *)self hasLatitude]|| ([(BMAppLocationActivity *)self latitude], fabs(v18) == INFINITY))
  {
    v106 = 0;
  }

  else
  {
    [(BMAppLocationActivity *)self latitude];
    v19 = MEMORY[0x1E696AD98];
    [(BMAppLocationActivity *)self latitude];
    v106 = [v19 numberWithDouble:?];
  }

  if (![(BMAppLocationActivity *)self hasLongitude]|| ([(BMAppLocationActivity *)self longitude], fabs(v20) == INFINITY))
  {
    v105 = 0;
  }

  else
  {
    [(BMAppLocationActivity *)self longitude];
    v21 = MEMORY[0x1E696AD98];
    [(BMAppLocationActivity *)self longitude];
    v105 = [v21 numberWithDouble:?];
  }

  city = [(BMAppLocationActivity *)self city];
  stateOrProvince = [(BMAppLocationActivity *)self stateOrProvince];
  country = [(BMAppLocationActivity *)self country];
  thoroughfare = [(BMAppLocationActivity *)self thoroughfare];
  fullyFormattedAddress = [(BMAppLocationActivity *)self fullyFormattedAddress];
  subThoroughfare = [(BMAppLocationActivity *)self subThoroughfare];
  postalCode = [(BMAppLocationActivity *)self postalCode];
  _phoneNumbersJSONArray = [(BMAppLocationActivity *)self _phoneNumbersJSONArray];
  displayName = [(BMAppLocationActivity *)self displayName];
  v22 = [(BMAppLocationActivity *)self URL];
  absoluteString2 = [v22 absoluteString];

  v125[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null;
  v126[0] = null;
  v125[1] = @"activityType";
  null2 = activityType;
  if (!activityType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null2;
  v126[1] = null2;
  v125[2] = @"beginningOfActivity";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null3;
  v126[2] = null3;
  v125[3] = @"contentDescription";
  null4 = contentDescription;
  if (!contentDescription)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null4;
  v126[3] = null4;
  v125[4] = @"expirationDate";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null5;
  v126[4] = null5;
  v125[5] = @"isEligibleForPrediction";
  null6 = v124;
  if (!v124)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v126[5] = null6;
  v125[6] = @"isPubliclyIndexable";
  null7 = v123;
  if (!v123)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v126[6] = null7;
  v125[7] = @"itemIdentifier";
  null8 = itemIdentifier;
  if (!itemIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v126[7] = null8;
  v125[8] = @"itemRelatedContentURL";
  null9 = absoluteString;
  if (!absoluteString)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v126[8] = null9;
  v125[9] = @"itemRelatedUniqueIdentifier";
  null10 = itemRelatedUniqueIdentifier;
  if (!itemRelatedUniqueIdentifier)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null10;
  v126[9] = null10;
  v125[10] = @"shortcutAvailability";
  null11 = v119;
  if (!v119)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null11;
  v126[10] = null11;
  v125[11] = @"suggestedInvocationPhrase";
  null12 = suggestedInvocationPhrase;
  if (!suggestedInvocationPhrase)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null12;
  v126[11] = null12;
  v125[12] = @"title";
  null13 = title;
  if (!title)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = null13;
  v126[12] = null13;
  v125[13] = @"userActivityRequiredString";
  null14 = userActivityRequiredString;
  if (!userActivityRequiredString)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = contentDescription;
  v88 = null14;
  v126[13] = null14;
  v125[14] = @"userActivityUUID";
  null15 = userActivityUUID;
  if (!userActivityUUID)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null15;
  v126[14] = null15;
  v125[15] = @"sourceID";
  null16 = sourceID;
  if (!sourceID)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null16;
  v126[15] = null16;
  v125[16] = @"sourceBundleID";
  null17 = sourceBundleID;
  if (!sourceBundleID)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null17;
  v126[16] = null17;
  v125[17] = @"sourceItemID";
  null18 = sourceItemID;
  if (!sourceItemID)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null18;
  v126[17] = null18;
  v125[18] = @"sourceGroupID";
  null19 = sourceGroupID;
  if (!sourceGroupID)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null19;
  v126[18] = null19;
  v125[19] = @"calendarUserActivityDate";
  null20 = v110;
  if (!v110)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null20;
  v126[19] = null20;
  v125[20] = @"calendarUserActivityExternalID";
  null21 = calendarUserActivityExternalID;
  if (!calendarUserActivityExternalID)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null21;
  v126[20] = null21;
  v125[21] = @"calendarUserActivityEndDate";
  null22 = v108;
  if (!v108)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null22;
  v126[21] = null22;
  v125[22] = @"locationName";
  null23 = locationName;
  if (!locationName)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null23;
  v126[22] = null23;
  v125[23] = @"latitude";
  null24 = v106;
  if (!v106)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = activityType;
  v68 = null24;
  v126[23] = null24;
  v125[24] = @"longitude";
  null25 = v105;
  if (!v105)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null25;
  v126[24] = null25;
  v125[25] = @"city";
  null26 = city;
  if (!city)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null26;
  v126[25] = null26;
  v125[26] = @"stateOrProvince";
  null27 = stateOrProvince;
  if (!stateOrProvince)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = v10;
  v65 = null27;
  v126[26] = null27;
  v125[27] = @"country";
  null28 = country;
  if (!country)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = bundleID;
  v63 = null28;
  v126[27] = null28;
  v125[28] = @"thoroughfare";
  null29 = thoroughfare;
  if (!thoroughfare)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null7;
  v126[28] = null29;
  v125[29] = @"fullyFormattedAddress";
  null30 = fullyFormattedAddress;
  if (!fullyFormattedAddress)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v5;
  v126[29] = null30;
  v125[30] = @"subThoroughfare";
  null31 = subThoroughfare;
  if (!subThoroughfare)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null8;
  v126[30] = null31;
  v125[31] = @"postalCode";
  null32 = postalCode;
  if (!postalCode)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v126[31] = null32;
  v125[32] = @"phoneNumbers";
  null33 = _phoneNumbersJSONArray;
  if (!_phoneNumbersJSONArray)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null6;
  v126[32] = null33;
  v125[33] = @"displayName";
  null34 = displayName;
  if (!displayName)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v126[33] = null34;
  v125[34] = @"URL";
  null35 = absoluteString2;
  if (!absoluteString2)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v126[34] = null35;
  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:{35, v63}];
  if (!absoluteString2)
  {
  }

  v60 = v39;
  if (!displayName)
  {

    v60 = v39;
  }

  if (!_phoneNumbersJSONArray)
  {

    v60 = v39;
  }

  if (!postalCode)
  {

    v60 = v39;
  }

  if (!subThoroughfare)
  {

    v60 = v39;
  }

  if (!fullyFormattedAddress)
  {

    v60 = v39;
  }

  if (!thoroughfare)
  {

    v60 = v39;
  }

  if (!country)
  {

    v60 = v39;
  }

  if (!stateOrProvince)
  {

    v60 = v39;
  }

  if (!city)
  {

    v60 = v39;
  }

  if (!v105)
  {

    v60 = v39;
  }

  if (!v106)
  {

    v60 = v39;
  }

  if (!locationName)
  {

    v60 = v39;
  }

  if (!v108)
  {

    v60 = v39;
  }

  if (!calendarUserActivityExternalID)
  {

    v60 = v39;
  }

  if (!v110)
  {

    v60 = v39;
  }

  if (!sourceGroupID)
  {

    v60 = v39;
  }

  if (!sourceItemID)
  {

    v60 = v39;
  }

  if (!sourceBundleID)
  {

    v60 = v39;
  }

  if (!sourceID)
  {

    v60 = v39;
  }

  if (!userActivityUUID)
  {
  }

  if (!userActivityRequiredString)
  {
  }

  if (!title)
  {
  }

  if (!suggestedInvocationPhrase)
  {
  }

  if (!v119)
  {
  }

  if (!itemRelatedUniqueIdentifier)
  {
  }

  if (!absoluteString)
  {
  }

  if (!itemIdentifier)
  {
  }

  if (!v123)
  {
  }

  if (v124)
  {
    if (v92)
    {
      goto LABEL_160;
    }
  }

  else
  {

    if (v92)
    {
LABEL_160:
      if (v37)
      {
        goto LABEL_161;
      }

      goto LABEL_169;
    }
  }

  if (v37)
  {
LABEL_161:
    if (v87)
    {
      goto LABEL_162;
    }

    goto LABEL_170;
  }

LABEL_169:

  if (v87)
  {
LABEL_162:
    if (v93)
    {
      goto LABEL_163;
    }

LABEL_171:

    if (v94)
    {
      goto LABEL_164;
    }

    goto LABEL_172;
  }

LABEL_170:

  if (!v93)
  {
    goto LABEL_171;
  }

LABEL_163:
  if (v94)
  {
    goto LABEL_164;
  }

LABEL_172:

LABEL_164:
  v61 = *MEMORY[0x1E69E9840];

  return v86;
}

- (id)_phoneNumbersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  phoneNumbers = [(BMAppLocationActivity *)self phoneNumbers];
  v5 = [phoneNumbers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [phoneNumbers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppLocationActivity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v476[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v391 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v391 = v7;
LABEL_4:
    v393 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];
    if (!v393 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v390 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v390 = v393;
LABEL_7:
      v392 = [dictionaryCopy objectForKeyedSubscript:@"beginningOfActivity"];
      if (!v392 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v387 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v387 = v392;
LABEL_10:
        v8 = [dictionaryCopy objectForKeyedSubscript:@"contentDescription"];
        v389 = v8;
        if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v388 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v388 = v9;
LABEL_13:
          v10 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
          v386 = v10;
          if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v385 = 0;
            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = objc_alloc(MEMORY[0x1E695DF00]);
            [v12 doubleValue];
            v385 = [v13 initWithTimeIntervalSince1970:?];
LABEL_37:

            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v33 = v11;
            v385 = [v12 dateFromString:v33];

            goto LABEL_37;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v385 = v11;
LABEL_38:
            v34 = [dictionaryCopy objectForKeyedSubscript:@"isEligibleForPrediction"];
            v384 = v34;
            if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v383 = 0;
              goto LABEL_41;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v383 = v35;
LABEL_41:
              v36 = [dictionaryCopy objectForKeyedSubscript:@"isPubliclyIndexable"];
              v382 = v36;
              if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v381 = 0;
                goto LABEL_44;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v381 = v37;
LABEL_44:
                v38 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
                v380 = v38;
                errorCopy = error;
                if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v39 = 0;
                  goto LABEL_47;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = v38;
LABEL_47:
                  v40 = [dictionaryCopy objectForKeyedSubscript:@"itemRelatedContentURL"];
                  v379 = v39;
                  v378 = v40;
                  if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v42 = 0;
LABEL_50:
                    v43 = [dictionaryCopy objectForKeyedSubscript:@"itemRelatedUniqueIdentifier"];
                    v375 = v42;
                    v374 = v43;
                    if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy)
                        {
                          v373 = 0;
                          selfCopy7 = 0;
                          v18 = v391;
                          v16 = v390;
                          error = v387;
                          v38 = v380;
LABEL_356:

                          goto LABEL_357;
                        }

                        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v86 = *MEMORY[0x1E698F240];
                        v455 = *MEMORY[0x1E696A578];
                        selfCopy = self;
                        v88 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v296 = objc_opt_class();
                        v89 = v88;
                        self = selfCopy;
                        v371 = [v89 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v296, @"itemRelatedUniqueIdentifier"];
                        v456 = v371;
                        v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v456 forKeys:&v455 count:1];
                        v373 = 0;
                        selfCopy7 = 0;
                        *errorCopy = [v85 initWithDomain:v86 code:2 userInfo:?];
                        v18 = v391;
                        v16 = v390;
                        error = v387;
                        v38 = v380;
                        goto LABEL_355;
                      }

                      v373 = v44;
                      v38 = v380;
                    }

                    else
                    {
                      v373 = 0;
                    }

                    v45 = [dictionaryCopy objectForKeyedSubscript:@"shortcutAvailability"];
                    v372 = v45;
                    if (!v45 || (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v371 = 0;
                      goto LABEL_56;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v371 = v46;
LABEL_56:
                      v47 = [dictionaryCopy objectForKeyedSubscript:@"suggestedInvocationPhrase"];
                      v370 = v47;
                      if (!v47 || (v48 = v47, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v369 = 0;
                        goto LABEL_59;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v369 = v48;
                        v38 = v380;
LABEL_59:
                        v49 = [dictionaryCopy objectForKeyedSubscript:@"title"];
                        v368 = v49;
                        if (!v49 || (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v367 = 0;
                          goto LABEL_62;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v367 = v50;
                          v38 = v380;
LABEL_62:
                          v51 = [dictionaryCopy objectForKeyedSubscript:@"userActivityRequiredString"];
                          v366 = v51;
                          if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v365 = 0;
                            goto LABEL_65;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v365 = v52;
                            v38 = v380;
LABEL_65:
                            v53 = [dictionaryCopy objectForKeyedSubscript:@"userActivityUUID"];
                            v364 = v53;
                            if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v363 = 0;
                              goto LABEL_68;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v363 = v54;
                              v38 = v380;
LABEL_68:
                              v55 = [dictionaryCopy objectForKeyedSubscript:@"sourceID"];
                              v362 = v55;
                              if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v361 = 0;
                                goto LABEL_71;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v361 = v56;
                                v38 = v380;
LABEL_71:
                                v57 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
                                v360 = v57;
                                if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v359 = 0;
                                  goto LABEL_74;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v359 = v58;
                                  v38 = v380;
LABEL_74:
                                  v59 = [dictionaryCopy objectForKeyedSubscript:@"sourceItemID"];
                                  v358 = v59;
                                  if (!v59 || (v60 = v59, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v357 = 0;
LABEL_77:
                                    v61 = [dictionaryCopy objectForKeyedSubscript:@"sourceGroupID"];
                                    v356 = v61;
                                    if (!v61)
                                    {
                                      goto LABEL_145;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v61 = 0;
                                      goto LABEL_145;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v61 = v61;
                                      v38 = v380;
LABEL_145:
                                      v117 = [dictionaryCopy objectForKeyedSubscript:@"calendarUserActivityDate"];
                                      v354 = v117;
                                      v355 = v61;
                                      if (!v117 || (v118 = v117, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v351 = 0;
                                        goto LABEL_148;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v138 = v118;
                                        v139 = objc_alloc(MEMORY[0x1E695DF00]);
                                        [v138 doubleValue];
                                        v351 = [v139 initWithTimeIntervalSinceReferenceDate:?];

                                        goto LABEL_148;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v163 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                        v164 = v118;
                                        v165 = v163;
                                        v166 = v164;
                                        v351 = [v165 dateFromString:v166];

LABEL_248:
                                        v38 = v380;
LABEL_148:
                                        v119 = [dictionaryCopy objectForKeyedSubscript:@"calendarUserActivityExternalID"];
                                        v353 = v119;
                                        if (!v119 || (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v352 = 0;
                                          goto LABEL_151;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v352 = v120;
                                          v38 = v380;
LABEL_151:
                                          v121 = [dictionaryCopy objectForKeyedSubscript:@"calendarUserActivityEndDate"];
                                          v350 = v121;
                                          if (!v121 || (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v349 = 0;
LABEL_154:
                                            v123 = [dictionaryCopy objectForKeyedSubscript:@"locationName"];
                                            v348 = v123;
                                            if (v123 && (v124 = v123, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (!errorCopy)
                                                {
                                                  v347 = 0;
                                                  selfCopy7 = 0;
                                                  v18 = v391;
                                                  v16 = v390;
                                                  error = v387;
                                                  v38 = v380;
                                                  v162 = v351;
                                                  goto LABEL_343;
                                                }

                                                v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v189 = *MEMORY[0x1E698F240];
                                                v429 = *MEMORY[0x1E696A578];
                                                selfCopy2 = self;
                                                v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v307 = objc_opt_class();
                                                v192 = v191;
                                                self = selfCopy2;
                                                v345 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v307, @"locationName"];
                                                v430 = v345;
                                                v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v430 forKeys:&v429 count:1];
                                                v347 = 0;
                                                selfCopy7 = 0;
                                                *errorCopy = [v188 initWithDomain:v189 code:2 userInfo:?];
                                                v18 = v391;
                                                v16 = v390;
                                                error = v387;
                                                v38 = v380;
                                                goto LABEL_288;
                                              }

                                              v347 = v124;
                                              v38 = v380;
                                            }

                                            else
                                            {
                                              v347 = 0;
                                            }

                                            v125 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
                                            v346 = v125;
                                            if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v345 = 0;
                                              goto LABEL_160;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v345 = v126;
LABEL_160:
                                              v127 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
                                              v344 = v127;
                                              if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v343 = 0;
                                                goto LABEL_163;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v343 = v128;
LABEL_163:
                                                v129 = [dictionaryCopy objectForKeyedSubscript:@"city"];
                                                v342 = v129;
                                                if (!v129 || (v130 = v129, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v131 = 0;
LABEL_166:
                                                  v132 = [dictionaryCopy objectForKeyedSubscript:@"stateOrProvince"];
                                                  v340 = v131;
                                                  if (!v132)
                                                  {
                                                    v336 = 0;
                                                    goto LABEL_213;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v336 = v132;
                                                    v132 = 0;
LABEL_213:
                                                    v174 = [dictionaryCopy objectForKeyedSubscript:@"country"];
                                                    v339 = v132;
                                                    v337 = v174;
                                                    if (v174 && (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!errorCopy)
                                                        {
                                                          v338 = 0;
                                                          selfCopy7 = 0;
                                                          v18 = v391;
                                                          v16 = v390;
                                                          error = v387;
                                                          v38 = v380;
                                                          v162 = v351;
                                                          v208 = v336;
                                                          goto LABEL_338;
                                                        }

                                                        v224 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v225 = *MEMORY[0x1E698F240];
                                                        v419 = *MEMORY[0x1E696A578];
                                                        selfCopy3 = self;
                                                        v227 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v312 = objc_opt_class();
                                                        v228 = v227;
                                                        self = selfCopy3;
                                                        v335 = [v228 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v312, @"country"];
                                                        v420 = v335;
                                                        v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v420 forKeys:&v419 count:1];
                                                        v338 = 0;
                                                        selfCopy7 = 0;
                                                        *errorCopy = [v224 initWithDomain:v225 code:2 userInfo:?];
                                                        goto LABEL_316;
                                                      }

                                                      v338 = v175;
                                                      v38 = v380;
                                                    }

                                                    else
                                                    {
                                                      v338 = 0;
                                                    }

                                                    v176 = [dictionaryCopy objectForKeyedSubscript:@"thoroughfare"];
                                                    v334 = v176;
                                                    if (!v176 || (v177 = v176, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v335 = 0;
                                                      goto LABEL_219;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v335 = v177;
                                                      v38 = v380;
LABEL_219:
                                                      v178 = [dictionaryCopy objectForKeyedSubscript:@"fullyFormattedAddress"];
                                                      v332 = v178;
                                                      if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v333 = 0;
                                                        goto LABEL_222;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v333 = v179;
                                                        v38 = v380;
LABEL_222:
                                                        v180 = [dictionaryCopy objectForKeyedSubscript:@"subThoroughfare"];
                                                        v330 = v180;
                                                        if (!v180 || (v181 = v180, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v331 = 0;
                                                          goto LABEL_225;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v331 = v181;
                                                          v38 = v380;
LABEL_225:
                                                          v182 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
                                                          v328 = v182;
                                                          if (!v182 || (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v329 = 0;
                                                            goto LABEL_228;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v329 = v183;
                                                            v38 = v380;
LABEL_228:
                                                            v184 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumbers"];
                                                            null = [MEMORY[0x1E695DFB0] null];
                                                            v186 = [v184 isEqual:null];

                                                            v162 = v351;
                                                            if (v186)
                                                            {
                                                              selfCopy5 = self;

                                                              v187 = 0;
                                                            }

                                                            else
                                                            {
                                                              v187 = v184;
                                                              if (v184)
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  obj = v184;
                                                                  if (!errorCopy)
                                                                  {
                                                                    selfCopy7 = 0;
                                                                    v18 = v391;
                                                                    v16 = v390;
                                                                    error = v387;
                                                                    v208 = v336;
                                                                    goto LABEL_333;
                                                                  }

                                                                  v267 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v268 = *MEMORY[0x1E698F240];
                                                                  v409 = *MEMORY[0x1E696A578];
                                                                  v326 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"phoneNumbers"];
                                                                  v410 = v326;
                                                                  v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v410 forKeys:&v409 count:1];
                                                                  v270 = [v267 initWithDomain:v268 code:2 userInfo:v269];
                                                                  selfCopy7 = 0;
                                                                  *errorCopy = v270;
                                                                  v261 = v269;
                                                                  v18 = v391;
                                                                  v16 = v390;
                                                                  error = v387;
                                                                  goto LABEL_312;
                                                                }
                                                              }

                                                              selfCopy5 = self;
                                                            }

                                                            v209 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v187, "count")}];
                                                            v394 = 0u;
                                                            v395 = 0u;
                                                            v396 = 0u;
                                                            v397 = 0u;
                                                            obj = v187;
                                                            v210 = [obj countByEnumeratingWithState:&v394 objects:v408 count:16];
                                                            v326 = v209;
                                                            if (!v210)
                                                            {
                                                              goto LABEL_265;
                                                            }

                                                            v211 = v210;
                                                            v212 = *v395;
LABEL_258:
                                                            v213 = 0;
                                                            while (1)
                                                            {
                                                              if (*v395 != v212)
                                                              {
                                                                objc_enumerationMutation(obj);
                                                              }

                                                              v214 = *(*(&v394 + 1) + 8 * v213);
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                break;
                                                              }

                                                              objc_opt_class();
                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                              {
                                                                if (errorCopy)
                                                                {
                                                                  v249 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v250 = *MEMORY[0x1E698F240];
                                                                  v404 = *MEMORY[0x1E696A578];
                                                                  v323 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumbers"];
                                                                  v405 = v323;
                                                                  v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
                                                                  v242 = v249;
                                                                  v243 = v250;
                                                                  goto LABEL_295;
                                                                }

                                                                goto LABEL_303;
                                                              }

                                                              v215 = v214;
                                                              [v209 addObject:v215];

                                                              if (v211 == ++v213)
                                                              {
                                                                v211 = [obj countByEnumeratingWithState:&v394 objects:v408 count:16];
                                                                v38 = v380;
                                                                if (v211)
                                                                {
                                                                  goto LABEL_258;
                                                                }

LABEL_265:

                                                                v216 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
                                                                v323 = v216;
                                                                if (!v216)
                                                                {
                                                                  v324 = 0;
                                                                  self = selfCopy5;
                                                                  v218 = v379;
                                                                  goto LABEL_320;
                                                                }

                                                                v217 = v216;
                                                                objc_opt_class();
                                                                self = selfCopy5;
                                                                v218 = v379;
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v324 = 0;
                                                                  goto LABEL_320;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v324 = v217;
                                                                  v38 = v380;
LABEL_320:
                                                                  v271 = [dictionaryCopy objectForKeyedSubscript:@"URL"];
                                                                  v322 = v271;
                                                                  if (v271)
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v271 = 0;
                                                                      goto LABEL_328;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v272 = v271;
                                                                      v273 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v272];
                                                                      if (v273)
                                                                      {
                                                                        v271 = v273;

                                                                        goto LABEL_328;
                                                                      }

                                                                      v286 = v272;
                                                                      selfCopy6 = self;
                                                                      if (errorCopy)
                                                                      {
                                                                        v288 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v289 = *MEMORY[0x1E698F240];
                                                                        v400 = *MEMORY[0x1E696A578];
                                                                        v290 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"URL"];
                                                                        v401 = v290;
                                                                        v291 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
                                                                        *errorCopy = [v288 initWithDomain:v289 code:2 userInfo:v291];
                                                                      }

                                                                      selfCopy7 = 0;
                                                                      v322 = v286;
                                                                      self = selfCopy6;
LABEL_382:
                                                                      v18 = v391;
                                                                      v16 = v390;
                                                                      error = v387;
                                                                      v38 = v380;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (errorCopy)
                                                                      {
                                                                        v281 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v282 = *MEMORY[0x1E698F240];
                                                                        v398 = *MEMORY[0x1E696A578];
                                                                        v283 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"URL"];
                                                                        v399 = v283;
                                                                        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
                                                                        v285 = v284 = self;
                                                                        *errorCopy = [v281 initWithDomain:v282 code:2 userInfo:v285];

                                                                        self = v284;
                                                                        v38 = v380;
                                                                      }

                                                                      selfCopy7 = 0;
                                                                      v18 = v391;
                                                                      v16 = v390;
LABEL_296:
                                                                      error = v387;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
LABEL_328:
                                                                    v321 = v209;
                                                                    v320 = v218;
                                                                    v18 = v391;
                                                                    v16 = v390;
                                                                    error = v387;
                                                                    self = [(BMAppLocationActivity *)self initWithBundleID:v391 activityType:v390 beginningOfActivity:v387 contentDescription:v388 expirationDate:v385 isEligibleForPrediction:v383 isPubliclyIndexable:v381 itemIdentifier:v320 itemRelatedContentURL:v375 itemRelatedUniqueIdentifier:v373 shortcutAvailability:v371 suggestedInvocationPhrase:v369 title:v367 userActivityRequiredString:v365 userActivityUUID:v363 sourceID:v361 sourceBundleID:v359 sourceItemID:v357 sourceGroupID:v355 calendarUserActivityDate:v351 calendarUserActivityExternalID:v352 calendarUserActivityEndDate:v349 locationName:v347 latitude:v345 longitude:v343 city:v340 stateOrProvince:v339 country:v338 thoroughfare:v335 fullyFormattedAddress:v333 subThoroughfare:v331 postalCode:v329 phoneNumbers:v321 displayName:v324 URL:v271];

                                                                    selfCopy7 = self;
                                                                  }

                                                                  v208 = v336;
                                                                }

                                                                else
                                                                {
                                                                  if (errorCopy)
                                                                  {
                                                                    v276 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v277 = *MEMORY[0x1E698F240];
                                                                    v402 = *MEMORY[0x1E696A578];
                                                                    v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v319 = objc_opt_class();
                                                                    v279 = v278;
                                                                    self = selfCopy5;
                                                                    v322 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v319, @"displayName"];
                                                                    v403 = v322;
                                                                    v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
                                                                    *errorCopy = [v276 initWithDomain:v277 code:2 userInfo:v280];

                                                                    v324 = 0;
                                                                    selfCopy7 = 0;
                                                                    goto LABEL_382;
                                                                  }

                                                                  v324 = 0;
                                                                  selfCopy7 = 0;
                                                                  v18 = v391;
                                                                  v16 = v390;
                                                                  error = v387;
                                                                  v38 = v380;
                                                                  v208 = v336;
                                                                }

                                                                v261 = v324;
LABEL_331:

LABEL_333:
LABEL_334:

LABEL_335:
LABEL_336:

LABEL_337:
LABEL_338:

LABEL_339:
LABEL_340:

LABEL_341:
LABEL_342:

LABEL_343:
                                                                goto LABEL_344;
                                                              }
                                                            }

                                                            if (errorCopy)
                                                            {
                                                              v239 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v240 = *MEMORY[0x1E698F240];
                                                              v406 = *MEMORY[0x1E696A578];
                                                              v323 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"phoneNumbers"];
                                                              v407 = v323;
                                                              v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
                                                              v242 = v239;
                                                              v243 = v240;
LABEL_295:
                                                              v322 = v241;
                                                              self = selfCopy5;
                                                              v18 = v391;
                                                              v16 = v390;
                                                              v38 = v380;
                                                              selfCopy7 = 0;
                                                              *errorCopy = [v242 initWithDomain:v243 code:2 userInfo:?];
                                                              v324 = obj;
                                                              goto LABEL_296;
                                                            }

LABEL_303:
                                                            selfCopy7 = 0;
                                                            v261 = obj;
                                                            self = selfCopy5;
                                                            v18 = v391;
                                                            v16 = v390;
                                                            error = v387;
                                                            v38 = v380;
LABEL_312:
                                                            v208 = v336;
                                                            goto LABEL_331;
                                                          }

                                                          if (errorCopy)
                                                          {
                                                            v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v263 = *MEMORY[0x1E698F240];
                                                            v411 = *MEMORY[0x1E696A578];
                                                            selfCopy8 = self;
                                                            v265 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v318 = objc_opt_class();
                                                            v266 = v265;
                                                            self = selfCopy8;
                                                            obj = [v266 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v318, @"postalCode"];
                                                            v412 = obj;
                                                            v327 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v412 forKeys:&v411 count:1];
                                                            v329 = 0;
                                                            selfCopy7 = 0;
                                                            *errorCopy = [v262 initWithDomain:v263 code:2 userInfo:?];
                                                            v18 = v391;
                                                            v16 = v390;
                                                            error = v387;
                                                            v38 = v380;
                                                            v162 = v351;
                                                            v208 = v336;

                                                            goto LABEL_333;
                                                          }

                                                          v329 = 0;
                                                          selfCopy7 = 0;
LABEL_371:
                                                          v18 = v391;
                                                          v16 = v390;
                                                          error = v387;
                                                          v38 = v380;
                                                          v162 = v351;
                                                          v208 = v336;
                                                          goto LABEL_334;
                                                        }

                                                        if (errorCopy)
                                                        {
                                                          v256 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v257 = *MEMORY[0x1E698F240];
                                                          v413 = *MEMORY[0x1E696A578];
                                                          selfCopy9 = self;
                                                          v259 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v317 = objc_opt_class();
                                                          v260 = v259;
                                                          self = selfCopy9;
                                                          v329 = [v260 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v317, @"subThoroughfare"];
                                                          v414 = v329;
                                                          v328 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v414 forKeys:&v413 count:1];
                                                          v331 = 0;
                                                          selfCopy7 = 0;
                                                          *errorCopy = [v256 initWithDomain:v257 code:2 userInfo:?];
                                                          goto LABEL_371;
                                                        }

                                                        v331 = 0;
                                                        selfCopy7 = 0;
LABEL_369:
                                                        v18 = v391;
                                                        v16 = v390;
                                                        error = v387;
                                                        v38 = v380;
                                                        v162 = v351;
                                                        v208 = v336;
                                                        goto LABEL_335;
                                                      }

                                                      if (errorCopy)
                                                      {
                                                        v244 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v245 = *MEMORY[0x1E698F240];
                                                        v415 = *MEMORY[0x1E696A578];
                                                        selfCopy10 = self;
                                                        v247 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v315 = objc_opt_class();
                                                        v248 = v247;
                                                        self = selfCopy10;
                                                        v331 = [v248 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v315, @"fullyFormattedAddress"];
                                                        v416 = v331;
                                                        v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v416 forKeys:&v415 count:1];
                                                        v333 = 0;
                                                        selfCopy7 = 0;
                                                        *errorCopy = [v244 initWithDomain:v245 code:2 userInfo:?];
                                                        goto LABEL_369;
                                                      }

                                                      v333 = 0;
                                                      selfCopy7 = 0;
LABEL_324:
                                                      v18 = v391;
                                                      v16 = v390;
                                                      error = v387;
                                                      v38 = v380;
                                                      v162 = v351;
                                                      v208 = v336;
                                                      goto LABEL_336;
                                                    }

                                                    if (errorCopy)
                                                    {
                                                      v229 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v230 = *MEMORY[0x1E698F240];
                                                      v417 = *MEMORY[0x1E696A578];
                                                      selfCopy11 = self;
                                                      v232 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v313 = objc_opt_class();
                                                      v233 = v232;
                                                      self = selfCopy11;
                                                      v333 = [v233 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v313, @"thoroughfare"];
                                                      v418 = v333;
                                                      v332 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v418 forKeys:&v417 count:1];
                                                      v335 = 0;
                                                      selfCopy7 = 0;
                                                      *errorCopy = [v229 initWithDomain:v230 code:2 userInfo:?];
                                                      goto LABEL_324;
                                                    }

                                                    v335 = 0;
                                                    selfCopy7 = 0;
LABEL_316:
                                                    v18 = v391;
                                                    v16 = v390;
                                                    error = v387;
                                                    v38 = v380;
                                                    v162 = v351;
                                                    v208 = v336;
                                                    goto LABEL_337;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v336 = v132;
                                                    v132 = v132;
                                                    v38 = v380;
                                                    goto LABEL_213;
                                                  }

                                                  v208 = v132;
                                                  if (errorCopy)
                                                  {
                                                    v219 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v220 = *MEMORY[0x1E698F240];
                                                    v421 = *MEMORY[0x1E696A578];
                                                    selfCopy12 = self;
                                                    v222 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v311 = objc_opt_class();
                                                    v223 = v222;
                                                    self = selfCopy12;
                                                    v338 = [v223 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v311, @"stateOrProvince"];
                                                    v422 = v338;
                                                    v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v422 forKeys:&v421 count:1];
                                                    v339 = 0;
                                                    selfCopy7 = 0;
                                                    *errorCopy = [v219 initWithDomain:v220 code:2 userInfo:?];
                                                    v18 = v391;
                                                    v16 = v390;
                                                    error = v387;
                                                    v38 = v380;
                                                    v162 = v351;
                                                    goto LABEL_338;
                                                  }

                                                  v339 = 0;
                                                  selfCopy7 = 0;
LABEL_309:
                                                  v18 = v391;
                                                  v16 = v390;
                                                  error = v387;
                                                  v38 = v380;
                                                  v162 = v351;
                                                  goto LABEL_339;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v131 = v130;
                                                  v38 = v380;
                                                  goto LABEL_166;
                                                }

                                                if (errorCopy)
                                                {
                                                  v203 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v204 = *MEMORY[0x1E698F240];
                                                  v423 = *MEMORY[0x1E696A578];
                                                  selfCopy13 = self;
                                                  v206 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v310 = objc_opt_class();
                                                  v207 = v206;
                                                  self = selfCopy13;
                                                  v339 = [v207 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v310, @"city"];
                                                  v424 = v339;
                                                  v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v424 forKeys:&v423 count:1];
                                                  v340 = 0;
                                                  selfCopy7 = 0;
                                                  *errorCopy = [v203 initWithDomain:v204 code:2 userInfo:v208];
                                                  goto LABEL_309;
                                                }

                                                v340 = 0;
                                                selfCopy7 = 0;
                                                v18 = v391;
                                                v16 = v390;
                                                error = v387;
                                                v38 = v380;
LABEL_305:
                                                v162 = v351;
                                                goto LABEL_340;
                                              }

                                              if (errorCopy)
                                              {
                                                v198 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v199 = *MEMORY[0x1E698F240];
                                                v425 = *MEMORY[0x1E696A578];
                                                selfCopy14 = self;
                                                v201 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v309 = objc_opt_class();
                                                v202 = v201;
                                                self = selfCopy14;
                                                v38 = v380;
                                                v340 = [v202 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v309, @"longitude"];
                                                v426 = v340;
                                                v342 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
                                                v343 = 0;
                                                selfCopy7 = 0;
                                                *errorCopy = [v198 initWithDomain:v199 code:2 userInfo:?];
                                                v18 = v391;
                                                v16 = v390;
                                                error = v387;
                                                goto LABEL_305;
                                              }

                                              v343 = 0;
                                              selfCopy7 = 0;
LABEL_298:
                                              v18 = v391;
                                              v16 = v390;
                                              error = v387;
                                              v162 = v351;
                                              goto LABEL_341;
                                            }

                                            if (errorCopy)
                                            {
                                              v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v194 = *MEMORY[0x1E698F240];
                                              v427 = *MEMORY[0x1E696A578];
                                              selfCopy15 = self;
                                              v196 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v308 = objc_opt_class();
                                              v197 = v196;
                                              self = selfCopy15;
                                              v38 = v380;
                                              v343 = [v197 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v308, @"latitude"];
                                              v428 = v343;
                                              v344 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v428 forKeys:&v427 count:1];
                                              v345 = 0;
                                              selfCopy7 = 0;
                                              *errorCopy = [v193 initWithDomain:v194 code:2 userInfo:?];
                                              goto LABEL_298;
                                            }

                                            v345 = 0;
                                            selfCopy7 = 0;
                                            v18 = v391;
                                            v16 = v390;
                                            error = v387;
LABEL_288:
                                            v162 = v351;
                                            goto LABEL_342;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v150 = v122;
                                            v151 = objc_alloc(MEMORY[0x1E695DF00]);
                                            [v150 doubleValue];
                                            v349 = [v151 initWithTimeIntervalSinceReferenceDate:?];

                                            goto LABEL_154;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v172 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                            v173 = v350;
                                            v349 = [v172 dateFromString:v173];

LABEL_272:
                                            v38 = v380;
                                            goto LABEL_154;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v349 = v122;
                                            goto LABEL_272;
                                          }

                                          v162 = v351;
                                          if (errorCopy)
                                          {
                                            v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v252 = *MEMORY[0x1E698F240];
                                            v431 = *MEMORY[0x1E696A578];
                                            selfCopy16 = self;
                                            v254 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v316 = objc_opt_class();
                                            v255 = v254;
                                            self = selfCopy16;
                                            v347 = [v255 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v316, @"calendarUserActivityEndDate"];
                                            v432 = v347;
                                            v348 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v432 forKeys:&v431 count:1];
                                            v349 = 0;
                                            selfCopy7 = 0;
                                            *errorCopy = [v251 initWithDomain:v252 code:2 userInfo:?];
                                            v18 = v391;
                                            v16 = v390;
                                            error = v387;
                                            v38 = v380;
                                            goto LABEL_343;
                                          }

                                          v349 = 0;
                                          selfCopy7 = 0;
                                          v18 = v391;
                                          v16 = v390;
                                          error = v387;
                                          v38 = v380;
LABEL_344:

                                          goto LABEL_345;
                                        }

                                        if (errorCopy)
                                        {
                                          v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v168 = *MEMORY[0x1E698F240];
                                          v433 = *MEMORY[0x1E696A578];
                                          selfCopy17 = self;
                                          v170 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v306 = objc_opt_class();
                                          v171 = v170;
                                          self = selfCopy17;
                                          v349 = [v171 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v306, @"calendarUserActivityExternalID"];
                                          v434 = v349;
                                          v350 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v434 forKeys:&v433 count:1];
                                          v352 = 0;
                                          selfCopy7 = 0;
                                          *errorCopy = [v167 initWithDomain:v168 code:2 userInfo:?];
                                          v18 = v391;
                                          v16 = v390;
                                          error = v387;
                                          v38 = v380;
                                          v162 = v351;
                                          goto LABEL_344;
                                        }

                                        v352 = 0;
                                        selfCopy7 = 0;
                                        v18 = v391;
                                        v16 = v390;
                                        error = v387;
                                        v38 = v380;
                                        v162 = v351;
LABEL_345:

                                        goto LABEL_346;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v351 = v118;
                                        goto LABEL_248;
                                      }

                                      if (errorCopy)
                                      {
                                        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v235 = *MEMORY[0x1E698F240];
                                        v435 = *MEMORY[0x1E696A578];
                                        selfCopy18 = self;
                                        v237 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v314 = objc_opt_class();
                                        v238 = v237;
                                        self = selfCopy18;
                                        v352 = [v238 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v314, @"calendarUserActivityDate"];
                                        v436 = v352;
                                        v353 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v436 forKeys:&v435 count:1];
                                        v162 = 0;
                                        selfCopy7 = 0;
                                        *errorCopy = [v234 initWithDomain:v235 code:2 userInfo:?];
                                        v18 = v391;
                                        v16 = v390;
                                        error = v387;
                                        v38 = v380;
                                        goto LABEL_345;
                                      }

                                      v162 = 0;
                                      selfCopy7 = 0;
LABEL_194:
                                      v18 = v391;
                                      v16 = v390;
                                      error = v387;
                                      v38 = v380;
LABEL_346:

                                      goto LABEL_347;
                                    }

                                    if (errorCopy)
                                    {
                                      v157 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v158 = *MEMORY[0x1E698F240];
                                      v437 = *MEMORY[0x1E696A578];
                                      selfCopy19 = self;
                                      v160 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v305 = objc_opt_class();
                                      v161 = v160;
                                      self = selfCopy19;
                                      v162 = [v161 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v305, @"sourceGroupID"];
                                      v438 = v162;
                                      v354 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v438 forKeys:&v437 count:1];
                                      v355 = 0;
                                      selfCopy7 = 0;
                                      *errorCopy = [v157 initWithDomain:v158 code:2 userInfo:?];
                                      goto LABEL_194;
                                    }

                                    v355 = 0;
                                    selfCopy7 = 0;
LABEL_269:
                                    v18 = v391;
                                    v16 = v390;
                                    error = v387;
                                    v38 = v380;
LABEL_347:

                                    goto LABEL_348;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v357 = v60;
                                    v38 = v380;
                                    goto LABEL_77;
                                  }

                                  if (errorCopy)
                                  {
                                    v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v153 = *MEMORY[0x1E698F240];
                                    v439 = *MEMORY[0x1E696A578];
                                    selfCopy20 = self;
                                    v155 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v304 = objc_opt_class();
                                    v156 = v155;
                                    self = selfCopy20;
                                    v355 = [v156 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v304, @"sourceItemID"];
                                    v440 = v355;
                                    v356 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v440 forKeys:&v439 count:1];
                                    v357 = 0;
                                    selfCopy7 = 0;
                                    *errorCopy = [v152 initWithDomain:v153 code:2 userInfo:?];
                                    goto LABEL_269;
                                  }

                                  v357 = 0;
                                  selfCopy7 = 0;
LABEL_245:
                                  v18 = v391;
                                  v16 = v390;
                                  error = v387;
                                  v38 = v380;
LABEL_348:

                                  goto LABEL_349;
                                }

                                if (errorCopy)
                                {
                                  v145 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v146 = *MEMORY[0x1E698F240];
                                  v441 = *MEMORY[0x1E696A578];
                                  selfCopy21 = self;
                                  v148 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v303 = objc_opt_class();
                                  v149 = v148;
                                  self = selfCopy21;
                                  v357 = [v149 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v303, @"sourceBundleID"];
                                  v442 = v357;
                                  v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v442 forKeys:&v441 count:1];
                                  v359 = 0;
                                  selfCopy7 = 0;
                                  *errorCopy = [v145 initWithDomain:v146 code:2 userInfo:?];
                                  goto LABEL_245;
                                }

                                v359 = 0;
                                selfCopy7 = 0;
LABEL_239:
                                v18 = v391;
                                v16 = v390;
                                error = v387;
                                v38 = v380;
LABEL_349:

                                goto LABEL_350;
                              }

                              if (errorCopy)
                              {
                                v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v141 = *MEMORY[0x1E698F240];
                                v443 = *MEMORY[0x1E696A578];
                                selfCopy22 = self;
                                v143 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v302 = objc_opt_class();
                                v144 = v143;
                                self = selfCopy22;
                                v359 = [v144 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v302, @"sourceID"];
                                v444 = v359;
                                v360 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v444 forKeys:&v443 count:1];
                                v361 = 0;
                                selfCopy7 = 0;
                                *errorCopy = [v140 initWithDomain:v141 code:2 userInfo:?];
                                goto LABEL_239;
                              }

                              v361 = 0;
                              selfCopy7 = 0;
LABEL_233:
                              v18 = v391;
                              v16 = v390;
                              error = v387;
                              v38 = v380;
LABEL_350:

                              goto LABEL_351;
                            }

                            if (errorCopy)
                            {
                              v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v134 = *MEMORY[0x1E698F240];
                              v445 = *MEMORY[0x1E696A578];
                              selfCopy23 = self;
                              v136 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v301 = objc_opt_class();
                              v137 = v136;
                              self = selfCopy23;
                              v361 = [v137 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v301, @"userActivityUUID"];
                              v446 = v361;
                              v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v446 forKeys:&v445 count:1];
                              v363 = 0;
                              selfCopy7 = 0;
                              *errorCopy = [v133 initWithDomain:v134 code:2 userInfo:?];
                              goto LABEL_233;
                            }

                            v363 = 0;
                            selfCopy7 = 0;
LABEL_208:
                            v18 = v391;
                            v16 = v390;
                            error = v387;
                            v38 = v380;
LABEL_351:

                            goto LABEL_352;
                          }

                          if (errorCopy)
                          {
                            v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v109 = *MEMORY[0x1E698F240];
                            v447 = *MEMORY[0x1E696A578];
                            selfCopy24 = self;
                            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v300 = objc_opt_class();
                            v112 = v111;
                            self = selfCopy24;
                            v363 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v300, @"userActivityRequiredString"];
                            v448 = v363;
                            v364 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v448 forKeys:&v447 count:1];
                            v365 = 0;
                            selfCopy7 = 0;
                            *errorCopy = [v108 initWithDomain:v109 code:2 userInfo:?];
                            goto LABEL_208;
                          }

                          v365 = 0;
                          selfCopy7 = 0;
LABEL_199:
                          v18 = v391;
                          v16 = v390;
                          error = v387;
                          v38 = v380;
LABEL_352:

                          goto LABEL_353;
                        }

                        if (errorCopy)
                        {
                          v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v101 = *MEMORY[0x1E698F240];
                          v449 = *MEMORY[0x1E696A578];
                          selfCopy25 = self;
                          v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v299 = objc_opt_class();
                          v104 = v103;
                          self = selfCopy25;
                          v365 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v299, @"title"];
                          v450 = v365;
                          v366 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
                          v367 = 0;
                          selfCopy7 = 0;
                          *errorCopy = [v100 initWithDomain:v101 code:2 userInfo:?];
                          goto LABEL_199;
                        }

                        v367 = 0;
                        selfCopy7 = 0;
LABEL_191:
                        v18 = v391;
                        v16 = v390;
                        error = v387;
                        v38 = v380;
LABEL_353:

                        goto LABEL_354;
                      }

                      if (errorCopy)
                      {
                        v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v96 = *MEMORY[0x1E698F240];
                        v451 = *MEMORY[0x1E696A578];
                        selfCopy26 = self;
                        v98 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v298 = objc_opt_class();
                        v99 = v98;
                        self = selfCopy26;
                        v367 = [v99 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v298, @"suggestedInvocationPhrase"];
                        v452 = v367;
                        v368 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
                        v369 = 0;
                        selfCopy7 = 0;
                        *errorCopy = [v95 initWithDomain:v96 code:2 userInfo:?];
                        goto LABEL_191;
                      }

                      v369 = 0;
                      selfCopy7 = 0;
                      v18 = v391;
                      v16 = v390;
                      error = v387;
                      v38 = v380;
LABEL_354:

                      goto LABEL_355;
                    }

                    if (errorCopy)
                    {
                      v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v91 = *MEMORY[0x1E698F240];
                      v453 = *MEMORY[0x1E696A578];
                      selfCopy27 = self;
                      v93 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v297 = objc_opt_class();
                      v94 = v93;
                      self = selfCopy27;
                      v38 = v380;
                      v369 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v297, @"shortcutAvailability"];
                      v454 = v369;
                      v370 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
                      v371 = 0;
                      selfCopy7 = 0;
                      *errorCopy = [v90 initWithDomain:v91 code:2 userInfo:?];
                      v18 = v391;
                      v16 = v390;
                      error = v387;
                      goto LABEL_354;
                    }

                    v371 = 0;
                    selfCopy7 = 0;
                    v18 = v391;
                    v16 = v390;
                    error = v387;
LABEL_355:

                    goto LABEL_356;
                  }

                  selfCopy28 = self;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v63 = v41;
                    v64 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v63];
                    if (v64)
                    {
                      v65 = v64;

                      v38 = v380;
                      v42 = v65;
                      goto LABEL_50;
                    }

                    v375 = v63;
                    if (errorCopy)
                    {
                      v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v114 = *MEMORY[0x1E698F240];
                      v459 = *MEMORY[0x1E696A578];
                      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"itemRelatedContentURL"];
                      v460 = v115;
                      v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v460 forKeys:&v459 count:1];
                      *errorCopy = [v113 initWithDomain:v114 code:2 userInfo:v116];
                    }

                    selfCopy7 = 0;
                    v378 = v63;
LABEL_141:
                    self = selfCopy28;
                    v18 = v391;
                    v16 = v390;
                    error = v387;
                    v38 = v380;
LABEL_357:

                    goto LABEL_358;
                  }

                  if (errorCopy)
                  {
                    v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v83 = *MEMORY[0x1E698F240];
                    v457 = *MEMORY[0x1E696A578];
                    v375 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemRelatedContentURL"];
                    v458 = v375;
                    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v458 forKeys:&v457 count:1];
                    *errorCopy = [v82 initWithDomain:v83 code:2 userInfo:v84];

                    selfCopy7 = 0;
                    goto LABEL_141;
                  }

                  selfCopy7 = 0;
                  v18 = v391;
                  v16 = v390;
                  error = v387;
                  v38 = v380;
LABEL_358:

                  goto LABEL_359;
                }

                if (error)
                {
                  v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v78 = *MEMORY[0x1E698F240];
                  v461 = *MEMORY[0x1E696A578];
                  selfCopy29 = self;
                  v80 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v295 = objc_opt_class();
                  v81 = v80;
                  self = selfCopy29;
                  v378 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v295, @"itemIdentifier"];
                  v462 = v378;
                  v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v462 forKeys:&v461 count:1];
                  v379 = 0;
                  selfCopy7 = 0;
                  *errorCopy = [v77 initWithDomain:v78 code:2 userInfo:?];
                  v18 = v391;
                  v16 = v390;
                  error = v387;

                  goto LABEL_358;
                }

                v379 = 0;
                selfCopy7 = 0;
                v18 = v391;
                v16 = v390;
                error = v387;
LABEL_359:

                goto LABEL_360;
              }

              if (error)
              {
                v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                v73 = *MEMORY[0x1E698F240];
                v463 = *MEMORY[0x1E696A578];
                selfCopy30 = self;
                v75 = objc_alloc(MEMORY[0x1E696AEC0]);
                v294 = objc_opt_class();
                v76 = v75;
                self = selfCopy30;
                v379 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v294, @"isPubliclyIndexable"];
                v464 = v379;
                v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v464 forKeys:&v463 count:1];
                v381 = 0;
                selfCopy7 = 0;
                *error = [v72 initWithDomain:v73 code:2 userInfo:v38];
                v18 = v391;
                v16 = v390;
                error = v387;
                goto LABEL_359;
              }

              v381 = 0;
              selfCopy7 = 0;
LABEL_125:
              v18 = v391;
              v16 = v390;
              error = v387;
LABEL_360:

              goto LABEL_361;
            }

            if (error)
            {
              v66 = objc_alloc(MEMORY[0x1E696ABC0]);
              v67 = *MEMORY[0x1E698F240];
              v465 = *MEMORY[0x1E696A578];
              selfCopy31 = self;
              v69 = objc_alloc(MEMORY[0x1E696AEC0]);
              v293 = objc_opt_class();
              v70 = v69;
              self = selfCopy31;
              v381 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v293, @"isEligibleForPrediction"];
              v466 = v381;
              v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v466 forKeys:&v465 count:1];
              v71 = [v66 initWithDomain:v67 code:2 userInfo:?];
              v383 = 0;
              selfCopy7 = 0;
              *error = v71;
              goto LABEL_125;
            }

            v383 = 0;
            selfCopy7 = 0;
LABEL_133:
            v18 = v391;
            v16 = v390;
            error = v387;
LABEL_361:

            goto LABEL_362;
          }

          if (error)
          {
            v105 = objc_alloc(MEMORY[0x1E696ABC0]);
            v106 = *MEMORY[0x1E698F240];
            v467 = *MEMORY[0x1E696A578];
            v383 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
            v468 = v383;
            v384 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v468 forKeys:&v467 count:1];
            v107 = [v105 initWithDomain:v106 code:2 userInfo:?];
            v385 = 0;
            selfCopy7 = 0;
            *error = v107;
            goto LABEL_133;
          }

          v385 = 0;
          selfCopy7 = 0;
LABEL_34:
          v18 = v391;
          v16 = v390;
          error = v387;
LABEL_362:

          goto LABEL_363;
        }

        if (error)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v469 = *MEMORY[0x1E696A578];
          selfCopy32 = self;
          v30 = objc_alloc(MEMORY[0x1E696AEC0]);
          v292 = objc_opt_class();
          v31 = v30;
          self = selfCopy32;
          v385 = [v31 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v292, @"contentDescription"];
          v470 = v385;
          v386 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v470 forKeys:&v469 count:1];
          v32 = [v27 initWithDomain:v28 code:2 userInfo:?];
          v388 = 0;
          selfCopy7 = 0;
          *error = v32;
          goto LABEL_34;
        }

        v388 = 0;
        selfCopy7 = 0;
        v18 = v391;
        v16 = v390;
        error = v387;
LABEL_363:

        goto LABEL_364;
      }

      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v471 = *MEMORY[0x1E696A578];
        v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"beginningOfActivity"];
        v472 = v388;
        v389 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v471 count:1];
        v26 = [v24 initWithDomain:v25 code:2 userInfo:?];
        selfCopy7 = 0;
        *error = v26;
        error = 0;
        v18 = v391;
        v16 = v390;
        goto LABEL_363;
      }

      selfCopy7 = 0;
      v18 = v391;
      v16 = v390;
LABEL_364:

      goto LABEL_365;
    }

    if (error)
    {
      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E698F240];
      v473 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityType"];
      v474 = v22;
      v392 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v474 forKeys:&v473 count:1];
      v23 = [v20 initWithDomain:v21 code:2 userInfo:?];
      v16 = 0;
      selfCopy7 = 0;
      *error = v23;
      error = v22;
      v18 = v391;
      goto LABEL_364;
    }

    v16 = 0;
    selfCopy7 = 0;
    v18 = v391;
LABEL_365:

    goto LABEL_366;
  }

  if (error)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v475 = *MEMORY[0x1E696A578];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v476[0] = v16;
    v393 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v476 forKeys:&v475 count:1];
    v17 = [v14 initWithDomain:v15 code:2 userInfo:?];
    v18 = 0;
    selfCopy7 = 0;
    *error = v17;
    goto LABEL_365;
  }

  v18 = 0;
  selfCopy7 = 0;
LABEL_366:

  v274 = *MEMORY[0x1E69E9840];
  return selfCopy7;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppLocationActivity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBeginningOfActivity)
  {
    beginningOfActivity = self->_beginningOfActivity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_contentDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_expirationDate)
  {
    raw_expirationDate = self->_raw_expirationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsEligibleForPrediction)
  {
    isEligibleForPrediction = self->_isEligibleForPrediction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPubliclyIndexable)
  {
    isPubliclyIndexable = self->_isPubliclyIndexable;
    PBDataWriterWriteBOOLField();
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_itemRelatedContentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_itemRelatedUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasShortcutAvailability)
  {
    shortcutAvailability = self->_shortcutAvailability;
    PBDataWriterWriteInt32Field();
  }

  if (self->_suggestedInvocationPhrase)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userActivityRequiredString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userActivityUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceItemID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceGroupID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_calendarUserActivityDate)
  {
    raw_calendarUserActivityDate = self->_raw_calendarUserActivityDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_calendarUserActivityExternalID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    raw_calendarUserActivityEndDate = self->_raw_calendarUserActivityEndDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_locationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasLatitude)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasLongitude)
  {
    longitude = self->_longitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stateOrProvince)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_thoroughfare)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fullyFormattedAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subThoroughfare)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_phoneNumbers;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_URL)
  {
    PBDataWriterWriteStringField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v69.receiver = self;
  v69.super_class = BMAppLocationActivity;
  v5 = [(BMEventBase *)&v69 init];
  if (!v5)
  {
    goto LABEL_123;
  }

  v6 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v70) = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v10 |= (LOBYTE(v70) & 0x7F) << v8;
      if ((LOBYTE(v70) & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 104;
        goto LABEL_98;
      case 2u:
        v16 = PBReaderReadString();
        v17 = 112;
        goto LABEL_98;
      case 3u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasBeginningOfActivity = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v24 |= (LOBYTE(v70) & 0x7F) << v22;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v14 = v23++ >= 9;
          if (v14)
          {
            LOBYTE(v28) = 0;
            goto LABEL_102;
          }
        }

        v28 = (v24 != 0) & ~[fromCopy hasError];
LABEL_102:
        v5->_beginningOfActivity = v28;
        continue;
      case 4u:
        v16 = PBReaderReadString();
        v17 = 120;
        goto LABEL_98;
      case 5u:
        v5->_hasRaw_expirationDate = 1;
        v70 = 0.0;
        v18 = [fromCopy position] + 8;
        if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_expirationDate = v70;
        continue;
      case 6u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasIsEligibleForPrediction = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (LOBYTE(v70) & 0x7F) << v29;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v14 = v30++ >= 9;
          if (v14)
          {
            LOBYTE(v35) = 0;
            goto LABEL_104;
          }
        }

        v35 = (v31 != 0) & ~[fromCopy hasError];
LABEL_104:
        v5->_isEligibleForPrediction = v35;
        continue;
      case 7u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasIsPubliclyIndexable = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (LOBYTE(v70) & 0x7F) << v38;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v14 = v39++ >= 9;
          if (v14)
          {
            LOBYTE(v44) = 0;
            goto LABEL_106;
          }
        }

        v44 = (v40 != 0) & ~[fromCopy hasError];
LABEL_106:
        v5->_isPubliclyIndexable = v44;
        continue;
      case 8u:
        v16 = PBReaderReadString();
        v17 = 128;
        goto LABEL_98;
      case 9u:
        v16 = PBReaderReadString();
        v17 = 32;
        goto LABEL_98;
      case 0xAu:
        v16 = PBReaderReadString();
        v17 = 136;
        goto LABEL_98;
      case 0xBu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v5->_hasShortcutAvailability = 1;
        break;
      case 0xCu:
        v16 = PBReaderReadString();
        v17 = 144;
        goto LABEL_98;
      case 0xDu:
        v16 = PBReaderReadString();
        v17 = 152;
        goto LABEL_98;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 160;
        goto LABEL_98;
      case 0xFu:
        v16 = PBReaderReadString();
        v17 = 168;
        goto LABEL_98;
      case 0x10u:
        v16 = PBReaderReadString();
        v17 = 176;
        goto LABEL_98;
      case 0x11u:
        v16 = PBReaderReadString();
        v17 = 184;
        goto LABEL_98;
      case 0x12u:
        v16 = PBReaderReadString();
        v17 = 192;
        goto LABEL_98;
      case 0x13u:
        v16 = PBReaderReadString();
        v17 = 200;
        goto LABEL_98;
      case 0x14u:
        v5->_hasRaw_calendarUserActivityDate = 1;
        v70 = 0.0;
        v54 = [fromCopy position] + 8;
        if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 8, v55 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_calendarUserActivityDate = v70;
        continue;
      case 0x15u:
        v16 = PBReaderReadString();
        v17 = 208;
        goto LABEL_98;
      case 0x16u:
        v5->_hasRaw_calendarUserActivityEndDate = 1;
        v70 = 0.0;
        v36 = [fromCopy position] + 8;
        if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 8, v37 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_calendarUserActivityEndDate = v70;
        continue;
      case 0x17u:
        v16 = PBReaderReadString();
        v17 = 216;
        goto LABEL_98;
      case 0x18u:
        v5->_hasLatitude = 1;
        v70 = 0.0;
        v56 = [fromCopy position] + 8;
        if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 8, v57 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_latitude = v70;
        continue;
      case 0x19u:
        v5->_hasLongitude = 1;
        v70 = 0.0;
        v20 = [fromCopy position] + 8;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_longitude = v70;
        continue;
      case 0x1Au:
        v16 = PBReaderReadString();
        v17 = 240;
        goto LABEL_98;
      case 0x1Bu:
        v16 = PBReaderReadString();
        v17 = 248;
        goto LABEL_98;
      case 0x1Cu:
        v16 = PBReaderReadString();
        v17 = 256;
        goto LABEL_98;
      case 0x1Du:
        v16 = PBReaderReadString();
        v17 = 264;
        goto LABEL_98;
      case 0x1Eu:
        v16 = PBReaderReadString();
        v17 = 272;
        goto LABEL_98;
      case 0x1Fu:
        v16 = PBReaderReadString();
        v17 = 280;
        goto LABEL_98;
      case 0x20u:
        v16 = PBReaderReadString();
        v17 = 288;
        goto LABEL_98;
      case 0x21u:
        v52 = PBReaderReadString();
        if (!v52)
        {
          goto LABEL_125;
        }

        v53 = v52;
        [v6 addObject:v52];

        continue;
      case 0x22u:
        v16 = PBReaderReadString();
        v17 = 304;
        goto LABEL_98;
      case 0x23u:
        v16 = PBReaderReadString();
        v17 = 72;
LABEL_98:
        v58 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_125:

        goto LABEL_122;
    }

    while (1)
    {
      LOBYTE(v70) = 0;
      v48 = [fromCopy position] + 1;
      if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
      {
        data10 = [fromCopy data];
        [data10 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v47 |= (LOBYTE(v70) & 0x7F) << v45;
      if ((LOBYTE(v70) & 0x80) == 0)
      {
        break;
      }

      v45 += 7;
      v14 = v46++ >= 9;
      if (v14)
      {
        v51 = 0;
        goto LABEL_110;
      }
    }

    if ([fromCopy hasError])
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

LABEL_110:
    v5->_shortcutAvailability = v51;
  }

  v64 = [v6 copy];
  phoneNumbers = v5->_phoneNumbers;
  v5->_phoneNumbers = v64;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_122:
    v67 = 0;
  }

  else
  {
LABEL_123:
    v67 = v5;
  }

  return v67;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMAppLocationActivity *)self bundleID];
  activityType = [(BMAppLocationActivity *)self activityType];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity beginningOfActivity](self, "beginningOfActivity")}];
  contentDescription = [(BMAppLocationActivity *)self contentDescription];
  expirationDate = [(BMAppLocationActivity *)self expirationDate];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  itemIdentifier = [(BMAppLocationActivity *)self itemIdentifier];
  itemRelatedContentURL = [(BMAppLocationActivity *)self itemRelatedContentURL];
  itemRelatedUniqueIdentifier = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppLocationActivity shortcutAvailability](self, "shortcutAvailability")}];
  suggestedInvocationPhrase = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
  title = [(BMAppLocationActivity *)self title];
  userActivityRequiredString = [(BMAppLocationActivity *)self userActivityRequiredString];
  userActivityUUID = [(BMAppLocationActivity *)self userActivityUUID];
  sourceID = [(BMAppLocationActivity *)self sourceID];
  sourceBundleID = [(BMAppLocationActivity *)self sourceBundleID];
  sourceItemID = [(BMAppLocationActivity *)self sourceItemID];
  sourceGroupID = [(BMAppLocationActivity *)self sourceGroupID];
  calendarUserActivityDate = [(BMAppLocationActivity *)self calendarUserActivityDate];
  calendarUserActivityExternalID = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
  calendarUserActivityEndDate = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
  locationName = [(BMAppLocationActivity *)self locationName];
  v3 = MEMORY[0x1E696AD98];
  [(BMAppLocationActivity *)self latitude];
  v23 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMAppLocationActivity *)self longitude];
  v22 = [v4 numberWithDouble:?];
  city = [(BMAppLocationActivity *)self city];
  stateOrProvince = [(BMAppLocationActivity *)self stateOrProvince];
  country = [(BMAppLocationActivity *)self country];
  thoroughfare = [(BMAppLocationActivity *)self thoroughfare];
  fullyFormattedAddress = [(BMAppLocationActivity *)self fullyFormattedAddress];
  subThoroughfare = [(BMAppLocationActivity *)self subThoroughfare];
  postalCode = [(BMAppLocationActivity *)self postalCode];
  phoneNumbers = [(BMAppLocationActivity *)self phoneNumbers];
  displayName = [(BMAppLocationActivity *)self displayName];
  v10 = [(BMAppLocationActivity *)self URL];
  v21 = [v20 initWithFormat:@"BMAppLocationActivity with bundleID: %@, activityType: %@, beginningOfActivity: %@, contentDescription: %@, expirationDate: %@, isEligibleForPrediction: %@, isPubliclyIndexable: %@, itemIdentifier: %@, itemRelatedContentURL: %@, itemRelatedUniqueIdentifier: %@, shortcutAvailability: %@, suggestedInvocationPhrase: %@, title: %@, userActivityRequiredString: %@, userActivityUUID: %@, sourceID: %@, sourceBundleID: %@, sourceItemID: %@, sourceGroupID: %@, calendarUserActivityDate: %@, calendarUserActivityExternalID: %@, calendarUserActivityEndDate: %@, locationName: %@, latitude: %@, longitude: %@, city: %@, stateOrProvince: %@, country: %@, thoroughfare: %@, fullyFormattedAddress: %@, subThoroughfare: %@, postalCode: %@, phoneNumbers: %@, displayName: %@, URL: %@", bundleID, activityType, v40, contentDescription, expirationDate, v37, v36, itemIdentifier, itemRelatedContentURL, itemRelatedUniqueIdentifier, v33, suggestedInvocationPhrase, title, userActivityRequiredString, userActivityUUID, sourceID, sourceBundleID, sourceItemID, sourceGroupID, calendarUserActivityDate, calendarUserActivityExternalID, calendarUserActivityEndDate, locationName, v23, v22, city, stateOrProvince, country, thoroughfare, fullyFormattedAddress, subThoroughfare, postalCode, phoneNumbers, displayName, v10];

  return v21;
}

- (BMAppLocationActivity)initWithBundleID:(id)d activityType:(id)type beginningOfActivity:(id)activity contentDescription:(id)description expirationDate:(id)date isEligibleForPrediction:(id)prediction isPubliclyIndexable:(id)indexable itemIdentifier:(id)self0 itemRelatedContentURL:(id)self1 itemRelatedUniqueIdentifier:(id)self2 shortcutAvailability:(id)self3 suggestedInvocationPhrase:(id)self4 title:(id)self5 userActivityRequiredString:(id)self6 userActivityUUID:(id)self7 sourceID:(id)self8 sourceBundleID:(id)self9 sourceItemID:(id)itemID sourceGroupID:(id)groupID calendarUserActivityDate:(id)activityDate calendarUserActivityExternalID:(id)externalID calendarUserActivityEndDate:(id)endDate locationName:(id)name latitude:(id)latitude longitude:(id)longitude city:(id)city stateOrProvince:(id)province country:(id)d0 thoroughfare:(id)d1 fullyFormattedAddress:(id)d2 subThoroughfare:(id)d3 postalCode:(id)d4 phoneNumbers:(id)d5 displayName:(id)d6 URL:(id)d7
{
  dCopy = d;
  typeCopy = type;
  typeCopy2 = type;
  activityCopy = activity;
  descriptionCopy = description;
  descriptionCopy2 = description;
  dateCopy = date;
  predictionCopy = prediction;
  indexableCopy = indexable;
  identifierCopy = identifier;
  lCopy = l;
  uniqueIdentifierCopy = uniqueIdentifier;
  availabilityCopy = availability;
  phraseCopy = phrase;
  titleCopy = title;
  stringCopy = string;
  iDCopy = iD;
  sourceIDCopy = sourceID;
  bundleIDCopy = bundleID;
  itemIDCopy = itemID;
  groupIDCopy = groupID;
  activityDateCopy = activityDate;
  externalIDCopy = externalID;
  endDateCopy = endDate;
  nameCopy = name;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  cityCopy = city;
  provinceCopy = province;
  countryCopy = country;
  thoroughfareCopy = thoroughfare;
  addressCopy = address;
  subThoroughfareCopy = subThoroughfare;
  codeCopy = code;
  numbersCopy = numbers;
  displayNameCopy = displayName;
  rLCopy = rL;
  v93.receiver = self;
  v93.super_class = BMAppLocationActivity;
  v46 = [(BMEventBase *)&v93 init];
  if (v46)
  {
    v46->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v46->_bundleID, d);
    objc_storeStrong(&v46->_activityType, typeCopy);
    if (activityCopy)
    {
      v46->_hasBeginningOfActivity = 1;
      v46->_beginningOfActivity = [activityCopy BOOLValue];
    }

    else
    {
      v46->_hasBeginningOfActivity = 0;
      v46->_beginningOfActivity = 0;
    }

    objc_storeStrong(&v46->_contentDescription, descriptionCopy);
    if (dateCopy)
    {
      v46->_hasRaw_expirationDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v46->_hasRaw_expirationDate = 0;
      v47 = -1.0;
    }

    v46->_raw_expirationDate = v47;
    if (predictionCopy)
    {
      v46->_hasIsEligibleForPrediction = 1;
      v46->_isEligibleForPrediction = [predictionCopy BOOLValue];
    }

    else
    {
      v46->_hasIsEligibleForPrediction = 0;
      v46->_isEligibleForPrediction = 0;
    }

    if (indexableCopy)
    {
      v46->_hasIsPubliclyIndexable = 1;
      v46->_isPubliclyIndexable = [indexableCopy BOOLValue];
    }

    else
    {
      v46->_hasIsPubliclyIndexable = 0;
      v46->_isPubliclyIndexable = 0;
    }

    objc_storeStrong(&v46->_itemIdentifier, identifier);
    if (lCopy)
    {
      absoluteString = [lCopy absoluteString];
    }

    else
    {
      absoluteString = 0;
    }

    raw_itemRelatedContentURL = v46->_raw_itemRelatedContentURL;
    v46->_raw_itemRelatedContentURL = absoluteString;

    objc_storeStrong(&v46->_itemRelatedUniqueIdentifier, uniqueIdentifier);
    if (availabilityCopy)
    {
      v46->_hasShortcutAvailability = 1;
      intValue = [availabilityCopy intValue];
    }

    else
    {
      v46->_hasShortcutAvailability = 0;
      intValue = -1;
    }

    v46->_shortcutAvailability = intValue;
    objc_storeStrong(&v46->_suggestedInvocationPhrase, phrase);
    objc_storeStrong(&v46->_title, title);
    objc_storeStrong(&v46->_userActivityRequiredString, string);
    objc_storeStrong(&v46->_userActivityUUID, iD);
    objc_storeStrong(&v46->_sourceID, sourceID);
    objc_storeStrong(&v46->_sourceBundleID, bundleID);
    objc_storeStrong(&v46->_sourceItemID, itemID);
    objc_storeStrong(&v46->_sourceGroupID, groupID);
    if (activityDateCopy)
    {
      v46->_hasRaw_calendarUserActivityDate = 1;
      [activityDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v46->_hasRaw_calendarUserActivityDate = 0;
      v51 = -1.0;
    }

    v46->_raw_calendarUserActivityDate = v51;
    objc_storeStrong(&v46->_calendarUserActivityExternalID, externalID);
    if (endDateCopy)
    {
      v46->_hasRaw_calendarUserActivityEndDate = 1;
      [endDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v46->_hasRaw_calendarUserActivityEndDate = 0;
      v52 = -1.0;
    }

    v46->_raw_calendarUserActivityEndDate = v52;
    objc_storeStrong(&v46->_locationName, name);
    if (latitudeCopy)
    {
      v46->_hasLatitude = 1;
      [latitudeCopy doubleValue];
    }

    else
    {
      v46->_hasLatitude = 0;
      v53 = -1.0;
    }

    v46->_latitude = v53;
    if (longitudeCopy)
    {
      v46->_hasLongitude = 1;
      [longitudeCopy doubleValue];
    }

    else
    {
      v46->_hasLongitude = 0;
      v54 = -1.0;
    }

    v46->_longitude = v54;
    objc_storeStrong(&v46->_city, city);
    objc_storeStrong(&v46->_stateOrProvince, province);
    objc_storeStrong(&v46->_country, country);
    objc_storeStrong(&v46->_thoroughfare, thoroughfare);
    objc_storeStrong(&v46->_fullyFormattedAddress, address);
    objc_storeStrong(&v46->_subThoroughfare, subThoroughfare);
    objc_storeStrong(&v46->_postalCode, code);
    objc_storeStrong(&v46->_phoneNumbers, numbers);
    objc_storeStrong(&v46->_displayName, displayName);
    if (rLCopy)
    {
      absoluteString2 = [rLCopy absoluteString];
    }

    else
    {
      absoluteString2 = 0;
    }

    raw_URL = v46->_raw_URL;
    v46->_raw_URL = absoluteString2;
  }

  return v46;
}

+ (id)protoFields
{
  v40[35] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v40[0] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:2 type:13 subMessageClass:0];
  v40[1] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"beginningOfActivity" number:3 type:12 subMessageClass:0];
  v40[2] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentDescription" number:4 type:13 subMessageClass:0];
  v40[3] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expirationDate" number:5 type:0 subMessageClass:0];
  v40[4] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEligibleForPrediction" number:6 type:12 subMessageClass:0];
  v40[5] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPubliclyIndexable" number:7 type:12 subMessageClass:0];
  v40[6] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:8 type:13 subMessageClass:0];
  v40[7] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedContentURL" number:9 type:13 subMessageClass:0];
  v40[8] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedUniqueIdentifier" number:10 type:13 subMessageClass:0];
  v40[9] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortcutAvailability" number:11 type:2 subMessageClass:0];
  v40[10] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedInvocationPhrase" number:12 type:13 subMessageClass:0];
  v40[11] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:13 type:13 subMessageClass:0];
  v40[12] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityRequiredString" number:14 type:13 subMessageClass:0];
  v40[13] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityUUID" number:15 type:13 subMessageClass:0];
  v40[14] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:16 type:13 subMessageClass:0];
  v40[15] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:17 type:13 subMessageClass:0];
  v40[16] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceItemID" number:18 type:13 subMessageClass:0];
  v40[17] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceGroupID" number:19 type:13 subMessageClass:0];
  v40[18] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityDate" number:20 type:0 subMessageClass:0];
  v40[19] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityExternalID" number:21 type:13 subMessageClass:0];
  v40[20] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityEndDate" number:22 type:0 subMessageClass:0];
  v40[21] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationName" number:23 type:13 subMessageClass:0];
  v40[22] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latitude" number:24 type:0 subMessageClass:0];
  v40[23] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"longitude" number:25 type:0 subMessageClass:0];
  v40[24] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"city" number:26 type:13 subMessageClass:0];
  v40[25] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOrProvince" number:27 type:13 subMessageClass:0];
  v40[26] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"country" number:28 type:13 subMessageClass:0];
  v40[27] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"thoroughfare" number:29 type:13 subMessageClass:0];
  v40[28] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullyFormattedAddress" number:30 type:13 subMessageClass:0];
  v40[29] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subThoroughfare" number:31 type:13 subMessageClass:0];
  v40[30] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postalCode" number:32 type:13 subMessageClass:0];
  v40[31] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phoneNumbers" number:33 type:13 subMessageClass:0];
  v40[32] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:34 type:13 subMessageClass:0];
  v40[33] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"URL" number:35 type:13 subMessageClass:0];
  v40[34] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:35];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

id __32__BMAppLocationActivity_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _phoneNumbersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMAppLocationActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[23] = 0;
    }
  }

  return v4;
}

@end