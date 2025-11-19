@interface _IMDInternalWorkQueue
+ (void)enqueueWorkBlock:(id)a3;
- (_IMDInternalWorkQueue)init;
@end

@implementation _IMDInternalWorkQueue

+ (void)enqueueWorkBlock:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s12IMDaemonCore20IMDInternalWorkQueueC07enqueueD5BlockyyyyYbcFZ_0(sub_22B7AA6B4, v4);
}

- (_IMDInternalWorkQueue)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IMDInternalWorkQueue();
  return [(_IMDInternalWorkQueue *)&v3 init];
}

@end