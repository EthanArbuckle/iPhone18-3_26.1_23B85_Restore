@interface BCUImageRenderContext
- (BCUImageRenderContext)initWithMode:(unint64_t)mode;
- (void)filteredImageFromImage:(CGImage *)image filterInfo:(id)info size:(CGSize)size contentsScale:(double)scale waitForCPUSynchronization:(BOOL)synchronization logKey:(id)key completion:(id)completion;
@end

@implementation BCUImageRenderContext

- (BCUImageRenderContext)initWithMode:(unint64_t)mode
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
    v9 = objc_msgSend_initWithRenderer_mode_(v7, v8, *(v4 + 2), mode);
    v10 = *(v4 + 3);
    *(v4 + 3) = v9;

    v12 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v11, 0);
    v13 = *(v4 + 4);
    *(v4 + 4) = v12;

    *(v4 + 2) = 0;
  }

  return v4;
}

- (void)filteredImageFromImage:(CGImage *)image filterInfo:(id)info size:(CGSize)size contentsScale:(double)scale waitForCPUSynchronization:(BOOL)synchronization logKey:(id)key completion:(id)completion
{
  synchronizationCopy = synchronization;
  height = size.height;
  width = size.width;
  keyCopy = key;
  completionCopy = completion;
  v22 = objc_msgSend_effectIdentifierForFilterInfo_(BCUCoverEffects, v19, info);
  if (v22)
  {
    v23 = objc_msgSend_coverEffects(self, v20, v21);
    v25 = objc_msgSend_bookCoverEffectFilterForEffectIdentifier_(v23, v24, v22);

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_241C856FC;
    v38[3] = &unk_278D141F8;
    v38[4] = self;
    v39 = completionCopy;
    LODWORD(v26) = 1056964608;
    v28 = objc_msgSend_newOperationWithImage_size_contentsScale_priority_options_waitForCPUSynchronization_logKey_completion_(v25, v27, image, 0, synchronizationCopy, keyCopy, v38, width, height, scale, v26);
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = sub_241C85870;
    v35 = &unk_278D141D0;
    selfCopy = self;
    v37 = v28;
    v29 = v28;
    os_unfair_lock_lock_with_options();
    (sub_241C85870)(&v32);
    os_unfair_lock_unlock(&self->_accessLock);
    objc_msgSend_start(v29, v30, v31, v32, v33);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0.0, 0.0, 0.0, 0.0);
  }
}

@end