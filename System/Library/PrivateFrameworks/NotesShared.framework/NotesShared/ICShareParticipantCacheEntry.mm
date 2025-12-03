@interface ICShareParticipantCacheEntry
- (NSSet)names;
@end

@implementation ICShareParticipantCacheEntry

- (NSSet)names
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  givenName = [(ICShareParticipantCacheEntry *)self givenName];
  [v3 ic_addNonNilObject:givenName];

  familyName = [(ICShareParticipantCacheEntry *)self familyName];
  [v3 ic_addNonNilObject:familyName];

  nickname = [(ICShareParticipantCacheEntry *)self nickname];
  [v3 ic_addNonNilObject:nickname];

  initials = [(ICShareParticipantCacheEntry *)self initials];
  [v3 ic_addNonNilObject:initials];

  displayName = [(ICShareParticipantCacheEntry *)self displayName];
  [v3 ic_addNonNilObject:displayName];

  v9 = [v3 copy];

  return v9;
}

@end