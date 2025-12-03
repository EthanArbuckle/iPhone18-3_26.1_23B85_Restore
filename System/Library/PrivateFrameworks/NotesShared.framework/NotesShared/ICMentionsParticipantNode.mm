@interface ICMentionsParticipantNode
- (NSMutableSet)participants;
- (NSMutableSet)possibleParticipants;
- (void)addChild:(id)child;
- (void)addParticipant:(id)participant;
- (void)addPossibleParticipant:(id)participant;
@end

@implementation ICMentionsParticipantNode

- (NSMutableSet)participants
{
  participants = self->_participants;
  if (!participants)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v5 = self->_participants;
    self->_participants = v4;

    participants = self->_participants;
  }

  return participants;
}

- (NSMutableSet)possibleParticipants
{
  possibleParticipants = self->_possibleParticipants;
  if (!possibleParticipants)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v5 = self->_possibleParticipants;
    self->_possibleParticipants = v4;

    possibleParticipants = self->_possibleParticipants;
  }

  return possibleParticipants;
}

- (void)addParticipant:(id)participant
{
  participantCopy = participant;
  participants = [(ICMentionsParticipantNode *)self participants];
  [participants addObject:participantCopy];

  [(ICMentionsParticipantNode *)self addPossibleParticipant:participantCopy];
}

- (void)addPossibleParticipant:(id)participant
{
  participantCopy = participant;
  possibleParticipants = [(ICMentionsParticipantNode *)self possibleParticipants];
  [possibleParticipants addObject:participantCopy];
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v9 = childCopy;
  if (!children)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v7 = self->_children;
    self->_children = v6;

    childCopy = v9;
    children = self->_children;
  }

  v8 = [childCopy key];
  [(NSMutableDictionary *)children setObject:v9 forKey:v8];
}

@end