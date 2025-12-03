@interface HAPDataStreamTransportInterruptPayload
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDataStreamTransportInterruptPayload)init;
- (HAPDataStreamTransportInterruptPayload)initWithRequestToSendIdentifiers:(id)identifiers dataStreamTransportInterruptSequenceNumber:(id)number;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDataStreamTransportInterruptPayload

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  requestToSendIdentifiers = [(HAPDataStreamTransportInterruptPayload *)self requestToSendIdentifiers];
  dataStreamTransportInterruptSequenceNumber = [(HAPDataStreamTransportInterruptPayload *)self dataStreamTransportInterruptSequenceNumber];
  v6 = [v3 stringWithFormat:@"<HAPDataStreamTransportInterruptPayload requestToSendIdentifiers=%@, dataStreamTransportInterruptSequenceNumber=%@>", requestToSendIdentifiers, dataStreamTransportInterruptSequenceNumber];

  return v6;
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
      requestToSendIdentifiers = [(HAPDataStreamTransportInterruptPayload *)self requestToSendIdentifiers];
      requestToSendIdentifiers2 = [(HAPDataStreamTransportInterruptPayload *)v6 requestToSendIdentifiers];
      if (requestToSendIdentifiers != requestToSendIdentifiers2)
      {
        requestToSendIdentifiers3 = [(HAPDataStreamTransportInterruptPayload *)self requestToSendIdentifiers];
        requestToSendIdentifiers4 = [(HAPDataStreamTransportInterruptPayload *)v6 requestToSendIdentifiers];
        if (![requestToSendIdentifiers3 isEqual:requestToSendIdentifiers4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = requestToSendIdentifiers3;
      }

      dataStreamTransportInterruptSequenceNumber = [(HAPDataStreamTransportInterruptPayload *)self dataStreamTransportInterruptSequenceNumber];
      dataStreamTransportInterruptSequenceNumber2 = [(HAPDataStreamTransportInterruptPayload *)v6 dataStreamTransportInterruptSequenceNumber];
      if (dataStreamTransportInterruptSequenceNumber == dataStreamTransportInterruptSequenceNumber2)
      {
        v10 = 1;
      }

      else
      {
        dataStreamTransportInterruptSequenceNumber3 = [(HAPDataStreamTransportInterruptPayload *)self dataStreamTransportInterruptSequenceNumber];
        dataStreamTransportInterruptSequenceNumber4 = [(HAPDataStreamTransportInterruptPayload *)v6 dataStreamTransportInterruptSequenceNumber];
        v10 = [dataStreamTransportInterruptSequenceNumber3 isEqual:dataStreamTransportInterruptSequenceNumber4];
      }

      requestToSendIdentifiers3 = v16;
      if (requestToSendIdentifiers == requestToSendIdentifiers2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPDataStreamTransportInterruptPayload allocWithZone:zone];
  requestToSendIdentifiers = [(HAPDataStreamTransportInterruptPayload *)self requestToSendIdentifiers];
  dataStreamTransportInterruptSequenceNumber = [(HAPDataStreamTransportInterruptPayload *)self dataStreamTransportInterruptSequenceNumber];
  v7 = [(HAPDataStreamTransportInterruptPayload *)v4 initWithRequestToSendIdentifiers:requestToSendIdentifiers dataStreamTransportInterruptSequenceNumber:dataStreamTransportInterruptSequenceNumber];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  TLV8BufferInit();
  requestToSendIdentifiers = [(HAPDataStreamTransportInterruptPayload *)self requestToSendIdentifiers];

  if (!requestToSendIdentifiers)
  {
LABEL_10:
    dataStreamTransportInterruptSequenceNumber = [(HAPDataStreamTransportInterruptPayload *)self dataStreamTransportInterruptSequenceNumber];

    if (dataStreamTransportInterruptSequenceNumber)
    {
      dataStreamTransportInterruptSequenceNumber2 = [(HAPDataStreamTransportInterruptPayload *)self dataStreamTransportInterruptSequenceNumber];
      v20 = 0;
      v7 = [dataStreamTransportInterruptSequenceNumber2 serializeWithError:&v20];
      v8 = v20;

      if (v8)
      {
        goto LABEL_12;
      }

      [v7 bytes];
      [v7 length];
      v17 = TLV8BufferAppend();

      if (v17)
      {
LABEL_16:
        if (error)
        {
          HMErrorFromOSStatus(v17);
          v8 = 0;
          *error = v16 = 0;
          goto LABEL_21;
        }

        v8 = 0;
        goto LABEL_20;
      }
    }

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
    v8 = 0;
    goto LABEL_21;
  }

  requestToSendIdentifiers2 = [(HAPDataStreamTransportInterruptPayload *)self requestToSendIdentifiers];
  v21 = 0;
  v7 = [requestToSendIdentifiers2 serializeWithError:&v21];
  v8 = v21;

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
        break;
      }

      bytes += v11;
      if (bytes >= v10)
      {

        goto LABEL_10;
      }
    }

    v17 = v12;

    goto LABEL_16;
  }

LABEL_12:

  if (error)
  {
    v15 = v8;
    v16 = 0;
    *error = v8;
    goto LABEL_21;
  }

LABEL_20:
  v16 = 0;
LABEL_21:
  TLV8BufferFree();

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_16:
    [(HAPDataStreamTransportInterruptPayload *)self setRequestToSendIdentifiers:v10, errorCopy];
    [(HAPDataStreamTransportInterruptPayload *)self setDataStreamTransportInterruptSequenceNumber:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v29 = 0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v19 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      break;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v11;
      v18 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v24];
      v15 = v24;

      v17 = v9;
      v9 = v18;
LABEL_10:

LABEL_11:
      v11 = v15;
      goto LABEL_12;
    }

    if (v29 == 1)
    {
      v26 = v11;
      v14 = HAPTLVParseContiguousTlvs(1, bytes, v12, v27, &v26);
      v15 = v26;

      if (!v15)
      {
        v25 = 0;
        v16 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v25];
        v15 = v25;
        v17 = v10;
        v10 = v16;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_12:
    bytes = v27[0];
    if (v27[0] >= v12)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v11 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (errorCopy)
  {
    v21 = v11;
    v19 = 0;
    *errorCopy = v11;
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:

  return v19;
}

- (HAPDataStreamTransportInterruptPayload)initWithRequestToSendIdentifiers:(id)identifiers dataStreamTransportInterruptSequenceNumber:(id)number
{
  identifiersCopy = identifiers;
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = HAPDataStreamTransportInterruptPayload;
  v9 = [(HAPDataStreamTransportInterruptPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestToSendIdentifiers, identifiers);
    objc_storeStrong(&v10->_dataStreamTransportInterruptSequenceNumber, number);
  }

  return v10;
}

- (HAPDataStreamTransportInterruptPayload)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportInterruptPayload;
  return [(HAPDataStreamTransportInterruptPayload *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDataStreamTransportInterruptPayload);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportInterruptPayload *)v6 parseFromData:dataCopy error:&v11];
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