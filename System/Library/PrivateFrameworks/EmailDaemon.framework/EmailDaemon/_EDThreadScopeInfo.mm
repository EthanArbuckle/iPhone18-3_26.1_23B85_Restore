@interface _EDThreadScopeInfo
- (_EDThreadScopeInfo)initWithDatabaseID:(int64_t)d needsUpdate:(BOOL)update lastViewedDate:(id)date;
- (id)description;
@end

@implementation _EDThreadScopeInfo

- (_EDThreadScopeInfo)initWithDatabaseID:(int64_t)d needsUpdate:(BOOL)update lastViewedDate:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = _EDThreadScopeInfo;
  v10 = [(_EDThreadScopeInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_databaseID = d;
    v10->_needsUpdate = update;
    objc_storeStrong(&v10->_lastViewedDate, date);
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  databaseID = [(_EDThreadScopeInfo *)self databaseID];
  if ([(_EDThreadScopeInfo *)self needsUpdate])
  {
    v5 = @", needs update";
  }

  else
  {
    v5 = &stru_1F45B4608;
  }

  lastViewedDate = [(_EDThreadScopeInfo *)self lastViewedDate];
  v7 = [v3 initWithFormat:@"%lld%@, last viewed: %@", databaseID, v5, lastViewedDate];

  return v7;
}

@end