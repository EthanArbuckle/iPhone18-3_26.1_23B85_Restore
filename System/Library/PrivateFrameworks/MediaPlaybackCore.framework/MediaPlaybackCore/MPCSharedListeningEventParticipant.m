@interface MPCSharedListeningEventParticipant
+ (MPCSharedListeningEventParticipant)participantWithSharedListeningIdentifier:(id)a3 externalIdentifier:(id)a4;
@end

@implementation MPCSharedListeningEventParticipant

+ (MPCSharedListeningEventParticipant)participantWithSharedListeningIdentifier:(id)a3 externalIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MPCSharedListeningEventParticipant);
  v8 = [v6 copy];

  sharedListeningIdentifier = v7->_sharedListeningIdentifier;
  v7->_sharedListeningIdentifier = v8;

  v10 = [v5 copy];
  externalIdentifier = v7->_externalIdentifier;
  v7->_externalIdentifier = v10;

  return v7;
}

@end