@interface LNDaemonRecord
+ (id)daemonRecordWithBundleIdentifier:(id)identifier;
+ (id)enumerated;
- (LNDaemonRecord)initWithBundleIdentifier:(id)identifier;
- (LNDaemonRecord)initWithDaemonRecord:(id)record;
@end

@implementation LNDaemonRecord

- (LNDaemonRecord)initWithDaemonRecord:(id)record
{
  bundleIdentifier = [record bundleIdentifier];
  v5 = [(LNDaemonRecord *)self initWithBundleIdentifier:bundleIdentifier];

  return v5;
}

- (LNDaemonRecord)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDaemonRecord.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNDaemonRecord;
  v6 = [(LNDaemonRecord *)&v12 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)daemonRecordWithBundleIdentifier:(id)identifier
{
  v3 = [swift_DaemonRecord fromBundleIdentifier:identifier];
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