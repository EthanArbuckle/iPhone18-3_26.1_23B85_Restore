@interface HMIJSONArchiver
+ (id)JSONObjectStringWithObject:(id)a3 pretty:(BOOL)a4 options:(int64_t)a5;
+ (id)JSONObjectWithObject:(id)a3 options:(int64_t)a4;
- (HMIJSONArchiver)init;
- (HMIJSONArchiver)initWithArray;
- (HMIJSONArchiver)initWithDictionary;
- (NSString)objectJSON;
- (NSString)objectPrettyJSON;
- (id)_JSONObjectWithObject:(id)a3 options:(int64_t)a4;
- (id)_valueForNumber:(id)a3;
- (void)_addClassToContainer:(Class)a3;
- (void)_addValueToContainer:(id)a3 forKey:(id)a4;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeInt32:(int)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation HMIJSONArchiver

- (HMIJSONArchiver)init
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    container = v2->_container;
    v2->_container = v3;

    v2->_options = 0;
  }

  return v2;
}

- (HMIJSONArchiver)initWithArray
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    container = v2->_container;
    v2->_container = v3;

    v2->_options = 0;
  }

  return v2;
}

- (HMIJSONArchiver)initWithDictionary
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    container = v2->_container;
    v2->_container = v3;

    v2->_options = 0;
  }

  return v2;
}

- (void)_addClassToContainer:(Class)a3
{
  v4 = NSStringFromClass(a3);
  [(HMIJSONArchiver *)self _addValueToContainer:v4 forKey:@"$"];
}

- (void)_addValueToContainer:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(HMIJSONArchiver *)self _containerIsArray])
  {
    [self->_container addObject:v7];
  }

  else if (v7)
  {
    [self->_container setValue:v7 forKey:v6];
  }
}

- (id)_JSONObjectWithObject:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = [MEMORY[0x277CBEB68] null];

  if (v7 == v6)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [(HMIJSONArchiver *)self _valueForNumber:v6];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_alloc_init(MEMORY[0x277CCAA68]);
        v10 = [(HMIJSONArchiver *)v9 stringFromDate:v6];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __49__HMIJSONArchiver__JSONObjectWithObject_options___block_invoke;
          v14[3] = &unk_2787546A8;
          v14[4] = self;
          v14[5] = a4;
          v8 = [v6 na_map:v14];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __49__HMIJSONArchiver__JSONObjectWithObject_options___block_invoke_2;
          v13[3] = &unk_2787546D0;
          v13[4] = self;
          v13[5] = a4;
          v8 = [v6 na_dictionaryByMappingValues:v13];
          goto LABEL_16;
        }

        v9 = [[HMIJSONArchiver alloc] initWithDictionary];
        [(HMIJSONArchiver *)v9 setOptions:a4];
        [(HMIJSONArchiver *)v9 _addClassToContainer:objc_opt_class()];
        [v6 encodeWithCoder:v9];
        v10 = [(HMIJSONArchiver *)v9 object];
LABEL_10:
        v11 = v10;

        goto LABEL_17;
      }

      if (a4)
      {
        v9 = [v6 base64EncodedStringWithOptions:0];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"data:base64, %@", v9];;
        goto LABEL_10;
      }

LABEL_15:
      v8 = [MEMORY[0x277CBEB68] null];
      goto LABEL_16;
    }
  }

  v8 = v6;
LABEL_16:
  v11 = v8;
LABEL_17:

  return v11;
}

- (void)encodeInt32:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:v4];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:v7];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:v7];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v9 = [v6 numberWithDouble:a3];
  v8 = [(HMIJSONArchiver *)self _valueForNumber:v9];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:v7];
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:v7];
}

- (id)_valueForNumber:(id)a3
{
  v3 = MEMORY[0x277CCA980];
  v4 = MEMORY[0x277CCACA8];
  [a3 floatValue];
  v6 = [v4 stringWithFormat:@"%.6f", v5];
  v7 = [v3 decimalNumberWithString:v6];

  return v7;
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  options = self->_options;
  v7 = a4;
  v8 = [(HMIJSONArchiver *)self _JSONObjectWithObject:a3 options:options];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:v7];
}

- (NSString)objectJSON
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  v5 = [(HMIJSONArchiver *)self object];
  v6 = [v4 dataWithJSONObject:v5 options:10 error:0];
  v7 = [v3 initWithData:v6 encoding:4];

  return v7;
}

- (NSString)objectPrettyJSON
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  v5 = [(HMIJSONArchiver *)self object];
  v6 = [v4 dataWithJSONObject:v5 options:11 error:0];
  v7 = [v3 initWithData:v6 encoding:4];

  return v7;
}

+ (id)JSONObjectWithObject:(id)a3 options:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMIJSONArchiver);
  [(HMIJSONArchiver *)v6 setOptions:a4];
  v7 = [(HMIJSONArchiver *)v6 _JSONObjectWithObject:v5 options:a4];

  return v7;
}

+ (id)JSONObjectStringWithObject:(id)a3 pretty:(BOOL)a4 options:(int64_t)a5
{
  v5 = a4;
  v6 = [a1 JSONObjectWithObject:a3 options:a5];
  if (v5)
  {
    v7 = 15;
  }

  else
  {
    v7 = 14;
  }

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:v7 error:0];
  v10 = [v8 initWithData:v9 encoding:4];

  return v10;
}

@end