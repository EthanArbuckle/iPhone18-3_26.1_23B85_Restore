@interface MADPersonIdentificationResult
- (MADPersonIdentificationResult)initWithCoder:(id)coder;
- (MADPersonIdentificationResult)initWithResultItems:(id)items frontCameraCaptureState:(int64_t)state;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADPersonIdentificationResult

- (MADPersonIdentificationResult)initWithResultItems:(id)items frontCameraCaptureState:(int64_t)state
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = MADPersonIdentificationResult;
  v8 = [(MADResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_resultItems, items);
    v9->_frontCameraCaptureState = state;
  }

  return v9;
}

- (MADPersonIdentificationResult)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADPersonIdentificationResult;
  v5 = [(MADResult *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ResultItems"];
    resultItems = v5->_resultItems;
    v5->_resultItems = v9;

    v5->_frontCameraCaptureState = [coderCopy decodeInt64ForKey:@"FrontCameraCaptureState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADPersonIdentificationResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_resultItems forKey:@"ResultItems"];
  [coderCopy encodeInt64:self->_frontCameraCaptureState forKey:@"FrontCameraCaptureState"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"frontCameraCapture: %ld, ", self->_frontCameraCaptureState];
  [string appendFormat:@"result items: %@>", self->_resultItems];

  return string;
}

@end