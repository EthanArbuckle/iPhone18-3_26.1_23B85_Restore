@interface CRSubtitleSettings
+ (id)defaultSettings;
- (CRSubtitleSettings)initWithCoder:(id)a3;
- (CRSubtitleSettings)initWithDictionaryRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRSubtitleSettings

+ (id)defaultSettings
{
  v2 = objc_alloc_init(CRSubtitleSettings);
  [(CRSubtitleSettings *)v2 setClosedCaptionsEnabled:0];
  [(CRSubtitleSettings *)v2 setFontName:7];
  [(CRSubtitleSettings *)v2 setAllowFontNameOverride:1];
  [(CRSubtitleSettings *)v2 setFontSize:2];
  [(CRSubtitleSettings *)v2 setAllowFontSizeOverride:1];
  [(CRSubtitleSettings *)v2 setFontColor:2];
  [(CRSubtitleSettings *)v2 setAllowFontColorOverride:1];
  [(CRSubtitleSettings *)v2 setBackgroundColor:1];
  [(CRSubtitleSettings *)v2 setAllowBackgroundColorOverride:1];
  [(CRSubtitleSettings *)v2 setBackgroundOpacity:50];
  [(CRSubtitleSettings *)v2 setAllowBackgroundOpacityOverride:0];
  [(CRSubtitleSettings *)v2 setTextOpacity:100];
  [(CRSubtitleSettings *)v2 setAllowTextOpacityOverride:1];
  [(CRSubtitleSettings *)v2 setTextEdgeStyle:1];
  [(CRSubtitleSettings *)v2 setAllowTextEdgeStyleOverride:1];
  [(CRSubtitleSettings *)v2 setTextHighlightColor:1];
  [(CRSubtitleSettings *)v2 setTextHighlightOpacity:0];
  [(CRSubtitleSettings *)v2 setAllowTextHighlightOverride:0];

  return v2;
}

- (CRSubtitleSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CRSubtitleSettings;
  v5 = [(CRSubtitleSettings *)&v7 init];
  if (v5)
  {
    v5->_closedCaptionsEnabled = [v4 decodeBoolForKey:@"property_key_ClosedCaptionsAndSDH_Enabled"];
    v5->_fontName = [v4 decodeIntForKey:@"property_key_FontName"];
    v5->_allowFontNameOverride = [v4 decodeBoolForKey:@"property_key_FontNameOverride"];
    v5->_fontSize = [v4 decodeIntForKey:@"property_key_FontSize"];
    v5->_allowFontSizeOverride = [v4 decodeBoolForKey:@"property_key_FontSizeOverride"];
    v5->_fontColor = [v4 decodeIntForKey:@"property_key_FontColor"];
    v5->_allowFontColorOverride = [v4 decodeBoolForKey:@"property_key_FontColorOverride"];
    v5->_backgroundColor = [v4 decodeIntForKey:@"property_key_BackgroundColor"];
    v5->_allowBackgroundColorOverride = [v4 decodeBoolForKey:@"property_key_BackgroundColorOverride"];
    v5->_backgroundOpacity = [v4 decodeIntForKey:@"property_key_BackgroundOpacity"];
    v5->_allowBackgroundOpacityOverride = [v4 decodeBoolForKey:@"property_key_BackgroundOpacityOverride"];
    v5->_textOpacity = [v4 decodeIntForKey:@"property_key_TextOpacity"];
    v5->_allowTextOpacityOverride = [v4 decodeBoolForKey:@"property_key_TextOpacityOverride"];
    v5->_textEdgeStyle = [v4 decodeIntForKey:@"property_key_TextEdgeStyle"];
    v5->_allowTextEdgeStyleOverride = [v4 decodeBoolForKey:@"property_key_TextEdgeStyleOverride"];
    v5->_textHighlightColor = [v4 decodeIntForKey:@"property_key_TextHighlightColor"];
    v5->_textHighlightOpacity = [v4 decodeIntForKey:@"property_key_TextHighlightOpacity"];
    v5->_allowTextHighlightOverride = [v4 decodeBoolForKey:@"property_key_TextHighlightOverride"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  closedCaptionsEnabled = self->_closedCaptionsEnabled;
  v5 = a3;
  [v5 encodeBool:closedCaptionsEnabled forKey:@"property_key_ClosedCaptionsAndSDH_Enabled"];
  [v5 encodeInt:self->_fontName forKey:@"property_key_FontName"];
  [v5 encodeBool:self->_allowFontNameOverride forKey:@"property_key_FontNameOverride"];
  [v5 encodeInt:self->_fontSize forKey:@"property_key_FontSize"];
  [v5 encodeBool:self->_allowFontSizeOverride forKey:@"property_key_FontSizeOverride"];
  [v5 encodeInt:self->_fontColor forKey:@"property_key_FontColor"];
  [v5 encodeBool:self->_allowFontColorOverride forKey:@"property_key_FontColorOverride"];
  [v5 encodeInt:self->_backgroundColor forKey:@"property_key_BackgroundColor"];
  [v5 encodeBool:self->_allowBackgroundColorOverride forKey:@"property_key_BackgroundColorOverride"];
  [v5 encodeInt:self->_backgroundOpacity forKey:@"property_key_BackgroundOpacity"];
  [v5 encodeBool:self->_allowBackgroundOpacityOverride forKey:@"property_key_BackgroundOpacityOverride"];
  [v5 encodeInt:self->_textOpacity forKey:@"property_key_TextOpacity"];
  [v5 encodeBool:self->_allowTextOpacityOverride forKey:@"property_key_TextOpacityOverride"];
  [v5 encodeInt:self->_textEdgeStyle forKey:@"property_key_TextEdgeStyle"];
  [v5 encodeBool:self->_allowTextEdgeStyleOverride forKey:@"property_key_TextEdgeStyleOverride"];
  [v5 encodeInt:self->_textHighlightColor forKey:@"property_key_TextHighlightColor"];
  [v5 encodeInt:self->_textHighlightOpacity forKey:@"property_key_TextHighlightOpacity"];
  [v5 encodeBool:self->_allowTextHighlightOverride forKey:@"property_key_TextHighlightOverride"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[CRSubtitleSettings allocWithZone:?]];
  *(result + 8) = self->_closedCaptionsEnabled;
  *(result + 5) = self->_fontName;
  *(result + 9) = self->_allowFontNameOverride;
  *(result + 6) = self->_fontSize;
  *(result + 10) = self->_allowFontSizeOverride;
  *(result + 7) = self->_fontColor;
  *(result + 11) = self->_allowFontColorOverride;
  *(result + 8) = self->_backgroundColor;
  *(result + 12) = self->_allowBackgroundColorOverride;
  *(result + 9) = self->_backgroundOpacity;
  *(result + 13) = self->_allowBackgroundOpacityOverride;
  *(result + 10) = self->_textOpacity;
  *(result + 14) = self->_allowTextOpacityOverride;
  *(result + 11) = self->_textEdgeStyle;
  *(result + 15) = self->_allowTextEdgeStyleOverride;
  *(result + 12) = self->_textHighlightColor;
  *(result + 13) = self->_textHighlightOpacity;
  *(result + 16) = self->_allowTextHighlightOverride;
  return result;
}

- (CRSubtitleSettings)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRSubtitleSettings;
  v5 = [(CRSubtitleSettings *)&v14 init];
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke;
    v12[3] = &unk_1E82FC890;
    v6 = v4;
    v13 = v6;
    v7 = MEMORY[0x1CCA72270](v12);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke_75;
    v10[3] = &unk_1E82FC8B8;
    v11 = v6;
    v8 = MEMORY[0x1CCA72270](v10);
    v5->_closedCaptionsEnabled = (v7)[2](v7, @"property_key_ClosedCaptionsAndSDH_Enabled", 0);
    v5->_fontName = (v8)[2](v8, @"property_key_FontName", 1);
    v5->_allowFontNameOverride = (v7)[2](v7, @"property_key_FontNameOverride", 1);
    v5->_fontSize = (v8)[2](v8, @"property_key_FontSize", 2);
    v5->_allowFontSizeOverride = (v7)[2](v7, @"property_key_FontSizeOverride", 1);
    v5->_fontColor = (v8)[2](v8, @"property_key_FontColor", 2);
    v5->_allowFontColorOverride = (v7)[2](v7, @"property_key_FontColorOverride", 1);
    v5->_backgroundColor = (v8)[2](v8, @"property_key_BackgroundColor", 1);
    v5->_allowBackgroundColorOverride = (v7)[2](v7, @"property_key_BackgroundColorOverride", 1);
    v5->_backgroundOpacity = (v8)[2](v8, @"property_key_BackgroundOpacity", 100);
    v5->_allowBackgroundOpacityOverride = (v7)[2](v7, @"property_key_BackgroundOpacityOverride", 1);
    v5->_textOpacity = (v8)[2](v8, @"property_key_TextOpacity", 100);
    v5->_allowTextOpacityOverride = (v7)[2](v7, @"property_key_TextOpacityOverride", 1);
    v5->_textEdgeStyle = (v8)[2](v8, @"property_key_TextEdgeStyle", 1);
    v5->_allowTextEdgeStyleOverride = (v7)[2](v7, @"property_key_TextEdgeStyleOverride", 1);
    v5->_textHighlightColor = (v8)[2](v8, @"property_key_TextHighlightColor", 1);
    v5->_textHighlightOpacity = (v8)[2](v8, @"property_key_TextHighlightOpacity", 0);
    v5->_allowTextHighlightOverride = (v7)[2](v7, @"property_key_TextHighlightOverride", 1);
  }

  return v5;
}

uint64_t __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = [*(a1 + 32) valueForKey:v5];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    a3 = [v7 BOOLValue];
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke_cold_1(v5, v8);
    }
  }

  return a3;
}

uint64_t __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke_75(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = [*(a1 + 32) valueForKey:v5];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    a3 = [v7 intValue];
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke_75_cold_1(v5, v8);
    }
  }

  return a3;
}

- (id)dictionaryRepresentation
{
  v24[18] = *MEMORY[0x1E69E9840];
  v23[0] = @"property_key_ClosedCaptionsAndSDH_Enabled";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_closedCaptionsEnabled];
  v24[0] = v22;
  v23[1] = @"property_key_FontName";
  v21 = [MEMORY[0x1E696AD98] numberWithInt:self->_fontName];
  v24[1] = v21;
  v23[2] = @"property_key_FontNameOverride";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowFontNameOverride];
  v24[2] = v20;
  v23[3] = @"property_key_FontSize";
  v19 = [MEMORY[0x1E696AD98] numberWithInt:self->_fontSize];
  v24[3] = v19;
  v23[4] = @"property_key_FontSizeOverride";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowFontSizeOverride];
  v24[4] = v18;
  v23[5] = @"property_key_FontColor";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_fontColor];
  v24[5] = v17;
  v23[6] = @"property_key_FontColorOverride";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowFontColorOverride];
  v24[6] = v16;
  v23[7] = @"property_key_BackgroundColor";
  v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_backgroundColor];
  v24[7] = v15;
  v23[8] = @"property_key_BackgroundColorOverride";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowBackgroundColorOverride];
  v24[8] = v14;
  v23[9] = @"property_key_BackgroundOpacity";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_backgroundOpacity];
  v24[9] = v3;
  v23[10] = @"property_key_BackgroundOpacityOverride";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowBackgroundOpacityOverride];
  v24[10] = v4;
  v23[11] = @"property_key_TextOpacity";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_textOpacity];
  v24[11] = v5;
  v23[12] = @"property_key_TextOpacityOverride";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowTextOpacityOverride];
  v24[12] = v6;
  v23[13] = @"property_key_TextEdgeStyle";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_textEdgeStyle];
  v24[13] = v7;
  v23[14] = @"property_key_TextEdgeStyleOverride";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowTextEdgeStyleOverride];
  v24[14] = v8;
  v23[15] = @"property_key_TextHighlightColor";
  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_textHighlightColor];
  v24[15] = v9;
  v23[16] = @"property_key_TextHighlightOpacity";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_textHighlightOpacity];
  v24[16] = v10;
  v23[17] = @"property_key_TextHighlightOverride";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowTextHighlightOverride];
  v24[17] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:18];

  return v12;
}

- (id)description
{
  v2 = [(CRSubtitleSettings *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

void __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "subtitle settings missing BOOL value for: %{public}@", &v2, 0xCu);
}

void __55__CRSubtitleSettings_initWithDictionaryRepresentation___block_invoke_75_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "subtitle settings missing int value for: %{public}@", &v2, 0xCu);
}

@end