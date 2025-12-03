@interface HFAlbumIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFAlbumIconDescriptor)initWithImageData:(id)data;
- (NSString)description;
- (NSString)identifier;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor;
- (unint64_t)hash;
@end

@implementation HFAlbumIconDescriptor

- (HFAlbumIconDescriptor)initWithImageData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HFAlbumIconDescriptor;
  v6 = [(HFAlbumIconDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, data);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageData = [(HFAlbumIconDescriptor *)equalCopy imageData];
      imageData2 = [(HFAlbumIconDescriptor *)self imageData];
      v7 = [imageData isEqual:imageData2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  imageData = [(HFAlbumIconDescriptor *)self imageData];
  v3 = [imageData hash];

  return v3;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  imageData = [(HFAlbumIconDescriptor *)self imageData];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, imageData];

  return v7;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  v5 = descriptorCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ([v7 imageData], v8 = objc_claimAutoreleasedReturnValue(), -[HFAlbumIconDescriptor imageData](self, "imageData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end