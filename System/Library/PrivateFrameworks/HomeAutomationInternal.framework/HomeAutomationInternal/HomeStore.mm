@interface HomeStore
- (void)home:(void *)home didAddMediaSystem:(void *)system;
- (void)homeDidUpdateName:(id)name;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateAssistantIdentifiers:(id)identifiers;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeStore

- (void)home:(void *)home didAddMediaSystem:(void *)system
{
  homeCopy = home;
  systemCopy = system;
  selfCopy = self;
  sub_2529E4B50(systemCopy);
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_2529E4684();
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_2529DEAE8(homesCopy);
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_2529E490C();
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_2529E4A20(homeCopy);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_2529E490C();
}

- (void)homeManagerDidUpdateAssistantIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_2529E490C();
}

@end