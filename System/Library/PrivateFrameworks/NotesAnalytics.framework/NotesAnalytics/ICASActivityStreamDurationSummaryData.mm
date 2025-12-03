@interface ICASActivityStreamDurationSummaryData
- (ICASActivityStreamDurationSummaryData)initWithHalfHeightViewDuration:(id)duration fullHeightViewDuration:(id)viewDuration sideBarViewDuration:(id)barViewDuration minimizedViewDuration:(id)minimizedViewDuration;
- (id)toDict;
@end

@implementation ICASActivityStreamDurationSummaryData

- (ICASActivityStreamDurationSummaryData)initWithHalfHeightViewDuration:(id)duration fullHeightViewDuration:(id)viewDuration sideBarViewDuration:(id)barViewDuration minimizedViewDuration:(id)minimizedViewDuration
{
  durationCopy = duration;
  viewDurationCopy = viewDuration;
  barViewDurationCopy = barViewDuration;
  minimizedViewDurationCopy = minimizedViewDuration;
  v18.receiver = self;
  v18.super_class = ICASActivityStreamDurationSummaryData;
  v15 = [(ICASActivityStreamDurationSummaryData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_halfHeightViewDuration, duration);
    objc_storeStrong(&v16->_fullHeightViewDuration, viewDuration);
    objc_storeStrong(&v16->_sideBarViewDuration, barViewDuration);
    objc_storeStrong(&v16->_minimizedViewDuration, minimizedViewDuration);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"halfHeightViewDuration";
  halfHeightViewDuration = [(ICASActivityStreamDurationSummaryData *)self halfHeightViewDuration];
  if (halfHeightViewDuration)
  {
    halfHeightViewDuration2 = [(ICASActivityStreamDurationSummaryData *)self halfHeightViewDuration];
  }

  else
  {
    halfHeightViewDuration2 = objc_opt_new();
  }

  v5 = halfHeightViewDuration2;
  v19[0] = halfHeightViewDuration2;
  v18[1] = @"fullHeightViewDuration";
  fullHeightViewDuration = [(ICASActivityStreamDurationSummaryData *)self fullHeightViewDuration];
  if (fullHeightViewDuration)
  {
    fullHeightViewDuration2 = [(ICASActivityStreamDurationSummaryData *)self fullHeightViewDuration];
  }

  else
  {
    fullHeightViewDuration2 = objc_opt_new();
  }

  v8 = fullHeightViewDuration2;
  v19[1] = fullHeightViewDuration2;
  v18[2] = @"sideBarViewDuration";
  sideBarViewDuration = [(ICASActivityStreamDurationSummaryData *)self sideBarViewDuration];
  if (sideBarViewDuration)
  {
    sideBarViewDuration2 = [(ICASActivityStreamDurationSummaryData *)self sideBarViewDuration];
  }

  else
  {
    sideBarViewDuration2 = objc_opt_new();
  }

  v11 = sideBarViewDuration2;
  v19[2] = sideBarViewDuration2;
  v18[3] = @"minimizedViewDuration";
  minimizedViewDuration = [(ICASActivityStreamDurationSummaryData *)self minimizedViewDuration];
  if (minimizedViewDuration)
  {
    minimizedViewDuration2 = [(ICASActivityStreamDurationSummaryData *)self minimizedViewDuration];
  }

  else
  {
    minimizedViewDuration2 = objc_opt_new();
  }

  v14 = minimizedViewDuration2;
  v19[3] = minimizedViewDuration2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end