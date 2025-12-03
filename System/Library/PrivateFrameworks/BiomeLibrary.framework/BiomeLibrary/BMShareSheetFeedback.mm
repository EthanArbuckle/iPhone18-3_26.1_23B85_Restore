@interface BMShareSheetFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMShareSheetFeedback)initWithDerivedIntentIdentifier:(id)identifier targetBundleID:(id)d extensionContextUUID:(id)iD attachments:(id)attachments locationUUIDs:(id)ds photoSuggestedContacts:(id)contacts modelSuggestionProxies:(id)proxies adaptedModelRecipeID:(id)self0 isAdaptedModelUsed:(id)self1 isAdaptedModelCreated:(id)self2 supportedBundleIDs:(id)self3 peopleSuggestionsDisabled:(id)self4 reasonType:(id)self5 reason:(id)self6 sourceBundleID:(id)self7 transportBundleID:(id)self8 numberOfVisibleSuggestions:(id)self9 trackingID:(id)trackingID iCloudFamilyInvocation:(id)invocation engagementType:(int)engagementType indexSelected:(id)selected;
- (BMShareSheetFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_locationUUIDsJSONArray;
- (id)_photoSuggestedContactsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMShareSheetFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    derivedIntentIdentifier = [(BMShareSheetFeedback *)self derivedIntentIdentifier];
    derivedIntentIdentifier2 = [v5 derivedIntentIdentifier];
    v8 = derivedIntentIdentifier2;
    if (derivedIntentIdentifier == derivedIntentIdentifier2)
    {
    }

    else
    {
      derivedIntentIdentifier3 = [(BMShareSheetFeedback *)self derivedIntentIdentifier];
      derivedIntentIdentifier4 = [v5 derivedIntentIdentifier];
      v11 = [derivedIntentIdentifier3 isEqual:derivedIntentIdentifier4];

      if (!v11)
      {
        goto LABEL_90;
      }
    }

    targetBundleID = [(BMShareSheetFeedback *)self targetBundleID];
    targetBundleID2 = [v5 targetBundleID];
    v15 = targetBundleID2;
    if (targetBundleID == targetBundleID2)
    {
    }

    else
    {
      targetBundleID3 = [(BMShareSheetFeedback *)self targetBundleID];
      targetBundleID4 = [v5 targetBundleID];
      v18 = [targetBundleID3 isEqual:targetBundleID4];

      if (!v18)
      {
        goto LABEL_90;
      }
    }

    extensionContextUUID = [(BMShareSheetFeedback *)self extensionContextUUID];
    extensionContextUUID2 = [v5 extensionContextUUID];
    v21 = extensionContextUUID2;
    if (extensionContextUUID == extensionContextUUID2)
    {
    }

    else
    {
      extensionContextUUID3 = [(BMShareSheetFeedback *)self extensionContextUUID];
      extensionContextUUID4 = [v5 extensionContextUUID];
      v24 = [extensionContextUUID3 isEqual:extensionContextUUID4];

      if (!v24)
      {
        goto LABEL_90;
      }
    }

    attachments = [(BMShareSheetFeedback *)self attachments];
    attachments2 = [v5 attachments];
    v27 = attachments2;
    if (attachments == attachments2)
    {
    }

    else
    {
      attachments3 = [(BMShareSheetFeedback *)self attachments];
      attachments4 = [v5 attachments];
      v30 = [attachments3 isEqual:attachments4];

      if (!v30)
      {
        goto LABEL_90;
      }
    }

    locationUUIDs = [(BMShareSheetFeedback *)self locationUUIDs];
    locationUUIDs2 = [v5 locationUUIDs];
    v33 = locationUUIDs2;
    if (locationUUIDs == locationUUIDs2)
    {
    }

    else
    {
      locationUUIDs3 = [(BMShareSheetFeedback *)self locationUUIDs];
      locationUUIDs4 = [v5 locationUUIDs];
      v36 = [locationUUIDs3 isEqual:locationUUIDs4];

      if (!v36)
      {
        goto LABEL_90;
      }
    }

    photoSuggestedContacts = [(BMShareSheetFeedback *)self photoSuggestedContacts];
    photoSuggestedContacts2 = [v5 photoSuggestedContacts];
    v39 = photoSuggestedContacts2;
    if (photoSuggestedContacts == photoSuggestedContacts2)
    {
    }

    else
    {
      photoSuggestedContacts3 = [(BMShareSheetFeedback *)self photoSuggestedContacts];
      photoSuggestedContacts4 = [v5 photoSuggestedContacts];
      v42 = [photoSuggestedContacts3 isEqual:photoSuggestedContacts4];

      if (!v42)
      {
        goto LABEL_90;
      }
    }

    modelSuggestionProxies = [(BMShareSheetFeedback *)self modelSuggestionProxies];
    modelSuggestionProxies2 = [v5 modelSuggestionProxies];
    v45 = modelSuggestionProxies2;
    if (modelSuggestionProxies == modelSuggestionProxies2)
    {
    }

    else
    {
      modelSuggestionProxies3 = [(BMShareSheetFeedback *)self modelSuggestionProxies];
      modelSuggestionProxies4 = [v5 modelSuggestionProxies];
      v48 = [modelSuggestionProxies3 isEqual:modelSuggestionProxies4];

      if (!v48)
      {
        goto LABEL_90;
      }
    }

    adaptedModelRecipeID = [(BMShareSheetFeedback *)self adaptedModelRecipeID];
    adaptedModelRecipeID2 = [v5 adaptedModelRecipeID];
    v51 = adaptedModelRecipeID2;
    if (adaptedModelRecipeID == adaptedModelRecipeID2)
    {
    }

    else
    {
      adaptedModelRecipeID3 = [(BMShareSheetFeedback *)self adaptedModelRecipeID];
      adaptedModelRecipeID4 = [v5 adaptedModelRecipeID];
      v54 = [adaptedModelRecipeID3 isEqual:adaptedModelRecipeID4];

      if (!v54)
      {
        goto LABEL_90;
      }
    }

    if (-[BMShareSheetFeedback hasIsAdaptedModelUsed](self, "hasIsAdaptedModelUsed") || [v5 hasIsAdaptedModelUsed])
    {
      if (![(BMShareSheetFeedback *)self hasIsAdaptedModelUsed])
      {
        goto LABEL_90;
      }

      if (![v5 hasIsAdaptedModelUsed])
      {
        goto LABEL_90;
      }

      isAdaptedModelUsed = [(BMShareSheetFeedback *)self isAdaptedModelUsed];
      if (isAdaptedModelUsed != [v5 isAdaptedModelUsed])
      {
        goto LABEL_90;
      }
    }

    if (-[BMShareSheetFeedback hasIsAdaptedModelCreated](self, "hasIsAdaptedModelCreated") || [v5 hasIsAdaptedModelCreated])
    {
      if (![(BMShareSheetFeedback *)self hasIsAdaptedModelCreated])
      {
        goto LABEL_90;
      }

      if (![v5 hasIsAdaptedModelCreated])
      {
        goto LABEL_90;
      }

      isAdaptedModelCreated = [(BMShareSheetFeedback *)self isAdaptedModelCreated];
      if (isAdaptedModelCreated != [v5 isAdaptedModelCreated])
      {
        goto LABEL_90;
      }
    }

    supportedBundleIDs = [(BMShareSheetFeedback *)self supportedBundleIDs];
    supportedBundleIDs2 = [v5 supportedBundleIDs];
    v59 = supportedBundleIDs2;
    if (supportedBundleIDs == supportedBundleIDs2)
    {
    }

    else
    {
      supportedBundleIDs3 = [(BMShareSheetFeedback *)self supportedBundleIDs];
      supportedBundleIDs4 = [v5 supportedBundleIDs];
      v62 = [supportedBundleIDs3 isEqual:supportedBundleIDs4];

      if (!v62)
      {
        goto LABEL_90;
      }
    }

    if (-[BMShareSheetFeedback hasPeopleSuggestionsDisabled](self, "hasPeopleSuggestionsDisabled") || [v5 hasPeopleSuggestionsDisabled])
    {
      if (![(BMShareSheetFeedback *)self hasPeopleSuggestionsDisabled])
      {
        goto LABEL_90;
      }

      if (![v5 hasPeopleSuggestionsDisabled])
      {
        goto LABEL_90;
      }

      peopleSuggestionsDisabled = [(BMShareSheetFeedback *)self peopleSuggestionsDisabled];
      if (peopleSuggestionsDisabled != [v5 peopleSuggestionsDisabled])
      {
        goto LABEL_90;
      }
    }

    reasonType = [(BMShareSheetFeedback *)self reasonType];
    reasonType2 = [v5 reasonType];
    v66 = reasonType2;
    if (reasonType == reasonType2)
    {
    }

    else
    {
      reasonType3 = [(BMShareSheetFeedback *)self reasonType];
      reasonType4 = [v5 reasonType];
      v69 = [reasonType3 isEqual:reasonType4];

      if (!v69)
      {
        goto LABEL_90;
      }
    }

    reason = [(BMShareSheetFeedback *)self reason];
    reason2 = [v5 reason];
    v72 = reason2;
    if (reason == reason2)
    {
    }

    else
    {
      reason3 = [(BMShareSheetFeedback *)self reason];
      reason4 = [v5 reason];
      v75 = [reason3 isEqual:reason4];

      if (!v75)
      {
        goto LABEL_90;
      }
    }

    sourceBundleID = [(BMShareSheetFeedback *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v78 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMShareSheetFeedback *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v81 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v81)
      {
        goto LABEL_90;
      }
    }

    transportBundleID = [(BMShareSheetFeedback *)self transportBundleID];
    transportBundleID2 = [v5 transportBundleID];
    v84 = transportBundleID2;
    if (transportBundleID == transportBundleID2)
    {
    }

    else
    {
      transportBundleID3 = [(BMShareSheetFeedback *)self transportBundleID];
      transportBundleID4 = [v5 transportBundleID];
      v87 = [transportBundleID3 isEqual:transportBundleID4];

      if (!v87)
      {
        goto LABEL_90;
      }
    }

    if (-[BMShareSheetFeedback hasNumberOfVisibleSuggestions](self, "hasNumberOfVisibleSuggestions") || [v5 hasNumberOfVisibleSuggestions])
    {
      if (![(BMShareSheetFeedback *)self hasNumberOfVisibleSuggestions])
      {
        goto LABEL_90;
      }

      if (![v5 hasNumberOfVisibleSuggestions])
      {
        goto LABEL_90;
      }

      [(BMShareSheetFeedback *)self numberOfVisibleSuggestions];
      v89 = v88;
      [v5 numberOfVisibleSuggestions];
      if (v89 != v90)
      {
        goto LABEL_90;
      }
    }

    trackingID = [(BMShareSheetFeedback *)self trackingID];
    trackingID2 = [v5 trackingID];
    v93 = trackingID2;
    if (trackingID == trackingID2)
    {
    }

    else
    {
      trackingID3 = [(BMShareSheetFeedback *)self trackingID];
      trackingID4 = [v5 trackingID];
      v96 = [trackingID3 isEqual:trackingID4];

      if (!v96)
      {
        goto LABEL_90;
      }
    }

    if (!-[BMShareSheetFeedback hasICloudFamilyInvocation](self, "hasICloudFamilyInvocation") && ![v5 hasICloudFamilyInvocation] || -[BMShareSheetFeedback hasICloudFamilyInvocation](self, "hasICloudFamilyInvocation") && objc_msgSend(v5, "hasICloudFamilyInvocation") && (v97 = -[BMShareSheetFeedback iCloudFamilyInvocation](self, "iCloudFamilyInvocation"), v97 == objc_msgSend(v5, "iCloudFamilyInvocation")))
    {
      engagementType = [(BMShareSheetFeedback *)self engagementType];
      if (engagementType == [v5 engagementType])
      {
        if (!-[BMShareSheetFeedback hasIndexSelected](self, "hasIndexSelected") && ![v5 hasIndexSelected])
        {
          v12 = 1;
          goto LABEL_91;
        }

        if (-[BMShareSheetFeedback hasIndexSelected](self, "hasIndexSelected") && [v5 hasIndexSelected])
        {
          indexSelected = [(BMShareSheetFeedback *)self indexSelected];
          v12 = indexSelected == [v5 indexSelected];
LABEL_91:

          goto LABEL_92;
        }
      }
    }

LABEL_90:
    v12 = 0;
    goto LABEL_91;
  }

  v12 = 0;
LABEL_92:

  return v12;
}

- (id)jsonDictionary
{
  v77[21] = *MEMORY[0x1E69E9840];
  derivedIntentIdentifier = [(BMShareSheetFeedback *)self derivedIntentIdentifier];
  targetBundleID = [(BMShareSheetFeedback *)self targetBundleID];
  extensionContextUUID = [(BMShareSheetFeedback *)self extensionContextUUID];
  attachments = [(BMShareSheetFeedback *)self attachments];
  v7 = [attachments base64EncodedStringWithOptions:0];

  _locationUUIDsJSONArray = [(BMShareSheetFeedback *)self _locationUUIDsJSONArray];
  _photoSuggestedContactsJSONArray = [(BMShareSheetFeedback *)self _photoSuggestedContactsJSONArray];
  modelSuggestionProxies = [(BMShareSheetFeedback *)self modelSuggestionProxies];
  v11 = [modelSuggestionProxies base64EncodedStringWithOptions:0];

  adaptedModelRecipeID = [(BMShareSheetFeedback *)self adaptedModelRecipeID];
  v75 = 0;
  if ([(BMShareSheetFeedback *)self hasIsAdaptedModelUsed])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareSheetFeedback isAdaptedModelUsed](self, "isAdaptedModelUsed")}];
  }

  if ([(BMShareSheetFeedback *)self hasIsAdaptedModelCreated])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareSheetFeedback isAdaptedModelCreated](self, "isAdaptedModelCreated")}];
  }

  else
  {
    v73 = 0;
  }

  supportedBundleIDs = [(BMShareSheetFeedback *)self supportedBundleIDs];
  if ([(BMShareSheetFeedback *)self hasPeopleSuggestionsDisabled])
  {
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareSheetFeedback peopleSuggestionsDisabled](self, "peopleSuggestionsDisabled")}];
  }

  else
  {
    v71 = 0;
  }

  reasonType = [(BMShareSheetFeedback *)self reasonType];
  reason = [(BMShareSheetFeedback *)self reason];
  sourceBundleID = [(BMShareSheetFeedback *)self sourceBundleID];
  transportBundleID = [(BMShareSheetFeedback *)self transportBundleID];
  if (![(BMShareSheetFeedback *)self hasNumberOfVisibleSuggestions]|| ([(BMShareSheetFeedback *)self numberOfVisibleSuggestions], fabs(v12) == INFINITY))
  {
    v66 = 0;
  }

  else
  {
    [(BMShareSheetFeedback *)self numberOfVisibleSuggestions];
    v13 = MEMORY[0x1E696AD98];
    [(BMShareSheetFeedback *)self numberOfVisibleSuggestions];
    v66 = [v13 numberWithDouble:?];
  }

  trackingID = [(BMShareSheetFeedback *)self trackingID];
  if ([(BMShareSheetFeedback *)self hasICloudFamilyInvocation])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareSheetFeedback iCloudFamilyInvocation](self, "iCloudFamilyInvocation")}];
  }

  else
  {
    v64 = 0;
  }

  v63 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareSheetFeedback engagementType](self, "engagementType")}];
  if ([(BMShareSheetFeedback *)self hasIndexSelected])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareSheetFeedback indexSelected](self, "indexSelected")}];
  }

  else
  {
    v14 = 0;
  }

  v76[0] = @"derivedIntentIdentifier";
  null = derivedIntentIdentifier;
  if (!derivedIntentIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null;
  v77[0] = null;
  v76[1] = @"targetBundleID";
  null2 = targetBundleID;
  if (!targetBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null2;
  v77[1] = null2;
  v76[2] = @"extensionContextUUID";
  null3 = extensionContextUUID;
  if (!extensionContextUUID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null3;
  v77[2] = null3;
  v76[3] = @"attachments";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null4;
  v77[3] = null4;
  v76[4] = @"locationUUIDs";
  null5 = _locationUUIDsJSONArray;
  if (!_locationUUIDsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null5;
  v77[4] = null5;
  v76[5] = @"photoSuggestedContacts";
  null6 = _photoSuggestedContactsJSONArray;
  if (!_photoSuggestedContactsJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null6;
  v77[5] = null6;
  v76[6] = @"modelSuggestionProxies";
  null7 = v11;
  if (!v11)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null7;
  v77[6] = null7;
  v76[7] = @"adaptedModelRecipeID";
  null8 = adaptedModelRecipeID;
  if (!adaptedModelRecipeID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v77[7] = null8;
  v76[8] = @"isAdaptedModelUsed";
  null9 = v75;
  if (!v75)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v77[8] = null9;
  v76[9] = @"isAdaptedModelCreated";
  null10 = v73;
  if (!v73)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null10;
  v77[9] = null10;
  v76[10] = @"supportedBundleIDs";
  null11 = supportedBundleIDs;
  if (!supportedBundleIDs)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = targetBundleID;
  v77[10] = null11;
  v76[11] = @"peopleSuggestionsDisabled";
  null12 = v71;
  v27 = null11;
  if (!v71)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v7;
  v77[11] = null12;
  v76[12] = @"reasonType";
  null13 = reasonType;
  v29 = null12;
  if (!reasonType)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = _photoSuggestedContactsJSONArray;
  v56 = null13;
  v77[12] = null13;
  v76[13] = @"reason";
  null14 = reason;
  if (!reason)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = _locationUUIDsJSONArray;
  v42 = null14;
  v77[13] = null14;
  v76[14] = @"sourceBundleID";
  null15 = sourceBundleID;
  if (!sourceBundleID)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null9;
  v61 = derivedIntentIdentifier;
  v77[14] = null15;
  v76[15] = @"transportBundleID";
  null16 = transportBundleID;
  if (!transportBundleID)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = extensionContextUUID;
  v77[15] = null16;
  v76[16] = @"numberOfVisibleSuggestions";
  null17 = v66;
  if (!v66)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v27;
  v47 = null8;
  v77[16] = null17;
  v76[17] = @"trackingID";
  null18 = trackingID;
  if (!trackingID)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v11;
  v77[17] = null18;
  v76[18] = @"iCloudFamilyInvocation";
  null19 = v64;
  if (!v64)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v29;
  v77[18] = null19;
  v76[19] = @"engagementType";
  null20 = v63;
  if (!v63)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v77[19] = null20;
  v76[20] = @"indexSelected";
  null21 = v14;
  if (!v14)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v77[20] = null21;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:{21, v42}];
  if (!v14)
  {
  }

  if (!v63)
  {
  }

  if (!v64)
  {
  }

  if (!trackingID)
  {
  }

  if (!v66)
  {
  }

  if (!transportBundleID)
  {
  }

  if (!sourceBundleID)
  {
  }

  if (!reason)
  {
  }

  if (!reasonType)
  {
  }

  if (!v71)
  {
  }

  if (!supportedBundleIDs)
  {
  }

  if (!v73)
  {
  }

  if (!v75)
  {
  }

  if (adaptedModelRecipeID)
  {
    if (v36)
    {
      goto LABEL_89;
    }
  }

  else
  {

    if (v36)
    {
LABEL_89:
      if (v58)
      {
        goto LABEL_90;
      }

      goto LABEL_100;
    }
  }

  if (v58)
  {
LABEL_90:
    if (v59)
    {
      goto LABEL_91;
    }

    goto LABEL_101;
  }

LABEL_100:

  if (v59)
  {
LABEL_91:
    if (v60)
    {
      goto LABEL_92;
    }

    goto LABEL_102;
  }

LABEL_101:

  if (v60)
  {
LABEL_92:
    if (v33)
    {
      goto LABEL_93;
    }

    goto LABEL_103;
  }

LABEL_102:

  if (v33)
  {
LABEL_93:
    if (v62)
    {
      goto LABEL_94;
    }

LABEL_104:

    if (v61)
    {
      goto LABEL_95;
    }

    goto LABEL_105;
  }

LABEL_103:

  if (!v62)
  {
    goto LABEL_104;
  }

LABEL_94:
  if (v61)
  {
    goto LABEL_95;
  }

LABEL_105:

LABEL_95:
  v40 = *MEMORY[0x1E69E9840];

  return v55;
}

- (id)_photoSuggestedContactsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  photoSuggestedContacts = [(BMShareSheetFeedback *)self photoSuggestedContacts];
  v5 = [photoSuggestedContacts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(photoSuggestedContacts);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [photoSuggestedContacts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_locationUUIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  locationUUIDs = [(BMShareSheetFeedback *)self locationUUIDs];
  v5 = [locationUUIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(locationUUIDs);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [locationUUIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMShareSheetFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v365[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v299 = [dictionaryCopy objectForKeyedSubscript:@"derivedIntentIdentifier"];
  if (v299 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v364 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"derivedIntentIdentifier"];
        v365[0] = v17;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v365 forKeys:&v364 count:1];
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v8];
        v7 = 0;
        selfCopy5 = 0;
        *error = v31;
        goto LABEL_229;
      }

      v7 = 0;
      selfCopy5 = 0;
      goto LABEL_230;
    }

    v7 = v299;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"targetBundleID"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v7;
        errorCopy = error;
        v46 = *MEMORY[0x1E698F240];
        v362 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"targetBundleID"];
        v363 = v42;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
        v48 = v46;
        v10 = v47;
        v49 = [v43 initWithDomain:v48 code:2 userInfo:v47];
        v17 = 0;
        selfCopy5 = 0;
        *errorCopy = v49;
        v7 = v44;
        goto LABEL_228;
      }

      v17 = 0;
      selfCopy5 = 0;
      goto LABEL_229;
    }

    errorCopy3 = error;
    v9 = v8;
  }

  else
  {
    errorCopy3 = error;
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"extensionContextUUID"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy3)
      {
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy = self;
        v52 = v10;
        v53 = *MEMORY[0x1E698F240];
        v360 = *MEMORY[0x1E696A578];
        v54 = v8;
        v55 = objc_alloc(MEMORY[0x1E696AEC0]);
        v240 = objc_opt_class();
        v56 = v55;
        v8 = v54;
        v57 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v240, @"extensionContextUUID"];
        v361 = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
        v59 = v53;
        v10 = v52;
        self = selfCopy;
        v17 = v9;
        v296 = v58;
        v60 = [v50 initWithDomain:v59 code:2 userInfo:?];
        v42 = 0;
        selfCopy5 = 0;
        *errorCopy3 = v60;
        goto LABEL_227;
      }

      v42 = 0;
      selfCopy5 = 0;
      v17 = v9;
      goto LABEL_228;
    }

    v295 = v10;
  }

  else
  {
    v295 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"attachments"];
  v294 = v10;
  v296 = v11;
  if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v292 = 0;
    goto LABEL_13;
  }

  selfCopy2 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v292 = v12;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy3)
    {
      v83 = objc_alloc(MEMORY[0x1E696ABC0]);
      v84 = v8;
      v85 = *MEMORY[0x1E698F240];
      v356 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"attachments"];
      v357 = obj;
      v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
      v87 = v85;
      v8 = v84;
      v301 = v86;
      v88 = [v83 initWithDomain:v87 code:2 userInfo:?];
      selfCopy5 = 0;
      *errorCopy3 = v88;
      self = selfCopy2;
      v57 = 0;
      goto LABEL_74;
    }

    selfCopy5 = 0;
    v57 = 0;
LABEL_151:
    v42 = v295;
    v17 = v9;
    goto LABEL_227;
  }

  v292 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
  if (!v292)
  {
    if (errorCopy3)
    {
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = v8;
      v63 = *MEMORY[0x1E698F240];
      v358 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"attachments"];
      v359 = obj;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
      v65 = v63;
      v8 = v62;
      self = selfCopy2;
      v301 = v64;
      v66 = [v61 initWithDomain:v65 code:2 userInfo:?];
      v57 = 0;
      selfCopy5 = 0;
      *errorCopy3 = v66;
LABEL_74:
      v42 = v295;
      v17 = v9;
      goto LABEL_225;
    }

    v57 = 0;
    selfCopy5 = 0;
    goto LABEL_151;
  }

LABEL_13:
  v13 = [dictionaryCopy objectForKeyedSubscript:@"locationUUIDs"];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:null];

  if (v15)
  {
    v289 = v7;
    selfCopy4 = self;
    v16 = dictionaryCopy;

    v13 = 0;
    v17 = v9;
  }

  else
  {
    v17 = v9;
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v76 = dictionaryCopy;
        v77 = v17;
        obj = v13;
        if (!errorCopy3)
        {
          selfCopy5 = 0;
          v10 = v294;
          v42 = v295;
          v57 = v292;
          dictionaryCopy = v76;
          goto LABEL_226;
        }

        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
        v79 = v8;
        v80 = *MEMORY[0x1E698F240];
        v354 = *MEMORY[0x1E696A578];
        v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"locationUUIDs"];
        v355 = v301;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
        v81 = v80;
        v8 = v79;
        v82 = [v78 initWithDomain:v81 code:2 userInfo:v25];
        selfCopy5 = 0;
        *errorCopy3 = v82;
LABEL_69:
        v42 = v295;
        v57 = v292;
        v17 = v77;
        dictionaryCopy = v76;
        goto LABEL_224;
      }
    }

    v289 = v7;
    selfCopy4 = self;
    v16 = dictionaryCopy;
  }

  v301 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v306 objects:v353 count:16];
  v293 = v17;
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = v18;
  v20 = *v307;
  do
  {
    v21 = v8;
    for (i = 0; i != v19; ++i)
    {
      if (*v307 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v306 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = errorCopy3;
        if (errorCopy3)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v351 = *MEMORY[0x1E696A578];
          v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"locationUUIDs"];
          v352 = v298;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
          v37 = v34;
          v38 = v35;
LABEL_43:
          v41 = v36;
          v42 = v295;
          selfCopy5 = 0;
          *v33 = [v37 initWithDomain:v38 code:2 userInfo:?];
          v25 = obj;
          dictionaryCopy = v16;
          self = selfCopy4;
          v8 = v21;
          v17 = v293;
          v7 = v289;
          goto LABEL_222;
        }

LABEL_48:
        selfCopy5 = 0;
        v25 = obj;
        dictionaryCopy = v16;
        v7 = v289;
        self = selfCopy4;
        v8 = v21;
        v17 = v293;
        v42 = v295;
        goto LABEL_223;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = errorCopy3;
        if (errorCopy3)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v349 = *MEMORY[0x1E696A578];
          v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locationUUIDs"];
          v350 = v298;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
          v37 = v39;
          v38 = v40;
          goto LABEL_43;
        }

        goto LABEL_48;
      }

      v24 = v23;
      [v301 addObject:v24];
    }

    v19 = [obj countByEnumeratingWithState:&v306 objects:v353 count:16];
    v8 = v21;
    v17 = v293;
  }

  while (v19);
LABEL_29:

  v25 = [v16 objectForKeyedSubscript:@"photoSuggestedContacts"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:null2];

  if (v27)
  {

    v25 = 0;
    goto LABEL_55;
  }

  self = selfCopy4;
  if (v25)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v76 = v16;
      v77 = v17;
      if (errorCopy3)
      {
        v95 = objc_alloc(MEMORY[0x1E696ABC0]);
        v96 = *MEMORY[0x1E698F240];
        v347 = *MEMORY[0x1E696A578];
        v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoSuggestedContacts"];
        v348 = v298;
        v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
        v98 = v95;
        self = selfCopy4;
        v41 = v97;
        v99 = [v98 initWithDomain:v96 code:2 userInfo:v97];
        selfCopy5 = 0;
        *errorCopy3 = v99;
        v7 = v289;
        v42 = v295;
        dictionaryCopy = v76;
        goto LABEL_222;
      }

      selfCopy5 = 0;
      v7 = v289;
      goto LABEL_69;
    }
  }

LABEL_55:
  v298 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v302 = 0u;
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v25 = v25;
  v67 = [v25 countByEnumeratingWithState:&v302 objects:v346 count:16];
  if (!v67)
  {
    goto LABEL_64;
  }

  v68 = v67;
  v69 = *v303;
  while (2)
  {
    v70 = v8;
    v71 = 0;
    while (2)
    {
      if (*v303 != v69)
      {
        objc_enumerationMutation(v25);
      }

      v72 = *(*(&v302 + 1) + 8 * v71);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy3)
        {
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = *MEMORY[0x1E698F240];
          v344 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"photoSuggestedContacts"];
          v345 = v75;
          v91 = MEMORY[0x1E695DF20];
          v92 = &v345;
          v93 = &v344;
LABEL_79:
          v287 = [v91 dictionaryWithObjects:v92 forKeys:v93 count:1];
          dictionaryCopy = v16;
          v7 = v289;
          v8 = v70;
          v17 = v293;
          v42 = v295;
          v94 = [v89 initWithDomain:v90 code:2 userInfo:?];
          selfCopy5 = 0;
          *errorCopy3 = v94;
          v41 = v25;
          self = selfCopy4;

          goto LABEL_221;
        }

LABEL_81:
        selfCopy5 = 0;
        v41 = v25;
        dictionaryCopy = v16;
        v7 = v289;
        self = selfCopy4;
        v8 = v70;
        v17 = v293;
        v42 = v295;
        goto LABEL_222;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = *MEMORY[0x1E698F240];
          v342 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSData", objc_opt_class(), @"photoSuggestedContacts"];
          v343 = v75;
          v91 = MEMORY[0x1E695DF20];
          v92 = &v343;
          v93 = &v342;
          goto LABEL_79;
        }

        goto LABEL_81;
      }

      v73 = v72;
      [v298 addObject:v73];

      if (v68 != ++v71)
      {
        continue;
      }

      break;
    }

    v68 = [v25 countByEnumeratingWithState:&v302 objects:v346 count:16];
    v8 = v70;
    v17 = v293;
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_64:

  dictionaryCopy = v16;
  v74 = [v16 objectForKeyedSubscript:@"modelSuggestionProxies"];
  v285 = v74;
  if (!v74)
  {
    v286 = 0;
    v7 = v289;
    goto LABEL_88;
  }

  v75 = v74;
  objc_opt_class();
  v7 = v289;
  if (objc_opt_isKindOfClass())
  {
    v286 = 0;
    goto LABEL_88;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v286 = v75;
LABEL_88:
    self = selfCopy4;
LABEL_89:
    v100 = [dictionaryCopy objectForKeyedSubscript:@"adaptedModelRecipeID"];
    v282 = v100;
    if (v100)
    {
      v101 = v100;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v288 = v101;
          goto LABEL_92;
        }

        if (errorCopy3)
        {
          v130 = objc_alloc(MEMORY[0x1E696ABC0]);
          v131 = *MEMORY[0x1E698F240];
          v336 = *MEMORY[0x1E696A578];
          v132 = v8;
          v133 = objc_alloc(MEMORY[0x1E696AEC0]);
          v241 = objc_opt_class();
          v134 = v133;
          v8 = v132;
          v290 = [v134 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v241, @"adaptedModelRecipeID"];
          v337 = v290;
          v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
          v136 = v130;
          self = selfCopy4;
          v281 = v135;
          v288 = 0;
          selfCopy5 = 0;
          *errorCopy3 = [v136 initWithDomain:v131 code:2 userInfo:?];
          v42 = v295;
          v75 = v285;
          v41 = v286;
          goto LABEL_218;
        }

        v288 = 0;
        selfCopy5 = 0;
        v42 = v295;
        v75 = v285;
        v41 = v286;
        goto LABEL_219;
      }
    }

    v288 = 0;
LABEL_92:
    v41 = v286;
    v102 = [dictionaryCopy objectForKeyedSubscript:@"isAdaptedModelUsed"];
    v281 = v102;
    if (v102 && (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v290 = v103;
        goto LABEL_95;
      }

      if (!errorCopy3)
      {
        v290 = 0;
        selfCopy5 = 0;
        v42 = v295;
        v17 = v293;
        v75 = v285;
        goto LABEL_218;
      }

      v137 = objc_alloc(MEMORY[0x1E696ABC0]);
      v138 = *MEMORY[0x1E698F240];
      v334 = *MEMORY[0x1E696A578];
      v139 = v8;
      v140 = objc_alloc(MEMORY[0x1E696AEC0]);
      v242 = objc_opt_class();
      v141 = v140;
      v8 = v139;
      v41 = v286;
      v280 = [v141 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v242, @"isAdaptedModelUsed"];
      v335 = v280;
      v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
      v143 = v137;
      self = selfCopy4;
      v279 = v142;
      v290 = 0;
      selfCopy5 = 0;
      *errorCopy3 = [v143 initWithDomain:v138 code:2 userInfo:?];
    }

    else
    {
      v290 = 0;
LABEL_95:
      v104 = [dictionaryCopy objectForKeyedSubscript:@"isAdaptedModelCreated"];
      v279 = v104;
      if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v280 = 0;
LABEL_98:
        v106 = [dictionaryCopy objectForKeyedSubscript:@"supportedBundleIDs"];
        v277 = v106;
        if (v106)
        {
          v107 = v106;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v278 = v107;
              v41 = v286;
              goto LABEL_101;
            }

            if (errorCopy3)
            {
              v151 = objc_alloc(MEMORY[0x1E696ABC0]);
              v152 = *MEMORY[0x1E698F240];
              v330 = *MEMORY[0x1E696A578];
              v153 = v8;
              v154 = objc_alloc(MEMORY[0x1E696AEC0]);
              v244 = objc_opt_class();
              v155 = v154;
              v8 = v153;
              v276 = [v155 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v244, @"supportedBundleIDs"];
              v331 = v276;
              v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
              v157 = v151;
              self = selfCopy4;
              v275 = v156;
              v278 = 0;
              selfCopy5 = 0;
              *errorCopy3 = [v157 initWithDomain:v152 code:2 userInfo:?];
              v42 = v295;
              v75 = v285;
              v41 = v286;
              goto LABEL_215;
            }

            v278 = 0;
            selfCopy5 = 0;
            v42 = v295;
            v75 = v285;
            v41 = v286;
            goto LABEL_216;
          }
        }

        v278 = 0;
LABEL_101:
        v108 = [dictionaryCopy objectForKeyedSubscript:@"peopleSuggestionsDisabled"];
        v275 = v108;
        if (v108)
        {
          v109 = v108;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v276 = v109;
              goto LABEL_104;
            }

            if (errorCopy3)
            {
              v163 = objc_alloc(MEMORY[0x1E696ABC0]);
              v164 = *MEMORY[0x1E698F240];
              v328 = *MEMORY[0x1E696A578];
              v165 = v8;
              v166 = objc_alloc(MEMORY[0x1E696AEC0]);
              v246 = objc_opt_class();
              v167 = v166;
              v8 = v165;
              v41 = v286;
              v274 = [v167 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v246, @"peopleSuggestionsDisabled"];
              v329 = v274;
              v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
              v169 = v163;
              self = selfCopy4;
              v273 = v168;
              v276 = 0;
              selfCopy5 = 0;
              *errorCopy3 = [v169 initWithDomain:v164 code:2 userInfo:?];
              v42 = v295;
              v17 = v293;
              v75 = v285;
              goto LABEL_214;
            }

            v276 = 0;
            selfCopy5 = 0;
            v42 = v295;
            v17 = v293;
            v75 = v285;
            goto LABEL_215;
          }
        }

        v276 = 0;
LABEL_104:
        v110 = [dictionaryCopy objectForKeyedSubscript:@"reasonType"];
        v273 = v110;
        if (v110 && (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v274 = v111;
            v41 = v286;
            goto LABEL_107;
          }

          v170 = v17;
          if (!errorCopy3)
          {
            v274 = 0;
            selfCopy5 = 0;
            v42 = v295;
            v75 = v285;
            v41 = v286;
            goto LABEL_214;
          }

          v171 = objc_alloc(MEMORY[0x1E696ABC0]);
          v172 = *MEMORY[0x1E698F240];
          v326 = *MEMORY[0x1E696A578];
          v173 = v8;
          v174 = objc_alloc(MEMORY[0x1E696AEC0]);
          v247 = objc_opt_class();
          v175 = v174;
          v8 = v173;
          v272 = [v175 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v247, @"reasonType"];
          v327 = v272;
          v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
          v177 = v171;
          self = selfCopy4;
          v271 = v176;
          v274 = 0;
          selfCopy5 = 0;
          *errorCopy3 = [v177 initWithDomain:v172 code:2 userInfo:?];
        }

        else
        {
          v274 = 0;
LABEL_107:
          v112 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
          v271 = v112;
          if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v272 = 0;
LABEL_110:
            v114 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
            v75 = v285;
            v269 = v114;
            if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v270 = 0;
LABEL_113:
              v116 = [dictionaryCopy objectForKeyedSubscript:@"transportBundleID"];
              v267 = v116;
              if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v268 = 0;
LABEL_116:
                v118 = [dictionaryCopy objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
                v264 = v118;
                if (v118 && (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v266 = v119;
                    goto LABEL_119;
                  }

                  if (errorCopy3)
                  {
                    v199 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v200 = *MEMORY[0x1E698F240];
                    v318 = *MEMORY[0x1E696A578];
                    v201 = v8;
                    v202 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v251 = objc_opt_class();
                    v203 = v202;
                    v8 = v201;
                    v41 = v286;
                    v265 = [v203 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v251, @"numberOfVisibleSuggestions"];
                    v319 = v265;
                    v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
                    v205 = v199;
                    self = selfCopy4;
                    v262 = v204;
                    v266 = 0;
                    selfCopy5 = 0;
                    *errorCopy3 = [v205 initWithDomain:v200 code:2 userInfo:?];
                    v42 = v295;
                    v75 = v285;
                    goto LABEL_209;
                  }

                  v266 = 0;
                  selfCopy5 = 0;
                  v42 = v295;
                  v75 = v285;
                }

                else
                {
                  v266 = 0;
LABEL_119:
                  v120 = [dictionaryCopy objectForKeyedSubscript:@"trackingID"];
                  v262 = v120;
                  if (v120 && (v121 = v120, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v265 = v121;
                      v41 = v286;
                      goto LABEL_122;
                    }

                    if (errorCopy3)
                    {
                      v206 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v207 = *MEMORY[0x1E698F240];
                      v316 = *MEMORY[0x1E696A578];
                      v208 = v8;
                      v209 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v252 = objc_opt_class();
                      v210 = v209;
                      v8 = v208;
                      v263 = [v210 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v252, @"trackingID"];
                      v317 = v263;
                      v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
                      v212 = v206;
                      self = selfCopy4;
                      v260 = v211;
                      v265 = 0;
                      selfCopy5 = 0;
                      *errorCopy3 = [v212 initWithDomain:v207 code:2 userInfo:?];
                      v42 = v295;
                      v75 = v285;
                      v41 = v286;
                      goto LABEL_208;
                    }

                    v265 = 0;
                    selfCopy5 = 0;
                    v42 = v295;
                    v75 = v285;
                    v41 = v286;
                  }

                  else
                  {
                    v265 = 0;
LABEL_122:
                    v122 = [dictionaryCopy objectForKeyedSubscript:@"iCloudFamilyInvocation"];
                    v260 = v122;
                    if (v122 && (v123 = v122, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v263 = v123;
                        goto LABEL_125;
                      }

                      if (errorCopy3)
                      {
                        v213 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v214 = *MEMORY[0x1E698F240];
                        v314 = *MEMORY[0x1E696A578];
                        v215 = v8;
                        v216 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v253 = objc_opt_class();
                        v217 = v216;
                        v8 = v215;
                        v41 = v286;
                        v261 = [v217 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v253, @"iCloudFamilyInvocation"];
                        v315 = v261;
                        v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
                        v219 = v213;
                        self = selfCopy4;
                        v259 = v218;
                        v263 = 0;
                        selfCopy5 = 0;
                        *errorCopy3 = [v219 initWithDomain:v214 code:2 userInfo:?];
                        v42 = v295;
                        v75 = v285;
                        goto LABEL_207;
                      }

                      v263 = 0;
                      selfCopy5 = 0;
                      v42 = v295;
                      v75 = v285;
                    }

                    else
                    {
                      v263 = 0;
LABEL_125:
                      v124 = [dictionaryCopy objectForKeyedSubscript:@"engagementType"];
                      v259 = v124;
                      if (!v124 || (v125 = v124, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v261 = 0;
                        goto LABEL_201;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v261 = v125;
LABEL_200:
                        v41 = v286;

LABEL_201:
                        v224 = [dictionaryCopy objectForKeyedSubscript:@"indexSelected"];
                        v258 = v224;
                        if (!v224)
                        {
LABEL_204:
                          v42 = v295;
                          goto LABEL_205;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v224 = 0;
                          goto LABEL_204;
                        }

                        objc_opt_class();
                        v42 = v295;
                        if (objc_opt_isKindOfClass())
                        {
                          v224 = v224;
LABEL_205:
                          v257 = v224;
                          LODWORD(v255) = [v261 intValue];
                          self = [(BMShareSheetFeedback *)self initWithDerivedIntentIdentifier:v7 targetBundleID:v17 extensionContextUUID:v42 attachments:v292 locationUUIDs:v301 photoSuggestedContacts:v298 modelSuggestionProxies:v41 adaptedModelRecipeID:v288 isAdaptedModelUsed:v290 isAdaptedModelCreated:v280 supportedBundleIDs:v278 peopleSuggestionsDisabled:v276 reasonType:v274 reason:v272 sourceBundleID:v270 transportBundleID:v268 numberOfVisibleSuggestions:v266 trackingID:v265 iCloudFamilyInvocation:v263 engagementType:v255 indexSelected:v224];
                          selfCopy5 = self;
                        }

                        else
                        {
                          if (errorCopy3)
                          {
                            v227 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v228 = *MEMORY[0x1E698F240];
                            v310 = *MEMORY[0x1E696A578];
                            v256 = v8;
                            v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"indexSelected"];
                            v311 = v229;
                            v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
                            v231 = v227;
                            self = selfCopy4;
                            v232 = v228;
                            v42 = v295;
                            *errorCopy3 = [v231 initWithDomain:v232 code:2 userInfo:v230];

                            v8 = v256;
                          }

                          v257 = 0;
                          selfCopy5 = 0;
                          v41 = v286;
                        }

LABEL_206:
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v220 = v125;
                          v221 = MEMORY[0x1E696AD98];
                          v222 = BMShareSheetFeedbackEngagementTypeFromString(v220);
                          v223 = v221;
                          self = selfCopy4;
                          v261 = [v223 numberWithInt:v222];

                          v17 = v293;
                          v75 = v285;
                          goto LABEL_200;
                        }

                        if (errorCopy3)
                        {
                          v233 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v234 = *MEMORY[0x1E698F240];
                          v312 = *MEMORY[0x1E696A578];
                          v235 = v8;
                          v236 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v254 = objc_opt_class();
                          v237 = v236;
                          v8 = v235;
                          v257 = [v237 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v254, @"engagementType"];
                          v313 = v257;
                          v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
                          v239 = v233;
                          self = selfCopy4;
                          v258 = v238;
                          v261 = 0;
                          selfCopy5 = 0;
                          *errorCopy3 = [v239 initWithDomain:v234 code:2 userInfo:?];
                          v17 = v293;
                          v42 = v295;
                          v75 = v285;
                          v41 = v286;
                          goto LABEL_206;
                        }

                        v261 = 0;
                        selfCopy5 = 0;
                        v17 = v293;
                        v42 = v295;
                        v75 = v285;
                        v41 = v286;
                      }

LABEL_207:
                    }

LABEL_208:
                  }

LABEL_209:
                }

LABEL_210:

LABEL_211:
LABEL_212:

LABEL_213:
LABEL_214:

LABEL_215:
LABEL_216:

LABEL_217:
LABEL_218:

LABEL_219:
LABEL_220:

                goto LABEL_221;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v268 = v117;
                v41 = v286;
                goto LABEL_116;
              }

              v170 = v17;
              if (errorCopy3)
              {
                v192 = objc_alloc(MEMORY[0x1E696ABC0]);
                v193 = *MEMORY[0x1E698F240];
                v320 = *MEMORY[0x1E696A578];
                v194 = v8;
                v195 = objc_alloc(MEMORY[0x1E696AEC0]);
                v250 = objc_opt_class();
                v196 = v195;
                v8 = v194;
                v266 = [v196 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v250, @"transportBundleID"];
                v321 = v266;
                v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
                v198 = v192;
                self = selfCopy4;
                v264 = v197;
                v268 = 0;
                selfCopy5 = 0;
                *errorCopy3 = [v198 initWithDomain:v193 code:2 userInfo:?];
                v42 = v295;
                v75 = v285;
                v41 = v286;
                goto LABEL_210;
              }

              v268 = 0;
              selfCopy5 = 0;
LABEL_239:
              v42 = v295;
              v17 = v170;
              v75 = v285;
              v41 = v286;
              goto LABEL_211;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v270 = v115;
              v41 = v286;
              goto LABEL_113;
            }

            v170 = v17;
            if (errorCopy3)
            {
              v185 = objc_alloc(MEMORY[0x1E696ABC0]);
              v186 = *MEMORY[0x1E698F240];
              v322 = *MEMORY[0x1E696A578];
              v187 = v8;
              v188 = objc_alloc(MEMORY[0x1E696AEC0]);
              v249 = objc_opt_class();
              v189 = v188;
              v8 = v187;
              v268 = [v189 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v249, @"sourceBundleID"];
              v323 = v268;
              v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
              v191 = v185;
              self = selfCopy4;
              v267 = v190;
              v270 = 0;
              selfCopy5 = 0;
              *errorCopy3 = [v191 initWithDomain:v186 code:2 userInfo:?];
              goto LABEL_239;
            }

            v270 = 0;
            selfCopy5 = 0;
LABEL_237:
            v42 = v295;
            v17 = v170;
            v75 = v285;
            v41 = v286;
            goto LABEL_212;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v272 = v113;
            v41 = v286;
            goto LABEL_110;
          }

          v170 = v17;
          if (errorCopy3)
          {
            v178 = objc_alloc(MEMORY[0x1E696ABC0]);
            v179 = *MEMORY[0x1E698F240];
            v324 = *MEMORY[0x1E696A578];
            v180 = v8;
            v181 = objc_alloc(MEMORY[0x1E696AEC0]);
            v248 = objc_opt_class();
            v182 = v181;
            v8 = v180;
            v270 = [v182 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v248, @"reason"];
            v325 = v270;
            v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
            v184 = v178;
            self = selfCopy4;
            v269 = v183;
            v272 = 0;
            selfCopy5 = 0;
            *errorCopy3 = [v184 initWithDomain:v179 code:2 userInfo:?];
            goto LABEL_237;
          }

          v272 = 0;
          selfCopy5 = 0;
        }

        v42 = v295;
        v17 = v170;
        v75 = v285;
        v41 = v286;
        goto LABEL_213;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v280 = v105;
        goto LABEL_98;
      }

      if (errorCopy3)
      {
        v144 = objc_alloc(MEMORY[0x1E696ABC0]);
        v145 = *MEMORY[0x1E698F240];
        v332 = *MEMORY[0x1E696A578];
        v146 = v8;
        v147 = objc_alloc(MEMORY[0x1E696AEC0]);
        v243 = objc_opt_class();
        v148 = v147;
        v8 = v146;
        v41 = v286;
        v278 = [v148 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v243, @"isAdaptedModelCreated"];
        v333 = v278;
        v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
        v150 = v144;
        self = selfCopy4;
        v277 = v149;
        v280 = 0;
        selfCopy5 = 0;
        *errorCopy3 = [v150 initWithDomain:v145 code:2 userInfo:?];
        v42 = v295;
        v17 = v293;
        v75 = v285;
        goto LABEL_216;
      }

      v280 = 0;
      selfCopy5 = 0;
    }

    v42 = v295;
    v17 = v293;
    v75 = v285;
    goto LABEL_217;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = selfCopy4;
    v286 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v75 options:0];
    if (v286)
    {
      goto LABEL_89;
    }

    if (errorCopy3)
    {
      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
      v127 = *MEMORY[0x1E698F240];
      v340 = *MEMORY[0x1E696A578];
      v288 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"modelSuggestionProxies"];
      v341 = v288;
      v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
      v129 = v126;
      self = selfCopy4;
      v283 = v128;
      v41 = 0;
      selfCopy5 = 0;
      *errorCopy3 = [v129 initWithDomain:v127 code:2 userInfo:?];
      v42 = v295;
      v75 = v285;

      goto LABEL_220;
    }

    v41 = 0;
    selfCopy5 = 0;
    v42 = v295;
    v75 = v285;
  }

  else
  {
    if (errorCopy3)
    {
      v158 = objc_alloc(MEMORY[0x1E696ABC0]);
      v159 = *MEMORY[0x1E698F240];
      v338 = *MEMORY[0x1E696A578];
      v160 = v8;
      v161 = objc_alloc(MEMORY[0x1E696AEC0]);
      v245 = objc_opt_class();
      v162 = v161;
      v8 = v160;
      v288 = [v162 initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", v245, @"modelSuggestionProxies"];
      v339 = v288;
      v284 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
      v41 = 0;
      selfCopy5 = 0;
      *errorCopy3 = [v158 initWithDomain:v159 code:2 userInfo:?];
      self = selfCopy4;
      v42 = v295;
      v17 = v293;

      goto LABEL_220;
    }

    v41 = 0;
    selfCopy5 = 0;
    self = selfCopy4;
    v42 = v295;
    v17 = v293;
  }

LABEL_221:

LABEL_222:
LABEL_223:
  v57 = v292;
LABEL_224:

  v10 = v294;
LABEL_225:

LABEL_226:
LABEL_227:

LABEL_228:
LABEL_229:

LABEL_230:
  v225 = *MEMORY[0x1E69E9840];
  return selfCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMShareSheetFeedback *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_derivedIntentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_targetBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_extensionContextUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachments)
  {
    PBDataWriterWriteDataField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_locationUUIDs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_photoSuggestedContacts;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }

  if (self->_modelSuggestionProxies)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_adaptedModelRecipeID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsAdaptedModelUsed)
  {
    isAdaptedModelUsed = self->_isAdaptedModelUsed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsAdaptedModelCreated)
  {
    isAdaptedModelCreated = self->_isAdaptedModelCreated;
    PBDataWriterWriteBOOLField();
  }

  if (self->_supportedBundleIDs)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPeopleSuggestionsDisabled)
  {
    peopleSuggestionsDisabled = self->_peopleSuggestionsDisabled;
    PBDataWriterWriteInt32Field();
  }

  if (self->_reasonType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_transportBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasNumberOfVisibleSuggestions)
  {
    numberOfVisibleSuggestions = self->_numberOfVisibleSuggestions;
    PBDataWriterWriteDoubleField();
  }

  if (self->_trackingID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasICloudFamilyInvocation)
  {
    iCloudFamilyInvocation = self->_iCloudFamilyInvocation;
    PBDataWriterWriteBOOLField();
  }

  engagementType = self->_engagementType;
  PBDataWriterWriteUint32Field();
  if (self->_hasIndexSelected)
  {
    indexSelected = self->_indexSelected;
    PBDataWriterWriteInt32Field();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v76.receiver = self;
  v76.super_class = BMShareSheetFeedback;
  v5 = [(BMEventBase *)&v76 init];
  if (!v5)
  {
    goto LABEL_122;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v77) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v77) & 0x7F) << v9;
        if ((LOBYTE(v77) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      switch((v16 >> 3))
      {
        case 1u:
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_77;
        case 2u:
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_77;
        case 3u:
          v17 = PBReaderReadString();
          v18 = 64;
          goto LABEL_77;
        case 4u:
          v17 = PBReaderReadData();
          v18 = 72;
          goto LABEL_77;
        case 5u:
          v28 = PBReaderReadString();
          if (!v28)
          {
            goto LABEL_124;
          }

          v29 = v28;
          v30 = v6;
          goto LABEL_62;
        case 6u:
          v44 = PBReaderReadData();
          if (!v44)
          {
            goto LABEL_124;
          }

          v29 = v44;
          v30 = v7;
LABEL_62:
          [v30 addObject:v29];

          goto LABEL_78;
        case 7u:
          v17 = PBReaderReadData();
          v18 = 96;
          goto LABEL_77;
        case 8u:
          v17 = PBReaderReadString();
          v18 = 104;
          goto LABEL_77;
        case 9u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v5->_hasIsAdaptedModelUsed = 1;
          while (1)
          {
            LOBYTE(v77) = 0;
            v56 = [fromCopy position] + 1;
            if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v55 |= (LOBYTE(v77) & 0x7F) << v53;
            if ((LOBYTE(v77) & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v15 = v54++ >= 9;
            if (v15)
            {
              LOBYTE(v37) = 0;
              goto LABEL_112;
            }
          }

          v37 = (v55 != 0) & ~[fromCopy hasError];
LABEL_112:
          v67 = 16;
          goto LABEL_113;
        case 0xAu:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v5->_hasIsAdaptedModelCreated = 1;
          while (1)
          {
            LOBYTE(v77) = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (LOBYTE(v77) & 0x7F) << v31;
            if ((LOBYTE(v77) & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v15 = v32++ >= 9;
            if (v15)
            {
              LOBYTE(v37) = 0;
              goto LABEL_103;
            }
          }

          v37 = (v33 != 0) & ~[fromCopy hasError];
LABEL_103:
          v67 = 18;
          goto LABEL_113;
        case 0xBu:
          v17 = PBReaderReadString();
          v18 = 112;
          goto LABEL_77;
        case 0xCu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v5->_hasPeopleSuggestionsDisabled = 1;
          while (1)
          {
            LOBYTE(v77) = 0;
            v24 = [fromCopy position] + 1;
            if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v23 |= (LOBYTE(v77) & 0x7F) << v21;
            if ((LOBYTE(v77) & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v15 = v22++ >= 9;
            if (v15)
            {
              v27 = 0;
              goto LABEL_101;
            }
          }

          if ([fromCopy hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_101:
          v66 = 32;
          goto LABEL_108;
        case 0xDu:
          v17 = PBReaderReadString();
          v18 = 120;
          goto LABEL_77;
        case 0xEu:
          v17 = PBReaderReadString();
          v18 = 128;
          goto LABEL_77;
        case 0xFu:
          v17 = PBReaderReadString();
          v18 = 136;
          goto LABEL_77;
        case 0x10u:
          v17 = PBReaderReadString();
          v18 = 144;
          goto LABEL_77;
        case 0x11u:
          v5->_hasNumberOfVisibleSuggestions = 1;
          v77 = 0.0;
          v19 = [fromCopy position] + 8;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_numberOfVisibleSuggestions = v77;
          goto LABEL_78;
        case 0x12u:
          v17 = PBReaderReadString();
          v18 = 160;
LABEL_77:
          v51 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_78;
        case 0x13u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v5->_hasICloudFamilyInvocation = 1;
          while (1)
          {
            LOBYTE(v77) = 0;
            v48 = [fromCopy position] + 1;
            if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v47 |= (LOBYTE(v77) & 0x7F) << v45;
            if ((LOBYTE(v77) & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v15 = v46++ >= 9;
            if (v15)
            {
              LOBYTE(v37) = 0;
              goto LABEL_110;
            }
          }

          v37 = (v47 != 0) & ~[fromCopy hasError];
LABEL_110:
          v67 = 22;
LABEL_113:
          *(&v5->super.super.isa + v67) = v37;
          goto LABEL_78;
        case 0x14u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          while (1)
          {
            LOBYTE(v77) = 0;
            v62 = [fromCopy position] + 1;
            if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v61 |= (LOBYTE(v77) & 0x7F) << v59;
            if ((LOBYTE(v77) & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            if (v60++ > 8)
            {
              goto LABEL_116;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v61 > 4)
          {
LABEL_116:
            LODWORD(v61) = 0;
          }

          v5->_engagementType = v61;
          goto LABEL_78;
        case 0x15u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v5->_hasIndexSelected = 1;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_78;
          }

LABEL_124:

          goto LABEL_121;
      }

      while (1)
      {
        LOBYTE(v77) = 0;
        v41 = [fromCopy position] + 1;
        if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v77 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v40 |= (LOBYTE(v77) & 0x7F) << v38;
        if ((LOBYTE(v77) & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        v15 = v39++ >= 9;
        if (v15)
        {
          v27 = 0;
          goto LABEL_107;
        }
      }

      v27 = [fromCopy hasError] ? 0 : v40;
LABEL_107:
      v66 = 40;
LABEL_108:
      *(&v5->super.super.isa + v66) = v27;
LABEL_78:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v69 = [v6 copy];
  locationUUIDs = v5->_locationUUIDs;
  v5->_locationUUIDs = v69;

  v71 = [v7 copy];
  photoSuggestedContacts = v5->_photoSuggestedContacts;
  v5->_photoSuggestedContacts = v71;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_121:
    v74 = 0;
  }

  else
  {
LABEL_122:
    v74 = v5;
  }

  return v74;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  derivedIntentIdentifier = [(BMShareSheetFeedback *)self derivedIntentIdentifier];
  targetBundleID = [(BMShareSheetFeedback *)self targetBundleID];
  extensionContextUUID = [(BMShareSheetFeedback *)self extensionContextUUID];
  attachments = [(BMShareSheetFeedback *)self attachments];
  locationUUIDs = [(BMShareSheetFeedback *)self locationUUIDs];
  photoSuggestedContacts = [(BMShareSheetFeedback *)self photoSuggestedContacts];
  modelSuggestionProxies = [(BMShareSheetFeedback *)self modelSuggestionProxies];
  adaptedModelRecipeID = [(BMShareSheetFeedback *)self adaptedModelRecipeID];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareSheetFeedback isAdaptedModelUsed](self, "isAdaptedModelUsed")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareSheetFeedback isAdaptedModelCreated](self, "isAdaptedModelCreated")}];
  supportedBundleIDs = [(BMShareSheetFeedback *)self supportedBundleIDs];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareSheetFeedback peopleSuggestionsDisabled](self, "peopleSuggestionsDisabled")}];
  reasonType = [(BMShareSheetFeedback *)self reasonType];
  reason = [(BMShareSheetFeedback *)self reason];
  sourceBundleID = [(BMShareSheetFeedback *)self sourceBundleID];
  transportBundleID = [(BMShareSheetFeedback *)self transportBundleID];
  v3 = MEMORY[0x1E696AD98];
  [(BMShareSheetFeedback *)self numberOfVisibleSuggestions];
  v9 = [v3 numberWithDouble:?];
  trackingID = [(BMShareSheetFeedback *)self trackingID];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareSheetFeedback iCloudFamilyInvocation](self, "iCloudFamilyInvocation")}];
  v6 = BMShareSheetFeedbackEngagementTypeAsString([(BMShareSheetFeedback *)self engagementType]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareSheetFeedback indexSelected](self, "indexSelected")}];
  v20 = [v19 initWithFormat:@"BMShareSheetFeedback with derivedIntentIdentifier: %@, targetBundleID: %@, extensionContextUUID: %@, attachments: %@, locationUUIDs: %@, photoSuggestedContacts: %@, modelSuggestionProxies: %@, adaptedModelRecipeID: %@, isAdaptedModelUsed: %@, isAdaptedModelCreated: %@, supportedBundleIDs: %@, peopleSuggestionsDisabled: %@, reasonType: %@, reason: %@, sourceBundleID: %@, transportBundleID: %@, numberOfVisibleSuggestions: %@, trackingID: %@, iCloudFamilyInvocation: %@, engagementType: %@, indexSelected: %@", derivedIntentIdentifier, targetBundleID, extensionContextUUID, attachments, locationUUIDs, photoSuggestedContacts, modelSuggestionProxies, adaptedModelRecipeID, v16, v15, supportedBundleIDs, v12, reasonType, reason, sourceBundleID, transportBundleID, v9, trackingID, v5, v6, v7];

  return v20;
}

- (BMShareSheetFeedback)initWithDerivedIntentIdentifier:(id)identifier targetBundleID:(id)d extensionContextUUID:(id)iD attachments:(id)attachments locationUUIDs:(id)ds photoSuggestedContacts:(id)contacts modelSuggestionProxies:(id)proxies adaptedModelRecipeID:(id)self0 isAdaptedModelUsed:(id)self1 isAdaptedModelCreated:(id)self2 supportedBundleIDs:(id)self3 peopleSuggestionsDisabled:(id)self4 reasonType:(id)self5 reason:(id)self6 sourceBundleID:(id)self7 transportBundleID:(id)self8 numberOfVisibleSuggestions:(id)self9 trackingID:(id)trackingID iCloudFamilyInvocation:(id)invocation engagementType:(int)engagementType indexSelected:(id)selected
{
  identifierCopy = identifier;
  dCopy = d;
  dCopy2 = d;
  iDCopy = iD;
  iDCopy2 = iD;
  attachmentsCopy = attachments;
  attachmentsCopy2 = attachments;
  dsCopy = ds;
  dsCopy2 = ds;
  contactsCopy = contacts;
  contactsCopy2 = contacts;
  proxiesCopy = proxies;
  recipeIDCopy = recipeID;
  usedCopy = used;
  createdCopy = created;
  iDsCopy = iDs;
  disabledCopy = disabled;
  typeCopy = type;
  reasonCopy = reason;
  bundleIDCopy = bundleID;
  transportBundleIDCopy = transportBundleID;
  suggestionsCopy = suggestions;
  trackingIDCopy = trackingID;
  invocationCopy = invocation;
  selectedCopy = selected;
  v60.receiver = self;
  v60.super_class = BMShareSheetFeedback;
  v35 = [(BMEventBase *)&v60 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v35->_derivedIntentIdentifier, identifier);
    objc_storeStrong(&v35->_targetBundleID, dCopy);
    objc_storeStrong(&v35->_extensionContextUUID, iDCopy);
    objc_storeStrong(&v35->_attachments, attachmentsCopy);
    objc_storeStrong(&v35->_locationUUIDs, dsCopy);
    objc_storeStrong(&v35->_photoSuggestedContacts, contactsCopy);
    objc_storeStrong(&v35->_modelSuggestionProxies, proxies);
    objc_storeStrong(&v35->_adaptedModelRecipeID, recipeID);
    if (usedCopy)
    {
      v35->_hasIsAdaptedModelUsed = 1;
      v35->_isAdaptedModelUsed = [usedCopy BOOLValue];
    }

    else
    {
      v35->_hasIsAdaptedModelUsed = 0;
      v35->_isAdaptedModelUsed = 0;
    }

    if (createdCopy)
    {
      v35->_hasIsAdaptedModelCreated = 1;
      v35->_isAdaptedModelCreated = [createdCopy BOOLValue];
    }

    else
    {
      v35->_hasIsAdaptedModelCreated = 0;
      v35->_isAdaptedModelCreated = 0;
    }

    objc_storeStrong(&v35->_supportedBundleIDs, iDs);
    if (disabledCopy)
    {
      v35->_hasPeopleSuggestionsDisabled = 1;
      intValue = [disabledCopy intValue];
    }

    else
    {
      v35->_hasPeopleSuggestionsDisabled = 0;
      intValue = -1;
    }

    v35->_peopleSuggestionsDisabled = intValue;
    objc_storeStrong(&v35->_reasonType, type);
    objc_storeStrong(&v35->_reason, reason);
    objc_storeStrong(&v35->_sourceBundleID, bundleID);
    objc_storeStrong(&v35->_transportBundleID, transportBundleID);
    if (suggestionsCopy)
    {
      v35->_hasNumberOfVisibleSuggestions = 1;
      [suggestionsCopy doubleValue];
    }

    else
    {
      v35->_hasNumberOfVisibleSuggestions = 0;
      v37 = -1.0;
    }

    v35->_numberOfVisibleSuggestions = v37;
    objc_storeStrong(&v35->_trackingID, trackingID);
    if (invocationCopy)
    {
      v35->_hasICloudFamilyInvocation = 1;
      v35->_iCloudFamilyInvocation = [invocationCopy BOOLValue];
    }

    else
    {
      v35->_hasICloudFamilyInvocation = 0;
      v35->_iCloudFamilyInvocation = 0;
    }

    v35->_engagementType = engagementType;
    if (selectedCopy)
    {
      v35->_hasIndexSelected = 1;
      intValue2 = [selectedCopy intValue];
    }

    else
    {
      v35->_hasIndexSelected = 0;
      intValue2 = -1;
    }

    v35->_indexSelected = intValue2;
  }

  return v35;
}

+ (id)protoFields
{
  v26[21] = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"derivedIntentIdentifier" number:1 type:13 subMessageClass:0];
  v26[0] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"targetBundleID" number:2 type:13 subMessageClass:0];
  v26[1] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extensionContextUUID" number:3 type:13 subMessageClass:0];
  v26[2] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachments" number:4 type:14 subMessageClass:0];
  v26[3] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationUUIDs" number:5 type:13 subMessageClass:0];
  v26[4] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoSuggestedContacts" number:6 type:14 subMessageClass:0];
  v26[5] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelSuggestionProxies" number:7 type:14 subMessageClass:0];
  v26[6] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adaptedModelRecipeID" number:8 type:13 subMessageClass:0];
  v26[7] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAdaptedModelUsed" number:9 type:12 subMessageClass:0];
  v26[8] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAdaptedModelCreated" number:10 type:12 subMessageClass:0];
  v26[9] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"supportedBundleIDs" number:11 type:13 subMessageClass:0];
  v26[10] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleSuggestionsDisabled" number:12 type:2 subMessageClass:0];
  v26[11] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reasonType" number:13 type:13 subMessageClass:0];
  v26[12] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:14 type:13 subMessageClass:0];
  v26[13] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:15 type:13 subMessageClass:0];
  v26[14] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transportBundleID" number:16 type:13 subMessageClass:0];
  v26[15] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfVisibleSuggestions" number:17 type:0 subMessageClass:0];
  v26[16] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingID" number:18 type:13 subMessageClass:0];
  v26[17] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iCloudFamilyInvocation" number:19 type:12 subMessageClass:0];
  v26[18] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementType" number:20 type:4 subMessageClass:0];
  v26[19] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"indexSelected" number:21 type:2 subMessageClass:0];
  v26[20] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:21];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v26[21] = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"derivedIntentIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"targetBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"extensionContextUUID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attachments" dataType:4 requestOnly:0 fieldNumber:4 protoDataType:14 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"locationUUIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_127];
  v21 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"photoSuggestedContacts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_129];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelSuggestionProxies" dataType:4 requestOnly:0 fieldNumber:7 protoDataType:14 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adaptedModelRecipeID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAdaptedModelUsed" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAdaptedModelCreated" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"supportedBundleIDs" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleSuggestionsDisabled" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reasonType" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transportBundleID" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfVisibleSuggestions" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackingID" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iCloudFamilyInvocation" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementType" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"indexSelected" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v26[0] = v25;
  v26[1] = v24;
  v26[2] = v23;
  v26[3] = v14;
  v26[4] = v22;
  v26[5] = v21;
  v26[6] = v20;
  v26[7] = v19;
  v26[8] = v18;
  v26[9] = v17;
  v26[10] = v16;
  v26[11] = v2;
  v26[12] = v3;
  v26[13] = v4;
  v26[14] = v15;
  v26[15] = v5;
  v26[16] = v6;
  v26[17] = v7;
  v26[18] = v13;
  v26[19] = v8;
  v26[20] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:21];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __31__BMShareSheetFeedback_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _photoSuggestedContactsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __31__BMShareSheetFeedback_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _locationUUIDsJSONArray];
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

    v8 = [[BMShareSheetFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end