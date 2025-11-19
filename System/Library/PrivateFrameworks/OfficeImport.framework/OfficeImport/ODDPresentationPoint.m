@interface ODDPresentationPoint
- (id)parent;
- (void)addChild:(id)a3 order:(unint64_t)a4;
- (void)setType:(int)a3;
@end

@implementation ODDPresentationPoint

- (void)setType:(int)a3
{
  v3 = *&a3;
  if (a3 != 4)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Bad point type"];
  }

  v5.receiver = self;
  v5.super_class = ODDPresentationPoint;
  [(ODDPoint *)&v5 setType:v3];
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (void)addChild:(id)a3 order:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(v6 + 5);

  if (WeakRetained)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Point already has a parent"];
  }

  objc_storeWeak(v6 + 5, self);
  v8 = self->mChildren;
  v11 = v8;
  [objc_opt_class() addConnectionToPoint:v6 order:a4 array:&v11];
  v9 = v11;

  mChildren = self->mChildren;
  self->mChildren = v9;
}

@end