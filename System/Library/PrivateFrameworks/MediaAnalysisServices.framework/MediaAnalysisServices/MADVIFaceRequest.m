@interface MADVIFaceRequest
- (MADVIFaceRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIFaceRequest

- (MADVIFaceRequest)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MADVIFaceRequest;
  v3 = [(MADRequest *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MADVIFaceRequest;
  [(MADRequest *)&v3 encodeWithCoder:a3];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end