@interface MADVideoRemoveBackgroundResult
- (MADVideoRemoveBackgroundResult)initWithCoder:(id)a3;
- (MADVideoRemoveBackgroundResult)initWithUniformTypeIdentifier:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 data:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoRemoveBackgroundResult

- (MADVideoRemoveBackgroundResult)initWithUniformTypeIdentifier:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 data:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = MADVideoRemoveBackgroundResult;
  v13 = [(MADVideoRemoveBackgroundResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uniformTypeIdentifier, a3);
    v14->_width = a4;
    v14->_height = a5;
    objc_storeStrong(&v14->_data, a6);
  }

  return v14;
}

- (MADVideoRemoveBackgroundResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADVideoRemoveBackgroundResult;
  v5 = [(MADVideoResult *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v6;

    v5->_width = [v4 decodeIntegerForKey:@"Width"];
    v5->_height = [v4 decodeIntegerForKey:@"Height"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
    data = v5->_data;
    v5->_data = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVideoRemoveBackgroundResult;
  v4 = a3;
  [(MADVideoResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_uniformTypeIdentifier forKey:{@"UniformTypeIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_width forKey:@"Width"];
  [v4 encodeInteger:self->_height forKey:@"Height"];
  [v4 encodeObject:self->_data forKey:@"Data"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"uniformTypeIdentifier: %@, ", self->_uniformTypeIdentifier];
  [v3 appendFormat:@"width: %u, ", self->_width];
  [v3 appendFormat:@"height: %u, ", self->_height];
  [v3 appendFormat:@"data: %@>", self->_data];

  return v3;
}

@end