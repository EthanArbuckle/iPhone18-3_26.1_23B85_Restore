@interface HUAnimationUtilities
+ (void)schedulePopAnimation:(id)animation scaleFactor:(double)factor beginDuration:(double)duration endDuration:(double)endDuration completion:(id)completion;
@end

@implementation HUAnimationUtilities

+ (void)schedulePopAnimation:(id)animation scaleFactor:(double)factor beginDuration:(double)duration endDuration:(double)endDuration completion:(id)completion
{
  animationCopy = animation;
  completionCopy = completion;
  [animationCopy setUserInteractionEnabled:0];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  if (animationCopy)
  {
    [animationCopy transform];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke;
  aBlock[3] = &unk_277DB8090;
  v13 = animationCopy;
  v35 = v13;
  v36 = completionCopy;
  v14 = completionCopy;
  v15 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke_2;
  v28[3] = &unk_277DB80C0;
  v16 = v13;
  v29 = v16;
  v30 = v37;
  v31 = v38;
  v32 = v39;
  factorCopy = factor;
  v17 = _Block_copy(v28);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke_3;
  v21[3] = &unk_277DB8110;
  endDurationCopy = endDuration;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v22 = v16;
  v23 = v15;
  v18 = v15;
  v19 = v16;
  v20 = _Block_copy(v21);
  [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v17 options:v20 animations:duration completion:0.0];
}

uint64_t __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 56);
  *&v6.a = *(a1 + 40);
  *&v6.c = v3;
  *&v6.tx = *(a1 + 72);
  CGAffineTransformScale(&v7, &v6, v2, v2);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

void __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke_4;
  v5[3] = &unk_277DB80E8;
  v6 = *(a1 + 32);
  v4 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = v4;
  v9 = *(a1 + 88);
  [v2 animateWithDuration:0 delay:v5 options:*(a1 + 40) animations:v3 completion:0.0];
}

uint64_t __94__HUAnimationUtilities_schedulePopAnimation_scaleFactor_beginDuration_endDuration_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

@end