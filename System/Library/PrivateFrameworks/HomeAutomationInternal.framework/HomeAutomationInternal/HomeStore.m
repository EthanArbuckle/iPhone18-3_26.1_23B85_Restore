@interface HomeStore
- (void)home:(void *)a3 didAddMediaSystem:(void *)a4;
- (void)homeDidUpdateName:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateAssistantIdentifiers:(id)a3;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HomeStore

- (void)home:(void *)a3 didAddMediaSystem:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_2529E4B50(v7);
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2529E4684();
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2529DEAE8(v4);
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2529E490C();
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2529E4A20(v7);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2529E490C();
}

- (void)homeManagerDidUpdateAssistantIdentifiers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2529E490C();
}

@end