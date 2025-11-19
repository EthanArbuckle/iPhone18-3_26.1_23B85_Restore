@interface HAP2TLVThreadNetworkCredentials
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVThreadNetworkCredentials)init;
- (HAP2TLVThreadNetworkCredentials)initWithNetworkName:(id)a3 channel:(id)a4 panID:(id)a5 extendedPanID:(id)a6 masterKey:(id)a7 reattachPeriod:(id)a8;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVThreadNetworkCredentials

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
  v5 = [(HAP2TLVThreadNetworkCredentials *)self channel];
  v6 = [(HAP2TLVThreadNetworkCredentials *)self panID];
  v7 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
  v8 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
  v9 = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
  v10 = [v3 stringWithFormat:@"<HAP2TLVThreadNetworkCredentials networkName=%@, channel=%@, panID=%@, extendedPanID=%@, masterKey=%@, reattachPeriod=%@>", v4, v5, v6, v7, v8, v9];

  return v10;
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
      v7 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
      v8 = [(HAP2TLVThreadNetworkCredentials *)v6 networkName];
      if (v7 != v8)
      {
        v9 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
        v55 = [(HAP2TLVThreadNetworkCredentials *)v6 networkName];
        v56 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      v11 = [(HAP2TLVThreadNetworkCredentials *)self channel];
      v12 = [(HAP2TLVThreadNetworkCredentials *)v6 channel];
      if (v11 != v12)
      {
        v3 = [(HAP2TLVThreadNetworkCredentials *)self channel];
        v53 = [(HAP2TLVThreadNetworkCredentials *)v6 channel];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (v7 == v8)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      v13 = [(HAP2TLVThreadNetworkCredentials *)self panID];
      v14 = [(HAP2TLVThreadNetworkCredentials *)v6 panID];
      v54 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v51 = v14;
      }

      else
      {
        v17 = [(HAP2TLVThreadNetworkCredentials *)self panID];
        v47 = [(HAP2TLVThreadNetworkCredentials *)v6 panID];
        v48 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (v11 == v12)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      v18 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
      v19 = [(HAP2TLVThreadNetworkCredentials *)v6 extendedPanID];
      v49 = v18;
      v50 = v3;
      v15 = v18 == v19;
      v20 = v19;
      if (!v15)
      {
        v21 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
        v41 = [(HAP2TLVThreadNetworkCredentials *)v6 extendedPanID];
        v42 = v21;
        if (![v21 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          v3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      v26 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
      v44 = [(HAP2TLVThreadNetworkCredentials *)v6 masterKey];
      v45 = v26;
      v46 = v20;
      v43 = v12;
      if (v26 == v44)
      {
        v40 = v11;
        v29 = v51;
      }

      else
      {
        v27 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
        v38 = [(HAP2TLVThreadNetworkCredentials *)v6 masterKey];
        v39 = v27;
        v28 = [v27 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = v44;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = v11;
      }

      v30 = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
      v31 = [(HAP2TLVThreadNetworkCredentials *)v6 reattachPeriod];
      v32 = v31;
      if (v30 == v31)
      {

        v10 = 1;
      }

      else
      {
        [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
        v33 = v52 = v29;
        v34 = [(HAP2TLVThreadNetworkCredentials *)v6 reattachPeriod];
        v10 = [v33 isEqual:v34];

        v29 = v52;
      }

      v36 = v44;
      v35 = v45;
      v11 = v40;
      if (v45 == v44)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        v12 = v43;
        if (v49 == v46)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_28:
      v22 = v29;

      goto LABEL_30;
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAP2TLVThreadNetworkCredentials allocWithZone:a3];
  v5 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
  v6 = [(HAP2TLVThreadNetworkCredentials *)self channel];
  v7 = [(HAP2TLVThreadNetworkCredentials *)self panID];
  v8 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
  v9 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
  v10 = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
  v11 = [(HAP2TLVThreadNetworkCredentials *)v4 initWithNetworkName:v5 channel:v6 panID:v7 extendedPanID:v8 masterKey:v9 reattachPeriod:v10];

  return v11;
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
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  TLV8BufferInit();
  v5 = [(HAP2TLVThreadNetworkCredentials *)self networkName];

  if (v5)
  {
    v6 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
    v39 = 0;
    v7 = [v6 serializeWithError:&v39];
    v8 = v39;

    if (!v8)
    {
      v9 = [v7 bytes];
      v10 = v9 + [v7 length];
      while (1)
      {
        v11 = (v10 - v9) >= 255 ? 255 : v10 - v9;
        v12 = TLV8BufferAppend();
        if (v12)
        {
          goto LABEL_17;
        }

        v9 += v11;
        if (v9 >= v10)
        {

          goto LABEL_10;
        }
      }
    }

LABEL_42:

    if (a3)
    {
      v31 = v8;
      v18 = 0;
      *a3 = v8;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_10:
  v13 = [(HAP2TLVThreadNetworkCredentials *)self channel];

  if (v13)
  {
    v14 = [(HAP2TLVThreadNetworkCredentials *)self channel];
    v38 = 0;
    v7 = [v14 serializeWithError:&v38];
    v8 = v38;

    if (v8)
    {
      goto LABEL_42;
    }

    [v7 bytes];
    [v7 length];
    v12 = TLV8BufferAppend();
    if (v12)
    {
      goto LABEL_17;
    }
  }

  v15 = [(HAP2TLVThreadNetworkCredentials *)self panID];

  if (v15)
  {
    v16 = [(HAP2TLVThreadNetworkCredentials *)self panID];
    v37 = 0;
    v7 = [v16 serializeWithError:&v37];
    v8 = v37;

    if (v8)
    {
      goto LABEL_42;
    }

    [v7 bytes];
    [v7 length];
    v12 = TLV8BufferAppend();
    if (v12)
    {
      goto LABEL_17;
    }
  }

  v19 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];

  if (v19)
  {
    v20 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
    v36 = 0;
    v7 = [v20 serializeWithError:&v36];
    v8 = v36;

    if (v8)
    {
      goto LABEL_42;
    }

    v21 = [v7 bytes];
    v22 = v21 + [v7 length];
    while (1)
    {
      v23 = (v22 - v21) >= 255 ? 255 : v22 - v21;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        goto LABEL_17;
      }

      v21 += v23;
      if (v21 >= v22)
      {

        break;
      }
    }
  }

  v24 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];

  if (v24)
  {
    v25 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
    v35 = 0;
    v7 = [v25 serializeWithError:&v35];
    v8 = v35;

    if (v8)
    {
      goto LABEL_42;
    }

    v26 = [v7 bytes];
    v27 = v26 + [v7 length];
    while (1)
    {
      v28 = (v27 - v26) >= 255 ? 255 : v27 - v26;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      v26 += v28;
      if (v26 >= v27)
      {

        goto LABEL_40;
      }
    }

LABEL_17:
    v17 = v12;

LABEL_18:
    if (a3)
    {
      HMErrorFromOSStatus(v17);
      v8 = 0;
      *a3 = v18 = 0;
      goto LABEL_45;
    }

    v8 = 0;
LABEL_44:
    v18 = 0;
    goto LABEL_45;
  }

LABEL_40:
  v29 = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];

  if (v29)
  {
    v30 = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
    v34 = 0;
    v7 = [v30 serializeWithError:&v34];
    v8 = v34;

    if (v8)
    {
      goto LABEL_42;
    }

    [v7 bytes];
    [v7 length];
    v17 = TLV8BufferAppend();

    if (v17)
    {
      goto LABEL_18;
    }
  }

  v18 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:?];
  v8 = 0;
LABEL_45:
  TLV8BufferFree();

  v32 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];
  if (v7 < 1)
  {
    v25 = 0;
    v9 = 0;
    v10 = 0;
    v29 = 0;
    v26 = 0;
    v11 = 0;
LABEL_34:
    [(HAP2TLVThreadNetworkCredentials *)self setNetworkName:v25];
    [(HAP2TLVThreadNetworkCredentials *)self setChannel:v9];
    [(HAP2TLVThreadNetworkCredentials *)self setPanID:v11];
    [(HAP2TLVThreadNetworkCredentials *)self setExtendedPanID:v26];
    [(HAP2TLVThreadNetworkCredentials *)self setMasterKey:v29];
    [(HAP2TLVThreadNetworkCredentials *)self setReattachPeriod:v10];
    v8 = 0;
    v31 = v29;
    v28 = 1;
    goto LABEL_39;
  }

  v8 = 0;
  v35 = 0;
  v36 = 0;
  v9 = 0;
  v10 = 0;
  v34 = 0;
  v11 = 0;
  v12 = v6 + v7;
  while (1)
  {
    v48 = 0;
    v46[1] = 0;
    v47 = 0;
    v46[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v47)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v8 = v30;
      if (v30)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v48 > 3u)
    {
      switch(v48)
      {
        case 4u:
          v41 = v8;
          v14 = HAPTLVParseContiguousTlvs(4, v6, v12, v46, &v41);
          v19 = v41;

          if (!v19)
          {
            v40 = 0;
            v21 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v40];
            v8 = v40;
            v17 = v35;
            v35 = v21;
            goto LABEL_23;
          }

          goto LABEL_21;
        case 5u:
          v39 = v8;
          v14 = HAPTLVParseContiguousTlvs(5, v6, v12, v46, &v39);
          v19 = v39;

          if (!v19)
          {
            v38 = 0;
            v24 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v38];
            v8 = v38;
            v17 = v34;
            v34 = v24;
            goto LABEL_23;
          }

          goto LABEL_21;
        case 6u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v37 = v8;
          v18 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v37];
          v16 = v37;

          v17 = v10;
          v10 = v18;
LABEL_14:
          v8 = v16;
LABEL_23:

LABEL_24:
          break;
      }
    }

    else
    {
      switch(v48)
      {
        case 1u:
          v45 = v8;
          v14 = HAPTLVParseContiguousTlvs(1, v6, v12, v46, &v45);
          v19 = v45;

          if (!v19)
          {
            v44 = 0;
            v20 = [MEMORY[0x277CCACA8] parsedFromData:v14 error:&v44];
            v8 = v44;
            v17 = v36;
            v36 = v20;
            goto LABEL_23;
          }

LABEL_21:
          v8 = v19;
          goto LABEL_24;
        case 2u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v43 = v8;
          v22 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v43];
          v23 = v43;

          v17 = v9;
          v9 = v22;
          v8 = v23;
          goto LABEL_23;
        case 3u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v42 = v8;
          v15 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v42];
          v16 = v42;

          v17 = v11;
          v11 = v15;
          goto LABEL_14;
      }
    }

    v6 = v46[0];
    if (v46[0] >= v12)
    {
      if (v8)
      {
LABEL_27:
        v26 = v35;
        v25 = v36;
        if (a4)
        {
          v27 = v8;
          v28 = 0;
          *a4 = v8;
        }

        else
        {
          v28 = 0;
        }

        goto LABEL_38;
      }

LABEL_33:
      v26 = v35;
      v25 = v36;
      v29 = v34;
      goto LABEL_34;
    }
  }

  if (a4)
  {
    HMErrorFromOSStatus(Next);
    *a4 = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

  v26 = v35;
  v25 = v36;
LABEL_38:
  v31 = v34;
LABEL_39:

  return v28;
}

- (HAP2TLVThreadNetworkCredentials)initWithNetworkName:(id)a3 channel:(id)a4 panID:(id)a5 extendedPanID:(id)a6 masterKey:(id)a7 reattachPeriod:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HAP2TLVThreadNetworkCredentials;
  v18 = [(HAP2TLVThreadNetworkCredentials *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_networkName, a3);
    objc_storeStrong(&v19->_channel, a4);
    objc_storeStrong(&v19->_panID, a5);
    objc_storeStrong(&v19->_extendedPanID, a6);
    objc_storeStrong(&v19->_masterKey, a7);
    objc_storeStrong(&v19->_reattachPeriod, a8);
  }

  return v19;
}

- (HAP2TLVThreadNetworkCredentials)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVThreadNetworkCredentials;
  return [(HAP2TLVThreadNetworkCredentials *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVThreadNetworkCredentials);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVThreadNetworkCredentials *)v6 parseFromData:v5 error:&v11];
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