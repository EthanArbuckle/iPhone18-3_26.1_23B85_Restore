@interface ICShareParticipantCacheEntry
- (NSSet)names;
@end

@implementation ICShareParticipantCacheEntry

- (NSSet)names
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  v4 = [(ICShareParticipantCacheEntry *)self givenName];
  [v3 ic_addNonNilObject:v4];

  v5 = [(ICShareParticipantCacheEntry *)self familyName];
  [v3 ic_addNonNilObject:v5];

  v6 = [(ICShareParticipantCacheEntry *)self nickname];
  [v3 ic_addNonNilObject:v6];

  v7 = [(ICShareParticipantCacheEntry *)self initials];
  [v3 ic_addNonNilObject:v7];

  v8 = [(ICShareParticipantCacheEntry *)self displayName];
  [v3 ic_addNonNilObject:v8];

  v9 = [v3 copy];

  return v9;
}

@end