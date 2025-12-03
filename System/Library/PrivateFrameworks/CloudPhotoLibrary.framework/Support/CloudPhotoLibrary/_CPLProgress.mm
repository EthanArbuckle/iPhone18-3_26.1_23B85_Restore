@interface _CPLProgress
- (_CPLProgress)initWithIdentifier:(id)identifier firstSyncOfMainLibrary:(BOOL)library;
- (void)_publishRealProgressIfNecessary;
- (void)publish;
- (void)setCompletedUnitCount:(int64_t)count;
- (void)setForeground:(BOOL)foreground;
- (void)setTotalUnitCount:(int64_t)count;
- (void)setUserInfoObject:(id)object forKey:(id)key;
- (void)unpublish;
@end

@implementation _CPLProgress

- (_CPLProgress)initWithIdentifier:(id)identifier firstSyncOfMainLibrary:(BOOL)library
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = _CPLProgress;
  v7 = [(_CPLProgress *)&v16 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_firstSyncForMainLibrary = library;
    v17[0] = NSProgressCategoryKey;
    v10 = [@"com.apple.cpl." stringByAppendingString:identifierCopy];
    v17[1] = @"_CPLIsInitialSync";
    v18[0] = v10;
    v11 = [NSNumber numberWithBool:v7->_firstSyncForMainLibrary];
    v18[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v13 = [v12 mutableCopy];
    userInfo = v7->_userInfo;
    v7->_userInfo = v13;
  }

  return v7;
}

- (void)setTotalUnitCount:(int64_t)count
{
  self->_totalUnitCount = count;
  progress = self->_progress;
  if (progress)
  {
    [(NSProgress *)progress setTotalUnitCount:?];
  }
}

- (void)setCompletedUnitCount:(int64_t)count
{
  self->_completedUnitCount = count;
  progress = self->_progress;
  if (progress)
  {
    [(NSProgress *)progress setCompletedUnitCount:?];
  }
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  userInfo = self->_userInfo;
  if (objectCopy)
  {
    [(NSMutableDictionary *)userInfo setObject:objectCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)userInfo removeObjectForKey:keyCopy];
  }

  progress = self->_progress;
  if (progress)
  {
    [(NSProgress *)progress setUserInfoObject:objectCopy forKey:keyCopy];
  }
}

- (void)_publishRealProgressIfNecessary
{
  if (self->_progress)
  {
    sub_1001B9F8C(a2, self);
  }

  if (self->_foreground)
  {
    v3 = [[NSProgress alloc] initWithParent:0 userInfo:self->_userInfo];
    progress = self->_progress;
    self->_progress = v3;

    [(NSProgress *)self->_progress setTotalUnitCount:self->_totalUnitCount];
    [(NSProgress *)self->_progress setCompletedUnitCount:self->_completedUnitCount];
    [(NSProgress *)self->_progress setCancellable:0];
    [(NSProgress *)self->_progress setPausable:0];
    v5 = self->_progress;

    [(NSProgress *)v5 _publish];
  }
}

- (void)setForeground:(BOOL)foreground
{
  self->_foreground = foreground;
  publishing = self->_publishing;
  progress = self->_progress;
  if (!publishing || progress != 0 || !foreground)
  {
    if (progress && !foreground)
    {
      [(NSProgress *)progress _unpublish];
      v8 = self->_progress;
      self->_progress = 0;
    }
  }

  else
  {

    [(_CPLProgress *)self _publishRealProgressIfNecessary];
  }
}

- (void)publish
{
  if (!self->_publishing)
  {
    [(_CPLProgress *)self _publishRealProgressIfNecessary];
    self->_publishing = 1;
  }
}

- (void)unpublish
{
  if (self->_publishing)
  {
    progress = self->_progress;
    if (progress)
    {
      [(NSProgress *)progress _unpublish];
      v4 = self->_progress;
      self->_progress = 0;
    }

    self->_publishing = 0;
  }
}

@end