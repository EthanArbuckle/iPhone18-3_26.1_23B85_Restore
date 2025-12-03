@interface IEEvent
+ (id)normalizeUtterance:(id)utterance;
- (BOOL)isEqual:(id)equal;
- (IEEvent)initWithId:(id)id;
- (IEEvent)initWithId:(id)id withName:(id)name;
- (IEEvent)initWithName:(id)name;
- (IEEvent)initWithName:(id)name withId:(id)id;
@end

@implementation IEEvent

- (IEEvent)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = IEEvent;
  v6 = [(IEEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    eventId = v7->_eventId;
    v7->_eventId = &stru_28671CC40;

    slots = v7->_slots;
    v7->_slots = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (IEEvent)initWithName:(id)name withId:(id)id
{
  nameCopy = name;
  idCopy = id;
  v13.receiver = self;
  v13.super_class = IEEvent;
  v9 = [(IEEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_eventId, id);
    slots = v10->_slots;
    v10->_slots = MEMORY[0x277CBEC10];
  }

  return v10;
}

- (IEEvent)initWithId:(id)id
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = IEEvent;
  v6 = [(IEEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    name = v6->_name;
    v6->_name = &stru_28671CC40;

    objc_storeStrong(&v7->_eventId, id);
    slots = v7->_slots;
    v7->_slots = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (IEEvent)initWithId:(id)id withName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = IEEvent;
  v9 = [(IEEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_eventId, id);
    slots = v10->_slots;
    v10->_slots = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)normalizeUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v4 = utteranceCopy;
  if (utteranceCopy)
  {
    uTF8String = [utteranceCopy UTF8String];
    v6 = strlen(uTF8String);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v6;
    if (v6)
    {
      memmove(&__dst, uTF8String, v6);
    }

    __dst.__r_.__value_.__s.__data_[v7] = 0;
    siri::intelligence::Utterances::GetNormalizedText(&__dst, __p);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == equalCopy)
    {
      v25 = 1;
    }

    else
    {
      v5 = equalCopy;
      name = [(IEEvent *)self name];
      name2 = [(IEEvent *)v5 name];
      v8 = [name isEqualToString:name2];

      if ((v8 & 1) == 0)
      {
        goto LABEL_14;
      }

      eventId = [(IEEvent *)self eventId];
      eventId2 = [(IEEvent *)v5 eventId];
      v11 = [eventId isEqualToString:eventId2];

      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }

      slots = [(IEEvent *)self slots];
      slots2 = [(IEEvent *)v5 slots];
      v14 = [slots isEqualToDictionary:slots2];

      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      producer = [(IEEvent *)self producer];
      producer2 = [(IEEvent *)v5 producer];
      v17 = [producer isEqual:producer2];

      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      parsers = [(IEEvent *)self parsers];
      v19 = [parsers count];
      parsers2 = [(IEEvent *)v5 parsers];
      v21 = [parsers2 count];

      if (v19 == v21)
      {
        v22 = 0;
        do
        {
          parsers3 = [(IEEvent *)self parsers];
          v24 = [parsers3 count];

          v25 = v24 <= v22;
          if (v24 <= v22)
          {
            break;
          }

          parsers4 = [(IEEvent *)self parsers];
          v27 = [parsers4 objectAtIndex:v22];
          parsers5 = [(IEEvent *)v5 parsers];
          v29 = [parsers5 objectAtIndex:v22];
          v30 = [v27 isEqual:v29];

          ++v22;
        }

        while ((v30 & 1) != 0);
      }

      else
      {
LABEL_14:
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end