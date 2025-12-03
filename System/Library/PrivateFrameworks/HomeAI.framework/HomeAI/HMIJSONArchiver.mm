@interface HMIJSONArchiver
+ (id)JSONObjectStringWithObject:(id)object pretty:(BOOL)pretty options:(int64_t)options;
+ (id)JSONObjectWithObject:(id)object options:(int64_t)options;
- (HMIJSONArchiver)init;
- (HMIJSONArchiver)initWithArray;
- (HMIJSONArchiver)initWithDictionary;
- (NSString)objectJSON;
- (NSString)objectPrettyJSON;
- (id)_JSONObjectWithObject:(id)object options:(int64_t)options;
- (id)_valueForNumber:(id)number;
- (void)_addClassToContainer:(Class)container;
- (void)_addValueToContainer:(id)container forKey:(id)key;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation HMIJSONArchiver

- (HMIJSONArchiver)init
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    container = v2->_container;
    v2->_container = array;

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
    array = [MEMORY[0x277CBEB18] array];
    container = v2->_container;
    v2->_container = array;

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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    container = v2->_container;
    v2->_container = dictionary;

    v2->_options = 0;
  }

  return v2;
}

- (void)_addClassToContainer:(Class)container
{
  v4 = NSStringFromClass(container);
  [(HMIJSONArchiver *)self _addValueToContainer:v4 forKey:@"$"];
}

- (void)_addValueToContainer:(id)container forKey:(id)key
{
  containerCopy = container;
  keyCopy = key;
  if ([(HMIJSONArchiver *)self _containerIsArray])
  {
    [self->_container addObject:containerCopy];
  }

  else if (containerCopy)
  {
    [self->_container setValue:containerCopy forKey:keyCopy];
  }
}

- (id)_JSONObjectWithObject:(id)object options:(int64_t)options
{
  objectCopy = object;
  if (!objectCopy)
  {
    goto LABEL_12;
  }

  null = [MEMORY[0x277CBEB68] null];

  if (null == objectCopy)
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
        null2 = [(HMIJSONArchiver *)self _valueForNumber:objectCopy];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        initWithDictionary = objc_alloc_init(MEMORY[0x277CCAA68]);
        object = [(HMIJSONArchiver *)initWithDictionary stringFromDate:objectCopy];
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
          v14[5] = options;
          null2 = [objectCopy na_map:v14];
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
          v13[5] = options;
          null2 = [objectCopy na_dictionaryByMappingValues:v13];
          goto LABEL_16;
        }

        initWithDictionary = [[HMIJSONArchiver alloc] initWithDictionary];
        [(HMIJSONArchiver *)initWithDictionary setOptions:options];
        [(HMIJSONArchiver *)initWithDictionary _addClassToContainer:objc_opt_class()];
        [objectCopy encodeWithCoder:initWithDictionary];
        object = [(HMIJSONArchiver *)initWithDictionary object];
LABEL_10:
        v11 = object;

        goto LABEL_17;
      }

      if (options)
      {
        initWithDictionary = [objectCopy base64EncodedStringWithOptions:0];
        object = [MEMORY[0x277CCACA8] stringWithFormat:@"data:base64, %@", initWithDictionary];;
        goto LABEL_10;
      }

LABEL_15:
      null2 = [MEMORY[0x277CBEB68] null];
      goto LABEL_16;
    }
  }

  null2 = objectCopy;
LABEL_16:
  v11 = null2;
LABEL_17:

  return v11;
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  v4 = *&int32;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInt:v4];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:keyCopy];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:int64];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v9 = [v6 numberWithDouble:double];
  v8 = [(HMIJSONArchiver *)self _valueForNumber:v9];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:keyCopy];
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:keyCopy];
}

- (id)_valueForNumber:(id)number
{
  v3 = MEMORY[0x277CCA980];
  v4 = MEMORY[0x277CCACA8];
  [number floatValue];
  v6 = [v4 stringWithFormat:@"%.6f", v5];
  v7 = [v3 decimalNumberWithString:v6];

  return v7;
}

- (void)encodeObject:(id)object forKey:(id)key
{
  options = self->_options;
  keyCopy = key;
  v8 = [(HMIJSONArchiver *)self _JSONObjectWithObject:object options:options];
  [(HMIJSONArchiver *)self _addValueToContainer:v8 forKey:keyCopy];
}

- (NSString)objectJSON
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  object = [(HMIJSONArchiver *)self object];
  v6 = [v4 dataWithJSONObject:object options:10 error:0];
  v7 = [v3 initWithData:v6 encoding:4];

  return v7;
}

- (NSString)objectPrettyJSON
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  object = [(HMIJSONArchiver *)self object];
  v6 = [v4 dataWithJSONObject:object options:11 error:0];
  v7 = [v3 initWithData:v6 encoding:4];

  return v7;
}

+ (id)JSONObjectWithObject:(id)object options:(int64_t)options
{
  objectCopy = object;
  v6 = objc_alloc_init(HMIJSONArchiver);
  [(HMIJSONArchiver *)v6 setOptions:options];
  v7 = [(HMIJSONArchiver *)v6 _JSONObjectWithObject:objectCopy options:options];

  return v7;
}

+ (id)JSONObjectStringWithObject:(id)object pretty:(BOOL)pretty options:(int64_t)options
{
  prettyCopy = pretty;
  v6 = [self JSONObjectWithObject:object options:options];
  if (prettyCopy)
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