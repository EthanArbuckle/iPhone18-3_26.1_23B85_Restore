@interface MRNowPlayingArtworkImage
- (BOOL)isEqual:(id)a3;
- (MRNowPlayingArtworkImage)initWithImageData:(id)a3 mimeType:(id)a4;
- (id)description;
@end

@implementation MRNowPlayingArtworkImage

- (MRNowPlayingArtworkImage)initWithImageData:(id)a3 mimeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRNowPlayingArtworkImage;
  v8 = [(MRNowPlayingArtworkImage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    imageData = v8->_imageData;
    v8->_imageData = v9;

    v11 = [v7 copy];
    mimeType = v8->_mimeType;
    v8->_mimeType = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageData = self->_imageData;
    v6 = [v4 imageData];
    v7 = [(NSData *)imageData isEqualToData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  StringRepresentation = MRDataCreateStringRepresentation(self->_imageData);
  v6 = [v3 initWithFormat:@"%@:%p %@\n", v4, self, StringRepresentation];

  v7 = +[MRUserSettings currentSettings];
  if ([v7 shouldLogArtwork])
  {
    v8 = MRCreateASCIIRepresentationFromImageData(self->_imageData);
    [v6 appendFormat:@"%@\n", v8];
  }

  return v6;
}

@end