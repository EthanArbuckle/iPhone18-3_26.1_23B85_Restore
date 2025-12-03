@interface ICASPdfStateData
- (ICASPdfStateData)initWithPdfStartState:(id)state pdfEndState:(id)endState hasSmallStateUsage:(id)usage hasMediumStateUsage:(id)stateUsage hasLargeStateUsage:(id)largeStateUsage hasFullScreenStateUsage:(id)screenStateUsage;
- (id)toDict;
@end

@implementation ICASPdfStateData

- (ICASPdfStateData)initWithPdfStartState:(id)state pdfEndState:(id)endState hasSmallStateUsage:(id)usage hasMediumStateUsage:(id)stateUsage hasLargeStateUsage:(id)largeStateUsage hasFullScreenStateUsage:(id)screenStateUsage
{
  stateCopy = state;
  endStateCopy = endState;
  usageCopy = usage;
  stateUsageCopy = stateUsage;
  largeStateUsageCopy = largeStateUsage;
  screenStateUsageCopy = screenStateUsage;
  v24.receiver = self;
  v24.super_class = ICASPdfStateData;
  v18 = [(ICASPdfStateData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pdfStartState, state);
    objc_storeStrong(&v19->_pdfEndState, endState);
    objc_storeStrong(&v19->_hasSmallStateUsage, usage);
    objc_storeStrong(&v19->_hasMediumStateUsage, stateUsage);
    objc_storeStrong(&v19->_hasLargeStateUsage, largeStateUsage);
    objc_storeStrong(&v19->_hasFullScreenStateUsage, screenStateUsage);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"pdfStartState";
  pdfStartState = [(ICASPdfStateData *)self pdfStartState];
  if (pdfStartState)
  {
    pdfStartState2 = [(ICASPdfStateData *)self pdfStartState];
  }

  else
  {
    pdfStartState2 = objc_opt_new();
  }

  v23 = pdfStartState2;
  v26[0] = pdfStartState2;
  v25[1] = @"pdfEndState";
  pdfEndState = [(ICASPdfStateData *)self pdfEndState];
  if (pdfEndState)
  {
    pdfEndState2 = [(ICASPdfStateData *)self pdfEndState];
  }

  else
  {
    pdfEndState2 = objc_opt_new();
  }

  v5 = pdfEndState2;
  v26[1] = pdfEndState2;
  v25[2] = @"hasSmallStateUsage";
  hasSmallStateUsage = [(ICASPdfStateData *)self hasSmallStateUsage];
  if (hasSmallStateUsage)
  {
    hasSmallStateUsage2 = [(ICASPdfStateData *)self hasSmallStateUsage];
  }

  else
  {
    hasSmallStateUsage2 = objc_opt_new();
  }

  v8 = hasSmallStateUsage2;
  v26[2] = hasSmallStateUsage2;
  v25[3] = @"hasMediumStateUsage";
  hasMediumStateUsage = [(ICASPdfStateData *)self hasMediumStateUsage];
  if (hasMediumStateUsage)
  {
    hasMediumStateUsage2 = [(ICASPdfStateData *)self hasMediumStateUsage];
  }

  else
  {
    hasMediumStateUsage2 = objc_opt_new();
  }

  v11 = hasMediumStateUsage2;
  v26[3] = hasMediumStateUsage2;
  v25[4] = @"hasLargeStateUsage";
  hasLargeStateUsage = [(ICASPdfStateData *)self hasLargeStateUsage];
  if (hasLargeStateUsage)
  {
    hasLargeStateUsage2 = [(ICASPdfStateData *)self hasLargeStateUsage];
  }

  else
  {
    hasLargeStateUsage2 = objc_opt_new();
  }

  v14 = hasLargeStateUsage2;
  v26[4] = hasLargeStateUsage2;
  v25[5] = @"hasFullScreenStateUsage";
  hasFullScreenStateUsage = [(ICASPdfStateData *)self hasFullScreenStateUsage];
  if (hasFullScreenStateUsage)
  {
    hasFullScreenStateUsage2 = [(ICASPdfStateData *)self hasFullScreenStateUsage];
  }

  else
  {
    hasFullScreenStateUsage2 = objc_opt_new();
  }

  v17 = hasFullScreenStateUsage2;
  v26[5] = hasFullScreenStateUsage2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end