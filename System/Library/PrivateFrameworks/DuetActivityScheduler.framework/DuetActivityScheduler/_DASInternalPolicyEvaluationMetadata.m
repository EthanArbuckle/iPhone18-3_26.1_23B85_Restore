@interface _DASInternalPolicyEvaluationMetadata
+ (id)metadataWithScore:(double)a3;
- (_DASInternalPolicyEvaluationMetadata)initWithScore:(double)a3 reason:(int64_t)a4 decision:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _DASInternalPolicyEvaluationMetadata

+ (id)metadataWithScore:(double)a3
{
  v4 = objc_opt_new();
  [v4 setScore:a3];

  return v4;
}

- (_DASInternalPolicyEvaluationMetadata)initWithScore:(double)a3 reason:(int64_t)a4 decision:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = _DASInternalPolicyEvaluationMetadata;
  result = [(_DASInternalPolicyEvaluationMetadata *)&v9 init];
  if (result)
  {
    result->_score = a3;
    result->_reason = a4;
    result->_decision = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_DASInternalPolicyEvaluationMetadata allocWithZone:a3];
  score = self->_score;
  reason = self->_reason;
  decision = self->_decision;

  return [(_DASInternalPolicyEvaluationMetadata *)v4 initWithScore:reason reason:decision decision:score];
}

@end