@interface CTKNamedEntity
- (CTKNamedEntity)initWithName:(id)a3 firstOccurrence:(unint64_t)a4 tagType:(id)a5;
- (void)incOccurenceWithPosition:(unint64_t)a3;
@end

@implementation CTKNamedEntity

- (CTKNamedEntity)initWithName:(id)a3 firstOccurrence:(unint64_t)a4 tagType:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CTKNamedEntity;
  v11 = [(CTKNamedEntity *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_tag, a5);
    v12->_firstOccurrence = a4;
    v12->_count = 1;
    v13 = pow((a4 + 1), -0.1);
    v12->_score = v13;
  }

  return v12;
}

- (void)incOccurenceWithPosition:(unint64_t)a3
{
  [(CTKNamedEntity *)self setCount:[(CTKNamedEntity *)self count]+ 1];
  v5 = pow((a3 + 1), -0.1);
  [(CTKNamedEntity *)self score];
  v7 = v5 + v6;
  *&v7 = v7;

  [(CTKNamedEntity *)self setScore:v7];
}

@end