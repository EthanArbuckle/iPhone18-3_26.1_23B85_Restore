@interface DMCManagedMediaDetailsCell
- (void)setManagedApp:(id)app;
- (void)setManagedBook:(id)book;
@end

@implementation DMCManagedMediaDetailsCell

- (void)setManagedBook:(id)book
{
  v8[2] = *MEMORY[0x277D85DE8];
  bookCopy = book;
  v5 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOK_RESTRICTIONS");
  v8[0] = v5;
  managedBookConfigurationInfo = [bookCopy managedBookConfigurationInfo];

  v8[1] = managedBookConfigurationInfo;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [(DMCItemSummaryCell *)self createViewWithDescriptors:v7];
}

- (void)setManagedApp:(id)app
{
  v8[2] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v5 = +[DMCManagedMediaDetailsCell localizedManagedAppRestrictionsTitle];
  v8[0] = v5;
  managedAppConfigurationInfo = [appCopy managedAppConfigurationInfo];

  v8[1] = managedAppConfigurationInfo;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [(DMCItemSummaryCell *)self createViewWithDescriptors:v7];
}

@end