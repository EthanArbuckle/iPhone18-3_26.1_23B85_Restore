@interface CEKLightingCubeRenderer
- (CEKLightingCubeRenderer)initWithCube:(id)cube appearance:(id)appearance components:(int64_t)components;
- (void)renderInContext:(CGContext *)context size:(CGSize)size scale:(double)scale cornerRadius:(double)radius stroke:(double)stroke;
@end

@implementation CEKLightingCubeRenderer

- (CEKLightingCubeRenderer)initWithCube:(id)cube appearance:(id)appearance components:(int64_t)components
{
  cubeCopy = cube;
  appearanceCopy = appearance;
  v14.receiver = self;
  v14.super_class = CEKLightingCubeRenderer;
  v11 = [(CEKLightingCubeRenderer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cube, cube);
    objc_storeStrong(&v12->_appearance, appearance);
    v12->_components = components;
  }

  return v12;
}

- (void)renderInContext:(CGContext *)context size:(CGSize)size scale:(double)scale cornerRadius:(double)radius stroke:(double)stroke
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = size.width - stroke * 0.5;
  v11 = size.height - stroke * 0.5;
  radius = [(CEKLightingCube *)self->_cube pathForOutlineWithSize:v10 cornerRadius:v11, radius];
  v13 = MEMORY[0x1E695EFF8];
  v14 = self->_components;
  if (v14)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    *components = xmmword_1B7EDA6D0;
    v16 = CGColorCreate(DeviceGray, components);
    CGColorSpaceRelease(DeviceGray);
    CGContextSetFillColorWithColor(context, v16);
    CGContextAddPath(context, radius);
    CGContextFillPath(context);
    CGContextBeginPath(context);
    CGColorRelease(v16);
    v14 = self->_components;
  }

  v41 = v13[1];
  v42 = *v13;
  if ((v14 & 2) != 0)
  {
    CGContextAddPath(context, radius);
    CGContextClip(context);
    CGContextBeginPath(context);
    background = [(CEKLightingCubeAppearance *)self->_appearance background];
    v51.y = v41;
    v51.x = v42;
    v53.x = v42;
    v53.y = v41;
    CGContextDrawRadialGradient(context, background, v51, 0.0, v53, v10 * 0.5, 3u);
    CGContextResetClip(context);
    v14 = self->_components;
  }

  v18 = v11 / 6.0;
  if ((v14 & 4) != 0 && [(CEKLightingCubeAppearance *)self->_appearance verticalFillColor])
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke;
    v46[3] = &unk_1E7CC6840;
    v46[4] = self;
    *&v46[5] = v10;
    *&v46[6] = v11;
    *&v46[7] = v11 / 6.0;
    v19 = 1;
    Mask = CreateMask(1, v46, v10, v11, scale);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke_2;
    v45[3] = &unk_1E7CC6840;
    v45[4] = self;
    *&v45[5] = v10;
    *&v45[6] = v11;
    *&v45[7] = v11 / 6.0;
    v21 = CreateMask(1, v45, v10, v11, scale);
    do
    {
      v22 = [(CEKLightingCube *)self->_cube pathForPlane:v19 size:v10, v11];
      [(CEKLightingCube *)self->_cube intensityForPlane:v19];
      v24 = v23;
      if (v19 <= 2)
      {
        [(CEKLightingCubeAppearance *)self->_appearance verticalFillFrontIntensity];
        v24 = v24 * v25;
      }

      [(CEKLightingCubeAppearance *)self->_appearance verticalFillBackIntensity];
      if (v19 >= 3 && v26 != 0.0)
      {
        [(CEKLightingCubeAppearance *)self->_appearance verticalFillBackIntensity];
        v28 = v27;
        [(CEKLightingCubeAppearance *)self->_appearance verticalFillBackIntensity];
        v24 = 1.0 - v29 + v24 * v28;
      }

      verticalFillColor = [(CEKLightingCubeAppearance *)self->_appearance verticalFillColor];
      Alpha = CGColorGetAlpha([(CEKLightingCubeAppearance *)self->_appearance verticalFillColor]);
      CopyWithAlpha = CGColorCreateCopyWithAlpha(verticalFillColor, v24 * Alpha);
      CGContextSetFillColorWithColor(context, CopyWithAlpha);
      v55.origin.x = v10 * -0.5;
      v55.origin.y = v11 * -0.5;
      v55.size.width = v10;
      v55.size.height = v11;
      CGContextClipToMask(context, v55, Mask);
      v56.origin.x = v10 * -0.5;
      v56.origin.y = v11 * -0.5;
      v56.size.width = v10;
      v56.size.height = v11;
      CGContextClipToMask(context, v56, v21);
      CGContextAddPath(context, v22);
      CGContextFillPath(context);
      CGContextBeginPath(context);
      CGContextResetClip(context);
      CGColorRelease(CopyWithAlpha);
      ++v19;
    }

    while (v19 != 5);
    CGImageRelease(Mask);
    CGImageRelease(v21);
  }

  if ((self->_components & 8) != 0)
  {
    if ([(CEKLightingCubeAppearance *)self->_appearance topMask]|| [(CEKLightingCubeAppearance *)self->_appearance topFill]|| [(CEKLightingCubeAppearance *)self->_appearance topGlow])
    {
      if ([(CEKLightingCubeAppearance *)self->_appearance topMask])
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke_3;
        v44[3] = &unk_1E7CC6868;
        *&v44[5] = v10;
        *&v44[6] = v11;
        v44[4] = self;
        *&v44[7] = v42;
        *&v44[8] = v41;
        v33 = CreateMask(0, v44, v10, v11, scale);
      }

      else
      {
        v33 = 0;
      }

      [(CEKLightingCube *)self->_cube points:v48 forPlane:0 size:v10, v11];
      if ([(CEKLightingCubeAppearance *)self->_appearance topFill])
      {
        DrawPlaneFill(context, v48, [(CEKLightingCubeAppearance *)self->_appearance topFill], v33, radius, v10 * -0.5, v11 * -0.5, v10, v11);
      }

      DrawPlaneGlow(context, v48, [(CEKLightingCubeAppearance *)self->_appearance topGlow], v33, radius, 0, v18, v10 * -0.5, v11 * -0.5, v10, v11);
      CGImageRelease(v33);
    }

    if ([(CEKLightingCubeAppearance *)self->_appearance bottomMask]|| [(CEKLightingCubeAppearance *)self->_appearance bottomFill]|| [(CEKLightingCubeAppearance *)self->_appearance bottomOuterGlow]|| [(CEKLightingCubeAppearance *)self->_appearance bottomInnerGlow])
    {
      if ([(CEKLightingCubeAppearance *)self->_appearance bottomMask])
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke_4;
        v43[3] = &unk_1E7CC6868;
        *&v43[5] = v10;
        *&v43[6] = v11;
        v43[4] = self;
        *&v43[7] = v42;
        *&v43[8] = v41;
        v34 = CreateMask(0, v43, v10, v11, scale);
      }

      else
      {
        v34 = 0;
      }

      [(CEKLightingCube *)self->_cube points:v48 forPlane:5 size:v10, v11];
      if ([(CEKLightingCubeAppearance *)self->_appearance bottomFill])
      {
        DrawPlaneFill(context, v48, [(CEKLightingCubeAppearance *)self->_appearance bottomFill], v34, radius, v10 * -0.5, v11 * -0.5, v10, v11);
      }

      DrawPlaneGlow(context, v48, [(CEKLightingCubeAppearance *)self->_appearance bottomOuterGlow], v34, radius, 0, v18, v10 * -0.5, v11 * -0.5, v10, v11);
      DrawPlaneGlow(context, v48, [(CEKLightingCubeAppearance *)self->_appearance bottomInnerGlow], v34, radius, 6, -v18, v10 * -0.5, v11 * -0.5, v10, v11);
      CGImageRelease(v34);
    }
  }

  if ((self->_components & 0x10) != 0 && [(CEKLightingCubeAppearance *)self->_appearance topOver])
  {
    CGContextAddPath(context, [(CEKLightingCube *)self->_cube pathForPlane:0 size:v10, v11]);
    CGContextClip(context);
    CGContextBeginPath(context);
    topOver = [(CEKLightingCubeAppearance *)self->_appearance topOver];
    v52.y = v41;
    v52.x = v42;
    v54.x = v42;
    v54.y = v41;
    CGContextDrawRadialGradient(context, topOver, v52, 0.0, v54, v10 * 0.5, 3u);
    CGContextResetClip(context);
  }

  if ((self->_components & 0x20) != 0)
  {
    v36 = CGColorSpaceCreateDeviceGray();
    *v47 = xmmword_1B7EDA6E0;
    v37 = CGColorCreate(v36, v47);
    stroke = [(CEKLightingCube *)self->_cube centerShadowPathWithSize:v10 width:v11, stroke];
    CGContextAddPath(context, radius);
    CGContextClip(context);
    CGContextBeginPath(context);
    CGContextSetFillColorWithColor(context, v37);
    CGContextAddPath(context, stroke);
    CGContextFillPath(context);
    CGContextBeginPath(context);
    CGContextResetClip(context);
    CGColorRelease(v37);
    CGColorSpaceRelease(v36);
    v39 = [(CEKLightingCube *)self->_cube centerPathWithSize:v10, v11];
    CGContextAddPath(context, radius);
    CGContextClip(context);
    CGContextBeginPath(context);
    CGContextSetLineWidth(context, stroke);
    CGContextSetStrokeColorWithColor(context, [(CEKLightingCubeAppearance *)self->_appearance stroke]);
    CGContextAddPath(context, v39);
    CGContextStrokePath(context);
    CGContextBeginPath(context);
    CGContextResetClip(context);
    CGContextSetLineWidth(context, stroke);
    CGContextSetStrokeColorWithColor(context, [(CEKLightingCubeAppearance *)self->_appearance stroke]);
    CGContextAddPath(context, radius);
    CGContextStrokePath(context);
    CGContextBeginPath(context);
  }
}

void __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 8) points:v6 forPlane:0 size:{*(a1 + 40), *(a1 + 48)}];
  v4 = *(a1 + 56);
  v5 = [*(*(a1 + 32) + 16) topGlow];
  DrawPlaneGlow(a2, v6, v5, 0, 0, 0, v4, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
}

void __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke_2(uint64_t a1, CGContext *a2)
{
  v9[8] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 8) points:v9 forPlane:5 size:{*(a1 + 40), *(a1 + 48)}];
  v4 = [*(*(a1 + 32) + 16) bottomFill];
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  DrawPlaneFill(a2, v9, v4, 0, 0, *MEMORY[0x1E695F050], v6, v7, v8);
  DrawPlaneGlow(a2, v9, [*(*(a1 + 32) + 16) bottomOuterGlow], 0, 0, 0, *(a1 + 56), v5, v6, v7, v8);
}

void __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke_3(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 40) * 0.5;
  v5 = [*(*(a1 + 32) + 16) topMask];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = v6;
  v9 = v7;

  CGContextDrawRadialGradient(a2, v5, *&v6, 0.0, *&v8, v4, 3u);
}

void __74__CEKLightingCubeRenderer_renderInContext_size_scale_cornerRadius_stroke___block_invoke_4(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 40) * 0.5;
  v5 = [*(*(a1 + 32) + 16) bottomMask];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = v6;
  v9 = v7;

  CGContextDrawRadialGradient(a2, v5, *&v6, 0.0, *&v8, v4, 3u);
}

@end