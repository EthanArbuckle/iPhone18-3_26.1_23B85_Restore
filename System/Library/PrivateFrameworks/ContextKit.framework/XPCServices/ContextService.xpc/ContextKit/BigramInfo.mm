@interface BigramInfo
+ (void)initialize;
- (BigramInfo)initWithTerm:(id)term bigramTokenA:(id)a tokenB:(id)b type:(unint64_t)type weight:(float)weight docId:(int)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)termSequence;
- (id)tokenSequence;
- (int64_t)isTermResultWithPrimary:(BOOL)primary config:(id)config;
- (void)adjustCounts;
- (void)incrementCount;
@end

@implementation BigramInfo

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[BigramInfo alloc] initWithTerm:0 bigramTokenA:0 tokenB:0 type:1 weight:0xFFFFFFFFLL docId:0.0];
    v3 = qword_100557128;
    qword_100557128 = v2;

    qword_100557130 = [[BigramInfo alloc] initWithTerm:0 bigramTokenA:0 tokenB:0 type:0 weight:0xFFFFFFFFLL docId:0.0];

    _objc_release_x1();
  }
}

- (BigramInfo)initWithTerm:(id)term bigramTokenA:(id)a tokenB:(id)b type:(unint64_t)type weight:(float)weight docId:(int)id
{
  termCopy = term;
  aCopy = a;
  bCopy = b;
  v21.receiver = self;
  v21.super_class = BigramInfo;
  v18 = [(BigramInfo *)&v21 init];
  if (v18)
  {
    valid = [aCopy valid];
    if (valid)
    {
      LOBYTE(valid) = [bCopy valid];
    }

    v18->_valid = valid;
    objc_storeStrong(&v18->_term, term);
    objc_storeStrong(&v18->_tokenA, a);
    objc_storeStrong(&v18->_tokenB, b);
    v18->_weight = weight;
    v18->_docId = id;
    v18->_type = type;
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

- (id)copyWithZone:(_NSZone *)zone
{
  if (qword_100557128 == self || qword_100557130 == self)
  {

    return self;
  }

  else
  {
    v6 = [BigramInfo allocWithZone:zone];
    type = self->_type;
    *&v7 = self->_weight;
    docId = self->_docId;

    return [(BigramInfo *)v6 initWithTerm:0 bigramTokenA:0 tokenB:0 type:type weight:docId docId:v7];
  }
}

- (id)tokenSequence
{
  token = [(TokenInfo *)self->_tokenA token];
  token2 = [(TokenInfo *)self->_tokenB token];
  v5 = [NSString stringWithFormat:@"%@ %@", token, token2];

  return v5;
}

- (id)termSequence
{
  term = [(TokenInfo *)self->_tokenA term];
  text = [term text];
  term2 = [(TokenInfo *)self->_tokenB term];
  text2 = [term2 text];
  v7 = [NSString stringWithFormat:@"%@ %@", text, text2];

  return v7;
}

- (int64_t)isTermResultWithPrimary:(BOOL)primary config:(id)config
{
  primaryCopy = primary;
  configCopy = config;
  v7 = configCopy;
  if (self->_type == 3)
  {
    v8 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCountRegularKeyword;
  }

  else
  {
    v8 = &OBJC_IVAR___ContextConfiguration__luceneTermResultMinCount;
  }

  v9 = *(configCopy + *v8);
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
    v13 = !v10 || !primaryCopy;
    goto LABEL_26;
  }

  if (type == 2)
  {
    goto LABEL_25;
  }

  if (type == 3 && self->_continuous)
  {
    if (v10 && primaryCopy)
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