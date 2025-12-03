@interface _EARNnetUtil
+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLoss:(float *)self3 outModelLayersUpdated:(id *)self4;
+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLosses:(id *)self3 outModelLayersUpdated:(id *)self4;
+ (void)initialize;
@end

@implementation _EARNnetUtil

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLoss:(float *)self3 outModelLayersUpdated:(id *)self4
{
  v19 = 0;
  v14 = [_EARNnetUtil doBackPropWithNnetModelFile:"doBackPropWithNnetModelFile:inputFeatureVector:inputTargetVector:inputLearningRate:inputFreezeComponents:inputNumLocalIterations:inputGradNormFactor:inputGradNormType:inputBatchSize:inputObjectiveFunction:outTrainingLosses:outModelLayersUpdated:" inputFeatureVector:file inputTargetVector:vector inputLearningRate:targetVector inputFreezeComponents:components inputNumLocalIterations:*&iterations inputGradNormFactor:type inputGradNormType:function inputBatchSize:&v19 inputObjectiveFunction:updated outTrainingLosses:? outModelLayersUpdated:?];
  v15 = v19;
  lastObject = [v15 lastObject];
  [lastObject floatValue];
  *loss = v17;

  return v14;
}

+ (id)doBackPropWithNnetModelFile:(id)file inputFeatureVector:(id)vector inputTargetVector:(id)targetVector inputLearningRate:(float)rate inputFreezeComponents:(id)components inputNumLocalIterations:(int)iterations inputGradNormFactor:(float)factor inputGradNormType:(id)self0 inputBatchSize:(float)self1 inputObjectiveFunction:(id)self2 outTrainingLosses:(id *)self3 outModelLayersUpdated:(id *)self4
{
  v128 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  vectorCopy = vector;
  targetVectorCopy = targetVector;
  componentsCopy = components;
  typeCopy = type;
  functionCopy = function;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = vectorCopy;
  v22 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
  if (v22)
  {
    v77 = *v117;
    do
    {
      v23 = 0;
      v79 = v22;
      do
      {
        if (*v117 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v116 + 1) + 8 * v23);
        *&v113 = 0;
        __src[0] = 0;
        __src[1] = 0;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v120 objects:&v126 count:16];
        v81 = v23;
        if (v26)
        {
          v27 = *v121;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v121 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v120 + 1) + 8 * i);
              [v29 floatValue];
              v31 = __src[1];
              if (__src[1] >= v113)
              {
                v33 = __src[0];
                v34 = __src[1] - __src[0];
                v35 = (__src[1] - __src[0]) >> 2;
                v36 = v35 + 1;
                if ((v35 + 1) >> 62)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v37 = v113 - __src[0];
                if ((v113 - __src[0]) >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v38 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v38);
                }

                *(4 * v35) = v30;
                v32 = (4 * v35 + 4);
                memcpy(0, v33, v34);
                v39 = __src[0];
                __src[0] = 0;
                __src[1] = v32;
                *&v113 = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *__src[1] = v30;
                v32 = v31 + 4;
              }

              __src[1] = v32;
            }

            v26 = [v25 countByEnumeratingWithState:&v120 objects:&v126 count:16];
          }

          while (v26);
        }

        std::vector<std::vector<float>>::push_back[abi:ne200100](&v92, __src);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v23 = v81 + 1;
      }

      while (v81 + 1 != v79);
      v22 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
    }

    while (v22);
  }

  v40 = targetVectorCopy;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v74 = v40;
  v41 = [v74 countByEnumeratingWithState:&v105 objects:&v120 count:16];
  if (v41)
  {
    v67 = *v106;
    do
    {
      v42 = 0;
      v66 = v41;
      do
      {
        if (*v106 != v67)
        {
          objc_enumerationMutation(v74);
        }

        v68 = v42;
        v43 = *(*(&v105 + 1) + 8 * v42);
        memset(v104, 0, sizeof(v104));
        *__src = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v75 = v43;
        v44 = [v75 countByEnumeratingWithState:__src objects:v124 count:16];
        if (v44)
        {
          v78 = *v113;
          do
          {
            v45 = 0;
            v80 = v44;
            do
            {
              if (*v113 != v78)
              {
                objc_enumerationMutation(v75);
              }

              v46 = *(__src[1] + v45);
              v111 = 0;
              __p = 0;
              v110 = 0;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v119 = 0u;
              v47 = v46;
              v48 = [v47 countByEnumeratingWithState:&v116 objects:&v126 count:16];
              v82 = v45;
              if (v48)
              {
                v49 = 0;
                v50 = *v117;
                do
                {
                  for (j = 0; j != v48; ++j)
                  {
                    if (*v117 != v50)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v52 = *(*(&v116 + 1) + 8 * j);
                    [v52 floatValue];
                    v54 = v110;
                    if (v110 >= v111)
                    {
                      v56 = (v110 - __p) >> 3;
                      v57 = v56 + 1;
                      if ((v56 + 1) >> 61)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v58 = v111 - __p;
                      if ((v111 - __p) >> 2 > v57)
                      {
                        v57 = v58 >> 2;
                      }

                      if (v58 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v59 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v59 = v57;
                      }

                      if (v59)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v59);
                      }

                      v60 = (8 * v56);
                      *v60 = v49;
                      v60[1] = v53;
                      v55 = 8 * v56 + 8;
                      v61 = (8 * v56 - (v110 - __p));
                      memcpy(v60 - (v110 - __p), __p, v110 - __p);
                      v62 = __p;
                      __p = v61;
                      v110 = v55;
                      v111 = 0;
                      if (v62)
                      {
                        operator delete(v62);
                      }
                    }

                    else
                    {
                      *v110 = v49;
                      *(v54 + 1) = v53;
                      v55 = (v54 + 8);
                    }

                    v110 = v55;

                    ++v49;
                  }

                  v48 = [v47 countByEnumeratingWithState:&v116 objects:&v126 count:16];
                }

                while (v48);
              }

              std::vector<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc>>>::push_back[abi:ne200100](v104, &__p);
              if (__p)
              {
                v110 = __p;
                operator delete(__p);
              }

              v45 = v82 + 1;
            }

            while (v82 + 1 != v80);
            v44 = [v75 countByEnumeratingWithState:__src objects:v124 count:16];
          }

          while (v44);
        }

        std::vector<std::vector<std::vector<unsigned long>>>::push_back[abi:ne200100](&v89, v104);
        v126 = v104;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);

        v42 = v68 + 1;
      }

      while (v68 + 1 != v66);
      v41 = [v74 countByEnumeratingWithState:&v105 objects:&v120 count:16];
    }

    while (v41);
  }

  v126 = &unk_1F2D279F8;
  *v127 = xmmword_1B5AE0070;
  *&v127[16] = -1082130432;
  *&v127[20] = 0x100000003;
  *&v127[28] = 0;
  v127[30] = 0;
  kaldi::nnet1::GradientNormalizationParams::GradientNormalizationParams(&v120);
  *v127 = rate;
  v127[28] = 1;
  *&v120 = factor;
  if (typeCopy)
  {
    [typeCopy ear_toString];
  }

  else
  {
    v124[1] = 0;
    v124[0] = 0;
    v125 = 0;
  }

  DWORD1(v120) = kaldi::nnet1::Component::MarkerToGradientNormType(v124);
  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124[0]);
  }

  BYTE9(v120) = 0;
  v87 = &unk_1F2D279F8;
  v88[0] = *v127;
  *(v88 + 15) = *&v127[15];
  v63 = v120;
  v64 = DWORD2(v120);
  if (functionCopy)
  {
    [functionCopy ear_toString];
    if (componentsCopy)
    {
LABEL_71:
      [componentsCopy ear_toString];
      goto LABEL_74;
    }
  }

  else
  {
    memset(v86, 0, sizeof(v86));
    if (componentsCopy)
    {
      goto LABEL_71;
    }
  }

  memset(v85, 0, sizeof(v85));
LABEL_74:
  memset(v84, 0, sizeof(v84));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v84, v92, v93, 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3));
  memset(v83, 0, sizeof(v83));
  std::vector<std::vector<std::vector<std::pair<int,float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::pair<int,float>>>*,std::vector<std::vector<std::pair<int,float>>>*>(v83, v89, v90, 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3));
  if (fileCopy)
  {
    [fileCopy ear_toString];
  }

  kaldi::nnet1::DoBackProp(size, &v87, v63, v64, v86, v85);
}

@end