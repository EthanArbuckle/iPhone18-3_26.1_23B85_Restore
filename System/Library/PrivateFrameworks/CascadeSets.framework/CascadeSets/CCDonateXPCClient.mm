@interface CCDonateXPCClient
- (void)addItemsWithContents:(id)contents metaContents:(id)metaContents completion:(id)completion;
- (void)beginSetDonationWithItemType:(unsigned __int16)type encodedDescriptors:(id)descriptors sourceVersion:(unint64_t)version sourceValidity:(id)validity options:(unsigned __int16)options completion:(id)completion;
- (void)endSetDonationWithOptions:(unsigned __int16)options revisionToken:(id)token completion:(id)completion;
- (void)remoteUpdateFromDeviceUUID:(id)d options:(unsigned __int16)options mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites completion:(id)completion;
- (void)removeSourceItemIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CCDonateXPCClient

- (void)addItemsWithContents:(id)contents metaContents:(id)metaContents completion:(id)completion
{
  contentsCopy = contents;
  metaContentsCopy = metaContents;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__CCDonateXPCClient_addItemsWithContents_metaContents_completion___block_invoke;
  v12[3] = &unk_1E7C8B408;
  v13 = contentsCopy;
  v14 = metaContentsCopy;
  v10 = metaContentsCopy;
  v11 = contentsCopy;
  [(CCXPCClient *)self serviceRequest:1 completion:completion usingBlock:v12];
}

- (void)removeSourceItemIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CCDonateXPCClient_removeSourceItemIdentifier_completion___block_invoke;
  v8[3] = &unk_1E7C8B430;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(CCXPCClient *)self serviceRequest:1 completion:completion usingBlock:v8];
}

- (void)remoteUpdateFromDeviceUUID:(id)d options:(unsigned __int16)options mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites completion:(id)completion
{
  dCopy = d;
  deltaCopy = delta;
  siteCopy = site;
  sitesCopy = sites;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __116__CCDonateXPCClient_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke;
  v22[3] = &unk_1E7C8B458;
  optionsCopy = options;
  v23 = dCopy;
  v24 = deltaCopy;
  v25 = siteCopy;
  v26 = sitesCopy;
  v18 = sitesCopy;
  v19 = siteCopy;
  v20 = deltaCopy;
  v21 = dCopy;
  [(CCXPCClient *)self serviceRequest:1 completion:completion usingBlock:v22];
}

- (void)endSetDonationWithOptions:(unsigned __int16)options revisionToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CCDonateXPCClient_endSetDonationWithOptions_revisionToken_completion___block_invoke;
  v10[3] = &unk_1E7C8B480;
  optionsCopy = options;
  v11 = tokenCopy;
  v9 = tokenCopy;
  [(CCXPCClient *)self serviceRequest:1 completion:completion usingBlock:v10];
}

- (void)beginSetDonationWithItemType:(unsigned __int16)type encodedDescriptors:(id)descriptors sourceVersion:(unint64_t)version sourceValidity:(id)validity options:(unsigned __int16)options completion:(id)completion
{
  descriptorsCopy = descriptors;
  validityCopy = validity;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__CCDonateXPCClient_beginSetDonationWithItemType_encodedDescriptors_sourceVersion_sourceValidity_options_completion___block_invoke;
  v18[3] = &unk_1E7C8B4A8;
  typeCopy = type;
  v20 = validityCopy;
  versionCopy = version;
  v19 = descriptorsCopy;
  optionsCopy = options;
  v16 = validityCopy;
  v17 = descriptorsCopy;
  [(CCXPCClient *)self servicePriorsRespondingRequest:0 completion:completion usingBlock:v18];
}

@end