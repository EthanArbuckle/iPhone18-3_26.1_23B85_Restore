@interface BUBag
+ (BUBag)defaultBag;
+ (NSDictionary)_defaultValueDictionary;
+ (NSDictionary)defaultBagKeysDictionary;
+ (void)audiobookStoreIsAvailable:(id)a3;
- (BUBag)initWithBackingBag:(id)a3;
- (void)isMangaStoreEnabled:(id)a3;
@end

@implementation BUBag

+ (BUBag)defaultBag
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DA7D50;
  block[3] = &unk_278D1CD30;
  block[4] = a1;
  if (qword_280BC5E70 != -1)
  {
    dispatch_once(&qword_280BC5E70, block);
  }

  v2 = qword_280BC5E68;

  return v2;
}

- (BUBag)initWithBackingBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BUBag;
  v6 = [(BUBag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
  }

  return v7;
}

+ (NSDictionary)_defaultValueDictionary
{
  v19[7] = *MEMORY[0x277D85DE8];
  v19[0] = &stru_2853F3C08;
  v18[0] = @"manga-grouping-id";
  v18[1] = @"audiobooks-grouping-id";
  v3 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, v2);
  v19[1] = v3;
  v18[2] = @"oprah-audiobook-club-grouping-id";
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  v19[2] = v6;
  v18[3] = @"oprah-book-club-id";
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
  v19[3] = v9;
  v18[4] = @"oprah-book-club-grouping-id";
  v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
  v19[4] = v12;
  v19[5] = &unk_2853F9EC0;
  v18[5] = @"books-reading-now-widget-rollout-rate";
  v18[6] = @"books-service-and-support-url";
  v14 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v13, @"https://support.apple.com/books");
  v19[6] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v19, v18, 7);

  return v16;
}

+ (NSDictionary)defaultBagKeysDictionary
{
  v5[106] = *MEMORY[0x277D85DE8];
  v4[0] = @"account-flow-url-patterns";
  v4[1] = @"acquireSlot";
  v5[0] = &unk_2853F9ED8;
  v5[1] = &unk_2853F9EF0;
  v4[2] = @"AddFundsUrl";
  v4[3] = @"allow-citations";
  v5[2] = &unk_2853F9EF0;
  v5[3] = &unk_2853F9F08;
  v4[4] = @"allowing-citations";
  v4[5] = @"amd-domains";
  v5[4] = &unk_2853F9F20;
  v5[5] = &unk_2853F9F20;
  v4[6] = @"amd-finish-provisioning";
  v4[7] = @"amd-sync-machine";
  v5[6] = &unk_2853F9EF0;
  v5[7] = &unk_2853F9EF0;
  v4[8] = @"app-analytics-url";
  v4[9] = @"audiobooks-grouping-id";
  v5[8] = &unk_2853F9EF0;
  v5[9] = &unk_2853F9ED8;
  v4[10] = @"automatic-downloads2/downloads-url";
  v4[11] = @"enabled-media-types-url";
  v5[10] = &unk_2853F9EF0;
  v5[11] = &unk_2853F9EF0;
  v4[12] = @"register-media-types-url";
  v4[13] = @"available-book-updates";
  v5[12] = &unk_2853F9EF0;
  v5[13] = &unk_2853F9EF0;
  v4[14] = @"available-book-updates-reload-frequency";
  v4[15] = @"books-isbn-url";
  v5[14] = &unk_2853F9F38;
  v5[15] = &unk_2853F9ED8;
  v4[16] = @"booksMediaAPIHost";
  v4[17] = @"booksMediaAPIPreviewHost";
  v5[16] = &unk_2853F9ED8;
  v5[17] = &unk_2853F9ED8;
  v4[18] = @"books-reading-now-widget-rollout-rate";
  v4[19] = @"books-service-and-support-url";
  v5[18] = &unk_2853F9F50;
  v5[19] = &unk_2853F9EF0;
  v4[20] = @"booksTabs";
  v4[21] = @"buyProduct";
  v5[20] = &unk_2853F9F68;
  v5[21] = &unk_2853F9EF0;
  v4[22] = @"checkBookQueue";
  v4[23] = @"check-download-queue";
  v5[22] = &unk_2853F9EF0;
  v5[23] = &unk_2853F9EF0;
  v4[24] = @"commerce-ui-urls";
  v4[25] = @"p2-content-restore/max-item-count";
  v5[24] = &unk_2853F9F68;
  v5[25] = &unk_2853F9F38;
  v4[26] = @"p2-content-restore/url";
  v4[27] = @"countryCode";
  v5[26] = &unk_2853F9EF0;
  v5[27] = &unk_2853F9ED8;
  v4[28] = @"currencyCode";
  v4[29] = @"deleteUserReviewUrl";
  v5[28] = &unk_2853F9ED8;
  v5[29] = &unk_2853F9ED8;
  v4[30] = @"display-seller-label-for-country";
  v4[31] = @"dt-purchases-page";
  v5[30] = &unk_2853F9F08;
  v5[31] = &unk_2853F9ED8;
  v4[32] = @"enable-books-unified-product-pages";
  v4[33] = @"enable-seller-info";
  v5[32] = &unk_2853F9F08;
  v5[33] = &unk_2853F9F08;
  v4[34] = @"end-of-book-upsell-enabled";
  v4[35] = @"end-of-picture-book-upsell-enabled";
  v5[34] = &unk_2853F9ED8;
  v5[35] = &unk_2853F9ED8;
  v4[36] = @"family-info";
  v4[37] = @"forgottenPassword";
  v5[36] = &unk_2853F9EF0;
  v5[37] = &unk_2853F9EF0;
  v4[38] = @"isAudiobooksStoreEnabled";
  v4[39] = @"isBooksStoreEnabled";
  v5[38] = &unk_2853F9F08;
  v5[39] = &unk_2853F9F08;
  v4[40] = @"is-paid-storefront";
  v4[41] = @"isOnDevicePersonalizationEnabled";
  v5[40] = &unk_2853F9F08;
  v5[41] = &unk_2853F9F08;
  v4[42] = @"isYIREnabled";
  v4[43] = @"isYIRNotificationsAllowed";
  v5[42] = &unk_2853F9F08;
  v5[43] = &unk_2853F9F08;
  v4[44] = @"ix-store-sheet";
  v4[45] = @"ix-store-sheet-books";
  v5[44] = &unk_2853F9F68;
  v5[45] = &unk_2853F9F68;
  v4[46] = @"js-app-url";
  v4[47] = @"kvs-getall";
  v5[46] = &unk_2853F9ED8;
  v5[47] = &unk_2853F9EF0;
  v4[48] = @"kvs-putall";
  v4[49] = @"language";
  v5[48] = &unk_2853F9EF0;
  v5[49] = &unk_2853F9ED8;
  v4[50] = @"language-tag";
  v4[51] = @"library-link";
  v5[50] = &unk_2853F9ED8;
  v5[51] = &unk_2853F9ED8;
  v4[52] = @"manga-grouping-id";
  v4[53] = @"md-finish-provisioning";
  v5[52] = &unk_2853F9ED8;
  v5[53] = &unk_2853F9EF0;
  v4[54] = @"md-sync-machine";
  v4[55] = @"sf-api-token-service-url";
  v5[54] = &unk_2853F9EF0;
  v5[55] = &unk_2853F9EF0;
  v4[56] = @"metrics";
  v4[57] = @"mobile-network-constraints";
  v5[56] = &unk_2853F9F68;
  v5[57] = &unk_2853F9F20;
  v4[58] = @"onboarding-personalization-id";
  v4[59] = @"oprah-audiobook-club-grouping-id";
  v5[58] = &unk_2853F9ED8;
  v5[59] = &unk_2853F9ED8;
  v4[60] = @"oprah-book-club-grouping-id";
  v4[61] = @"oprah-book-club-id";
  v5[60] = &unk_2853F9ED8;
  v5[61] = &unk_2853F9ED8;
  v4[62] = @"p2-launch-ebookstore-host-patterns";
  v4[63] = @"p2-launch-ebookstore-path-patterns";
  v5[62] = &unk_2853F9F20;
  v5[63] = &unk_2853F9F20;
  v4[64] = @"p2-launch-audio-book-store-path-patterns";
  v5[64] = &unk_2853F9F20;
  v4[65] = @"p2-service-terms-url";
  v5[65] = &unk_2853F9ED8;
  v4[66] = @"pendingBooks";
  v5[66] = &unk_2853F9EF0;
  v4[67] = @"pendingSongs";
  v5[67] = &unk_2853F9EF0;
  v4[68] = @"books-price-tracking-enabled";
  v5[68] = &unk_2853F9F08;
  v4[69] = @"books-price-tracking-media-api-host";
  v5[69] = &unk_2853F9ED8;
  v4[70] = @"privacyAcknowledgementUrl";
  v5[70] = &unk_2853F9EF0;
  v4[71] = @"processRedirectUrl";
  v5[71] = &unk_2853F9F68;
  v4[72] = @"purchase-daap";
  v5[72] = &unk_2853F9F68;
  v4[73] = @"push-notifications/environment";
  v5[73] = &unk_2853F9ED8;
  v4[74] = @"reading-goal-share-url";
  v5[74] = &unk_2853F9ED8;
  v4[75] = @"remoteConfigSupportedStorefronts";
  v5[75] = &unk_2853F9F20;
  v4[76] = @"sg-audiobooks-report-concern";
  v5[76] = &unk_2853F9F68;
  v4[77] = @"reportConcernReasons";
  v5[77] = &unk_2853F9F20;
  v4[78] = @"reportConcernUrl";
  v5[78] = &unk_2853F9EF0;
  v4[79] = @"resetAndRedirectUrl";
  v5[79] = &unk_2853F9ED8;
  v4[80] = @"saveUserReviewUrl";
  v5[80] = &unk_2853F9ED8;
  v4[81] = @"searchHints";
  v5[81] = &unk_2853F9ED8;
  v4[82] = @"search-transparency-url";
  v5[82] = &unk_2853F9EF0;
  v4[83] = @"enable-series-info-updates-in-book-libraries";
  v5[83] = &unk_2853F9F08;
  v4[84] = @"book-library-series-info-update-interval-in-days";
  v5[84] = &unk_2853F9F38;
  v4[85] = @"book-library-series-info-request-batch-size";
  v5[85] = &unk_2853F9F38;
  v4[86] = @"enable-live-fetches-in-book-library-series-view";
  v5[86] = &unk_2853F9F08;
  v4[87] = @"shared-purchases-enabled";
  v5[87] = &unk_2853F9F08;
  v4[88] = @"sign-sap-request";
  v5[88] = &unk_2853F9F68;
  v4[89] = @"sign-sap-setup";
  v5[89] = &unk_2853F9EF0;
  v4[90] = @"sign-sap-setup-cert";
  v5[90] = &unk_2853F9EF0;
  v4[91] = @"songDownloadDone";
  v5[91] = &unk_2853F9EF0;
  v4[92] = @"storeFront";
  v5[92] = &unk_2853F9ED8;
  v4[93] = @"storeplatform-lookup-url-unpersonalized";
  v5[93] = &unk_2853F9EF0;
  v4[94] = @"supports-books-slp-v2";
  v5[94] = &unk_2853F9F08;
  v4[95] = @"taf-email-body-url-base";
  v5[95] = &unk_2853F9EF0;
  v4[96] = @"trending-searches";
  v5[96] = &unk_2853F9ED8;
  v4[97] = @"trustedDomains";
  v5[97] = &unk_2853F9F20;
  v4[98] = @"userRateContentUrl";
  v5[98] = &unk_2853F9ED8;
  v4[99] = @"userReviewsSortOptions";
  v5[99] = &unk_2853F9F20;
  v4[100] = @"viewAudiobook";
  v5[100] = &unk_2853F9EF0;
  v4[101] = @"viewBook";
  v5[101] = &unk_2853F9EF0;
  v4[102] = @"view-book-update-params";
  v5[102] = &unk_2853F9EF0;
  v4[103] = @"voteUrl";
  v5[103] = &unk_2853F9ED8;
  v4[104] = @"writeUserReviewUrl";
  v5[104] = &unk_2853F9ED8;
  v4[105] = @"mobile-url-handlers";
  v5[105] = &unk_2853F9F20;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 106);

  return v2;
}

+ (void)audiobookStoreIsAvailable:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v4, v5);
  v8 = objc_msgSend_valueForKey_(v6, v7, @"BUSimulateAudiobookStoreAvailability");

  if (v8)
  {
    v11 = objc_msgSend_BOOLForKey_(v6, v9, @"BUSimulateAudiobookStoreAvailability");
    v12 = BookUtilityLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = v11;
      _os_log_impl(&dword_241DA6000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: Forcing isAudiobooksStoreEnabled to %d.", buf, 8u);
    }

    v13 = MEMORY[0x245D00360](v3);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13, v11);
    }
  }

  else
  {
    v14 = objc_msgSend_defaultBag(BUBag, v9, v10);
    v17 = objc_msgSend_isAudiobooksStoreEnabled(v14, v15, v16);
    if (v17)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_241DAAF78;
      v22[3] = &unk_278D1CD58;
      v23 = v3;
      objc_msgSend_valueWithCompletion_(v17, v18, v22);
      v19 = v23;
    }

    else
    {
      v20 = BookUtilityLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_241DCF5C8(v20);
      }

      v21 = MEMORY[0x245D00360](v3);
      v19 = v21;
      if (v21)
      {
        (*(v21 + 16))(v21, 1);
      }
    }
  }
}

- (void)isMangaStoreEnabled:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_stringForKey_(self, v5, @"manga-grouping-id");
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DAB1AC;
  v9[3] = &unk_278D1CD80;
  v10 = v4;
  v7 = v4;
  objc_msgSend_valueWithCompletion_(v6, v8, v9);
}

@end