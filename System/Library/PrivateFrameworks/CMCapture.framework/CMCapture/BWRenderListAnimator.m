@interface BWRenderListAnimator
- (BOOL)isCompleted;
- (BOOL)isPrepared;
- (BWRenderListAnimator)initWithInitialParameters:(id)a3 initialRenderList:(id)a4 finalParameters:(id)a5 finalRenderList:(id)a6 animation:(int64_t)a7;
- (id)interpolateParameters;
- (uint64_t)_configureSpringSimulationWithAnimation:(uint64_t)result;
- (uint64_t)_parametersContainLiveStageRendering:(uint64_t)a1;
- (void)dealloc;
- (void)prepareWithInputVideoFormat:(id)a3 inputMediaPropertiesByAttachedMediaKey:(id)a4;
- (void)setPrepared:(uint64_t)a1;
@end

@implementation BWRenderListAnimator

- (BOOL)isPrepared
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  preparationMutexQueue = self->_preparationMutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__BWRenderListAnimator_isPrepared__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(preparationMutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)interpolateParameters
{
  if (![(BWRenderListAnimator *)self isCompleted])
  {
    [(BWSpringSimulation *)self->_springSimulation update];
    [(BWSpringSimulation *)self->_springSimulation output];
    if (v4 >= 1.0 || ([(BWSpringSimulation *)self->_springSimulation output], v5 = 0.0, v6 > 0.0))
    {
      [(BWSpringSimulation *)self->_springSimulation output];
      v5 = 1.0;
      if (v7 < 1.0)
      {
        [(BWSpringSimulation *)self->_springSimulation output];
        v5 = v8;
      }
    }

    initialParameters = self->_initialParameters;
    if (!initialParameters)
    {
      initialParameters = self->_initialRenderList;
    }

    v10 = [initialParameters parameterList];
    finalParameters = self->_finalParameters;
    if (!finalParameters)
    {
      finalParameters = self->_finalRenderList;
    }

    v12 = [finalParameters parameterList];
    interpolatingParameters = self->_interpolatingParameters;
    p_interpolatingParameters = &self->_interpolatingParameters;
    v14 = [(BWRenderListParameters *)interpolatingParameters parameterList];
    if (v10)
    {
      v15 = *v10;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      if (v12)
      {
LABEL_13:
        v16 = *v12;
        if (v14)
        {
LABEL_14:
          slh_first = v14->slh_first;
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v16 = 0;
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_17:
    slh_first = 0;
    while (1)
    {
LABEL_42:
      if (!(v15 | v16))
      {
        return *p_interpolatingParameters;
      }

      if (v15)
      {
        v18 = *(v15 + 8);
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = 0;
        if (!v16)
        {
LABEL_20:
          v19 = 0;
          if (!slh_first)
          {
            goto LABEL_40;
          }

          goto LABEL_24;
        }
      }

      v19 = *(v16 + 8);
      if (!slh_first)
      {
        goto LABEL_40;
      }

LABEL_24:
      v20 = *(slh_first + 1);
      if (v18 && v19 && v20 && (v21 = [v18 type], v21 == objc_msgSend(v19, "type")) && (v22 = objc_msgSend(v18, "type"), v22 == objc_msgSend(v20, "type")))
      {
        *&v23 = v5;
        [v20 updateByInterpolatingFromParameters:v18 toParameters:v19 withFractionComplete:v23];
        v15 = *v15;
LABEL_38:
        v16 = *v16;
LABEL_39:
        slh_first = *slh_first;
      }

      else
      {
        if (v18)
        {
          if (v20)
          {
            v24 = [v18 type];
            if (v24 == [v20 type])
            {
              *&v25 = v5;
              [v20 updateByInterpolatingFromParameters:v18 toParameters:0 withFractionComplete:v25];
              v15 = *v15;
              goto LABEL_39;
            }
          }
        }

        if (v19)
        {
          if (v20)
          {
            v26 = [v19 type];
            if (v26 == [v20 type])
            {
              *&v27 = v5;
              [v20 updateByInterpolatingFromParameters:0 toParameters:v19 withFractionComplete:v27];
              goto LABEL_38;
            }
          }
        }

LABEL_40:
        if (v15 != 0 || v16 != 0)
        {
          return *p_interpolatingParameters;
        }

        v15 = 0;
        v16 = 0;
      }
    }
  }

  p_interpolatingParameters = &self->_interpolatingParameters;
  return *p_interpolatingParameters;
}

- (BOOL)isCompleted
{
  if ([(BWSpringSimulation *)self->_springSimulation isCompleted])
  {
    return 1;
  }

  [(BWSpringSimulation *)self->_springSimulation output];
  return v4 > 0.998;
}

- (BWRenderListAnimator)initWithInitialParameters:(id)a3 initialRenderList:(id)a4 finalParameters:(id)a5 finalRenderList:(id)a6 animation:(int64_t)a7
{
  v59.receiver = self;
  v59.super_class = BWRenderListAnimator;
  v12 = [(BWRenderListAnimator *)&v59 init];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  if (a7)
  {
    v12->_preparationMutexQueue = dispatch_queue_create("com.apple.bwgraph.render-list-animator.preparation", 0);
    *(v13 + 56) = a3;
    *(v13 + 48) = a4;
    *(v13 + 72) = a5;
    *(v13 + 64) = a6;
    if ([*(v13 + 48) affectsMetadata])
    {
      v15 = 1;
    }

    else
    {
      v15 = [*(v13 + 64) affectsMetadata];
    }

    v52 = [[BWRenderList alloc] initWithAnimationSupported:1 affectsMetadata:v15];
    v16 = [(BWRenderList *)v52 rendererList];
    v17 = [*(v13 + 48) rendererList];
    v18 = [*(v13 + 64) rendererList];
    v51 = objc_alloc_init(BWRenderListParameters);
    v55 = [(BWRenderListParameters *)v51 parameterList];
    if (a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a4;
    }

    v20 = [v19 parameterList];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = a6;
    }

    v22 = [v21 parameterList];
    if (v17)
    {
      v23 = *v17;
    }

    else
    {
      v23 = 0;
    }

    v53 = a7;
    if (v18)
    {
      v24 = *v18;
    }

    else
    {
      v24 = 0;
    }

    v54 = v16;
    if (v16)
    {
      v16 = v16->slh_first;
    }

    if (v20)
    {
      v25 = *v20;
    }

    else
    {
      v25 = 0;
    }

    if (v22)
    {
      v26 = *v22;
    }

    else
    {
      v26 = 0;
    }

    if (v55)
    {
      slh_first = v55->slh_first;
    }

    else
    {
      slh_first = 0;
    }

    while (1)
    {
      if (!(v23 | v24))
      {
        a7 = v13;
        *(v13 + 24) = v52;
        *(v13 + 32) = v51;
        [(BWRenderListAnimator *)v13 _configureSpringSimulationWithAnimation:v53];
        return a7;
      }

      if (v23)
      {
        v27 = *(v23 + 8);
        if (!v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = 0;
        if (!v24)
        {
LABEL_34:
          v28 = 0;
          if (!v25)
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      v28 = *(v24 + 8);
      if (!v25)
      {
LABEL_38:
        v29 = 0;
        goto LABEL_39;
      }

LABEL_35:
      v29 = v25[1];
LABEL_39:
      v57 = v26;
      v58 = v25;
      if (v26)
      {
        v30 = v26[1];
        if (!v27)
        {
          goto LABEL_53;
        }

LABEL_43:
        if (!v28)
        {
          goto LABEL_53;
        }

        v31 = [v27 type];
        if (v31 != [v28 type])
        {
          goto LABEL_53;
        }

        v32 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v33 = v28;
        v34 = v54;
        if (v16)
        {
          v34 = v16;
        }

        v32->slh_first = v34->slh_first;
        v32[1].slh_first = v33;
        v34->slh_first = v32;
        if (v29)
        {
          v35 = v29;
        }

        else
        {
          v35 = v30;
        }

        v36 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v37 = [v35 copyWithZone:0];
        v38 = v55;
        if (slh_first)
        {
          v38 = slh_first;
        }

        *v36 = v38->slh_first;
        *(v36 + 1) = v37;
        v38->slh_first = v36;
        v23 = *v23;
        v25 = *v58;
        v24 = *v24;
        v26 = *v57;
        slh_first = v36;
        v16 = v32;
      }

      else
      {
        v30 = 0;
        if (v27)
        {
          goto LABEL_43;
        }

LABEL_53:
        if (v23)
        {
          v39 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v40 = v27;
          v41 = v54;
          if (v16)
          {
            v41 = v16;
          }

          v39->slh_first = v41->slh_first;
          v39[1].slh_first = v40;
          v41->slh_first = v39;
          v42 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v43 = [v29 copyWithZone:0];
          v44 = v55;
          if (slh_first)
          {
            v44 = slh_first;
          }

          *v42 = v44->slh_first;
          *(v42 + 1) = v43;
          v44->slh_first = v42;
          v23 = *v23;
          v26 = v57;
          v25 = *v58;
          slh_first = v42;
          v16 = v39;
        }

        else if (v24)
        {
          v45 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v46 = v28;
          v47 = v54;
          if (v16)
          {
            v47 = v16;
          }

          v45->slh_first = v47->slh_first;
          v45[1].slh_first = v46;
          v47->slh_first = v45;
          v48 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v49 = [v30 copyWithZone:0];
          v23 = 0;
          v50 = v55;
          if (slh_first)
          {
            v50 = slh_first;
          }

          *v48 = v50->slh_first;
          *(v48 + 1) = v49;
          v50->slh_first = v48;
          v24 = *v24;
          v25 = v58;
          v26 = *v57;
          slh_first = v48;
          v16 = v45;
        }

        else
        {
          v24 = 0;
          v23 = 0;
          v26 = v57;
          v25 = v58;
        }
      }
    }
  }

  return a7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWRenderListAnimator;
  [(BWRenderListAnimator *)&v3 dealloc];
}

- (void)prepareWithInputVideoFormat:(id)a3 inputMediaPropertiesByAttachedMediaKey:(id)a4
{
  if (![(BWRenderListAnimator *)self isPrepared])
  {
    [(BWRenderListAnimator *)self prepareWithInputVideoFormat:a3 inputMediaPropertiesByAttachedMediaKey:a4];
  }
}

- (uint64_t)_configureSpringSimulationWithAnimation:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(BWSpringSimulation);
    *(v3 + 40) = v4;
    [(BWSpringSimulation *)v4 resetWithInput:1.0 initialOutput:0.0 initialVelocity:0.0];
    v5 = *(v3 + 56);
    if (!v5)
    {
      v5 = *(v3 + 48);
    }

    v6 = [v5 parameterList];
    v7 = *(v3 + 72);
    if (!v7)
    {
      v7 = *(v3 + 64);
    }

    v8 = [v7 parameterList];
    v9 = [(BWRenderListAnimator *)v3 _parametersContainLiveStageRendering:v6];
    result = [(BWRenderListAnimator *)v3 _parametersContainLiveStageRendering:v8];
    if (v9 == result)
    {
      v12 = a2 - 1;
      if ((a2 - 1) > 2)
      {
        return result;
      }

      v11 = dbl_1AD0466C8[v12];
      v10 = dbl_1AD0466E0[v12];
    }

    else
    {
      v10 = 15.0;
      v11 = 100.0;
    }

    [*(v3 + 40) setTension:v11];
    v13 = *(v3 + 40);

    return [v13 setFriction:v10];
  }

  return result;
}

- (void)setPrepared:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __36__BWRenderListAnimator_setPrepared___block_invoke;
    v3[3] = &unk_1E7990078;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

- (uint64_t)_parametersContainLiveStageRendering:(uint64_t)a1
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *a2;
    if (*a2)
    {
      while (1)
      {
        v5 = v4[1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 renderingStrategy] == 5 || objc_msgSend(v5, "renderingStrategy") == 7))
        {
          break;
        }

        v4 = *v4;
        if (!v4)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)prepareWithInputVideoFormat:(uint64_t)a3 inputMediaPropertiesByAttachedMediaKey:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 48) prepareWithParameters:*(a1 + 56) forInputVideoFormat:a2 inputMediaPropertiesByAttachedMediaKey:a3];
  [*(a1 + 64) prepareWithParameters:*(a1 + 72) forInputVideoFormat:a2 inputMediaPropertiesByAttachedMediaKey:a3];
  [*(a1 + 24) prepareWithParameters:*(a1 + 32) forInputVideoFormat:a2 inputMediaPropertiesByAttachedMediaKey:a3];

  [(BWRenderListAnimator *)a1 setPrepared:?];
}

@end