@interface HAP2TLVThreadNetworkCredentials
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVThreadNetworkCredentials)init;
- (HAP2TLVThreadNetworkCredentials)initWithNetworkName:(id)name channel:(id)channel panID:(id)d extendedPanID:(id)iD masterKey:(id)key reattachPeriod:(id)period;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVThreadNetworkCredentials

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  networkName = [(HAP2TLVThreadNetworkCredentials *)self networkName];
  channel = [(HAP2TLVThreadNetworkCredentials *)self channel];
  panID = [(HAP2TLVThreadNetworkCredentials *)self panID];
  extendedPanID = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
  masterKey = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
  reattachPeriod = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
  v10 = [v3 stringWithFormat:@"<HAP2TLVThreadNetworkCredentials networkName=%@, channel=%@, panID=%@, extendedPanID=%@, masterKey=%@, reattachPeriod=%@>", networkName, channel, panID, extendedPanID, masterKey, reattachPeriod];

  return v10;
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
      networkName = [(HAP2TLVThreadNetworkCredentials *)self networkName];
      networkName2 = [(HAP2TLVThreadNetworkCredentials *)v6 networkName];
      if (networkName != networkName2)
      {
        networkName3 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
        networkName4 = [(HAP2TLVThreadNetworkCredentials *)v6 networkName];
        v56 = networkName3;
        if (![networkName3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      channel = [(HAP2TLVThreadNetworkCredentials *)self channel];
      channel2 = [(HAP2TLVThreadNetworkCredentials *)v6 channel];
      if (channel != channel2)
      {
        channel3 = [(HAP2TLVThreadNetworkCredentials *)self channel];
        channel4 = [(HAP2TLVThreadNetworkCredentials *)v6 channel];
        if (![channel3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (networkName == networkName2)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      panID = [(HAP2TLVThreadNetworkCredentials *)self panID];
      panID2 = [(HAP2TLVThreadNetworkCredentials *)v6 panID];
      v54 = panID;
      v15 = panID == panID2;
      v16 = panID2;
      if (v15)
      {
        v51 = panID2;
      }

      else
      {
        panID3 = [(HAP2TLVThreadNetworkCredentials *)self panID];
        panID4 = [(HAP2TLVThreadNetworkCredentials *)v6 panID];
        v48 = panID3;
        if (![panID3 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (channel == channel2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      extendedPanID = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
      extendedPanID2 = [(HAP2TLVThreadNetworkCredentials *)v6 extendedPanID];
      v49 = extendedPanID;
      v50 = channel3;
      v15 = extendedPanID == extendedPanID2;
      v20 = extendedPanID2;
      if (!v15)
      {
        extendedPanID3 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
        extendedPanID4 = [(HAP2TLVThreadNetworkCredentials *)v6 extendedPanID];
        v42 = extendedPanID3;
        if (![extendedPanID3 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          channel3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      masterKey = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
      masterKey2 = [(HAP2TLVThreadNetworkCredentials *)v6 masterKey];
      v45 = masterKey;
      v46 = v20;
      v43 = channel2;
      if (masterKey == masterKey2)
      {
        v40 = channel;
        v29 = v51;
      }

      else
      {
        masterKey3 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
        masterKey4 = [(HAP2TLVThreadNetworkCredentials *)v6 masterKey];
        v39 = masterKey3;
        v28 = [masterKey3 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = masterKey2;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = channel;
      }

      reattachPeriod = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
      reattachPeriod2 = [(HAP2TLVThreadNetworkCredentials *)v6 reattachPeriod];
      v32 = reattachPeriod2;
      if (reattachPeriod == reattachPeriod2)
      {

        v10 = 1;
      }

      else
      {
        [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
        v33 = v52 = v29;
        reattachPeriod3 = [(HAP2TLVThreadNetworkCredentials *)v6 reattachPeriod];
        v10 = [v33 isEqual:reattachPeriod3];

        v29 = v52;
      }

      v36 = masterKey2;
      v35 = v45;
      channel = v40;
      if (v45 == masterKey2)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        channel2 = v43;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAP2TLVThreadNetworkCredentials allocWithZone:zone];
  networkName = [(HAP2TLVThreadNetworkCredentials *)self networkName];
  channel = [(HAP2TLVThreadNetworkCredentials *)self channel];
  panID = [(HAP2TLVThreadNetworkCredentials *)self panID];
  extendedPanID = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
  masterKey = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
  reattachPeriod = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
  v11 = [(HAP2TLVThreadNetworkCredentials *)v4 initWithNetworkName:networkName channel:channel panID:panID extendedPanID:extendedPanID masterKey:masterKey reattachPeriod:reattachPeriod];

  return v11;
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
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  TLV8BufferInit();
  networkName = [(HAP2TLVThreadNetworkCredentials *)self networkName];

  if (networkName)
  {
    networkName2 = [(HAP2TLVThreadNetworkCredentials *)self networkName];
    v39 = 0;
    v7 = [networkName2 serializeWithError:&v39];
    v8 = v39;

    if (!v8)
    {
      bytes = [v7 bytes];
      v10 = bytes + [v7 length];
      while (1)
      {
        v11 = (v10 - bytes) >= 255 ? 255 : v10 - bytes;
        v12 = TLV8BufferAppend();
        if (v12)
        {
          goto LABEL_17;
        }

        bytes += v11;
        if (bytes >= v10)
        {

          goto LABEL_10;
        }
      }
    }

LABEL_42:

    if (error)
    {
      v31 = v8;
      v18 = 0;
      *error = v8;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_10:
  channel = [(HAP2TLVThreadNetworkCredentials *)self channel];

  if (channel)
  {
    channel2 = [(HAP2TLVThreadNetworkCredentials *)self channel];
    v38 = 0;
    v7 = [channel2 serializeWithError:&v38];
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

  panID = [(HAP2TLVThreadNetworkCredentials *)self panID];

  if (panID)
  {
    panID2 = [(HAP2TLVThreadNetworkCredentials *)self panID];
    v37 = 0;
    v7 = [panID2 serializeWithError:&v37];
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

  extendedPanID = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];

  if (extendedPanID)
  {
    extendedPanID2 = [(HAP2TLVThreadNetworkCredentials *)self extendedPanID];
    v36 = 0;
    v7 = [extendedPanID2 serializeWithError:&v36];
    v8 = v36;

    if (v8)
    {
      goto LABEL_42;
    }

    bytes2 = [v7 bytes];
    v22 = bytes2 + [v7 length];
    while (1)
    {
      v23 = (v22 - bytes2) >= 255 ? 255 : v22 - bytes2;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        goto LABEL_17;
      }

      bytes2 += v23;
      if (bytes2 >= v22)
      {

        break;
      }
    }
  }

  masterKey = [(HAP2TLVThreadNetworkCredentials *)self masterKey];

  if (masterKey)
  {
    masterKey2 = [(HAP2TLVThreadNetworkCredentials *)self masterKey];
    v35 = 0;
    v7 = [masterKey2 serializeWithError:&v35];
    v8 = v35;

    if (v8)
    {
      goto LABEL_42;
    }

    bytes3 = [v7 bytes];
    v27 = bytes3 + [v7 length];
    while (1)
    {
      v28 = (v27 - bytes3) >= 255 ? 255 : v27 - bytes3;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes3 += v28;
      if (bytes3 >= v27)
      {

        goto LABEL_40;
      }
    }

LABEL_17:
    v17 = v12;

LABEL_18:
    if (error)
    {
      HMErrorFromOSStatus(v17);
      v8 = 0;
      *error = v18 = 0;
      goto LABEL_45;
    }

    v8 = 0;
LABEL_44:
    v18 = 0;
    goto LABEL_45;
  }

LABEL_40:
  reattachPeriod = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];

  if (reattachPeriod)
  {
    reattachPeriod2 = [(HAP2TLVThreadNetworkCredentials *)self reattachPeriod];
    v34 = 0;
    v7 = [reattachPeriod2 serializeWithError:&v34];
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
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
  v12 = bytes + v7;
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
          v14 = HAPTLVParseContiguousTlvs(4, bytes, v12, v46, &v41);
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
          v14 = HAPTLVParseContiguousTlvs(5, bytes, v12, v46, &v39);
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
          v14 = HAPTLVParseContiguousTlvs(1, bytes, v12, v46, &v45);
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

    bytes = v46[0];
    if (v46[0] >= v12)
    {
      if (v8)
      {
LABEL_27:
        v26 = v35;
        v25 = v36;
        if (error)
        {
          v27 = v8;
          v28 = 0;
          *error = v8;
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

  if (error)
  {
    HMErrorFromOSStatus(Next);
    *error = v28 = 0;
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

- (HAP2TLVThreadNetworkCredentials)initWithNetworkName:(id)name channel:(id)channel panID:(id)d extendedPanID:(id)iD masterKey:(id)key reattachPeriod:(id)period
{
  nameCopy = name;
  channelCopy = channel;
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  periodCopy = period;
  v24.receiver = self;
  v24.super_class = HAP2TLVThreadNetworkCredentials;
  v18 = [(HAP2TLVThreadNetworkCredentials *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_networkName, name);
    objc_storeStrong(&v19->_channel, channel);
    objc_storeStrong(&v19->_panID, d);
    objc_storeStrong(&v19->_extendedPanID, iD);
    objc_storeStrong(&v19->_masterKey, key);
    objc_storeStrong(&v19->_reattachPeriod, period);
  }

  return v19;
}

- (HAP2TLVThreadNetworkCredentials)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVThreadNetworkCredentials;
  return [(HAP2TLVThreadNetworkCredentials *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVThreadNetworkCredentials);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVThreadNetworkCredentials *)v6 parseFromData:dataCopy error:&v11];
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