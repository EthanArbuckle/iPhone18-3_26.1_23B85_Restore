@interface MBKeyBagValidationState
+ (BOOL)updateKeyBagCountAfterSnapshotCommit:(unint64_t)commit persona:(id)persona error:(id *)error;
+ (id)stateForPersona:(id)persona;
- (BOOL)_writeStateToPlist:(id)plist error:(id *)error;
- (BOOL)resetValidationStateWithPersona:(id)persona error:(id *)error;
- (BOOL)shouldValidateKeyBagReferencesOnDate:(id)date period:(double)period;
- (BOOL)trackRepairedDeviceRecordWithPersona:(id)persona error:(id *)error;
- (BOOL)trackSnapshotCommit:(unint64_t)commit persona:(id)persona error:(id *)error;
- (BOOL)trackValidationFailureWithInvalidKeyBagCount:(unint64_t)count validKeyBagCount:(unint64_t)bagCount persona:(id)persona error:(id *)error;
- (BOOL)trackValidationSuccess:(unint64_t)success persona:(id)persona error:(id *)error;
- (MBKeyBagValidationState)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MBKeyBagValidationState

- (MBKeyBagValidationState)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v20.receiver = self;
  v20.super_class = MBKeyBagValidationState;
  v5 = [(MBKeyBagValidationState *)&v20 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"DateOfLastSuccessfulValidation"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = +[NSDate distantPast];
    }

    dateOfLastSuccessfulValidation = v5->_dateOfLastSuccessfulValidation;
    v5->_dateOfLastSuccessfulValidation = v7;

    v9 = [representationCopy objectForKeyedSubscript:@"LastValidationResultKey"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongLongValue = [v9 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
    }

    v5->_lastValidationResult = unsignedLongLongValue;
    v11 = [representationCopy objectForKeyedSubscript:@"LastSeenKeyBagReferenceCount"];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongLongValue2 = [v11 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
    }

    v5->_lastSeenKeyBagReferenceCount = unsignedLongLongValue2;
    v13 = [representationCopy objectForKeyedSubscript:@"ValidKeyBagReferenceCount"];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongLongValue3 = [v13 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
    }

    v5->_validKeyBagReferenceCount = unsignedLongLongValue3;
    v15 = [representationCopy objectForKeyedSubscript:@"InvalidKeyBagReferenceCount"];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongLongValue4 = [v15 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue4 = 0;
    }

    v5->_invalidKeyBagReferenceCount = unsignedLongLongValue4;
    v17 = [representationCopy objectForKeyedSubscript:@"RequiresDeviceRecordRepair"];

    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5->_requiresDeviceRecordReferenceRepair = [v17 BOOLValue];
    }

    else
    {
      v5->_requiresDeviceRecordReferenceRepair = 0;
    }

    v18 = [representationCopy objectForKeyedSubscript:@"RequiresEncryptionKeyRepair"];

    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5->_requiresEncryptionKeyRepair = [v18 BOOLValue];
    }

    else
    {
      v5->_requiresEncryptionKeyRepair = 0;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v12[0] = @"LastValidationResultKey";
  v3 = [NSNumber numberWithInteger:self->_lastValidationResult];
  dateOfLastSuccessfulValidation = self->_dateOfLastSuccessfulValidation;
  v13[0] = v3;
  v13[1] = dateOfLastSuccessfulValidation;
  v12[1] = @"DateOfLastSuccessfulValidation";
  v12[2] = @"ValidKeyBagReferenceCount";
  v5 = [NSNumber numberWithUnsignedLongLong:self->_validKeyBagReferenceCount];
  v13[2] = v5;
  v12[3] = @"InvalidKeyBagReferenceCount";
  v6 = [NSNumber numberWithUnsignedLongLong:self->_invalidKeyBagReferenceCount];
  v13[3] = v6;
  v12[4] = @"LastSeenKeyBagReferenceCount";
  v7 = [NSNumber numberWithUnsignedLongLong:self->_lastSeenKeyBagReferenceCount];
  v13[4] = v7;
  v12[5] = @"RequiresDeviceRecordRepair";
  v8 = [NSNumber numberWithBool:self->_requiresDeviceRecordReferenceRepair];
  v13[5] = v8;
  v12[6] = @"RequiresEncryptionKeyRepair";
  v9 = [NSNumber numberWithBool:self->_requiresEncryptionKeyRepair];
  v13[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

- (BOOL)shouldValidateKeyBagReferencesOnDate:(id)date period:(double)period
{
  dateCopy = date;
  v7 = self->_dateOfLastSuccessfulValidation;
  if (v7)
  {
    [dateCopy timeIntervalSinceDate:v7];
    if (v8 <= period)
    {
      if (self->_validKeyBagReferenceCount == self->_lastSeenKeyBagReferenceCount)
      {
        if (self->_lastValidationResult != 2 && !self->_requiresEncryptionKeyRepair && !self->_requiresDeviceRecordReferenceRepair)
        {
          v14 = 0;
          goto LABEL_17;
        }

        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=keybag-validation= Should validate keybag refs - resuming from previous repair", buf, 2u);
          goto LABEL_15;
        }
      }

      else
      {
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          validKeyBagReferenceCount = self->_validKeyBagReferenceCount;
          lastSeenKeyBagReferenceCount = self->_lastSeenKeyBagReferenceCount;
          *buf = 134218240;
          v18 = validKeyBagReferenceCount;
          v19 = 2048;
          v20 = lastSeenKeyBagReferenceCount;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=keybag-validation= Should validate keybag refs - new refs detected since the last successful validation (%llu != %llu)", buf, 0x16u);
          v13 = self->_validKeyBagReferenceCount;
          v16 = self->_lastSeenKeyBagReferenceCount;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v9 = v8;
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = v7;
        v19 = 2048;
        v20 = *&v9;
        v21 = 2048;
        periodCopy = period;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=keybag-validation= Should validate keybag refs - last successful validation was on %@ (%.2f < %.2f)", buf, 0x20u);
LABEL_15:
        _MBLog();
      }
    }
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=keybag-validation= Should validate keybag refs - no previous validation detected", buf, 2u);
      goto LABEL_15;
    }
  }

  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)_writeStateToPlist:(id)plist error:(id *)error
{
  plistCopy = plist;
  dictionaryRepresentation = [(MBKeyBagValidationState *)self dictionaryRepresentation];
  v8 = [NSPropertyListSerialization dataWithPropertyList:dictionaryRepresentation format:200 options:0 error:error];
  if (v8)
  {
    keyBagValidationStatePlistPath = [plistCopy keyBagValidationStatePlistPath];
    v10 = [v8 writeToFile:keyBagValidationStatePlistPath options:1 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)resetValidationStateWithPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  v7 = +[NSDate distantPast];
  dateOfLastSuccessfulValidation = self->_dateOfLastSuccessfulValidation;
  self->_dateOfLastSuccessfulValidation = v7;

  *&self->_requiresDeviceRecordReferenceRepair = 0;
  *&self->_lastValidationResult = 0u;
  *&self->_invalidKeyBagReferenceCount = 0u;
  v9 = [(MBKeyBagValidationState *)self _writeStateToPlist:personaCopy error:error];

  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=keybag-validation= Reset keybag validation state", v12, 2u);
      _MBLog();
    }
  }

  return v9;
}

- (BOOL)trackValidationSuccess:(unint64_t)success persona:(id)persona error:(id *)error
{
  personaCopy = persona;
  if (self->_requiresEncryptionKeyRepair)
  {
    __assert_rtn("[MBKeyBagValidationState trackValidationSuccess:persona:error:]", "MBKeyBagValidationState.m", 163, "!_requiresEncryptionKeyRepair");
  }

  if (self->_requiresDeviceRecordReferenceRepair)
  {
    __assert_rtn("[MBKeyBagValidationState trackValidationSuccess:persona:error:]", "MBKeyBagValidationState.m", 164, "!_requiresDeviceRecordReferenceRepair");
  }

  v9 = personaCopy;
  v10 = +[NSDate now];
  dateOfLastSuccessfulValidation = self->_dateOfLastSuccessfulValidation;
  self->_dateOfLastSuccessfulValidation = v10;

  self->_lastValidationResult = 1;
  self->_validKeyBagReferenceCount = success;
  self->_invalidKeyBagReferenceCount = 0;
  self->_lastSeenKeyBagReferenceCount = success;
  v12 = [(MBKeyBagValidationState *)self _writeStateToPlist:v9 error:error];
  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      successCopy = success;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=keybag-validation= Tracked keybag validation success (%llu)", buf, 0xCu);
      _MBLog();
    }
  }

  return v12;
}

- (BOOL)trackValidationFailureWithInvalidKeyBagCount:(unint64_t)count validKeyBagCount:(unint64_t)bagCount persona:(id)persona error:(id *)error
{
  *&self->_requiresDeviceRecordReferenceRepair = 257;
  self->_lastValidationResult = 2;
  self->_validKeyBagReferenceCount = bagCount;
  self->_invalidKeyBagReferenceCount = count;
  self->_lastSeenKeyBagReferenceCount = bagCount + count;
  v6 = [(MBKeyBagValidationState *)self _writeStateToPlist:persona error:error];
  if (v6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=keybag-validation= Tracked keybag validation failure", v9, 2u);
      _MBLog();
    }
  }

  return v6;
}

- (BOOL)trackRepairedDeviceRecordWithPersona:(id)persona error:(id *)error
{
  self->_requiresDeviceRecordReferenceRepair = 0;
  v4 = [(MBKeyBagValidationState *)self _writeStateToPlist:persona error:error];
  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=keybag-validation= Tracked keybag reference repair", v7, 2u);
      _MBLog();
    }
  }

  return v4;
}

- (BOOL)trackSnapshotCommit:(unint64_t)commit persona:(id)persona error:(id *)error
{
  personaCopy = persona;
  if (self->_requiresDeviceRecordReferenceRepair)
  {
    __assert_rtn("[MBKeyBagValidationState trackSnapshotCommit:persona:error:]", "MBKeyBagValidationState.m", 201, "!_requiresDeviceRecordReferenceRepair");
  }

  v9 = personaCopy;
  self->_requiresEncryptionKeyRepair = 0;
  self->_lastSeenKeyBagReferenceCount = commit;
  v10 = [(MBKeyBagValidationState *)self _writeStateToPlist:personaCopy error:error];
  if (v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=keybag-validation= Tracked snapshot commit", v13, 2u);
      _MBLog();
    }
  }

  return v10;
}

+ (BOOL)updateKeyBagCountAfterSnapshotCommit:(unint64_t)commit persona:(id)persona error:(id *)error
{
  personaCopy = persona;
  v8 = [objc_opt_class() stateForPersona:personaCopy];
  LOBYTE(error) = [v8 trackSnapshotCommit:commit persona:personaCopy error:error];

  return error;
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  lastValidationResult = self->_lastValidationResult;
  if (lastValidationResult > 2)
  {
    v6 = @"Invalid";
  }

  else
  {
    v6 = *(&off_1003C2510 + lastValidationResult);
  }

  return [NSString stringWithFormat:@"<%s: lastResult=%@(%@) requiresDeviceRecordRepair=%d requiresEncryptionKeyRepair=%d validRefCount=%llu invalidRefCount=%llu refCountAtLastCommit=%llu>", Name, v6, self->_dateOfLastSuccessfulValidation, self->_requiresDeviceRecordReferenceRepair, self->_requiresEncryptionKeyRepair, self->_validKeyBagReferenceCount, self->_invalidKeyBagReferenceCount, self->_lastSeenKeyBagReferenceCount];
}

+ (id)stateForPersona:(id)persona
{
  keyBagValidationStatePlistPath = [persona keyBagValidationStatePlistPath];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:keyBagValidationStatePlistPath];

  if (v5)
  {
    v16 = 0;
    v6 = [NSData dataWithContentsOfFile:keyBagValidationStatePlistPath options:0 error:&v16];
    v7 = v16;
    if (v6)
    {
      v15 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v6 options:2 format:0 error:&v15];
      v9 = v15;

      v10 = v8;
      if (!v8)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=keybag-validation= Error loading deserializing keybag validation state: %@", buf, 0xCu);
          _MBLog();
        }

        v10 = &__NSDictionary0__struct;
      }

      v12 = [[MBKeyBagValidationState alloc] initWithDictionaryRepresentation:v10];

      v7 = v9;
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=keybag-validation= Error loading keybag validation state: %@", buf, 0xCu);
        _MBLog();
      }

      v12 = [[MBKeyBagValidationState alloc] initWithDictionaryRepresentation:&__NSDictionary0__struct];
    }
  }

  else
  {
    v12 = [[MBKeyBagValidationState alloc] initWithDictionaryRepresentation:&__NSDictionary0__struct];
  }

  return v12;
}

@end