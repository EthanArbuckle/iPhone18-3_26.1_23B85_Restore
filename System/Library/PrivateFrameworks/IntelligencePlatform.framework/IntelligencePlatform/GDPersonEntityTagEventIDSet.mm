@interface GDPersonEntityTagEventIDSet
- (GDPersonEntityTagEventIDSet)initWithEventId:(int64_t)a3;
- (void)addEventId:(int64_t)a3;
@end

@implementation GDPersonEntityTagEventIDSet

- (void)addEventId:(int64_t)a3
{
  internalSet = self->_internalSet;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [(NSMutableSet *)internalSet addObject:v4];
}

- (GDPersonEntityTagEventIDSet)initWithEventId:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = GDPersonEntityTagEventIDSet;
  v4 = [(GDPersonEntityTagEventIDSet *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v7 = [v5 initWithObjects:{v6, 0}];
    internalSet = v4->_internalSet;
    v4->_internalSet = v7;
  }

  return v4;
}

@end