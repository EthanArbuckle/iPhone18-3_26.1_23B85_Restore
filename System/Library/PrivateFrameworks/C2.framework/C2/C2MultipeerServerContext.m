@interface C2MultipeerServerContext
- (C2MultipeerServerContext)init;
@end

@implementation C2MultipeerServerContext

- (C2MultipeerServerContext)init
{
  v6.receiver = self;
  v6.super_class = C2MultipeerServerContext;
  v2 = [(C2MultipeerServerContext *)&v6 init];
  if (v2)
  {
    v3 = _os_activity_create(&dword_242158000, "c2-chunk-server", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v2->_osActivity;
    v2->_osActivity = v3;
  }

  return v2;
}

@end