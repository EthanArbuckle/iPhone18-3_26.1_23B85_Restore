@interface CRKRightPaddingTableEntry
- (CRKRightPaddingTableEntry)initWithObject:(id)a3;
- (id)stringValueWithLength:(unint64_t)a3;
@end

@implementation CRKRightPaddingTableEntry

- (CRKRightPaddingTableEntry)initWithObject:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CRKRightPaddingTableEntry *)a2 initWithObject:?];
  }

  v10.receiver = self;
  v10.super_class = CRKRightPaddingTableEntry;
  v7 = [(CRKRightPaddingTableEntry *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mObject, a3);
  }

  return v8;
}

- (id)stringValueWithLength:(unint64_t)a3
{
  v4 = [(CRKRightPaddingTableEntry *)self rawStringValue];
  v5 = [v4 stringByPaddingToLength:a3 withString:@" " startingAtIndex:0];

  return v5;
}

- (void)initWithObject:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKRightPaddingTableEntry.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"object"}];
}

@end