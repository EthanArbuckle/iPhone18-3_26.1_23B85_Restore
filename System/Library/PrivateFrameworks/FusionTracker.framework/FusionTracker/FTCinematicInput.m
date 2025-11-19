@interface FTCinematicInput
- (CGPoint)tapPosition;
- (FTCinematicInput)init;
- (vector<ft::Observation,)mapToInternalObservations;
- (void)setSourceFrameTimestamp:(id *)a3;
@end

@implementation FTCinematicInput

- (FTCinematicInput)init
{
  v6.receiver = self;
  v6.super_class = FTCinematicInput;
  v2 = [(FTCinematicInput *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FTCinematicInput *)v2 setHighPriorityTrackId:-1];
    [(FTCinematicInput *)v3 setTapPosition:-1.0, -1.0];
    v4 = v3;
  }

  return v3;
}

- (vector<ft::Observation,)mapToInternalObservations
{
  v38 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v4 = [(FTCinematicInput *)self observations];
  v5 = [v4 count];
  if (v5)
  {
    if (v5 < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(FTCinematicInput *)self observations];
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        [v10 box];
        v23[0] = v11;
        v23[1] = v12;
        v23[2] = v13;
        v23[3] = v14;
        v23[4] = [v10 objectKind];
        [v10 confidence];
        v24 = v15;
        if (v10)
        {
          [v10 frameTimestamp];
          [v10 lastDetectionTimestamp];
        }

        else
        {
          v27 = 0u;
          v26 = 0u;
          v25 = 0u;
        }

        v16 = objc_opt_respondsToSelector();
        v17 = -1;
        if (v16)
        {
          v17 = [v10 identifier];
        }

        v28 = v17;
        v29 = 1;
        [(FTCinematicInput *)self sourceFrameTimestamp];
        *(&v22 + 1) = v7;
        v30 = v21;
        v31 = v22;
        v32 = 1;
        std::vector<ft::Observation>::push_back[abi:ne200100](retstr, v23);
        ++v7;
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  return result;
}

- (void)setSourceFrameTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_sourceFrameTimestamp.epoch = a3->var3;
  *&self->_sourceFrameTimestamp.value = v3;
}

- (CGPoint)tapPosition
{
  x = self->_tapPosition.x;
  y = self->_tapPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end