@interface IDSDeliveryContext
+ (int64_t)_endpointStateForServerDeliveryStatus:(id)a3;
- (IDSDeliveryContext)initWithError:(id)a3;
- (IDSDeliveryContext)initWithResponseCode:(int64_t)a3 deviceID:(id)a4;
- (IDSDeliveryContext)initWithResponseCode:(int64_t)a3 deviceID:(id)a4 currentAverageRTT:(id)a5 isDeviceBlackedOut:(id)a6 localMessageState:(id)a7;
- (IDSDeliveryContext)initWithResponseCode:(int64_t)a3 error:(id)a4 lastCall:(BOOL)a5;
- (IDSDeliveryContext)initWithServerResponseDictionary:(id)a3;
@end

@implementation IDSDeliveryContext

+ (int64_t)_endpointStateForServerDeliveryStatus:(id)a3
{
  if (!a3)
  {
    return 2;
  }

  if ([a3 isEqualToNumber:&unk_1F1B20030])
  {
    return 3;
  }

  return 0;
}

- (IDSDeliveryContext)initWithServerResponseDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = IDSDeliveryContext;
  v5 = [(IDSDeliveryContext *)&v22 init];
  if (v5)
  {
    v6 = [v4 _numberForKey:@"c"];
    responseCommand = v5->_responseCommand;
    v5->_responseCommand = v6;

    v8 = [v4 _numberForKey:@"e"];
    responseTimeStamp = v5->_responseTimeStamp;
    v5->_responseTimeStamp = v8;

    v10 = [v4 _numberForKey:@"s"];
    v5->_responseCode = [v10 integerValue];

    v11 = [v4 _dataForKey:@"t"];
    v12 = [IDSPushToken pushTokenWithData:v11];
    responseToken = v5->_responseToken;
    v5->_responseToken = v12;

    v14 = MEMORY[0x1E696AD98];
    v15 = objc_opt_class();
    v16 = [v4 _numberForKey:@"O"];
    v17 = [v14 numberWithInteger:{objc_msgSend(v15, "_endpointStateForServerDeliveryStatus:", v16)}];
    endpointState = v5->_endpointState;
    v5->_endpointState = v17;

    v19 = [v4 _numberForKey:@"fR"];
    failureReason = v5->_failureReason;
    v5->_failureReason = v19;
  }

  return v5;
}

- (IDSDeliveryContext)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSDeliveryContext;
  v6 = [(IDSDeliveryContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseError, a3);
  }

  return v7;
}

- (IDSDeliveryContext)initWithResponseCode:(int64_t)a3 error:(id)a4 lastCall:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = IDSDeliveryContext;
  v10 = [(IDSDeliveryContext *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_idsResponseCode = a3;
    objc_storeStrong(&v10->_responseError, a4);
    v11->_lastCall = a5;
    endpointState = v11->_endpointState;
    v11->_endpointState = &unk_1F1B20048;
  }

  return v11;
}

- (IDSDeliveryContext)initWithResponseCode:(int64_t)a3 deviceID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSDeliveryContext;
  v8 = [(IDSDeliveryContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_idsResponseCode = a3;
    objc_storeStrong(&v8->_deviceID, a4);
  }

  return v9;
}

- (IDSDeliveryContext)initWithResponseCode:(int64_t)a3 deviceID:(id)a4 currentAverageRTT:(id)a5 isDeviceBlackedOut:(id)a6 localMessageState:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IDSDeliveryContext;
  v17 = [(IDSDeliveryContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_idsResponseCode = a3;
    objc_storeStrong(&v17->_deviceID, a4);
    objc_storeStrong(&v18->_currentAverageRTT, a5);
    objc_storeStrong(&v18->_isDeviceBlackedOut, a6);
    objc_storeStrong(&v18->_localMessageState, a7);
    endpointState = v18->_endpointState;
    v18->_endpointState = &unk_1F1B20048;
  }

  return v18;
}

@end