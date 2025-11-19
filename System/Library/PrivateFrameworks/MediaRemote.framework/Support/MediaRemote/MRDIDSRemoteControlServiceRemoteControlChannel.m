@interface MRDIDSRemoteControlServiceRemoteControlChannel
- (id)debugDescription;
@end

@implementation MRDIDSRemoteControlServiceRemoteControlChannel

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  [v3 appendFormat:@"  destination = %@\n", self->_destination];
  [v3 appendFormat:@"  session = %@\n", self->_session];
  connectionAttemptDate = self->_connectionAttemptDate;
  [(NSDate *)connectionAttemptDate timeIntervalSinceNow];
  [v3 appendFormat:@"  connectionAttemptDate = %@ (%lf seconds ago)\n", connectionAttemptDate, v5];
  transport = self->_transport;
  v7 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@"  transport = %@\n", v7];

  [v3 appendString:@"}>"];

  return v3;
}

@end