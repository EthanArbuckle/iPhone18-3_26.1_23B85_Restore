@interface MLPDeviceHandler
- (MLPDeviceHandler)initWithDataLayout:(id)a3;
- (float)uniformRandWithParamA:(float)a3 paramB:(float)a4;
- (id).cxx_construct;
- (id)biasVectorWithLength:(unint64_t)a3 stdDev:(float)a4 values:(const void *)a5;
- (id)deduceDevice;
- (id)imageBatchFromMatrix:(id)a3 m2iKernel:(id)a4 cmdBuf:(id)a5 width:(unint64_t)a6 height:(unint64_t)a7 channels:(unint64_t)a8;
- (id)imageFromData:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 featureChannels:(unint64_t)a6;
- (id)imageFromMatrix:(id)a3 m2iKernel:(id)a4 cmdBuf:(id)a5 width:(unint64_t)a6 height:(unint64_t)a7 featureChannels:(unint64_t)a8;
- (id)matrixFromImages:(id)a3 i2mKernel:(id)a4 cmdBuf:(id)a5;
- (id)matrixToVector:(id)a3;
- (id)matrixWithRows:(unint64_t)a3 columns:(unint64_t)a4 cmdBuf:(id)a5;
- (id)tempMatrixFromImages:(id)a3 i2mKernel:(id)a4 cmdBuf:(id)a5;
- (id)tempMatrixWithRows:(unint64_t)a3 columns:(unint64_t)a4 cmdBuf:(id)a5;
- (id)vectorWithLength:(unint64_t)a3 cmdBuf:(id)a4;
- (id)weightMatrixFixedRowBytesWithRows:(unint64_t)a3 columns:(unint64_t)a4;
- (id)weightMatrixWithRows:(unint64_t)a3 columns:(unint64_t)a4 stdDev:(float)a5 initialValues:(const void *)a6 columnMajor:(BOOL)a7;
@end

@implementation MLPDeviceHandler

- (MLPDeviceHandler)initWithDataLayout:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MLPDeviceHandler;
  v5 = [(MLPDeviceHandler *)&v26 init];
  v8 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v9 = 1;
  v5->weightSeed.__x_[0] = 1;
  v10 = 3;
  v11 = 1;
  do
  {
    v12 = 1812433253 * (v9 ^ (v9 >> 30));
    v9 = v12 + v11;
    *(&v5->super.isa + v10) = v10 + v12 - 2;
    ++v11;
    ++v10;
  }

  while (v10 != 626);
  v5->weightSeed.__i_ = 0;
  v5->_dataLayout = 1;
  if (objc_msgSend_isEqualToString_(v4, v6, MLPModelTrainerDataLayoutFeatureChannelsxHeightxWidth, v7))
  {
    v16 = 1;
LABEL_8:
    v8->_dataLayout = v16;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v4, v13, MLPModelTrainerDataLayoutHeightxWidthxFeatureChannels, v15))
  {
    v16 = 0;
    goto LABEL_8;
  }

LABEL_9:
  v18 = objc_msgSend_deduceDevice(v8, v13, v14, v15);
  if (!v18)
  {
    v25 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v17, *MEMORY[0x1E695D930], @"Could not find metal device", 0);
    objc_exception_throw(v25);
  }

  objc_storeStrong(&v8->_device, v18);
  v22 = objc_msgSend_newCommandQueue(v18, v19, v20, v21);
  commandQueue = v8->_commandQueue;
  v8->_commandQueue = v22;

LABEL_11:
  return v8;
}

- (id)deduceDevice
{
  v2 = MTLCreateSystemDefaultDevice();

  return v2;
}

- (id)weightMatrixFixedRowBytesWithRows:(unint64_t)a3 columns:(unint64_t)a4
{
  v5 = 4 * a4;
  v6 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x1E6974480], a2, a3, a4, 4 * a4, 268435488);
  v10 = objc_msgSend_device(self, v7, v8, v9);
  v14 = objc_msgSend_rows(v6, v11, v12, v13);
  v16 = objc_msgSend_newBufferWithLength_options_(v10, v15, v14 * v5, 0);

  v17 = objc_alloc(MEMORY[0x1E6974478]);
  v19 = objc_msgSend_initWithBuffer_descriptor_(v17, v18, v16, v6);
  v20 = v16;
  v24 = objc_msgSend_contents(v20, v21, v22, v23);
  v28 = objc_msgSend_length(v16, v25, v26, v27);
  bzero(v24, v28);

  return v19;
}

- (id)weightMatrixWithRows:(unint64_t)a3 columns:(unint64_t)a4 stdDev:(float)a5 initialValues:(const void *)a6 columnMajor:(BOOL)a7
{
  v8 = a7;
  v14 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x1E6974480], a2, a4, 268435488);
  v104 = a4;
  v16 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x1E6974480], v15, a3, a4, v14, 268435488);
  v20 = objc_msgSend_device(self, v17, v18, v19);
  v24 = objc_msgSend_rows(v16, v21, v22, v23);
  v26 = objc_msgSend_newBufferWithLength_options_(v20, v25, v24 * v14, 0);

  v27 = objc_alloc(MEMORY[0x1E6974478]);
  v29 = objc_msgSend_initWithBuffer_descriptor_(v27, v28, v26, v16);
  v30 = v26;
  v37 = objc_msgSend_contents(v30, v31, v32, v33);
  v98 = v29;
  v99 = v26;
  if (a6)
  {
    if (v104 * a3)
    {
      if (!((v104 * a3) >> 62))
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v75 = objc_msgSend_length(v26, v34, v35, v36, v29, v26);
    bzero(v37, v75);
    v76 = v26;
    v80 = objc_msgSend_contents(v76, v77, v78, v79);
    if (a3)
    {
      v84 = v8 ? a3 : v104;
      if (v104)
      {
        v85 = v80;
        v86 = 0;
        v87 = 4 * v84;
        if (v8)
        {
          do
          {
            v88 = v104;
            v89 = v85;
            v90 = a6;
            do
            {
              *(v89 + v86 * objc_msgSend_rowBytes(v16, v81, v82, v83)) = *v90;
              v90 = (v90 + v87);
              v89 += 4;
              --v88;
            }

            while (v88);
            ++v86;
            a6 = a6 + 4;
          }

          while (v86 != a3);
        }

        else
        {
          do
          {
            v91 = v104;
            v92 = v85;
            v93 = a6;
            do
            {
              v94 = objc_msgSend_rowBytes(v16, v81, v82, v83);
              v95 = *v93++;
              *(v92 + v86 * v94) = v95;
              v92 += 4;
              --v91;
            }

            while (v91);
            ++v86;
            a6 = a6 + v87;
          }

          while (v86 != a3);
        }
      }
    }
  }

  else if (a5 <= 0.0)
  {
    v96 = objc_msgSend_length(v26, v34, v35, v36);
    bzero(v37, v96);
  }

  else
  {
    v38 = objc_msgSend_length(v26, v34, v35, v36);
    bzero(v37, v38);
    v39 = v26;
    v102 = objc_msgSend_contents(v39, v40, v41, v42);
    if (a3 && v104)
    {
      v103 = 0;
      v46 = 0;
      p_weightSeed = &self->weightSeed;
      v48 = vdup_n_s32(0x9D2C5680);
      v49 = vdup_n_s32(0xEFC60000);
      __asm { FMOV            V13.2S, #-1.0 }

      do
      {
        v55 = 0;
        v100 = v46 ^ v104;
        do
        {
          v56 = objc_msgSend_rowBytes(v16, v43, v44, v45, v98, v99);
          v57 = v7;
          if ((v46 & 1) == 0)
          {
            i = self->weightSeed.__i_;
            v59 = p_weightSeed->__x_[i];
            do
            {
              v60 = (i + 1) % 0x270;
              v61 = p_weightSeed->__x_[v60];
              v62 = v61 & 0x7FFFFFFE | v59 & 0x80000000;
              if (v61)
              {
                v63 = -1727483681;
              }

              else
              {
                v63 = 0;
              }

              v64 = v63 ^ p_weightSeed->__x_[(i + 397) % 0x270] ^ (v62 >> 1);
              p_weightSeed->__x_[i] = v64;
              if (v60 < 0x26F)
              {
                i = v60 + 1;
              }

              else
              {
                i = v60 - 623;
              }

              if (v60 >= 0xE3)
              {
                v65 = -227;
              }

              else
              {
                v65 = 397;
              }

              v59 = p_weightSeed->__x_[i];
              v66 = p_weightSeed->__x_[v65 + v60];
              if (v59)
              {
                v67 = -1727483681;
              }

              else
              {
                v67 = 0;
              }

              v68 = v67 ^ v66 ^ ((v59 & 0x7FFFFFFE | p_weightSeed->__x_[v60] & 0x80000000) >> 1);
              p_weightSeed->__x_[v60] = v68;
              v69 = veor_s8(vshr_n_u32(__PAIR64__(v64, v68), 0xBuLL), __PAIR64__(v64, v68));
              v70 = veor_s8(vand_s8(vshl_n_s32(v69, 7uLL), v48), v69);
              v71 = veor_s8(vand_s8(vshl_n_s32(v70, 0xFuLL), v49), v70);
              v72 = vmla_f32(_D13, vcvt_f32_u32(veor_s8(vshr_n_u32(v71, 0x12uLL), v71)), 0x3000000030000000);
              v73 = vaddv_f32(vmul_f32(v72, v72));
            }

            while (v73 > 1.0 || v73 == 0.0);
            self->weightSeed.__i_ = i;
            v101 = v72;
            v74 = sqrtf((logf(v73) * -2.0) / v73);
            v7 = v74 * v101.f32[0];
            v57 = vmuls_lane_f32(v74, v101, 1);
          }

          LOBYTE(v46) = v46 ^ 1;
          *(v102 + v56 * v103 + 4 * v55++) = v57 * a5;
        }

        while (v55 != v104);
        ++v103;
        v46 = v100;
      }

      while (v103 != a3);
    }
  }

  return v98;
}

- (id)biasVectorWithLength:(unint64_t)a3 stdDev:(float)a4 values:(const void *)a5
{
  v7 = a3;
  LODWORD(v41) = 0;
  *(&v41 + 1) = a4;
  v42 = 0;
  v9 = objc_msgSend_vectorDescriptorWithLength_dataType_(MEMORY[0x1E69744B8], a2, a3, 268435488, v41);
  v11 = objc_msgSend_vectorBytesForLength_dataType_(MEMORY[0x1E69744B8], v10, v7, 268435488);
  v15 = objc_msgSend_device(self, v12, v13, v14);
  v17 = objc_msgSend_newBufferWithLength_options_(v15, v16, v11, 0);

  v18 = objc_alloc(MEMORY[0x1E69744B0]);
  v20 = objc_msgSend_initWithBuffer_descriptor_(v18, v19, v17, v9);
  v21 = v17;
  v25 = objc_msgSend_contents(v21, v22, v23, v24);
  v29 = v25;
  if (a5)
  {
    if (v7)
    {
      v30 = 0;
      if (v7 < 8)
      {
        goto LABEL_8;
      }

      if ((v25 - a5) <= 0x1F)
      {
        goto LABEL_8;
      }

      v30 = v7 & 0xFFFFFFFFFFFFFFF8;
      v31 = (a5 + 16);
      v32 = (v25 + 16);
      v33 = v7 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v34 = *v31;
        *(v32 - 1) = *(v31 - 1);
        *v32 = v34;
        v31 += 2;
        v32 += 2;
        v33 -= 8;
      }

      while (v33);
      if (v30 != v7)
      {
LABEL_8:
        v35 = (v25 + 4 * v30);
        v36 = (a5 + 4 * v30);
        v37 = v7 - v30;
        do
        {
          v38 = *v36++;
          *v35++ = v38;
          --v37;
        }

        while (v37);
      }
    }
  }

  else if (a4 <= 0.0)
  {
    v39 = objc_msgSend_length(v17, v26, v27, v28);
    bzero(v29, v39);
  }

  else
  {
    for (; v7; --v7)
    {
      *v29++ = sub_19D36472C(&v41, &self->weightSeed, &v41);
    }
  }

  return v20;
}

- (id)imageFromData:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 featureChannels:(unint64_t)a6
{
  v10 = a3;
  v12 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x1E6974468], v11, 4, a4, a5, a6);
  v13 = objc_alloc(MEMORY[0x1E6974460]);
  v17 = objc_msgSend_device(self, v14, v15, v16);
  v19 = objc_msgSend_initWithDevice_imageDescriptor_(v13, v18, v17, v12);

  v20 = v10;
  v24 = objc_msgSend_bytes(v20, v21, v22, v23);
  v28 = objc_msgSend_dataLayout(self, v25, v26, v27);
  objc_msgSend_writeBytes_dataLayout_imageIndex_(v19, v29, v24, v28, 0);

  return v19;
}

- (id)imageFromMatrix:(id)a3 m2iKernel:(id)a4 cmdBuf:(id)a5 width:(unint64_t)a6 height:(unint64_t)a7 featureChannels:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v17 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x1E6974468], v16, 4, a6, a7, a8);
  v19 = objc_msgSend_temporaryImageWithCommandBuffer_imageDescriptor_(MEMORY[0x1E6974498], v18, v15, v17);
  objc_msgSend_encodeToCommandBuffer_sourceMatrix_destinationImage_(v14, v20, v15, v13, v19);

  return v19;
}

- (id)imageBatchFromMatrix:(id)a3 m2iKernel:(id)a4 cmdBuf:(id)a5 width:(unint64_t)a6 height:(unint64_t)a7 channels:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19 = objc_msgSend_rows(v13, v16, v17, v18);
  v22 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v20, v19, v21);
  for (i = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x1E6974468], v23, 4, a6, a7, a8);
  {
    v26 = objc_msgSend_temporaryImageWithCommandBuffer_imageDescriptor_(MEMORY[0x1E6974498], v24, v15, i);
    objc_msgSend_addObject_(v22, v27, v26, v28);
  }

  objc_msgSend_encodeBatchToCommandBuffer_sourceMatrix_destinationImages_(v14, v24, v15, v13, v22);

  return v22;
}

- (id)tempMatrixWithRows:(unint64_t)a3 columns:(unint64_t)a4 cmdBuf:(id)a5
{
  v7 = a5;
  v9 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x1E6974480], v8, a4, 268435488);
  v11 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x1E6974480], v10, a3, a4, v9, 268435488);
  v13 = objc_msgSend_temporaryMatrixWithCommandBuffer_matrixDescriptor_(MEMORY[0x1E69744A0], v12, v7, v11);

  return v13;
}

- (id)matrixWithRows:(unint64_t)a3 columns:(unint64_t)a4 cmdBuf:(id)a5
{
  v5 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(self, a2, a3, a4, 0, 0, 0.0);

  return v5;
}

- (id)tempMatrixFromImages:(id)a3 i2mKernel:(id)a4 cmdBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_count(v8, v11, v12, v13);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v8, v15, 0, v16);
  v21 = objc_msgSend_featureChannels(v17, v18, v19, v20);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v8, v22, 0, v23);
  v28 = objc_msgSend_width(v24, v25, v26, v27);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v8, v29, 0, v30);
  v35 = v28 * v21 * objc_msgSend_height(v31, v32, v33, v34);

  v37 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(self, v36, v14, v35, v10);
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationMatrix_(v9, v38, v10, v8, v37);

  return v37;
}

- (id)matrixFromImages:(id)a3 i2mKernel:(id)a4 cmdBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_count(v8, v11, v12, v13);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v8, v15, 0, v16);
  v21 = objc_msgSend_featureChannels(v17, v18, v19, v20);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v8, v22, 0, v23);
  v28 = objc_msgSend_width(v24, v25, v26, v27);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v8, v29, 0, v30);
  v35 = v28 * v21 * objc_msgSend_height(v31, v32, v33, v34);

  v37 = objc_msgSend_matrixWithRows_columns_cmdBuf_(self, v36, v14, v35, v10);
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationMatrix_(v9, v38, v10, v8, v37);

  return v37;
}

- (id)vectorWithLength:(unint64_t)a3 cmdBuf:(id)a4
{
  v5 = objc_msgSend_vectorDescriptorWithLength_dataType_(MEMORY[0x1E69744B8], a2, a3, 268435488);
  v6 = objc_alloc(MEMORY[0x1E69744B0]);
  v10 = objc_msgSend_device(self, v7, v8, v9);
  v12 = objc_msgSend_initWithDevice_descriptor_(v6, v11, v10, v5);

  return v12;
}

- (id)matrixToVector:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_rowBytes(v3, v4, v5, v6);
  v11 = objc_msgSend_rows(v3, v8, v9, v10);
  v13 = objc_msgSend_vectorDescriptorWithLength_dataType_(MEMORY[0x1E69744B8], v12, v11 * (v7 >> 2), 268435488);
  v14 = objc_alloc(MEMORY[0x1E69744B0]);
  v18 = objc_msgSend_data(v3, v15, v16, v17);
  v20 = objc_msgSend_initWithBuffer_descriptor_(v14, v19, v18, v13);

  return v20;
}

- (float)uniformRandWithParamA:(float)a3 paramB:(float)a4
{
  v4 = a4 - a3;
  i = self->weightSeed.__i_;
  v6 = (i + 1) % 0x270;
  v7 = self + 4 * i;
  v8 = self->weightSeed.__x_[v6];
  v9 = self->weightSeed.__x_[(i + 397) % 0x270];
  if (v8)
  {
    v10 = -1727483681;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 ^ v9 ^ ((v8 & 0x7FFFFFFE | *(v7 + 2) & 0x80000000) >> 1);
  *(v7 + 2) = v11;
  v12 = ((v11 ^ (v11 >> 11)) << 7) & 0x9D2C5680 ^ v11 ^ (v11 >> 11);
  self->weightSeed.__i_ = v6;
  return a3 + ((v4 * 2.3283e-10) * ((v12 << 15) & 0xEFC60000 ^ v12 ^ (((v12 << 15) & 0xEFC60000 ^ v12) >> 18)));
}

- (id).cxx_construct
{
  v2 = 5489;
  *(self + 2) = 5489;
  v3 = 1;
  for (i = 3; i != 626; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(self + i) = i + v5 - 2;
    ++v3;
  }

  *(self + 313) = 0;
  return self;
}

@end