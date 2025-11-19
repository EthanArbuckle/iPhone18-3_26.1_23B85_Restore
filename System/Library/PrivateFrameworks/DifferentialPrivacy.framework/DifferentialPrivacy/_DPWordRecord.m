@interface _DPWordRecord
+ (id)word:(id)a3 atPosition:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWordRecord:(id)a3;
- (_DPWordRecord)initWithCoder:(id)a3;
- (_DPWordRecord)initWithWord:(id)a3 atPosition:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sequenceWithoutPadding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPWordRecord

- (_DPWordRecord)initWithWord:(id)a3 atPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _DPWordRecord;
  v8 = [(_DPWordRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wordPosition, a4);
    v10 = [v6 copy];
    word = v9->_word;
    v9->_word = v10;
  }

  return v9;
}

+ (id)word:(id)a3 atPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithWord:v7 atPosition:v6];

  return v8;
}

- (id)sequenceWithoutPadding
{
  v3 = [(_DPWordRecord *)self wordPosition];
  v4 = [v3 isEqualToNumber:&unk_283976000];

  if (v4)
  {
    v5 = [(_DPWordRecord *)self word];
    v6 = [v5 componentsSeparatedByString:@"∅"];

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

- (_DPWordRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wordPosition"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"word"];

  v7 = [(_DPWordRecord *)self initWithWord:v6 atPosition:v5];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_DPWordRecord *)self wordPosition];
  [v4 encodeObject:v5 forKey:@"wordPosition"];

  v6 = [(_DPWordRecord *)self word];
  [v4 encodeObject:v6 forKey:@"word"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_DPWordRecord *)self wordPosition];
  v7 = [(_DPWordRecord *)self word];
  v8 = [v3 stringWithFormat:@"%@: { wordPosition=%@  word=%@ }", v5, v6, v7];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(_DPWordRecord *)self word];
  v6 = [(_DPWordRecord *)self wordPosition];
  v7 = [v4 word:v5 atPosition:v6];

  return v7;
}

- (BOOL)isEqualToWordRecord:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_DPWordRecord *)self wordPosition];
  v6 = [v4 wordPosition];
  v7 = [v5 isEqualToNumber:v6];

  v8 = [(_DPWordRecord *)self word];
  v9 = [v4 word];

  LOBYTE(v4) = [v8 isEqualToString:v9];
  return v7 & v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPWordRecord *)self isEqualToWordRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPWordRecord *)self word];
  v4 = [v3 hash];
  v5 = [(_DPWordRecord *)self wordPosition];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end