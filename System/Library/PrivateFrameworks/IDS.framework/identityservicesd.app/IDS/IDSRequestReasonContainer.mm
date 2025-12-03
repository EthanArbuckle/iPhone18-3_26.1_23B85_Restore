@interface IDSRequestReasonContainer
+ (id)initialRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d;
+ (id)pushRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d;
+ (id)repairRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d;
+ (id)retryRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d;
+ (id)scheduledRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d;
+ (id)unknownReasonContainer;
+ (id)userRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d;
- (IDSRequestReasonContainer)initWithReason:(unint64_t)reason subreason:(unint64_t)subreason pathID:(unint64_t)d;
@end

@implementation IDSRequestReasonContainer

- (IDSRequestReasonContainer)initWithReason:(unint64_t)reason subreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v9.receiver = self;
  v9.super_class = IDSRequestReasonContainer;
  result = [(IDSRequestReasonContainer *)&v9 init];
  if (result)
  {
    result->_reason = reason;
    result->_subreason = subreason;
    result->_pathID = d;
  }

  return result;
}

+ (id)unknownReasonContainer
{
  v2 = [[self alloc] initWithReason:1 subreason:1 pathID:0];

  return v2;
}

+ (id)scheduledRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v4 = [[self alloc] initWithReason:2 subreason:subreason pathID:d];

  return v4;
}

+ (id)initialRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v4 = [[self alloc] initWithReason:3 subreason:subreason pathID:d];

  return v4;
}

+ (id)userRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v4 = [[self alloc] initWithReason:4 subreason:subreason pathID:d];

  return v4;
}

+ (id)pushRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v4 = [[self alloc] initWithReason:5 subreason:subreason pathID:d];

  return v4;
}

+ (id)repairRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v4 = [[self alloc] initWithReason:6 subreason:subreason pathID:d];

  return v4;
}

+ (id)retryRequestWithSubreason:(unint64_t)subreason pathID:(unint64_t)d
{
  v4 = [[self alloc] initWithReason:7 subreason:subreason pathID:d];

  return v4;
}

@end