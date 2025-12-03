@interface MRDSystemGroupSessionTransportConnection
- (MRDSystemGroupSessionTransportConnection)initWithGroupSession:(id)session participantIdentifier:(id)identifier;
- (id)exportOutputDevice:(id)device endpoint:(id)endpoint;
@end

@implementation MRDSystemGroupSessionTransportConnection

- (MRDSystemGroupSessionTransportConnection)initWithGroupSession:(id)session participantIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = MRDSystemGroupSessionTransportConnection;
  return [(MRDBaseGroupSessionTransportConnection *)&v5 initWithGroupSession:session participantIdentifier:identifier dataSource:self];
}

- (id)exportOutputDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  if ([deviceCopy isLocalDevice])
  {
    v6 = [MRAVDistantOutputDevice alloc];
    groupSession = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
    v8 = [v6 initWithSystemGroupSession:groupSession];
  }

  else
  {
    v8 = deviceCopy;
  }

  return v8;
}

@end