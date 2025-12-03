@interface LACDTORatchetStateComposite
+ (id)nullInstance;
- (BOOL)isEqual:(id)equal;
- (LACDTORatchetStateComposite)initWithCoder:(id)coder;
- (LACDTORatchetStateComposite)initWithRatchetState:(id)state gracePeriodState:(id)periodState watchdogs:(id)watchdogs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACDTORatchetStateComposite

- (LACDTORatchetStateComposite)initWithRatchetState:(id)state gracePeriodState:(id)periodState watchdogs:(id)watchdogs
{
  stateCopy = state;
  periodStateCopy = periodState;
  watchdogsCopy = watchdogs;
  v15.receiver = self;
  v15.super_class = LACDTORatchetStateComposite;
  v12 = [(LACDTORatchetStateComposite *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ratchetState, state);
    objc_storeStrong(&v13->_gracePeriodState, periodState);
    objc_storeStrong(&v13->_watchdogs, watchdogs);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ratchetState = [(LACDTORatchetStateComposite *)self ratchetState];
  v6 = NSStringFromSelector(sel_ratchetState);
  [coderCopy encodeObject:ratchetState forKey:v6];

  gracePeriodState = [(LACDTORatchetStateComposite *)self gracePeriodState];
  v8 = NSStringFromSelector(sel_gracePeriodState);
  [coderCopy encodeObject:gracePeriodState forKey:v8];

  watchdogs = [(LACDTORatchetStateComposite *)self watchdogs];
  v9 = NSStringFromSelector(sel_watchdogs);
  [coderCopy encodeObject:watchdogs forKey:v9];
}

- (LACDTORatchetStateComposite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_ratchetState);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_gracePeriodState);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_watchdogs);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(LACDTORatchetStateComposite *)self initWithRatchetState:v7 gracePeriodState:v10 watchdogs:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ratchetState = [v5 ratchetState];
    ratchetState2 = [(LACDTORatchetStateComposite *)self ratchetState];
    v8 = ratchetState2;
    if (ratchetState == ratchetState2)
    {
    }

    else
    {
      ratchetState3 = [v5 ratchetState];
      ratchetState4 = [(LACDTORatchetStateComposite *)self ratchetState];
      v11 = [ratchetState3 isEqual:ratchetState4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    gracePeriodState = [v5 gracePeriodState];
    gracePeriodState2 = [(LACDTORatchetStateComposite *)self gracePeriodState];
    v15 = gracePeriodState2;
    if (gracePeriodState == gracePeriodState2)
    {
    }

    else
    {
      gracePeriodState3 = [v5 gracePeriodState];
      gracePeriodState4 = [(LACDTORatchetStateComposite *)self gracePeriodState];
      v18 = [gracePeriodState3 isEqual:gracePeriodState4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    watchdogs = [v5 watchdogs];
    watchdogs2 = [(LACDTORatchetStateComposite *)self watchdogs];
    if (watchdogs == watchdogs2)
    {
      v12 = 1;
    }

    else
    {
      watchdogs3 = [v5 watchdogs];
      watchdogs4 = [(LACDTORatchetStateComposite *)self watchdogs];
      v12 = [watchdogs3 isEqual:watchdogs4];
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
  ratchetState = [(LACDTORatchetStateComposite *)self ratchetState];
  v6 = [v4 stringWithFormat:@"ratchetState: %@", ratchetState];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  gracePeriodState = [(LACDTORatchetStateComposite *)self gracePeriodState];
  v9 = [v7 stringWithFormat:@"gracePeriodState: %@", gracePeriodState];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  watchdogs = [(LACDTORatchetStateComposite *)self watchdogs];
  v12 = [v10 stringWithFormat:@"watchdogs: %@", watchdogs];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end