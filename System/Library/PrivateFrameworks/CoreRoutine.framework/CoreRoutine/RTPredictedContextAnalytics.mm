@interface RTPredictedContextAnalytics
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextAnalytics)initWithCoder:(id)coder;
- (RTPredictedContextAnalytics)initWithRolledLOIResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RTPredictedContextAnalytics

- (RTPredictedContextAnalytics)initWithRolledLOIResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = RTPredictedContextAnalytics;
  v5 = [(RTPredictedContextAnalytics *)&v9 init];
  if (v5)
  {
    v6 = [resultCopy copy];
    rolledLOIResult = v5->_rolledLOIResult;
    v5->_rolledLOIResult = v6;
  }

  return v5;
}

- (RTPredictedContextAnalytics)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"rolledLOIResult"];

  v9 = [(RTPredictedContextAnalytics *)self initWithRolledLOIResult:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    rolledLOIResult = [(RTPredictedContextAnalytics *)self rolledLOIResult];
    rolledLOIResult2 = [(RTPredictedContextAnalytics *)v6 rolledLOIResult];

    v9 = [rolledLOIResult isEqual:rolledLOIResult2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextAnalytics allocWithZone:zone];
  rolledLOIResult = [(RTPredictedContextAnalytics *)self rolledLOIResult];
  v6 = [(RTPredictedContextAnalytics *)v4 initWithRolledLOIResult:rolledLOIResult];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  rolledLOIResult = [(RTPredictedContextAnalytics *)self rolledLOIResult];
  v4 = [v2 stringWithFormat:@"rolledLOIResult.count, %lu", objc_msgSend(rolledLOIResult, "count")];

  return v4;
}

@end