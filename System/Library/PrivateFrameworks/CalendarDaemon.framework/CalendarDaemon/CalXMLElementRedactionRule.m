@interface CalXMLElementRedactionRule
- (id)redactionRuleForAttribute:(id)a3;
@end

@implementation CalXMLElementRedactionRule

- (id)redactionRuleForAttribute:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (redactionRuleForAttribute__onceToken != -1)
    {
      [CalXMLElementRedactionRule redactionRuleForAttribute:];
    }

    v8 = redactionRuleForAttribute__logDedupingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CalXMLElementRedactionRule_redactionRuleForAttribute___block_invoke_2;
    block[3] = &unk_27851AAD8;
    v11 = v4;
    dispatch_sync(v8, block);
  }

  return v6;
}

uint64_t __56__CalXMLElementRedactionRule_redactionRuleForAttribute___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = redactionRuleForAttribute__loggedAttributes;
  redactionRuleForAttribute__loggedAttributes = v0;

  redactionRuleForAttribute__logDedupingQueue = dispatch_queue_create("com.apple.mobilecal.CalDAVTrafficLogScrubber.attributeDedupingQueue", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __56__CalXMLElementRedactionRule_redactionRuleForAttribute___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [redactionRuleForAttribute__loggedAttributes containsObject:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    v3 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __56__CalXMLElementRedactionRule_redactionRuleForAttribute___block_invoke_2_cold_1(v1, v3);
    }

    return [redactionRuleForAttribute__loggedAttributes addObject:*v1];
  }

  return result;
}

void __56__CalXMLElementRedactionRule_redactionRuleForAttribute___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_22430B000, a2, OS_LOG_TYPE_DEBUG, "Unknown attribute named %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end