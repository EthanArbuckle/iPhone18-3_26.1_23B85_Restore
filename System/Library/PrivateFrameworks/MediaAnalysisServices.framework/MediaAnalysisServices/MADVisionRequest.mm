@interface MADVisionRequest
+ (id)requestWithVisionRequest:(id)a3 error:(id *)a4;
- (MADVisionRequest)initWithCoder:(id)a3;
- (MADVisionRequest)initWithVisionRequest:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVisionRequest

- (MADVisionRequest)initWithVisionRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MADVisionRequest;
  v7 = [(MADVisionRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_visionRequest, a3);
  }

  return v8;
}

+ (id)requestWithVisionRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithVisionRequest:v6 error:a4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADVisionRequest;
  [(MADRequest *)&v7 encodeWithCoder:v4];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 encodeObject:v6 forKey:@"VisionRequestClassName"];

  [v4 encodeInteger:-[VNRequest revision](self->_visionRequest forKey:{"revision"), @"VisionRequestRevision"}];
}

- (MADVisionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MADVisionRequest;
  v5 = [(MADRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VisionRequestClassName"];
    v7 = objc_alloc_init(NSClassFromString(v6));
    visionRequest = v5->_visionRequest;
    v5->_visionRequest = v7;

    -[VNRequest setRevision:](v5->_visionRequest, "setRevision:", [v4 decodeIntegerForKey:@"VisionRequestRevision"]);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VNRequest *)self->_visionRequest description];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

@end