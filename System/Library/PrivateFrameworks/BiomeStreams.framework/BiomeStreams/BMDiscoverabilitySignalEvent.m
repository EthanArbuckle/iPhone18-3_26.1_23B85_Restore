@interface BMDiscoverabilitySignalEvent
- (BMDiscoverabilitySignalEvent)initWithIdentifier:(id)a3 bundleID:(id)a4 context:(id)a5 userInfo:(id)a6;
- (id)description;
@end

@implementation BMDiscoverabilitySignalEvent

- (BMDiscoverabilitySignalEvent)initWithIdentifier:(id)a3 bundleID:(id)a4 context:(id)a5 userInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = BMDiscoverabilitySignalEvent;
  v14 = [(BMDiscoverabilitySignalEvent *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v17;

    v19 = [v12 copy];
    context = v14->_context;
    v14->_context = v19;

    v21 = [v13 copy];
    userInfo = v14->_userInfo;
    v14->_userInfo = v21;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BMDiscoverabilitySignalEvent *)self identifier];
  v6 = [(BMDiscoverabilitySignalEvent *)self bundleID];
  v7 = [(BMDiscoverabilitySignalEvent *)self context];
  v8 = [(BMDiscoverabilitySignalEvent *)self userInfo];
  v9 = [v3 stringWithFormat:@"<%@ %p> identifier: %@, bundleID: %@, context: %@ userInfo: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

@end