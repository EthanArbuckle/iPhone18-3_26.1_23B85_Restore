@interface _EDThreadScopeInfo
- (_EDThreadScopeInfo)initWithDatabaseID:(int64_t)a3 needsUpdate:(BOOL)a4 lastViewedDate:(id)a5;
- (id)description;
@end

@implementation _EDThreadScopeInfo

- (_EDThreadScopeInfo)initWithDatabaseID:(int64_t)a3 needsUpdate:(BOOL)a4 lastViewedDate:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _EDThreadScopeInfo;
  v10 = [(_EDThreadScopeInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_databaseID = a3;
    v10->_needsUpdate = a4;
    objc_storeStrong(&v10->_lastViewedDate, a5);
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(_EDThreadScopeInfo *)self databaseID];
  if ([(_EDThreadScopeInfo *)self needsUpdate])
  {
    v5 = @", needs update";
  }

  else
  {
    v5 = &stru_1F45B4608;
  }

  v6 = [(_EDThreadScopeInfo *)self lastViewedDate];
  v7 = [v3 initWithFormat:@"%lld%@, last viewed: %@", v4, v5, v6];

  return v7;
}

@end