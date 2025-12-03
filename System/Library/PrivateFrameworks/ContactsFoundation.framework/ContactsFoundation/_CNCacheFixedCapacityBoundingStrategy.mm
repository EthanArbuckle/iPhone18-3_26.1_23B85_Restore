@interface _CNCacheFixedCapacityBoundingStrategy
- (NSString)description;
- (_CNCacheFixedCapacityBoundingStrategy)initWithCapacity:(unint64_t)capacity;
- (void)willUpdateCacheBy:(unint64_t)by forKey:(id)key keysToEvict:(id *)evict;
@end

@implementation _CNCacheFixedCapacityBoundingStrategy

- (_CNCacheFixedCapacityBoundingStrategy)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = _CNCacheFixedCapacityBoundingStrategy;
  v4 = [(_CNCacheFixedCapacityBoundingStrategy *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(CNQueue);
    keys = v4->_keys;
    v4->_keys = v5;

    v4->_capacity = capacity;
    v7 = v4;
  }

  return v4;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"capacity" unsignedInteger:self->_capacity];
  build = [v3 build];

  return build;
}

- (void)willUpdateCacheBy:(unint64_t)by forKey:(id)key keysToEvict:(id *)evict
{
  keyCopy = key;
  keys = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
  [keys dequeueObject:keyCopy];

  if (by == 1)
  {
    keys2 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
    [keys2 enqueue:keyCopy];
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (1)
  {
    keys3 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
    v12 = [keys3 count];
    capacity = [(_CNCacheFixedCapacityBoundingStrategy *)self capacity];

    if (v12 <= capacity)
    {
      break;
    }

    keys4 = [(_CNCacheFixedCapacityBoundingStrategy *)self keys];
    dequeue = [keys4 dequeue];
    [v10 addObject:dequeue];
  }

  *evict = [v10 copy];
}

@end