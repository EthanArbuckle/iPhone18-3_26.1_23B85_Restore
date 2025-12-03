@interface NTKUpNextStocksSampleDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation NTKUpNextStocksSampleDataSource

- (id)supportedSections
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D44500];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 setNumberStyle:3];
  [v4 setMaximumFractionDigits:2];
  [v4 setMaximumIntegerDigits:1];
  [v4 setPercentSymbol:&stru_284110E98];
  v5 = MEMORY[0x277CCACA8];
  plusSign = [v4 plusSign];
  v7 = [v4 stringFromNumber:&unk_2841884D8];
  v8 = [v5 localizedStringWithFormat:@"%@%@", plusSign, v7];

  [v4 setNumberStyle:2];
  [v4 setMaximumIntegerDigits:4];
  [v4 setCurrencySymbol:&stru_284110E98];
  v9 = [v4 stringFromNumber:&unk_2841884E8];
  v10 = NTKClockFaceLocalizedString(@"UP_NEXT_SAMPLE_STOCK_NAME", @"▲ S&P 500");
  v11 = NTKClockFaceLocalizedString(@"UP_NEXT_SAMPLE_STOCK_USE_RED_FOR_UP", @"See note in strings file for this key");
  v12 = [v11 isEqualToString:@"1"];

  if (v12)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGreenColor];
  }
  v13 = ;
  v14 = REUISampleRelevanceProviderForSamplePosition();
  v15 = [MEMORY[0x277CBBB88] textProviderWithText:v10];
  v16 = [MEMORY[0x277CBBB88] textProviderWithText:v8];
  v17 = [MEMORY[0x277CBBB88] textProviderWithText:v9];
  NTKUpNextStocksContent(v15, v16, v17, v13);
  v18 = v23 = v8;

  v19 = objc_alloc(MEMORY[0x277D443F8]);
  v26[0] = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v21 = [v19 initWithIdentifier:@"com.apple.stocks.downtime" content:v18 action:0 relevanceProviders:v20];

  v25 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  handlerCopy[2](handlerCopy, v22);
}

@end