@interface HFAlbumIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFAlbumIconDescriptor)initWithImageData:(id)a3;
- (NSString)description;
- (NSString)identifier;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3;
- (unint64_t)hash;
@end

@implementation HFAlbumIconDescriptor

- (HFAlbumIconDescriptor)initWithImageData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFAlbumIconDescriptor;
  v6 = [(HFAlbumIconDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HFAlbumIconDescriptor *)v4 imageData];
      v6 = [(HFAlbumIconDescriptor *)self imageData];
      v7 = [v5 isEqual:v6];
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
  v2 = [(HFAlbumIconDescriptor *)self imageData];
  v3 = [v2 hash];

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
  v6 = [(HFAlbumIconDescriptor *)self imageData];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end