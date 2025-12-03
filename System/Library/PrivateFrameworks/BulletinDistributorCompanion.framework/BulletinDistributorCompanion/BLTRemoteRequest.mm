@interface BLTRemoteRequest
- (BLTRemoteRequest)initWithProtobuf:(id)protobuf type:(unsigned __int16)type;
- (id)description;
@end

@implementation BLTRemoteRequest

- (BLTRemoteRequest)initWithProtobuf:(id)protobuf type:(unsigned __int16)type
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = BLTRemoteRequest;
  v8 = [(BLTRemoteRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_protobuf, protobuf);
    v9->_type = type;
    v9->_allowCloudDelivery = 1;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  protobuf = [(BLTRemoteRequest *)self protobuf];
  v5 = [v3 appendObject:protobuf withName:@"protobuf" skipIfNil:0];

  v6 = [v3 appendUnsignedInt:-[BLTRemoteRequest type](self withName:{"type"), @"type"}];
  didSend = [(BLTRemoteRequest *)self didSend];
  v8 = [v3 appendObject:didSend withName:@"didSend" skipIfNil:1];

  timeout = [(BLTRemoteRequest *)self timeout];
  v10 = [v3 appendObject:timeout withName:@"timeout" skipIfNil:1];

  didQueue = [(BLTRemoteRequest *)self didQueue];
  v12 = [v3 appendObject:didQueue withName:@"didQueue" skipIfNil:1];

  requestDescription = [(BLTRemoteRequest *)self requestDescription];
  v14 = [v3 appendObject:requestDescription withName:@"requestDescription" skipIfNil:1];

  v15 = [v3 appendBool:-[BLTRemoteRequest allowCloudDelivery](self withName:{"allowCloudDelivery"), @"allowCloudDelivery"}];
  uniqueID = [(BLTRemoteRequest *)self uniqueID];
  v17 = [v3 appendObject:uniqueID withName:@"uniqueID" skipIfNil:1];

  responseCompletion = [(BLTRemoteRequest *)self responseCompletion];
  v19 = [v3 appendObject:responseCompletion withName:@"responseCompletion" skipIfNil:1];

  responseToRequest = [(BLTRemoteRequest *)self responseToRequest];
  v21 = [v3 appendObject:responseToRequest withName:@"responseToRequest" skipIfNil:1];

  build = [v3 build];

  return build;
}

@end