@interface FCDescription
+ (id)descriptionWithCFType:(void *)a3 format:(id)a4;
+ (id)descriptionWithObject:(id)a3 class:(Class)a4;
+ (id)descriptionWithObject:(id)a3 class:(Class)a4 format:(id)a5;
+ (id)descriptionWithObject:(id)a3 format:(id)a4;
- (FCDescription)initWithCFType:(void *)a3 header:(id)a4;
- (FCDescription)initWithObject:(id)a3;
- (FCDescription)initWithObject:(id)a3 class:(Class)a4 format:(id)a5 arguments:(char *)a6;
- (FCDescription)initWithObject:(id)a3 class:(Class)a4 header:(id)a5;
- (FCDescription)initWithObject:(id)a3 format:(id)a4;
- (id)descriptionString;
- (id)p_header;
- (void)addField:(id)a3 format:(id)a4;
- (void)addField:(id)a3 value:(id)a4;
- (void)addFieldWithFormat:(id)a3;
- (void)addSuperDescription;
@end

@implementation FCDescription

- (FCDescription)initWithObject:(id)a3 class:(Class)a4 header:(id)a5
{
  v9 = a3;
  v10 = a5;
  atomic_fetch_add(&FCDescriptionDepth, 1uLL);
  v16.receiver = self;
  v16.super_class = FCDescription;
  v11 = [(FCDescription *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, a3);
    v12->_class = a4;
    v13 = [v10 copy];
    header = v12->_header;
    v12->_header = v13;
  }

  return v12;
}

- (FCDescription)initWithCFType:(void *)a3 header:(id)a4
{
  v6 = a4;
  atomic_fetch_add(&FCDescriptionDepth, 1uLL);
  v12.receiver = self;
  v12.super_class = FCDescription;
  v7 = [(FCDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_cfType = a3;
    v9 = [v6 copy];
    header = v8->_header;
    v8->_header = v9;
  }

  return v8;
}

- (FCDescription)initWithObject:(id)a3 class:(Class)a4 format:(id)a5 arguments:(char *)a6
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a5;
  v12 = a3;
  v13 = [[v10 alloc] initWithFormat:v11 arguments:a6];

  v14 = [(FCDescription *)self initWithObject:v12 class:a4 header:v13];
  return v14;
}

- (FCDescription)initWithObject:(id)a3 format:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FCDescription *)self initWithObject:v7 class:object_getClass(v7) format:v6 arguments:&v10];

  return v8;
}

- (FCDescription)initWithObject:(id)a3
{
  v4 = a3;
  v5 = [(FCDescription *)self initWithObject:v4 class:object_getClass(v4) format:&stru_1F2DC7DC0];

  return v5;
}

+ (id)descriptionWithObject:(id)a3 class:(Class)a4 format:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[FCDescription alloc] initWithObject:v8 class:a4 format:v7 arguments:&v12];

  return v9;
}

+ (id)descriptionWithObject:(id)a3 format:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FCDescription alloc] initWithObject:v6 class:object_getClass(v6) format:v5 arguments:&v10];

  return v7;
}

+ (id)descriptionWithObject:(id)a3 class:(Class)a4
{
  v5 = a3;
  v6 = [[FCDescription alloc] initWithObject:v5 class:a4 format:&stru_1F2DC7DC0];

  return v6;
}

+ (id)descriptionWithCFType:(void *)a3 format:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:&v11];

  v8 = [[FCDescription alloc] initWithCFType:a3 header:v7];

  return v8;
}

- (id)p_header
{
  if (self->_object)
  {
    v3 = MEMORY[0x1E696AEC0];
    Name = class_getName(self->_class);
    object = self->_object;
    v6 = [v3 stringWithFormat:@"(%s*)%p%@", Name, object, self->_header];
  }

  else
  {
    cfType = self->_cfType;
    if (cfType)
    {
      v8 = CFGetTypeID(cfType);
      v9 = CFCopyTypeIDDescription(v8);
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@Ref)%p%@", v9, self->_cfType, self->_header];
      CFRelease(v9);
    }

    else
    {
      v6 = @"(void*)nil";
    }
  }

  return v6;
}

- (void)addField:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_fields)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fields = self->_fields;
    self->_fields = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fieldOrder = self->_fieldOrder;
    self->_fieldOrder = v10;
  }

  if (!v7)
  {
    v7 = @"nil";
  }

  if (v6 && [v6 length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"$$$%lu", -[NSMutableDictionary count](self->_fields, "count")];
  }
  v13 = ;

  [(NSMutableArray *)self->_fieldOrder addObject:v13];
  [(NSMutableDictionary *)self->_fields setObject:v7 forKey:v13];
  if (([v13 hasPrefix:@"$$$"] & 1) == 0)
  {
    v12 = [v13 length];
    if (v12 > self->_fieldNameWidth)
    {
      self->_fieldNameWidth = v12;
    }
  }
}

- (void)addField:(id)a3 format:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:v7 arguments:&v10];

  [(FCDescription *)self addField:v8 value:v9];
}

- (void)addFieldWithFormat:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(FCDescription *)self addField:0 value:v6];
}

- (void)addSuperDescription
{
  object = self->_object;
  v3 = self->_class;
  v6.receiver = object;
  v6.super_class = class_getSuperclass(v3);
  v5 = [(FCDescription *)&v6 description];
  [(FCDescription *)self addFieldValue:v5, v6.receiver];
}

- (id)descriptionString
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self->_fields)
  {
    goto LABEL_5;
  }

  v3 = atomic_load(&FCDescriptionDepth);
  if (v3 >= 5)
  {
    object = self->_object;
    if (objc_opt_respondsToSelector())
    {
      v5 = [self->_object shortDescription];
LABEL_6:
      v6 = v5;
      goto LABEL_31;
    }

LABEL_5:
    v5 = [(FCDescription *)self p_header];
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E696AD60];
  v8 = [(FCDescription *)self p_header];
  v6 = [v7 stringWithFormat:@"%@ {", v8];

  v32 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = self->_fieldOrder;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = v6;
    v12 = 0;
    v13 = 0;
    v14 = &stru_1F2DC7DC0;
    v15 = *v34;
    v30 = *v34;
    do
    {
      v16 = 0;
      v29 = v13;
      v17 = v13 + 1;
      v18 = v14;
      v31 = v11;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v9);
        }

        if (v17 > 0x63)
        {
          ++v12;
        }

        else
        {
          v19 = v9;
          v20 = *(*(&v33 + 1) + 8 * v16);
          v21 = [(NSMutableDictionary *)self->_fields objectForKey:v20];
          v22 = [v21 mutableCopy];

          v23 = v20;
          [v22 indentBy:self->_fieldNameWidth];
          if ([(__CFString *)v23 hasPrefix:@"$$$"])
          {

            v23 = &stru_1F2DC7DC0;
          }

          [v22 replaceCharactersInRange:0 withString:{-[__CFString length](v23, "length"), v23}];
          [v32 appendFormat:@"%@%@", v18, v22];

          v9 = v19;
          v15 = v30;
          v11 = v31;
        }

        v24 = @",\n";
        if (!self->_commaSeparated)
        {
          v24 = @"\n";
        }

        v14 = v24;

        ++v16;
        ++v17;
        v18 = v14;
      }

      while (v11 != v16);
      v13 = v11 + v29;
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);

    if (v12)
    {
      v25 = "";
      if (v12 != 1)
      {
        v25 = "s";
      }

      [v32 appendFormat:@"%@...omitting %lu field%s (set to truncate after %lu field%s)", v14, v12, v25, 99, "s"];
    }

    v6 = v28;
  }

  else
  {

    v14 = &stru_1F2DC7DC0;
  }

  while (([v32 hasSuffix:@"\n"] & 1) != 0 || objc_msgSend(v32, "hasSuffix:", @" "))
  {
    [v32 deleteCharactersInRange:{objc_msgSend(v32, "length") - 1, 1}];
  }

  [v32 indentBy:2];
  [v6 appendFormat:@"\n%@\n}", v32];

LABEL_31:
  atomic_fetch_add(&FCDescriptionDepth, 0xFFFFFFFFFFFFFFFFLL);
  v26 = *MEMORY[0x1E69E9840];

  return v6;
}

@end