@interface ODDNodePoint
- (id)parent;
- (void)addChild:(id)child order:(unint64_t)order;
- (void)setParentTransition:(id)transition;
- (void)setSiblingTransition:(id)transition;
- (void)setType:(int)type;
@end

@implementation ODDNodePoint

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (void)setType:(int)type
{
  v3 = *&type;
  if (type >= 3)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Bad point type"];
  }

  v5.receiver = self;
  v5.super_class = ODDNodePoint;
  [(ODDPoint *)&v5 setType:v3];
}

- (void)addChild:(id)child order:(unint64_t)order
{
  childCopy = child;
  WeakRetained = objc_loadWeakRetained(childCopy + 6);

  if (WeakRetained)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Point already has a parent"];
  }

  objc_storeWeak(childCopy + 6, self);
  v8 = self->mChildren;
  v11 = v8;
  [objc_opt_class() addConnectionToPoint:childCopy order:order array:&v11];
  v9 = v11;

  mChildren = self->mChildren;
  self->mChildren = v9;
}

- (void)setParentTransition:(id)transition
{
  transitionCopy = transition;
  if (self->mParentTransition)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Point already has a parent transition"];
  }

  if ([(ODDPoint *)transitionCopy type]!= 3)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Not a parent transition"];
  }

  mParentTransition = self->mParentTransition;
  self->mParentTransition = transitionCopy;
}

- (void)setSiblingTransition:(id)transition
{
  transitionCopy = transition;
  if (self->mSiblingTransition)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Point already has a sibling transition"];
  }

  if ([(ODDPoint *)transitionCopy type]!= 5)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Not a sibling transition"];
  }

  mSiblingTransition = self->mSiblingTransition;
  self->mSiblingTransition = transitionCopy;
}

@end