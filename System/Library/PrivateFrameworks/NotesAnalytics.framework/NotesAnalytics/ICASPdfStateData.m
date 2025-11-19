@interface ICASPdfStateData
- (ICASPdfStateData)initWithPdfStartState:(id)a3 pdfEndState:(id)a4 hasSmallStateUsage:(id)a5 hasMediumStateUsage:(id)a6 hasLargeStateUsage:(id)a7 hasFullScreenStateUsage:(id)a8;
- (id)toDict;
@end

@implementation ICASPdfStateData

- (ICASPdfStateData)initWithPdfStartState:(id)a3 pdfEndState:(id)a4 hasSmallStateUsage:(id)a5 hasMediumStateUsage:(id)a6 hasLargeStateUsage:(id)a7 hasFullScreenStateUsage:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = ICASPdfStateData;
  v18 = [(ICASPdfStateData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pdfStartState, a3);
    objc_storeStrong(&v19->_pdfEndState, a4);
    objc_storeStrong(&v19->_hasSmallStateUsage, a5);
    objc_storeStrong(&v19->_hasMediumStateUsage, a6);
    objc_storeStrong(&v19->_hasLargeStateUsage, a7);
    objc_storeStrong(&v19->_hasFullScreenStateUsage, a8);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"pdfStartState";
  v24 = [(ICASPdfStateData *)self pdfStartState];
  if (v24)
  {
    v3 = [(ICASPdfStateData *)self pdfStartState];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v23 = v3;
  v26[0] = v3;
  v25[1] = @"pdfEndState";
  v21 = [(ICASPdfStateData *)self pdfEndState];
  if (v21)
  {
    v4 = [(ICASPdfStateData *)self pdfEndState];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v26[1] = v4;
  v25[2] = @"hasSmallStateUsage";
  v6 = [(ICASPdfStateData *)self hasSmallStateUsage];
  if (v6)
  {
    v7 = [(ICASPdfStateData *)self hasSmallStateUsage];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v26[2] = v7;
  v25[3] = @"hasMediumStateUsage";
  v9 = [(ICASPdfStateData *)self hasMediumStateUsage];
  if (v9)
  {
    v10 = [(ICASPdfStateData *)self hasMediumStateUsage];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v26[3] = v10;
  v25[4] = @"hasLargeStateUsage";
  v12 = [(ICASPdfStateData *)self hasLargeStateUsage];
  if (v12)
  {
    v13 = [(ICASPdfStateData *)self hasLargeStateUsage];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v26[4] = v13;
  v25[5] = @"hasFullScreenStateUsage";
  v15 = [(ICASPdfStateData *)self hasFullScreenStateUsage];
  if (v15)
  {
    v16 = [(ICASPdfStateData *)self hasFullScreenStateUsage];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;
  v26[5] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end