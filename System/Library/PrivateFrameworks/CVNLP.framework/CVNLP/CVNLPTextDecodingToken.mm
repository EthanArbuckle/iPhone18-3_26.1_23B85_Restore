@interface CVNLPTextDecodingToken
- (CVNLPTextDecodingToken)initWithString:(id)string score:(id)score activationRange:(_NSRange)range hasPrecedingSpace:(BOOL)space;
- (CVNLPTextDecodingToken)initWithString:(id)string score:(id)score alignmentScore:(id)alignmentScore activationRange:(_NSRange)range terminatingCharacter:(id)character;
- (NSString)fullString;
- (_NSRange)activationRange;
@end

@implementation CVNLPTextDecodingToken

- (CVNLPTextDecodingToken)initWithString:(id)string score:(id)score alignmentScore:(id)alignmentScore activationRange:(_NSRange)range terminatingCharacter:(id)character
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  scoreCopy = score;
  alignmentScoreCopy = alignmentScore;
  characterCopy = character;
  v21.receiver = self;
  v21.super_class = CVNLPTextDecodingToken;
  v17 = [(CVNLPTextDecodingToken *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_string, string);
    objc_storeStrong(&v18->_score, score);
    objc_storeStrong(&v18->_alignmentScore, alignmentScore);
    v18->_activationRange.location = location;
    v18->_activationRange.length = length;
    objc_storeStrong(&v18->_terminatingCharacter, character);
  }

  return v18;
}

- (CVNLPTextDecodingToken)initWithString:(id)string score:(id)score activationRange:(_NSRange)range hasPrecedingSpace:(BOOL)space
{
  result = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(self, a2, string, score, &unk_1F5554B30, range.location, range.length, 0);
  if (result)
  {
    result->_hasPrecedingSpace = space;
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