@interface OADBlipCollection
- (OADBlipCollection)init;
- (id)blipAtIndex:(int)index;
- (unsigned)addBlip:(id)blip;
@end

@implementation OADBlipCollection

- (OADBlipCollection)init
{
  v6.receiver = self;
  v6.super_class = OADBlipCollection;
  v2 = [(OADBlipCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBlips = v2->mBlips;
    v2->mBlips = v3;
  }

  return v2;
}

- (id)blipAtIndex:(int)index
{
  v3 = (index - 1);
  if (index >= 1 && [(NSMutableArray *)self->mBlips count]>= index)
  {
    v5 = [(NSMutableArray *)self->mBlips objectAtIndex:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)addBlip:(id)blip
{
  blipCopy = blip;
  [(NSMutableArray *)self->mBlips addObject:blipCopy];
  LODWORD(self) = [(NSMutableArray *)self->mBlips count];

  return self;
}

@end