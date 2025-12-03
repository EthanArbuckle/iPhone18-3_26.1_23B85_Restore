@interface PSDIDSServiceStatisticsCollection
+ (id)knownChannelNames;
+ (id)statisticsCollectionWithChannelName:(id)name statisticsDictionary:(id)dictionary;
- (PSDIDSServiceStatisticsCollection)init;
- (PSDIDSServiceStatisticsCollection)initWithCoder:(id)coder;
- (id)description;
- (id)statisticsCollectionByDiffingStatisticsCollection:(id)collection;
- (void)addServiceStatistics:(id)statistics;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateServiceStatisticsWithBlock:(id)block;
@end

@implementation PSDIDSServiceStatisticsCollection

- (PSDIDSServiceStatisticsCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PSDIDSServiceStatisticsCollection;
  v5 = [(PSDIDSServiceStatisticsCollection *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelName"];
    channelName = v5->_channelName;
    v5->_channelName = v6;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v20 count:3];
    v9 = [NSSet setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"statistics"];
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

- (void)encodeWithCoder:(id)coder
{
  channelName = self->_channelName;
  coderCopy = coder;
  [coderCopy encodeObject:channelName forKey:@"channelName"];
  [coderCopy encodeObject:self->_statistics forKey:@"statistics"];
}

+ (id)statisticsCollectionWithChannelName:(id)name statisticsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v8 = objc_alloc_init(self);
  [v8 setChannelName:nameCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C7F4;
  v11[3] = &unk_10002CAF0;
  v9 = v8;
  v12 = v9;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v11];

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

- (void)enumerateServiceStatisticsWithBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_statistics allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
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
        objc_enumerationMutation(allValues);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addServiceStatistics:(id)statistics
{
  statisticsCopy = statistics;
  serviceName = [statisticsCopy serviceName];
  if (serviceName)
  {
    [(NSMutableDictionary *)self->_statistics setObject:statisticsCopy forKeyedSubscript:serviceName];
  }
}

- (id)statisticsCollectionByDiffingStatisticsCollection:(id)collection
{
  collectionCopy = collection;
  v5 = objc_alloc_init(PSDIDSServiceStatisticsCollection);
  channelName = [(PSDIDSServiceStatisticsCollection *)self channelName];
  [(PSDIDSServiceStatisticsCollection *)v5 setChannelName:channelName];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000CC30;
  v12[3] = &unk_10002C6F8;
  v13 = collectionCopy;
  v7 = v5;
  v14 = v7;
  v8 = collectionCopy;
  [(PSDIDSServiceStatisticsCollection *)self enumerateServiceStatisticsWithBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  channelName = [(PSDIDSServiceStatisticsCollection *)self channelName];
  v6 = [NSMutableString stringWithFormat:@"<%@ %p channelName=%@;\n", v4, self, channelName];;

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