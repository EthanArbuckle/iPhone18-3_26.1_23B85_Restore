@interface CreateContactView.ContactViewDelegate
- (_TtCV14FamilyCircleUI17CreateContactView19ContactViewDelegate)init;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
@end

@implementation CreateContactView.ContactViewDelegate

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21BBF3004(v6, a4);
}

- (_TtCV14FamilyCircleUI17CreateContactView19ContactViewDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CreateContactView.ContactViewDelegate();
  return [(CreateContactView.ContactViewDelegate *)&v3 init];
}

@end