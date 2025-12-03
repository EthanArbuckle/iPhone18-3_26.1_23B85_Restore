@interface CalDescriptionBuilder
- (CalDescriptionBuilder)initWithSuperclassDescription:(id)description;
- (id)build;
- (id)description;
- (void)setKey:(id)key withBoolean:(BOOL)boolean;
- (void)setKey:(id)key withCGColor:(const CGColor *)color;
- (void)setKey:(id)key withChar:(char)char;
- (void)setKey:(id)key withCharArray:(const char *)array;
- (void)setKey:(id)key withClass:(Class)class;
- (void)setKey:(id)key withDouble:(double)double;
- (void)setKey:(id)key withEnumNumericalValue:(int64_t)value andStringValue:(id)stringValue;
- (void)setKey:(id)key withFloat:(float)float;
- (void)setKey:(id)key withInteger:(int64_t)integer;
- (void)setKey:(id)key withLong:(int64_t)long;
- (void)setKey:(id)key withLongLong:(int64_t)long;
- (void)setKey:(id)key withObject:(id)object;
- (void)setKey:(id)key withPointerAddress:(const void *)address;
- (void)setKey:(id)key withSelector:(SEL)selector;
- (void)setKey:(id)key withShort:(signed __int16)short;
- (void)setKey:(id)key withSize:(unint64_t)size;
- (void)setKey:(id)key withUnsignedInteger:(unint64_t)integer;
- (void)setKey:(id)key withUnsignedLong:(unint64_t)long;
- (void)setKey:(id)key withUnsignedLongLong:(unint64_t)long;
@end

@implementation CalDescriptionBuilder

- (id)build
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  allKeys = [descriptionUnderConstruction allKeys];
  superclassDescription = [(CalDescriptionBuilder *)self superclassDescription];
  if (superclassDescription)
  {
    [v3 appendString:superclassDescription];
  }

  if ([(CalDescriptionBuilder *)self sortedByKey])
  {
    v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_40];

    allKeys = v7;
  }

  keyDelimiter = [(CalDescriptionBuilder *)self keyDelimiter];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__CalDescriptionBuilder_build__block_invoke_2;
  v16[3] = &unk_1E7EC79C0;
  v17 = descriptionUnderConstruction;
  v18 = superclassDescription;
  v9 = v3;
  v19 = v9;
  v20 = keyDelimiter;
  v10 = keyDelimiter;
  v11 = superclassDescription;
  v12 = descriptionUnderConstruction;
  [allKeys enumerateObjectsUsingBlock:v16];
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

- (CalDescriptionBuilder)initWithSuperclassDescription:(id)description
{
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = CalDescriptionBuilder;
  v6 = [(CalDescriptionBuilder *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_superclassDescription, description);
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
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  allKeys = [descriptionUnderConstruction allKeys];
  [v3 appendFormat:@" Keys: [%@]", allKeys];

  v7 = CalBooleanAsString([(CalDescriptionBuilder *)self sortedByKey]);
  [v3 appendFormat:@" Sorted by key: [%@]", v7];

  keyDelimiter = [(CalDescriptionBuilder *)self keyDelimiter];
  [v3 appendFormat:@" Key delimiter: [%@]", keyDelimiter];

  superclassDescription = [(CalDescriptionBuilder *)self superclassDescription];
  [v3 appendFormat:@" Superclass description: [%@]", superclassDescription];

  return v3;
}

- (void)setKey:(id)key withEnumNumericalValue:(int64_t)value andStringValue:(id)stringValue
{
  stringValueCopy = stringValue;
  v8 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v10 = [v8 alloc];
  if (stringValueCopy)
  {
    stringValueCopy = [v10 initWithFormat:@"%ld (%@)", value, stringValueCopy];
  }

  else
  {
    stringValueCopy = [v10 initWithFormat:@"%ld", value, v14];
  }

  v12 = stringValueCopy;
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:v12 forKey:keyCopy];
}

- (void)setKey:(id)key withObject:(id)object
{
  keyCopy = key;
  objectCopy = object;
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  v8 = descriptionUnderConstruction;
  if (objectCopy)
  {
    [descriptionUnderConstruction setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v8 setObject:null forKey:keyCopy];
  }
}

- (void)setKey:(id)key withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  keyCopy = key;
  v8 = CalBooleanAsString(booleanCopy);
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:v8 forKey:keyCopy];
}

- (void)setKey:(id)key withChar:(char)char
{
  charCopy = char;
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  charCopy = [[v6 alloc] initWithFormat:@"%c", charCopy];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:charCopy forKey:keyCopy];
}

- (void)setKey:(id)key withCharArray:(const char *)array
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v9 = [v6 stringWithUTF8String:array];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:v9 forKey:keyCopy];
}

- (void)setKey:(id)key withDouble:(double)double
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v9 = [[v6 alloc] initWithFormat:@"%f", *&double];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:v9 forKey:keyCopy];
}

- (void)setKey:(id)key withFloat:(float)float
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  float = [[v6 alloc] initWithFormat:@"%f", float];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:float forKey:keyCopy];
}

- (void)setKey:(id)key withInteger:(int64_t)integer
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  integer = [[v6 alloc] initWithFormat:@"%ld", integer];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:integer forKey:keyCopy];
}

- (void)setKey:(id)key withLong:(int64_t)long
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  long = [[v6 alloc] initWithFormat:@"%ld", long];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:long forKey:keyCopy];
}

- (void)setKey:(id)key withLongLong:(int64_t)long
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  long = [[v6 alloc] initWithFormat:@"%lld", long];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:long forKey:keyCopy];
}

- (void)setKey:(id)key withShort:(signed __int16)short
{
  shortCopy = short;
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  shortCopy = [[v6 alloc] initWithFormat:@"%hi", shortCopy];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:shortCopy forKey:keyCopy];
}

- (void)setKey:(id)key withUnsignedInteger:(unint64_t)integer
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  integer = [[v6 alloc] initWithFormat:@"%lu", integer];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:integer forKey:keyCopy];
}

- (void)setKey:(id)key withUnsignedLong:(unint64_t)long
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  long = [[v6 alloc] initWithFormat:@"%lu", long];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:long forKey:keyCopy];
}

- (void)setKey:(id)key withUnsignedLongLong:(unint64_t)long
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  long = [[v6 alloc] initWithFormat:@"%llu", long];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:long forKey:keyCopy];
}

- (void)setKey:(id)key withCGColor:(const CGColor *)color
{
  keyCopy = key;
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  Components = CGColorGetComponents(color);
  for (i = [MEMORY[0x1E696AD60] string];
  {
    v9 = *Components++;
    [i appendFormat:@"%f", v9];
  }

  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  v11 = [i copy];
  [descriptionUnderConstruction setObject:v11 forKey:keyCopy];
}

- (void)setKey:(id)key withClass:(Class)class
{
  keyCopy = key;
  [(CalDescriptionBuilder *)self setKey:keyCopy withCharArray:class_getName(class)];
}

- (void)setKey:(id)key withPointerAddress:(const void *)address
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  address = [[v6 alloc] initWithFormat:@"%p", address];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:address forKey:keyCopy];
}

- (void)setKey:(id)key withSelector:(SEL)selector
{
  keyCopy = key;
  [(CalDescriptionBuilder *)self setKey:keyCopy withCharArray:sel_getName(selector)];
}

- (void)setKey:(id)key withSize:(unint64_t)size
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v9 = [[v6 alloc] initWithFormat:@"%zd", size];
  descriptionUnderConstruction = [(CalDescriptionBuilder *)self descriptionUnderConstruction];
  [descriptionUnderConstruction setObject:v9 forKey:keyCopy];
}

@end