@interface HMDStructuredDataFoundationWriter
- (HMDStructuredDataFoundationWriter)initWithMutableContainers:(BOOL)a3;
- (void)_emit:(void *)a1;
- (void)_pop;
- (void)_push;
- (void)beginArrayOfSize:(unint64_t)a3;
- (void)beginDictionaryOfSize:(unint64_t)a3;
- (void)emitRootValue:(id)a3;
- (void)endArray;
- (void)endDictionary;
- (void)failWithError:(id)a3;
- (void)writeLogicalValue:(id)a3 validateAndCopy:(BOOL)a4;
- (void)writeNull;
@end

@implementation HMDStructuredDataFoundationWriter

- (void)emitRootValue:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)writeLogicalValue:(id)a3 validateAndCopy:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v10.receiver = self;
    v10.super_class = HMDStructuredDataFoundationWriter;
    [(HMDStructuredWriter *)&v10 writeLogicalValue:v6 validateAndCopy:1];
LABEL_5:

    return;
  }

  if (v6)
  {
    [(HMDStructuredDataFoundationWriter *)self _emit:v6];
    goto LABEL_5;
  }

  v8 = _HMFPreconditionFailure();
  [(HMDStructuredDataFoundationWriter *)v8 _emit:v9];
}

- (void)_emit:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[2];
    v6 = v3;
    if (v4)
    {
      if (a1[3])
      {
        [v4 setValue:v3 forKey:?];
        v5 = a1[3];
        a1[3] = 0;
      }

      else
      {
        [v4 addObject:v3];
      }
    }

    else
    {
      if (!a1[4])
      {
        goto LABEL_9;
      }

      [a1 emitRootValue:v3];
    }

    v3 = v6;
  }

LABEL_9:
}

- (void)writeNull
{
  v3 = [MEMORY[0x277CBEB68] null];
  [(HMDStructuredDataFoundationWriter *)self _emit:v3];
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
  if (a1)
  {
    if ([*(a1 + 32) count])
    {
      v2 = [*(a1 + 32) lastObject];
      v3 = v2;
      if (*MEMORY[0x277CBEEE8] == v2)
      {
        v4 = 0;
      }

      else
      {
        v4 = v2;
      }

      v5 = v4;

      v6 = *(a1 + 24);
      *(a1 + 24) = v5;

      [*(a1 + 32) removeLastObject];
      v7 = [*(a1 + 32) lastObject];
      v8 = *(a1 + 16);
      *(a1 + 16) = v7;

      v9 = *(a1 + 32);

      [v9 removeLastObject];
    }

    else
    {
      v10 = *(a1 + 24);
      *(a1 + 24) = 0;

      v11 = *(a1 + 16);
      *(a1 + 16) = 0;
    }
  }
}

- (void)beginDictionaryOfSize:(unint64_t)a3
{
  if (self && self->_stack)
  {
    [(HMDStructuredDataFoundationWriter *)self _push];
    if (a3 == -1)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:a3];
    }

    v6 = v5;
    objc_storeStrong(&self->_container, v5);
  }
}

- (void)_push
{
  if (*(a1 + 16))
  {
    [*(a1 + 32) addObject:?];
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;

    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (!v4)
    {
      v4 = *MEMORY[0x277CBEEE8];
    }

    v5 = v4;
    [v3 addObject:v5];

    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
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

- (void)beginArrayOfSize:(unint64_t)a3
{
  if (self && self->_stack)
  {
    [(HMDStructuredDataFoundationWriter *)self _push];
    if (a3 == -1)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    }

    v6 = v5;
    objc_storeStrong(&self->_container, v5);
  }
}

- (void)failWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDStructuredDataFoundationWriter;
  [(HMDStructuredWriter *)&v7 failWithError:a3];
  container = self->_container;
  self->_container = 0;

  currentKey = self->_currentKey;
  self->_currentKey = 0;

  stack = self->_stack;
  self->_stack = 0;
}

- (HMDStructuredDataFoundationWriter)initWithMutableContainers:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HMDStructuredDataFoundationWriter;
  v4 = [(HMDStructuredDataFoundationWriter *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stack = v4->_stack;
    v4->_stack = v5;

    v4->_mutableContainers = a3;
  }

  return v4;
}

@end