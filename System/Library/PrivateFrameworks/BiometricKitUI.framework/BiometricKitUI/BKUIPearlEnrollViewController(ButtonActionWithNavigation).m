@interface BKUIPearlEnrollViewController(ButtonActionWithNavigation)
@end

@implementation BKUIPearlEnrollViewController(ButtonActionWithNavigation)

- (void)updatePeriocularEnrollmentSettings:()ButtonActionWithNavigation .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 localizedDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_241B0A000, a3, OS_LOG_TYPE_ERROR, "Update Periocular Enrollment Settings Error:%@ Context:%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end