@interface CKInboxItemSwift
- (CKInboxItemSwift)init;
- (CKInboxItemSwift)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 systemImage:(id)a6 accessoryText:(id)a7;
- (NSString)description;
- (void)updateWithAccessoryText:(id)a3;
@end

@implementation CKInboxItemSwift

- (CKInboxItemSwift)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 systemImage:(id)a6 accessoryText:(id)a7
{
  v9 = sub_215692C80();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215692C70();
  v13 = sub_2156930B0();
  v15 = v14;
  if (a5)
  {
    a5 = sub_2156930B0();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_2156930B0();
  v20 = v19;
  if (a7)
  {
    v22 = sub_2156930B0();
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  return InboxItem.init(identifier:title:subtitle:systemImage:accessoryText:)(v12, v13, v15, a5, v17, v18, v20, v22, v21);
}

- (void)updateWithAccessoryText:(id)a3
{
  sub_2156930B0();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_215692DA0();
}

- (NSString)description
{
  v2 = self;
  InboxItem.description.getter();

  v3 = sub_2156930A0();

  return v3;
}

- (CKInboxItemSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end