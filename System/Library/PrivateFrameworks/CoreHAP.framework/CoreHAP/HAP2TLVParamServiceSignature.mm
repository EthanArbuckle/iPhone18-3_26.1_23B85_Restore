@interface HAP2TLVParamServiceSignature
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVParamServiceSignature)init;
- (HAP2TLVParamServiceSignature)initWithInstanceID:(id)d serviceType:(id)type properties:(id)properties linkedServices:(id)services characteristicList:(id)list;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVParamServiceSignature

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  instanceID = [(HAP2TLVParamServiceSignature *)self instanceID];
  serviceType = [(HAP2TLVParamServiceSignature *)self serviceType];
  properties = [(HAP2TLVParamServiceSignature *)self properties];
  linkedServices = [(HAP2TLVParamServiceSignature *)self linkedServices];
  characteristicList = [(HAP2TLVParamServiceSignature *)self characteristicList];
  v9 = [v3 stringWithFormat:@"<HAP2TLVParamServiceSignature instanceID=%@, serviceType=%@, properties=%@, linkedServices=%@, characteristicList=%@>", instanceID, serviceType, properties, linkedServices, characteristicList];

  return v9;
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
      instanceID = [(HAP2TLVParamServiceSignature *)self instanceID];
      instanceID2 = [(HAP2TLVParamServiceSignature *)v6 instanceID];
      if (instanceID != instanceID2)
      {
        instanceID3 = [(HAP2TLVParamServiceSignature *)self instanceID];
        instanceID4 = [(HAP2TLVParamServiceSignature *)v6 instanceID];
        v40 = instanceID3;
        if (![instanceID3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      serviceType = [(HAP2TLVParamServiceSignature *)self serviceType];
      serviceType2 = [(HAP2TLVParamServiceSignature *)v6 serviceType];
      v41 = serviceType;
      if (serviceType != serviceType2)
      {
        serviceType3 = [(HAP2TLVParamServiceSignature *)self serviceType];
        serviceType4 = [(HAP2TLVParamServiceSignature *)v6 serviceType];
        if (![serviceType3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (instanceID == instanceID2)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      properties = [(HAP2TLVParamServiceSignature *)self properties];
      properties2 = [(HAP2TLVParamServiceSignature *)v6 properties];
      v38 = properties;
      v27 = properties == properties2;
      v15 = properties2;
      if (!v27)
      {
        properties3 = [(HAP2TLVParamServiceSignature *)self properties];
        properties4 = [(HAP2TLVParamServiceSignature *)v6 properties];
        v34 = properties3;
        if (![properties3 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == serviceType2)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      linkedServices = [(HAP2TLVParamServiceSignature *)self linkedServices];
      linkedServices2 = [(HAP2TLVParamServiceSignature *)v6 linkedServices];
      v36 = v15;
      if (linkedServices == linkedServices2)
      {
        v31 = serviceType3;
        v32 = serviceType2;
      }

      else
      {
        linkedServices3 = [(HAP2TLVParamServiceSignature *)self linkedServices];
        linkedServices4 = [(HAP2TLVParamServiceSignature *)v6 linkedServices];
        v30 = linkedServices3;
        if (![linkedServices3 isEqual:?])
        {
          v10 = 0;
          v26 = linkedServices2;
          goto LABEL_23;
        }

        v31 = serviceType3;
        v32 = serviceType2;
      }

      characteristicList = [(HAP2TLVParamServiceSignature *)self characteristicList];
      characteristicList2 = [(HAP2TLVParamServiceSignature *)v6 characteristicList];
      v22 = characteristicList2;
      if (characteristicList == characteristicList2)
      {

        v10 = 1;
        v26 = linkedServices2;
        v27 = linkedServices == linkedServices2;
      }

      else
      {
        characteristicList3 = [(HAP2TLVParamServiceSignature *)self characteristicList];
        [(HAP2TLVParamServiceSignature *)v6 characteristicList];
        v25 = v24 = linkedServices;
        v10 = [characteristicList3 isEqual:v25];

        linkedServices = v24;
        v26 = linkedServices2;
        v27 = v24 == linkedServices2;
      }

      serviceType3 = v31;
      serviceType2 = v32;
      if (v27)
      {
LABEL_24:

        v17 = v38;
        v15 = v36;
        if (v38 == v36)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

    v10 = 0;
  }

LABEL_31:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAP2TLVParamServiceSignature allocWithZone:zone];
  instanceID = [(HAP2TLVParamServiceSignature *)self instanceID];
  serviceType = [(HAP2TLVParamServiceSignature *)self serviceType];
  properties = [(HAP2TLVParamServiceSignature *)self properties];
  linkedServices = [(HAP2TLVParamServiceSignature *)self linkedServices];
  characteristicList = [(HAP2TLVParamServiceSignature *)self characteristicList];
  v10 = [(HAP2TLVParamServiceSignature *)v4 initWithInstanceID:instanceID serviceType:serviceType properties:properties linkedServices:linkedServices characteristicList:characteristicList];

  return v10;
}

- (id)serializeWithError:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  TLV8BufferInit();
  instanceID = [(HAP2TLVParamServiceSignature *)self instanceID];

  if (instanceID)
  {
    instanceID2 = [(HAP2TLVParamServiceSignature *)self instanceID];
    v39 = 0;
    v7 = [instanceID2 serializeWithError:&v39];
    v8 = v39;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_4:
      v10 = v9;

LABEL_5:
      if (error)
      {
        HMErrorFromOSStatus(v10);
        v8 = 0;
        *error = v11 = 0;
        goto LABEL_36;
      }

      v8 = 0;
LABEL_35:
      v11 = 0;
      goto LABEL_36;
    }
  }

  serviceType = [(HAP2TLVParamServiceSignature *)self serviceType];

  if (serviceType)
  {
    serviceType2 = [(HAP2TLVParamServiceSignature *)self serviceType];
    v38 = 0;
    v7 = [serviceType2 serializeWithError:&v38];
    v8 = v38;

    if (!v8)
    {
      bytes = [v7 bytes];
      v15 = bytes + [v7 length];
      while (1)
      {
        v16 = (v15 - bytes) >= 255 ? 255 : v15 - bytes;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes += v16;
        if (bytes >= v15)
        {

          goto LABEL_18;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_18:
  properties = [(HAP2TLVParamServiceSignature *)self properties];

  if (properties)
  {
    properties2 = [(HAP2TLVParamServiceSignature *)self properties];
    v37 = 0;
    v7 = [properties2 serializeWithError:&v37];
    v8 = v37;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  linkedServices = [(HAP2TLVParamServiceSignature *)self linkedServices];

  if (linkedServices)
  {
    linkedServices2 = [(HAP2TLVParamServiceSignature *)self linkedServices];
    v36 = 0;
    v7 = [linkedServices2 serializeWithError:&v36];
    v8 = v36;

    if (!v8)
    {
      bytes2 = [v7 bytes];
      v22 = bytes2 + [v7 length];
      while (1)
      {
        v23 = (v22 - bytes2) >= 255 ? 255 : v22 - bytes2;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes2 += v23;
        if (bytes2 >= v22)
        {

          goto LABEL_31;
        }
      }
    }

LABEL_33:

    if (error)
    {
      v26 = v8;
      v11 = 0;
      *error = v8;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  characteristicList = [(HAP2TLVParamServiceSignature *)self characteristicList];

  if (characteristicList)
  {
    characteristicList2 = [(HAP2TLVParamServiceSignature *)self characteristicList];
    v35 = 0;
    v7 = [characteristicList2 serializeWithError:&v35];
    v8 = v35;

    if (v8)
    {
      goto LABEL_33;
    }

    bytes3 = [v7 bytes];
    v30 = bytes3 + [v7 length];
    do
    {
      if ((v30 - bytes3) >= 255)
      {
        v31 = 255;
      }

      else
      {
        v31 = v30 - bytes3;
      }

      v32 = TLV8BufferAppend();
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31;
      }

      bytes3 += v33;
      if (v32)
      {
        v34 = 1;
      }

      else
      {
        v34 = bytes3 >= v30;
      }
    }

    while (!v34);
    v10 = v32;

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:?];
  v8 = 0;
LABEL_36:
  TLV8BufferFree();

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    errorCopy = error;
    v32 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v33 = 0;
    v13 = bytes + v8;
    while (1)
    {
      v44 = 0;
      v43 = 0;
      v42[0] = 0;
      v42[1] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (errorCopy)
        {
          HMErrorFromOSStatus(Next);
          *errorCopy = v28 = 0;
        }

        else
        {
          v28 = 0;
        }

        v26 = v32;
        v25 = v33;
        goto LABEL_35;
      }

      if (!v43)
      {
        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v29;
        if (v29)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }

      if (v44 <= 0xEu)
      {
        if (v44 == 6)
        {
          v40 = v9;
          v15 = HAPTLVParseContiguousTlvs(6, bytes, v13, v42, &v40);
          v16 = v40;

          if (v16)
          {
            goto LABEL_18;
          }

          v39 = 0;
          v24 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v39];
          v9 = v39;
          v18 = v33;
          v33 = v24;
LABEL_20:

LABEL_21:
          goto LABEL_22;
        }

        if (v44 == 7)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v41 = v9;
          v19 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v41];
          v20 = v41;

          v18 = v10;
          v10 = v19;
          v9 = v20;
          goto LABEL_20;
        }
      }

      else
      {
        switch(v44)
        {
          case 0xFu:
            v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
            v38 = v9;
            v21 = [HAP2TLVServicePropertiesWrapper parsedFromData:v15 error:&v38];
            v22 = v38;

            v18 = v12;
            v12 = v21;
            v9 = v22;
            goto LABEL_20;
          case 0x10u:
            v37 = v9;
            v15 = HAPTLVParseContiguousTlvs(16, bytes, v13, v42, &v37);
            v16 = v37;

            if (v16)
            {
              goto LABEL_18;
            }

            v36 = 0;
            v23 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v36];
            v9 = v36;
            v18 = v32;
            v32 = v23;
            goto LABEL_20;
          case 0x14u:
            v35 = v9;
            v15 = HAPTLVParseContiguousTlvs(20, bytes, v13, v42, &v35);
            v16 = v35;

            if (!v16)
            {
              v34 = 0;
              v17 = [HAP2TLVParamCharacteristicList parsedFromData:v15 error:&v34];
              v9 = v34;
              v18 = v11;
              v11 = v17;
              goto LABEL_20;
            }

LABEL_18:
            v9 = v16;
            goto LABEL_21;
        }
      }

LABEL_22:
      bytes = v42[0];
      if (v42[0] >= v13)
      {
        if (v9)
        {
LABEL_24:
          v26 = v32;
          v25 = v33;
          if (errorCopy)
          {
            v27 = v9;
            v28 = 0;
            *errorCopy = v9;
          }

          else
          {
            v28 = 0;
          }

          goto LABEL_35;
        }

LABEL_30:
        v26 = v32;
        v25 = v33;
        goto LABEL_31;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v26 = 0;
  v12 = 0;
  v25 = 0;
LABEL_31:
  [(HAP2TLVParamServiceSignature *)self setInstanceID:v10];
  [(HAP2TLVParamServiceSignature *)self setServiceType:v25];
  [(HAP2TLVParamServiceSignature *)self setProperties:v12];
  [(HAP2TLVParamServiceSignature *)self setLinkedServices:v26];
  [(HAP2TLVParamServiceSignature *)self setCharacteristicList:v11];
  v9 = 0;
  v28 = 1;
LABEL_35:

  return v28;
}

- (HAP2TLVParamServiceSignature)initWithInstanceID:(id)d serviceType:(id)type properties:(id)properties linkedServices:(id)services characteristicList:(id)list
{
  dCopy = d;
  typeCopy = type;
  propertiesCopy = properties;
  servicesCopy = services;
  listCopy = list;
  v21.receiver = self;
  v21.super_class = HAP2TLVParamServiceSignature;
  v17 = [(HAP2TLVParamServiceSignature *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_instanceID, d);
    objc_storeStrong(&v18->_serviceType, type);
    objc_storeStrong(&v18->_properties, properties);
    objc_storeStrong(&v18->_linkedServices, services);
    objc_storeStrong(&v18->_characteristicList, list);
  }

  return v18;
}

- (HAP2TLVParamServiceSignature)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamServiceSignature;
  return [(HAP2TLVParamServiceSignature *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVParamServiceSignature);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamServiceSignature *)v6 parseFromData:dataCopy error:&v11];
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