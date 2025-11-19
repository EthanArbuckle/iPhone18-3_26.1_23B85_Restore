@interface CLKUITimeViewConfiguration
- (CLKUITimeViewConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKUITimeViewConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CLKUITimeViewConfiguration);
  v5 = v4;
  if (v4)
  {
    [(CLKUITimeViewConfiguration *)v4 setBackgroundStyle:self->_backgroundStyle];
  }

  return v5;
}

- (CLKUITimeViewConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLKUITimeViewConfiguration;
  v5 = [(CLKUITimeViewConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundStyle"];
    v5->_backgroundStyle = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  backgroundStyle = self->_backgroundStyle;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:backgroundStyle];
  [v5 encodeObject:v6 forKey:@"backgroundStyle"];
}

@end