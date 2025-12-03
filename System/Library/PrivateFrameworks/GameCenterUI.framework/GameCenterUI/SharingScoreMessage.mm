@interface SharingScoreMessage
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
@end

@implementation SharingScoreMessage

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  SharingScoreMessage.activityViewController(_:subjectForActivityType:)(selfCopy, v9);

  v10 = sub_24E347CB8();

  return v10;
}

@end