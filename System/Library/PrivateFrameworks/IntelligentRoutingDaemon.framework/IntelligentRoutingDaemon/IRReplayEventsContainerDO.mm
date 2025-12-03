@interface IRReplayEventsContainerDO
+ (id)replayEventsContainerDOWithReplayEvents:(id)events;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReplayEventsContainerDO:(id)o;
- (IRReplayEventsContainerDO)initWithCoder:(id)coder;
- (IRReplayEventsContainerDO)initWithReplayEvents:(id)events;
- (id)copyWithReplacementReplayEvents:(id)events;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRReplayEventsContainerDO

- (IRReplayEventsContainerDO)initWithReplayEvents:(id)events
{
  eventsCopy = events;
  v9.receiver = self;
  v9.super_class = IRReplayEventsContainerDO;
  v6 = [(IRReplayEventsContainerDO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replayEvents, events);
  }

  return v7;
}

+ (id)replayEventsContainerDOWithReplayEvents:(id)events
{
  eventsCopy = events;
  v5 = [[self alloc] initWithReplayEvents:eventsCopy];

  return v5;
}

- (id)copyWithReplacementReplayEvents:(id)events
{
  eventsCopy = events;
  v4 = [objc_alloc(objc_opt_class()) initWithReplayEvents:eventsCopy];

  return v4;
}

- (BOOL)isEqualToReplayEventsContainerDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy || (v6 = self->_replayEvents == 0, [oCopy replayEvents], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    replayEvents = self->_replayEvents;
    if (replayEvents)
    {
      replayEvents = [v5 replayEvents];
      v11 = [(NSSet *)replayEvents isEqual:replayEvents];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRReplayEventsContainerDO *)self isEqualToReplayEventsContainerDO:v5];
  }

  return v6;
}

- (IRReplayEventsContainerDO)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"replayEvents"];

  if (v8 || ([coderCopy error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    self = [(IRReplayEventsContainerDO *)self initWithReplayEvents:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  replayEvents = self->_replayEvents;
  if (replayEvents)
  {
    [coder encodeObject:replayEvents forKey:@"replayEvents"];
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRReplayEventsContainerDO | replayEvents:%@>", self->_replayEvents];

  return v2;
}

@end