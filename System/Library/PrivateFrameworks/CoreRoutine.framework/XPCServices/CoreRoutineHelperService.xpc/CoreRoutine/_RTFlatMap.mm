@interface _RTFlatMap
- (_RTFlatMap)initWithInput:(id)a3;
- (id)withBlock:(id)a3;
@end

@implementation _RTFlatMap

- (_RTFlatMap)initWithInput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _RTFlatMap;
  v6 = [(_RTFlatMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, a3);
  }

  return v7;
}

- (id)withBlock:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_input count]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_input;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObjectsFromArray:{v11, v13}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end