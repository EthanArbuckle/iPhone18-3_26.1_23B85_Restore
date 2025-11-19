@interface WBS
@end

@implementation WBS

void __WBS_LOG_CHANNEL_PREFIXSignposts_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Signposts");
  v1 = WBS_LOG_CHANNEL_PREFIXSignposts_log;
  WBS_LOG_CHANNEL_PREFIXSignposts_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Extensions");
  v1 = WBS_LOG_CHANNEL_PREFIXExtensions_log;
  WBS_LOG_CHANNEL_PREFIXExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXTabs_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Tabs");
  v1 = WBS_LOG_CHANNEL_PREFIXTabs_log;
  WBS_LOG_CHANNEL_PREFIXTabs_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXContentBlockers_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ContentBlockers");
  v1 = WBS_LOG_CHANNEL_PREFIXContentBlockers_log;
  WBS_LOG_CHANNEL_PREFIXContentBlockers_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXLayout_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Layout");
  v1 = WBS_LOG_CHANNEL_PREFIXLayout_log;
  WBS_LOG_CHANNEL_PREFIXLayout_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCloudTabs_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "CloudTabs");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudTabs_log;
  WBS_LOG_CHANNEL_PREFIXCloudTabs_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCycler_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Cycler");
  v1 = WBS_LOG_CHANNEL_PREFIXCycler_log;
  WBS_LOG_CHANNEL_PREFIXCycler_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUserInteraction_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UserInteraction");
  v1 = WBS_LOG_CHANNEL_PREFIXUserInteraction_log;
  WBS_LOG_CHANNEL_PREFIXUserInteraction_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXTabView_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "TabView");
  v1 = WBS_LOG_CHANNEL_PREFIXTabView_log;
  WBS_LOG_CHANNEL_PREFIXTabView_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPageLoading_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PageLoading");
  v1 = WBS_LOG_CHANNEL_PREFIXPageLoading_log;
  WBS_LOG_CHANNEL_PREFIXPageLoading_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXContinuity_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Continuity");
  v1 = WBS_LOG_CHANNEL_PREFIXContinuity_log;
  WBS_LOG_CHANNEL_PREFIXContinuity_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXBookmarks_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Bookmarks");
  v1 = WBS_LOG_CHANNEL_PREFIXBookmarks_log;
  WBS_LOG_CHANNEL_PREFIXBookmarks_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXHistory_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "History");
  v1 = WBS_LOG_CHANNEL_PREFIXHistory_log;
  WBS_LOG_CHANNEL_PREFIXHistory_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXURLAutocomplete_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "URLAutocomplete");
  v1 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete_log;
  WBS_LOG_CHANNEL_PREFIXURLAutocomplete_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AutoFillAuthentication");
  v1 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_log;
  WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCloudBookmarks_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "CloudBookmarks");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log;
  WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCloudHistory_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "CloudHistory");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudHistory_log;
  WBS_LOG_CHANNEL_PREFIXCloudHistory_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXDataMigration_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "DataMigration");
  v1 = WBS_LOG_CHANNEL_PREFIXDataMigration_log;
  WBS_LOG_CHANNEL_PREFIXDataMigration_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXDownloads_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Downloads");
  v1 = WBS_LOG_CHANNEL_PREFIXDownloads_log;
  WBS_LOG_CHANNEL_PREFIXDownloads_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXHistoryViewController_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "HistoryViewController");
  v1 = WBS_LOG_CHANNEL_PREFIXHistoryViewController_log;
  WBS_LOG_CHANNEL_PREFIXHistoryViewController_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXLoweredTabBar_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "LoweredTabBar");
  v1 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar_log;
  WBS_LOG_CHANNEL_PREFIXLoweredTabBar_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXMediaCapture_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "MediaCapture");
  v1 = WBS_LOG_CHANNEL_PREFIXMediaCapture_log;
  WBS_LOG_CHANNEL_PREFIXMediaCapture_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXOther_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Other");
  v1 = WBS_LOG_CHANNEL_PREFIXOther_log;
  WBS_LOG_CHANNEL_PREFIXOther_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPLT_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PLT");
  v1 = WBS_LOG_CHANNEL_PREFIXPLT_log;
  WBS_LOG_CHANNEL_PREFIXPLT_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXParsec_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Parsec");
  v1 = WBS_LOG_CHANNEL_PREFIXParsec_log;
  WBS_LOG_CHANNEL_PREFIXParsec_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPerformanceTest_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PerformanceTest");
  v1 = WBS_LOG_CHANNEL_PREFIXPerformanceTest_log;
  WBS_LOG_CHANNEL_PREFIXPerformanceTest_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPrinting_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Printing");
  v1 = WBS_LOG_CHANNEL_PREFIXPrinting_log;
  WBS_LOG_CHANNEL_PREFIXPrinting_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPrivateBrowsing_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PrivateBrowsing");
  v1 = WBS_LOG_CHANNEL_PREFIXPrivateBrowsing_log;
  WBS_LOG_CHANNEL_PREFIXPrivateBrowsing_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPush_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Push");
  v1 = WBS_LOG_CHANNEL_PREFIXPush_log;
  WBS_LOG_CHANNEL_PREFIXPush_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXReadingList_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ReadingList");
  v1 = WBS_LOG_CHANNEL_PREFIXReadingList_log;
  WBS_LOG_CHANNEL_PREFIXReadingList_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSiriIntelligence_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SiriIntelligence");
  v1 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence_log;
  WBS_LOG_CHANNEL_PREFIXSiriIntelligence_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSiriLink_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SiriLink");
  v1 = WBS_LOG_CHANNEL_PREFIXSiriLink_log;
  WBS_LOG_CHANNEL_PREFIXSiriLink_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXStartPage_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "StartPage");
  v1 = WBS_LOG_CHANNEL_PREFIXStartPage_log;
  WBS_LOG_CHANNEL_PREFIXStartPage_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXTabGroup_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "TabGroup");
  v1 = WBS_LOG_CHANNEL_PREFIXTabGroup_log;
  WBS_LOG_CHANNEL_PREFIXTabGroup_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXTabSnapshots_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "TabSnapshots");
  v1 = WBS_LOG_CHANNEL_PREFIXTabSnapshots_log;
  WBS_LOG_CHANNEL_PREFIXTabSnapshots_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXTest_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Test");
  v1 = WBS_LOG_CHANNEL_PREFIXTest_log;
  WBS_LOG_CHANNEL_PREFIXTest_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUserInterface_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UserInterface");
  v1 = WBS_LOG_CHANNEL_PREFIXUserInterface_log;
  WBS_LOG_CHANNEL_PREFIXUserInterface_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebClips_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebClips");
  v1 = WBS_LOG_CHANNEL_PREFIXWebClips_log;
  WBS_LOG_CHANNEL_PREFIXWebClips_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebDriver_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebDriver");
  v1 = WBS_LOG_CHANNEL_PREFIXWebDriver_log;
  WBS_LOG_CHANNEL_PREFIXWebDriver_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebsiteData_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebsiteData");
  v1 = WBS_LOG_CHANNEL_PREFIXWebsiteData_log;
  WBS_LOG_CHANNEL_PREFIXWebsiteData_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCloudSettings_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "CloudSettings");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudSettings_log;
  WBS_LOG_CHANNEL_PREFIXCloudSettings_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebExtensions");
  v1 = WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
  WBS_LOG_CHANNEL_PREFIXWebExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXInterstellar_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Interstellar");
  v1 = WBS_LOG_CHANNEL_PREFIXInterstellar_log;
  WBS_LOG_CHANNEL_PREFIXInterstellar_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSystemNoteTaking_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SystemNoteTaking");
  v1 = WBS_LOG_CHANNEL_PREFIXSystemNoteTaking_log;
  WBS_LOG_CHANNEL_PREFIXSystemNoteTaking_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAppReviewPrompt_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AppReviewPrompt");
  v1 = WBS_LOG_CHANNEL_PREFIXAppReviewPrompt_log;
  WBS_LOG_CHANNEL_PREFIXAppReviewPrompt_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWidgets_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Widgets");
  v1 = WBS_LOG_CHANNEL_PREFIXWidgets_log;
  WBS_LOG_CHANNEL_PREFIXWidgets_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSiriReadThis_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SiriReadThis");
  v1 = WBS_LOG_CHANNEL_PREFIXSiriReadThis_log;
  WBS_LOG_CHANNEL_PREFIXSiriReadThis_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXProfiles_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Profiles");
  v1 = WBS_LOG_CHANNEL_PREFIXProfiles_log;
  WBS_LOG_CHANNEL_PREFIXProfiles_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "BrowsingAssistant");
  v1 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log;
  WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SiriSuggestedSites");
  v1 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_log;
  WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_log = v0;
}

@end