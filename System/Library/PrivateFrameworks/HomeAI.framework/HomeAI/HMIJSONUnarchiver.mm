@interface HMIJSONUnarchiver
+ (id)objectWithJSONData:(id)a3 classMap:(id)a4;
+ (id)objectWithJSONObject:(id)a3 classMap:(id)a4;
+ (id)objectWithJSONObjectString:(id)a3 classMap:(id)a4;
- (BOOL)decodeBoolForKey:(id)a3;
- (HMIJSONUnarchiver)initWithJSONObject:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (id)_objectWithJSONObject:(id)a3 allowedClasses:(id)a4;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (int)decodeInt32ForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
@end

@implementation HMIJSONUnarchiver

- (HMIJSONUnarchiver)initWithJSONObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMIJSONUnarchiver;
  v6 = [(HMIJSONUnarchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
  }

  return v7;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v3 = [self->_container objectForKeyedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  v3 = [self->_container objectForKeyedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v3 = [self->_container objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (double)decodeDoubleForKey:(id)a3
{
  v3 = [self->_container objectForKeyedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)_objectWithJSONObject:(id)a3 allowedClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v8 = [MEMORY[0x277CBEB68] null];

  if (v8 == v6)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v9 hasPrefix:{@"data:base64, "}] || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v9), v10 = v9 = v6;
    {
      if (![v9 hasSuffix:@"Z"] || (v12 = objc_alloc_init(MEMORY[0x277CCAA68]), objc_msgSend(v12, "dateFromString:", v9), v11 = objc_claimAutoreleasedReturnValue(), v12, !v11))
      {
        v11 = v9;
      }
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_11:
    v11 = v6;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__HMIJSONUnarchiver__objectWithJSONObject_allowedClasses___block_invoke;
    v32[3] = &unk_2787546F8;
    v32[4] = self;
    v33 = v7;
    v11 = [v6 na_map:v32];

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE658];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid JSONObject: %@", objc_opt_class()];
    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  v9 = v6;
  v13 = [v9 objectForKeyedSubscript:@"$"];
  if (v13)
  {
    v14 = [(HMIJSONUnarchiver *)self classMap];
    v15 = [v14 objectForKeyedSubscript:v13];

    if (!v15)
    {
      v16 = NSClassFromString(v13);
      if (!v16)
      {
        v25 = MEMORY[0x277CBEAD8];
        v26 = *MEMORY[0x277CBE658];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid JSONObject class name: %@", v13];
        v28 = [v25 exceptionWithName:v26 reason:v27 userInfo:0];
        v29 = v28;

        objc_exception_throw(v28);
      }

      v15 = v16;
    }

    v17 = [[HMIJSONUnarchiver alloc] initWithJSONObject:v9];
    v18 = [(HMIJSONUnarchiver *)self classMap];
    [(HMIJSONUnarchiver *)v17 setClassMap:v18];

    v11 = [[v15 alloc] initWithCoder:v17];
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__HMIJSONUnarchiver__objectWithJSONObject_allowedClasses___block_invoke_2;
    v30[3] = &unk_278754720;
    v30[4] = self;
    v31 = v7;
    v11 = [v9 na_dictionaryByMappingValues:v30];
  }

LABEL_22:
LABEL_23:

  return v11;
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4
{
  v6 = [self->_container objectForKeyedSubscript:a4];
  v7 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v8 = [(HMIJSONUnarchiver *)self _objectWithJSONObject:v6 allowedClasses:v7];

  return v8;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  container = self->_container;
  v7 = a3;
  v8 = [container objectForKeyedSubscript:a4];
  v9 = [(HMIJSONUnarchiver *)self _objectWithJSONObject:v8 allowedClasses:v7];

  return v9;
}

+ (id)objectWithJSONObject:(id)a3 classMap:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HMIJSONUnarchiver);
  [(HMIJSONUnarchiver *)v7 setClassMap:v5];

  v8 = [(HMIJSONUnarchiver *)v7 _objectWithJSONObject:v6 allowedClasses:0];

  return v8;
}

+ (id)objectWithJSONObjectString:(id)a3 classMap:(id)a4
{
  v6 = a4;
  v7 = [a3 dataUsingEncoding:4];
  v8 = [a1 objectWithJSONData:v7 classMap:v6];

  return v8;
}

+ (id)objectWithJSONData:(id)a3 classMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:4 error:&v17];
  v9 = v17;
  if (!v8)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot parse JSON data: %@", v9];
    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v10 = [a1 objectWithJSONObject:v8 classMap:v7];

  return v10;
}

@end