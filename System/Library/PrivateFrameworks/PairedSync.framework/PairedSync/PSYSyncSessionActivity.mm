@interface PSYSyncSessionActivity
- (BOOL)isEqual:(id)equal;
- (PSYSyncSessionActivity)initWithActivityInfo:(id)info progress:(double)progress error:(id)error state:(unint64_t)state finishedSending:(BOOL)sending interruptionCount:(int64_t)count startDropoutCount:(unint64_t)dropoutCount sawADropout:(BOOL)self0;
- (PSYSyncSessionActivity)initWithCoder:(id)coder;
- (id)syncSessionActivityByUpdatingProgress:(double)progress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSYSyncSessionActivity

- (id)syncSessionActivityByUpdatingProgress:(double)progress
{
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_sawADropout;
  v6 = [v5 initWithActivityInfo:self->_activityInfo progress:self->_error error:self->_activityState state:self->_finishedSending finishedSending:self->_interruptionCount interruptionCount:self->_startDropoutCount startDropoutCount:progress sawADropout:v8];

  return v6;
}

- (PSYSyncSessionActivity)initWithActivityInfo:(id)info progress:(double)progress error:(id)error state:(unint64_t)state finishedSending:(BOOL)sending interruptionCount:(int64_t)count startDropoutCount:(unint64_t)dropoutCount sawADropout:(BOOL)self0
{
  infoCopy = info;
  errorCopy = error;
  v22.receiver = self;
  v22.super_class = PSYSyncSessionActivity;
  v19 = [(PSYSyncSessionActivity *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_activityInfo, info);
    v20->_activityProgress = progress;
    objc_storeStrong(&v20->_error, error);
    v20->_activityState = state;
    v20->_interruptionCount = count;
    v20->_startDropoutCount = dropoutCount;
    v20->_sawADropout = dropout;
  }

  return v20;
}

- (PSYSyncSessionActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PSYSyncSessionActivity;
  v5 = [(PSYSyncSessionActivity *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityInfo"];
    activityInfo = v5->_activityInfo;
    v5->_activityInfo = v6;

    [coderCopy decodeDoubleForKey:@"activityProgress"];
    v5->_activityProgress = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v9;

    v5->_activityState = [coderCopy decodeIntegerForKey:@"activityState"];
    v5->_finishedSending = [coderCopy decodeBoolForKey:@"finishedSending"];
    v5->_interruptionCount = [coderCopy decodeIntegerForKey:@"interruptionCount"];
    v5->_startDropoutCount = [coderCopy decodeInt64ForKey:@"startDropoutCount"];
    v5->_sawADropout = [coderCopy decodeBoolForKey:@"sawADropout"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityInfo = self->_activityInfo;
  coderCopy = coder;
  [coderCopy encodeObject:activityInfo forKey:@"activityInfo"];
  [coderCopy encodeDouble:@"activityProgress" forKey:self->_activityProgress];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeInteger:self->_activityState forKey:@"activityState"];
  [coderCopy encodeBool:self->_finishedSending forKey:@"finishedSending"];
  [coderCopy encodeInteger:self->_interruptionCount forKey:@"interruptionCount"];
  [coderCopy encodeInt64:self->_startDropoutCount forKey:@"startDropoutCount"];
  [coderCopy encodeBool:self->_sawADropout forKey:@"sawADropout"];
}

- (unint64_t)hash
{
  label = [(PSYActivityInfo *)self->_activityInfo label];
  v3 = [label hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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