@interface HAPDataStreamTransportSetup
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDataStreamTransportSetup)init;
- (HAPDataStreamTransportSetup)initWithCommand:(id)command transportType:(id)type controllerKeySalt:(id)salt;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDataStreamTransportSetup

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  command = [(HAPDataStreamTransportSetup *)self command];
  transportType = [(HAPDataStreamTransportSetup *)self transportType];
  controllerKeySalt = [(HAPDataStreamTransportSetup *)self controllerKeySalt];
  v7 = [v3 stringWithFormat:@"<HAPDataStreamTransportSetup command=%@, transportType=%@, controllerKeySalt=%@>", command, transportType, controllerKeySalt];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      command = [(HAPDataStreamTransportSetup *)self command];
      command2 = [(HAPDataStreamTransportSetup *)v7 command];
      if (command != command2)
      {
        command3 = [(HAPDataStreamTransportSetup *)self command];
        command4 = [(HAPDataStreamTransportSetup *)v7 command];
        if (![command3 isEqual:command4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      transportType = [(HAPDataStreamTransportSetup *)self transportType];
      transportType2 = [(HAPDataStreamTransportSetup *)v7 transportType];
      v13 = transportType2;
      if (transportType == transportType2)
      {
        v28 = transportType2;
      }

      else
      {
        transportType3 = [(HAPDataStreamTransportSetup *)self transportType];
        transportType4 = [(HAPDataStreamTransportSetup *)v7 transportType];
        if (![transportType3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = transportType3;
        v28 = v13;
      }

      controllerKeySalt = [(HAPDataStreamTransportSetup *)self controllerKeySalt];
      controllerKeySalt2 = [(HAPDataStreamTransportSetup *)v7 controllerKeySalt];
      v17 = controllerKeySalt2;
      if (controllerKeySalt == controllerKeySalt2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPDataStreamTransportSetup *)self controllerKeySalt];
        v18 = v25 = command3;
        [(HAPDataStreamTransportSetup *)v7 controllerKeySalt];
        v24 = transportType;
        v19 = command4;
        v20 = command2;
        v22 = v21 = command;
        v10 = [v18 isEqual:v22];

        command = v21;
        command2 = v20;
        command4 = v19;
        transportType = v24;

        command3 = v25;
      }

      v13 = v28;
      transportType3 = v26;
      if (transportType == v28)
      {
LABEL_18:

        if (command == command2)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPDataStreamTransportSetup allocWithZone:zone];
  command = [(HAPDataStreamTransportSetup *)self command];
  transportType = [(HAPDataStreamTransportSetup *)self transportType];
  controllerKeySalt = [(HAPDataStreamTransportSetup *)self controllerKeySalt];
  v8 = [(HAPDataStreamTransportSetup *)v4 initWithCommand:command transportType:transportType controllerKeySalt:controllerKeySalt];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  TLV8BufferInit();
  command = [(HAPDataStreamTransportSetup *)self command];

  if (command)
  {
    command2 = [(HAPDataStreamTransportSetup *)self command];
    v27 = 0;
    v7 = [command2 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_8:
      v12 = v9;

LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus(v12);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_32;
      }

      v8 = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_32;
    }
  }

  transportType = [(HAPDataStreamTransportSetup *)self transportType];

  if (transportType)
  {
    transportType2 = [(HAPDataStreamTransportSetup *)self transportType];
    v26 = 0;
    v7 = [transportType2 serializeWithError:&v26];
    v8 = v26;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  controllerKeySalt = [(HAPDataStreamTransportSetup *)self controllerKeySalt];

  if (controllerKeySalt)
  {
    controllerKeySalt2 = [(HAPDataStreamTransportSetup *)self controllerKeySalt];
    v25 = 0;
    v7 = [controllerKeySalt2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
LABEL_15:

      if (error)
      {
        v16 = v8;
        v13 = 0;
        *error = v8;
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    bytes = [v7 bytes];
    v18 = bytes + [v7 length];
    do
    {
      if ((v18 - bytes) >= 255)
      {
        v19 = 255;
      }

      else
      {
        v19 = v18 - bytes;
      }

      v20 = TLV8BufferAppend();
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      bytes += v21;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = bytes >= v18;
      }
    }

    while (!v22);
    v12 = v20;

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_32:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_23:
    [(HAPDataStreamTransportSetup *)self setCommand:v12, selfCopy];
    [(HAPDataStreamTransportSetup *)self setTransportType:v11];
    [(HAPDataStreamTransportSetup *)self setControllerKeySalt:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v33 = 0;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v32)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v23;
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    switch(v33)
    {
      case 3:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v31, &v28);
        v17 = v28;

        if (!v17)
        {
          v27 = 0;
          v20 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v27];
          v17 = v27;
          v18 = v10;
          v10 = v20;
LABEL_12:
        }

        v9 = v17;
        break;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v9;
        v19 = [HAPDataStreamTransportProtocolWrapper parsedFromData:v15 error:&v29];
        v17 = v29;

        v18 = v11;
        v11 = v19;
        goto LABEL_12;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v30 = v9;
        v16 = [HAPDataStreamTransportCommandWrapper parsedFromData:v15 error:&v30];
        v17 = v30;

        v18 = v12;
        v12 = v16;
        goto LABEL_12;
    }

    bytes = v31[0];
    if (v31[0] >= v13)
    {
      if (v9)
      {
LABEL_16:
        if (errorCopy)
        {
          v21 = v9;
          v22 = 0;
          *errorCopy = v9;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      self = selfCopy;
      goto LABEL_23;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v22 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

- (HAPDataStreamTransportSetup)initWithCommand:(id)command transportType:(id)type controllerKeySalt:(id)salt
{
  commandCopy = command;
  typeCopy = type;
  saltCopy = salt;
  v15.receiver = self;
  v15.super_class = HAPDataStreamTransportSetup;
  v12 = [(HAPDataStreamTransportSetup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_command, command);
    objc_storeStrong(&v13->_transportType, type);
    objc_storeStrong(&v13->_controllerKeySalt, salt);
  }

  return v13;
}

- (HAPDataStreamTransportSetup)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportSetup;
  return [(HAPDataStreamTransportSetup *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDataStreamTransportSetup);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportSetup *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end