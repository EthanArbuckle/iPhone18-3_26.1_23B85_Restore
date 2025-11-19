@interface COMTPerformActionResponse
- (COMTPerformActionResponse)initWithCoder:(id)a3;
- (COMTPerformActionResponse)initWithResults:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTPerformActionResponse

- (COMTPerformActionResponse)initWithResults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COMTPerformActionResponse;
  v5 = [(COMessageChannelResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    results = v5->_results;
    v5->_results = v6;
  }

  return v5;
}

- (COMTPerformActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = COMTPerformActionResponse;
  v5 = [(COMessageChannelResponse *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"RR"];
    v16 = [v15 copy];
    results = v5->_results;
    v5->_results = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMTPerformActionResponse;
  v4 = a3;
  [(COMessageChannelResponse *)&v6 encodeWithCoder:v4];
  v5 = [(COMTPerformActionResponse *)self results:v6.receiver];
  [v4 encodeObject:v5 forKey:@"RR"];
}

@end