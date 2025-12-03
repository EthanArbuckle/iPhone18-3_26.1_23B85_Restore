@interface _BCUCoverEffectsAssets
- (_BCUCoverEffectsAssets)initWithBundle:(id)bundle rtl:(BOOL)rtl night:(BOOL)night small:(BOOL)small;
@end

@implementation _BCUCoverEffectsAssets

- (_BCUCoverEffectsAssets)initWithBundle:(id)bundle rtl:(BOOL)rtl night:(BOOL)night small:(BOOL)small
{
  smallCopy = small;
  nightCopy = night;
  rtlCopy = rtl;
  bundleCopy = bundle;
  v51.receiver = self;
  v51.super_class = _BCUCoverEffectsAssets;
  v11 = [(_BCUCoverEffectsAssets *)&v51 init];
  if (v11)
  {
    v12 = @"_RTL";
    if (!rtlCopy)
    {
      v12 = &stru_2853D7D88;
    }

    v13 = v12;
    v14 = @"~Night";
    if (!nightCopy)
    {
      v14 = &stru_2853D7D88;
    }

    v15 = v14;
    v16 = @"L";
    if (smallCopy)
    {
      v16 = @"S";
    }

    v17 = v16;
    v11->_overlayColor = 0;
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"iBooks_Covers%@_Flat-%@_Spine_NormalBlend%@", v13, v17, v15);
    v21 = objc_msgSend_URLForResource_withExtension_(bundleCopy, v20, v19, @"png");
    v22 = v21;
    if (v21 && (v23 = CGDataProviderCreateWithURL(v21)) != 0)
    {
      v24 = v23;
      v25 = CGImageCreateWithPNGDataProvider(v23, 0, 1, kCGRenderingIntentDefault);
      CFRelease(v24);
    }

    else
    {
      v25 = 0;
    }

    v11->_spineNormalBlend = v25;
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"iBooks_Covers%@_Flat-%@_Spine_SoftLightBlend%@", v13, v17, v15);
    v29 = objc_msgSend_URLForResource_withExtension_(bundleCopy, v28, v27, @"png");
    v30 = v29;
    if (v29 && (v31 = CGDataProviderCreateWithURL(v29)) != 0)
    {
      v32 = v31;
      v33 = CGImageCreateWithPNGDataProvider(v31, 0, 1, kCGRenderingIntentDefault);
      CFRelease(v32);
    }

    else
    {
      v33 = 0;
    }

    v11->_spineSoftLightBlend = v33;
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"iBooks_Covers%@_Flat-%@_Spine_LinearBurnBlend%@", v13, v17, v15);
    v37 = objc_msgSend_URLForResource_withExtension_(bundleCopy, v36, v35, @"png");
    v38 = v37;
    if (v37 && (v39 = CGDataProviderCreateWithURL(v37)) != 0)
    {
      v40 = v39;
      v41 = CGImageCreateWithPNGDataProvider(v39, 0, 1, kCGRenderingIntentDefault);
      CFRelease(v40);
    }

    else
    {
      v41 = 0;
    }

    v11->_spineLinearBurnBlend = v41;
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"iBooks_Covers%@_Flat-%@_Edges%@", v13, v17, v15);
    v45 = objc_msgSend_URLForResource_withExtension_(bundleCopy, v44, v43, @"png");
    v46 = v45;
    if (v45 && (v47 = CGDataProviderCreateWithURL(v45)) != 0)
    {
      v48 = v47;
      v49 = CGImageCreateWithPNGDataProvider(v47, 0, 1, kCGRenderingIntentDefault);
      CFRelease(v48);
    }

    else
    {
      v49 = 0;
    }

    v11->_edges = v49;
  }

  return v11;
}

@end