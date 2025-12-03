@interface UARPAssetTagBackDeploy
- (BOOL)isEqual:(id)equal;
- (UARPAssetTagBackDeploy)init;
- (UARPAssetTagBackDeploy)initWithChar1:(char)char1 char2:(char)char2 char3:(char)char3 char4:(char)char4;
- (UARPAssetTagBackDeploy)initWithCoder:(id)coder;
- (UARPAssetTagBackDeploy)initWithString:(id)string;
- (const)decodeCharForKey:(id)key key:(id)a4;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetTagBackDeploy

- (UARPAssetTagBackDeploy)init
{
  [(UARPAssetTagBackDeploy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAssetTagBackDeploy)initWithChar1:(char)char1 char2:(char)char2 char3:(char)char3 char4:(char)char4
{
  v14.receiver = self;
  v14.super_class = UARPAssetTagBackDeploy;
  v10 = [(UARPAssetTagBackDeploy *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_char1 = char1;
    v10->_char2 = char2;
    v10->_char3 = char3;
    v10->_char4 = char4;
    LOBYTE(v13) = char1;
    BYTE1(v13) = char2;
    BYTE2(v13) = char3;
    HIBYTE(v13) = char4;
    v10->_tag = uarpPayloadTagPack(&v13);
  }

  return v11;
}

- (UARPAssetTagBackDeploy)initWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] == 4)
  {
    uTF8String = [stringCopy UTF8String];
    self = [(UARPAssetTagBackDeploy *)self initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (const)decodeCharForKey:(id)key key:(id)a4
{
  v5 = 0;
  result = [key decodeBytesForKey:a4 returnedLength:&v5];
  if (!v5)
  {
    return 0;
  }

  return result;
}

- (UARPAssetTagBackDeploy)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [(UARPAssetTagBackDeploy *)self decodeCharForKey:coderCopy key:@"char1"];
  if (selfCopy)
  {
    v6 = [(UARPAssetTagBackDeploy *)self decodeCharForKey:coderCopy key:@"char2"];
    if (v6 && (v7 = v6, (v8 = [(UARPAssetTagBackDeploy *)self decodeCharForKey:coderCopy key:@"char3"]) != 0) && (v9 = v8, (v10 = [(UARPAssetTagBackDeploy *)self decodeCharForKey:coderCopy key:@"char4"]) != 0))
    {
      self = [(UARPAssetTagBackDeploy *)self initWithChar1:*selfCopy char2:*v7 char3:*v9 char4:*v10];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:&self->_char1 length:1 forKey:@"char1"];
  [coderCopy encodeBytes:&self->_char2 length:1 forKey:@"char2"];
  [coderCopy encodeBytes:&self->_char3 length:1 forKey:@"char3"];
  [coderCopy encodeBytes:&self->_char4 length:1 forKey:@"char4"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPAssetTagBackDeploy alloc];
  char1 = self->_char1;
  char2 = self->_char2;
  char3 = self->_char3;
  char4 = self->_char4;

  return [(UARPAssetTagBackDeploy *)v4 initWithChar1:char1 char2:char2 char3:char3 char4:char4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
      char1 = self->_char1;
      if (char1 == [(UARPAssetTagBackDeploy *)v5 char1]&& (char2 = self->_char2, char2 == [(UARPAssetTagBackDeploy *)v5 char2]) && (char3 = self->_char3, char3 == [(UARPAssetTagBackDeploy *)v5 char3]))
      {
        char4 = self->_char4;
        v10 = char4 == [(UARPAssetTagBackDeploy *)v5 char4];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end