@interface PSYWatchSyncState
- (BOOL)isEqual:(id)a3;
- (PSYWatchSyncState)initWithActivityLabel:(id)a3 globalProgress:(int64_t)a4 syncProgressState:(unint64_t)a5;
- (PSYWatchSyncState)initWithPlistRepresentation:(id)a3;
- (id)description;
- (id)plistRepresentation;
- (unint64_t)hash;
@end

@implementation PSYWatchSyncState

- (PSYWatchSyncState)initWithActivityLabel:(id)a3 globalProgress:(int64_t)a4 syncProgressState:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PSYWatchSyncState;
  v10 = [(PSYWatchSyncState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activityLabel, a3);
    v11->_globalProgress = a4;
    v11->_syncProgressState = a5;
    v11->_version = 1;
  }

  return v11;
}

- (PSYWatchSyncState)initWithPlistRepresentation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PSYWatchSyncState;
  v5 = [(PSYWatchSyncState *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"activityLabel"];
    activityLabel = v5->_activityLabel;
    v5->_activityLabel = v6;

    v8 = [v4 objectForKeyedSubscript:@"version"];
    v5->_version = [v8 unsignedIntegerValue];

    v9 = [v4 objectForKeyedSubscript:@"syncProgressState"];
    v5->_syncProgressState = [v9 unsignedIntegerValue];

    v10 = [v4 objectForKeyedSubscript:@"globalProgress"];
    v5->_globalProgress = [v10 integerValue];
  }

  return v5;
}

- (id)plistRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:[(PSYWatchSyncState *)self version]];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = [NSNumber numberWithUnsignedInteger:[(PSYWatchSyncState *)self syncProgressState]];
  [v3 setObject:v5 forKeyedSubscript:@"syncProgressState"];

  v6 = [NSNumber numberWithInteger:[(PSYWatchSyncState *)self globalProgress]];
  [v3 setObject:v6 forKeyedSubscript:@"globalProgress"];

  v7 = [(PSYWatchSyncState *)self activityLabel];

  if (v7)
  {
    v8 = [(PSYWatchSyncState *)self activityLabel];
    [v3 setObject:v8 forKeyedSubscript:@"activityLabel"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PSYWatchSyncState *)self syncProgressState];
  v4 = [(PSYWatchSyncState *)self globalProgress]^ v3;
  v5 = [(PSYWatchSyncState *)self activityLabel];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PSYWatchSyncState *)self globalProgress];
    if (v6 == [v5 globalProgress] && (v7 = -[PSYWatchSyncState syncProgressState](self, "syncProgressState"), v7 == objc_msgSend(v5, "syncProgressState")))
    {
      v8 = [(PSYWatchSyncState *)self activityLabel];
      v9 = [v5 activityLabel];
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        v10 = [(PSYWatchSyncState *)self activityLabel];
        v11 = [v5 activityLabel];
        v12 = [v10 isEqualToString:v11];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PSYWatchSyncState *)self activityLabel];
  v6 = [(PSYWatchSyncState *)self syncProgressState];
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_10002CE20 + v6);
  }

  v8 = [NSNumber numberWithInteger:[(PSYWatchSyncState *)self globalProgress]];
  v9 = [NSString stringWithFormat:@"<%@ %p activityLabel=%@ syncProgressState=%@; globalProgress=%@>", v4, self, v5, v7, v8];;

  return v9;
}

@end