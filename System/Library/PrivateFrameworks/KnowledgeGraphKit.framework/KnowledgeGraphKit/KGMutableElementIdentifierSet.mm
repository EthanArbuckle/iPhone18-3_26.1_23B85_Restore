@interface KGMutableElementIdentifierSet
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addIdentifier:(unint64_t)identifier;
- (void)formSymmetricDifferenceWithIdentifierSet:(id)set;
- (void)intersectWithIdentifierSet:(id)set;
- (void)mutableBitmap;
- (void)removeAllIdentifiers;
- (void)removeIdentifier:(unint64_t)identifier;
- (void)subtractIdentifierSet:(id)set;
- (void)unionWithIdentifierSet:(id)set;
@end

@implementation KGMutableElementIdentifierSet

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KGElementIdentifierSet allocWithZone:zone];
  bitmap = [(KGElementIdentifierSet *)self bitmap];

  return [(KGElementIdentifierSet *)v4 initWithBitmap:bitmap];
}

- (id)copy
{
  v3 = [KGElementIdentifierSet alloc];
  bitmap = [(KGElementIdentifierSet *)self bitmap];

  return [(KGElementIdentifierSet *)v3 initWithBitmap:bitmap];
}

- (void)formSymmetricDifferenceWithIdentifierSet:(id)set
{
  setCopy = set;
  degas::Bitmap::symmetricDiffWith<degas::Bitmap>(-[KGMutableElementIdentifierSet mutableBitmap](self, "mutableBitmap"), [setCopy bitmap]);
}

- (void)subtractIdentifierSet:(id)set
{
  setCopy = set;
  degas::Bitmap::diffWith<degas::Bitmap>(-[KGMutableElementIdentifierSet mutableBitmap](self, "mutableBitmap"), [setCopy bitmap]);
}

- (void)intersectWithIdentifierSet:(id)set
{
  setCopy = set;
  degas::Bitmap::intersectWith<degas::Bitmap>(-[KGMutableElementIdentifierSet mutableBitmap](self, "mutableBitmap"), [setCopy bitmap]);
}

- (void)unionWithIdentifierSet:(id)set
{
  setCopy = set;
  degas::Bitmap::unionWith<degas::Bitmap>(-[KGMutableElementIdentifierSet mutableBitmap](self, "mutableBitmap"), [setCopy bitmap]);
}

- (void)removeAllIdentifiers
{
  mutableBitmap = [(KGMutableElementIdentifierSet *)self mutableBitmap];
  *mutableBitmap = 0;
  mutableBitmap[1] = 0;
  v3 = mutableBitmap[2];
  for (i = mutableBitmap[3]; i != v3; i -= 16)
  {
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 8) = 0;
  }

  mutableBitmap[3] = v3;
}

- (void)removeIdentifier:(unint64_t)identifier
{
  mutableBitmap = [(KGMutableElementIdentifierSet *)self mutableBitmap];

  degas::Bitmap::clearBit(mutableBitmap, identifier);
}

- (void)addIdentifier:(unint64_t)identifier
{
  mutableBitmap = [(KGMutableElementIdentifierSet *)self mutableBitmap];

  degas::Bitmap::setBit(mutableBitmap, identifier);
}

- (void)mutableBitmap
{
  v3.receiver = self;
  v3.super_class = KGMutableElementIdentifierSet;
  return [(KGElementIdentifierSet *)&v3 mutableBitmap];
}

@end