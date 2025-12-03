@interface MSObjectWrapper
+ (id)objectsFromWrappers:(id)wrappers;
+ (id)objectsFromWrappers:(id)wrappers equalToObject:(id)object;
+ (id)wrapperWithObject:(id)object size:(int64_t)size;
+ (int64_t)indexOfObject:(id)object inWrapperArray:(id)array;
- (MSObjectWrapper)initWithObject:(id)object size:(int64_t)size;
@end

@implementation MSObjectWrapper

- (MSObjectWrapper)initWithObject:(id)object size:(int64_t)size
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MSObjectWrapper;
  v8 = [(MSObjectWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, object);
    v9->_size = size;
  }

  return v9;
}

+ (id)objectsFromWrappers:(id)wrappers equalToObject:(id)object
{
  v23 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  objectCopy = object;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(wrappersCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = wrappersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        object = [v13 object];
        if ([object isEqual:objectCopy])
        {
          object2 = [v13 object];
          [v7 addObject:object2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)objectsFromWrappers:(id)wrappers
{
  v18 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(wrappersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = wrappersCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        object = [*(*(&v13 + 1) + 8 * i) object];
        if (object)
        {
          [v4 addObject:object];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int64_t)indexOfObject:(id)object inWrapperArray:(id)array
{
  objectCopy = object;
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [arrayCopy objectAtIndex:v7];
      object = [v8 object];
      v10 = [object isEqual:objectCopy];

      if (v10)
      {
        break;
      }

      if (++v7 >= [arrayCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

+ (id)wrapperWithObject:(id)object size:(int64_t)size
{
  objectCopy = object;
  v7 = [[self alloc] initWithObject:objectCopy size:size];

  return v7;
}

@end