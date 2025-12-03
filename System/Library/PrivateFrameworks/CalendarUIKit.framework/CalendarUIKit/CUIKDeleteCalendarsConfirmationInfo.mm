@interface CUIKDeleteCalendarsConfirmationInfo
- (CUIKDeleteCalendarsConfirmationInfo)initWithType:(unint64_t)type prompt:(id)prompt dialog:(id)dialog options:(id)options;
@end

@implementation CUIKDeleteCalendarsConfirmationInfo

- (CUIKDeleteCalendarsConfirmationInfo)initWithType:(unint64_t)type prompt:(id)prompt dialog:(id)dialog options:(id)options
{
  promptCopy = prompt;
  dialogCopy = dialog;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = CUIKDeleteCalendarsConfirmationInfo;
  v13 = [(CUIKDeleteCalendarsConfirmationInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(CUIKDeleteCalendarsConfirmationInfo *)v13 setType:type];
    [(CUIKDeleteCalendarsConfirmationInfo *)v14 setPrompt:promptCopy];
    [(CUIKDeleteCalendarsConfirmationInfo *)v14 setDialog:dialogCopy];
    [(CUIKDeleteCalendarsConfirmationInfo *)v14 setOptions:optionsCopy];
  }

  return v14;
}

@end