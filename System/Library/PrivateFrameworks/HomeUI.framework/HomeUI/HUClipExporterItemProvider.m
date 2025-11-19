@interface HUClipExporterItemProvider
- (HUClipExporterItemProvider)initWithURL:(id)a3;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)item;
@end

@implementation HUClipExporterItemProvider

- (HUClipExporterItemProvider)initWithURL:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HUClipExporterItemProvider.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v11.receiver = self;
  v11.super_class = HUClipExporterItemProvider;
  v7 = [(UIActivityItemProvider *)&v11 initWithPlaceholderItem:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_clipURL, a3);
  }

  return v8;
}

- (id)item
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(UIActivityItemProvider *)self activityType];
  v4 = [v3 isEqual:*MEMORY[0x277D54710]];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA90]);
    v6 = [(HUClipExporterItemProvider *)self clipURL];
    v7 = [v5 initWithContentsOfURL:v6];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = [v7 length];
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Exporting data for AirDrop dropping with bytes = %lu", &v12, 0xCu);
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(UIActivityItemProvider *)self activityType];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Exporting data for activity type = %@", &v12, 0xCu);
    }

    v7 = [(HUClipExporterItemProvider *)self clipURL];
  }

  return v7;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v4 = [(HUClipExporterItemProvider *)self clipURL:a3];
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByReplacingOccurrencesOfString:@".mp4" withString:&stru_2823E0EE8];

  v7 = MEMORY[0x277CCACA8];
  v8 = _HULocalizedStringWithDefaultValue(@"HUCameraExportSubject", @"HUCameraExportSubject", 1);
  v9 = [v7 stringWithFormat:@"%@ - %@", v8, v6];

  return v9;
}

@end