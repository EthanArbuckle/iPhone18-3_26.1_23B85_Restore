@interface LNAppShortcutNegativePhrase
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutNegativePhrase)initWithCoder:(id)coder;
- (LNAppShortcutNegativePhrase)initWithPhrase:(id)phrase;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutNegativePhrase

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      phrase = [(LNAppShortcutNegativePhrase *)self phrase];
      phrase2 = [(LNAppShortcutNegativePhrase *)v6 phrase];
      v9 = phrase;
      v10 = phrase2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  phrase = [(LNAppShortcutNegativePhrase *)self phrase];
  v3 = [phrase hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  phrase = [(LNAppShortcutNegativePhrase *)self phrase];
  v7 = [v3 stringWithFormat:@"<%@: %p, phrase: %@>", v5, self, phrase];

  return v7;
}

- (LNAppShortcutNegativePhrase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];

  if (v5)
  {
    self = [(LNAppShortcutNegativePhrase *)self initWithPhrase:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phrase = [(LNAppShortcutNegativePhrase *)self phrase];
  [coderCopy encodeObject:phrase forKey:@"phrase"];
}

- (LNAppShortcutNegativePhrase)initWithPhrase:(id)phrase
{
  phraseCopy = phrase;
  if (!phraseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutNegativePhrase.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];
  }

  v12.receiver = self;
  v12.super_class = LNAppShortcutNegativePhrase;
  v6 = [(LNAppShortcutNegativePhrase *)&v12 init];
  if (v6)
  {
    v7 = [phraseCopy copy];
    phrase = v6->_phrase;
    v6->_phrase = v7;

    v9 = v6;
  }

  return v6;
}

@end