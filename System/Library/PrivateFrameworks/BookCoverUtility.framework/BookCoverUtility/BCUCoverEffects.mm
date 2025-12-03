@interface BCUCoverEffects
+ (CGImage)restrictedImageFrom:(CGImage *)from size:(CGSize)size;
+ (id)_effectIdentifierForEffectIndex:(unint64_t)index;
+ (id)effectIdentifierForAsset:(id)asset withEnvironment:(id)environment;
+ (id)effectIdentifierForFilterInfo:(id)info;
+ (id)effectIdentifierWithRTL:(BOOL)l style:(unint64_t)style content:(unint64_t)content nightMode:(BOOL)mode;
- (BCUCoverEffects)initWithRenderer:(id)renderer mode:(unint64_t)mode;
- (id)bookCoverEffectFilterForEffectIdentifier:(id)identifier;
@end

@implementation BCUCoverEffects

+ (id)effectIdentifierWithRTL:(BOOL)l style:(unint64_t)style content:(unint64_t)content nightMode:(BOOL)mode
{
  v6 = 6;
  if (!l)
  {
    v6 = 0;
  }

  return objc_msgSend__effectIdentifierForEffectIndex_(BCUCoverEffects, a2, (v6 + 12 * style + 2 * content) | mode);
}

+ (id)effectIdentifierForAsset:(id)asset withEnvironment:(id)environment
{
  assetCopy = asset;
  environmentCopy = environment;
  v11 = objc_msgSend_coverEffectRTLOverride(environmentCopy, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_coverEffectRTLOverride(environmentCopy, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_coverEffectRTL(assetCopy, v9, v10);
  }

  v18 = objc_msgSend_coverEffectStyle(assetCopy, v16, v17);
  v21 = objc_msgSend_coverEffectsContent(environmentCopy, v19, v20);
  v25 = objc_msgSend_coverEffectsNightMode(environmentCopy, v22, v23);
  v26 = 6;
  if (!v15)
  {
    v26 = 0;
  }

  v27 = objc_msgSend__effectIdentifierForEffectIndex_(BCUCoverEffects, v24, (v26 + 12 * v18 + 2 * v21) | v25);

  return v27;
}

+ (id)effectIdentifierForFilterInfo:(id)info
{
  infoCopy = info;
  v5 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v4, @"BCUCoverEffectsFilterInfoAlternativeAppearanceKey");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v9, @"BCUCoverEffectsFilterInfoContentRTLKey");

  v12 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v11, @"BCUCoverEffectsFilterInfoCoverEffectStyleKey");

  v15 = objc_msgSend_intValue(v12, v13, v14);
  v17 = 6;
  if (!v10)
  {
    v17 = 0;
  }

  v18 = 2;
  if (v8)
  {
    v18 = 3;
  }

  v19 = objc_msgSend__effectIdentifierForEffectIndex_(BCUCoverEffects, v16, v18 + v17 + 12 * v15);

  return v19;
}

+ (id)_effectIdentifierForEffectIndex:(unint64_t)index
{
  if (qword_27EC69A80 != -1)
  {
    sub_241C85C14();
  }

  v4 = *(&xmmword_27EC69900 + index);

  return v4;
}

+ (CGImage)restrictedImageFrom:(CGImage *)from size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], a2, from);
  v8 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v7, @"CIGaussianBlur");
  v9 = *MEMORY[0x277CBFAF0];
  objc_msgSend_setValue_forKey_(v8, v10, v6, *MEMORY[0x277CBFAF0]);
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v11, v12, width * 0.2);
  objc_msgSend_setValue_forKey_(v8, v14, v13, *MEMORY[0x277CBFB08]);

  v15 = *MEMORY[0x277CBFB50];
  v17 = objc_msgSend_valueForKey_(v8, v16, *MEMORY[0x277CBFB50]);
  v19 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v18, @"CIPixellate");
  objc_msgSend_setValue_forKey_(v19, v20, v17, v9);
  v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, width / 6.0);
  objc_msgSend_setValue_forKey_(v19, v24, v23, *MEMORY[0x277CBFB18]);

  v27 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v25, v26, 0.0, 0.0);
  objc_msgSend_setValue_forKey_(v19, v28, v27, *MEMORY[0x277CBFAC8]);

  v30 = objc_msgSend_valueForKey_(v19, v29, v15);
  v32 = objc_msgSend_contextWithOptions_(MEMORY[0x277CBF740], v31, 0);
  CGImage_fromRect = objc_msgSend_createCGImage_fromRect_(v32, v33, v30, 0.0, 0.0, width, height);
  v35 = CFAutorelease(CGImage_fromRect);

  return v35;
}

- (BCUCoverEffects)initWithRenderer:(id)renderer mode:(unint64_t)mode
{
  v295[25] = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v292.receiver = self;
  v292.super_class = BCUCoverEffects;
  v8 = [(BCUCoverEffects *)&v292 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_renderer, renderer);
    v9->_mode = mode;
    if (!mode)
    {
      v288 = rendererCopy;
      if (qword_2810D51B0 != -1)
      {
        sub_241C85C28();
      }

      v10 = qword_2810D51A8;
      v11 = qword_2810D5198;
      v12 = qword_2810D51A0;
      v13 = qword_2810D5190;
      v14 = qword_2810D51E8;
      v15 = qword_2810D51D8;
      v16 = qword_2810D51E0;
      v291 = qword_2810D51D0;
      v17 = v16;
      v18 = v15;
      v19 = v14;
      v290 = v13;
      v20 = v12;
      v21 = v11;
      v22 = v10;
      v23 = [_BCUCoverEffectsBookBinding alloc];
      v281 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v23, v24, @"BCUCoverEffectsIdentifierBookBinding", v9->_renderer, v19, 0, 0, 0);
      v295[0] = v281;
      v25 = [_BCUCoverEffectsBookBinding alloc];
      v279 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v25, v26, @"BCUCoverEffectsIdentifierBookBindingNight", v9->_renderer, v17, 0, 0, 0);
      v295[1] = v279;
      v27 = [_BCUCoverEffectsBookBinding alloc];
      v277 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v27, v28, @"BCUCoverEffectsIdentifierBookBindingWithShadow", v9->_renderer, v19, v22, qword_2810D5188, 0);
      v295[2] = v277;
      v29 = [_BCUCoverEffectsBookBinding alloc];
      v289 = v20;
      v275 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v29, v30, @"BCUCoverEffectsIdentifierBookBindingNightWithShadow", v9->_renderer, v17, v20, qword_2810D5180, 0);
      v295[3] = v275;
      v31 = [_BCUCoverEffectsBookBinding alloc];
      v273 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v31, v32, @"BCUCoverEffectsIdentifierBookBindingShadowOnly", v9->_renderer, 0, v22, qword_2810D5188, 1);
      v295[4] = v273;
      v33 = [_BCUCoverEffectsBookBinding alloc];
      v271 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v33, v34, @"BCUCoverEffectsIdentifierBookBindingNightShadowOnly", v9->_renderer, 0, v20, qword_2810D5180, 1);
      v295[5] = v271;
      v35 = [_BCUCoverEffectsBookBinding alloc];
      v287 = v18;
      v269 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v35, v36, @"BCUCoverEffectsIdentifierBookBindingRTL", v9->_renderer, v18, 0, 0, 0);
      v295[6] = v269;
      v37 = [_BCUCoverEffectsBookBinding alloc];
      v267 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v37, v38, @"BCUCoverEffectsIdentifierBookBindingRTLNight", v9->_renderer, v291, 0, 0, 0);
      v295[7] = v267;
      v39 = [_BCUCoverEffectsBookBinding alloc];
      v286 = v21;
      v265 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v39, v40, @"BCUCoverEffectsIdentifierBookBindingRTLWithShadow", v9->_renderer, v18, v21, qword_2810D5178, 0);
      v295[8] = v265;
      v41 = [_BCUCoverEffectsBookBinding alloc];
      v263 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v41, v42, @"BCUCoverEffectsIdentifierBookBindingRTLNightWithShadow", v9->_renderer, v291, v290, qword_2810D5170, 0);
      v295[9] = v263;
      v43 = [_BCUCoverEffectsBookBinding alloc];
      v261 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v43, v44, @"BCUCoverEffectsIdentifierBookBindingRTLShadowOnly", v9->_renderer, 0, v21, qword_2810D5178, 1);
      v295[10] = v261;
      v45 = [_BCUCoverEffectsBookBinding alloc];
      v259 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v45, v46, @"BCUCoverEffectsIdentifierBookBindingRTLNightShadowOnly", v9->_renderer, 0, v290, qword_2810D5170, 1);
      v295[11] = v259;
      v47 = [_BCUCoverEffectsAudiobook alloc];
      v285 = v19;
      v257 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v47, v48, @"BCUCoverEffectsIdentifierAudiobook", v9->_renderer, v19, 0, 0, 0);
      v295[12] = v257;
      v49 = [_BCUCoverEffectsAudiobook alloc];
      v283 = v17;
      v255 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v49, v50, @"BCUCoverEffectsIdentifierAudiobookNight", v9->_renderer, v17, 0, 0, 0);
      v295[13] = v255;
      v51 = [_BCUCoverEffectsAudiobook alloc];
      v284 = v22;
      v253 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v51, v52, @"BCUCoverEffectsIdentifierAudiobookWithShadow", v9->_renderer, v19, v22, qword_2810D5188, 0);
      v295[14] = v253;
      v53 = [_BCUCoverEffectsAudiobook alloc];
      v251 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v53, v54, @"BCUCoverEffectsIdentifierAudiobookNightWithShadow", v9->_renderer, v17, v20, qword_2810D5180, 0);
      v295[15] = v251;
      v55 = [_BCUCoverEffectsAudiobook alloc];
      v57 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v55, v56, @"BCUCoverEffectsIdentifierAudiobookShadowOnly", v9->_renderer, 0, v22, qword_2810D5188, 1);
      v295[16] = v57;
      v58 = [_BCUCoverEffectsAudiobook alloc];
      v60 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v58, v59, @"BCUCoverEffectsIdentifierAudiobookNightShadowOnly", v9->_renderer, 0, v20, qword_2810D5180, 1);
      v295[17] = v60;
      v61 = [_BCUCoverEffectsPDF alloc];
      v63 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v61, v62, @"BCUCoverEffectsIdentifierPDF", v9->_renderer, 1, 0, 0);
      v295[18] = v63;
      v64 = [_BCUCoverEffectsPDF alloc];
      v66 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v64, v65, @"BCUCoverEffectsIdentifierPDFNight", v9->_renderer, 1, 0, 1);
      v295[19] = v66;
      v67 = [_BCUCoverEffectsPDF alloc];
      v69 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v67, v68, @"BCUCoverEffectsIdentifierPDFWithShadow", v9->_renderer, 1, 1, 0);
      v295[20] = v69;
      v70 = [_BCUCoverEffectsPDF alloc];
      v72 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v70, v71, @"BCUCoverEffectsIdentifierPDFNightWithShadow", v9->_renderer, 1, 1, 1);
      v295[21] = v72;
      v73 = [_BCUCoverEffectsPDF alloc];
      v75 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v73, v74, @"BCUCoverEffectsIdentifierPDFShadowOnly", v9->_renderer, 0, 1, 0);
      v295[22] = v75;
      v76 = [_BCUCoverEffectsPDF alloc];
      v78 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v76, v77, @"BCUCoverEffectsIdentifierPDFNightShadowOnly", v9->_renderer, 0, 1, 1);
      v295[23] = v78;
      v79 = [_BCUCoverEffectsIdentity alloc];
      v81 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v79, v80, @"BCUCoverEffectsIdentifierIdentity", v9->_renderer, 0, 0, 0, 0);
      v295[24] = v81;
      v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v82, v295, 25);
      bookCoverEffectFilters = v9->_bookCoverEffectFilters;
      v9->_bookCoverEffectFilters = v83;

      v85 = [_BCUCoverEffectsSeriesStack alloc];
      v87 = objc_msgSend_initWithIdentifier_renderer_(v85, v86, @"BCUCoverEffectsIdentifierSeriesStackDiagonal", v9->_renderer);
      v294[0] = v87;
      v88 = [_BCUCoverEffectsSeriesStack alloc];
      v90 = objc_msgSend_initWithIdentifier_renderer_(v88, v89, @"BCUCoverEffectsIdentifierSeriesStackHorizontal", v9->_renderer);
      v294[1] = v90;
      v91 = [_BCUCoverEffectsSeriesStack alloc];
      v93 = objc_msgSend_initWithIdentifier_renderer_(v91, v92, @"BCUCoverEffectsIdentifierSeriesStackHorizontalRTL", v9->_renderer);
      v294[2] = v93;
      v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v94, v294, 3);
      seriesCoverEffectFilters = v9->_seriesCoverEffectFilters;
      v9->_seriesCoverEffectFilters = v95;

      v97 = [_BCUCoverEffectsBookBinding alloc];
      v282 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v97, v98, @"cover::book::binding::ltr", v9->_renderer, qword_2810D51E8, qword_2810D51A8, qword_2810D5188, 0);
      v293[0] = v282;
      v99 = [_BCUCoverEffectsBookBinding alloc];
      v280 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v99, v100, @"cover::book::binding::rtl", v9->_renderer, qword_2810D51D8, qword_2810D5198, qword_2810D5178, 0);
      v293[1] = v280;
      v101 = [_BCUCoverEffectsBookBinding alloc];
      v278 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v101, v102, @"cover::book::binding::ltr::innerStack", v9->_renderer, qword_2810D51E8, qword_2810D51A8, qword_2810D5188, 1);
      v293[2] = v278;
      v103 = [_BCUCoverEffectsBookBinding alloc];
      v276 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v103, v104, @"cover::book::binding::rtl::innerStack", v9->_renderer, qword_2810D51D8, qword_2810D5198, qword_2810D5178, 1);
      v293[3] = v276;
      v105 = [_BCUCoverEffectsBookBinding alloc];
      v274 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v105, v106, @"cover::book::binding::ltr::topStack", v9->_renderer, qword_2810D51E8, qword_2810D5188, qword_2810D5188, 0);
      v293[4] = v274;
      v107 = [_BCUCoverEffectsBookBinding alloc];
      v272 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v107, v108, @"cover::book::binding::rtl::topStack", v9->_renderer, qword_2810D51D8, qword_2810D5178, qword_2810D5178, 0);
      v293[5] = v272;
      v109 = [_BCUCoverEffectsBookBinding alloc];
      v270 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v109, v110, @"cover::book::binding::ltr::darkShadow", v9->_renderer, qword_2810D51E8, qword_2810D51A0, qword_2810D5180, 0);
      v293[6] = v270;
      v111 = [_BCUCoverEffectsBookBinding alloc];
      v268 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v111, v112, @"cover::book::binding::rtl::darkShadow", v9->_renderer, qword_2810D51D8, qword_2810D5190, qword_2810D5170, 0);
      v293[7] = v268;
      v113 = [_BCUCoverEffectsBookBinding alloc];
      v266 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v113, v114, @"cover::book::binding::ltr::night", v9->_renderer, qword_2810D51E0, qword_2810D51A0, qword_2810D5180, 0);
      v293[8] = v266;
      v115 = [_BCUCoverEffectsBookBinding alloc];
      v264 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v115, v116, @"cover::book::binding::rtl::night", v9->_renderer, qword_2810D51D0, qword_2810D5190, qword_2810D5170, 0);
      v293[9] = v264;
      v117 = [_BCUCoverEffectsBookBinding alloc];
      v262 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v117, v118, @"cover::book::binding::ltr::night::innerStack", v9->_renderer, qword_2810D51E0, qword_2810D51A0, qword_2810D5180, 1);
      v293[10] = v262;
      v119 = [_BCUCoverEffectsBookBinding alloc];
      v260 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v119, v120, @"cover::book::binding::rtl::night::innerStack", v9->_renderer, qword_2810D51D0, qword_2810D51A0, qword_2810D5180, 1);
      v293[11] = v260;
      v121 = [_BCUCoverEffectsBookBinding alloc];
      v258 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v121, v122, @"cover::book::binding::ltr::night::topStack", v9->_renderer, qword_2810D51E0, qword_2810D5180, qword_2810D5180, 0);
      v293[12] = v258;
      v123 = [_BCUCoverEffectsBookBinding alloc];
      v256 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v123, v124, @"cover::book::binding::rtl::night::topStack", v9->_renderer, qword_2810D51D0, qword_2810D5170, qword_2810D5180, 0);
      v293[13] = v256;
      v125 = [_BCUCoverEffectsBookBinding alloc];
      v254 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v125, v126, @"cover::book::binding::ltr::flowcase", v9->_renderer, qword_2810D51E8, qword_2810D51C8, 0, 0);
      v293[14] = v254;
      v127 = [_BCUCoverEffectsBookBinding alloc];
      v252 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v127, v128, @"cover::book::binding::ltr::night::flowcase", v9->_renderer, qword_2810D51E0, qword_2810D51C8, 0, 0);
      v293[15] = v252;
      v129 = [_BCUCoverEffectsBookBinding alloc];
      v250 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v129, v130, @"cover::book::binding::rtl::flowcase", v9->_renderer, qword_2810D51D8, qword_2810D51C8, 0, 0);
      v293[16] = v250;
      v131 = [_BCUCoverEffectsBookBinding alloc];
      v249 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v131, v132, @"cover::book::binding::rtl::night::flowcase", v9->_renderer, qword_2810D51D0, qword_2810D51C8, 0, 0);
      v293[17] = v249;
      v133 = [_BCUCoverEffectsAudiobook alloc];
      v248 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v133, v134, @"cover::audiobook", v9->_renderer, qword_2810D51E8, qword_2810D51A8, 0, 0);
      v293[18] = v248;
      v135 = [_BCUCoverEffectsAudiobook alloc];
      v247 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v135, v136, @"cover::audiobook::darkShadow", v9->_renderer, qword_2810D51E8, qword_2810D51A0, 0, 0);
      v293[19] = v247;
      v137 = [_BCUCoverEffectsAudiobook alloc];
      v246 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v137, v138, @"cover::audiobook::night", v9->_renderer, qword_2810D51E0, qword_2810D51A0, 0, 0);
      v293[20] = v246;
      v139 = [_BCUCoverEffectsAudiobook alloc];
      v245 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v139, v140, @"cover::audiobook::flowcase", v9->_renderer, qword_2810D51E8, qword_2810D51C8, 0, 0);
      v293[21] = v245;
      v141 = [_BCUCoverEffectsAudiobook alloc];
      v244 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v141, v142, @"cover::audiobook::night::flowcase", v9->_renderer, qword_2810D51E0, qword_2810D51C8, 0, 0);
      v293[22] = v244;
      v143 = [_BCUCoverEffectsPDF alloc];
      v243 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v143, v144, @"cover::pdf", v9->_renderer, 1, 1, 0);
      v293[23] = v243;
      v145 = [_BCUCoverEffectsPDF alloc];
      v242 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v145, v146, @"cover::pdf::night", v9->_renderer, 1, 1, 1);
      v293[24] = v242;
      v147 = [_BCUCoverEffectsBookBinding alloc];
      v241 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v147, v148, @"cover::book::binding::ltr::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51A8, qword_2810D5188, 0, 1);
      v293[25] = v241;
      v149 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v203) = 1;
      v240 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v149, v150, @"cover::book::binding::rtl::restricted", v9->_renderer, qword_2810D51D8, qword_2810D5198, qword_2810D5178, 0, v203);
      v293[26] = v240;
      v151 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v204) = 1;
      v239 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v151, v152, @"cover::book::binding::ltr::innerStack::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51A8, qword_2810D5188, 1, v204);
      v293[27] = v239;
      v153 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v205) = 1;
      v238 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v153, v154, @"cover::book::binding::rtl::innerStack::restricted", v9->_renderer, qword_2810D51D8, qword_2810D5198, qword_2810D5178, 1, v205);
      v293[28] = v238;
      v155 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v206) = 1;
      v237 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v155, v156, @"cover::book::binding::ltr::topStack::restricted", v9->_renderer, qword_2810D51E8, qword_2810D5188, qword_2810D5188, 0, v206);
      v293[29] = v237;
      v157 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v207) = 1;
      v236 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v157, v158, @"cover::book::binding::rtl::topStack::restricted", v9->_renderer, qword_2810D51D8, qword_2810D5178, qword_2810D5178, 0, v207);
      v293[30] = v236;
      v159 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v208) = 1;
      v235 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v159, v160, @"cover::book::binding::ltr::darkShadow::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51A0, qword_2810D5180, 0, v208);
      v293[31] = v235;
      v161 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v209) = 1;
      v234 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v161, v162, @"cover::book::binding::rtl::darkShadow::restricted", v9->_renderer, qword_2810D51D8, qword_2810D5190, qword_2810D5170, 0, v209);
      v293[32] = v234;
      v163 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v210) = 1;
      v233 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v163, v164, @"cover::book::binding::ltr::night::restricted", v9->_renderer, qword_2810D51E0, qword_2810D51A0, qword_2810D5180, 0, v210);
      v293[33] = v233;
      v165 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v211) = 1;
      v232 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v165, v166, @"cover::book::binding::rtl::night::restricted", v9->_renderer, qword_2810D51D0, qword_2810D5190, qword_2810D5170, 0, v211);
      v293[34] = v232;
      v167 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v212) = 1;
      v231 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v167, v168, @"cover::book::binding::ltr::night::innerStack::restricted", v9->_renderer, qword_2810D51E0, qword_2810D51A0, qword_2810D5180, 1, v212);
      v293[35] = v231;
      v169 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v213) = 1;
      v230 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v169, v170, @"cover::book::binding::rtl::night::innerStack::restricted", v9->_renderer, qword_2810D51D0, qword_2810D51A0, qword_2810D5180, 1, v213);
      v293[36] = v230;
      v171 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v214) = 1;
      v229 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v171, v172, @"cover::book::binding::ltr::night::topStack::restricted", v9->_renderer, qword_2810D51E0, qword_2810D5180, qword_2810D5180, 0, v214);
      v293[37] = v229;
      v173 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v215) = 1;
      v228 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v173, v174, @"cover::book::binding::rtl::night::topStack::restricted", v9->_renderer, qword_2810D51D0, qword_2810D5170, qword_2810D5180, 0, v215);
      v293[38] = v228;
      v175 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v216) = 1;
      v227 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v175, v176, @"cover::book::binding::ltr::flowcase::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51C8, 0, 0, v216);
      v293[39] = v227;
      v177 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v217) = 1;
      v226 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v177, v178, @"cover::book::binding::ltr::night::flowcase::restricted", v9->_renderer, qword_2810D51E0, qword_2810D51C8, 0, 0, v217);
      v293[40] = v226;
      v179 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v218) = 1;
      v225 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v179, v180, @"cover::book::binding::rtl::flowcase::restricted", v9->_renderer, qword_2810D51D8, qword_2810D51C8, 0, 0, v218);
      v293[41] = v225;
      v181 = [_BCUCoverEffectsBookBinding alloc];
      LOBYTE(v219) = 1;
      v183 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v181, v182, @"cover::book::binding::rtl::night::flowcase::restricted", v9->_renderer, qword_2810D51D0, qword_2810D51C8, 0, 0, v219);
      v293[42] = v183;
      v184 = [_BCUCoverEffectsAudiobook alloc];
      LOBYTE(v220) = 1;
      v186 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v184, v185, @"cover::audiobook::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51A8, 0, 0, v220);
      v293[43] = v186;
      v187 = [_BCUCoverEffectsAudiobook alloc];
      LOBYTE(v221) = 1;
      v189 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v187, v188, @"cover::audiobook::darkShadow::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51A0, 0, 0, v221);
      v293[44] = v189;
      v190 = [_BCUCoverEffectsAudiobook alloc];
      LOBYTE(v222) = 1;
      v192 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v190, v191, @"cover::audiobook::night::restricted", v9->_renderer, qword_2810D51E0, qword_2810D51A0, 0, 0, v222);
      v293[45] = v192;
      v193 = [_BCUCoverEffectsAudiobook alloc];
      LOBYTE(v223) = 1;
      v195 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v193, v194, @"cover::audiobook::flowcase::restricted", v9->_renderer, qword_2810D51E8, qword_2810D51C8, 0, 0, v223);
      v293[46] = v195;
      v196 = [_BCUCoverEffectsAudiobook alloc];
      LOBYTE(v224) = 1;
      v198 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_restricted_(v196, v197, @"cover::audiobook::night::flowcase::restricted", v9->_renderer, qword_2810D51E0, qword_2810D51C8, 0, 0, v224);
      v293[47] = v198;
      v200 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v199, v293, 48);
      templateImageFilters = v9->_templateImageFilters;
      v9->_templateImageFilters = v200;

      rendererCopy = v288;
    }
  }

  return v9;
}

- (id)bookCoverEffectFilterForEffectIdentifier:(id)identifier
{
  v131 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_mode == 1)
  {
    v7 = MEMORY[0x277CCA8D8];
    v8 = objc_opt_class();
    v10 = objc_msgSend_bundleForClass_(v7, v9, v8);
    if (objc_msgSend_isEqualToString_(identifierCopy, v11, @"BCUCoverEffectsIdentifierBookBinding"))
    {
      v13 = [_BCUCoverEffectsAssets alloc];
      v15 = objc_msgSend_initWithBundle_rtl_night_small_(v13, v14, v10, 0, 0, 1);
LABEL_17:
      v30 = v15;
      v31 = _BCUCoverEffectsBookBinding;
LABEL_18:
      v32 = [v31 alloc];
      v34 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v32, v33, identifierCopy, self->_renderer, v30, 0, 0, 0);
LABEL_19:
      v19 = v34;
LABEL_20:

      goto LABEL_21;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v12, @"BCUCoverEffectsIdentifierBookBindingNight"))
    {
      v28 = [_BCUCoverEffectsAssets alloc];
      v15 = objc_msgSend_initWithBundle_rtl_night_(v28, v29, v10, 0, 1);
      goto LABEL_17;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v27, @"BCUCoverEffectsIdentifierBookBindingWithShadow"))
    {
      v37 = [_BCUCoverEffectsAssets alloc];
      v30 = objc_msgSend_initWithBundle_rtl_night_small_(v37, v38, v10, 0, 0, 1);
      v39 = [_BCUCoverEffectsShadow alloc];
      objc_msgSend_URLForResource_withExtension_(v10, v40, @"iBooks_Covers_Flat-S_Shadow", @"png");
      goto LABEL_28;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v36, @"BCUCoverEffectsIdentifierBookBindingNightWithShadow"))
    {
      v42 = [_BCUCoverEffectsAssets alloc];
      v30 = objc_msgSend_initWithBundle_rtl_night_(v42, v43, v10, 0, 1);
      v39 = [_BCUCoverEffectsShadow alloc];
      objc_msgSend_URLForResource_withExtension_(v10, v44, @"iBooks_Covers_Flat-L_Shadow~Night", @"png");
      v45 = LABEL_28:;
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

      v51 = objc_msgSend_initWithImage_insets_(v39, v50, v49, 22.0, 32.0, 59.0, 32.0);
      goto LABEL_33;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v41, @"BCUCoverEffectsIdentifierBookBindingShadowOnly"))
    {
      v57 = [_BCUCoverEffectsShadow alloc];
      v58 = @"iBooks_Covers_Flat-S_Shadow";
LABEL_39:
      v60 = sub_241C80094(v58, v10);
      v30 = objc_msgSend_initWithImage_insets_(v57, v61, v60, 22.0, 32.0, 59.0, 32.0);
      v62 = _BCUCoverEffectsBookBinding;
LABEL_40:
      v63 = [v62 alloc];
      v34 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v63, v64, identifierCopy, self->_renderer, 0, v30, 0, 1);
      goto LABEL_19;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v56, @"BCUCoverEffectsIdentifierBookBindingNightShadowOnly"))
    {
      v57 = [_BCUCoverEffectsShadow alloc];
      v58 = @"iBooks_Covers_Flat-L_Shadow~Night";
      goto LABEL_39;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v59, @"BCUCoverEffectsIdentifierBookBindingRTL"))
    {
      v66 = [_BCUCoverEffectsAssets alloc];
      v15 = objc_msgSend_initWithBundle_rtl_night_small_(v66, v67, v10, 1, 0, 1);
      goto LABEL_17;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v65, @"BCUCoverEffectsIdentifierBookBindingRTLNight"))
    {
      v69 = [_BCUCoverEffectsAssets alloc];
      v15 = objc_msgSend_initWithBundle_rtl_night_(v69, v70, v10, 1, 1);
      goto LABEL_17;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v68, @"BCUCoverEffectsIdentifierBookBindingRTLWithShadow"))
    {
      v72 = [_BCUCoverEffectsAssets alloc];
      v30 = objc_msgSend_initWithBundle_rtl_night_small_(v72, v73, v10, 1, 0, 1);
      v74 = [_BCUCoverEffectsShadow alloc];
      v75 = @"iBooks_Covers_RTL_Flat-S_Shadow";
LABEL_49:
      v79 = sub_241C80094(v75, v10);
      v51 = objc_msgSend_initWithImage_insets_(v74, v80, v79, 22.0, 32.0, 59.0, 32.0);
LABEL_33:
      v52 = v51;
      v53 = _BCUCoverEffectsBookBinding;
LABEL_34:
      v54 = [v53 alloc];
      v19 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v54, v55, identifierCopy, self->_renderer, v30, v52, 0, 0);

      goto LABEL_20;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v71, @"BCUCoverEffectsIdentifierBookBindingRTLNightWithShadow"))
    {
      v77 = [_BCUCoverEffectsAssets alloc];
      v30 = objc_msgSend_initWithBundle_rtl_night_(v77, v78, v10, 1, 1);
      v74 = [_BCUCoverEffectsShadow alloc];
      v75 = @"iBooks_Covers_RTL_Flat-L_Shadow~Night";
      goto LABEL_49;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v76, @"BCUCoverEffectsIdentifierBookBindingRTLShadowOnly"))
    {
      v57 = [_BCUCoverEffectsShadow alloc];
      v58 = @"iBooks_Covers_RTL_Flat-S_Shadow";
      goto LABEL_39;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v81, @"BCUCoverEffectsIdentifierBookBindingRTLNightShadowOnly"))
    {
      v57 = [_BCUCoverEffectsShadow alloc];
      v58 = @"iBooks_Covers_RTL_Flat-L_Shadow~Night";
      goto LABEL_39;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v82, @"BCUCoverEffectsIdentifierAudiobook"))
    {
      v84 = [_BCUCoverEffectsAssets alloc];
      v86 = objc_msgSend_initWithBundle_rtl_night_small_(v84, v85, v10, 0, 0, 1);
LABEL_58:
      v30 = v86;
      v31 = _BCUCoverEffectsAudiobook;
      goto LABEL_18;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v83, @"BCUCoverEffectsIdentifierAudiobookNight"))
    {
      v88 = [_BCUCoverEffectsAssets alloc];
      v86 = objc_msgSend_initWithBundle_rtl_night_(v88, v89, v10, 0, 1);
      goto LABEL_58;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v87, @"BCUCoverEffectsIdentifierAudiobookWithShadow"))
    {
      v91 = [_BCUCoverEffectsAssets alloc];
      v30 = objc_msgSend_initWithBundle_rtl_night_small_(v91, v92, v10, 0, 0, 1);
      v93 = [_BCUCoverEffectsShadow alloc];
      v94 = @"iBooks_Covers_Flat-S_Shadow";
LABEL_63:
      v98 = sub_241C80094(v94, v10);
      v52 = objc_msgSend_initWithImage_insets_(v93, v99, v98, 22.0, 32.0, 59.0, 32.0);
      v53 = _BCUCoverEffectsAudiobook;
      goto LABEL_34;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v90, @"BCUCoverEffectsIdentifierAudiobookNightWithShadow"))
    {
      v96 = [_BCUCoverEffectsAssets alloc];
      v30 = objc_msgSend_initWithBundle_rtl_night_(v96, v97, v10, 0, 1);
      v93 = [_BCUCoverEffectsShadow alloc];
      v94 = @"iBooks_Covers_Flat-L_Shadow~Night";
      goto LABEL_63;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v95, @"BCUCoverEffectsIdentifierAudiobookShadowOnly"))
    {
      v101 = [_BCUCoverEffectsShadow alloc];
      v102 = @"iBooks_Covers_Flat-S_Shadow";
LABEL_68:
      v104 = sub_241C80094(v102, v10);
      v30 = objc_msgSend_initWithImage_insets_(v101, v105, v104, 22.0, 32.0, 59.0, 32.0);
      v62 = _BCUCoverEffectsAudiobook;
      goto LABEL_40;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v100, @"BCUCoverEffectsIdentifierAudiobookNightShadowOnly"))
    {
      v101 = [_BCUCoverEffectsShadow alloc];
      v102 = @"iBooks_Covers_Flat-L_Shadow~Night";
      goto LABEL_68;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v103, @"BCUCoverEffectsIdentifierPDF"))
    {
      v107 = [_BCUCoverEffectsPDF alloc];
      renderer = self->_renderer;
      v110 = identifierCopy;
      v111 = 1;
      v112 = 0;
LABEL_76:
      v26 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v107, v108, v110, renderer, v111, v112, 0);
LABEL_14:
      v19 = v26;
      goto LABEL_21;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v106, @"BCUCoverEffectsIdentifierPDFNight"))
    {
      v114 = [_BCUCoverEffectsPDF alloc];
      v116 = self->_renderer;
      v117 = identifierCopy;
      v118 = 1;
      v119 = 0;
LABEL_80:
      v26 = objc_msgSend_initWithIdentifier_renderer_image_shadow_night_(v114, v115, v117, v116, v118, v119, 1);
      goto LABEL_14;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v113, @"BCUCoverEffectsIdentifierPDFWithShadow"))
    {
      v107 = [_BCUCoverEffectsPDF alloc];
      renderer = self->_renderer;
      v110 = identifierCopy;
      v111 = 1;
LABEL_75:
      v112 = 1;
      goto LABEL_76;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v120, @"BCUCoverEffectsIdentifierPDFNightWithShadow"))
    {
      v114 = [_BCUCoverEffectsPDF alloc];
      v116 = self->_renderer;
      v117 = identifierCopy;
      v118 = 1;
LABEL_79:
      v119 = 1;
      goto LABEL_80;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v121, @"BCUCoverEffectsIdentifierPDFShadowOnly"))
    {
      v107 = [_BCUCoverEffectsPDF alloc];
      renderer = self->_renderer;
      v110 = identifierCopy;
      v111 = 0;
      goto LABEL_75;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v122, @"BCUCoverEffectsIdentifierPDFNightShadowOnly"))
    {
      v114 = [_BCUCoverEffectsPDF alloc];
      v116 = self->_renderer;
      v117 = identifierCopy;
      v118 = 0;
      goto LABEL_79;
    }

    if (objc_msgSend_isEqualToString_(identifierCopy, v123, @"BCUCoverEffectsIdentifierIdentity"))
    {
      v124 = [_BCUCoverEffectsIdentity alloc];
      v26 = objc_msgSend_initWithIdentifier_renderer_assets_shadow_seriesShadow_shadowOnly_(v124, v125, identifierCopy, self->_renderer, 0, 0, 0, 0);
      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_241C85C50(identifierCopy);
    }

    v19 = 0;
  }

  else
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v10 = objc_msgSend_bookCoverEffectFilters(self, v4, v5, 0);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v126, v130, 16);
    if (v19)
    {
      v20 = *v127;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v127 != v20)
          {
            objc_enumerationMutation(v10);
          }

          v22 = *(*(&v126 + 1) + 8 * i);
          v23 = objc_msgSend_identifier(v22, v17, v18);
          isEqualToString = objc_msgSend_isEqualToString_(v23, v24, identifierCopy);

          if (isEqualToString)
          {
            v26 = v22;
            goto LABEL_14;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v126, v130, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_21:

  return v19;
}

@end