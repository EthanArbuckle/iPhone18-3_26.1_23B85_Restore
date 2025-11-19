@interface FigStateMachine
+ (int)indexForState:(unsigned int)a3;
- (FigStateMachine)initWithLabel:(id)a3 stateCount:(char)a4 initialState:(unsigned int)a5 owner:(id)a6;
- (NSString)currentStateLabel;
- (id)description;
- (id)labelForState:(unsigned int)a3;
- (uint64_t)_transitionToState:(uint64_t)a3 fromStates:(uint64_t)a4 errorStatus:(uint64_t)a5;
- (unsigned)currentState;
- (void)dealloc;
- (void)markStateAsTerminal:(unsigned int)a3;
- (void)setLabel:(id)a3 forState:(unsigned int)a4;
- (void)whenTransitioningFromState:(unsigned int)a3 toState:(unsigned int)a4 callHandler:(id)a5;
- (void)whenTransitioningToState:(unsigned int)a3 callHandler:(id)a4;
- (void)whenTransitioningToStateFails:(unsigned int)a3 callHandler:(id)a4;
- (void)whenTransitioningToStates:(unsigned int)a3 callHandler:(id)a4;
- (void)whenTransitioningToStatesFail:(unsigned int)a3 callHandler:(id)a4;
@end

@implementation FigStateMachine

- (unsigned)currentState
{
  if (!self->_performsAtomicStateTransitions)
  {
    return self->_currentState;
  }

  os_unfair_lock_lock(&self->_lock);
  currentState = self->_currentState;
  os_unfair_lock_unlock(&self->_lock);
  return currentState;
}

- (FigStateMachine)initWithLabel:(id)a3 stateCount:(char)a4 initialState:(unsigned int)a5 owner:(id)a6
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = FigStateMachine;
  v10 = [(FigStateMachine *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_owner = a6;
    v10->_label = [a3 copy];
    v11->_currentState = a5;
    v11->_stateCount = v8;
    if (v8 < 0x21)
    {
      v11->_stateConfigurations = malloc_type_calloc(v8, 0x20uLL, 0x10800400F6048E3uLL);
      v11->_lock._os_unfair_lock_opaque = 0;
      v11->_performsAtomicStateTransitions = 1;
    }

    else
    {

      return 0;
    }
  }

  return v11;
}

- (void)dealloc
{
  stateConfigurations = self->_stateConfigurations;
  if (stateConfigurations)
  {
    stateCount = self->_stateCount;
    if (stateCount >= 1)
    {
      v5 = 0;
      v6 = 32 * stateCount;
      do
      {

        v5 += 32;
      }

      while (v6 != v5);
      stateConfigurations = self->_stateConfigurations;
    }

    free(stateConfigurations);
  }

  v7.receiver = self;
  v7.super_class = FigStateMachine;
  [(FigStateMachine *)&v7 dealloc];
}

- (void)markStateAsTerminal:(unsigned int)a3
{
  stateConfigurations = self->_stateConfigurations;
  v3.i32[0] = a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = __clz(__rbit32(a3));
  if (v5.i32[0] == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  if (v5.i32[0] == 1 && v7 < self->_stateCount && stateConfigurations != 0)
  {
    stateConfigurations[v6].var0 = 1;
  }
}

- (void)whenTransitioningToState:(unsigned int)a3 callHandler:(id)a4
{
  stateConfigurations = self->_stateConfigurations;
  v4.i32[0] = a3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = __clz(__rbit32(a3));
  if (v6.i32[0] == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (v6.i32[0] == 1 && v8 < self->_stateCount && stateConfigurations != 0)
  {
    v11 = [a4 copy];
    if (v11)
    {
      v12 = v11;
      v13 = &stateConfigurations[v8];
      var1 = v13->var1;
      p_var1 = &v13->var1;
      v14 = var1;
      v17 = v12;
      if (!var1)
      {
        v14 = objc_opt_new();
        v12 = v17;
        *p_var1 = v14;
      }

      [v14 addObject:v12];
    }
  }
}

- (void)whenTransitioningToStates:(unsigned int)a3 callHandler:(id)a4
{
  v9 = [a4 copy];
  stateCount = self->_stateCount;
  if (stateCount >= 1)
  {
    for (i = 0; i != stateCount; ++i)
    {
      if (((1 << i) & a3) != 0)
      {
        [(FigStateMachine *)self whenTransitioningToState:(1 << i) & a3 callHandler:a4];
      }
    }
  }
}

- (void)whenTransitioningFromState:(unsigned int)a3 toState:(unsigned int)a4 callHandler:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__FigStateMachine_whenTransitioningFromState_toState_callHandler___block_invoke;
  v5[3] = &unk_1E799CC38;
  v6 = a3;
  v5[4] = a5;
  [(FigStateMachine *)self whenTransitioningToState:*&a4 callHandler:v5];
}

uint64_t __66__FigStateMachine_whenTransitioningFromState_toState_callHandler___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 40) == a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)whenTransitioningToStateFails:(unsigned int)a3 callHandler:(id)a4
{
  stateConfigurations = self->_stateConfigurations;
  v4.i32[0] = a3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = __clz(__rbit32(a3));
  if (v6.i32[0] == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (v6.i32[0] == 1 && v8 < self->_stateCount && stateConfigurations != 0)
  {
    v11 = [a4 copy];
    if (v11)
    {
      v12 = v11;
      v13 = &stateConfigurations[v8];
      var2 = v13->var2;
      p_var2 = &v13->var2;
      v14 = var2;
      v17 = v12;
      if (!var2)
      {
        v14 = objc_opt_new();
        v12 = v17;
        *p_var2 = v14;
      }

      [v14 addObject:v12];
    }
  }
}

- (void)whenTransitioningToStatesFail:(unsigned int)a3 callHandler:(id)a4
{
  v9 = [a4 copy];
  stateCount = self->_stateCount;
  if (stateCount >= 1)
  {
    for (i = 0; i != stateCount; ++i)
    {
      if (((1 << i) & a3) != 0)
      {
        [(FigStateMachine *)self whenTransitioningToStateFails:(1 << i) & a3 callHandler:a4];
      }
    }
  }
}

- (void)setLabel:(id)a3 forState:(unsigned int)a4
{
  v4.i32[0] = a4;
  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  LODWORD(v6) = __clz(__rbit32(a4));
  if (v5.i32[0] == 1)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if (v6 < self->_stateCount && v5.i32[0] == 1)
  {
    v8 = &self->_stateConfigurations[v6];
  }

  else
  {
    v8 = 0;
  }

  var3 = v8->var3;
  if (var3 != a3)
  {

    v8->var3 = [a3 copy];
  }
}

- (id)labelForState:(unsigned int)a3
{
  stateConfigurations = self->_stateConfigurations;
  v3.i32[0] = a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = __clz(__rbit32(a3));
  if (v5.i32[0] == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  if (v5.i32[0] != 1 || v7 >= self->_stateCount || stateConfigurations == 0)
  {
    return 0;
  }

  else
  {
    return stateConfigurations[v6].var3;
  }
}

- (NSString)currentStateLabel
{
  v3 = [(FigStateMachine *)self currentState];

  return [(FigStateMachine *)self labelForState:v3];
}

+ (int)indexForState:(unsigned int)a3
{
  v3 = __clz(__rbit32(a3));
  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  label = self->_label;
  if (!label)
  {
    v5 = objc_opt_class();
    label = NSStringFromClass(v5);
  }

  return [v3 stringWithFormat:@"<%@ %p>", label, self];
}

- (uint64_t)_transitionToState:(uint64_t)a3 fromStates:(uint64_t)a4 errorStatus:(uint64_t)a5
{
  if (!a1)
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v11 = *(a1 + 20);
  if (v11 == 1)
  {
    os_unfair_lock_lock((a1 + 16));
  }

  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = vadd_s32(__PAIR64__(v12, v9), -1);
  v16 = vcgt_u32(veor_s8(__PAIR64__(v12, v9), v15), v15);
  LODWORD(v17) = __clz(__rbit32(v12));
  if (v16.i8[4])
  {
    v17 = v17;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  v18 = v17 < v14;
  v19 = (v13 + 32 * v17);
  if ((v16.i8[4] & 1 & v18) == 0)
  {
    v19 = 0;
  }

  LODWORD(v20) = __clz(__rbit32(v9));
  if (v16.i8[0])
  {
    v20 = v20;
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  v21 = v13 + 32 * v20;
  if ((v16.i8[0] & 1 & (v20 < v14)) == 0)
  {
    v21 = 0;
  }

  if (v19 && v21)
  {
    if (v12 != v9 && (!v8 || (v12 & v8) != 0) && (*v19 & 1) == 0)
    {
      *(a1 + 24) = v9;
      v38 = *(v21 + 8);
      v39 = OUTLINED_FUNCTION_3_104(a1, a2, a3, a4, a5, a6, a7, a8, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v111, v113, v115, v117, v119, v121, v123);
      if (v39)
      {
        v40 = v39;
        v41 = MEMORY[0];
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (MEMORY[0] != v41)
            {
              objc_enumerationMutation(v38);
            }

            OUTLINED_FUNCTION_1_127();
            v44 = v43();
          }

          v40 = OUTLINED_FUNCTION_3_104(v44, v45, v46, v47, v48, v49, v50, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v110, v112, v114, v116, v118, v120, v122, v124);
        }

        while (v40);
      }

      v36 = 1;
      if (v11)
      {
        goto LABEL_28;
      }

      return v36;
    }

    v22 = *(v21 + 16);
    v23 = OUTLINED_FUNCTION_60_0(a1, a2, a3, a4, a5, a6, a7, a8, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, 0);
    if (v23)
    {
      v24 = v23;
      v25 = MEMORY[0];
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (MEMORY[0] != v25)
          {
            objc_enumerationMutation(v22);
          }

          OUTLINED_FUNCTION_1_127();
          v28 = v27();
        }

        v24 = OUTLINED_FUNCTION_60_0(v28, v29, v30, v31, v32, v33, v34, v35, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107);
      }

      while (v24);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  v36 = 0;
  if (v11)
  {
LABEL_28:
    os_unfair_lock_unlock((a1 + 16));
  }

  return v36;
}

@end