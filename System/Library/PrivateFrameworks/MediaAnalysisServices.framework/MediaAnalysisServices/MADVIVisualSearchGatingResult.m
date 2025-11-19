@interface MADVIVisualSearchGatingResult
- (MADVIVisualSearchGatingResult)initWithCoder:(id)a3;
- (MADVIVisualSearchGatingResult)initWithResultItems:(id)a3 andPayload:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchGatingResult

- (MADVIVisualSearchGatingResult)initWithResultItems:(id)a3 andPayload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADVIVisualSearchGatingResult;
  v9 = [(MADResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultItems, a3);
    objc_storeStrong(&v10->_payload, a4);
  }

  return v10;
}

- (MADVIVisualSearchGatingResult)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MADVIVisualSearchGatingResult;
  v5 = [(MADResult *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ResultItems"];
    resultItems = v5->_resultItems;
    v5->_resultItems = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Payload"];
    payload = v5->_payload;
    v5->_payload = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIVisualSearchGatingResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_resultItems forKey:{@"ResultItems", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_payload forKey:@"Payload"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"resultItems: %@, ", self->_resultItems];
  [v3 appendFormat:@"payload: %@>", self->_payload];

  return v3;
}

@end