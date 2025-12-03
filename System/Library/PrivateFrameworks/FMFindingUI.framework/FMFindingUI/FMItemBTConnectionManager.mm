@interface FMItemBTConnectionManager
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
@end

@implementation FMItemBTConnectionManager

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76758] object:0];

  defaultCenter2 = [v3 defaultCenter];
  [defaultCenter2 removeObserver:selfCopy name:*MEMORY[0x277D76660] object:0];

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for FMItemBTConnectionManager();
  [(FMConnectionManager *)&v7 dealloc];
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_24A5A8C78();
}

- (void)applicationDidEnterBackground
{
  selfCopy = self;
  sub_24A5A8CE0();
}

@end