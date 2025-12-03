@interface MRDBaseGroupSessionTransportConnection
- (BOOL)hasAccessToPlayerPath:(id)path;
- (BOOL)isAllowedToSendMessageType:(unint64_t)type;
- (MRDBaseGroupSession)groupSession;
- (MRDBaseGroupSessionTransportConnection)initWithGroupSession:(id)session participantIdentifier:(id)identifier dataSource:(id)source;
- (NSString)description;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)session:(id)session didReceiveMessageData:(id)data fromParticipant:(id)participant;
@end

@implementation MRDBaseGroupSessionTransportConnection

- (MRDBaseGroupSessionTransportConnection)initWithGroupSession:(id)session participantIdentifier:(id)identifier dataSource:(id)source
{
  sessionCopy = session;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = MRDBaseGroupSessionTransportConnection;
  v10 = [(MRDBaseGroupSessionTransportConnection *)&v17 initWithDataSource:source];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_groupSession, sessionCopy);
    v12 = [identifierCopy copy];
    participantIdentifier = v11->_participantIdentifier;
    v11->_participantIdentifier = v12;
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %@ init", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&v11->_groupSession);
  [WeakRetained addObserver:v11];

  return v11;
}

- (NSString)description
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_groupSession);
  identifier = [WeakRetained identifier];
  v6 = [NSString stringWithFormat:@"<%@:%p session=%@ participant=%@>", v3, self, identifier, self->_participantIdentifier];

  return v6;
}

- (unint64_t)sendTransportData:(id)data options:(id)options
{
  dataCopy = data;
  groupSession = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
  participantIdentifier = [(MRDBaseGroupSessionTransportConnection *)self participantIdentifier];
  v11 = participantIdentifier;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [groupSession sendMessageData:dataCopy toParticipants:v8];

  v9 = [dataCopy length];
  return v9;
}

- (void)session:(id)session didReceiveMessageData:(id)data fromParticipant:(id)participant
{
  dataCopy = data;
  participantCopy = participant;
  participantIdentifier = [(MRDBaseGroupSessionTransportConnection *)self participantIdentifier];
  v9 = [participantCopy isEqualToString:participantIdentifier];

  if (v9)
  {
    [(MRDBaseGroupSessionTransportConnection *)self _notifyDelegateDidReceiveData:dataCopy];
  }
}

- (BOOL)hasAccessToPlayerPath:(id)path
{
  client = [path client];
  isSystemMediaApplication = [client isSystemMediaApplication];

  return isSystemMediaApplication;
}

- (BOOL)isAllowedToSendMessageType:(unint64_t)type
{
  if (qword_1005293F0 != -1)
  {
    sub_1003A8BE0();
  }

  v4 = qword_1005293E8;
  v5 = [NSNumber numberWithUnsignedInteger:type];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

- (MRDBaseGroupSession)groupSession
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSession);

  return WeakRetained;
}

@end