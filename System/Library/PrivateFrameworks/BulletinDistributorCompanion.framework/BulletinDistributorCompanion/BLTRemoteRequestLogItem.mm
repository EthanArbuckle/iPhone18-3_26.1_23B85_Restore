@interface BLTRemoteRequestLogItem
+ (id)remoteRequestLogItemWithIDSTransmitIdentifier:(id)a3 IDSResponseIdentifier:(id)a4 requestDescription:(id)a5 sequenceNumber:(id)a6 sessionIdentifier:(id)a7 sessionState:(unint64_t)a8;
- (id)description;
@end

@implementation BLTRemoteRequestLogItem

+ (id)remoteRequestLogItemWithIDSTransmitIdentifier:(id)a3 IDSResponseIdentifier:(id)a4 requestDescription:(id)a5 sequenceNumber:(id)a6 sessionIdentifier:(id)a7 sessionState:(unint64_t)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(a1);
  [v19 setIdsTransmitIdentifier:v18];

  [v19 setIdsResponseIdentifier:v17];
  [v19 setRequestDescription:v16];

  v20 = [MEMORY[0x277CBEAA8] now];
  [v19 setCacheDate:v20];

  [v19 setSequenceNumber:v15];
  [v19 setSessionIdentifier:v14];

  [v19 setSessionState:a8];

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLTRemoteRequestLogItem *)self idsTransmitIdentifier];
  v5 = [v3 appendObject:v4 withName:@"idsTransmitIdentifier" skipIfNil:0];

  v6 = [(BLTRemoteRequestLogItem *)self idsResponseIdentifier];
  v7 = [v3 appendObject:v6 withName:@"idsResponseIdentifier" skipIfNil:1];

  v8 = [(BLTRemoteRequestLogItem *)self requestDescription];
  v9 = [v3 appendObject:v8 withName:@"requestDescription" skipIfNil:0];

  v10 = [(BLTRemoteRequestLogItem *)self cacheDate];
  v11 = [v3 appendObject:v10 withName:@"cacheDate" skipIfNil:0];

  v12 = [(BLTRemoteRequestLogItem *)self sequenceNumber];
  v13 = [v3 appendObject:v12 withName:@"sequenceNumber" skipIfNil:0];

  v14 = [(BLTRemoteRequestLogItem *)self sessionIdentifier];
  v15 = [v3 appendObject:v14 withName:@"sessionIdentifier" skipIfNil:0];

  v16 = [v3 appendUnsignedInteger:-[BLTRemoteRequestLogItem sessionState](self withName:{"sessionState"), @"sessionState"}];
  v17 = [v3 build];

  return v17;
}

@end