@interface MRNowPlayingArtworkImage
- (BOOL)isEqual:(id)equal;
- (MRNowPlayingArtworkImage)initWithImageData:(id)data mimeType:(id)type;
- (id)description;
@end

@implementation MRNowPlayingArtworkImage

- (MRNowPlayingArtworkImage)initWithImageData:(id)data mimeType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = MRNowPlayingArtworkImage;
  v8 = [(MRNowPlayingArtworkImage *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    imageData = v8->_imageData;
    v8->_imageData = v9;

    v11 = [typeCopy copy];
    mimeType = v8->_mimeType;
    v8->_mimeType = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageData = self->_imageData;
    imageData = [equalCopy imageData];
    v7 = [(NSData *)imageData isEqualToData:imageData];
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
  stringRepresentation = [v3 initWithFormat:@"%@:%p %@\n", v4, self, StringRepresentation];

  v7 = +[MRUserSettings currentSettings];
  if ([v7 shouldLogArtwork])
  {
    v8 = MRCreateASCIIRepresentationFromImageData(self->_imageData);
    [stringRepresentation appendFormat:@"%@\n", v8];
  }

  return stringRepresentation;
}

@end