@interface NSPointerArray
- (unint64_t)dbg_indexOfObjectIdenticalTo:(id)a3;
- (void)dbg_removeObject:(id)a3;
@end

@implementation NSPointerArray

- (void)dbg_removeObject:(id)a3
{
  v6 = a3;
  v4 = [(NSPointerArray *)self dbg_indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSPointerArray *)self dbg_indexOfObjectIdenticalTo:v6])
    {
      [(NSPointerArray *)self removePointerAtIndex:i];
    }
  }
}

- (unint64_t)dbg_indexOfObjectIdenticalTo:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if (*(*(&v13 + 1) + 8 * v10) == v4)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

@end