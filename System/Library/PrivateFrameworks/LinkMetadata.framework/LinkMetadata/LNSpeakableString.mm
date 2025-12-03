@interface LNSpeakableString
- (BOOL)isEqual:(id)equal;
- (LNSpeakableString)initWithCoder:(id)coder;
- (LNSpeakableString)initWithSpoken:(id)spoken printed:(id)printed;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSpeakableString

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  spoken = [(LNSpeakableString *)self spoken];
  [coderCopy encodeObject:spoken forKey:@"spoken"];

  printed = [(LNSpeakableString *)self printed];
  [coderCopy encodeObject:printed forKey:@"printed"];
}

- (LNSpeakableString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spoken"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"printed"];
    if (v6)
    {
      self = [(LNSpeakableString *)self initWithSpoken:v5 printed:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  spoken = [(LNSpeakableString *)self spoken];
  printed = [(LNSpeakableString *)self printed];
  v8 = [v3 stringWithFormat:@"<%@: %p, spoken: %@, printed: %@>", v5, self, spoken, printed];

  return v8;
}

- (unint64_t)hash
{
  spoken = [(LNSpeakableString *)self spoken];
  v4 = [spoken hash];
  printed = [(LNSpeakableString *)self printed];
  v6 = [printed hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      spoken = [(LNSpeakableString *)self spoken];
      spoken2 = [(LNSpeakableString *)v6 spoken];
      if ([spoken isEqual:spoken2])
      {
        printed = [(LNSpeakableString *)self printed];
        printed2 = [(LNSpeakableString *)v6 printed];
        v11 = [printed isEqual:printed2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (LNSpeakableString)initWithSpoken:(id)spoken printed:(id)printed
{
  spokenCopy = spoken;
  printedCopy = printed;
  v9 = printedCopy;
  if (spokenCopy)
  {
    if (printedCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSpeakableString.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"spoken"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNSpeakableString.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"printed"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNSpeakableString;
  v10 = [(LNSpeakableString *)&v19 init];
  if (v10)
  {
    v11 = [spokenCopy copy];
    spoken = v10->_spoken;
    v10->_spoken = v11;

    v13 = [v9 copy];
    printed = v10->_printed;
    v10->_printed = v13;

    v15 = v10;
  }

  return v10;
}

@end