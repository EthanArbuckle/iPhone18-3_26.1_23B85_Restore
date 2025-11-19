@interface MADMLEnhancementRequest
- (MADMLEnhancementRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMLEnhancementRequest

- (MADMLEnhancementRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADMLEnhancementRequest;
  v5 = [(MADRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_modelPreparationOnly = [v4 decodeBoolForKey:@"ModelPreparationOnly"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADMLEnhancementRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_uuid forKey:{@"UUID", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_modelPreparationOnly forKey:@"ModelPreparationOnly"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  v6 = [(MADMLEnhancementRequest *)self uuid];
  [v3 appendFormat:@"%@: %@", @"UUID", v6];

  v7 = [(MADMLEnhancementRequest *)self modelPreparationOnly];
  v8 = @"No";
  if (v7)
  {
    v8 = @"Yes";
  }

  [v3 appendFormat:@"%@: %@", @"ModelPreparationOnly", v8];
  v9 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v9];

  return v3;
}

@end