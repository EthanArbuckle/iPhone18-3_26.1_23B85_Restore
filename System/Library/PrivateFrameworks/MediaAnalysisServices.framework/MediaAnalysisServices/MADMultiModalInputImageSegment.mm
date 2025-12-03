@interface MADMultiModalInputImageSegment
- (MADMultiModalInputImageSegment)initWithCoder:(id)coder;
- (MADMultiModalInputImageSegment)initWithSurface:(id)surface seed:(id)seed;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMultiModalInputImageSegment

- (MADMultiModalInputImageSegment)initWithSurface:(id)surface seed:(id)seed
{
  surfaceCopy = surface;
  seedCopy = seed;
  v12.receiver = self;
  v12.super_class = MADMultiModalInputImageSegment;
  v9 = [(MADMultiModalInputImageSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_surface, surface);
    objc_storeStrong(&v10->_seed, seed);
  }

  return v10;
}

- (MADMultiModalInputImageSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADMultiModalInputImageSegment;
  v5 = [(MADMultiModalInputSegment *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    surface = v5->_surface;
    v5->_surface = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Seed"];
    seed = v5->_seed;
    v5->_seed = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADMultiModalInputImageSegment;
  coderCopy = coder;
  [(MADMultiModalInputSegment *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_surface forKey:{@"Surface", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_seed forKey:@"Seed"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"surface: %@", self->_surface];
  if (self->_seed)
  {
    [string appendFormat:@", seed: %@", self->_seed];
  }

  [string appendFormat:@">"];

  return string;
}

@end