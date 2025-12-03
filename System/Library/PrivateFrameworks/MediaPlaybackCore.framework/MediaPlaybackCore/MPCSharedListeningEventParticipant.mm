@interface MPCSharedListeningEventParticipant
+ (MPCSharedListeningEventParticipant)participantWithSharedListeningIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier;
@end

@implementation MPCSharedListeningEventParticipant

+ (MPCSharedListeningEventParticipant)participantWithSharedListeningIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier
{
  externalIdentifierCopy = externalIdentifier;
  identifierCopy = identifier;
  v7 = objc_alloc_init(MPCSharedListeningEventParticipant);
  v8 = [identifierCopy copy];

  sharedListeningIdentifier = v7->_sharedListeningIdentifier;
  v7->_sharedListeningIdentifier = v8;

  v10 = [externalIdentifierCopy copy];
  externalIdentifier = v7->_externalIdentifier;
  v7->_externalIdentifier = v10;

  return v7;
}

@end