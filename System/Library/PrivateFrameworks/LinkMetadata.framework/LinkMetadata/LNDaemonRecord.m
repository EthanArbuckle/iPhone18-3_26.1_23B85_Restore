@interface LNDaemonRecord
+ (id)daemonRecordWithBundleIdentifier:(id)a3;
+ (id)enumerated;
- (LNDaemonRecord)initWithBundleIdentifier:(id)a3;
- (LNDaemonRecord)initWithDaemonRecord:(id)a3;
@end

@implementation LNDaemonRecord

- (LNDaemonRecord)initWithDaemonRecord:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = [(LNDaemonRecord *)self initWithBundleIdentifier:v4];

  return v5;
}

- (LNDaemonRecord)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNDaemonRecord.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNDaemonRecord;
  v6 = [(LNDaemonRecord *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)daemonRecordWithBundleIdentifier:(id)a3
{
  v3 = [swift_DaemonRecord fromBundleIdentifier:a3];
  if (v3)
  {
    v4 = [[LNDaemonRecord alloc] initWithDaemonRecord:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)enumerated
{
  v2 = +[swift_DaemonRecord enumerated];
  v3 = [v2 if_map:&__block_literal_global_7199];

  return v3;
}

LNDaemonRecord *__28__LNDaemonRecord_enumerated__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[LNDaemonRecord alloc] initWithDaemonRecord:v2];

  return v3;
}

@end