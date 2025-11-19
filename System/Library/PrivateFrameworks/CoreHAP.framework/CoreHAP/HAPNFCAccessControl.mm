@interface HAPNFCAccessControl
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPNFCAccessControl)init;
- (HAPNFCAccessControl)initWithOperationType:(id)a3 issuerKeyRequest:(id)a4 issuerKeyResponse:(id)a5 deviceCredentialKeyRequest:(id)a6 deviceCredentialKeyResponse:(id)a7 readerKeyRequest:(id)a8 readerKeyResponse:(id)a9;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPNFCAccessControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPNFCAccessControl *)self operationType];
  v5 = [(HAPNFCAccessControl *)self issuerKeyRequest];
  v6 = [(HAPNFCAccessControl *)self issuerKeyResponse];
  v7 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
  v8 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
  v9 = [(HAPNFCAccessControl *)self readerKeyRequest];
  v10 = [(HAPNFCAccessControl *)self readerKeyResponse];
  v11 = [v3 stringWithFormat:@"<HAPNFCAccessControl operationType=%@, issuerKeyRequest=%@, issuerKeyResponse=%@, deviceCredentialKeyRequest=%@, deviceCredentialKeyResponse=%@, readerKeyRequest=%@, readerKeyResponse=%@>", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPNFCAccessControl *)self operationType];
      v7 = [(HAPNFCAccessControl *)v5 operationType];
      if (v6 != v7)
      {
        v8 = [(HAPNFCAccessControl *)self operationType];
        v58 = [(HAPNFCAccessControl *)v5 operationType];
        v59 = v8;
        if (![v8 isEqual:?])
        {
          v9 = 0;
          goto LABEL_39;
        }
      }

      v10 = [(HAPNFCAccessControl *)self issuerKeyRequest];
      v11 = [(HAPNFCAccessControl *)v5 issuerKeyRequest];
      if (v10 != v11)
      {
        v12 = [(HAPNFCAccessControl *)self issuerKeyRequest];
        v55 = [(HAPNFCAccessControl *)v5 issuerKeyRequest];
        if (![v12 isEqual:?])
        {
          v9 = 0;
LABEL_37:

LABEL_38:
          if (v6 == v7)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_39:

          goto LABEL_40;
        }

        v54 = v12;
      }

      v13 = [(HAPNFCAccessControl *)self issuerKeyResponse];
      v56 = [(HAPNFCAccessControl *)v5 issuerKeyResponse];
      v57 = v13;
      if (v13 != v56)
      {
        v14 = [(HAPNFCAccessControl *)self issuerKeyResponse];
        v50 = [(HAPNFCAccessControl *)v5 issuerKeyResponse];
        v51 = v14;
        if (![v14 isEqual:?])
        {
          v9 = 0;
          v15 = v56;
LABEL_35:

LABEL_36:
          v12 = v54;
          if (v10 == v11)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      v16 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
      v17 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyRequest];
      v52 = v10;
      v53 = v16;
      v18 = v16 == v17;
      v19 = v17;
      if (!v18)
      {
        v20 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
        v46 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyRequest];
        v47 = v20;
        if (![v20 isEqual:?])
        {
          v21 = v56;
          v9 = 0;
          v22 = v53;
LABEL_33:

LABEL_34:
          v13 = v57;
          v15 = v21;
          v18 = v57 == v21;
          v10 = v52;
          if (v18)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      v23 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
      v24 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyResponse];
      v48 = v23;
      v49 = v19;
      v18 = v23 == v24;
      v25 = v24;
      if (!v18)
      {
        v26 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
        v42 = [(HAPNFCAccessControl *)v5 deviceCredentialKeyResponse];
        v43 = v26;
        if (![v26 isEqual:?])
        {
          v9 = 0;
          v31 = v48;
          goto LABEL_30;
        }
      }

      v27 = [(HAPNFCAccessControl *)self readerKeyRequest];
      v44 = [(HAPNFCAccessControl *)v5 readerKeyRequest];
      v45 = v27;
      if (v27 == v44 || (-[HAPNFCAccessControl readerKeyRequest](self, "readerKeyRequest"), v28 = objc_claimAutoreleasedReturnValue(), -[HAPNFCAccessControl readerKeyRequest](v5, "readerKeyRequest"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v28, [v28 isEqual:?]))
      {
        v32 = [(HAPNFCAccessControl *)self readerKeyResponse];
        v33 = [(HAPNFCAccessControl *)v5 readerKeyResponse];
        v34 = v33;
        if (v32 == v33)
        {

          v9 = 1;
        }

        else
        {
          [(HAPNFCAccessControl *)self readerKeyResponse];
          v36 = v35 = v25;
          [(HAPNFCAccessControl *)v5 readerKeyResponse];
          v37 = v39 = v32;
          v9 = [v36 isEqual:v37];

          v25 = v35;
        }

        v30 = v44;
        v29 = v45;
        if (v45 == v44)
        {
LABEL_29:

          v31 = v48;
          if (v48 == v25)
          {
            v21 = v56;
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
          v21 = v56;

          goto LABEL_32;
        }
      }

      else
      {
        v9 = 0;
        v30 = v44;
        v29 = v45;
      }

      goto LABEL_29;
    }

    v9 = 0;
  }

LABEL_41:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPNFCAccessControl allocWithZone:a3];
  v5 = [(HAPNFCAccessControl *)self operationType];
  v6 = [(HAPNFCAccessControl *)self issuerKeyRequest];
  v7 = [(HAPNFCAccessControl *)self issuerKeyResponse];
  v8 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
  v9 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
  v10 = [(HAPNFCAccessControl *)self readerKeyRequest];
  v11 = [(HAPNFCAccessControl *)self readerKeyResponse];
  v12 = [(HAPNFCAccessControl *)v4 initWithOperationType:v5 issuerKeyRequest:v6 issuerKeyResponse:v7 deviceCredentialKeyRequest:v8 deviceCredentialKeyResponse:v9 readerKeyRequest:v10 readerKeyResponse:v11];

  return v12;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAPNFCAccessControl *)self operationType];

  if (v5)
  {
    v6 = [(HAPNFCAccessControl *)self operationType];
    v54 = 0;
    v7 = [v6 serializeWithError:&v54];
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
      if (a3)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *a3 = v39 = 0;
        goto LABEL_58;
      }

      v8 = 0;
      goto LABEL_57;
    }
  }

  v10 = [(HAPNFCAccessControl *)self issuerKeyRequest];

  if (v10)
  {
    v11 = [(HAPNFCAccessControl *)self issuerKeyRequest];
    v53 = 0;
    v7 = [v11 serializeWithError:&v53];
    v8 = v53;

    if (!v8)
    {
      v12 = [v7 bytes];
      v13 = v12 + [v7 length];
      while (1)
      {
        v14 = (v13 - v12) >= 255 ? 255 : v13 - v12;
        v15 = TLV8BufferAppend();
        if (v15)
        {
          goto LABEL_53;
        }

        v12 += v14;
        if (v12 >= v13)
        {

          goto LABEL_13;
        }
      }
    }

LABEL_51:

    if (a3)
    {
      v38 = v8;
      v39 = 0;
      *a3 = v8;
      goto LABEL_58;
    }

LABEL_57:
    v39 = 0;
    goto LABEL_58;
  }

LABEL_13:
  v16 = [(HAPNFCAccessControl *)self issuerKeyResponse];

  if (v16)
  {
    v17 = [(HAPNFCAccessControl *)self issuerKeyResponse];
    v52 = 0;
    v7 = [v17 serializeWithError:&v52];
    v8 = v52;

    if (v8)
    {
      goto LABEL_51;
    }

    v18 = [v7 bytes];
    v19 = v18 + [v7 length];
    while (1)
    {
      v20 = (v19 - v18) >= 255 ? 255 : v19 - v18;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        goto LABEL_53;
      }

      v18 += v20;
      if (v18 >= v19)
      {

        break;
      }
    }
  }

  v21 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];

  if (v21)
  {
    v22 = [(HAPNFCAccessControl *)self deviceCredentialKeyRequest];
    v51 = 0;
    v7 = [v22 serializeWithError:&v51];
    v8 = v51;

    if (v8)
    {
      goto LABEL_51;
    }

    v23 = [v7 bytes];
    v24 = v23 + [v7 length];
    while (1)
    {
      v25 = (v24 - v23) >= 255 ? 255 : v24 - v23;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        goto LABEL_53;
      }

      v23 += v25;
      if (v23 >= v24)
      {

        break;
      }
    }
  }

  v26 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];

  if (v26)
  {
    v27 = [(HAPNFCAccessControl *)self deviceCredentialKeyResponse];
    v50 = 0;
    v7 = [v27 serializeWithError:&v50];
    v8 = v50;

    if (v8)
    {
      goto LABEL_51;
    }

    v28 = [v7 bytes];
    v29 = v28 + [v7 length];
    while (1)
    {
      v30 = (v29 - v28) >= 255 ? 255 : v29 - v28;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        goto LABEL_53;
      }

      v28 += v30;
      if (v28 >= v29)
      {

        break;
      }
    }
  }

  v31 = [(HAPNFCAccessControl *)self readerKeyRequest];

  if (v31)
  {
    v32 = [(HAPNFCAccessControl *)self readerKeyRequest];
    v49 = 0;
    v7 = [v32 serializeWithError:&v49];
    v8 = v49;

    if (v8)
    {
      goto LABEL_51;
    }

    v33 = [v7 bytes];
    v34 = v33 + [v7 length];
    while (1)
    {
      v35 = (v34 - v33) >= 255 ? 255 : v34 - v33;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        break;
      }

      v33 += v35;
      if (v33 >= v34)
      {

        goto LABEL_49;
      }
    }

LABEL_53:
    v9 = v15;

    goto LABEL_54;
  }

LABEL_49:
  v36 = [(HAPNFCAccessControl *)self readerKeyResponse];

  if (v36)
  {
    v37 = [(HAPNFCAccessControl *)self readerKeyResponse];
    v48 = 0;
    v7 = [v37 serializeWithError:&v48];
    v8 = v48;

    if (v8)
    {
      goto LABEL_51;
    }

    v42 = [v7 bytes];
    v43 = v42 + [v7 length];
    do
    {
      if ((v43 - v42) >= 255)
      {
        v44 = 255;
      }

      else
      {
        v44 = v43 - v42;
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

      v42 += v46;
      if (v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = v42 >= v43;
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

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v39 = v5;
  v7 = [v5 length];
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
    v13 = v6 + v7;
    while (1)
    {
      v56 = 0;
      v54[1] = 0;
      v55 = 0;
      v54[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (a4)
        {
          HMErrorFromOSStatus(Next);
          *a4 = v33 = 0;
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
            v15 = HAPTLVParseContiguousTlvs(2, v6, v13, v54, &v52);
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
            v15 = HAPTLVParseContiguousTlvs(3, v6, v13, v54, &v50);
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
          v15 = HAPTLVParseContiguousTlvs(6, v6, v13, v54, &v44);
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
          v15 = HAPTLVParseContiguousTlvs(7, v6, v13, v54, &v42);
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
          v15 = HAPTLVParseContiguousTlvs(4, v6, v13, v54, &v48);
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
          v15 = HAPTLVParseContiguousTlvs(5, v6, v13, v54, &v46);
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

      v6 = v54[0];
      if (v54[0] >= v13)
      {
        if (v8)
        {
LABEL_32:
          v29 = v40;
          v31 = v37;
          v30 = v38;
          if (a4)
          {
            v32 = v8;
            v33 = 0;
            *a4 = v8;
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

- (HAPNFCAccessControl)initWithOperationType:(id)a3 issuerKeyRequest:(id)a4 issuerKeyResponse:(id)a5 deviceCredentialKeyRequest:(id)a6 deviceCredentialKeyResponse:(id)a7 readerKeyRequest:(id)a8 readerKeyResponse:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = HAPNFCAccessControl;
  v18 = [(HAPNFCAccessControl *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_operationType, a3);
    objc_storeStrong(&v19->_issuerKeyRequest, a4);
    objc_storeStrong(&v19->_issuerKeyResponse, a5);
    objc_storeStrong(&v19->_deviceCredentialKeyRequest, a6);
    objc_storeStrong(&v19->_deviceCredentialKeyResponse, a7);
    objc_storeStrong(&v19->_readerKeyRequest, a8);
    objc_storeStrong(&v19->_readerKeyResponse, a9);
  }

  return v19;
}

- (HAPNFCAccessControl)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessControl;
  return [(HAPNFCAccessControl *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPNFCAccessControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessControl *)v6 parseFromData:v5 error:&v11];
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