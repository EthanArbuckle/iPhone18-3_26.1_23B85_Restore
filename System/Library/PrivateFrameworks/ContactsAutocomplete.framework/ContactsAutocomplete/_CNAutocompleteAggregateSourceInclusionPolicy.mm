@interface _CNAutocompleteAggregateSourceInclusionPolicy
- (BOOL)includeCalendarServers;
- (BOOL)includeContacts;
- (BOOL)includeDirectoryServers;
- (BOOL)includeLocalExtensions;
- (BOOL)includePredictions;
- (BOOL)includeRecents;
- (BOOL)includeStewie;
- (BOOL)includeSuggestions;
- (BOOL)includeSupplementalResults;
- (_CNAutocompleteAggregateSourceInclusionPolicy)initWithPolicies:(id)policies;
@end

@implementation _CNAutocompleteAggregateSourceInclusionPolicy

- (BOOL)includeSuggestions
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_139];

  return v3;
}

- (BOOL)includeDirectoryServers
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_145_0];

  return v3;
}

- (BOOL)includeRecents
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_135];

  return v3;
}

- (BOOL)includeStewie
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_137];

  return v3;
}

- (BOOL)includeContacts
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_27];

  return v3;
}

- (BOOL)includeCalendarServers
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_147];

  return v3;
}

- (BOOL)includeLocalExtensions
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_141];

  return v3;
}

- (BOOL)includePredictions
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_143];

  return v3;
}

- (BOOL)includeSupplementalResults
{
  policies = [(_CNAutocompleteAggregateSourceInclusionPolicy *)self policies];
  v3 = [policies _cn_all:&__block_literal_global_149];

  return v3;
}

- (_CNAutocompleteAggregateSourceInclusionPolicy)initWithPolicies:(id)policies
{
  policiesCopy = policies;
  v10.receiver = self;
  v10.super_class = _CNAutocompleteAggregateSourceInclusionPolicy;
  v5 = [(_CNAutocompleteAggregateSourceInclusionPolicy *)&v10 init];
  if (v5)
  {
    v6 = [policiesCopy copy];
    policies = v5->_policies;
    v5->_policies = v6;

    v8 = v5;
  }

  return v5;
}

@end