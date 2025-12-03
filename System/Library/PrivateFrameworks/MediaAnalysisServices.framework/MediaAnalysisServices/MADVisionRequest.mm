@interface MADVisionRequest
+ (id)requestWithVisionRequest:(id)request error:(id *)error;
- (MADVisionRequest)initWithCoder:(id)coder;
- (MADVisionRequest)initWithVisionRequest:(id)request error:(id *)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVisionRequest

- (MADVisionRequest)initWithVisionRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = MADVisionRequest;
  v7 = [(MADVisionRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_visionRequest, request);
  }

  return v8;
}

+ (id)requestWithVisionRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [[self alloc] initWithVisionRequest:requestCopy error:error];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADVisionRequest;
  [(MADRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [coderCopy encodeObject:v6 forKey:@"VisionRequestClassName"];

  [coderCopy encodeInteger:-[VNRequest revision](self->_visionRequest forKey:{"revision"), @"VisionRequestRevision"}];
}

- (MADVisionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MADVisionRequest;
  v5 = [(MADRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VisionRequestClassName"];
    v7 = objc_alloc_init(NSClassFromString(v6));
    visionRequest = v5->_visionRequest;
    v5->_visionRequest = v7;

    -[VNRequest setRevision:](v5->_visionRequest, "setRevision:", [coderCopy decodeIntegerForKey:@"VisionRequestRevision"]);
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