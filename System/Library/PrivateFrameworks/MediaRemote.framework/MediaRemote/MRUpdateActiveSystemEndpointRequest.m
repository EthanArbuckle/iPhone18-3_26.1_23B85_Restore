@interface MRUpdateActiveSystemEndpointRequest
- (MRUpdateActiveSystemEndpointRequest)initWithOutputDeviceUID:(id)a3 type:(int64_t)a4 reason:(id)a5;
- (MRUpdateActiveSystemEndpointRequest)initWithProtobuf:(id)a3;
- (_MRUpdateActiveSystemEndpointRequestProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)perform:(id)a3 completion:(id)a4;
@end

@implementation MRUpdateActiveSystemEndpointRequest

- (MRUpdateActiveSystemEndpointRequest)initWithOutputDeviceUID:(id)a3 type:(int64_t)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = MRUpdateActiveSystemEndpointRequest;
  v10 = [(MRUpdateActiveSystemEndpointRequest *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    outputDeviceUID = v10->_outputDeviceUID;
    v10->_outputDeviceUID = v11;

    v13 = [v9 copy];
    reason = v10->_reason;
    v10->_reason = v13;

    v10->_type = a4;
  }

  return v10;
}

- (MRUpdateActiveSystemEndpointRequest)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MRUpdateActiveSystemEndpointRequest;
  v5 = [(MRUpdateActiveSystemEndpointRequest *)&v17 init];
  if (v5)
  {
    v6 = [v4 previousOutputDeviceUID];
    v7 = [v6 copy];
    previousOutputDeviceUID = v5->_previousOutputDeviceUID;
    v5->_previousOutputDeviceUID = v7;

    v9 = [v4 outputDeviceUID];
    v10 = [v9 copy];
    outputDeviceUID = v5->_outputDeviceUID;
    v5->_outputDeviceUID = v10;

    v5->_changeType = [v4 changeType];
    v12 = [v4 reason];
    v13 = [v12 copy];
    reason = v5->_reason;
    v5->_reason = v13;

    v5->_pairedDeviceSync = [v4 pairedDeviceSync];
    v5->_type = [v4 type];
    [v4 disableDuration];
    v5->_disableDuration = v15;
    v5->_demoteWhenSyncingToCompanion = [v4 demoteWhenSyncingToCompanion];
  }

  return v5;
}

- (_MRUpdateActiveSystemEndpointRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRUpdateActiveSystemEndpointRequestProtobuf);
  v4 = [(MRUpdateActiveSystemEndpointRequest *)self previousOutputDeviceUID];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setPreviousOutputDeviceUID:v4];

  v5 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setOutputDeviceUID:v5];

  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setChangeType:[(MRUpdateActiveSystemEndpointRequest *)self changeType]];
  v6 = [(MRUpdateActiveSystemEndpointRequest *)self reason];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setReason:v6];

  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setPairedDeviceSync:[(MRUpdateActiveSystemEndpointRequest *)self isPairedDeviceSync]];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setType:[(MRUpdateActiveSystemEndpointRequest *)self type]];
  [(MRUpdateActiveSystemEndpointRequest *)self disableDuration];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setDisableDuration:?];
  [(_MRUpdateActiveSystemEndpointRequestProtobuf *)v3 setDemoteWhenSyncingToCompanion:[(MRUpdateActiveSystemEndpointRequest *)self demoteWhenSyncingToCompanion]];

  return v3;
}

- (id)description
{
  v3 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v4 = @"Update";
  if (!v3)
  {
    v4 = @"Clear";
  }

  v5 = v4;

  v6 = [(MRUpdateActiveSystemEndpointRequest *)self changeType];
  v7 = @"Deferrable";
  if (v6 != 1)
  {
    v7 = 0;
  }

  if (v6)
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
  v12 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v13 = [(MRUpdateActiveSystemEndpointRequest *)self clientBundleIdentifier];
  v14 = [(MRUpdateActiveSystemEndpointRequest *)self reason];
  if ([(MRUpdateActiveSystemEndpointRequest *)self demoteWhenSyncingToCompanion])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [(MRUpdateActiveSystemEndpointRequest *)self disableDuration];
  v17 = [v11 initWithFormat:@"outputDevice = <%@>, client = <%@>, reason = <%@>, operation = <%@>, changeType = <%@>, type = <%@>, demote = <%@> disableDuration = <%lf>", v12, v13, v14, v5, v9, active, v15, v16];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(MRUpdateActiveSystemEndpointRequest *)self previousOutputDeviceUID];
  v7 = [v6 copyWithZone:a3];
  [v5 setPreviousOutputDeviceUID:v7];

  v8 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v9 = [v8 copyWithZone:a3];
  [v5 setOutputDeviceUID:v9];

  [v5 setChangeType:{-[MRUpdateActiveSystemEndpointRequest changeType](self, "changeType")}];
  v10 = [(MRUpdateActiveSystemEndpointRequest *)self reason];
  v11 = [v10 copyWithZone:a3];
  [v5 setReason:v11];

  v12 = [(MRUpdateActiveSystemEndpointRequest *)self clientBundleIdentifier];
  v13 = [v12 copyWithZone:a3];
  [v5 setClientBundleIdentifier:v13];

  [v5 setPairedDeviceSync:{-[MRUpdateActiveSystemEndpointRequest isPairedDeviceSync](self, "isPairedDeviceSync")}];
  [v5 setSuppressPairedDeviceSync:{-[MRUpdateActiveSystemEndpointRequest suppressPairedDeviceSync](self, "suppressPairedDeviceSync")}];
  [v5 setDemoteWhenSyncingToCompanion:{-[MRUpdateActiveSystemEndpointRequest demoteWhenSyncingToCompanion](self, "demoteWhenSyncingToCompanion")}];
  [v5 setType:{-[MRUpdateActiveSystemEndpointRequest type](self, "type")}];
  [(MRUpdateActiveSystemEndpointRequest *)self disableDuration];
  [v5 setDisableDuration:?];
  return v5;
}

- (void)perform:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695DF00];
  v8 = a3;
  v9 = [v7 date];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];

  v12 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(MRUpdateActiveSystemEndpointRequest *)self outputDeviceUID];
  if (v14)
  {
    v15 = @"Update";
  }

  else
  {
    v15 = @"Clear";
  }

  active = MRMediaRemoteActiveEndpointTypeCopyDescription([(MRUpdateActiveSystemEndpointRequest *)self type]);
  v17 = [v13 initWithFormat:@"%@%@ActiveEndpoint", v15, active];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v17, v11];
  v19 = v18;
  if (v12)
  {
    [v18 appendFormat:@" for %@", v12];
  }

  v20 = [(MRUpdateActiveSystemEndpointRequest *)self reason];

  if (v20)
  {
    v21 = [(MRUpdateActiveSystemEndpointRequest *)self reason];
    [v19 appendFormat:@" because %@", v21];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v19;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = [(MRUpdateActiveSystemEndpointRequest *)self clientBundleIdentifier];

  if (!v23)
  {
    v24 = [MEMORY[0x1E696AAE8] mainBundle];
    v25 = [v24 bundleIdentifier];
    [(MRUpdateActiveSystemEndpointRequest *)self setClientBundleIdentifier:v25];
  }

  v26 = [[MRUpdateActiveSystemEndpointMessage alloc] initWithRequest:self];
  v27 = MRGetSharedService();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__MRUpdateActiveSystemEndpointRequest_perform_completion___block_invoke;
  v34[3] = &unk_1E76A1BC0;
  v35 = v12;
  v36 = v17;
  v37 = v11;
  v38 = v9;
  v39 = v6;
  v28 = v6;
  v29 = v9;
  v30 = v11;
  v31 = v17;
  v32 = v12;
  MRMediaRemoteServiceUpdateActiveSystemEndpointUID(v27, v26, v8, v34);

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