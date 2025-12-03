@interface PSYWatchSyncState
- (BOOL)isEqual:(id)equal;
- (PSYWatchSyncState)initWithActivityLabel:(id)label globalProgress:(int64_t)progress syncProgressState:(unint64_t)state;
- (PSYWatchSyncState)initWithPlistRepresentation:(id)representation;
- (id)description;
- (id)plistRepresentation;
- (unint64_t)hash;
@end

@implementation PSYWatchSyncState

- (PSYWatchSyncState)initWithActivityLabel:(id)label globalProgress:(int64_t)progress syncProgressState:(unint64_t)state
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = PSYWatchSyncState;
  v10 = [(PSYWatchSyncState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activityLabel, label);
    v11->_globalProgress = progress;
    v11->_syncProgressState = state;
    v11->_version = 1;
  }

  return v11;
}

- (PSYWatchSyncState)initWithPlistRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = PSYWatchSyncState;
  v5 = [(PSYWatchSyncState *)&v12 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"activityLabel"];
    activityLabel = v5->_activityLabel;
    v5->_activityLabel = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"version"];
    v5->_version = [v8 unsignedIntegerValue];

    v9 = [representationCopy objectForKeyedSubscript:@"syncProgressState"];
    v5->_syncProgressState = [v9 unsignedIntegerValue];

    v10 = [representationCopy objectForKeyedSubscript:@"globalProgress"];
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

  activityLabel = [(PSYWatchSyncState *)self activityLabel];

  if (activityLabel)
  {
    activityLabel2 = [(PSYWatchSyncState *)self activityLabel];
    [v3 setObject:activityLabel2 forKeyedSubscript:@"activityLabel"];
  }

  return v3;
}

- (unint64_t)hash
{
  syncProgressState = [(PSYWatchSyncState *)self syncProgressState];
  v4 = [(PSYWatchSyncState *)self globalProgress]^ syncProgressState;
  activityLabel = [(PSYWatchSyncState *)self activityLabel];
  v6 = [activityLabel hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    globalProgress = [(PSYWatchSyncState *)self globalProgress];
    if (globalProgress == [v5 globalProgress] && (v7 = -[PSYWatchSyncState syncProgressState](self, "syncProgressState"), v7 == objc_msgSend(v5, "syncProgressState")))
    {
      activityLabel = [(PSYWatchSyncState *)self activityLabel];
      activityLabel2 = [v5 activityLabel];
      if (activityLabel == activityLabel2)
      {
        v12 = 1;
      }

      else
      {
        activityLabel3 = [(PSYWatchSyncState *)self activityLabel];
        activityLabel4 = [v5 activityLabel];
        v12 = [activityLabel3 isEqualToString:activityLabel4];
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
  activityLabel = [(PSYWatchSyncState *)self activityLabel];
  syncProgressState = [(PSYWatchSyncState *)self syncProgressState];
  if (syncProgressState > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_10002CE20 + syncProgressState);
  }

  v8 = [NSNumber numberWithInteger:[(PSYWatchSyncState *)self globalProgress]];
  v9 = [NSString stringWithFormat:@"<%@ %p activityLabel=%@ syncProgressState=%@; globalProgress=%@>", v4, self, activityLabel, v7, v8];;

  return v9;
}

@end