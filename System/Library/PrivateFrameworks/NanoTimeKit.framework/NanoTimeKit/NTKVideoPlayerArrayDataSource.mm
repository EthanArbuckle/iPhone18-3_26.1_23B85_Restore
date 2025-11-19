@interface NTKVideoPlayerArrayDataSource
+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 order:(unint64_t)a5 andListings:(id)a6;
+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 order:(unint64_t)a5 endBehavior:(unint64_t)a6 andFilenames:(id)a7;
- (id)currentListing;
- (id)initForDevice:(id)a3 withListings:(id)a4;
- (void)advanceToNextListing:(unint64_t)a3;
@end

@implementation NTKVideoPlayerArrayDataSource

+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 order:(unint64_t)a5 endBehavior:(unint64_t)a6 andFilenames:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [NTKVideoPlayerListing listingForDevice:v10 withFilename:*(*(&v23 + 1) + 8 * i)];
        [v19 setEndBehavior:a6];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:v10 withPosterImage:v11 order:a5 andListings:v13];

  return v20;
}

+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 order:(unint64_t)a5 andListings:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[NTKVideoPlayerArrayDataSource alloc] initForDevice:v11 withListings:v9];

  [v12 setPosterImage:v10];
  [v12 setOrder:a5];

  return v12;
}

- (id)initForDevice:(id)a3 withListings:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = NTKVideoPlayerArrayDataSource;
  v7 = [(NTKVideoPlayerDataSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_currentListingIndex = -1;
    objc_storeStrong(&v7->_listings, a4);
    v8->_order = 0;
  }

  return v8;
}

- (void)advanceToNextListing:(unint64_t)a3
{
  order = self->_order;
  if (order == 1)
  {
    self->_currentListingIndex = NTKRandomInt32InScope(0, [(NSArray *)self->_listings count]- 1);
  }

  else if (!order)
  {
    v4 = self->_currentListingIndex + 1;
    self->_currentListingIndex = v4 % [(NSArray *)self->_listings count];
  }
}

- (id)currentListing
{
  if (self->_currentListingIndex == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSArray *)self->_listings count];
    if (v3)
    {
      v3 = [(NSArray *)self->_listings objectAtIndexedSubscript:self->_currentListingIndex];
    }
  }

  return v3;
}

@end