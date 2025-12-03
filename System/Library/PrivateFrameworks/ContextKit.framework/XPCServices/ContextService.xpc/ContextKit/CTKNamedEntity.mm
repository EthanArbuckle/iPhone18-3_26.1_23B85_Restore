@interface CTKNamedEntity
- (CTKNamedEntity)initWithName:(id)name firstOccurrence:(unint64_t)occurrence tagType:(id)type;
- (void)incOccurenceWithPosition:(unint64_t)position;
@end

@implementation CTKNamedEntity

- (CTKNamedEntity)initWithName:(id)name firstOccurrence:(unint64_t)occurrence tagType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = CTKNamedEntity;
  v11 = [(CTKNamedEntity *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_tag, type);
    v12->_firstOccurrence = occurrence;
    v12->_count = 1;
    v13 = pow((occurrence + 1), -0.1);
    v12->_score = v13;
  }

  return v12;
}

- (void)incOccurenceWithPosition:(unint64_t)position
{
  [(CTKNamedEntity *)self setCount:[(CTKNamedEntity *)self count]+ 1];
  v5 = pow((position + 1), -0.1);
  [(CTKNamedEntity *)self score];
  v7 = v5 + v6;
  *&v7 = v7;

  [(CTKNamedEntity *)self setScore:v7];
}

@end