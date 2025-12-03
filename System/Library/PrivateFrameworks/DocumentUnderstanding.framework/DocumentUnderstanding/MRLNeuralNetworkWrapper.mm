@interface MRLNeuralNetworkWrapper
- (BOOL)load:(id)load;
- (id)lstmPredictions:(id)predictions embeddingDimension:(unint64_t)dimension classSize:(unint64_t)size seqLen:(unint64_t)len;
@end

@implementation MRLNeuralNetworkWrapper

- (id)lstmPredictions:(id)predictions embeddingDimension:(unint64_t)dimension classSize:(unint64_t)size seqLen:(unint64_t)len
{
  v69[3] = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v15 = predictionsCopy;
  if (self->model)
  {
    v16 = objc_msgSend_count(predictionsCopy, v11, v12, v13, v14);
    v66[1] = v66;
    v17 = v66 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, 4 * v16);
    if (objc_msgSend_count(v15, v18, v19, v20, v21))
    {
      v25 = 0;
      do
      {
        v26 = objc_msgSend_objectAtIndexedSubscript_(v15, v22, v25, v23, v24);
        objc_msgSend_floatValue(v26, v27, v28, v29, v30);
        *&v17[4 * v25] = v31;

        ++v25;
      }

      while (v25 < objc_msgSend_count(v15, v32, v33, v34, v35));
    }

    v36 = *MEMORY[0x277D2A2A8];
    v69[0] = &unk_284820060;
    v37 = *MEMORY[0x277D2A298];
    v68[0] = v36;
    v68[1] = v37;
    v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v22, dimension, v23, v24);
    v69[1] = v38;
    v68[2] = *MEMORY[0x277D2A2A0];
    v42 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v39, len, v40, v41);
    v69[2] = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v69, v68, 3);

    v45 = MRLNeuralNetworkTensorCreate();
    MRLNeuralNetworkTensorAppendData();
    v67 = 0;
    model = self->model;
    MRLNeuralNetworkSetInputTensor();
    v47 = self->model;
    MRLNeuralNetworkPredict();
    v48 = self->model;
    Output = MRLNeuralNetworkGetOutput();
    CFRelease(v45);
    v50 = v67;
    if (v67)
    {
      NSLog(&cfstr_MontrealInfere.isa, v67);
    }

    if (Output)
    {
      v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = len * size; i; --i)
      {
        v58 = *Output++;
        LODWORD(v56) = v58;
        v59 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v51, v52, v53, v54, v56);
        objc_msgSend_addObject_(v55, v60, v59, v61, v62);
      }

      v63 = self->model;
      MRLNeuralNetworkClear();
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_MontrealModelM.isa);
    v55 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];

  return v55;
}

- (BOOL)load:(id)load
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, load, v3, v4);
  v12 = *MEMORY[0x277D2A280];
  v13[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v13, &v12, 1);
  v9 = MRLNeuralNetworkCreate();
  self->model = v9;
  if (!v9)
  {
    NSLog(&cfstr_MontrealModelF.isa, v6, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

@end