@interface PDCommentAuthor
- (PDCommentAuthor)init;
- (id)description;
@end

@implementation PDCommentAuthor

- (PDCommentAuthor)init
{
  v3.receiver = self;
  v3.super_class = PDCommentAuthor;
  result = [(PDCommentAuthor *)&v3 init];
  if (result)
  {
    result->mId = -1;
    *&result->mLastCommentIndex = -1;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDCommentAuthor;
  v2 = [(PDCommentAuthor *)&v4 description];

  return v2;
}

@end