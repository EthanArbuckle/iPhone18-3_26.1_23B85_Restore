@interface MOResource(MOPerson)
@end

@implementation MOResource(MOPerson)

- (void)initWithPerson:()MOPerson .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 contactIdentifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_DEBUG, "MOResource UUID, %@, person, %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end