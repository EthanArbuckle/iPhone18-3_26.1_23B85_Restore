@interface CUIKOROccurrenceState
+ (UIEdgeInsets)defaultMarginFromEKDayOccurrenceView;
+ (UIEdgeInsets)defaultPadding;
+ (UIEdgeInsets)defaultPaddingFromEKDayOccurrenceView;
+ (double)enoughHeightForOneLineForEvent:(id)event usingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (id)languageAwareInsetsCache;
+ (id)locationCache;
+ (id)tallCharacterSetCache;
+ (void)clearLocationCache;
- (BOOL)hidesTime;
- (BOOL)isAllDay;
- (BOOL)isBirthday;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (BOOL)requiresLanguageAwarePadding;
- (CGRect)backgroundRect;
- (CGRect)estimatedTextFrame;
- (CGSize)textSpace;
- (CUIKOROccurrenceState)init;
- (CUIKOROccurrenceState)initWithState:(id)state;
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
- (id)_leadingSymbolSizeConfigurationForReminder:(BOOL)reminder;
- (id)primaryTextFontBold:(BOOL)bold;
- (id)reminderIcon;
- (id)secondaryTitleTextColor;
- (id)status;
- (id)trailingIconsColor;
- (int)reminderStackDepth;
- (unint64_t)fontCompressionDegree;
- (unint64_t)hash;
- (void)_location:(id *)_location locationImageName:(id *)name;
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
      title = [(EKEvent *)occurrence title];
      if ([title length])
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
  horizontalSizeClass = [(CUIKOROccurrenceState *)self horizontalSizeClass];
  [(CUIKOROccurrenceState *)self textSpace];
  v5 = v4;
  if ([(CUIKOROccurrenceState *)self isAllDay]|| [(CUIKOROccurrenceState *)self isBirthday])
  {
    return 0;
  }

  if ([(CUIKOROccurrenceState *)self usesSmallText])
  {
    [CUIKORFontUtils defaultOccurrenceSmallPrimaryTextFontForSizeClass:horizontalSizeClass];
  }

  else
  {
    [CUIKORFontUtils defaultOccurrencePrimaryTextFontForSizeClass:horizontalSizeClass];
  }
  v7 = ;
  cuik_lineHeight = [(UIFont *)v7 cuik_lineHeight];

  if (v5 >= cuik_lineHeight * 0.75)
  {
    return v5 < cuik_lineHeight;
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
  languageAwareInsetsCache = [objc_opt_class() languageAwareInsetsCache];
  horizontalSizeClass = [(CUIKOROccurrenceState *)self horizontalSizeClass];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:horizontalSizeClass];
  v6 = [languageAwareInsetsCache objectForKey:v5];
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
    v17 = [CUIKORFontUtils defaultOccurrencePrimaryTextFontForSizeClass:horizontalSizeClass];
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
    [languageAwareInsetsCache setObject:v7 forKey:v5];
  }

  title = [(CUIKOROccurrenceState *)self title];
  tallCharacterSetCache = [objc_opt_class() tallCharacterSetCache];
  v20 = [title rangeOfCharacterFromSet:tallCharacterSetCache];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  x = selfCopy->_estimatedTextFrame.origin.x;
  y = selfCopy->_estimatedTextFrame.origin.y;
  width = selfCopy->_estimatedTextFrame.size.width;
  height = selfCopy->_estimatedTextFrame.size.height;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  if (CGRectEqualToRect(v48, *MEMORY[0x1E695F050]))
  {
    [(CUIKOROccurrenceState *)selfCopy backgroundRect];
    v47 = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(CUIKOROccurrenceState *)selfCopy travelTime];
    if (!((v14 <= 0.0) | [(CUIKOROccurrenceState *)selfCopy isAllDay]))
    {
      [(CUIKOROccurrenceState *)selfCopy travelTimeHeight];
      v11 = v15;
      v13 = v13 - v15;
    }

    [(CUIKOROccurrenceState *)selfCopy padding];
    v17 = v16;
    v19 = v18;
    v21 = v11 + v20;
    v23 = v13 - (v20 + v22);
    if ([(CUIKOROccurrenceState *)selfCopy isReminder])
    {
      [CUIKORStringGenerator naturalHeightForPrimaryTextUsingSmallText:selfCopy->_usesSmallText sizeClass:selfCopy->_horizontalSizeClass];
      v25 = v23 - v24;
      if (v25 > 0.0)
      {
        v23 = v23 - v25;
        v21 = v21 + v25 * 0.5;
      }
    }

    v26 = 0.0;
    if (![(CUIKOROccurrenceState *)selfCopy isAllDay]&& ![(CUIKOROccurrenceState *)selfCopy isReminder])
    {
      +[CUIKORImageUtils occurrencePadding];
      v28 = v27;
      +[CUIKORImageUtils colorBarThickness];
      v26 = v28 + v29 + 0.0;
    }

    v30 = +[CUIKInterface shared];
    interfaceIsLeftToRight = [v30 interfaceIsLeftToRight];
    v32 = MEMORY[0x1E69DDCE0];
    v33 = *(MEMORY[0x1E69DDCE0] + 8);
    v34 = *(MEMORY[0x1E69DDCE0] + 24);

    if (interfaceIsLeftToRight)
    {
      v33 = v26;
    }

    else
    {
      v34 = v26;
    }

    [(CUIKOROccurrenceState *)selfCopy visibleHeight];
    v36 = v35;
    [(CUIKOROccurrenceState *)selfCopy languageAwareInsets];
    v39 = v23 - (*v32 + v32[2]);
    if (v36 < v39)
    {
      v39 = v36;
    }

    x = CUIKRoundRectToScreenScale(v9 + v17 + v33, v21 + *v32 - v37, v47 - (v17 + v19) - (v33 + v34), v39 + v37 + v38);
    y = v40;
    height = v41;
    width = fmax(v42, 0.0);
    selfCopy->_estimatedTextFrame.origin.x = x;
    selfCopy->_estimatedTextFrame.origin.y = v40;
    selfCopy->_estimatedTextFrame.size.width = width;
    selfCopy->_estimatedTextFrame.size.height = v41;
  }

  objc_sync_exit(selfCopy);

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
  allDayOverride = [(CUIKOROccurrenceState *)self allDayOverride];

  if (allDayOverride)
  {
    allDayOverride2 = [(CUIKOROccurrenceState *)self allDayOverride];
    bOOLValue = [allDayOverride2 BOOLValue];

    return bOOLValue;
  }

  else
  {
    occurrence = self->_occurrence;

    return [(EKEvent *)occurrence isAllDay];
  }
}

- (BOOL)isBirthday
{
  calendar = [(EKEvent *)self->_occurrence calendar];
  v4 = [calendar type] == 4 || -[CUIKOROccurrenceState birthdayCount](self, "birthdayCount") > 0;

  return v4;
}

- (UIColor)titleTextColor
{
  occurrence = [(CUIKOROccurrenceState *)self occurrence];
  calendar = [occurrence calendar];
  displayColor = [calendar displayColor];
  v5 = CUIKOccurrenceTextColor(displayColor, [(CUIKOROccurrenceState *)self isCancelled], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isSelected], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isReminder], [(CUIKOROccurrenceState *)self isCompleted], [(CUIKOROccurrenceState *)self drawReminderAsEditable], [(CUIKOROccurrenceState *)self isBirthday], [(CUIKOROccurrenceState *)self userInterfaceStyle]);

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
  fontCompressionDegree = [(CUIKOROccurrenceState *)self fontCompressionDegree];
  v3 = 0.0;
  if (fontCompressionDegree <= 2)
  {
    v3 = dbl_1CAD581E0[fontCompressionDegree];
  }

  v4 = v3 / 11.0;
  v5 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingFontForTextStyle:*MEMORY[0x1E69DDD10]];
  fontDescriptor = [v5 fontDescriptor];
  [fontDescriptor pointSize];
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
    interfaceIsLeftToRight = [v11 interfaceIsLeftToRight];

    if (interfaceIsLeftToRight)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 2.0;
    }

    if (interfaceIsLeftToRight)
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
  interfaceIsLeftToRight = [v2 interfaceIsLeftToRight];

  v4 = 4.0;
  if (interfaceIsLeftToRight)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 6.0;
  }

  if (interfaceIsLeftToRight)
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
  occurrence = [(CUIKOROccurrenceState *)self occurrence];
  calendar = [occurrence calendar];
  displayColor = [calendar displayColor];
  v5 = CUIKOccurrenceSecondaryTextColor(displayColor, [(CUIKOROccurrenceState *)self isCancelled], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isSelected], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isReminder], [(CUIKOROccurrenceState *)self isCompleted], [(CUIKOROccurrenceState *)self drawReminderAsEditable], [(CUIKOROccurrenceState *)self isBirthday], [(CUIKOROccurrenceState *)self userInterfaceStyle]);

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
  displayColor = [(CUIKOROccurrenceState *)self displayColor];
  v4 = CUIKBaseColor(displayColor, [(CUIKOROccurrenceState *)self userInterfaceStyle], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isReminder]);

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
  calendar = [(EKEvent *)self->_occurrence calendar];
  displayColor = [calendar displayColor];

  return displayColor;
}

- (UIImage)leadingIcon
{
  v15[2] = *MEMORY[0x1E69E9840];
  if ([(CUIKOROccurrenceState *)self isReminder])
  {
    reminderIcon = [(CUIKOROccurrenceState *)self reminderIcon];
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
    colorBarColor = [(CUIKOROccurrenceState *)self colorBarColor];
    v15[1] = colorBarColor;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v5 configurationWithPaletteColors:v7];

    v9 = [(CUIKOROccurrenceState *)self _leadingSymbolSizeConfigurationForReminder:0];
    v10 = [v8 configurationByApplyingConfiguration:v9];

    occurrence = [(CUIKOROccurrenceState *)self occurrence];
    occurrence2 = [(CUIKOROccurrenceState *)self occurrence];
    v13 = [occurrence CUIK_symbolName:{objc_msgSend(occurrence2, "isAllDay")}];

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

    reminderIcon = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v13 withConfiguration:v10];
  }

  return reminderIcon;
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
  displayColor = [(CUIKOROccurrenceState *)self displayColor];
  v4 = CUIKColorBarColor(displayColor, [(CUIKOROccurrenceState *)self userInterfaceStyle], [(CUIKOROccurrenceState *)self needsReply], [(CUIKOROccurrenceState *)self isDeclined], [(CUIKOROccurrenceState *)self isReminder], [(CUIKOROccurrenceState *)self isSelected], [(CUIKOROccurrenceState *)self isCancelled]);

  return v4;
}

- (NSArray)trailingIcons
{
  array = [MEMORY[0x1E695DF70] array];
  if (![(CUIKOROccurrenceState *)self isReminderStack]&& ![(CUIKOROccurrenceState *)self fontCompressionDegree])
  {
    occurrence = [(CUIKOROccurrenceState *)self occurrence];
    trailingIconsColor = [(CUIKOROccurrenceState *)self trailingIconsColor];
    v6 = MEMORY[0x1E69DCAD8];
    secondaryTextFont = [(CUIKOROccurrenceState *)self secondaryTextFont];
    v8 = [v6 cuik_configurationWithFont:secondaryTextFont scale:1];

    v9 = [occurrence CUIK_attendeesIconSymbolWithAttendeesIconState:objc_msgSend(occurrence myParticipantStatus:{"CUIK_attendeesIconState"), objc_msgSend(occurrence, "selfParticipantStatus")}];
    v10 = v9;
    if (v9)
    {
      goto LABEL_11;
    }

    occurrence2 = [(CUIKOROccurrenceState *)self occurrence];
    if ([occurrence2 isOrWasPartOfRecurringSeries])
    {
      occurrence3 = [(CUIKOROccurrenceState *)self occurrence];
      if (([occurrence3 isOriginalItemPhantom] & 1) != 0 || -[CUIKOROccurrenceState isBirthday](self, "isBirthday"))
      {
      }

      else
      {
        occurrence4 = [(CUIKOROccurrenceState *)self occurrence];
        calendar = [occurrence4 calendar];
        isHolidayCalendar = [calendar isHolidayCalendar];

        if (isHolidayCalendar)
        {
          goto LABEL_9;
        }

        v20 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:@"repeat" withConfiguration:v8];
        occurrence2 = [v20 cuik_imageWithTintColor:trailingIconsColor];

        [array addObject:occurrence2];
      }
    }

LABEL_9:
    occurrence5 = [(CUIKOROccurrenceState *)self occurrence];
    hasAttachment = [occurrence5 hasAttachment];

    if (!hasAttachment)
    {
LABEL_12:

      goto LABEL_13;
    }

    v10 = @"paperclip";
LABEL_11:
    v15 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v10 withConfiguration:v8];
    v16 = [v15 cuik_imageWithTintColor:trailingIconsColor];

    [array addObject:v16];
    goto LABEL_12;
  }

LABEL_13:

  return array;
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
    locationTextColor = ;
  }

  else
  {
    locationTextColor = [(CUIKOROccurrenceState *)self locationTextColor];
  }

  return locationTextColor;
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
  occurrences = [(CUIKOROccurrenceState *)self occurrences];
  v4 = [occurrences count];

  if (v4 < 2)
  {
    v9 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CUIKBundle();
    v7 = [v6 localizedStringForKey:@"ReminderStackMoreFormat" value:@"%lu more" table:0];
    occurrences2 = [(CUIKOROccurrenceState *)self occurrences];
    v9 = [v5 localizedStringWithFormat:v7, objc_msgSend(occurrences2, "count") - 1];
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

- (CUIKOROccurrenceState)initWithState:(id)state
{
  stateCopy = state;
  v5 = [(CUIKOROccurrenceState *)self init];
  if (v5)
  {
    occurrences = [stateCopy occurrences];
    occurrences = v5->_occurrences;
    v5->_occurrences = occurrences;

    firstObject = [(NSArray *)v5->_occurrences firstObject];
    occurrence = v5->_occurrence;
    v5->_occurrence = firstObject;

    v5->_occurrenceIsFirstVisibleDayOfEvent = [stateCopy occurrenceIsFirstVisibleDayOfEvent];
    v5->_isProposedTime = [stateCopy isProposedTime];
    v5->_isSelected = [stateCopy isSelected];
    v5->_isDimmed = [stateCopy isDimmed];
    v5->_usesSmallText = [stateCopy usesSmallText];
    [stateCopy travelTime];
    v5->_travelTime = v10;
    [stateCopy backgroundRect];
    v5->_backgroundRect.origin.x = v11;
    v5->_backgroundRect.origin.y = v12;
    v5->_backgroundRect.size.width = v13;
    v5->_backgroundRect.size.height = v14;
    [stateCopy travelTimeHeight];
    v5->_travelTimeHeight = v15;
    [stateCopy visibleHeight];
    v5->_visibleHeight = v16;
    v5->_userInterfaceStyle = [stateCopy userInterfaceStyle];
    v5->_horizontalSizeClass = [stateCopy horizontalSizeClass];
    v5->_birthdayCount = [stateCopy birthdayCount];
    v5->_isMiniPreviewInEventDetail = [stateCopy isMiniPreviewInEventDetail];
    allDayOverride = [stateCopy allDayOverride];
    allDayOverride = v5->_allDayOverride;
    v5->_allDayOverride = allDayOverride;

    traitCollection = [stateCopy traitCollection];
    v20 = [traitCollection copy];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v20;
  }

  return v5;
}

+ (void)clearLocationCache
{
  locationCache = [self locationCache];
  [locationCache removeAllObjects];
}

- (void)_location:(id *)_location locationImageName:(id *)name
{
  check = 0;
  notify_check(apHiddenAppsNotifyToken, &check);
  if (check)
  {
    [objc_opt_class() clearLocationCache];
  }

  locationCache = [objc_opt_class() locationCache];
  eventIdentifier = [(EKEvent *)self->_occurrence eventIdentifier];
  v9 = [locationCache objectForKey:eventIdentifier];

  *_location = [v9 generatedLocationString];
  *name = [v9 locationImageName];
  location = [(EKEvent *)self->_occurrence location];
  locationWithoutPrediction = [(EKEvent *)self->_occurrence locationWithoutPrediction];
  preferredLocation = [(EKEvent *)self->_occurrence preferredLocation];
  isPrediction = [preferredLocation isPrediction];

  virtualConference = [(EKEvent *)self->_occurrence virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  conferenceURLForDisplay = [firstObject URL];

  if (!conferenceURLForDisplay)
  {
    if ((-[EKEvent conferenceURLForDisplayCached](self->_occurrence, "conferenceURLForDisplayCached") & 1) != 0 || ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      conferenceURLForDisplay = [(EKEvent *)self->_occurrence conferenceURLForDisplay];
    }

    else
    {
      conferenceURLForDisplay = 0;
    }
  }

  _locationCopy = _location;
  nameCopy = name;
  originalOccurrenceLocationIsPrediction = [v9 originalOccurrenceLocationIsPrediction];
  originalOccurrenceLocation = [v9 originalOccurrenceLocation];
  v41 = location;
  v19 = CalEqualStrings();

  originalOccurrenceLocationWithoutPrediction = [v9 originalOccurrenceLocationWithoutPrediction];
  v40 = locationWithoutPrediction;
  v21 = CalEqualStrings();

  hasNewTimeProposed = [(CUIKOROccurrenceState *)self hasNewTimeProposed];
  originalHasNewTimeProposed = [v9 originalHasNewTimeProposed];
  originalConferenceURL = [v9 originalConferenceURL];
  v25 = CalEqualObjects();

  if (v19 && v21 && ((isPrediction ^ originalOccurrenceLocationIsPrediction) & 1) == 0 && ((hasNewTimeProposed ^ originalHasNewTimeProposed) & 1) == 0 && v25 || (v42 = 0, [CUIKLocationDescriptionGenerator locationStringForEvent:self->_occurrence options:422 incomplete:&v42 leadingImageName:nameCopy], *_locationCopy = objc_claimAutoreleasedReturnValue(), (v42 & 1) != 0))
  {
    v27 = v40;
    v26 = v41;
  }

  else
  {
    v28 = [CUIKOROccurrenceStateCachedLocation alloc];
    v29 = *_locationCopy;
    v30 = *nameCopy;
    hasNewTimeProposed2 = [(CUIKOROccurrenceState *)self hasNewTimeProposed];
    v32 = v29;
    v33 = v30;
    v27 = v40;
    v26 = v41;
    v34 = [(CUIKOROccurrenceStateCachedLocation *)v28 initWithGeneratedLocationString:v32 locationImageName:v33 originalOccurrenceLocation:v41 originalOccurrenceLocationWithoutPrediction:v40 originalOccurrenceLocationIsPrediction:isPrediction originalHasNewTimeProposed:hasNewTimeProposed2 originalConferenceURL:conferenceURLForDisplay];

    locationCache2 = [objc_opt_class() locationCache];
    eventIdentifier2 = [(EKEvent *)self->_occurrence eventIdentifier];
    [locationCache2 setObject:v34 forKey:eventIdentifier2];

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
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];

  return secondaryLabelColor;
}

- (UIColor)strikethroughColor
{
  isSelected = [(CUIKOROccurrenceState *)self isSelected];

  return CUIKStrikethroughColor(isSelected);
}

- (double)totalLanguageAwareHeightPadding
{
  [(CUIKOROccurrenceState *)self languageAwareInsets];
  v4 = v3;
  [(CUIKOROccurrenceState *)self languageAwareInsets];
  return (v4 + v5) * 0.5;
}

- (id)_leadingSymbolSizeConfigurationForReminder:(BOOL)reminder
{
  reminderCopy = reminder;
  v4 = MEMORY[0x1E69DCAD8];
  primaryTextFont = [(CUIKOROccurrenceState *)self primaryTextFont];
  [primaryTextFont pointSize];
  v7 = 3.0;
  if (reminderCopy)
  {
    v7 = 2.0;
  }

  v8 = v7 + v6;
  if (reminderCopy)
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
  occurrence = [(CUIKOROccurrenceState *)self occurrence];
  occurrence2 = [(CUIKOROccurrenceState *)self occurrence];
  v5 = [occurrence CUIK_symbolName:{objc_msgSend(occurrence2, "isAllDay")}];

  if ([(CUIKOROccurrenceState *)self isSelected])
  {
    titleTextColor = [(CUIKOROccurrenceState *)self titleTextColor];
  }

  else
  {
    drawReminderAsEditable = [(CUIKOROccurrenceState *)self drawReminderAsEditable];
    occurrence3 = [(CUIKOROccurrenceState *)self occurrence];
    v9 = occurrence3;
    if (drawReminderAsEditable)
    {
      [occurrence3 CUIK_symbolColor];
    }

    else
    {
      [occurrence3 CUIK_disabledSymbolColor];
    }
    titleTextColor = ;
  }

  if ([(CUIKOROccurrenceState *)self isReminderStack])
  {
    [titleTextColor cuik_alphaComponent];
    v11 = [titleTextColor colorWithAlphaComponent:v10 * 0.2];

    titleTextColor = v11;
  }

  v12 = [(CUIKOROccurrenceState *)self _leadingSymbolSizeConfigurationForReminder:1];
  v13 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v5 withConfiguration:v12];
  v14 = [v13 cuik_imageWithTintColor:titleTextColor];

  return v14;
}

- (double)minimumNaturalHeightAllText
{
  [CUIKORFontUtils minimumNaturalHeightForPrimaryTextUsingSmallText:self->_usesSmallText sizeClass:[(CUIKOROccurrenceState *)self horizontalSizeClass]];
  v4 = v3;
  hidesTime = [(CUIKOROccurrenceState *)self hidesTime];
  location = [(CUIKOROccurrenceState *)self location];
  v7 = [location length];

  if (!v7 && hidesTime)
  {
    return v4;
  }

  v9 = 1;
  if (!hidesTime)
  {
    v9 = 2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = !hidesTime;
  }

  secondaryTextFont = [(CUIKOROccurrenceState *)self secondaryTextFont];
  cuik_lineHeight = [(UIFont *)secondaryTextFont cuik_lineHeight];

  return v4 + cuik_lineHeight * v10;
}

- (double)enoughHeightForOneLine
{
  v3 = objc_opt_class();
  occurrence = [(CUIKOROccurrenceState *)self occurrence];
  [v3 enoughHeightForOneLineForEvent:occurrence usingSmallText:-[CUIKOROccurrenceState usesSmallText](self sizeClass:{"usesSmallText"), -[CUIKOROccurrenceState horizontalSizeClass](self, "horizontalSizeClass")}];
  v6 = v5;

  return v6;
}

+ (double)enoughHeightForOneLineForEvent:(id)event usingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  eventCopy = event;
  [CUIKORFontUtils minimumNaturalHeightForPrimaryTextUsingSmallText:textCopy sizeClass:class];
  v9 = v8;
  if (([eventCopy isAllDay] & 1) == 0)
  {
    startCalendarDate = [eventCopy startCalendarDate];
    minute = [startCalendarDate minute];

    if (minute)
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

- (id)primaryTextFontBold:(BOOL)bold
{
  boldCopy = bold;
  fontCompressionDegree = [(CUIKOROccurrenceState *)self fontCompressionDegree];
  horizontalSizeClass = [(CUIKOROccurrenceState *)self horizontalSizeClass];
  usesSmallText = [(CUIKOROccurrenceState *)self usesSmallText];
  v8 = usesSmallText;
  if (horizontalSizeClass == 2)
  {
    v9 = *MEMORY[0x1E69DDD28];
    v10 = 0.0;
    v11 = 11.0;
    v12 = 12.0;
  }

  else
  {
    if (usesSmallText)
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
  if (!fontCompressionDegree)
  {
    v10 = v13;
  }

  if (fontCompressionDegree == 1)
  {
    v10 = v12;
  }

  if (fontCompressionDegree == 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (boldCopy)
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
  if (horizontalSizeClass == 1 && v8)
  {
    v17 = 11.0;
  }

  v18 = v14 / v17;
  fontDescriptor = [v15 fontDescriptor];
  [fontDescriptor pointSize];
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
  title = [(CUIKOROccurrenceState *)self title];
  [(CUIKOROccurrenceState *)self backgroundRect];
  v6 = CUIKStringFromCGRect(v12);
  [(CUIKOROccurrenceState *)self estimatedTextFrame];
  v7 = CUIKStringFromCGRect(v13);
  v8 = [v3 stringWithFormat:@"%@ <title: %@, backgroundRect: %@, estimatedTextFrame: %@>", v4, title, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v36 = self->_isSelected == *(equalCopy + 9);
    v30 = *(equalCopy + 10);
    isDimmed = self->_isDimmed;
    occurrence = self->_occurrence;
    v6 = equalCopy[2];
    v7 = equalCopy;
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