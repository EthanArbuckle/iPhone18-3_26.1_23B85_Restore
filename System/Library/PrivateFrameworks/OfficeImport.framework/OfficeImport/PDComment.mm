@interface PDComment
- (CGPoint)position;
- (PDComment)init;
- (id)description;
@end

@implementation PDComment

- (PDComment)init
{
  v3.receiver = self;
  v3.super_class = PDComment;
  result = [(PDComment *)&v3 init];
  if (result)
  {
    result->mAuthorId = -1;
    result->mIndex = -1;
  }

  return result;
}

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDComment;
  v2 = [(PDComment *)&v4 description];

  return v2;
}

@end