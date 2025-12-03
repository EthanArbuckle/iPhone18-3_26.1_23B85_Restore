@interface _HKRemoteDisplayTypeConfiguration
- (_HKRemoteDisplayTypeConfiguration)initWithInitialTimeScope:(int64_t)scope remoteDisplayType:(id)type;
@end

@implementation _HKRemoteDisplayTypeConfiguration

- (_HKRemoteDisplayTypeConfiguration)initWithInitialTimeScope:(int64_t)scope remoteDisplayType:(id)type
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = _HKRemoteDisplayTypeConfiguration;
  v8 = [(_HKRemoteDisplayTypeConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_initialTimeScope = scope;
    objc_storeStrong(&v8->_remoteDisplayType, type);
  }

  return v9;
}

@end