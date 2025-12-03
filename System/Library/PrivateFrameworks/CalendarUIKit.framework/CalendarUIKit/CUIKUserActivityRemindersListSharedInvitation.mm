@interface CUIKUserActivityRemindersListSharedInvitation
- (BOOL)_isMatchForSource:(id)source andTitle:(id)title;
- (CUIKUserActivityRemindersListSharedInvitation)initWithDictionary:(id)dictionary;
- (CUIKUserActivityRemindersListSharedInvitation)initWithSource:(id)source title:(id)title;
- (id)dictionary;
@end

@implementation CUIKUserActivityRemindersListSharedInvitation

- (CUIKUserActivityRemindersListSharedInvitation)initWithSource:(id)source title:(id)title
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = CUIKUserActivityRemindersListSharedInvitation;
  v8 = [(CUIKUserActivityWithSource *)&v14 initWithSource:source type:4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, title);
    if (!v9->_title)
    {
      v12 = 0;
      goto LABEL_6;
    }

    [(CUIKUserActivity *)v9 setActivityTitle:?];
    v10 = CUIKBundle();
    v11 = [v10 localizedStringForKey:@"Shared Reminders List Invitation" value:&stru_1F4AA8958 table:0];
    [(CUIKUserActivity *)v9 setActivitySubtitle:v11];
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (CUIKUserActivityRemindersListSharedInvitation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CUIKUserActivityRemindersListSharedInvitation;
  v5 = [(CUIKUserActivityWithSource *)&v11 initWithDictionary:dictionaryCopy];
  if (v5 && (v10 = 0, [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.title" error:&v10], v6 = objc_claimAutoreleasedReturnValue(), title = v5->_title, v5->_title = v6, title, (v10 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)dictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v9.receiver = self;
  v9.super_class = CUIKUserActivityRemindersListSharedInvitation;
  dictionary = [(CUIKUserActivityWithSource *)&v9 dictionary];
  v5 = [v3 initWithDictionary:dictionary];

  title = self->_title;
  v10 = @"com.apple.calendarUIKit.userActivity.title";
  v11[0] = title;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

- (BOOL)_isMatchForSource:(id)source andTitle:(id)title
{
  titleCopy = title;
  if ([(CUIKUserActivityWithSource *)self isMatchForSource:source])
  {
    v7 = [titleCopy isEqualToString:self->_title];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end