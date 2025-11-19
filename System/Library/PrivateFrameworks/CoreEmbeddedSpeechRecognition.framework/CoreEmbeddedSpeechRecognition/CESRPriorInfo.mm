@interface CESRPriorInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPriorInfo:(id)a3;
- (CESRPriorInfo)init;
- (CESRPriorInfo)initWithCoder:(id)a3;
- (CESRPriorInfo)initWithOrdinality:(unsigned int)a3 score:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CESRPriorInfo

- (CESRPriorInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CESRPriorInfo;
  v5 = [(CESRPriorInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"o"];
    v5->_ordinality = [v6 unsignedIntValue];

    [v4 decodeFloatForKey:@"s"];
    v5->_score = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ordinality];
  [v6 encodeObject:v4 forKey:@"o"];

  *&v5 = self->_score;
  [v6 encodeFloat:@"s" forKey:v5];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ordinality];
  v4 = [v3 hash];
  *&v5 = self->_score;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v7 = [v6 hash];

  return v7 ^ v4;
}

- (BOOL)isEqualToPriorInfo:(id)a3
{
  v4 = a3;
  ordinality = self->_ordinality;
  if (ordinality == [v4 ordinality])
  {
    score = self->_score;
    [v4 score];
    v8 = score == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRPriorInfo *)self isEqualToPriorInfo:v5];
  }

  return v6;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CESRPriorInfo;
  v3 = [(CESRPriorInfo *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" ordinality: %d, prior score: %f", self->_ordinality, self->_score];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 2) = self->_ordinality;
  *(result + 3) = LODWORD(self->_score);
  return result;
}

- (CESRPriorInfo)initWithOrdinality:(unsigned int)a3 score:(float)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = CESRPriorInfo;
  v6 = [(CESRPriorInfo *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  v6->_score = a4;
  if (a4 >= 0.0 && a4 <= 1.0)
  {
    v6->_ordinality = a3;
LABEL_5:
    v8 = v6;
    goto LABEL_9;
  }

  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[CESRPriorInfo initWithOrdinality:score:]";
    v15 = 2048;
    v16 = a4;
    _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Invalid score: %f", buf, 0x16u);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (CESRPriorInfo)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end