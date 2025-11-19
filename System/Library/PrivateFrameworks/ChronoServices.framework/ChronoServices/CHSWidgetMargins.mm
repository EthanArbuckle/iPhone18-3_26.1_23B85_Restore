@interface CHSWidgetMargins
- (BOOL)isDawnCompatible;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3 using32BitFloats:(BOOL)a4;
- (CHSEdgeInsets)backgroundRemovedContentMargins;
- (CHSEdgeInsets)contentMargins;
- (CHSEdgeInsets)layoutInsets;
- (CHSEdgeInsets)safeAreaInsets;
- (CHSWidgetMargins)initWithCoder:(id)a3;
- (CHSWidgetMargins)initWithXPCDictionary:(id)a3;
- (double)initWithSafeAreaInsets:(double)a3 layoutInsets:(double)a4 contentMargins:(double)a5 backgroundRemovedContentMargins:(double)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (unint64_t)hashUsing32BitFloats:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CHSWidgetMargins

- (BOOL)isDawnCompatible
{
  v3 = [CHSWidgetMargins alloc];
  [(CHSWidgetMargins *)self safeAreaInsets];
  v4 = [(CHSWidgetMargins *)v3 initWithSafeAreaInsets:0 layoutInsets:0 contentMargins:0 backgroundRemovedContentMargins:0, 0, 0, 0, 0];
  LOBYTE(self) = [(CHSWidgetMargins *)v4 compare:self]== 0;

  return self;
}

- (CHSEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  leading = self->_safeAreaInsets.leading;
  bottom = self->_safeAreaInsets.bottom;
  trailing = self->_safeAreaInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (unint64_t)hash
{
  v3 = +[CHSWidgetMetrics use32BitFloats];

  return [(CHSWidgetMargins *)self hashUsing32BitFloats:v3];
}

- (CHSEdgeInsets)contentMargins
{
  top = self->_contentMargins.top;
  leading = self->_contentMargins.leading;
  bottom = self->_contentMargins.bottom;
  trailing = self->_contentMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CHSEdgeInsets)layoutInsets
{
  top = self->_layoutInsets.top;
  leading = self->_layoutInsets.leading;
  bottom = self->_layoutInsets.bottom;
  trailing = self->_layoutInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (double)initWithSafeAreaInsets:(double)a3 layoutInsets:(double)a4 contentMargins:(double)a5 backgroundRemovedContentMargins:(double)a6
{
  v33.receiver = a1;
  v33.super_class = CHSWidgetMargins;
  result = objc_msgSendSuper2(&v33, sel_init);
  if (result)
  {
    result[1] = a2;
    result[2] = a3;
    result[3] = a4;
    result[4] = a5;
    result[5] = a6;
    result[6] = a7;
    result[7] = a8;
    result[8] = a9;
    *(result + 9) = a17;
    *(result + 10) = a18;
    *(result + 11) = a19;
    *(result + 12) = a20;
    *(result + 13) = a21;
    *(result + 14) = a22;
    *(result + 15) = a23;
    *(result + 16) = a24;
  }

  return result;
}

- (BOOL)isEqualTo:(id)a3 using32BitFloats:(BOOL)a4
{
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
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__CHSWidgetMargins_isEqualTo_using32BitFloats___block_invoke;
    aBlock[3] = &__block_descriptor_33_e58__CGRect__CGPoint_dd__CGSize_dd__40__0_CHSEdgeInsets_dddd_8l;
    v70 = a4;
    v11 = _Block_copy(aBlock);
    v12 = [MEMORY[0x1E698E6A0] builderWithObject:v8 ofExpectedClass:objc_opt_class()];
    v13 = v11[2](v11, self->_safeAreaInsets.top, self->_safeAreaInsets.leading, self->_safeAreaInsets.bottom, self->_safeAreaInsets.trailing);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __47__CHSWidgetMargins_isEqualTo_using32BitFloats___block_invoke_2;
    v66[3] = &unk_1E7453860;
    v20 = v11;
    v68 = v20;
    v21 = v10;
    v67 = v21;
    v22 = [v12 appendCGRect:v66 counterpart:{v13, v15, v17, v19}];
    v23 = v11[2](v20, self->_layoutInsets.top, self->_layoutInsets.leading, self->_layoutInsets.bottom, self->_layoutInsets.trailing);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __47__CHSWidgetMargins_isEqualTo_using32BitFloats___block_invoke_3;
    v63[3] = &unk_1E7453860;
    v30 = v20;
    v65 = v30;
    v31 = v21;
    v64 = v31;
    v32 = [v12 appendCGRect:v63 counterpart:{v23, v25, v27, v29}];
    v33 = v11[2](v30, self->_contentMargins.top, self->_contentMargins.leading, self->_contentMargins.bottom, self->_contentMargins.trailing);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __47__CHSWidgetMargins_isEqualTo_using32BitFloats___block_invoke_4;
    v60[3] = &unk_1E7453860;
    v40 = v30;
    v62 = v40;
    v41 = v31;
    v61 = v41;
    v42 = [v12 appendCGRect:v60 counterpart:{v33, v35, v37, v39}];
    v43 = v11[2](v40, self->_backgroundRemovedContentMargins.top, self->_backgroundRemovedContentMargins.leading, self->_backgroundRemovedContentMargins.bottom, self->_backgroundRemovedContentMargins.trailing);
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __47__CHSWidgetMargins_isEqualTo_using32BitFloats___block_invoke_5;
    v57 = &unk_1E7453860;
    v50 = v40;
    v59 = v50;
    v58 = v41;
    v51 = [v12 appendCGRect:&v54 counterpart:{v43, v45, v47, v49}];
    v52 = [v12 isEqual];
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

double __47__CHSWidgetMargins_isEqualTo_using32BitFloats___block_invoke(uint64_t a1)
{
  CHSRectFromEdgeInsets();
  if (*(a1 + 32) == 1)
  {
    return result;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(CHSWidgetMargins *)self isEqualTo:v4 using32BitFloats:+[CHSWidgetMetrics use32BitFloats]];

  return self;
}

- (unint64_t)hashUsing32BitFloats:(BOOL)a3
{
  v5 = [MEMORY[0x1E698E6B8] builder];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__CHSWidgetMargins_hashUsing32BitFloats___block_invoke;
  aBlock[3] = &__block_descriptor_33_e58__CGRect__CGPoint_dd__CGSize_dd__40__0_CHSEdgeInsets_dddd_8l;
  v14 = a3;
  v6 = _Block_copy(aBlock);
  v6[2](self->_safeAreaInsets.top, self->_safeAreaInsets.leading, self->_safeAreaInsets.bottom, self->_safeAreaInsets.trailing);
  v7 = [v5 appendCGRect:?];
  (v6[2])(v6, self->_layoutInsets.top, self->_layoutInsets.leading, self->_layoutInsets.bottom, self->_layoutInsets.trailing);
  v8 = [v5 appendCGRect:?];
  (v6[2])(v6, self->_contentMargins.top, self->_contentMargins.leading, self->_contentMargins.bottom, self->_contentMargins.trailing);
  v9 = [v5 appendCGRect:?];
  (v6[2])(v6, self->_backgroundRemovedContentMargins.top, self->_backgroundRemovedContentMargins.leading, self->_backgroundRemovedContentMargins.bottom, self->_backgroundRemovedContentMargins.trailing);
  v10 = [v5 appendCGRect:?];
  v11 = [v5 hash];

  return v11;
}

double __41__CHSWidgetMargins_hashUsing32BitFloats___block_invoke(uint64_t a1)
{
  CHSRectFromEdgeInsets();
  if (*(a1 + 32) == 1)
  {
    return result;
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(CHSWidgetMargins *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CHSWidgetMargins_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendProem:0 block:v7];
  v5 = v4;

  return v4;
}

void __46__CHSWidgetMargins_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), *(*(a1 + 40) + 24), *(*(a1 + 40) + 32));
  [v2 appendString:? withName:?];

  v3 = *(a1 + 32);
  v7 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 40), *(*(a1 + 40) + 48), *(*(a1 + 40) + 56), *(*(a1 + 40) + 64));
  [v3 appendString:? withName:?];

  v4 = *(a1 + 32);
  v8 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 72), *(*(a1 + 40) + 80), *(*(a1 + 40) + 88), *(*(a1 + 40) + 96));
  [v4 appendString:? withName:?];

  v5 = *(a1 + 32);
  v9 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 104), *(*(a1 + 40) + 112), *(*(a1 + 40) + 120), *(*(a1 + 40) + 128));
  [v5 appendString:? withName:?];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidgetMargins *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CHSWidgetMargins_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

void __58__CHSWidgetMargins_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), *(*(a1 + 40) + 24), *(*(a1 + 40) + 32));
  [v2 appendString:? withName:?];

  v3 = *(a1 + 32);
  v7 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 40), *(*(a1 + 40) + 48), *(*(a1 + 40) + 56), *(*(a1 + 40) + 64));
  [v3 appendString:? withName:?];

  v4 = *(a1 + 32);
  v8 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 72), *(*(a1 + 40) + 80), *(*(a1 + 40) + 88), *(*(a1 + 40) + 96));
  [v4 appendString:? withName:?];

  v5 = *(a1 + 32);
  v9 = CHSEdgeInsetsDescription(*(*(a1 + 40) + 104), *(*(a1 + 40) + 112), *(*(a1 + 40) + 120), *(*(a1 + 40) + 128));
  [v5 appendString:? withName:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  CHSRectFromEdgeInsets(self->_safeAreaInsets.top, self->_safeAreaInsets.leading, self->_safeAreaInsets.bottom, self->_safeAreaInsets.trailing);
  [v4 encodeRect:@"safeAreaInsets" forKey:?];
  CHSRectFromEdgeInsets(self->_layoutInsets.top, self->_layoutInsets.leading, self->_layoutInsets.bottom, self->_layoutInsets.trailing);
  [v4 encodeRect:@"layoutInsets" forKey:?];
  CHSRectFromEdgeInsets(self->_contentMargins.top, self->_contentMargins.leading, self->_contentMargins.bottom, self->_contentMargins.trailing);
  [v4 encodeRect:@"contentMargins" forKey:?];
  CHSRectFromEdgeInsets(self->_backgroundRemovedContentMargins.top, self->_backgroundRemovedContentMargins.leading, self->_backgroundRemovedContentMargins.bottom, self->_backgroundRemovedContentMargins.trailing);
  [v4 encodeRect:@"backgroundRemovedContentMargins" forKey:?];
}

- (CHSWidgetMargins)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"safeAreaInsets"])
  {
    v5 = CHSEdgeInsetsFromRect([v4 decodeRectForKey:@"safeAreaInsets"]);
    v31 = v7;
    v32 = v6;
    v30 = v8;
    v29 = v5;
  }

  else
  {
    v31 = 0.0;
    v32 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
  }

  if ([v4 containsValueForKey:@"layoutInsets"])
  {
    v9 = CHSEdgeInsetsFromRect([v4 decodeRectForKey:@"layoutInsets"]);
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
    v13 = 0.0;
    v15 = 0.0;
  }

  if ([v4 containsValueForKey:@"contentMargins"])
  {
    v16 = CHSEdgeInsetsFromRect([v4 decodeRectForKey:@"contentMargins"]);
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = 0.0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
  }

  if ([v4 containsValueForKey:@"backgroundRemovedContentMargins"])
  {
    v23 = CHSEdgeInsetsFromRect([v4 decodeRectForKey:@"backgroundRemovedContentMargins"]);
  }

  else
  {
    v23 = 0.0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = [(CHSWidgetMargins *)self initWithSafeAreaInsets:v29 layoutInsets:v32 contentMargins:v31 backgroundRemovedContentMargins:v30, v9, v11, v13, v15, *&v16, v18, v20, v22, *&v23, v24, v25, v26];

  return v27;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    CHSRectFromEdgeInsets(self->_safeAreaInsets.top, self->_safeAreaInsets.leading, self->_safeAreaInsets.bottom, self->_safeAreaInsets.trailing);
    [@"safeAreaInsets" UTF8String];
    BSSerializeCGRectToXPCDictionaryWithKey();
    CHSRectFromEdgeInsets(self->_layoutInsets.top, self->_layoutInsets.leading, self->_layoutInsets.bottom, self->_layoutInsets.trailing);
    [@"layoutInsets" UTF8String];
    BSSerializeCGRectToXPCDictionaryWithKey();
    CHSRectFromEdgeInsets(self->_contentMargins.top, self->_contentMargins.leading, self->_contentMargins.bottom, self->_contentMargins.trailing);
    [@"contentMargins" UTF8String];
    BSSerializeCGRectToXPCDictionaryWithKey();
    CHSRectFromEdgeInsets(self->_backgroundRemovedContentMargins.top, self->_backgroundRemovedContentMargins.leading, self->_backgroundRemovedContentMargins.bottom, self->_backgroundRemovedContentMargins.trailing);
    [@"backgroundRemovedContentMargins" UTF8String];
    BSSerializeCGRectToXPCDictionaryWithKey();
  }
}

- (CHSWidgetMargins)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [@"safeAreaInsets" UTF8String];
    v5 = BSDeserializeCGRectFromXPCDictionaryWithKey();
    v32 = CHSEdgeInsetsFromRect(v5);
    v33 = v6;
    v34 = v8;
    v35 = v7;
    [@"layoutInsets" UTF8String];
    v9 = BSDeserializeCGRectFromXPCDictionaryWithKey();
    v10 = CHSEdgeInsetsFromRect(v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [@"contentMargins" UTF8String];
    v17 = BSDeserializeCGRectFromXPCDictionaryWithKey();
    v18 = CHSEdgeInsetsFromRect(v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [@"backgroundRemovedContentMargins" UTF8String];
    v25 = BSDeserializeCGRectFromXPCDictionaryWithKey();
    v26 = CHSEdgeInsetsFromRect(v25);
    self = [(CHSWidgetMargins *)self initWithSafeAreaInsets:v32 layoutInsets:v35 contentMargins:v34 backgroundRemovedContentMargins:v33, v10, v12, v14, v16, *&v18, v20, v22, v24, *&v26, v27, v28, v29];
    v30 = self;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = CHSEdgeInsetsCompare(self->_safeAreaInsets.top, self->_safeAreaInsets.leading, self->_safeAreaInsets.bottom, self->_safeAreaInsets.trailing, v4[1], v4[2], v4[3], v4[4]);
  if (!v5)
  {
    v5 = CHSEdgeInsetsCompare(self->_layoutInsets.top, self->_layoutInsets.leading, self->_layoutInsets.bottom, self->_layoutInsets.trailing, v4[5], v4[6], v4[7], v4[8]);
    if (!v5)
    {
      v5 = CHSEdgeInsetsCompare(self->_contentMargins.top, self->_contentMargins.leading, self->_contentMargins.bottom, self->_contentMargins.trailing, v4[9], v4[10], v4[11], v4[12]);
      if (!v5)
      {
        v5 = CHSEdgeInsetsCompare(self->_backgroundRemovedContentMargins.top, self->_backgroundRemovedContentMargins.leading, self->_backgroundRemovedContentMargins.bottom, self->_backgroundRemovedContentMargins.trailing, v4[13], v4[14], v4[15], v4[16]);
      }
    }
  }

  return v5;
}

- (CHSEdgeInsets)backgroundRemovedContentMargins
{
  top = self->_backgroundRemovedContentMargins.top;
  leading = self->_backgroundRemovedContentMargins.leading;
  bottom = self->_backgroundRemovedContentMargins.bottom;
  trailing = self->_backgroundRemovedContentMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end