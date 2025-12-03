@interface GCHIDInputElement
- (BOOL)isEqual:(id)equal;
- (GCHIDInputElement)init;
- (GCHIDInputElement)initWithElement:(id)element;
- (double)scaledValue:(int64_t)value;
- (id)description;
- (id)registerScaled:(int64_t)scaled valueChangedHandler:(id)handler;
- (id)registerValueChangedHandler:(id)handler;
- (unint64_t)hash;
- (void)addScaled:(int64_t)scaled valueChangedHandler:(id)handler;
- (void)addValueChangedHandler:(id)handler;
- (void)dealloc;
- (void)valueChanged:(void *)changed;
@end

@implementation GCHIDInputElement

- (GCHIDInputElement)initWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = GCHIDInputElement;
  v5 = [(GCHIDInputElement *)&v8 init];
  element = v5->_element;
  v5->_element = elementCopy;

  v5->_observers.tqh_first = 0;
  v5->_observers.tqh_last = &v5->_observers.tqh_first;
  return v5;
}

- (GCHIDInputElement)init
{
  [(GCHIDInputElement *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  tqh_first = self->_observers.tqh_first;
  if (tqh_first)
  {
    p_firstObserver = &self->_firstObserver;
    do
    {
      tqe_next = tqh_first->pointers.tqe_next;
      tqe_prev = tqh_first->pointers.tqe_prev;
      p_tqe_prev = &tqe_next->pointers.tqe_prev;
      if (!tqe_next)
      {
        p_tqe_prev = &self->_observers.tqh_last;
      }

      *p_tqe_prev = tqe_prev;
      *tqe_prev = tqe_next;
      handler = tqh_first->_handler;
      tqh_first->_handler = 0;

      tqh_first->var0 = 0x8000000000000000;
      if (tqh_first != p_firstObserver)
      {
        free(tqh_first);
      }

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  value = self->_value;
  if (value)
  {
    CFRelease(value);
    self->_value = 0;
  }

  v10.receiver = self;
  v10.super_class = GCHIDInputElement;
  [(GCHIDInputElement *)&v10 dealloc];
}

- (double)scaledValue:(int64_t)value
{
  value = [(GCHIDInputElement *)self value];
  pValue = value;
  if (!value)
  {
    element = [(GCHIDInputElement *)self element];

    Device = IOHIDElementGetDevice(element);
    IOHIDDeviceGetValue(Device, element, &pValue);
    value = pValue;
    if (!pValue)
    {
      return 0.0;
    }
  }

  if ((value & 0x8000000000000000) == 0)
  {
    return IOHIDValueGetScaledValue(value, value);
  }

  if (value == -3)
  {
    IOHIDValueGetBytePtr(value);
    IOHIDValueGetLength(pValue);
    __memcpy_chk();
    return 0;
  }

  else if (value == -2)
  {
    return IOHIDValueGetIntegerValue(value);
  }

  else
  {
    IntegerValue = IOHIDValueGetIntegerValue(value);
    Element = IOHIDValueGetElement(pValue);
    LogicalMin = IOHIDElementGetLogicalMin(Element);
    v12 = IOHIDValueGetElement(pValue);
    LogicalMax = IOHIDElementGetLogicalMax(v12);
    if (LogicalMax >= IntegerValue)
    {
      v14 = IntegerValue;
    }

    else
    {
      v14 = LogicalMax;
    }

    if (LogicalMin > v14)
    {
      return LogicalMin;
    }

    return v14;
  }
}

- (void)addValueChangedHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v4 = PushValueChangedHandler(self, v5, 0x8000000000000000, 0);
}

- (void)addScaled:(int64_t)scaled valueChangedHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v6 = PushValueChangedHandler(self, v7, scaled, 0);
}

- (id)registerValueChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = PushValueChangedHandler(self, v4, 0x8000000000000000, 1);

  return v5;
}

- (id)registerScaled:(int64_t)scaled valueChangedHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = PushValueChangedHandler(self, v6, scaled, 1);

  return v7;
}

- (unint64_t)hash
{
  element = [(GCHIDInputElement *)self element];
  v3 = [element hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    element = [(GCHIDInputElement *)self element];
    element2 = [equalCopy element];
    v7 = [element isEqual:element2];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = CFGetTypeID(equalCopy);
      if (v8 != IOHIDElementGetTypeID())
      {
        v7 = 0;
        goto LABEL_7;
      }
    }

    element = [(GCHIDInputElement *)self element];
    v7 = [element isEqual:equalCopy];
  }

LABEL_7:
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  element = [(GCHIDInputElement *)self element];
  Cookie = IOHIDElementGetCookie(element);
  element2 = [(GCHIDInputElement *)self element];
  v9 = [element2 description];
  v10 = [v3 stringWithFormat:@"<%@ cookie: %u %@>", v5, Cookie, v9];;

  return v10;
}

- (void)valueChanged:(void *)changed
{
  if (changed)
  {
    objc_setProperty(changed, sel_valueChanged_, 16, newValue, 0, 0);
    v4 = changed[3];
    if (v4)
    {
      while (2)
      {
        v5 = v4;
        v4 = v4[2];
        v6 = v5[1];
        switch(v6)
        {
          case -3:
            IOHIDValueGetBytePtr(newValue);
            IOHIDValueGetLength(newValue);
            __memcpy_chk();
            v11 = *v5;
            goto LABEL_11;
          case -2:
            IOHIDValueGetIntegerValue(newValue);
            goto LABEL_10;
          case -1:
            IOHIDValueGetIntegerValue(newValue);
            Element = IOHIDValueGetElement(newValue);
            IOHIDElementGetLogicalMin(Element);
            v8 = IOHIDValueGetElement(newValue);
            IOHIDElementGetLogicalMax(v8);
            goto LABEL_10;
          case 0:
          case 1:
          case 2:
            IOHIDValueGetScaledValue(newValue, v6);
LABEL_10:
            v11 = *v5;
LABEL_11:
            v12 = OUTLINED_FUNCTION_0_0(v11);
            v13(v12);
            if (!v4)
            {
              return;
            }

            continue;
          default:
            v9 = OUTLINED_FUNCTION_0_0(*v5);
            v10(v9);
            if (v4)
            {
              continue;
            }

            return;
        }
      }
    }
  }
}

@end