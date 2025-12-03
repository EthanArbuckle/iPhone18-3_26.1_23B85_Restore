@interface BridgedCampaignClickRecorder
- (id)campaignClickErrorWithDescription:(id)description;
- (id)recordCampaignClickWithReportUrl:(id)url campaignUrl:(id)campaignUrl;
@end

@implementation BridgedCampaignClickRecorder

- (id)recordCampaignClickWithReportUrl:(id)url campaignUrl:(id)campaignUrl
{
  urlCopy = url;
  campaignUrlCopy = campaignUrl;
  v8 = objc_alloc(MEMORY[0x1E69B68F8]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke;
  v13[3] = &unk_1E84E1E38;
  v14 = urlCopy;
  selfCopy = self;
  v16 = campaignUrlCopy;
  v9 = campaignUrlCopy;
  v10 = urlCopy;
  v11 = [v8 initWithResolver:v13];

  return v11;
}

void __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E698CB88]);
    v9 = [MEMORY[0x1E69B5180] sharedAccount];
    v10 = [v9 activeiTunesAccount];
    [v8 setAccount:v10];

    [v8 setUrlKnownToBeTrusted:1];
    v11 = [v8 requestWithMethod:4 URL:v7 parameters:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_3;
    v15[3] = &unk_1E84E1E10;
    v18 = v6;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    v19 = v5;
    v14 = v6;
    [v11 addFinishBlock:v15];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_2;
    v20[3] = &unk_1E84E1D98;
    v20[4] = *(a1 + 40);
    v21 = v6;
    v8 = v6;
    __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_2(v20);
  }
}

void __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) campaignClickErrorWithDescription:@"Malformed campaign click reporting url"];
  (*(*(a1 + 40) + 16))();
}

void __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_4;
    v20[3] = &unk_1E84E1DC0;
    v22 = *(a1 + 48);
    v21 = v6;
    __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_4(v20);

    v7 = v22;
  }

  else
  {
    v8 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v7 = [v8 mutableCopy];

    [v7 removeCharactersInString:@"?=&+"];
    v9 = [*(a1 + 32) stringByAddingPercentEncodingWithAllowedCharacters:v7];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"url=%@", v9];
      v11 = [v10 dataUsingEncoding:4];
      [v5 setHTTPBody:v11];

      v12 = [MEMORY[0x1E698CBA8] defaultSession];
      v13 = [v12 dataTaskPromiseWithRequest:v5];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_6;
      v15[3] = &unk_1E84E1DE8;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      [v13 addFinishBlock:v15];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_5;
      v18[3] = &unk_1E84E1D98;
      v14 = *(a1 + 48);
      v18[4] = *(a1 + 40);
      v19 = v14;
      __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_5(v18);
    }
  }
}

void __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) campaignClickErrorWithDescription:@"Encoding failure to encode campaign url"];
  (*(*(a1 + 40) + 16))();
}

void __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_7;
    v5[3] = &unk_1E84E1DC0;
    v7 = *(a1 + 32);
    v6 = v4;
    __77__BridgedCampaignClickRecorder_recordCampaignClickWithReportUrl_campaignUrl___block_invoke_7(v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)campaignClickErrorWithDescription:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = BridgedCampaignClickErrorCode;
  v10 = *MEMORY[0x1E696A578];
  v11[0] = description;
  v5 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v3 errorWithDomain:@"com.apple.news.campaignclick" code:v4 userInfo:v7];

  return v8;
}

@end