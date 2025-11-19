@interface _MSVConcatArrayEnumerator
- (id)nextObject;
@end

@implementation _MSVConcatArrayEnumerator

- (id)nextObject
{
  index = self->_index;
  if (index >= [(NSArray *)self->_arrays count])
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v4 = [(NSArray *)self->_arrays objectAtIndexedSubscript:self->_index];
      v5 = v4;
      if (v4)
      {
        innerIndex = self->_innerIndex;
        if (innerIndex < [v4 count])
        {
          break;
        }
      }

      self->_innerIndex = 0;
      ++self->_index;

      v7 = self->_index;
      if (v7 >= [(NSArray *)self->_arrays count])
      {
        goto LABEL_5;
      }
    }

    v8 = [v5 objectAtIndexedSubscript:self->_innerIndex];
    ++self->_innerIndex;
  }

  return v8;
}

@end