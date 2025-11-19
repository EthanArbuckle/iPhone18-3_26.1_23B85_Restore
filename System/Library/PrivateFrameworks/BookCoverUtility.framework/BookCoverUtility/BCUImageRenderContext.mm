@interface BCUImageRenderContext
- (BCUImageRenderContext)initWithMode:(unint64_t)a3;
- (void)filteredImageFromImage:(CGImage *)a3 filterInfo:(id)a4 size:(CGSize)a5 contentsScale:(double)a6 waitForCPUSynchronization:(BOOL)a7 logKey:(id)a8 completion:(id)a9;
@end

@implementation BCUImageRenderContext

- (BCUImageRenderContext)initWithMode:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = BCUImageRenderContext;
  v4 = [(BCUImageRenderContext *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc_init(BCULayerRenderer);
    v6 = *(v4 + 2);
    *(v4 + 2) = v5;

    v7 = [BCUCoverEffects alloc];
    v9 = objc_msgSend_initWithRenderer_mode_(v7, v8, *(v4 + 2), a3);
    v10 = *(v4 + 3);
    *(v4 + 3) = v9;

    v12 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v11, 0);
    v13 = *(v4 + 4);
    *(v4 + 4) = v12;

    *(v4 + 2) = 0;
  }

  return v4;
}

- (void)filteredImageFromImage:(CGImage *)a3 filterInfo:(id)a4 size:(CGSize)a5 contentsScale:(double)a6 waitForCPUSynchronization:(BOOL)a7 logKey:(id)a8 completion:(id)a9
{
  v10 = a7;
  height = a5.height;
  width = a5.width;
  v17 = a8;
  v18 = a9;
  v22 = objc_msgSend_effectIdentifierForFilterInfo_(BCUCoverEffects, v19, a4);
  if (v22)
  {
    v23 = objc_msgSend_coverEffects(self, v20, v21);
    v25 = objc_msgSend_bookCoverEffectFilterForEffectIdentifier_(v23, v24, v22);

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_241C856FC;
    v38[3] = &unk_278D141F8;
    v38[4] = self;
    v39 = v18;
    LODWORD(v26) = 1056964608;
    v28 = objc_msgSend_newOperationWithImage_size_contentsScale_priority_options_waitForCPUSynchronization_logKey_completion_(v25, v27, a3, 0, v10, v17, v38, width, height, a6, v26);
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = sub_241C85870;
    v35 = &unk_278D141D0;
    v36 = self;
    v37 = v28;
    v29 = v28;
    os_unfair_lock_lock_with_options();
    (sub_241C85870)(&v32);
    os_unfair_lock_unlock(&self->_accessLock);
    objc_msgSend_start(v29, v30, v31, v32, v33);
  }

  else
  {
    (*(v18 + 2))(v18, 0, 0.0, 0.0, 0.0, 0.0);
  }
}

@end