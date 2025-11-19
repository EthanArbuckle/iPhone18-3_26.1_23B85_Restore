@interface CNDescriptionBuilder
+ (id)descriptionBuilderWithObject:(id)a3;
+ (id)descriptionForBool:(BOOL)a3;
+ (id)descriptionForObject:(id)a3 withNamesAndObjects:(id)a4;
- (CNDescriptionBuilder)init;
- (CNDescriptionBuilder)initWithObject:(id)a3;
- (id)appendKey:(id)a3;
- (id)appendKeys:(id)a3;
- (id)appendName:(id)a3 BOOLValue:(BOOL)a4;
- (id)appendName:(id)a3 doubleValue:(double)a4;
- (id)appendName:(id)a3 integerValue:(int64_t)a4;
- (id)appendName:(id)a3 object:(id)a4;
- (id)appendName:(id)a3 pointerValue:(void *)a4;
- (id)appendName:(id)a3 range:(_NSRange)a4;
- (id)appendName:(id)a3 selector:(SEL)a4;
- (id)appendName:(id)a3 timeInterval:(double)a4;
- (id)appendName:(id)a3 u_int64_t:(unint64_t)a4;
- (id)appendName:(id)a3 unsignedInteger:(unint64_t)a4;
- (id)appendNamesAndObjects:(id)a3 args:(char *)a4;
- (id)appendableDescriptionOfValue:(id)a3;
- (id)build;
- (void)tryAppendKey:(id)a3;
@end

@implementation CNDescriptionBuilder

- (id)build
{
  [(NSMutableString *)self->_description appendString:@">"];
  v3 = [(NSMutableString *)self->_description copy];

  return v3;
}

+ (id)descriptionBuilderWithObject:(id)a3
{
  v3 = a3;
  v4 = [[CNDescriptionBuilder alloc] initWithObject:v3];

  return v4;
}

+ (id)descriptionForObject:(id)a3 withNamesAndObjects:(id)a4
{
  v5 = a4;
  v6 = [CNDescriptionBuilder descriptionBuilderWithObject:a3];
  v7 = [v6 appendNamesAndObjects:v5 args:&v11];
  v8 = [v6 build];

  return v8;
}

- (CNDescriptionBuilder)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithObject_);
  objc_exception_throw(v2);
}

- (CNDescriptionBuilder)initWithObject:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNDescriptionBuilder;
  v5 = [(CNDescriptionBuilder *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
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

- (id)appendName:(id)a3 object:(id)a4
{
  description = self->_description;
  v7 = a4;
  v8 = a3;
  v9 = [(CNDescriptionBuilder *)self separator];
  [(NSMutableString *)description appendString:v9];

  [(NSMutableString *)self->_description appendString:@" "];
  [(NSMutableString *)self->_description appendString:v8];

  [(NSMutableString *)self->_description appendString:@"="];
  v10 = self->_description;
  v11 = [(CNDescriptionBuilder *)self appendableDescriptionOfValue:v7];

  [(NSMutableString *)v10 appendString:v11];
  [(CNDescriptionBuilder *)self setSeparator:@", "];
  return self;
}

- (id)appendableDescriptionOfValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 _cn_shortDescription];
  }

  else
  {
    v4 = [v3 description];

    if (!v4)
    {
      v4 = @"(nil)";
    }
  }

  return v4;
}

- (id)appendName:(id)a3 BOOLValue:(BOOL)a4
{
  if (a4)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(CNDescriptionBuilder *)self appendName:a3 object:v5];
  return self;
}

- (id)appendName:(id)a3 integerValue:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4];
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 unsignedInteger:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a4];
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 u_int64_t:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a4];
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 doubleValue:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&a4];
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 timeInterval:(double)a4
{
  v6 = a3;
  v7 = [CNTimeIntervalFormatter stringForTimeInterval:a4];
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = (*(CNRangeShortDescription + 2))(CNRangeShortDescription, location, length);
  v9 = [(CNDescriptionBuilder *)self appendName:v7 object:v8];

  return self;
}

- (id)appendName:(id)a3 pointerValue:(void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a4];
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  v8 = [(CNDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendNamesAndObjects:(id)a3 args:(char *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = *a4;
      v9 = [(CNDescriptionBuilder *)self appendName:v7 object:v8];
      v10 = (a4 + 8);
      a4 += 16;
      v11 = *v10;

      v7 = v11;
    }

    while (v11);
  }

  return self;
}

- (id)appendKey:(id)a3
{
  v4 = a3;
  [(CNDescriptionBuilder *)self tryAppendKey:v4];

  return self;
}

- (id)appendKeys:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(CNDescriptionBuilder *)self tryAppendKey:*(*(&v10 + 1) + 8 * v7++), v10];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)tryAppendKey:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = [WeakRetained valueForKey:v7];

  v6 = [(CNDescriptionBuilder *)self appendObject:v5 withName:v7];
}

+ (id)descriptionForBool:(BOOL)a3
{
  if (a3)
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