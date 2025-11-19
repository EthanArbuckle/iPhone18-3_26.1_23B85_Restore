@interface BPSOrderedMergeUpstreamState
- (BPSOrderedMergeUpstreamState)initWithCoder:(id)a3;
- (BPSOrderedMergeUpstreamState)initWithNextEvent:(id)a3 lastReturnedEvent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BPSOrderedMergeUpstreamState

- (BPSOrderedMergeUpstreamState)initWithNextEvent:(id)a3 lastReturnedEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BPSOrderedMergeUpstreamState;
  v9 = [(BPSOrderedMergeUpstreamState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nextEvent, a3);
    objc_storeStrong(&v10->_lastReturnedEvent, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BPSOrderedMergeUpstreamState *)self nextEvent];
  [v4 encodeObject:v5 forKey:@"nextEvent"];

  v6 = [(BPSOrderedMergeUpstreamState *)self lastReturnedEvent];
  [v4 encodeObject:v6 forKey:@"lastReturnedEvent"];
}

- (BPSOrderedMergeUpstreamState)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AB10];
  v5 = a3;
  v6 = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"nextEvent"];
  v8 = [v5 decodeObjectOfClasses:v6 forKey:@"lastReturnedEvent"];

  v9 = [(BPSOrderedMergeUpstreamState *)self initWithNextEvent:v7 lastReturnedEvent:v8];
  return v9;
}

@end