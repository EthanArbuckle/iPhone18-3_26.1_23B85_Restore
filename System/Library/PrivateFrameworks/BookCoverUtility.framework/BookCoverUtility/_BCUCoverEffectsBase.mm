@interface _BCUCoverEffectsBase
- (UIEdgeInsets)insetsForSize:(CGSize)size contentsScale:(double)scale options:(id)options;
- (_BCUCoverEffectsBase)initWithIdentifier:(id)identifier renderer:(id)renderer assets:(id)assets shadow:(id)shadow seriesShadow:(id)seriesShadow shadowOnly:(BOOL)only restricted:(BOOL)restricted;
- (id)_coverLayerWithImage:(CGImage *)image size:(CGSize)size scale:(double)scale;
- (id)_layerWithImage:(CGImage *)image size:(CGSize)size scale:(double)scale shadow:(id)shadow;
- (id)_shadowLayerWithImage:(CGImage *)image size:(CGSize)size tint:(BOOL)tint shadow:(id)shadow;
- (id)coverLayerWithImage:(CGImage *)image size:(CGSize)size contentsScale:(double)scale;
- (id)newOperationWithImage:(CGImage *)image size:(CGSize)size contentsScale:(double)scale priority:(float)priority options:(id)options waitForCPUSynchronization:(BOOL)synchronization logKey:(id)key completion:(id)self0;
- (id)shadowLayerWithImage:(CGImage *)image size:(CGSize)size contentsScale:(double)scale kind:(unint64_t)kind;
@end

@implementation _BCUCoverEffectsBase

- (_BCUCoverEffectsBase)initWithIdentifier:(id)identifier renderer:(id)renderer assets:(id)assets shadow:(id)shadow seriesShadow:(id)seriesShadow shadowOnly:(BOOL)only restricted:(BOOL)restricted
{
  onlyCopy = only;
  identifierCopy = identifier;
  rendererCopy = renderer;
  assetsCopy = assets;
  obj = shadow;
  shadowCopy = shadow;
  seriesShadowCopy = seriesShadow;
  if (!shadowCopy && onlyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_241C85B68();
  }

  v25.receiver = self;
  v25.super_class = _BCUCoverEffectsBase;
  v20 = [(_BCUCoverEffectsBase *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v21->_renderer, renderer);
    objc_storeStrong(&v21->_assets, assets);
    objc_storeStrong(&v21->_shadow, obj);
    objc_storeStrong(&v21->_seriesShadow, seriesShadow);
    v21->_shadowOnly = onlyCopy;
    v21->_restricted = restricted;
  }

  return v21;
}

- (id)shadowLayerWithImage:(CGImage *)image size:(CGSize)size contentsScale:(double)scale kind:(unint64_t)kind
{
  shadow = self->_shadow;
  if (!shadow)
  {
    goto LABEL_6;
  }

  if (kind == 2)
  {
    objc_msgSend__shadowLayerWithImage_size_tint_shadow_(self, a2, image, 0, shadow, size.width, size.height, scale);
    goto LABEL_9;
  }

  if (kind == 1)
  {
    objc_msgSend__shadowLayerWithImage_size_tint_shadow_(self, a2, image, 1, self->_seriesShadow, size.width, size.height, scale);
    goto LABEL_9;
  }

  if (kind)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  objc_msgSend__shadowLayerWithImage_size_tint_shadow_(self, a2, image, 1, shadow, size.width, size.height, scale);
  v7 = LABEL_9:;
LABEL_10:

  return v7;
}

- (id)coverLayerWithImage:(CGImage *)image size:(CGSize)size contentsScale:(double)scale
{
  if (self->_shadowOnly)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend__coverLayerWithImage_size_scale_(self, a2, image, size.width, size.height, scale);
  }

  return v6;
}

- (id)_shadowLayerWithImage:(CGImage *)image size:(CGSize)size tint:(BOOL)tint shadow:(id)shadow
{
  tintCopy = tint;
  height = size.height;
  width = size.width;
  v125[1] = *MEMORY[0x277D85DE8];
  shadowCopy = shadow;
  objc_msgSend_roundedInsetsWithSize_(shadowCopy, v12, v13, width, height);
  v14 = objc_opt_new();
  v17 = objc_msgSend_image(shadowCopy, v15, v16);
  objc_msgSend_setContents_(v14, v18, v17);
  objc_msgSend_contentsCenter(shadowCopy, v19, v20);
  objc_msgSend_setContentsCenter_(v14, v21, v22);
  objc_msgSend_setContentsGravity_(v14, v23, *MEMORY[0x277CDA700]);
  v26 = objc_msgSend_blendMode(shadowCopy, v24, v25);

  if (v26)
  {
    v29 = MEMORY[0x277CD9EA0];
    v30 = objc_msgSend_blendMode(shadowCopy, v27, v28);
    v32 = objc_msgSend_filterWithType_(v29, v31, v30);
    objc_msgSend_setCompositingFilter_(v14, v33, v32);
  }

  v34 = objc_opt_new();
  objc_msgSend_setHidden_(v34, v35, 1);
  v125[0] = v34;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v125, 1);
  objc_msgSend_setSublayers_(v14, v38, v37);

  objc_msgSend_tintBlurRadius(self, v39, v40);
  if (tintCopy)
  {
    v44 = v43;
    if (v43 > 0.0)
    {
      objc_msgSend_setHidden_(v34, v41, 0);
      objc_msgSend_setContents_(v34, v45, image);
      objc_msgSend_setShouldRasterize_(v34, v46, 1);
      objc_msgSend_setRasterizationScale_(v34, v47, v48, 1.0);
      v49 = objc_alloc(MEMORY[0x277CD9EA0]);
      v51 = objc_msgSend_initWithType_(v49, v50, *MEMORY[0x277CDA328]);
      v54 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v52, v53, v44 / (width / 15.0));
      objc_msgSend_setValue_forKey_(v51, v55, v54, *MEMORY[0x277CBFB08]);

      v124 = v51;
      v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, &v124, 1);
      objc_msgSend_setFilters_(v34, v58, v57);

      objc_msgSend_setCompositingFilter_(v34, v59, *MEMORY[0x277CDA610]);
    }
  }

  objc_msgSend_insets(shadowCopy, v41, v42);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  objc_msgSend_size(shadowCopy, v68, v69);
  v73 = v72 - v63 - v67;
  v74 = 1.0;
  v75 = 1.0;
  if (width > 0.0)
  {
    v75 = v65 + v61 + height * v73 / width;
  }

  objc_msgSend_setBounds_(v14, v70, v71, 0.0, 0.0, v72, v75);
  memset(&v122, 0, sizeof(v122));
  CGAffineTransformMakeScale(&v122, width / v73, width / v73);
  v121 = v122;
  objc_msgSend_setAffineTransform_(v14, v76, &v121);
  LODWORD(v77) = *"333?";
  objc_msgSend_setOpacity_(v14, v78, v79, v77);
  if (height > 0.0)
  {
    v74 = (v75 - v61 - v65) / height;
  }

  v82 = 1.0;
  v83 = 15.0;
  if (width > 0.0)
  {
    v82 = v73 / width;
    v83 = height / width * 15.0;
  }

  objc_msgSend_setBounds_(v34, v80, v81, 0.0, 0.0, 15.0, v83);
  CGAffineTransformMakeScale(&v120, width / 15.0 * v82, width / 15.0 * v74);
  v121 = v120;
  objc_msgSend_setAffineTransform_(v34, v84, &v121);
  objc_msgSend_setPosition_(v34, v85, v86, v63 + width * v82 * 0.5, v61 + height * v74 * 0.5);
  objc_msgSend_bounds(v34, v87, v88);
  MidX = CGRectGetMidX(v127);
  objc_msgSend_bounds(v34, v90, v91);
  MidY = CGRectGetMidY(v128);
  objc_msgSend_convertPoint_toLayer_(v34, v93, v14, MidX, MidY);
  v95 = v94;
  v97 = v96;
  objc_msgSend_bounds(v14, v98, v99);
  v101 = v95 / v100;
  objc_msgSend_bounds(v14, v102, v103);
  objc_msgSend_setAnchorPoint_(v14, v105, v106, v101, v97 / v104);
  v109 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v107, v108);
  v123 = v14;
  v111 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v110, &v123, 1);
  objc_msgSend_setSublayers_(v109, v112, v111);

  objc_msgSend_setBounds_(v109, v113, v114, 0.0, 0.0, width, height);
  v129.origin.x = 0.0;
  v129.origin.y = 0.0;
  v129.size.width = width;
  v129.size.height = height;
  v115 = CGRectGetMidX(v129);
  v130.origin.x = 0.0;
  v130.origin.y = 0.0;
  v130.size.width = width;
  v130.size.height = height;
  v116 = CGRectGetMidY(v130);
  objc_msgSend_setPosition_(v14, v117, v118, v115, v116);

  return v109;
}

- (id)_layerWithImage:(CGImage *)image size:(CGSize)size scale:(double)scale shadow:(id)shadow
{
  height = size.height;
  width = size.width;
  shadowCopy = shadow;
  objc_msgSend_roundedInsetsWithSize_(shadowCopy, v12, v13, width, height);
  shadow = self->_shadow;
  v18 = width + v15 + v17;
  v20 = height + v14 + v19;
  if (shadow)
  {
    v21 = v20;
  }

  else
  {
    v21 = height;
  }

  if (shadow)
  {
    v22 = v18;
  }

  else
  {
    v22 = width;
  }

  if (shadow)
  {
    v23 = v14;
  }

  else
  {
    v23 = 0.0;
  }

  if (shadow)
  {
    v24 = v15;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = objc_opt_new();
  objc_msgSend_setRasterizationScale_(v25, v26, v27, scale);
  objc_msgSend_setFrame_(v25, v28, v29, 0.0, 0.0, v22, v21);
  if (self->_shadow)
  {
    v31 = objc_msgSend__shadowLayerWithImage_size_tint_shadow_(self, v30, image, !self->_shadowOnly, shadowCopy, width, height);
    v43.origin.x = v24;
    v43.origin.y = v23;
    v43.size.width = width;
    v43.size.height = height;
    MidX = CGRectGetMidX(v43);
    v44.origin.x = v24;
    v44.origin.y = v23;
    v44.size.width = width;
    v44.size.height = height;
    MidY = CGRectGetMidY(v44);
    objc_msgSend_setPosition_(v31, v34, v35, MidX, MidY);
    objc_msgSend_addSublayer_(v25, v36, v31);
  }

  if (!self->_shadowOnly)
  {
    v37 = objc_msgSend__coverLayerWithImage_size_scale_(self, v30, image, width, height, scale);
    objc_msgSend_setFrame_(v37, v38, v39, v24, v23, width, height);
    objc_msgSend_addSublayer_(v25, v40, v37);
  }

  return v25;
}

- (id)_coverLayerWithImage:(CGImage *)image size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v9 = objc_opt_new();
  v11 = objc_opt_new();
  if (self->_restricted)
  {
    v12 = objc_msgSend_restrictedImageFrom_size_(BCUCoverEffects, v10, image, width, height);
    if (v12)
    {
      objc_msgSend_setContents_(v9, v13, v12);
    }
  }

  else
  {
    objc_msgSend_setContents_(v9, v10, image);
  }

  objc_msgSend_cornerRadius(self, v13, v14);
  objc_msgSend_setCornerRadius_(v9, v15, v16);
  objc_msgSend_setMasksToBounds_(v9, v17, 1);
  v18 = *MEMORY[0x277CDA630];
  objc_msgSend_setMinificationFilter_(v9, v19, *MEMORY[0x277CDA630]);
  objc_msgSend_setMagnificationFilter_(v9, v20, v18);
  objc_msgSend_setBounds_(v9, v21, v22, 0.0, 0.0, width, height);
  v25 = objc_msgSend_edges(self->_assets, v23, v24);
  objc_msgSend_setContents_(v11, v26, v25);
  objc_msgSend_setFrame_(v11, v27, v28, 0.0, 0.0, width, height);
  objc_msgSend_setContentsCenter_(v11, v29, v30, 0.25, 0.25, 0.5, 0.5);
  objc_msgSend__assetsScale(self, v31, v32);
  objc_msgSend_setContentsScale_(v11, v33, v34);
  if (objc_msgSend_overlayColor(self->_assets, v35, v36))
  {
    v39 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v37, v38);
    v42 = objc_msgSend_overlayColor(self->_assets, v40, v41);
    objc_msgSend_setBackgroundColor_(v39, v43, v42);
    objc_msgSend_setFrame_(v39, v44, v45, 0.0, 0.0, width, height);
    objc_msgSend_cornerRadius(self, v46, v47);
    objc_msgSend_setCornerRadius_(v39, v48, v49);
  }

  else
  {
    v39 = 0;
  }

  if (!objc_msgSend_includeBinding(self, v37, v38))
  {
    v76 = 0;
    v62 = 0;
    v51 = 0;
    if (!v39)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v51 = objc_opt_new();
  v54 = objc_msgSend_spineNormalBlend(self->_assets, v52, v53);
  objc_msgSend_setContents_(v51, v55, v54);
  objc_msgSend_setFrame_(v51, v56, v57, 0.0, 0.0, width, height);
  objc_msgSend__assetsScale(self, v58, v59);
  objc_msgSend_setContentsScale_(v51, v60, v61);
  v62 = objc_opt_new();
  v65 = objc_msgSend_spineSoftLightBlend(self->_assets, v63, v64);
  objc_msgSend_setContents_(v62, v66, v65);
  v68 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v67, *MEMORY[0x277CDA608]);
  objc_msgSend_setCompositingFilter_(v62, v69, v68);

  objc_msgSend_setFrame_(v62, v70, v71, 0.0, 0.0, width, height);
  objc_msgSend__assetsScale(self, v72, v73);
  objc_msgSend_setContentsScale_(v62, v74, v75);
  v76 = objc_opt_new();
  v79 = objc_msgSend_spineLinearBurnBlend(self->_assets, v77, v78);
  objc_msgSend_setContents_(v76, v80, v79);
  v82 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v81, *MEMORY[0x277CDA568]);
  objc_msgSend_setCompositingFilter_(v76, v83, v82);

  objc_msgSend_setFrame_(v76, v84, v85, 0.0, 0.0, width, height);
  objc_msgSend__assetsScale(self, v86, v87);
  objc_msgSend_setContentsScale_(v76, v88, v89);
  if (v39)
  {
LABEL_12:
    objc_msgSend_addSublayer_(v9, v50, v39);
  }

LABEL_13:
  if (v51)
  {
    objc_msgSend_addSublayer_(v9, v50, v51);
  }

  if (v62)
  {
    objc_msgSend_addSublayer_(v9, v50, v62);
  }

  if (v76)
  {
    objc_msgSend_addSublayer_(v9, v50, v76);
  }

  if (v11)
  {
    objc_msgSend_addSublayer_(v9, v50, v11);
  }

  return v9;
}

- (UIEdgeInsets)insetsForSize:(CGSize)size contentsScale:(double)scale options:(id)options
{
  shadow = self->_shadow;
  if (shadow)
  {
    objc_msgSend_roundedInsetsWithSize_(shadow, a2, options, size.width, size.height, scale);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (id)newOperationWithImage:(CGImage *)image size:(CGSize)size contentsScale:(double)scale priority:(float)priority options:(id)options waitForCPUSynchronization:(BOOL)synchronization logKey:(id)key completion:(id)self0
{
  synchronizationCopy = synchronization;
  height = size.height;
  width = size.width;
  keyCopy = key;
  completionCopy = completion;
  v20 = completionCopy;
  if (image)
  {
    v21 = sub_241C80F64(image, width, height, scale);
    v23 = v22;
    CGImageRetain(image);
    renderer = self->_renderer;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_241C8100C;
    v34[3] = &unk_278D140F0;
    v34[4] = self;
    v34[5] = image;
    *&v34[6] = v21;
    v34[7] = v23;
    *&v34[8] = scale;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_241C81024;
    v29[3] = &unk_278D14118;
    v29[4] = self;
    v31 = v21;
    v32 = v23;
    v30 = v20;
    imageCopy = image;
    *&v25 = priority;
    v27 = objc_msgSend_newOperationWithPriority_waitForCPUSynchronization_logKey_renderLayer_completion_(renderer, v26, synchronizationCopy, keyCopy, v34, v29, v25);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    v27 = 0;
  }

  return v27;
}

@end