@interface IDSQRParticipantStreams
+ (id)streamWithParticipantID:(id)d streamArray:(id)array anyParticipant:(BOOL)participant anyStream:(BOOL)stream;
- (IDSQRParticipantStreams)initWithParticipantID:(id)d streamArray:(id)array anyParticipant:(BOOL)participant anyStream:(BOOL)stream;
@end

@implementation IDSQRParticipantStreams

+ (id)streamWithParticipantID:(id)d streamArray:(id)array anyParticipant:(BOOL)participant anyStream:(BOOL)stream
{
  streamCopy = stream;
  participantCopy = participant;
  arrayCopy = array;
  dCopy = d;
  v11 = [[IDSQRParticipantStreams alloc] initWithParticipantID:dCopy streamArray:arrayCopy anyParticipant:participantCopy anyStream:streamCopy];

  return v11;
}

- (IDSQRParticipantStreams)initWithParticipantID:(id)d streamArray:(id)array anyParticipant:(BOOL)participant anyStream:(BOOL)stream
{
  dCopy = d;
  arrayCopy = array;
  v16.receiver = self;
  v16.super_class = IDSQRParticipantStreams;
  v13 = [(IDSQRParticipantStreams *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_participantID, d);
    objc_storeStrong(&v14->_streamArray, array);
    v14->_anyParticipant = participant;
    v14->_anyStream = stream;
  }

  return v14;
}

@end