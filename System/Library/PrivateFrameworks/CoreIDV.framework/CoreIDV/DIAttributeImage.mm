@interface DIAttributeImage
- (DIAttributeImage)init;
- (DIAttributeImage)initWithCoder:(id)coder;
- (NSData)getCurrentValue;
- (NSString)encoding;
- (id)defaultValue;
- (id)description;
- (unint64_t)format;
- (unint64_t)height;
- (unint64_t)width;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentValue:(id)value;
- (void)setEncoding:(id)encoding;
- (void)setFormat:(unint64_t)format;
- (void)setHeight:(unint64_t)height;
- (void)setWidth:(unint64_t)width;
@end

@implementation DIAttributeImage

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIAttributeImage;
  coderCopy = coder;
  [(DIAttribute *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock(&self->super._lock);
  [coderCopy encodeObject:self->_encoding forKey:{@"encoding", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  [coderCopy encodeInteger:self->_height forKey:@"height"];
  [coderCopy encodeInteger:self->_width forKey:@"width"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DIAttributeImage;
  v5 = [(DIAttribute *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encoding"];
    encoding = v5->_encoding;
    v5->_encoding = v6;

    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    v5->_height = [coderCopy decodeIntegerForKey:@"height"];
    v5->_width = [coderCopy decodeIntegerForKey:@"width"];
  }

  return v5;
}

- (DIAttributeImage)init
{
  v6.receiver = self;
  v6.super_class = DIAttributeImage;
  v2 = [(DIAttribute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:3];
    encoding = v3->_encoding;
    v3->_encoding = @"unknown";

    v3->_format = 0;
    v3->_height = 0;
    v3->_width = 0;
  }

  return v3;
}

- (void)setCurrentValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeImage;
  [(DIAttribute *)&v3 setCurrentValue:value];
}

- (void)setEncoding:(id)encoding
{
  encodingCopy = encoding;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_encoding != encodingCopy)
  {
    v4 = [(NSString *)encodingCopy copyWithZone:0];
    encoding = self->_encoding;
    self->_encoding = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setFormat:(unint64_t)format
{
  os_unfair_lock_lock(&self->super._lock);
  self->_format = format;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setHeight:(unint64_t)height
{
  os_unfair_lock_lock(&self->super._lock);
  self->_height = height;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setWidth:(unint64_t)width
{
  os_unfair_lock_lock(&self->super._lock);
  self->_width = width;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSData)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeImage;
  getCurrentValue = [(DIAttribute *)&v4 getCurrentValue];

  return getCurrentValue;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeImage;
  defaultValue = [(DIAttribute *)&v4 defaultValue];

  return defaultValue;
}

- (NSString)encoding
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_encoding;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)format
{
  os_unfair_lock_lock(&self->super._lock);
  format = self->_format;
  os_unfair_lock_unlock(&self->super._lock);
  return format;
}

- (unint64_t)height
{
  os_unfair_lock_lock(&self->super._lock);
  height = self->_height;
  os_unfair_lock_unlock(&self->super._lock);
  return height;
}

- (unint64_t)width
{
  os_unfair_lock_lock(&self->super._lock);
  width = self->_width;
  os_unfair_lock_unlock(&self->super._lock);
  return width;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_282E746B8];
  v7.receiver = self;
  v7.super_class = DIAttributeImage;
  v4 = [(DIAttribute *)&v7 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->super._lock);
  [v3 appendFormat:@"encoding: '%@'; ", self->_encoding];
  os_unfair_lock_unlock(&self->super._lock);
  getCurrentValue = [(DIAttributeImage *)self getCurrentValue];
  [v3 appendFormat:@"currentValue: '%@'; ", getCurrentValue];

  [v3 appendFormat:@">"];

  return v3;
}

@end