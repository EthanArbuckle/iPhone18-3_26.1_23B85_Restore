@interface NPTMetadataEvent
- (NPTMetadataEvent)initWithCoder:(id)a3;
- (NSDictionary)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPTMetadataEvent

- (NSDictionary)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTMetadataEvent *)self collectorType];
  if ([objc_opt_class() conformsToProtocol:&unk_2848D1670])
  {
    [(NPTMetadataEvent *)self collectorType];
    v5 = [objc_opt_class() collectorName];
    [v4 setObject:v5 forKeyedSubscript:@"collector_type"];
  }

  v6 = [NPTMetadataEventTypeConverter getTypeAsString:[(NPTMetadataEvent *)self eventType]];
  [v4 setObject:v6 forKeyedSubscript:@"event_type"];

  [(NPTMetadataEvent *)self timeSinceStart];
  if (v7 <= 0.0)
  {
    [v4 setObject:0 forKeyedSubscript:@"time_since_start"];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCABB0]);
    [(NPTMetadataEvent *)self timeSinceStart];
    v9 = [v8 initWithDouble:?];
    [v4 setObject:v9 forKeyedSubscript:@"time_since_start"];
  }

  v10 = [(NPTMetadataEvent *)self timeStamp];
  v11 = [v3 stringFromDate:v10];
  [v4 setObject:v11 forKeyedSubscript:@"time_stamp"];

  v12 = [(NPTMetadataEvent *)self data];
  [v4 setObject:v12 forKeyedSubscript:@"data"];

  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromClass([(objc_class *)[(NPTMetadataEvent *)self collectorType] classForCoder]);
  [v4 encodeObject:v5 forKey:@"collector_type"];

  [v4 encodeInt32:-[NPTMetadataEvent eventType](self forKey:{"eventType"), @"event_type"}];
  v6 = [(NPTMetadataEvent *)self timeStamp];
  [v4 encodeObject:v6 forKey:@"time_stamp"];

  v7 = [(NPTMetadataEvent *)self data];
  [v4 encodeObject:v7 forKey:@"data"];
}

- (NPTMetadataEvent)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = NPTMetadataEvent;
  v3 = a3;
  v4 = [(NPTMetadataEvent *)&v14 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"collector_type"];
  [(NPTMetadataEvent *)v4 setCollectorType:NSClassFromString(v5)];

  -[NPTMetadataEvent setEventType:](v4, "setEventType:", [v3 decodeInt32ForKey:@"event_type"]);
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"time_stamp"];
  [(NPTMetadataEvent *)v4 setTimeStamp:v6];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0, v14.receiver, v14.super_class}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"data"];

  [(NPTMetadataEvent *)v4 setData:v12];
  return v4;
}

@end