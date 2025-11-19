@interface ICCRIndex
+ (id)indexForReplica:(id)a3 betweenIndex:(id)a4 andIndex:(id)a5;
+ (id)indexWithPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICCRIndex)init;
- (ICCRIndex)initWithICCRCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)indexAtDepth:(unint64_t)a3 withInteger:(int64_t)a4 replica:(id)a5;
- (id)nextIndexForReplica:(id)a3;
- (id)previousIndexForReplica:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)depth;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)a3;
- (void)realizeLocalChangesIn:(id)a3;
@end

@implementation ICCRIndex

+ (id)indexWithPath:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICCRIndex);
  [(ICCRIndex *)v4 setIndexPath:v3];

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

- (ICCRIndex)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICCRIndex *)self init];
  v6 = [v4 currentDocumentObjectForDecoding];
  if (*(v6 + 48) == 9)
  {
    v7 = *(v6 + 40);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v7 + 48)];
    if (*(v7 + 48))
    {
      v9 = *(v7 + 40);
      do
      {
        v10 = *v9;
        if (*(*v9 + 32))
        {
          v11 = [v4 decodeUUIDFromUUIDIndex:*(v10 + 40)];
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

- (void)encodeWithICCRCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 currentDocumentObjectForEncoding];
  v6 = v5;
  if (*(v5 + 48) != 9)
  {
    CRDT::Document_DocObject::clear_contents(v5);
    *(v6 + 48) = 9;
    operator new();
  }

  v7 = *(v5 + 40);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(ICCRIndex *)self indexPath];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
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
        v18 = [v13 replica];
        v19 = [v4 encodeUUIDIndexFromUUID:v18];
        *(v17 + 32) |= 1u;
        *(v17 + 40) = v19;

        v20 = [v13 integer];
        *(v17 + 32) |= 2u;
        *(v17 + 48) = v20;
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (unint64_t)depth
{
  v2 = [(ICCRIndex *)self indexPath];
  v3 = [v2 count];

  return v3;
}

- (id)nextIndexForReplica:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(ICCRIndex *)self indexPath];
  v7 = [v5 initWithArray:v6 copyItems:1];

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v8 = __buf;
  v9 = [v7 lastObject];
  v10 = v8 % 0x7FFFFFFFFFFFFLL + 1;
  v11 = [v9 integer] + v10;

  if (v11 < 0x2000000000000000)
  {
    v12 = [v7 lastObject];
    [v12 setInteger:{objc_msgSend(v12, "integer") + v10}];
  }

  else
  {
    v12 = [ICCRIndexElement elementWithInteger:v10 replica:v4];
    [v7 addObject:v12];
  }

  v13 = [ICCRIndex indexWithPath:v7];

  return v13;
}

- (id)previousIndexForReplica:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(ICCRIndex *)self indexPath];
  v7 = [v5 initWithArray:v6 copyItems:1];

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v8 = __buf;
  v9 = [v7 lastObject];
  v10 = v8 % 0x7FFFFFFFFFFFFLL;
  v11 = [v9 integer] - v10;

  if (v11 > 0xDFFFFFFFFFFFFFFFLL)
  {
    v12 = [v7 lastObject];
    [v12 setInteger:{objc_msgSend(v12, "integer") - v10}];
  }

  else
  {
    v12 = [ICCRIndexElement elementWithInteger:-v10 replica:v4];
    [v7 addObject:v12];
  }

  v13 = [ICCRIndex indexWithPath:v7];

  return v13;
}

- (id)indexAtDepth:(unint64_t)a3 withInteger:(int64_t)a4 replica:(id)a5
{
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = [(ICCRIndex *)self indexPath];
  v11 = [(ICCRIndex *)self depth];
  if (v11 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 subarrayWithRange:{0, v12}];
  v14 = [v9 initWithArray:v13 copyItems:1];

  while (1)
  {

    if ([v14 count] >= a3)
    {
      break;
    }

    v10 = [ICCRIndexElement elementWithInteger:0 replica:v8];
    [v14 addObject:v10];
  }

  v15 = [ICCRIndexElement elementWithInteger:a4 replica:v8];
  [v14 addObject:v15];

  v16 = [ICCRIndex indexWithPath:v14];

  return v16;
}

+ (id)indexForReplica:(id)a3 betweenIndex:(id)a4 andIndex:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v48 = v9;
  if (!v8 || !v9)
  {
    if (v8)
    {
      v40 = [v8 nextIndexForReplica:v7];
    }

    else
    {
      if (!v9)
      {
        v42 = MEMORY[0x277CBEA60];
        v43 = [ICCRIndexElement elementWithInteger:0 replica:v7];
        v44 = [v42 arrayWithObject:v43];
        v39 = [ICCRIndex indexWithPath:v44];

        goto LABEL_49;
      }

      v40 = [v9 previousIndexForReplica:v7];
    }

    v39 = v40;
    goto LABEL_49;
  }

  if ([v8 compare:v9] != -1)
  {
    __assert_rtn("+[ICCRIndex indexForReplica:betweenIndex:andIndex:]", "ICCRIndex.mm", 204, "[before compare:after] == NSOrderedAscending");
  }

  v45 = v7;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = v12 + 1;
    if (v12 + 1 >= [v8 depth])
    {
      v16 = 0;
    }

    else
    {
      v14 = [v8 indexPath];
      v15 = [v14 objectAtIndexedSubscript:v12 + 1];
      v16 = [v15 integer];
    }

    if (v13 >= [v10 depth])
    {
      v19 = 0;
    }

    else
    {
      v17 = [v10 indexPath];
      v18 = [v17 objectAtIndexedSubscript:v12 + 1];
      v19 = [v18 integer];
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

    v22 = v21 - v16 + v20 + v19;
    if (v22 == -1 && v13 < [v8 depth] && v13 < objc_msgSend(v10, "depth"))
    {
      v47 = [v8 indexPath];
      v46 = [v47 objectAtIndexedSubscript:v12 + 1];
      v23 = [v46 replica];
      v24 = [v10 indexPath];
      v25 = [v24 objectAtIndexedSubscript:v12 + 1];
      v26 = [v25 replica];
      v27 = [v23 isEqual:v26] ^ 1;
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
  v7 = v45;
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
  v32 = v31 + v16;
  if (v31 + v16 <= 0x1FFFFFFFFFFFFFFFLL)
  {
    v33 = v8;
  }

  else
  {
    v33 = v48;
  }

  if (v31 + v16 > 0x1FFFFFFFFFFFFFFFLL)
  {
    v32 = v31 + v16 - 0x3FFFFFFFFFFFFFFFLL;
  }

  v34 = v19 - v31;
  if (v34 >= 0xE000000000000000)
  {
    v35 = v48;
  }

  else
  {
    v35 = v8;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICCRIndex *)self depth];
  v6 = [v4 depth];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [(ICCRIndex *)self indexPath];
      v10 = [v9 objectAtIndexedSubscript:v8];
      v11 = [v4 indexPath];
      v12 = [v11 objectAtIndexedSubscript:v8];
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
    v14 = [(ICCRIndex *)self depth];
    if (v14 >= [v4 depth])
    {
      v17 = [v4 depth];
      if (v17 >= [(ICCRIndex *)self depth])
      {
        v13 = 0;
        goto LABEL_16;
      }

      v15 = [(ICCRIndex *)self indexPath];
      v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v4, "depth")}];
      v13 = ([v16 integer] >> 63) | 1;
    }

    else
    {
      v15 = [v4 indexPath];
      v16 = [v15 objectAtIndexedSubscript:{-[ICCRIndex depth](self, "depth")}];
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
  v2 = [(ICCRIndex *)self indexPath];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v3 ^= [*(*(&v8 + 1) + 8 * v6++) hash];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICCRIndex *)self compare:v4]== 0;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(ICCRIndex *)self indexPath];
  v6 = [v5 copy];
  [v4 setIndexPath:v6];

  return v4;
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot calculate deltas for ICCRIndex." userInfo:0];
  objc_exception_throw(v7);
}

- (void)realizeLocalChangesIn:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICCRIndex *)self indexPath];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 replica];
        v11 = [MEMORY[0x277CCAD78] CR_unserialized];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v13 = [v4 replica];
          [v9 setReplica:v13];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = [(ICCRIndex *)self indexPath];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 replica];
        v13 = [v12 CR_shortDescription];
        [v6 appendFormat:@"(%@:%lld) ", v13, objc_msgSend(v11, "integer")];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v6 appendString:@">"];

  return v6;
}

@end