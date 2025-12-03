@interface EMTToken
- (BOOL)isEqual:(id)equal;
- (EMTToken)initWithText:(id)text confidence:(float)confidence score:(float)score precededBySpace:(BOOL)space followedBySpace:(BOOL)bySpace;
- (unint64_t)hash;
@end

@implementation EMTToken

- (EMTToken)initWithText:(id)text confidence:(float)confidence score:(float)score precededBySpace:(BOOL)space followedBySpace:(BOOL)bySpace
{
  textCopy = text;
  v17.receiver = self;
  v17.super_class = EMTToken;
  v13 = [(EMTToken *)&v17 init];
  if (v13)
  {
    v14 = [textCopy copy];
    text = v13->_text;
    v13->_text = v14;

    v13->_confidence = confidence;
    v13->_score = score;
    v13->_precededBySpace = space;
    v13->_followedBySpace = bySpace;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    text = self->_text;
    text = [v5 text];
    if (-[NSString isEqual:](text, "isEqual:", text) && (confidence = self->_confidence, [v5 confidence], confidence == v9) && (score = self->_score, objc_msgSend(v5, "score"), score == v11) && (precededBySpace = self->_precededBySpace, precededBySpace == objc_msgSend(v5, "precededBySpace")))
    {
      followedBySpace = self->_followedBySpace;
      v14 = followedBySpace == [v5 followedBySpace];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  if (self->_confidence == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 527 * LODWORD(self->_confidence);
  }

  return 17 * (17 * (v2 + [(NSString *)self->_text hash]) + 11 * self->_precededBySpace) + 11 * self->_followedBySpace;
}

@end