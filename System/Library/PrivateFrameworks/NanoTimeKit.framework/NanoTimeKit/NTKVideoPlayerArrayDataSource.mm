@interface NTKVideoPlayerArrayDataSource
+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image order:(unint64_t)order andListings:(id)listings;
+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image order:(unint64_t)order endBehavior:(unint64_t)behavior andFilenames:(id)filenames;
- (id)currentListing;
- (id)initForDevice:(id)device withListings:(id)listings;
- (void)advanceToNextListing:(unint64_t)listing;
@end

@implementation NTKVideoPlayerArrayDataSource

+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image order:(unint64_t)order endBehavior:(unint64_t)behavior andFilenames:(id)filenames
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  imageCopy = image;
  filenamesCopy = filenames;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(filenamesCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = filenamesCopy;
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

        v19 = [NTKVideoPlayerListing listingForDevice:deviceCopy withFilename:*(*(&v23 + 1) + 8 * i)];
        [v19 setEndBehavior:behavior];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:deviceCopy withPosterImage:imageCopy order:order andListings:v13];

  return v20;
}

+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image order:(unint64_t)order andListings:(id)listings
{
  listingsCopy = listings;
  imageCopy = image;
  deviceCopy = device;
  v12 = [[NTKVideoPlayerArrayDataSource alloc] initForDevice:deviceCopy withListings:listingsCopy];

  [v12 setPosterImage:imageCopy];
  [v12 setOrder:order];

  return v12;
}

- (id)initForDevice:(id)device withListings:(id)listings
{
  listingsCopy = listings;
  v10.receiver = self;
  v10.super_class = NTKVideoPlayerArrayDataSource;
  v7 = [(NTKVideoPlayerDataSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_currentListingIndex = -1;
    objc_storeStrong(&v7->_listings, listings);
    v8->_order = 0;
  }

  return v8;
}

- (void)advanceToNextListing:(unint64_t)listing
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