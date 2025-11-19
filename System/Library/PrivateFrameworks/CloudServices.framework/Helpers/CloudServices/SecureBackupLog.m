@interface SecureBackupLog
- (BOOL)isEqual:(id)a3;
- (SecureBackupLog)initWithActivities:(id)a3 allComplete:(BOOL)a4 totalOperations:(unint64_t)a5;
- (SecureBackupLog)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAllOperationsWithBlock:(id)a3;
@end

@implementation SecureBackupLog

- (SecureBackupLog)initWithActivities:(id)a3 allComplete:(BOOL)a4 totalOperations:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = SecureBackupLog;
  v10 = [(SecureBackupLog *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activities, a3);
    v11->_allActivitiesComplete = a4;
    v11->_totalOperations = a5;
    v12 = v11;
  }

  return v11;
}

- (SecureBackupLog)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SecureBackupLog;
  v5 = [(SecureBackupLog *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allActivitiesComplete"];
    v7 = [v6 BOOLValue];

    v5->_allActivitiesComplete = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalOperations"];
    v9 = [v8 unsignedIntegerValue];

    v5->_totalOperations = v9;
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"activities"];
    if (v10)
    {
      v11 = objc_opt_self();

      activities = v5->_activities;
      v5->_activities = v11;

      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  allActivitiesComplete = self->_allActivitiesComplete;
  v7 = a3;
  v5 = [NSNumber numberWithBool:allActivitiesComplete];
  [v7 encodeObject:v5 forKey:@"allActivitiesComplete"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_totalOperations];
  [v7 encodeObject:v6 forKey:@"totalOperations"];

  [v7 encodeObject:self->_activities forKey:@"activities"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupLog *)self allActivitiesComplete];
  if (v5 == [v4 allActivitiesComplete] && (v6 = -[SecureBackupLog totalOperations](self, "totalOperations"), v6 == objc_msgSend(v4, "totalOperations")))
  {
    v7 = [(SecureBackupLog *)self activities];
    v8 = [v4 activities];
    if ([v7 isEqual:v8])
    {

      v9 = 1;
    }

    else
    {
      v11 = [(SecureBackupLog *)self activities];
      v12 = [v4 activities];
      v9 = v11 == v12;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateAllOperationsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupLog *)self activities];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033CD8;
  v7[3] = &unk_100075BF8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

@end