@interface LNISIconImage
- (LNISIconImage)initWithCoder:(id)coder;
- (LNISIconImage)initWithIconType:(int64_t)type identifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNISIconImage

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNISIconImage;
  coderCopy = coder;
  [(LNImage *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[LNISIconImage iconType](self forKey:{"iconType", v6.receiver, v6.super_class), @"iconType"}];
  identifier = [(LNISIconImage *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (LNISIconImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"iconType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v6)
  {
    self = [(LNISIconImage *)self initWithIconType:v5 identifier:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNISIconImage)initWithIconType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNISIconImage.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13.receiver = self;
  v13.super_class = LNISIconImage;
  v9 = [(LNImage *)&v13 initWithSystemImageNamed:&stru_1F02ED148];
  v10 = v9;
  if (v9)
  {
    v9->_iconType = type;
    objc_storeStrong(&v9->_identifier, identifier);
  }

  return v10;
}

@end