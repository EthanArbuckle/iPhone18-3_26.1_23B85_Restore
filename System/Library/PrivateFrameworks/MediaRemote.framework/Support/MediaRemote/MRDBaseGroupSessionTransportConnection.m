@interface MRDBaseGroupSessionTransportConnection
- (BOOL)hasAccessToPlayerPath:(id)a3;
- (BOOL)isAllowedToSendMessageType:(unint64_t)a3;
- (MRDBaseGroupSession)groupSession;
- (MRDBaseGroupSessionTransportConnection)initWithGroupSession:(id)a3 participantIdentifier:(id)a4 dataSource:(id)a5;
- (NSString)description;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)session:(id)a3 didReceiveMessageData:(id)a4 fromParticipant:(id)a5;
@end

@implementation MRDBaseGroupSessionTransportConnection

- (MRDBaseGroupSessionTransportConnection)initWithGroupSession:(id)a3 participantIdentifier:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = MRDBaseGroupSessionTransportConnection;
  v10 = [(MRDBaseGroupSessionTransportConnection *)&v17 initWithDataSource:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_groupSession, v8);
    v12 = [v9 copy];
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
  v5 = [WeakRetained identifier];
  v6 = [NSString stringWithFormat:@"<%@:%p session=%@ participant=%@>", v3, self, v5, self->_participantIdentifier];

  return v6;
}

- (unint64_t)sendTransportData:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
  v7 = [(MRDBaseGroupSessionTransportConnection *)self participantIdentifier];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v6 sendMessageData:v5 toParticipants:v8];

  v9 = [v5 length];
  return v9;
}

- (void)session:(id)a3 didReceiveMessageData:(id)a4 fromParticipant:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(MRDBaseGroupSessionTransportConnection *)self participantIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [(MRDBaseGroupSessionTransportConnection *)self _notifyDelegateDidReceiveData:v10];
  }
}

- (BOOL)hasAccessToPlayerPath:(id)a3
{
  v3 = [a3 client];
  v4 = [v3 isSystemMediaApplication];

  return v4;
}

- (BOOL)isAllowedToSendMessageType:(unint64_t)a3
{
  if (qword_1005293F0 != -1)
  {
    sub_1003A8BE0();
  }

  v4 = qword_1005293E8;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

- (MRDBaseGroupSession)groupSession
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSession);

  return WeakRetained;
}

@end