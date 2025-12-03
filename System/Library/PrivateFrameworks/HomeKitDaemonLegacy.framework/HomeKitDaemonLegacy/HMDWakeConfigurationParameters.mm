@interface HMDWakeConfigurationParameters
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDWakeConfigurationParameters)init;
- (HMDWakeConfigurationParameters)initWithDelimiter:(id)delimiter primaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDWakeConfigurationParameters

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  delimiter = [(HMDWakeConfigurationParameters *)self delimiter];
  primaryIdentifier = [(HMDWakeConfigurationParameters *)self primaryIdentifier];
  secondaryIdentifier = [(HMDWakeConfigurationParameters *)self secondaryIdentifier];
  v7 = [v3 stringWithFormat:@"<HMDWakeConfigurationParameters delimiter=%@, primaryIdentifier=%@, secondaryIdentifier=%@>", delimiter, primaryIdentifier, secondaryIdentifier];

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
      delimiter = [(HMDWakeConfigurationParameters *)self delimiter];
      delimiter2 = [(HMDWakeConfigurationParameters *)v7 delimiter];
      if (delimiter != delimiter2)
      {
        delimiter3 = [(HMDWakeConfigurationParameters *)self delimiter];
        delimiter4 = [(HMDWakeConfigurationParameters *)v7 delimiter];
        if (![delimiter3 isEqual:delimiter4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      primaryIdentifier = [(HMDWakeConfigurationParameters *)self primaryIdentifier];
      primaryIdentifier2 = [(HMDWakeConfigurationParameters *)v7 primaryIdentifier];
      v13 = primaryIdentifier2;
      if (primaryIdentifier == primaryIdentifier2)
      {
        v28 = primaryIdentifier2;
      }

      else
      {
        primaryIdentifier3 = [(HMDWakeConfigurationParameters *)self primaryIdentifier];
        primaryIdentifier4 = [(HMDWakeConfigurationParameters *)v7 primaryIdentifier];
        if (![primaryIdentifier3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = primaryIdentifier3;
        v28 = v13;
      }

      secondaryIdentifier = [(HMDWakeConfigurationParameters *)self secondaryIdentifier];
      secondaryIdentifier2 = [(HMDWakeConfigurationParameters *)v7 secondaryIdentifier];
      v17 = secondaryIdentifier2;
      if (secondaryIdentifier == secondaryIdentifier2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDWakeConfigurationParameters *)self secondaryIdentifier];
        v18 = v25 = delimiter3;
        [(HMDWakeConfigurationParameters *)v7 secondaryIdentifier];
        v24 = primaryIdentifier;
        v19 = delimiter4;
        v20 = delimiter2;
        v22 = v21 = delimiter;
        v10 = [v18 isEqual:v22];

        delimiter = v21;
        delimiter2 = v20;
        delimiter4 = v19;
        primaryIdentifier = v24;

        delimiter3 = v25;
      }

      v13 = v28;
      primaryIdentifier3 = v26;
      if (primaryIdentifier == v28)
      {
LABEL_18:

        if (delimiter == delimiter2)
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
  v4 = [HMDWakeConfigurationParameters allocWithZone:zone];
  delimiter = [(HMDWakeConfigurationParameters *)self delimiter];
  primaryIdentifier = [(HMDWakeConfigurationParameters *)self primaryIdentifier];
  secondaryIdentifier = [(HMDWakeConfigurationParameters *)self secondaryIdentifier];
  v8 = [(HMDWakeConfigurationParameters *)v4 initWithDelimiter:delimiter primaryIdentifier:primaryIdentifier secondaryIdentifier:secondaryIdentifier];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  TLV8BufferInit();
  delimiter = [(HMDWakeConfigurationParameters *)self delimiter];

  if (delimiter)
  {
    delimiter2 = [(HMDWakeConfigurationParameters *)self delimiter];
    v37 = 0;
    secondaryIdentifier = [delimiter2 serializeWithError:&v37];
    v8 = v37;

    if (!v8)
    {
      bytes = [secondaryIdentifier bytes];
      v10 = bytes + [secondaryIdentifier length];
      while (1)
      {
        v11 = (v10 - bytes) >= 255 ? 255 : v10 - bytes;
        if (TLV8BufferAppend())
        {
          goto LABEL_40;
        }

        bytes += v11;
        if (bytes >= v10)
        {

          goto LABEL_10;
        }
      }
    }

LABEL_12:

    if (error)
    {
      v14 = v8;
      v15 = 0;
      *error = v8;
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_10:
  primaryIdentifier = [(HMDWakeConfigurationParameters *)self primaryIdentifier];

  if (!primaryIdentifier)
  {
LABEL_21:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    secondaryIdentifier = [(HMDWakeConfigurationParameters *)self secondaryIdentifier];
    v30 = [secondaryIdentifier countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (!v30)
    {
LABEL_37:

      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
      v8 = 0;
      goto LABEL_44;
    }

    v19 = *v33;
    v20 = 1;
    while (1)
    {
      v21 = 0;
      while (2)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(secondaryIdentifier);
        }

        v22 = *(*(&v32 + 1) + 8 * v21);
        if ((v20 & 1) == 0)
        {
          if (TLV8BufferAppend())
          {
            goto LABEL_40;
          }
        }

        v31 = 0;
        v23 = [v22 serializeWithError:{&v31, v30}];
        v24 = v31;
        if (v24)
        {
          v8 = v24;

          goto LABEL_12;
        }

        bytes2 = [v23 bytes];
        v26 = bytes2 + [v23 length];
        do
        {
          if ((v26 - bytes2) >= 255)
          {
            v27 = 255;
          }

          else
          {
            v27 = v26 - bytes2;
          }

          if (TLV8BufferAppend())
          {

            goto LABEL_40;
          }

          bytes2 += v27;
        }

        while (bytes2 < v26);

        v20 = 0;
        if (++v21 != v30)
        {
          continue;
        }

        break;
      }

      v20 = 0;
      v30 = [secondaryIdentifier countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (!v30)
      {
        goto LABEL_37;
      }
    }
  }

  primaryIdentifier2 = [(HMDWakeConfigurationParameters *)self primaryIdentifier];
  v36 = 0;
  secondaryIdentifier = [primaryIdentifier2 serializeWithError:&v36];
  v8 = v36;

  if (v8)
  {
    goto LABEL_12;
  }

  bytes3 = [secondaryIdentifier bytes];
  v17 = bytes3 + [secondaryIdentifier length];
  while (1)
  {
    v18 = (v17 - bytes3) >= 255 ? 255 : v17 - bytes3;
    if (TLV8BufferAppend())
    {
      break;
    }

    bytes3 += v18;
    if (bytes3 >= v17)
    {

      goto LABEL_21;
    }
  }

LABEL_40:

  if (error)
  {
    HMErrorFromOSStatus();
    v8 = 0;
    *error = v15 = 0;
    goto LABEL_44;
  }

  v8 = 0;
LABEL_43:
  v15 = 0;
LABEL_44:
  TLV8BufferFree();

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
  array = [MEMORY[0x277CBEB18] array];
  v9 = array;
  if (v7 < 1)
  {
    v11 = 0;
    v12 = 0;
LABEL_27:
    [(HMDWakeConfigurationParameters *)self setDelimiter:v11, error];
    [(HMDWakeConfigurationParameters *)self setPrimaryIdentifier:v12];
    [(HMDWakeConfigurationParameters *)self setSecondaryIdentifier:v9];
    v10 = 0;
    v20 = 1;
    goto LABEL_30;
  }

  v24 = array;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v7;
  while (1)
  {
    v34 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    if (TLV8GetNext())
    {
      break;
    }

    if (!v33)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v10 = v21;
      if (!v21)
      {
        goto LABEL_26;
      }

LABEL_20:
      if (error)
      {
        v19 = v10;
        v20 = 0;
        *error = v10;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    switch(v34)
    {
      case 2:
        v26 = v10;
        v14 = HAPTLVParseContiguousTlvs();
        v15 = v26;

        if (v15)
        {
LABEL_13:
          v10 = v15;
LABEL_17:

          break;
        }

        v25 = 0;
        v17 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v25];
        v10 = v25;
        if (!v10)
        {
          [v24 addObject:v17];
        }

LABEL_16:

        goto LABEL_17;
      case 1:
        v28 = v10;
        v14 = HAPTLVParseContiguousTlvs();
        v15 = v28;

        if (v15)
        {
          goto LABEL_13;
        }

        v27 = 0;
        v18 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v27];
        v10 = v27;
        v17 = v12;
        v12 = v18;
        goto LABEL_16;
      case 0:
        v30 = v10;
        v14 = HAPTLVParseContiguousTlvs();
        v15 = v30;

        if (v15)
        {
          goto LABEL_13;
        }

        v29 = 0;
        v16 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v29];
        v10 = v29;
        v17 = v11;
        v11 = v16;
        goto LABEL_16;
    }

    if (v31 >= v13)
    {
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_26:
      v9 = v24;
      goto LABEL_27;
    }
  }

  if (error)
  {
    HMErrorFromOSStatus();
    *error = v20 = 0;
    goto LABEL_29;
  }

LABEL_28:
  v20 = 0;
LABEL_29:
  v9 = v24;
LABEL_30:

  return v20;
}

- (HMDWakeConfigurationParameters)initWithDelimiter:(id)delimiter primaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier
{
  delimiterCopy = delimiter;
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  v17.receiver = self;
  v17.super_class = HMDWakeConfigurationParameters;
  v12 = [(HMDWakeConfigurationParameters *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delimiter, delimiter);
    objc_storeStrong(&v13->_primaryIdentifier, identifier);
    v14 = [secondaryIdentifierCopy mutableCopy];
    secondaryIdentifier = v13->_secondaryIdentifier;
    v13->_secondaryIdentifier = v14;
  }

  return v13;
}

- (HMDWakeConfigurationParameters)init
{
  v3.receiver = self;
  v3.super_class = HMDWakeConfigurationParameters;
  return [(HMDWakeConfigurationParameters *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDWakeConfigurationParameters);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDWakeConfigurationParameters *)v6 parseFromData:dataCopy error:&v11];
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