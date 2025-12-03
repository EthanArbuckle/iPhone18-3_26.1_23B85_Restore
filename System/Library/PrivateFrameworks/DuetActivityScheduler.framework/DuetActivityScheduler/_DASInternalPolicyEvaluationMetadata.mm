@interface _DASInternalPolicyEvaluationMetadata
+ (id)metadataWithScore:(double)score;
- (_DASInternalPolicyEvaluationMetadata)initWithScore:(double)score reason:(int64_t)reason decision:(int64_t)decision;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _DASInternalPolicyEvaluationMetadata

+ (id)metadataWithScore:(double)score
{
  v4 = objc_opt_new();
  [v4 setScore:score];

  return v4;
}

- (_DASInternalPolicyEvaluationMetadata)initWithScore:(double)score reason:(int64_t)reason decision:(int64_t)decision
{
  v9.receiver = self;
  v9.super_class = _DASInternalPolicyEvaluationMetadata;
  result = [(_DASInternalPolicyEvaluationMetadata *)&v9 init];
  if (result)
  {
    result->_score = score;
    result->_reason = reason;
    result->_decision = decision;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_DASInternalPolicyEvaluationMetadata allocWithZone:zone];
  score = self->_score;
  reason = self->_reason;
  decision = self->_decision;

  return [(_DASInternalPolicyEvaluationMetadata *)v4 initWithScore:reason reason:decision decision:score];
}

@end