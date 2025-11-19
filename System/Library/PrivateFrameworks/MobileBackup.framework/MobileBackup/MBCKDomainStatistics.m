@interface MBCKDomainStatistics
- (MBCKDomainStatistics)initWithDomainName:(id)a3;
- (MBCKDomainStatistics)initWithSnapshotName:(id)a3;
- (id)description;
- (void)addValue:(id)a3 toKey:(id)a4;
- (void)analyzeChurnWithFileCount:(unint64_t)a3 withTotalFileSize:(unint64_t)a4;
- (void)updateWithFile:(id)a3;
@end

@implementation MBCKDomainStatistics

- (MBCKDomainStatistics)initWithDomainName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MBCKDomainStatistics;
  v6 = [(MBCKDomainStatistics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domainName, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    statistics = v7->_statistics;
    v7->_statistics = v8;
  }

  return v7;
}

- (MBCKDomainStatistics)initWithSnapshotName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MBCKDomainStatistics;
  v6 = [(MBCKDomainStatistics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotName, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    statistics = v7->_statistics;
    v7->_statistics = v8;
  }

  return v7;
}

- (void)addValue:(id)a3 toKey:(id)a4
{
  statistics = self->_statistics;
  v7 = a4;
  v8 = a3;
  v9 = [(NSMutableDictionary *)statistics objectForKeyedSubscript:v7];
  if (!v9)
  {
    v9 = &off_1003E0ED0;
  }

  v13 = v9;
  v10 = [v9 unsignedLongLongValue];
  v11 = [v8 unsignedLongLongValue];

  v12 = [NSNumber numberWithUnsignedLongLong:&v10[v11]];
  [(NSMutableDictionary *)self->_statistics setObject:v12 forKeyedSubscript:v7];
}

- (void)updateWithFile:(id)a3
{
  v4 = a3;
  if ([v4 deleted])
  {
    [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"DeletionMarkerCount"];
  }

  else
  {
    if ([v4 isDirectory])
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"DirectoryCount"];
    }

    if ([v4 isRegularFile])
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"FileCount"];
      if ([v4 hasAbsolutePath])
      {
        if ([v4 isSQLiteFile])
        {
          [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"SQLiteFileCount"];
          v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 size]);
          [(MBCKDomainStatistics *)self addValue:v5 toKey:@"TotalSQLiteFileSize"];
        }

        v15 = 0;
        v6 = [v4 absolutePath];
        v7 = fsctl([v6 fileSystemRepresentation], 0x40044A09uLL, &v15, 0);
        v8 = v15;

        if (!v7 && v8)
        {
          [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"SparseFileCount"];
        }
      }
    }

    if ([v4 isSymbolicLink])
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:@"SymLinkCount"];
    }

    v9 = [v4 protectionClass] + 1;
    if (v9 <= 8u)
    {
      [(MBCKDomainStatistics *)self addValue:&off_1003E0EE8 toKey:off_1003C0BE0[v9]];
    }

    if ([v4 size])
    {
      v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 size]);
      [(MBCKDomainStatistics *)self addValue:v10 toKey:@"TotalFileSize"];
    }

    if ([v4 resourcesSize])
    {
      v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 resourcesSize]);
      [(MBCKDomainStatistics *)self addValue:v11 toKey:@"TotalResourceSize"];
    }
  }

  v12 = [v4 attributeDataWithError:0];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 length]);
    [(MBCKDomainStatistics *)self addValue:v14 toKey:@"TotalAttributeSize"];
  }
}

- (void)analyzeChurnWithFileCount:(unint64_t)a3 withTotalFileSize:(unint64_t)a4
{
  v19 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"DirectoryCount"];
  v7 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"FileCount"];
  v8 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"SymLinkCount"];
  v9 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"DeletionMarkerCount"];
  v10 = [v19 unsignedLongLongValue];
  v11 = &v10[[v7 unsignedLongLongValue]];
  v12 = [v8 unsignedLongLongValue];
  v13 = &v11[[v9 unsignedLongLongValue] + v12] / a3 * 100.0;
  v14 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:@"TotalFileSize", v13];
  v15 = [v14 unsignedLongLongValue];

  v16 = v15 / a4 * 100.0;
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