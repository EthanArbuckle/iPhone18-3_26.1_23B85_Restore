@interface RTTripClusterScheduleEnumerationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContext:(id)context;
- (RTTripClusterScheduleEnumerationContext)init;
- (RTTripClusterScheduleEnumerationContext)initWithCoder:(id)coder;
- (RTTripClusterScheduleEnumerationContext)initWithEnumerationOptions:(id)options offset:(unint64_t)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterScheduleEnumerationContext

- (RTTripClusterScheduleEnumerationContext)init
{
  v3 = objc_opt_new();
  v4 = [(RTTripClusterScheduleEnumerationContext *)self initWithEnumerationOptions:v3 offset:0];

  return v4;
}

- (RTTripClusterScheduleEnumerationContext)initWithEnumerationOptions:(id)options offset:(unint64_t)offset
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = RTTripClusterScheduleEnumerationContext;
  v7 = [(RTTripClusterScheduleEnumerationContext *)&v11 init];
  if (v7)
  {
    if (optionsCopy)
    {
      v8 = [optionsCopy copy];
    }

    else
    {
      v8 = objc_opt_new();
    }

    options = v7->_options;
    v7->_options = v8;

    v7->_offset = offset;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  options = [(RTTripClusterScheduleEnumerationContext *)self options];
  v6 = [v4 initWithEnumerationOptions:options offset:{-[RTTripClusterScheduleEnumerationContext offset](self, "offset")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  options = self->_options;
  coderCopy = coder;
  [coderCopy encodeObject:options forKey:@"options"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
}

- (RTTripClusterScheduleEnumerationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v6 = [coderCopy decodeIntegerForKey:@"offset"];

  v7 = [(RTTripClusterScheduleEnumerationContext *)self initWithEnumerationOptions:v5 offset:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterScheduleEnumerationContext *)self isEqualToContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  options = self->_options;
  v8 = options;
  if (options)
  {
LABEL_4:
    options = [v6 options];
    v10 = [(RTTripClusterScheduleEnumerationOptions *)v8 isEqual:options];

    if (options)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  options2 = [contextCopy options];
  if (options2)
  {
    v8 = self->_options;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_7:

LABEL_8:
  offset = self->_offset;
  if (offset == [v6 offset])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(RTTripClusterScheduleEnumerationOptions *)self->_options hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_offset];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end