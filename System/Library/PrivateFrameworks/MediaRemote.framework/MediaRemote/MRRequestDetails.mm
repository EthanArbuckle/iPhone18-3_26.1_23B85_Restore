@interface MRRequestDetails
+ (BOOL)_isCLIBundleID:(id)d;
+ (BOOL)_isSiriBundleID:(id)d;
+ (id)_inferInitatorForBundleID:(id)d;
- (MRRequestDetails)initWithCoder:(id)coder;
- (MRRequestDetails)initWithData:(id)data;
- (MRRequestDetails)initWithInitiator:(id)initiator requestID:(id)d reason:(id)reason userInitiated:(BOOL)initiated originatingBundleID:(id)iD;
- (MRRequestDetails)initWithProtobuf:(id)protobuf;
- (MRRequestDetails)initWithRequestID:(id)d surface:(id)surface initiator:(id)initiator reason:(id)reason userInitiated:(BOOL)initiated originatingBundleID:(id)iD;
- (MRRequestDetails)initWithSurface:(id)surface initiator:(id)initiator reason:(id)reason;
- (NSData)data;
- (NSString)label;
- (NSString)requestReasonID;
- (_MRRequestDetailsProtobuf)protobuf;
- (id)debugDescription;
- (id)description;
- (id)initChildWithParent:(id)parent reason:(id)reason;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRRequestDetails

- (NSData)data
{
  protobuf = [(MRRequestDetails *)self protobuf];
  data = [protobuf data];

  return data;
}

- (_MRRequestDetailsProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRRequestDetailsProtobuf);
  initiator = [(MRRequestDetails *)self initiator];
  [(_MRRequestDetailsProtobuf *)v3 setInitiator:initiator];

  requestID = [(MRRequestDetails *)self requestID];
  [(_MRRequestDetailsProtobuf *)v3 setRequestID:requestID];

  reason = [(MRRequestDetails *)self reason];
  [(_MRRequestDetailsProtobuf *)v3 setReason:reason];

  [(_MRRequestDetailsProtobuf *)v3 setQos:[(MRRequestDetails *)self qos]];
  startDate = [(MRRequestDetails *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(_MRRequestDetailsProtobuf *)v3 setStartDate:v8];

  [(_MRRequestDetailsProtobuf *)v3 setUserInitiated:[(MRRequestDetails *)self userInitiated]];
  [(_MRRequestDetailsProtobuf *)v3 setInitiatorWasInferred:[(MRRequestDetails *)self initiatorWasInferred]];
  originatingBundleID = [(MRRequestDetails *)self originatingBundleID];
  [(_MRRequestDetailsProtobuf *)v3 setOriginatingBundleID:originatingBundleID];

  operationID = [(MRRequestDetails *)self operationID];
  [(_MRRequestDetailsProtobuf *)v3 setOperationID:operationID];

  surface = [(MRRequestDetails *)self surface];
  [(_MRRequestDetailsProtobuf *)v3 setSurface:surface];

  return v3;
}

- (NSString)label
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  initiator = [(MRRequestDetails *)self initiator];
  surface = [(MRRequestDetails *)self surface];
  v6 = [v3 initWithFormat:@"%@:%@", initiator, surface];

  return v6;
}

- (MRRequestDetails)initWithInitiator:(id)initiator requestID:(id)d reason:(id)reason userInitiated:(BOOL)initiated originatingBundleID:(id)iD
{
  initiatorCopy = initiator;
  dCopy = d;
  reasonCopy = reason;
  iDCopy = iD;
  v31.receiver = self;
  v31.super_class = MRRequestDetails;
  v17 = [(MRRequestDetails *)&v31 init];
  if (!v17)
  {
    goto LABEL_11;
  }

  if (![initiatorCopy isEqualToString:@"Infer"])
  {
    objc_storeStrong(&v17->_initiator, initiator);
    if (dCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    requestID = v17->_requestID;
    v17->_requestID = uUIDString;

    goto LABEL_7;
  }

  v18 = [objc_opt_class() _inferInitatorForBundleID:iDCopy];
  initiator = v17->_initiator;
  v17->_initiator = v18;

  v17->_initiatorWasInferred = 1;
  if (!dCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = dCopy;
  uUID = v17->_requestID;
  v17->_requestID = v20;
LABEL_7:

  if (reasonCopy)
  {
    v24 = reasonCopy;
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

  v17->_userInitiated = initiated;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  originatingBundleID = v17->_originatingBundleID;
  v17->_originatingBundleID = bundleIdentifier;

LABEL_11:
  return v17;
}

- (MRRequestDetails)initWithSurface:(id)surface initiator:(id)initiator reason:(id)reason
{
  v8 = MEMORY[0x1E696AFB0];
  reasonCopy = reason;
  initiatorCopy = initiator;
  surfaceCopy = surface;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v16 = [(MRRequestDetails *)self initWithRequestID:uUIDString surface:surfaceCopy initiator:initiatorCopy reason:reasonCopy userInitiated:0 originatingBundleID:bundleIdentifier];

  return v16;
}

- (MRRequestDetails)initWithRequestID:(id)d surface:(id)surface initiator:(id)initiator reason:(id)reason userInitiated:(BOOL)initiated originatingBundleID:(id)iD
{
  dCopy = d;
  surfaceCopy = surface;
  initiatorCopy = initiator;
  reasonCopy = reason;
  iDCopy = iD;
  v30.receiver = self;
  v30.super_class = MRRequestDetails;
  v19 = [(MRRequestDetails *)&v30 init];
  if (v19)
  {
    if ([initiatorCopy isEqualToString:@"Infer"])
    {
      v20 = [objc_opt_class() _inferInitatorForBundleID:iDCopy];
      initiator = v19->_initiator;
      v19->_initiator = v20;

      v19->_initiatorWasInferred = 1;
    }

    else
    {
      objc_storeStrong(&v19->_initiator, initiator);
    }

    objc_storeStrong(&v19->_requestID, d);
    if (reasonCopy)
    {
      v22 = reasonCopy;
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

    v19->_userInitiated = initiated;
    objc_storeStrong(&v19->_originatingBundleID, iD);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    operationID = v19->_operationID;
    v19->_operationID = uUIDString;

    objc_storeStrong(&v19->_surface, surface);
  }

  return v19;
}

- (id)initChildWithParent:(id)parent reason:(id)reason
{
  parentCopy = parent;
  reasonCopy = reason;
  requestID = [parentCopy requestID];
  surface = [parentCopy surface];
  initiator = [parentCopy initiator];
  originatingBundleID = [parentCopy originatingBundleID];
  v12 = [(MRRequestDetails *)self initWithRequestID:requestID surface:surface initiator:initiator reason:reasonCopy userInitiated:0 originatingBundleID:originatingBundleID];

  if (v12)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    operationID = v12->_operationID;
    v12->_operationID = uUIDString;

    surface2 = [parentCopy surface];
    surface = v12->_surface;
    v12->_surface = surface2;
  }

  return v12;
}

- (MRRequestDetails)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRRequestDetailsProtobuf alloc] initWithData:dataCopy];

    self = [(MRRequestDetails *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRRequestDetails)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (protobufCopy)
  {
    initiator = [protobufCopy initiator];
    requestID = [v5 requestID];
    reason = [v5 reason];
    v9 = -[MRRequestDetails initWithInitiator:requestID:reason:userInitiated:](self, "initWithInitiator:requestID:reason:userInitiated:", initiator, requestID, reason, [v5 userInitiated]);

    if (v9)
    {
      v9->_qos = [v5 qos];
      v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v5, "startDate")}];
      startDate = v9->_startDate;
      v9->_startDate = v10;

      v9->_userInitiated = [v5 userInitiated];
      originatingBundleID = [v5 originatingBundleID];
      originatingBundleID = v9->_originatingBundleID;
      v9->_originatingBundleID = originatingBundleID;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  initiator = [(MRRequestDetails *)self initiator];
  originatingBundleID = [(MRRequestDetails *)self originatingBundleID];
  reason = [(MRRequestDetails *)self reason];
  v8 = [v3 initWithFormat:@"<%@:%p/initiator=%@/bundleID=%@/reason=%@/ui=%u/qos=%u/i=%u>", v4, self, initiator, originatingBundleID, reason, -[MRRequestDetails userInitiated](self, "userInitiated"), -[MRRequestDetails qos](self, "qos"), -[MRRequestDetails initiatorWasInferred](self, "initiatorWasInferred")];

  return v8;
}

- (id)debugDescription
{
  protobuf = [(MRRequestDetails *)self protobuf];
  v3 = [protobuf debugDescription];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRRequestDetails *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (MRRequestDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRRequestDetails *)self initWithProtobuf:v5];
  return v6;
}

- (NSString)requestReasonID
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  requestID = [(MRRequestDetails *)self requestID];
  operationID = [(MRRequestDetails *)self operationID];
  label = [(MRRequestDetails *)self label];
  v7 = [v3 initWithFormat:@"%@:%@:%@", requestID, operationID, label];

  return v7;
}

+ (id)_inferInitatorForBundleID:(id)d
{
  dCopy = d;
  if ([self _isSiriBundleID:dCopy])
  {
    v5 = @"Siri";
  }

  else if ([dCopy isEqualToString:@"com.apple.homed"])
  {
    v5 = @"Automation";
  }

  else if ([dCopy isEqualToString:@"com.apple.SoundBoard"])
  {
    v5 = @"Alarm";
  }

  else if ([dCopy isEqualToString:@"com.apple.BackgroundShortcutRunner"])
  {
    v5 = @"Shortcut";
  }

  else if ([dCopy isEqualToString:@"com.apple.MusicUIService"] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.TVSystemUIService") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.Siri") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.MediaRemoteUI") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.NanoNowPlaying") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.SpringBoard") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.MediaRemoteUIService"))
  {
    v5 = @"RoutePicker";
  }

  else if ([dCopy isEqualToString:@"com.apple.proximitycontrold"])
  {
    v5 = @"Proximity";
  }

  else if ([MRSystemMediaBundles isProcessNameAirPlayReceiver:dCopy])
  {
    v5 = @"AirPlay";
  }

  else if ([self _isCLIBundleID:dCopy])
  {
    v5 = @"CLI";
  }

  else
  {
    v5 = @"API";
  }

  return v5;
}

+ (BOOL)_isSiriBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.assistant_service"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [dCopy isEqualToString:@"assistantd"];
  }

  return v4;
}

+ (BOOL)_isCLIBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.mediaremotetool"] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.mediaplayertool"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [dCopy isEqualToString:@"com.apple.mediactl"];
  }

  return v4;
}

@end