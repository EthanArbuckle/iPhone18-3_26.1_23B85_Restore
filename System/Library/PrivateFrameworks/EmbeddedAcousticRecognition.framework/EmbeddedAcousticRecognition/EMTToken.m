@interface EMTToken
- (BOOL)isEqual:(id)a3;
- (EMTToken)initWithText:(id)a3 confidence:(float)a4 score:(float)a5 precededBySpace:(BOOL)a6 followedBySpace:(BOOL)a7;
- (unint64_t)hash;
@end

@implementation EMTToken

- (EMTToken)initWithText:(id)a3 confidence:(float)a4 score:(float)a5 precededBySpace:(BOOL)a6 followedBySpace:(BOOL)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = EMTToken;
  v13 = [(EMTToken *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    text = v13->_text;
    v13->_text = v14;

    v13->_confidence = a4;
    v13->_score = a5;
    v13->_precededBySpace = a6;
    v13->_followedBySpace = a7;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    text = self->_text;
    v7 = [v5 text];
    if (-[NSString isEqual:](text, "isEqual:", v7) && (confidence = self->_confidence, [v5 confidence], confidence == v9) && (score = self->_score, objc_msgSend(v5, "score"), score == v11) && (precededBySpace = self->_precededBySpace, precededBySpace == objc_msgSend(v5, "precededBySpace")))
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