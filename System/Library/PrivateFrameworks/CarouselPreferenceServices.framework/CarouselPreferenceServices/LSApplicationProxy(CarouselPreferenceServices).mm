@interface LSApplicationProxy(CarouselPreferenceServices)
- (id)cslprf_safeCorrespondingApplicationRecord;
@end

@implementation LSApplicationProxy(CarouselPreferenceServices)

- (id)cslprf_safeCorrespondingApplicationRecord
{
  v16 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [self bundleIdentifier];
  correspondingApplicationRecord = [self correspondingApplicationRecord];
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:bundleIdentifier allowPlaceholder:objc_msgSend(correspondingApplicationRecord error:{"isPlaceholder"), &v9}];
  v5 = v9;
  if (v5)
  {
    v6 = cslprf_app_library_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v12 = 2112;
      v13 = bundleIdentifier;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_INFO, "%@ failed safeCorrespondingApplicationRecord for bundleIdentifier:%@ error:%@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end