@interface CUIKOROccurrenceState
+ (UIEdgeInsets)defaultMarginFromEKDayOccurrenceView;
+ (UIEdgeInsets)defaultPadding;
+ (UIEdgeInsets)defaultPaddingFromEKDayOccurrenceView;
+ (double)enoughHeightForOneLineForEvent:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5;
+ (id)languageAwareInsetsCache;
+ (id)locationCache;
+ (id)tallCharacterSetCache;
+ (void)clearLocationCache;
- (BOOL)hidesTime;
- (BOOL)isAllDay;
- (BOOL)isBirthday;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)requiresLanguageAwarePadding;
- (CGRect)backgroundRect;
- (CGRect)estimatedTextFrame;
- (CGSize)textSpace;
- (CUIKOROccurrenceState)init;
- (CUIKOROccurrenceState)initWithState:(id)a3;
- (NSArray)trailingIcons;
- (NSAttributedString)location;
- (NSString)description;
- (NSString)locationImageName;
- (NSString)moreText;
- (NSString)title;
- (UIColor)baseColor;
- (UIColor)colorBarColor;
- (UIColor)displayColor;
- (UIColor)moreTextColor;
- (UIColor)strikethroughColor;
- (UIColor)titleTextColor;
- (UIEdgeInsets)languageAwareInsets;
- (UIEdgeInsets)padding;
- (UIFont)secondaryTextFont;
- (UIImage)leadingIcon;
- (double)enoughHeightForOneLine;
- (double)minimumNaturalHeightAllText;
- (double)totalLanguageAwareHeightPadding;
- (id)_leadingSymbolSizeConfigurationForReminder:(BOOL)a3;
- (id)primaryTextFontBold:(BOOL)a3;
- (id)reminderIcon;
- (id)secondaryTitleTextColor;
- (id)status;
- (id)trailingIconsColor;
- (int)reminderStackDepth;
- (unint64_t)fontCompressionDegree;
- (unint64_t)hash;
- (void)_location:(id *)a3 locationImageName:(id *)a4;
@end

@implementation CUIKOROccurrenceState

+ (id)locationCache
{
  if (locationCache_onceToken != -1)
  {
    +[CUIKOROccurrenceState locationCache];
  }

  v3 = locationCache_cache;

  return v3;
}

- (NSString)title
{
  if ([(CUIKOROccurrenceState *)self birthdayCount]< 2)
  {
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"New Event" value:&stru_1F4AA8958 table:0];

    occurrence = self->_occurrence;
    if (occurrence)
    {
      v11 = [(EKEvent *)occurrence title];
      if ([v11 length])
      {
        v12 = CUIKDisplayedTitleForEvent(self->_occurrence);

        v9 = v12;
      }

      v4 = v9;

      v7 = v4;
    }

    else
    {
      v4 = v9;
      v7 = v4;
    }
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = CUIKBundle();
    v5 = [v4 localizedStringForKey:@"%@ birthdays" value:&stru_1F4AA8958 table:0];
    v6 = CUIKLocalizedStringForInteger(self->_birthdayCount);
    v7 = [v3 localizedStringWithFormat:v5, v6];
  }

  return v7;
}

- (unint64_t)fontCompressionDegree
{
  v3 = [(CUIKOROccurrenceState *)self horizontalSizeClass];
  [(CUIKOROccurrenceState *)self textSpace];
  v5 = v4;
  if ([(CUIKOROccurrenceState *)self isAllDay]|| [(CUIKOROccurrenceState *)self isBirthday])
  {
    return 0;
  }

  if ([(CUIKOROccurrenceState *)self usesSmallText])
  {
    [CUIKORFontUtils defaultOccurrenceSmallPrimaryTextFontForSizeClass:v3];
  }

  else
  {
    [CUIKORFontUtils defaultOccurrencePrimaryTextFontForSizeClass:v3];
  }
  v7 = ;
  v9 = [(UIFont *)v7 cuik_lineHeight];

  if (v5 >= v9 * 0.75)
  {
    return v5 < v9;
  }

  else
  {
    return 2;
  }
}

- (CGSize)textSpace
{
  [(CUIKOROccurrenceState *)self languageAwareInsets];
  v4 = v3;
  v6 = v5;
  [(CUIKOROccurrenceState *)self estimatedTextFrame];
  v8 = v7;
  v10 = v9 - (v4 + v6);
  result.height = v10;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)languageAwareInsets
{
  v3 = [objc_opt_class() languageAwareInsetsCache];
  v4 = [(CUIKOROccurrenceState *)self horizontalSizeClass];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v6 = [v3 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    [v6 CUIKEdgeInsetsValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
    v17 = [CUIKORFontUtils defaultOccurrencePrimaryTextFontForSizeClass:v4];
    if (CTFontGetLanguageAwareOutsets())
    {
      v9 = CUIKCeilToScreenScale(0.0);
      v13 = CUIKCeilToScreenScale(0.0);
    }

    else
    {
      v13 = v16[2];
      v9 = *v16;
    }

    v7 = [MEMORY[0x1E696B098] valueWithCUIKEdgeInsets:{v9, v11, v13, v15, 0}];
    [v3 setObject:v7 forKey:v5];
  }

  v18 = [(CUIKOROccurrenceState *)self title];
  v19 = [objc_opt_class() tallCharacterSetCache];
  v20 = [v18 rangeOfCharacterFromSet:v19];

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v13 + 8.0;
    v9 = v9 + 8.0;
  }

  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

+ (id)languageAwareInsetsCache
{
  if (languageAwareInsetsCache_onceToken != -1)
  {
    +[CUIKOROccurrenceState languageAwareInsetsCache];
  }

  v3 = languageAwareInsetsCache_cache;

  return v3;
}

+ (id)tallCharacterSetCache
{
  if (tallCharacterSetCache_onceToken != -1)
  {
    +[CUIKOROccurrenceState tallCharacterSetCache];
  }

  v3 = tallCharacterSetCache_cache;

  return v3;
}

- (CGRect)estimatedTextFrame
{
  v2 = self;
  objc_sync_enter(v2);
  x = v2->_estimatedTextFrame.origin.x;
  y = v2->_estimatedTextFrame.origin.y;
  width = v2->_estimatedTextFrame.size.width;
  height = v2->_estimatedTextFrame.size.height;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  if (CGRectEqualToRect(v48, *MEMORY[0x1E695F050]))
  {
    [(CUIKOROccurrenceState *)v2 backgroundRect];
    v47 = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(CUIKOROccurrenceState *)v2 travelTime];
    if (!((v14 <= 0.0) | [(CUIKOROccurrenceState *)v2 isAllDay]))
    {
      [(CUIKOROccurrenceState *)v2 travelTimeHeight];
      v11 = v15;
      v13 = v13 - v15;
    }

    [(CUIKOROccurrenceState *)v2 padding];
    v17 = v16;
    v19 = v18;
    v21 = v11 + v20;
    v23 = v13 - (v20 + v22);
    if ([(CUIKOROccurrenceState *)v2 isReminder])
    {
      [CUIKORStringGenerator naturalHeightForPrimaryTextUsingSmallText:v2->_usesSmallText sizeClass:v2->_horizontalSizeClass];
      v25 = v23 - v24;
      if (v25 > 0.0)
      {
        v23 = v23 - v25;
        v21 = v21 + v25 * 0.5;
      }
    }

    v26 = 0.0;
    if (![(CUIKOROccurrenceState *)v2 isAllDay]&& ![(CUIKOROccurrenceState *)v2 isReminder])
    {
      +[CUIKORImageUtils occurrencePadding];
      v28 = v27;
      +[CUIKORImageUtils colorBarThickness];
      v26 = v28 + v29 + 0.0;
    }

    v30 = +[CUIKInterface shared];
    v31 = [v30 interfaceIsLeftToRight];
    v32 = MEMORY[0x1E69DDCE0];
    v33 = *(MEMORY[0x1E69DDCE0] + 8);
    v34 = *(MEMORY[0x1E69DDCE0] + 24);

    if (v31)
    {
      v33 = v26;
    }

    else
    {
      v34 = v26;
    }

    [(CUIKOROccurrenceState *)v2 visibleHeight];
    v36 = v35;
    [(CUIKOROccurrenceState *)v2 languageAwareInsets];
    v39 = v23 - (*v32 + v32[2]);
    if (v36 < v39)
    {
      v39 = v36;
    }

    x = CUIKRoundRectToScreenScale(v9 + v17 + v33, v21 + *v32 - v37, v47 - (v17 + v19) - (v33 + v34), v39 + v37 + v38);
    y = v40;
    height = v41;
    width = fmax(v42, 0.0);
    v2->_estimatedTextFrame.origin.x = x;
    v2->_estimatedTextFrame.origin.y = v40;
    v2->_estimatedTextFrame.size.width = width;
    v2->_estimatedTextFrame.size.height = v41;
  }

  objc_sync_exit(v2);

  v43 = x;
  v44 = y;
  v45 = width;
  v46 = height;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (BOOL)isAllDay
{
  v3 = [(CUIKOROccurrenceState *)self allDayOverride];

  if (v3)
  {
    v4 = [(CUIKOROccurrenceState *)self allDayOverride];
    v5 = [v4 BOOLValue];

    return v5;
  }

  else
  {
    occurrence = self->_occurrence;

    return [(EKEvent *)occurrence isAllDay];
  }
}

- (BOOL)isBirthday
{
  v3 = [(EKEvent *)self->_occurrence calendar];
  v4 = [v3 type] == 4 || -[CUIKOROccurrenceState birthdayCount](self, "birthdayCount") > 0;

  return v4;
}

- (UIColor)titleTextColor
{
  v7 = [(CUIKOROccurrenceState *)self occurrence];
  v3 = [v7 calendar];
  v4 = [v3 displayColor];
  v5 = CUIKOccurrenceTextColor(v4, [(CUIKOROccurrenceState *)self isCancelled], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isSelected], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isReminder], [(CUIKOROccurrenceState *)self isCompleted], [(CUIKOROccurrenceState *)self drawReminderAsEditable], [(CUIKOROccurrenceState *)self isBirthday], [(CUIKOROccurrenceState *)self userInterfaceStyle]);

  return v5;
}

- (CUIKOROccurrenceState)init
{
  v4.receiver = self;
  v4.super_class = CUIKOROccurrenceState;
  result = [(CUIKOROccurrenceState *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_estimatedTextFrame.origin = *MEMORY[0x1E695F050];
    result->_estimatedTextFrame.size = v3;
    result->_visibleHeight = 1.79769313e308;
  }

  return result;
}

- (UIFont)secondaryTextFont
{
  v2 = [(CUIKOROccurrenceState *)self fontCompressionDegree];
  v3 = 0.0;
  if (v2 <= 2)
  {
    v3 = dbl_1CAD581E0[v2];
  }

  v4 = v3 / 11.0;
  v5 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v6 = [v5 fontDescriptor];
  [v6 pointSize];
  v8 = v7;

  CUIKRoundToScreenScale(v4 * v8);
  v9 = [v5 fontWithSize:?];

  return v9;
}

- (BOOL)isValid
{
  occurrence = self->_occurrence;
  birthdayCount = self->_birthdayCount;
  [(CUIKOROccurrenceState *)self backgroundRect];
  if (occurrence)
  {
    v6 = 0;
  }

  else
  {
    v6 = birthdayCount <= 0;
  }

  v7 = !v6;
  if (v4 < 0.0)
  {
    v7 = 0;
  }

  return v5 >= 0.0 && v7;
}

- (CGRect)backgroundRect
{
  x = self->_backgroundRect.origin.x;
  y = self->_backgroundRect.origin.y;
  width = self->_backgroundRect.size.width;
  height = self->_backgroundRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)padding
{
  [objc_opt_class() defaultPadding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CUIKOROccurrenceState *)self usesSmallText]&& ![(CUIKOROccurrenceState *)self isMiniPreviewInEventDetail])
  {
    v11 = +[CUIKInterface shared];
    v12 = [v11 interfaceIsLeftToRight];

    if (v12)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 2.0;
    }

    if (v12)
    {
      v6 = 2.0;
    }

    else
    {
      v6 = 0.0;
    }

    CUIKRoundToScreenScale(4.0);
    v4 = v13;
  }

  if ([(CUIKOROccurrenceState *)self requiresLanguageAwarePadding])
  {
    v4 = v4 + -4.0;
  }

  v14 = v8 + ([(CUIKOROccurrenceState *)self reminderStackDepth]- 1) * 2.0;
  v15 = v4;
  v16 = v6;
  v17 = v10;
  result.right = v17;
  result.bottom = v14;
  result.left = v16;
  result.top = v15;
  return result;
}

+ (UIEdgeInsets)defaultPadding
{
  v2 = +[CUIKInterface shared];
  v3 = [v2 interfaceIsLeftToRight];

  v4 = 4.0;
  if (v3)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 6.0;
  }

  if (v3)
  {
    v6 = 6.0;
  }

  else
  {
    v6 = 4.0;
  }

  v7 = 4.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v7;
  return result;
}

- (BOOL)requiresLanguageAwarePadding
{
  [(CUIKOROccurrenceState *)self languageAwareInsets];
  if (v3 <= 4.0)
  {
    return 0;
  }

  [(CUIKOROccurrenceState *)self languageAwareInsets];
  return v4 > 4.0;
}

uint64_t __49__CUIKOROccurrenceState_languageAwareInsetsCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = languageAwareInsetsCache_cache;
  languageAwareInsetsCache_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __46__CUIKOROccurrenceState_tallCharacterSetCache__block_invoke()
{
  v4 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  v0 = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  v1 = [v4 mutableCopy];
  v2 = [v0 invertedSet];
  [v1 formIntersectionWithCharacterSet:v2];

  v3 = tallCharacterSetCache_cache;
  tallCharacterSetCache_cache = v1;
}

- (id)secondaryTitleTextColor
{
  v7 = [(CUIKOROccurrenceState *)self occurrence];
  v3 = [v7 calendar];
  v4 = [v3 displayColor];
  v5 = CUIKOccurrenceSecondaryTextColor(v4, [(CUIKOROccurrenceState *)self isCancelled], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isSelected], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isReminder], [(CUIKOROccurrenceState *)self isCompleted], [(CUIKOROccurrenceState *)self drawReminderAsEditable], [(CUIKOROccurrenceState *)self isBirthday], [(CUIKOROccurrenceState *)self userInterfaceStyle]);

  return v5;
}

- (int)reminderStackDepth
{
  v2 = [(NSArray *)self->_occurrences count];
  if (v2 >= 3)
  {
    LODWORD(v2) = 3;
  }

  return v2;
}

- (UIColor)baseColor
{
  v3 = [(CUIKOROccurrenceState *)self displayColor];
  v4 = CUIKBaseColor(v3, [(CUIKOROccurrenceState *)self userInterfaceStyle], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isReminder]);

  return v4;
}

- (unint64_t)hash
{
  v3 = self->_isDimmed + self->_isSelected;
  v4 = [(EKEvent *)self->_occurrence hash];
  occurrenceIsFirstVisibleDayOfEvent = self->_occurrenceIsFirstVisibleDayOfEvent;
  v6 = (((self->_backgroundRect.size.width + self->_backgroundRect.size.height + (occurrenceIsFirstVisibleDayOfEvent + self->_usesSmallText + v3 + 13 * ([(UIColor *)self->_displayColor hash]+ v4))) + self->_travelTimeHeight * 13.0) + self->_visibleHeight * 13.0);
  userInterfaceStyle = self->_userInterfaceStyle;
  horizontalSizeClass = self->_horizontalSizeClass;
  return v6 + 13 * (horizontalSizeClass + userInterfaceStyle + [(UITraitCollection *)self->_traitCollection hash]);
}

- (NSAttributedString)location
{
  v5 = 0;
  v6 = 0;
  [(CUIKOROccurrenceState *)self _location:&v6 locationImageName:&v5];
  v2 = v6;
  v3 = v6;

  return v2;
}

- (UIColor)displayColor
{
  v2 = [(EKEvent *)self->_occurrence calendar];
  v3 = [v2 displayColor];

  return v3;
}

- (UIImage)leadingIcon
{
  v15[2] = *MEMORY[0x1E69E9840];
  if ([(CUIKOROccurrenceState *)self isReminder])
  {
    v3 = [(CUIKOROccurrenceState *)self reminderIcon];
  }

  else
  {
    if ([(CUIKOROccurrenceState *)self isSelected])
    {
      [(CUIKOROccurrenceState *)self titleTextColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] cuik_systemBackgroundColor];
    }
    v4 = ;
    v5 = MEMORY[0x1E69DCAD8];
    v15[0] = v4;
    v6 = [(CUIKOROccurrenceState *)self colorBarColor];
    v15[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v5 configurationWithPaletteColors:v7];

    v9 = [(CUIKOROccurrenceState *)self _leadingSymbolSizeConfigurationForReminder:0];
    v10 = [v8 configurationByApplyingConfiguration:v9];

    v11 = [(CUIKOROccurrenceState *)self occurrence];
    v12 = [(CUIKOROccurrenceState *)self occurrence];
    v13 = [v11 CUIK_symbolName:{objc_msgSend(v12, "isAllDay")}];

    if (v13 || ![(CUIKOROccurrenceState *)self isAllDay])
    {
      if (v13 == @"calendar.circle.fill" && ![(CUIKOROccurrenceState *)self isAllDay])
      {

        v13 = 0;
      }
    }

    else
    {
      v13 = @"calendar.circle.fill";
    }

    v3 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v13 withConfiguration:v10];
  }

  return v3;
}

- (NSString)locationImageName
{
  v6 = 0;
  v7 = 0;
  [(CUIKOROccurrenceState *)self _location:&v7 locationImageName:&v6];
  v2 = v7;
  v3 = v6;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"location.pin.point.of.interest";
  }

  return v4;
}

- (UIColor)colorBarColor
{
  v3 = [(CUIKOROccurrenceState *)self displayColor];
  v4 = CUIKColorBarColor(v3, [(CUIKOROccurrenceState *)self userInterfaceStyle], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isReminder], [(CUIKOROccurrenceState *)self isSelected], [(CUIKOROccurrenceState *)self isCancelled]);

  return v4;
}

- (NSArray)trailingIcons
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (![(CUIKOROccurrenceState *)self isReminderStack]&& ![(CUIKOROccurrenceState *)self fontCompressionDegree])
  {
    v4 = [(CUIKOROccurrenceState *)self occurrence];
    v5 = [(CUIKOROccurrenceState *)self trailingIconsColor];
    v6 = MEMORY[0x1E69DCAD8];
    v7 = [(CUIKOROccurrenceState *)self secondaryTextFont];
    v8 = [v6 cuik_configurationWithFont:v7 scale:1];

    v9 = [v4 CUIK_attendeesIconSymbolWithAttendeesIconState:objc_msgSend(v4 myParticipantStatus:{"CUIK_attendeesIconState"), objc_msgSend(v4, "selfParticipantStatus")}];
    v10 = v9;
    if (v9)
    {
      goto LABEL_11;
    }

    v11 = [(CUIKOROccurrenceState *)self occurrence];
    if ([v11 isOrWasPartOfRecurringSeries])
    {
      v12 = [(CUIKOROccurrenceState *)self occurrence];
      if (([v12 isOriginalItemPhantom] & 1) != 0 || -[CUIKOROccurrenceState isBirthday](self, "isBirthday"))
      {
      }

      else
      {
        v18 = [(CUIKOROccurrenceState *)self occurrence];
        v19 = [v18 calendar];
        v21 = [v19 isHolidayCalendar];

        if (v21)
        {
          goto LABEL_9;
        }

        v20 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:@"repeat" withConfiguration:v8];
        v11 = [v20 cuik_imageWithTintColor:v5];

        [v3 addObject:v11];
      }
    }

LABEL_9:
    v13 = [(CUIKOROccurrenceState *)self occurrence];
    v14 = [v13 hasAttachment];

    if (!v14)
    {
LABEL_12:

      goto LABEL_13;
    }

    v10 = @"paperclip";
LABEL_11:
    v15 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v10 withConfiguration:v8];
    v16 = [v15 cuik_imageWithTintColor:v5];

    [v3 addObject:v16];
    goto LABEL_12;
  }

LABEL_13:

  return v3;
}

- (id)trailingIconsColor
{
  if ([(CUIKOROccurrenceState *)self isReminder])
  {
    if ([(CUIKOROccurrenceState *)self isSelected])
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }
    v3 = ;
  }

  else
  {
    v3 = [(CUIKOROccurrenceState *)self locationTextColor];
  }

  return v3;
}

uint64_t __38__CUIKOROccurrenceState_locationCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = locationCache_cache;
  locationCache_cache = v0;

  [locationCache_cache setEvictsObjectsWhenApplicationEntersBackground:0];
  [locationCache_cache setCountLimit:500];
  notify_register_check(*MEMORY[0x1E698B090], &apHiddenAppsNotifyToken);
  check = 0;
  return notify_check(apHiddenAppsNotifyToken, &check);
}

- (NSString)moreText
{
  v3 = [(CUIKOROccurrenceState *)self occurrences];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v9 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CUIKBundle();
    v7 = [v6 localizedStringForKey:@"ReminderStackMoreFormat" value:@"%lu more" table:0];
    v8 = [(CUIKOROccurrenceState *)self occurrences];
    v9 = [v5 localizedStringWithFormat:v7, objc_msgSend(v8, "count") - 1];
  }

  return v9;
}

- (BOOL)hidesTime
{
  if ([(EKEvent *)self->_occurrence isAllDay]|| ([(EKEvent *)self->_occurrence isReminderIntegrationEvent]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return ![(CUIKOROccurrenceState *)self occurrenceIsFirstVisibleDayOfEvent];
  }
}

- (CUIKOROccurrenceState)initWithState:(id)a3
{
  v4 = a3;
  v5 = [(CUIKOROccurrenceState *)self init];
  if (v5)
  {
    v6 = [v4 occurrences];
    occurrences = v5->_occurrences;
    v5->_occurrences = v6;

    v8 = [(NSArray *)v5->_occurrences firstObject];
    occurrence = v5->_occurrence;
    v5->_occurrence = v8;

    v5->_occurrenceIsFirstVisibleDayOfEvent = [v4 occurrenceIsFirstVisibleDayOfEvent];
    v5->_isProposedTime = [v4 isProposedTime];
    v5->_isSelected = [v4 isSelected];
    v5->_isDimmed = [v4 isDimmed];
    v5->_usesSmallText = [v4 usesSmallText];
    [v4 travelTime];
    v5->_travelTime = v10;
    [v4 backgroundRect];
    v5->_backgroundRect.origin.x = v11;
    v5->_backgroundRect.origin.y = v12;
    v5->_backgroundRect.size.width = v13;
    v5->_backgroundRect.size.height = v14;
    [v4 travelTimeHeight];
    v5->_travelTimeHeight = v15;
    [v4 visibleHeight];
    v5->_visibleHeight = v16;
    v5->_userInterfaceStyle = [v4 userInterfaceStyle];
    v5->_horizontalSizeClass = [v4 horizontalSizeClass];
    v5->_birthdayCount = [v4 birthdayCount];
    v5->_isMiniPreviewInEventDetail = [v4 isMiniPreviewInEventDetail];
    v17 = [v4 allDayOverride];
    allDayOverride = v5->_allDayOverride;
    v5->_allDayOverride = v17;

    v19 = [v4 traitCollection];
    v20 = [v19 copy];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v20;
  }

  return v5;
}

+ (void)clearLocationCache
{
  v2 = [a1 locationCache];
  [v2 removeAllObjects];
}

- (void)_location:(id *)a3 locationImageName:(id *)a4
{
  check = 0;
  notify_check(apHiddenAppsNotifyToken, &check);
  if (check)
  {
    [objc_opt_class() clearLocationCache];
  }

  v7 = [objc_opt_class() locationCache];
  v8 = [(EKEvent *)self->_occurrence eventIdentifier];
  v9 = [v7 objectForKey:v8];

  *a3 = [v9 generatedLocationString];
  *a4 = [v9 locationImageName];
  v10 = [(EKEvent *)self->_occurrence location];
  v11 = [(EKEvent *)self->_occurrence locationWithoutPrediction];
  v12 = [(EKEvent *)self->_occurrence preferredLocation];
  v39 = [v12 isPrediction];

  v13 = [(EKEvent *)self->_occurrence virtualConference];
  v14 = [v13 joinMethods];
  v15 = [v14 firstObject];
  v16 = [v15 URL];

  if (!v16)
  {
    if ((-[EKEvent conferenceURLForDisplayCached](self->_occurrence, "conferenceURLForDisplayCached") & 1) != 0 || ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v16 = [(EKEvent *)self->_occurrence conferenceURLForDisplay];
    }

    else
    {
      v16 = 0;
    }
  }

  v37 = a3;
  v38 = a4;
  v17 = [v9 originalOccurrenceLocationIsPrediction];
  v18 = [v9 originalOccurrenceLocation];
  v41 = v10;
  v19 = CalEqualStrings();

  v20 = [v9 originalOccurrenceLocationWithoutPrediction];
  v40 = v11;
  v21 = CalEqualStrings();

  v22 = [(CUIKOROccurrenceState *)self hasNewTimeProposed];
  v23 = [v9 originalHasNewTimeProposed];
  v24 = [v9 originalConferenceURL];
  v25 = CalEqualObjects();

  if (v19 && v21 && ((v39 ^ v17) & 1) == 0 && ((v22 ^ v23) & 1) == 0 && v25 || (v42 = 0, [CUIKLocationDescriptionGenerator locationStringForEvent:self->_occurrence options:422 incomplete:&v42 leadingImageName:v38], *v37 = objc_claimAutoreleasedReturnValue(), (v42 & 1) != 0))
  {
    v27 = v40;
    v26 = v41;
  }

  else
  {
    v28 = [CUIKOROccurrenceStateCachedLocation alloc];
    v29 = *v37;
    v30 = *v38;
    v31 = [(CUIKOROccurrenceState *)self hasNewTimeProposed];
    v32 = v29;
    v33 = v30;
    v27 = v40;
    v26 = v41;
    v34 = [(CUIKOROccurrenceStateCachedLocation *)v28 initWithGeneratedLocationString:v32 locationImageName:v33 originalOccurrenceLocation:v41 originalOccurrenceLocationWithoutPrediction:v40 originalOccurrenceLocationIsPrediction:v39 originalHasNewTimeProposed:v31 originalConferenceURL:v16];

    v35 = [objc_opt_class() locationCache];
    v36 = [(EKEvent *)self->_occurrence eventIdentifier];
    [v35 setObject:v34 forKey:v36];

    v9 = v34;
  }
}

- (id)status
{
  if ([(CUIKOROccurrenceState *)self isDeclined])
  {
    v3 = @"DECLINED";
LABEL_5:
    v4 = CUIKBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F4AA8958 table:0];

    goto LABEL_7;
  }

  if ([(CUIKOROccurrenceState *)self isCancelled])
  {
    v3 = @"CANCELED";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (UIColor)moreTextColor
{
  [(CUIKOROccurrenceState *)self isSelected];
  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];

  return v2;
}

- (UIColor)strikethroughColor
{
  v2 = [(CUIKOROccurrenceState *)self isSelected];

  return CUIKStrikethroughColor(v2);
}

- (double)totalLanguageAwareHeightPadding
{
  [(CUIKOROccurrenceState *)self languageAwareInsets];
  v4 = v3;
  [(CUIKOROccurrenceState *)self languageAwareInsets];
  return (v4 + v5) * 0.5;
}

- (id)_leadingSymbolSizeConfigurationForReminder:(BOOL)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [(CUIKOROccurrenceState *)self primaryTextFont];
  [v5 pointSize];
  v7 = 3.0;
  if (v3)
  {
    v7 = 2.0;
  }

  v8 = v7 + v6;
  if (v3)
  {
    v9 = 7;
  }

  else
  {
    v9 = 4;
  }

  v10 = [v4 configurationWithPointSize:v9 weight:2 scale:v8];

  return v10;
}

- (id)reminderIcon
{
  v3 = [(CUIKOROccurrenceState *)self occurrence];
  v4 = [(CUIKOROccurrenceState *)self occurrence];
  v5 = [v3 CUIK_symbolName:{objc_msgSend(v4, "isAllDay")}];

  if ([(CUIKOROccurrenceState *)self isSelected])
  {
    v6 = [(CUIKOROccurrenceState *)self titleTextColor];
  }

  else
  {
    v7 = [(CUIKOROccurrenceState *)self drawReminderAsEditable];
    v8 = [(CUIKOROccurrenceState *)self occurrence];
    v9 = v8;
    if (v7)
    {
      [v8 CUIK_symbolColor];
    }

    else
    {
      [v8 CUIK_disabledSymbolColor];
    }
    v6 = ;
  }

  if ([(CUIKOROccurrenceState *)self isReminderStack])
  {
    [v6 cuik_alphaComponent];
    v11 = [v6 colorWithAlphaComponent:v10 * 0.2];

    v6 = v11;
  }

  v12 = [(CUIKOROccurrenceState *)self _leadingSymbolSizeConfigurationForReminder:1];
  v13 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v5 withConfiguration:v12];
  v14 = [v13 cuik_imageWithTintColor:v6];

  return v14;
}

- (double)minimumNaturalHeightAllText
{
  [CUIKORFontUtils minimumNaturalHeightForPrimaryTextUsingSmallText:self->_usesSmallText sizeClass:[(CUIKOROccurrenceState *)self horizontalSizeClass]];
  v4 = v3;
  v5 = [(CUIKOROccurrenceState *)self hidesTime];
  v6 = [(CUIKOROccurrenceState *)self location];
  v7 = [v6 length];

  if (!v7 && v5)
  {
    return v4;
  }

  v9 = 1;
  if (!v5)
  {
    v9 = 2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = !v5;
  }

  v11 = [(CUIKOROccurrenceState *)self secondaryTextFont];
  v13 = [(UIFont *)v11 cuik_lineHeight];

  return v4 + v13 * v10;
}

- (double)enoughHeightForOneLine
{
  v3 = objc_opt_class();
  v4 = [(CUIKOROccurrenceState *)self occurrence];
  [v3 enoughHeightForOneLineForEvent:v4 usingSmallText:-[CUIKOROccurrenceState usesSmallText](self sizeClass:{"usesSmallText"), -[CUIKOROccurrenceState horizontalSizeClass](self, "horizontalSizeClass")}];
  v6 = v5;

  return v6;
}

+ (double)enoughHeightForOneLineForEvent:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  [CUIKORFontUtils minimumNaturalHeightForPrimaryTextUsingSmallText:v6 sizeClass:a5];
  v9 = v8;
  if (([v7 isAllDay] & 1) == 0)
  {
    v10 = [v7 startCalendarDate];
    v11 = [v10 minute];

    if (v11)
    {
      CUIKRoundToScreenScale(0.5);
      v9 = v9 - v12;
    }
  }

  [objc_opt_class() defaultMarginFromEKDayOccurrenceView];
  v14 = v13;
  v16 = v15;
  [objc_opt_class() defaultPaddingFromEKDayOccurrenceView];
  CUIKRoundToScreenScale(v9 + v18 + v14 + v16 + v17);
  v20 = v19;

  return v20;
}

+ (UIEdgeInsets)defaultMarginFromEKDayOccurrenceView
{
  v2 = 1.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (UIEdgeInsets)defaultPaddingFromEKDayOccurrenceView
{
  v2 = 3.5;
  v3 = 5.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)primaryTextFontBold:(BOOL)a3
{
  v3 = a3;
  v5 = [(CUIKOROccurrenceState *)self fontCompressionDegree];
  v6 = [(CUIKOROccurrenceState *)self horizontalSizeClass];
  v7 = [(CUIKOROccurrenceState *)self usesSmallText];
  v8 = v7;
  if (v6 == 2)
  {
    v9 = *MEMORY[0x1E69DDD28];
    v10 = 0.0;
    v11 = 11.0;
    v12 = 12.0;
  }

  else
  {
    if (v7)
    {
      v9 = *MEMORY[0x1E69DDD10];
      v10 = 0.0;
      v11 = 6.5;
      v12 = 8.5;
      v13 = 11.0;
      goto LABEL_7;
    }

    v9 = *MEMORY[0x1E69DDD28];
    v10 = 0.0;
    v11 = 7.5;
    v12 = 10.0;
  }

  v13 = 13.0;
LABEL_7:
  if (!v5)
  {
    v10 = v13;
  }

  if (v5 == 1)
  {
    v10 = v12;
  }

  if (v5 == 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v3)
  {
    [MEMORY[0x1E69DB878] cuik_preferredTightLeadingBoldFontForTextStyle:{v9, v10}];
  }

  else
  {
    [MEMORY[0x1E69DB878] cuik_preferredTightLeadingFontForTextStyle:{v9, v10}];
  }
  v15 = ;
  v16 = v15;
  v17 = 13.0;
  if (v6 == 1 && v8)
  {
    v17 = 11.0;
  }

  v18 = v14 / v17;
  v19 = [v15 fontDescriptor];
  [v19 pointSize];
  v21 = v20;

  CUIKRoundToScreenScale(v18 * v21);
  v22 = [v16 fontWithSize:?];

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = CUIKOROccurrenceState;
  v4 = [(CUIKOROccurrenceState *)&v10 description];
  v5 = [(CUIKOROccurrenceState *)self title];
  [(CUIKOROccurrenceState *)self backgroundRect];
  v6 = CUIKStringFromCGRect(v12);
  [(CUIKOROccurrenceState *)self estimatedTextFrame];
  v7 = CUIKStringFromCGRect(v13);
  v8 = [v3 stringWithFormat:@"%@ <title: %@, backgroundRect: %@, estimatedTextFrame: %@>", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v36 = self->_isSelected == *(v4 + 9);
    v30 = *(v4 + 10);
    isDimmed = self->_isDimmed;
    occurrence = self->_occurrence;
    v6 = v4[2];
    v7 = v4;
    v8 = [(EKEvent *)occurrence isEqual:v6];
    occurrenceIsFirstVisibleDayOfEvent = self->_occurrenceIsFirstVisibleDayOfEvent;
    v35 = v8;
    v33 = v7[13];
    v32 = [(UIColor *)self->_displayColor isEqual:*(v7 + 4)];
    usesSmallText = self->_usesSmallText;
    v10 = v7[11];
    v28 = *(v7 + 152);
    size = self->_backgroundRect.size;
    v26 = *(v7 + 4);
    v27 = *&self->_travelTimeHeight;
    userInterfaceStyle = self->_userInterfaceStyle;
    horizontalSizeClass = self->_horizontalSizeClass;
    v13 = *(v7 + 10);
    v14 = *(v7 + 11);
    traitCollection = self->_traitCollection;
    v16 = *(v7 + 12);

    v17 = [(UITraitCollection *)traitCollection isEqual:v16];
    v18 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3F50624DD2F1A9FCuLL), vabdq_f64(v27, v26)));
    v19 = vuzp1_s16(v18, v18);
    v19.i32[1] = vuzp1_s16(v19, vmovn_s64(vceqq_f64(v28, *&size))).i32[1];
    v20 = vminv_u16(v19) & v36;
    if (isDimmed != v30 || occurrenceIsFirstVisibleDayOfEvent != v33)
    {
      v20 = 0;
    }

    if (usesSmallText != v10 || userInterfaceStyle != v13 || horizontalSizeClass != v14)
    {
      v20 = 0;
    }

    v24 = v20 & v17 & v32 & v35;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end