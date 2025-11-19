@interface ICASActivityStreamDurationSummaryData
- (ICASActivityStreamDurationSummaryData)initWithHalfHeightViewDuration:(id)a3 fullHeightViewDuration:(id)a4 sideBarViewDuration:(id)a5 minimizedViewDuration:(id)a6;
- (id)toDict;
@end

@implementation ICASActivityStreamDurationSummaryData

- (ICASActivityStreamDurationSummaryData)initWithHalfHeightViewDuration:(id)a3 fullHeightViewDuration:(id)a4 sideBarViewDuration:(id)a5 minimizedViewDuration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASActivityStreamDurationSummaryData;
  v15 = [(ICASActivityStreamDurationSummaryData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_halfHeightViewDuration, a3);
    objc_storeStrong(&v16->_fullHeightViewDuration, a4);
    objc_storeStrong(&v16->_sideBarViewDuration, a5);
    objc_storeStrong(&v16->_minimizedViewDuration, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"halfHeightViewDuration";
  v3 = [(ICASActivityStreamDurationSummaryData *)self halfHeightViewDuration];
  if (v3)
  {
    v4 = [(ICASActivityStreamDurationSummaryData *)self halfHeightViewDuration];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"fullHeightViewDuration";
  v6 = [(ICASActivityStreamDurationSummaryData *)self fullHeightViewDuration];
  if (v6)
  {
    v7 = [(ICASActivityStreamDurationSummaryData *)self fullHeightViewDuration];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"sideBarViewDuration";
  v9 = [(ICASActivityStreamDurationSummaryData *)self sideBarViewDuration];
  if (v9)
  {
    v10 = [(ICASActivityStreamDurationSummaryData *)self sideBarViewDuration];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"minimizedViewDuration";
  v12 = [(ICASActivityStreamDurationSummaryData *)self minimizedViewDuration];
  if (v12)
  {
    v13 = [(ICASActivityStreamDurationSummaryData *)self minimizedViewDuration];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end