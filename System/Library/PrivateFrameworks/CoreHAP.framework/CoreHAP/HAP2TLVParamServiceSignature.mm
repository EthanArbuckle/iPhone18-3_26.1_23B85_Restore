@interface HAP2TLVParamServiceSignature
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVParamServiceSignature)init;
- (HAP2TLVParamServiceSignature)initWithInstanceID:(id)a3 serviceType:(id)a4 properties:(id)a5 linkedServices:(id)a6 characteristicList:(id)a7;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVParamServiceSignature

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2TLVParamServiceSignature *)self instanceID];
  v5 = [(HAP2TLVParamServiceSignature *)self serviceType];
  v6 = [(HAP2TLVParamServiceSignature *)self properties];
  v7 = [(HAP2TLVParamServiceSignature *)self linkedServices];
  v8 = [(HAP2TLVParamServiceSignature *)self characteristicList];
  v9 = [v3 stringWithFormat:@"<HAP2TLVParamServiceSignature instanceID=%@, serviceType=%@, properties=%@, linkedServices=%@, characteristicList=%@>", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HAP2TLVParamServiceSignature *)self instanceID];
      v8 = [(HAP2TLVParamServiceSignature *)v6 instanceID];
      if (v7 != v8)
      {
        v9 = [(HAP2TLVParamServiceSignature *)self instanceID];
        v39 = [(HAP2TLVParamServiceSignature *)v6 instanceID];
        v40 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      v11 = [(HAP2TLVParamServiceSignature *)self serviceType];
      v12 = [(HAP2TLVParamServiceSignature *)v6 serviceType];
      v41 = v11;
      if (v11 != v12)
      {
        v3 = [(HAP2TLVParamServiceSignature *)self serviceType];
        v37 = [(HAP2TLVParamServiceSignature *)v6 serviceType];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (v7 == v8)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v13 = [(HAP2TLVParamServiceSignature *)self properties];
      v14 = [(HAP2TLVParamServiceSignature *)v6 properties];
      v38 = v13;
      v27 = v13 == v14;
      v15 = v14;
      if (!v27)
      {
        v16 = [(HAP2TLVParamServiceSignature *)self properties];
        v33 = [(HAP2TLVParamServiceSignature *)v6 properties];
        v34 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == v12)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      v18 = [(HAP2TLVParamServiceSignature *)self linkedServices];
      v35 = [(HAP2TLVParamServiceSignature *)v6 linkedServices];
      v36 = v15;
      if (v18 == v35)
      {
        v31 = v3;
        v32 = v12;
      }

      else
      {
        v19 = [(HAP2TLVParamServiceSignature *)self linkedServices];
        v29 = [(HAP2TLVParamServiceSignature *)v6 linkedServices];
        v30 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v26 = v35;
          goto LABEL_23;
        }

        v31 = v3;
        v32 = v12;
      }

      v20 = [(HAP2TLVParamServiceSignature *)self characteristicList];
      v21 = [(HAP2TLVParamServiceSignature *)v6 characteristicList];
      v22 = v21;
      if (v20 == v21)
      {

        v10 = 1;
        v26 = v35;
        v27 = v18 == v35;
      }

      else
      {
        v23 = [(HAP2TLVParamServiceSignature *)self characteristicList];
        [(HAP2TLVParamServiceSignature *)v6 characteristicList];
        v25 = v24 = v18;
        v10 = [v23 isEqual:v25];

        v18 = v24;
        v26 = v35;
        v27 = v24 == v35;
      }

      v3 = v31;
      v12 = v32;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAP2TLVParamServiceSignature allocWithZone:a3];
  v5 = [(HAP2TLVParamServiceSignature *)self instanceID];
  v6 = [(HAP2TLVParamServiceSignature *)self serviceType];
  v7 = [(HAP2TLVParamServiceSignature *)self properties];
  v8 = [(HAP2TLVParamServiceSignature *)self linkedServices];
  v9 = [(HAP2TLVParamServiceSignature *)self characteristicList];
  v10 = [(HAP2TLVParamServiceSignature *)v4 initWithInstanceID:v5 serviceType:v6 properties:v7 linkedServices:v8 characteristicList:v9];

  return v10;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAP2TLVParamServiceSignature *)self instanceID];

  if (v5)
  {
    v6 = [(HAP2TLVParamServiceSignature *)self instanceID];
    v39 = 0;
    v7 = [v6 serializeWithError:&v39];
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
      if (a3)
      {
        HMErrorFromOSStatus(v10);
        v8 = 0;
        *a3 = v11 = 0;
        goto LABEL_36;
      }

      v8 = 0;
LABEL_35:
      v11 = 0;
      goto LABEL_36;
    }
  }

  v12 = [(HAP2TLVParamServiceSignature *)self serviceType];

  if (v12)
  {
    v13 = [(HAP2TLVParamServiceSignature *)self serviceType];
    v38 = 0;
    v7 = [v13 serializeWithError:&v38];
    v8 = v38;

    if (!v8)
    {
      v14 = [v7 bytes];
      v15 = v14 + [v7 length];
      while (1)
      {
        v16 = (v15 - v14) >= 255 ? 255 : v15 - v14;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v14 += v16;
        if (v14 >= v15)
        {

          goto LABEL_18;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_18:
  v17 = [(HAP2TLVParamServiceSignature *)self properties];

  if (v17)
  {
    v18 = [(HAP2TLVParamServiceSignature *)self properties];
    v37 = 0;
    v7 = [v18 serializeWithError:&v37];
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

  v19 = [(HAP2TLVParamServiceSignature *)self linkedServices];

  if (v19)
  {
    v20 = [(HAP2TLVParamServiceSignature *)self linkedServices];
    v36 = 0;
    v7 = [v20 serializeWithError:&v36];
    v8 = v36;

    if (!v8)
    {
      v21 = [v7 bytes];
      v22 = v21 + [v7 length];
      while (1)
      {
        v23 = (v22 - v21) >= 255 ? 255 : v22 - v21;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v21 += v23;
        if (v21 >= v22)
        {

          goto LABEL_31;
        }
      }
    }

LABEL_33:

    if (a3)
    {
      v26 = v8;
      v11 = 0;
      *a3 = v8;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  v24 = [(HAP2TLVParamServiceSignature *)self characteristicList];

  if (v24)
  {
    v25 = [(HAP2TLVParamServiceSignature *)self characteristicList];
    v35 = 0;
    v7 = [v25 serializeWithError:&v35];
    v8 = v35;

    if (v8)
    {
      goto LABEL_33;
    }

    v29 = [v7 bytes];
    v30 = v29 + [v7 length];
    do
    {
      if ((v30 - v29) >= 255)
      {
        v31 = 255;
      }

      else
      {
        v31 = v30 - v29;
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

      v29 += v33;
      if (v32)
      {
        v34 = 1;
      }

      else
      {
        v34 = v29 >= v30;
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

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v31 = a4;
    v32 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v33 = 0;
    v13 = v7 + v8;
    while (1)
    {
      v44 = 0;
      v43 = 0;
      v42[0] = 0;
      v42[1] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (v31)
        {
          HMErrorFromOSStatus(Next);
          *v31 = v28 = 0;
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
          v15 = HAPTLVParseContiguousTlvs(6, v7, v13, v42, &v40);
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
            v15 = HAPTLVParseContiguousTlvs(16, v7, v13, v42, &v37);
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
            v15 = HAPTLVParseContiguousTlvs(20, v7, v13, v42, &v35);
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
      v7 = v42[0];
      if (v42[0] >= v13)
      {
        if (v9)
        {
LABEL_24:
          v26 = v32;
          v25 = v33;
          if (v31)
          {
            v27 = v9;
            v28 = 0;
            *v31 = v9;
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

- (HAP2TLVParamServiceSignature)initWithInstanceID:(id)a3 serviceType:(id)a4 properties:(id)a5 linkedServices:(id)a6 characteristicList:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HAP2TLVParamServiceSignature;
  v17 = [(HAP2TLVParamServiceSignature *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_instanceID, a3);
    objc_storeStrong(&v18->_serviceType, a4);
    objc_storeStrong(&v18->_properties, a5);
    objc_storeStrong(&v18->_linkedServices, a6);
    objc_storeStrong(&v18->_characteristicList, a7);
  }

  return v18;
}

- (HAP2TLVParamServiceSignature)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamServiceSignature;
  return [(HAP2TLVParamServiceSignature *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVParamServiceSignature);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamServiceSignature *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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