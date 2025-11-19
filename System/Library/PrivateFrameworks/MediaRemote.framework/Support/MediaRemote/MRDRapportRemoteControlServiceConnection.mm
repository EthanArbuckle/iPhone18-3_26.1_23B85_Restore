@interface MRDRapportRemoteControlServiceConnection
- (MRDRapportRemoteControlServiceConnection)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRDRapportRemoteControlServiceConnection

- (void)encodeWithCoder:(id)a3
{
  sourceUID = self->_sourceUID;
  v5 = a3;
  [v5 encodeObject:sourceUID forKey:@"source"];
  [v5 encodeObject:self->_sessionUID forKey:@"session"];
  [v5 encodeObject:self->_destinationOutputDeviceUID forKey:@"destination"];
  [v5 encodeObject:self->_connectionAttemptDate forKey:@"date"];
}

- (MRDRapportRemoteControlServiceConnection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MRDRapportRemoteControlServiceConnection);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v7 = [v6 copy];
  [(MRDRapportRemoteControlServiceConnection *)v5 setSourceUID:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
  v9 = [v8 copy];
  [(MRDRapportRemoteControlServiceConnection *)v5 setDestinationOutputDeviceUID:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];

  [(MRDRapportRemoteControlServiceConnection *)v5 setSessionUID:v10];
  return v5;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"source=%@(%@) session=%@", self->_sourceUID, self->_name, self->_sessionUID];

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(MRDRapportRemoteControlServiceConnection *)self notificationToken];
  [v3 removeObserver:v4];

  v5.receiver = self;
  v5.super_class = MRDRapportRemoteControlServiceConnection;
  [(MRDRapportRemoteControlServiceConnection *)&v5 dealloc];
}

@end