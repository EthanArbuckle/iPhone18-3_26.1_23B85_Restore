@interface OADBlipCollection
- (OADBlipCollection)init;
- (id)blipAtIndex:(int)a3;
- (unsigned)addBlip:(id)a3;
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

- (id)blipAtIndex:(int)a3
{
  v3 = (a3 - 1);
  if (a3 >= 1 && [(NSMutableArray *)self->mBlips count]>= a3)
  {
    v5 = [(NSMutableArray *)self->mBlips objectAtIndex:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)addBlip:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->mBlips addObject:v4];
  LODWORD(self) = [(NSMutableArray *)self->mBlips count];

  return self;
}

@end