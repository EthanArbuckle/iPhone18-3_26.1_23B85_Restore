@interface _CNSuddenTerminationInhibitor
- (_CNSuddenTerminationInhibitor)init;
- (_CNSuddenTerminationInhibitor)initWithProcessInfo:(id)info;
- (void)start;
- (void)stop;
@end

@implementation _CNSuddenTerminationInhibitor

- (_CNSuddenTerminationInhibitor)init
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v4 = [(_CNSuddenTerminationInhibitor *)self initWithProcessInfo:processInfo];

  return v4;
}

- (_CNSuddenTerminationInhibitor)initWithProcessInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = _CNSuddenTerminationInhibitor;
  v6 = [(_CNSuddenTerminationInhibitor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processInfo, info);
    v8 = v7;
  }

  return v7;
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = _CNSuddenTerminationInhibitor;
  [(CNInhibitor *)&v2 start];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = _CNSuddenTerminationInhibitor;
  [(CNInhibitor *)&v2 stop];
}

@end