@interface DOCSBFolderSortOrder
- (BOOL)isEqual:(id)a3;
- (BOOL)isSortAscending;
- (DOCSBFolderSortOrder)init;
- (DOCSBFolderSortOrder)initWithSortOrderIdentifier:(id)a3;
@end

@implementation DOCSBFolderSortOrder

- (DOCSBFolderSortOrder)initWithSortOrderIdentifier:(id)a3
{
  v4 = sub_24938A45C();
  v5 = (self + OBJC_IVAR___DOCSBFolderSortOrder_symbolName);
  *v5 = 0x656C63726963;
  v5[1] = 0xE600000000000000;
  v6 = (self + OBJC_IVAR___DOCSBFolderSortOrder_identifier);
  *v6 = v4;
  v6[1] = v7;
  *v5 = 0x656C63726963;
  v5[1] = 0xE600000000000000;
  v9.receiver = self;
  v9.super_class = DOCSBFolderSortOrder;
  return [(DOCSBFolderSortOrder *)&v9 init];
}

- (BOOL)isSortAscending
{
  v2 = self;
  v3 = sub_2493716D0();

  return v3 & 1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24938A5FC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = DOCSBFolderSortOrder.isEqual(_:)(v8);

  sub_249378744(v8, &qword_27EEE2B18, &qword_24938F530);
  return v6 & 1;
}

- (DOCSBFolderSortOrder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end