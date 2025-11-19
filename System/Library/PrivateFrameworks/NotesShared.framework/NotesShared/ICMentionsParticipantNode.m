@interface ICMentionsParticipantNode
- (NSMutableSet)participants;
- (NSMutableSet)possibleParticipants;
- (void)addChild:(id)a3;
- (void)addParticipant:(id)a3;
- (void)addPossibleParticipant:(id)a3;
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

- (void)addParticipant:(id)a3
{
  v5 = a3;
  v4 = [(ICMentionsParticipantNode *)self participants];
  [v4 addObject:v5];

  [(ICMentionsParticipantNode *)self addPossibleParticipant:v5];
}

- (void)addPossibleParticipant:(id)a3
{
  v4 = a3;
  v5 = [(ICMentionsParticipantNode *)self possibleParticipants];
  [v5 addObject:v4];
}

- (void)addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v9 = v4;
  if (!children)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v7 = self->_children;
    self->_children = v6;

    v4 = v9;
    children = self->_children;
  }

  v8 = [v4 key];
  [(NSMutableDictionary *)children setObject:v9 forKey:v8];
}

@end