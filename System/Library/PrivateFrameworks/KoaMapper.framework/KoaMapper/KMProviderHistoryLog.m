@interface KMProviderHistoryLog
- (BOOL)recordChangesAcceptedWithVersion:(unint64_t)a3 historyToken:(id)a4;
- (BOOL)recordDonationStartTime;
- (KMProviderHistoryLog)initWithDirectory:(id)a3 originAppId:(id)a4;
- (id)_recordDonationEndTime;
- (id)_recordHistoryToken:(id)a3;
- (id)_recordVersion:(unint64_t)a3;
- (id)getDonationEndTime;
- (id)getDonationStartTime;
- (id)getHistoryToken;
- (unint64_t)getVersion;
@end

@implementation KMProviderHistoryLog

- (BOOL)recordChangesAcceptedWithVersion:(unint64_t)a3 historyToken:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = _sharedQueue();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__KMProviderHistoryLog_recordChangesAcceptedWithVersion_historyToken___block_invoke;
  v10[3] = &unk_279805B30;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a3;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return self;
}

void __70__KMProviderHistoryLog_recordChangesAcceptedWithVersion_historyToken___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _recordVersion:*(a1 + 56)];
  v3 = [*(a1 + 32) _recordHistoryToken:*(a1 + 40)];
  v4 = [*(a1 + 32) _recordDonationEndTime];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v8[0] = @"version";
  v8[1] = @"historyToken";
  v8[2] = @"donationEndTime";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 8) writeUpdatedObjects:v5 forKeys:v6 error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_recordDonationEndTime
{
  v3 = [(KVDictionaryLog *)self->_log mutableDictionaryForKey:@"donationEndTime" error:0];
  if (self->_donationStartTimeRecorded)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [v3 setObject:v4 forKey:self->_originAppId];
  }

  return v3;
}

- (id)_recordHistoryToken:(id)a3
{
  v4 = a3;
  v5 = [(KVDictionaryLog *)self->_log mutableDictionaryForKey:@"historyToken" error:0];
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v4 forKey:self->_originAppId];
  }

  else
  {
    [v5 removeObjectForKey:self->_originAppId];
  }

  return v6;
}

- (id)_recordVersion:(unint64_t)a3
{
  v5 = [(KVDictionaryLog *)self->_log mutableDictionaryForKey:@"version" error:0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v6 forKey:self->_originAppId];

  return v5;
}

- (id)getDonationEndTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = _sharedQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__KMProviderHistoryLog_getDonationEndTime__block_invoke;
  v6[3] = &unk_279805B08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__KMProviderHistoryLog_getDonationEndTime__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"donationEndTime"];
  v2 = [v5 objectForKey:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)recordDonationStartTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = _sharedQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__KMProviderHistoryLog_recordDonationStartTime__block_invoke;
  v5[3] = &unk_279805B08;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __47__KMProviderHistoryLog_recordDonationStartTime__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) mutableDictionaryForKey:@"donationStartTime" error:0];
  v2 = [MEMORY[0x277CBEAA8] now];
  [v3 setObject:v2 forKey:*(*(a1 + 32) + 16)];

  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) writeUpdatedObject:v3 forKey:@"donationStartTime" error:0];
  *(*(a1 + 32) + 24) = 1;
}

- (id)getDonationStartTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = _sharedQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__KMProviderHistoryLog_getDonationStartTime__block_invoke;
  v6[3] = &unk_279805B08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__KMProviderHistoryLog_getDonationStartTime__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"donationStartTime"];
  v2 = [v5 objectForKey:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)getVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = _sharedQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__KMProviderHistoryLog_getVersion__block_invoke;
  v6[3] = &unk_279805B08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __34__KMProviderHistoryLog_getVersion__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) objectForKey:@"version"];
  v2 = [v3 objectForKey:*(*(a1 + 32) + 16)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedLongLongValue];
}

- (id)getHistoryToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = _sharedQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__KMProviderHistoryLog_getHistoryToken__block_invoke;
  v6[3] = &unk_279805B08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__KMProviderHistoryLog_getHistoryToken__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"historyToken"];
  v2 = [v5 objectForKey:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (KMProviderHistoryLog)initWithDirectory:(id)a3 originAppId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = KMProviderHistoryLog;
  v8 = [(KMProviderHistoryLog *)&v21 init];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v9 = _sharedQueue();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__KMProviderHistoryLog_initWithDirectory_originAppId___block_invoke;
    v12[3] = &unk_279805B08;
    v14 = &v15;
    v13 = v6;
    dispatch_sync(v9, v12);

    objc_storeStrong(&v8->_log, v16[5]);
    if (!v8->_log || (objc_storeStrong(&v8->_originAppId, a4), !v8->_originAppId))
    {

      _Block_object_dispose(&v15, 8);
      v10 = 0;
      goto LABEL_7;
    }

    v8->_donationStartTimeRecorded = 0;

    _Block_object_dispose(&v15, 8);
  }

  v10 = v8;
LABEL_7:

  return v10;
}

uint64_t __54__KMProviderHistoryLog_initWithDirectory_originAppId___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D22D10]) initWithFilename:@"provider_log" directory:*(a1 + 32) readOnly:0 error:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

@end