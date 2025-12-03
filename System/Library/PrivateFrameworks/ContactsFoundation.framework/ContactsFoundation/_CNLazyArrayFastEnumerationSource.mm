@interface _CNLazyArrayFastEnumerationSource
- (_CNLazyArrayFastEnumerationSource)initWithFastEnumeration:(id)enumeration;
- (id)nextObject;
- (void)fillBuffer;
@end

@implementation _CNLazyArrayFastEnumerationSource

- (_CNLazyArrayFastEnumerationSource)initWithFastEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  v10.receiver = self;
  v10.super_class = _CNLazyArrayFastEnumerationSource;
  v6 = [(_CNLazyArrayFastEnumerationSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fastEnumeration, enumeration);
    v7->_state.state = 0;
    v7->_firstCall = 1;
    v7->_count = 0;
    v7->_index = 0;
    v7->_mutationsPtrValue = 0;
    v8 = v7;
  }

  return v7;
}

- (id)nextObject
{
  count = self->_count;
  if (count == self->_index)
  {
    [(_CNLazyArrayFastEnumerationSource *)self fillBuffer];
    count = self->_count;
  }

  if (count)
  {
    v4 = self->_state.itemsPtr[self->_index++];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fillBuffer
{
  self->_count = [(NSFastEnumeration *)self->_fastEnumeration countByEnumeratingWithState:&self->_state objects:self->_stackbuf count:16];
  if (self->_firstCall)
  {
    mutationsPtrValue = *self->_state.var0;
  }

  else
  {
    mutationsPtrValue = self->_mutationsPtrValue;
    if (mutationsPtrValue != *self->_state.var0)
    {
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"mutated while enumerating" userInfo:0];
      objc_exception_throw(v4);
    }
  }

  self->_firstCall = 0;
  self->_mutationsPtrValue = mutationsPtrValue;
  self->_index = 0;
}

@end