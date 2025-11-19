@interface NTKComplicationModuleView
+ (id)_extraLargeAlarmImageProvider;
+ (id)_modularSmallAlarmImageProvider;
+ (id)largeModuleViewForComplicationType:(unint64_t)a3;
+ (id)smallModuleViewForComplicationType:(unint64_t)a3;
- (CDComplicationDisplayObserver)displayObserver;
- (id)_attributeEnDashesWithinString:(id)a3 typographicTracking:(double)a4 baseFont:(id)a5;
- (id)_attributedStringWithText:(id)a3 typographicTracking:(double)a4 baseFont:(id)a5;
- (id)_newImageViewSubview;
- (id)_newLabelSubview;
- (id)_newLabelSubviewWithFont:(id)a3;
- (void)_setTypographicTracking:(double)a3 andFont:(id)a4 onAttributedString:(id *)a5 inRange:(_NSRange)a6;
- (void)setIsXL:(BOOL)a3;
@end

@implementation NTKComplicationModuleView

+ (id)smallModuleViewForComplicationType:(unint64_t)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  v4 = objc_alloc_init(v3);

  return v4;
}

+ (id)largeModuleViewForComplicationType:(unint64_t)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  v4 = objc_alloc_init(v3);

  return v4;
}

- (void)setIsXL:(BOOL)a3
{
  isXL = self->_isXL;
  self->_isXL = a3;
  if (isXL != a3)
  {
    if (a3)
    {
      v6 = [(NTKModuleView *)self device];
      [NTKModuleView cornerRadiusForComplicationFamily:7 forDevice:v6];
      [(NTKModuleView *)self setHighlightCornerRadius:?];
    }

    [(NTKComplicationModuleView *)self setNeedsLayout];
  }
}

- (id)_newLabelSubview
{
  v3 = objc_alloc_init(off_27877BEF8);
  v4 = [(NTKModuleView *)self contentView];
  [v4 addSubview:v3];

  return v3;
}

- (id)_newLabelSubviewWithFont:(id)a3
{
  v4 = a3;
  v5 = [(NTKComplicationModuleView *)self _newLabelSubview];
  [v5 setFont:v4];

  return v5;
}

- (id)_newImageViewSubview
{
  v3 = objc_alloc_init(off_27877BEF0);
  v4 = [(NTKModuleView *)self contentView];
  [v4 addSubview:v3];

  return v3;
}

- (id)_attributeEnDashesWithinString:(id)a3 typographicTracking:(double)a4 baseFont:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  v11 = [v9 CLKFontWithAlternativePunctuation];
  if ([v8 length])
  {
    v12 = 0;
    do
    {
      if ([v8 characterAtIndex:v12] == 8211)
      {
        v15 = v10;
        [(NTKComplicationModuleView *)self _setTypographicTracking:v11 andFont:&v15 onAttributedString:v12 inRange:1, a4];
        v13 = v15;

        v10 = v13;
      }

      ++v12;
    }

    while (v12 < [v8 length]);
  }

  return v10;
}

- (id)_attributedStringWithText:(id)a3 typographicTracking:(double)a4 baseFont:(id)a5
{
  v8 = a3;
  v9 = [a5 CLKFontWithAlternativePunctuation];
  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  v11 = [v8 length];

  v15 = v10;
  [(NTKComplicationModuleView *)self _setTypographicTracking:v9 andFont:&v15 onAttributedString:0 inRange:v11, a4];
  v12 = v15;
  v13 = v15;

  return v12;
}

- (void)_setTypographicTracking:(double)a3 andFont:(id)a4 onAttributedString:(id *)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v12 = a4;
  CLKKernValueForDesignSpecTrackingValue();
  v9 = *a5;
  v10 = *MEMORY[0x277D740D0];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v9 addAttribute:v10 value:v11 range:{location, length}];

  [*a5 addAttribute:*MEMORY[0x277D740A8] value:v12 range:{location, length}];
}

+ (id)_modularSmallAlarmImageProvider
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __60__NTKComplicationModuleView__modularSmallAlarmImageProvider__block_invoke(v3, v3);

  v4 = _modularSmallAlarmImageProvider_glyphImageProvider;

  return v4;
}

uint64_t __60__NTKComplicationModuleView__modularSmallAlarmImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_lock);
  if (NavdRecentLocationsEntitlment_block_invoke___cachedDevice)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NavdRecentLocationsEntitlment_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NavdRecentLocationsEntitlment_block_invoke_value;
  }

  else
  {
    NavdRecentLocationsEntitlment_block_invoke___cachedDevice = v2;
    NavdRecentLocationsEntitlment_block_invoke___previousCLKDeviceVersion = [v2 version];
    __60__NTKComplicationModuleView__modularSmallAlarmImageProvider__block_invoke_3();
    v5 = 1;
    NavdRecentLocationsEntitlment_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_lock);

  return v5;
}

void __60__NTKComplicationModuleView__modularSmallAlarmImageProvider__block_invoke_3()
{
  v0 = [NTKComplicationModuleView _imageProviderForImageSymbolName:@"alarm" imageAssetNamePrefix:@"modularAlarmActive"];
  v1 = _modularSmallAlarmImageProvider_glyphImageProvider;
  _modularSmallAlarmImageProvider_glyphImageProvider = v0;

  v2 = _modularSmallAlarmImageProvider_glyphImageProvider;
  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [v2 setTintColor:v3];
}

+ (id)_extraLargeAlarmImageProvider
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __58__NTKComplicationModuleView__extraLargeAlarmImageProvider__block_invoke(v3, v3);

  v4 = _extraLargeAlarmImageProvider_glyphImageProvider;

  return v4;
}

uint64_t __58__NTKComplicationModuleView__extraLargeAlarmImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_2_lock);
  if (NavdRecentLocationsEntitlment_block_invoke_2___cachedDevice)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NavdRecentLocationsEntitlment_block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = NavdRecentLocationsEntitlment_block_invoke_2_value;
  }

  else
  {
    NavdRecentLocationsEntitlment_block_invoke_2___cachedDevice = v2;
    NavdRecentLocationsEntitlment_block_invoke_2___previousCLKDeviceVersion = [v2 version];
    __58__NTKComplicationModuleView__extraLargeAlarmImageProvider__block_invoke_3();
    v5 = 1;
    NavdRecentLocationsEntitlment_block_invoke_2_value = 1;
  }

  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_2_lock);

  return v5;
}

void __58__NTKComplicationModuleView__extraLargeAlarmImageProvider__block_invoke_3()
{
  v0 = [NTKComplicationModuleView _imageProviderForImageSymbolName:@"alarm" imageAssetNamePrefix:@"XLmodularAlarmActive"];
  v1 = _extraLargeAlarmImageProvider_glyphImageProvider;
  _extraLargeAlarmImageProvider_glyphImageProvider = v0;

  v2 = _extraLargeAlarmImageProvider_glyphImageProvider;
  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [v2 setTintColor:v3];
}

id __74__NTKComplicationModuleView__modularSmallStopwatchImageProviderForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_3_lock);
  if (NavdRecentLocationsEntitlment_block_invoke_3___cachedDevice)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != NavdRecentLocationsEntitlment_block_invoke_3___previousCLKDeviceVersion))
  {
    NavdRecentLocationsEntitlment_block_invoke_3___cachedDevice = v2;
    NavdRecentLocationsEntitlment_block_invoke_3___previousCLKDeviceVersion = [v2 version];
    v5 = __74__NTKComplicationModuleView__modularSmallStopwatchImageProviderForDevice___block_invoke_2();
    v6 = NavdRecentLocationsEntitlment_block_invoke_3_value;
    NavdRecentLocationsEntitlment_block_invoke_3_value = v5;
  }

  v7 = NavdRecentLocationsEntitlment_block_invoke_3_value;
  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_3_lock);

  return v7;
}

id __74__NTKComplicationModuleView__modularSmallStopwatchImageProviderForDevice___block_invoke_2()
{
  v0 = [NTKComplicationModuleView _imageProviderForImageSymbolName:@"stopwatch" imageAssetNamePrefix:@"modularStopwatch"];
  v1 = [MEMORY[0x277D75348] systemOrangeColor];
  [v0 setTintColor:v1];

  return v0;
}

id __72__NTKComplicationModuleView__extraLargeStopwatchImageProviderForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_4_lock);
  if (NavdRecentLocationsEntitlment_block_invoke_4___cachedDevice)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != NavdRecentLocationsEntitlment_block_invoke_4___previousCLKDeviceVersion))
  {
    NavdRecentLocationsEntitlment_block_invoke_4___cachedDevice = v2;
    NavdRecentLocationsEntitlment_block_invoke_4___previousCLKDeviceVersion = [v2 version];
    v5 = __72__NTKComplicationModuleView__extraLargeStopwatchImageProviderForDevice___block_invoke_2();
    v6 = NavdRecentLocationsEntitlment_block_invoke_4_value;
    NavdRecentLocationsEntitlment_block_invoke_4_value = v5;
  }

  v7 = NavdRecentLocationsEntitlment_block_invoke_4_value;
  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_4_lock);

  return v7;
}

id __72__NTKComplicationModuleView__extraLargeStopwatchImageProviderForDevice___block_invoke_2()
{
  v0 = [NTKComplicationModuleView _imageProviderForImageSymbolName:@"stopwatch" imageAssetNamePrefix:@"XLmodularStopwatch"];
  v1 = [MEMORY[0x277D75348] systemOrangeColor];
  [v0 setTintColor:v1];

  return v0;
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end