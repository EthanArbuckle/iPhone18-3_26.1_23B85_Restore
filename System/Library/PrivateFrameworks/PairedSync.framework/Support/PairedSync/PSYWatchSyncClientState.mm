@interface PSYWatchSyncClientState
- (BOOL)isEqual:(id)a3;
- (NSSet)activeActivityLabelsSet;
- (NSSet)completedActivityLabelsSet;
- (PSYWatchSyncClientState)initWithPlistRepresentation:(id)a3;
- (PSYWatchSyncClientState)initWithSyncSessionState:(unint64_t)a3 syncSessionType:(unint64_t)a4 migrationSync:(BOOL)a5 activities:(id)a6 completedActivities:(id)a7;
- (id)description;
- (id)plistRepresentation;
- (unint64_t)hash;
@end

@implementation PSYWatchSyncClientState

- (PSYWatchSyncClientState)initWithSyncSessionState:(unint64_t)a3 syncSessionType:(unint64_t)a4 migrationSync:(BOOL)a5 activities:(id)a6 completedActivities:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = PSYWatchSyncClientState;
  v15 = [(PSYWatchSyncClientState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_syncSessionState = a3;
    v15->_syncSessionType = a4;
    v15->_migrationSync = a5;
    objc_storeStrong(&v15->_activeActivityLabels, a6);
    objc_storeStrong(&v16->_completedActivityLabels, a7);
    v16->_version = 1;
  }

  return v16;
}

- (PSYWatchSyncClientState)initWithPlistRepresentation:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PSYWatchSyncClientState;
  v5 = [(PSYWatchSyncClientState *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"version"];
    v5->_version = [v6 unsignedIntegerValue];

    v7 = [v4 objectForKeyedSubscript:@"syncProgressState"];
    v5->_syncSessionState = [v7 unsignedIntegerValue];

    v8 = [v4 objectForKeyedSubscript:@"syncSessionType"];
    v5->_syncSessionType = [v8 unsignedIntegerValue];

    v9 = [v4 objectForKeyedSubscript:@"migrationSync"];
    v5->_migrationSync = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"activeActivityLabels"];
    activeActivityLabels = v5->_activeActivityLabels;
    v5->_activeActivityLabels = v10;

    v12 = [v4 objectForKeyedSubscript:@"completedActivityLabels"];
    completedActivityLabels = v5->_completedActivityLabels;
    v5->_completedActivityLabels = v12;
  }

  return v5;
}

- (NSSet)completedActivityLabelsSet
{
  completedActivityLabelsSet = self->_completedActivityLabelsSet;
  if (!completedActivityLabelsSet)
  {
    if (self->_completedActivityLabels)
    {
      v4 = [NSSet setWithArray:?];
      v5 = self->_completedActivityLabelsSet;
      self->_completedActivityLabelsSet = v4;

      completedActivityLabelsSet = self->_completedActivityLabelsSet;
    }

    else
    {
      completedActivityLabelsSet = 0;
    }
  }

  return completedActivityLabelsSet;
}

- (NSSet)activeActivityLabelsSet
{
  activeActivityLabelsSet = self->_activeActivityLabelsSet;
  if (!activeActivityLabelsSet)
  {
    if (self->_activeActivityLabels)
    {
      v4 = [NSSet setWithArray:?];
      v5 = self->_activeActivityLabelsSet;
      self->_activeActivityLabelsSet = v4;

      activeActivityLabelsSet = self->_activeActivityLabelsSet;
    }

    else
    {
      activeActivityLabelsSet = 0;
    }
  }

  return activeActivityLabelsSet;
}

- (id)plistRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:[(PSYWatchSyncClientState *)self version]];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = [NSNumber numberWithUnsignedInteger:[(PSYWatchSyncClientState *)self syncSessionState]];
  [v3 setObject:v5 forKeyedSubscript:@"syncProgressState"];

  v6 = [NSNumber numberWithUnsignedInteger:[(PSYWatchSyncClientState *)self syncSessionType]];
  [v3 setObject:v6 forKeyedSubscript:@"syncSessionType"];

  v7 = [NSNumber numberWithBool:[(PSYWatchSyncClientState *)self migrationSync]];
  [v3 setObject:v7 forKeyedSubscript:@"migrationSync"];

  v8 = [(PSYWatchSyncClientState *)self activeActivityLabels];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(PSYWatchSyncClientState *)self activeActivityLabels];
    [v3 setObject:v10 forKeyedSubscript:@"activeActivityLabels"];
  }

  v11 = [(PSYWatchSyncClientState *)self completedActivityLabels];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(PSYWatchSyncClientState *)self completedActivityLabels];
    [v3 setObject:v13 forKeyedSubscript:@"completedActivityLabels"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PSYWatchSyncClientState *)self syncSessionState];
  v4 = [(PSYWatchSyncClientState *)self syncSessionType]^ v3;
  v5 = [(PSYWatchSyncClientState *)self migrationSync];
  v6 = [(PSYWatchSyncClientState *)self activeActivityLabels];
  v7 = v4 ^ [v6 hash] ^ v5;
  v8 = [(PSYWatchSyncClientState *)self completedActivityLabels];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PSYWatchSyncClientState *)self syncSessionState];
    if (v6 == [v5 syncSessionState] && (v7 = -[PSYWatchSyncClientState syncSessionType](self, "syncSessionType"), v7 == objc_msgSend(v5, "syncSessionType")) && (v8 = -[PSYWatchSyncClientState migrationSync](self, "migrationSync"), v8 == objc_msgSend(v5, "migrationSync")))
    {
      v11 = [(PSYWatchSyncClientState *)self activeActivityLabels];
      v12 = [v5 activeActivityLabels];
      if ([v11 isEqual:v12])
      {
        v13 = [(PSYWatchSyncClientState *)self completedActivityLabels];
        v14 = [v5 completedActivityLabels];
        v9 = [v13 isEqual:v14];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PSYWatchSyncClientState *)self activeActivityLabels];
  v6 = [(PSYWatchSyncClientState *)self completedActivityLabels];
  v7 = sub_100016B74([(PSYWatchSyncClientState *)self syncSessionState]);
  v8 = [(PSYWatchSyncClientState *)self syncSessionType];
  v9 = @"Reunion";
  if (v8 != 1)
  {
    v9 = 0;
  }

  if (!v8)
  {
    v9 = @"Full";
  }

  v10 = v9;
  v11 = [(PSYWatchSyncClientState *)self migrationSync];
  v12 = "NO";
  if (v11)
  {
    v12 = "YES";
  }

  v13 = [NSString stringWithFormat:@"<%@ %p activeActivityLabels=%@ completedActivityLabels=%@; syncSessionState=%@; syncSessionType=%@ migrationSync=%s>", v4, self, v5, v6, v7, v10, v12];;

  return v13;
}

@end