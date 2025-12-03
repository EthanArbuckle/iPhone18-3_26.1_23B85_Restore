@interface MADVIVisualSearchGatingResult
- (MADVIVisualSearchGatingResult)initWithCoder:(id)coder;
- (MADVIVisualSearchGatingResult)initWithResultItems:(id)items andPayload:(id)payload;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchGatingResult

- (MADVIVisualSearchGatingResult)initWithResultItems:(id)items andPayload:(id)payload
{
  itemsCopy = items;
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = MADVIVisualSearchGatingResult;
  v9 = [(MADResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultItems, items);
    objc_storeStrong(&v10->_payload, payload);
  }

  return v10;
}

- (MADVIVisualSearchGatingResult)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MADVIVisualSearchGatingResult;
  v5 = [(MADResult *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ResultItems"];
    resultItems = v5->_resultItems;
    v5->_resultItems = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Payload"];
    payload = v5->_payload;
    v5->_payload = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIVisualSearchGatingResult;
  coderCopy = coder;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_resultItems forKey:{@"ResultItems", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_payload forKey:@"Payload"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"resultItems: %@, ", self->_resultItems];
  [string appendFormat:@"payload: %@>", self->_payload];

  return string;
}

@end