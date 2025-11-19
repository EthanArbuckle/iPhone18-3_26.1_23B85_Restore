@interface IDSQRParticipantStreams
+ (id)streamWithParticipantID:(id)a3 streamArray:(id)a4 anyParticipant:(BOOL)a5 anyStream:(BOOL)a6;
- (IDSQRParticipantStreams)initWithParticipantID:(id)a3 streamArray:(id)a4 anyParticipant:(BOOL)a5 anyStream:(BOOL)a6;
@end

@implementation IDSQRParticipantStreams

+ (id)streamWithParticipantID:(id)a3 streamArray:(id)a4 anyParticipant:(BOOL)a5 anyStream:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[IDSQRParticipantStreams alloc] initWithParticipantID:v10 streamArray:v9 anyParticipant:v7 anyStream:v6];

  return v11;
}

- (IDSQRParticipantStreams)initWithParticipantID:(id)a3 streamArray:(id)a4 anyParticipant:(BOOL)a5 anyStream:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = IDSQRParticipantStreams;
  v13 = [(IDSQRParticipantStreams *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_participantID, a3);
    objc_storeStrong(&v14->_streamArray, a4);
    v14->_anyParticipant = a5;
    v14->_anyStream = a6;
  }

  return v14;
}

@end