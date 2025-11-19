@interface RTPredictedContextAnalytics
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextAnalytics)initWithCoder:(id)a3;
- (RTPredictedContextAnalytics)initWithRolledLOIResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RTPredictedContextAnalytics

- (RTPredictedContextAnalytics)initWithRolledLOIResult:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTPredictedContextAnalytics;
  v5 = [(RTPredictedContextAnalytics *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    rolledLOIResult = v5->_rolledLOIResult;
    v5->_rolledLOIResult = v6;
  }

  return v5;
}

- (RTPredictedContextAnalytics)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"rolledLOIResult"];

  v9 = [(RTPredictedContextAnalytics *)self initWithRolledLOIResult:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContextAnalytics *)self rolledLOIResult];
    v8 = [(RTPredictedContextAnalytics *)v6 rolledLOIResult];

    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextAnalytics allocWithZone:a3];
  v5 = [(RTPredictedContextAnalytics *)self rolledLOIResult];
  v6 = [(RTPredictedContextAnalytics *)v4 initWithRolledLOIResult:v5];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(RTPredictedContextAnalytics *)self rolledLOIResult];
  v4 = [v2 stringWithFormat:@"rolledLOIResult.count, %lu", objc_msgSend(v3, "count")];

  return v4;
}

@end