@interface _DKSyncHistory
- (_DKSyncHistory)init;
- (_DKSyncHistory)initWithLastSyncDate:(id)date lastDaySyncCount:(unint64_t)count;
- (id)description;
@end

@implementation _DKSyncHistory

- (_DKSyncHistory)init
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v4 = [(_DKSyncHistory *)self initWithLastSyncDate:distantPast lastDaySyncCount:0];

  return v4;
}

- (_DKSyncHistory)initWithLastSyncDate:(id)date lastDaySyncCount:(unint64_t)count
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = _DKSyncHistory;
  v8 = [(_DKSyncHistory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastSyncDate, date);
    v9->_lastDaySyncCount = count;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dk_localtimeString = [(NSDate *)self->_lastSyncDate dk_localtimeString];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lastDaySyncCount];
  v8 = [v3 stringWithFormat:@"<%@ %p: lastSyncDate=%@, lastDaySyncCount=%@>", v5, self, dk_localtimeString, v7];

  return v8;
}

@end