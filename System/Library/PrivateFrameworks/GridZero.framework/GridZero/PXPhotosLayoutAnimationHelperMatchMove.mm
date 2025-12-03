@interface PXPhotosLayoutAnimationHelperMatchMove
- (double)animationDuration;
- (void)_adjustAnimation:(id)animation geometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteIndexRange:(_PXGSpriteIndexRange)range appearing:(BOOL)appearing;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustPresentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos count:(unsigned int)count;
- (void)animation:(id)animation updateSpriteTransferMap:(unsigned int *)map forSpritesRemovedFromIndexes:(id)indexes presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos spritesInsertedToIndexes:(id)toIndexes targetGeometries:(id *)self0 styles:(id *)self1 infos:(id *)self2 rootLayout:(id)self3;
@end

@implementation PXPhotosLayoutAnimationHelperMatchMove

- (void)animation:(id)animation adjustPresentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos count:(unsigned int)count
{
  if (count)
  {
    v7 = *MEMORY[0x277D73D10];
    countCopy = count;
    p_var2 = &styles->var2;
    do
    {
      *p_var2 = v7;
      p_var2 += 40;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)_adjustAnimation:(id)animation geometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteIndexRange:(_PXGSpriteIndexRange)range appearing:(BOOL)appearing
{
  animationCopy = animation;
  v14 = animationCopy;
  if (appearing)
  {
    fromSnapshot = [animationCopy fromSnapshot];
    [v14 toSnapshot];
  }

  else
  {
    fromSnapshot = [animationCopy toSnapshot];
    [v14 fromSnapshot];
  }
  v16 = ;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __113__PXPhotosLayoutAnimationHelperMatchMove__adjustAnimation_geometries_styles_infos_forSpriteIndexRange_appearing___block_invoke;
  v19[3] = &unk_278298280;
  geometriesCopy = geometries;
  stylesCopy = styles;
  infosCopy = infos;
  v20 = v16;
  v21 = fromSnapshot;
  v17 = fromSnapshot;
  v18 = v16;
  [v18 enumerateObjectIdentifiersForInfos:infos count:HIDWORD(*&range) usingBlock:v19];
}

void __113__PXPhotosLayoutAnimationHelperMatchMove__adjustAnimation_geometries_styles_infos_forSpriteIndexRange_appearing___block_invoke(uint64_t a1, void *a2, char a3, unsigned int a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 48) + 32 * a4;
  [*(a1 + 32) visibleRect];
  v10 = *(v9 + 24);
  v11 = vmul_f32(v10, 0x3F0000003F000000);
  v22.origin.x = *v9 - v11.f32[0];
  v22.origin.y = *(v9 + 8) - v11.f32[1];
  v22.size.width = v10.f32[0];
  v22.size.height = v10.f32[1];
  if (CGRectIntersectsRect(v21, v22))
  {
    v12 = *(a1 + 56) + 160 * v8;
    v13 = *(a1 + 64) + 40 * v8;
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__PXPhotosLayoutAnimationHelperMatchMove__adjustAnimation_geometries_styles_infos_forSpriteIndexRange_appearing___block_invoke_2;
    v15[3] = &unk_278298258;
    v17 = v13;
    v20 = a3;
    v16 = v14;
    v18 = v9;
    v19 = v12;
    [v16 enumerateSpritesWithObjectIdentifier:v7 usingBlock:v15];
  }
}

__n128 __113__PXPhotosLayoutAnimationHelperMatchMove__adjustAnimation_geometries_styles_infos_forSpriteIndexRange_appearing___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4, _BYTE *a5)
{
  if (*(a3[3] + 1) == *(*(a1 + 40) + 1) && *(a1 + 64) == a4)
  {
    [*(a1 + 32) visibleRect];
    v8 = a3[1];
    v9 = *(v8 + 24);
    v10 = vmul_f32(v9, 0x3F0000003F000000);
    v15.origin.x = *v8 - v10.f32[0];
    v15.origin.y = *(v8 + 8) - v10.f32[1];
    v15.size.width = v9.f32[0];
    v15.size.height = v9.f32[1];
    if (CGRectIntersectsRect(v14, v15))
    {
      v12 = a3[1];
      v13 = *(a1 + 48);
      *v13 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *(v13 + 24) = *(v12 + 24);
      *(*(a1 + 56) + 4) = *(a3[2] + 4);
      result = *(a3[2] + 36);
      *(*(a1 + 56) + 36) = result;
      *a5 = 1;
    }
  }

  return result;
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range
{
  length = range.length;
  if (range.length)
  {
    p_var2 = &geometries->var0.var2;
    stylesCopy = styles;
    do
    {
      stylesCopy->var0 = 0.0;
      stylesCopy = (stylesCopy + 160);
      *p_var2 = *p_var2 + 50.0;
      p_var2 += 4;
      --length;
    }

    while (length);
  }

  [PXPhotosLayoutAnimationHelperMatchMove _adjustAnimation:"_adjustAnimation:geometries:styles:infos:forSpriteIndexRange:appearing:" geometries:animation styles:geometries infos:styles forSpriteIndexRange:infos appearing:?];
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range
{
  if (range.length)
  {
    v7 = (range.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_21AC7D600;
    v9 = xmmword_21AC7D610;
    v10 = vdupq_n_s64(range.length - 1);
    v11 = vdupq_n_s64(4uLL);
    stylesCopy = styles;
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        stylesCopy->var0 = 0.0;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        stylesCopy[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        stylesCopy[7].var1.var0.var0.var2 = 0.0;
        stylesCopy[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      stylesCopy = (stylesCopy + 640);
      v7 -= 4;
    }

    while (v7);
  }

  [PXPhotosLayoutAnimationHelperMatchMove _adjustAnimation:"_adjustAnimation:geometries:styles:infos:forSpriteIndexRange:appearing:" geometries:animation styles:geometries infos:styles forSpriteIndexRange:infos appearing:?];
}

- (void)animation:(id)animation updateSpriteTransferMap:(unsigned int *)map forSpritesRemovedFromIndexes:(id)indexes presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos spritesInsertedToIndexes:(id)toIndexes targetGeometries:(id *)self0 styles:(id *)self1 infos:(id *)self2 rootLayout:(id)self3
{
  toIndexesCopy = toIndexes;
  indexesCopy = indexes;
  animationCopy = animation;
  fromSnapshot = [animationCopy fromSnapshot];
  toSnapshot = [animationCopy toSnapshot];

  v23 = [toIndexesCopy mutableCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __204__PXPhotosLayoutAnimationHelperMatchMove_animation_updateSpriteTransferMap_forSpritesRemovedFromIndexes_presentedGeometries_styles_infos_spritesInsertedToIndexes_targetGeometries_styles_infos_rootLayout___block_invoke;
  v27[3] = &unk_278298230;
  v28 = fromSnapshot;
  v29 = toSnapshot;
  v30 = v23;
  geometriesCopy = geometries;
  infosCopy = infos;
  mapCopy = map;
  v24 = v23;
  v25 = toSnapshot;
  v26 = fromSnapshot;
  [v26 enumerateObjectIdentifiersForSpriteIndexes:indexesCopy infos:infos usingBlock:v27];
}

void __204__PXPhotosLayoutAnimationHelperMatchMove_animation_updateSpriteTransferMap_forSpritesRemovedFromIndexes_presentedGeometries_styles_infos_spritesInsertedToIndexes_targetGeometries_styles_infos_rootLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3, char a4, unsigned int a5)
{
  v9 = a3;
  v10 = *(a1 + 64);
  v11 = *(a1 + 56) + 32 * a5;
  [*(a1 + 32) visibleRect];
  v12 = *(v11 + 24);
  v13 = vmul_f32(v12, 0x3F0000003F000000);
  v25.origin.x = *v11 - v13.f32[0];
  v25.origin.y = *(v11 + 8) - v13.f32[1];
  v25.size.width = v12.f32[0];
  v25.size.height = v12.f32[1];
  if (CGRectIntersectsRect(v24, v25))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __204__PXPhotosLayoutAnimationHelperMatchMove_animation_updateSpriteTransferMap_forSpritesRemovedFromIndexes_presentedGeometries_styles_infos_spritesInsertedToIndexes_targetGeometries_styles_infos_rootLayout___block_invoke_2;
    v17[3] = &unk_278298208;
    v20 = v10 + 40 * a5;
    v23 = a4;
    v14 = *(a1 + 40);
    v18 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 72);
    v19 = v15;
    v21 = v16;
    v22 = a2;
    [v14 enumerateSpritesWithObjectIdentifier:v9 usingBlock:v17];
  }
}

uint32x2_t __204__PXPhotosLayoutAnimationHelperMatchMove_animation_updateSpriteTransferMap_forSpritesRemovedFromIndexes_presentedGeometries_styles_infos_spritesInsertedToIndexes_targetGeometries_styles_infos_rootLayout___block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5)
{
  SupportedResize = PXGMediaKindGetSupportedResize();
  v12 = *(a1 + 48);
  if (SupportedResize)
  {
    v13 = *(a3 + 24);
  }

  else
  {
    v13 = *(a3 + 24);
    v17 = vceq_f32(v12[1], v13[1]);
    result = vpmin_u32(v17, v17);
    if ((result.i32[0] & 0x80000000) == 0)
    {
      return result;
    }
  }

  if (v12->u8[1] == v13->u8[1] && *(a1 + 72) == a4 && [*(a1 + 32) containsIndex:a2])
  {
    [*(a1 + 32) removeIndex:a2];
    [*(a1 + 40) visibleRect];
    v14 = *(a3 + 8);
    v15 = *(v14 + 24);
    v16 = vmul_f32(v15, 0x3F0000003F000000);
    v19.origin.x = *v14 - v16.f32[0];
    v19.origin.y = *(v14 + 8) - v16.f32[1];
    v19.size.width = v15.f32[0];
    v19.size.height = v15.f32[1];
    if (CGRectIntersectsRect(v18, v19))
    {
      *(*(a1 + 56) + 4 * *(a1 + 64)) = a2;
    }

    *a5 = 1;
  }

  return result;
}

- (double)animationDuration
{
  v2 = +[PXPhotosGridSettings sharedInstance];
  [v2 matchMoveAnimationDuration];
  v4 = v3;

  return v4;
}

@end