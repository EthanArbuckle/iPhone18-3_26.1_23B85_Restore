@interface MRDataArtwork
- (CGSize)dimensions;
- (MRDataArtwork)initWithImageData:(id)data;
- (MRDataArtwork)initWithProtobuf:(id)protobuf;
- (id)description;
@end

@implementation MRDataArtwork

- (MRDataArtwork)initWithImageData:(id)data
{
  if (data)
  {
    v4 = [data copy];
    v16 = 0;
    [MRImageUtilities imageDimensionsForImageData:v4 error:&v16];
    v6 = v5;
    v8 = v7;
    v9 = v16;
    if (v9)
    {
      v10 = _MRLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MRArtwork setImageData:v10];
      }

      selfCopy = 0;
    }

    else
    {
      v15.receiver = self;
      v15.super_class = MRDataArtwork;
      v12 = [(MRDataArtwork *)&v15 init];
      v13 = v12;
      if (v12)
      {
        objc_storeStrong(&v12->_imageData, v4);
        v13->_dimensions.width = v6;
        v13->_dimensions.height = v8;
      }

      self = v13;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  imageData = [(MRDataArtwork *)self imageData];
  [(MRDataArtwork *)self dimensions];
  v7 = v6;
  [(MRDataArtwork *)self dimensions];
  v9 = [v3 initWithFormat:@"<%@: data=%@, dim={%g, %g}", v4, imageData, v7, v8];

  return v9;
}

- (MRDataArtwork)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  selfCopy = [protobufCopy imageData];

  if (selfCopy)
  {
    imageData = [protobufCopy imageData];
    v7 = [(MRDataArtwork *)self initWithImageData:imageData];

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end