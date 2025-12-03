@interface BBButton
+ (id)buttonWithTitle:(id)title glyphData:(id)data action:(id)action identifier:(id)identifier;
+ (id)buttonWithTitle:(id)title image:(id)image action:(id)action identifier:(id)identifier;
- (BBButton)initWithCoder:(id)coder;
- (BBButton)initWithTitle:(id)title image:(id)image action:(id)action identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSData)glyphData;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)description;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBButton

+ (id)buttonWithTitle:(id)title glyphData:(id)data action:(id)action identifier:(id)identifier
{
  identifierCopy = identifier;
  actionCopy = action;
  titleCopy = title;
  v13 = [BBImage imageWithData:data];
  v14 = [self buttonWithTitle:titleCopy image:v13 action:actionCopy identifier:identifierCopy];

  return v14;
}

+ (id)buttonWithTitle:(id)title image:(id)image action:(id)action identifier:(id)identifier
{
  titleCopy = title;
  imageCopy = image;
  actionCopy = action;
  identifierCopy = identifier;
  if (!(titleCopy | imageCopy))
  {
    [BBButton buttonWithTitle:a2 image:self action:? identifier:?];
  }

  v15 = [[self alloc] initWithTitle:titleCopy image:imageCopy action:actionCopy identifier:identifierCopy];

  return v15;
}

- (BBButton)initWithTitle:(id)title image:(id)image action:(id)action identifier:(id)identifier
{
  titleCopy = title;
  imageCopy = image;
  actionCopy = action;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = BBButton;
  v14 = [(BBButton *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(BBButton *)v14 setTitle:titleCopy];
    [(BBButton *)v15 setImage:imageCopy];
    [(BBButton *)v15 setAction:actionCopy];
    [(BBButton *)v15 setIdentifier:identifierCopy];
  }

  return v15;
}

- (NSData)glyphData
{
  image = [(BBButton *)self image];
  data = [image data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      title = [(BBButton *)self title];
      title2 = [(BBButton *)v5 title];
      if (BSEqualStrings())
      {
        image = [(BBButton *)self image];
        image2 = [(BBButton *)v5 image];
        if (BSEqualObjects())
        {
          action = [(BBButton *)self action];
          action2 = [(BBButton *)v5 action];
          if (BSEqualObjects())
          {
            identifier = [(BBButton *)self identifier];
            identifier2 = [(BBButton *)v5 identifier];
            v13 = BSEqualObjects();
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  title = [(BBButton *)self title];
  v4 = [title hash];
  image = [(BBButton *)self image];
  v6 = [image hash] ^ v4;
  action = [(BBButton *)self action];
  v8 = [action hash];
  identifier = [(BBButton *)self identifier];
  v10 = v8 ^ [identifier hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(BBButton *)self title];
  action = [(BBButton *)self action];
  v7 = [v3 stringWithFormat:@"<%@: %p title: %@; action: %@>", v4, self, title, action];;

  return v7;
}

- (BBButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v9 = [(BBButton *)self initWithTitle:v5 image:v6 action:v7 identifier:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(BBButton *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  image = [(BBButton *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  action = [(BBButton *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  identifier = [(BBButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (id)replacementObjectForCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

+ (void)buttonWithTitle:(uint64_t)a1 image:(uint64_t)a2 action:identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBButton.m" lineNumber:45 description:{@"%@-buttonWithTitle:action: requires a title or image (or both)", a2}];
}

@end