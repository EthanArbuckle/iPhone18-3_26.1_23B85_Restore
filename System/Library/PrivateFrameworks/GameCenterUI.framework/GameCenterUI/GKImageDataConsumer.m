@interface GKImageDataConsumer
- (CGSize)size;
- (GKImageDataConsumer)initWithSize:(CGSize)a3 scale:(double)a4 isLayeredImage:(BOOL)a5;
- (id)objectForData:(id)a3 error:(id *)a4;
@end

@implementation GKImageDataConsumer

- (GKImageDataConsumer)initWithSize:(CGSize)a3 scale:(double)a4 isLayeredImage:(BOOL)a5
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = GKImageDataConsumer;
  result = [(GKImageDataConsumer *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_scale = a4;
    result->_isLayeredImage = a5;
  }

  return result;
}

- (id)objectForData:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(GKImageDataConsumer *)self isLayeredImage];
  v8 = MEMORY[0x277D755B8];
  if (v7)
  {
    [(GKImageDataConsumer *)self scale];
    [v8 _gkImageWithCheckedData:v6 scale:?];
  }

  else
  {
    [MEMORY[0x277D755B8] _gkImageWithCheckedData:v6];
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
        v16 = v9;
      }

      else
      {
        v16 = self;
      }

      [(GKImageDataConsumer *)v16 size];
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
    if (a4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"Could not decode image";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *a4 = [v11 errorWithDomain:@"GKImageDataConsumerErrorDomain" code:-99 userInfo:v12];
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