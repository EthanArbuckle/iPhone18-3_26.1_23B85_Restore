@interface MRDSystemGroupSessionTransportConnection
- (MRDSystemGroupSessionTransportConnection)initWithGroupSession:(id)a3 participantIdentifier:(id)a4;
- (id)exportOutputDevice:(id)a3 endpoint:(id)a4;
@end

@implementation MRDSystemGroupSessionTransportConnection

- (MRDSystemGroupSessionTransportConnection)initWithGroupSession:(id)a3 participantIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRDSystemGroupSessionTransportConnection;
  return [(MRDBaseGroupSessionTransportConnection *)&v5 initWithGroupSession:a3 participantIdentifier:a4 dataSource:self];
}

- (id)exportOutputDevice:(id)a3 endpoint:(id)a4
{
  v5 = a3;
  if ([v5 isLocalDevice])
  {
    v6 = [MRAVDistantOutputDevice alloc];
    v7 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
    v8 = [v6 initWithSystemGroupSession:v7];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end