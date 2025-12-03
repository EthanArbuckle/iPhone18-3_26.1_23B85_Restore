@interface HUServiceDetailsCameraStreamingAndRecordingItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsCameraStreamingAndRecordingItem

- (id)_subclass_updateWithOptions:(id)options
{
  v18[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceServiceItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsCameraStreamingAndRecordingItemDisplayTitle", @"HUServiceDetailsCameraStreamingAndRecordingItemDisplayTitle", 1);
  v8 = MEMORY[0x277CBEB38];
  v17 = *MEMORY[0x277D13F60];
  v18[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v10 = [v8 dictionaryWithDictionary:v9];

  if (!v6 || ([v6 profile], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hf_supportsRecordingEvents"), v11, (v12 & 1) == 0))
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v13 = MEMORY[0x277D2C900];
  v14 = [MEMORY[0x277D14780] outcomeWithResults:v10];
  v15 = [v13 futureWithResult:v14];

  return v15;
}

@end