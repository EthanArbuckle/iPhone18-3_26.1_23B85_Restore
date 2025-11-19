@interface IRHistoryEventsContainerDO
+ (id)historyEventsContainerDOWithHistoryEvents:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHistoryEventsContainerDO:(id)a3;
- (IRHistoryEventsContainerDO)initWithCoder:(id)a3;
- (IRHistoryEventsContainerDO)initWithHistoryEvents:(id)a3;
- (id)copyWithReplacementHistoryEvents:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRHistoryEventsContainerDO

- (IRHistoryEventsContainerDO)initWithHistoryEvents:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IRHistoryEventsContainerDO;
  v6 = [(IRHistoryEventsContainerDO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyEvents, a3);
  }

  return v7;
}

+ (id)historyEventsContainerDOWithHistoryEvents:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHistoryEvents:v4];

  return v5;
}

- (id)copyWithReplacementHistoryEvents:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHistoryEvents:v3];

  return v4;
}

- (BOOL)isEqualToHistoryEventsContainerDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = self->_historyEvents == 0, [v4 historyEvents], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    historyEvents = self->_historyEvents;
    if (historyEvents)
    {
      v10 = [v5 historyEvents];
      v11 = [(NSArray *)historyEvents isEqual:v10];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRHistoryEventsContainerDO *)self isEqualToHistoryEventsContainerDO:v5];
  }

  return v6;
}

- (IRHistoryEventsContainerDO)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"historyEvents"];

  if (!v8)
  {
    v16 = [v4 error];

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_6:
    self = [(IRHistoryEventsContainerDO *)self initWithHistoryEvents:v8];
    v17 = self;
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
  [v4 failWithError:v15];

LABEL_5:
  v17 = 0;
LABEL_7:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  historyEvents = self->_historyEvents;
  if (historyEvents)
  {
    [a3 encodeObject:historyEvents forKey:@"historyEvents"];
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRHistoryEventsContainerDO | historyEvents:%@>", self->_historyEvents];

  return v2;
}

@end