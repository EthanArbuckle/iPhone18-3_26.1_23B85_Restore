@interface _DPWordRecord
+ (id)word:(id)word atPosition:(id)position;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWordRecord:(id)record;
- (_DPWordRecord)initWithCoder:(id)coder;
- (_DPWordRecord)initWithWord:(id)word atPosition:(id)position;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sequenceWithoutPadding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPWordRecord

- (_DPWordRecord)initWithWord:(id)word atPosition:(id)position
{
  wordCopy = word;
  positionCopy = position;
  v13.receiver = self;
  v13.super_class = _DPWordRecord;
  v8 = [(_DPWordRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wordPosition, position);
    v10 = [wordCopy copy];
    word = v9->_word;
    v9->_word = v10;
  }

  return v9;
}

+ (id)word:(id)word atPosition:(id)position
{
  positionCopy = position;
  wordCopy = word;
  v8 = [[self alloc] initWithWord:wordCopy atPosition:positionCopy];

  return v8;
}

- (id)sequenceWithoutPadding
{
  wordPosition = [(_DPWordRecord *)self wordPosition];
  v4 = [wordPosition isEqualToNumber:&unk_283976000];

  if (v4)
  {
    word = [(_DPWordRecord *)self word];
    v6 = [word componentsSeparatedByString:@"∅"];

    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = 0;
    if (([v7 isEqualToString:&stru_2839671C8] & 1) == 0)
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_DPWordRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wordPosition"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"word"];

  v7 = [(_DPWordRecord *)self initWithWord:v6 atPosition:v5];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  wordPosition = [(_DPWordRecord *)self wordPosition];
  [coderCopy encodeObject:wordPosition forKey:@"wordPosition"];

  word = [(_DPWordRecord *)self word];
  [coderCopy encodeObject:word forKey:@"word"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  wordPosition = [(_DPWordRecord *)self wordPosition];
  word = [(_DPWordRecord *)self word];
  v8 = [v3 stringWithFormat:@"%@: { wordPosition=%@  word=%@ }", v5, wordPosition, word];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  word = [(_DPWordRecord *)self word];
  wordPosition = [(_DPWordRecord *)self wordPosition];
  v7 = [v4 word:word atPosition:wordPosition];

  return v7;
}

- (BOOL)isEqualToWordRecord:(id)record
{
  if (!record)
  {
    return 0;
  }

  recordCopy = record;
  wordPosition = [(_DPWordRecord *)self wordPosition];
  wordPosition2 = [recordCopy wordPosition];
  v7 = [wordPosition isEqualToNumber:wordPosition2];

  word = [(_DPWordRecord *)self word];
  word2 = [recordCopy word];

  LOBYTE(recordCopy) = [word isEqualToString:word2];
  return v7 & recordCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPWordRecord *)self isEqualToWordRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  word = [(_DPWordRecord *)self word];
  v4 = [word hash];
  wordPosition = [(_DPWordRecord *)self wordPosition];
  v6 = [wordPosition hash];

  return v6 ^ v4;
}

@end