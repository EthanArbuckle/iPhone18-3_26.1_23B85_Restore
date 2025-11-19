@interface FMFMapCacheImage
- (FMFMapCacheImage)initWithCoder:(id)a3;
- (FMFMapCacheImage)initWithPath:(id)a3;
- (id)description;
- (void)boostPriority;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFMapCacheImage

- (FMFMapCacheImage)initWithPath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FMFMapCacheImage;
  v6 = [(FMFMapCacheImage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v8 = [MEMORY[0x277CBEAA8] date];
    timestamp = v7->_timestamp;
    v7->_timestamp = v8;

    v7->_count = 1;
  }

  return v7;
}

- (FMFMapCacheImage)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FMFMapCacheImage;
  v5 = [(FMFMapCacheImage *)&v13 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v8 = [v4 decodeIntegerForKey:@"count"];
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = v8;
    [(FMFMapCacheImage *)v5 setPath:v6];
    [(FMFMapCacheImage *)v5 setTimestamp:v7];
    [(FMFMapCacheImage *)v5 setCount:v11];

LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)boostPriority
{
  [(FMFMapCacheImage *)self setCount:[(FMFMapCacheImage *)self count]+ 1];
  v3 = [MEMORY[0x277CBEAA8] date];
  [(FMFMapCacheImage *)self setTimestamp:v3];
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"path"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeInteger:self->_count forKey:@"count"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FMFMapCacheImage *)self count];
  v5 = [(FMFMapCacheImage *)self timestamp];
  v6 = [(FMFMapCacheImage *)self path];
  v7 = [v3 stringWithFormat:@"FMFMapCacheImage(0x%lX, count: %ld, timestamp: %@, path:%@)", self, v4, v5, v6];

  return v7;
}

@end