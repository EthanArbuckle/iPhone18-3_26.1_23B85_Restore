@interface RTTripClusterScheduleEnumerationContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContext:(id)a3;
- (RTTripClusterScheduleEnumerationContext)init;
- (RTTripClusterScheduleEnumerationContext)initWithCoder:(id)a3;
- (RTTripClusterScheduleEnumerationContext)initWithEnumerationOptions:(id)a3 offset:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterScheduleEnumerationContext

- (RTTripClusterScheduleEnumerationContext)init
{
  v3 = objc_opt_new();
  v4 = [(RTTripClusterScheduleEnumerationContext *)self initWithEnumerationOptions:v3 offset:0];

  return v4;
}

- (RTTripClusterScheduleEnumerationContext)initWithEnumerationOptions:(id)a3 offset:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RTTripClusterScheduleEnumerationContext;
  v7 = [(RTTripClusterScheduleEnumerationContext *)&v11 init];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 copy];
    }

    else
    {
      v8 = objc_opt_new();
    }

    options = v7->_options;
    v7->_options = v8;

    v7->_offset = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTTripClusterScheduleEnumerationContext *)self options];
  v6 = [v4 initWithEnumerationOptions:v5 offset:{-[RTTripClusterScheduleEnumerationContext offset](self, "offset")}];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  options = self->_options;
  v5 = a3;
  [v5 encodeObject:options forKey:@"options"];
  [v5 encodeInteger:self->_offset forKey:@"offset"];
}

- (RTTripClusterScheduleEnumerationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v6 = [v4 decodeIntegerForKey:@"offset"];

  v7 = [(RTTripClusterScheduleEnumerationContext *)self initWithEnumerationOptions:v5 offset:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterScheduleEnumerationContext *)self isEqualToContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToContext:(id)a3
{
  v5 = a3;
  v6 = v5;
  options = self->_options;
  v8 = options;
  if (options)
  {
LABEL_4:
    v9 = [v6 options];
    v10 = [(RTTripClusterScheduleEnumerationOptions *)v8 isEqual:v9];

    if (options)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v5 options];
  if (v3)
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