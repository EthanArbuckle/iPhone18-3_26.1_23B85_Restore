@interface NUTrait
- (NUTrait)initWithDefaultValue:(double)a3;
- (double)valueForTraitCollection:(id)a3 size:(CGSize)a4;
- (double)valueForTraitCollection:(id)a3 size:(CGSize)a4 deviceTrait:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)when:(unint64_t)a3 block:(id)a4;
@end

@implementation NUTrait

- (NUTrait)initWithDefaultValue:(double)a3
{
  v8.receiver = self;
  v8.super_class = NUTrait;
  v4 = [(NUTrait *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    traitBlocks = v4->_traitBlocks;
    v4->_traitBlocks = v5;

    v4->_defaultValue = a3;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [NUTrait alloc];
  [(NUTrait *)self defaultValue];
  v6 = [(NUTrait *)v5 initWithDefaultValue:?];
  v7 = [(NUTrait *)self traitBlocks];
  v8 = [v7 copyWithZone:a3];
  traitBlocks = v6->_traitBlocks;
  v6->_traitBlocks = v8;

  [(NUTrait *)self defaultValue];
  v6->_defaultValue = v10;
  return v6;
}

- (id)when:(unint64_t)a3 block:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v10 = [(NUTrait *)self traitBlocks];
    v11 = MEMORY[0x25F883F30](v6);
    [v10 setObject:v11 forKey:&unk_286E12F38];

    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = [(NUTrait *)self traitBlocks];
  v13 = MEMORY[0x25F883F30](v6);
  [v12 setObject:v13 forKey:&unk_286E12F50];

  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v16 = [(NUTrait *)self traitBlocks];
    v17 = MEMORY[0x25F883F30](v6);
    [v16 setObject:v17 forKey:&unk_286E12F80];

    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  v14 = [(NUTrait *)self traitBlocks];
  v15 = MEMORY[0x25F883F30](v6);
  [v14 setObject:v15 forKey:&unk_286E12F68];

  if ((v4 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0x10) != 0)
  {
LABEL_6:
    v7 = [(NUTrait *)self traitBlocks];
    v8 = MEMORY[0x25F883F30](v6);
    [v7 setObject:v8 forKey:&unk_286E12F98];
  }

LABEL_7:

  return self;
}

- (double)valueForTraitCollection:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = NUDeviceTraitLookup();
  [(NUTrait *)self valueForTraitCollection:v7 size:v8 deviceTrait:width, height];
  v10 = v9;

  return v10;
}

- (double)valueForTraitCollection:(id)a3 size:(CGSize)a4 deviceTrait:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = NUTraitOptionFromUITraitCollection(a3);
  v11 = [(NUTrait *)self traitBlocks];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    (v13)[2](v13, v9, width, height);
  }

  else
  {
    [(NUTrait *)self defaultValue];
  }

  v15 = v14;

  return v15;
}

@end