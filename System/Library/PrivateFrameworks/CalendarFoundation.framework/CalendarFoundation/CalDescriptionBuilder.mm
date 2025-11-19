@interface CalDescriptionBuilder
- (CalDescriptionBuilder)initWithSuperclassDescription:(id)a3;
- (id)build;
- (id)description;
- (void)setKey:(id)a3 withBoolean:(BOOL)a4;
- (void)setKey:(id)a3 withCGColor:(const CGColor *)a4;
- (void)setKey:(id)a3 withChar:(char)a4;
- (void)setKey:(id)a3 withCharArray:(const char *)a4;
- (void)setKey:(id)a3 withClass:(Class)a4;
- (void)setKey:(id)a3 withDouble:(double)a4;
- (void)setKey:(id)a3 withEnumNumericalValue:(int64_t)a4 andStringValue:(id)a5;
- (void)setKey:(id)a3 withFloat:(float)a4;
- (void)setKey:(id)a3 withInteger:(int64_t)a4;
- (void)setKey:(id)a3 withLong:(int64_t)a4;
- (void)setKey:(id)a3 withLongLong:(int64_t)a4;
- (void)setKey:(id)a3 withObject:(id)a4;
- (void)setKey:(id)a3 withPointerAddress:(const void *)a4;
- (void)setKey:(id)a3 withSelector:(SEL)a4;
- (void)setKey:(id)a3 withShort:(signed __int16)a4;
- (void)setKey:(id)a3 withSize:(unint64_t)a4;
- (void)setKey:(id)a3 withUnsignedInteger:(unint64_t)a4;
- (void)setKey:(id)a3 withUnsignedLong:(unint64_t)a4;
- (void)setKey:(id)a3 withUnsignedLongLong:(unint64_t)a4;
@end

@implementation CalDescriptionBuilder

- (id)build
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  v5 = [v4 allKeys];
  v6 = [(CalDescriptionBuilder *)self superclassDescription];
  if (v6)
  {
    [v3 appendString:v6];
  }

  if ([(CalDescriptionBuilder *)self sortedByKey])
  {
    v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_40];

    v5 = v7;
  }

  v8 = [(CalDescriptionBuilder *)self keyDelimiter];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__CalDescriptionBuilder_build__block_invoke_2;
  v16[3] = &unk_1E7EC79C0;
  v17 = v4;
  v18 = v6;
  v9 = v3;
  v19 = v9;
  v20 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v4;
  [v5 enumerateObjectsUsingBlock:v16];
  v13 = v20;
  v14 = v9;

  return v9;
}

void __30__CalDescriptionBuilder_build__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectForKey:?];
  if (a3 || *(a1 + 40))
  {
    [*(a1 + 48) appendFormat:@"%@%@: [%@]", *(a1 + 56), v7, v5];
  }

  else
  {
    [*(a1 + 48) appendFormat:@"%@: [%@]", v7, v5, v6];
  }
}

- (CalDescriptionBuilder)initWithSuperclassDescription:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CalDescriptionBuilder;
  v6 = [(CalDescriptionBuilder *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_superclassDescription, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    descriptionUnderConstruction = v7->_descriptionUnderConstruction;
    v7->_descriptionUnderConstruction = v8;

    v7->_sortedByKey = 1;
    keyDelimiter = v7->_keyDelimiter;
    v7->_keyDelimiter = @", ";
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11.receiver = self;
  v11.super_class = CalDescriptionBuilder;
  v4 = [(CalDescriptionBuilder *)&v11 description];
  [v3 appendFormat:@"[%@]", v4];
  v5 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  v6 = [v5 allKeys];
  [v3 appendFormat:@" Keys: [%@]", v6];

  v7 = CalBooleanAsString([(CalDescriptionBuilder *)self sortedByKey]);
  [v3 appendFormat:@" Sorted by key: [%@]", v7];

  v8 = [(CalDescriptionBuilder *)self keyDelimiter];
  [v3 appendFormat:@" Key delimiter: [%@]", v8];

  v9 = [(CalDescriptionBuilder *)self superclassDescription];
  [v3 appendFormat:@" Superclass description: [%@]", v9];

  return v3;
}

- (void)setKey:(id)a3 withEnumNumericalValue:(int64_t)a4 andStringValue:(id)a5
{
  v15 = a5;
  v8 = MEMORY[0x1E696AEC0];
  v9 = a3;
  v10 = [v8 alloc];
  if (v15)
  {
    v11 = [v10 initWithFormat:@"%ld (%@)", a4, v15];
  }

  else
  {
    v11 = [v10 initWithFormat:@"%ld", a4, v14];
  }

  v12 = v11;
  v13 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v13 setObject:v12 forKey:v9];
}

- (void)setKey:(id)a3 withObject:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKey:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
    [v8 setObject:v9 forKey:v10];
  }
}

- (void)setKey:(id)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = CalBooleanAsString(v4);
  v7 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v7 setObject:v8 forKey:v6];
}

- (void)setKey:(id)a3 withChar:(char)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%c", v4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withCharArray:(const char *)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [v6 stringWithUTF8String:a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withDouble:(double)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%f", *&a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withFloat:(float)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%f", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withInteger:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%ld", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withLong:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%ld", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withLongLong:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%lld", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withShort:(signed __int16)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%hi", v4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withUnsignedInteger:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%lu", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withUnsignedLong:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%lu", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withUnsignedLongLong:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%llu", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withCGColor:(const CGColor *)a4
{
  v12 = a3;
  NumberOfComponents = CGColorGetNumberOfComponents(a4);
  Components = CGColorGetComponents(a4);
  for (i = [MEMORY[0x1E696AD60] string];
  {
    v9 = *Components++;
    [i appendFormat:@"%f", v9];
  }

  v10 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  v11 = [i copy];
  [v10 setObject:v11 forKey:v12];
}

- (void)setKey:(id)a3 withClass:(Class)a4
{
  v6 = a3;
  [(CalDescriptionBuilder *)self setKey:v6 withCharArray:class_getName(a4)];
}

- (void)setKey:(id)a3 withPointerAddress:(const void *)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%p", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

- (void)setKey:(id)a3 withSelector:(SEL)a4
{
  v6 = a3;
  [(CalDescriptionBuilder *)self setKey:v6 withCharArray:sel_getName(a4)];
}

- (void)setKey:(id)a3 withSize:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%zd", a4];
  v8 = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [v8 setObject:v9 forKey:v7];
}

@end