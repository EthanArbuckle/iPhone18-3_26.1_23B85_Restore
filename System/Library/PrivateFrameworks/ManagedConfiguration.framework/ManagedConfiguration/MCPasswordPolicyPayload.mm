@interface MCPasswordPolicyPayload
- (MCPasswordPolicyPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)filterForUserEnrollmentOutError:(id *)a3;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCPasswordPolicyPayload

- (MCPasswordPolicyPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v85.receiver = self;
  v85.super_class = MCPasswordPolicyPayload;
  v9 = [(MCPayload *)&v85 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_54;
  }

  v84 = 0;
  v10 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"allowSimple" isRequired:0 outError:&v84];
  v11 = v84;
  isSimplePasscodeAllowed = v9->_isSimplePasscodeAllowed;
  v9->_isSimplePasscodeAllowed = v10;

  if (v11)
  {
    goto LABEL_49;
  }

  v83 = 0;
  v13 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"forcePIN" isRequired:0 outError:&v83];
  v11 = v83;
  isPasscodeRequired = v9->_isPasscodeRequired;
  v9->_isPasscodeRequired = v13;

  if (v11)
  {
    goto LABEL_49;
  }

  v82 = 0;
  v15 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"requireAlphanumeric" isRequired:0 outError:&v82];
  v11 = v82;
  isAlphanumericPasscodeRequired = v9->_isAlphanumericPasscodeRequired;
  v9->_isAlphanumericPasscodeRequired = v15;

  if (v11)
  {
    goto LABEL_49;
  }

  v81 = 0;
  v17 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"manualFetchingWhenRoaming" isRequired:0 outError:&v81];
  v11 = v81;
  isManualFetchingWhenRoaming = v9->_isManualFetchingWhenRoaming;
  v9->_isManualFetchingWhenRoaming = v17;

  if (v11)
  {
    goto LABEL_49;
  }

  v80 = 0;
  v19 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"minLength" isRequired:0 outError:&v80];
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
    v22 = [(NSNumber *)v21 intValue];
    v23 = v9->_minLength;
    if (v22 < 0)
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
  v25 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxFailedAttempts" isRequired:0 outError:&v79];
  v11 = v79;
  maxFailedAttempts = v9->_maxFailedAttempts;
  v9->_maxFailedAttempts = v25;

  if (v11)
  {
LABEL_49:
    v57 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
    v58 = v57;
    if (a5)
    {
      v59 = v57;
      *a5 = v58;
    }

    v60 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v61 = v60;
      v62 = objc_opt_class();
      v63 = v62;
      v64 = [v58 MCVerboseDescription];
      *buf = 138543618;
      v87 = v62;
      v88 = 2114;
      v89 = v64;
      _os_log_impl(&dword_1A795B000, v61, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_54;
  }

  v27 = v9->_maxFailedAttempts;
  if (v27)
  {
    v28 = [(NSNumber *)v27 intValue];
    v29 = v9->_maxFailedAttempts;
    if (v28 >= 2)
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
  v31 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxGracePeriod" isRequired:0 outError:&v78];
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

  v34 = [(NSNumber *)v33 intValue];
  v35 = v9->_maxGracePeriodMinutes;
  if (v34 < 0)
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
  v37 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxInactivity" isRequired:0 outError:&v77];
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

  v40 = [(NSNumber *)v39 intValue];
  v41 = v9->_maxInactivityMinutes;
  if (v40 < 0)
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
  v43 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"maxPINAgeInDays" isRequired:0 outError:&v76];
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

  v46 = [(NSNumber *)v45 intValue];
  v47 = v9->_maxPasscodeAgeDays;
  if (v46 < 1)
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
  v49 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"pinHistory" isRequired:0 outError:&v75];
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

  v52 = [(NSNumber *)v51 intValue];
  v53 = v9->_passcodeHistoryCount;
  if (v52 < 1)
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
  v55 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"minComplexChars" isRequired:0 outError:&v74];
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
    v68 = [(NSNumber *)v67 intValue];
    v69 = v9->_minComplexCharacters;
    if (v68 < 0)
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

  if ([v8 count])
  {
    v71 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v72 = v71;
      v73 = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v87 = v73;
      v88 = 2114;
      v89 = v8;
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
  v3 = [(MCPayload *)&v5 stubDictionary];
  [v3 MCSetObjectIfNotNil:self->_isSimplePasscodeAllowed forKey:@"allowSimple"];
  [v3 MCSetObjectIfNotNil:self->_isPasscodeRequired forKey:@"forcePIN"];
  [v3 MCSetObjectIfNotNil:self->_isAlphanumericPasscodeRequired forKey:@"requireAlphanumeric"];
  [v3 MCSetObjectIfNotNil:self->_isManualFetchingWhenRoaming forKey:@"manualFetchingWhenRoaming"];
  [v3 MCSetObjectIfNotNil:self->_minLength forKey:@"minLength"];
  [v3 MCSetObjectIfNotNil:self->_maxFailedAttempts forKey:@"maxFailedAttempts"];
  [v3 MCSetObjectIfNotNil:self->_maxGracePeriodMinutes forKey:@"maxGracePeriod"];
  [v3 MCSetObjectIfNotNil:self->_maxInactivityMinutes forKey:@"maxInactivity"];
  [v3 MCSetObjectIfNotNil:self->_maxPasscodeAgeDays forKey:@"maxPINAgeInDays"];
  [v3 MCSetObjectIfNotNil:self->_passcodeHistoryCount forKey:@"pinHistory"];
  [v3 MCSetObjectIfNotNil:self->_minComplexCharacters forKey:@"minComplexChars"];

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v14.receiver = self;
  v14.super_class = MCPasswordPolicyPayload;
  v4 = [(MCPayload *)&v14 verboseDescription];
  v5 = [v3 stringWithString:v4];

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
  v2 = [(MCPasswordPolicyPayload *)self restrictions];
  v3 = [MCPasscodeManager localizedDescriptionOfPasscodePolicyFromRestrictions:v2];

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v80[1] = *MEMORY[0x1E69E9840];
  v3 = [(MCPasswordPolicyPayload *)self restrictions];
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 defaultRestrictions];
  v6 = [MCRestrictionManager filterRestrictionDictionary:v3 toIncludeOnlyRestrictionsThatDifferFromRestrictions:v5];

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

  v21 = [(MCPasswordPolicyPayload *)self isManualFetchingWhenRoaming];

  if (v21)
  {
    v22 = [MCKeyValue alloc];
    v23 = [(MCPasswordPolicyPayload *)self isManualFetchingWhenRoaming];
    v24 = MCLocalizedStringForBool([v23 BOOLValue]);
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

    v48 = [v47 unsignedIntegerValue];
    if (v48)
    {
      MCFormattedStringForTimeInterval(v48);
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

    v56 = [v55 unsignedIntegerValue];
    if (v56 < 60.0)
    {
      v56 = 60.0;
    }

    v57 = MCFormattedStringForTimeInterval(v56);

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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCPasswordPolicyPayload *)self isSimplePasscodeAllowed];

  if (v4)
  {
    v5 = [(MCPasswordPolicyPayload *)self isSimplePasscodeAllowed];
    [v3 MCSetBoolRestriction:@"allowSimple" value:{objc_msgSend(v5, "BOOLValue")}];
  }

  v6 = [(MCPasswordPolicyPayload *)self isPasscodeRequired];

  if (v6)
  {
    v7 = [(MCPasswordPolicyPayload *)self isPasscodeRequired];
    [v3 MCSetBoolRestriction:@"forcePIN" value:{objc_msgSend(v7, "BOOLValue")}];
  }

  v8 = [(MCPasswordPolicyPayload *)self isAlphanumericPasscodeRequired];

  if (v8)
  {
    v9 = [(MCPasswordPolicyPayload *)self isAlphanumericPasscodeRequired];
    [v3 MCSetBoolRestriction:@"requireAlphanumeric" value:{objc_msgSend(v9, "BOOLValue")}];
  }

  v10 = [(MCPasswordPolicyPayload *)self minLength];
  if (v10)
  {
    v11 = v10;
    v12 = [(MCPasswordPolicyPayload *)self minLength];
    if (([v12 intValue] & 0x80000000) != 0)
    {
    }

    else
    {
      v13 = [(MCPasswordPolicyPayload *)self minLength];
      v14 = [v13 intValue];

      if (v14 > 16)
      {
        goto LABEL_13;
      }

      v11 = [(MCPasswordPolicyPayload *)self minLength];
      [v3 MCSetValueRestriction:@"minLength" value:v11];
    }
  }

LABEL_13:
  v15 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
  if ([v17 intValue] <= 1)
  {
  }

  else
  {
    v18 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
    v19 = [v18 intValue];

    if (v19 > 11)
    {
      goto LABEL_19;
    }

    v16 = [(MCPasswordPolicyPayload *)self maxFailedAttempts];
    [v3 MCSetValueRestriction:@"maxFailedAttempts" value:v16];
  }

LABEL_19:
  v20 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
  if (([v22 intValue] & 0x80000000) == 0)
  {
    v23 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
    v24 = [v23 intValue];

    if (v24 > 240)
    {
      goto LABEL_24;
    }

    v25 = MEMORY[0x1E696AD98];
    v21 = [(MCPasswordPolicyPayload *)self maxGracePeriodMinutes];
    v22 = [v25 numberWithInt:{60 * objc_msgSend(v21, "intValue")}];
    [v3 MCSetValueRestriction:@"maxGracePeriod" value:v22];
  }

LABEL_24:
  v26 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
  if (!v26)
  {
    goto LABEL_29;
  }

  v27 = v26;
  v28 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
  if (([v28 intValue] & 0x80000000) == 0)
  {
    v29 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
    v30 = [v29 intValue];

    if (v30 > 15)
    {
      goto LABEL_29;
    }

    v31 = MEMORY[0x1E696AD98];
    v27 = [(MCPasswordPolicyPayload *)self maxInactivityMinutes];
    v28 = [v31 numberWithInt:{60 * objc_msgSend(v27, "intValue")}];
    [v3 MCSetValueRestriction:@"maxInactivity" value:v28];
  }

LABEL_29:
  v32 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
  if (!v32)
  {
    goto LABEL_35;
  }

  v33 = v32;
  v34 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
  if ([v34 intValue] <= 0)
  {
  }

  else
  {
    v35 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
    v36 = [v35 intValue];

    if (v36 > 730)
    {
      goto LABEL_35;
    }

    v33 = [(MCPasswordPolicyPayload *)self maxPasscodeAgeDays];
    [v3 MCSetValueRestriction:@"maxPINAgeInDays" value:v33];
  }

LABEL_35:
  v37 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
  if (!v37)
  {
    goto LABEL_41;
  }

  v38 = v37;
  v39 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
  if ([v39 intValue] <= 0)
  {
  }

  else
  {
    v40 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
    v41 = [v40 intValue];

    if (v41 > 50)
    {
      goto LABEL_41;
    }

    v38 = [(MCPasswordPolicyPayload *)self passcodeHistoryCount];
    [v3 MCSetValueRestriction:@"pinHistory" value:v38];
  }

LABEL_41:
  v42 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
  if (!v42)
  {
    goto LABEL_47;
  }

  v43 = v42;
  v44 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
  if (([v44 intValue] & 0x80000000) != 0)
  {
  }

  else
  {
    v45 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
    v46 = [v45 intValue];

    if (v46 > 4)
    {
      goto LABEL_47;
    }

    v43 = [(MCPasswordPolicyPayload *)self minComplexCharacters];
    [v3 MCSetValueRestriction:@"minComplexChars" value:v43];
  }

LABEL_47:
  v47 = [v3 copy];

  return v47;
}

- (id)filterForUserEnrollmentOutError:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(MCPasswordPolicyPayload *)self stubDictionary];
  v4 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if (([v10 hasPrefix:@"Payload"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"PersistentResourceID") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"maxInactivity") & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  [v3 removeObjectsForKeys:v4];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v3 setObject:v11 forKeyedSubscript:@"allowSimple"];

  [v3 setObject:&unk_1F1AA55C0 forKeyedSubscript:@"minLength"];
  v12 = [v3 objectForKeyedSubscript:@"maxInactivity"];

  if (v12)
  {
    [v3 setObject:&unk_1F1AA5548 forKeyedSubscript:@"maxInactivity"];
  }

  v13 = [MCPasswordPolicyPayload alloc];
  v14 = [(MCPayload *)self profile];
  v26 = 0;
  v15 = [(MCPasswordPolicyPayload *)v13 initWithDictionary:v3 profile:v14 outError:&v26];
  v16 = v26;

  if (v16)
  {
    if (a3)
    {
      v17 = v16;
      v18 = 0;
      *a3 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if ([v4 count])
    {
      [v4 sortUsingComparator:&__block_literal_global_13];
      v19 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [(MCPayload *)self friendlyName];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v4;
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_INFO, "Payload “%{public}@” has keys that we are ignoring. They are: %{public}@", buf, 0x16u);
      }
    }

    v18 = v15;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

@end