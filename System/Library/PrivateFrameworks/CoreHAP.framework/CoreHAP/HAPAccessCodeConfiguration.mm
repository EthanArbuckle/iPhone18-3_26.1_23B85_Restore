@interface HAPAccessCodeConfiguration
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPAccessCodeConfiguration)init;
- (HAPAccessCodeConfiguration)initWithCharacterSet:(id)set minimumValueLength:(id)length maximumValueLength:(id)valueLength maximumAccessCodes:(id)codes;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPAccessCodeConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  characterSet = [(HAPAccessCodeConfiguration *)self characterSet];
  minimumValueLength = [(HAPAccessCodeConfiguration *)self minimumValueLength];
  maximumValueLength = [(HAPAccessCodeConfiguration *)self maximumValueLength];
  maximumAccessCodes = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
  v8 = [v3 stringWithFormat:@"<HAPAccessCodeConfiguration characterSet=%@, minimumValueLength=%@, maximumValueLength=%@, maximumAccessCodes=%@>", characterSet, minimumValueLength, maximumValueLength, maximumAccessCodes];

  return v8;
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
      v6 = equalCopy;
      characterSet = [(HAPAccessCodeConfiguration *)self characterSet];
      characterSet2 = [(HAPAccessCodeConfiguration *)v6 characterSet];
      if (characterSet != characterSet2)
      {
        characterSet3 = [(HAPAccessCodeConfiguration *)self characterSet];
        [(HAPAccessCodeConfiguration *)v6 characterSet];
        v33 = v32 = characterSet3;
        if (![characterSet3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      minimumValueLength = [(HAPAccessCodeConfiguration *)self minimumValueLength];
      minimumValueLength2 = [(HAPAccessCodeConfiguration *)v6 minimumValueLength];
      if (minimumValueLength != minimumValueLength2)
      {
        minimumValueLength3 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
        minimumValueLength4 = [(HAPAccessCodeConfiguration *)v6 minimumValueLength];
        if (![minimumValueLength3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (characterSet == characterSet2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      maximumValueLength = [(HAPAccessCodeConfiguration *)self maximumValueLength];
      maximumValueLength2 = [(HAPAccessCodeConfiguration *)v6 maximumValueLength];
      v31 = maximumValueLength;
      v15 = maximumValueLength == maximumValueLength2;
      v16 = maximumValueLength2;
      if (v15)
      {
        v28 = minimumValueLength3;
        v29 = minimumValueLength2;
      }

      else
      {
        maximumValueLength3 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
        maximumValueLength4 = [(HAPAccessCodeConfiguration *)v6 maximumValueLength];
        v26 = maximumValueLength3;
        if (![maximumValueLength3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = minimumValueLength3;
        v29 = minimumValueLength2;
      }

      v27 = v16;
      maximumAccessCodes = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
      maximumAccessCodes2 = [(HAPAccessCodeConfiguration *)v6 maximumAccessCodes];
      v20 = maximumAccessCodes2;
      if (maximumAccessCodes == maximumAccessCodes2)
      {

        v10 = 1;
      }

      else
      {
        maximumAccessCodes3 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
        maximumAccessCodes4 = [(HAPAccessCodeConfiguration *)v6 maximumAccessCodes];
        v10 = [maximumAccessCodes3 isEqual:maximumAccessCodes4];
      }

      v23 = v31;
      v16 = v27;
      minimumValueLength3 = v28;
      minimumValueLength2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (minimumValueLength == minimumValueLength2)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPAccessCodeConfiguration allocWithZone:zone];
  characterSet = [(HAPAccessCodeConfiguration *)self characterSet];
  minimumValueLength = [(HAPAccessCodeConfiguration *)self minimumValueLength];
  maximumValueLength = [(HAPAccessCodeConfiguration *)self maximumValueLength];
  maximumAccessCodes = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
  v9 = [(HAPAccessCodeConfiguration *)v4 initWithCharacterSet:characterSet minimumValueLength:minimumValueLength maximumValueLength:maximumValueLength maximumAccessCodes:maximumAccessCodes];

  return v9;
}

- (id)serializeWithError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  TLV8BufferInit();
  characterSet = [(HAPAccessCodeConfiguration *)self characterSet];

  if (characterSet)
  {
    characterSet2 = [(HAPAccessCodeConfiguration *)self characterSet];
    v24 = 0;
    v7 = [characterSet2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  minimumValueLength = [(HAPAccessCodeConfiguration *)self minimumValueLength];

  if (!minimumValueLength)
  {
    goto LABEL_9;
  }

  minimumValueLength2 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
  v23 = 0;
  v7 = [minimumValueLength2 serializeWithError:&v23];
  v8 = v23;

  if (v8)
  {
    goto LABEL_19;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
  if (v9)
  {
LABEL_12:
    v14 = v9;

LABEL_13:
    if (error)
    {
      HMErrorFromOSStatus(v14);
      v8 = 0;
      *error = v15 = 0;
      goto LABEL_22;
    }

    v8 = 0;
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

LABEL_9:
  maximumValueLength = [(HAPAccessCodeConfiguration *)self maximumValueLength];

  if (maximumValueLength)
  {
    maximumValueLength2 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
    v22 = 0;
    v7 = [maximumValueLength2 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  maximumAccessCodes = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];

  if (maximumAccessCodes)
  {
    maximumAccessCodes2 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
    v21 = 0;
    v7 = [maximumAccessCodes2 serializeWithError:&v21];
    v8 = v21;

    if (v8)
    {
LABEL_19:

      if (error)
      {
        v18 = v8;
        v15 = 0;
        *error = v8;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
  v8 = 0;
LABEL_22:
  TLV8BufferFree();

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    selfCopy = self;
    errorCopy = error;
    v26 = dataCopy;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = bytes + v8;
    while (1)
    {
      v34 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (errorCopy)
        {
          HMErrorFromOSStatus(Next);
          *errorCopy = v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        dataCopy = v26;
        goto LABEL_28;
      }

      if (!v33)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v22;
        if (v22)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v28 = v9;
          v17 = &v28;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v28];
          v11 = v18 = v11;
          goto LABEL_14;
        }

        if (v34 == 4)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v27 = v9;
          v17 = &v27;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v27];
          v10 = v18 = v10;
          goto LABEL_14;
        }
      }

      else
      {
        if (v34 == 1)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v9;
          v17 = &v30;
          [HAPAccessCodeCharacterSetWrapper parsedFromData:v16 error:&v30];
          v13 = v18 = v13;
          goto LABEL_14;
        }

        if (v34 == 2)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v29 = v9;
          v17 = &v29;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v29];
          v12 = v18 = v12;
LABEL_14:
          v19 = *v17;

          v9 = v19;
        }
      }

      if (v31 >= v14)
      {
        if (v9)
        {
LABEL_17:
          dataCopy = v26;
          if (errorCopy)
          {
            v20 = v9;
            v21 = 0;
            *errorCopy = v9;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_28;
        }

LABEL_23:
        dataCopy = v26;
        self = selfCopy;
        goto LABEL_24;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_24:
  [(HAPAccessCodeConfiguration *)self setCharacterSet:v13];
  [(HAPAccessCodeConfiguration *)self setMinimumValueLength:v12];
  [(HAPAccessCodeConfiguration *)self setMaximumValueLength:v11];
  [(HAPAccessCodeConfiguration *)self setMaximumAccessCodes:v10];
  v9 = 0;
  v21 = 1;
LABEL_28:

  return v21;
}

- (HAPAccessCodeConfiguration)initWithCharacterSet:(id)set minimumValueLength:(id)length maximumValueLength:(id)valueLength maximumAccessCodes:(id)codes
{
  setCopy = set;
  lengthCopy = length;
  valueLengthCopy = valueLength;
  codesCopy = codes;
  v18.receiver = self;
  v18.super_class = HAPAccessCodeConfiguration;
  v15 = [(HAPAccessCodeConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_characterSet, set);
    objc_storeStrong(&v16->_minimumValueLength, length);
    objc_storeStrong(&v16->_maximumValueLength, valueLength);
    objc_storeStrong(&v16->_maximumAccessCodes, codes);
  }

  return v16;
}

- (HAPAccessCodeConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeConfiguration;
  return [(HAPAccessCodeConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPAccessCodeConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeConfiguration *)v6 parseFromData:dataCopy error:&v11];
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