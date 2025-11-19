@interface MRRequestDetails
+ (BOOL)_isCLIBundleID:(id)a3;
+ (BOOL)_isSiriBundleID:(id)a3;
+ (id)_inferInitatorForBundleID:(id)a3;
- (MRRequestDetails)initWithCoder:(id)a3;
- (MRRequestDetails)initWithData:(id)a3;
- (MRRequestDetails)initWithInitiator:(id)a3 requestID:(id)a4 reason:(id)a5 userInitiated:(BOOL)a6 originatingBundleID:(id)a7;
- (MRRequestDetails)initWithProtobuf:(id)a3;
- (MRRequestDetails)initWithRequestID:(id)a3 surface:(id)a4 initiator:(id)a5 reason:(id)a6 userInitiated:(BOOL)a7 originatingBundleID:(id)a8;
- (MRRequestDetails)initWithSurface:(id)a3 initiator:(id)a4 reason:(id)a5;
- (NSData)data;
- (NSString)label;
- (NSString)requestReasonID;
- (_MRRequestDetailsProtobuf)protobuf;
- (id)debugDescription;
- (id)description;
- (id)initChildWithParent:(id)a3 reason:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRRequestDetails

- (NSData)data
{
  v2 = [(MRRequestDetails *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRRequestDetailsProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRRequestDetailsProtobuf);
  v4 = [(MRRequestDetails *)self initiator];
  [(_MRRequestDetailsProtobuf *)v3 setInitiator:v4];

  v5 = [(MRRequestDetails *)self requestID];
  [(_MRRequestDetailsProtobuf *)v3 setRequestID:v5];

  v6 = [(MRRequestDetails *)self reason];
  [(_MRRequestDetailsProtobuf *)v3 setReason:v6];

  [(_MRRequestDetailsProtobuf *)v3 setQos:[(MRRequestDetails *)self qos]];
  v7 = [(MRRequestDetails *)self startDate];
  [v7 timeIntervalSinceReferenceDate];
  [(_MRRequestDetailsProtobuf *)v3 setStartDate:v8];

  [(_MRRequestDetailsProtobuf *)v3 setUserInitiated:[(MRRequestDetails *)self userInitiated]];
  [(_MRRequestDetailsProtobuf *)v3 setInitiatorWasInferred:[(MRRequestDetails *)self initiatorWasInferred]];
  v9 = [(MRRequestDetails *)self originatingBundleID];
  [(_MRRequestDetailsProtobuf *)v3 setOriginatingBundleID:v9];

  v10 = [(MRRequestDetails *)self operationID];
  [(_MRRequestDetailsProtobuf *)v3 setOperationID:v10];

  v11 = [(MRRequestDetails *)self surface];
  [(_MRRequestDetailsProtobuf *)v3 setSurface:v11];

  return v3;
}

- (NSString)label
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MRRequestDetails *)self initiator];
  v5 = [(MRRequestDetails *)self surface];
  v6 = [v3 initWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (MRRequestDetails)initWithInitiator:(id)a3 requestID:(id)a4 reason:(id)a5 userInitiated:(BOOL)a6 originatingBundleID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = MRRequestDetails;
  v17 = [(MRRequestDetails *)&v31 init];
  if (!v17)
  {
    goto LABEL_11;
  }

  if (![v13 isEqualToString:@"Infer"])
  {
    objc_storeStrong(&v17->_initiator, a3);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_6:
    v21 = [MEMORY[0x1E696AFB0] UUID];
    v22 = [v21 UUIDString];
    requestID = v17->_requestID;
    v17->_requestID = v22;

    goto LABEL_7;
  }

  v18 = [objc_opt_class() _inferInitatorForBundleID:v16];
  initiator = v17->_initiator;
  v17->_initiator = v18;

  v17->_initiatorWasInferred = 1;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = v14;
  v21 = v17->_requestID;
  v17->_requestID = v20;
LABEL_7:

  if (v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = &stru_1F1513E38;
  }

  objc_storeStrong(&v17->_reason, v24);
  v17->_qos = qos_class_self();
  v25 = [MEMORY[0x1E695DF00] now];
  startDate = v17->_startDate;
  v17->_startDate = v25;

  v17->_userInitiated = a6;
  v27 = [MEMORY[0x1E696AAE8] mainBundle];
  v28 = [v27 bundleIdentifier];
  originatingBundleID = v17->_originatingBundleID;
  v17->_originatingBundleID = v28;

LABEL_11:
  return v17;
}

- (MRRequestDetails)initWithSurface:(id)a3 initiator:(id)a4 reason:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];
  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 bundleIdentifier];
  v16 = [(MRRequestDetails *)self initWithRequestID:v13 surface:v11 initiator:v10 reason:v9 userInitiated:0 originatingBundleID:v15];

  return v16;
}

- (MRRequestDetails)initWithRequestID:(id)a3 surface:(id)a4 initiator:(id)a5 reason:(id)a6 userInitiated:(BOOL)a7 originatingBundleID:(id)a8
{
  v29 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = MRRequestDetails;
  v19 = [(MRRequestDetails *)&v30 init];
  if (v19)
  {
    if ([v16 isEqualToString:@"Infer"])
    {
      v20 = [objc_opt_class() _inferInitatorForBundleID:v18];
      initiator = v19->_initiator;
      v19->_initiator = v20;

      v19->_initiatorWasInferred = 1;
    }

    else
    {
      objc_storeStrong(&v19->_initiator, a5);
    }

    objc_storeStrong(&v19->_requestID, a3);
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = &stru_1F1513E38;
    }

    objc_storeStrong(&v19->_reason, v22);
    v19->_qos = qos_class_self();
    v23 = [MEMORY[0x1E695DF00] now];
    startDate = v19->_startDate;
    v19->_startDate = v23;

    v19->_userInitiated = a7;
    objc_storeStrong(&v19->_originatingBundleID, a8);
    v25 = [MEMORY[0x1E696AFB0] UUID];
    v26 = [v25 UUIDString];
    operationID = v19->_operationID;
    v19->_operationID = v26;

    objc_storeStrong(&v19->_surface, a4);
  }

  return v19;
}

- (id)initChildWithParent:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 requestID];
  v9 = [v6 surface];
  v10 = [v6 initiator];
  v11 = [v6 originatingBundleID];
  v12 = [(MRRequestDetails *)self initWithRequestID:v8 surface:v9 initiator:v10 reason:v7 userInitiated:0 originatingBundleID:v11];

  if (v12)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    operationID = v12->_operationID;
    v12->_operationID = v14;

    v16 = [v6 surface];
    surface = v12->_surface;
    v12->_surface = v16;
  }

  return v12;
}

- (MRRequestDetails)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRRequestDetailsProtobuf alloc] initWithData:v4];

    self = [(MRRequestDetails *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRRequestDetails)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 initiator];
    v7 = [v5 requestID];
    v8 = [v5 reason];
    v9 = -[MRRequestDetails initWithInitiator:requestID:reason:userInitiated:](self, "initWithInitiator:requestID:reason:userInitiated:", v6, v7, v8, [v5 userInitiated]);

    if (v9)
    {
      v9->_qos = [v5 qos];
      v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v5, "startDate")}];
      startDate = v9->_startDate;
      v9->_startDate = v10;

      v9->_userInitiated = [v5 userInitiated];
      v12 = [v5 originatingBundleID];
      originatingBundleID = v9->_originatingBundleID;
      v9->_originatingBundleID = v12;
    }

    self = v9;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRRequestDetails *)self initiator];
  v6 = [(MRRequestDetails *)self originatingBundleID];
  v7 = [(MRRequestDetails *)self reason];
  v8 = [v3 initWithFormat:@"<%@:%p/initiator=%@/bundleID=%@/reason=%@/ui=%u/qos=%u/i=%u>", v4, self, v5, v6, v7, -[MRRequestDetails userInitiated](self, "userInitiated"), -[MRRequestDetails qos](self, "qos"), -[MRRequestDetails initiatorWasInferred](self, "initiatorWasInferred")];

  return v8;
}

- (id)debugDescription
{
  v2 = [(MRRequestDetails *)self protobuf];
  v3 = [v2 debugDescription];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRRequestDetails *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (MRRequestDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRRequestDetails *)self initWithProtobuf:v5];
  return v6;
}

- (NSString)requestReasonID
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MRRequestDetails *)self requestID];
  v5 = [(MRRequestDetails *)self operationID];
  v6 = [(MRRequestDetails *)self label];
  v7 = [v3 initWithFormat:@"%@:%@:%@", v4, v5, v6];

  return v7;
}

+ (id)_inferInitatorForBundleID:(id)a3
{
  v4 = a3;
  if ([a1 _isSiriBundleID:v4])
  {
    v5 = @"Siri";
  }

  else if ([v4 isEqualToString:@"com.apple.homed"])
  {
    v5 = @"Automation";
  }

  else if ([v4 isEqualToString:@"com.apple.SoundBoard"])
  {
    v5 = @"Alarm";
  }

  else if ([v4 isEqualToString:@"com.apple.BackgroundShortcutRunner"])
  {
    v5 = @"Shortcut";
  }

  else if ([v4 isEqualToString:@"com.apple.MusicUIService"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.TVSystemUIService") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.Siri") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.MediaRemoteUI") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.NanoNowPlaying") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.SpringBoard") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.MediaRemoteUIService"))
  {
    v5 = @"RoutePicker";
  }

  else if ([v4 isEqualToString:@"com.apple.proximitycontrold"])
  {
    v5 = @"Proximity";
  }

  else if ([MRSystemMediaBundles isProcessNameAirPlayReceiver:v4])
  {
    v5 = @"AirPlay";
  }

  else if ([a1 _isCLIBundleID:v4])
  {
    v5 = @"CLI";
  }

  else
  {
    v5 = @"API";
  }

  return v5;
}

+ (BOOL)_isSiriBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.assistant_service"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"assistantd"];
  }

  return v4;
}

+ (BOOL)_isCLIBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mediaremotetool"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.mediaplayertool"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.mediactl"];
  }

  return v4;
}

@end