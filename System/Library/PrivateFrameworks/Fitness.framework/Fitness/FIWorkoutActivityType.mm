@interface FIWorkoutActivityType
+ (BOOL)isEffectivelyIndoorForWorkout:(id)a3;
+ (BOOL)shouldDisambiguateOnLocationType:(unint64_t)a3;
+ (FIWorkoutActivityType)activityTypeWithWorkout:(id)a3;
+ (id)activityTypeFromUniqueIdentifier:(id)a3;
+ (id)allActivityTypes;
+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4 activityMoveMode:(int64_t)a5;
+ (id)deprecatedActivityTypes;
+ (id)effectiveActivityTypeWithWorkout:(id)a3;
+ (id)gymKitCapableActivityTypes;
+ (id)nonOptimizedActivityTypes;
+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4;
+ (id)otherWorkoutActivityTypes;
+ (id)phoneAndHeartRateMonitorSupportedActivityTypes;
+ (id)phoneOnlySupportedActivityTypes;
+ (id)swimmingOptimizedActivityTypes;
+ (id)swimmingOtherActivityTypes;
+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4;
+ (id)wheelchairActivityTypes;
+ (unint64_t)mapWheelchairUserActivityType:(unint64_t)a3 isWheelchairUser:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresDisambiguation;
- (BOOL)requiresLocationDisambiguation;
- (BOOL)supportsSafetyCheckInPrompt;
- (BOOL)supportsWorkoutVoiceMotivationBreakthroughMoments;
- (BOOL)supportsWorkoutVoiceMotivationProgressMoments;
- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 location:(int64_t)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6 auxiliaryTypeIdentifier:(unint64_t)a7;
- (FIWorkoutActivityType)initWithCoder:(id)a3;
- (HKQuantity)lapLength;
- (NSString)legacyUniqueIdentifier;
- (NSString)uniqueIdentifier;
- (id)activityTypeByAddingLapLength:(double)a3;
- (id)activityTypePlistKey;
- (id)description;
- (id)localizationKey;
- (id)localizedName;
- (id)localizedNameComponents;
- (id)localizedNamePlural;
- (int64_t)swimmingLocationType;
- (unint64_t)effectiveTypeIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FIWorkoutActivityType

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FIWorkoutActivityType *)self localizedName];
  location = self->_location;
  v6 = _HKWorkoutSessionLocationTypeName();
  v7 = v6;
  v8 = @"NO";
  if (self->_isPartOfMultiSport)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"FIWorkoutActivityType(type=%@, location=%@, partOfMultisport=%@, metadata=%@)", v4, v6, v8, self->_metadata];

  return v9;
}

- (unint64_t)effectiveTypeIdentifier
{
  identifier = self->_identifier;
  if (identifier != 3000)
  {
    return identifier;
  }

  result = self->_auxiliaryTypeIdentifier;
  if (result == *MEMORY[0x277CCE1E0])
  {
    return identifier;
  }

  return result;
}

- (int64_t)swimmingLocationType
{
  v2 = [(FIWorkoutActivityType *)self metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC510]];
  v4 = [v3 integerValue];

  return v4;
}

- (id)localizedName
{
  v3 = [(FIWorkoutActivityType *)self requiresDisambiguation];
  v4 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  if (v3)
  {
    FILocalizedNameForIndoorAgnosticActivityType();
  }

  else
  {
    FILocalizedNameForActivityType(v4, [(FIWorkoutActivityType *)self swimmingLocationType], self->_isIndoor);
  }
  v5 = ;

  return v5;
}

- (BOOL)requiresDisambiguation
{
  if ([(FIWorkoutActivityType *)self requiresLocationDisambiguation])
  {
    return 1;
  }

  return [(FIWorkoutActivityType *)self requiresSwimmingLocationDisambiguation];
}

- (BOOL)requiresLocationDisambiguation
{
  v3 = [FIWorkoutActivityType shouldDisambiguateOnLocationType:[(FIWorkoutActivityType *)self effectiveTypeIdentifier]];
  if (v3)
  {
    LOBYTE(v3) = [(FIWorkoutActivityType *)self location]== 1;
  }

  return v3;
}

- (NSString)uniqueIdentifier
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutActivityType effectiveTypeIdentifier](self, "effectiveTypeIdentifier")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[FIWorkoutActivityType isIndoor](self, "isIndoor")}];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIWorkoutActivityType swimmingLocationType](self, "swimmingLocationType")}];
  v7 = [v3 stringWithFormat:@"%@=%@%@=%@;%@=%@", @"type", v4, @"isIndoor", v5, @"swimmingLocationType", v6];;

  if ([(FIWorkoutActivityType *)self isPartOfMultiSport])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=YES", @"isPartOfMultiSport"];;
    [v7 appendString:v8];
  }

  return v7;
}

+ (FIWorkoutActivityType)activityTypeWithWorkout:(id)a3
{
  v3 = a3;
  v4 = [FIWorkoutActivityType alloc];
  v5 = [v3 workoutActivityType];
  v6 = [v3 metadata];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v8 = [v7 BOOLValue];

  v9 = [v3 metadata];

  v10 = [(FIWorkoutActivityType *)v4 initWithActivityTypeIdentifier:v5 isIndoor:v8 metadata:v9];

  return v10;
}

+ (id)effectiveActivityTypeWithWorkout:(id)a3
{
  v3 = a3;
  v4 = [FIWorkoutActivityType isEffectivelyIndoorForWorkout:v3];
  v5 = [FIWorkoutActivityType alloc];
  v6 = [v3 workoutActivityType];
  v7 = [v3 metadata];

  v8 = [(FIWorkoutActivityType *)v5 initWithActivityTypeIdentifier:v6 isIndoor:v4 metadata:v7];

  return v8;
}

+ (BOOL)isEffectivelyIndoorForWorkout:(id)a3
{
  v3 = a3;
  v4 = [v3 sourceRevision];
  v5 = [v4 source];
  v6 = [v5 _hasFirstPartyBundleID];

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [v3 workoutActivityType];
  if (v7 != 35 && v7 != 25)
  {
    goto LABEL_9;
  }

  v20 = 0uLL;
  v21 = 0;
  HKNSOperatingSystemVersionFromString();
  v18 = 0uLL;
  v19 = 0;
  v8 = [v3 sourceRevision];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0;
  }

  FIEffectiveOperatingSystemVersion(&v16, &v18);

  v16 = v20;
  v17 = v21;
  v14 = v18;
  v15 = v19;
  if (HKNSOperatingSystemVersionCompare() == 1)
  {
    v10 = 1;
  }

  else
  {
LABEL_9:
    v11 = [v3 metadata];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
    v10 = [v12 BOOLValue];
  }

  return v10;
}

- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 location:(int64_t)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6 auxiliaryTypeIdentifier:(unint64_t)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v30.receiver = self;
  v30.super_class = FIWorkoutActivityType;
  v13 = [(FIWorkoutActivityType *)&v30 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = a3;
    v13->_auxiliaryTypeIdentifier = a7;
    v13->_isPartOfMultiSport = a5;
    v13->_location = a4;
    v13->_isIndoor = a4 == 2;
    if (v12 && [v12 count])
    {
      v15 = *MEMORY[0x277CCC510];
      v35[0] = *MEMORY[0x277CCC4D0];
      v35[1] = v15;
      v16 = *MEMORY[0x277CCC530];
      v35[2] = *MEMORY[0x277CCC518];
      v35[3] = v16;
      v35[4] = @"BackdatedStartDate";
      v35[5] = @"PredictionSessionUUID";
      v35[6] = @"_HKPrivateSeymourMediaType";
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:7];
      v18 = v12;
      v19 = [MEMORY[0x277CBEB38] dictionary];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = v17;
      v21 = [(NSDictionary *)v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v31 + 1) + 8 * i);
            v26 = [v18 objectForKeyedSubscript:v25];
            if (v26)
            {
              [(NSDictionary *)v19 setObject:v26 forKeyedSubscript:v25];
            }
          }

          v22 = [(NSDictionary *)v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v22);
      }

      metadata = v14->_metadata;
      v14->_metadata = v19;
    }

    else
    {
      v20 = v14->_metadata;
      v14->_metadata = MEMORY[0x277CBEC10];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)activityTypeFromUniqueIdentifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];;
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v22 = v3;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v8 = *v27;
    while (2)
    {
      v9 = v6;
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v9);
        }

        v11 = [*(*(&v26 + 1) + 8 * i) componentsSeparatedByString:{@"=", v22}];
        if ([v11 count] != 2)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC330];
          v3 = v22;
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            [(FIWorkoutActivityType *)v22 activityTypeFromUniqueIdentifier:v17];
          }

          v18 = 0;
          v6 = v9;
          goto LABEL_31;
        }

        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v11 objectAtIndexedSubscript:1];
        if ([v12 isEqualToString:@"type"])
        {
          v25 = [v13 integerValue];
        }

        if ([v12 isEqualToString:@"isIndoor"])
        {
          LOBYTE(v24) = [v13 BOOLValue];
        }

        if ([v12 isEqualToString:@"isOther"])
        {
          [v13 BOOLValue];
        }

        if ([v12 isEqualToString:@"swimmingLocationType"])
        {
          v23 = [v13 integerValue];
        }

        if ([v12 isEqualToString:@"isPartOfMultiSport"])
        {
          BYTE4(v24) = [v13 BOOLValue];
        }
      }

      v6 = v9;
      v7 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (v23)
    {
      v30 = *MEMORY[0x277CCC510];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v31 = v14;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v3 = v22;
      v15 = v25;
      LOBYTE(v7) = v24;
      v16 = BYTE4(v24);
      goto LABEL_25;
    }

    v9 = 0;
    v3 = v22;
    v15 = v25;
    LOBYTE(v7) = v24;
    v16 = BYTE4(v24);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v9 = 0;
    v14 = v6;
LABEL_25:
  }

  if (_HKWorkoutActivityTypeIsValid())
  {
    v18 = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:v15 isIndoor:v7 & 1 isPartOfMultiSport:v16 & 1 metadata:v9 auxiliaryTypeIdentifier:*MEMORY[0x277CCE1E0]];
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      [(FIWorkoutActivityType *)v3 activityTypeFromUniqueIdentifier:v19];
    }

    v18 = 0;
  }

LABEL_31:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInteger:-[FIWorkoutActivityType identifier](self forKey:{"identifier"), @"FIUIWorkoutActivityTypeTrueIdentifier"}];
  v4 = +[FIWorkoutActivityType otherWorkoutActivityTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutActivityType identifier](self, "identifier")}];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    [v9 encodeInteger:3000 forKey:@"FIUIWorkoutActivityTypeIdentifier"];
    v7 = [(FIWorkoutActivityType *)self identifier];
  }

  else
  {
    [v9 encodeInteger:-[FIWorkoutActivityType identifier](self forKey:{"identifier"), @"FIUIWorkoutActivityTypeIdentifier"}];
    v7 = *MEMORY[0x277CCE1E0];
  }

  [v9 encodeInteger:v7 forKey:@"NLSessionAuxiliaryActivityTypeIdentifier"];
  [v9 encodeBool:-[FIWorkoutActivityType isIndoor](self forKey:{"isIndoor"), @"FIUIWorkoutActivityTypeIsIndoor"}];
  v8 = [(FIWorkoutActivityType *)self metadata];
  [v9 encodeObject:v8 forKey:@"FIUIWorkoutActivityTypeMetadata"];

  [v9 encodeBool:-[FIWorkoutActivityType isPartOfMultiSport](self forKey:{"isPartOfMultiSport"), @"FIUIWorkoutActivityTypePartOfMultisport"}];
  [v9 encodeInteger:-[FIWorkoutActivityType location](self forKey:{"location"), @"FIUIWorkoutActivityTypeLocation"}];
}

- (FIWorkoutActivityType)initWithCoder:(id)a3
{
  v18[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FIWorkoutActivityType;
  v5 = [(FIWorkoutActivityType *)&v17 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v5->_identifier = [v4 decodeIntegerForKey:@"FIUIWorkoutActivityTypeIdentifier"];
  v5->_isIndoor = [v4 decodeBoolForKey:@"FIUIWorkoutActivityTypeIsIndoor"];
  v5->_auxiliaryTypeIdentifier = [v4 decodeIntegerForKey:@"NLSessionAuxiliaryActivityTypeIdentifier"];
  if ([v4 containsValueForKey:@"FIUIWorkoutActivityTypeTrueIdentifier"])
  {
    v5->_identifier = [v4 decodeIntegerForKey:@"FIUIWorkoutActivityTypeTrueIdentifier"];
    v6 = *MEMORY[0x277CCE1E0];
  }

  else
  {
    auxiliaryTypeIdentifier = v5->_auxiliaryTypeIdentifier;
    v6 = *MEMORY[0x277CCE1E0];
    if (auxiliaryTypeIdentifier == *MEMORY[0x277CCE1E0])
    {
      goto LABEL_7;
    }

    v5->_identifier = auxiliaryTypeIdentifier;
  }

  v5->_auxiliaryTypeIdentifier = v6;
LABEL_7:
  v8 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v18[3] = objc_opt_class();
  v18[4] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"FIUIWorkoutActivityTypeMetadata"];
  metadata = v5->_metadata;
  v5->_metadata = v11;

  v5->_isPartOfMultiSport = [v4 decodeBoolForKey:@"FIUIWorkoutActivityTypePartOfMultisport"];
  v13 = [v4 decodeIntegerForKey:@"FIUIWorkoutActivityTypeLocation"];
  v5->_location = v13;
  if (!v13)
  {
    v14 = 2;
    if (!v5->_isIndoor)
    {
      v14 = 3;
    }

    v5->_location = v14;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HKQuantity)lapLength
{
  v2 = [(FIWorkoutActivityType *)self metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4D0]];

  return v3;
}

- (id)localizationKey
{
  v3 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  isIndoor = self->_isIndoor;

  return FILocalizationKeyForHKWorkoutActivityTypeIsLocationAgnosticAndIsIndoor(v3, 0, isIndoor);
}

- (id)localizedNamePlural
{
  v3 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  v4 = [(FIWorkoutActivityType *)self swimmingLocationType];
  isIndoor = self->_isIndoor;

  return FILocalizedNameForActivityTypePlural(v3, v4, isIndoor);
}

- (id)localizedNameComponents
{
  v3 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:*MEMORY[0x277CCC510]];
  v4 = [v3 integerValue];

  v5 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  isIndoor = self->_isIndoor;

  return FILocalizedActivityNameComponentsWithFormatting(v5, v4, isIndoor, 0);
}

- (id)activityTypeByAddingLapLength:(double)a3
{
  if (a3 > 2.22044605e-16 && [(FIWorkoutActivityType *)self identifier]== 46)
  {
    v5 = [(FIWorkoutActivityType *)self metadata];
    if (v5)
    {
      v6 = [(FIWorkoutActivityType *)self metadata];
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    v9 = MEMORY[0x277CCD7E8];
    v10 = [MEMORY[0x277CCDAB0] meterUnit];
    v11 = [v9 quantityWithUnit:v10 doubleValue:a3];
    [v7 setObject:v11 forKey:*MEMORY[0x277CCC4D0]];

    v8 = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:[(FIWorkoutActivityType *)self identifier] isIndoor:[(FIWorkoutActivityType *)self isIndoor] isPartOfMultiSport:[(FIWorkoutActivityType *)self isPartOfMultiSport] metadata:v7];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4 activityMoveMode:(int64_t)a5
{
  if (a5 == 2)
  {
    v5 = FIFitnessJuniorDefaultActivityTypes();
  }

  else if (a5 == 1)
  {
    v5 = FIStandardFitnessDefaultActivityTypes(a3, a4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)gymKitCapableActivityTypes
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  v13[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  v13[1] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  v13[2] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:1];
  v13[3] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  v13[4] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:1];
  v13[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v9 = gymKitCapableActivityTypes_activityTypes;
  gymKitCapableActivityTypes_activityTypes = v8;

  v10 = gymKitCapableActivityTypes_activityTypes;
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__FIWorkoutActivityType_optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v9 = a4;
  if (optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__onceToken != -1)
  {
    dispatch_once(&optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__onceToken, block);
  }

  v5 = &optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
  if (!v4)
  {
    v5 = &optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  }

  v6 = *v5;

  return v6;
}

void __88__FIWorkoutActivityType_optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke(uint64_t a1)
{
  v41[21] = *MEMORY[0x277D85DE8];
  v39 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0];
  v41[0] = v39;
  v38 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0];
  v41[1] = v38;
  v37 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:0];
  v41[2] = v37;
  v36 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  v41[3] = v36;
  v35 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  v41[4] = v35;
  v34 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  v41[5] = v34;
  v33 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:0];
  v41[6] = v33;
  v32 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:0];
  v41[7] = v32;
  v31 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:0];
  v41[8] = v31;
  v30 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:63 isIndoor:0];
  v41[9] = v30;
  v29 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:24 isIndoor:0];
  v41[10] = v29;
  v28 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:57 isIndoor:0];
  v41[11] = v28;
  v27 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:20 isIndoor:0];
  v41[12] = v27;
  v1 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:0];
  v41[13] = v1;
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:80 isIndoor:0];
  v41[14] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:59 isIndoor:0];
  v41[15] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:66 isIndoor:0];
  v41[16] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:72 isIndoor:0];
  v41[17] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:65 isIndoor:0];
  v41[18] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:82 isIndoor:0];
  v41[19] = v7;
  v8 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:3000 isIndoor:0];
  v41[20] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:21];
  v10 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes = v9;

  v11 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  v12 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  v13 = [v11 arrayByAddingObject:v12];
  v14 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes = v13;

  v15 = +[FIWorkoutActivityType wheelchairActivityTypes];
  v16 = [v15 arrayByAddingObjectsFromArray:optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes];
  v17 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
  optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes = v16;

  if (*(a1 + 32) == 1)
  {
    v18 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
    v19 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    v20 = [v18 arrayByAddingObjectsFromArray:v19];
    v21 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
    optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes = v20;

    v22 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
    v23 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    v24 = [v22 arrayByAddingObjectsFromArray:v23];
    v25 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
    optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)allActivityTypes
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = +[FIWorkoutActivityType otherWorkoutActivityTypes];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = +[FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:isIndoor:metadata:](FIWorkoutActivityType, "activityTypeWithHKWorkoutActivityTypeIdentifier:isIndoor:metadata:", [*(*(&v28 + 1) + 8 * i) integerValue], 0, 0);
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v22 = [FIWorkoutActivityType optimizedActivityTypesWithIsWheelchairUser:1 isSwimmingSupported:FIDeviceSupportsSwimming()];
  v10 = [v3 arrayByAddingObjectsFromArray:?];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * j);
        if (+[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", [v16 effectiveTypeIdentifier]))
        {
          v17 = -[FIWorkoutActivityType initWithActivityTypeIdentifier:isIndoor:]([FIWorkoutActivityType alloc], "initWithActivityTypeIdentifier:isIndoor:", [v16 effectiveTypeIdentifier], objc_msgSend(v16, "isIndoor") ^ 1);
          if (([v11 containsObject:v17] & 1) == 0)
          {
            [v23 addObject:v17];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }

  v18 = [v11 arrayByAddingObjectsFromArray:v23];
  v19 = [v18 mutableCopy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)otherWorkoutActivityTypes
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_285E6B0E8];
  [v2 addObjectsFromArray:&unk_285E6B100];
  [v2 addObjectsFromArray:&unk_285E6B118];
  if (FIDeviceSupportsSwimming())
  {
    [v2 addObjectsFromArray:&unk_285E6B130];
  }

  return v2;
}

+ (id)nonOptimizedActivityTypes
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [a1 otherWorkoutActivityTypes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) integerValue];
        v10 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:v9 isIndoor:0];
        [v3 addObject:v10];

        if ([FIWorkoutActivityType shouldDisambiguateOnLocationType:v9])
        {
          v11 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:v9 isIndoor:1];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4
{
  v6 = +[FIWorkoutActivityType deprecatedActivityTypes];
  if (!a4)
  {
    v7 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    v8 = +[FIWorkoutActivityType swimmingOtherActivityTypes];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];

    v10 = [v6 arrayByAddingObjectsFromArray:v9];

    v6 = v10;
  }

  if (!a3)
  {
    v11 = +[FIWorkoutActivityType wheelchairActivityTypes];
    v12 = [v6 arrayByAddingObjectsFromArray:v11];

    v6 = v12;
  }

  v13 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:84 isIndoor:0 metadata:0];
  v14 = [v6 arrayByAddingObject:v13];

  v15 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:82 isIndoor:0 metadata:0];
  v16 = [v14 arrayByAddingObject:v15];

  return v16;
}

+ (id)wheelchairActivityTypes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:70 isIndoor:0];
  v7[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:71 isIndoor:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)swimmingOptimizedActivityTypes
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCC510];
  v2 = v12;
  v13 = &unk_285E6A668;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:v3];
  v14[0] = v4;
  v10 = v2;
  v11 = &unk_285E6A680;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:v5];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)swimmingOtherActivityTypes
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:53 isIndoor:0 metadata:0];
  v9[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:84 isIndoor:0 metadata:0];
  v9[1] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:54 isIndoor:0 metadata:0];
  v9[2] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:55 isIndoor:0 metadata:0];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)phoneOnlySupportedActivityTypes
{
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0];
  v11[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0];
  v11[1] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:24 isIndoor:0];
  v11[2] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:70 isIndoor:0];
  v11[3] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:71 isIndoor:0];
  v11[4] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:0];
  v11[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)phoneAndHeartRateMonitorSupportedActivityTypes
{
  v51[44] = *MEMORY[0x277D85DE8];
  v50 = +[FIWorkoutActivityType phoneOnlySupportedActivityTypes];
  v49 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  v51[0] = v49;
  v48 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  v51[1] = v48;
  v47 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:0];
  v51[2] = v47;
  v46 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:0];
  v51[3] = v46;
  v45 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  v51[4] = v45;
  v44 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  v51[5] = v44;
  v43 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:63 isIndoor:0];
  v51[6] = v43;
  v42 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:0];
  v51[7] = v42;
  v41 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:65 isIndoor:0];
  v51[8] = v41;
  v40 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:20 isIndoor:0];
  v51[9] = v40;
  v39 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:59 isIndoor:0];
  v51[10] = v39;
  v38 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:66 isIndoor:0];
  v51[11] = v38;
  v37 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:57 isIndoor:0];
  v51[12] = v37;
  v36 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:80 isIndoor:0];
  v51[13] = v36;
  v35 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:72 isIndoor:0];
  v51[14] = v35;
  v34 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:61 isIndoor:0];
  v51[15] = v34;
  v33 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:67 isIndoor:0];
  v51[16] = v33;
  v32 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:21 isIndoor:0];
  v51[17] = v32;
  v31 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:60 isIndoor:0];
  v51[18] = v31;
  v30 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:0];
  v51[19] = v30;
  v29 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:31 isIndoor:0];
  v51[20] = v29;
  v28 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:39 isIndoor:0];
  v51[21] = v28;
  v27 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:2 isIndoor:0];
  v51[22] = v27;
  v26 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:58 isIndoor:0];
  v51[23] = v26;
  v25 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:8 isIndoor:0];
  v51[24] = v25;
  v24 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:9 isIndoor:0];
  v51[25] = v24;
  v23 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:11 isIndoor:0];
  v51[26] = v23;
  v22 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:19 isIndoor:0];
  v51[27] = v22;
  v21 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:76 isIndoor:0];
  v51[28] = v21;
  v20 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:62 isIndoor:0];
  v51[29] = v20;
  v19 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:74 isIndoor:0];
  v51[30] = v19;
  v18 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:64 isIndoor:0];
  v51[31] = v18;
  v16 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:29 isIndoor:0];
  v51[32] = v16;
  v15 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:73 isIndoor:0];
  v51[33] = v15;
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:3000 isIndoor:0];
  v51[34] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:32 isIndoor:0];
  v51[35] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:38 isIndoor:0];
  v51[36] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:40 isIndoor:0];
  v51[37] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:68 isIndoor:0];
  v51[38] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:69 isIndoor:0];
  v51[39] = v7;
  v8 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:49 isIndoor:0];
  v51[40] = v8;
  v9 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:50 isIndoor:0];
  v51[41] = v9;
  v10 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:39 isIndoor:1];
  v51[42] = v10;
  v11 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:33 isIndoor:0];
  v51[43] = v11;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:44];

  v12 = [v50 arrayByAddingObjectsFromArray:v17];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)deprecatedActivityTypes
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType alloc];
  v3 = [(FIWorkoutActivityType *)v2 initWithActivityTypeIdentifier:14 isIndoor:0 metadata:MEMORY[0x277CBEC10] auxiliaryTypeIdentifier:*MEMORY[0x277CCE1E0]];
  v11[0] = v3;
  v9 = *MEMORY[0x277CCC510];
  v10 = &unk_285E6A698;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:v4];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)legacyUniqueIdentifier
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutActivityType effectiveTypeIdentifier](self, "effectiveTypeIdentifier")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[FIWorkoutActivityType isCategorizedOtherWorkout](self, "isCategorizedOtherWorkout")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[FIWorkoutActivityType isIndoor](self, "isIndoor")}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIWorkoutActivityType swimmingLocationType](self, "swimmingLocationType")}];
  v8 = [v3 stringWithFormat:@"%@=%@%@=%@;%@=%@, %@=%@", @"type", v4, @"isOther", v5, @"isIndoor", v6, @"swimmingLocationType", v7];;

  if ([(FIWorkoutActivityType *)self isPartOfMultiSport])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=YES", @"isPartOfMultiSport"];;
    [v8 appendString:v9];
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = self->_identifier;
  v4 = 31 * ([(FIWorkoutActivityType *)self swimmingLocationType]- identifier + 32 * identifier);
  v5 = v4 + [(FIWorkoutActivityType *)self isPartOfMultiSport]+ 29791;
  if ([FIWorkoutActivityType shouldDisambiguateOnLocationType:[(FIWorkoutActivityType *)self effectiveTypeIdentifier]])
  {
    return 31 * v5 + [(FIWorkoutActivityType *)self isIndoor];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = [v4 identifier], v5 == -[FIWorkoutActivityType identifier](self, "identifier")) && (v6 = objc_msgSend(v4, "swimmingLocationType"), v6 == -[FIWorkoutActivityType swimmingLocationType](self, "swimmingLocationType")) && (v7 = objc_msgSend(v4, "isPartOfMultiSport"), v7 == -[FIWorkoutActivityType isPartOfMultiSport](self, "isPartOfMultiSport")))
  {
    if (+[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", [v4 effectiveTypeIdentifier]) || +[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", -[FIWorkoutActivityType effectiveTypeIdentifier](self, "effectiveTypeIdentifier")))
    {
      v10 = [v4 isIndoor];
      v8 = v10 ^ [(FIWorkoutActivityType *)self isIndoor]^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)shouldDisambiguateOnLocationType:(unint64_t)a3
{
  if (shouldDisambiguateOnLocationType__onceToken != -1)
  {
    +[FIWorkoutActivityType shouldDisambiguateOnLocationType:];
  }

  v4 = shouldDisambiguateOnLocationType__indoorOutdoorActivityTypes;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

void __58__FIWorkoutActivityType_shouldDisambiguateOnLocationType___block_invoke()
{
  v0 = shouldDisambiguateOnLocationType__indoorOutdoorActivityTypes;
  shouldDisambiguateOnLocationType__indoorOutdoorActivityTypes = &unk_285E6B148;
}

+ (unint64_t)mapWheelchairUserActivityType:(unint64_t)a3 isWheelchairUser:(BOOL)a4
{
  result = a3;
  if (a4)
  {
    if (a3 == 37)
    {
      return 71;
    }

    else if (a3 == 52)
    {
      return 70;
    }
  }

  return result;
}

- (id)activityTypePlistKey
{
  v3 = [(FIWorkoutActivityType *)self identifier];
  v4 = [(FIWorkoutActivityType *)self isIndoor];
  v5 = [(FIWorkoutActivityType *)self swimmingLocationType];

  return FIGeneralizedActivityTypeKey(v3, v4, v5);
}

- (BOOL)supportsSafetyCheckInPrompt
{
  v3 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  v4 = v3 - 9 > 0x3E || ((1 << (v3 - 9)) & 0x6418083874429511) == 0;
  if (!v4 || v3 == 82 || v3 == 74)
  {
    return ![(FIWorkoutActivityType *)self isIndoor];
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsWorkoutVoiceMotivationProgressMoments
{
  v3 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  if (v3 <= 0x3F && ((1 << v3) & 0x8004000000100000) != 0)
  {
    return 0;
  }

  return [(FIWorkoutActivityType *)self supportsWorkoutVoiceMotivation];
}

- (BOOL)supportsWorkoutVoiceMotivationBreakthroughMoments
{
  v3 = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  if (v3 <= 0x3F && ((1 << v3) & 0x8004000000100000) != 0)
  {
    return 0;
  }

  return [(FIWorkoutActivityType *)self supportsWorkoutVoiceMotivation];
}

+ (void)activityTypeFromUniqueIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Unable to parse property and value from uniqueIdentifier=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)activityTypeFromUniqueIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Unable to parse property and value from uniqueIdentifier=%@. Invalid activity identifier.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end