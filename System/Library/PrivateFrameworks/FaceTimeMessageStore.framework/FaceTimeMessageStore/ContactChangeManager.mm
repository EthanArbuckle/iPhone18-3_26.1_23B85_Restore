@interface ContactChangeManager
- (void)contactStoreDidChange:(id)change;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation ContactChangeManager

- (void)contactStoreDidChange:(id)change
{
  v4 = sub_1BC8F6D24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8F6D04();
  selfCopy = self;
  sub_1BC881EFC();

  (*(v5 + 8))(v8, v4);
}

- (void)visitDropEverythingEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1BC882FAC();
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1BC8830EC(eventCopy);
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1BC883378(eventCopy);
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1BC883638(eventCopy);
}

@end