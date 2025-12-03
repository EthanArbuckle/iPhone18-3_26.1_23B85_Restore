@interface IRHistoryEventsContainerDO
+ (id)historyEventsContainerDOWithHistoryEvents:(id)events;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistoryEventsContainerDO:(id)o;
- (IRHistoryEventsContainerDO)initWithCoder:(id)coder;
- (IRHistoryEventsContainerDO)initWithHistoryEvents:(id)events;
- (id)copyWithReplacementHistoryEvents:(id)events;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRHistoryEventsContainerDO

- (IRHistoryEventsContainerDO)initWithHistoryEvents:(id)events
{
  eventsCopy = events;
  v9.receiver = self;
  v9.super_class = IRHistoryEventsContainerDO;
  v6 = [(IRHistoryEventsContainerDO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyEvents, events);
  }

  return v7;
}

+ (id)historyEventsContainerDOWithHistoryEvents:(id)events
{
  eventsCopy = events;
  v5 = [[self alloc] initWithHistoryEvents:eventsCopy];

  return v5;
}

- (id)copyWithReplacementHistoryEvents:(id)events
{
  eventsCopy = events;
  v4 = [objc_alloc(objc_opt_class()) initWithHistoryEvents:eventsCopy];

  return v4;
}

- (BOOL)isEqualToHistoryEventsContainerDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy || (v6 = self->_historyEvents == 0, [oCopy historyEvents], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    historyEvents = self->_historyEvents;
    if (historyEvents)
    {
      historyEvents = [v5 historyEvents];
      v11 = [(NSArray *)historyEvents isEqual:historyEvents];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRHistoryEventsContainerDO *)self isEqualToHistoryEventsContainerDO:v5];
  }

  return v6;
}

- (IRHistoryEventsContainerDO)initWithCoder:(id)coder
{
  v21[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"historyEvents"];

  if (!v8)
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_5;
    }

LABEL_6:
    self = [(IRHistoryEventsContainerDO *)self initWithHistoryEvents:v8];
    selfCopy = self;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventsContainerDO key historyEvents (expected %@, decoded %@)", v10, v12, 0];
  v20 = *MEMORY[0x277CCA450];
  v21[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventsContainerDOOCNTErrorDomain" code:3 userInfo:v14];
  [coderCopy failWithError:v15];

LABEL_5:
  selfCopy = 0;
LABEL_7:

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  historyEvents = self->_historyEvents;
  if (historyEvents)
  {
    [coder encodeObject:historyEvents forKey:@"historyEvents"];
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRHistoryEventsContainerDO | historyEvents:%@>", self->_historyEvents];

  return v2;
}

@end