@interface MNStartNavigationReconnectionDetails
- (MNStartNavigationReconnectionDetails)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNStartNavigationReconnectionDetails

- (void)encodeWithCoder:(id)a3
{
  isReconnecting = self->_isReconnecting;
  v5 = a3;
  [v5 encodeBool:isReconnecting forKey:@"_isReconnecting"];
  [v5 encodeInteger:self->_initialRouteSource forKey:@"_initialRouteSource"];
  [v5 encodeInteger:self->_targetLegIndex forKey:@"_targetLegIndex"];
  [v5 encodeObject:self->_spokenAnnouncements forKey:@"_spokenAnnouncements"];
  [v5 encodeObject:self->_serverSessionState forKey:@"_serverSessionState"];
}

- (MNStartNavigationReconnectionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MNStartNavigationReconnectionDetails;
  v5 = [(MNStartNavigationReconnectionDetails *)&v15 init];
  if (v5)
  {
    v5->_isReconnecting = [v4 decodeBoolForKey:@"_isReconnecting"];
    v5->_initialRouteSource = [v4 decodeIntegerForKey:@"_initialRouteSource"];
    v5->_targetLegIndex = [v4 decodeIntegerForKey:@"_targetLegIndex"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_spokenAnnouncements"];
    spokenAnnouncements = v5->_spokenAnnouncements;
    v5->_spokenAnnouncements = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverSessionState"];
    serverSessionState = v5->_serverSessionState;
    v5->_serverSessionState = v11;

    v13 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MNStartNavigationReconnectionDetails allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->_isReconnecting = self->_isReconnecting;
    v4->_initialRouteSource = self->_initialRouteSource;
    v4->_targetLegIndex = self->_targetLegIndex;
    v6 = [(NSArray *)self->_spokenAnnouncements copy];
    spokenAnnouncements = v5->_spokenAnnouncements;
    v5->_spokenAnnouncements = v6;

    v8 = [(NSData *)self->_serverSessionState copy];
    serverSessionState = v5->_serverSessionState;
    v5->_serverSessionState = v8;

    v10 = v5;
  }

  return v5;
}

@end