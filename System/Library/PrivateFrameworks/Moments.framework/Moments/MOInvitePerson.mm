@interface MOInvitePerson
- (MOInvitePerson)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOInvitePerson

- (void)encodeWithCoder:(id)a3
{
  displayName = self->_displayName;
  v5 = a3;
  [v5 encodeObject:displayName forKey:@"invitePersonDisplayName"];
  [v5 encodeObject:self->_rsvpStatus forKey:@"invitePersonRSVPStatus"];
  [v5 encodeBool:self->_isMe forKey:@"invitePersonIsMe"];
}

- (MOInvitePerson)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOInvitePerson;
  v5 = [(MOInvitePerson *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitePersonDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitePersonRSVPStatus"];
    rsvpStatus = v5->_rsvpStatus;
    v5->_rsvpStatus = v8;

    v5->_isMe = [v4 decodeBoolForKey:@"invitePersonIsMe"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOInvitePerson);
  v5 = [(MOInvitePerson *)self displayName];
  [(MOInvitePerson *)v4 setDisplayName:v5];

  v6 = [(MOInvitePerson *)self rsvpStatus];
  [(MOInvitePerson *)v4 setRsvpStatus:v6];

  [(MOInvitePerson *)v4 setIsMe:[(MOInvitePerson *)self isMe]];
  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NSString *)self->_displayName mask];
  v4 = [v2 stringWithFormat:@"displayName, %@", v3];

  return v4;
}

@end