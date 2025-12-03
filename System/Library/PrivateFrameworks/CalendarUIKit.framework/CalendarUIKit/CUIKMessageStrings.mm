@interface CUIKMessageStrings
- (CUIKMessageStrings)initWithTitles:(id)titles bodyStrings:(id)strings comments:(int64_t)comments timeProposals:(BOOL)proposals importantAttendee:(id)attendee;
@end

@implementation CUIKMessageStrings

- (CUIKMessageStrings)initWithTitles:(id)titles bodyStrings:(id)strings comments:(int64_t)comments timeProposals:(BOOL)proposals importantAttendee:(id)attendee
{
  titlesCopy = titles;
  stringsCopy = strings;
  attendeeCopy = attendee;
  v16 = [(CUIKMessageStrings *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_titleStrings, titles);
    objc_storeStrong(&v17->_bodyStrings, strings);
    v17->_comments = comments;
    objc_storeStrong(&v17->_importantAttendee, attendee);
    v17->_timeProposals = proposals;
  }

  return v17;
}

@end