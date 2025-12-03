@interface MCPasswordPolicyPayload
- (MCPasswordPolicyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)filterForUserEnrollmentOutError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCPasswordPolicyPayload

- (MCPasswordPolicyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v85.receiver = self;
  v85.super_class = MCPasswordPolicyPayload;
  v9 = [(MCPayload *)&v85 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_54;
  }

  v84 = 0;
  v10 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"allowSimple" isRequired:0 outError:&v84];
  v11 = v84;
  isSimplePasscodeAllowed = v9->_isSimplePasscodeAllowed;
  v9->_isSimplePasscodeAllowed = v10;

  if (v11)
  {
    goto LABEL_49;
  }

  v83 = 0;
  v13 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"forcePIN" isRequired:0 outError:&v83];
  v11 = v83;
  isPasscodeRequired = v9->_isPasscodeRequired;
  v9->_isPasscodeRequired = v13;

  if (v11)
  {
    goto LABEL_49;
  }

  v82 = 0;
  v15 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"requireAlphanumeric" isRequired:0 outError:&v82];
  v11 = v82;
  isAlphanumericPasscodeRequired = v9->_isAlphanumericPasscodeRequired;
  v9->_isAlphanumericPasscodeRequired = v15;

  if (v11)
  {
    goto LABEL_49;
  }

  v81 = 0;
  v17 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"manualFetchingWhenRoaming" isRequired:0 outError:&v81];
  v11 = v81;
  isManualFetchingWhenRoaming = v9->_isManualFetchingWhenRoaming;
  v9->_isManualFetchingWhenRoaming = v17;

  if (v11)
  {
    goto LABEL_49;
  }

  v80 = 0;
  v19 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"minLength" isRequired:0 outError:&v80];
  v11 = v80;
  minLength = v9->_minLength;
  v9->_minLength = v19;

  if (v11)
  {
    goto LABEL_49;
  }

  v21 = v9->_minLength;
  if (v21)
  {
    intValue = [(NSNumber *)v21 intValue];
    v23 = v9->_minLength;
    if (intValue < 0)
    {
      v24 = &unk_1F1AA54D0;
    }

    else
    {
      if ([(NSNumber *)v23 intValue]< 17)
      {
        goto LABEL_13;
      }

      v23 = v9->_minLength;
      v24 = &unk_1F1AA54E8;
    }

    v9->_minLength = v24;
  }

LABEL_13:
  v79 = 0;
  v25 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxFailedAttempts" isRequired:0 outError:&v79];
  v11 = v79;
  maxFailedAttempts = v9->_maxFailedAttempts;
  v9->_maxFailedAttempts = v25;

  if (v11)
  {
LABEL_49:
    v57 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
    v58 = v57;
    if (error)
    {
      v59 = v57;
      *error = v58;
    }

    v60 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v61 = v60;
      v62 = objc_opt_class();
      v63 = v62;
      mCVerboseDescription = [v58 MCVerboseDescription];
      *buf = 138543618;
      v87 = v62;
      v88 = 2114;
      v89 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v61, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_54;
  }

  v27 = v9->_maxFailedAttempts;
  if (v27)
  {
    intValue2 = [(NSNumber *)v27 intValue];
    v29 = v9->_maxFailedAttempts;
    if (intValue2 >= 2)
    {
      if ([(NSNumber *)v29 intValue]< 12)
      {
        goto LABEL_20;
      }

      v29 = v9->_maxFailedAttempts;
      v30 = &unk_1F1AA5518;
    }

    else
    {
      v30 = &unk_1F1AA5500;
    }

    v9->_maxFailedAttempts = v30;
  }

LABEL_20:
  v78 = 0;
  v31 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxGracePeriod" isRequired:0 outError:&v78];
  v11 = v78;
  maxGracePeriodMinutes = v9->_maxGracePeriodMinutes;
  v9->_maxGracePeriodMinutes = v31;

  if (v11)
  {
    goto LABEL_49;
  }

  v33 = v9->_maxGracePeriodMinutes;
  if (!v33)
  {
    goto LABEL_27;
  }

  intValue3 = [(NSNumber *)v33 intValue];
  v35 = v9->_maxGracePeriodMinutes;
  if (intValue3 < 0)
  {
    v36 = &unk_1F1AA54D0;
  }

  else
  {
    if ([(NSNumber *)v35 intValue]< 241)
    {
      goto LABEL_27;
    }

    v35 = v9->_maxGracePeriodMinutes;
    v36 = &unk_1F1AA5530;
  }

  v9->_maxGracePeriodMinutes = v36;

LABEL_27:
  v77 = 0;
  v37 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxInactivity" isRequired:0 outError:&v77];
  v11 = v77;
  maxInactivityMinutes = v9->_maxInactivityMinutes;
  v9->_maxInactivityMinutes = v37;

  if (v11)
  {
    goto LABEL_49;
  }

  v39 = v9->_maxInactivityMinutes;
  if (!v39)
  {
    goto LABEL_34;
  }

  intValue4 = [(NSNumber *)v39 intValue];
  v41 = v9->_maxInactivityMinutes;
  if (intValue4 < 0)
  {
    v42 = &unk_1F1AA54D0;
  }

  else
  {
    if ([(NSNumber *)v41 intValue]< 16)
    {
      goto LABEL_34;
    }

    v41 = v9->_maxInactivityMinutes;
    v42 = &unk_1F1AA5548;
  }

  v9->_maxInactivityMinutes = v42;

LABEL_34:
  v76 = 0;
  v43 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxPINAgeInDays" isRequired:0 outError:&v76];
  v11 = v76;
  maxPasscodeAgeDays = v9->_maxPasscodeAgeDays;
  v9->_maxPasscodeAgeDays = v43;

  if (v11)
  {
    goto LABEL_49;
  }

  v45 = v9->_maxPasscodeAgeDays;
  if (!v45)
  {
    goto LABEL_41;
  }

  intValue5 = [(NSNumber *)v45 intValue];
  v47 = v9->_maxPasscodeAgeDays;
  if (intValue5 < 1)
  {
    v48 = &unk_1F1AA5560;
  }

  else
  {
    if ([(NSNumber *)v47 intValue]< 731)
    {
      goto LABEL_41;
    }

    v47 = v9->_maxPasscodeAgeDays;
    v48 = &unk_1F1AA5578;
  }

  v9->_maxPasscodeAgeDays = v48;

LABEL_41:
  v75 = 0;
  v49 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"pinHistory" isRequired:0 outError:&v75];
  v11 = v75;
  passcodeHistoryCount = v9->_passcodeHistoryCount;
  v9->_passcodeHistoryCount = v49;

  if (v11)
  {
    goto LABEL_49;
  }

  v51 = v9->_passcodeHistoryCount;
  if (!v51)
  {
    goto LABEL_48;
  }

  intValue6 = [(NSNumber *)v51 intValue];
  v53 = v9->_passcodeHistoryCount;
  if (intValue6 < 1)
  {
    v54 = &unk_1F1AA5560;
  }

  else
  {
    if ([(NSNumber *)v53 intValue]< 51)
    {
      goto LABEL_48;
    }

    v53 = v9->_passcodeHistoryCount;
    v54 = &unk_1F1AA5590;
  }

  v9->_passcodeHistoryCount = v54;

LABEL_48:
  v74 = 0;
  v55 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"minComplexChars" isRequired:0 outError:&v74];
  v11 = v74;
  minComplexCharacters = v9->_minComplexCharacters;
  v9->_minComplexCharacters = v55;

  if (v11)
  {
    goto LABEL_49;
  }

  v67 = v9->_minComplexCharacters;
  if (v67)
  {
    intValue7 = [(NSNumber *)v67 intValue];
    v69 = v9->_minComplexCharacters;
    if (intValue7 < 0)
    {
      v70 = &unk_1F1AA54D0;
      goto LABEL_60;
    }

    if ([(NSNumber *)v69 intValue]>= 5)
    {
      v69 = v9->_minComplexCharacters;
      v70 = &unk_1F1AA55A8;
LABEL_60:
      v9->_minComplexCharacters = v70;
    }
  }

  if ([dictionaryCopy count])
  {
    v71 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v72 = v71;
      friendlyName = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v87 = friendlyName;
      v88 = 2114;
      v89 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v72, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_54:

  v65 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v5.receiver = self;
  v5.super_class = MCPasswordPolicyPayload;
  stubDictionary = [(MCPayload *)&v5 stubDictionary];
  [stubDictionary MCSetObjectIfNotNil:self->_isSimplePasscodeAllowed forKey:@"allowSimple"];
  [stubDictionary MCSetObjectIfNotNil:self->_isPasscodeRequired forKey:@"forcePIN"];
  [stubDictionary MCSetObjectIfNotNil:self->_isAlphanumericPasscodeRequired forKey:@"requireAlphanumeric"];
  [stubDictionary MCSetObjectIfNotNil:self->_isManualFetchingWhenRoaming forKey:@"manualFetchingWhenRoaming"];
  [stubDictionary MCSetObjectIfNotNil:self->_minLength forKey:@"minLength"];
  [stubDictionary MCSetObjectIfNotNil:self->_maxFailedAttempts forKey:@"maxFailedAttempts"];
  [stubDictionary MCSetObjectIfNotNil:self->_maxGracePeriodMinutes forKey:@"maxGracePeriod"];
  [stubDictionary MCSetObjectIfNotNil:self->_maxInactivityMinutes forKey:@"maxInactivity"];
  [stubDictionary MCSetObjectIfNotNil:self->_maxPasscodeAgeDays forKey:@"maxPINAgeInDays"];
  [stubDictionary MCSetObjectIfNotNil:self->_passcodeHistoryCount forKey:@"pinHistory"];
  [stubDictionary MCSetObjectIfNotNil:self->_minComplexCharacters forKey:@"minComplexChars"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v14.receiver = self;
  v14.super_class = MCPasswordPolicyPayload;
  verboseDescription = [(MCPayload *)&v14 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  if ([(NSNumber *)self->_isPasscodeRequired BOOLValue])
  {
    [v5 appendFormat:@"- Passcode required\n"];
  }

  if ([(NSNumber *)self->_isSimplePasscodeAllowed BOOLValue])
  {
    [v5 appendFormat:@"- Simple passcodes allowed\n"];
  }

  if ([(NSNumber *)self->_isAlphanumericPasscodeRequired BOOLValue])
  {
    [v5 appendFormat:@"- Alphanumeric required\n"];
  }

  if ([(NSNumber *)self->_isManualFetchingWhenRoaming BOOLValue])
  {
    [v5 appendFormat:@"- Manual fetching when roaming\n"];
  }

  minLength = self->_minLength;
  if (minLength)
  {
    [v5 appendFormat:@"- Minimum length: %d\n", -[NSNumber intValue](minLength, "intValue")];
  }

  minComplexCharacters = self->_minComplexCharacters;
  if (minComplexCharacters)
  {
    [v5 appendFormat:@"- Minimum complex chars: %d\n", -[NSNumber intValue](minComplexCharacters, "intValue")];
  }

  maxFailedAttempts = self->_maxFailedAttempts;
  if (maxFailedAttempts)
  {
    [v5 appendFormat:@"- Max failed attempts: %d\n", -[NSNumber intValue](maxFailedAttempts, "intValue")];
  }

  maxGracePeriodMinutes = self->_maxGracePeriodMinutes;
  if (maxGracePeriodMinutes)
  {
    [v5 appendFormat:@"- Max grace period: %d minutes\n", -[NSNumber intValue](maxGracePeriodMinutes, "intValue")];
  }

  maxInactivityMinutes = self->_maxInactivityMinutes;
  if (maxInactivityMinutes)
  {
    [v5 appendFormat:@"- Max inactivity: %d minutes\n", -[NSNumber intValue](maxInactivityMinutes, "intValue")];
  }

  maxPasscodeAgeDays = self->_maxPasscodeAgeDays;
  if (maxPasscodeAgeDays)
  {
    [v5 appendFormat:@"- Max passcode age: %d days\n", -[NSNumber intValue](maxPasscodeAgeDays, "intValue")];
  }

  passcodeHistoryCount = self->_passcodeHistoryCount;
  if (passcodeHistoryCount)
  {
    [v5 appendFormat:@"- Passcode history: %d\n", -[NSNumber intValue](passcodeHistoryCount, "intValue")];
  }

  return v5;
}

- (id)subtitle1Description
{
  restrictions = [(MCPasswordPolicyPayload *)self restrictions];
  v3 = [MCPasscodeManager localizedDescriptionOfPasscodePolicyFromRestrictions:restrictions];

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v80[1] = *MEMORY[0x1E69E9840];
  restrictions = [(MCPasswordPolicyPayload *)self restrictions];
  v4 = +[MCRestrictionManager sharedManager];
  defaultRestrictions = [v4 defaultRestrictions];
  v6 = [MCRestrictionManager filterRestrictionDictionary:restrictions toIncludeOnlyRestrictionsThatDifferFromRestrictions:defaultRestrictions];

  v7 = objc_opt_new();
  if ([MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:v6]== 1)
  {
    v8 = [MCKeyValue alloc];
    v9 = MCLocalizedStringForBool(1);
    v10 = MCLocalizedString(@"PASSCODE_REQUIRED");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:v9 localizedKey:v10];

    [v7 addObject:v11];
  }

  v12 = [MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:v6]!= 2;
  v13 = [MCKeyValue alloc];
  v14 = MCLocalizedStringForBool(v12);
  v15 = MCLocalizedString(@"SIMPLE_PASSCODES_ALLOWED");
  v16 = [(MCKeyValue *)v13 initWithLocalizedString:v14 localizedKey:v15];

  v79 = v16;
  [v7 addObject:v16];
  if ([MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:v6]== 1)
  {
    v17 = [MCKeyValue alloc];
    v18 = MCLocalizedStringForBool(1);
    v19 = MCLocalizedString(@"ALPHANUMERIC_PASSCODE_REQUIRED");
    v20 = [(MCKeyValue *)v17 initWithLocalizedString:v18 localizedKey:v19];

    [v7 addObject:v20];
  }

  isManualFetchingWhenRoaming = [(MCPasswordPolicyPayload *)self isManualFetchingWhenRoaming];

  if (isManualFetchingWhenRoaming)
  {
    v22 = [MCKeyValue alloc];
    isManualFetchingWhenRoaming2 = [(MCPasswordPolicyPayload *)self isManualFetchingWhenRoaming];
    v24 = MCLocalizedStringForBool([isManualFetchingWhenRoaming2 BOOLValue]);
    v25 = MCLocalizedString(@"MANUAL_FETCHING_WHEN_ROAMING");
    v26 = [(MCKeyValue *)v22 initWithLocalizedString:v24 localizedKey:v25];

    [v7 addObject:v26];
  }

  v27 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:v6];
  v28 = v27;
  if (v27 && [v27 intValue] >= 1 && objc_msgSend(v28, "intValue") <= 16)
  {
    v29 = [MCKeyValue alloc];
    v30 = MCFormattedStringForNumber(v28);
    v31 = MCLocalizedString(@"MINIMUM_PASSCODE_LENGTH_REQUIRED");
    v32 = [(MCKeyValue *)v29 initWithLocalizedString:v30 localizedKey:v31];

    [v7 addObject:v32];
  }

  v78 = v28;
  v33 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:v6];
  v34 = v33;
  if (v33 && [v33 intValue] >= 1 && objc_msgSend(v34, "intValue") <= 4)
  {
    v35 = [MCKeyValue alloc];
    v36 = MCFormattedStringForNumber(v34);
    v37 = MCLocalizedString(@"MINIMUM_PASSCODE_COMPLEX_CHARACTERS");
    v38 = [(MCKeyValue *)v35 initWithLocalizedString:v36 localizedKey:v37];

    [v7 addObject:v38];
  }

  v77 = v34;
  v39 = [MCRestrictionManager valueForFeature:@"maxFailedAttempts" withRestrictionsDictionary:v6];
  v40 = v39;
  if (v39 && [v39 intValue] >= 2 && objc_msgSend(v40, "intValue") <= 11)
  {
    v41 = [MCKeyValue alloc];
    v42 = MCFormattedStringForNumber(v40);
    v43 = MCLocalizedString(@"MAXIMUM_PASSCODE_FAILED_ATTEMPTS");
    v44 = [(MCKeyValue *)v41 initWithLocalizedString:v42 localizedKey:v43];

    [v7 addObject:v44];
  }

  v45 = [MCRestrictionManager valueForFeature:@"maxGracePeriod" withRestrictionsDictionary:v6];
  if (v45)
  {
    v46 = +[MCHacks sharedHacks];
    v47 = [v46 quantizedGracePeriodInSeconds:v45];

    unsignedIntegerValue = [v47 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      MCFormattedStringForTimeInterval(unsignedIntegerValue);
    }

    else
    {
      MCLocalizedString(@"IMMEDIATELY");
    }
    v49 = ;
    v50 = [MCKeyValue alloc];
    v51 = MCLocalizedString(@"MAXIMUM_PASSCODE_GRACE_PERIOD");
    v52 = [(MCKeyValue *)v50 initWithLocalizedString:v49 localizedKey:v51];

    [v7 addObject:v52];
  }

  else
  {
    v49 = 0;
  }

  v53 = [MCRestrictionManager valueForFeature:@"maxInactivity" withRestrictionsDictionary:v6];
  if (v53)
  {
    v54 = +[MCHacks sharedHacks];
    v55 = [v54 quantizedAutoLockInSeconds:v53];

    unsignedIntegerValue2 = [v55 unsignedIntegerValue];
    if (unsignedIntegerValue2 < 60.0)
    {
      unsignedIntegerValue2 = 60.0;
    }

    v57 = MCFormattedStringForTimeInterval(unsignedIntegerValue2);

    v58 = [MCKeyValue alloc];
    v59 = MCLocalizedString(@"MAXIMUM_PASSCODE_INACTIVITY");
    v60 = [(MCKeyValue *)v58 initWithLocalizedString:v57 localizedKey:v59];

    [v7 addObject:v60];
    v49 = v57;
  }

  v61 = [MCRestrictionManager valueForFeature:@"maxPINAgeInDays" withRestrictionsDictionary:v6];
  v62 = v61;
  if (v61 && [v61 intValue] >= 1 && objc_msgSend(v62, "intValue") <= 730)
  {
    v63 = MCFormattedStringForTimeInterval((86400 * [v62 unsignedIntegerValue]));

    v64 = [MCKeyValue alloc];
    v65 = MCLocalizedString(@"MAXIMUM_PASSCODE_AGE");
    v66 = [(MCKeyValue *)v64 initWithLocalizedString:v63 localizedKey:v65];

    [v7 addObject:v66];
    v49 = v63;
  }

  v67 = [MCRestrictionManager valueForFeature:@"pinHistory" withRestrictionsDictionary:v6];
  v68 = v67;
  if (v67 && [v67 intValue] >= 1 && objc_msgSend(v68, "intValue") <= 50)
  {
    v69 = MCFormattedStringForNumber(v68);

    v70 = [MCKeyValue alloc];
    v71 = MCLocalizedString(@"PASSCODE_HISTORY");
    v72 = [(MCKeyValue *)v70 initWithLocalizedString:v69 localizedKey:v71];

    [v7 addObject:v72];
    v49 = v69;
  }

  v73 = [MCKeyValueSection sectionWithKeyValues:v7];
  v80[0] = v73;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];

  v75 = *MEMORY[0x1E69E9840];

  return v74;
}

- (id)restrictions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  isSimplePasscodeAllowed = [(MCPasswordPolicyPayload *)self isSimplePasscodeAllowed];

  if (isSimplePasscodeAllowed)
  {
    isSimplePasscodeAllowed2 = [(MCPasswordPolicyPayload *)self isSimplePasscodeAllowed];
    [dictionary MCSetBoolRestriction:@"allowSimple" value:{objc_msgSend(isSimplePasscodeAllowed2, "BOOLValue")}];
  }

  isPasscodeRequired = [(MCPasswordPolicyPayload *)self isPasscodeRequired];

  if (isPasscodeRequired)
  {
    isPasscodeRequired2 = [(MCPasswordPolicyPayload *)self isPasscodeRequired];
    [dictionary MCSetBoolRestriction:@"forcePIN" value:{objc_msgSend(isPasscodeRequired2, "BOOLValue")}];
  }

  isAlphanumericPasscodeRequired = [(MCPasswordPolicyPayload *)self isAlphanumericPasscodeRequired];

  if (isAlphanumericPasscodeRequired)
  {
    isAlphanumericPasscodeRequired2 = [(MCPasswordPolicyPayload *)self isAlphanumericPasscodeRequired];
    [dictionary MCSetBoolRestriction:@"requireAlphanumeric" value:{objc_msgSend(isAlphanumericPasscodeRequired2, "BOOLValue")}];
  }

  minLength = [(MCPasswordPolicyPayload *)self minLength];
  if (minLength)
  {
    minLength4 = minLength;
    minLength2 = [(MCPasswordPolicyPayload *)self minLength];
    if (([minLength2 intValue] & 0x80000000) != 0)
    {
    }

    else
    {
      minLength3 = [(MCPasswordPolicyPayload *)self minLength];
      intValue = [minLength3 intValue];

      if (intValue > 16)
      {
        goto LABEL_13;
      }

      minLength4 = [(MCPasswordPolicyPayload *)self minLength];
      [dictionary MCSetValueRestriction:@"minLength" value:minLength4];
    }
  }

LABEL_13:
  maxFailedAttempts = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
  if (!maxFailedAttempts)
  {
    goto LABEL_19;
  }

  maxFailedAttempts4 = maxFailedAttempts;
  maxFailedAttempts2 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
  if ([maxFailedAttempts2 intValue] <= 1)
  {
  }

  else
  {
    maxFailedAttempts3 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
    intValue2 = [maxFailedAttempts3 intValue];

    if (intValue2 > 11)
    {
      goto LABEL_19;
    }

    maxFailedAttempts4 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
    [dictionary MCSetValueRestriction:@"maxFailedAttempts" value:maxFailedAttempts4];
  }

LABEL_19:
  maxGracePeriodMinutes = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
  if (!maxGracePeriodMinutes)
  {
    goto LABEL_24;
  }

  maxGracePeriodMinutes4 = maxGracePeriodMinutes;
  maxGracePeriodMinutes2 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
  if (([maxGracePeriodMinutes2 intValue] & 0x80000000) == 0)
  {
    maxGracePeriodMinutes3 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
    intValue3 = [maxGracePeriodMinutes3 intValue];

    if (intValue3 > 240)
    {
      goto LABEL_24;
    }

    v25 = MEMORY[0x1E696AD98];
    maxGracePeriodMinutes4 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
    maxGracePeriodMinutes2 = [v25 numberWithInt:{60 * objc_msgSend(maxGracePeriodMinutes4, "intValue")}];
    [dictionary MCSetValueRestriction:@"maxGracePeriod" value:maxGracePeriodMinutes2];
  }

LABEL_24:
  maxInactivityMinutes = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
  if (!maxInactivityMinutes)
  {
    goto LABEL_29;
  }

  maxInactivityMinutes4 = maxInactivityMinutes;
  maxInactivityMinutes2 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
  if (([maxInactivityMinutes2 intValue] & 0x80000000) == 0)
  {
    maxInactivityMinutes3 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
    intValue4 = [maxInactivityMinutes3 intValue];

    if (intValue4 > 15)
    {
      goto LABEL_29;
    }

    v31 = MEMORY[0x1E696AD98];
    maxInactivityMinutes4 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
    maxInactivityMinutes2 = [v31 numberWithInt:{60 * objc_msgSend(maxInactivityMinutes4, "intValue")}];
    [dictionary MCSetValueRestriction:@"maxInactivity" value:maxInactivityMinutes2];
  }

LABEL_29:
  maxPasscodeAgeDays = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
  if (!maxPasscodeAgeDays)
  {
    goto LABEL_35;
  }

  maxPasscodeAgeDays4 = maxPasscodeAgeDays;
  maxPasscodeAgeDays2 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
  if ([maxPasscodeAgeDays2 intValue] <= 0)
  {
  }

  else
  {
    maxPasscodeAgeDays3 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
    intValue5 = [maxPasscodeAgeDays3 intValue];

    if (intValue5 > 730)
    {
      goto LABEL_35;
    }

    maxPasscodeAgeDays4 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
    [dictionary MCSetValueRestriction:@"maxPINAgeInDays" value:maxPasscodeAgeDays4];
  }

LABEL_35:
  passcodeHistoryCount = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
  if (!passcodeHistoryCount)
  {
    goto LABEL_41;
  }

  passcodeHistoryCount4 = passcodeHistoryCount;
  passcodeHistoryCount2 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
  if ([passcodeHistoryCount2 intValue] <= 0)
  {
  }

  else
  {
    passcodeHistoryCount3 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
    intValue6 = [passcodeHistoryCount3 intValue];

    if (intValue6 > 50)
    {
      goto LABEL_41;
    }

    passcodeHistoryCount4 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
    [dictionary MCSetValueRestriction:@"pinHistory" value:passcodeHistoryCount4];
  }

LABEL_41:
  minComplexCharacters = [(MCPasswordPolicyPayload *)self minComplexCharacters];
  if (!minComplexCharacters)
  {
    goto LABEL_47;
  }

  minComplexCharacters4 = minComplexCharacters;
  minComplexCharacters2 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
  if (([minComplexCharacters2 intValue] & 0x80000000) != 0)
  {
  }

  else
  {
    minComplexCharacters3 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
    intValue7 = [minComplexCharacters3 intValue];

    if (intValue7 > 4)
    {
      goto LABEL_47;
    }

    minComplexCharacters4 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
    [dictionary MCSetValueRestriction:@"minComplexChars" value:minComplexCharacters4];
  }

LABEL_47:
  v47 = [dictionary copy];

  return v47;
}

- (id)filterForUserEnrollmentOutError:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  stubDictionary = [(MCPasswordPolicyPayload *)self stubDictionary];
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [stubDictionary allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if (([v10 hasPrefix:@"Payload"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"PersistentResourceID") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"maxInactivity") & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  [stubDictionary removeObjectsForKeys:array];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [stubDictionary setObject:v11 forKeyedSubscript:@"allowSimple"];

  [stubDictionary setObject:&unk_1F1AA55C0 forKeyedSubscript:@"minLength"];
  v12 = [stubDictionary objectForKeyedSubscript:@"maxInactivity"];

  if (v12)
  {
    [stubDictionary setObject:&unk_1F1AA5548 forKeyedSubscript:@"maxInactivity"];
  }

  v13 = [MCPasswordPolicyPayload alloc];
  profile = [(MCPayload *)self profile];
  v26 = 0;
  v15 = [(MCPasswordPolicyPayload *)v13 initWithDictionary:stubDictionary profile:profile outError:&v26];
  v16 = v26;

  if (v16)
  {
    if (error)
    {
      v17 = v16;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if ([array count])
    {
      [array sortUsingComparator:&__block_literal_global_13];
      v19 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        friendlyName = [(MCPayload *)self friendlyName];
        *buf = 138543618;
        v32 = friendlyName;
        v33 = 2114;
        v34 = array;
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_INFO, "Payload “%{public}@” has keys that we are ignoring. They are: %{public}@", buf, 0x16u);
      }
    }

    v18 = v15;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

@end