@interface FMFMapCacheImage
- (FMFMapCacheImage)initWithCoder:(id)coder;
- (FMFMapCacheImage)initWithPath:(id)path;
- (id)description;
- (void)boostPriority;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFMapCacheImage

- (FMFMapCacheImage)initWithPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = FMFMapCacheImage;
  v6 = [(FMFMapCacheImage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v7->_timestamp;
    v7->_timestamp = date;

    v7->_count = 1;
  }

  return v7;
}

- (FMFMapCacheImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FMFMapCacheImage;
  v5 = [(FMFMapCacheImage *)&v13 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v8 = [coderCopy decodeIntegerForKey:@"count"];
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
  date = [MEMORY[0x277CBEAA8] date];
  [(FMFMapCacheImage *)self setTimestamp:date];
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FMFMapCacheImage *)self count];
  timestamp = [(FMFMapCacheImage *)self timestamp];
  path = [(FMFMapCacheImage *)self path];
  v7 = [v3 stringWithFormat:@"FMFMapCacheImage(0x%lX, count: %ld, timestamp: %@, path:%@)", self, v4, timestamp, path];

  return v7;
}

@end