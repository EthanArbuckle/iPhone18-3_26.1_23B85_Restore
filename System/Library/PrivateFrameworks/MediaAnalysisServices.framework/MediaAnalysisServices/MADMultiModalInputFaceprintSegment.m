@interface MADMultiModalInputFaceprintSegment
- (MADMultiModalInputFaceprintSegment)initWithCoder:(id)a3;
- (MADMultiModalInputFaceprintSegment)initWithFaceprint:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMultiModalInputFaceprintSegment

- (MADMultiModalInputFaceprintSegment)initWithFaceprint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADMultiModalInputFaceprintSegment;
  v6 = [(MADMultiModalInputFaceprintSegment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceprint, a3);
  }

  return v7;
}

- (MADMultiModalInputFaceprintSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADMultiModalInputFaceprintSegment;
  v5 = [(MADMultiModalInputSegment *)&v11 initWithCoder:v4];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getVNFaceprintClass_softClass;
    v16 = getVNFaceprintClass_softClass;
    if (!getVNFaceprintClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getVNFaceprintClass_block_invoke;
      v12[3] = &unk_1E8342DE0;
      v12[4] = &v13;
      __getVNFaceprintClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Faceprint"];
    faceprint = v5->_faceprint;
    v5->_faceprint = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADMultiModalInputFaceprintSegment;
  v4 = a3;
  [(MADMultiModalInputSegment *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_faceprint forKey:{@"Faceprint", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"faceprint: %@", self->_faceprint];
  [v3 appendFormat:@">"];

  return v3;
}

@end