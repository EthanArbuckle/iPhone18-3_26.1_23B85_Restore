@interface BLTRemoteRequest
- (BLTRemoteRequest)initWithProtobuf:(id)a3 type:(unsigned __int16)a4;
- (id)description;
@end

@implementation BLTRemoteRequest

- (BLTRemoteRequest)initWithProtobuf:(id)a3 type:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BLTRemoteRequest;
  v8 = [(BLTRemoteRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_protobuf, a3);
    v9->_type = a4;
    v9->_allowCloudDelivery = 1;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLTRemoteRequest *)self protobuf];
  v5 = [v3 appendObject:v4 withName:@"protobuf" skipIfNil:0];

  v6 = [v3 appendUnsignedInt:-[BLTRemoteRequest type](self withName:{"type"), @"type"}];
  v7 = [(BLTRemoteRequest *)self didSend];
  v8 = [v3 appendObject:v7 withName:@"didSend" skipIfNil:1];

  v9 = [(BLTRemoteRequest *)self timeout];
  v10 = [v3 appendObject:v9 withName:@"timeout" skipIfNil:1];

  v11 = [(BLTRemoteRequest *)self didQueue];
  v12 = [v3 appendObject:v11 withName:@"didQueue" skipIfNil:1];

  v13 = [(BLTRemoteRequest *)self requestDescription];
  v14 = [v3 appendObject:v13 withName:@"requestDescription" skipIfNil:1];

  v15 = [v3 appendBool:-[BLTRemoteRequest allowCloudDelivery](self withName:{"allowCloudDelivery"), @"allowCloudDelivery"}];
  v16 = [(BLTRemoteRequest *)self uniqueID];
  v17 = [v3 appendObject:v16 withName:@"uniqueID" skipIfNil:1];

  v18 = [(BLTRemoteRequest *)self responseCompletion];
  v19 = [v3 appendObject:v18 withName:@"responseCompletion" skipIfNil:1];

  v20 = [(BLTRemoteRequest *)self responseToRequest];
  v21 = [v3 appendObject:v20 withName:@"responseToRequest" skipIfNil:1];

  v22 = [v3 build];

  return v22;
}

@end