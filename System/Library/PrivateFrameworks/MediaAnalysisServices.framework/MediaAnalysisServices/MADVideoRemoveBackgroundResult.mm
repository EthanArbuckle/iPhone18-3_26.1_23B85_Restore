@interface MADVideoRemoveBackgroundResult
- (MADVideoRemoveBackgroundResult)initWithCoder:(id)coder;
- (MADVideoRemoveBackgroundResult)initWithUniformTypeIdentifier:(id)identifier width:(unint64_t)width height:(unint64_t)height data:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoRemoveBackgroundResult

- (MADVideoRemoveBackgroundResult)initWithUniformTypeIdentifier:(id)identifier width:(unint64_t)width height:(unint64_t)height data:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = MADVideoRemoveBackgroundResult;
  v13 = [(MADVideoRemoveBackgroundResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uniformTypeIdentifier, identifier);
    v14->_width = width;
    v14->_height = height;
    objc_storeStrong(&v14->_data, data);
  }

  return v14;
}

- (MADVideoRemoveBackgroundResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADVideoRemoveBackgroundResult;
  v5 = [(MADVideoResult *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v6;

    v5->_width = [coderCopy decodeIntegerForKey:@"Width"];
    v5->_height = [coderCopy decodeIntegerForKey:@"Height"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
    data = v5->_data;
    v5->_data = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVideoRemoveBackgroundResult;
  coderCopy = coder;
  [(MADVideoResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_uniformTypeIdentifier forKey:{@"UniformTypeIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_width forKey:@"Width"];
  [coderCopy encodeInteger:self->_height forKey:@"Height"];
  [coderCopy encodeObject:self->_data forKey:@"Data"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"uniformTypeIdentifier: %@, ", self->_uniformTypeIdentifier];
  [string appendFormat:@"width: %u, ", self->_width];
  [string appendFormat:@"height: %u, ", self->_height];
  [string appendFormat:@"data: %@>", self->_data];

  return string;
}

@end