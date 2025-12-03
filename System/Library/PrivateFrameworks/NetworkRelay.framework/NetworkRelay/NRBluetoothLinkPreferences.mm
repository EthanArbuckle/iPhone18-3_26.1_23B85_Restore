@interface NRBluetoothLinkPreferences
- (BOOL)isEqual:(id)equal;
- (BOOL)isNotEmpty;
- (NRBluetoothLinkPreferences)init;
- (id)copyEncodedXPCDict;
- (id)copyLongDescription;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)combinePreferences:(id)preferences;
- (void)setInputBytesPerSecond:(id)second;
- (void)setOutputBytesPerSecond:(id)second;
- (void)setPacketsPerSecond:(id)second;
@end

@implementation NRBluetoothLinkPreferences

- (void)combinePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (![preferencesCopy isNotEmpty])
  {
    goto LABEL_11;
  }

  unsignedLongLongValue = [*&self->_reportedToABC unsignedLongLongValue];
  inputBytesPerSecond = [preferencesCopy inputBytesPerSecond];
  v6 = [inputBytesPerSecond unsignedLongLongValue] + unsignedLongLongValue;

  if (!HIDWORD(v6))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v8 = *&self->_reportedToABC;
    *&self->_reportedToABC = v7;
LABEL_4:

    goto LABEL_5;
  }

  v19 = nrCopyLogObj_461();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_21:
    v8 = nrCopyLogObj_461();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %llu > UINT32_MAX, capping", v24, v25, v26, v27, v28, "");
    goto LABEL_4;
  }

  v22 = v19;
  v23 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

  if (v23)
  {
    goto LABEL_21;
  }

LABEL_5:
  unsignedLongLongValue2 = [(NSNumber *)self->_inputBytesPerSecond unsignedLongLongValue];
  outputBytesPerSecond = [preferencesCopy outputBytesPerSecond];
  v11 = [outputBytesPerSecond unsignedLongLongValue] + unsignedLongLongValue2;

  if (HIDWORD(v11))
  {
    v20 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v29 = v20;
      v30 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v30)
      {
        goto LABEL_8;
      }
    }

    inputBytesPerSecond = nrCopyLogObj_461();
    _NRLogWithArgs(inputBytesPerSecond, 16, "%s%.30s:%-4d %llu > UINT32_MAX, capping", v31, v32, v33, v34, v35, "");
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    inputBytesPerSecond = self->_inputBytesPerSecond;
    self->_inputBytesPerSecond = v12;
  }

LABEL_8:
  unsignedLongLongValue3 = [(NSNumber *)self->_outputBytesPerSecond unsignedLongLongValue];
  packetsPerSecond = [preferencesCopy packetsPerSecond];
  v16 = [packetsPerSecond unsignedLongLongValue] + unsignedLongLongValue3;

  if (!HIDWORD(v16))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
    outputBytesPerSecond = self->_outputBytesPerSecond;
    self->_outputBytesPerSecond = v17;
LABEL_10:

    goto LABEL_11;
  }

  v21 = nrCopyLogObj_461();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_25:
    outputBytesPerSecond = nrCopyLogObj_461();
    _NRLogWithArgs(outputBytesPerSecond, 16, "%s%.30s:%-4d %llu > UINT32_MAX, capping", v38, v39, v40, v41, v42, "");
    goto LABEL_10;
  }

  v36 = v21;
  v37 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v37)
  {
    goto LABEL_25;
  }

LABEL_11:
}

- (void)setPacketsPerSecond:(id)second
{
  v4 = checkAndCapValue(second);
  outputBytesPerSecond = self->_outputBytesPerSecond;
  self->_outputBytesPerSecond = v4;

  MEMORY[0x2821F96F8](v4, outputBytesPerSecond);
}

- (void)setOutputBytesPerSecond:(id)second
{
  v4 = checkAndCapValue(second);
  inputBytesPerSecond = self->_inputBytesPerSecond;
  self->_inputBytesPerSecond = v4;

  MEMORY[0x2821F96F8](v4, inputBytesPerSecond);
}

- (void)setInputBytesPerSecond:(id)second
{
  v4 = checkAndCapValue(second);
  v5 = *&self->_reportedToABC;
  *&self->_reportedToABC = v4;

  MEMORY[0x2821F96F8](v4, v5);
}

- (unint64_t)hash
{
  v3 = [*&self->_reportedToABC hash];
  v4 = [(NSNumber *)self->_inputBytesPerSecond hash]^ v3;
  return v4 ^ [(NSNumber *)self->_outputBytesPerSecond hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      unsignedLongLongValue = [*&self->_reportedToABC unsignedLongLongValue];
      inputBytesPerSecond = [(NRBluetoothLinkPreferences *)v5 inputBytesPerSecond];
      if (unsignedLongLongValue == [inputBytesPerSecond unsignedLongLongValue])
      {
        unsignedLongLongValue2 = [(NSNumber *)self->_inputBytesPerSecond unsignedLongLongValue];
        outputBytesPerSecond = [(NRBluetoothLinkPreferences *)v5 outputBytesPerSecond];
        if (unsignedLongLongValue2 == [outputBytesPerSecond unsignedLongLongValue])
        {
          unsignedLongLongValue3 = [(NSNumber *)self->_outputBytesPerSecond unsignedLongLongValue];
          packetsPerSecond = [(NRBluetoothLinkPreferences *)v5 packetsPerSecond];
          v12 = unsignedLongLongValue3 == [packetsPerSecond unsignedLongLongValue];
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
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyShortDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  inputBytesPerSecond = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  unsignedLongLongValue = [inputBytesPerSecond unsignedLongLongValue];
  outputBytesPerSecond = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  unsignedLongLongValue2 = [outputBytesPerSecond unsignedLongLongValue];
  packetsPerSecond = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  v9 = [v3 initWithFormat:@"LinkPrefBT[%lluibps, %lluobps, %llupps]", unsignedLongLongValue, unsignedLongLongValue2, objc_msgSend(packetsPerSecond, "unsignedLongLongValue")];

  return v9;
}

- (id)copyLongDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = NRBluetoothLinkPreferences;
  v4 = [(NRLinkPreferences *)&v10 description];
  v5 = [v3 initWithString:v4];

  inputBytesPerSecond = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  [v5 appendFormat:@"\nInput bytes/sec: %llu", objc_msgSend(inputBytesPerSecond, "unsignedLongLongValue")];

  outputBytesPerSecond = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  [v5 appendFormat:@"\nOutput bytes/sec: %llu", objc_msgSend(outputBytesPerSecond, "unsignedLongLongValue")];

  packetsPerSecond = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  [v5 appendFormat:@"\nPackets/sec: %llu", objc_msgSend(packetsPerSecond, "unsignedLongLongValue")];

  return v5;
}

- (id)copyEncodedXPCDict
{
  v8.receiver = self;
  v8.super_class = NRBluetoothLinkPreferences;
  copyEncodedXPCDict = [(NRLinkPreferences *)&v8 copyEncodedXPCDict];
  inputBytesPerSecond = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  NRLPAddUint64ToXPCDict(copyEncodedXPCDict, "InputBPS", inputBytesPerSecond);

  outputBytesPerSecond = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  NRLPAddUint64ToXPCDict(copyEncodedXPCDict, "OutputBPS", outputBytesPerSecond);

  packetsPerSecond = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  NRLPAddUint64ToXPCDict(copyEncodedXPCDict, "PacketsPerSecond", packetsPerSecond);

  return copyEncodedXPCDict;
}

- (BOOL)isNotEmpty
{
  inputBytesPerSecond = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  if ([inputBytesPerSecond unsignedLongLongValue])
  {
    v4 = 1;
  }

  else
  {
    outputBytesPerSecond = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
    if ([outputBytesPerSecond unsignedLongLongValue])
    {
      v4 = 1;
    }

    else
    {
      packetsPerSecond = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
      v4 = [packetsPerSecond unsignedLongLongValue] != 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = NRBluetoothLinkPreferences;
  v5 = [(NRLinkPreferences *)&v13 copyWithZone:?];
  inputBytesPerSecond = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  v7 = [inputBytesPerSecond copyWithZone:zone];
  [v5 setInputBytesPerSecond:v7];

  outputBytesPerSecond = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  v9 = [outputBytesPerSecond copyWithZone:zone];
  [v5 setOutputBytesPerSecond:v9];

  packetsPerSecond = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  v11 = [packetsPerSecond copyWithZone:zone];
  [v5 setPacketsPerSecond:v11];

  return v5;
}

- (NRBluetoothLinkPreferences)init
{
  v15.receiver = self;
  v15.super_class = NRBluetoothLinkPreferences;
  v2 = [(NRLinkPreferences *)&v15 initWithLinkType:1];
  v3 = v2;
  if (!v2)
  {
    v6 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_3;
      }
    }

    v9 = nrCopyLogObj_461();
    _NRLogWithArgs(v9, 17, "Failed to initialize link preferences object", v10, v11, v12, v13, v14, v15.receiver);

    goto LABEL_3;
  }

  v4 = v2;
LABEL_3:

  return v3;
}

@end