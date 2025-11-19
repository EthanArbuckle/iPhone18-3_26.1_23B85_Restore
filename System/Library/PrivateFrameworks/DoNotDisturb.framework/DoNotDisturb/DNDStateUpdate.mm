@interface DNDStateUpdate
- (BOOL)isEqual:(id)a3;
- (DNDStateUpdate)initWithCoder:(id)a3;
- (DNDStateUpdate)initWithPreviousState:(id)a3 state:(id)a4 reason:(unint64_t)a5 source:(int64_t)a6 options:(int64_t)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDStateUpdate

- (DNDStateUpdate)initWithPreviousState:(id)a3 state:(id)a4 reason:(unint64_t)a5 source:(int64_t)a6 options:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = DNDStateUpdate;
  v14 = [(DNDStateUpdate *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    previousState = v14->_previousState;
    v14->_previousState = v15;

    v17 = [v13 copy];
    state = v14->_state;
    v14->_state = v17;

    v14->_reason = a5;
    v14->_source = a6;
    v14->_options = a7;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(DNDStateUpdate *)self previousState];
  v4 = [v3 hash];
  v5 = [(DNDStateUpdate *)self state];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDStateUpdate *)self reason];
  v8 = v7 ^ [(DNDStateUpdate *)self source];
  v9 = v8 ^ [(DNDStateUpdate *)self options];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(DNDStateUpdate *)self previousState];
      v9 = [(DNDStateUpdate *)v7 previousState];
      if (v8 != v9)
      {
        v10 = [(DNDStateUpdate *)self previousState];
        if (!v10)
        {
          v13 = 0;
          goto LABEL_34;
        }

        v3 = v10;
        v11 = [(DNDStateUpdate *)v7 previousState];
        if (!v11)
        {
          v13 = 0;
LABEL_33:

          goto LABEL_34;
        }

        v12 = [(DNDStateUpdate *)self previousState];
        v4 = [(DNDStateUpdate *)v7 previousState];
        if (![v12 isEqual:v4])
        {
          v13 = 0;
LABEL_32:

          goto LABEL_33;
        }

        v28 = v4;
        v29 = v12;
        v30 = v11;
      }

      v14 = [(DNDStateUpdate *)self state];
      v15 = [(DNDStateUpdate *)v7 state];
      if (v14 != v15)
      {
        v16 = [(DNDStateUpdate *)self state];
        if (!v16)
        {
          goto LABEL_22;
        }

        v4 = v16;
        v17 = [(DNDStateUpdate *)v7 state];
        if (!v17)
        {
          v13 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v18 = v17;
        v25 = v3;
        v19 = [(DNDStateUpdate *)self state];
        v26 = [(DNDStateUpdate *)v7 state];
        v27 = v19;
        if (![v19 isEqual:?])
        {
          v13 = 0;
          v3 = v25;
LABEL_28:

          goto LABEL_29;
        }

        v24 = v18;
        v3 = v25;
      }

      v20 = [(DNDStateUpdate *)self reason];
      if (v20 == [(DNDStateUpdate *)v7 reason])
      {
        v21 = [(DNDStateUpdate *)self source];
        if (v21 == [(DNDStateUpdate *)v7 source])
        {
          v22 = [(DNDStateUpdate *)self options];
          v13 = v22 == [(DNDStateUpdate *)v7 options];
          v18 = v24;
          if (v14 == v15)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }
      }

      if (v14 == v15)
      {
        v13 = 0;
LABEL_30:

LABEL_31:
        v12 = v29;
        v11 = v30;
        v4 = v28;
        if (v8 != v9)
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
  v8 = [(DNDStateUpdate *)self state];
  v9 = [(DNDStateUpdate *)self previousState];
  v10 = [v3 stringWithFormat:@"<%@: %p reason: %@; source: %@; options: %@; state: %@; previousState: %@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

- (DNDStateUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousState"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v7 = [v4 decodeIntegerForKey:@"reason"];
  v8 = [v4 decodeIntegerForKey:@"options"];
  if ([v4 containsValueForKey:@"source"])
  {
    v9 = [v4 decodeIntegerForKey:@"source"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(DNDStateUpdate *)self initWithPreviousState:v5 state:v6 reason:v7 source:v9 options:v8];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DNDStateUpdate *)self previousState];
  [v6 encodeObject:v4 forKey:@"previousState"];

  v5 = [(DNDStateUpdate *)self state];
  [v6 encodeObject:v5 forKey:@"state"];

  [v6 encodeInteger:-[DNDStateUpdate reason](self forKey:{"reason"), @"reason"}];
  [v6 encodeInteger:-[DNDStateUpdate source](self forKey:{"source"), @"source"}];
  [v6 encodeInteger:-[DNDStateUpdate options](self forKey:{"options"), @"options"}];
}

@end