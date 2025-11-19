@interface MRUUpNextCellCell
- (MRUUpNextCellCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setArtworkCatalog:(id)a3;
@end

@implementation MRUUpNextCellCell

- (MRUUpNextCellCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRUUpNextCellCell;
  return [(MRUUpNextCellCell *)&v5 initWithStyle:3 reuseIdentifier:a4];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = MRUUpNextCellCell;
  [(MRUUpNextCellCell *)&v2 prepareForReuse];
}

- (void)setArtworkCatalog:(id)a3
{
  v5 = a3;
  if (self->_artworkCatalog != v5)
  {
    objc_storeStrong(&self->_artworkCatalog, a3);
    objc_initWeak(&location, self);
    artworkCatalog = self->_artworkCatalog;
    v7 = [(MRUUpNextCellCell *)self imageView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__MRUUpNextCellCell_setArtworkCatalog___block_invoke;
    v8[3] = &unk_1E7665168;
    objc_copyWeak(&v9, &location);
    [(MPArtworkCatalog *)artworkCatalog setDestination:v7 configurationBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __39__MRUUpNextCellCell_setArtworkCatalog___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MRUUpNextCellCell_setArtworkCatalog___block_invoke_2;
  v7[3] = &unk_1E76639D0;
  v7[4] = WeakRetained;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __39__MRUUpNextCellCell_setArtworkCatalog___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

@end