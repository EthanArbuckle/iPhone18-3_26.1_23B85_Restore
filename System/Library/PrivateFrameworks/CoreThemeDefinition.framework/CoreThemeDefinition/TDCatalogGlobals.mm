@interface TDCatalogGlobals
- (BOOL)allowsCustomTintColors;
- (BOOL)allowsSystemTintColors;
- (BOOL)allowsVibrancy;
- (BOOL)supportsBrightnessAdjustments;
- (BOOL)supportsMultipleAppearancesForEffects;
- (BOOL)supportsWhitePointAdjustments;
- (id)dictionaryForArchiving;
- (unint64_t)defaultBlendMode;
- (void)setAllowsCustomTintColors:(BOOL)a3;
- (void)setAllowsSystemTintColors:(BOOL)a3;
- (void)setAllowsVibrancy:(BOOL)a3;
- (void)setDefaultBlendMode:(unint64_t)a3;
- (void)setSupportsBrightnessAdjustments:(BOOL)a3;
- (void)setSupportsMultipleAppearancesForEffects:(BOOL)a3;
- (void)setSupportsWhitePointAdjustments:(BOOL)a3;
@end

@implementation TDCatalogGlobals

- (unint64_t)defaultBlendMode
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"defaultBlendMode"];
  defaultBlendMode = self->_defaultBlendMode;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"defaultBlendMode"];
  return defaultBlendMode;
}

- (void)setDefaultBlendMode:(unint64_t)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"defaultBlendMode"];
  self->_defaultBlendMode = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"defaultBlendMode"];
}

- (BOOL)allowsVibrancy
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"allowsVibrancy"];
  allowsVibrancy = self->_allowsVibrancy;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"allowsVibrancy"];
  return allowsVibrancy;
}

- (void)setAllowsVibrancy:(BOOL)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"allowsVibrancy"];
  self->_allowsVibrancy = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"allowsVibrancy"];
}

- (BOOL)supportsWhitePointAdjustments
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"supportsWhitePointAdjustments"];
  supportsBrightnessAdjustments = self->_supportsBrightnessAdjustments;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"supportsWhitePointAdjustments"];
  return supportsBrightnessAdjustments;
}

- (void)setSupportsWhitePointAdjustments:(BOOL)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"supportsWhitePointAdjustments"];
  self->_supportsBrightnessAdjustments = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"supportsWhitePointAdjustments"];
}

- (BOOL)supportsBrightnessAdjustments
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"supportsBrightnessAdjustments"];
  supportsBrightnessAdjustments = self->_supportsBrightnessAdjustments;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"supportsBrightnessAdjustments"];
  return supportsBrightnessAdjustments;
}

- (void)setSupportsBrightnessAdjustments:(BOOL)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"supportsBrightnessAdjustments"];
  self->_supportsBrightnessAdjustments = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"supportsBrightnessAdjustments"];
}

- (BOOL)allowsSystemTintColors
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"allowsSystemTintColors"];
  allowsSystemTintColors = self->_allowsSystemTintColors;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"allowsSystemTintColors"];
  return allowsSystemTintColors;
}

- (void)setAllowsSystemTintColors:(BOOL)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"allowsSystemTintColors"];
  self->_allowsSystemTintColors = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"allowsSystemTintColors"];
}

- (BOOL)allowsCustomTintColors
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"allowsCustomTintColors"];
  allowsCustomTintColors = self->_allowsCustomTintColors;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"allowsCustomTintColors"];
  return allowsCustomTintColors;
}

- (void)setAllowsCustomTintColors:(BOOL)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"allowsCustomTintColors"];
  self->_allowsCustomTintColors = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"allowsCustomTintColors"];
}

- (BOOL)supportsMultipleAppearancesForEffects
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"supportsMultipleAppearancesForEffects"];
  supportsMultipleAppearancesForEffects = self->_supportsMultipleAppearancesForEffects;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"supportsMultipleAppearancesForEffects"];
  return supportsMultipleAppearancesForEffects;
}

- (void)setSupportsMultipleAppearancesForEffects:(BOOL)a3
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"supportsMultipleAppearancesForEffects"];
  self->_supportsMultipleAppearancesForEffects = a3;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"supportsMultipleAppearancesForEffects"];
}

- (id)dictionaryForArchiving
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"defaultBlendMode";
  v6[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TDCatalogGlobals defaultBlendMode](self, "defaultBlendMode")}];
  v5[1] = @"allowsVibrancy";
  v6[1] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals allowsVibrancy](self, "allowsVibrancy")}];
  v5[2] = @"supportsWhitePointAdjustments";
  v6[2] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals supportsWhitePointAdjustments](self, "supportsWhitePointAdjustments")}];
  v5[3] = @"supportsBrightnessAdjustments";
  v6[3] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals supportsBrightnessAdjustments](self, "supportsBrightnessAdjustments")}];
  v5[4] = @"allowsSystemTintColors";
  v6[4] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals allowsSystemTintColors](self, "allowsSystemTintColors")}];
  v5[5] = @"allowsCustomTintColors";
  v6[5] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals allowsCustomTintColors](self, "allowsCustomTintColors")}];
  v5[6] = @"supportsMultipleAppearancesForEffects";
  v6[6] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals supportsMultipleAppearancesForEffects](self, "supportsMultipleAppearancesForEffects")}];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end