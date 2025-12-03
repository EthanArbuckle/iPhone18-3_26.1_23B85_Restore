@interface BMDiscoverabilitySignalEvent
- (BMDiscoverabilitySignalEvent)initWithIdentifier:(id)identifier bundleID:(id)d context:(id)context userInfo:(id)info;
- (id)description;
@end

@implementation BMDiscoverabilitySignalEvent

- (BMDiscoverabilitySignalEvent)initWithIdentifier:(id)identifier bundleID:(id)d context:(id)context userInfo:(id)info
{
  identifierCopy = identifier;
  dCopy = d;
  contextCopy = context;
  infoCopy = info;
  v24.receiver = self;
  v24.super_class = BMDiscoverabilitySignalEvent;
  v14 = [(BMDiscoverabilitySignalEvent *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [dCopy copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v17;

    v19 = [contextCopy copy];
    context = v14->_context;
    v14->_context = v19;

    v21 = [infoCopy copy];
    userInfo = v14->_userInfo;
    v14->_userInfo = v21;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(BMDiscoverabilitySignalEvent *)self identifier];
  bundleID = [(BMDiscoverabilitySignalEvent *)self bundleID];
  context = [(BMDiscoverabilitySignalEvent *)self context];
  userInfo = [(BMDiscoverabilitySignalEvent *)self userInfo];
  v9 = [v3 stringWithFormat:@"<%@ %p> identifier: %@, bundleID: %@, context: %@ userInfo: %@", v4, self, identifier, bundleID, context, userInfo];

  return v9;
}

@end