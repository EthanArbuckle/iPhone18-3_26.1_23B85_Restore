@interface _CNCacheFixedCapacityBoundingStrategy
- (NSString)description;
- (_CNCacheFixedCapacityBoundingStrategy)initWithCapacity:(unint64_t)a3;
- (void)willUpdateCacheBy:(unint64_t)a3 forKey:(id)a4 keysToEvict:(id *)a5;
@end

@implementation _CNCacheFixedCapacityBoundingStrategy

- (_CNCacheFixedCapacityBoundingStrategy)initWithCapacity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = _CNCacheFixedCapacityBoundingStrategy;
  v4 = [(_CNCacheFixedCapacityBoundingStrategy *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(CNQueue);
    keys = v4->_keys;
    v4->_keys = v5;

    v4->_capacity = a3;
    v7 = v4;
  }

  return v4;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"capacity" unsignedInteger:self->_capacity];
  v5 = [v3 build];

  return v5;
}

- (void)willUpdateCacheBy:(unint64_t)a3 forKey:(id)a4 keysToEvict:(id *)a5
{
  v16 = a4;
  v8 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
  [v8 dequeueObject:v16];

  if (a3 == 1)
  {
    v9 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
    [v9 enqueue:v16];
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (1)
  {
    v11 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
    v12 = [v11 count];
    v13 = [(_CNCacheFixedCapacityBoundingStrategy *)self capacity];

    if (v12 <= v13)
    {
      break;
    }

    v14 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
    v15 = [v14 dequeue];
    [v10 addObject:v15];
  }

  *a5 = [v10 copy];
}

@end