@interface MOPersonRelationship
- (MOPersonRelationship)initWithCoder:(id)a3;
- (MOPersonRelationship)initWithRelationship:(unint64_t)a3 score:(double)a4 source:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPersonRelationship

- (MOPersonRelationship)initWithRelationship:(unint64_t)a3 score:(double)a4 source:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = MOPersonRelationship;
  v9 = [(MOPersonRelationship *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_relationship = a3;
    v9->_score = a4;
    v11 = [v8 copy];
    source = v10->_source;
    v10->_source = v11;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOPersonRelationship *)self relationship];
  [(MOPersonRelationship *)self score];
  v6 = v5;
  v7 = [(MOPersonRelationship *)self source];
  v8 = [v3 stringWithFormat:@"<MOPersonRelationship relationship, %lu, score, %.1f, source, %@>", v4, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  relationship = self->_relationship;
  v5 = a3;
  [v5 encodeInt64:relationship forKey:@"relationship"];
  [v5 encodeDouble:@"score" forKey:self->_score];
  [v5 encodeObject:self->_source forKey:@"source"];
}

- (MOPersonRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"relationship"];
  [v4 decodeDoubleForKey:@"score"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  v9 = [(MOPersonRelationship *)self initWithRelationship:v5 score:v8 source:v7];
  return v9;
}

@end