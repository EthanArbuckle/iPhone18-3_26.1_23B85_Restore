@interface IDSRequestReasonContainer
+ (id)initialRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4;
+ (id)pushRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4;
+ (id)repairRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4;
+ (id)retryRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4;
+ (id)scheduledRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4;
+ (id)unknownReasonContainer;
+ (id)userRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4;
- (IDSRequestReasonContainer)initWithReason:(unint64_t)a3 subreason:(unint64_t)a4 pathID:(unint64_t)a5;
@end

@implementation IDSRequestReasonContainer

- (IDSRequestReasonContainer)initWithReason:(unint64_t)a3 subreason:(unint64_t)a4 pathID:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = IDSRequestReasonContainer;
  result = [(IDSRequestReasonContainer *)&v9 init];
  if (result)
  {
    result->_reason = a3;
    result->_subreason = a4;
    result->_pathID = a5;
  }

  return result;
}

+ (id)unknownReasonContainer
{
  v2 = [[a1 alloc] initWithReason:1 subreason:1 pathID:0];

  return v2;
}

+ (id)scheduledRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithReason:2 subreason:a3 pathID:a4];

  return v4;
}

+ (id)initialRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithReason:3 subreason:a3 pathID:a4];

  return v4;
}

+ (id)userRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithReason:4 subreason:a3 pathID:a4];

  return v4;
}

+ (id)pushRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithReason:5 subreason:a3 pathID:a4];

  return v4;
}

+ (id)repairRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithReason:6 subreason:a3 pathID:a4];

  return v4;
}

+ (id)retryRequestWithSubreason:(unint64_t)a3 pathID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithReason:7 subreason:a3 pathID:a4];

  return v4;
}

@end