@interface CMCaptureFrameSenderEndpoint
- (CMCaptureFrameSenderEndpoint)initWithDictionary:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CMCaptureFrameSenderEndpoint

- (CMCaptureFrameSenderEndpoint)initWithDictionary:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"endpoint"];
  v6 = [a3 objectForKeyedSubscript:@"endpoint-uid"];
  v7 = [a3 objectForKeyedSubscript:@"endpoint-type"];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"endpoint-pid", "intValue"}];
  v9 = [a3 objectForKeyedSubscript:@"endpoint-audit-token"];
  v10 = [a3 objectForKeyedSubscript:@"endpoint-camera-uid"];
  if (v5)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v7 == 0 || v8 < 1 || v9 == 0)
  {

    return 0;
  }

  else
  {
    v16 = v10;
    v19.receiver = self;
    v19.super_class = CMCaptureFrameSenderEndpoint;
    v17 = [(CMCaptureFrameSenderEndpoint *)&v19 init];
    v15 = v17;
    if (v17)
    {
      v17->_endpoint = xpc_retain(v5);
      v15->_endpointUniqueID = v6;
      v15->_endpointType = v7;
      v15->_endpointPID = v8;
      v15->_endpointProxyPID = [objc_msgSend(a3 objectForKeyedSubscript:{@"endpoint-proxy-pid", "intValue"}];
      v15->_endpointAuditToken = v9;
      v15->_endpointProxyAuditToken = [a3 objectForKeyedSubscript:@"endpoint-proxy-audit-token"];
      v15->_endpointCameraUniqueID = v16;
    }
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMCaptureFrameSenderEndpoint;
  [(CMCaptureFrameSenderEndpoint *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ [%d:%d] %p %@ %@ %@>", NSStringFromClass(v4), self->_endpointPID, self->_endpointProxyPID, self->_endpoint, self->_endpointUniqueID, self->_endpointType, self->_endpointCameraUniqueID];
}

@end