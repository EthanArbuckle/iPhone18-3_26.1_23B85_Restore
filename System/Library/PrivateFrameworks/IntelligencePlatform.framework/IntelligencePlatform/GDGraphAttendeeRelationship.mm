@interface GDGraphAttendeeRelationship
- (GDGraphAttendeeRelationship)initWithEventParticipationTypeField:(id)field attendeeIdField:(id)idField allEventParticipationTypeField:(id)typeField allAttendeeIdField:(id)attendeeIdField;
@end

@implementation GDGraphAttendeeRelationship

- (GDGraphAttendeeRelationship)initWithEventParticipationTypeField:(id)field attendeeIdField:(id)idField allEventParticipationTypeField:(id)typeField allAttendeeIdField:(id)attendeeIdField
{
  fieldCopy = field;
  idFieldCopy = idField;
  typeFieldCopy = typeField;
  attendeeIdFieldCopy = attendeeIdField;
  v18.receiver = self;
  v18.super_class = GDGraphAttendeeRelationship;
  v15 = [(GDGraphAttendeeRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventParticipationType, field);
    objc_storeStrong(&v16->_attendeeId, idField);
    objc_storeStrong(&v16->_allEventParticipationType, typeField);
    objc_storeStrong(&v16->_allAttendeeId, attendeeIdField);
  }

  return v16;
}

@end