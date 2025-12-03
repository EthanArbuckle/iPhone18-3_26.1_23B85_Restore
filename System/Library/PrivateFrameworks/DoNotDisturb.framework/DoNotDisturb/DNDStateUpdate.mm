@interface DNDStateUpdate
- (BOOL)isEqual:(id)equal;
- (DNDStateUpdate)initWithCoder:(id)coder;
- (DNDStateUpdate)initWithPreviousState:(id)state state:(id)a4 reason:(unint64_t)reason source:(int64_t)source options:(int64_t)options;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDStateUpdate

- (DNDStateUpdate)initWithPreviousState:(id)state state:(id)a4 reason:(unint64_t)reason source:(int64_t)source options:(int64_t)options
{
  stateCopy = state;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = DNDStateUpdate;
  v14 = [(DNDStateUpdate *)&v20 init];
  if (v14)
  {
    v15 = [stateCopy copy];
    previousState = v14->_previousState;
    v14->_previousState = v15;

    v17 = [v13 copy];
    state = v14->_state;
    v14->_state = v17;

    v14->_reason = reason;
    v14->_source = source;
    v14->_options = options;
  }

  return v14;
}

- (unint64_t)hash
{
  previousState = [(DNDStateUpdate *)self previousState];
  v4 = [previousState hash];
  state = [(DNDStateUpdate *)self state];
  v6 = [state hash] ^ v4;
  reason = [(DNDStateUpdate *)self reason];
  v8 = reason ^ [(DNDStateUpdate *)self source];
  v9 = v8 ^ [(DNDStateUpdate *)self options];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      previousState = [(DNDStateUpdate *)self previousState];
      previousState2 = [(DNDStateUpdate *)v7 previousState];
      if (previousState != previousState2)
      {
        previousState3 = [(DNDStateUpdate *)self previousState];
        if (!previousState3)
        {
          v13 = 0;
          goto LABEL_34;
        }

        v3 = previousState3;
        previousState4 = [(DNDStateUpdate *)v7 previousState];
        if (!previousState4)
        {
          v13 = 0;
LABEL_33:

          goto LABEL_34;
        }

        previousState5 = [(DNDStateUpdate *)self previousState];
        previousState6 = [(DNDStateUpdate *)v7 previousState];
        if (![previousState5 isEqual:previousState6])
        {
          v13 = 0;
LABEL_32:

          goto LABEL_33;
        }

        v28 = previousState6;
        v29 = previousState5;
        v30 = previousState4;
      }

      state = [(DNDStateUpdate *)self state];
      state2 = [(DNDStateUpdate *)v7 state];
      if (state != state2)
      {
        state3 = [(DNDStateUpdate *)self state];
        if (!state3)
        {
          goto LABEL_22;
        }

        previousState6 = state3;
        state4 = [(DNDStateUpdate *)v7 state];
        if (!state4)
        {
          v13 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v18 = state4;
        v25 = v3;
        state5 = [(DNDStateUpdate *)self state];
        state6 = [(DNDStateUpdate *)v7 state];
        v27 = state5;
        if (![state5 isEqual:?])
        {
          v13 = 0;
          v3 = v25;
LABEL_28:

          goto LABEL_29;
        }

        v24 = v18;
        v3 = v25;
      }

      reason = [(DNDStateUpdate *)self reason];
      if (reason == [(DNDStateUpdate *)v7 reason])
      {
        source = [(DNDStateUpdate *)self source];
        if (source == [(DNDStateUpdate *)v7 source])
        {
          options = [(DNDStateUpdate *)self options];
          v13 = options == [(DNDStateUpdate *)v7 options];
          v18 = v24;
          if (state == state2)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }
      }

      if (state == state2)
      {
        v13 = 0;
LABEL_30:

LABEL_31:
        previousState5 = v29;
        previousState4 = v30;
        previousState6 = v28;
        if (previousState != previousState2)
        {
          goto LABEL_32;
        }

LABEL_34:

        goto LABEL_35;
      }

LABEL_22:
      v13 = 0;
      goto LABEL_31;
    }

    v13 = 0;
  }

LABEL_35:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = DNDStateUpdateReasonToString([(DNDStateUpdate *)self reason]);
  v6 = DNDStateUpdateSourceToString([(DNDStateUpdate *)self source]);
  v7 = DNDStateUpdateOptionsToString([(DNDStateUpdate *)self options]);
  state = [(DNDStateUpdate *)self state];
  previousState = [(DNDStateUpdate *)self previousState];
  v10 = [v3 stringWithFormat:@"<%@: %p reason: %@; source: %@; options: %@; state: %@; previousState: %@>", v4, self, v5, v6, v7, state, previousState];;

  return v10;
}

- (DNDStateUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v7 = [coderCopy decodeIntegerForKey:@"reason"];
  v8 = [coderCopy decodeIntegerForKey:@"options"];
  if ([coderCopy containsValueForKey:@"source"])
  {
    v9 = [coderCopy decodeIntegerForKey:@"source"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(DNDStateUpdate *)self initWithPreviousState:v5 state:v6 reason:v7 source:v9 options:v8];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  previousState = [(DNDStateUpdate *)self previousState];
  [coderCopy encodeObject:previousState forKey:@"previousState"];

  state = [(DNDStateUpdate *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  [coderCopy encodeInteger:-[DNDStateUpdate reason](self forKey:{"reason"), @"reason"}];
  [coderCopy encodeInteger:-[DNDStateUpdate source](self forKey:{"source"), @"source"}];
  [coderCopy encodeInteger:-[DNDStateUpdate options](self forKey:{"options"), @"options"}];
}

@end