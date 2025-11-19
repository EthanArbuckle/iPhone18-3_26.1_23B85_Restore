@interface HMCameraClipManager(Additions)
- (id)hf_fetchTimelapseClipsWithDateInterval:()Additions padding:shouldOrderAscending:;
@end

@implementation HMCameraClipManager(Additions)

- (id)hf_fetchTimelapseClipsWithDateInterval:()Additions padding:shouldOrderAscending:
{
  v8 = a4;
  v9 = [v8 startDate];
  v10 = [v9 dateByAddingTimeInterval:-a2];

  v11 = [v8 endDate];

  v12 = [v11 dateByAddingTimeInterval:a2];

  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v12];
  v14 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__HMCameraClipManager_Additions__hf_fetchTimelapseClipsWithDateInterval_padding_shouldOrderAscending___block_invoke;
  v18[3] = &unk_277E02488;
  v18[4] = a1;
  v19 = v13;
  v20 = a5;
  v15 = v13;
  v16 = [v14 futureWithCompletionHandlerAdapterBlock:v18];

  return v16;
}

@end