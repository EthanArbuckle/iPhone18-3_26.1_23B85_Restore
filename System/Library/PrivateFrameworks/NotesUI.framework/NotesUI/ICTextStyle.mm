@interface ICTextStyle
+ (id)bodyStyle;
+ (id)bulletStyle;
+ (id)dashStyle;
+ (id)defaultTextStyles;
+ (id)fixedWidthStyle;
+ (id)headingStyle;
+ (id)icaxStyleDescriptionForBIUSStyle:(unint64_t)style;
+ (id)icaxStyleDescriptionForNamedStyle:(unsigned int)style;
+ (id)numberedStyle;
+ (id)settingsDescriptionForNamedStyle:(unsigned int)style;
+ (id)styleForNamedStyle:(unsigned int)style;
+ (id)subheadingStyle;
+ (id)titleForNamedStyle:(unsigned int)style;
+ (id)titleStyle;
+ (unsigned)namedStyleFromStyleID:(id)d;
+ (unsigned)noteDefaultNamedStyle;
+ (unsigned)validatedNamedStyle:(unsigned int)style;
+ (void)setAutoListInsertionEnabled:(BOOL)enabled;
+ (void)setNoteDefaultNamedStyle:(unsigned int)style;
- (NSAttributedString)attributedName;
- (NSString)styleID;
- (id)icaxStyleDescription;
@end

@implementation ICTextStyle

- (NSAttributedString)attributedName
{
  attributes = [(ICTextStyle *)self attributes];
  v4 = [attributes mutableCopy];

  v5 = *MEMORY[0x1E69DB688];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  v7 = [v6 mutableCopy];

  [v7 setFirstLineHeadIndent:0.0];
  [v7 setHeadIndent:0.0];
  v8 = [v7 copy];
  [v4 setObject:v8 forKeyedSubscript:v5];

  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  name = [(ICTextStyle *)self name];
  v11 = [v9 initWithString:name attributes:v4];

  return v11;
}

- (NSString)styleID
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_ICTTNamedStyle_%d", self->_ttStyle];

  return v2;
}

+ (unsigned)namedStyleFromStyleID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"_ICTTNamedStyle_"])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"_ICTTNamedStyle_", "length")}];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = +[ICTextStyle noteDefaultNamedStyle];
  }

  return unsignedIntValue;
}

+ (id)defaultTextStyles
{
  if (defaultTextStyles_onceToken != -1)
  {
    +[ICTextStyle defaultTextStyles];
  }

  v3 = defaultTextStyles_defaultStyles;

  return v3;
}

void __32__ICTextStyle_defaultTextStyles__block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = +[ICTextStyle titleStyle];
  v10[0] = v0;
  v1 = +[ICTextStyle headingStyle];
  v10[1] = v1;
  v2 = +[ICTextStyle subheadingStyle];
  v10[2] = v2;
  v3 = +[ICTextStyle bodyStyle];
  v10[3] = v3;
  v4 = +[ICTextStyle fixedWidthStyle];
  v10[4] = v4;
  v5 = +[ICTextStyle bulletStyle];
  v10[5] = v5;
  v6 = +[ICTextStyle dashStyle];
  v10[6] = v6;
  v7 = +[ICTextStyle numberedStyle];
  v10[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];
  v9 = defaultTextStyles_defaultStyles;
  defaultTextStyles_defaultStyles = v8;
}

+ (id)titleStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"TITLE_TEXT_STYLE", @"Title", @"Localizable", 1);
  [(ICTextStyle *)v3 setName:v4];

  titleAttributes = [(ICTTTextController *)v2 titleAttributes];
  [(ICTextStyle *)v3 setAttributes:titleAttributes];

  [(ICTextStyle *)v3 setTtStyle:0];

  return v3;
}

+ (id)headingStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkString_impl(@"Heading", @"Heading", 0, 1);
  [(ICTextStyle *)v3 setName:v4];

  headingAttributes = [(ICTTTextController *)v2 headingAttributes];
  [(ICTextStyle *)v3 setAttributes:headingAttributes];

  [(ICTextStyle *)v3 setTtStyle:1];

  return v3;
}

+ (id)subheadingStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkString_impl(@"Subheading", @"Subheading", 0, 1);
  [(ICTextStyle *)v3 setName:v4];

  subheadingAttributes = [(ICTTTextController *)v2 subheadingAttributes];
  [(ICTextStyle *)v3 setAttributes:subheadingAttributes];

  [(ICTextStyle *)v3 setTtStyle:2];

  return v3;
}

+ (id)bodyStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkString_impl(@"Body", @"Body", 0, 1);
  [(ICTextStyle *)v3 setName:v4];

  bodyAttributes = [(ICTTTextController *)v2 bodyAttributes];
  [(ICTextStyle *)v3 setAttributes:bodyAttributes];

  [(ICTextStyle *)v3 setTtStyle:3];

  return v3;
}

+ (id)fixedWidthStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkString_impl(@"Monostyled", @"Monostyled", 0, 1);
  [(ICTextStyle *)v3 setName:v4];

  fixedWidthAttributes = [(ICTTTextController *)v2 fixedWidthAttributes];
  [(ICTextStyle *)v3 setAttributes:fixedWidthAttributes];

  [(ICTextStyle *)v3 setTtStyle:4];

  return v3;
}

+ (id)bulletStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkString_impl(@"• Bulleted List", @"• Bulleted List", 0, 1);
  [(ICTextStyle *)v3 setName:v4];

  defaultListAttributes = [(ICTTTextController *)v2 defaultListAttributes];
  [(ICTextStyle *)v3 setAttributes:defaultListAttributes];

  [(ICTextStyle *)v3 setTtStyle:100];

  return v3;
}

+ (id)dashStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = __ICLocalizedFrameworkString_impl(@"– Dashed List", @"– Dashed List", 0, 1);
  [(ICTextStyle *)v3 setName:v4];

  defaultListAttributes = [(ICTTTextController *)v2 defaultListAttributes];
  [(ICTextStyle *)v3 setAttributes:defaultListAttributes];

  [(ICTextStyle *)v3 setTtStyle:101];

  return v3;
}

+ (id)numberedStyle
{
  v2 = objc_alloc_init(ICTTTextController);
  v3 = objc_alloc_init(ICTextStyle);
  v4 = MEMORY[0x1E696AEC0];
  v5 = __ICLocalizedFrameworkString_impl(@"%ld. Numbered List", @"%ld. Numbered List", 0, 1);
  v6 = [v4 localizedStringWithFormat:v5, 1];
  [(ICTextStyle *)v3 setName:v6];

  defaultListAttributes = [(ICTTTextController *)v2 defaultListAttributes];
  [(ICTextStyle *)v3 setAttributes:defaultListAttributes];

  [(ICTextStyle *)v3 setTtStyle:102];

  return v3;
}

+ (unsigned)validatedNamedStyle:(unsigned int)style
{
  result = style;
  if (style >= 6 && style - 100 >= 4)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICTextStyle validatedNamedStyle:]" simulateCrash:1 showAlert:0 format:{@"Invalid named style %lu, defaulting to title", style}];
    return 3;
  }

  return result;
}

+ (unsigned)noteDefaultNamedStyle
{
  v3 = [MEMORY[0x1E69B7AB8] objectForKey:@"TTTextControllerNoteDefaultNamedStyleKey"];
  v4 = v3;
  if (v3)
  {
    v5 = [self validatedNamedStyle:{objc_msgSend(v3, "unsignedIntegerValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setNoteDefaultNamedStyle:(unsigned int)style
{
  v3 = MEMORY[0x1E69B7AB8];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&style];
  [v3 setObject:v4 forKey:@"TTTextControllerNoteDefaultNamedStyleKey"];
}

+ (id)titleForNamedStyle:(unsigned int)style
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  defaultTextStyles = [self defaultTextStyles];
  v6 = [defaultTextStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(defaultTextStyles);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 ttStyle] == style)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [defaultTextStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    firstObject = v10;

    if (firstObject)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"textStyle" functionName:"+[ICTextStyle titleForNamedStyle:]" simulateCrash:1 showAlert:0 format:{@"No text style found for namedStyle %ld", style}];
  defaultTextStyles2 = [self defaultTextStyles];
  firstObject = [defaultTextStyles2 firstObject];

LABEL_12:
  name = [firstObject name];

  return name;
}

+ (id)icaxStyleDescriptionForNamedStyle:(unsigned int)style
{
  v3 = 0;
  if (style > 4)
  {
    if (style <= 100)
    {
      if (style == 5)
      {
        v4 = @"Caption";
      }

      else
      {
        if (style != 100)
        {
          goto LABEL_24;
        }

        v4 = @"Bulleted List";
      }
    }

    else
    {
      switch(style)
      {
        case 'e':
          v4 = @"Dashed List";
          break;
        case 'f':
          v4 = @"Numbered List";
          break;
        case 'g':
          v4 = @"Checklist";
          break;
        default:
          goto LABEL_24;
      }
    }
  }

  else if (style <= 1)
  {
    if (!style)
    {
      v3 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"TITLE_TEXT_STYLE", @"Title", @"Localizable", 1);
      goto LABEL_24;
    }

    if (style != 1)
    {
      goto LABEL_24;
    }

    v4 = @"Heading";
  }

  else if (style == 2)
  {
    v4 = @"Subheading";
  }

  else if (style == 3)
  {
    v4 = @"Body";
  }

  else
  {
    v4 = @"Fixed width";
  }

  v3 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
LABEL_24:

  return v3;
}

+ (id)icaxStyleDescriptionForBIUSStyle:(unint64_t)style
{
  if (style <= 3)
  {
    if (style == 1)
    {
      v3 = @"Bold";
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_13;
      }

      v3 = @"Italic";
    }
  }

  else
  {
    switch(style)
    {
      case 4uLL:
        v3 = @"Underline";
        break;
      case 8uLL:
        v3 = @"Strikethrough";
        break;
      case 0x10uLL:
        v3 = @"Highlight";
        break;
      default:
        goto LABEL_13;
    }
  }

  self = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
LABEL_13:

  return self;
}

+ (id)settingsDescriptionForNamedStyle:(unsigned int)style
{
  v3 = 0;
  if (style > 4)
  {
    if (style <= 100)
    {
      if (style == 5)
      {
        v4 = @"SETTINGS_TEXT_STYLE_CAPTION";
        v5 = @"Caption";
      }

      else
      {
        if (style != 100)
        {
          goto LABEL_24;
        }

        v4 = @"SETTINGS_TEXT_STYLE_BULLETED_LIST";
        v5 = @"Bulleted List";
      }
    }

    else
    {
      switch(style)
      {
        case 'e':
          v4 = @"SETTINGS_TEXT_STYLE_DASHED_LIST";
          v5 = @"Dashed List";
          break;
        case 'f':
          v4 = @"SETTINGS_TEXT_STYLE_NUMBERED_LIST";
          v5 = @"Numbered List";
          break;
        case 'g':
          v4 = @"SETTINGS_TEXT_STYLE_CHECKLIST";
          v5 = @"Checklist";
          break;
        default:
          goto LABEL_24;
      }
    }
  }

  else if (style <= 1)
  {
    if (style)
    {
      if (style != 1)
      {
        goto LABEL_24;
      }

      v4 = @"SETTINGS_TEXT_STYLE_HEADING";
      v5 = @"Heading";
    }

    else
    {
      v4 = @"SETTINGS_TEXT_STYLE_TITLE";
      v5 = @"Title";
    }
  }

  else if (style == 2)
  {
    v4 = @"SETTINGS_TEXT_STYLE_SUBHEADING";
    v5 = @"Subheading";
  }

  else if (style == 3)
  {
    v4 = @"SETTINGS_TEXT_STYLE_BODY";
    v5 = @"Body";
  }

  else
  {
    v4 = @"SETTINGS_TEXT_STYLE_FIXED_WIDTH";
    v5 = @"Fixed width";
  }

  v3 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v4, v5, 0, 1);
LABEL_24:

  return v3;
}

+ (id)styleForNamedStyle:(unsigned int)style
{
  v3 = 0;
  if (style <= 4)
  {
    if (style <= 1)
    {
      if (style)
      {
        if (style == 1)
        {
          v3 = +[ICTextStyle headingStyle];
        }
      }

      else
      {
        v3 = +[ICTextStyle titleStyle];
      }
    }

    else if (style == 2)
    {
      v3 = +[ICTextStyle subheadingStyle];
    }

    else
    {
      if (style == 3)
      {
        +[ICTextStyle bodyStyle];
      }

      else
      {
        +[ICTextStyle fixedWidthStyle];
      }
      v3 = ;
    }

    goto LABEL_25;
  }

  if (style > 100)
  {
    if (style == 101)
    {
      v3 = +[ICTextStyle dashStyle];
      goto LABEL_25;
    }

    if (style == 102)
    {
      v3 = +[ICTextStyle numberedStyle];
      goto LABEL_25;
    }

    if (style != 103)
    {
      goto LABEL_25;
    }

    v4 = MEMORY[0x1E69B7A38];
    v5 = @"Trying to access Todo style, but it doesn't exist";
LABEL_20:
    [v4 handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICTextStyle styleForNamedStyle:]" simulateCrash:1 showAlert:0 format:v5];
    v3 = 0;
    goto LABEL_25;
  }

  if (style == 5)
  {
    v4 = MEMORY[0x1E69B7A38];
    v5 = @"Trying to access caption style, but it doesn't exist";
    goto LABEL_20;
  }

  if (style == 100)
  {
    v3 = +[ICTextStyle bulletStyle];
  }

LABEL_25:

  return v3;
}

- (id)icaxStyleDescription
{
  v3 = objc_opt_class();
  ttStyle = [(ICTextStyle *)self ttStyle];

  return [v3 icaxStyleDescriptionForNamedStyle:ttStyle];
}

+ (void)setAutoListInsertionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:enabledCopy forKey:@"ICTextStyleAutoListInsertionEnabled"];
}

@end