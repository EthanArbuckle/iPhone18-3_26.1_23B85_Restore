@interface CNDescriptionBuilder
+ (id)descriptionBuilderWithObject:(id)object;
+ (id)descriptionForBool:(BOOL)bool;
+ (id)descriptionForObject:(id)object withNamesAndObjects:(id)objects;
- (CNDescriptionBuilder)init;
- (CNDescriptionBuilder)initWithObject:(id)object;
- (id)appendKey:(id)key;
- (id)appendKeys:(id)keys;
- (id)appendName:(id)name BOOLValue:(BOOL)value;
- (id)appendName:(id)name doubleValue:(double)value;
- (id)appendName:(id)name integerValue:(int64_t)value;
- (id)appendName:(id)name object:(id)object;
- (id)appendName:(id)name pointerValue:(void *)value;
- (id)appendName:(id)name range:(_NSRange)range;
- (id)appendName:(id)name selector:(SEL)selector;
- (id)appendName:(id)name timeInterval:(double)interval;
- (id)appendName:(id)name u_int64_t:(unint64_t)u_int64_t;
- (id)appendName:(id)name unsignedInteger:(unint64_t)integer;
- (id)appendNamesAndObjects:(id)objects args:(char *)args;
- (id)appendableDescriptionOfValue:(id)value;
- (id)build;
- (void)tryAppendKey:(id)key;
@end

@implementation CNDescriptionBuilder

- (id)build
{
  [(NSMutableString *)self->_description appendString:@">"];
  v3 = [(NSMutableString *)self->_description copy];

  return v3;
}

+ (id)descriptionBuilderWithObject:(id)object
{
  objectCopy = object;
  v4 = [[CNDescriptionBuilder alloc] initWithObject:objectCopy];

  return v4;
}

+ (id)descriptionForObject:(id)object withNamesAndObjects:(id)objects
{
  objectsCopy = objects;
  v6 = [CNDescriptionBuilder descriptionBuilderWithObject:object];
  v7 = [v6 appendNamesAndObjects:objectsCopy args:&v11];
  build = [v6 build];

  return build;
}

- (CNDescriptionBuilder)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithObject_);
  objc_exception_throw(v2);
}

- (CNDescriptionBuilder)initWithObject:(id)object
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = CNDescriptionBuilder;
  v5 = [(CNDescriptionBuilder *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    description = v6->_description;
    v6->_description = v7;

    v9 = v6->_description;
    WeakRetained = objc_loadWeakRetained(&v6->_object);
    v11 = objc_opt_class();
    v12 = objc_loadWeakRetained(&v6->_object);
    [(NSMutableString *)v9 appendFormat:@"<%@: %p", v11, v12];

    separator = v6->_separator;
    v6->_separator = @":";

    v14 = v6;
  }

  return v6;
}

- (id)appendName:(id)name object:(id)object
{
  description = self->_description;
  objectCopy = object;
  nameCopy = name;
  separator = [(CNDescriptionBuilder *)self separator];
  [(NSMutableString *)description appendString:separator];

  [(NSMutableString *)self->_description appendString:@" "];
  [(NSMutableString *)self->_description appendString:nameCopy];

  [(NSMutableString *)self->_description appendString:@"="];
  v10 = self->_description;
  v11 = [(CNDescriptionBuilder *)self appendableDescriptionOfValue:objectCopy];

  [(NSMutableString *)v10 appendString:v11];
  [(CNDescriptionBuilder *)self setSeparator:@", "];
  return self;
}

- (id)appendableDescriptionOfValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _cn_shortDescription = [valueCopy _cn_shortDescription];
  }

  else
  {
    _cn_shortDescription = [valueCopy description];

    if (!_cn_shortDescription)
    {
      _cn_shortDescription = @"(nil)";
    }
  }

  return _cn_shortDescription;
}

- (id)appendName:(id)name BOOLValue:(BOOL)value
{
  if (value)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(CNDescriptionBuilder *)self appendName:name object:v5];
  return self;
}

- (id)appendName:(id)name integerValue:(int64_t)value
{
  nameCopy = name;
  value = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", value];
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:value];

  return self;
}

- (id)appendName:(id)name unsignedInteger:(unint64_t)integer
{
  nameCopy = name;
  integer = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", integer];
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:integer];

  return self;
}

- (id)appendName:(id)name u_int64_t:(unint64_t)u_int64_t
{
  nameCopy = name;
  u_int64_t = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", u_int64_t];
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:u_int64_t];

  return self;
}

- (id)appendName:(id)name doubleValue:(double)value
{
  nameCopy = name;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&value];
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:v7];

  return self;
}

- (id)appendName:(id)name timeInterval:(double)interval
{
  nameCopy = name;
  v7 = [CNTimeIntervalFormatter stringForTimeInterval:interval];
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:v7];

  return self;
}

- (id)appendName:(id)name range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  nameCopy = name;
  v8 = (*(CNRangeShortDescription + 2))(CNRangeShortDescription, location, length);
  v9 = [(CNDescriptionBuilder *)self appendName:nameCopy object:v8];

  return self;
}

- (id)appendName:(id)name pointerValue:(void *)value
{
  nameCopy = name;
  value = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", value];
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:value];

  return self;
}

- (id)appendName:(id)name selector:(SEL)selector
{
  nameCopy = name;
  v7 = NSStringFromSelector(selector);
  v8 = [(CNDescriptionBuilder *)self appendName:nameCopy object:v7];

  return self;
}

- (id)appendNamesAndObjects:(id)objects args:(char *)args
{
  objectsCopy = objects;
  v6 = objectsCopy;
  if (objectsCopy)
  {
    v7 = objectsCopy;
    do
    {
      v8 = *args;
      v9 = [(CNDescriptionBuilder *)self appendName:v7 object:v8];
      v10 = (args + 8);
      args += 16;
      v11 = *v10;

      v7 = v11;
    }

    while (v11);
  }

  return self;
}

- (id)appendKey:(id)key
{
  keyCopy = key;
  [(CNDescriptionBuilder *)self tryAppendKey:keyCopy];

  return self;
}

- (id)appendKeys:(id)keys
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keysCopy = keys;
  v5 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(keysCopy);
        }

        [(CNDescriptionBuilder *)self tryAppendKey:*(*(&v10 + 1) + 8 * v7++), v10];
      }

      while (v5 != v7);
      v5 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)tryAppendKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = [WeakRetained valueForKey:keyCopy];

  v6 = [(CNDescriptionBuilder *)self appendObject:v5 withName:keyCopy];
}

+ (id)descriptionForBool:(BOOL)bool
{
  if (bool)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

- (void)appendKey:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exception: %{public}@", &v3, 0xCu);
  }

  objc_end_catch();
  v2 = *MEMORY[0x1E69E9840];
}

- (void)appendKeys:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exception: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end