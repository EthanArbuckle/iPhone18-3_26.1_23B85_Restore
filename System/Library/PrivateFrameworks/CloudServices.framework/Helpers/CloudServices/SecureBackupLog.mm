@interface SecureBackupLog
- (BOOL)isEqual:(id)equal;
- (SecureBackupLog)initWithActivities:(id)activities allComplete:(BOOL)complete totalOperations:(unint64_t)operations;
- (SecureBackupLog)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAllOperationsWithBlock:(id)block;
@end

@implementation SecureBackupLog

- (SecureBackupLog)initWithActivities:(id)activities allComplete:(BOOL)complete totalOperations:(unint64_t)operations
{
  activitiesCopy = activities;
  v14.receiver = self;
  v14.super_class = SecureBackupLog;
  v10 = [(SecureBackupLog *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activities, activities);
    v11->_allActivitiesComplete = complete;
    v11->_totalOperations = operations;
    v12 = v11;
  }

  return v11;
}

- (SecureBackupLog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SecureBackupLog;
  v5 = [(SecureBackupLog *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allActivitiesComplete"];
    bOOLValue = [v6 BOOLValue];

    v5->_allActivitiesComplete = bOOLValue;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalOperations"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    v5->_totalOperations = unsignedIntegerValue;
    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"activities"];
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

- (void)encodeWithCoder:(id)coder
{
  allActivitiesComplete = self->_allActivitiesComplete;
  coderCopy = coder;
  v5 = [NSNumber numberWithBool:allActivitiesComplete];
  [coderCopy encodeObject:v5 forKey:@"allActivitiesComplete"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_totalOperations];
  [coderCopy encodeObject:v6 forKey:@"totalOperations"];

  [coderCopy encodeObject:self->_activities forKey:@"activities"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  allActivitiesComplete = [(SecureBackupLog *)self allActivitiesComplete];
  if (allActivitiesComplete == [equalCopy allActivitiesComplete] && (v6 = -[SecureBackupLog totalOperations](self, "totalOperations"), v6 == objc_msgSend(equalCopy, "totalOperations")))
  {
    activities = [(SecureBackupLog *)self activities];
    activities2 = [equalCopy activities];
    if ([activities isEqual:activities2])
    {

      v9 = 1;
    }

    else
    {
      activities3 = [(SecureBackupLog *)self activities];
      activities4 = [equalCopy activities];
      v9 = activities3 == activities4;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateAllOperationsWithBlock:(id)block
{
  blockCopy = block;
  activities = [(SecureBackupLog *)self activities];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033CD8;
  v7[3] = &unk_100075BF8;
  v8 = blockCopy;
  v6 = blockCopy;
  [activities enumerateObjectsUsingBlock:v7];
}

@end