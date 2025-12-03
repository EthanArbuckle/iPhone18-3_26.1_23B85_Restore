@interface HAPNFCAccessControl
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPNFCAccessControl)init;
- (HAPNFCAccessControl)initWithOperationType:(id)type issuerKeyRequest:(id)request issuerKeyResponse:(id)response deviceCredentialKeyRequest:(id)keyRequest deviceCredentialKeyResponse:(id)keyResponse readerKeyRequest:(id)readerKeyRequest readerKeyResponse:(id)readerKeyResponse;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPNFCAccessControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  operationType = [(HAPNFCAccessControl *)self operationType];
  issuerKeyRequest = [(HAPNFCAccessControl *)self issuerKeyRequest];
  issuerKeyResponse = [(HAPNFCAccessControl *)self issuerKeyResponse];
  deviceCredentialKeyRequest = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
  deviceCredentialKeyResponse = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
  readerKeyRequest = [(HAPNFCAccessControl *)self readerKeyRequest];
  readerKeyResponse = [(HAPNFCAccessControl *)self readerKeyResponse];
  v11 = [v3 stringWithFormat:@"<HAPNFCAccessControl operationType=%@, issuerKeyRequest=%@, issuerKeyResponse=%@, deviceCredentialKeyRequest=%@, deviceCredentialKeyResponse=%@, readerKeyRequest=%@, readerKeyResponse=%@>", operationType, issuerKeyRequest, issuerKeyResponse, deviceCredentialKeyRequest, deviceCredentialKeyResponse, readerKeyRequest, readerKeyResponse];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      operationType = [(HAPNFCAccessControl *)self operationType];
      operationType2 = [(HAPNFCAccessControl *)v5 operationType];
      if (operationType != operationType2)
      {
        operationType3 = [(HAPNFCAccessControl *)self operationType];
        operationType4 = [(HAPNFCAccessControl *)v5 operationType];
        v59 = operationType3;
        if (![operationType3 isEqual:?])
        {
          v9 = 0;
          goto LABEL_39;
        }
      }

      issuerKeyRequest = [(HAPNFCAccessControl *)self issuerKeyRequest];
      issuerKeyRequest2 = [(HAPNFCAccessControl *)v5 issuerKeyRequest];
      if (issuerKeyRequest != issuerKeyRequest2)
      {
        issuerKeyRequest3 = [(HAPNFCAccessControl *)self issuerKeyRequest];
        issuerKeyRequest4 = [(HAPNFCAccessControl *)v5 issuerKeyRequest];
        if (![issuerKeyRequest3 isEqual:?])
        {
          v9 = 0;
LABEL_37:

LABEL_38:
          if (operationType == operationType2)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_39:

          goto LABEL_40;
        }

        v54 = issuerKeyRequest3;
      }

      issuerKeyResponse = [(HAPNFCAccessControl *)self issuerKeyResponse];
      issuerKeyResponse2 = [(HAPNFCAccessControl *)v5 issuerKeyResponse];
      v57 = issuerKeyResponse;
      if (issuerKeyResponse != issuerKeyResponse2)
      {
        issuerKeyResponse3 = [(HAPNFCAccessControl *)self issuerKeyResponse];
        issuerKeyResponse4 = [(HAPNFCAccessControl *)v5 issuerKeyResponse];
        v51 = issuerKeyResponse3;
        if (![issuerKeyResponse3 isEqual:?])
        {
          v9 = 0;
          v15 = issuerKeyResponse2;
LABEL_35:

LABEL_36:
          issuerKeyRequest3 = v54;
          if (issuerKeyRequest == issuerKeyRequest2)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      deviceCredentialKeyRequest = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
      deviceCredentialKeyRequest2 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyRequest];
      v52 = issuerKeyRequest;
      v53 = deviceCredentialKeyRequest;
      v18 = deviceCredentialKeyRequest == deviceCredentialKeyRequest2;
      v19 = deviceCredentialKeyRequest2;
      if (!v18)
      {
        deviceCredentialKeyRequest3 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
        deviceCredentialKeyRequest4 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyRequest];
        v47 = deviceCredentialKeyRequest3;
        if (![deviceCredentialKeyRequest3 isEqual:?])
        {
          v21 = issuerKeyResponse2;
          v9 = 0;
          v22 = v53;
LABEL_33:

LABEL_34:
          issuerKeyResponse = v57;
          v15 = v21;
          v18 = v57 == v21;
          issuerKeyRequest = v52;
          if (v18)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      deviceCredentialKeyResponse = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
      deviceCredentialKeyResponse2 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyResponse];
      v48 = deviceCredentialKeyResponse;
      v49 = v19;
      v18 = deviceCredentialKeyResponse == deviceCredentialKeyResponse2;
      v25 = deviceCredentialKeyResponse2;
      if (!v18)
      {
        deviceCredentialKeyResponse3 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
        deviceCredentialKeyResponse4 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyResponse];
        v43 = deviceCredentialKeyResponse3;
        if (![deviceCredentialKeyResponse3 isEqual:?])
        {
          v9 = 0;
          v31 = v48;
          goto LABEL_30;
        }
      }

      readerKeyRequest = [(HAPNFCAccessControl *)self readerKeyRequest];
      readerKeyRequest2 = [(HAPNFCAccessControl *)v5 readerKeyRequest];
      v45 = readerKeyRequest;
      if (readerKeyRequest == readerKeyRequest2 || (-[HAPNFCAccessControl readerKeyRequest](self, "readerKeyRequest"), v28 = objc_claimAutoreleasedReturnValue(), -[HAPNFCAccessControl readerKeyRequest](v5, "readerKeyRequest"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v28, [v28 isEqual:?]))
      {
        readerKeyResponse = [(HAPNFCAccessControl *)self readerKeyResponse];
        readerKeyResponse2 = [(HAPNFCAccessControl *)v5 readerKeyResponse];
        v34 = readerKeyResponse2;
        if (readerKeyResponse == readerKeyResponse2)
        {

          v9 = 1;
        }

        else
        {
          [(HAPNFCAccessControl *)self readerKeyResponse];
          v36 = v35 = v25;
          [(HAPNFCAccessControl *)v5 readerKeyResponse];
          v37 = v39 = readerKeyResponse;
          v9 = [v36 isEqual:v37];

          v25 = v35;
        }

        v30 = readerKeyRequest2;
        v29 = v45;
        if (v45 == readerKeyRequest2)
        {
LABEL_29:

          v31 = v48;
          if (v48 == v25)
          {
            v21 = issuerKeyResponse2;
LABEL_32:

            v22 = v53;
            v19 = v49;
            if (v53 == v49)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

LABEL_30:
          v21 = issuerKeyResponse2;

          goto LABEL_32;
        }
      }

      else
      {
        v9 = 0;
        v30 = readerKeyRequest2;
        v29 = v45;
      }

      goto LABEL_29;
    }

    v9 = 0;
  }

LABEL_41:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPNFCAccessControl allocWithZone:zone];
  operationType = [(HAPNFCAccessControl *)self operationType];
  issuerKeyRequest = [(HAPNFCAccessControl *)self issuerKeyRequest];
  issuerKeyResponse = [(HAPNFCAccessControl *)self issuerKeyResponse];
  deviceCredentialKeyRequest = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
  deviceCredentialKeyResponse = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
  readerKeyRequest = [(HAPNFCAccessControl *)self readerKeyRequest];
  readerKeyResponse = [(HAPNFCAccessControl *)self readerKeyResponse];
  v12 = [(HAPNFCAccessControl *)v4 initWithOperationType:operationType issuerKeyRequest:issuerKeyRequest issuerKeyResponse:issuerKeyResponse deviceCredentialKeyRequest:deviceCredentialKeyRequest deviceCredentialKeyResponse:deviceCredentialKeyResponse readerKeyRequest:readerKeyRequest readerKeyResponse:readerKeyResponse];

  return v12;
}

- (id)serializeWithError:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  TLV8BufferInit();
  operationType = [(HAPNFCAccessControl *)self operationType];

  if (operationType)
  {
    operationType2 = [(HAPNFCAccessControl *)self operationType];
    v54 = 0;
    v7 = [operationType2 serializeWithError:&v54];
    v8 = v54;

    if (v8)
    {
      goto LABEL_51;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_54:
      if (error)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v39 = 0;
        goto LABEL_58;
      }

      v8 = 0;
      goto LABEL_57;
    }
  }

  issuerKeyRequest = [(HAPNFCAccessControl *)self issuerKeyRequest];

  if (issuerKeyRequest)
  {
    issuerKeyRequest2 = [(HAPNFCAccessControl *)self issuerKeyRequest];
    v53 = 0;
    v7 = [issuerKeyRequest2 serializeWithError:&v53];
    v8 = v53;

    if (!v8)
    {
      bytes = [v7 bytes];
      v13 = bytes + [v7 length];
      while (1)
      {
        v14 = (v13 - bytes) >= 255 ? 255 : v13 - bytes;
        v15 = TLV8BufferAppend();
        if (v15)
        {
          goto LABEL_53;
        }

        bytes += v14;
        if (bytes >= v13)
        {

          goto LABEL_13;
        }
      }
    }

LABEL_51:

    if (error)
    {
      v38 = v8;
      v39 = 0;
      *error = v8;
      goto LABEL_58;
    }

LABEL_57:
    v39 = 0;
    goto LABEL_58;
  }

LABEL_13:
  issuerKeyResponse = [(HAPNFCAccessControl *)self issuerKeyResponse];

  if (issuerKeyResponse)
  {
    issuerKeyResponse2 = [(HAPNFCAccessControl *)self issuerKeyResponse];
    v52 = 0;
    v7 = [issuerKeyResponse2 serializeWithError:&v52];
    v8 = v52;

    if (v8)
    {
      goto LABEL_51;
    }

    bytes2 = [v7 bytes];
    v19 = bytes2 + [v7 length];
    while (1)
    {
      v20 = (v19 - bytes2) >= 255 ? 255 : v19 - bytes2;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        goto LABEL_53;
      }

      bytes2 += v20;
      if (bytes2 >= v19)
      {

        break;
      }
    }
  }

  deviceCredentialKeyRequest = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];

  if (deviceCredentialKeyRequest)
  {
    deviceCredentialKeyRequest2 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
    v51 = 0;
    v7 = [deviceCredentialKeyRequest2 serializeWithError:&v51];
    v8 = v51;

    if (v8)
    {
      goto LABEL_51;
    }

    bytes3 = [v7 bytes];
    v24 = bytes3 + [v7 length];
    while (1)
    {
      v25 = (v24 - bytes3) >= 255 ? 255 : v24 - bytes3;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        goto LABEL_53;
      }

      bytes3 += v25;
      if (bytes3 >= v24)
      {

        break;
      }
    }
  }

  deviceCredentialKeyResponse = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];

  if (deviceCredentialKeyResponse)
  {
    deviceCredentialKeyResponse2 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
    v50 = 0;
    v7 = [deviceCredentialKeyResponse2 serializeWithError:&v50];
    v8 = v50;

    if (v8)
    {
      goto LABEL_51;
    }

    bytes4 = [v7 bytes];
    v29 = bytes4 + [v7 length];
    while (1)
    {
      v30 = (v29 - bytes4) >= 255 ? 255 : v29 - bytes4;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        goto LABEL_53;
      }

      bytes4 += v30;
      if (bytes4 >= v29)
      {

        break;
      }
    }
  }

  readerKeyRequest = [(HAPNFCAccessControl *)self readerKeyRequest];

  if (readerKeyRequest)
  {
    readerKeyRequest2 = [(HAPNFCAccessControl *)self readerKeyRequest];
    v49 = 0;
    v7 = [readerKeyRequest2 serializeWithError:&v49];
    v8 = v49;

    if (v8)
    {
      goto LABEL_51;
    }

    bytes5 = [v7 bytes];
    v34 = bytes5 + [v7 length];
    while (1)
    {
      v35 = (v34 - bytes5) >= 255 ? 255 : v34 - bytes5;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        break;
      }

      bytes5 += v35;
      if (bytes5 >= v34)
      {

        goto LABEL_49;
      }
    }

LABEL_53:
    v9 = v15;

    goto LABEL_54;
  }

LABEL_49:
  readerKeyResponse = [(HAPNFCAccessControl *)self readerKeyResponse];

  if (readerKeyResponse)
  {
    readerKeyResponse2 = [(HAPNFCAccessControl *)self readerKeyResponse];
    v48 = 0;
    v7 = [readerKeyResponse2 serializeWithError:&v48];
    v8 = v48;

    if (v8)
    {
      goto LABEL_51;
    }

    bytes6 = [v7 bytes];
    v43 = bytes6 + [v7 length];
    do
    {
      if ((v43 - bytes6) >= 255)
      {
        v44 = 255;
      }

      else
      {
        v44 = v43 - bytes6;
      }

      v45 = TLV8BufferAppend();
      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = v44;
      }

      bytes6 += v46;
      if (v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = bytes6 >= v43;
      }
    }

    while (!v47);
    v9 = v45;

    if (v9)
    {
      goto LABEL_54;
    }
  }

  v39 = [MEMORY[0x277CBEA90] dataWithBytes:v55 length:?];
  v8 = 0;
LABEL_58:
  TLV8BufferFree();

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v39 = dataCopy;
  v7 = [dataCopy length];
  if (v7 >= 1)
  {
    v8 = 0;
    v40 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v37 = 0;
    v38 = 0;
    v12 = 0;
    v13 = bytes + v7;
    while (1)
    {
      v56 = 0;
      v54[1] = 0;
      v55 = 0;
      v54[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (error)
        {
          HMErrorFromOSStatus(Next);
          *error = v33 = 0;
        }

        else
        {
          v33 = 0;
        }

        v29 = v40;
        v31 = v37;
        v30 = v38;
        goto LABEL_43;
      }

      if (!v55)
      {
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v8 = v34;
        if (v34)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }

      if (v56 <= 3u)
      {
        switch(v56)
        {
          case 1u:
            v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
            v53 = v8;
            v21 = [HAPNFCAccessOperationTypeWrapper parsedFromData:v15 error:&v53];
            v22 = v12;
            v23 = v10;
            v24 = v9;
            v25 = v53;

            v18 = v40;
            v40 = v21;
            v8 = v25;
            v9 = v24;
            v10 = v23;
            v12 = v22;
LABEL_28:

            goto LABEL_29;
          case 2u:
            v52 = v8;
            v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v54, &v52);
            v16 = v52;

            if (v16)
            {
              goto LABEL_26;
            }

            v51 = 0;
            v28 = [HAPNFCAccessIssuerKeyRequest parsedFromData:v15 error:&v51];
            v8 = v51;
            v18 = v9;
            v9 = v28;
            goto LABEL_28;
          case 3u:
            v50 = v8;
            v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v54, &v50);
            v16 = v50;

            if (!v16)
            {
              v49 = 0;
              v19 = [HAPNFCAccessIssuerKeyResponse parsedFromData:v15 error:&v49];
              v8 = v49;
              v18 = v10;
              v10 = v19;
              goto LABEL_28;
            }

            goto LABEL_26;
        }
      }

      else if (v56 > 5u)
      {
        if (v56 == 6)
        {
          v44 = v8;
          v15 = HAPTLVParseContiguousTlvs(6, bytes, v13, v54, &v44);
          v16 = v44;

          if (v16)
          {
            goto LABEL_26;
          }

          v43 = 0;
          v27 = [HAPNFCAccessReaderKeyRequest parsedFromData:v15 error:&v43];
          v8 = v43;
          v18 = v37;
          v37 = v27;
          goto LABEL_28;
        }

        if (v56 == 7)
        {
          v42 = v8;
          v15 = HAPTLVParseContiguousTlvs(7, bytes, v13, v54, &v42);
          v16 = v42;

          if (!v16)
          {
            v41 = 0;
            v20 = [HAPNFCAccessReaderKeyResponse parsedFromData:v15 error:&v41];
            v8 = v41;
            v18 = v11;
            v11 = v20;
            goto LABEL_28;
          }

LABEL_26:
          v8 = v16;
LABEL_29:
        }
      }

      else
      {
        if (v56 == 4)
        {
          v48 = v8;
          v15 = HAPTLVParseContiguousTlvs(4, bytes, v13, v54, &v48);
          v16 = v48;

          if (v16)
          {
            goto LABEL_26;
          }

          v47 = 0;
          v26 = [HAPNFCAccessDeviceCredentialKeyRequest parsedFromData:v15 error:&v47];
          v8 = v47;
          v18 = v12;
          v12 = v26;
          goto LABEL_28;
        }

        if (v56 == 5)
        {
          v46 = v8;
          v15 = HAPTLVParseContiguousTlvs(5, bytes, v13, v54, &v46);
          v16 = v46;

          if (!v16)
          {
            v45 = 0;
            v17 = [HAPNFCAccessDeviceCredentialKeyResponse parsedFromData:v15 error:&v45];
            v8 = v45;
            v18 = v38;
            v38 = v17;
            goto LABEL_28;
          }

          goto LABEL_26;
        }
      }

      bytes = v54[0];
      if (v54[0] >= v13)
      {
        if (v8)
        {
LABEL_32:
          v29 = v40;
          v31 = v37;
          v30 = v38;
          if (error)
          {
            v32 = v8;
            v33 = 0;
            *error = v8;
          }

          else
          {
            v33 = 0;
          }

          goto LABEL_43;
        }

LABEL_38:
        v29 = v40;
        v31 = v37;
        v30 = v38;
        goto LABEL_39;
      }
    }
  }

  v29 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v31 = 0;
  v30 = 0;
  v12 = 0;
LABEL_39:
  [(HAPNFCAccessControl *)self setOperationType:v29];
  [(HAPNFCAccessControl *)self setIssuerKeyRequest:v9];
  [(HAPNFCAccessControl *)self setIssuerKeyResponse:v10];
  [(HAPNFCAccessControl *)self setDeviceCredentialKeyRequest:v12];
  [(HAPNFCAccessControl *)self setDeviceCredentialKeyResponse:v30];
  [(HAPNFCAccessControl *)self setReaderKeyRequest:v31];
  [(HAPNFCAccessControl *)self setReaderKeyResponse:v11];
  v8 = 0;
  v33 = 1;
LABEL_43:

  return v33;
}

- (HAPNFCAccessControl)initWithOperationType:(id)type issuerKeyRequest:(id)request issuerKeyResponse:(id)response deviceCredentialKeyRequest:(id)keyRequest deviceCredentialKeyResponse:(id)keyResponse readerKeyRequest:(id)readerKeyRequest readerKeyResponse:(id)readerKeyResponse
{
  typeCopy = type;
  requestCopy = request;
  responseCopy = response;
  keyRequestCopy = keyRequest;
  keyResponseCopy = keyResponse;
  readerKeyRequestCopy = readerKeyRequest;
  readerKeyResponseCopy = readerKeyResponse;
  v26.receiver = self;
  v26.super_class = HAPNFCAccessControl;
  v18 = [(HAPNFCAccessControl *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_operationType, type);
    objc_storeStrong(&v19->_issuerKeyRequest, request);
    objc_storeStrong(&v19->_issuerKeyResponse, response);
    objc_storeStrong(&v19->_deviceCredentialKeyRequest, keyRequest);
    objc_storeStrong(&v19->_deviceCredentialKeyResponse, keyResponse);
    objc_storeStrong(&v19->_readerKeyRequest, readerKeyRequest);
    objc_storeStrong(&v19->_readerKeyResponse, readerKeyResponse);
  }

  return v19;
}

- (HAPNFCAccessControl)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessControl;
  return [(HAPNFCAccessControl *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPNFCAccessControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessControl *)v6 parseFromData:dataCopy error:&v11];
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