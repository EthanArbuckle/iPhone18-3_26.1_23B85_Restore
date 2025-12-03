@interface MLRTaskResult
- (MLRTaskResult)initWithCoder:(id)coder;
- (MLRTaskResult)initWithJSONResult:(id)result unprivatizedVector:(id)vector;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLRTaskResult

- (MLRTaskResult)initWithJSONResult:(id)result unprivatizedVector:(id)vector
{
  resultCopy = result;
  vectorCopy = vector;
  v17.receiver = self;
  v17.super_class = MLRTaskResult;
  v9 = [(MLRTaskResult *)&v17 init];
  if (v9)
  {
    if (resultCopy && ([MEMORY[0x277CCAAA0] isValidJSONObject:resultCopy] & 1) == 0)
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = *MEMORY[0x277CBE660];
      resultCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"JSONResult must be valid JSON object, JSONResult=(%@)", resultCopy];
      v15 = [v12 exceptionWithName:v13 reason:resultCopy userInfo:0];
      v16 = v15;

      objc_exception_throw(v15);
    }

    objc_storeStrong(&v9->_vector, vector);
    objc_storeStrong(&v9->_JSONResult, result);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  JSONResult = self->_JSONResult;
  v7 = coderCopy;
  if (JSONResult)
  {
    [coderCopy encodeObject:JSONResult forKey:@"JSONResult"];
    coderCopy = v7;
  }

  vector = self->_vector;
  if (vector)
  {
    [v7 encodeObject:vector forKey:@"vector"];
    coderCopy = v7;
  }
}

- (MLRTaskResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"JSONResult"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vector"];

  v13 = [(MLRTaskResult *)self initWithJSONResult:v11 unprivatizedVector:v12];
  return v13;
}

@end