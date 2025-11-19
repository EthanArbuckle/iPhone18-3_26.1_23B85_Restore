@interface HFStatusItemUpdate
- (HFStatusItemUpdate)init;
- (HFStatusItemUpdate)initWithTitle:(id)a3 secondaryText:(id)a4 iconDescriptor:(id)a5;
- (NSString)description;
- (NSString)secondaryText;
- (NSString)title;
- (void)setIconDescriptor:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation HFStatusItemUpdate

- (NSString)title
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_20DD64CD4();

  v4 = sub_20DD64E74();

  return v4;
}

- (void)setTitle:(id)a3
{
  sub_20DD64EB4();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_20DD64CE4();
}

- (NSString)secondaryText
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_20DD64CD4();

  if (v6)
  {
    v4 = sub_20DD64E74();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSecondaryText:(id)a3
{
  if (a3)
  {
    sub_20DD64EB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_20DD64CE4();
}

- (void)setIconDescriptor:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain_n();
  v4 = self;
  sub_20DD64CE4();
  sub_20DA0EAE4();
  swift_unknownObjectRelease();
}

- (HFStatusItemUpdate)initWithTitle:(id)a3 secondaryText:(id)a4 iconDescriptor:(id)a5
{
  v7 = sub_20DD64EB4();
  v9 = v8;
  if (a4)
  {
    a4 = sub_20DD64EB4();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRetain();
  v12 = sub_20DA10F78(v7, v9, a4, v11, a5);
  swift_unknownObjectRelease();
  return v12;
}

- (NSString)description
{
  v2 = self;
  sub_20DA107B8();

  v3 = sub_20DD64E74();

  return v3;
}

- (HFStatusItemUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end