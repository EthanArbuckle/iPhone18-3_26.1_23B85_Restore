@interface CUIKSemiConstantCache
+ (id)sharedInstance;
- (CUIKSemiConstantCache)init;
- (UIFont)dayOccurrenceUncompressedSecondaryTextFont;
- (double)_cachedLineHeight:(double *)a3 style:(id)a4 size:(double)a5 regularSize:(double)a6;
- (double)dayOccurrenceMinimumCachedLineHeightPill;
- (id)_dayOccurrenceFontWithStyle:(id)a3 size:(double)a4 regularSize:(double)a5;
- (id)commentIconStringForFont:(id)a3;
- (id)symbolImage:(id)a3 forFont:(id)a4;
- (void)updateMetrics;
@end

@implementation CUIKSemiConstantCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CUIKSemiConstantCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (UIFont)dayOccurrenceUncompressedSecondaryTextFont
{
  dayOccurrenceUncompressedSecondaryTextFont = self->_dayOccurrenceUncompressedSecondaryTextFont;
  if (!dayOccurrenceUncompressedSecondaryTextFont)
  {
    v4 = [(CUIKSemiConstantCache *)self _dayOccurrenceFontWithStyle:*MEMORY[0x1E69DDD10] size:11.0 regularSize:11.0];
    v5 = self->_dayOccurrenceUncompressedSecondaryTextFont;
    self->_dayOccurrenceUncompressedSecondaryTextFont = v4;

    dayOccurrenceUncompressedSecondaryTextFont = self->_dayOccurrenceUncompressedSecondaryTextFont;
  }

  return dayOccurrenceUncompressedSecondaryTextFont;
}

uint64_t __39__CUIKSemiConstantCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CUIKSemiConstantCache)init
{
  v5.receiver = self;
  v5.super_class = CUIKSemiConstantCache;
  v2 = [(CUIKSemiConstantCache *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];

    [(CUIKSemiConstantCache *)v2 updateMetrics];
  }

  return v2;
}

- (void)updateMetrics
{
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_dayOccurrenceMinimumCachedLineHeightCompact = _Q0;
  *&self->_dayOccurrenceMinimumCachedLineHeightSmallCompact = _Q0;
  *&self->_dayReminderIntegrationCachedLineHeightCompact = _Q0;
  *&self->_dayReminderIntegrationCachedLineHeightSmallCompact = _Q0;
  self->_dayOccurrenceMinimumCachedLineHeightPill = -1.0;
  self->_dayOccurrenceUncompressedSecondaryTextFont = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)_dayOccurrenceFontWithStyle:(id)a3 size:(double)a4 regularSize:(double)a5
{
  v5 = a5 / a4;
  v6 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingBoldFontForTextStyle:a3];
  v7 = [v6 fontDescriptor];
  [v7 pointSize];
  v9 = v8;

  CUIKRoundToScreenScale(v5 * v9);
  v10 = [v6 fontWithSize:?];

  return v10;
}

- (double)_cachedLineHeight:(double *)a3 style:(id)a4 size:(double)a5 regularSize:(double)a6
{
  v6 = *a3;
  if (*a3 < 0.0)
  {
    v8 = [(CUIKSemiConstantCache *)self _dayOccurrenceFontWithStyle:a4 size:a5 regularSize:a6, v6];
    *a3 = [(UIFont *)v8 cuik_lineHeight];

    return *a3;
  }

  return v6;
}

- (double)dayOccurrenceMinimumCachedLineHeightPill
{
  result = self->_dayOccurrenceMinimumCachedLineHeightPill;
  if (result < 0.0)
  {
    v4 = [(CUIKSemiConstantCache *)self _dayOccurrenceFontWithStyle:*MEMORY[0x1E69DDD10] size:11.0 regularSize:15.0];
    self->_dayOccurrenceMinimumCachedLineHeightPill = [(UIFont *)v4 cuik_lineHeight];

    return self->_dayOccurrenceMinimumCachedLineHeightPill;
  }

  return result;
}

- (id)commentIconStringForFont:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 tertiaryLabelColor];
  v6 = [MEMORY[0x1E69DCAD8] cuik_configurationWithFont:v4];

  v7 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:@"message.fill" withConfiguration:v6];
  v8 = [v7 cuik_imageWithTintColor:v5 asTemplate:0];

  v9 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v8];
  v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];

  return v10;
}

- (id)symbolImage:(id)a3 forFont:(id)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x1E69DCAD8] cuik_configurationWithFont:a4 scale:1];
    v7 = [MEMORY[0x1E69DCAB8] cuik_systemImageNamed:v5 withConfiguration:v6];
  }

  else
  {
    v8 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CUIKSemiConstantCache symbolImage:v8 forFont:?];
    }

    v7 = 0;
  }

  return v7;
}

@end