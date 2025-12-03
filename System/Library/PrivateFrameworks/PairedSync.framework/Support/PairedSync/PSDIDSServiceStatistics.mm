@interface PSDIDSServiceStatistics
+ (id)statisticsWithServiceName:(id)name serviceStatisticsDictionary:(id)dictionary;
- (PSDIDSServiceStatistics)initWithCoder:(id)coder;
- (id)description;
- (id)statisticsByDiffingStatistics:(id)statistics;
- (id)statisticsBySummingStatistics:(id)statistics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSDIDSServiceStatistics

+ (id)statisticsWithServiceName:(id)name serviceStatisticsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v8 = objc_alloc_init(self);
  [v8 setServiceName:nameCopy];

  v9 = [dictionaryCopy objectForKey:@"localDeliveryQueueStatBytes"];
  [v8 setBytes:{objc_msgSend(v9, "integerValue")}];

  v10 = [dictionaryCopy objectForKey:@"localDeliveryQueueStatMessageCount"];
  [v8 setMessageCount:{objc_msgSend(v10, "integerValue")}];

  v11 = [dictionaryCopy objectForKey:@"localDeliveryQueueStatDeliveredBytes"];
  [v8 setDeliveredBytes:{objc_msgSend(v11, "integerValue")}];

  v12 = [dictionaryCopy objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];

  [v8 setDeliveredMessageCount:{objc_msgSend(v12, "integerValue")}];

  return v8;
}

- (id)statisticsByDiffingStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = objc_alloc_init(PSDIDSServiceStatistics);
  serviceName = [(PSDIDSServiceStatistics *)self serviceName];
  [(PSDIDSServiceStatistics *)v5 setServiceName:serviceName];

  -[PSDIDSServiceStatistics setBytes:](v5, "setBytes:", -[PSDIDSServiceStatistics bytes](self, "bytes") - [statisticsCopy bytes]);
  -[PSDIDSServiceStatistics setMessageCount:](v5, "setMessageCount:", -[PSDIDSServiceStatistics messageCount](self, "messageCount") - [statisticsCopy messageCount]);
  -[PSDIDSServiceStatistics setDeliveredBytes:](v5, "setDeliveredBytes:", -[PSDIDSServiceStatistics deliveredBytes](self, "deliveredBytes") - [statisticsCopy deliveredBytes]);
  deliveredMessageCount = [(PSDIDSServiceStatistics *)self deliveredMessageCount];
  deliveredMessageCount2 = [statisticsCopy deliveredMessageCount];

  [(PSDIDSServiceStatistics *)v5 setDeliveredMessageCount:deliveredMessageCount - deliveredMessageCount2];

  return v5;
}

- (id)statisticsBySummingStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = objc_alloc_init(PSDIDSServiceStatistics);
  serviceName = [(PSDIDSServiceStatistics *)self serviceName];
  [(PSDIDSServiceStatistics *)v5 setServiceName:serviceName];

  -[PSDIDSServiceStatistics setBytes:](v5, "setBytes:", -[PSDIDSServiceStatistics bytes](self, "bytes") + [statisticsCopy bytes]);
  -[PSDIDSServiceStatistics setMessageCount:](v5, "setMessageCount:", -[PSDIDSServiceStatistics messageCount](self, "messageCount") + [statisticsCopy messageCount]);
  -[PSDIDSServiceStatistics setDeliveredBytes:](v5, "setDeliveredBytes:", -[PSDIDSServiceStatistics deliveredBytes](self, "deliveredBytes") + [statisticsCopy deliveredBytes]);
  deliveredMessageCount = [(PSDIDSServiceStatistics *)self deliveredMessageCount];
  deliveredMessageCount2 = [statisticsCopy deliveredMessageCount];

  [(PSDIDSServiceStatistics *)v5 setDeliveredMessageCount:&deliveredMessageCount2[deliveredMessageCount]];

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  serviceName = [(PSDIDSServiceStatistics *)self serviceName];
  v6 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self bytes]];
  v7 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self messageCount]];
  v8 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self deliveredBytes]];
  v9 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self deliveredMessageCount]];
  v10 = [NSString stringWithFormat:@"<%@ %p serviceName=%@; bytes=%@; messageCount=%@; deliveredBytes=%@; deliveredMessageCount=%@>", v4, self, serviceName, v6, v7, v8, v9];;

  return v10;
}

- (PSDIDSServiceStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSDIDSServiceStatistics;
  v5 = [(PSDIDSServiceStatistics *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v5->_messageCount = [coderCopy decodeIntegerForKey:@"messageCount"];
    v5->_bytes = [coderCopy decodeIntegerForKey:@"bytes"];
    v5->_deliveredMessageCount = [coderCopy decodeIntegerForKey:@"deliveredMessageCount"];
    v5->_deliveredBytes = [coderCopy decodeIntegerForKey:@"deliveredBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  serviceName = self->_serviceName;
  coderCopy = coder;
  [coderCopy encodeObject:serviceName forKey:@"serviceName"];
  [coderCopy encodeInteger:self->_messageCount forKey:@"messageCount"];
  [coderCopy encodeInteger:self->_bytes forKey:@"bytes"];
  [coderCopy encodeInteger:self->_deliveredMessageCount forKey:@"deliveredMessageCount"];
  [coderCopy encodeInteger:self->_deliveredBytes forKey:@"deliveredBytes"];
}

@end