@interface ExclaveThread
- (void)addStackEntries:(id)entries;
@end

@implementation ExclaveThread

- (void)addStackEntries:(id)entries
{
  entriesCopy = entries;
  stackEntries = self->_stackEntries;
  v8 = entriesCopy;
  if (!stackEntries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_stackEntries;
    self->_stackEntries = v6;

    entriesCopy = v8;
    stackEntries = self->_stackEntries;
  }

  [(NSMutableArray *)stackEntries addObject:entriesCopy];
}

@end