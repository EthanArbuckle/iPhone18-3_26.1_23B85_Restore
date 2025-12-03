@interface MBCKDomainStatistics
- (MBCKDomainStatistics)initWithDomainName:(id)name;
- (MBCKDomainStatistics)initWithSnapshotName:(id)name;
- (id)description;
- (void)addValue:(id)value toKey:(id)key;
- (void)analyzeChurnWithFileCount:(unint64_t)count withTotalFileSize:(unint64_t)size;
- (void)updateWithFile:(id)file;
@end

@implementation MBCKDomainStatistics

- (MBCKDomainStatistics)initWithDomainName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MBCKDomainStatistics;
  v6 = [(MBCKDomainStatistics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domainName, name);
    v8 = objc_alloc_init(NSMutableDictionary);
    statistics = v7->_statistics;
    v7->_statistics = v8;
  }

  return v7;
}

- (MBCKDomainStatistics)initWithSnapshotName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MBCKDomainStatistics;
  v6 = [(MBCKDomainStatistics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotName, name);
    v8 = objc_alloc_init(NSMutableDictionary);
    statistics = v7->_statistics;
    v7->_statistics = v8;
  }

  return v7;
}

- (void)addValue:(id)value toKey:(id)key
{
  statistics = self->_statistics;
  keyCopy = key;
  valueCopy = value;
  v9 = [(NSMutableDictionary *)statistics objectForKeyedSubscript:keyCopy];
  if (!v9)
  {
    v9 = &off_1003E0ED0;
  }

  v13 = v9;
  unsignedLongLongValue = [v9 unsignedLongLongValue];
  unsignedLongLongValue2 = [valueCopy unsignedLongLongValue];

  v12 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue[unsignedLongLongValue2]];
  [(NSMutableDictionary *)self->_statistics setObject:v12 forKeyedSubscript:keyCopy];
}

- (void)updateWithFile:(id)file
{
  fileCopy = file;
  if ([fileCopy deleted])
  {
    [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"DeletionMarkerCount"];
  }

  else
  {
    if ([fileCopy isDirectory])
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"DirectoryCount"];
    }

    if ([fileCopy isRegularFile])
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"FileCount"];
      if ([fileCopy hasAbsolutePath])
      {
        if ([fileCopy isSQLiteFile])
        {
          [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"SQLiteFileCount"];
          v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [fileCopy size]);
          [(MBCKDomainStatistics *)self addValue:v5 toKey:@"TotalSQLiteFileSize"];
        }

        v15 = 0;
        absolutePath = [fileCopy absolutePath];
        v7 = fsctl([absolutePath fileSystemRepresentation], 0x40044A09uLL, &v15, 0);
        v8 = v15;

        if (!v7 && v8)
        {
          [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"SparseFileCount"];
        }
      }
    }

    if ([fileCopy isSymbolicLink])
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"SymLinkCount"];
    }

    v9 = [fileCopy protectionClass] + 1;
    if (v9 <= 8u)
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:off_1003C0BE0[v9]];
    }

    if ([fileCopy size])
    {
      v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [fileCopy size]);
      [(MBCKDomainStatistics *)self addValue:v10 toKey:@"TotalFileSize"];
    }

    if ([fileCopy resourcesSize])
    {
      v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [fileCopy resourcesSize]);
      [(MBCKDomainStatistics *)self addValue:v11 toKey:@"TotalResourceSize"];
    }
  }

  v12 = [fileCopy attributeDataWithError:0];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 length]);
    [(MBCKDomainStatistics *)self addValue:v14 toKey:@"TotalAttributeSize"];
  }
}

- (void)analyzeChurnWithFileCount:(unint64_t)count withTotalFileSize:(unint64_t)size
{
  v19 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"DirectoryCount"];
  v7 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"FileCount"];
  v8 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"SymLinkCount"];
  v9 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"DeletionMarkerCount"];
  unsignedLongLongValue = [v19 unsignedLongLongValue];
  v11 = &unsignedLongLongValue[[v7 unsignedLongLongValue]];
  unsignedLongLongValue2 = [v8 unsignedLongLongValue];
  v13 = &v11[[v9 unsignedLongLongValue] + unsignedLongLongValue2] / count * 100.0;
  v14 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"TotalFileSize", v13];
  unsignedLongLongValue3 = [v14 unsignedLongLongValue];

  v16 = unsignedLongLongValue3 / size * 100.0;
  v17 = [NSNumber numberWithDouble:v13];
  [(NSMutableDictionary *)self->_statistics setObject:v17 forKeyedSubscript:@"RecordChurnPct"];

  v18 = [NSNumber numberWithDouble:v16];
  [(NSMutableDictionary *)self->_statistics setObject:v18 forKeyedSubscript:@"ContentChurnPct"];
}

- (id)description
{
  v3 = [NSString alloc];
  domainName = self->_domainName;
  if (!domainName)
  {
    domainName = self->_snapshotName;
  }

  v5 = [v3 initWithFormat:@"%@ %@", domainName, self->_statistics];

  return v5;
}

@end