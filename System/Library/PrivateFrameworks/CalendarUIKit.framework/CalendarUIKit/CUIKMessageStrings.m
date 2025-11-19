@interface CUIKMessageStrings
- (CUIKMessageStrings)initWithTitles:(id)a3 bodyStrings:(id)a4 comments:(int64_t)a5 timeProposals:(BOOL)a6 importantAttendee:(id)a7;
@end

@implementation CUIKMessageStrings

- (CUIKMessageStrings)initWithTitles:(id)a3 bodyStrings:(id)a4 comments:(int64_t)a5 timeProposals:(BOOL)a6 importantAttendee:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [(CUIKMessageStrings *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_titleStrings, a3);
    objc_storeStrong(&v17->_bodyStrings, a4);
    v17->_comments = a5;
    objc_storeStrong(&v17->_importantAttendee, a7);
    v17->_timeProposals = a6;
  }

  return v17;
}

@end