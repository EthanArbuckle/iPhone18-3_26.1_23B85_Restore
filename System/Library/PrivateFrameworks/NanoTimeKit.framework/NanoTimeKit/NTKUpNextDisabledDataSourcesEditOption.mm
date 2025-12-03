@interface NTKUpNextDisabledDataSourcesEditOption
+ (id)optionWithDisabledDataSourceIdentifiers:(id)identifiers forDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (NTKUpNextDisabledDataSourcesEditOption)initWithCoder:(id)coder;
- (NTKUpNextDisabledDataSourcesEditOption)initWithDisabledDataSourceIdentifiers:(id)identifiers forDevice:(id)device;
- (NTKUpNextDisabledDataSourcesEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (id)_alphabeticallySortedIdentifiers;
- (id)dailySnapshotKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKUpNextDisabledDataSourcesEditOption

- (NTKUpNextDisabledDataSourcesEditOption)initWithDisabledDataSourceIdentifiers:(id)identifiers forDevice:(id)device
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = NTKUpNextDisabledDataSourcesEditOption;
  v7 = [(NTKEditOption *)&v11 initWithDevice:device];
  if (v7)
  {
    v8 = [identifiersCopy copy];
    disabledBundleIdentifiers = v7->_disabledBundleIdentifiers;
    v7->_disabledBundleIdentifiers = v8;
  }

  return v7;
}

+ (id)optionWithDisabledDataSourceIdentifiers:(id)identifiers forDevice:(id)device
{
  deviceCopy = device;
  identifiersCopy = identifiers;
  v7 = [[NTKUpNextDisabledDataSourcesEditOption alloc] initWithDisabledDataSourceIdentifiers:identifiersCopy forDevice:deviceCopy];

  return v7;
}

- (NTKUpNextDisabledDataSourcesEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
{
  representationCopy = representation;
  deviceCopy = device;
  if (representationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:representationCopy];
    self = [(NTKUpNextDisabledDataSourcesEditOption *)self initWithDisabledDataSourceIdentifiers:v8 forDevice:deviceCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dailySnapshotKey
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_disabledBundleIdentifiers;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v11 + 1) + 8 * i) hash];
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  stringValue = [v8 stringValue];

  return stringValue;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NTKUpNextDisabledDataSourcesEditOption;
  coderCopy = coder;
  [(NTKEditOption *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NTKUpNextDisabledDataSourcesEditOption *)self _alphabeticallySortedIdentifiers:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kDisabledDataSourcesKey"];
}

- (NTKUpNextDisabledDataSourcesEditOption)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NTKUpNextDisabledDataSourcesEditOption;
  v5 = [(NTKEditOption *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x277CBEB98];
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kDisabledDataSourcesKey"];
    v11 = [v9 setWithArray:v10];
    disabledBundleIdentifiers = v5->_disabledBundleIdentifiers;
    v5->_disabledBundleIdentifiers = v11;
  }

  return v5;
}

- (id)_alphabeticallySortedIdentifiers
{
  allObjects = [(NSSet *)self->_disabledBundleIdentifiers allObjects];
  v3 = [allObjects sortedArrayUsingComparator:&__block_literal_global_1478];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = NTKEqualObjects(self->_disabledBundleIdentifiers, equalCopy[2]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end