@interface BigramInfo
+ (void)initialize;
- (BigramInfo)initWithTerm:(id)a3 bigramTokenA:(id)a4 tokenB:(id)a5 type:(unint64_t)a6 weight:(float)a7 docId:(int)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)termSequence;
- (id)tokenSequence;
- (int64_t)isTermResultWithPrimary:(BOOL)a3 config:(id)a4;
- (void)adjustCounts;
- (void)incrementCount;
@end

@implementation BigramInfo

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[BigramInfo alloc] initWithTerm:0 bigramTokenA:0 tokenB:0 type:1 weight:0xFFFFFFFFLL docId:0.0];
    v3 = qword_100557128;
    qword_100557128 = v2;

    qword_100557130 = [[BigramInfo alloc] initWithTerm:0 bigramTokenA:0 tokenB:0 type:0 weight:0xFFFFFFFFLL docId:0.0];

    _objc_release_x1();
  }
}

- (BigramInfo)initWithTerm:(id)a3 bigramTokenA:(id)a4 tokenB:(id)a5 type:(unint64_t)a6 weight:(float)a7 docId:(int)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = BigramInfo;
  v18 = [(BigramInfo *)&v21 init];
  if (v18)
  {
    v19 = [v16 valid];
    if (v19)
    {
      LOBYTE(v19) = [v17 valid];
    }

    v18->_valid = v19;
    objc_storeStrong(&v18->_term, a3);
    objc_storeStrong(&v18->_tokenA, a4);
    objc_storeStrong(&v18->_tokenB, a5);
    v18->_weight = a7;
    v18->_docId = a8;
    v18->_type = a6;
  }

  return v18;
}

- (void)incrementCount
{
  if (qword_100557128 != self && qword_100557130 != self)
  {
    ++self->_count;
  }
}

- (void)adjustCounts
{
  v3 = [(TokenInfo *)self->_tokenB count];
  count = self->_count;
  if (v3 > count && (count > 2 || self->_tokenB->_type == 5))
  {
    self->_count = v3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (qword_100557128 == self || qword_100557130 == self)
  {

    return self;
  }

  else
  {
    v6 = [BigramInfo allocWithZone:a3];
    type = self->_type;
    *&v7 = self->_weight;
    docId = self->_docId;

    return [(BigramInfo *)v6 initWithTerm:0 bigramTokenA:0 tokenB:0 type:type weight:docId docId:v7];
  }
}

- (id)tokenSequence
{
  v3 = [(TokenInfo *)self->_tokenA token];
  v4 = [(TokenInfo *)self->_tokenB token];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)termSequence
{
  v3 = [(TokenInfo *)self->_tokenA term];
  v4 = [v3 text];
  v5 = [(TokenInfo *)self->_tokenB term];
  v6 = [v5 text];
  v7 = [NSString stringWithFormat:@"%@ %@", v4, v6];

  return v7;
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
  if (v9 <= self->_count)
  {
    v10 = 1;
  }

  else if (v9 <= [(TokenInfo *)self->_tokenB count]&& (self->_tokenA->_type == 8 || [TokenInfo isSurnameType:self->_tokenB->_type]))
  {
    v11 = v7[7];
    if (v11 >= v7[5])
    {
      v11 = v7[5];
    }

    v10 = v11 <= self->_count;
  }

  else
  {
    v10 = 0;
  }

  type = self->_type;
  v13 = -1;
  if (type > 5)
  {
    if (type != 6)
    {
      if ((type == 7 || type == 13) && v10 && self->_continuous)
      {
        v13 = v7[7] > self->_count;
      }

      goto LABEL_26;
    }

LABEL_25:
    v13 = !v10 || !v4;
    goto LABEL_26;
  }

  if (type == 2)
  {
    goto LABEL_25;
  }

  if (type == 3 && self->_continuous)
  {
    if (v10 && v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7[9];
    }
  }

LABEL_26:

  return v13;
}

@end