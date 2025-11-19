@interface _DKSyncHistory
- (_DKSyncHistory)init;
- (_DKSyncHistory)initWithLastSyncDate:(id)a3 lastDaySyncCount:(unint64_t)a4;
- (id)description;
@end

@implementation _DKSyncHistory

- (_DKSyncHistory)init
{
  v3 = [MEMORY[0x1E695DF00] distantPast];
  v4 = [(_DKSyncHistory *)self initWithLastSyncDate:v3 lastDaySyncCount:0];

  return v4;
}

- (_DKSyncHistory)initWithLastSyncDate:(id)a3 lastDaySyncCount:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _DKSyncHistory;
  v8 = [(_DKSyncHistory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastSyncDate, a3);
    v9->_lastDaySyncCount = a4;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSDate *)self->_lastSyncDate dk_localtimeString];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lastDaySyncCount];
  v8 = [v3 stringWithFormat:@"<%@ %p: lastSyncDate=%@, lastDaySyncCount=%@>", v5, self, v6, v7];

  return v8;
}

@end