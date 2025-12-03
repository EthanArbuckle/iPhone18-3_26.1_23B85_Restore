@interface MADPersonIdentificationRequest
- (MADPersonIdentificationRequest)init;
- (MADPersonIdentificationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADPersonIdentificationRequest

- (MADPersonIdentificationRequest)init
{
  v3.receiver = self;
  v3.super_class = MADPersonIdentificationRequest;
  result = [(MADPersonIdentificationRequest *)&v3 init];
  if (result)
  {
    result->_faceDetectorVisionRevision = 3737841670;
    result->_allowOnDemand = 1;
    result->_allowUnverifiedIdentity = 0;
    result->_useLowResolutionPicture = 0;
    result->_useVIPModel = 0;
    result->_includePets = 0;
    result->_maximumFaceCount = 0;
  }

  return result;
}

- (MADPersonIdentificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADPersonIdentificationRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_faceDetectorVisionRevision = [coderCopy decodeIntegerForKey:@"FaceDetectorVisionRevision"];
    v5->_allowOnDemand = [coderCopy decodeIntegerForKey:@"AllowOnDemand"] != 0;
    v5->_allowUnverifiedIdentity = [coderCopy decodeIntegerForKey:@"AllowUnverifiedIdentity"] != 0;
    v5->_useLowResolutionPicture = [coderCopy decodeIntegerForKey:@"UseLowResolutionPicture"] != 0;
    v5->_useVIPModel = [coderCopy decodeIntegerForKey:@"UseVIPModel"] != 0;
    v5->_includePets = [coderCopy decodeIntegerForKey:@"IncludePets"] != 0;
    v5->_maximumFaceCount = [coderCopy decodeIntegerForKey:@"MaximumFaceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADPersonIdentificationRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_faceDetectorVisionRevision forKey:{@"FaceDetectorVisionRevision", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_allowOnDemand forKey:@"AllowOnDemand"];
  [coderCopy encodeInteger:self->_allowUnverifiedIdentity forKey:@"AllowUnverifiedIdentity"];
  [coderCopy encodeInteger:self->_useLowResolutionPicture forKey:@"UseLowResolutionPicture"];
  [coderCopy encodeInteger:self->_useVIPModel forKey:@"UseVIPModel"];
  [coderCopy encodeInteger:self->_includePets forKey:@"IncludePets"];
  [coderCopy encodeInteger:self->_maximumFaceCount forKey:@"MaximumFaceCount"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"faceDetectorVisionRevision: %lu, ", self->_faceDetectorVisionRevision];
  if (self->_allowOnDemand)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [string appendFormat:@"allowOnDemand: %@, ", v6];
  if (self->_allowUnverifiedIdentity)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [string appendFormat:@"allowUnverifiedIdentity: %@, ", v7];
  if (self->_useLowResolutionPicture)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [string appendFormat:@"useLowResolutionPicture: %@, ", v8];
  if (self->_useVIPModel)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [string appendFormat:@"useVIPModel: %@, ", v9];
  if (self->_includePets)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  [string appendFormat:@"includePets: %@, ", v10];
  [string appendFormat:@"maximumFaceCount: %lu, ", self->_maximumFaceCount];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end