@interface CLKUITimeViewConfiguration
- (CLKUITimeViewConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKUITimeViewConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CLKUITimeViewConfiguration);
  v5 = v4;
  if (v4)
  {
    [(CLKUITimeViewConfiguration *)v4 setBackgroundStyle:self->_backgroundStyle];
  }

  return v5;
}

- (CLKUITimeViewConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CLKUITimeViewConfiguration;
  v5 = [(CLKUITimeViewConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundStyle"];
    v5->_backgroundStyle = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  backgroundStyle = self->_backgroundStyle;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:backgroundStyle];
  [coderCopy encodeObject:v6 forKey:@"backgroundStyle"];
}

@end