@interface DNDModeSymbolDescriptor
- (BOOL)isEqual:(id)a3;
- (DNDModeSymbolDescriptor)initWithCoder:(id)a3;
- (DNDModeSymbolDescriptor)initWithTintStyle:(unint64_t)a3 tintColorNames:(id)a4 imageName:(id)a5;
- (NSString)primaryTintColorName;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeSymbolDescriptor

- (DNDModeSymbolDescriptor)initWithTintStyle:(unint64_t)a3 tintColorNames:(id)a4 imageName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DNDModeSymbolDescriptor;
  v11 = [(DNDModeSymbolDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_tintStyle = a3;
    objc_storeStrong(&v11->_tintColorNames, a4);
    objc_storeStrong(&v12->_imageName, a5);
  }

  return v12;
}

- (NSString)primaryTintColorName
{
  v3 = [(NSArray *)self->_tintColorNames count];
  if (v3)
  {
    v3 = [(NSArray *)self->_tintColorNames firstObject];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(DNDModeSymbolDescriptor *)self tintStyle];
  v4 = [(DNDModeSymbolDescriptor *)self tintColorNames];
  v5 = [v4 hash] ^ v3;
  v6 = [(DNDModeSymbolDescriptor *)self imageName];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDModeSymbolDescriptor *)self tintStyle];
      if (v7 != [(DNDModeSymbolDescriptor *)v6 tintStyle])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v8 = [(DNDModeSymbolDescriptor *)self tintColorNames];
      v9 = [(DNDModeSymbolDescriptor *)v6 tintColorNames];
      if (v8 != v9)
      {
        v10 = [(DNDModeSymbolDescriptor *)self tintColorNames];
        if (!v10)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = v10;
        v11 = [(DNDModeSymbolDescriptor *)v6 tintColorNames];
        if (!v11)
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v12 = [(DNDModeSymbolDescriptor *)self tintColorNames];
        v13 = [(DNDModeSymbolDescriptor *)v6 tintColorNames];
        if (![v12 isEqual:v13])
        {
          v14 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v25 = v13;
        v26 = v12;
        v27 = v11;
      }

      v15 = [(DNDModeSymbolDescriptor *)self imageName];
      v16 = [(DNDModeSymbolDescriptor *)v6 imageName];
      v17 = v16;
      if (v15 == v16)
      {

        v14 = 1;
      }

      else
      {
        v18 = [(DNDModeSymbolDescriptor *)self imageName];
        if (v18)
        {
          v19 = v18;
          v20 = [(DNDModeSymbolDescriptor *)v6 imageName];
          if (v20)
          {
            v23 = [(DNDModeSymbolDescriptor *)self imageName];
            [(DNDModeSymbolDescriptor *)v6 imageName];
            v21 = v24 = v3;
            v14 = [v23 isEqual:v21];

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

      v12 = v26;
      v11 = v27;
      v13 = v25;
      if (v8 == v9)
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
  v5 = [(DNDModeSymbolDescriptor *)self tintStyle];
  v6 = [(DNDModeSymbolDescriptor *)self tintColorNames];
  v7 = [(DNDModeSymbolDescriptor *)self imageName];
  v8 = [v3 stringWithFormat:@"<%@: %p tintStyle: %lu; tintColorNames: %@; imageName: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableModeSymbolDescriptor alloc];
  v5 = [(DNDModeSymbolDescriptor *)self tintStyle];
  v6 = [(DNDModeSymbolDescriptor *)self tintColorNames];
  v7 = [(DNDModeSymbolDescriptor *)self imageName];
  v8 = [(DNDMutableModeSymbolDescriptor *)v4 initWithTintStyle:v5 tintColorNames:v6 imageName:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDModeSymbolDescriptor tintStyle](self forKey:{"tintStyle"), @"style"}];
  v5 = [(DNDModeSymbolDescriptor *)self tintColorNames];
  [v4 encodeObject:v5 forKey:@"colors"];

  v6 = [(DNDModeSymbolDescriptor *)self imageName];
  [v4 encodeObject:v6 forKey:@"imageName"];
}

- (DNDModeSymbolDescriptor)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"style"];
  v6 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"colors"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];

  v11 = [(DNDModeSymbolDescriptor *)self initWithTintStyle:v5 tintColorNames:v9 imageName:v10];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end