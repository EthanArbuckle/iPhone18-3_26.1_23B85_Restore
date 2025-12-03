@interface OITSULinkedPointerSetEntry
- (OITSULinkedPointerSetEntry)initWithObject:(id)object previousEntry:(id)entry;
- (void)dealloc;
@end

@implementation OITSULinkedPointerSetEntry

- (OITSULinkedPointerSetEntry)initWithObject:(id)object previousEntry:(id)entry
{
  v8.receiver = self;
  v8.super_class = OITSULinkedPointerSetEntry;
  v6 = [(OITSULinkedPointerSetEntry *)&v8 init];
  if (v6)
  {
    v6->mObject = object;
    v6->mPrevious = entry;
    v6->mNext = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSULinkedPointerSetEntry;
  [(OITSULinkedPointerSetEntry *)&v3 dealloc];
}

@end