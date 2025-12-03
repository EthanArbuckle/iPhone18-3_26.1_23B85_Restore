@interface CDPFollowUpContext
+ (id)_contextWithType:(id)type cdpContext:(id)context;
+ (id)contextForADPStateHealing;
+ (id)contextForADPUpsell;
+ (id)contextForRecoveryKeyMismatchHealing;
+ (id)contextForSOSCompatibilityMode;
+ (id)contextForStateRepair;
+ (id)contextWithType:(id)type;
- (CDPFollowUpContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDPFollowUpContext

+ (id)contextWithType:(id)type
{
  typeCopy = type;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setShouldNotify:1];
  [v4 setFollowUpType:typeCopy];

  return v4;
}

+ (id)_contextWithType:(id)type cdpContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [self contextWithType:type];
  altDSID = [contextCopy altDSID];
  [v7 setAltDSID:altDSID];

  telemetryFlowID = [contextCopy telemetryFlowID];
  [v7 setTelemetryFlowID:telemetryFlowID];

  telemetryDeviceSessionID = [contextCopy telemetryDeviceSessionID];

  [v7 setTelemetryDeviceSessionID:telemetryDeviceSessionID];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    altDSID2 = [v7 altDSID];
    v15 = 141558274;
    v16 = 1752392040;
    v17 = 2112;
    v18 = altDSID2;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "CDPFollowUpContext: set altDSID to %{mask.hash}@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)contextForSOSCompatibilityMode
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[CDPFollowUpContext contextForSOSCompatibilityMode];
  }

  v4 = [self contextWithType:@"kSOSCompatibilityMode"];
  [v4 setRepairType:0];

  return v4;
}

+ (id)contextForRecoveryKeyMismatchHealing
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[CDPFollowUpContext contextForRecoveryKeyMismatchHealing];
  }

  v4 = [self contextWithType:@"kRecoveryKeyMismatchHealing"];

  return v4;
}

+ (id)contextForADPUpsell
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[CDPFollowUpContext contextForADPUpsell];
  }

  v4 = [self contextWithType:@"kADPUpsell"];

  return v4;
}

+ (id)contextForADPStateHealing
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[CDPFollowUpContext contextForADPStateHealing];
  }

  v4 = [self contextWithType:@"kADPStateHealing"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  followUpType = self->_followUpType;
  coderCopy = coder;
  [coderCopy encodeObject:followUpType forKey:@"_followUpType"];
  [coderCopy encodeBool:self->_shouldNotify forKey:@"_shouldNotify"];
  [coderCopy encodeBool:self->_force forKey:@"_force"];
  [coderCopy encodeInteger:self->_repairType forKey:@"_repairType"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [coderCopy encodeObject:self->_telemetryDeviceSessionID forKey:@"_telemetryDeviceSessionID"];
}

- (CDPFollowUpContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CDPFollowUpContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_followUpType"];
    followUpType = v5->_followUpType;
    v5->_followUpType = v6;

    v5->_shouldNotify = [coderCopy decodeBoolForKey:@"_shouldNotify"];
    v5->_force = [coderCopy decodeBoolForKey:@"_force"];
    v5->_repairType = [coderCopy decodeIntegerForKey:@"_repairType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryDeviceSessionID"];
    telemetryDeviceSessionID = v5->_telemetryDeviceSessionID;
    v5->_telemetryDeviceSessionID = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p - type=%@ shouldNotify=%{BOOL}d force=%{BOOL}d>", v4, self, self->_followUpType, self->_shouldNotify, self->_force];

  return v5;
}

+ (id)contextForStateRepair
{
  v2 = [self contextWithType:@"kCDPStateRepair"];
  [v2 setRepairType:0];

  return v2;
}

@end