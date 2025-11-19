@interface PBUIPosterWallpaperWindowSceneStyleTransitionState
- ($1D129F7B4C980C50E70029647222EF17)highestPriorityStyleTransitionState;
- (BOOL)isEqual:(id)a3;
- (PBUIPosterWallpaperWindowSceneStyleTransitionState)init;
- (PBUIPosterWallpaperWindowSceneStyleTransitionState)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)diffFromPosterWallpaperWindowSceneStyleTransitionState:(id)a3 updateHandler:(id)a4 removeHandler:(id)a5;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)removeWallpaperStyleTransitionStateForPriority:(int64_t)a3;
- (void)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4;
@end

@implementation PBUIPosterWallpaperWindowSceneStyleTransitionState

- (PBUIPosterWallpaperWindowSceneStyleTransitionState)init
{
  v3.receiver = self;
  v3.super_class = PBUIPosterWallpaperWindowSceneStyleTransitionState;
  result = [(PBUIPosterWallpaperWindowSceneStyleTransitionState *)&v3 init];
  if (result)
  {
    result->_stateTable[0].valid = 0;
    result->_stateTable[1].valid = 0;
    result->_stateTable[2].valid = 0;
    result->_stateTable[3].valid = 0;
    result->_stateTable[4].valid = 0;
  }

  return result;
}

- (void)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4
{
  if (a4 <= 4)
  {
    v4 = self + 32 * a4;
    v4[8] = 1;
    v5 = *&a3->var0;
    *(v4 + 4) = *&a3->var2;
    *(v4 + 1) = v5;
  }
}

- (void)removeWallpaperStyleTransitionStateForPriority:(int64_t)a3
{
  if (a3 <= 4)
  {
    self->_stateTable[a3].valid = 0;
  }
}

- (void)diffFromPosterWallpaperWindowSceneStyleTransitionState:(id)a3 updateHandler:(id)a4 removeHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  v12 = 0;
  do
  {
    if (v8)
    {
      v13 = (&self->super.isa + v11);
      v14 = &v8[v11];
      if (self->_stateTable[v11 / 0x20].valid)
      {
        v15 = v13[2];
        v16 = v13[3];
        v17 = v13[4];
        if ((v8[v11 + 8] & 1) == 0 || (v15 == *(v14 + 2) ? (v18 = v16 == *(v14 + 3)) : (v18 = 0), !v18 || (BSFloatEqualToFloat() & 1) == 0))
        {
          v19 = v9[2];
          v20[0] = v15;
          v20[1] = v16;
          v20[2] = v17;
          v19(v9, v12, v20);
        }
      }

      else if (v8[v11 + 8])
      {
        v10[2](v10, v12);
      }
    }

    ++v12;
    v11 += 32;
  }

  while (v11 != 160);
}

- ($1D129F7B4C980C50E70029647222EF17)highestPriorityStyleTransitionState
{
  v3 = self + 6;
  v4 = -5;
  while ((LOBYTE(v3[-1].var2) & 1) == 0)
  {
    v3 = (v3 - 32);
    if (__CFADD__(v4++, 1))
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0.0;
      return self;
    }
  }

  *retstr = *v3;
  return self;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = 0;
  p_transitionFraction = &self->_stateTable[0].state.transitionFraction;
  do
  {
    if (*(p_transitionFraction - 3))
    {
      v6 = *p_transitionFraction;
      v8 = *(p_transitionFraction - 2);
      v7 = *(p_transitionFraction - 1);
      v9 = [v3 appendUnsignedInteger:v4];
      v10 = [v3 appendInteger:v8];
      v11 = [v3 appendInteger:v7];
      v12 = [v3 appendCGFloat:v6];
    }

    ++v4;
    p_transitionFraction += 4;
  }

  while (v4 != 5);
  v13 = [v3 hash];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = v5;
    valid = self->_stateTable[0].valid;
    if ((v5[8] ^ valid))
    {
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = v5 + 32;
      p_transitionFraction = &self->_stateTable[0].state.transitionFraction;
      do
      {
        if (valid)
        {
          v12 = *(p_transitionFraction - 2) == *(v10 - 2) && *(p_transitionFraction - 1) == *(v10 - 1);
          if (!v12 || !BSFloatEqualToFloat())
          {
            break;
          }
        }

        v9 = v8 > 3;
        if (v8 == 4)
        {
          break;
        }

        LOBYTE(valid) = *(p_transitionFraction + 8);
        v13 = v10[8] ^ valid;
        v10 += 32;
        p_transitionFraction += 4;
        ++v8;
      }

      while ((v13 & 1) == 0);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  v5 = *&self->_stateTable[0].state.endStyle;
  *(result + 8) = *&self->_stateTable[0].valid;
  *(result + 24) = v5;
  v6 = *&self->_stateTable[1].state.endStyle;
  v7 = *&self->_stateTable[2].valid;
  v8 = *&self->_stateTable[2].state.endStyle;
  *(result + 40) = *&self->_stateTable[1].valid;
  *(result + 88) = v8;
  *(result + 72) = v7;
  *(result + 56) = v6;
  v9 = *&self->_stateTable[3].state.endStyle;
  v10 = *&self->_stateTable[4].valid;
  v11 = *&self->_stateTable[4].state.endStyle;
  *(result + 104) = *&self->_stateTable[3].valid;
  *(result + 152) = v11;
  *(result + 136) = v10;
  *(result + 120) = v9;
  return result;
}

- (PBUIPosterWallpaperWindowSceneStyleTransitionState)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PBUIPosterWallpaperWindowSceneStyleTransitionState *)self init];
  if (v5)
  {
    v18 = v4;
    v6 = xpc_dictionary_get_array(v4, "table");
    v7 = v6;
    if (v6)
    {
      count = xpc_array_get_count(v6);
      if (count)
      {
        v9 = count;
        for (i = 0; i != v9; ++i)
        {
          v11 = xpc_array_get_dictionary(v7, i);
          v12 = v11;
          if (v11)
          {
            uint64 = xpc_dictionary_get_uint64(v11, "priority");
            int64 = xpc_dictionary_get_int64(v12, "startStyle");
            v15 = xpc_dictionary_get_int64(v12, "endStyle");
            v16 = MEMORY[0x223D62160](v12, "transitionFraction");
            v19[0] = int64;
            v19[1] = v15;
            *&v19[2] = v16;
            [(PBUIPosterWallpaperWindowSceneStyleTransitionState *)v5 setWallpaperStyleTransitionState:v19 forPriority:uint64];
          }
        }
      }
    }

    v4 = v18;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  empty = xpc_array_create_empty();
  v5 = 0;
  p_transitionFraction = &self->_stateTable[0].state.transitionFraction;
  do
  {
    if (*(p_transitionFraction - 3))
    {
      v7 = *p_transitionFraction;
      v9 = *(p_transitionFraction - 2);
      v8 = *(p_transitionFraction - 1);
      v10 = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(v10, "priority", v5);
      xpc_dictionary_set_int64(v10, "startStyle", v9);
      xpc_dictionary_set_int64(v10, "endStyle", v8);
      MEMORY[0x223D62280](v10, "transitionFraction", v7);
      xpc_array_append_value(empty, v10);
    }

    ++v5;
    p_transitionFraction += 4;
  }

  while (v5 != 5);
  xpc_dictionary_set_value(xdict, "table", empty);
}

- (id)succinctDescription
{
  v2 = [(PBUIPosterWallpaperWindowSceneStyleTransitionState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIPosterWallpaperWindowSceneStyleTransitionState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PBUIPosterWallpaperWindowSceneStyleTransitionState *)self succinctDescriptionBuilder];
  v6 = 0;
  v7 = &self->_stateTable[0].valid + 1;
  do
  {
    v8 = *(v7 - 1);
    v15[0] = *v7;
    *(v15 + 15) = *(v7 + 15);
    if (v8)
    {
      v9 = PBUIStringForWallpaperStylePriority(v6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __92__PBUIPosterWallpaperWindowSceneStyleTransitionState_descriptionBuilderWithMultilinePrefix___block_invoke;
      v11[3] = &unk_2783620D0;
      v12 = v5;
      v13 = v8;
      *v14 = v15[0];
      *&v14[15] = *(v15 + 15);
      [v12 appendBodySectionWithName:v9 multilinePrefix:v4 block:v11];
    }

    ++v6;
    v7 += 32;
  }

  while (v6 != 5);

  return v5;
}

id __92__PBUIPosterWallpaperWindowSceneStyleTransitionState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PBUIWallpaperStyleDescription(*(a1 + 48));
  [v2 appendString:v3 withName:@"startStyle"];

  v4 = *(a1 + 32);
  v5 = PBUIWallpaperStyleDescription(*(a1 + 56));
  [v4 appendString:v5 withName:@"endStyle"];

  return [*(a1 + 32) appendDouble:@"transitionFraction" withName:6 decimalPrecision:*(a1 + 64)];
}

@end