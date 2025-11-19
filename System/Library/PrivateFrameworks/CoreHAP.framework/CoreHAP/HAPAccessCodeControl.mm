@interface HAPAccessCodeControl
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPAccessCodeControl)init;
- (HAPAccessCodeControl)initWithOperationType:(id)a3 accessCodeControlRequest:(id)a4 accessCodeControlResponse:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPAccessCodeControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPAccessCodeControl *)self operationType];
  v5 = [(HAPAccessCodeControl *)self accessCodeControlRequest];
  v6 = [(HAPAccessCodeControl *)self accessCodeControlResponse];
  v7 = [v3 stringWithFormat:@"<HAPAccessCodeControl operationType=%@, accessCodeControlRequest=%@, accessCodeControlResponse=%@>", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(HAPAccessCodeControl *)self operationType];
      v9 = [(HAPAccessCodeControl *)v7 operationType];
      if (v8 != v9)
      {
        v3 = [(HAPAccessCodeControl *)self operationType];
        v4 = [(HAPAccessCodeControl *)v7 operationType];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPAccessCodeControl *)self accessCodeControlRequest];
      v12 = [(HAPAccessCodeControl *)v7 accessCodeControlRequest];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPAccessCodeControl *)self accessCodeControlRequest];
        v27 = [(HAPAccessCodeControl *)v7 accessCodeControlRequest];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPAccessCodeControl *)self accessCodeControlResponse];
      v16 = [(HAPAccessCodeControl *)v7 accessCodeControlResponse];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPAccessCodeControl *)self accessCodeControlResponse];
        v18 = v25 = v3;
        [(HAPAccessCodeControl *)v7 accessCodeControlResponse];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPAccessCodeControl allocWithZone:a3];
  v5 = [(HAPAccessCodeControl *)self operationType];
  v6 = [(HAPAccessCodeControl *)self accessCodeControlRequest];
  v7 = [(HAPAccessCodeControl *)self accessCodeControlResponse];
  v8 = [(HAPAccessCodeControl *)v4 initWithOperationType:v5 accessCodeControlRequest:v6 accessCodeControlResponse:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
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
  v50 = 0u;
  TLV8BufferInit();
  v5 = [(HAPAccessCodeControl *)self operationType];

  if (!v5)
  {
LABEL_8:
    v36 = a3;
    v46 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v7 = [(HAPAccessCodeControl *)self accessCodeControlRequest];
    v35 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v35)
    {
      v13 = *v44;
      v14 = 1;
LABEL_10:
      v15 = 0;
LABEL_11:
      if (*v44 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v43 + 1) + 8 * v15);
      if ((v14 & 1) != 0 || (v17 = TLV8BufferAppend(), !v17))
      {
        v42 = 0;
        v18 = [v16 serializeWithError:&v42];
        v19 = v42;
        if (!v19)
        {
          v20 = [v18 bytes];
          v21 = v20 + [v18 length];
          while (1)
          {
            v22 = (v21 - v20) >= 255 ? 255 : v21 - v20;
            v23 = TLV8BufferAppend();
            if (v23)
            {
              goto LABEL_41;
            }

            v20 += v22;
            if (v20 >= v21)
            {

              v14 = 0;
              if (++v15 != v35)
              {
                goto LABEL_11;
              }

              v14 = 0;
              v35 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
              if (v35)
              {
                goto LABEL_10;
              }

              goto LABEL_24;
            }
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
LABEL_24:

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = [(HAPAccessCodeControl *)self accessCodeControlResponse];
      v24 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v24)
      {
LABEL_40:

        v10 = [MEMORY[0x277CBEA90] dataWithBytes:v50 length:?];
        v8 = 0;
        goto LABEL_47;
      }

      v25 = v24;
      v26 = *v39;
      v27 = 1;
LABEL_26:
      v28 = 0;
LABEL_27:
      if (*v39 != v26)
      {
        objc_enumerationMutation(v7);
      }

      v29 = *(*(&v38 + 1) + 8 * v28);
      if ((v27 & 1) != 0 || (v17 = TLV8BufferAppend(), !v17))
      {
        v37 = 0;
        v18 = [v29 serializeWithError:&v37];
        v19 = v37;
        if (!v19)
        {
          v30 = [v18 bytes];
          v31 = v30 + [v18 length];
          while (1)
          {
            v32 = (v31 - v30) >= 255 ? 255 : v31 - v30;
            v23 = TLV8BufferAppend();
            if (v23)
            {
              break;
            }

            v30 += v32;
            if (v30 >= v31)
            {

              v27 = 0;
              if (++v28 != v25)
              {
                goto LABEL_27;
              }

              v25 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
              v27 = 0;
              if (v25)
              {
                goto LABEL_26;
              }

              goto LABEL_40;
            }
          }

LABEL_41:
          v12 = v23;

LABEL_42:
          a3 = v36;
          goto LABEL_43;
        }

LABEL_50:
        v8 = v19;

        a3 = v36;
LABEL_3:

        if (a3)
        {
          v9 = v8;
          v10 = 0;
          *a3 = v8;
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v12 = v17;
    goto LABEL_42;
  }

  v6 = [(HAPAccessCodeControl *)self operationType];
  v47 = 0;
  v7 = [v6 serializeWithError:&v47];
  v8 = v47;

  if (v8)
  {
    goto LABEL_3;
  }

  [v7 bytes];
  [v7 length];
  v11 = TLV8BufferAppend();
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
LABEL_43:

  if (a3)
  {
    HMErrorFromOSStatus(v12);
    v8 = 0;
    *a3 = v10 = 0;
    goto LABEL_47;
  }

  v8 = 0;
LABEL_46:
  v10 = 0;
LABEL_47:
  TLV8BufferFree();

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];
  v25 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v6 + v7;
    while (1)
    {
      v33 = 0;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (a4)
        {
          HMErrorFromOSStatus(Next);
          *a4 = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v19 = v25;
        goto LABEL_32;
      }

      if (!v32)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v21;
        if (!v21)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      if (v33 == 3)
      {
        break;
      }

      if (v33 == 2)
      {
        v29 = v9;
        v13 = HAPTLVParseContiguousTlvs(2, v6, v11, v31, &v29);
        v17 = v29;

        if (!v17)
        {
          v28 = 0;
          v16 = [HAPAccessCodeControlRequest parsedFromData:v13 error:&v28];
          v9 = v28;
          if (!v9)
          {
            v18 = v25;
            goto LABEL_16;
          }

          goto LABEL_17;
        }

LABEL_13:
        v9 = v17;
        goto LABEL_18;
      }

      if (v33 == 1)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v30 = v9;
        v14 = [HAPAccessCodeOperationTypeWrapper parsedFromData:v13 error:&v30];
        v15 = v30;

        v16 = v10;
        v10 = v14;
        v9 = v15;
        goto LABEL_17;
      }

LABEL_19:
      v6 = v31[0];
      if (v31[0] >= v11)
      {
        if (!v9)
        {
          goto LABEL_23;
        }

LABEL_27:
        v19 = v25;
        if (a4)
        {
          v22 = v9;
          v20 = 0;
          *a4 = v9;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_32;
      }
    }

    v27 = v9;
    v13 = HAPTLVParseContiguousTlvs(3, v6, v11, v31, &v27);
    v17 = v27;

    if (v17)
    {
      goto LABEL_13;
    }

    v26 = 0;
    v16 = [HAPAccessCodeControlResponse parsedFromData:v13 error:&v26];
    v9 = v26;
    if (!v9)
    {
      v18 = v8;
LABEL_16:
      [v18 addObject:v16];
    }

LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v10 = 0;
LABEL_23:
  v19 = v25;
  [(HAPAccessCodeControl *)self setOperationType:v10];
  [(HAPAccessCodeControl *)self setAccessCodeControlRequest:v25];
  [(HAPAccessCodeControl *)self setAccessCodeControlResponse:v8];
  v9 = 0;
  v20 = 1;
LABEL_32:

  return v20;
}

- (HAPAccessCodeControl)initWithOperationType:(id)a3 accessCodeControlRequest:(id)a4 accessCodeControlResponse:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HAPAccessCodeControl;
  v12 = [(HAPAccessCodeControl *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationType, a3);
    v14 = [v10 mutableCopy];
    accessCodeControlRequest = v13->_accessCodeControlRequest;
    v13->_accessCodeControlRequest = v14;

    v16 = [v11 mutableCopy];
    accessCodeControlResponse = v13->_accessCodeControlResponse;
    v13->_accessCodeControlResponse = v16;
  }

  return v13;
}

- (HAPAccessCodeControl)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeControl;
  return [(HAPAccessCodeControl *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPAccessCodeControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeControl *)v6 parseFromData:v5 error:&v11];
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