@interface IEEvent
+ (id)normalizeUtterance:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IEEvent)initWithId:(id)a3;
- (IEEvent)initWithId:(id)a3 withName:(id)a4;
- (IEEvent)initWithName:(id)a3;
- (IEEvent)initWithName:(id)a3 withId:(id)a4;
@end

@implementation IEEvent

- (IEEvent)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IEEvent;
  v6 = [(IEEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    eventId = v7->_eventId;
    v7->_eventId = &stru_28671CC40;

    slots = v7->_slots;
    v7->_slots = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (IEEvent)initWithName:(id)a3 withId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IEEvent;
  v9 = [(IEEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_eventId, a4);
    slots = v10->_slots;
    v10->_slots = MEMORY[0x277CBEC10];
  }

  return v10;
}

- (IEEvent)initWithId:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IEEvent;
  v6 = [(IEEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    name = v6->_name;
    v6->_name = &stru_28671CC40;

    objc_storeStrong(&v7->_eventId, a3);
    slots = v7->_slots;
    v7->_slots = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (IEEvent)initWithId:(id)a3 withName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IEEvent;
  v9 = [(IEEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a4);
    objc_storeStrong(&v10->_eventId, a3);
    slots = v10->_slots;
    v10->_slots = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)normalizeUtterance:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 UTF8String];
    v6 = strlen(v5);
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
      memmove(&__dst, v5, v6);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == v4)
    {
      v25 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(IEEvent *)self name];
      v7 = [(IEEvent *)v5 name];
      v8 = [v6 isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        goto LABEL_14;
      }

      v9 = [(IEEvent *)self eventId];
      v10 = [(IEEvent *)v5 eventId];
      v11 = [v9 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }

      v12 = [(IEEvent *)self slots];
      v13 = [(IEEvent *)v5 slots];
      v14 = [v12 isEqualToDictionary:v13];

      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      v15 = [(IEEvent *)self producer];
      v16 = [(IEEvent *)v5 producer];
      v17 = [v15 isEqual:v16];

      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      v18 = [(IEEvent *)self parsers];
      v19 = [v18 count];
      v20 = [(IEEvent *)v5 parsers];
      v21 = [v20 count];

      if (v19 == v21)
      {
        v22 = 0;
        do
        {
          v23 = [(IEEvent *)self parsers];
          v24 = [v23 count];

          v25 = v24 <= v22;
          if (v24 <= v22)
          {
            break;
          }

          v26 = [(IEEvent *)self parsers];
          v27 = [v26 objectAtIndex:v22];
          v28 = [(IEEvent *)v5 parsers];
          v29 = [v28 objectAtIndex:v22];
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