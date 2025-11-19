@interface UIView
@end

@implementation UIView

void __81__UIView_SafariServicesExtras___sf_viewAncestrySummaryWithMinDepth_paddingLevel___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if (*(a1 + 48) + a3)
  {
    v5 = 0;
    do
    {
      [*(a1 + 32) appendString:@"\t"];
      ++v5;
    }

    while (v5 < *(a1 + 48) + a3);
  }

  [*(a1 + 32) appendString:v6];
  if ([*(a1 + 40) count] - 1 > a3)
  {
    [*(a1 + 32) appendString:@"\n"];
  }
}

void __61__UIView_SafariServicesExtras___sf_setOrderedSubviews_count___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1[7] + 8 * a2);
  v6 = a1[4];
  ++*(*(a1[5] + 8) + 24);
  v7 = [v6 objectAtIndexedSubscript:?];

  if (v5 != v7)
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __157__UIView_SafariServicesExtras___sf_animateLinkImage_withAnimation_fromRect_inView_toRect_inView_afterImageDisappearsBlock_afterDestinationLayerBouncesBlock___block_invoke(uint64_t a1, void *a2, int a3)
{
  v12 = a2;
  v5 = [v12 valueForKey:@"afterImageDisappearsKey"];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  v7 = [v12 valueForKey:@"afterDestinationLayerBounces"];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
  }

  v9 = [v12 valueForKey:@"layer"];
  [v9 removeFromSuperlayer];

  if (a3)
  {
    v10 = [v12 valueForKey:@"isDestinationLayerAnimation"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      [*(a1 + 48) _sf_cancelLinkAnimationsOnSourceWindow:*(a1 + 32) destinationWindow:*(a1 + 40)];
    }
  }
}

uint64_t __122__UIView_SafariGraphicsUtilities__sf_animate_usingDefaultTimingWithOptions_preferredFrameRateRange_animations_completion___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  LODWORD(a4) = *(a1 + 56);
  return [*(a1 + 40) _modifyAnimationsWithPreferredFrameRateRange:1638400 updateReason:*(a1 + 32) animations:{a2, a3, a4}];
}

uint64_t __156__UIView_SafariGraphicsUtilities__sf_animate_usingDefaultDampedSpringWithDelay_initialSpringVelocity_options_preferredFrameRateRange_animations_completion___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  LODWORD(a4) = *(a1 + 56);
  return [*(a1 + 40) _modifyAnimationsWithPreferredFrameRateRange:1638400 updateReason:*(a1 + 32) animations:{a2, a3, a4}];
}

uint64_t __63__UIView_SFUnifiedTabBarExtras__safari_tabBarBounceAfterDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAnimationForKey:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 removeAnimationForKey:v3];
}

@end