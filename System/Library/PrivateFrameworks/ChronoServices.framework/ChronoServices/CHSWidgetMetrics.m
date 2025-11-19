@interface CHSWidgetMetrics
+ (id)sha256DataFromData:(id)a3;
+ (void)_removeSafeAreaInsetsIn:(id)a3;
+ (void)_replaceFontStyleIn:(id)a3 withTextSizeAdjustment:(int64_t)a4;
- (BOOL)_hasZeroLayoutInsets;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3 using32BitFloats:(BOOL)a4;
- (CGSize)_effectiveSizePixelAlignedForDisplayScale:(double)a3;
- (CGSize)_rawEffectiveSize;
- (CGSize)_rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale:(double)a3;
- (CGSize)_rawSizePixelAlignedForDisplayScale:(double)a3;
- (CGSize)scale;
- (CGSize)size;
- (CHSEdgeInsets)contentMargins;
- (CHSEdgeInsets)layoutInsets;
- (CHSEdgeInsets)safeAreaInsets;
- (CHSEdgeInsets)widgetGroupContentMargins;
- (CHSEdgeInsets)widgetGroupLayoutInsets;
- (CHSEdgeInsets)widgetGroupSafeAreaInsets;
- (CHSVersionedWidgetMetrics)crystalglowVersionedWidgetMetrics;
- (CHSVersionedWidgetMetrics)dawnburstVersionedWidgetMetrics;
- (CHSVersionedWidgetMetrics)luckierVersionedWidgetMetrics;
- (CHSWidgetMetrics)init;
- (CHSWidgetMetrics)initWithCoder:(id)a3;
- (CHSWidgetMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(int64_t)a6 margins:(id)a7 supportsDynamicText:(unint64_t)a8 widgetGroupMargins:(id)a9 nestedContentMetrics:(id)a10;
- (CHSWidgetMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(int64_t)a6 safeAreaInsets:(CHSEdgeInsets)a7 widgetGroupMargins:(id)a8 nestedContentMetrics:(id)a9;
- (CHSWidgetMetrics)initWithXPCDictionary:(id)a3;
- (double)_effectiveCornerRadius;
- (double)_roundToNearestOrUp:(double)a3 withScale:(double)a4;
- (id)_crystalStringKeyRepresentation;
- (id)_dawnStringKeyRepresentation;
- (id)_luckStringKeyRepresentation;
- (id)_stringKeyRepresentation;
- (id)_stringKeyRepresentationForVersion:(unint64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)filenameSafeSHAFrom:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (uint64_t)initWithSize:(double)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(double)a6 safeAreaInsets:(double)a7 layoutInsets:(double)a8 contentMargins:(double)a9 supportsDynamicText:(uint64_t)a10;
- (unint64_t)hash;
- (unint64_t)hashUsing32BitFloats:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CHSWidgetMetrics

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_rawEffectiveSize
{
  [(CHSWidgetMetrics *)self size];
  v4 = v3;
  v6 = v5;
  [(CHSWidgetMetrics *)self scaleFactor];
  v8 = v7;
  v9 = BSFloatEqualToFloat();
  v10 = v4 * v8;
  v11 = v6 * v8;
  if (v9)
  {
    v11 = v6;
    v10 = v4;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (double)_effectiveCornerRadius
{
  cornerRadius = self->_cornerRadius;
  scaleFactor = self->_scaleFactor;
  v4 = BSFloatEqualToFloat();
  result = cornerRadius * scaleFactor;
  if (v4)
  {
    return cornerRadius;
  }

  return result;
}

- (id)_stringKeyRepresentation
{
  v3 = +[CHSVersionedWidgetMetrics currentWidgetMetricsVersion];

  return [(CHSWidgetMetrics *)self _stringKeyRepresentationForVersion:v3];
}

- (id)_luckStringKeyRepresentation
{
  [(CHSWidgetMetrics *)self _rawEffectiveSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v7;
  if (self->_nestedContentMetrics)
  {
    [v7 addObject:?];
  }

  if (self->_groupMargins)
  {
    [v8 addObject:?];
  }

  if (![(CHSWidgetMargins *)self->_margins isDawnCompatible])
  {
    [v8 addObject:self->_margins];
  }

  if ([v8 count])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_fontStyle];
    [v8 addObject:v9];
  }

  v10 = [(CHSWidgetMetrics *)self filenameSafeSHAFrom:v8];
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    [(CHSWidgetMetrics *)self _effectiveCornerRadius];
    [v11 stringWithFormat:@"%.2fw-%.2fh-%.2fr-%@", v4, v6, v12, v10];
  }

  else
  {
    [(CHSWidgetMetrics *)self _dawnStringKeyRepresentation];
  }
  v13 = ;

  return v13;
}

- (unint64_t)hash
{
  v3 = +[CHSWidgetMetrics use32BitFloats];

  return [(CHSWidgetMetrics *)self hashUsing32BitFloats:v3];
}

- (id)succinctDescriptionBuilder
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(CHSWidgetMetrics *)self size];
  v4 = [v3 appendSize:@"size" withName:?];
  [(CHSWidgetMetrics *)self cornerRadius];
  v5 = [v3 appendFloat:@"cornerRadius" withName:?];
  [(CHSWidgetMetrics *)self scaleFactor];
  v6 = [v3 appendFloat:@"scaleFactor" withName:?];
  v7 = [(CHSWidgetMetrics *)self dynamicTextSupport];
  v8 = @"Unspecified";
  if (v7 == 2)
  {
    v8 = @"No";
  }

  if (v7 == 1)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = v8;
  }

  [v3 appendString:v9 withName:@"supportsDynamicText"];
  v10 = CHSWidgetFontStyleDescription([(CHSWidgetMetrics *)self fontStyle]);
  [v3 appendString:v10 withName:@"fontStyle"];

  v11 = [v3 appendObject:self->_margins withName:@"margins"];
  v12 = [v3 appendObject:self->_groupMargins withName:@"groupMargins"];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_nestedContentMetrics;
  v15 = [(NSDictionary *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = CHSWidgetFamilyDescription([*(*(&v22 + 1) + 8 * i) integerValue]);
        [v13 addObject:v18];
      }

      v15 = [(NSDictionary *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = [v13 componentsJoinedByString:{@", "}];
  [v3 appendString:v19 withName:@"nestedContentMetrics" skipIfEmpty:1];

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(CHSWidgetMetrics *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (CHSWidgetMetrics)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CHSWidgetMetrics.m" lineNumber:74 description:@"Use initWithSize:cornerRadius:"];

  return [(CHSWidgetMetrics *)self initWithSize:*MEMORY[0x1E695F060] cornerRadius:*(MEMORY[0x1E695F060] + 8), 0.0];
}

- (CHSWidgetMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(int64_t)a6 safeAreaInsets:(CHSEdgeInsets)a7 widgetGroupMargins:(id)a8 nestedContentMetrics:(id)a9
{
  trailing = a7.trailing;
  bottom = a7.bottom;
  leading = a7.leading;
  top = a7.top;
  height = a3.height;
  width = a3.width;
  v20 = a8;
  v21 = a9;
  v22 = [[CHSWidgetMargins alloc] initWithSafeAreaInsets:top layoutInsets:leading contentMargins:bottom backgroundRemovedContentMargins:trailing, 0, 0, 0, 0, 0, 0, 0, 0];
  v23 = [(CHSWidgetMetrics *)self initWithSize:a6 cornerRadius:v22 scaleFactor:0 fontStyle:v20 margins:v21 supportsDynamicText:width widgetGroupMargins:height nestedContentMetrics:a4, a5];

  return v23;
}

- (uint64_t)initWithSize:(double)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(double)a6 safeAreaInsets:(double)a7 layoutInsets:(double)a8 contentMargins:(double)a9 supportsDynamicText:(uint64_t)a10
{
  v31 = [[CHSWidgetMargins alloc] initWithSafeAreaInsets:a6 layoutInsets:a7 contentMargins:a8 backgroundRemovedContentMargins:a9, a17, a18, a19, a20, a21, a22, a23, a24, a21, a22, a23, a24];
  v32 = [a1 initWithSize:a11 cornerRadius:v31 scaleFactor:a12 fontStyle:a2 margins:a3 supportsDynamicText:{a4, a5}];

  return v32;
}

- (CHSWidgetMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(int64_t)a6 margins:(id)a7 supportsDynamicText:(unint64_t)a8 widgetGroupMargins:(id)a9 nestedContentMetrics:(id)a10
{
  height = a3.height;
  width = a3.width;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v31.receiver = self;
  v31.super_class = CHSWidgetMetrics;
  v22 = [(CHSWidgetMetrics *)&v31 init];
  v23 = v22;
  if (v22)
  {
    v22->_size.width = width;
    v22->_size.height = height;
    v22->_cornerRadius = a4;
    v22->_scaleFactor = a5;
    v22->_fontStyle = a6;
    v24 = [v19 copy];
    margins = v23->_margins;
    v23->_margins = v24;

    v23->_dynamicTextSupport = a8;
    v26 = [v20 copy];
    groupMargins = v23->_groupMargins;
    v23->_groupMargins = v26;

    v28 = [v21 copy];
    nestedContentMetrics = v23->_nestedContentMetrics;
    v23->_nestedContentMetrics = v28;
  }

  return v23;
}

- (CHSEdgeInsets)safeAreaInsets
{
  [(CHSWidgetMargins *)self->_margins safeAreaInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CHSEdgeInsets)layoutInsets
{
  [(CHSWidgetMargins *)self->_margins layoutInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CHSEdgeInsets)contentMargins
{
  [(CHSWidgetMargins *)self->_margins contentMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CHSEdgeInsets)widgetGroupSafeAreaInsets
{
  [(CHSWidgetMargins *)self->_groupMargins safeAreaInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CHSEdgeInsets)widgetGroupLayoutInsets
{
  [(CHSWidgetMargins *)self->_groupMargins layoutInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CHSEdgeInsets)widgetGroupContentMargins
{
  [(CHSWidgetMargins *)self->_groupMargins contentMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(CHSWidgetMetrics *)self isEqualTo:v4 using32BitFloats:+[CHSWidgetMetrics use32BitFloats]];

  return self;
}

- (BOOL)isEqualTo:(id)a3 using32BitFloats:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [MEMORY[0x1E698E6A0] builderWithObject:v8 ofExpectedClass:objc_opt_class()];
    if (v4)
    {
      width = self->_size.width;
      height = self->_size.height;
      v14 = width;
      v15 = height;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke;
      v67[3] = &unk_1E7453340;
      v16 = &v68;
      v17 = v10;
      v68 = v17;
      v18 = [v11 appendCGSize:v67 counterpart:{v14, v15}];
      cornerRadius = self->_cornerRadius;
      v20 = cornerRadius;
      v21 = v66;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_2;
      v66[3] = &unk_1E74530A0;
      v22 = v17;
      v66[4] = v22;
      v23 = [v11 appendCGFloat:v66 counterpart:v20];
      scaleFactor = self->_scaleFactor;
      v25 = scaleFactor;
      v26 = v65;
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_3;
      v65[3] = &unk_1E74530A0;
      v65[4] = v22;
      v27 = [v11 appendCGFloat:v65 counterpart:v25];
    }

    else
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_4;
      v63[3] = &unk_1E7453340;
      v16 = &v64;
      v29 = v10;
      v64 = v29;
      v30 = [v11 appendCGSize:v63 counterpart:{self->_size.width, self->_size.height}];
      v31 = self->_cornerRadius;
      v21 = v62;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_5;
      v62[3] = &unk_1E74530A0;
      v32 = v29;
      v62[4] = v32;
      v33 = [v11 appendCGFloat:v62 counterpart:v31];
      v34 = self->_scaleFactor;
      v26 = v61;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_6;
      v61[3] = &unk_1E74530A0;
      v61[4] = v32;
      v35 = [v11 appendCGFloat:v61 counterpart:v34];
    }

    fontStyle = self->_fontStyle;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_7;
    v59[3] = &unk_1E7453368;
    v37 = v10;
    v60 = v37;
    v38 = [v11 appendInteger:fontStyle counterpart:v59];
    dynamicTextSupport = self->_dynamicTextSupport;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_8;
    v57[3] = &unk_1E7453368;
    v40 = v37;
    v58 = v40;
    v41 = [v11 appendInteger:dynamicTextSupport counterpart:v57];
    margins = self->_margins;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_9;
    v55[3] = &unk_1E7454570;
    v43 = v40;
    v56 = v43;
    v44 = [v11 appendObject:margins counterpart:v55];
    groupMargins = self->_groupMargins;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_10;
    v53[3] = &unk_1E7454570;
    v46 = v43;
    v54 = v46;
    v47 = [v11 appendObject:groupMargins counterpart:v53];
    v48 = [(CHSWidgetMetrics *)self nestedContentMetrics];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_11;
    v51[3] = &unk_1E7454598;
    v52 = v46;
    v49 = [v11 appendObject:v48 counterpart:v51];

    v28 = [v11 isEqual];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

double __47__CHSWidgetMetrics_isEqualTo_using32BitFloats___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  return result;
}

- (unint64_t)hashUsing32BitFloats:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E698E6B8] builder];
  v6 = v5;
  width = self->_size.width;
  if (v3)
  {
    v8 = width;
    height = self->_size.height;
    v10 = [v5 appendCGSize:{v8, height}];
    cornerRadius = self->_cornerRadius;
    v12 = [v6 appendCGFloat:cornerRadius];
    scaleFactor = self->_scaleFactor;
    v14 = scaleFactor;
  }

  else
  {
    v15 = [v5 appendCGSize:{width, self->_size.height}];
    v16 = [v6 appendCGFloat:self->_cornerRadius];
    v14 = self->_scaleFactor;
  }

  v17 = [v6 appendCGFloat:v14];
  v18 = [v6 appendInteger:self->_fontStyle];
  v19 = [v6 appendInteger:self->_dynamicTextSupport];
  v20 = [v6 appendObject:self->_margins];
  v21 = [v6 appendObject:self->_groupMargins];
  v22 = [v6 appendObject:self->_nestedContentMetrics];
  v23 = [v6 hash];

  return v23;
}

+ (id)sha256DataFromData:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md))
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
    v5 = [v4 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidgetMetrics *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CHSWidgetMetrics_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

uint64_t __58__CHSWidgetMetrics_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendSize:@"size" withName:{*(*(a1 + 40) + 64), *(*(a1 + 40) + 72)}];
  v3 = *(a1 + 32);
  [*(a1 + 40) _rawEffectiveSize];
  v4 = [v3 appendSize:@"rawEffectiveSize" withName:?];
  v5 = [*(a1 + 32) appendFloat:@"cornerRadius" withName:*(*(a1 + 40) + 8)];
  v6 = [*(a1 + 32) appendFloat:@"scaleFactor" withName:*(*(a1 + 40) + 16)];
  v7 = *(*(a1 + 40) + 24);
  v8 = @"Unspecified";
  if (v7 == 2)
  {
    v8 = @"No";
  }

  if (v7 == 1)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = v8;
  }

  [*(a1 + 32) appendString:v9 withName:@"supportsDynamicText"];
  v10 = *(a1 + 32);
  v11 = CHSWidgetFontStyleDescription(*(*(a1 + 40) + 32));
  [v10 appendString:v11 withName:@"fontStyle"];

  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"margins" skipIfNil:1];
  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"groupMargins" skipIfNil:1];
  v14 = *(a1 + 32);
  v15 = *(*(a1 + 40) + 56);

  return [v14 appendDictionarySection:v15 withName:@"nestedContentMetrics" multilinePrefix:@"   " skipIfEmpty:1];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v6 encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [v6 encodeDouble:@"scaleFactor" forKey:self->_scaleFactor];
  [v6 encodeInteger:self->_fontStyle forKey:@"fontStyle"];
  [v6 encodeObject:self->_margins forKey:@"margins"];
  [v6 encodeInteger:self->_dynamicTextSupport forKey:@"dynamicText"];
  groupMargins = self->_groupMargins;
  if (groupMargins)
  {
    [v6 encodeObject:groupMargins forKey:@"widgetGroupMargins"];
  }

  nestedContentMetrics = self->_nestedContentMetrics;
  if (nestedContentMetrics)
  {
    [v6 encodeObject:nestedContentMetrics forKey:@"nestedContentMetrics"];
  }
}

- (CHSWidgetMetrics)initWithCoder:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 decodeSizeForKey:@"size"];
  v6 = v5;
  v8 = v7;
  [v4 decodeDoubleForKey:@"cornerRadius"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"scaleFactor"];
  v12 = v11;
  if ([v4 containsValueForKey:@"scaleFactors"])
  {
    v13 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"No longer valid due to deprecated scale factor.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.chronoservices.metrics" code:1 userInfo:v14];
    [v4 failWithError:v15];

    v16 = 0;
  }

  else
  {
    if ([v4 containsValueForKey:@"textSizeAdjustment"])
    {
      v17 = CHSWidgetFontStyleFromTextSizeAdjustment([v4 decodeIntegerForKey:@"textSizeAdjustment"]);
    }

    else
    {
      v17 = [v4 decodeIntegerForKey:@"fontStyle"];
    }

    v18 = v17;
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"margins"];
    if (!v19)
    {
      v19 = [[CHSWidgetMargins alloc] initWithSafeAreaInsets:0.0 layoutInsets:0.0 contentMargins:0.0 backgroundRemovedContentMargins:0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0];
    }

    if ([v4 containsValueForKey:@"dynamicText"])
    {
      v20 = [v4 decodeIntegerForKey:@"dynamicText"];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetGroupMargins"];
    v22 = objc_opt_class();
    v23 = [v4 decodeDictionaryWithKeysOfClass:v22 objectsOfClass:objc_opt_class() forKey:@"nestedContentMetrics"];
    self = [(CHSWidgetMetrics *)self initWithSize:v18 cornerRadius:v19 scaleFactor:v20 fontStyle:v21 margins:v23 supportsDynamicText:v6 widgetGroupMargins:v8 nestedContentMetrics:v10, v12];

    v16 = self;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  if (xdict)
  {
    [@"size" UTF8String];
    width = self->_size.width;
    height = self->_size.height;
    BSSerializeCGSizeToXPCDictionaryWithKey();
    MEMORY[0x19A8C4BC0](xdict, [@"cornerRadius" UTF8String], self->_cornerRadius);
    MEMORY[0x19A8C4BC0](xdict, [@"scaleFactor" UTF8String], self->_scaleFactor);
    xpc_dictionary_set_int64(xdict, [@"fontStyle" UTF8String], -[CHSWidgetMetrics fontStyle](self, "fontStyle"));
    margins = self->_margins;
    [@"margins" UTF8String];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    xpc_dictionary_set_uint64(xdict, [@"dynamicText" UTF8String], -[CHSWidgetMetrics dynamicTextSupport](self, "dynamicTextSupport"));
    if (self->_groupMargins)
    {
      [@"widgetGroupMargins" UTF8String];
      BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    }

    nestedContentMetrics = self->_nestedContentMetrics;
    if (nestedContentMetrics)
    {
      v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:nestedContentMetrics requiringSecureCoding:1 error:0];
      [@"nestedContentMetrics" UTF8String];
      BSSerializeDataToXPCDictionaryWithKey();
    }
  }
}

- (CHSWidgetMetrics)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_12;
  }

  [@"size" UTF8String];
  BSDeserializeCGSizeFromXPCDictionaryWithKey();
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x19A8C4AB0](v4, [@"cornerRadius" UTF8String]);
  v10 = MEMORY[0x19A8C4AB0](v4, [@"scaleFactor" UTF8String]);
  v11 = xpc_dictionary_get_value(v4, [@"scaleFactors" UTF8String]);

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Metrics no longer valid due to deprecated scale factor.", buf, 2u);
    }

    goto LABEL_5;
  }

  v13 = xpc_dictionary_get_value(v4, [@"textSizeAdjustment" UTF8String]);

  if (v13)
  {
    int64 = xpc_dictionary_get_int64(v4, [@"textSizeAdjustment" UTF8String]);
    v15 = CHSWidgetFontStyleFromTextSizeAdjustment(int64);
  }

  else
  {
    v15 = xpc_dictionary_get_int64(v4, [@"fontStyle" UTF8String]);
  }

  v16 = v15;
  [@"margins" UTF8String];
  v17 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  if (!v17)
  {
    v17 = [[CHSWidgetMargins alloc] initWithSafeAreaInsets:0.0 layoutInsets:0.0 contentMargins:0.0 backgroundRemovedContentMargins:0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0];
  }

  uint64 = xpc_dictionary_get_uint64(v4, [@"dynamicText" UTF8String]);
  [@"widgetGroupMargins" UTF8String];
  v19 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  [@"nestedContentMetrics" UTF8String];
  v20 = BSDeserializeDataFromXPCDictionaryWithKey();
  v21 = MEMORY[0x1E696ACD0];
  v22 = objc_opt_class();
  v23 = [v21 unarchivedDictionaryWithKeysOfClass:v22 objectsOfClass:objc_opt_class() fromData:v20 error:0];
  self = [(CHSWidgetMetrics *)self initWithSize:v16 cornerRadius:v17 scaleFactor:uint64 fontStyle:v19 margins:v23 supportsDynamicText:v6 widgetGroupMargins:v8 nestedContentMetrics:v9, v10];

  v12 = self;
LABEL_12:

  return v12;
}

+ (void)_replaceFontStyleIn:(id)a3 withTextSizeAdjustment:(int64_t)a4
{
  xdict = a3;
  xpc_dictionary_set_value(xdict, [@"fontStyle" UTF8String], 0);
  xpc_dictionary_set_int64(xdict, [@"textSizeAdjustment" UTF8String], a4);
}

+ (void)_removeSafeAreaInsetsIn:(id)a3
{
  v49 = a3;
  [@"margins" UTF8String];
  v3 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  if (v3)
  {
    v4 = [CHSWidgetMargins alloc];
    [v3 layoutInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v3 contentMargins];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v3 backgroundRemovedContentMargins];
    v25 = [(CHSWidgetMargins *)v4 initWithSafeAreaInsets:0.0 layoutInsets:0.0 contentMargins:0.0 backgroundRemovedContentMargins:0.0, v6, v8, v10, v12, v14, v16, v18, v20, v21, v22, v23, v24];
    [@"margins" UTF8String];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  [@"widgetGroupMargins" UTF8String];
  v26 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  if (v26)
  {
    v27 = [CHSWidgetMargins alloc];
    [v26 layoutInsets];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [v26 contentMargins];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [v26 backgroundRemovedContentMargins];
    v48 = [(CHSWidgetMargins *)v27 initWithSafeAreaInsets:0.0 layoutInsets:0.0 contentMargins:0.0 backgroundRemovedContentMargins:0.0, v29, v31, v33, v35, v37, v39, v41, v43, v44, v45, v46, v47];
    [@"widgetGroupMargins" UTF8String];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }
}

- (BOOL)_hasZeroLayoutInsets
{
  [(CHSWidgetMargins *)self->_margins layoutInsets];

  return CHSEdgeInsetsEqualToEdgeInsets();
}

- (CGSize)_effectiveSizePixelAlignedForDisplayScale:(double)a3
{
  [(CHSWidgetMetrics *)self _rawEffectiveSize];
  v6 = v5;
  v8 = v7;
  scaleFactor = self->_scaleFactor;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(CHSWidgetMetrics *)self _roundToNearestOrUp:v6 withScale:a3];
    v6 = v10;
    [(CHSWidgetMetrics *)self _roundToNearestOrUp:v8 withScale:a3];
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_rawSizePixelAlignedForDisplayScale:(double)a3
{
  [(CHSWidgetMetrics *)self _roundToNearestOrUp:self->_size.width withScale:a3];
  v6 = v5;
  [(CHSWidgetMetrics *)self _roundToNearestOrUp:self->_size.height withScale:a3];
  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)_rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale:(double)a3
{
  [(CHSWidgetMargins *)self->_margins layoutInsets];
  v6 = v5;
  v8 = v7;
  [(CHSWidgetMetrics *)self _roundToNearestOrUp:fmax(self->_size.width - v9 - v10 withScale:0.0), a3];
  v12 = v11;
  [(CHSWidgetMetrics *)self _roundToNearestOrUp:fmax(self->_size.height - v6 - v8 withScale:0.0), a3];
  v14 = v13;
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (double)_roundToNearestOrUp:(double)a3 withScale:(double)a4
{
  if (a4 != 0.0)
  {
    return 1.0 / a4 * floor((1.0 / a4 * 0.5 + a3) / (1.0 / a4));
  }

  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CHSWidgetMetrics _roundToNearestOrUp:v4 withScale:?];
  }

  return 0.0;
}

- (id)filenameSafeSHAFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if ([v17 count])
  {
    context = objc_autoreleasePoolPush();
    v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v17;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = *v20;
      v7 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v18 = 0;
          v10 = [MEMORY[0x1E69C7360] encodeObject:v9 error:{&v18, context}];
          v11 = v18;
          if (v11)
          {
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v24 = v11;
              _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "Failed to encode widget metrics %{public}@.", buf, 0xCu);
            }
          }

          else
          {
            [v3 appendData:v10];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v5);
    }

    v12 = [CHSWidgetMetrics sha256DataFromData:v3];
    v13 = [v12 stringByReplacingOccurrencesOfString:@"/" withString:@"#"];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_stringKeyRepresentationForVersion:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v3 = [(CHSWidgetMetrics *)self _dawnStringKeyRepresentation];
      break;
    case 2uLL:
      v3 = [(CHSWidgetMetrics *)self _crystalStringKeyRepresentation];
      break;
    case 3uLL:
      v3 = [(CHSWidgetMetrics *)self _luckStringKeyRepresentation];
      break;
    default:
      v3 = [MEMORY[0x1E695DF30] exceptionWithName:@"CHSWidgetMetricsError" reason:@"Invalid version" userInfo:&unk_1F0A7A130];
      break;
  }

  return v3;
}

- (id)_crystalStringKeyRepresentation
{
  [(CHSWidgetMetrics *)self _rawEffectiveSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v7;
  if (self->_nestedContentMetrics)
  {
    [v7 addObject:?];
  }

  if (self->_groupMargins)
  {
    [v8 addObject:?];
  }

  v9 = [(CHSWidgetMetrics *)self filenameSafeSHAFrom:v8];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    [(CHSWidgetMetrics *)self _effectiveCornerRadius];
    [v10 stringWithFormat:@"%.2fw-%.2fh-%.2fr-%@", v4, v6, v11, v9];
  }

  else
  {
    [(CHSWidgetMetrics *)self _dawnStringKeyRepresentation];
  }
  v12 = ;

  return v12;
}

- (id)_dawnStringKeyRepresentation
{
  [(CHSWidgetMetrics *)self _rawEffectiveSize];
  v4 = v3;
  v6 = v5;
  [(CHSWidgetMargins *)self->_margins safeAreaInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x1E696AEC0];
  [(CHSWidgetMetrics *)self _effectiveCornerRadius];
  return [v15 stringWithFormat:@"%.2fw--%.2fh--%.2fr--%ldf--%.2ft-%.2fl-%.2fb%.2ft", v4, v6, v16, self->_fontStyle, v8, v10, v12, v14];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  width = self->_size.width;
  v7 = v4[8];
  if (width < v7)
  {
    goto LABEL_2;
  }

  if (width > v7)
  {
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  height = self->_size.height;
  v11 = v4[9];
  if (height >= v11)
  {
    if (height > v11)
    {
      goto LABEL_4;
    }

    cornerRadius = self->_cornerRadius;
    v13 = v4[1];
    if (cornerRadius >= v13)
    {
      if (cornerRadius > v13)
      {
        goto LABEL_4;
      }

      scaleFactor = self->_scaleFactor;
      v15 = v4[2];
      if (scaleFactor >= v15)
      {
        if (scaleFactor > v15)
        {
          goto LABEL_4;
        }

        fontStyle = self->_fontStyle;
        v17 = *(v4 + 4);
        if (fontStyle >= v17)
        {
          if (fontStyle > v17)
          {
            goto LABEL_4;
          }

          dynamicTextSupport = self->_dynamicTextSupport;
          v19 = *(v4 + 3);
          if (dynamicTextSupport >= v19)
          {
            if (dynamicTextSupport <= v19)
            {
              margins = self->_margins;
              v21 = *(v4 + 5);
              v22 = margins;
              v8 = [(CHSWidgetMargins *)v22 compare:v21];

              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }
      }
    }
  }

LABEL_2:
  v8 = -1;
LABEL_5:

  return v8;
}

- (CGSize)scale
{
  scaleFactor = self->_scaleFactor;
  v3 = scaleFactor;
  result.height = v3;
  result.width = scaleFactor;
  return result;
}

- (CHSVersionedWidgetMetrics)luckierVersionedWidgetMetrics
{
  v2 = [[CHSVersionedWidgetMetrics alloc] initWithMetrics:self version:3];

  return v2;
}

- (CHSVersionedWidgetMetrics)crystalglowVersionedWidgetMetrics
{
  v2 = [[CHSVersionedWidgetMetrics alloc] initWithMetrics:self version:2];

  return v2;
}

- (CHSVersionedWidgetMetrics)dawnburstVersionedWidgetMetrics
{
  v2 = [[CHSVersionedWidgetMetrics alloc] initWithMetrics:self version:1];

  return v2;
}

@end