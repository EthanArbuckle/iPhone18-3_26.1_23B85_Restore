@interface IDSDeliveryContext
+ (int64_t)_endpointStateForServerDeliveryStatus:(id)status;
- (IDSDeliveryContext)initWithError:(id)error;
- (IDSDeliveryContext)initWithResponseCode:(int64_t)code deviceID:(id)d;
- (IDSDeliveryContext)initWithResponseCode:(int64_t)code deviceID:(id)d currentAverageRTT:(id)t isDeviceBlackedOut:(id)out localMessageState:(id)state;
- (IDSDeliveryContext)initWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call;
- (IDSDeliveryContext)initWithServerResponseDictionary:(id)dictionary;
@end

@implementation IDSDeliveryContext

+ (int64_t)_endpointStateForServerDeliveryStatus:(id)status
{
  if (!status)
  {
    return 2;
  }

  if ([status isEqualToNumber:&unk_1F1B20030])
  {
    return 3;
  }

  return 0;
}

- (IDSDeliveryContext)initWithServerResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = IDSDeliveryContext;
  v5 = [(IDSDeliveryContext *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy _numberForKey:@"c"];
    responseCommand = v5->_responseCommand;
    v5->_responseCommand = v6;

    v8 = [dictionaryCopy _numberForKey:@"e"];
    responseTimeStamp = v5->_responseTimeStamp;
    v5->_responseTimeStamp = v8;

    v10 = [dictionaryCopy _numberForKey:@"s"];
    v5->_responseCode = [v10 integerValue];

    v11 = [dictionaryCopy _dataForKey:@"t"];
    v12 = [IDSPushToken pushTokenWithData:v11];
    responseToken = v5->_responseToken;
    v5->_responseToken = v12;

    v14 = MEMORY[0x1E696AD98];
    v15 = objc_opt_class();
    v16 = [dictionaryCopy _numberForKey:@"O"];
    v17 = [v14 numberWithInteger:{objc_msgSend(v15, "_endpointStateForServerDeliveryStatus:", v16)}];
    endpointState = v5->_endpointState;
    v5->_endpointState = v17;

    v19 = [dictionaryCopy _numberForKey:@"fR"];
    failureReason = v5->_failureReason;
    v5->_failureReason = v19;
  }

  return v5;
}

- (IDSDeliveryContext)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = IDSDeliveryContext;
  v6 = [(IDSDeliveryContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseError, error);
  }

  return v7;
}

- (IDSDeliveryContext)initWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call
{
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = IDSDeliveryContext;
  v10 = [(IDSDeliveryContext *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_idsResponseCode = code;
    objc_storeStrong(&v10->_responseError, error);
    v11->_lastCall = call;
    endpointState = v11->_endpointState;
    v11->_endpointState = &unk_1F1B20048;
  }

  return v11;
}

- (IDSDeliveryContext)initWithResponseCode:(int64_t)code deviceID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = IDSDeliveryContext;
  v8 = [(IDSDeliveryContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_idsResponseCode = code;
    objc_storeStrong(&v8->_deviceID, d);
  }

  return v9;
}

- (IDSDeliveryContext)initWithResponseCode:(int64_t)code deviceID:(id)d currentAverageRTT:(id)t isDeviceBlackedOut:(id)out localMessageState:(id)state
{
  dCopy = d;
  tCopy = t;
  outCopy = out;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = IDSDeliveryContext;
  v17 = [(IDSDeliveryContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_idsResponseCode = code;
    objc_storeStrong(&v17->_deviceID, d);
    objc_storeStrong(&v18->_currentAverageRTT, t);
    objc_storeStrong(&v18->_isDeviceBlackedOut, out);
    objc_storeStrong(&v18->_localMessageState, state);
    endpointState = v18->_endpointState;
    v18->_endpointState = &unk_1F1B20048;
  }

  return v18;
}

@end