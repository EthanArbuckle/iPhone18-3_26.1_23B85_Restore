@interface PXPhotosViewLens
+ (PXPhotosViewLens)grid;
+ (PXPhotosViewLens)zoomableGrid;
+ (id)lensForCurationLength:(int64_t)length isDefault:(BOOL)default;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PXPhotosViewLens)init;
- (PXPhotosViewLens)initWithTitle:(id)title symbolName:(id)name defaultSectionBodyStyle:(int64_t)style;
@end

@implementation PXPhotosViewLens

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = [(NSString *)identifier isEqualToString:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p title:%@ symbolName:%@ sectionBodyStyle:%ld>", v5, self, self->_title, self->_symbolName, self->_defaultSectionBodyStyle];;

  return v6;
}

- (PXPhotosViewLens)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewLens.m" lineNumber:139 description:{@"%s is not available as initializer", "-[PXPhotosViewLens init]"}];

  abort();
}

- (PXPhotosViewLens)initWithTitle:(id)title symbolName:(id)name defaultSectionBodyStyle:(int64_t)style
{
  titleCopy = title;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PXPhotosViewLens;
  v10 = [(PXPhotosViewLens *)&v19 init];
  if (v10)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = uUIDString;

    v14 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v14;

    v16 = [nameCopy copy];
    symbolName = v10->_symbolName;
    v10->_symbolName = v16;

    v10->_defaultSectionBodyStyle = style;
  }

  return v10;
}

+ (id)lensForCurationLength:(int64_t)length isDefault:(BOOL)default
{
  defaultCopy = default;
  if (lensForCurationLength_isDefault__onceToken != -1)
  {
    dispatch_once(&lensForCurationLength_isDefault__onceToken, &__block_literal_global_11);
  }

  v6 = 1000;
  if (!defaultCopy)
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6 * length];
  v8 = [lensForCurationLength_isDefault__cachedLenses objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [[_PXPhotosCurationLengthLens alloc] initWithCurationLength:length isDefault:defaultCopy];
    [lensForCurationLength_isDefault__cachedLenses setObject:v8 forKeyedSubscript:v7];
  }

  return v8;
}

uint64_t __52__PXPhotosViewLens_lensForCurationLength_isDefault___block_invoke()
{
  lensForCurationLength_isDefault__cachedLenses = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (PXPhotosViewLens)grid
{
  if (grid_onceToken != -1)
  {
    dispatch_once(&grid_onceToken, &__block_literal_global_9);
  }

  v3 = grid_lens;

  return v3;
}

void __24__PXPhotosViewLens_grid__block_invoke()
{
  v0 = [PXPhotosViewLens alloc];
  v4 = PXGridZeroBundle();
  v1 = [v4 localizedStringForKey:@"PXPhotosGridLensAll" value:&stru_282C2F4D0 table:0];
  v2 = [(PXPhotosViewLens *)v0 initWithTitle:v1 symbolName:@"square.grid.3x3.fill" defaultSectionBodyStyle:0];
  v3 = grid_lens;
  grid_lens = v2;
}

+ (PXPhotosViewLens)zoomableGrid
{
  if (zoomableGrid_onceToken != -1)
  {
    dispatch_once(&zoomableGrid_onceToken, &__block_literal_global_1964);
  }

  v3 = zoomableGrid_lens;

  return v3;
}

void __32__PXPhotosViewLens_zoomableGrid__block_invoke()
{
  v0 = [PXPhotosViewLens alloc];
  v4 = PXGridZeroBundle();
  v1 = [v4 localizedStringForKey:@"PXPhotosGridLensAll" value:&stru_282C2F4D0 table:0];
  v2 = [(PXPhotosViewLens *)v0 initWithTitle:v1 symbolName:@"square.grid.3x3.fill" defaultSectionBodyStyle:1];
  v3 = zoomableGrid_lens;
  zoomableGrid_lens = v2;
}

@end