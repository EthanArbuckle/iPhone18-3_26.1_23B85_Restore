@interface MUPlaceHoursFormatter
+ (id)_AMPMFont;
+ (id)_hoursMonospacedFont;
+ (id)hoursFormatterFromHoursStringComponents:(id)components AMPMSymbols:(id)symbols;
- (MUPlaceHoursFormatter)initWithHoursString:(id)string AMPMSymbols:(id)symbols;
- (id)buildAttributedHourStringWithHourFont:(id)font AMPMFont:(id)mFont hourColor:(id)color;
- (id)buildDefaultPlacecardHoursString;
@end

@implementation MUPlaceHoursFormatter

- (id)buildDefaultPlacecardHoursString
{
  _hoursMonospacedFont = [objc_opt_class() _hoursMonospacedFont];
  _AMPMFont = [objc_opt_class() _AMPMFont];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v6 = [(MUPlaceHoursFormatter *)self buildAttributedHourStringWithHourFont:_hoursMonospacedFont AMPMFont:_AMPMFont hourColor:labelColor];

  return v6;
}

- (id)buildAttributedHourStringWithHourFont:(id)font AMPMFont:(id)mFont hourColor:(id)color
{
  v43[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  mFontCopy = mFont;
  colorCopy = color;
  v12 = *MEMORY[0x1E69DB650];
  v42[0] = *MEMORY[0x1E69DB648];
  v11 = v42[0];
  v42[1] = v12;
  v43[0] = fontCopy;
  v43[1] = colorCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v40[0] = v11;
  v40[1] = v12;
  v41[0] = mFontCopy;
  v41[1] = colorCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_hoursString attributes:v13];
  if (self->_formatAMPM)
  {
    v28 = v13;
    v29 = colorCopy;
    v30 = fontCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = self->_AMPMSymbols;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = MEMORY[0x1E696AE70];
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(&v35 + 1) + 8 * i)];
          v22 = [v20 regularExpressionWithPattern:v21 options:0 error:0];

          hoursString = self->_hoursString;
          v24 = [(NSString *)hoursString length];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __82__MUPlaceHoursFormatter_buildAttributedHourStringWithHourFont_AMPMFont_hourColor___block_invoke;
          v32[3] = &unk_1E8219908;
          v33 = v15;
          v34 = v14;
          [v22 enumerateMatchesInString:hoursString options:0 range:0 usingBlock:{v24, v32}];
        }

        v17 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v17);
    }

    fontCopy = v30;
    v13 = v28;
    colorCopy = v29;
  }

  v25 = [v15 copy];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __82__MUPlaceHoursFormatter_buildAttributedHourStringWithHourFont_AMPMFont_hourColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 range];

  return [v2 setAttributes:v3 range:{v5, v4}];
}

- (MUPlaceHoursFormatter)initWithHoursString:(id)string AMPMSymbols:(id)symbols
{
  stringCopy = string;
  symbolsCopy = symbols;
  if ([stringCopy length] && objc_msgSend(symbolsCopy, "count"))
  {
    v17.receiver = self;
    v17.super_class = MUPlaceHoursFormatter;
    v8 = [(MUPlaceHoursFormatter *)&v17 init];
    if (v8)
    {
      v9 = [stringCopy copy];
      hoursString = v8->_hoursString;
      v8->_hoursString = v9;

      v11 = [symbolsCopy copy];
      AMPMSymbols = v8->_AMPMSymbols;
      v8->_AMPMSymbols = v11;

      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      languageCode = [currentLocale languageCode];
      v8->_formatAMPM = [languageCode isEqualToString:@"ar"] ^ 1;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_AMPMFont
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v16 = *MEMORY[0x1E69DB8B0];
  v3 = *MEMORY[0x1E69DB900];
  v13[0] = *MEMORY[0x1E69DB908];
  v13[1] = v3;
  v14[0] = &unk_1F450DD30;
  v14[1] = &unk_1F450DD48;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v15 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  fontDescriptor = [v2 fontDescriptor];
  v8 = [fontDescriptor fontDescriptorByAddingAttributes:v6];

  v9 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v10 = [v9 fontWithDescriptor:v8 size:?];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_hoursMonospacedFont
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB900];
  v11[0] = *MEMORY[0x1E69DB908];
  v11[1] = v2;
  v12[0] = &unk_1F450DD00;
  v12[1] = &unk_1F450DD18;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  fontDescriptor = [v4 fontDescriptor];
  v6 = [fontDescriptor fontDescriptorByAddingAttributes:v3];

  v7 = MEMORY[0x1E69DB878];
  [v6 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)hoursFormatterFromHoursStringComponents:(id)components AMPMSymbols:(id)symbols
{
  v25 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  symbolsCopy = symbols;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [componentsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 length] > v10)
        {
          v10 = [v13 length];
        }
      }

      v9 = [componentsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__MUPlaceHoursFormatter_hoursFormatterFromHoursStringComponents_AMPMSymbols___block_invoke;
  v19[3] = &__block_descriptor_40_e21__24__0__NSString_8Q16l;
  v19[4] = v10;
  v14 = MUMap(componentsCopy, v19);
  v15 = [v14 componentsJoinedByString:@"\n"];
  v16 = [[self alloc] initWithHoursString:v15 AMPMSymbols:symbolsCopy];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id __77__MUPlaceHoursFormatter_hoursFormatterFromHoursStringComponents_AMPMSymbols___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == [v3 length])
  {
    v5 = &stru_1F44CA030;
  }

  else
  {
    v6 = 0;
    v7 = &stru_1F44CA030;
    do
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v7];

      ++v6;
      v8 = *(a1 + 32);
      v9 = v8 - [v3 length];
      v7 = v5;
    }

    while (v6 < v9);
  }

  if ([(__CFString *)v5 length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v3];
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

@end