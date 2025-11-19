@interface LNAppShortcutNegativePhrase
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutNegativePhrase)initWithCoder:(id)a3;
- (LNAppShortcutNegativePhrase)initWithPhrase:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutNegativePhrase

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNAppShortcutNegativePhrase *)self phrase];
      v8 = [(LNAppShortcutNegativePhrase *)v6 phrase];
      v9 = v7;
      v10 = v8;
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
  v2 = [(LNAppShortcutNegativePhrase *)self phrase];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppShortcutNegativePhrase *)self phrase];
  v7 = [v3 stringWithFormat:@"<%@: %p, phrase: %@>", v5, self, v6];

  return v7;
}

- (LNAppShortcutNegativePhrase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];

  if (v5)
  {
    self = [(LNAppShortcutNegativePhrase *)self initWithPhrase:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutNegativePhrase *)self phrase];
  [v4 encodeObject:v5 forKey:@"phrase"];
}

- (LNAppShortcutNegativePhrase)initWithPhrase:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNAppShortcutNegativePhrase.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];
  }

  v12.receiver = self;
  v12.super_class = LNAppShortcutNegativePhrase;
  v6 = [(LNAppShortcutNegativePhrase *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    phrase = v6->_phrase;
    v6->_phrase = v7;

    v9 = v6;
  }

  return v6;
}

@end