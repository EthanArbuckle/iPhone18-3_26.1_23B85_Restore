@interface PDAnimationTextTarget
- (BOOL)isEqual:(id)equal;
- (PDAnimationTextTarget)init;
- (_NSRange)range;
- (unint64_t)hash;
@end

@implementation PDAnimationTextTarget

- (PDAnimationTextTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationTextTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

- (_NSRange)range
{
  p_mRange = &self->mRange;
  location = self->mRange.location;
  length = p_mRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PDAnimationTextTarget;
  v3 = [(PDAnimationShapeTarget *)&v8 hash];
  v4 = &v3[[(PDAnimationTextTarget *)self type]];
  v5 = &v4[16 * [(PDAnimationTextTarget *)self range]];
  [(PDAnimationTextTarget *)self range];
  return &v5[v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = PDAnimationTextTarget, -[PDAnimationShapeTarget isEqual:](&v12, sel_isEqual_, equalCopy)) && (v5 = -[PDAnimationTextTarget type](self, "type"), v5 == [equalCopy type]) && (v6 = -[PDAnimationTextTarget range](self, "range"), v6 == objc_msgSend(equalCopy, "range")))
  {
    [(PDAnimationTextTarget *)self range];
    v8 = v7;
    [equalCopy range];
    v10 = v8 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end