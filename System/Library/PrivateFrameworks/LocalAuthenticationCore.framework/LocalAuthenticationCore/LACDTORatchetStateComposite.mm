@interface LACDTORatchetStateComposite
+ (id)nullInstance;
- (BOOL)isEqual:(id)a3;
- (LACDTORatchetStateComposite)initWithCoder:(id)a3;
- (LACDTORatchetStateComposite)initWithRatchetState:(id)a3 gracePeriodState:(id)a4 watchdogs:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACDTORatchetStateComposite

- (LACDTORatchetStateComposite)initWithRatchetState:(id)a3 gracePeriodState:(id)a4 watchdogs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACDTORatchetStateComposite;
  v12 = [(LACDTORatchetStateComposite *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ratchetState, a3);
    objc_storeStrong(&v13->_gracePeriodState, a4);
    objc_storeStrong(&v13->_watchdogs, a5);
  }

  return v13;
}

+ (id)nullInstance
{
  v2 = [LACDTORatchetStateComposite alloc];
  v3 = +[LACDTORatchetState nullInstance];
  v4 = +[LACDTOGracePeriodState nullInstance];
  v5 = +[LACDTOBiometryWatchdogPack nullInstance];
  v6 = [(LACDTORatchetStateComposite *)v2 initWithRatchetState:v3 gracePeriodState:v4 watchdogs:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACDTORatchetStateComposite *)self ratchetState];
  v6 = NSStringFromSelector(sel_ratchetState);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(LACDTORatchetStateComposite *)self gracePeriodState];
  v8 = NSStringFromSelector(sel_gracePeriodState);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(LACDTORatchetStateComposite *)self watchdogs];
  v9 = NSStringFromSelector(sel_watchdogs);
  [v4 encodeObject:v10 forKey:v9];
}

- (LACDTORatchetStateComposite)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_ratchetState);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_gracePeriodState);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_watchdogs);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(LACDTORatchetStateComposite *)self initWithRatchetState:v7 gracePeriodState:v10 watchdogs:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 ratchetState];
    v7 = [(LACDTORatchetStateComposite *)self ratchetState];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 ratchetState];
      v10 = [(LACDTORatchetStateComposite *)self ratchetState];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [v5 gracePeriodState];
    v14 = [(LACDTORatchetStateComposite *)self gracePeriodState];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [v5 gracePeriodState];
      v17 = [(LACDTORatchetStateComposite *)self gracePeriodState];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [v5 watchdogs];
    v20 = [(LACDTORatchetStateComposite *)self watchdogs];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [v5 watchdogs];
      v22 = [(LACDTORatchetStateComposite *)self watchdogs];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12 & 1;
}

- (id)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LACDTORatchetStateComposite *)self ratchetState];
  v6 = [v4 stringWithFormat:@"ratchetState: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LACDTORatchetStateComposite *)self gracePeriodState];
  v9 = [v7 stringWithFormat:@"gracePeriodState: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(LACDTORatchetStateComposite *)self watchdogs];
  v12 = [v10 stringWithFormat:@"watchdogs: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end