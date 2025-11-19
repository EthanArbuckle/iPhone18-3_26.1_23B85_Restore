@interface IFGraphicSymbolDefaults
+ (id)sharedInstance;
- (IFGraphicSymbolDefaults)init;
@end

@implementation IFGraphicSymbolDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[IFGraphicSymbolDefaults sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __41__IFGraphicSymbolDefaults_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(IFGraphicSymbolDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (IFGraphicSymbolDefaults)init
{
  v7.receiver = self;
  v7.super_class = IFGraphicSymbolDefaults;
  v2 = [(IFGraphicSymbolDefaults *)&v7 init];
  v3 = v2;
  if (v2)
  {
    symbolName = v2->_symbolName;
    v2->_symbolName = @"questionmark.app.dashed";

    *&v3->_renderingMode = xmmword_1B9E3B500;
    *&v3->_symbolColorAlternate = vdupq_n_s64(7uLL);
    v3->_enclosureColorAlternate = 11;
    [MEMORY[0x1E6999438] defaultSymbolPointSizeRatio];
    v3->_enclosureSizeMultiplier = v5;
  }

  return v3;
}

@end