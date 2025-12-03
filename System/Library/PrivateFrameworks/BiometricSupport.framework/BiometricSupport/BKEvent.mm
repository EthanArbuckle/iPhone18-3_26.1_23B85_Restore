@interface BKEvent
- (BKEvent)initWithEncodedEventOrCode:(unsigned int)code;
- (BKEvent)initWithEventOrCode:(unint64_t)code;
- (id)description;
- (void)encodeEventValue:(unsigned int *)value secondValue:(unsigned int *)secondValue;
- (void)setProperties;
@end

@implementation BKEvent

- (void)setProperties
{
  if (self->_cls == 1)
  {
    if (self->_event != 58)
    {
      return;
    }

    goto LABEL_9;
  }

  if (self->_cls)
  {
    return;
  }

  event = self->_event;
  if (event >= 655360)
  {
    if ((event - 655360) >= 2)
    {
      goto LABEL_12;
    }

    v3 = 12;
LABEL_14:
    *(&self->super.isa + v3) = 1;
    return;
  }

  switch(event)
  {
    case 65538:
      goto LABEL_9;
    case 262144:
LABEL_13:
      v3 = 9;
      goto LABEL_14;
    case 262146:
LABEL_9:
      v3 = 10;
      goto LABEL_14;
  }

LABEL_12:
  if ((event - 393216) < 0x101)
  {
    goto LABEL_13;
  }

  if ((event - 0x80000) < 0x101)
  {
    v3 = 11;
    goto LABEL_14;
  }
}

- (BKEvent)initWithEventOrCode:(unint64_t)code
{
  v7.receiver = self;
  v7.super_class = BKEvent;
  v4 = [(BKEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_cls = BYTE4(code);
    v4->_event = code;
    [(BKEvent *)v4 setProperties];
  }

  return v5;
}

- (BKEvent)initWithEncodedEventOrCode:(unsigned int)code
{
  v7.receiver = self;
  v7.super_class = BKEvent;
  v4 = [(BKEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_cls = HIBYTE(code);
    v4->_event = code & 0x3FFFFF;
    v4->_isHigh = (code & 0x800000) != 0;
    v4->_isLow = (code & 0x400000) != 0;
    [(BKEvent *)v4 setProperties];
  }

  return v5;
}

- (id)description
{
  if (self->_isHigh)
  {
    v3 = "HI ";
  }

  else if (self->_isLow)
  {
    v3 = "LO ";
  }

  else
  {
    v3 = &unk_223E5FC53;
  }

  if (self->_cls)
  {
    [MEMORY[0x277CCAB68] stringWithFormat:@"class %u code %s%u (%x)", self->_cls, v3, self->_event, self->_event];
  }

  else
  {
    [MEMORY[0x277CCAB68] stringWithFormat:@"code %s%u (%x)", v3, self->_event, self->_event, v7];
  }
  v4 = ;
  v5 = v4;
  if (self->_isStart)
  {
    [v4 appendFormat:@" (start)"];
  }

  if (self->_isTerminal)
  {
    [v5 appendFormat:@" (terminal)"];
  }

  if (self->_isMetadata)
  {
    [v5 appendFormat:@" (metadata)"];
  }

  if (self->_isSmartKeyboard)
  {
    [v5 appendFormat:@" (smart keyboard)"];
  }

  return v5;
}

- (void)encodeEventValue:(unsigned int *)value secondValue:(unsigned int *)secondValue
{
  event = self->_event;
  v5 = self->_cls << 24;
  if (event < 0x400000)
  {
    v6 = 0;
    *value = v5 | event;
  }

  else
  {
    *value = v5 | HIWORD(event) | 0x800000;
    v6 = LOWORD(self->_event) | (self->_cls << 24) | 0x400000;
  }

  *secondValue = v6;
}

@end