@interface ICCRIndex
+ (id)indexForReplica:(id)replica betweenIndex:(id)index andIndex:(id)andIndex;
+ (id)indexWithPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (ICCRIndex)init;
- (ICCRIndex)initWithICCRCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deltaSince:(id)since in:(id)in;
- (id)indexAtDepth:(unint64_t)depth withInteger:(int64_t)integer replica:(id)replica;
- (id)nextIndexForReplica:(id)replica;
- (id)previousIndexForReplica:(id)replica;
- (int64_t)compare:(id)compare;
- (unint64_t)depth;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)coder;
- (void)realizeLocalChangesIn:(id)in;
@end

@implementation ICCRIndex

+ (id)indexWithPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(ICCRIndex);
  [(ICCRIndex *)v4 setIndexPath:pathCopy];

  return v4;
}

- (ICCRIndex)init
{
  v6.receiver = self;
  v6.super_class = ICCRIndex;
  v2 = [(ICCRIndex *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    indexPath = v2->_indexPath;
    v2->_indexPath = v3;
  }

  return v2;
}

- (ICCRIndex)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICCRIndex *)self init];
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 9)
  {
    v7 = *(currentDocumentObjectForDecoding + 40);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v7 + 48)];
    if (*(v7 + 48))
    {
      v9 = *(v7 + 40);
      do
      {
        v10 = *v9;
        if (*(*v9 + 32))
        {
          v11 = [coderCopy decodeUUIDFromUUIDIndex:*(v10 + 40)];
        }

        else
        {
          v11 = 0;
        }

        if ((*(v10 + 32) & 2) != 0)
        {
          v12 = *(v10 + 48);
        }

        else
        {
          v12 = 0;
        }

        v13 = [ICCRIndexElement elementWithInteger:v12 replica:v11];
        [v8 addObject:v13];

        ++v9;
      }

      while (v9 != (*(v7 + 40) + 8 * *(v7 + 48)));
    }

    v14 = [v8 copy];
    indexPath = v5->_indexPath;
    v5->_indexPath = v14;
  }

  return v5;
}

- (void)encodeWithICCRCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v6 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 9)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v6 + 48) = 9;
    operator new();
  }

  v7 = *(currentDocumentObjectForEncoding + 40);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  indexPath = [(ICCRIndex *)self indexPath];
  v9 = [indexPath countByEnumeratingWithState:&v21 objects:v25 count:16];
  v10 = v9;
  if (v9)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(indexPath);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = *(v7 + 52);
        v15 = *(v7 + 48);
        if (v15 >= v14)
        {
          if (v14 == *(v7 + 56))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v7 + 40, v14 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::Index_Element>::New();
        }

        v16 = *(v7 + 40);
        *(v7 + 48) = v15 + 1;
        v17 = *(v16 + 8 * v15);
        replica = [v13 replica];
        v19 = [coderCopy encodeUUIDIndexFromUUID:replica];
        *(v17 + 32) |= 1u;
        *(v17 + 40) = v19;

        integer = [v13 integer];
        *(v17 + 32) |= 2u;
        *(v17 + 48) = integer;
        ++v12;
      }

      while (v10 != v12);
      v10 = [indexPath countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (unint64_t)depth
{
  indexPath = [(ICCRIndex *)self indexPath];
  v3 = [indexPath count];

  return v3;
}

- (id)nextIndexForReplica:(id)replica
{
  replicaCopy = replica;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  indexPath = [(ICCRIndex *)self indexPath];
  v7 = [v5 initWithArray:indexPath copyItems:1];

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v8 = __buf;
  lastObject = [v7 lastObject];
  v10 = v8 % 0x7FFFFFFFFFFFFLL + 1;
  v11 = [lastObject integer] + v10;

  if (v11 < 0x2000000000000000)
  {
    lastObject2 = [v7 lastObject];
    [lastObject2 setInteger:{objc_msgSend(lastObject2, "integer") + v10}];
  }

  else
  {
    lastObject2 = [ICCRIndexElement elementWithInteger:v10 replica:replicaCopy];
    [v7 addObject:lastObject2];
  }

  v13 = [ICCRIndex indexWithPath:v7];

  return v13;
}

- (id)previousIndexForReplica:(id)replica
{
  replicaCopy = replica;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  indexPath = [(ICCRIndex *)self indexPath];
  v7 = [v5 initWithArray:indexPath copyItems:1];

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v8 = __buf;
  lastObject = [v7 lastObject];
  v10 = v8 % 0x7FFFFFFFFFFFFLL;
  v11 = [lastObject integer] - v10;

  if (v11 > 0xDFFFFFFFFFFFFFFFLL)
  {
    lastObject2 = [v7 lastObject];
    [lastObject2 setInteger:{objc_msgSend(lastObject2, "integer") - v10}];
  }

  else
  {
    lastObject2 = [ICCRIndexElement elementWithInteger:-v10 replica:replicaCopy];
    [v7 addObject:lastObject2];
  }

  v13 = [ICCRIndex indexWithPath:v7];

  return v13;
}

- (id)indexAtDepth:(unint64_t)depth withInteger:(int64_t)integer replica:(id)replica
{
  replicaCopy = replica;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  indexPath = [(ICCRIndex *)self indexPath];
  depth = [(ICCRIndex *)self depth];
  if (depth >= depth)
  {
    depthCopy = depth;
  }

  else
  {
    depthCopy = depth;
  }

  v13 = [indexPath subarrayWithRange:{0, depthCopy}];
  v14 = [v9 initWithArray:v13 copyItems:1];

  while (1)
  {

    if ([v14 count] >= depth)
    {
      break;
    }

    indexPath = [ICCRIndexElement elementWithInteger:0 replica:replicaCopy];
    [v14 addObject:indexPath];
  }

  v15 = [ICCRIndexElement elementWithInteger:integer replica:replicaCopy];
  [v14 addObject:v15];

  v16 = [ICCRIndex indexWithPath:v14];

  return v16;
}

+ (id)indexForReplica:(id)replica betweenIndex:(id)index andIndex:(id)andIndex
{
  replicaCopy = replica;
  indexCopy = index;
  andIndexCopy = andIndex;
  v10 = andIndexCopy;
  v48 = andIndexCopy;
  if (!indexCopy || !andIndexCopy)
  {
    if (indexCopy)
    {
      v40 = [indexCopy nextIndexForReplica:replicaCopy];
    }

    else
    {
      if (!andIndexCopy)
      {
        v42 = MEMORY[0x277CBEA60];
        v43 = [ICCRIndexElement elementWithInteger:0 replica:replicaCopy];
        v44 = [v42 arrayWithObject:v43];
        v39 = [ICCRIndex indexWithPath:v44];

        goto LABEL_49;
      }

      v40 = [andIndexCopy previousIndexForReplica:replicaCopy];
    }

    v39 = v40;
    goto LABEL_49;
  }

  if ([indexCopy compare:andIndexCopy] != -1)
  {
    __assert_rtn("+[ICCRIndex indexForReplica:betweenIndex:andIndex:]", "ICCRIndex.mm", 204, "[before compare:after] == NSOrderedAscending");
  }

  v45 = replicaCopy;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = v12 + 1;
    if (v12 + 1 >= [indexCopy depth])
    {
      integer = 0;
    }

    else
    {
      indexPath = [indexCopy indexPath];
      v15 = [indexPath objectAtIndexedSubscript:v12 + 1];
      integer = [v15 integer];
    }

    if (v13 >= [v10 depth])
    {
      integer2 = 0;
    }

    else
    {
      indexPath2 = [v10 indexPath];
      v18 = [indexPath2 objectAtIndexedSubscript:v12 + 1];
      integer2 = [v18 integer];
    }

    v20 = 0x2000000000000000;
    if ((v11 & 1) == 0)
    {
      v20 = 0;
    }

    v21 = 0x1FFFFFFFFFFFFFFFLL;
    if ((v11 & 1) == 0)
    {
      v21 = -1;
    }

    v22 = v21 - integer + v20 + integer2;
    if (v22 == -1 && v13 < [indexCopy depth] && v13 < objc_msgSend(v10, "depth"))
    {
      indexPath3 = [indexCopy indexPath];
      v46 = [indexPath3 objectAtIndexedSubscript:v12 + 1];
      replica = [v46 replica];
      indexPath4 = [v10 indexPath];
      v25 = [indexPath4 objectAtIndexedSubscript:v12 + 1];
      replica2 = [v25 replica];
      v27 = [replica isEqual:replica2] ^ 1;
    }

    else
    {
      LOBYTE(v27) = 0;
    }

    if (v22)
    {
      v11 = v27;
    }

    else
    {
      v11 = 1;
    }

    ++v12;
    v10 = v48;
  }

  while (v22 < 1);
  __buf = 0;
  replicaCopy = v45;
  arc4random_buf(&__buf, 8uLL);
  if (v22 >= 0x7FFFFFFFFFFFFLL)
  {
    v28 = 0x7FFFFFFFFFFFFLL;
  }

  else
  {
    v28 = v22;
  }

  v29 = __buf;
  v30 = arc4random();
  v31 = v29 % v28 + 1;
  v32 = v31 + integer;
  if (v31 + integer <= 0x1FFFFFFFFFFFFFFFLL)
  {
    v33 = indexCopy;
  }

  else
  {
    v33 = v48;
  }

  if (v31 + integer > 0x1FFFFFFFFFFFFFFFLL)
  {
    v32 = v31 + integer - 0x3FFFFFFFFFFFFFFFLL;
  }

  v34 = integer2 - v31;
  if (v34 >= 0xE000000000000000)
  {
    v35 = v48;
  }

  else
  {
    v35 = indexCopy;
  }

  if (v34 < 0xE000000000000000)
  {
    v34 = ~v34;
  }

  v36 = (v30 & 1) == 0;
  if (v30)
  {
    v37 = v35;
  }

  else
  {
    v37 = v33;
  }

  if (v36)
  {
    v38 = v32;
  }

  else
  {
    v38 = v34;
  }

  v39 = [v37 indexAtDepth:v12 withInteger:v38 replica:v45];
  v10 = v48;
LABEL_49:

  return v39;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  depth = [(ICCRIndex *)self depth];
  depth2 = [compareCopy depth];
  if (depth >= depth2)
  {
    v7 = depth2;
  }

  else
  {
    v7 = depth;
  }

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      indexPath = [(ICCRIndex *)self indexPath];
      v10 = [indexPath objectAtIndexedSubscript:v8];
      indexPath2 = [compareCopy indexPath];
      v12 = [indexPath2 objectAtIndexedSubscript:v8];
      v13 = [v10 compare:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    depth3 = [(ICCRIndex *)self depth];
    if (depth3 >= [compareCopy depth])
    {
      depth4 = [compareCopy depth];
      if (depth4 >= [(ICCRIndex *)self depth])
      {
        v13 = 0;
        goto LABEL_16;
      }

      indexPath3 = [(ICCRIndex *)self indexPath];
      v16 = [indexPath3 objectAtIndexedSubscript:{objc_msgSend(compareCopy, "depth")}];
      v13 = ([v16 integer] >> 63) | 1;
    }

    else
    {
      indexPath3 = [compareCopy indexPath];
      v16 = [indexPath3 objectAtIndexedSubscript:{-[ICCRIndex depth](self, "depth")}];
      if ([v16 integer] >= 0)
      {
        v13 = -1;
      }

      else
      {
        v13 = 1;
      }
    }
  }

LABEL_16:

  return v13;
}

- (unint64_t)hash
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  indexPath = [(ICCRIndex *)self indexPath];
  v3 = 0;
  v4 = [indexPath countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(indexPath);
        }

        v3 ^= [*(*(&v8 + 1) + 8 * v6++) hash];
      }

      while (v4 != v6);
      v4 = [indexPath countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICCRIndex *)self compare:equalCopy]== 0;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  indexPath = [(ICCRIndex *)self indexPath];
  v6 = [indexPath copy];
  [v4 setIndexPath:v6];

  return v4;
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot calculate deltas for ICCRIndex." userInfo:0];
  objc_exception_throw(v7);
}

- (void)realizeLocalChangesIn:(id)in
{
  v19 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  indexPath = [(ICCRIndex *)self indexPath];
  v6 = [indexPath countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(indexPath);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        replica = [v9 replica];
        cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];
        v12 = [replica isEqual:cR_unserialized];

        if (v12)
        {
          replica2 = [inCopy replica];
          [v9 setReplica:replica2];
        }
      }

      v6 = [indexPath countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (NSString)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p ", v5, self];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  indexPath = [(ICCRIndex *)self indexPath];
  v8 = [indexPath countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(indexPath);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        replica = [v11 replica];
        cR_shortDescription = [replica CR_shortDescription];
        [v6 appendFormat:@"(%@:%lld) ", cR_shortDescription, objc_msgSend(v11, "integer")];
      }

      v8 = [indexPath countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v6 appendString:@">"];

  return v6;
}

@end