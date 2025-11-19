@interface MADRichLabelClassificationResult
- (MADRichLabelClassificationResult)initWithCoder:(id)a3;
- (MADRichLabelClassificationResult)initWithResultItems:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADRichLabelClassificationResult

- (MADRichLabelClassificationResult)initWithResultItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADRichLabelClassificationResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultItems, a3);
  }

  return v7;
}

- (MADRichLabelClassificationResult)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADRichLabelClassificationResult;
  v5 = [(MADResult *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ResultItems"];
    resultItems = v5->_resultItems;
    v5->_resultItems = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADRichLabelClassificationResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_resultItems forKey:{@"ResultItems", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"resultItems: %@ >", self->_resultItems];

  return v3;
}

@end