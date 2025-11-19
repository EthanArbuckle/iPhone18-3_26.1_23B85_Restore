@interface DIAttributeImage
- (DIAttributeImage)init;
- (DIAttributeImage)initWithCoder:(id)a3;
- (NSData)getCurrentValue;
- (NSString)encoding;
- (id)defaultValue;
- (id)description;
- (unint64_t)format;
- (unint64_t)height;
- (unint64_t)width;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setEncoding:(id)a3;
- (void)setFormat:(unint64_t)a3;
- (void)setHeight:(unint64_t)a3;
- (void)setWidth:(unint64_t)a3;
@end

@implementation DIAttributeImage

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIAttributeImage;
  v4 = a3;
  [(DIAttribute *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock(&self->super._lock);
  [v4 encodeObject:self->_encoding forKey:{@"encoding", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_format forKey:@"format"];
  [v4 encodeInteger:self->_height forKey:@"height"];
  [v4 encodeInteger:self->_width forKey:@"width"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DIAttributeImage;
  v5 = [(DIAttribute *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encoding"];
    encoding = v5->_encoding;
    v5->_encoding = v6;

    v5->_format = [v4 decodeIntegerForKey:@"format"];
    v5->_height = [v4 decodeIntegerForKey:@"height"];
    v5->_width = [v4 decodeIntegerForKey:@"width"];
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

- (void)setCurrentValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeImage;
  [(DIAttribute *)&v3 setCurrentValue:a3];
}

- (void)setEncoding:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_encoding != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    encoding = self->_encoding;
    self->_encoding = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setFormat:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  self->_format = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setHeight:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  self->_height = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setWidth:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  self->_width = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSData)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeImage;
  v2 = [(DIAttribute *)&v4 getCurrentValue];

  return v2;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeImage;
  v2 = [(DIAttribute *)&v4 defaultValue];

  return v2;
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
  v5 = [(DIAttributeImage *)self getCurrentValue];
  [v3 appendFormat:@"currentValue: '%@'; ", v5];

  [v3 appendFormat:@">"];

  return v3;
}

@end