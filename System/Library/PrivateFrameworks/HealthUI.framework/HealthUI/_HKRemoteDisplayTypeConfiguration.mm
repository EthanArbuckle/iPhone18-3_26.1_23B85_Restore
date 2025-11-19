@interface _HKRemoteDisplayTypeConfiguration
- (_HKRemoteDisplayTypeConfiguration)initWithInitialTimeScope:(int64_t)a3 remoteDisplayType:(id)a4;
@end

@implementation _HKRemoteDisplayTypeConfiguration

- (_HKRemoteDisplayTypeConfiguration)initWithInitialTimeScope:(int64_t)a3 remoteDisplayType:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _HKRemoteDisplayTypeConfiguration;
  v8 = [(_HKRemoteDisplayTypeConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_initialTimeScope = a3;
    objc_storeStrong(&v8->_remoteDisplayType, a4);
  }

  return v9;
}

@end