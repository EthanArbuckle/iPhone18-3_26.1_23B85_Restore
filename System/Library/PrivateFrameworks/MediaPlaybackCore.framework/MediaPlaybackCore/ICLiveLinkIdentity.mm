@interface ICLiveLinkIdentity
@end

@implementation ICLiveLinkIdentity

void __79__ICLiveLinkIdentity_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"serverID"];
  [v15 setServerID:{objc_msgSend(v3, "integerValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"identifier"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"identifier"];
    v7 = [v5 initWithUUIDString:v6];
    [v15 setIdentifier:v7];
  }

  else
  {
    [v15 setIdentifier:0];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"externalID"];
  [v15 setExternalIdentifier:v8];

  v9 = MEMORY[0x1E696ADF0];
  v10 = [*(a1 + 32) objectForKeyedSubscript:@"nameComponents"];
  v11 = [v9 payloadValueFromJSONValue:v10];
  [v15 setNameComponents:v11];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"imageURL"];
  v14 = [v12 payloadValueFromJSONValue:v13];
  [v15 setImageURL:v14];
}

@end