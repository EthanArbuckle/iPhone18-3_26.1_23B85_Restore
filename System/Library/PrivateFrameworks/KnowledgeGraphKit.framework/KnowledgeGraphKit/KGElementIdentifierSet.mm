@interface KGElementIdentifierSet
+ (void)drainBitsetPool;
- (BOOL)containsIdentifierSet:(id)set;
- (BOOL)intersectsIdentifierSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToElementIdentifierSet:(id)set;
- (BOOL)isSubsetOfIdentifierSet:(id)set;
- (KGElementIdentifierSet)init;
- (KGElementIdentifierSet)initWithBitmap:(const void *)bitmap;
- (KGElementIdentifierSet)initWithElementIdentifier:(unint64_t)identifier;
- (KGElementIdentifierSet)initWithIndexArray:(id)array;
- (KGElementIdentifierSet)initWithIndexCollection:(id)collection;
- (KGElementIdentifierSet)initWithIndexSet:(id)set;
- (KGElementIdentifierSet)initWithLiteralData:(id)data;
- (KGElementIdentifierSetIndex)endIndex;
- (KGElementIdentifierSetIndex)indexAfterIndex:(KGElementIdentifierSetIndex)index;
- (KGElementIdentifierSetIndex)indexWithIterator:(const void *)iterator;
- (KGElementIdentifierSetIndex)startIndex;
- (NSArray)indexArray;
- (NSIndexSet)indexSet;
- (id).cxx_construct;
- (id)description;
- (id)extractRangeByIndex:(_NSRange)index;
- (id)identifierSetByAddingIdentifier:(unint64_t)identifier;
- (id)identifierSetByFilteringUsingBlock:(id)block;
- (id)identifierSetByFormingSymmetricDifferenceWithIdentifierSet:(id)set;
- (id)identifierSetByFormingUnion:(id)union;
- (id)identifierSetByIntersectingIdentifierSet:(id)set;
- (id)identifierSetByRemovingIdentifier:(unint64_t)identifier;
- (id)identifierSetBySubtractingIdentifierSet:(id)set;
- (id)literalDataRepresentation;
- (id)mutableCopy;
- (id)prefix:(unint64_t)prefix;
- (unint64_t)firstElement;
- (unint64_t)lastElement;
- (unint64_t)randomElement;
- (void)enumerateIdentifiersWithBlock:(id)block;
@end

@implementation KGElementIdentifierSet

- (id).cxx_construct
{
  *(self + 33) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)literalDataRepresentation
{
  degas::LiteralBitmap::makeLiteralBitmap(&self->_bitmap, a2);
  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v3 length:(144 * *(v3 + 4)) | 8];
  MEMORY[0x259C43EB0](v3, 0x1000C4000313F17);

  return v4;
}

- (id)mutableCopy
{
  v3 = [KGMutableElementIdentifierSet alloc];

  return [(KGElementIdentifierSet *)v3 initWithBitmap:&self->_bitmap];
}

+ (void)drainBitsetPool
{
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  v3 = degas::getBitsetPool(void)::sPool;

  degas::BitsetPool::purgeEmptyPages(v3);
}

- (id)description
{
  indexArray = [(KGElementIdentifierSet *)self indexArray];
  v3 = [indexArray description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(KGElementIdentifierSet *)self isEqualToElementIdentifierSet:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToElementIdentifierSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (setCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = degas::Bitmap::operator==([(KGElementIdentifierSet *)setCopy bitmap], &self->_bitmap);
  }

  return v6;
}

- (void)enumerateIdentifiersWithBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  p_bitmap = &self->_bitmap;
  degas::Bitmap::begin(&self->_bitmap._bitCount, v9);
  end = self->_bitmap._bitSets.__end_;
  while (1)
  {
    v7 = v9[0] == p_bitmap && v9[1] == -1;
    if (v7 && v9[2] == end)
    {
      break;
    }

    blockCopy[2](blockCopy);
    if (v10)
    {
      break;
    }

    degas::Bitmap::iterator::operator++(v9);
  }
}

- (id)identifierSetByFilteringUsingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4693;
  v16 = __Block_byref_object_dispose__4694;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__KGElementIdentifierSet_identifierSetByFilteringUsingBlock___block_invoke;
  v9[3] = &unk_2797FF868;
  v10 = blockCopy;
  v11 = &v12;
  v9[4] = self;
  v5 = blockCopy;
  [(KGElementIdentifierSet *)self enumerateIdentifiersWithBlock:v9];
  selfCopy = v13[5];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  v7 = selfCopy;

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __61__KGElementIdentifierSet_identifierSetByFilteringUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if ((result & 1) == 0)
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (!v5)
    {
      v6 = [*(a1 + 32) mutableCopy];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 48) + 8) + 40);
    }

    return [v5 removeIdentifier:a2];
  }

  return result;
}

- (id)identifierSetByFormingSymmetricDifferenceWithIdentifierSet:(id)set
{
  setCopy = set;
  v5 = [[KGElementIdentifierSet alloc] initWithBitmap:&self->_bitmap];
  degas::Bitmap::symmetricDiffWith<degas::Bitmap>(&v5->_bitmap, setCopy + 8);

  return v5;
}

- (id)identifierSetBySubtractingIdentifierSet:(id)set
{
  setCopy = set;
  v5 = [[KGElementIdentifierSet alloc] initWithBitmap:&self->_bitmap];
  degas::Bitmap::diffWith<degas::Bitmap>(&v5->_bitmap, (setCopy + 8));

  return v5;
}

- (id)identifierSetByIntersectingIdentifierSet:(id)set
{
  setCopy = set;
  v5 = [[KGElementIdentifierSet alloc] initWithBitmap:&self->_bitmap];
  degas::Bitmap::intersectWith<degas::Bitmap>(&v5->_bitmap, (setCopy + 8));

  return v5;
}

- (id)identifierSetByFormingUnion:(id)union
{
  unionCopy = union;
  v5 = [[KGElementIdentifierSet alloc] initWithBitmap:&self->_bitmap];
  degas::Bitmap::unionWith<degas::Bitmap>(&v5->_bitmap, unionCopy + 8);

  return v5;
}

- (id)identifierSetByRemovingIdentifier:(unint64_t)identifier
{
  v4 = [[KGElementIdentifierSet alloc] initWithBitmap:&self->_bitmap];
  degas::Bitmap::clearBit(&v4->_bitmap, identifier);

  return v4;
}

- (id)identifierSetByAddingIdentifier:(unint64_t)identifier
{
  v4 = [[KGElementIdentifierSet alloc] initWithBitmap:&self->_bitmap];
  degas::Bitmap::setBit(&v4->_bitmap, identifier);

  return v4;
}

- (id)prefix:(unint64_t)prefix
{
  *v7 = 0u;
  degas::Bitmap::getBatch([(KGElementIdentifierSet *)self bitmap:0], &v5, prefix);
  v3 = [[KGElementIdentifierSet alloc] initWithBitmap:&v5];
  v8 = &v6;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v8);

  return v3;
}

- (id)extractRangeByIndex:(_NSRange)index
{
  length = index.length;
  location = index.location;
  v14 = 0u;
  memset(v15, 0, 25);
  p_bitmap = &self->_bitmap;
  degas::Bitmap::begin(&self->_bitmap._bitCount, &v11);
  degas::Bitmap::iterator::seek(&v11, location);
  while (length)
  {
    v7 = v12;
    if (v11 == p_bitmap && v12 == -1)
    {
      if (v13 == self->_bitmap._bitSets.__end_)
      {
        break;
      }

      v7 = -1;
    }

    degas::Bitmap::setBit(&v14, v7);
    --length;
    degas::Bitmap::iterator::operator++(&v11);
  }

  v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v14];
  v11 = v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v9;
}

- (KGElementIdentifierSetIndex)indexAfterIndex:(KGElementIdentifierSetIndex)index
{
  v6[0] = &self->_bitmap;
  v6[1] = index.var0;
  v6[2] = self->_bitmap._bitSets.__begin_ + 16 * index.var1;
  degas::Bitmap::iterator::operator++(v6);
  v4 = [(KGElementIdentifierSet *)self indexWithIterator:v6];
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (KGElementIdentifierSetIndex)endIndex
{
  end = self->_bitmap._bitSets.__end_;
  v5[0] = &self->_bitmap;
  v5[1] = -1;
  v5[2] = end;
  v3 = [(KGElementIdentifierSet *)self indexWithIterator:v5];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (KGElementIdentifierSetIndex)startIndex
{
  degas::Bitmap::begin(&self->_bitmap._bitCount, v5);
  v3 = [(KGElementIdentifierSet *)self indexWithIterator:v5];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (KGElementIdentifierSetIndex)indexWithIterator:(const void *)iterator
{
  v3 = *(iterator + 1);
  v4 = (*(iterator + 2) - *(*iterator + 16)) >> 4;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (unint64_t)randomElement
{
  v3 = degas::Bitmap::count(&self->_bitmap);
  if ([(KGElementIdentifierSet *)self isEmpty])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = arc4random_uniform(v3);

  return [(KGElementIdentifierSet *)self elementAtOffset:v5];
}

- (unint64_t)lastElement
{
  if (self->_bitmap._bitSets.__begin_ == self->_bitmap._bitSets.__end_)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return degas::Bitmap::lastBit(&self->_bitmap);
  }
}

- (unint64_t)firstElement
{
  result = degas::Bitmap::firstBit(&self->_bitmap);
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (NSArray)indexArray
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  degas::Bitmap::begin(&self->_bitmap._bitCount, v7);
  while (1)
  {
    v4 = v7[0] == &self->_bitmap && v7[1] == -1;
    if (v4 && v7[2] == self->_bitmap._bitSets.__end_)
    {
      break;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v3 addObject:v5];

    degas::Bitmap::iterator::operator++(v7);
  }

  return v3;
}

- (NSIndexSet)indexSet
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  degas::Bitmap::begin(&self->_bitmap._bitCount, v6);
  while (1)
  {
    v4 = v6[0] == &self->_bitmap && v6[1] == -1;
    if (v4 && v6[2] == self->_bitmap._bitSets.__end_)
    {
      break;
    }

    [v3 addIndex:?];
    degas::Bitmap::iterator::operator++(v6);
  }

  return v3;
}

- (BOOL)containsIdentifierSet:(id)set
{
  setCopy = set;
  bitmap = [setCopy bitmap];
  LOBYTE(self) = degas::Bitmap::isSubsetOf<degas::Bitmap>(*(bitmap + 16), *(bitmap + 24), self->_bitmap._bitSets.__begin_, self->_bitmap._bitSets.__end_);

  return self;
}

- (BOOL)isSubsetOfIdentifierSet:(id)set
{
  setCopy = set;
  bitmap = [setCopy bitmap];
  LOBYTE(self) = degas::Bitmap::isSubsetOf<degas::Bitmap>(self->_bitmap._bitSets.__begin_, self->_bitmap._bitSets.__end_, *(bitmap + 16), *(bitmap + 24));

  return self;
}

- (BOOL)intersectsIdentifierSet:(id)set
{
  setCopy = set;
  bitmap = [setCopy bitmap];
  v6 = *(bitmap + 16);
  v7 = *(bitmap + 24) - v6;
  if ((v7 >> 4))
  {
    v8 = *&self->_bitmap._bitSets.__begin_;
    end = self->_bitmap._bitSets.__end_;
    begin = self->_bitmap._bitSets.__begin_;
    if (begin != end)
    {
      v11 = 0;
      v12 = (v7 >> 4);
      while (1)
      {
        v13 = *(v6 + 16 * v11);
        v14 = *begin;
        v15 = *(*begin + 8);
        v16 = *(v13 + 8);
        if (v15 >= v16)
        {
          if (v15 <= v16)
          {
            if ((*(v13 + 16) & *(v14 + 16)) != 0)
            {
LABEL_19:
              v23 = 1;
              goto LABEL_18;
            }

            v17 = 0;
            v18 = v13 + 20;
            v19 = v14 + 20;
            while (v17 != 31)
            {
              v20 = v17 + 1;
              v21 = *(v19 + 4 * v17);
              v22 = *(v18 + 4 * v17++);
              if ((v22 & v21) != 0)
              {
                if ((v20 - 1) < 0x1F)
                {
                  goto LABEL_19;
                }

                break;
              }
            }

            begin = (begin + 16);
          }

          ++v11;
        }

        else
        {
          begin = (begin + 16);
        }

        v23 = 0;
        if (begin == end || v11 >= v12)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (KGElementIdentifierSet)initWithLiteralData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    degas::Bitmap::Bitmap(v7, [dataCopy bytes]);
    v5 = [(KGElementIdentifierSet *)self initWithBitmap:v7];
    v9 = &v8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  else
  {
    v5 = [(KGElementIdentifierSet *)self init];
  }

  return v5;
}

- (KGElementIdentifierSet)initWithBitmap:(const void *)bitmap
{
  v7.receiver = self;
  v7.super_class = KGElementIdentifierSet;
  v4 = [(KGElementIdentifierSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    degas::Bitmap::operator=(&v4->_bitmap._bitCount, bitmap);
  }

  return v5;
}

- (KGElementIdentifierSet)initWithIndexCollection:(id)collection
{
  v18 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = KGElementIdentifierSet;
  v5 = [(KGElementIdentifierSet *)&v16 init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = collectionCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          degas::Bitmap::setBit(&v5->_bitmap, [*(*(&v12 + 1) + 8 * v9++) unsignedLongLongValue]);
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (KGElementIdentifierSet)initWithIndexArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v16.receiver = self;
  v16.super_class = KGElementIdentifierSet;
  v5 = [(KGElementIdentifierSet *)&v16 init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          degas::Bitmap::setBit(&v5->_bitmap, [*(*(&v12 + 1) + 8 * v9++) unsignedLongLongValue]);
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (KGElementIdentifierSet)initWithIndexSet:(id)set
{
  setCopy = set;
  v10.receiver = self;
  v10.super_class = KGElementIdentifierSet;
  v5 = [(KGElementIdentifierSet *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__KGElementIdentifierSet_initWithIndexSet___block_invoke;
    v8[3] = &unk_2797FF388;
    v9 = v5;
    [setCopy enumerateIndexesUsingBlock:v8];
  }

  return v6;
}

- (KGElementIdentifierSet)initWithElementIdentifier:(unint64_t)identifier
{
  v7.receiver = self;
  v7.super_class = KGElementIdentifierSet;
  v4 = [(KGElementIdentifierSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    degas::Bitmap::setBit(&v4->_bitmap, identifier);
  }

  return v5;
}

- (KGElementIdentifierSet)init
{
  v3.receiver = self;
  v3.super_class = KGElementIdentifierSet;
  return [(KGElementIdentifierSet *)&v3 init];
}

@end