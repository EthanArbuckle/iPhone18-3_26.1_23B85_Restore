@interface IRReplayEventsContainerDO
+ (id)replayEventsContainerDOWithReplayEvents:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReplayEventsContainerDO:(id)a3;
- (IRReplayEventsContainerDO)initWithCoder:(id)a3;
- (IRReplayEventsContainerDO)initWithReplayEvents:(id)a3;
- (id)copyWithReplacementReplayEvents:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRReplayEventsContainerDO

- (IRReplayEventsContainerDO)initWithReplayEvents:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IRReplayEventsContainerDO;
  v6 = [(IRReplayEventsContainerDO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replayEvents, a3);
  }

  return v7;
}

+ (id)replayEventsContainerDOWithReplayEvents:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithReplayEvents:v4];

  return v5;
}

- (id)copyWithReplacementReplayEvents:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithReplayEvents:v3];

  return v4;
}

- (BOOL)isEqualToReplayEventsContainerDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = self->_replayEvents == 0, [v4 replayEvents], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    replayEvents = self->_replayEvents;
    if (replayEvents)
    {
      v10 = [v5 replayEvents];
      v11 = [(NSSet *)replayEvents isEqual:v10];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRReplayEventsContainerDO *)self isEqualToReplayEventsContainerDO:v5];
  }

  return v6;
}

- (IRReplayEventsContainerDO)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"replayEvents"];

  if (v8 || ([v4 error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    self = [(IRReplayEventsContainerDO *)self initWithReplayEvents:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  replayEvents = self->_replayEvents;
  if (replayEvents)
  {
    [a3 encodeObject:replayEvents forKey:@"replayEvents"];
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRReplayEventsContainerDO | replayEvents:%@>", self->_replayEvents];

  return v2;
}

@end