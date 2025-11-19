@interface NTKUpNextDisabledDataSourcesEditOption
+ (id)optionWithDisabledDataSourceIdentifiers:(id)a3 forDevice:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NTKUpNextDisabledDataSourcesEditOption)initWithCoder:(id)a3;
- (NTKUpNextDisabledDataSourcesEditOption)initWithDisabledDataSourceIdentifiers:(id)a3 forDevice:(id)a4;
- (NTKUpNextDisabledDataSourcesEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (id)_alphabeticallySortedIdentifiers;
- (id)dailySnapshotKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKUpNextDisabledDataSourcesEditOption

- (NTKUpNextDisabledDataSourcesEditOption)initWithDisabledDataSourceIdentifiers:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKUpNextDisabledDataSourcesEditOption;
  v7 = [(NTKEditOption *)&v11 initWithDevice:a4];
  if (v7)
  {
    v8 = [v6 copy];
    disabledBundleIdentifiers = v7->_disabledBundleIdentifiers;
    v7->_disabledBundleIdentifiers = v8;
  }

  return v7;
}

+ (id)optionWithDisabledDataSourceIdentifiers:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NTKUpNextDisabledDataSourcesEditOption alloc] initWithDisabledDataSourceIdentifiers:v6 forDevice:v5];

  return v7;
}

- (NTKUpNextDisabledDataSourcesEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
    self = [(NTKUpNextDisabledDataSourcesEditOption *)self initWithDisabledDataSourceIdentifiers:v8 forDevice:v7];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
  v9 = [v8 stringValue];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKUpNextDisabledDataSourcesEditOption;
  v4 = a3;
  [(NTKEditOption *)&v6 encodeWithCoder:v4];
  v5 = [(NTKUpNextDisabledDataSourcesEditOption *)self _alphabeticallySortedIdentifiers:v6.receiver];
  [v4 encodeObject:v5 forKey:@"kDisabledDataSourcesKey"];
}

- (NTKUpNextDisabledDataSourcesEditOption)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NTKUpNextDisabledDataSourcesEditOption;
  v5 = [(NTKEditOption *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x277CBEB98];
    v10 = [v4 decodeObjectOfClasses:v8 forKey:@"kDisabledDataSourcesKey"];
    v11 = [v9 setWithArray:v10];
    disabledBundleIdentifiers = v5->_disabledBundleIdentifiers;
    v5->_disabledBundleIdentifiers = v11;
  }

  return v5;
}

- (id)_alphabeticallySortedIdentifiers
{
  v2 = [(NSSet *)self->_disabledBundleIdentifiers allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_1478];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = NTKEqualObjects(self->_disabledBundleIdentifiers, v4[2]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end