@interface ContactChangeManager
- (void)contactStoreDidChange:(id)a3;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation ContactChangeManager

- (void)contactStoreDidChange:(id)a3
{
  v4 = sub_1BC8F6D24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8F6D04();
  v9 = self;
  sub_1BC881EFC();

  (*(v5 + 8))(v8, v4);
}

- (void)visitDropEverythingEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BC882FAC();
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BC8830EC(v4);
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BC883378(v4);
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BC883638(v4);
}

@end