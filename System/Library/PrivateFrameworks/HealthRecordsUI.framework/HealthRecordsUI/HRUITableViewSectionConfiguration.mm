@interface HRUITableViewSectionConfiguration
- (HRUITableViewSectionConfiguration)init;
- (NSString)description;
- (id)addSectionWithIdentifier:(id)identifier firstRowReuseIdentifier:(id)reuseIdentifier;
- (id)addSectionWithIdentifier:(id)identifier rowReuseIdentifiers:(id)identifiers;
- (id)rowAtIndexPath:(id)path;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (void)removeAllSections;
@end

@implementation HRUITableViewSectionConfiguration

- (HRUITableViewSectionConfiguration)init
{
  *(self + OBJC_IVAR___HRUITableViewSectionConfiguration_sections) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for TableViewSectionConfiguration();
  return [(HRUITableViewSectionConfiguration *)&v3 init];
}

- (id)addSectionWithIdentifier:(id)identifier firstRowReuseIdentifier:(id)reuseIdentifier
{
  if (identifier)
  {
    v6 = sub_1D139016C();
    v8 = v7;
    if (reuseIdentifier)
    {
LABEL_3:
      v9 = sub_1D139016C();
      v11 = v10;
      sub_1D1086E1C();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D139E700;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (reuseIdentifier)
    {
      goto LABEL_3;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_6:
  selfCopy = self;
  v14 = sub_1D125B4E0(v6, v8, v12);

  return v14;
}

- (id)addSectionWithIdentifier:(id)identifier rowReuseIdentifiers:(id)identifiers
{
  if (identifier)
  {
    v5 = sub_1D139016C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_1D139045C();
  selfCopy = self;
  v10 = sub_1D125B4E0(v5, v7, v8);

  return v10;
}

- (void)removeAllSections
{
  v3 = OBJC_IVAR___HRUITableViewSectionConfiguration_sections;
  swift_beginAccess();
  *(self + v3) = MEMORY[0x1E69E7CC0];
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_1D125B9B0(section);

  return v5;
}

- (id)rowAtIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  v6 = sub_1D125BB30(pathCopy);

  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_1D125BDE4();

  v3 = sub_1D139012C();

  return v3;
}

@end