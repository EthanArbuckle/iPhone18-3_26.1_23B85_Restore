@interface PSDIDSServiceStatistics
+ (id)statisticsWithServiceName:(id)a3 serviceStatisticsDictionary:(id)a4;
- (PSDIDSServiceStatistics)initWithCoder:(id)a3;
- (id)description;
- (id)statisticsByDiffingStatistics:(id)a3;
- (id)statisticsBySummingStatistics:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSDIDSServiceStatistics

+ (id)statisticsWithServiceName:(id)a3 serviceStatisticsDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setServiceName:v7];

  v9 = [v6 objectForKey:@"localDeliveryQueueStatBytes"];
  [v8 setBytes:{objc_msgSend(v9, "integerValue")}];

  v10 = [v6 objectForKey:@"localDeliveryQueueStatMessageCount"];
  [v8 setMessageCount:{objc_msgSend(v10, "integerValue")}];

  v11 = [v6 objectForKey:@"localDeliveryQueueStatDeliveredBytes"];
  [v8 setDeliveredBytes:{objc_msgSend(v11, "integerValue")}];

  v12 = [v6 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];

  [v8 setDeliveredMessageCount:{objc_msgSend(v12, "integerValue")}];

  return v8;
}

- (id)statisticsByDiffingStatistics:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PSDIDSServiceStatistics);
  v6 = [(PSDIDSServiceStatistics *)self serviceName];
  [(PSDIDSServiceStatistics *)v5 setServiceName:v6];

  -[PSDIDSServiceStatistics setBytes:](v5, "setBytes:", -[PSDIDSServiceStatistics bytes](self, "bytes") - [v4 bytes]);
  -[PSDIDSServiceStatistics setMessageCount:](v5, "setMessageCount:", -[PSDIDSServiceStatistics messageCount](self, "messageCount") - [v4 messageCount]);
  -[PSDIDSServiceStatistics setDeliveredBytes:](v5, "setDeliveredBytes:", -[PSDIDSServiceStatistics deliveredBytes](self, "deliveredBytes") - [v4 deliveredBytes]);
  v7 = [(PSDIDSServiceStatistics *)self deliveredMessageCount];
  v8 = [v4 deliveredMessageCount];

  [(PSDIDSServiceStatistics *)v5 setDeliveredMessageCount:v7 - v8];

  return v5;
}

- (id)statisticsBySummingStatistics:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PSDIDSServiceStatistics);
  v6 = [(PSDIDSServiceStatistics *)self serviceName];
  [(PSDIDSServiceStatistics *)v5 setServiceName:v6];

  -[PSDIDSServiceStatistics setBytes:](v5, "setBytes:", -[PSDIDSServiceStatistics bytes](self, "bytes") + [v4 bytes]);
  -[PSDIDSServiceStatistics setMessageCount:](v5, "setMessageCount:", -[PSDIDSServiceStatistics messageCount](self, "messageCount") + [v4 messageCount]);
  -[PSDIDSServiceStatistics setDeliveredBytes:](v5, "setDeliveredBytes:", -[PSDIDSServiceStatistics deliveredBytes](self, "deliveredBytes") + [v4 deliveredBytes]);
  v7 = [(PSDIDSServiceStatistics *)self deliveredMessageCount];
  v8 = [v4 deliveredMessageCount];

  [(PSDIDSServiceStatistics *)v5 setDeliveredMessageCount:&v8[v7]];

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PSDIDSServiceStatistics *)self serviceName];
  v6 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self bytes]];
  v7 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self messageCount]];
  v8 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self deliveredBytes]];
  v9 = [NSNumber numberWithInteger:[(PSDIDSServiceStatistics *)self deliveredMessageCount]];
  v10 = [NSString stringWithFormat:@"<%@ %p serviceName=%@; bytes=%@; messageCount=%@; deliveredBytes=%@; deliveredMessageCount=%@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

- (PSDIDSServiceStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSDIDSServiceStatistics;
  v5 = [(PSDIDSServiceStatistics *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v5->_messageCount = [v4 decodeIntegerForKey:@"messageCount"];
    v5->_bytes = [v4 decodeIntegerForKey:@"bytes"];
    v5->_deliveredMessageCount = [v4 decodeIntegerForKey:@"deliveredMessageCount"];
    v5->_deliveredBytes = [v4 decodeIntegerForKey:@"deliveredBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serviceName = self->_serviceName;
  v5 = a3;
  [v5 encodeObject:serviceName forKey:@"serviceName"];
  [v5 encodeInteger:self->_messageCount forKey:@"messageCount"];
  [v5 encodeInteger:self->_bytes forKey:@"bytes"];
  [v5 encodeInteger:self->_deliveredMessageCount forKey:@"deliveredMessageCount"];
  [v5 encodeInteger:self->_deliveredBytes forKey:@"deliveredBytes"];
}

@end