@interface NSPointerArray
- (unint64_t)dbg_indexOfObjectIdenticalTo:(id)to;
- (void)dbg_removeObject:(id)object;
@end

@implementation NSPointerArray

- (void)dbg_removeObject:(id)object
{
  objectCopy = object;
  v4 = [(NSPointerArray *)self dbg_indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSPointerArray *)self dbg_indexOfObjectIdenticalTo:objectCopy])
    {
      [(NSPointerArray *)self removePointerAtIndex:i];
    }
  }
}

- (unint64_t)dbg_indexOfObjectIdenticalTo:(id)to
{
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(selfCopy);
      }

      if (*(*(&v13 + 1) + 8 * v10) == toCopy)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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