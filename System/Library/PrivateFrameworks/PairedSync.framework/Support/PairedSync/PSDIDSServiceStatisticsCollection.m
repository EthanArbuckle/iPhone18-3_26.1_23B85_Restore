@interface PSDIDSServiceStatisticsCollection
+ (id)knownChannelNames;
+ (id)statisticsCollectionWithChannelName:(id)a3 statisticsDictionary:(id)a4;
- (PSDIDSServiceStatisticsCollection)init;
- (PSDIDSServiceStatisticsCollection)initWithCoder:(id)a3;
- (id)description;
- (id)statisticsCollectionByDiffingStatisticsCollection:(id)a3;
- (void)addServiceStatistics:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateServiceStatisticsWithBlock:(id)a3;
@end

@implementation PSDIDSServiceStatisticsCollection

- (PSDIDSServiceStatisticsCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PSDIDSServiceStatisticsCollection;
  v5 = [(PSDIDSServiceStatisticsCollection *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelName"];
    channelName = v5->_channelName;
    v5->_channelName = v6;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v20 count:3];
    v9 = [NSSet setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"statistics"];
    v11 = [v10 mutableCopy];
    statistics = v5->_statistics;
    v5->_statistics = v11;

    if (!v5->_channelName || !v5->_statistics)
    {
      v13 = psd_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v15 = psd_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10001B1D4(v15);
        }
      }

      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = v5->_statistics;
      v5->_statistics = v16;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  channelName = self->_channelName;
  v5 = a3;
  [v5 encodeObject:channelName forKey:@"channelName"];
  [v5 encodeObject:self->_statistics forKey:@"statistics"];
}

+ (id)statisticsCollectionWithChannelName:(id)a3 statisticsDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setChannelName:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C7F4;
  v11[3] = &unk_10002CAF0;
  v9 = v8;
  v12 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

+ (id)knownChannelNames
{
  v4[0] = @"urgentMessagesStats";
  v4[1] = @"defaultMessagesStats";
  v4[2] = @"syncMessagesStats";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (PSDIDSServiceStatisticsCollection)init
{
  v6.receiver = self;
  v6.super_class = PSDIDSServiceStatisticsCollection;
  v2 = [(PSDIDSServiceStatisticsCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    statistics = v2->_statistics;
    v2->_statistics = v3;
  }

  return v2;
}

- (void)enumerateServiceStatisticsWithBlock:(id)a3
{
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_statistics allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addServiceStatistics:(id)a3
{
  v5 = a3;
  v4 = [v5 serviceName];
  if (v4)
  {
    [(NSMutableDictionary *)self->_statistics setObject:v5 forKeyedSubscript:v4];
  }
}

- (id)statisticsCollectionByDiffingStatisticsCollection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PSDIDSServiceStatisticsCollection);
  v6 = [(PSDIDSServiceStatisticsCollection *)self channelName];
  [(PSDIDSServiceStatisticsCollection *)v5 setChannelName:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000CC30;
  v12[3] = &unk_10002C6F8;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PSDIDSServiceStatisticsCollection *)self enumerateServiceStatisticsWithBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PSDIDSServiceStatisticsCollection *)self channelName];
  v6 = [NSMutableString stringWithFormat:@"<%@ %p channelName=%@;\n", v4, self, v5];;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CDD4;
  v9[3] = &unk_10002CA40;
  v7 = v6;
  v10 = v7;
  [(PSDIDSServiceStatisticsCollection *)self enumerateServiceStatisticsWithBlock:v9];
  [v7 appendString:@">"];

  return v7;
}

@end