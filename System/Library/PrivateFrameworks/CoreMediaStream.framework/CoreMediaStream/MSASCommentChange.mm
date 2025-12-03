@interface MSASCommentChange
- (id)description;
@end

@implementation MSASCommentChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MSASCommentChange;
  v4 = [(MSASCommentChange *)&v9 description];
  type = [(MSASCommentChange *)self type];
  comment = [(MSASCommentChange *)self comment];
  v7 = [v3 stringWithFormat:@"%@: Type: %d, comment: %@, deletion index: %d", v4, type, comment, -[MSASCommentChange deletionIndex](self, "deletionIndex")];

  return v7;
}

@end