@interface MADMLEnhancementRequest
- (MADMLEnhancementRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMLEnhancementRequest

- (MADMLEnhancementRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADMLEnhancementRequest;
  v5 = [(MADRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_modelPreparationOnly = [coderCopy decodeBoolForKey:@"ModelPreparationOnly"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADMLEnhancementRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_uuid forKey:{@"UUID", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_modelPreparationOnly forKey:@"ModelPreparationOnly"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  uuid = [(MADMLEnhancementRequest *)self uuid];
  [string appendFormat:@"%@: %@", @"UUID", uuid];

  modelPreparationOnly = [(MADMLEnhancementRequest *)self modelPreparationOnly];
  v8 = @"No";
  if (modelPreparationOnly)
  {
    v8 = @"Yes";
  }

  [string appendFormat:@"%@: %@", @"ModelPreparationOnly", v8];
  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end