@interface PXPhotosViewLens
+ (PXPhotosViewLens)grid;
+ (PXPhotosViewLens)zoomableGrid;
+ (id)lensForCurationLength:(int64_t)a3 isDefault:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PXPhotosViewLens)init;
- (PXPhotosViewLens)initWithTitle:(id)a3 symbolName:(id)a4 defaultSectionBodyStyle:(int64_t)a5;
@end

@implementation PXPhotosViewLens

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = [(NSString *)identifier isEqualToString:v6];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosViewLens.m" lineNumber:139 description:{@"%s is not available as initializer", "-[PXPhotosViewLens init]"}];

  abort();
}

- (PXPhotosViewLens)initWithTitle:(id)a3 symbolName:(id)a4 defaultSectionBodyStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = PXPhotosViewLens;
  v10 = [(PXPhotosViewLens *)&v19 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v14 = [v8 copy];
    title = v10->_title;
    v10->_title = v14;

    v16 = [v9 copy];
    symbolName = v10->_symbolName;
    v10->_symbolName = v16;

    v10->_defaultSectionBodyStyle = a5;
  }

  return v10;
}

+ (id)lensForCurationLength:(int64_t)a3 isDefault:(BOOL)a4
{
  v4 = a4;
  if (lensForCurationLength_isDefault__onceToken != -1)
  {
    dispatch_once(&lensForCurationLength_isDefault__onceToken, &__block_literal_global_11);
  }

  v6 = 1000;
  if (!v4)
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6 * a3];
  v8 = [lensForCurationLength_isDefault__cachedLenses objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [[_PXPhotosCurationLengthLens alloc] initWithCurationLength:a3 isDefault:v4];
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