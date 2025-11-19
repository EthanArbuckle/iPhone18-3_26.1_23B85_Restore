@interface MLRTaskResult
- (MLRTaskResult)initWithCoder:(id)a3;
- (MLRTaskResult)initWithJSONResult:(id)a3 unprivatizedVector:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLRTaskResult

- (MLRTaskResult)initWithJSONResult:(id)a3 unprivatizedVector:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MLRTaskResult;
  v9 = [(MLRTaskResult *)&v17 init];
  if (v9)
  {
    if (v7 && ([MEMORY[0x277CCAAA0] isValidJSONObject:v7] & 1) == 0)
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = *MEMORY[0x277CBE660];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"JSONResult must be valid JSON object, JSONResult=(%@)", v7];
      v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
      v16 = v15;

      objc_exception_throw(v15);
    }

    objc_storeStrong(&v9->_vector, a4);
    objc_storeStrong(&v9->_JSONResult, a3);
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\nJSONResult:\n\t%@\n", v5, self->_JSONResult];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  JSONResult = self->_JSONResult;
  v7 = v4;
  if (JSONResult)
  {
    [v4 encodeObject:JSONResult forKey:@"JSONResult"];
    v4 = v7;
  }

  vector = self->_vector;
  if (vector)
  {
    [v7 encodeObject:vector forKey:@"vector"];
    v4 = v7;
  }
}

- (MLRTaskResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v5 decodeObjectOfClasses:v10 forKey:@"JSONResult"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"vector"];

  v13 = [(MLRTaskResult *)self initWithJSONResult:v11 unprivatizedVector:v12];
  return v13;
}

@end