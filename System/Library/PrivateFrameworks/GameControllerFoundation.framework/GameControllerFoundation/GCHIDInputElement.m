@interface GCHIDInputElement
- (BOOL)isEqual:(id)a3;
- (GCHIDInputElement)init;
- (GCHIDInputElement)initWithElement:(id)a3;
- (double)scaledValue:(int64_t)a3;
- (id)description;
- (id)registerScaled:(int64_t)a3 valueChangedHandler:(id)a4;
- (id)registerValueChangedHandler:(id)a3;
- (unint64_t)hash;
- (void)addScaled:(int64_t)a3 valueChangedHandler:(id)a4;
- (void)addValueChangedHandler:(id)a3;
- (void)dealloc;
- (void)valueChanged:(void *)a1;
@end

@implementation GCHIDInputElement

- (GCHIDInputElement)initWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GCHIDInputElement;
  v5 = [(GCHIDInputElement *)&v8 init];
  element = v5->_element;
  v5->_element = v4;

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

- (double)scaledValue:(int64_t)a3
{
  v5 = [(GCHIDInputElement *)self value];
  pValue = v5;
  if (!v5)
  {
    v6 = [(GCHIDInputElement *)self element];

    Device = IOHIDElementGetDevice(v6);
    IOHIDDeviceGetValue(Device, v6, &pValue);
    v5 = pValue;
    if (!pValue)
    {
      return 0.0;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return IOHIDValueGetScaledValue(v5, a3);
  }

  if (a3 == -3)
  {
    IOHIDValueGetBytePtr(v5);
    IOHIDValueGetLength(pValue);
    __memcpy_chk();
    return 0;
  }

  else if (a3 == -2)
  {
    return IOHIDValueGetIntegerValue(v5);
  }

  else
  {
    IntegerValue = IOHIDValueGetIntegerValue(v5);
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

- (void)addValueChangedHandler:(id)a3
{
  v5 = _Block_copy(a3);
  v4 = PushValueChangedHandler(self, v5, 0x8000000000000000, 0);
}

- (void)addScaled:(int64_t)a3 valueChangedHandler:(id)a4
{
  v7 = _Block_copy(a4);
  v6 = PushValueChangedHandler(self, v7, a3, 0);
}

- (id)registerValueChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = PushValueChangedHandler(self, v4, 0x8000000000000000, 1);

  return v5;
}

- (id)registerScaled:(int64_t)a3 valueChangedHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = PushValueChangedHandler(self, v6, a3, 1);

  return v7;
}

- (unint64_t)hash
{
  v2 = [(GCHIDInputElement *)self element];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GCHIDInputElement *)self element];
    v6 = [v4 element];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = CFGetTypeID(v4);
      if (v8 != IOHIDElementGetTypeID())
      {
        v7 = 0;
        goto LABEL_7;
      }
    }

    v5 = [(GCHIDInputElement *)self element];
    v7 = [v5 isEqual:v4];
  }

LABEL_7:
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCHIDInputElement *)self element];
  Cookie = IOHIDElementGetCookie(v6);
  v8 = [(GCHIDInputElement *)self element];
  v9 = [v8 description];
  v10 = [v3 stringWithFormat:@"<%@ cookie: %u %@>", v5, Cookie, v9];;

  return v10;
}

- (void)valueChanged:(void *)a1
{
  if (a1)
  {
    objc_setProperty(a1, sel_valueChanged_, 16, newValue, 0, 0);
    v4 = a1[3];
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