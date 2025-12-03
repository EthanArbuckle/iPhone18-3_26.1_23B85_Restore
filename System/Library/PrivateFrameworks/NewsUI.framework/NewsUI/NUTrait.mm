@interface NUTrait
- (NUTrait)initWithDefaultValue:(double)value;
- (double)valueForTraitCollection:(id)collection size:(CGSize)size;
- (double)valueForTraitCollection:(id)collection size:(CGSize)size deviceTrait:(id)trait;
- (id)copyWithZone:(_NSZone *)zone;
- (id)when:(unint64_t)when block:(id)block;
@end

@implementation NUTrait

- (NUTrait)initWithDefaultValue:(double)value
{
  v8.receiver = self;
  v8.super_class = NUTrait;
  v4 = [(NUTrait *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    traitBlocks = v4->_traitBlocks;
    v4->_traitBlocks = v5;

    v4->_defaultValue = value;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [NUTrait alloc];
  [(NUTrait *)self defaultValue];
  v6 = [(NUTrait *)v5 initWithDefaultValue:?];
  traitBlocks = [(NUTrait *)self traitBlocks];
  v8 = [traitBlocks copyWithZone:zone];
  traitBlocks = v6->_traitBlocks;
  v6->_traitBlocks = v8;

  [(NUTrait *)self defaultValue];
  v6->_defaultValue = v10;
  return v6;
}

- (id)when:(unint64_t)when block:(id)block
{
  whenCopy = when;
  blockCopy = block;
  if (whenCopy)
  {
    traitBlocks = [(NUTrait *)self traitBlocks];
    v11 = MEMORY[0x25F883F30](blockCopy);
    [traitBlocks setObject:v11 forKey:&unk_286E12F38];

    if ((whenCopy & 2) == 0)
    {
LABEL_3:
      if ((whenCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((whenCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  traitBlocks2 = [(NUTrait *)self traitBlocks];
  v13 = MEMORY[0x25F883F30](blockCopy);
  [traitBlocks2 setObject:v13 forKey:&unk_286E12F50];

  if ((whenCopy & 4) == 0)
  {
LABEL_4:
    if ((whenCopy & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    traitBlocks3 = [(NUTrait *)self traitBlocks];
    v17 = MEMORY[0x25F883F30](blockCopy);
    [traitBlocks3 setObject:v17 forKey:&unk_286E12F80];

    if ((whenCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  traitBlocks4 = [(NUTrait *)self traitBlocks];
  v15 = MEMORY[0x25F883F30](blockCopy);
  [traitBlocks4 setObject:v15 forKey:&unk_286E12F68];

  if ((whenCopy & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((whenCopy & 0x10) != 0)
  {
LABEL_6:
    traitBlocks5 = [(NUTrait *)self traitBlocks];
    v8 = MEMORY[0x25F883F30](blockCopy);
    [traitBlocks5 setObject:v8 forKey:&unk_286E12F98];
  }

LABEL_7:

  return self;
}

- (double)valueForTraitCollection:(id)collection size:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v8 = NUDeviceTraitLookup();
  [(NUTrait *)self valueForTraitCollection:collectionCopy size:v8 deviceTrait:width, height];
  v10 = v9;

  return v10;
}

- (double)valueForTraitCollection:(id)collection size:(CGSize)size deviceTrait:(id)trait
{
  height = size.height;
  width = size.width;
  traitCopy = trait;
  v10 = NUTraitOptionFromUITraitCollection(collection);
  traitBlocks = [(NUTrait *)self traitBlocks];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v13 = [traitBlocks objectForKey:v12];

  if (v13)
  {
    (v13)[2](v13, traitCopy, width, height);
  }

  else
  {
    [(NUTrait *)self defaultValue];
  }

  v15 = v14;

  return v15;
}

@end