@interface CUIKInternalBuildAssertion
+ (void)loadCalendarLinkAppleInternal;
@end

@implementation CUIKInternalBuildAssertion

+ (void)loadCalendarLinkAppleInternal
{
  v3 = *MEMORY[0x277D85DE8];
  if (!CalendarLinkAppleInternalLibraryCore_frameworkLibrary)
  {
    CalendarLinkAppleInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end