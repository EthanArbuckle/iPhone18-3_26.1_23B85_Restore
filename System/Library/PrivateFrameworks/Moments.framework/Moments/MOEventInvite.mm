@interface MOEventInvite
- (MOEventInvite)init;
- (MOEventInvite)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventInvite

- (MOEventInvite)init
{
  v3.receiver = self;
  v3.super_class = MOEventInvite;
  result = [(MOEventInvite *)&v3 init];
  if (result)
  {
    result->_inviteEventIsAllDay = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  inviteEventTitle = self->_inviteEventTitle;
  coderCopy = coder;
  [coderCopy encodeObject:inviteEventTitle forKey:@"inviteEventTitle"];
  [coderCopy encodeObject:self->_inviteEventPlaceName forKey:@"inviteEventPlaceName"];
  [coderCopy encodeObject:self->_inviteEventLocation forKey:@"inviteEventLocation"];
  [coderCopy encodeBool:self->_inviteEventIsAllDay forKey:@"inviteEventIsAllDay"];
  [coderCopy encodeObject:self->_inviteEventOrganizers forKey:@"inviteEventOrganizers"];
  [coderCopy encodeObject:self->_inviteEventAttendees forKey:@"inviteEventAttendees"];
}

- (MOEventInvite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MOEventInvite;
  v5 = [(MOEventInvite *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteEventTitle"];
    inviteEventTitle = v5->_inviteEventTitle;
    v5->_inviteEventTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteEventPlaceName"];
    inviteEventPlaceName = v5->_inviteEventPlaceName;
    v5->_inviteEventPlaceName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteEventLocation"];
    inviteEventLocation = v5->_inviteEventLocation;
    v5->_inviteEventLocation = v10;

    v5->_inviteEventIsAllDay = [coderCopy decodeBoolForKey:@"inviteEventIsAllDay"];
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"inviteEventOrganizers"];
    inviteEventOrganizers = v5->_inviteEventOrganizers;
    v5->_inviteEventOrganizers = v16;

    v18 = objc_autoreleasePoolPush();
    v19 = objc_alloc(MEMORY[0x277CBEB98]);
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"inviteEventAttendees"];
    inviteEventAttendees = v5->_inviteEventAttendees;
    v5->_inviteEventAttendees = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventInvite);
  objc_storeStrong(&v4->_inviteEventTitle, self->_inviteEventTitle);
  objc_storeStrong(&v4->_inviteEventPlaceName, self->_inviteEventPlaceName);
  objc_storeStrong(&v4->_inviteEventLocation, self->_inviteEventLocation);
  v4->_inviteEventIsAllDay = self->_inviteEventIsAllDay;
  objc_storeStrong(&v4->_inviteEventOrganizers, self->_inviteEventOrganizers);
  objc_storeStrong(&v4->_inviteEventAttendees, self->_inviteEventAttendees);
  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  mask = [(NSString *)self->_inviteEventTitle mask];
  v4 = [v2 stringWithFormat:@"invite event title, %@", mask];

  return v4;
}

@end