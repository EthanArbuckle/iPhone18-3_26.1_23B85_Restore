@interface PSYSyncSessionActivity
- (BOOL)isEqual:(id)a3;
- (PSYSyncSessionActivity)initWithActivityInfo:(id)a3 progress:(double)a4 error:(id)a5 state:(unint64_t)a6 finishedSending:(BOOL)a7 interruptionCount:(int64_t)a8 startDropoutCount:(unint64_t)a9 sawADropout:(BOOL)a10;
- (PSYSyncSessionActivity)initWithCoder:(id)a3;
- (id)syncSessionActivityByUpdatingProgress:(double)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSYSyncSessionActivity

- (id)syncSessionActivityByUpdatingProgress:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_sawADropout;
  v6 = [v5 initWithActivityInfo:self->_activityInfo progress:self->_error error:self->_activityState state:self->_finishedSending finishedSending:self->_interruptionCount interruptionCount:self->_startDropoutCount startDropoutCount:a3 sawADropout:v8];

  return v6;
}

- (PSYSyncSessionActivity)initWithActivityInfo:(id)a3 progress:(double)a4 error:(id)a5 state:(unint64_t)a6 finishedSending:(BOOL)a7 interruptionCount:(int64_t)a8 startDropoutCount:(unint64_t)a9 sawADropout:(BOOL)a10
{
  v17 = a3;
  v18 = a5;
  v22.receiver = self;
  v22.super_class = PSYSyncSessionActivity;
  v19 = [(PSYSyncSessionActivity *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_activityInfo, a3);
    v20->_activityProgress = a4;
    objc_storeStrong(&v20->_error, a5);
    v20->_activityState = a6;
    v20->_interruptionCount = a8;
    v20->_startDropoutCount = a9;
    v20->_sawADropout = a10;
  }

  return v20;
}

- (PSYSyncSessionActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PSYSyncSessionActivity;
  v5 = [(PSYSyncSessionActivity *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityInfo"];
    activityInfo = v5->_activityInfo;
    v5->_activityInfo = v6;

    [v4 decodeDoubleForKey:@"activityProgress"];
    v5->_activityProgress = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v9;

    v5->_activityState = [v4 decodeIntegerForKey:@"activityState"];
    v5->_finishedSending = [v4 decodeBoolForKey:@"finishedSending"];
    v5->_interruptionCount = [v4 decodeIntegerForKey:@"interruptionCount"];
    v5->_startDropoutCount = [v4 decodeInt64ForKey:@"startDropoutCount"];
    v5->_sawADropout = [v4 decodeBoolForKey:@"sawADropout"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activityInfo = self->_activityInfo;
  v5 = a3;
  [v5 encodeObject:activityInfo forKey:@"activityInfo"];
  [v5 encodeDouble:@"activityProgress" forKey:self->_activityProgress];
  [v5 encodeObject:self->_error forKey:@"error"];
  [v5 encodeInteger:self->_activityState forKey:@"activityState"];
  [v5 encodeBool:self->_finishedSending forKey:@"finishedSending"];
  [v5 encodeInteger:self->_interruptionCount forKey:@"interruptionCount"];
  [v5 encodeInt64:self->_startDropoutCount forKey:@"startDropoutCount"];
  [v5 encodeBool:self->_sawADropout forKey:@"sawADropout"];
}

- (unint64_t)hash
{
  v2 = [(PSYActivityInfo *)self->_activityInfo label];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5->_activityInfo == self->_activityInfo && v5->_error == self->_error && v5->_activityState == self->_activityState && v5->_finishedSending == self->_finishedSending && vabdd_f64(v5->_activityProgress, self->_activityProgress) < 0.00000011920929 && v5->_interruptionCount == self->_interruptionCount && v5->_startDropoutCount == self->_startDropoutCount && v5->_sawADropout == self->_sawADropout;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end