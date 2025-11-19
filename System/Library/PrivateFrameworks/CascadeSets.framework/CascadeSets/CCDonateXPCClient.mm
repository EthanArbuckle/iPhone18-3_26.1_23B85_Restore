@interface CCDonateXPCClient
- (void)addItemsWithContents:(id)a3 metaContents:(id)a4 completion:(id)a5;
- (void)beginSetDonationWithItemType:(unsigned __int16)a3 encodedDescriptors:(id)a4 sourceVersion:(unint64_t)a5 sourceValidity:(id)a6 options:(unsigned __int16)a7 completion:(id)a8;
- (void)endSetDonationWithOptions:(unsigned __int16)a3 revisionToken:(id)a4 completion:(id)a5;
- (void)remoteUpdateFromDeviceUUID:(id)a3 options:(unsigned __int16)a4 mergeableDelta:(id)a5 peerDeviceSite:(id)a6 relayedDeviceSites:(id)a7 completion:(id)a8;
- (void)removeSourceItemIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CCDonateXPCClient

- (void)addItemsWithContents:(id)a3 metaContents:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__CCDonateXPCClient_addItemsWithContents_metaContents_completion___block_invoke;
  v12[3] = &unk_1E7C8B408;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(CCXPCClient *)self serviceRequest:1 completion:a5 usingBlock:v12];
}

- (void)removeSourceItemIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CCDonateXPCClient_removeSourceItemIdentifier_completion___block_invoke;
  v8[3] = &unk_1E7C8B430;
  v9 = v6;
  v7 = v6;
  [(CCXPCClient *)self serviceRequest:1 completion:a4 usingBlock:v8];
}

- (void)remoteUpdateFromDeviceUUID:(id)a3 options:(unsigned __int16)a4 mergeableDelta:(id)a5 peerDeviceSite:(id)a6 relayedDeviceSites:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __116__CCDonateXPCClient_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke;
  v22[3] = &unk_1E7C8B458;
  v27 = a4;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  [(CCXPCClient *)self serviceRequest:1 completion:a8 usingBlock:v22];
}

- (void)endSetDonationWithOptions:(unsigned __int16)a3 revisionToken:(id)a4 completion:(id)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CCDonateXPCClient_endSetDonationWithOptions_revisionToken_completion___block_invoke;
  v10[3] = &unk_1E7C8B480;
  v12 = a3;
  v11 = v8;
  v9 = v8;
  [(CCXPCClient *)self serviceRequest:1 completion:a5 usingBlock:v10];
}

- (void)beginSetDonationWithItemType:(unsigned __int16)a3 encodedDescriptors:(id)a4 sourceVersion:(unint64_t)a5 sourceValidity:(id)a6 options:(unsigned __int16)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__CCDonateXPCClient_beginSetDonationWithItemType_encodedDescriptors_sourceVersion_sourceValidity_options_completion___block_invoke;
  v18[3] = &unk_1E7C8B4A8;
  v22 = a3;
  v20 = v15;
  v21 = a5;
  v19 = v14;
  v23 = a7;
  v16 = v15;
  v17 = v14;
  [(CCXPCClient *)self servicePriorsRespondingRequest:0 completion:a8 usingBlock:v18];
}

@end