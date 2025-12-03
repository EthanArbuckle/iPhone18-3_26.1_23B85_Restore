@interface MNStartNavigationReconnectionDetails
- (MNStartNavigationReconnectionDetails)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNStartNavigationReconnectionDetails

- (void)encodeWithCoder:(id)coder
{
  isReconnecting = self->_isReconnecting;
  coderCopy = coder;
  [coderCopy encodeBool:isReconnecting forKey:@"_isReconnecting"];
  [coderCopy encodeInteger:self->_initialRouteSource forKey:@"_initialRouteSource"];
  [coderCopy encodeInteger:self->_targetLegIndex forKey:@"_targetLegIndex"];
  [coderCopy encodeObject:self->_spokenAnnouncements forKey:@"_spokenAnnouncements"];
  [coderCopy encodeObject:self->_serverSessionState forKey:@"_serverSessionState"];
}

- (MNStartNavigationReconnectionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MNStartNavigationReconnectionDetails;
  v5 = [(MNStartNavigationReconnectionDetails *)&v15 init];
  if (v5)
  {
    v5->_isReconnecting = [coderCopy decodeBoolForKey:@"_isReconnecting"];
    v5->_initialRouteSource = [coderCopy decodeIntegerForKey:@"_initialRouteSource"];
    v5->_targetLegIndex = [coderCopy decodeIntegerForKey:@"_targetLegIndex"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_spokenAnnouncements"];
    spokenAnnouncements = v5->_spokenAnnouncements;
    v5->_spokenAnnouncements = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverSessionState"];
    serverSessionState = v5->_serverSessionState;
    v5->_serverSessionState = v11;

    v13 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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