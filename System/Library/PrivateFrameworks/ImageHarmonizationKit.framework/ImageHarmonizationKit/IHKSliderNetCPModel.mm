@interface IHKSliderNetCPModel
+ (id)loadJSonFrom:(id)a3;
+ (id)loadModelAtPath:(id)a3;
+ (id)loadModelAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)checkColorspaceForPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)pixelBufferShapesMatchRequirement:(__CVBuffer *)a3;
- (BOOL)useClipEmbedding;
- (CGColorSpace)extractColorSpaceFromInfo:(id)a3;
- (CGSize)imageSize;
- (IHKSliderNetCPModel)initWithModel:(id)a3 options:(id)a4 error:(id *)a5;
- (IHKSliderNetCPModel)initWithModelType:(unint64_t)a3 options:(id)a4 error:(id *)a5;
- (__CVBuffer)preprocessPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (__CVBuffer)resizePixelBuffer:(__CVBuffer *)a3 targetSize:(CGSize)a4;
- (float)gatingScoreForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)applyAdjustments:(id)a3 toCIImage:(id)a4 error:(id *)a5;
- (id)computeClipEmbeddingForImage:(__CVBuffer *)a3 error:(id *)a4;
- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (id)predictSlidersForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5;
- (id)predictSlidersToTransferStyleFrom:(id)a3 to:(id)a4 error:(id *)a5;
- (id)predictStylePrintForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (shared_ptr<ik::PixelBufferTransfer>)resampler;
- (unint64_t)product:(id)a3;
@end

@implementation IHKSliderNetCPModel

- (unint64_t)product:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v11 *= objc_msgSend_unsignedIntValue(*(*(&v15 + 1) + 8 * i), v5, v6, v7, v8, v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v15, v19, 16);
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)loadJSonFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = 0;
  v6 = objc_msgSend_initWithContentsOfFile_encoding_error_(v4, v5, v3, 4, &v18);
  v7 = v18;
  v11 = v7;
  if (v7)
  {
    NSLog(&cfstr_Error.isa, v7);
  }

  v12 = objc_msgSend_dataUsingEncoding_(v6, v8, 4, v9, v10);
  v17 = v11;
  v14 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v13, v12, 0, &v17);
  v15 = v17;

  if (v15)
  {
    NSLog(&cfstr_Error.isa, v15);
  }

  return v14;
}

- (CGColorSpace)extractColorSpaceFromInfo:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"colorspace", v6, v7);

  if (v8)
  {
    v13 = objc_msgSend_info(self, v9, v10, v11, v12);
    v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"colorspace", v15, v16);

    if (objc_msgSend_isEqualToString_(v17, v18, @"sRGB", v19, v20))
    {
      v24 = MEMORY[0x277CBF4B8];
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v17, v21, @"P3", v22, v23))
      {
        NSLog(&cfstr_UnrecognizedCo.isa, v17);
        v25 = 0;
        goto LABEL_9;
      }

      v24 = MEMORY[0x277CBF3E0];
    }

    v25 = CGColorSpaceCreateWithName(*v24);
LABEL_9:

    goto LABEL_10;
  }

  v25 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
LABEL_10:

  return v25;
}

- (IHKSliderNetCPModel)initWithModel:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = IHKSliderNetCPModel;
  v7 = [(IHKSliderNetCPModel *)&v29 init];
  v11 = v7;
  if (v7)
  {
    objc_msgSend_setGatingMethod_(v7, v8, 0, v9, v10);
    if (v6)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(v6, v12, @"slidernet_gating_method", v13, v14);

      if (v15)
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(v6, v16, @"slidernet_gating_method", v17, v18);
        v24 = objc_msgSend_unsignedIntValue(v19, v20, v21, v22, v23);
        objc_msgSend_setGatingMethod_(v11, v25, v24, v26, v27);
      }
    }
  }

  return v11;
}

- (IHKSliderNetCPModel)initWithModelType:(unint64_t)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    if (a3 != 1)
    {
      v19 = 0;
      goto LABEL_10;
    }

    v9 = @"SliderNetCP_ColorBalance_Exposure_v2.1.1";
  }

  else
  {
    v9 = @"SliderNetCP_TempTint_Exposure_v2.0.1";
  }

  v10 = MEMORY[0x277CCA8D8];
  v11 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v10, v12, v11, v13, v14);
  v18 = objc_msgSend_pathForResource_ofType_inDirectory_(v15, v16, v9, @"slidernetmodel", @"Models");
  if (v18)
  {
    v19 = objc_msgSend_loadModelAtPath_options_error_(IHKSliderNetCPModel, v17, v18, v8, a5);
  }

  else
  {
    v19 = 0;
  }

LABEL_10:
  return v19;
}

- (BOOL)useClipEmbedding
{
  v6 = objc_msgSend_gatingMethod(self, a2, v2, v3, v4);
  if (v6 != 1)
  {
    LOBYTE(v6) = objc_msgSend_gatingMethod(self, v7, v8, v9, v10) == 2;
  }

  return v6;
}

- (id)computeClipEmbeddingForImage:(__CVBuffer *)a3 error:(id *)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2050000000;
  v6 = qword_27F71E140;
  v53 = qword_27F71E140;
  if (!qword_27F71E140)
  {
    v54 = 0;
    if (!qword_27F71E148)
    {
      v55 = MEMORY[0x277D85DD0];
      v56 = 3221225472;
      v57 = sub_254ADAE8C;
      v58 = &unk_2797A5D28;
      v59 = &v54;
      v61 = xmmword_2797A5D10;
      v62 = 0;
      qword_27F71E148 = _sl_dlopen();
      if (!qword_27F71E148)
      {
        goto LABEL_25;
      }

      if (v54)
      {
        free(v54);
      }
    }

    v51[3] = objc_getClass("VNCreateSceneprintRequest");
    if (!v51[3])
    {
      goto LABEL_25;
    }

    qword_27F71E140 = v51[3];
    v6 = v51[3];
  }

  v7 = v6;
  _Block_object_dispose(&v50, 8);
  v8 = objc_alloc_init(v6);
  if (objc_msgSend_setRevision_error_(v8, v9, 3737841671, a4, v10))
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v11 = qword_27F71E150;
    v53 = qword_27F71E150;
    if (qword_27F71E150)
    {
LABEL_18:
      v13 = v11;
      _Block_object_dispose(&v50, 8);
      v14 = [v11 alloc];
      v17 = objc_msgSend_initWithCVPixelBuffer_options_(v14, v15, a3, MEMORY[0x277CBEC10], v16);
      v60 = v8;
      v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, &v60, 1, v19);
      v23 = objc_msgSend_performRequests_error_(v17, v21, v20, a4, v22);

      if (v23)
      {
        v28 = objc_msgSend_results(v8, v24, v25, v26, v27);
        v33 = objc_msgSend_firstObject(v28, v29, v30, v31, v32);
        v38 = objc_msgSend_sceneprints(v33, v34, v35, v36, v37);
        v43 = objc_msgSend_firstObject(v38, v39, v40, v41, v42);

        v12 = objc_msgSend_descriptorData(v43, v44, v45, v46, v47);
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_22;
    }

    v54 = 0;
    if (!qword_27F71E148)
    {
      v55 = MEMORY[0x277D85DD0];
      v56 = 3221225472;
      v57 = sub_254ADAE8C;
      v58 = &unk_2797A5D28;
      v59 = &v54;
      v61 = xmmword_2797A5D10;
      v62 = 0;
      qword_27F71E148 = _sl_dlopen();
      if (!qword_27F71E148)
      {
        goto LABEL_25;
      }

      if (v54)
      {
        free(v54);
      }
    }

    v51[3] = objc_getClass("VNImageRequestHandler");
    if (v51[3])
    {
      qword_27F71E150 = v51[3];
      v11 = v51[3];
      goto LABEL_18;
    }

LABEL_25:
    abort_report_np();
    __break(1u);
  }

  v12 = 0;
LABEL_22:

  v48 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (objc_msgSend_useClipEmbedding(self, v9, v10, v11, v12))
  {
    if (v8)
    {
      v15 = [IHKFeatureVector alloc];
      v19 = objc_msgSend_initWithData_(v15, v16, v8, v17, v18);
    }

    else
    {
      v20 = objc_msgSend_computeClipEmbeddingForImage_error_(self, v13, a3, a5, v14);
      if (a5 && *a5)
      {
        v19 = 0;
      }

      else
      {
        v21 = [IHKFeatureVector alloc];
        v19 = objc_msgSend_initWithData_(v21, v22, v20, v23, v24);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (objc_msgSend_useClipEmbedding(self, v9, v10, v11, v12))
  {
    if (v8)
    {
      v15 = [IHKFeatureVector alloc];
      v19 = objc_msgSend_initWithData_(v15, v16, v8, v17, v18);
    }

    else
    {
      v20 = objc_msgSend_computeClipEmbeddingForImage_error_(self, v13, a3, a5, v14);
      if (a5 && *a5)
      {
        v19 = 0;
      }

      else
      {
        v21 = [IHKFeatureVector alloc];
        v19 = objc_msgSend_initWithData_(v21, v22, v20, v23, v24);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (float)gatingScoreForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_gatingMethod(self, v9, v10, v11, v12) && objc_msgSend_gatingMethod(self, v13, v14, v15, v16) != 2)
  {
    v29 = 0.0;
    if (objc_msgSend_gatingMethod(self, v13, v17, v15, v16) == 1)
    {
      v35 = objc_msgSend_subFeatureVectorWithRange_(v7, v33, 0, 768, v34);
      v38 = objc_msgSend_subFeatureVectorWithRange_(v8, v36, 0, 768, v37);
      objc_msgSend_cosineSimilarity_(v35, v39, v38, v40, v41);
      v43 = v42;
      objc_msgSend_cosineSimilarity_(v35, v44, v35, v45, v46);
      v48 = v47;
      objc_msgSend_cosineSimilarity_(v38, v49, v38, v50, v51);
      v29 = (v43 / (v48 + 1.0e-10)) / (v52 + 1.0e-10);
    }
  }

  else
  {
    objc_msgSend_cosineSimilarity_(v7, v13, v8, v15, v16);
    v19 = v18;
    objc_msgSend_cosineSimilarity_(v7, v20, v7, v21, v22);
    v24 = v23;
    objc_msgSend_cosineSimilarity_(v8, v25, v8, v26, v27);
    v29 = (v19 / (v24 + 1.0e-10)) / (v28 + 1.0e-10);
  }

  v30 = (v29 * 0.5) + 0.5;
  if (v30 > 1.0)
  {
    v30 = 1.0;
  }

  if (v30 >= 0.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  return v31;
}

- (id)predictSlidersForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"The method %s must be overridden in a subclass/category", v9, v10, "[IHKSliderNetCPModel predictSlidersForStyleVector:contentVector:error:]");
  v14 = objc_msgSend_errorWithCode_message_(IHKError, v12, 1, v11, v13);
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)predictStylePrintForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5
{
  v5 = objc_msgSend_predictStyleVectorForPixelBuffer_scenePrint_error_(self, a2, a3, a4, a5);

  return v5;
}

- (id)predictSlidersToTransferStyleFrom:(id)a3 to:(id)a4 error:(id *)a5
{
  v5 = objc_msgSend_predictSlidersForStyleVector_contentVector_error_(self, a2, a3, a4, a5);

  return v5;
}

- (shared_ptr<ik::PixelBufferTransfer>)resampler
{
  v3 = v2;
  if (!self->_resampler.__ptr_)
  {
    operator new();
  }

  cntrl = self->_resampler.__cntrl_;
  *v3 = self->_resampler.__ptr_;
  v3[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (BOOL)checkColorspaceForPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  ColorSpace = CVImageBufferGetColorSpace(a3);
  v7 = CGColorSpaceGetName(ColorSpace);
  v12 = objc_msgSend_colorSpace(self, v8, v9, v10, v11);
  v13 = CGColorSpaceGetName(v12);
  isEqualToString = objc_msgSend_isEqualToString_(v13, v14, v7, v15, v16);
  v21 = isEqualToString;
  if (a4)
  {
    v22 = isEqualToString;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"Buffer color space is %@, while network expects %@.", v19, v20, v7, v13);
    *a4 = objc_msgSend_errorWithCode_message_(IHKError, v24, 3, v23, v25);
  }

  return v21;
}

- (BOOL)pixelBufferShapesMatchRequirement:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  objc_msgSend_imageSize(self, v6, v7, v8, v9);
  if (Width != v10)
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(a3);
  objc_msgSend_imageSize(self, v12, v13, v14, v15);
  return Height == v16;
}

- (__CVBuffer)preprocessPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v5 = a3;
  if (!objc_msgSend_checkColorspaceForPixelBuffer_error_(self, a2, a3, a4, v4))
  {
    return 0;
  }

  if (objc_msgSend_pixelBufferShapesMatchRequirement_(self, v7, v5, v8, v9))
  {
    return v5;
  }

  objc_msgSend_imageSize(self, v10, v11, v12, v13);

  return MEMORY[0x2821F9670](self, sel_resizePixelBuffer_targetSize_, v5, v14, v15);
}

- (__CVBuffer)resizePixelBuffer:(__CVBuffer *)a3 targetSize:(CGSize)a4
{
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], a4.width, a4.height, 0x42475241u, 0, &pixelBufferOut);
  objc_msgSend_resampler(self, v6, v7, v8, v9);
  v10 = VTPixelTransferSessionTransferImage(***attachmentMode, a3, pixelBufferOut);
  sub_254ADAF58(v10, "Image Transfer");
  v11 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  attachmentMode[0] = kCVAttachmentMode_ShouldPropagate;
  v12 = *MEMORY[0x277CC4B78];
  v13 = CVBufferCopyAttachment(a3, *MEMORY[0x277CC4B78], attachmentMode);
  CVBufferSetAttachment(pixelBufferOut, v12, v13, kCVAttachmentMode_ShouldNotPropagate);
  return pixelBufferOut;
}

- (id)applyAdjustments:(id)a3 toCIImage:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"The method %s must be overridden in a subclass/category", v9, v10, "[IHKSliderNetCPModel applyAdjustments:toCIImage:error:]");
  v14 = objc_msgSend_errorWithCode_message_(IHKError, v12, 1, v11, v13);
  v15 = v14;

  objc_exception_throw(v14);
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

+ (id)loadModelAtPath:(id)a3
{
  v3 = objc_msgSend_loadModelAtPath_options_error_(IHKSliderNetCPModel, a2, a3, 0, 0);

  return v3;
}

+ (id)loadModelAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_stringByAppendingPathComponent_(v7, v9, @"net_info.json", v10, v11);
  v16 = objc_msgSend_loadJSonFrom_(IHKSliderNetCPModel, v13, v12, v14, v15);
  v20 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"network_type", v18, v19);
  if (objc_msgSend_isEqualToString_(v20, v21, @"copy_paste_edit_3way_v1", v22, v23))
  {
    v27 = off_2797A5A68;
LABEL_6:
    v34 = objc_alloc(*v27);
    v36 = objc_msgSend_initWithModel_options_error_(v34, v35, v7, v8, a5);
    goto LABEL_7;
  }

  if ((objc_msgSend_isEqualToString_(v20, v24, @"copy_paste_edit_3way_v2", v25, v26) & 1) != 0 || objc_msgSend_isEqualToString_(v20, v28, @"copy_paste_edit_3way_v2.1", v29, v30))
  {
    v27 = &off_2797A5A70;
    goto LABEL_6;
  }

  v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"Unknown network type: %@", v32, v33, v20);
  NSLog(&stru_2866F68B0.isa, v38);
  if (a5)
  {
    *a5 = objc_msgSend_errorWithCode_message_(IHKError, v39, 8, v38, v40);
  }

  v36 = 0;
LABEL_7:

  return v36;
}

@end