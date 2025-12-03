@interface NUTileLayer
- (NUTileLayer)initWithImage:(id)image tile:(id)tile;
- (void)dealloc;
@end

@implementation NUTileLayer

- (void)dealloc
{
  image = self->_image;
  size = self->_imageRect.size;
  v7[0] = self->_imageRect.origin;
  v7[1] = size;
  v5 = [MEMORY[0x277D2D008] regionWithRect:v7];
  [(NUPurgeableSurfaceImage *)image endAccessRegion:v5];

  v6.receiver = self;
  v6.super_class = NUTileLayer;
  [(NUTileLayer *)&v6 dealloc];
}

- (NUTileLayer)initWithImage:(id)image tile:(id)tile
{
  imageCopy = image;
  tileCopy = tile;
  v18.receiver = self;
  v18.super_class = NUTileLayer;
  v8 = [(NUTileLayer *)&v18 init];
  v9 = *(v8 + 6);
  *(v8 + 6) = imageCopy;
  v10 = imageCopy;

  if (tileCopy)
  {
    [tileCopy frameRect];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v11 = v17;
  *(v8 + 56) = v16;
  *(v8 + 72) = v11;
  v12 = *(v8 + 6);
  v13 = *(v8 + 72);
  v16 = *(v8 + 56);
  v17 = v13;
  v14 = [MEMORY[0x277D2D008] regionWithRect:&v16];
  [v12 beginAccessRegion:v14];

  return v8;
}

@end