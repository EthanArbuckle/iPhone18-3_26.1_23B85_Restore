@interface FCPersonalizationTodaySectionMapping
- (FCPersonalizationTodaySectionMapping)initWithCoder:(id)coder;
- (FCPersonalizationTodaySectionMapping)initWithPBTodaySectionMapping:(id)mapping;
- (id)groupViewExposureTypesForTodaySectionIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationTodaySectionMapping

- (FCPersonalizationTodaySectionMapping)initWithPBTodaySectionMapping:(id)mapping
{
  mappingCopy = mapping;
  v14.receiver = self;
  v14.super_class = FCPersonalizationTodaySectionMapping;
  v6 = [(FCPersonalizationTodaySectionMapping *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pbTodaySectionMapping, mapping);
    v8 = MEMORY[0x1E695DF20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__FCPersonalizationTodaySectionMapping_initWithPBTodaySectionMapping___block_invoke;
    v12[3] = &unk_1E7C36EC8;
    v13 = mappingCopy;
    v9 = [v8 fc_dictionary:v12];
    todaySectionIdentifiersToFRGroupViewExposureTypes = v7->_todaySectionIdentifiersToFRGroupViewExposureTypes;
    v7->_todaySectionIdentifiersToFRGroupViewExposureTypes = v9;
  }

  return v7;
}

void __70__FCPersonalizationTodaySectionMapping_initWithPBTodaySectionMapping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__FCPersonalizationTodaySectionMapping_initWithPBTodaySectionMapping___block_invoke_2;
  v6[3] = &unk_1E7C46468;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __70__FCPersonalizationTodaySectionMapping_initWithPBTodaySectionMapping___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__FCPersonalizationTodaySectionMapping_initWithPBTodaySectionMapping___block_invoke_3;
  v9[3] = &unk_1E7C36D40;
  v10 = v3;
  v5 = v3;
  v6 = [v4 fc_array:v9];
  v7 = *(a1 + 32);
  v8 = [v5 personalizationSectionIdentifier];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

void __70__FCPersonalizationTodaySectionMapping_initWithPBTodaySectionMapping___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) groupTypesCount])
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "groupTypesAtIndex:", v3)}];
      [v5 setObject:v4 atIndexedSubscript:v3];

      ++v3;
    }

    while ([*(a1 + 32) groupTypesCount] > v3);
  }
}

- (FCPersonalizationTodaySectionMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"todaySectionMapping"];

  v6 = [(FCPersonalizationTodaySectionMapping *)self initWithPBTodaySectionMapping:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  pbTodaySectionMapping = self->_pbTodaySectionMapping;
  if (pbTodaySectionMapping)
  {
    [coder encodeObject:pbTodaySectionMapping forKey:@"todaySectionMapping"];
  }
}

- (id)groupViewExposureTypesForTodaySectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  todaySectionIdentifiersToFRGroupViewExposureTypes = [(FCPersonalizationTodaySectionMapping *)self todaySectionIdentifiersToFRGroupViewExposureTypes];
  v6 = [todaySectionIdentifiersToFRGroupViewExposureTypes objectForKeyedSubscript:identifierCopy];

  return v6;
}

@end