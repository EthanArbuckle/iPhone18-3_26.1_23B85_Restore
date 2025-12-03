@interface HAPSelectedAudioStreamConfiguration
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPSelectedAudioStreamConfiguration)init;
- (HAPSelectedAudioStreamConfiguration)initWithConfiguration:(id)configuration;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPSelectedAudioStreamConfiguration

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  configuration = [(HAPSelectedAudioStreamConfiguration *)self configuration];
  v4 = [v2 stringWithFormat:@"<HAPSelectedAudioStreamConfiguration configuration=%@>", configuration];

  return v4;
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
      v5 = equalCopy;
      configuration = [(HAPSelectedAudioStreamConfiguration *)self configuration];
      configuration2 = [(HAPSelectedAudioStreamConfiguration *)v5 configuration];
      if (configuration == configuration2)
      {
        v10 = 1;
      }

      else
      {
        configuration3 = [(HAPSelectedAudioStreamConfiguration *)self configuration];
        configuration4 = [(HAPSelectedAudioStreamConfiguration *)v5 configuration];
        v10 = [configuration3 isEqual:configuration4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPSelectedAudioStreamConfiguration allocWithZone:zone];
  configuration = [(HAPSelectedAudioStreamConfiguration *)self configuration];
  v6 = [(HAPSelectedAudioStreamConfiguration *)v4 initWithConfiguration:configuration];

  return v6;
}

- (id)serializeWithError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  TLV8BufferInit();
  configuration = [(HAPSelectedAudioStreamConfiguration *)self configuration];

  if (!configuration)
  {
    goto LABEL_20;
  }

  configuration2 = [(HAPSelectedAudioStreamConfiguration *)self configuration];
  v20 = 0;
  v7 = [configuration2 serializeWithError:&v20];
  v8 = v20;

  if (!v8)
  {
    bytes = [v7 bytes];
    v12 = bytes + [v7 length];
    do
    {
      if ((v12 - bytes) >= 255)
      {
        v13 = 255;
      }

      else
      {
        v13 = v12 - bytes;
      }

      v14 = TLV8BufferAppend();
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      bytes += v15;
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = bytes >= v12;
      }
    }

    while (!v16);
    v17 = v14;

    if (v17)
    {
      if (error)
      {
        HMErrorFromOSStatus(v17);
        v8 = 0;
        *error = v10 = 0;
        goto LABEL_23;
      }

      v8 = 0;
      goto LABEL_22;
    }

LABEL_20:
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:?];
    v8 = 0;
    goto LABEL_23;
  }

  if (error)
  {
    v9 = v8;
    v10 = 0;
    *error = v8;
    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
LABEL_23:
  TLV8BufferFree();

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
LABEL_13:
    [(HAPSelectedAudioStreamConfiguration *)self setConfiguration:v9];
    v10 = 0;
    v16 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = bytes + v8;
    while (1)
    {
      v24 = 0;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (error)
        {
          HMErrorFromOSStatus(Next);
          *error = v16 = 0;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (!v23)
      {
        break;
      }

      if (v24 == 1)
      {
        v21 = v10;
        v13 = HAPTLVParseContiguousTlvs(1, bytes, v11, v22, &v21);
        v14 = v21;

        if (!v14)
        {
          v20 = 0;
          v15 = [HAPAudioStreamCodecConfiguration parsedFromData:v13 error:&v20];
          v14 = v20;

          v9 = v15;
        }

        v10 = v14;
      }

      bytes = v22[0];
      if (v22[0] >= v11)
      {
        if (!v10)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

    v10 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_17:
    if (error)
    {
      v18 = v10;
      v16 = 0;
      *error = v10;
      goto LABEL_20;
    }

LABEL_19:
    v16 = 0;
  }

LABEL_20:

  return v16;
}

- (HAPSelectedAudioStreamConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = HAPSelectedAudioStreamConfiguration;
  v6 = [(HAPSelectedAudioStreamConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (HAPSelectedAudioStreamConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPSelectedAudioStreamConfiguration;
  return [(HAPSelectedAudioStreamConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPSelectedAudioStreamConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPSelectedAudioStreamConfiguration *)v6 parseFromData:dataCopy error:&v11];
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