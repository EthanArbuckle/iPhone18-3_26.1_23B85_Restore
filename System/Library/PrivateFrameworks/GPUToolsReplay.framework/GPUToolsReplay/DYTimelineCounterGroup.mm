@interface DYTimelineCounterGroup
- (DYTimelineCounterGroup)init;
- (DYTimelineCounterGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYTimelineCounterGroup

- (DYTimelineCounterGroup)init
{
  v6.receiver = self;
  v6.super_class = DYTimelineCounterGroup;
  v2 = [(DYTimelineCounterGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_timestamps forKey:@"timestamps"];
  [coderCopy encodeObject:self->_counters forKey:@"counters"];
  [coderCopy encodeObject:self->_counterNames forKey:@"countersNames"];
}

- (DYTimelineCounterGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = DYTimelineCounterGroup;
  v5 = [(DYTimelineCounterGroup *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"timestamps"];
    timestamps = v5->_timestamps;
    v5->_timestamps = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"counters"];
    counters = v5->_counters;
    v5->_counters = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"countersNames"];
    counterNames = v5->_counterNames;
    v5->_counterNames = v23;

    v25 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  timestamps = [(DYTimelineCounterGroup *)self timestamps];
  v6 = [timestamps copy];
  [v4 setTimestamps:v6];

  counters = [(DYTimelineCounterGroup *)self counters];
  v8 = [counters copy];
  [v4 setCounters:v8];

  counterNames = [(DYTimelineCounterGroup *)self counterNames];
  v10 = [counterNames copy];
  [v4 setCounterNames:v10];

  return v4;
}

@end