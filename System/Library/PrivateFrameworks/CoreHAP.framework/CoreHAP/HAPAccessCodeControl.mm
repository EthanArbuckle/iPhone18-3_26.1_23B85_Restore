@interface HAPAccessCodeControl
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPAccessCodeControl)init;
- (HAPAccessCodeControl)initWithOperationType:(id)type accessCodeControlRequest:(id)request accessCodeControlResponse:(id)response;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPAccessCodeControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  operationType = [(HAPAccessCodeControl *)self operationType];
  accessCodeControlRequest = [(HAPAccessCodeControl *)self accessCodeControlRequest];
  accessCodeControlResponse = [(HAPAccessCodeControl *)self accessCodeControlResponse];
  v7 = [v3 stringWithFormat:@"<HAPAccessCodeControl operationType=%@, accessCodeControlRequest=%@, accessCodeControlResponse=%@>", operationType, accessCodeControlRequest, accessCodeControlResponse];

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
      operationType = [(HAPAccessCodeControl *)self operationType];
      operationType2 = [(HAPAccessCodeControl *)v7 operationType];
      if (operationType != operationType2)
      {
        operationType3 = [(HAPAccessCodeControl *)self operationType];
        operationType4 = [(HAPAccessCodeControl *)v7 operationType];
        if (![operationType3 isEqual:operationType4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      accessCodeControlRequest = [(HAPAccessCodeControl *)self accessCodeControlRequest];
      accessCodeControlRequest2 = [(HAPAccessCodeControl *)v7 accessCodeControlRequest];
      v13 = accessCodeControlRequest2;
      if (accessCodeControlRequest == accessCodeControlRequest2)
      {
        v28 = accessCodeControlRequest2;
      }

      else
      {
        accessCodeControlRequest3 = [(HAPAccessCodeControl *)self accessCodeControlRequest];
        accessCodeControlRequest4 = [(HAPAccessCodeControl *)v7 accessCodeControlRequest];
        if (![accessCodeControlRequest3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = accessCodeControlRequest3;
        v28 = v13;
      }

      accessCodeControlResponse = [(HAPAccessCodeControl *)self accessCodeControlResponse];
      accessCodeControlResponse2 = [(HAPAccessCodeControl *)v7 accessCodeControlResponse];
      v17 = accessCodeControlResponse2;
      if (accessCodeControlResponse == accessCodeControlResponse2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPAccessCodeControl *)self accessCodeControlResponse];
        v18 = v25 = operationType3;
        [(HAPAccessCodeControl *)v7 accessCodeControlResponse];
        v24 = accessCodeControlRequest;
        v19 = operationType4;
        v20 = operationType2;
        v22 = v21 = operationType;
        v10 = [v18 isEqual:v22];

        operationType = v21;
        operationType2 = v20;
        operationType4 = v19;
        accessCodeControlRequest = v24;

        operationType3 = v25;
      }

      v13 = v28;
      accessCodeControlRequest3 = v26;
      if (accessCodeControlRequest == v28)
      {
LABEL_18:

        if (operationType == operationType2)
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
  v4 = [HAPAccessCodeControl allocWithZone:zone];
  operationType = [(HAPAccessCodeControl *)self operationType];
  accessCodeControlRequest = [(HAPAccessCodeControl *)self accessCodeControlRequest];
  accessCodeControlResponse = [(HAPAccessCodeControl *)self accessCodeControlResponse];
  v8 = [(HAPAccessCodeControl *)v4 initWithOperationType:operationType accessCodeControlRequest:accessCodeControlRequest accessCodeControlResponse:accessCodeControlResponse];

  return v8;
}

- (id)serializeWithError:(id *)error
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
  operationType = [(HAPAccessCodeControl *)self operationType];

  if (!operationType)
  {
LABEL_8:
    errorCopy = error;
    v46 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    accessCodeControlRequest = [(HAPAccessCodeControl *)self accessCodeControlRequest];
    v35 = [accessCodeControlRequest countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v35)
    {
      v13 = *v44;
      v14 = 1;
LABEL_10:
      v15 = 0;
LABEL_11:
      if (*v44 != v13)
      {
        objc_enumerationMutation(accessCodeControlRequest);
      }

      v16 = *(*(&v43 + 1) + 8 * v15);
      if ((v14 & 1) != 0 || (v17 = TLV8BufferAppend(), !v17))
      {
        v42 = 0;
        v18 = [v16 serializeWithError:&v42];
        v19 = v42;
        if (!v19)
        {
          bytes = [v18 bytes];
          v21 = bytes + [v18 length];
          while (1)
          {
            v22 = (v21 - bytes) >= 255 ? 255 : v21 - bytes;
            v23 = TLV8BufferAppend();
            if (v23)
            {
              goto LABEL_41;
            }

            bytes += v22;
            if (bytes >= v21)
            {

              v14 = 0;
              if (++v15 != v35)
              {
                goto LABEL_11;
              }

              v14 = 0;
              v35 = [accessCodeControlRequest countByEnumeratingWithState:&v43 objects:v49 count:16];
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
      accessCodeControlRequest = [(HAPAccessCodeControl *)self accessCodeControlResponse];
      v24 = [accessCodeControlRequest countByEnumeratingWithState:&v38 objects:v48 count:16];
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
        objc_enumerationMutation(accessCodeControlRequest);
      }

      v29 = *(*(&v38 + 1) + 8 * v28);
      if ((v27 & 1) != 0 || (v17 = TLV8BufferAppend(), !v17))
      {
        v37 = 0;
        v18 = [v29 serializeWithError:&v37];
        v19 = v37;
        if (!v19)
        {
          bytes2 = [v18 bytes];
          v31 = bytes2 + [v18 length];
          while (1)
          {
            v32 = (v31 - bytes2) >= 255 ? 255 : v31 - bytes2;
            v23 = TLV8BufferAppend();
            if (v23)
            {
              break;
            }

            bytes2 += v32;
            if (bytes2 >= v31)
            {

              v27 = 0;
              if (++v28 != v25)
              {
                goto LABEL_27;
              }

              v25 = [accessCodeControlRequest countByEnumeratingWithState:&v38 objects:v48 count:16];
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
          error = errorCopy;
          goto LABEL_43;
        }

LABEL_50:
        v8 = v19;

        error = errorCopy;
LABEL_3:

        if (error)
        {
          v9 = v8;
          v10 = 0;
          *error = v8;
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v12 = v17;
    goto LABEL_42;
  }

  operationType2 = [(HAPAccessCodeControl *)self operationType];
  v47 = 0;
  accessCodeControlRequest = [operationType2 serializeWithError:&v47];
  v8 = v47;

  if (v8)
  {
    goto LABEL_3;
  }

  [accessCodeControlRequest bytes];
  [accessCodeControlRequest length];
  v11 = TLV8BufferAppend();
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
LABEL_43:

  if (error)
  {
    HMErrorFromOSStatus(v12);
    v8 = 0;
    *error = v10 = 0;
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = bytes + v7;
    while (1)
    {
      v33 = 0;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (error)
        {
          HMErrorFromOSStatus(Next);
          *error = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v19 = array;
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
        v13 = HAPTLVParseContiguousTlvs(2, bytes, v11, v31, &v29);
        v17 = v29;

        if (!v17)
        {
          v28 = 0;
          v16 = [HAPAccessCodeControlRequest parsedFromData:v13 error:&v28];
          v9 = v28;
          if (!v9)
          {
            v18 = array;
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
      bytes = v31[0];
      if (v31[0] >= v11)
      {
        if (!v9)
        {
          goto LABEL_23;
        }

LABEL_27:
        v19 = array;
        if (error)
        {
          v22 = v9;
          v20 = 0;
          *error = v9;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_32;
      }
    }

    v27 = v9;
    v13 = HAPTLVParseContiguousTlvs(3, bytes, v11, v31, &v27);
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
      v18 = array2;
LABEL_16:
      [v18 addObject:v16];
    }

LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v10 = 0;
LABEL_23:
  v19 = array;
  [(HAPAccessCodeControl *)self setOperationType:v10];
  [(HAPAccessCodeControl *)self setAccessCodeControlRequest:array];
  [(HAPAccessCodeControl *)self setAccessCodeControlResponse:array2];
  v9 = 0;
  v20 = 1;
LABEL_32:

  return v20;
}

- (HAPAccessCodeControl)initWithOperationType:(id)type accessCodeControlRequest:(id)request accessCodeControlResponse:(id)response
{
  typeCopy = type;
  requestCopy = request;
  responseCopy = response;
  v19.receiver = self;
  v19.super_class = HAPAccessCodeControl;
  v12 = [(HAPAccessCodeControl *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationType, type);
    v14 = [requestCopy mutableCopy];
    accessCodeControlRequest = v13->_accessCodeControlRequest;
    v13->_accessCodeControlRequest = v14;

    v16 = [responseCopy mutableCopy];
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

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPAccessCodeControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeControl *)v6 parseFromData:dataCopy error:&v11];
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