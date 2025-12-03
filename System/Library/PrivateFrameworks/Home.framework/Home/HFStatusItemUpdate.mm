@interface HFStatusItemUpdate
- (HFStatusItemUpdate)init;
- (HFStatusItemUpdate)initWithTitle:(id)title secondaryText:(id)text iconDescriptor:(id)descriptor;
- (NSString)description;
- (NSString)secondaryText;
- (NSString)title;
- (void)setIconDescriptor:(id)descriptor;
- (void)setSecondaryText:(id)text;
- (void)setTitle:(id)title;
@end

@implementation HFStatusItemUpdate

- (NSString)title
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_20DD64CD4();

  v4 = sub_20DD64E74();

  return v4;
}

- (void)setTitle:(id)title
{
  sub_20DD64EB4();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_20DD64CE4();
}

- (NSString)secondaryText
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
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

- (void)setSecondaryText:(id)text
{
  if (text)
  {
    sub_20DD64EB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_20DD64CE4();
}

- (void)setIconDescriptor:(id)descriptor
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_20DD64CE4();
  sub_20DA0EAE4();
  swift_unknownObjectRelease();
}

- (HFStatusItemUpdate)initWithTitle:(id)title secondaryText:(id)text iconDescriptor:(id)descriptor
{
  v7 = sub_20DD64EB4();
  v9 = v8;
  if (text)
  {
    text = sub_20DD64EB4();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRetain();
  v12 = sub_20DA10F78(v7, v9, text, v11, descriptor);
  swift_unknownObjectRelease();
  return v12;
}

- (NSString)description
{
  selfCopy = self;
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