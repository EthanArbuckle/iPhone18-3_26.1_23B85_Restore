@interface BLTRemoteRequestLogItem
+ (id)remoteRequestLogItemWithIDSTransmitIdentifier:(id)identifier IDSResponseIdentifier:(id)responseIdentifier requestDescription:(id)description sequenceNumber:(id)number sessionIdentifier:(id)sessionIdentifier sessionState:(unint64_t)state;
- (id)description;
@end

@implementation BLTRemoteRequestLogItem

+ (id)remoteRequestLogItemWithIDSTransmitIdentifier:(id)identifier IDSResponseIdentifier:(id)responseIdentifier requestDescription:(id)description sequenceNumber:(id)number sessionIdentifier:(id)sessionIdentifier sessionState:(unint64_t)state
{
  sessionIdentifierCopy = sessionIdentifier;
  numberCopy = number;
  descriptionCopy = description;
  responseIdentifierCopy = responseIdentifier;
  identifierCopy = identifier;
  v19 = objc_alloc_init(self);
  [v19 setIdsTransmitIdentifier:identifierCopy];

  [v19 setIdsResponseIdentifier:responseIdentifierCopy];
  [v19 setRequestDescription:descriptionCopy];

  v20 = [MEMORY[0x277CBEAA8] now];
  [v19 setCacheDate:v20];

  [v19 setSequenceNumber:numberCopy];
  [v19 setSessionIdentifier:sessionIdentifierCopy];

  [v19 setSessionState:state];

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  idsTransmitIdentifier = [(BLTRemoteRequestLogItem *)self idsTransmitIdentifier];
  v5 = [v3 appendObject:idsTransmitIdentifier withName:@"idsTransmitIdentifier" skipIfNil:0];

  idsResponseIdentifier = [(BLTRemoteRequestLogItem *)self idsResponseIdentifier];
  v7 = [v3 appendObject:idsResponseIdentifier withName:@"idsResponseIdentifier" skipIfNil:1];

  requestDescription = [(BLTRemoteRequestLogItem *)self requestDescription];
  v9 = [v3 appendObject:requestDescription withName:@"requestDescription" skipIfNil:0];

  cacheDate = [(BLTRemoteRequestLogItem *)self cacheDate];
  v11 = [v3 appendObject:cacheDate withName:@"cacheDate" skipIfNil:0];

  sequenceNumber = [(BLTRemoteRequestLogItem *)self sequenceNumber];
  v13 = [v3 appendObject:sequenceNumber withName:@"sequenceNumber" skipIfNil:0];

  sessionIdentifier = [(BLTRemoteRequestLogItem *)self sessionIdentifier];
  v15 = [v3 appendObject:sessionIdentifier withName:@"sessionIdentifier" skipIfNil:0];

  v16 = [v3 appendUnsignedInteger:-[BLTRemoteRequestLogItem sessionState](self withName:{"sessionState"), @"sessionState"}];
  build = [v3 build];

  return build;
}

@end