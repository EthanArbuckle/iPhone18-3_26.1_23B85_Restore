@interface _ICTransientLexicon(TestingSupport)
@end

@implementation _ICTransientLexicon(TestingSupport)

- (void)getEntryRefCount:()TestingSupport .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(_ICTransientLexicon *)a1 _mutableNamedEntitiesForEntry:a2];
  *a3 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
}

@end