@interface CUIKDeleteCalendarsConfirmationInfo
- (CUIKDeleteCalendarsConfirmationInfo)initWithType:(unint64_t)a3 prompt:(id)a4 dialog:(id)a5 options:(id)a6;
@end

@implementation CUIKDeleteCalendarsConfirmationInfo

- (CUIKDeleteCalendarsConfirmationInfo)initWithType:(unint64_t)a3 prompt:(id)a4 dialog:(id)a5 options:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CUIKDeleteCalendarsConfirmationInfo;
  v13 = [(CUIKDeleteCalendarsConfirmationInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(CUIKDeleteCalendarsConfirmationInfo *)v13 setType:a3];
    [(CUIKDeleteCalendarsConfirmationInfo *)v14 setPrompt:v10];
    [(CUIKDeleteCalendarsConfirmationInfo *)v14 setDialog:v11];
    [(CUIKDeleteCalendarsConfirmationInfo *)v14 setOptions:v12];
  }

  return v14;
}

@end