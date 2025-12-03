@interface DebugHierarchyAbstractRequestAction
+ (id)actionWithDictionary:(id)dictionary;
- (DebugHierarchyAbstractRequestAction)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation DebugHierarchyAbstractRequestAction

+ (id)actionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (DebugHierarchyAbstractRequestAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = DebugHierarchyAbstractRequestAction;
  v5 = [(DebugHierarchyAbstractRequestAction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DebugHierarchyAbstractRequestAction *)v5 setValuesForKeysWithDictionary:dictionaryCopy];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v11 = @"actionClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  keysToArchiveViaKVC = [(DebugHierarchyAbstractRequestAction *)self keysToArchiveViaKVC];
  if ([keysToArchiveViaKVC count])
  {
    v7 = [v5 mutableCopy];
    v8 = [(DebugHierarchyAbstractRequestAction *)self dictionaryWithValuesForKeys:keysToArchiveViaKVC];
    [v7 addEntriesFromDictionary:v8];

    v9 = [v7 copy];
    v5 = v9;
  }

  return v5;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (([keyCopy isEqualToString:@"actionClass"] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = DebugHierarchyAbstractRequestAction;
    [(DebugHierarchyAbstractRequestAction *)&v8 setValue:valueCopy forUndefinedKey:keyCopy];
  }
}

@end