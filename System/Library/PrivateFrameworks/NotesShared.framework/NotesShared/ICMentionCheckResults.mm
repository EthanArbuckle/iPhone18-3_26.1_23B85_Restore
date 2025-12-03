@interface ICMentionCheckResults
- (ICMentionCheckResults)init;
- (_NSRange)rangeOfMention;
- (id)debugDescription;
@end

@implementation ICMentionCheckResults

- (ICMentionCheckResults)init
{
  v3.receiver = self;
  v3.super_class = ICMentionCheckResults;
  result = [(ICMentionCheckResults *)&v3 init];
  if (result)
  {
    result->_rangeOfMention = xmmword_2150C0620;
  }

  return result;
}

- (id)debugDescription
{
  matchingParticipants = [(ICMentionCheckResults *)self matchingParticipants];
  allObjects = [matchingParticipants allObjects];
  v5 = [allObjects ic_map:&__block_literal_global_22];

  v6 = MEMORY[0x277CCACA8];
  v14.location = [(ICMentionCheckResults *)self rangeOfMention];
  v7 = NSStringFromRange(v14);
  isPartialMention = [(ICMentionCheckResults *)self isPartialMention];
  isExplicitMention = [(ICMentionCheckResults *)self isExplicitMention];
  if ([(ICMentionCheckResults *)self isAllMention])
  {
    v10 = [v6 stringWithFormat:@"Mention found at %@, partial: %d, explicit: %d, names: [%@]", v7, isPartialMention, isExplicitMention, @"all"];
  }

  else
  {
    v11 = [v5 componentsJoinedByString:{@", "}];
    v10 = [v6 stringWithFormat:@"Mention found at %@, partial: %d, explicit: %d, names: [%@]", v7, isPartialMention, isExplicitMention, v11];
  }

  return v10;
}

__CFString *__41__ICMentionCheckResults_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ic_shortParticipantName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"???";
  }

  v5 = v4;

  return v4;
}

- (_NSRange)rangeOfMention
{
  length = self->_rangeOfMention.length;
  location = self->_rangeOfMention.location;
  result.length = length;
  result.location = location;
  return result;
}

@end