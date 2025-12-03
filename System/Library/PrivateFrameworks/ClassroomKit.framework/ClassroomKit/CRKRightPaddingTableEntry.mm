@interface CRKRightPaddingTableEntry
- (CRKRightPaddingTableEntry)initWithObject:(id)object;
- (id)stringValueWithLength:(unint64_t)length;
@end

@implementation CRKRightPaddingTableEntry

- (CRKRightPaddingTableEntry)initWithObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    [(CRKRightPaddingTableEntry *)a2 initWithObject:?];
  }

  v10.receiver = self;
  v10.super_class = CRKRightPaddingTableEntry;
  v7 = [(CRKRightPaddingTableEntry *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mObject, object);
  }

  return v8;
}

- (id)stringValueWithLength:(unint64_t)length
{
  rawStringValue = [(CRKRightPaddingTableEntry *)self rawStringValue];
  v5 = [rawStringValue stringByPaddingToLength:length withString:@" " startingAtIndex:0];

  return v5;
}

- (void)initWithObject:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKRightPaddingTableEntry.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"object"}];
}

@end