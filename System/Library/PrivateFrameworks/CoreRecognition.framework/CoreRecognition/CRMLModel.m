@interface CRMLModel
- (CRMLModel)init;
- (CRMLModel)initWithURL:(id)a3 restrictToCPU:(BOOL)a4 error:(id *)a5;
- (NSString)modelName;
- (id)decodeActivations:(void *)a3;
- (id)decodeActivations:(void *)a3 blank:(unsigned __int16)a4 ctcAllowGarbage:(BOOL)a5 numResultNeeded:(int64_t)a6;
- (id)initRestrictingToCPU:(BOOL)a3;
- (id)predict:(id)a3 error:(id *)a4;
- (vector<std::vector<std::vector<float>>,)activationsFromImage:(CRMLModel *)self;
@end

@implementation CRMLModel

- (CRMLModel)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  v4 = [(CRMLModel *)self modelName];
  v5 = [v3 pathForResource:v4 ofType:@"bundle"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v7 = [(CRMLModel *)self initWithURL:v6 error:0];

  return v7;
}

- (id)initRestrictingToCPU:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  v6 = [(CRMLModel *)self modelName];
  v7 = [v5 pathForResource:v6 ofType:@"bundle"];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = [(CRMLModel *)self initWithURL:v8 restrictToCPU:v3 error:0];

  return v9;
}

- (CRMLModel)initWithURL:(id)a3 restrictToCPU:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v31.receiver = self;
  v31.super_class = CRMLModel;
  v9 = [(CRMLModel *)&v31 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBFF38] defaultConfiguration];
    if ((deviceHasAppleNeuralEngine() & 1) == 0)
    {
      [v10 setAllowBackgroundGPUCompute:1];
    }

    if (v6)
    {
      [v10 setComputeUnits:0];
    }

    v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v10 error:a5];
    model = v9->model;
    v9->model = v11;

    if (a5 && *a5 || (v13 = v9->model) == 0)
    {

      v29 = 0;
      goto LABEL_16;
    }

    v14 = [(MLModel *)v13 modelDescription];
    v15 = [v14 inputDescriptionsByName];
    v16 = [v15 objectForKeyedSubscript:@"data"];
    v17 = [v16 multiArrayConstraint];
    v18 = [v17 shape];
    [(CRMLModel *)v9 setModelShape:v18];

    v19 = [(CRMLModel *)v9 modelShape];
    v20 = [v19 objectAtIndexedSubscript:1];
    v9->_modelHeight = [v20 intValue];

    v21 = [(CRMLModel *)v9 modelShape];
    v22 = [v21 objectAtIndexedSubscript:2];
    v9->_modelWidth = [v22 intValue];

    [(CRMLModel *)v9 setGpuBatchSize:256];
    v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [v23 objectForKey:@"com.apple.CoreRecognition.gpu_batch_size"];
    v25 = [v24 integerValue];

    if (v25 >= 1)
    {
      [(CRMLModel *)v9 setGpuBatchSize:v25];
      NSLog(&cfstr_UsingCustomGpu.isa, [(CRMLModel *)v9 gpuBatchSize]);
    }

    [(CRMLModel *)v9 setCpuBatchSize:512];
    v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [v26 objectForKey:@"com.apple.CoreRecognition.cpu_batch_size"];
    v28 = [v27 integerValue];

    if (v28 >= 1)
    {
      [(CRMLModel *)v9 setCpuBatchSize:v28];
      NSLog(&cfstr_UsingCustomCpu.isa, [(CRMLModel *)v9 cpuBatchSize]);
    }
  }

  v29 = v9;
LABEL_16:

  return v29;
}

- (NSString)modelName
{
  NSLog(&cfstr_ModelnameMustB.isa);
  [(CRMLModel *)self doesNotRecognizeSelector:a2];
  return &stru_2859636D0;
}

- (id)predict:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 setObject:v6 forKeyedSubscript:@"data"];
  v8 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v7 error:a4];
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(MLModel *)v9->model predictionFromFeatures:v8 error:a4];
  objc_sync_exit(v9);

  v11 = [v10 featureValueForName:@"softmax_output"];
  v12 = [v11 multiArrayValue];

  return v12;
}

- (id)decodeActivations:(void *)a3
{
  NSLog(&cfstr_Decodeactivati.isa, a2, a3);
  [(CRMLModel *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (id)decodeActivations:(void *)a3 blank:(unsigned __int16)a4 ctcAllowGarbage:(BOOL)a5 numResultNeeded:(int64_t)a6
{
  NSLog(&cfstr_Decodeactivati.isa, a2, a3, a4, a5, a6);
  [(CRMLModel *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (vector<std::vector<std::vector<float>>,)activationsFromImage:(CRMLModel *)self
{
  v81[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v69 = v6;
  if ([v6 width] >= self->_modelWidth && objc_msgSend(v69, "height") == self->_modelHeight)
  {
    std::vector<std::vector<std::vector<float>>>::resize(retstr, 1uLL);
    if (([v69 width] - self->_modelWidth + 1) >= 2)
    {
      v7 = ([v69 width] - self->_modelWidth + 1) >> 1;
    }

    else
    {
      v7 = 1;
    }

    v9 = [(CRMLModel *)self gpuBatchSize];
    std::vector<std::vector<float>>::resize(retstr->var0, v7);
    v64 = vcvtps_s32_f32(v7 / v9);
    if (v64 >= 1)
    {
      v65 = v7;
      v71 = 0;
      v72 = v9;
      v10 = 0;
      v68 = 0;
      v63 = 2 * v9;
      v76 = retstr;
      do
      {
        v11 = v72;
        v70 = v10;
        if (v64 - 1 == v10)
        {
          v11 = v72;
          if (v65 != v72)
          {
            v11 = v65 % v72;
          }
        }

        v12 = objc_alloc(MEMORY[0x277CBFF48]);
        v81[0] = &unk_285976950;
        v66 = [MEMORY[0x277CCABB0] numberWithInteger:v72];
        v81[1] = v66;
        v13 = [(CRMLModel *)self modelShape];
        v73 = [v13 objectAtIndexedSubscript:0];
        v81[2] = v73;
        v67 = [(CRMLModel *)self modelShape];
        v14 = [v67 objectAtIndexedSubscript:1];
        v81[3] = v14;
        v15 = [(CRMLModel *)self modelShape];
        v77 = v11;
        v16 = [v15 objectAtIndexedSubscript:2];
        v81[4] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:5];
        v75 = [v12 initWithShape:v17 dataType:65600 error:0];

        v79 = 0u;
        v80 = 0u;
        if (v69)
        {
          [v69 vImage];
        }

        v18 = v75;
        v19 = [v75 dataPointer];
        if (v77 >= 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = *(&v79 + 1);
          v23 = (v79 + v71);
          do
          {
            if (v22)
            {
              v24 = 0;
              modelWidth = self->_modelWidth;
              v26 = *(&v80 + 1);
              v27 = v23;
              do
              {
                if (modelWidth >= 1)
                {
                  v28 = (v19 + 8 * v21);
                  v21 += modelWidth;
                  v29 = v27;
                  v30 = modelWidth;
                  do
                  {
                    v31 = *v29++;
                    *v28++ = (v31 / 255.0);
                    --v30;
                  }

                  while (v30);
                }

                ++v24;
                v27 += v26;
              }

              while (v24 != v22);
            }

            v20 += 2;
            v23 += 2;
          }

          while (2 * v77 > v20);
        }

        v78 = v68;
        v32 = [(CRMLModel *)self predict:v75 error:&v78];
        v74 = v78;

        if (v74)
        {
          NSLog(&stru_285965BF0.isa, v74);
        }

        v33 = [v32 shape];
        v34 = [v33 objectAtIndexedSubscript:0];
        v35 = [v34 integerValue] < v77;

        if (v35)
        {
          v36 = [v32 shape];
          v37 = [v36 objectAtIndexedSubscript:0];
          NSLog(&cfstr_Corerecognitio_0.isa, v32, v37, v72);
        }

        v38 = [v32 shape];
        v39 = [v32 shape];
        v40 = [v38 objectAtIndexedSubscript:{objc_msgSend(v39, "count") - 1}];
        v41 = [v40 integerValue];
        v42 = v41 == [(CRMLModel *)self classCount];

        if (!v42)
        {
          v62 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Codemap size doesn't match model output class" userInfo:0];
          objc_exception_throw(v62);
        }

        v43 = v77;
        if (v77 >= 1)
        {
          v44 = 0;
          do
          {
            for (i = 0; i < [(CRMLModel *)self classCount]; ++i)
            {
              v46 = *retstr->var0;
              v47 = v32;
              v48 = [v32 dataPointer];
              v49 = (v46 + 24 * v70 * v72 + 24 * v44);
              v50 = *(v48 + 8 * (i + v44 * [(CRMLModel *)self classCount]));
              v52 = v49[1];
              v51 = v49[2];
              if (v52 >= v51)
              {
                v54 = *v49;
                v55 = v52 - *v49;
                v56 = v55 >> 2;
                v57 = (v55 >> 2) + 1;
                if (v57 >> 62)
                {
                  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                }

                v58 = v51 - v54;
                if (v58 >> 1 > v57)
                {
                  v57 = v58 >> 1;
                }

                v59 = v58 >= 0x7FFFFFFFFFFFFFFCLL;
                v60 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v59)
                {
                  v60 = v57;
                }

                if (v60)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v49, v60);
                }

                *(4 * v56) = v50;
                v53 = 4 * v56 + 4;
                memcpy(0, v54, v55);
                v61 = *v49;
                *v49 = 0;
                v49[1] = v53;
                v49[2] = 0;
                if (v61)
                {
                  operator delete(v61);
                }

                retstr = v76;
              }

              else
              {
                *v52 = v50;
                v53 = (v52 + 1);
              }

              v49[1] = v53;
              v43 = v77;
            }

            ++v44;
          }

          while (v44 != v43);
        }

        v10 = v70 + 1;
        v71 += v63;
        v68 = v74;
      }

      while (v70 + 1 != v64);
    }
  }

  else
  {
    NSLog(&cfstr_AttemptToRecog.isa, [v69 width], objc_msgSend(v69, "height"), self->_modelWidth, self->_modelHeight);
  }

  return result;
}

@end