@interface CreateContactView.ContactViewDelegate
- (_TtCV14FamilyCircleUI17CreateContactView19ContactViewDelegate)init;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation CreateContactView.ContactViewDelegate

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  sub_21BBF3004(controllerCopy, contact);
}

- (_TtCV14FamilyCircleUI17CreateContactView19ContactViewDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CreateContactView.ContactViewDelegate();
  return [(CreateContactView.ContactViewDelegate *)&v3 init];
}

@end