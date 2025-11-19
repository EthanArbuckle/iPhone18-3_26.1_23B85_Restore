@interface NRBluetoothLinkPreferences
- (BOOL)isEqual:(id)a3;
- (BOOL)isNotEmpty;
- (NRBluetoothLinkPreferences)init;
- (id)copyEncodedXPCDict;
- (id)copyLongDescription;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)combinePreferences:(id)a3;
- (void)setInputBytesPerSecond:(id)a3;
- (void)setOutputBytesPerSecond:(id)a3;
- (void)setPacketsPerSecond:(id)a3;
@end

@implementation NRBluetoothLinkPreferences

- (void)combinePreferences:(id)a3
{
  v43 = a3;
  if (![v43 isNotEmpty])
  {
    goto LABEL_11;
  }

  v4 = [*&self->_reportedToABC unsignedLongLongValue];
  v5 = [v43 inputBytesPerSecond];
  v6 = [v5 unsignedLongLongValue] + v4;

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
  v9 = [(NSNumber *)self->_inputBytesPerSecond unsignedLongLongValue];
  v10 = [v43 outputBytesPerSecond];
  v11 = [v10 unsignedLongLongValue] + v9;

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
  v14 = [(NSNumber *)self->_outputBytesPerSecond unsignedLongLongValue];
  v15 = [v43 packetsPerSecond];
  v16 = [v15 unsignedLongLongValue] + v14;

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

- (void)setPacketsPerSecond:(id)a3
{
  v4 = checkAndCapValue(a3);
  outputBytesPerSecond = self->_outputBytesPerSecond;
  self->_outputBytesPerSecond = v4;

  MEMORY[0x2821F96F8](v4, outputBytesPerSecond);
}

- (void)setOutputBytesPerSecond:(id)a3
{
  v4 = checkAndCapValue(a3);
  inputBytesPerSecond = self->_inputBytesPerSecond;
  self->_inputBytesPerSecond = v4;

  MEMORY[0x2821F96F8](v4, inputBytesPerSecond);
}

- (void)setInputBytesPerSecond:(id)a3
{
  v4 = checkAndCapValue(a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [*&self->_reportedToABC unsignedLongLongValue];
      v7 = [(NRBluetoothLinkPreferences *)v5 inputBytesPerSecond];
      if (v6 == [v7 unsignedLongLongValue])
      {
        v8 = [(NSNumber *)self->_inputBytesPerSecond unsignedLongLongValue];
        v9 = [(NRBluetoothLinkPreferences *)v5 outputBytesPerSecond];
        if (v8 == [v9 unsignedLongLongValue])
        {
          v10 = [(NSNumber *)self->_outputBytesPerSecond unsignedLongLongValue];
          v11 = [(NRBluetoothLinkPreferences *)v5 packetsPerSecond];
          v12 = v10 == [v11 unsignedLongLongValue];
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
  v4 = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  v5 = [v4 unsignedLongLongValue];
  v6 = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  v7 = [v6 unsignedLongLongValue];
  v8 = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  v9 = [v3 initWithFormat:@"LinkPrefBT[%lluibps, %lluobps, %llupps]", v5, v7, objc_msgSend(v8, "unsignedLongLongValue")];

  return v9;
}

- (id)copyLongDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = NRBluetoothLinkPreferences;
  v4 = [(NRLinkPreferences *)&v10 description];
  v5 = [v3 initWithString:v4];

  v6 = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  [v5 appendFormat:@"\nInput bytes/sec: %llu", objc_msgSend(v6, "unsignedLongLongValue")];

  v7 = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  [v5 appendFormat:@"\nOutput bytes/sec: %llu", objc_msgSend(v7, "unsignedLongLongValue")];

  v8 = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  [v5 appendFormat:@"\nPackets/sec: %llu", objc_msgSend(v8, "unsignedLongLongValue")];

  return v5;
}

- (id)copyEncodedXPCDict
{
  v8.receiver = self;
  v8.super_class = NRBluetoothLinkPreferences;
  v3 = [(NRLinkPreferences *)&v8 copyEncodedXPCDict];
  v4 = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  NRLPAddUint64ToXPCDict(v3, "InputBPS", v4);

  v5 = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  NRLPAddUint64ToXPCDict(v3, "OutputBPS", v5);

  v6 = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  NRLPAddUint64ToXPCDict(v3, "PacketsPerSecond", v6);

  return v3;
}

- (BOOL)isNotEmpty
{
  v3 = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  if ([v3 unsignedLongLongValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
    if ([v5 unsignedLongLongValue])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
      v4 = [v6 unsignedLongLongValue] != 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = NRBluetoothLinkPreferences;
  v5 = [(NRLinkPreferences *)&v13 copyWithZone:?];
  v6 = [(NRBluetoothLinkPreferences *)self inputBytesPerSecond];
  v7 = [v6 copyWithZone:a3];
  [v5 setInputBytesPerSecond:v7];

  v8 = [(NRBluetoothLinkPreferences *)self outputBytesPerSecond];
  v9 = [v8 copyWithZone:a3];
  [v5 setOutputBytesPerSecond:v9];

  v10 = [(NRBluetoothLinkPreferences *)self packetsPerSecond];
  v11 = [v10 copyWithZone:a3];
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