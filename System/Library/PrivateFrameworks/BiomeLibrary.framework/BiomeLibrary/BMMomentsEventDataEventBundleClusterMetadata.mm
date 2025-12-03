@interface BMMomentsEventDataEventBundleClusterMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundleClusterMetadata)initWithIsFiltered:(id)filtered isTopLevelActivityTypePhenotypeDetected:(id)detected isSecondLevelActivityTypePhenotypeDetected:(id)phenotypeDetected isWeekendPhenotypeDetected:(id)weekendPhenotypeDetected isTimeTagPhenotypeDetected:(id)tagPhenotypeDetected isDayOfWeekPhenotypeDetected:(id)weekPhenotypeDetected isPlaceNamePhenotypeDetected:(id)namePhenotypeDetected isCombinedPlacePhenotypeDetected:(id)self0 isEnclosingAreaNamePhenotypeDetected:(id)self1 isPersonsPhenotypeDetected:(id)self2 isPersonRelationshipPhenotypeDetected:(id)self3 isActivityTypeFromPhotoTraitsPhenotypeDetected:(id)self4 isTimeContextFromPhotoTraitsPhenotypeDetected:(id)self5 isLocationContextFromPhotoTraitsPhenotypeDetected:(id)self6 isSocialContextFromPhotoTraitsPhenotypeDetected:(id)self7 isExtraContextFromPhotoTraitsPhenotypeDetected:(id)self8 isOtherSubjectFromPhotoTraitsPhenotypeDetected:(id)self9;
- (BMMomentsEventDataEventBundleClusterMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundleClusterMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsFiltered](self, "hasIsFiltered") || [v5 hasIsFiltered])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsFiltered])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsFiltered])
      {
        goto LABEL_88;
      }

      isFiltered = [(BMMomentsEventDataEventBundleClusterMetadata *)self isFiltered];
      if (isFiltered != [v5 isFiltered])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsTopLevelActivityTypePhenotypeDetected](self, "hasIsTopLevelActivityTypePhenotypeDetected") || [v5 hasIsTopLevelActivityTypePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTopLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsTopLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isTopLevelActivityTypePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isTopLevelActivityTypePhenotypeDetected];
      if (isTopLevelActivityTypePhenotypeDetected != [v5 isTopLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsSecondLevelActivityTypePhenotypeDetected](self, "hasIsSecondLevelActivityTypePhenotypeDetected") || [v5 hasIsSecondLevelActivityTypePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSecondLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsSecondLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isSecondLevelActivityTypePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isSecondLevelActivityTypePhenotypeDetected];
      if (isSecondLevelActivityTypePhenotypeDetected != [v5 isSecondLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsWeekendPhenotypeDetected](self, "hasIsWeekendPhenotypeDetected") || [v5 hasIsWeekendPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsWeekendPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsWeekendPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isWeekendPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isWeekendPhenotypeDetected];
      if (isWeekendPhenotypeDetected != [v5 isWeekendPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsTimeTagPhenotypeDetected](self, "hasIsTimeTagPhenotypeDetected") || [v5 hasIsTimeTagPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeTagPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsTimeTagPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isTimeTagPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isTimeTagPhenotypeDetected];
      if (isTimeTagPhenotypeDetected != [v5 isTimeTagPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsDayOfWeekPhenotypeDetected](self, "hasIsDayOfWeekPhenotypeDetected") || [v5 hasIsDayOfWeekPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsDayOfWeekPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsDayOfWeekPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isDayOfWeekPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isDayOfWeekPhenotypeDetected];
      if (isDayOfWeekPhenotypeDetected != [v5 isDayOfWeekPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsPlaceNamePhenotypeDetected](self, "hasIsPlaceNamePhenotypeDetected") || [v5 hasIsPlaceNamePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPlaceNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsPlaceNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isPlaceNamePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isPlaceNamePhenotypeDetected];
      if (isPlaceNamePhenotypeDetected != [v5 isPlaceNamePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsCombinedPlacePhenotypeDetected](self, "hasIsCombinedPlacePhenotypeDetected") || [v5 hasIsCombinedPlacePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsCombinedPlacePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsCombinedPlacePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isCombinedPlacePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isCombinedPlacePhenotypeDetected];
      if (isCombinedPlacePhenotypeDetected != [v5 isCombinedPlacePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsEnclosingAreaNamePhenotypeDetected](self, "hasIsEnclosingAreaNamePhenotypeDetected") || [v5 hasIsEnclosingAreaNamePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsEnclosingAreaNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsEnclosingAreaNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isEnclosingAreaNamePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isEnclosingAreaNamePhenotypeDetected];
      if (isEnclosingAreaNamePhenotypeDetected != [v5 isEnclosingAreaNamePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsPersonsPhenotypeDetected](self, "hasIsPersonsPhenotypeDetected") || [v5 hasIsPersonsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsPersonsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isPersonsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isPersonsPhenotypeDetected];
      if (isPersonsPhenotypeDetected != [v5 isPersonsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsPersonRelationshipPhenotypeDetected](self, "hasIsPersonRelationshipPhenotypeDetected") || [v5 hasIsPersonRelationshipPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonRelationshipPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsPersonRelationshipPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isPersonRelationshipPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isPersonRelationshipPhenotypeDetected];
      if (isPersonRelationshipPhenotypeDetected != [v5 isPersonRelationshipPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsActivityTypeFromPhotoTraitsPhenotypeDetected](self, "hasIsActivityTypeFromPhotoTraitsPhenotypeDetected") || [v5 hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isActivityTypeFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isActivityTypeFromPhotoTraitsPhenotypeDetected];
      if (isActivityTypeFromPhotoTraitsPhenotypeDetected != [v5 isActivityTypeFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsTimeContextFromPhotoTraitsPhenotypeDetected](self, "hasIsTimeContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isTimeContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isTimeContextFromPhotoTraitsPhenotypeDetected];
      if (isTimeContextFromPhotoTraitsPhenotypeDetected != [v5 isTimeContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsLocationContextFromPhotoTraitsPhenotypeDetected](self, "hasIsLocationContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isLocationContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isLocationContextFromPhotoTraitsPhenotypeDetected];
      if (isLocationContextFromPhotoTraitsPhenotypeDetected != [v5 isLocationContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsSocialContextFromPhotoTraitsPhenotypeDetected](self, "hasIsSocialContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isSocialContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isSocialContextFromPhotoTraitsPhenotypeDetected];
      if (isSocialContextFromPhotoTraitsPhenotypeDetected != [v5 isSocialContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsExtraContextFromPhotoTraitsPhenotypeDetected](self, "hasIsExtraContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isExtraContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isExtraContextFromPhotoTraitsPhenotypeDetected];
      if (isExtraContextFromPhotoTraitsPhenotypeDetected != [v5 isExtraContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (!-[BMMomentsEventDataEventBundleClusterMetadata hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected") && ![v5 hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected])
    {
      LOBYTE(v23) = 1;
      goto LABEL_89;
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected") && [v5 hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected])
    {
      isOtherSubjectFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isOtherSubjectFromPhotoTraitsPhenotypeDetected];
      v23 = isOtherSubjectFromPhotoTraitsPhenotypeDetected ^ [v5 isOtherSubjectFromPhotoTraitsPhenotypeDetected] ^ 1;
    }

    else
    {
LABEL_88:
      LOBYTE(v23) = 0;
    }

LABEL_89:

    goto LABEL_90;
  }

  LOBYTE(v23) = 0;
LABEL_90:

  return v23;
}

- (id)jsonDictionary
{
  v60[17] = *MEMORY[0x1E69E9840];
  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsFiltered])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isFiltered](self, "isFiltered")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTopLevelActivityTypePhenotypeDetected])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTopLevelActivityTypePhenotypeDetected](self, "isTopLevelActivityTypePhenotypeDetected")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSecondLevelActivityTypePhenotypeDetected])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSecondLevelActivityTypePhenotypeDetected](self, "isSecondLevelActivityTypePhenotypeDetected")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsWeekendPhenotypeDetected])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isWeekendPhenotypeDetected](self, "isWeekendPhenotypeDetected")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeTagPhenotypeDetected])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeTagPhenotypeDetected](self, "isTimeTagPhenotypeDetected")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsDayOfWeekPhenotypeDetected])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isDayOfWeekPhenotypeDetected](self, "isDayOfWeekPhenotypeDetected")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPlaceNamePhenotypeDetected])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPlaceNamePhenotypeDetected](self, "isPlaceNamePhenotypeDetected")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsCombinedPlacePhenotypeDetected])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isCombinedPlacePhenotypeDetected](self, "isCombinedPlacePhenotypeDetected")}];
  }

  else
  {
    v58 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsEnclosingAreaNamePhenotypeDetected])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isEnclosingAreaNamePhenotypeDetected](self, "isEnclosingAreaNamePhenotypeDetected")}];
  }

  else
  {
    v57 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonsPhenotypeDetected])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonsPhenotypeDetected](self, "isPersonsPhenotypeDetected")}];
  }

  else
  {
    v56 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonRelationshipPhenotypeDetected])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonRelationshipPhenotypeDetected](self, "isPersonRelationshipPhenotypeDetected")}];
  }

  else
  {
    v55 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isActivityTypeFromPhotoTraitsPhenotypeDetected](self, "isActivityTypeFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v54 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeContextFromPhotoTraitsPhenotypeDetected](self, "isTimeContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v53 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isLocationContextFromPhotoTraitsPhenotypeDetected](self, "isLocationContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v52 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSocialContextFromPhotoTraitsPhenotypeDetected](self, "isSocialContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v51 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isExtraContextFromPhotoTraitsPhenotypeDetected](self, "isExtraContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v50 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "isOtherSubjectFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v10 = 0;
  }

  v59[0] = @"isFiltered";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null;
  v60[0] = null;
  v59[1] = @"isTopLevelActivityTypePhenotypeDetected";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null2;
  v60[1] = null2;
  v59[2] = @"isSecondLevelActivityTypePhenotypeDetected";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null3;
  v60[2] = null3;
  v59[3] = @"isWeekendPhenotypeDetected";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null4;
  v60[3] = null4;
  v59[4] = @"isTimeTagPhenotypeDetected";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null5;
  v60[4] = null5;
  v59[5] = @"isDayOfWeekPhenotypeDetected";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null6;
  v60[5] = null6;
  v59[6] = @"isPlaceNamePhenotypeDetected";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null7;
  v60[6] = null7;
  v59[7] = @"isCombinedPlacePhenotypeDetected";
  null8 = v58;
  if (!v58)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v60[7] = null8;
  v59[8] = @"isEnclosingAreaNamePhenotypeDetected";
  null9 = v57;
  if (!v57)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v3;
  v60[8] = null9;
  v59[9] = @"isPersonsPhenotypeDetected";
  null10 = v56;
  if (!v56)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v9;
  v60[9] = null10;
  v59[10] = @"isPersonRelationshipPhenotypeDetected";
  null11 = v55;
  if (!v55)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v4;
  v33 = null11;
  v60[10] = null11;
  v59[11] = @"isActivityTypeFromPhotoTraitsPhenotypeDetected";
  null12 = v54;
  if (!v54)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null9;
  v37 = null8;
  v47 = v7;
  v60[11] = null12;
  v59[12] = @"isTimeContextFromPhotoTraitsPhenotypeDetected";
  null13 = v53;
  if (!v53)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v8;
  v25 = v5;
  v60[12] = null13;
  v59[13] = @"isLocationContextFromPhotoTraitsPhenotypeDetected";
  null14 = v52;
  if (!v52)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v6;
  v60[13] = null14;
  v59[14] = @"isSocialContextFromPhotoTraitsPhenotypeDetected";
  null15 = v51;
  if (!v51)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null10;
  v60[14] = null15;
  v59[15] = @"isExtraContextFromPhotoTraitsPhenotypeDetected";
  null16 = v50;
  if (!v50)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v60[15] = null16;
  v59[16] = @"isOtherSubjectFromPhotoTraitsPhenotypeDetected";
  null17 = v10;
  if (!v10)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v60[16] = null17;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:{17, v33}];
  if (!v10)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (v58)
  {
    if (v46)
    {
      goto LABEL_106;
    }
  }

  else
  {

    if (v46)
    {
LABEL_106:
      if (v24)
      {
        goto LABEL_107;
      }

      goto LABEL_117;
    }
  }

  if (v24)
  {
LABEL_107:
    if (v47)
    {
      goto LABEL_108;
    }

    goto LABEL_118;
  }

LABEL_117:

  if (v47)
  {
LABEL_108:
    if (v27)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (v27)
  {
LABEL_109:
    if (v25)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_119:

  if (v25)
  {
LABEL_110:
    if (v48)
    {
      goto LABEL_111;
    }

LABEL_121:

    if (v49)
    {
      goto LABEL_112;
    }

    goto LABEL_122;
  }

LABEL_120:

  if (!v48)
  {
    goto LABEL_121;
  }

LABEL_111:
  if (v49)
  {
    goto LABEL_112;
  }

LABEL_122:

LABEL_112:
  v31 = *MEMORY[0x1E69E9840];

  return v45;
}

- (BMMomentsEventDataEventBundleClusterMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v177[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v143 = [dictionaryCopy objectForKeyedSubscript:@"isFiltered"];
  if (!v143 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v140 = 0;
LABEL_4:
    v5 = [dictionaryCopy objectForKeyedSubscript:@"isTopLevelActivityTypePhenotypeDetected"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v139 = 0;
          v37 = 0;
          goto LABEL_68;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v174 = *MEMORY[0x1E696A578];
        v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTopLevelActivityTypePhenotypeDetected"];
        v175 = v138;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
        v139 = 0;
        v37 = 0;
        *error = [v44 initWithDomain:v45 code:2 userInfo:v6];
        goto LABEL_67;
      }

      v139 = v5;
    }

    else
    {
      v139 = 0;
    }

    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSecondLevelActivityTypePhenotypeDetected"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v138 = 0;
          v37 = 0;
          goto LABEL_67;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v172 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSecondLevelActivityTypePhenotypeDetected"];
        v173 = v48;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v14 = v48;
        v138 = 0;
        v37 = 0;
        *error = [v46 initWithDomain:v47 code:2 userInfo:v7];
LABEL_66:

LABEL_67:
        goto LABEL_68;
      }

      v138 = v6;
    }

    else
    {
      v138 = 0;
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isWeekendPhenotypeDetected"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v14 = 0;
          v37 = 0;
          goto LABEL_66;
        }

        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v170 = *MEMORY[0x1E696A578];
        v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isWeekendPhenotypeDetected"];
        v171 = v136;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v14 = 0;
        v37 = 0;
        *error = [v49 initWithDomain:v50 code:2 userInfo:v39];
        goto LABEL_65;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isTimeTagPhenotypeDetected"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v136 = 0;
          v37 = 0;
          v39 = v9;
          v14 = v8;
          goto LABEL_65;
        }

        v137 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v168 = *MEMORY[0x1E696A578];
        v39 = v9;
        v14 = v8;
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTimeTagPhenotypeDetected"];
        v169 = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
        v51 = [v137 initWithDomain:v134 code:2 userInfo:v10];
        v136 = 0;
        v37 = 0;
        *error = v51;
LABEL_64:

LABEL_65:
        goto LABEL_66;
      }

      v132 = v9;
      v136 = v9;
    }

    else
    {
      v132 = v9;
      v136 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isDayOfWeekPhenotypeDetected"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = v8;
        if (!error)
        {
          v11 = 0;
          v37 = 0;
          v39 = v132;
          goto LABEL_64;
        }

        v131 = objc_alloc(MEMORY[0x1E696ABC0]);
        v129 = *MEMORY[0x1E698F240];
        v166 = *MEMORY[0x1E696A578];
        v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDayOfWeekPhenotypeDetected"];
        v167 = v133;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
        v53 = v131;
        v130 = v52;
        v11 = 0;
        v37 = 0;
        *error = [v53 initWithDomain:v129 code:2 userInfo:?];
        v39 = v132;
        goto LABEL_63;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isPlaceNamePhenotypeDetected"];
    v128 = v11;
    v130 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v133 = 0;
          v37 = 0;
          v39 = v132;
          v14 = v8;
          goto LABEL_63;
        }

        v135 = objc_alloc(MEMORY[0x1E696ABC0]);
        v124 = *MEMORY[0x1E698F240];
        v164 = *MEMORY[0x1E696A578];
        v54 = objc_alloc(MEMORY[0x1E696AEC0]);
        v89 = objc_opt_class();
        v55 = v54;
        v11 = v128;
        v14 = v8;
        v126 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v89, @"isPlaceNamePhenotypeDetected"];
        v165 = v126;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
        v56 = [v135 initWithDomain:v124 code:2 userInfo:v15];
        v133 = 0;
        v37 = 0;
        *error = v56;
        goto LABEL_138;
      }

      v133 = v13;
    }

    else
    {
      v133 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"isCombinedPlacePhenotypeDetected"];
    v15 = v14 = v8;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v126 = 0;
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v126 = v15;
LABEL_25:
      v16 = [dictionaryCopy objectForKeyedSubscript:@"isEnclosingAreaNamePhenotypeDetected"];
      v114 = v15;
      v121 = v16;
      if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v123 = 0;
        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v123 = v17;
LABEL_28:
        v18 = [dictionaryCopy objectForKeyedSubscript:@"isPersonsPhenotypeDetected"];
        v117 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v119 = 0;
          goto LABEL_31;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v119 = v19;
LABEL_31:
          v20 = [dictionaryCopy objectForKeyedSubscript:@"isPersonRelationshipPhenotypeDetected"];
          v112 = v20;
          if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v115 = 0;
            goto LABEL_34;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v115 = v21;
LABEL_34:
            v22 = [dictionaryCopy objectForKeyedSubscript:@"isActivityTypeFromPhotoTraitsPhenotypeDetected"];
            v108 = v22;
            if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v110 = 0;
              goto LABEL_37;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v110 = v23;
LABEL_37:
              v24 = [dictionaryCopy objectForKeyedSubscript:@"isTimeContextFromPhotoTraitsPhenotypeDetected"];
              v104 = v24;
              if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v106 = 0;
                goto LABEL_40;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v106 = v25;
LABEL_40:
                v26 = [dictionaryCopy objectForKeyedSubscript:@"isLocationContextFromPhotoTraitsPhenotypeDetected"];
                v100 = v26;
                if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v102 = 0;
                  goto LABEL_43;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v102 = v27;
LABEL_43:
                  v28 = [dictionaryCopy objectForKeyedSubscript:@"isSocialContextFromPhotoTraitsPhenotypeDetected"];
                  v97 = v28;
                  v99 = v10;
                  if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v92 = 0;
LABEL_46:
                    v30 = [dictionaryCopy objectForKeyedSubscript:@"isExtraContextFromPhotoTraitsPhenotypeDetected"];
                    v94 = v30;
                    v96 = v14;
                    if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v36 = 0;
                          v37 = 0;
                          v34 = v92;
                          v38 = v94;
                          goto LABEL_54;
                        }

                        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v90 = v5;
                        v79 = v7;
                        v80 = *MEMORY[0x1E698F240];
                        v146 = *MEMORY[0x1E696A578];
                        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isExtraContextFromPhotoTraitsPhenotypeDetected"];
                        v147 = v35;
                        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                        v81 = v80;
                        v7 = v79;
                        v5 = v90;
                        v82 = [v78 initWithDomain:v81 code:2 userInfo:v33];
                        v36 = 0;
                        v37 = 0;
                        *error = v82;
                        v34 = v92;
                        goto LABEL_53;
                      }

                      v32 = v31;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    v33 = [dictionaryCopy objectForKeyedSubscript:@"isOtherSubjectFromPhotoTraitsPhenotypeDetected"];
                    v34 = v92;
                    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v36 = v32;
                        if (error)
                        {
                          v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v91 = v5;
                          v84 = v7;
                          v85 = *MEMORY[0x1E698F240];
                          v144 = *MEMORY[0x1E696A578];
                          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOtherSubjectFromPhotoTraitsPhenotypeDetected"];
                          v145 = v86;
                          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                          v88 = v85;
                          v7 = v84;
                          v5 = v91;
                          *error = [v83 initWithDomain:v88 code:2 userInfo:v87];
                        }

                        v35 = 0;
                        v37 = 0;
                        goto LABEL_53;
                      }

                      v35 = v33;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v32;
                    v37 = [(BMMomentsEventDataEventBundleClusterMetadata *)self initWithIsFiltered:v140 isTopLevelActivityTypePhenotypeDetected:v139 isSecondLevelActivityTypePhenotypeDetected:v138 isWeekendPhenotypeDetected:v96 isTimeTagPhenotypeDetected:v136 isDayOfWeekPhenotypeDetected:v128 isPlaceNamePhenotypeDetected:v133 isCombinedPlacePhenotypeDetected:v126 isEnclosingAreaNamePhenotypeDetected:v123 isPersonsPhenotypeDetected:v119 isPersonRelationshipPhenotypeDetected:v115 isActivityTypeFromPhotoTraitsPhenotypeDetected:v110 isTimeContextFromPhotoTraitsPhenotypeDetected:v106 isLocationContextFromPhotoTraitsPhenotypeDetected:v102 isSocialContextFromPhotoTraitsPhenotypeDetected:v92 isExtraContextFromPhotoTraitsPhenotypeDetected:v32 isOtherSubjectFromPhotoTraitsPhenotypeDetected:v35];
                    self = v37;
LABEL_53:

                    v38 = v94;
                    v14 = v96;
                    v10 = v99;
LABEL_54:

                    v39 = v132;
                    v15 = v114;
LABEL_55:

LABEL_56:
LABEL_57:

LABEL_58:
LABEL_59:

LABEL_60:
LABEL_61:

                    v11 = v128;
LABEL_62:

LABEL_63:
                    goto LABEL_64;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v92 = v29;
                    goto LABEL_46;
                  }

                  if (error)
                  {
                    v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v93 = *MEMORY[0x1E698F240];
                    v148 = *MEMORY[0x1E696A578];
                    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSocialContextFromPhotoTraitsPhenotypeDetected"];
                    v149 = v36;
                    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                    v34 = 0;
                    v37 = 0;
                    *error = [v95 initWithDomain:v93 code:2 userInfo:v38];
                    goto LABEL_54;
                  }

                  v34 = 0;
                  v37 = 0;
LABEL_160:
                  v39 = v132;
                  goto LABEL_55;
                }

                if (error)
                {
                  v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v98 = *MEMORY[0x1E698F240];
                  v150 = *MEMORY[0x1E696A578];
                  v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLocationContextFromPhotoTraitsPhenotypeDetected"];
                  v151 = v34;
                  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                  v76 = v98;
                  v97 = v75;
                  v77 = [v103 initWithDomain:v76 code:2 userInfo:?];
                  v102 = 0;
                  v37 = 0;
                  *error = v77;
                  goto LABEL_160;
                }

                v102 = 0;
                v37 = 0;
LABEL_158:
                v39 = v132;
                goto LABEL_56;
              }

              if (error)
              {
                v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                v101 = *MEMORY[0x1E698F240];
                v152 = *MEMORY[0x1E696A578];
                v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTimeContextFromPhotoTraitsPhenotypeDetected"];
                v153 = v102;
                v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                v73 = v101;
                v100 = v72;
                v74 = [v107 initWithDomain:v73 code:2 userInfo:?];
                v106 = 0;
                v37 = 0;
                *error = v74;
                goto LABEL_158;
              }

              v106 = 0;
              v37 = 0;
LABEL_156:
              v39 = v132;
              goto LABEL_57;
            }

            if (error)
            {
              v111 = objc_alloc(MEMORY[0x1E696ABC0]);
              v105 = *MEMORY[0x1E698F240];
              v154 = *MEMORY[0x1E696A578];
              v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActivityTypeFromPhotoTraitsPhenotypeDetected"];
              v155 = v106;
              v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
              v70 = v105;
              v104 = v69;
              v71 = [v111 initWithDomain:v70 code:2 userInfo:?];
              v110 = 0;
              v37 = 0;
              *error = v71;
              goto LABEL_156;
            }

            v110 = 0;
            v37 = 0;
LABEL_154:
            v39 = v132;
            goto LABEL_58;
          }

          if (error)
          {
            v116 = objc_alloc(MEMORY[0x1E696ABC0]);
            v109 = *MEMORY[0x1E698F240];
            v156 = *MEMORY[0x1E696A578];
            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPersonRelationshipPhenotypeDetected"];
            v157 = v110;
            v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
            v67 = v109;
            v108 = v66;
            v68 = [v116 initWithDomain:v67 code:2 userInfo:?];
            v115 = 0;
            v37 = 0;
            *error = v68;
            goto LABEL_154;
          }

          v115 = 0;
          v37 = 0;
LABEL_150:
          v39 = v132;
          goto LABEL_59;
        }

        if (error)
        {
          v120 = objc_alloc(MEMORY[0x1E696ABC0]);
          v113 = *MEMORY[0x1E698F240];
          v158 = *MEMORY[0x1E696A578];
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPersonsPhenotypeDetected"];
          v159 = v115;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
          v64 = v113;
          v112 = v63;
          v65 = [v120 initWithDomain:v64 code:2 userInfo:?];
          v119 = 0;
          v37 = 0;
          *error = v65;
          goto LABEL_150;
        }

        v119 = 0;
        v37 = 0;
LABEL_146:
        v39 = v132;
        goto LABEL_60;
      }

      if (error)
      {
        v125 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isEnclosingAreaNamePhenotypeDetected"];
        v161 = v119;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v61 = v118;
        v117 = v60;
        v62 = [v125 initWithDomain:v61 code:2 userInfo:?];
        v123 = 0;
        v37 = 0;
        *error = v62;
        goto LABEL_146;
      }

      v123 = 0;
      v37 = 0;
LABEL_142:
      v39 = v132;
      goto LABEL_61;
    }

    if (error)
    {
      v127 = objc_alloc(MEMORY[0x1E696ABC0]);
      v122 = *MEMORY[0x1E698F240];
      v162 = *MEMORY[0x1E696A578];
      v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCombinedPlacePhenotypeDetected"];
      v163 = v123;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
      v58 = v122;
      v121 = v57;
      v59 = [v127 initWithDomain:v58 code:2 userInfo:?];
      v126 = 0;
      v37 = 0;
      *error = v59;
      goto LABEL_142;
    }

    v126 = 0;
    v37 = 0;
LABEL_138:
    v39 = v132;
    goto LABEL_62;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v140 = v143;
    goto LABEL_4;
  }

  if (!error)
  {
    v140 = 0;
    v37 = 0;
    goto LABEL_69;
  }

  v42 = objc_alloc(MEMORY[0x1E696ABC0]);
  v43 = *MEMORY[0x1E698F240];
  v176 = *MEMORY[0x1E696A578];
  v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFiltered"];
  v177[0] = v139;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:&v176 count:1];
  v140 = 0;
  v37 = 0;
  *error = [v42 initWithDomain:v43 code:2 userInfo:v5];
LABEL_68:

LABEL_69:
  v40 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundleClusterMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsFiltered)
  {
    isFiltered = self->_isFiltered;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTopLevelActivityTypePhenotypeDetected)
  {
    isTopLevelActivityTypePhenotypeDetected = self->_isTopLevelActivityTypePhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSecondLevelActivityTypePhenotypeDetected)
  {
    isSecondLevelActivityTypePhenotypeDetected = self->_isSecondLevelActivityTypePhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsWeekendPhenotypeDetected)
  {
    isWeekendPhenotypeDetected = self->_isWeekendPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimeTagPhenotypeDetected)
  {
    isTimeTagPhenotypeDetected = self->_isTimeTagPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDayOfWeekPhenotypeDetected)
  {
    isDayOfWeekPhenotypeDetected = self->_isDayOfWeekPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPlaceNamePhenotypeDetected)
  {
    isPlaceNamePhenotypeDetected = self->_isPlaceNamePhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCombinedPlacePhenotypeDetected)
  {
    isCombinedPlacePhenotypeDetected = self->_isCombinedPlacePhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsEnclosingAreaNamePhenotypeDetected)
  {
    isEnclosingAreaNamePhenotypeDetected = self->_isEnclosingAreaNamePhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPersonsPhenotypeDetected)
  {
    isPersonsPhenotypeDetected = self->_isPersonsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPersonRelationshipPhenotypeDetected)
  {
    isPersonRelationshipPhenotypeDetected = self->_isPersonRelationshipPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected)
  {
    isActivityTypeFromPhotoTraitsPhenotypeDetected = self->_isActivityTypeFromPhotoTraitsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected)
  {
    isTimeContextFromPhotoTraitsPhenotypeDetected = self->_isTimeContextFromPhotoTraitsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected)
  {
    isLocationContextFromPhotoTraitsPhenotypeDetected = self->_isLocationContextFromPhotoTraitsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected)
  {
    isSocialContextFromPhotoTraitsPhenotypeDetected = self->_isSocialContextFromPhotoTraitsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected)
  {
    isExtraContextFromPhotoTraitsPhenotypeDetected = self->_isExtraContextFromPhotoTraitsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected)
  {
    isOtherSubjectFromPhotoTraitsPhenotypeDetected = self->_isOtherSubjectFromPhotoTraitsPhenotypeDetected;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v107.receiver = self;
  v107.super_class = BMMomentsEventDataEventBundleClusterMetadata;
  v5 = [(BMEventBase *)&v107 init];
  if (!v5)
  {
    goto LABEL_196;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v108 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v108 & 0x7F) << v7;
        if ((v108 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v5->_hasIsFiltered = 1;
          while (1)
          {
            v108 = 0;
            v18 = [fromCopy position] + 1;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v15;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v15 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isFiltered;
            v23 = v16++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isFiltered;
          goto LABEL_191;
        case 2u:
          v74 = 0;
          v75 = 0;
          v17 = 0;
          v5->_hasIsTopLevelActivityTypePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v76 = [fromCopy position] + 1;
            if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v74;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v74 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTopLevelActivityTypePhenotypeDetected;
            v23 = v75++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTopLevelActivityTypePhenotypeDetected;
          goto LABEL_191;
        case 3u:
          v54 = 0;
          v55 = 0;
          v17 = 0;
          v5->_hasIsSecondLevelActivityTypePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v56 = [fromCopy position] + 1;
            if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v54;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v54 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSecondLevelActivityTypePhenotypeDetected;
            v23 = v55++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSecondLevelActivityTypePhenotypeDetected;
          goto LABEL_191;
        case 4u:
          v64 = 0;
          v65 = 0;
          v17 = 0;
          v5->_hasIsWeekendPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v66 = [fromCopy position] + 1;
            if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v64;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v64 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isWeekendPhenotypeDetected;
            v23 = v65++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isWeekendPhenotypeDetected;
          goto LABEL_191;
        case 5u:
          v39 = 0;
          v40 = 0;
          v17 = 0;
          v5->_hasIsTimeTagPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v41 = [fromCopy position] + 1;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v39;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v39 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeTagPhenotypeDetected;
            v23 = v40++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeTagPhenotypeDetected;
          goto LABEL_191;
        case 6u:
          v79 = 0;
          v80 = 0;
          v17 = 0;
          v5->_hasIsDayOfWeekPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v81 = [fromCopy position] + 1;
            if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v79;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v79 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isDayOfWeekPhenotypeDetected;
            v23 = v80++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isDayOfWeekPhenotypeDetected;
          goto LABEL_191;
        case 7u:
          v89 = 0;
          v90 = 0;
          v17 = 0;
          v5->_hasIsPlaceNamePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v91 = [fromCopy position] + 1;
            if (v91 >= [fromCopy position] && (v92 = objc_msgSend(fromCopy, "position") + 1, v92 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v89;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v89 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPlaceNamePhenotypeDetected;
            v23 = v90++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPlaceNamePhenotypeDetected;
          goto LABEL_191;
        case 8u:
          v69 = 0;
          v70 = 0;
          v17 = 0;
          v5->_hasIsCombinedPlacePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v71 = [fromCopy position] + 1;
            if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v69;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v69 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isCombinedPlacePhenotypeDetected;
            v23 = v70++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isCombinedPlacePhenotypeDetected;
          goto LABEL_191;
        case 9u:
          v99 = 0;
          v100 = 0;
          v17 = 0;
          v5->_hasIsEnclosingAreaNamePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v101 = [fromCopy position] + 1;
            if (v101 >= [fromCopy position] && (v102 = objc_msgSend(fromCopy, "position") + 1, v102 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v99;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v99 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isEnclosingAreaNamePhenotypeDetected;
            v23 = v100++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isEnclosingAreaNamePhenotypeDetected;
          goto LABEL_191;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v17 = 0;
          v5->_hasIsPersonsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v49;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v49 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonsPhenotypeDetected;
            v23 = v50++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonsPhenotypeDetected;
          goto LABEL_191;
        case 0xBu:
          v94 = 0;
          v95 = 0;
          v17 = 0;
          v5->_hasIsPersonRelationshipPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v96 = [fromCopy position] + 1;
            if (v96 >= [fromCopy position] && (v97 = objc_msgSend(fromCopy, "position") + 1, v97 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v94;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v94 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonRelationshipPhenotypeDetected;
            v23 = v95++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonRelationshipPhenotypeDetected;
          goto LABEL_191;
        case 0xCu:
          v34 = 0;
          v35 = 0;
          v17 = 0;
          v5->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data13 = [fromCopy data];
              [data13 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v34;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v34 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isActivityTypeFromPhotoTraitsPhenotypeDetected;
            v23 = v35++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isActivityTypeFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0xDu:
          v44 = 0;
          v45 = 0;
          v17 = 0;
          v5->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data14 = [fromCopy data];
              [data14 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v44;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v44 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeContextFromPhotoTraitsPhenotypeDetected;
            v23 = v45++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0xEu:
          v84 = 0;
          v85 = 0;
          v17 = 0;
          v5->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v86 = [fromCopy position] + 1;
            if (v86 >= [fromCopy position] && (v87 = objc_msgSend(fromCopy, "position") + 1, v87 <= objc_msgSend(fromCopy, "length")))
            {
              data15 = [fromCopy data];
              [data15 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v84;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v84 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isLocationContextFromPhotoTraitsPhenotypeDetected;
            v23 = v85++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isLocationContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0xFu:
          v29 = 0;
          v30 = 0;
          v17 = 0;
          v5->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v31 = [fromCopy position] + 1;
            if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
            {
              data16 = [fromCopy data];
              [data16 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v29;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v29 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSocialContextFromPhotoTraitsPhenotypeDetected;
            v23 = v30++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSocialContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0x10u:
          v59 = 0;
          v60 = 0;
          v17 = 0;
          v5->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data17 = [fromCopy data];
              [data17 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v59;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v59 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isExtraContextFromPhotoTraitsPhenotypeDetected;
            v23 = v60++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isExtraContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0x11u:
          v24 = 0;
          v25 = 0;
          v17 = 0;
          v5->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected = 1;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_195;
          }

          goto LABEL_193;
      }

      while (1)
      {
        v108 = 0;
        v26 = [fromCopy position] + 1;
        if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
        {
          data18 = [fromCopy data];
          [data18 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v17 |= (v108 & 0x7F) << v24;
        if ((v108 & 0x80) == 0)
        {
          break;
        }

        LOBYTE(v21) = 0;
        v24 += 7;
        v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isOtherSubjectFromPhotoTraitsPhenotypeDetected;
        v23 = v25++ > 8;
        if (v23)
        {
          goto LABEL_192;
        }
      }

      v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isOtherSubjectFromPhotoTraitsPhenotypeDetected;
LABEL_191:
      v21 = (v17 != 0) & ~[fromCopy hasError];
LABEL_192:
      *(&v5->super.super.isa + *v22) = v21;
LABEL_193:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_195:
    v105 = 0;
  }

  else
  {
LABEL_196:
    v105 = v5;
  }

  return v105;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isFiltered](self, "isFiltered")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTopLevelActivityTypePhenotypeDetected](self, "isTopLevelActivityTypePhenotypeDetected")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSecondLevelActivityTypePhenotypeDetected](self, "isSecondLevelActivityTypePhenotypeDetected")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isWeekendPhenotypeDetected](self, "isWeekendPhenotypeDetected")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeTagPhenotypeDetected](self, "isTimeTagPhenotypeDetected")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isDayOfWeekPhenotypeDetected](self, "isDayOfWeekPhenotypeDetected")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPlaceNamePhenotypeDetected](self, "isPlaceNamePhenotypeDetected")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isCombinedPlacePhenotypeDetected](self, "isCombinedPlacePhenotypeDetected")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isEnclosingAreaNamePhenotypeDetected](self, "isEnclosingAreaNamePhenotypeDetected")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonsPhenotypeDetected](self, "isPersonsPhenotypeDetected")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonRelationshipPhenotypeDetected](self, "isPersonRelationshipPhenotypeDetected")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isActivityTypeFromPhotoTraitsPhenotypeDetected](self, "isActivityTypeFromPhotoTraitsPhenotypeDetected")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeContextFromPhotoTraitsPhenotypeDetected](self, "isTimeContextFromPhotoTraitsPhenotypeDetected")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isLocationContextFromPhotoTraitsPhenotypeDetected](self, "isLocationContextFromPhotoTraitsPhenotypeDetected")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSocialContextFromPhotoTraitsPhenotypeDetected](self, "isSocialContextFromPhotoTraitsPhenotypeDetected")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isExtraContextFromPhotoTraitsPhenotypeDetected](self, "isExtraContextFromPhotoTraitsPhenotypeDetected")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "isOtherSubjectFromPhotoTraitsPhenotypeDetected")}];
  v20 = [v19 initWithFormat:@"BMMomentsEventDataEventBundleClusterMetadata with isFiltered: %@, isTopLevelActivityTypePhenotypeDetected: %@, isSecondLevelActivityTypePhenotypeDetected: %@, isWeekendPhenotypeDetected: %@, isTimeTagPhenotypeDetected: %@, isDayOfWeekPhenotypeDetected: %@, isPlaceNamePhenotypeDetected: %@, isCombinedPlacePhenotypeDetected: %@, isEnclosingAreaNamePhenotypeDetected: %@, isPersonsPhenotypeDetected: %@, isPersonRelationshipPhenotypeDetected: %@, isActivityTypeFromPhotoTraitsPhenotypeDetected: %@, isTimeContextFromPhotoTraitsPhenotypeDetected: %@, isLocationContextFromPhotoTraitsPhenotypeDetected: %@, isSocialContextFromPhotoTraitsPhenotypeDetected: %@, isExtraContextFromPhotoTraitsPhenotypeDetected: %@, isOtherSubjectFromPhotoTraitsPhenotypeDetected: %@", v22, v21, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v5, v6];

  return v20;
}

- (BMMomentsEventDataEventBundleClusterMetadata)initWithIsFiltered:(id)filtered isTopLevelActivityTypePhenotypeDetected:(id)detected isSecondLevelActivityTypePhenotypeDetected:(id)phenotypeDetected isWeekendPhenotypeDetected:(id)weekendPhenotypeDetected isTimeTagPhenotypeDetected:(id)tagPhenotypeDetected isDayOfWeekPhenotypeDetected:(id)weekPhenotypeDetected isPlaceNamePhenotypeDetected:(id)namePhenotypeDetected isCombinedPlacePhenotypeDetected:(id)self0 isEnclosingAreaNamePhenotypeDetected:(id)self1 isPersonsPhenotypeDetected:(id)self2 isPersonRelationshipPhenotypeDetected:(id)self3 isActivityTypeFromPhotoTraitsPhenotypeDetected:(id)self4 isTimeContextFromPhotoTraitsPhenotypeDetected:(id)self5 isLocationContextFromPhotoTraitsPhenotypeDetected:(id)self6 isSocialContextFromPhotoTraitsPhenotypeDetected:(id)self7 isExtraContextFromPhotoTraitsPhenotypeDetected:(id)self8 isOtherSubjectFromPhotoTraitsPhenotypeDetected:(id)self9
{
  filteredCopy = filtered;
  detectedCopy = detected;
  phenotypeDetectedCopy = phenotypeDetected;
  weekendPhenotypeDetectedCopy = weekendPhenotypeDetected;
  tagPhenotypeDetectedCopy = tagPhenotypeDetected;
  weekPhenotypeDetectedCopy = weekPhenotypeDetected;
  namePhenotypeDetectedCopy = namePhenotypeDetected;
  placePhenotypeDetectedCopy = placePhenotypeDetected;
  areaNamePhenotypeDetectedCopy = areaNamePhenotypeDetected;
  personsPhenotypeDetectedCopy = personsPhenotypeDetected;
  relationshipPhenotypeDetectedCopy = relationshipPhenotypeDetected;
  traitsPhenotypeDetectedCopy = traitsPhenotypeDetected;
  photoTraitsPhenotypeDetectedCopy = photoTraitsPhenotypeDetected;
  fromPhotoTraitsPhenotypeDetectedCopy = fromPhotoTraitsPhenotypeDetected;
  contextFromPhotoTraitsPhenotypeDetectedCopy = contextFromPhotoTraitsPhenotypeDetected;
  extraContextFromPhotoTraitsPhenotypeDetectedCopy = extraContextFromPhotoTraitsPhenotypeDetected;
  subjectFromPhotoTraitsPhenotypeDetectedCopy = subjectFromPhotoTraitsPhenotypeDetected;
  v44.receiver = self;
  v44.super_class = BMMomentsEventDataEventBundleClusterMetadata;
  v33 = [(BMEventBase *)&v44 init];
  if (v33)
  {
    v33->_dataVersion = [objc_opt_class() latestDataVersion];
    if (filteredCopy)
    {
      v33->_hasIsFiltered = 1;
      v33->_isFiltered = [filteredCopy BOOLValue];
    }

    else
    {
      v33->_hasIsFiltered = 0;
      v33->_isFiltered = 0;
    }

    if (detectedCopy)
    {
      v33->_hasIsTopLevelActivityTypePhenotypeDetected = 1;
      v33->_isTopLevelActivityTypePhenotypeDetected = [detectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsTopLevelActivityTypePhenotypeDetected = 0;
      v33->_isTopLevelActivityTypePhenotypeDetected = 0;
    }

    if (phenotypeDetectedCopy)
    {
      v33->_hasIsSecondLevelActivityTypePhenotypeDetected = 1;
      v33->_isSecondLevelActivityTypePhenotypeDetected = [phenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsSecondLevelActivityTypePhenotypeDetected = 0;
      v33->_isSecondLevelActivityTypePhenotypeDetected = 0;
    }

    if (weekendPhenotypeDetectedCopy)
    {
      v33->_hasIsWeekendPhenotypeDetected = 1;
      v33->_isWeekendPhenotypeDetected = [weekendPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsWeekendPhenotypeDetected = 0;
      v33->_isWeekendPhenotypeDetected = 0;
    }

    if (tagPhenotypeDetectedCopy)
    {
      v33->_hasIsTimeTagPhenotypeDetected = 1;
      v33->_isTimeTagPhenotypeDetected = [tagPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsTimeTagPhenotypeDetected = 0;
      v33->_isTimeTagPhenotypeDetected = 0;
    }

    if (weekPhenotypeDetectedCopy)
    {
      v33->_hasIsDayOfWeekPhenotypeDetected = 1;
      v33->_isDayOfWeekPhenotypeDetected = [weekPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsDayOfWeekPhenotypeDetected = 0;
      v33->_isDayOfWeekPhenotypeDetected = 0;
    }

    if (namePhenotypeDetectedCopy)
    {
      v33->_hasIsPlaceNamePhenotypeDetected = 1;
      v33->_isPlaceNamePhenotypeDetected = [namePhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsPlaceNamePhenotypeDetected = 0;
      v33->_isPlaceNamePhenotypeDetected = 0;
    }

    if (placePhenotypeDetectedCopy)
    {
      v33->_hasIsCombinedPlacePhenotypeDetected = 1;
      v33->_isCombinedPlacePhenotypeDetected = [placePhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsCombinedPlacePhenotypeDetected = 0;
      v33->_isCombinedPlacePhenotypeDetected = 0;
    }

    if (areaNamePhenotypeDetectedCopy)
    {
      v33->_hasIsEnclosingAreaNamePhenotypeDetected = 1;
      v33->_isEnclosingAreaNamePhenotypeDetected = [areaNamePhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsEnclosingAreaNamePhenotypeDetected = 0;
      v33->_isEnclosingAreaNamePhenotypeDetected = 0;
    }

    if (personsPhenotypeDetectedCopy)
    {
      v33->_hasIsPersonsPhenotypeDetected = 1;
      v33->_isPersonsPhenotypeDetected = [personsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsPersonsPhenotypeDetected = 0;
      v33->_isPersonsPhenotypeDetected = 0;
    }

    if (relationshipPhenotypeDetectedCopy)
    {
      v33->_hasIsPersonRelationshipPhenotypeDetected = 1;
      v33->_isPersonRelationshipPhenotypeDetected = [relationshipPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsPersonRelationshipPhenotypeDetected = 0;
      v33->_isPersonRelationshipPhenotypeDetected = 0;
    }

    if (traitsPhenotypeDetectedCopy)
    {
      v33->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isActivityTypeFromPhotoTraitsPhenotypeDetected = [traitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isActivityTypeFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (photoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isTimeContextFromPhotoTraitsPhenotypeDetected = [photoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isTimeContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (fromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isLocationContextFromPhotoTraitsPhenotypeDetected = [fromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isLocationContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (contextFromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isSocialContextFromPhotoTraitsPhenotypeDetected = [contextFromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isSocialContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (extraContextFromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isExtraContextFromPhotoTraitsPhenotypeDetected = [extraContextFromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isExtraContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (subjectFromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isOtherSubjectFromPhotoTraitsPhenotypeDetected = [subjectFromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isOtherSubjectFromPhotoTraitsPhenotypeDetected = 0;
    }
  }

  return v33;
}

+ (id)protoFields
{
  v22[17] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFiltered" number:1 type:12 subMessageClass:0];
  v22[0] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTopLevelActivityTypePhenotypeDetected" number:2 type:12 subMessageClass:0];
  v22[1] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSecondLevelActivityTypePhenotypeDetected" number:3 type:12 subMessageClass:0];
  v22[2] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isWeekendPhenotypeDetected" number:4 type:12 subMessageClass:0];
  v22[3] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimeTagPhenotypeDetected" number:5 type:12 subMessageClass:0];
  v22[4] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDayOfWeekPhenotypeDetected" number:6 type:12 subMessageClass:0];
  v22[5] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPlaceNamePhenotypeDetected" number:7 type:12 subMessageClass:0];
  v22[6] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCombinedPlacePhenotypeDetected" number:8 type:12 subMessageClass:0];
  v22[7] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEnclosingAreaNamePhenotypeDetected" number:9 type:12 subMessageClass:0];
  v22[8] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPersonsPhenotypeDetected" number:10 type:12 subMessageClass:0];
  v22[9] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPersonRelationshipPhenotypeDetected" number:11 type:12 subMessageClass:0];
  v22[10] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActivityTypeFromPhotoTraitsPhenotypeDetected" number:12 type:12 subMessageClass:0];
  v22[11] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimeContextFromPhotoTraitsPhenotypeDetected" number:13 type:12 subMessageClass:0];
  v22[12] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLocationContextFromPhotoTraitsPhenotypeDetected" number:14 type:12 subMessageClass:0];
  v22[13] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSocialContextFromPhotoTraitsPhenotypeDetected" number:15 type:12 subMessageClass:0];
  v22[14] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isExtraContextFromPhotoTraitsPhenotypeDetected" number:16 type:12 subMessageClass:0];
  v22[15] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOtherSubjectFromPhotoTraitsPhenotypeDetected" number:17 type:12 subMessageClass:0];
  v22[16] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v22[17] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFiltered" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTopLevelActivityTypePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSecondLevelActivityTypePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isWeekendPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimeTagPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDayOfWeekPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPlaceNamePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCombinedPlacePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEnclosingAreaNamePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPersonsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPersonRelationshipPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActivityTypeFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimeContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLocationContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSocialContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isExtraContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOtherSubjectFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v22[0] = v21;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v16;
  v22[6] = v15;
  v22[7] = v2;
  v22[8] = v3;
  v22[9] = v4;
  v22[10] = v5;
  v22[11] = v14;
  v22[12] = v6;
  v22[13] = v7;
  v22[14] = v13;
  v22[15] = v8;
  v22[16] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
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

    v8 = [[BMMomentsEventDataEventBundleClusterMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end