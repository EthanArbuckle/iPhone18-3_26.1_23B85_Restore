@interface NSData(Archive)
- (id)cdp_unarchivedRoot;
- (void)cdp_unarchivedRoot;
@end

@implementation NSData(Archive)

- (id)cdp_unarchivedRoot
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a1 error:0];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [v1 decodeObjectOfClasses:v4 forKey:@"root"];

  [v1 finishDecoding];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)cdp_unarchivedRoot
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_24510B000, log, OS_LOG_TYPE_ERROR, "Failed to parse data: %@ - %@", buf, 0x16u);
}

@end