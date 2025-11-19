@interface NSMapTable(PKAdditions)
+ (id)pk_copiedToWeakObjectsMapTable;
+ (id)pk_strongPointerPersonalityToWeakObjectsMapTable;
+ (id)pk_strongToWeakObjectsMapTable;
+ (id)pk_weakPointerPersonalityToStrongObjectsMapTable;
+ (uint64_t)pk_createStrongPointerPersonalityToStrongObjects;
+ (uint64_t)pk_createStrongPointerPersonalityToWeakObjects;
+ (uint64_t)pk_createWeakPointerPersonalityToStrongObjects;
+ (uint64_t)pk_createWeakPointerPersonalityToWeakObjects;
@end

@implementation NSMapTable(PKAdditions)

+ (id)pk_copiedToWeakObjectsMapTable
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:0];

  return v0;
}

+ (id)pk_strongPointerPersonalityToWeakObjectsMapTable
{
  v1 = [a1 pk_createStrongPointerPersonalityToWeakObjects];

  return v1;
}

+ (uint64_t)pk_createStrongPointerPersonalityToWeakObjects
{
  v0 = objc_alloc(MEMORY[0x1E696AD18]);

  return [v0 initWithKeyOptions:512 valueOptions:5 capacity:0];
}

+ (uint64_t)pk_createStrongPointerPersonalityToStrongObjects
{
  v0 = objc_alloc(MEMORY[0x1E696AD18]);

  return [v0 initWithKeyOptions:512 valueOptions:0 capacity:0];
}

+ (uint64_t)pk_createWeakPointerPersonalityToStrongObjects
{
  v0 = objc_alloc(MEMORY[0x1E696AD18]);

  return [v0 initWithKeyOptions:517 valueOptions:0 capacity:0];
}

+ (uint64_t)pk_createWeakPointerPersonalityToWeakObjects
{
  v0 = objc_alloc(MEMORY[0x1E696AD18]);

  return [v0 initWithKeyOptions:517 valueOptions:5 capacity:0];
}

+ (id)pk_weakPointerPersonalityToStrongObjectsMapTable
{
  v1 = [a1 pk_createWeakPointerPersonalityToStrongObjects];

  return v1;
}

+ (id)pk_strongToWeakObjectsMapTable
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];

  return v0;
}

@end