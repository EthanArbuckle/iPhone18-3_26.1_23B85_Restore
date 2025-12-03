@interface CPPeoplePickerConfiguration
- (BOOL)isEqual:(id)equal;
- (CPPeoplePickerConfiguration)init;
- (CPPeoplePickerConfiguration)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPPeoplePickerConfiguration

- (CPPeoplePickerConfiguration)init
{
  v3 = (&self->super.isa + OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID);
  v4 = type metadata accessor for PeoplePickerConfiguration();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CPPeoplePickerConfiguration *)&v6 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PeoplePickerConfiguration.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v3();
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher.finalize()();

  return v6;
}

- (CPPeoplePickerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized PeoplePickerConfiguration.init(coder:)();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  coderCopy = coder;
  selfCopy = self;
  v6 = v4();
  if (v7)
  {
    v8 = MEMORY[0x1B270FF70](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x1B270FF70](0xD000000000000013, 0x80000001AEE37330);
  [coderCopy encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

@end