@interface MADMultiModalInputImageSegment
- (MADMultiModalInputImageSegment)initWithCoder:(id)a3;
- (MADMultiModalInputImageSegment)initWithSurface:(id)a3 seed:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMultiModalInputImageSegment

- (MADMultiModalInputImageSegment)initWithSurface:(id)a3 seed:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADMultiModalInputImageSegment;
  v9 = [(MADMultiModalInputImageSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_surface, a3);
    objc_storeStrong(&v10->_seed, a4);
  }

  return v10;
}

- (MADMultiModalInputImageSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADMultiModalInputImageSegment;
  v5 = [(MADMultiModalInputSegment *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    surface = v5->_surface;
    v5->_surface = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Seed"];
    seed = v5->_seed;
    v5->_seed = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADMultiModalInputImageSegment;
  v4 = a3;
  [(MADMultiModalInputSegment *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_surface forKey:{@"Surface", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_seed forKey:@"Seed"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"surface: %@", self->_surface];
  if (self->_seed)
  {
    [v3 appendFormat:@", seed: %@", self->_seed];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end