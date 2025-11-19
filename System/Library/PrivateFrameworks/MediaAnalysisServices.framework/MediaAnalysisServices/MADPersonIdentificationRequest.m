@interface MADPersonIdentificationRequest
- (MADPersonIdentificationRequest)init;
- (MADPersonIdentificationRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MADPersonIdentificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADPersonIdentificationRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_faceDetectorVisionRevision = [v4 decodeIntegerForKey:@"FaceDetectorVisionRevision"];
    v5->_allowOnDemand = [v4 decodeIntegerForKey:@"AllowOnDemand"] != 0;
    v5->_allowUnverifiedIdentity = [v4 decodeIntegerForKey:@"AllowUnverifiedIdentity"] != 0;
    v5->_useLowResolutionPicture = [v4 decodeIntegerForKey:@"UseLowResolutionPicture"] != 0;
    v5->_useVIPModel = [v4 decodeIntegerForKey:@"UseVIPModel"] != 0;
    v5->_includePets = [v4 decodeIntegerForKey:@"IncludePets"] != 0;
    v5->_maximumFaceCount = [v4 decodeIntegerForKey:@"MaximumFaceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADPersonIdentificationRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_faceDetectorVisionRevision forKey:{@"FaceDetectorVisionRevision", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_allowOnDemand forKey:@"AllowOnDemand"];
  [v4 encodeInteger:self->_allowUnverifiedIdentity forKey:@"AllowUnverifiedIdentity"];
  [v4 encodeInteger:self->_useLowResolutionPicture forKey:@"UseLowResolutionPicture"];
  [v4 encodeInteger:self->_useVIPModel forKey:@"UseVIPModel"];
  [v4 encodeInteger:self->_includePets forKey:@"IncludePets"];
  [v4 encodeInteger:self->_maximumFaceCount forKey:@"MaximumFaceCount"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"faceDetectorVisionRevision: %lu, ", self->_faceDetectorVisionRevision];
  if (self->_allowOnDemand)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v3 appendFormat:@"allowOnDemand: %@, ", v6];
  if (self->_allowUnverifiedIdentity)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v3 appendFormat:@"allowUnverifiedIdentity: %@, ", v7];
  if (self->_useLowResolutionPicture)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v3 appendFormat:@"useLowResolutionPicture: %@, ", v8];
  if (self->_useVIPModel)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [v3 appendFormat:@"useVIPModel: %@, ", v9];
  if (self->_includePets)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  [v3 appendFormat:@"includePets: %@, ", v10];
  [v3 appendFormat:@"maximumFaceCount: %lu, ", self->_maximumFaceCount];
  v11 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v11];

  v12 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v12];

  return v3;
}

@end