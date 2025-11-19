@interface DebugHierarchyAbstractRequestAction
+ (id)actionWithDictionary:(id)a3;
- (DebugHierarchyAbstractRequestAction)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation DebugHierarchyAbstractRequestAction

+ (id)actionWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (DebugHierarchyAbstractRequestAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DebugHierarchyAbstractRequestAction;
  v5 = [(DebugHierarchyAbstractRequestAction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DebugHierarchyAbstractRequestAction *)v5 setValuesForKeysWithDictionary:v4];
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

  v6 = [(DebugHierarchyAbstractRequestAction *)self keysToArchiveViaKVC];
  if ([v6 count])
  {
    v7 = [v5 mutableCopy];
    v8 = [(DebugHierarchyAbstractRequestAction *)self dictionaryWithValuesForKeys:v6];
    [v7 addEntriesFromDictionary:v8];

    v9 = [v7 copy];
    v5 = v9;
  }

  return v5;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:@"actionClass"] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = DebugHierarchyAbstractRequestAction;
    [(DebugHierarchyAbstractRequestAction *)&v8 setValue:v6 forUndefinedKey:v7];
  }
}

@end