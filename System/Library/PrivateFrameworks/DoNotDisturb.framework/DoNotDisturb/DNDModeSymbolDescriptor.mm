@interface DNDModeSymbolDescriptor
- (BOOL)isEqual:(id)equal;
- (DNDModeSymbolDescriptor)initWithCoder:(id)coder;
- (DNDModeSymbolDescriptor)initWithTintStyle:(unint64_t)style tintColorNames:(id)names imageName:(id)name;
- (NSString)primaryTintColorName;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeSymbolDescriptor

- (DNDModeSymbolDescriptor)initWithTintStyle:(unint64_t)style tintColorNames:(id)names imageName:(id)name
{
  namesCopy = names;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = DNDModeSymbolDescriptor;
  v11 = [(DNDModeSymbolDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_tintStyle = style;
    objc_storeStrong(&v11->_tintColorNames, names);
    objc_storeStrong(&v12->_imageName, name);
  }

  return v12;
}

- (NSString)primaryTintColorName
{
  firstObject = [(NSArray *)self->_tintColorNames count];
  if (firstObject)
  {
    firstObject = [(NSArray *)self->_tintColorNames firstObject];
  }

  return firstObject;
}

- (unint64_t)hash
{
  tintStyle = [(DNDModeSymbolDescriptor *)self tintStyle];
  tintColorNames = [(DNDModeSymbolDescriptor *)self tintColorNames];
  v5 = [tintColorNames hash] ^ tintStyle;
  imageName = [(DNDModeSymbolDescriptor *)self imageName];
  v7 = [imageName hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      tintStyle = [(DNDModeSymbolDescriptor *)self tintStyle];
      if (tintStyle != [(DNDModeSymbolDescriptor *)v6 tintStyle])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      tintColorNames = [(DNDModeSymbolDescriptor *)self tintColorNames];
      tintColorNames2 = [(DNDModeSymbolDescriptor *)v6 tintColorNames];
      if (tintColorNames != tintColorNames2)
      {
        tintColorNames3 = [(DNDModeSymbolDescriptor *)self tintColorNames];
        if (!tintColorNames3)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = tintColorNames3;
        tintColorNames4 = [(DNDModeSymbolDescriptor *)v6 tintColorNames];
        if (!tintColorNames4)
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        tintColorNames5 = [(DNDModeSymbolDescriptor *)self tintColorNames];
        tintColorNames6 = [(DNDModeSymbolDescriptor *)v6 tintColorNames];
        if (![tintColorNames5 isEqual:tintColorNames6])
        {
          v14 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v25 = tintColorNames6;
        v26 = tintColorNames5;
        v27 = tintColorNames4;
      }

      imageName = [(DNDModeSymbolDescriptor *)self imageName];
      imageName2 = [(DNDModeSymbolDescriptor *)v6 imageName];
      v17 = imageName2;
      if (imageName == imageName2)
      {

        v14 = 1;
      }

      else
      {
        imageName3 = [(DNDModeSymbolDescriptor *)self imageName];
        if (imageName3)
        {
          v19 = imageName3;
          imageName4 = [(DNDModeSymbolDescriptor *)v6 imageName];
          if (imageName4)
          {
            imageName5 = [(DNDModeSymbolDescriptor *)self imageName];
            [(DNDModeSymbolDescriptor *)v6 imageName];
            v21 = v24 = v3;
            v14 = [imageName5 isEqual:v21];

            v3 = v24;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {

          v14 = 0;
        }
      }

      tintColorNames5 = v26;
      tintColorNames4 = v27;
      tintColorNames6 = v25;
      if (tintColorNames == tintColorNames2)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v14 = 0;
  }

LABEL_28:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  tintStyle = [(DNDModeSymbolDescriptor *)self tintStyle];
  tintColorNames = [(DNDModeSymbolDescriptor *)self tintColorNames];
  imageName = [(DNDModeSymbolDescriptor *)self imageName];
  v8 = [v3 stringWithFormat:@"<%@: %p tintStyle: %lu; tintColorNames: %@; imageName: %@>", v4, self, tintStyle, tintColorNames, imageName];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableModeSymbolDescriptor alloc];
  tintStyle = [(DNDModeSymbolDescriptor *)self tintStyle];
  tintColorNames = [(DNDModeSymbolDescriptor *)self tintColorNames];
  imageName = [(DNDModeSymbolDescriptor *)self imageName];
  v8 = [(DNDMutableModeSymbolDescriptor *)v4 initWithTintStyle:tintStyle tintColorNames:tintColorNames imageName:imageName];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDModeSymbolDescriptor tintStyle](self forKey:{"tintStyle"), @"style"}];
  tintColorNames = [(DNDModeSymbolDescriptor *)self tintColorNames];
  [coderCopy encodeObject:tintColorNames forKey:@"colors"];

  imageName = [(DNDModeSymbolDescriptor *)self imageName];
  [coderCopy encodeObject:imageName forKey:@"imageName"];
}

- (DNDModeSymbolDescriptor)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"style"];
  v6 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"colors"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];

  v11 = [(DNDModeSymbolDescriptor *)self initWithTintStyle:v5 tintColorNames:v9 imageName:v10];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end