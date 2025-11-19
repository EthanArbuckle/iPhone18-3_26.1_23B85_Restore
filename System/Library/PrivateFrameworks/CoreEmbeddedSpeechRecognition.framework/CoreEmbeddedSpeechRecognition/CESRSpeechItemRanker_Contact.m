@interface CESRSpeechItemRanker_Contact
- (BOOL)addSet:(id)a3;
- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4;
- (CESRSpeechItemRanker_Contact)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5;
- (CESRSpeechItemRanker_Contact)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5 priorRetriever:(id)a6;
- (id)getActivatedCodepathIds;
- (void)_activateEnrolledTrialExperiments;
@end

@implementation CESRSpeechItemRanker_Contact

- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(CESRSpeechItemRanker *)self calculateItemLimit];
  if ([(NSString *)self->_trialContactRankingStrategy isEqualToString:@"PeopleSuggesterTop20"])
  {
    v8 = [(CESRPriorRetriever *)self->_priorRetriever allPriorInfoWithThreshold:v7];
    v9 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]";
    *&buf[12] = 2112;
    *&buf[14] = @"PeopleSuggesterTop20";
LABEL_7:
    _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Active ASR A/B trial experiment for Contact Boosting. Treatment = %@", buf, 0x16u);
    goto LABEL_13;
  }

  if ([(NSString *)self->_trialContactRankingStrategy isEqualToString:@"MegadomeContactTop20"])
  {
    v8 = [(CESRPriorRetriever *)self->_priorRetriever allPriorInfoWithThreshold:v7];
    v9 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]";
    *&buf[12] = 2112;
    *&buf[14] = @"MegadomeContactTop20";
    goto LABEL_7;
  }

  if ([(NSString *)self->_trialContactRankingStrategy isEqualToString:@"NoBoosting"])
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = @"NoBoosting";
      _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s Active ASR A/B trial experiment for Contact Boosting. Treatment = %@. Disabling priors.", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [(CESRPriorRetriever *)self->_priorRetriever allPriorInfoWithThreshold:v7];
  }

LABEL_13:
  v11 = [v8 count];
  v12 = v11;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = 0;
  if (!v11)
  {
    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315138;
      v28 = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]";
      _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, "%s No priors available. Disabling filter", v27, 0xCu);
    }

    goto LABEL_20;
  }

  v13 = v7 - v11;
  if (v7 < v11)
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315394;
      v28 = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]";
      v29 = 1024;
      v30 = v12;
      _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Unexpected prior count (%u) Disabling filter", v27, 0x12u);
    }

LABEL_20:

    v8 = 0;
    goto LABEL_21;
  }

  v36 = v7 - v11;
  v21 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *v27 = 136315906;
    v28 = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]";
    v29 = 1024;
    v30 = v12;
    v31 = 1024;
    v32 = v7;
    v33 = 1024;
    v34 = v13;
    _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_INFO, "%s Received priors for %u contacts with limit: %u allowance: %u", v27, 0x1Eu);
  }

LABEL_21:
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__CESRSpeechItemRanker_Contact_enumerateRankedItemsWithError_usingBlock___block_invoke;
  v23[3] = &unk_27857F078;
  v16 = v8;
  v24 = v16;
  v17 = v6;
  v25 = v17;
  v26 = buf;
  v22.receiver = self;
  v22.super_class = CESRSpeechItemRanker_Contact;
  v18 = [(CESRSpeechItemRanker *)&v22 enumerateRankedItemsWithError:a3 usingBlock:v23];

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addSet:(id)a3
{
  v4 = a3;
  if ([v4 itemType] == 19668)
  {
    v7.receiver = self;
    v7.super_class = CESRSpeechItemRanker_Contact;
    v5 = [(CESRSpeechItemRanker *)&v7 addSet:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getActivatedCodepathIds
{
  v7.receiver = self;
  v7.super_class = CESRSpeechItemRanker_Contact;
  if ([(CESRSpeechItemRanker *)&v7 enumeratedItemCount]>= 1)
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"043fda7b-2fc0-489e-8cce-319c22dcf3ba"];
  }

  v6.receiver = self;
  v6.super_class = CESRSpeechItemRanker_Contact;
  v3 = [(CESRSpeechItemRanker *)&v6 enumeratedItemCount];
  if (v3 >= [(CESRSpeechItemRanker *)self calculateItemLimit])
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"502484ea-7a73-454a-8e1f-9f04983d6358"];
  }

  codepathIds = self->_codepathIds;

  return codepathIds;
}

- (void)_activateEnrolledTrialExperiments
{
  v6 = [MEMORY[0x277D73660] clientWithIdentifier:111];
  v3 = [v6 levelForFactor:@"contact_boosting_strategy" withNamespaceName:@"SIRI_SPEECH_SV_SPEECH_PROFILE"];
  v4 = [v3 stringValue];
  trialContactRankingStrategy = self->_trialContactRankingStrategy;
  self->_trialContactRankingStrategy = v4;

  self->_didFetchExperiments = 1;
}

- (CESRSpeechItemRanker_Contact)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5 priorRetriever:(id)a6
{
  v11 = a6;
  v17.receiver = self;
  v17.super_class = CESRSpeechItemRanker_Contact;
  v12 = [(CESRSpeechItemRanker *)&v17 initWithInstance:a3 speechProfileSite:a4 categoryGroup:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_priorRetriever, a6);
    v14 = [MEMORY[0x277CBEB58] set];
    codepathIds = v13->_codepathIds;
    v13->_codepathIds = v14;

    if (!v13->_didFetchExperiments)
    {
      [(CESRSpeechItemRanker_Contact *)v13 _activateEnrolledTrialExperiments];
    }
  }

  return v13;
}

- (CESRSpeechItemRanker_Contact)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  trialContactRankingStrategy = self->_trialContactRankingStrategy;
  self->_trialContactRankingStrategy = 0;

  [(CESRSpeechItemRanker_Contact *)self _activateEnrolledTrialExperiments];
  v12 = objc_alloc_init(CESRPeopleSuggesterPriorRetriever);
  if ([(NSString *)self->_trialContactRankingStrategy isEqualToString:@"MegadomeContactTop20"])
  {
    v13 = objc_alloc_init(CESRMegadomeContactPriorRetriever);

    v12 = v13;
  }

  v14 = [(CESRSpeechItemRanker_Contact *)self initWithInstance:v8 speechProfileSite:v9 categoryGroup:v10 priorRetriever:v12];

  return v14;
}

@end