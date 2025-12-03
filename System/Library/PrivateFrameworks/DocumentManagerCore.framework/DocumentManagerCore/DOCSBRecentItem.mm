@interface DOCSBRecentItem
- (DOCSBRecentItem)init;
- (NSString)name;
- (UTType)type;
- (void)fetchURL:(id)l;
@end

@implementation DOCSBRecentItem

- (DOCSBRecentItem)init
{
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItem_backingNode) = 0;
  v3.receiver = self;
  v3.super_class = DOCSBRecentItem;
  return [(DOCSBRecentItem *)&v3 init];
}

- (NSString)name
{
  v2 = *(&self->super.isa + OBJC_IVAR___DOCSBRecentItem_backingNode);
  if (v2)
  {
    selfCopy = self;
    displayName = [v2 displayName];
    sub_24938A45C();
  }

  v5 = sub_24938A42C();

  return v5;
}

- (UTType)type
{
  v3 = sub_24938A37C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_249378F84(v7);

  v9 = sub_24938A32C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)fetchURL:(id)l
{
  v4 = _Block_copy(l);
  _Block_copy(v4);
  selfCopy = self;
  sub_24937B8E4(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end