@interface HUClipExporterItemProvider
- (HUClipExporterItemProvider)initWithURL:(id)l;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)item;
@end

@implementation HUClipExporterItemProvider

- (HUClipExporterItemProvider)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUClipExporterItemProvider.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v11.receiver = self;
  v11.super_class = HUClipExporterItemProvider;
  v7 = [(UIActivityItemProvider *)&v11 initWithPlaceholderItem:lCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_clipURL, l);
  }

  return v8;
}

- (id)item
{
  v14 = *MEMORY[0x277D85DE8];
  activityType = [(UIActivityItemProvider *)self activityType];
  v4 = [activityType isEqual:*MEMORY[0x277D54710]];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA90]);
    clipURL = [(HUClipExporterItemProvider *)self clipURL];
    clipURL2 = [v5 initWithContentsOfURL:clipURL];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = [clipURL2 length];
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Exporting data for AirDrop dropping with bytes = %lu", &v12, 0xCu);
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      activityType2 = [(UIActivityItemProvider *)self activityType];
      v12 = 138412290;
      v13 = activityType2;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Exporting data for activity type = %@", &v12, 0xCu);
    }

    clipURL2 = [(HUClipExporterItemProvider *)self clipURL];
  }

  return clipURL2;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v4 = [(HUClipExporterItemProvider *)self clipURL:controller];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [lastPathComponent stringByReplacingOccurrencesOfString:@".mp4" withString:&stru_2823E0EE8];

  v7 = MEMORY[0x277CCACA8];
  v8 = _HULocalizedStringWithDefaultValue(@"HUCameraExportSubject", @"HUCameraExportSubject", 1);
  v9 = [v7 stringWithFormat:@"%@ - %@", v8, v6];

  return v9;
}

@end