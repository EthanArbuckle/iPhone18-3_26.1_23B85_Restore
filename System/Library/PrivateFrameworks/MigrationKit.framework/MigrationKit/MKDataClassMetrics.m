@interface MKDataClassMetrics
- (MKDataClassMetrics)initWithDictionary:(id)a3;
@end

@implementation MKDataClassMetrics

- (MKDataClassMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MKDataClassMetrics;
  v5 = [(MKDataClassMetrics *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    [(MKDataClassMetrics *)v5 setName:v6];

    v7 = [v4 objectForKey:@"size"];
    -[MKDataClassMetrics setSize:](v5, "setSize:", [v7 unsignedLongValue]);

    v8 = [v4 objectForKey:@"item_count"];
    -[MKDataClassMetrics setItemCount:](v5, "setItemCount:", [v8 intValue]);

    v9 = [v4 objectForKey:@"transfer_speed"];
    [v9 doubleValue];
    [(MKDataClassMetrics *)v5 setTransferSpeed:?];

    v10 = [v4 objectForKey:@"durations"];
    v11 = [v10 objectForKey:@"preparation"];
    [v11 doubleValue];
    [(MKDataClassMetrics *)v5 setPreparationTime:?];

    v12 = [v10 objectForKey:@"export"];
    [v12 doubleValue];
    [(MKDataClassMetrics *)v5 setExportTime:?];

    v13 = [v10 objectForKey:@"network_queue"];
    [v13 doubleValue];
    [(MKDataClassMetrics *)v5 setNetworkQueueTime:?];

    v14 = [v10 objectForKey:@"transfer"];
    [v14 doubleValue];
    [(MKDataClassMetrics *)v5 setTransferTime:?];
  }

  return v5;
}

@end