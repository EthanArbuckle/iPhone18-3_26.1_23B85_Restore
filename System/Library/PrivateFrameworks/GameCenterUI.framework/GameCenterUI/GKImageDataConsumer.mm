@interface GKImageDataConsumer
- (CGSize)size;
- (GKImageDataConsumer)initWithSize:(CGSize)size scale:(double)scale isLayeredImage:(BOOL)image;
- (id)objectForData:(id)data error:(id *)error;
@end

@implementation GKImageDataConsumer

- (GKImageDataConsumer)initWithSize:(CGSize)size scale:(double)scale isLayeredImage:(BOOL)image
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = GKImageDataConsumer;
  result = [(GKImageDataConsumer *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_scale = scale;
    result->_isLayeredImage = image;
  }

  return result;
}

- (id)objectForData:(id)data error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  isLayeredImage = [(GKImageDataConsumer *)self isLayeredImage];
  v8 = MEMORY[0x277D755B8];
  if (isLayeredImage)
  {
    [(GKImageDataConsumer *)self scale];
    [v8 _gkImageWithCheckedData:dataCopy scale:?];
  }

  else
  {
    [MEMORY[0x277D755B8] _gkImageWithCheckedData:dataCopy];
  }
  v9 = ;
  if (v9)
  {
    if ([(GKImageDataConsumer *)self isLayeredImage])
    {
      v10 = v9;
    }

    else
    {
      [(GKImageDataConsumer *)self size];
      if (v14 == *MEMORY[0x277CBF3A8] && v13 == *(MEMORY[0x277CBF3A8] + 8))
      {
        selfCopy = v9;
      }

      else
      {
        selfCopy = self;
      }

      [(GKImageDataConsumer *)selfCopy size];
      v18 = v17;
      v20 = v19;
      v21 = objc_alloc_init(MEMORY[0x277D75568]);
      [(GKImageDataConsumer *)self scale];
      [v21 setScale:?];
      v22 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v21 format:{v18, v20}];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __43__GKImageDataConsumer_objectForData_error___block_invoke;
      v24[3] = &unk_279669E78;
      v25 = v9;
      v26 = v18;
      v27 = v20;
      v10 = [v22 imageWithActions:v24];
    }
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"Could not decode image";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v11 errorWithDomain:@"GKImageDataConsumerErrorDomain" code:-99 userInfo:v12];
    }

    v10 = 0;
  }

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end