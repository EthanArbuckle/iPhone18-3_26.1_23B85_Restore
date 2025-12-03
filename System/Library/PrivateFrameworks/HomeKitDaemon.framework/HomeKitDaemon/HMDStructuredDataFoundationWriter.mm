@interface HMDStructuredDataFoundationWriter
- (HMDStructuredDataFoundationWriter)initWithMutableContainers:(BOOL)containers;
- (void)_emit:(void *)_emit;
- (void)_pop;
- (void)_push;
- (void)beginArrayOfSize:(unint64_t)size;
- (void)beginDictionaryOfSize:(unint64_t)size;
- (void)emitRootValue:(id)value;
- (void)endArray;
- (void)endDictionary;
- (void)failWithError:(id)error;
- (void)writeLogicalValue:(id)value validateAndCopy:(BOOL)copy;
- (void)writeNull;
@end

@implementation HMDStructuredDataFoundationWriter

- (void)emitRootValue:(id)value
{
  valueCopy = value;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)writeLogicalValue:(id)value validateAndCopy:(BOOL)copy
{
  valueCopy = value;
  v7 = valueCopy;
  if (copy)
  {
    v10.receiver = self;
    v10.super_class = HMDStructuredDataFoundationWriter;
    [(HMDStructuredWriter *)&v10 writeLogicalValue:valueCopy validateAndCopy:1];
LABEL_5:

    return;
  }

  if (valueCopy)
  {
    [(HMDStructuredDataFoundationWriter *)self _emit:valueCopy];
    goto LABEL_5;
  }

  v8 = _HMFPreconditionFailure();
  [(HMDStructuredDataFoundationWriter *)v8 _emit:v9];
}

- (void)_emit:(void *)_emit
{
  v3 = a2;
  if (_emit)
  {
    v4 = _emit[2];
    v6 = v3;
    if (v4)
    {
      if (_emit[3])
      {
        [v4 setValue:v3 forKey:?];
        v5 = _emit[3];
        _emit[3] = 0;
      }

      else
      {
        [v4 addObject:v3];
      }
    }

    else
    {
      if (!_emit[4])
      {
        goto LABEL_9;
      }

      [_emit emitRootValue:v3];
    }

    v3 = v6;
  }

LABEL_9:
}

- (void)writeNull
{
  null = [MEMORY[0x277CBEB68] null];
  [(HMDStructuredDataFoundationWriter *)self _emit:null];
}

- (void)endDictionary
{
  v5 = self->_container;
  [(HMDStructuredDataFoundationWriter *)self _pop];
  if (self->_mutableContainers)
  {
    v3 = v5;
  }

  else
  {
    v4 = [v5 copy];

    v3 = v4;
  }

  v6 = v3;
  [(HMDStructuredDataFoundationWriter *)self _emit:v3];
}

- (void)_pop
{
  if (self)
  {
    if ([*(self + 32) count])
    {
      lastObject = [*(self + 32) lastObject];
      v3 = lastObject;
      if (*MEMORY[0x277CBEEE8] == lastObject)
      {
        v4 = 0;
      }

      else
      {
        v4 = lastObject;
      }

      v5 = v4;

      v6 = *(self + 24);
      *(self + 24) = v5;

      [*(self + 32) removeLastObject];
      lastObject2 = [*(self + 32) lastObject];
      v8 = *(self + 16);
      *(self + 16) = lastObject2;

      v9 = *(self + 32);

      [v9 removeLastObject];
    }

    else
    {
      v10 = *(self + 24);
      *(self + 24) = 0;

      v11 = *(self + 16);
      *(self + 16) = 0;
    }
  }
}

- (void)beginDictionaryOfSize:(unint64_t)size
{
  if (self && self->_stack)
  {
    [(HMDStructuredDataFoundationWriter *)self _push];
    if (size == -1)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:size];
    }

    v6 = v5;
    objc_storeStrong(&self->_container, v5);
  }
}

- (void)_push
{
  if (*(self + 16))
  {
    [*(self + 32) addObject:?];
    v2 = *(self + 16);
    *(self + 16) = 0;

    v3 = *(self + 32);
    v4 = *(self + 24);
    if (!v4)
    {
      v4 = *MEMORY[0x277CBEEE8];
    }

    v5 = v4;
    [v3 addObject:v5];

    v6 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (void)endArray
{
  v5 = self->_container;
  [(HMDStructuredDataFoundationWriter *)self _pop];
  if (self->_mutableContainers)
  {
    v3 = v5;
  }

  else
  {
    v4 = [v5 copy];

    v3 = v4;
  }

  v6 = v3;
  [(HMDStructuredDataFoundationWriter *)self _emit:v3];
}

- (void)beginArrayOfSize:(unint64_t)size
{
  if (self && self->_stack)
  {
    [(HMDStructuredDataFoundationWriter *)self _push];
    if (size == -1)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:size];
    }

    v6 = v5;
    objc_storeStrong(&self->_container, v5);
  }
}

- (void)failWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = HMDStructuredDataFoundationWriter;
  [(HMDStructuredWriter *)&v7 failWithError:error];
  container = self->_container;
  self->_container = 0;

  currentKey = self->_currentKey;
  self->_currentKey = 0;

  stack = self->_stack;
  self->_stack = 0;
}

- (HMDStructuredDataFoundationWriter)initWithMutableContainers:(BOOL)containers
{
  v8.receiver = self;
  v8.super_class = HMDStructuredDataFoundationWriter;
  v4 = [(HMDStructuredDataFoundationWriter *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stack = v4->_stack;
    v4->_stack = v5;

    v4->_mutableContainers = containers;
  }

  return v4;
}

@end