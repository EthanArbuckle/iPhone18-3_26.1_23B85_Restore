@interface PKPaginatedWebServiceResponse
+ (PKPaginatedWebServiceResponse)responseWithData:(id)a3;
- (PKPaginatedWebServiceResponse)initWithCoder:(id)a3;
- (PKPaginatedWebServiceResponse)initWithData:(id)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaginatedWebServiceResponse

- (PKPaginatedWebServiceResponse)initWithData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKPaginatedWebServiceResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_moreComing = [v5 PKBoolForKey:@"moreComing"];
      v6 = [v5 PKDateForKey:@"lastUpdated"];
      lastUpdated = v4->_lastUpdated;
      v4->_lastUpdated = v6;

      v8 = [v5 PKArrayContaining:objc_opt_class() forKey:@"data"];
      rawDataList = v4->_rawDataList;
      v4->_rawDataList = v8;
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        *buf = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        v14 = v13;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      rawDataList = v4;
      v4 = 0;
    }
  }

  return v4;
}

+ (PKPaginatedWebServiceResponse)responseWithData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithData:v3];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PKWebServiceResponse *)self JSONObject];
  v6 = [v3 stringWithFormat:@"<%@: %p> JSONObject: %@", v4, self, v5];

  return v6;
}

- (PKPaginatedWebServiceResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];

  v6 = [(PKPaginatedWebServiceResponse *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKWebServiceResponse *)self rawData];
  [v4 encodeObject:v5 forKey:@"rawData"];
}

@end