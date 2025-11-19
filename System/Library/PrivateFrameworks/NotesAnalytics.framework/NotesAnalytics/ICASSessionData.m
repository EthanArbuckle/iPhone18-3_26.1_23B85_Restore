@interface ICASSessionData
- (ICASSessionData)initWithUtcOffset:(id)a3 countryCode:(id)a4 languageCode:(id)a5 productType:(id)a6 cellularRadioAccessTechnology:(id)a7 bioAuthEnabled:(id)a8 localNotesEnabled:(id)a9 accountTypeSummary:(id)a10 sessionType:(id)a11 isSaltRegenerated:(id)a12 isGlobalSession:(id)a13;
- (id)toDict;
@end

@implementation ICASSessionData

- (ICASSessionData)initWithUtcOffset:(id)a3 countryCode:(id)a4 languageCode:(id)a5 productType:(id)a6 cellularRadioAccessTechnology:(id)a7 bioAuthEnabled:(id)a8 localNotesEnabled:(id)a9 accountTypeSummary:(id)a10 sessionType:(id)a11 isSaltRegenerated:(id)a12 isGlobalSession:(id)a13
{
  v35 = a3;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v30 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v36.receiver = self;
  v36.super_class = ICASSessionData;
  v23 = [(ICASSessionData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_utcOffset, a3);
    objc_storeStrong(&v24->_countryCode, a4);
    objc_storeStrong(&v24->_languageCode, v27);
    objc_storeStrong(&v24->_productType, a6);
    objc_storeStrong(&v24->_cellularRadioAccessTechnology, v28);
    objc_storeStrong(&v24->_bioAuthEnabled, a8);
    objc_storeStrong(&v24->_localNotesEnabled, a9);
    objc_storeStrong(&v24->_accountTypeSummary, a10);
    objc_storeStrong(&v24->_sessionType, a11);
    objc_storeStrong(&v24->_isSaltRegenerated, a12);
    objc_storeStrong(&v24->_isGlobalSession, a13);
  }

  return v24;
}

- (id)toDict
{
  v40[11] = *MEMORY[0x277D85DE8];
  v39[0] = @"utcOffset";
  v38 = [(ICASSessionData *)self utcOffset];
  if (v38)
  {
    v3 = [(ICASSessionData *)self utcOffset];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v37 = v3;
  v40[0] = v3;
  v39[1] = @"countryCode";
  v36 = [(ICASSessionData *)self countryCode];
  if (v36)
  {
    v4 = [(ICASSessionData *)self countryCode];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v35 = v4;
  v40[1] = v4;
  v39[2] = @"languageCode";
  v34 = [(ICASSessionData *)self languageCode];
  if (v34)
  {
    v5 = [(ICASSessionData *)self languageCode];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v33 = v5;
  v40[2] = v5;
  v39[3] = @"productType";
  v32 = [(ICASSessionData *)self productType];
  if (v32)
  {
    v6 = [(ICASSessionData *)self productType];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v31 = v6;
  v40[3] = v6;
  v39[4] = @"cellularRadioAccessTechnology";
  v30 = [(ICASSessionData *)self cellularRadioAccessTechnology];
  if (v30)
  {
    v7 = [(ICASSessionData *)self cellularRadioAccessTechnology];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v29 = v7;
  v40[4] = v7;
  v39[5] = @"bioAuthEnabled";
  v28 = [(ICASSessionData *)self bioAuthEnabled];
  if (v28)
  {
    v8 = [(ICASSessionData *)self bioAuthEnabled];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v27 = v8;
  v40[5] = v8;
  v39[6] = @"localNotesEnabled";
  v26 = [(ICASSessionData *)self localNotesEnabled];
  if (v26)
  {
    v9 = [(ICASSessionData *)self localNotesEnabled];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v40[6] = v9;
  v39[7] = @"accountTypeSummary";
  v11 = [(ICASSessionData *)self accountTypeSummary];
  if (v11)
  {
    v12 = [(ICASSessionData *)self accountTypeSummary];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v40[7] = v12;
  v39[8] = @"sessionType";
  v14 = [(ICASSessionData *)self sessionType];
  if (v14)
  {
    v15 = [(ICASSessionData *)self sessionType];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v40[8] = v15;
  v39[9] = @"isSaltRegenerated";
  v17 = [(ICASSessionData *)self isSaltRegenerated];
  if (v17)
  {
    v18 = [(ICASSessionData *)self isSaltRegenerated];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;
  v40[9] = v18;
  v39[10] = @"isGlobalSession";
  v20 = [(ICASSessionData *)self isGlobalSession];
  if (v20)
  {
    v21 = [(ICASSessionData *)self isGlobalSession];
  }

  else
  {
    v21 = objc_opt_new();
  }

  v22 = v21;
  v40[10] = v21;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:11];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end