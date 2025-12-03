@interface MXChoiceAlignment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)postItnChoiceIndicesAtIndex:(unint64_t)index;
- (void)addPreItnTokenToPostItnCharAlignments:(id)alignments;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXChoiceAlignment

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = MXChoiceAlignment;
  [(MXChoiceAlignment *)&v3 dealloc];
}

- (int)postItnChoiceIndicesAtIndex:(unint64_t)index
{
  p_postItnChoiceIndices = &self->_postItnChoiceIndices;
  count = self->_postItnChoiceIndices.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_postItnChoiceIndices->list[index];
}

- (void)addPreItnTokenToPostItnCharAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  preItnTokenToPostItnCharAlignments = self->_preItnTokenToPostItnCharAlignments;
  v8 = alignmentsCopy;
  if (!preItnTokenToPostItnCharAlignments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preItnTokenToPostItnCharAlignments;
    self->_preItnTokenToPostItnCharAlignments = v6;

    alignmentsCopy = v8;
    preItnTokenToPostItnCharAlignments = self->_preItnTokenToPostItnCharAlignments;
  }

  [(NSMutableArray *)preItnTokenToPostItnCharAlignments addObject:alignmentsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXChoiceAlignment;
  v4 = [(MXChoiceAlignment *)&v8 description];
  dictionaryRepresentation = [(MXChoiceAlignment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedInt32NSArray();
  [dictionary setObject:v4 forKey:@"post_itn_choice_indices"];

  if ([(NSMutableArray *)self->_preItnTokenToPostItnCharAlignments count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_preItnTokenToPostItnCharAlignments, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_preItnTokenToPostItnCharAlignments;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"pre_itn_token_to_post_itn_char_alignments"];
  }

  v12 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_postItnChoiceIndices.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_postItnChoiceIndices.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_postItnChoiceIndices.count);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_preItnTokenToPostItnCharAlignments;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MXChoiceAlignment *)self postItnChoiceIndicesCount])
  {
    [toCopy clearPostItnChoiceIndices];
    postItnChoiceIndicesCount = [(MXChoiceAlignment *)self postItnChoiceIndicesCount];
    if (postItnChoiceIndicesCount)
    {
      v5 = postItnChoiceIndicesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addPostItnChoiceIndices:{-[MXChoiceAlignment postItnChoiceIndicesAtIndex:](self, "postItnChoiceIndicesAtIndex:", i)}];
      }
    }
  }

  if ([(MXChoiceAlignment *)self preItnTokenToPostItnCharAlignmentsCount])
  {
    [toCopy clearPreItnTokenToPostItnCharAlignments];
    preItnTokenToPostItnCharAlignmentsCount = [(MXChoiceAlignment *)self preItnTokenToPostItnCharAlignmentsCount];
    if (preItnTokenToPostItnCharAlignmentsCount)
    {
      v8 = preItnTokenToPostItnCharAlignmentsCount;
      for (j = 0; j != v8; ++j)
      {
        v10 = [(MXChoiceAlignment *)self preItnTokenToPostItnCharAlignmentsAtIndex:j];
        [toCopy addPreItnTokenToPostItnCharAlignments:v10];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_preItnTokenToPostItnCharAlignments;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addPreItnTokenToPostItnCharAlignments:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedInt32IsEqual())
  {
    preItnTokenToPostItnCharAlignments = self->_preItnTokenToPostItnCharAlignments;
    if (preItnTokenToPostItnCharAlignments | equalCopy[4])
    {
      v6 = [(NSMutableArray *)preItnTokenToPostItnCharAlignments isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  postItnChoiceIndicesCount = [fromCopy postItnChoiceIndicesCount];
  if (postItnChoiceIndicesCount)
  {
    v6 = postItnChoiceIndicesCount;
    for (i = 0; i != v6; ++i)
    {
      -[MXChoiceAlignment addPostItnChoiceIndices:](self, "addPostItnChoiceIndices:", [fromCopy postItnChoiceIndicesAtIndex:i]);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = fromCopy[4];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MXChoiceAlignment *)self addPreItnTokenToPostItnCharAlignments:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end