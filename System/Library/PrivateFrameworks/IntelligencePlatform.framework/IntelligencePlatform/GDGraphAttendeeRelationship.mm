@interface GDGraphAttendeeRelationship
- (GDGraphAttendeeRelationship)initWithEventParticipationTypeField:(id)a3 attendeeIdField:(id)a4 allEventParticipationTypeField:(id)a5 allAttendeeIdField:(id)a6;
@end

@implementation GDGraphAttendeeRelationship

- (GDGraphAttendeeRelationship)initWithEventParticipationTypeField:(id)a3 attendeeIdField:(id)a4 allEventParticipationTypeField:(id)a5 allAttendeeIdField:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GDGraphAttendeeRelationship;
  v15 = [(GDGraphAttendeeRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventParticipationType, a3);
    objc_storeStrong(&v16->_attendeeId, a4);
    objc_storeStrong(&v16->_allEventParticipationType, a5);
    objc_storeStrong(&v16->_allAttendeeId, a6);
  }

  return v16;
}

@end