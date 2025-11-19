@interface CVNLPTextDecodingToken
- (CVNLPTextDecodingToken)initWithString:(id)a3 score:(id)a4 activationRange:(_NSRange)a5 hasPrecedingSpace:(BOOL)a6;
- (CVNLPTextDecodingToken)initWithString:(id)a3 score:(id)a4 alignmentScore:(id)a5 activationRange:(_NSRange)a6 terminatingCharacter:(id)a7;
- (NSString)fullString;
- (_NSRange)activationRange;
@end

@implementation CVNLPTextDecodingToken

- (CVNLPTextDecodingToken)initWithString:(id)a3 score:(id)a4 alignmentScore:(id)a5 activationRange:(_NSRange)a6 terminatingCharacter:(id)a7
{
  length = a6.length;
  location = a6.location;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CVNLPTextDecodingToken;
  v17 = [(CVNLPTextDecodingToken *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_string, a3);
    objc_storeStrong(&v18->_score, a4);
    objc_storeStrong(&v18->_alignmentScore, a5);
    v18->_activationRange.location = location;
    v18->_activationRange.length = length;
    objc_storeStrong(&v18->_terminatingCharacter, a7);
  }

  return v18;
}

- (CVNLPTextDecodingToken)initWithString:(id)a3 score:(id)a4 activationRange:(_NSRange)a5 hasPrecedingSpace:(BOOL)a6
{
  result = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(self, a2, a3, a4, &unk_1F5554B30, a5.location, a5.length, 0);
  if (result)
  {
    result->_hasPrecedingSpace = a6;
  }

  return result;
}

- (NSString)fullString
{
  v5 = self->_string;
  terminatingCharacter = self->_terminatingCharacter;
  if (terminatingCharacter)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"%@%@", v4, self->_string, terminatingCharacter);

    v5 = v7;
  }

  if (self->_hasPrecedingSpace)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @" %@", v4, v5);

    v5 = v8;
  }

  return v5;
}

- (_NSRange)activationRange
{
  length = self->_activationRange.length;
  location = self->_activationRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end