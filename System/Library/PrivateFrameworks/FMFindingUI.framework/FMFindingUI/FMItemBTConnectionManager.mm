@interface FMItemBTConnectionManager
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
@end

@implementation FMItemBTConnectionManager

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:*MEMORY[0x277D76758] object:0];

  v6 = [v3 defaultCenter];
  [v6 removeObserver:v4 name:*MEMORY[0x277D76660] object:0];

  v7.receiver = v4;
  v7.super_class = type metadata accessor for FMItemBTConnectionManager();
  [(FMConnectionManager *)&v7 dealloc];
}

- (void)applicationWillEnterForeground
{
  v2 = self;
  sub_24A5A8C78();
}

- (void)applicationDidEnterBackground
{
  v2 = self;
  sub_24A5A8CE0();
}

@end