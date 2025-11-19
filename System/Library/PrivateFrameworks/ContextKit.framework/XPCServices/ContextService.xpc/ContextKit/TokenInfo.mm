@interface TokenInfo
+ (void)initialize;
- (TokenInfo)initWithToken:(id)a3 withHashes:(id)a4 term:(id)a5 type:(unint64_t)a6 weight:(float)a7 docId:(int)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)isTermResultWithPrimary:(BOOL)a3 config:(id)a4;
- (void)addOffset:(id)a3;
- (void)addPrecedingToken:(id)a3;
- (void)cleanForCache;
- (void)incrementCount;
@end

@implementation TokenInfo

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[TokenInfo alloc] initWithToken:0 withHashes:0 term:0 type:1 weight:0xFFFFFFFFLL docId:0.0];
    v3 = qword_100557118;
    qword_100557118 = v2;

    qword_100557120 = [[TokenInfo alloc] initWithToken:0 withHashes:0 term:0 type:0 weight:0xFFFFFFFFLL docId:0.0];

    _objc_release_x1();
  }
}

- (TokenInfo)initWithToken:(id)a3 withHashes:(id)a4 term:(id)a5 type:(unint64_t)a6 weight:(float)a7 docId:(int)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = TokenInfo;
  v18 = [(TokenInfo *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_valid = v15 != 0;
    objc_storeStrong(&v18->_token, a3);
    objc_storeStrong(&v19->_hashes, a4);
    objc_storeStrong(&v19->_term, a5);
    v19->_type = a6;
    v19->_weight = a7;
    v19->_docId = a8;
    v20 = [NSMutableArray arrayWithCapacity:3];
    offsets = v19->_offsets;
    v19->_offsets = v20;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (qword_100557118 == self || qword_100557120 == self)
  {

    return self;
  }

  else
  {
    v6 = [TokenInfo allocWithZone:a3];
    term = self->_term;
    hashes = self->_hashes;
    token = self->_token;
    type = self->_type;
    *&v7 = self->_weight;
    docId = self->_docId;

    return [(TokenInfo *)v6 initWithToken:token withHashes:hashes term:term type:type weight:docId docId:v7];
  }
}

- (void)incrementCount
{
  if (qword_100557118 != self && qword_100557120 != self)
  {
    ++self->_count;
  }
}

- (int64_t)isTermResultWithPrimary:(BOOL)a3 config:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_type == 3)
  {
    v8 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCountRegularKeyword;
  }

  else
  {
    v8 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCount;
  }

  v9 = *(v6 + *v8);
  count = self->_count;
  v11 = [(TokenInfo *)self isQuoted];
  type = self->_type;
  v13 = -1;
  if (type > 5)
  {
    if (type == 6)
    {
      if (v9 > count)
      {
        v15 = &OBJC_IVAR___ContextConfiguration__luceneTermResultDefaultMinPrefixName;
        goto LABEL_32;
      }

      if (!v4)
      {
        goto LABEL_46;
      }

      v19 = self->_count;
      v20 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCountNoPrefixName;
    }

    else
    {
      if (type != 7 && type != 13)
      {
        goto LABEL_48;
      }

      if (v9 > count)
      {
        v15 = &OBJC_IVAR___ContextConfiguration__luceneTermResultDefaultMinPrefixIntermediate;
        goto LABEL_32;
      }

      if (!v4)
      {
        goto LABEL_46;
      }

      v19 = self->_count;
      v20 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCountNoPrefixIntermediate;
    }

LABEL_45:
    if (*(v7 + *v20) <= v19)
    {
      goto LABEL_47;
    }

LABEL_46:
    v13 = 1;
    goto LABEL_48;
  }

  if (type == 2)
  {
    if (v9 > count)
    {
      v15 = &OBJC_IVAR___ContextConfiguration__luceneTermResultDefaultMinPrefixTopic;
      goto LABEL_32;
    }

    if (!v4)
    {
      goto LABEL_46;
    }

    v19 = self->_count;
    v20 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCountNoPrefixTopic;
    goto LABEL_45;
  }

  if (type != 3)
  {
    if (type != 5)
    {
      goto LABEL_48;
    }

    if (v9 <= count && v4)
    {
      v13 = v7[6] > self->_count;
      goto LABEL_48;
    }

    v15 = &OBJC_IVAR___ContextConfiguration__luceneTermResultDefaultMinPrefixFirstLastName;
    goto LABEL_32;
  }

  v17 = v9 > count || !v4;
  if (!v17 && v7[3] <= self->_count)
  {
LABEL_47:
    v13 = 0;
    goto LABEL_48;
  }

  v15 = &OBJC_IVAR___ContextConfiguration__luceneTermResultDefaultMinPrefixRegularKeyword;
LABEL_32:
  v13 = *(v7 + *v15);
  if (v11)
  {
    if (v13 >= v7[8])
    {
      v18 = v7[8];
    }

    else
    {
      v18 = *(v7 + *v15);
    }

    if (v13 >= 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v7[8];
    }
  }

LABEL_48:

  return v13;
}

- (void)addPrecedingToken:(id)a3
{
  v4 = a3;
  precedingTokens = self->_precedingTokens;
  v9 = v4;
  if (!precedingTokens)
  {
    v6 = objc_opt_new();
    v7 = self->_precedingTokens;
    self->_precedingTokens = v6;

    v4 = v9;
    precedingTokens = self->_precedingTokens;
  }

  v8 = [NSValue valueWithNonretainedObject:v4];
  [(NSCountedSet *)precedingTokens addObject:v8];
}

- (void)addOffset:(id)a3
{
  v9 = a3;
  offsets = self->_offsets;
  if (!offsets)
  {
    v5 = [NSMutableArray arrayWithCapacity:3];
    v6 = self->_offsets;
    self->_offsets = v5;

    offsets = self->_offsets;
  }

  if ([(NSMutableArray *)offsets count]< 3)
  {
    v7 = self->_offsets;
    v8 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [v9 startOffset], objc_msgSend(v9, "endOffset"));
    [(NSMutableArray *)v7 addObject:v8];
  }

  else
  {
    self->_addOffsets = 0;
  }
}

- (void)cleanForCache
{
  precedingTokens = self->_precedingTokens;
  self->_precedingTokens = 0;

  offsets = self->_offsets;
  self->_offsets = 0;

  hashes = self->_hashes;
  self->_hashes = 0;

  if (self->_term)
  {
    v6 = [OrgApacheLuceneIndexTerm alloc];
    v7 = [(OrgApacheLuceneIndexTerm *)self->_term field];
    v8 = [(OrgApacheLuceneIndexTerm *)self->_term bytes];
    v9 = [OrgApacheLuceneUtilBytesRef deepCopyOfWithOrgApacheLuceneUtilBytesRef:v8];
    v10 = [(OrgApacheLuceneIndexTerm *)v6 initWithNSString:v7 withOrgApacheLuceneUtilBytesRef:v9];
    term = self->_term;
    self->_term = v10;
  }

  token = self->_token;
  self->_token = 0;
}

@end