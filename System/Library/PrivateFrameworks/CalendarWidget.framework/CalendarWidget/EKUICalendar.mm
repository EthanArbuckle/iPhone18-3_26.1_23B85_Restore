@interface EKUICalendar
- (EKUICalendar)initWithCoder:(id)coder;
- (EKUICalendar)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation EKUICalendar

- (EKUICalendar)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_1E4878BDC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1E4878BDC();
  v11 = v10;
  if (hint)
  {
    v12 = sub_1E4878BDC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return EKUICalendar.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (EKUICalendar)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EKUICalendar();
  coderCopy = coder;
  v5 = [(EKUICalendar *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end