@interface HAPOperatingStateResponse
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPOperatingStateResponse)init;
- (HAPOperatingStateResponse)initWithState:(id)state abnormalReasons:(id)reasons;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPOperatingStateResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  state = [(HAPOperatingStateResponse *)self state];
  abnormalReasons = [(HAPOperatingStateResponse *)self abnormalReasons];
  v6 = [v3 stringWithFormat:@"<HAPOperatingStateResponse state=%@, abnormalReasons=%@>", state, abnormalReasons];

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
      state = [(HAPOperatingStateResponse *)self state];
      state2 = [(HAPOperatingStateResponse *)v6 state];
      if (state != state2)
      {
        state3 = [(HAPOperatingStateResponse *)self state];
        state4 = [(HAPOperatingStateResponse *)v6 state];
        if (![state3 isEqual:state4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = state3;
      }

      abnormalReasons = [(HAPOperatingStateResponse *)self abnormalReasons];
      abnormalReasons2 = [(HAPOperatingStateResponse *)v6 abnormalReasons];
      if (abnormalReasons == abnormalReasons2)
      {
        v10 = 1;
      }

      else
      {
        abnormalReasons3 = [(HAPOperatingStateResponse *)self abnormalReasons];
        abnormalReasons4 = [(HAPOperatingStateResponse *)v6 abnormalReasons];
        v10 = [abnormalReasons3 isEqual:abnormalReasons4];
      }

      state3 = v16;
      if (state == state2)
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
  v4 = [HAPOperatingStateResponse allocWithZone:zone];
  state = [(HAPOperatingStateResponse *)self state];
  abnormalReasons = [(HAPOperatingStateResponse *)self abnormalReasons];
  v7 = [(HAPOperatingStateResponse *)v4 initWithState:state abnormalReasons:abnormalReasons];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
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
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  TLV8BufferInit();
  state = [(HAPOperatingStateResponse *)self state];

  if (state)
  {
    state2 = [(HAPOperatingStateResponse *)self state];
    v17 = 0;
    v7 = [state2 serializeWithError:&v17];
    v8 = v17;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  abnormalReasons = [(HAPOperatingStateResponse *)self abnormalReasons];

  if (!abnormalReasons)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  abnormalReasons2 = [(HAPOperatingStateResponse *)self abnormalReasons];
  v16 = 0;
  v7 = [abnormalReasons2 serializeWithError:&v16];
  v8 = v16;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v14 = *MEMORY[0x277D85DE8];

  return v13;
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
LABEL_14:
    [(HAPOperatingStateResponse *)self setState:v10];
    [(HAPOperatingStateResponse *)self setAbnormalReasons:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_21;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v18 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v23 = v11;
      v15 = &v23;
      [HAPOperatingStateAbnormalReasonsWrapper parsedFromData:v14 error:&v23];
      v9 = v16 = v9;
      goto LABEL_9;
    }

    if (v28 == 1)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v11;
      v15 = &v24;
      [HAPOperatingStateWrapper parsedFromData:v14 error:&v24];
      v10 = v16 = v10;
LABEL_9:
      v17 = *v15;

      v11 = v17;
    }

    if (v25 >= v12)
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v11 = v19;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (errorCopy)
  {
    v20 = v11;
    v18 = 0;
    *errorCopy = v11;
    goto LABEL_21;
  }

LABEL_20:
  v18 = 0;
LABEL_21:

  return v18;
}

- (HAPOperatingStateResponse)initWithState:(id)state abnormalReasons:(id)reasons
{
  stateCopy = state;
  reasonsCopy = reasons;
  v12.receiver = self;
  v12.super_class = HAPOperatingStateResponse;
  v9 = [(HAPOperatingStateResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_state, state);
    objc_storeStrong(&v10->_abnormalReasons, reasons);
  }

  return v10;
}

- (HAPOperatingStateResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPOperatingStateResponse;
  return [(HAPOperatingStateResponse *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPOperatingStateResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPOperatingStateResponse *)v6 parseFromData:dataCopy error:&v11];
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