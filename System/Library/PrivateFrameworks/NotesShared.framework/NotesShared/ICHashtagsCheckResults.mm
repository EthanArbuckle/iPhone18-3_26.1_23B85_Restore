@interface ICHashtagsCheckResults
- (ICHashtagsCheckResults)init;
- (_NSRange)rangeOfHashtag;
- (id)debugDescription;
@end

@implementation ICHashtagsCheckResults

- (ICHashtagsCheckResults)init
{
  v3.receiver = self;
  v3.super_class = ICHashtagsCheckResults;
  result = [(ICHashtagsCheckResults *)&v3 init];
  if (result)
  {
    result->_rangeOfHashtag = xmmword_2150C0620;
  }

  return result;
}

- (id)debugDescription
{
  matchingHashtagSuggestions = [(ICHashtagsCheckResults *)self matchingHashtagSuggestions];
  allObjects = [matchingHashtagSuggestions allObjects];
  v5 = [allObjects ic_map:&__block_literal_global_3];

  v6 = MEMORY[0x277CCACA8];
  v12.location = [(ICHashtagsCheckResults *)self rangeOfHashtag];
  v7 = NSStringFromRange(v12);
  v8 = [v5 componentsJoinedByString:{@", "}];
  v9 = [v6 stringWithFormat:@"Hashtag found at %@, names: [%@]", v7, v8];

  return v9;
}

- (_NSRange)rangeOfHashtag
{
  length = self->_rangeOfHashtag.length;
  location = self->_rangeOfHashtag.location;
  result.length = length;
  result.location = location;
  return result;
}

@end