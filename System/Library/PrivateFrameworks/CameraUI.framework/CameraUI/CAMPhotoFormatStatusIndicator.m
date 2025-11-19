@interface CAMPhotoFormatStatusIndicator
+ (id)localizedTitleForFormat:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)advancedFormat;
- ($0AC6E346AE4835514AAA8AC86D8F4844)essentialFormat;
- ($0AC6E346AE4835514AAA8AC86D8F4844)photoFormat;
- (CAMPhotoFormatStatusIndicator)initWithFrame:(CGRect)a3;
- (void)setAllowedFormats:(id)a3 essentialFormatIndex:(unint64_t)a4 advancedFormatIndex:(unint64_t)a5;
- (void)setPhotoFormat:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMPhotoFormatStatusIndicator

- (CAMPhotoFormatStatusIndicator)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMPhotoFormatStatusIndicator;
  v3 = [(CAMExpandingControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMPhotoFormatStatusIndicator *)v3 setAccessibilityIdentifier:@"PhotoFormatStatusIndicator"];
  }

  return v4;
}

+ (id)localizedTitleForFormat:(id)a3
{
  var1 = a3.var1;
  if (a3.var0 > 2uLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76FCAF0[a3.var0], 0);
  }

  v5 = 0;
  if (var1 <= 1)
  {
    if (var1)
    {
      if (var1 != 1)
      {
        goto LABEL_13;
      }

      var1 = 12;
    }

    goto LABEL_12;
  }

  if (var1 == 2)
  {
    var1 = 24;
LABEL_12:
    v6 = +[CAMControlStatusIndicator integerFormatter];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:var1];
    v5 = [v6 stringFromNumber:v7];

    goto LABEL_13;
  }

  if (var1 == 3)
  {
    v5 = CAMLocalizedFrameworkString(@"PHOTO_RESOLUTION_MAX", 0);
  }

LABEL_13:
  v8 = CAMLocalizedFrameworkString(@"PHOTO_ENCODING_PLUS_RESOLUTION_FORMAT", 0);
  v9 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, v4, v5];

  return v9;
}

- (void)setAllowedFormats:(id)a3 essentialFormatIndex:(unint64_t)a4 advancedFormatIndex:(unint64_t)a5
{
  v9 = a3;
  if (![v9 isEqualToArray:self->_allowedFormats] || self->__essentialFormatIndex != a4 || self->__advancedFormatIndex != a5)
  {
    objc_storeStrong(&self->_allowedFormats, a3);
    self->__essentialFormatIndex = a4;
    self->__advancedFormatIndex = a5;
    v10 = [v9 objectAtIndexedSubscript:a4];
    v24 = 0;
    [v10 getValue:&v24 size:16];
    self->_essentialFormat = v24;

    v11 = [v9 objectAtIndexedSubscript:a5];
    v24 = 0;
    [v11 getValue:&v24 size:16];
    self->_advancedFormat = v24;

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v13 = objc_alloc_init(CAMExpandingControlMenuItemConfiguration);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __92__CAMPhotoFormatStatusIndicator_setAllowedFormats_essentialFormatIndex_advancedFormatIndex___block_invoke;
    v19 = &unk_1E76FCAD0;
    v20 = self;
    v21 = v13;
    v22 = v12;
    v23 = a4;
    v14 = v12;
    v15 = v13;
    [v9 enumerateObjectsUsingBlock:&v16];
    [(CAMExpandingControl *)self setMenu:v14, v16, v17, v18, v19, v20];
  }
}

void __92__CAMPhotoFormatStatusIndicator_setAllowedFormats_essentialFormatIndex_advancedFormatIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = v7;
  if (v5 == a3)
  {
    v9 = [v7 localizedTitleForFormat:*(*(a1 + 32) + 648), *(*(a1 + 32) + 656)];
    [*(a1 + 40) setHidden:1];
    v10 = *(a1 + 40);
    v11 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    [v6 getValue:&v13 size:16];
    v9 = [v8 localizedTitleForFormat:v13, v14];
    [*(a1 + 40) setHidden:0];
    v10 = *(a1 + 40);
    v11 = 0;
  }

  [v10 setSlashesTitle:v11];
  v12 = [CAMExpandingControlTextMenuItem menuItemWithState:v6 titleText:v9 subtitle:v9 selectedSubtitle:0 configuration:*(a1 + 40)];

  [*(a1 + 48) addObject:v12];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)photoFormat
{
  v2 = [(CAMExpandingControl *)self selectedState];
  v7 = 0;
  v8 = 0;
  [v2 getValue:&v7 size:16];
  v3 = v7;
  v4 = v8;

  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)setPhotoFormat:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:&v7 objCType:"{?=qq}"];
  [(CAMExpandingControl *)self setSelectedState:v6 animated:v4];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)essentialFormat
{
  p_essentialFormat = &self->_essentialFormat;
  encoding = self->_essentialFormat.encoding;
  resolution = p_essentialFormat->resolution;
  result.var1 = resolution;
  result.var0 = encoding;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)advancedFormat
{
  p_advancedFormat = &self->_advancedFormat;
  encoding = self->_advancedFormat.encoding;
  resolution = p_advancedFormat->resolution;
  result.var1 = resolution;
  result.var0 = encoding;
  return result;
}

@end