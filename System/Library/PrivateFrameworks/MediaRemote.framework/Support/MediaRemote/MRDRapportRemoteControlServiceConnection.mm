@interface MRDRapportRemoteControlServiceConnection
- (MRDRapportRemoteControlServiceConnection)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRDRapportRemoteControlServiceConnection

- (void)encodeWithCoder:(id)coder
{
  sourceUID = self->_sourceUID;
  coderCopy = coder;
  [coderCopy encodeObject:sourceUID forKey:@"source"];
  [coderCopy encodeObject:self->_sessionUID forKey:@"session"];
  [coderCopy encodeObject:self->_destinationOutputDeviceUID forKey:@"destination"];
  [coderCopy encodeObject:self->_connectionAttemptDate forKey:@"date"];
}

- (MRDRapportRemoteControlServiceConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(MRDRapportRemoteControlServiceConnection);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v7 = [v6 copy];
  [(MRDRapportRemoteControlServiceConnection *)v5 setSourceUID:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
  v9 = [v8 copy];
  [(MRDRapportRemoteControlServiceConnection *)v5 setDestinationOutputDeviceUID:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session"];

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
  notificationToken = [(MRDRapportRemoteControlServiceConnection *)self notificationToken];
  [v3 removeObserver:notificationToken];

  v5.receiver = self;
  v5.super_class = MRDRapportRemoteControlServiceConnection;
  [(MRDRapportRemoteControlServiceConnection *)&v5 dealloc];
}

@end