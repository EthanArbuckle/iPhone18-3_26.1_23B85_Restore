@interface PSYWatchSyncClientState
- (BOOL)isEqual:(id)equal;
- (NSSet)activeActivityLabelsSet;
- (NSSet)completedActivityLabelsSet;
- (PSYWatchSyncClientState)initWithPlistRepresentation:(id)representation;
- (PSYWatchSyncClientState)initWithSyncSessionState:(unint64_t)state syncSessionType:(unint64_t)type migrationSync:(BOOL)sync activities:(id)activities completedActivities:(id)completedActivities;
- (id)description;
- (id)plistRepresentation;
- (unint64_t)hash;
@end

@implementation PSYWatchSyncClientState

- (PSYWatchSyncClientState)initWithSyncSessionState:(unint64_t)state syncSessionType:(unint64_t)type migrationSync:(BOOL)sync activities:(id)activities completedActivities:(id)completedActivities
{
  activitiesCopy = activities;
  completedActivitiesCopy = completedActivities;
  v18.receiver = self;
  v18.super_class = PSYWatchSyncClientState;
  v15 = [(PSYWatchSyncClientState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_syncSessionState = state;
    v15->_syncSessionType = type;
    v15->_migrationSync = sync;
    objc_storeStrong(&v15->_activeActivityLabels, activities);
    objc_storeStrong(&v16->_completedActivityLabels, completedActivities);
    v16->_version = 1;
  }

  return v16;
}

- (PSYWatchSyncClientState)initWithPlistRepresentation:(id)representation
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = PSYWatchSyncClientState;
  v5 = [(PSYWatchSyncClientState *)&v15 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"version"];
    v5->_version = [v6 unsignedIntegerValue];

    v7 = [representationCopy objectForKeyedSubscript:@"syncProgressState"];
    v5->_syncSessionState = [v7 unsignedIntegerValue];

    v8 = [representationCopy objectForKeyedSubscript:@"syncSessionType"];
    v5->_syncSessionType = [v8 unsignedIntegerValue];

    v9 = [representationCopy objectForKeyedSubscript:@"migrationSync"];
    v5->_migrationSync = [v9 BOOLValue];

    v10 = [representationCopy objectForKeyedSubscript:@"activeActivityLabels"];
    activeActivityLabels = v5->_activeActivityLabels;
    v5->_activeActivityLabels = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"completedActivityLabels"];
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

  activeActivityLabels = [(PSYWatchSyncClientState *)self activeActivityLabels];
  v9 = [activeActivityLabels count];

  if (v9)
  {
    activeActivityLabels2 = [(PSYWatchSyncClientState *)self activeActivityLabels];
    [v3 setObject:activeActivityLabels2 forKeyedSubscript:@"activeActivityLabels"];
  }

  completedActivityLabels = [(PSYWatchSyncClientState *)self completedActivityLabels];
  v12 = [completedActivityLabels count];

  if (v12)
  {
    completedActivityLabels2 = [(PSYWatchSyncClientState *)self completedActivityLabels];
    [v3 setObject:completedActivityLabels2 forKeyedSubscript:@"completedActivityLabels"];
  }

  return v3;
}

- (unint64_t)hash
{
  syncSessionState = [(PSYWatchSyncClientState *)self syncSessionState];
  v4 = [(PSYWatchSyncClientState *)self syncSessionType]^ syncSessionState;
  migrationSync = [(PSYWatchSyncClientState *)self migrationSync];
  activeActivityLabels = [(PSYWatchSyncClientState *)self activeActivityLabels];
  v7 = v4 ^ [activeActivityLabels hash] ^ migrationSync;
  completedActivityLabels = [(PSYWatchSyncClientState *)self completedActivityLabels];
  v9 = [completedActivityLabels hash];

  return v7 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    syncSessionState = [(PSYWatchSyncClientState *)self syncSessionState];
    if (syncSessionState == [v5 syncSessionState] && (v7 = -[PSYWatchSyncClientState syncSessionType](self, "syncSessionType"), v7 == objc_msgSend(v5, "syncSessionType")) && (v8 = -[PSYWatchSyncClientState migrationSync](self, "migrationSync"), v8 == objc_msgSend(v5, "migrationSync")))
    {
      activeActivityLabels = [(PSYWatchSyncClientState *)self activeActivityLabels];
      activeActivityLabels2 = [v5 activeActivityLabels];
      if ([activeActivityLabels isEqual:activeActivityLabels2])
      {
        completedActivityLabels = [(PSYWatchSyncClientState *)self completedActivityLabels];
        completedActivityLabels2 = [v5 completedActivityLabels];
        v9 = [completedActivityLabels isEqual:completedActivityLabels2];
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
  activeActivityLabels = [(PSYWatchSyncClientState *)self activeActivityLabels];
  completedActivityLabels = [(PSYWatchSyncClientState *)self completedActivityLabels];
  v7 = sub_100016B74([(PSYWatchSyncClientState *)self syncSessionState]);
  syncSessionType = [(PSYWatchSyncClientState *)self syncSessionType];
  v9 = @"Reunion";
  if (syncSessionType != 1)
  {
    v9 = 0;
  }

  if (!syncSessionType)
  {
    v9 = @"Full";
  }

  v10 = v9;
  migrationSync = [(PSYWatchSyncClientState *)self migrationSync];
  v12 = "NO";
  if (migrationSync)
  {
    v12 = "YES";
  }

  v13 = [NSString stringWithFormat:@"<%@ %p activeActivityLabels=%@ completedActivityLabels=%@; syncSessionState=%@; syncSessionType=%@ migrationSync=%s>", v4, self, activeActivityLabels, completedActivityLabels, v7, v10, v12];;

  return v13;
}

@end