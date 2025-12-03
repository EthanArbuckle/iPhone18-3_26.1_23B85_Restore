@interface MRUpdateActiveSystemEndpointRequest
- (MRUpdateActiveSystemEndpointRequest)initWithOutputDeviceUID:(id)d type:(int64_t)type reason:(id)reason;
- (MRUpdateActiveSystemEndpointRequest)initWithProtobuf:(id)protobuf;
- (_MRUpdateActiveSystemEndpointRequestProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)perform:(id)perform completion:(id)completion;
@end

@implementation MRUpdateActiveSystemEndpointRequest

- (MRUpdateActiveSystemEndpointRequest)initWithOutputDeviceUID:(id)d type:(int64_t)type reason:(id)reason
{
  dCopy = d;
  reasonCopy = reason;
  v16.receiver = self;
  v16.super_class = MRUpdateActiveSystemEndpointRequest;
  v10 = [(MRUpdateActiveSystemEndpointRequest *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    outputDeviceUID = v10->_outputDeviceUID;
    v10->_outputDeviceUID = v11;

    v13 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v13;

    v10->_type = type;
  }

  return v10;
}

- (MRUpdateActiveSystemEndpointRequest)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = MRUpdateActiveSystemEndpointRequest;
  v5 = [(MRUpdateActiveSystemEndpointRequest *)&v17 init];
  if (v5)
  {
    previousOutputDeviceUID = [protobufCopy previousOutputDeviceUID];
    v7 = [previousOutputDeviceUID copy];
    previousOutputDeviceUID = v5->_previousOutputDeviceUID;
    v5->_previousOutputDeviceUID = v7;

    outputDeviceUID = [protobufCopy outputDeviceUID];
    v10 = [outputDeviceUID copy];
    outputDeviceUID = v5->_outputDeviceUID;
    v5->_outputDeviceUID = v10;

    v5->_changeType = [protobufCopy changeType];
    reason = [protobufCopy reason];
    v13 = [reason copy];
    reason = v5->_reason;
    v5->_reason = v13;

    v5->_pairedDeviceSync = [protobufCopy pairedDeviceSync];
    v5->_type = [protobufCopy type];
    [protobufCopy disableDuration];
    v5->_disableDuration = v15;
    v5->_demoteWhenSyncingToCompanion = [protobufCopy demoteWhenSyncingToCompanion];
  }

  return v5;
}

- (_MRUpdateActiveSystemEndpointRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRUpdateActiveSystemEndpointRequestProtobuf);
  previousOutputDeviceUID = [(MRUpdateActiveSystemEndpointRequest *)self previousOutputDeviceUID];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setPreviousOutputDeviceUID:previousOutputDeviceUID];

  outputDeviceUID = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setOutputDeviceUID:outputDeviceUID];

  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setChangeType:[(MRUpdateActiveSystemEndpointRequest *)self changeType]];
  reason = [(MRUpdateActiveSystemEndpointRequest *)self reason];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setReason:reason];

  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setPairedDeviceSync:[(MRUpdateActiveSystemEndpointRequest *)self isPairedDeviceSync]];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setType:[(MRUpdateActiveSystemEndpointRequest *)self type]];
  [(MRUpdateActiveSystemEndpointRequest *)self disableDuration];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setDisableDuration:?];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setDemoteWhenSyncingToCompanion:[(MRUpdateActiveSystemEndpointRequest *)self demoteWhenSyncingToCompanion]];

  return v3;
}

- (id)description
{
  outputDeviceUID = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v4 = @"Update";
  if (!outputDeviceUID)
  {
    v4 = @"Clear";
  }

  v5 = v4;

  changeType = [(MRUpdateActiveSystemEndpointRequest *)self changeType];
  v7 = @"Deferrable";
  if (changeType != 1)
  {
    v7 = 0;
  }

  if (changeType)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Immediate";
  }

  v9 = [(__CFString *)v8 copy];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription([(MRUpdateActiveSystemEndpointRequest *)self type]);
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  outputDeviceUID2 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  clientBundleIdentifier = [(MRUpdateActiveSystemEndpointRequest *)self clientBundleIdentifier];
  reason = [(MRUpdateActiveSystemEndpointRequest *)self reason];
  if ([(MRUpdateActiveSystemEndpointRequest *)self demoteWhenSyncingToCompanion])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [(MRUpdateActiveSystemEndpointRequest *)self disableDuration];
  v17 = [v11 initWithFormat:@"outputDevice = <%@>, client = <%@>, reason = <%@>, operation = <%@>, changeType = <%@>, type = <%@>, demote = <%@> disableDuration = <%lf>", outputDeviceUID2, clientBundleIdentifier, reason, v5, v9, active, v15, v16];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  previousOutputDeviceUID = [(MRUpdateActiveSystemEndpointRequest *)self previousOutputDeviceUID];
  v7 = [previousOutputDeviceUID copyWithZone:zone];
  [v5 setPreviousOutputDeviceUID:v7];

  outputDeviceUID = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v9 = [outputDeviceUID copyWithZone:zone];
  [v5 setOutputDeviceUID:v9];

  [v5 setChangeType:{-[MRUpdateActiveSystemEndpointRequest changeType](self, "changeType")}];
  reason = [(MRUpdateActiveSystemEndpointRequest *)self reason];
  v11 = [reason copyWithZone:zone];
  [v5 setReason:v11];

  clientBundleIdentifier = [(MRUpdateActiveSystemEndpointRequest *)self clientBundleIdentifier];
  v13 = [clientBundleIdentifier copyWithZone:zone];
  [v5 setClientBundleIdentifier:v13];

  [v5 setPairedDeviceSync:{-[MRUpdateActiveSystemEndpointRequest isPairedDeviceSync](self, "isPairedDeviceSync")}];
  [v5 setSuppressPairedDeviceSync:{-[MRUpdateActiveSystemEndpointRequest suppressPairedDeviceSync](self, "suppressPairedDeviceSync")}];
  [v5 setDemoteWhenSyncingToCompanion:{-[MRUpdateActiveSystemEndpointRequest demoteWhenSyncingToCompanion](self, "demoteWhenSyncingToCompanion")}];
  [v5 setType:{-[MRUpdateActiveSystemEndpointRequest type](self, "type")}];
  [(MRUpdateActiveSystemEndpointRequest *)self disableDuration];
  [v5 setDisableDuration:?];
  return v5;
}

- (void)perform:(id)perform completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MEMORY[0x1E695DF00];
  performCopy = perform;
  date = [v7 date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  outputDeviceUID = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  outputDeviceUID2 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  if (outputDeviceUID2)
  {
    v15 = @"Update";
  }

  else
  {
    v15 = @"Clear";
  }

  active = MRMediaRemoteActiveEndpointTypeCopyDescription([(MRUpdateActiveSystemEndpointRequest *)self type]);
  active = [v13 initWithFormat:@"%@%@ActiveEndpoint", v15, active];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", active, uUIDString];
  v19 = v18;
  if (outputDeviceUID)
  {
    [v18 appendFormat:@" for %@", outputDeviceUID];
  }

  reason = [(MRUpdateActiveSystemEndpointRequest *)self reason];

  if (reason)
  {
    reason2 = [(MRUpdateActiveSystemEndpointRequest *)self reason];
    [v19 appendFormat:@" because %@", reason2];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v19;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  clientBundleIdentifier = [(MRUpdateActiveSystemEndpointRequest *)self clientBundleIdentifier];

  if (!clientBundleIdentifier)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(MRUpdateActiveSystemEndpointRequest *)self setClientBundleIdentifier:bundleIdentifier];
  }

  v26 = [[MRUpdateActiveSystemEndpointMessage alloc] initWithRequest:self];
  v27 = MRGetSharedService();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__MRUpdateActiveSystemEndpointRequest_perform_completion___block_invoke;
  v34[3] = &unk_1E76A1BC0;
  v35 = outputDeviceUID;
  v36 = active;
  v37 = uUIDString;
  v38 = date;
  v39 = completionCopy;
  v28 = completionCopy;
  v29 = date;
  v30 = uUIDString;
  v31 = active;
  v32 = outputDeviceUID;
  MRMediaRemoteServiceUpdateActiveSystemEndpointUID(v27, v26, performCopy, v34);

  v33 = *MEMORY[0x1E69E9840];
}

void __58__MRUpdateActiveSystemEndpointRequest_perform_completion___block_invoke(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      v26 = 138544130;
      v27 = v15;
      v28 = 2114;
      v29 = v14;
      v30 = 2114;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      v26 = 138543874;
      v27 = v21;
      v28 = 2114;
      v29 = v22;
      v30 = 2048;
      v31 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v26, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[7]];
    v26 = 138544386;
    v27 = v9;
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = v10;
    v34 = 2048;
    v35 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v26, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(a1, v3, v6);
  }

LABEL_14:

  if (a1[8])
  {
    v24 = [[MRUpdateActiveSystemEndpointResponse alloc] initWithError:v3];
    (*(a1[8] + 16))();
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end