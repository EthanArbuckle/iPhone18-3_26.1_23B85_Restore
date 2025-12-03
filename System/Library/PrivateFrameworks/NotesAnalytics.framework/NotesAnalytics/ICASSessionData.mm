@interface ICASSessionData
- (ICASSessionData)initWithUtcOffset:(id)offset countryCode:(id)code languageCode:(id)languageCode productType:(id)type cellularRadioAccessTechnology:(id)technology bioAuthEnabled:(id)enabled localNotesEnabled:(id)notesEnabled accountTypeSummary:(id)self0 sessionType:(id)self1 isSaltRegenerated:(id)self2 isGlobalSession:(id)self3;
- (id)toDict;
@end

@implementation ICASSessionData

- (ICASSessionData)initWithUtcOffset:(id)offset countryCode:(id)code languageCode:(id)languageCode productType:(id)type cellularRadioAccessTechnology:(id)technology bioAuthEnabled:(id)enabled localNotesEnabled:(id)notesEnabled accountTypeSummary:(id)self0 sessionType:(id)self1 isSaltRegenerated:(id)self2 isGlobalSession:(id)self3
{
  offsetCopy = offset;
  codeCopy = code;
  languageCodeCopy = languageCode;
  languageCodeCopy2 = languageCode;
  typeCopy = type;
  technologyCopy = technology;
  technologyCopy2 = technology;
  enabledCopy = enabled;
  notesEnabledCopy = notesEnabled;
  summaryCopy = summary;
  sessionTypeCopy = sessionType;
  regeneratedCopy = regenerated;
  sessionCopy = session;
  v36.receiver = self;
  v36.super_class = ICASSessionData;
  v23 = [(ICASSessionData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_utcOffset, offset);
    objc_storeStrong(&v24->_countryCode, code);
    objc_storeStrong(&v24->_languageCode, languageCodeCopy);
    objc_storeStrong(&v24->_productType, type);
    objc_storeStrong(&v24->_cellularRadioAccessTechnology, technologyCopy);
    objc_storeStrong(&v24->_bioAuthEnabled, enabled);
    objc_storeStrong(&v24->_localNotesEnabled, notesEnabled);
    objc_storeStrong(&v24->_accountTypeSummary, summary);
    objc_storeStrong(&v24->_sessionType, sessionType);
    objc_storeStrong(&v24->_isSaltRegenerated, regenerated);
    objc_storeStrong(&v24->_isGlobalSession, session);
  }

  return v24;
}

- (id)toDict
{
  v40[11] = *MEMORY[0x277D85DE8];
  v39[0] = @"utcOffset";
  utcOffset = [(ICASSessionData *)self utcOffset];
  if (utcOffset)
  {
    utcOffset2 = [(ICASSessionData *)self utcOffset];
  }

  else
  {
    utcOffset2 = objc_opt_new();
  }

  v37 = utcOffset2;
  v40[0] = utcOffset2;
  v39[1] = @"countryCode";
  countryCode = [(ICASSessionData *)self countryCode];
  if (countryCode)
  {
    countryCode2 = [(ICASSessionData *)self countryCode];
  }

  else
  {
    countryCode2 = objc_opt_new();
  }

  v35 = countryCode2;
  v40[1] = countryCode2;
  v39[2] = @"languageCode";
  languageCode = [(ICASSessionData *)self languageCode];
  if (languageCode)
  {
    languageCode2 = [(ICASSessionData *)self languageCode];
  }

  else
  {
    languageCode2 = objc_opt_new();
  }

  v33 = languageCode2;
  v40[2] = languageCode2;
  v39[3] = @"productType";
  productType = [(ICASSessionData *)self productType];
  if (productType)
  {
    productType2 = [(ICASSessionData *)self productType];
  }

  else
  {
    productType2 = objc_opt_new();
  }

  v31 = productType2;
  v40[3] = productType2;
  v39[4] = @"cellularRadioAccessTechnology";
  cellularRadioAccessTechnology = [(ICASSessionData *)self cellularRadioAccessTechnology];
  if (cellularRadioAccessTechnology)
  {
    cellularRadioAccessTechnology2 = [(ICASSessionData *)self cellularRadioAccessTechnology];
  }

  else
  {
    cellularRadioAccessTechnology2 = objc_opt_new();
  }

  v29 = cellularRadioAccessTechnology2;
  v40[4] = cellularRadioAccessTechnology2;
  v39[5] = @"bioAuthEnabled";
  bioAuthEnabled = [(ICASSessionData *)self bioAuthEnabled];
  if (bioAuthEnabled)
  {
    bioAuthEnabled2 = [(ICASSessionData *)self bioAuthEnabled];
  }

  else
  {
    bioAuthEnabled2 = objc_opt_new();
  }

  v27 = bioAuthEnabled2;
  v40[5] = bioAuthEnabled2;
  v39[6] = @"localNotesEnabled";
  localNotesEnabled = [(ICASSessionData *)self localNotesEnabled];
  if (localNotesEnabled)
  {
    localNotesEnabled2 = [(ICASSessionData *)self localNotesEnabled];
  }

  else
  {
    localNotesEnabled2 = objc_opt_new();
  }

  v10 = localNotesEnabled2;
  v40[6] = localNotesEnabled2;
  v39[7] = @"accountTypeSummary";
  accountTypeSummary = [(ICASSessionData *)self accountTypeSummary];
  if (accountTypeSummary)
  {
    accountTypeSummary2 = [(ICASSessionData *)self accountTypeSummary];
  }

  else
  {
    accountTypeSummary2 = objc_opt_new();
  }

  v13 = accountTypeSummary2;
  v40[7] = accountTypeSummary2;
  v39[8] = @"sessionType";
  sessionType = [(ICASSessionData *)self sessionType];
  if (sessionType)
  {
    sessionType2 = [(ICASSessionData *)self sessionType];
  }

  else
  {
    sessionType2 = objc_opt_new();
  }

  v16 = sessionType2;
  v40[8] = sessionType2;
  v39[9] = @"isSaltRegenerated";
  isSaltRegenerated = [(ICASSessionData *)self isSaltRegenerated];
  if (isSaltRegenerated)
  {
    isSaltRegenerated2 = [(ICASSessionData *)self isSaltRegenerated];
  }

  else
  {
    isSaltRegenerated2 = objc_opt_new();
  }

  v19 = isSaltRegenerated2;
  v40[9] = isSaltRegenerated2;
  v39[10] = @"isGlobalSession";
  isGlobalSession = [(ICASSessionData *)self isGlobalSession];
  if (isGlobalSession)
  {
    isGlobalSession2 = [(ICASSessionData *)self isGlobalSession];
  }

  else
  {
    isGlobalSession2 = objc_opt_new();
  }

  v22 = isGlobalSession2;
  v40[10] = isGlobalSession2;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:11];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end