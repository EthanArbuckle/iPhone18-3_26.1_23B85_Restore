@interface ExclaveThread
- (void)addStackEntries:(id)a3;
@end

@implementation ExclaveThread

- (void)addStackEntries:(id)a3
{
  v4 = a3;
  stackEntries = self->_stackEntries;
  v8 = v4;
  if (!stackEntries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_stackEntries;
    self->_stackEntries = v6;

    v4 = v8;
    stackEntries = self->_stackEntries;
  }

  [(NSMutableArray *)stackEntries addObject:v4];
}

@end