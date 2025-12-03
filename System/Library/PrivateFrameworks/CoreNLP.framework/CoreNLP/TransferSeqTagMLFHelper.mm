@interface TransferSeqTagMLFHelper
- (BOOL)loadModelLayersFromWeights:(id)weights labelSize:(unint64_t)size embeddingDimension:(int64_t)dimension modelLayers:(void *)layers;
- (TransferSeqTagMLFHelper)initWithTraininingParameters:(id)parameters;
- (__CFDictionary)doSeqTagTrainingAndEvalFromData:(void *)data batchedLabels:(void *)labels batchedPaddedLabelDatasets:(void *)datasets labelArray:(void *)array embeddingRef:(void *)ref modeLayerList:(void *)list trainingGraph:(id)graph inferenceGraph:(id)self0 scalarParams:(void *)self1 inputPlaceholders:(void *)self2 targetLabelPlaceholders:(id)self3 targetLabelWeightsPlaceholders:(id)self4 trainingLogger:(id)self5;
- (float)evaluateMontrealModelOnData:(void *)data evalLabels:(void *)labels evalEmbeddingsCache:(void *)cache embeddingRef:(void *)ref montrealModel:(void *)model labelArray:(void *)array trainingLogger:(id)logger dataTypeString:()basic_string<char predictedLabels:()std:(std::allocator<char>> *)self0 :char_traits<char>;
- (float)showF1ResultsMatrix:(void *)matrix labelCounts:()map<int perLabelResults:()int trainingLogger:()std:(std:(int>>> *)std :(void *)a5 allocator<std:(id)a6 :()basic_string<char pair<const)int :()std:(std::allocator<char>> *)a7 :char_traits<char> less<int> dataTypeString:;
- (id)createConvLayerFromData:(unint64_t)data width:(unint64_t)width inputChannels:(unint64_t)channels outputChannels:(unint64_t)outputChannels strideInX:(unint64_t)x strideInY:(unint64_t)y kernelWeight:(id)weight kernelBias:(id)self0;
- (id)createConvLayerWithKernelHeight:(unint64_t)height width:(unint64_t)width inputChannels:(unint64_t)channels outputChannels:(unint64_t)outputChannels strideInX:(unint64_t)x strideInY:(unint64_t)y;
- (id)createDataWithFloatValue:(float)value count:(unint64_t)count;
- (id)createGraphObjectFromLayers:(void *)layers graphObject:(id)object inputPlaceholders:(void *)placeholders;
- (id)createInferenceGraphFromGraphObject:(id)object inputPlaceholders:(void *)placeholders scalarWeights:(void *)weights finalLayerTensor:(id)tensor device:(id)device;
- (id)createLSTM:(unint64_t)m outputSize:(unint64_t)size;
- (id)createLSTMFromWeights:(unint64_t)weights outputSize:(unint64_t)size inputWeights:(id)inputWeights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms;
- (id)createNSDataWithFloatValue:(float)value count:(unint64_t)count;
- (id)createTrainingGraphFromGraphObject:(id)object inputPlaceholders:(void *)placeholders scalarWeights:(void *)weights targetLabels:(id)labels targeLabelWeights:(id)labelWeights device:(id)device;
- (id)findMaxIndexWithData:(id)data batchSize:(unint64_t)size sequenceLength:(unint64_t)length numClasses:(unint64_t)classes;
- (id)getModelLayerWeights:(vector<void *);
- (void)createGraphObjectAndLayersFromInputPlaceholders:(void *)placeholders scalarWeights:(void *)weights labelSize:(unint64_t)size embeddingDimension:(int64_t)dimension graphObject:(id)object graphLayerList:(void *)list;
- (void)dealloc;
- (void)evaluateInferenceGraphWithInputTensorData:(void *)data batchedInputSentences:(void *)sentences batchedLabels:(void *)labels inferenceGraph:(id)graph inputPlaceholders:(void *)placeholders scalarParams:(void *)params labelArray:(void *)array dataTypeString:()basic_string<char trainingLogger:()std:(std::allocator<char>> *)self0 :char_traits<char> predictedLabels:;
- (void)executeInferenceGraph:(id)graph inputsDictionary:(id)dictionary batchSize:(int)size maxLength:(int)length labelSize:(int)labelSize predictedLabels:(void *)labels;
- (void)flattenBatchOfOneHotSequences:(void *)sequences flattenedBatch:(void *)batch;
- (void)getMaxIndicesFromOneHotVectors:(void *)vectors maxIndicesBatch:(void *)batch;
- (void)getNSSequenceFromStdSequence:(void *)sequence nsSentences:(id)sentences nsSeqLengths:(id)lengths maxLength:(int)length;
- (void)labelIdsToString:(void *)string labelArray:(void *)array labelStrings:(void *)strings;
- (void)printLstmWeights:(id)weights;
- (void)removeBatchingFromDataAndLabels:(void *)labels batchedLabels:(void *)batchedLabels inputSentences:(void *)sentences inputLabels:(void *)inputLabels maxLength:(int)length;
- (void)trainAndSaveSeqTagModelFromData:(void *)data batchedLabels:(void *)labels labelArray:(void *)array embeddingRef:(void *)ref trainedModelDict:(__CFDictionary *)dict trainingLogger:(id)logger;
@end

@implementation TransferSeqTagMLFHelper

- (TransferSeqTagMLFHelper)initWithTraininingParameters:(id)parameters
{
  v6.receiver = self;
  v6.super_class = TransferSeqTagMLFHelper;
  v4 = [(TransferSeqTagMLFHelper *)&v6 init];
  if (v4)
  {
    v4->_trainingParameters = [parameters copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransferSeqTagMLFHelper;
  [(TransferSeqTagMLFHelper *)&v3 dealloc];
}

- (id)createDataWithFloatValue:(float)value count:(unint64_t)count
{
  v6 = 4 * count;
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  if (count)
  {
    v8 = 1;
    v9 = v7;
    do
    {
      *v9++ = value;
      v10 = v8++;
    }

    while (v10 < count);
  }

  v11 = [MEMORY[0x1E695DF88] dataWithBytesNoCopy:v7 length:v6 freeWhenDone:1];
  MLCTensorDataClass = getMLCTensorDataClass();
  mutableBytes = [v11 mutableBytes];
  v14 = [v11 length];

  return [MLCTensorDataClass dataWithBytesNoCopy:mutableBytes length:v14];
}

- (id)createNSDataWithFloatValue:(float)value count:(unint64_t)count
{
  v6 = 4 * count;
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  v8 = v7;
  if (count)
  {
    v9 = 1;
    v10 = v7;
    do
    {
      *v10++ = value;
      v11 = v9++;
    }

    while (v11 < count);
  }

  v12 = MEMORY[0x1E695DEF0];

  return [v12 dataWithBytesNoCopy:v8 length:v6 freeWhenDone:1];
}

- (id)createLSTMFromWeights:(unint64_t)weights outputSize:(unint64_t)size inputWeights:(id)inputWeights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms
{
  v30[4] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__159;
  v12 = getMLCLSTMDescriptorClass(void)::softClass;
  v28 = __Block_byref_object_dispose__160;
  v29 = getMLCLSTMDescriptorClass(void)::softClass;
  if (!getMLCLSTMDescriptorClass(void)::softClass)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = ___ZL25getMLCLSTMDescriptorClassv_block_invoke;
    v22 = &unk_1E76248C8;
    v23 = &v24;
    ___ZL25getMLCLSTMDescriptorClassv_block_invoke(&v19);
    v12 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  v13 = [v12 descriptorWithInputSize:weights hiddenSize:size layerCount:1 usesBiases:1 isBidirectional:1 dropout:0.0];
  v14 = [getMLCActivationDescriptorClass() descriptorWithType:3];
  v15 = [getMLCActivationDescriptorClass() descriptorWithType:5];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__159;
  v16 = getMLCLSTMLayerClass(void)::softClass;
  v28 = __Block_byref_object_dispose__160;
  v29 = getMLCLSTMLayerClass(void)::softClass;
  if (!getMLCLSTMLayerClass(void)::softClass)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = ___ZL20getMLCLSTMLayerClassv_block_invoke;
    v22 = &unk_1E76248C8;
    v23 = &v24;
    ___ZL20getMLCLSTMLayerClassv_block_invoke(&v19);
    v16 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  v30[0] = v14;
  v30[1] = v14;
  v30[2] = v15;
  v30[3] = v14;
  result = [v16 layerWithDescriptor:v13 inputWeights:inputWeights hiddenWeights:hiddenWeights peepholeWeights:0 biases:terms gateActivations:objc_msgSend(MEMORY[0x1E695DEC8] outputResultActivation:{"arrayWithObjects:count:", v30, 4), v15}];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)createLSTM:(unint64_t)m outputSize:(unint64_t)size
{
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    [v7 setObject:objc_msgSend(getMLCTensorClass() atIndexedSubscript:{"tensorWithWidth:height:featureChannelCount:batchSize:randomInitializerType:", 1, 1, size * m, 1, 2), i}];
    [v8 setObject:objc_msgSend(getMLCTensorClass() atIndexedSubscript:{"tensorWithWidth:height:featureChannelCount:batchSize:randomInitializerType:", 1, 1, size * size, 1, 2), i}];
    if ((i & 3) == 1)
    {
      *&v11 = 1.0;
    }

    else
    {
      *&v11 = 0.0;
    }

    [v9 setObject:objc_msgSend(getMLCTensorClass() atIndexedSubscript:{"tensorWithWidth:height:featureChannelCount:batchSize:data:", 1, 1, size, 1, -[TransferSeqTagMLFHelper createDataWithFloatValue:count:](self, "createDataWithFloatValue:count:", size, v11)), i}];
  }

  return [(TransferSeqTagMLFHelper *)self createLSTMFromWeights:m outputSize:size inputWeights:v7 hiddenWeights:v8 biasTerms:v9];
}

- (id)createConvLayerFromData:(unint64_t)data width:(unint64_t)width inputChannels:(unint64_t)channels outputChannels:(unint64_t)outputChannels strideInX:(unint64_t)x strideInY:(unint64_t)y kernelWeight:(id)weight kernelBias:(id)self0
{
  v27[2] = *MEMORY[0x1E69E9840];
  v14 = [getMLCTensorDescriptorClass() convolutionWeightsDescriptorWithWidth:width height:data inputFeatureChannelCount:channels outputFeatureChannelCount:outputChannels dataType:1];
  MLCTensorClass = getMLCTensorClass();
  v16 = [MLCTensorClass tensorWithDescriptor:v14 data:{objc_msgSend(getMLCTensorDataClass(), "dataWithBytesNoCopy:length:", objc_msgSend(weight, "mutableBytes"), objc_msgSend(weight, "length"))}];
  v17 = getMLCTensorClass();
  v18 = [v17 tensorWithWidth:1 height:1 featureChannelCount:outputChannels batchSize:1 data:{objc_msgSend(getMLCTensorDataClass(), "dataWithBytesNoCopy:length:", objc_msgSend(bias, "mutableBytes"), objc_msgSend(bias, "length"))}];
  MLCConvolutionDescriptorClass = getMLCConvolutionDescriptorClass();
  v27[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:data];
  v27[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:width];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v26[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:y];
  v26[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:x];
  LODWORD(v23) = 0;
  result = [getMLCConvolutionLayerClass() layerWithWeights:v16 biases:v18 descriptor:{objc_msgSend(MLCConvolutionDescriptorClass, "descriptorWithKernelSizes:inputFeatureChannelCount:outputFeatureChannelCount:groupCount:strides:dilationRates:paddingPolicy:paddingSizes:", v20, channels, outputChannels, 1, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 2), &unk_1F10B4E30, v23, &unk_1F10B4E48)}];
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)createConvLayerWithKernelHeight:(unint64_t)height width:(unint64_t)width inputChannels:(unint64_t)channels outputChannels:(unint64_t)outputChannels strideInX:(unint64_t)x strideInY:(unint64_t)y
{
  v24[2] = *MEMORY[0x1E69E9840];
  v15 = [getMLCTensorDescriptorClass() convolutionWeightsDescriptorWithWidth:width height:height inputFeatureChannelCount:channels outputFeatureChannelCount:outputChannels dataType:1];
  v16 = [getMLCTensorClass() tensorWithDescriptor:v15 randomInitializerType:2];
  v17 = [getMLCTensorClass() tensorWithWidth:1 height:1 featureChannelCount:outputChannels batchSize:1 data:{-[TransferSeqTagMLFHelper createDataWithFloatValue:count:](self, "createDataWithFloatValue:count:", outputChannels, 0.0)}];
  MLCConvolutionDescriptorClass = getMLCConvolutionDescriptorClass();
  v24[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:height];
  v24[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:width];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v23[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:y];
  v23[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:x];
  LODWORD(v22) = 0;
  result = [getMLCConvolutionLayerClass() layerWithWeights:v16 biases:v17 descriptor:{objc_msgSend(MLCConvolutionDescriptorClass, "descriptorWithKernelSizes:inputFeatureChannelCount:outputFeatureChannelCount:groupCount:strides:dilationRates:paddingPolicy:paddingSizes:", v19, channels, outputChannels, 1, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v23, 2), &unk_1F10B4E60, v22, &unk_1F10B4E78)}];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeBatchingFromDataAndLabels:(void *)labels batchedLabels:(void *)batchedLabels inputSentences:(void *)sentences inputLabels:(void *)inputLabels maxLength:(int)length
{
  v7 = *labels;
  v8 = *(labels + 1);
  if (v8 != *labels)
  {
    v12 = 0;
    do
    {
      v13 = *(v7 + 24 * v12);
      if (*(v7 + 24 * v12 + 8) != v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(v13 + v14);
          lengthCopy = -1431655765 * ((*(v13 + v14 + 8) - v16) >> 3);
          if (lengthCopy >= length)
          {
            lengthCopy = length;
          }

          v18 = lengthCopy;
          v19 = 3 * lengthCopy;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v24, v16, v16 + 24 * lengthCopy, lengthCopy);
          std::vector<std::vector<std::string>>::push_back[abi:ne200100](sentences, &v24);
          v27 = &v24;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
          v20 = *(*(*batchedLabels + 24 * v12) + v14);
          v25 = 0;
          v26 = 0;
          v24 = 0;
          std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<int>*>,std::__wrap_iter<std::vector<int>*>>(&v24, v20, 8 * v19 + v20, v18);
          std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](inputLabels, &v24);
          v27 = &v24;
          std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v27);
          ++v15;
          v7 = *labels;
          v21 = (*labels + 24 * v12);
          v13 = *v21;
          v14 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3) > v15);
        v8 = *(labels + 1);
      }

      ++v12;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) > v12);
  }
}

- (void)getNSSequenceFromStdSequence:(void *)sequence nsSentences:(id)sentences nsSeqLengths:(id)lengths maxLength:(int)length
{
  sentencesCopy = sentences;
  if (*(sequence + 1) != *sequence)
  {
    v8 = 0;
    lengthCopy = length;
    do
    {
      array = [MEMORY[0x1E695DF70] array];
      v11 = *(*sequence + 24 * v8);
      if (*(*sequence + 24 * v8 + 8) != v11)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          if (*(v11 + v12 + 23) < 0)
          {
            v14 = *(v11 + v12);
          }

          [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:")}];
          ++v13;
          v11 = *(*sequence + 24 * v8);
          v12 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(*sequence + 24 * v8 + 8) - v11) >> 3) > v13);
      }

      [sentencesCopy addObject:array];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(*sequence + 24 * v8 + 8) - *(*sequence + 24 * v8)) >> 3);
      if (v15 <= lengthCopy)
      {
        lengthCopy2 = v15;
      }

      else
      {
        lengthCopy2 = length;
      }

      [lengths addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", lengthCopy2)}];
      ++v8;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(sequence + 1) - *sequence) >> 3) > v8);
  }
}

- (void)flattenBatchOfOneHotSequences:(void *)sequences flattenedBatch:(void *)batch
{
  *(batch + 1) = *batch;
  v5 = *sequences;
  v4 = *(sequences + 1);
  if (v4 != *sequences)
  {
    v8 = 0;
    v9 = (*(*v5 + 8) - **v5) >> 2;
    do
    {
      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          v16 = 0;
          v11 = 0uLL;
          *__p = 0u;
          v12 = *(*sequences + 24 * v8);
          if (*(*sequences + 24 * v8 + 8) != v12)
          {
            v13 = 0;
            v14 = 0;
            do
            {
              std::vector<int>::push_back[abi:ne200100](__p, (*(v12 + v13) + 4 * v10));
              ++v14;
              v12 = *(*sequences + 24 * v8);
              v13 += 24;
            }

            while (0xAAAAAAAAAAAAAAABLL * ((*(*sequences + 24 * v8 + 8) - v12) >> 3) > v14);
            v11 = *__p;
          }

          std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(batch, *(batch + 1), v11, *(&v11 + 1), (*(&v11 + 1) - v11) >> 2);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          ++v10;
        }

        while (v10 != (v9 & 0x7FFFFFFF));
        v5 = *sequences;
        v4 = *(sequences + 1);
      }

      ++v8;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) > v8);
  }
}

- (id)findMaxIndexWithData:(id)data batchSize:(unint64_t)size sequenceLength:(unint64_t)length numClasses:(unint64_t)classes
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 8 * size * length;
  v27 = malloc_type_malloc(v26, 0x100004000313F17uLL);
  bytes = [data bytes];
  sizeCopy = size;
  if (size)
  {
    v11 = bytes;
    v12 = 0;
    v13 = 8 * length;
    v14 = 4 * length;
    do
    {
      if (length)
      {
        bzero(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
        memset_pattern16(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_19D27F010, 4 * length);
      }

      if (classes)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          v17 = v16;
          v18 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
          v19 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
          for (i = length; i; --i)
          {
            if (*v17 > *v18)
            {
              *v18 = *v17;
              *v19 = v15;
            }

            ++v19;
            ++v18;
            ++v17;
          }

          ++v15;
          v16 = (v16 + v14);
        }

        while (v15 != classes);
      }

      if (length)
      {
        memcpy(&v27[v13 * v12], &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
      }

      ++v12;
      v11 += 4 * classes * length;
    }

    while (v12 != sizeCopy);
  }

  v21 = MEMORY[0x1E695DEF0];
  v22 = *MEMORY[0x1E69E9840];
  v24 = v26;
  v23 = v27;

  return [v21 dataWithBytesNoCopy:v23 length:v24 freeWhenDone:1];
}

- (void)getMaxIndicesFromOneHotVectors:(void *)vectors maxIndicesBatch:(void *)batch
{
  v4 = *vectors;
  if (*(vectors + 1) != *vectors)
  {
    v7 = 0;
    do
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v9 = (v4 + 24 * v7);
      v8 = *v9;
      if (v9[1] != *v9)
      {
        v10 = 0;
        do
        {
          __p = 0;
          v21 = 0;
          v22 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v8 + 24 * v10), *(v8 + 24 * v10 + 8), (*(v8 + 24 * v10 + 8) - *(v8 + 24 * v10)) >> 2);
          v11 = __p + 4;
          v12 = __p == v21 || v11 == v21;
          v13 = __p;
          if (!v12)
          {
            v14 = *__p;
            v13 = __p;
            v15 = __p + 4;
            do
            {
              v17 = *v15;
              v15 += 4;
              v16 = v17;
              v18 = v14 < v17;
              if (v14 <= v17)
              {
                v14 = v16;
              }

              if (v18)
              {
                v13 = v11;
              }

              v11 = v15;
            }

            while (v15 != v21);
          }

          v19 = (v13 - __p) >> 2;
          std::vector<int>::push_back[abi:ne200100](&v23, &v19);
          if (__p)
          {
            v21 = __p;
            operator delete(__p);
          }

          ++v10;
          v8 = *(*vectors + 24 * v7);
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(*vectors + 24 * v7 + 8) - v8) >> 3) > v10);
      }

      std::vector<std::vector<int>>::push_back[abi:ne200100](batch, &v23);
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      ++v7;
      v4 = *vectors;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(vectors + 1) - *vectors) >> 3) > v7);
  }
}

- (void)printLstmWeights:(id)weights
{
  v36[3] = *MEMORY[0x1E69E9840];
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [(TransferSeqTagMLFHelper *)v4 printLstmWeights:v5, v6, v7, v8, v9, v10, v11];
  }

  if ([objc_msgSend(weights "inputWeights")])
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E9C10];
    do
    {
      v36[0] = [objc_msgSend(objc_msgSend(weights "inputWeights")];
      v36[1] = [objc_msgSend(objc_msgSend(weights "hiddenWeights")];
      v36[2] = [objc_msgSend(objc_msgSend(weights "biases")];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(TransferSeqTagMLFHelper *)&v28 printLstmWeights:v29];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(TransferSeqTagMLFHelper *)buf printLstmWeights:v12, v35];
      }

      if ([v14 count])
      {
        v15 = 0;
        do
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [(TransferSeqTagMLFHelper *)v32 printLstmWeights:v15, &v33];
          }

          v16 = [v14 objectAtIndexedSubscript:v15];
          if ([v16 length] >= 4)
          {
            v17 = 0;
            do
            {
              bytes = [v16 bytes];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                [(TransferSeqTagMLFHelper *)bytes printLstmWeights:v17, v30, &v31];
              }

              ++v17;
            }

            while (v17 < [v16 length] >> 2);
          }

          ++v15;
        }

        while ([v14 count] > v15);
      }

      ++v12;
    }

    while (v12 < [objc_msgSend(weights "inputWeights")]);
  }

  v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    [(TransferSeqTagMLFHelper *)v19 printLstmWeights:v20, v21, v22, v23, v24, v25, v26];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)getModelLayerWeights:(vector<void *)
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = *a3->var0;
  v5 = *(a3->var0 + 1);
  data = [MEMORY[0x1E695DF88] data];
  data2 = [MEMORY[0x1E695DF88] data];
  data3 = [MEMORY[0x1E695DF88] data];
  data4 = [MEMORY[0x1E695DF88] data];
  data5 = [MEMORY[0x1E695DF88] data];
  data6 = [MEMORY[0x1E695DF88] data];
  for (i = 0; i != 4; ++i)
  {
    [data appendData:{objc_msgSend(objc_msgSend(objc_msgSend(v6, "biases"), "objectAtIndexedSubscript:", i), "data")}];
    [data2 appendData:{objc_msgSend(objc_msgSend(objc_msgSend(v6, "inputWeights"), "objectAtIndexedSubscript:", i), "data")}];
    [data3 appendData:{objc_msgSend(objc_msgSend(objc_msgSend(v6, "hiddenWeights"), "objectAtIndexedSubscript:", i), "data")}];
    [data4 appendData:{objc_msgSend(objc_msgSend(objc_msgSend(v6, "biases"), "objectAtIndexedSubscript:", i + 4), "data")}];
    [data5 appendData:{objc_msgSend(objc_msgSend(objc_msgSend(v6, "inputWeights"), "objectAtIndexedSubscript:", i + 4), "data")}];
    [data6 appendData:{objc_msgSend(objc_msgSend(objc_msgSend(v6, "hiddenWeights"), "objectAtIndexedSubscript:", i + 4), "data")}];
  }

  v14 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 "biases")] >> 1;
  memset(v17, 0, sizeof(v17));
  bzero(__src, 0x2C0uLL);
  __src[0] = 6;
  __src[15] |= 0x80uLL;
  LODWORD(__src[16]) = v14;
  LODWORD(__src[32]) = v14 / 2;
  __src[56] = [data2 bytes];
  __src[57] = [data3 bytes];
  __src[72] = [data bytes];
  __src[58] = [data5 bytes];
  __src[59] = [data6 bytes];
  __src[74] = [data4 bytes];
  std::string::basic_string[abi:ne200100]<0>(&v18, "lstm");
  memcpy(v20, __src, sizeof(v20));
  std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::push_back[abi:ne200100](v17, &v18);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  bzero(__src, 0x2C0uLL);
  __src[0] = 0;
  __src[7] = 4;
  LODWORD(__src[16]) = v14;
  LODWORD(__src[32]) = [objc_msgSend(objc_msgSend(v5 "biases")] >> 2;
  __src[56] = [objc_msgSend(objc_msgSend(v5 "weights")];
  __src[72] = [objc_msgSend(objc_msgSend(v5 "biases")];
  std::string::basic_string[abi:ne200100]<0>(&v18, "softmax");
  memcpy(v20, __src, sizeof(v20));
  std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::push_back[abi:ne200100](v17, &v18);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  operator new();
}

- (BOOL)loadModelLayersFromWeights:(id)weights labelSize:(unint64_t)size embeddingDimension:(int64_t)dimension modelLayers:(void *)layers
{
  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v8 = 0;
  v9 = 0;
  v10 = dimension + (dimension >> 31);
  v11 = dimension / 2;
  dimensionCopy = dimension;
  v12 = dimension / 2 * dimension;
  v13 = (v11 * v11);
  v14 = v10 >> 1;
  do
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 3;
    v17 = v8;
    do
    {
      [array addObject:{objc_msgSend(weights, "objectAtIndexedSubscript:", v17++)}];
      --v16;
    }

    while (v16);
    MLCTensorClass = getMLCTensorClass();
    [v33 setObject:objc_msgSend(MLCTensorClass atIndexedSubscript:{"tensorWithWidth:height:featureChannelCount:batchSize:data:", 1, 1, v12, 1, objc_msgSend(getMLCTensorDataClass(), "dataWithBytesNoCopy:length:", objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 0), "mutableBytes"), objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 0), "length"))), v9}];
    v19 = getMLCTensorClass();
    [v32 setObject:objc_msgSend(v19 atIndexedSubscript:{"tensorWithWidth:height:featureChannelCount:batchSize:data:", 1, 1, v13, 1, objc_msgSend(getMLCTensorDataClass(), "dataWithBytesNoCopy:length:", objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 1), "mutableBytes"), objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 1), "length"))), v9}];
    v20 = getMLCTensorClass();
    [v31 setObject:objc_msgSend(v20 atIndexedSubscript:{"tensorWithWidth:height:featureChannelCount:batchSize:data:", 1, 1, v14, 1, objc_msgSend(getMLCTensorDataClass(), "dataWithBytesNoCopy:length:", objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 2), "mutableBytes"), objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", 2), "length"))), v9++}];
    v8 += 3;
  }

  while (v9 != 8);
  v21 = [(TransferSeqTagMLFHelper *)self createLSTMFromWeights:dimensionCopy outputSize:v14 inputWeights:v33 hiddenWeights:v32 biasTerms:v31];
  descriptor = [v21 descriptor];
  v23 = descriptor != 0;
  if (descriptor)
  {
    v34 = v21;
    std::vector<void *>::push_back[abi:ne200100](layers, &v34);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObject:{objc_msgSend(weights, "objectAtIndexedSubscript:", 24)}];
  [array2 addObject:{objc_msgSend(weights, "objectAtIndexedSubscript:", 25)}];
  v25 = -[TransferSeqTagMLFHelper createFullyConnectedLayerFromData:outputSize:weightData:biasData:](self, "createFullyConnectedLayerFromData:outputSize:weightData:biasData:", 2 * v14, size, [array2 objectAtIndexedSubscript:0], objc_msgSend(array2, "objectAtIndexedSubscript:", 1));
  if (![v25 descriptor])
  {
    return 0;
  }

  v34 = v25;
  std::vector<void *>::push_back[abi:ne200100](layers, &v34);
  return v23;
}

- (id)createGraphObjectFromLayers:(void *)layers graphObject:(id)object inputPlaceholders:(void *)placeholders
{
  __p = 0;
  v28 = 0;
  v29 = 0;
  v5 = 3;
  do
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3052000000;
    v38 = __Block_byref_object_copy__159;
    v39 = __Block_byref_object_dispose__160;
    v6 = getMLCArithmeticLayerClass(void)::softClass;
    v40 = getMLCArithmeticLayerClass(void)::softClass;
    if (!getMLCArithmeticLayerClass(void)::softClass)
    {
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = ___ZL26getMLCArithmeticLayerClassv_block_invoke;
      v33 = &unk_1E76248C8;
      v34 = &v35;
      ___ZL26getMLCArithmeticLayerClassv_block_invoke(&v30);
      v6 = v36[5];
    }

    _Block_object_dispose(&v35, 8);
    v7 = [v6 layerWithOperation:2];
    v8 = v28;
    if (v28 >= v29)
    {
      v10 = (v28 - __p) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v11 = (v29 - __p) >> 2;
      if (v11 <= v10 + 1)
      {
        v11 = v10 + 1;
      }

      if (v29 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(&__p, v12);
      }

      v13 = (8 * v10);
      *v13 = v7;
      v9 = 8 * v10 + 8;
      v14 = v13 - (v28 - __p);
      memcpy(v14, __p, v28 - __p);
      v15 = __p;
      __p = v14;
      v28 = v9;
      v29 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v28 = v7;
      v9 = (v8 + 8);
    }

    v28 = v9;
    --v5;
  }

  while (v5);
  v16 = **placeholders;
  v17 = **layers;
  v18 = time(0);
  srand(v18);
  v19 = rand();
  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy__159;
  v20 = getMLCDropoutLayerClass(void)::softClass;
  v39 = __Block_byref_object_dispose__160;
  v40 = getMLCDropoutLayerClass(void)::softClass;
  if (!getMLCDropoutLayerClass(void)::softClass)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = ___ZL23getMLCDropoutLayerClassv_block_invoke;
    v33 = &unk_1E76248C8;
    v34 = &v35;
    ___ZL23getMLCDropoutLayerClassv_block_invoke(&v30);
    v20 = v36[5];
  }

  _Block_object_dispose(&v35, 8);
  LODWORD(v21) = 1045220557;
  v22 = [object nodeWithLayer:*(*layers + 8) source:{objc_msgSend(object, "nodeWithLayer:source:", objc_msgSend(v20, "layerWithRate:seed:", v19, v21), objc_msgSend(object, "nodeWithLayer:source:", v17, v16))}];
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v22;
}

- (void)createGraphObjectAndLayersFromInputPlaceholders:(void *)placeholders scalarWeights:(void *)weights labelSize:(unint64_t)size embeddingDimension:(int64_t)dimension graphObject:(id)object graphLayerList:(void *)list
{
  dimensionCopy = dimension;
  v14 = *weights;
  if (*(weights + 1) != *weights)
  {
    v16 = 0;
    do
    {
      v19 = *(v14 + 8 * v16);
      std::vector<void *>::push_back[abi:ne200100](list, &v19);
      ++v16;
      v14 = *weights;
    }

    while (v16 < (*(weights + 1) - *weights) >> 3);
  }

  v17 = dimensionCopy + (dimensionCopy >> 31);
  v18 = v17 & 0xFFFFFFFE;
  v19 = [(TransferSeqTagMLFHelper *)self createLSTM:dimensionCopy outputSize:v17 >> 1];
  std::vector<void *>::push_back[abi:ne200100](list, &v19);
  v19 = [(TransferSeqTagMLFHelper *)self createFullyConnectedLayer:v18 outputSize:size];
  std::vector<void *>::push_back[abi:ne200100](list, &v19);
  v19 = [(TransferSeqTagMLFHelper *)self createGraphObjectFromLayers:list graphObject:object inputPlaceholders:placeholders];
  std::vector<void *>::push_back[abi:ne200100](list, &v19);
}

- (id)createTrainingGraphFromGraphObject:(id)object inputPlaceholders:(void *)placeholders scalarWeights:(void *)weights targetLabels:(id)labels targeLabelWeights:(id)labelWeights device:(id)device
{
  v57[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__159;
  v12 = getMLCLossDescriptorClass(void)::softClass;
  v51 = __Block_byref_object_dispose__160;
  v52 = getMLCLossDescriptorClass(void)::softClass;
  if (!getMLCLossDescriptorClass(void)::softClass)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL25getMLCLossDescriptorClassv_block_invoke;
    v45 = &unk_1E76248C8;
    v46 = &v47;
    ___ZL25getMLCLossDescriptorClassv_block_invoke(&v42);
    v12 = v48[5];
  }

  deviceCopy = device;
  _Block_object_dispose(&v47, 8);
  v13 = [v12 descriptorWithType:2 reductionType:2];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__159;
  v14 = getMLCLossLayerClass(void)::softClass;
  v51 = __Block_byref_object_dispose__160;
  v52 = getMLCLossLayerClass(void)::softClass;
  if (!getMLCLossLayerClass(void)::softClass)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL20getMLCLossLayerClassv_block_invoke;
    v45 = &unk_1E76248C8;
    v46 = &v47;
    ___ZL20getMLCLossLayerClassv_block_invoke(&v42);
    v14 = v48[5];
  }

  _Block_object_dispose(&v47, 8);
  v15 = [v14 layerWithDescriptor:v13];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__159;
  v16 = getMLCOptimizerDescriptorClass(void)::softClass;
  v51 = __Block_byref_object_dispose__160;
  v52 = getMLCOptimizerDescriptorClass(void)::softClass;
  if (!getMLCOptimizerDescriptorClass(void)::softClass)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL30getMLCOptimizerDescriptorClassv_block_invoke;
    v45 = &unk_1E76248C8;
    v46 = &v47;
    ___ZL30getMLCOptimizerDescriptorClassv_block_invoke(&v42);
    v16 = v48[5];
  }

  _Block_object_dispose(&v47, 8);
  LODWORD(v17) = 970045207;
  LODWORD(v18) = 1.0;
  LODWORD(v19) = 1.0;
  v20 = [v16 descriptorWithLearningRate:0 gradientRescale:v17 regularizationType:v18 regularizationScale:v19];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__159;
  v21 = getMLCAdamOptimizerClass(void)::softClass;
  v51 = __Block_byref_object_dispose__160;
  v52 = getMLCAdamOptimizerClass(void)::softClass;
  if (!getMLCAdamOptimizerClass(void)::softClass)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL24getMLCAdamOptimizerClassv_block_invoke;
    v45 = &unk_1E76248C8;
    v46 = &v47;
    ___ZL24getMLCAdamOptimizerClassv_block_invoke(&v42);
    v21 = v48[5];
  }

  _Block_object_dispose(&v47, 8);
  LODWORD(v22) = 1063675494;
  LODWORD(v23) = 1065336439;
  LODWORD(v24) = 841731191;
  v25 = [v21 optimizerWithDescriptor:v20 beta1:1 beta2:v22 epsilon:v23 timeStep:v24];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__159;
  v26 = getMLCTrainingGraphClass(void)::softClass;
  v51 = __Block_byref_object_dispose__160;
  v52 = getMLCTrainingGraphClass(void)::softClass;
  if (!getMLCTrainingGraphClass(void)::softClass)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL24getMLCTrainingGraphClassv_block_invoke;
    v45 = &unk_1E76248C8;
    v46 = &v47;
    ___ZL24getMLCTrainingGraphClassv_block_invoke(&v42);
    v26 = v48[5];
  }

  _Block_object_dispose(&v47, 8);
  v57[0] = object;
  v41 = [v26 graphWithGraphObjects:objc_msgSend(MEMORY[0x1E695DEC8] lossLayer:"arrayWithObjects:count:" optimizer:{v57, 1), v15, v25}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v28 = *placeholders;
  if (*(placeholders + 1) != *placeholders)
  {
    v29 = 0;
    do
    {
      [dictionary setObject:*(v28 + 8 * v29) forKey:{objc_msgSend(*(v28 + 8 * v29), "label", deviceCopy)}];
      ++v29;
      v28 = *placeholders;
    }

    while (v29 < (*(placeholders + 1) - *placeholders) >> 3);
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{3, deviceCopy}];
  v31 = *weights;
  if (*(weights + 1) != *weights)
  {
    v32 = 0;
    do
    {
      [dictionary setObject:*(v31 + 8 * v32) forKey:{objc_msgSend(*(v31 + 8 * v32), "label")}];
      v47 = 0;
      v48 = &v47;
      v49 = 0x3052000000;
      v50 = __Block_byref_object_copy__159;
      v33 = getMLCTensorParameterClass(void)::softClass;
      v51 = __Block_byref_object_dispose__160;
      v52 = getMLCTensorParameterClass(void)::softClass;
      if (!getMLCTensorParameterClass(void)::softClass)
      {
        v42 = MEMORY[0x1E69E9820];
        v43 = 3221225472;
        v44 = ___ZL26getMLCTensorParameterClassv_block_invoke;
        v45 = &unk_1E76248C8;
        v46 = &v47;
        ___ZL26getMLCTensorParameterClassv_block_invoke(&v42);
        v33 = v48[5];
      }

      _Block_object_dispose(&v47, 8);
      [v30 addObject:{objc_msgSend(v33, "parameterWithTensor:optimizerData:", *(*weights + 8 * v32++), 0)}];
      v31 = *weights;
    }

    while (v32 < (*(weights + 1) - *weights) >> 3);
  }

  label = [labels label];
  labelsCopy = labels;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&labelsCopy forKeys:&label count:1];
  label2 = [labelWeights label];
  labelWeightsCopy = labelWeights;
  [v41 addInputs:dictionary lossLabels:v34 lossLabelWeights:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &labelWeightsCopy, &label2, 1)}];
  if (*(weights + 1) != *weights)
  {
    [v41 setTrainingTensorParameters:v30];
  }

  [v41 compileWithOptions:0 device:v38];
  v35 = *MEMORY[0x1E69E9840];
  return v41;
}

- (id)createInferenceGraphFromGraphObject:(id)object inputPlaceholders:(void *)placeholders scalarWeights:(void *)weights finalLayerTensor:(id)tensor device:(id)device
{
  v35[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__159;
  v12 = getMLCSoftmaxLayerClass(void)::softClass;
  v33 = __Block_byref_object_dispose__160;
  v34 = getMLCSoftmaxLayerClass(void)::softClass;
  if (!getMLCSoftmaxLayerClass(void)::softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZL23getMLCSoftmaxLayerClassv_block_invoke;
    v27 = &unk_1E76248C8;
    v28 = &v29;
    ___ZL23getMLCSoftmaxLayerClassv_block_invoke(&v24);
    v12 = v30[5];
  }

  _Block_object_dispose(&v29, 8);
  v13 = [v12 layerWithOperation:0];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__159;
  v14 = getMLCInferenceGraphClass(void)::softClass;
  v33 = __Block_byref_object_dispose__160;
  v34 = getMLCInferenceGraphClass(void)::softClass;
  if (!getMLCInferenceGraphClass(void)::softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZL25getMLCInferenceGraphClassv_block_invoke;
    v27 = &unk_1E76248C8;
    v28 = &v29;
    ___ZL25getMLCInferenceGraphClassv_block_invoke(&v24);
    v14 = v30[5];
  }

  _Block_object_dispose(&v29, 8);
  v35[0] = object;
  v15 = [v14 graphWithGraphObjects:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 1)}];
  if (![v15 nodeWithLayer:v13 source:tensor])
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating inference graph"];
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"Infrastructure Error" reason:v16 userInfo:{0), "raise"}];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = *placeholders;
  if (*(placeholders + 1) != *placeholders)
  {
    v19 = 0;
    do
    {
      [dictionary setObject:*(v18 + 8 * v19) forKey:{objc_msgSend(*(v18 + 8 * v19), "label")}];
      ++v19;
      v18 = *placeholders;
    }

    while (v19 < (*(placeholders + 1) - *placeholders) >> 3);
  }

  v20 = *weights;
  if (*(weights + 1) != *weights)
  {
    v21 = 0;
    do
    {
      [dictionary setObject:*(v20 + 8 * v21) forKey:{objc_msgSend(*(v20 + 8 * v21), "label")}];
      ++v21;
      v20 = *weights;
    }

    while (v21 < (*(weights + 1) - *weights) >> 3);
  }

  [v15 addInputs:dictionary];
  [v15 compileWithOptions:0 device:device];
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)trainAndSaveSeqTagModelFromData:(void *)data batchedLabels:(void *)labels labelArray:(void *)array embeddingRef:(void *)ref trainedModelDict:(__CFDictionary *)dict trainingLogger:(id)logger
{
  v118[4] = *MEMORY[0x1E69E9840];
  v13 = *array;
  v12 = *(array + 1);
  v104 = 0;
  __p = 0;
  v102 = 0;
  v103 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v90 = 0;
  v91 = 0;
  Dimension = NLStringEmbeddingGetDimension(ref, a2);
  v15 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:@"maxLength"];
  if (v15)
  {
    intValue = [v15 intValue];
  }

  else
  {
    intValue = 50;
  }

  v16 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:@"batchSize"];
  if (v16)
  {
    intValue2 = [v16 intValue];
  }

  else
  {
    intValue2 = 32;
  }

  v17 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:kNLModelTrainerModelDeviceTypeKey];
  if (v17)
  {
    intValue3 = [v17 intValue];
  }

  else
  {
    intValue3 = 2;
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x3052000000;
  v114 = __Block_byref_object_copy__159;
  v19 = getMLCDeviceClass(void)::softClass;
  v115 = __Block_byref_object_dispose__160;
  v116 = getMLCDeviceClass(void)::softClass;
  if (!getMLCDeviceClass(void)::softClass)
  {
    v106 = MEMORY[0x1E69E9820];
    v107 = 3221225472;
    v108 = ___ZL17getMLCDeviceClassv_block_invoke;
    v109 = &unk_1E76248C8;
    v110 = &v111;
    ___ZL17getMLCDeviceClassv_block_invoke(&v106);
    v19 = v112[5];
  }

  _Block_object_dispose(&v111, 8);
  if (intValue3 <= 3)
  {
    v20 = intValue3;
  }

  else
  {
    v20 = 2;
  }

  v78 = [v19 deviceWithType:v20];
  v79 = v12;
  selfCopy = self;
  dictCopy = dict;
  arrayCopy = array;
  memset(v89, 0, sizeof(v89));
  v21 = 0xAAAAAAAAAAAAAAABLL * ((*(array + 1) - *array) >> 3);
  LODWORD(v111) = 0;
  std::vector<int>::vector[abi:ne200100](v88, v21);
  v22 = *labels;
  if (*(labels + 1) != *labels)
  {
    v23 = 0;
    do
    {
      v111 = 0;
      v112 = 0;
      v113 = 0;
      if (*(v22 + 24 * v23 + 8) != *(v22 + 24 * v23))
      {
        v24 = 0;
        do
        {
          v106 = 0;
          v107 = 0;
          v108 = 0;
          v26 = (*(v22 + 24 * v23) + 24 * v24);
          v25 = *v26;
          if (v26[1] != *v26)
          {
            v27 = 0;
            v28 = 0;
            do
            {
              memset(v87, 0, sizeof(v87));
              std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v87, *(v25 + v27), *(v25 + v27 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v25 + v27 + 8) - *(v25 + v27)) >> 3));
              std::vector<std::vector<int>>::resize(v87, intValue, v88);
              std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](&v106, v87);
              theArray = v87;
              std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&theArray);
              ++v28;
              v25 = *(*(*labels + 24 * v23) + 24 * v24);
              v27 += 24;
            }

            while (0xAAAAAAAAAAAAAAABLL * ((*(*(*labels + 24 * v23) + 24 * v24 + 8) - v25) >> 3) > v28);
          }

          std::vector<std::vector<std::vector<std::vector<int>>>>::push_back[abi:ne200100](&v111, &v106);
          v87[0] = &v106;
          std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](v87);
          ++v24;
          v22 = *labels;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(*labels + 24 * v23 + 8) - *(*labels + 24 * v23)) >> 3) > v24);
      }

      std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::push_back[abi:ne200100](v89, &v111);
      v106 = &v111;
      std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](&v106);
      ++v23;
      v22 = *labels;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(labels + 1) - *labels) >> 3) > v23);
  }

  v87[0] = 0;
  std::vector<void *>::push_back[abi:ne200100](&v95, v87);
  v29 = intValue;
  v30 = *v89[0];
  v31 = -1431655765 * ((*(**data + 8) - ***data) >> 3);
  v80 = 0xAAAAAAAAAAAAAAABLL * ((v79 - v13) >> 3);
  [TransferSeqTagMLFHelper getInputEmbeddingsAndTargetTensorsForSequenceData:selfCopy seqLabels:"getInputEmbeddingsAndTargetTensorsForSequenceData:seqLabels:batchSize:maxLength:numClasses:embeddingRef:inputTensorDataItems:targetTensorData:targetWeightTensorData:" batchSize:&v95 maxLength:&v91 numClasses:&v90 embeddingRef:? inputTensorDataItems:? targetTensorData:? targetWeightTensorData:?];
  array = [MEMORY[0x1E695DF70] array];
  if (intValue2 >= 1)
  {
    v33 = intValue2;
    do
    {
      [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", intValue)}];
      --v33;
    }

    while (v33);
  }

  if (v96 != v95)
  {
    v34 = 0;
    do
    {
      MLCTensorDescriptorClass = getMLCTensorDescriptorClass();
      v118[0] = [MEMORY[0x1E696AD98] numberWithInt:intValue2];
      v118[1] = [MEMORY[0x1E696AD98] numberWithLong:Dimension];
      v118[2] = &unk_1F10B4E18;
      v118[3] = [MEMORY[0x1E696AD98] numberWithInt:v29];
      v36 = [MLCTensorDescriptorClass descriptorWithShape:objc_msgSend(MEMORY[0x1E695DEC8] sequenceLengths:"arrayWithObjects:count:" sortedSequences:v118 dataType:{4), array, 1, 1}];
      v37 = [getMLCTensorClass() tensorWithDescriptor:v36 data:*(v95 + v34)];
      v38 = v102;
      if (v102 >= v103)
      {
        v40 = (v102 - __p) >> 3;
        if ((v40 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v41 = (v103 - __p) >> 2;
        if (v41 <= v40 + 1)
        {
          v41 = v40 + 1;
        }

        if (v103 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(&__p, v42);
        }

        v43 = (8 * v40);
        *v43 = v37;
        v39 = 8 * v40 + 8;
        v44 = v43 - (v102 - __p);
        memcpy(v44, __p, v102 - __p);
        v45 = __p;
        __p = v44;
        v102 = v39;
        v103 = 0;
        if (v45)
        {
          operator delete(v45);
        }

        v29 = intValue;
      }

      else
      {
        *v102 = v37;
        v39 = (v38 + 8);
      }

      v102 = v39;
      ++v34;
    }

    while (v34 < (v96 - v95) >> 3);
  }

  v46 = getMLCTensorDescriptorClass();
  v117[0] = [MEMORY[0x1E696AD98] numberWithInt:intValue2];
  v117[1] = [MEMORY[0x1E696AD98] numberWithInt:v80];
  v117[2] = &unk_1F10B4E18;
  v117[3] = [MEMORY[0x1E696AD98] numberWithInt:v29];
  v47 = [v46 descriptorWithShape:objc_msgSend(MEMORY[0x1E695DEC8] sequenceLengths:"arrayWithObjects:count:" sortedSequences:v117 dataType:{4), array, 1, 1}];
  v48 = [getMLCTensorClass() tensorWithDescriptor:v47 data:v91];
  v49 = [getMLCTensorClass() tensorWithDescriptor:v47 data:v90];
  v111 = 0;
  v112 = &v111;
  v113 = 0x3052000000;
  v114 = __Block_byref_object_copy__159;
  v115 = __Block_byref_object_dispose__160;
  v116 = getMLCGraphClass(void)::softClass;
  if (!getMLCGraphClass(void)::softClass)
  {
    v106 = MEMORY[0x1E69E9820];
    v107 = 3221225472;
    v108 = ___ZL16getMLCGraphClassv_block_invoke;
    v109 = &unk_1E76248C8;
    v110 = &v111;
    ___ZL16getMLCGraphClassv_block_invoke(&v106);
    v50 = v112[5];
  }

  _Block_object_dispose(&v111, 8);
  v51 = objc_opt_new();
  [(TransferSeqTagMLFHelper *)selfCopy createGraphObjectAndLayersFromInputPlaceholders:&__p scalarWeights:&v98 labelSize:v80 embeddingDimension:Dimension graphObject:v51 graphLayerList:&v92];
  v52 = *(v93 - 1);
  v53 = v78;
  v54 = [(TransferSeqTagMLFHelper *)selfCopy createTrainingGraphFromGraphObject:v51 inputPlaceholders:&__p scalarWeights:&v98 targetLabels:v48 targeLabelWeights:v49 device:v78];
  if (!v54)
  {
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported Hardware: Training graph creation failed."];
    (*(logger + 2))(logger, v55, &v104);
    v53 = v78;
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"Infrastructure Error" reason:v55 userInfo:{0), "raise"}];
  }

  v56 = [(TransferSeqTagMLFHelper *)selfCopy createInferenceGraphFromGraphObject:v51 inputPlaceholders:&__p scalarWeights:&v98 finalLayerTensor:v52 device:v53];
  if (!v56)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported Hardware: Inference graph creation failed."];
    (*(logger + 2))(logger, v57, &v104);
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"Infrastructure Error" reason:v57 userInfo:{0), "raise"}];
  }

  (*(logger + 2))(logger, [MEMORY[0x1E696AEC0] stringWithFormat:@"Training graph initialization complete."], &v104);
  v111 = 0;
  v111 = [(TransferSeqTagMLFHelper *)selfCopy doSeqTagTrainingAndEvalFromData:data batchedLabels:labels batchedPaddedLabelDatasets:v89 labelArray:arrayCopy embeddingRef:ref modeLayerList:&v92 trainingGraph:v54 inferenceGraph:v56 scalarParams:&v98 inputPlaceholders:&__p targetLabelPlaceholders:v48 targetLabelWeightsPlaceholders:v49 trainingLogger:logger];
  if (v111)
  {
    (*(logger + 2))(logger, [MEMORY[0x1E696AEC0] stringWithFormat:@"Saving Trained Model Weights"], &v104);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v106 = Mutable;
    v59 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    theArray = v59;
    v60 = *arrayCopy;
    if (arrayCopy[1] != *arrayCopy)
    {
      v61 = 0;
      v62 = 0;
      do
      {
        v63 = (v60 + v61);
        if (*(v60 + v61 + 23) < 0)
        {
          v63 = *v63;
        }

        v64 = CFStringCreateWithCString(0, v63, 0x8000100u);
        v59 = theArray;
        CFArrayAppendValue(theArray, v64);
        CFRelease(v64);
        ++v62;
        v60 = *arrayCopy;
        v61 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((arrayCopy[1] - *arrayCopy) >> 3) > v62);
      Mutable = v106;
    }

    CFDictionaryAddValue(Mutable, kNLModelSampleDataLabelTypesArrayKey, v59);
    v65 = [(NSDictionary *)selfCopy->_trainingParameters objectForKeyedSubscript:kNLModelTrainerEmbeddingArchitectureKey];
    v66 = [(NSDictionary *)selfCopy->_trainingParameters objectForKeyedSubscript:kNLModelTrainerLanguageKey];
    CFDictionaryAddValue(Mutable, kNLModelTrainerEmbeddingArchitectureKey, v65);
    CFDictionaryAddValue(Mutable, kNLModelTrainerLanguageKey, v66);
    if ([(NSDictionary *)selfCopy->_trainingParameters objectForKeyedSubscript:kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey])
    {
      CFDictionaryAddValue(Mutable, kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey, [(NSDictionary *)selfCopy->_trainingParameters objectForKeyedSubscript:kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey]);
    }

    v67 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(v67, kNLModelTrainerModelMetadataKey, Mutable);
    v68 = v111;
    if (CFDictionaryContainsKey(v111, kNLModelTrainerModelDataArrayKey))
    {
      v69 = kNLModelTrainerModelDataArrayKey;
      Value = CFDictionaryGetValue(v68, kNLModelTrainerModelDataArrayKey);
      CFDictionaryAddValue(v67, v69, Value);
    }

    if (CFDictionaryContainsKey(v68, kNLModelPredictedTrainingLabelsKey))
    {
      v71 = kNLModelPredictedTrainingLabelsKey;
      v72 = CFDictionaryGetValue(v68, kNLModelPredictedTrainingLabelsKey);
      CFDictionaryAddValue(v67, v71, v72);
    }

    if (CFDictionaryContainsKey(v68, kNLModelPredictedValidationLabelsKey))
    {
      v73 = kNLModelPredictedValidationLabelsKey;
      v74 = CFDictionaryGetValue(v68, kNLModelPredictedValidationLabelsKey);
      CFDictionaryAddValue(v67, v73, v74);
    }

    *dictCopy = v67;
    if (v59)
    {
      CFRelease(v59);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v68)
    {
      CFRelease(v68);
    }
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }

  v111 = v89;
  std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__destroy_vector::operator()[abi:ne200100](&v111);
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (__CFDictionary)doSeqTagTrainingAndEvalFromData:(void *)data batchedLabels:(void *)labels batchedPaddedLabelDatasets:(void *)datasets labelArray:(void *)array embeddingRef:(void *)ref modeLayerList:(void *)list trainingGraph:(id)graph inferenceGraph:(id)self0 scalarParams:(void *)self1 inputPlaceholders:(void *)self2 targetLabelPlaceholders:(id)self3 targetLabelWeightsPlaceholders:(id)self4 trainingLogger:(id)self5
{
  v166 = *MEMORY[0x1E69E9840];
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  arrayCopy = array;
  v21 = *array;
  v20 = *(array + 1);
  refCopy = ref;
  Dimension = NLStringEmbeddingGetDimension(ref, v22);
  v159 = 0;
  v24 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:kNLModelTrainerMaxIterationNumberKey];
  if (v24)
  {
    unsignedIntValue = [v24 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 20;
  }

  v102 = unsignedIntValue;
  v26 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:@"maxLength"];
  selfCopy = self;
  if (v26)
  {
    intValue = [v26 intValue];
  }

  else
  {
    intValue = 50;
  }

  v28 = *data + 24;
  v29 = **data;
  v31 = *v29;
  v30 = v29[1];
  v156 = 0;
  v157 = 0;
  v158 = 0;
  memset(v155, 0, sizeof(v155));
  v107 = intValue;
  [(TransferSeqTagMLFHelper *)selfCopy removeBatchingFromDataAndLabels:v28 batchedLabels:*labels + 24 inputSentences:&v156 inputLabels:v155 maxLength:?];
  memset(v154, 0, sizeof(v154));
  [(TransferSeqTagMLFHelper *)selfCopy getMaxIndicesFromOneHotVectors:v155 maxIndicesBatch:v154];
  v152 = 0;
  v151 = 0;
  v153 = 0;
  v149 = 0;
  __src = 0;
  v150 = 0;
  v146 = 0;
  v145 = 0;
  v147 = 0;
  v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v32)
  {
    [TransferSeqTagMLFHelper doSeqTagTrainingAndEvalFromData:v32 batchedLabels:v33 batchedPaddedLabelDatasets:v34 labelArray:v35 embeddingRef:v36 modeLayerList:v37 trainingGraph:v38 inferenceGraph:v39 scalarParams:? inputPlaceholders:? targetLabelPlaceholders:? targetLabelWeightsPlaceholders:? trainingLogger:?];
  }

  v110 = v31;
  v112 = v30;
  v40 = v156;
  if (v157 != v156)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + v41 + 8) - *(v40 + v41)) >> 3);
      LODWORD(__p) = 0;
      std::vector<float>::vector[abi:ne200100](&v141, v43 * Dimension);
      LODWORD(v133) = 0;
      std::vector<float>::vector[abi:ne200100](&__p, Dimension);
      v133 = 0;
      v134 = 0;
      v135 = 0;
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v133, (v156 + v41));
      v44 = applesauce::CF::details::make_CFArrayRef<std::vector<std::string>>(&v133);
      v130 = v44;
      NLStringEmbeddingFillWordVectorsWithShape(refCopy, v44, 1, v43, v141, 0, __p, 2);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v145, &v141);
      if (v44)
      {
        CFRelease(v44);
      }

      v130 = &v133;
      std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v130);
      if (__p)
      {
        p_p = __p;
        operator delete(__p);
      }

      if (v141)
      {
        v142 = v141;
        operator delete(v141);
      }

      ++v42;
      v40 = v156;
      v41 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v157 - v156) >> 3) > v42);
  }

  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  __p = 0;
  p_p = &__p;
  v139 = 0x2020000000;
  v140 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v46 = *params;
  if (*(params + 1) != *params)
  {
    v47 = 0;
    do
    {
      v48 = [MEMORY[0x1E695DF88] dataWithData:{objc_msgSend(*(v46 + 8 * v47), "data")}];
      [dictionary setObject:objc_msgSend(getMLCTensorDataClass() forKey:{"dataWithBytesNoCopy:length:", objc_msgSend(v48, "mutableBytes"), objc_msgSend(v48, "length")), objc_msgSend(*(*params + 8 * v47++), "label")}];
      v46 = *params;
    }

    while (v47 < (*(params + 1) - *params) >> 3);
  }

  (*(logger + 2))(logger, [MEMORY[0x1E696AEC0] stringWithFormat:@"Beginning training"], &v159);
  if (v102)
  {
    v100 = 0;
    v49 = 0;
    v106 = -1431655765 * ((v20 - v21) >> 3);
    v50 = (v112 - v110) >> 3;
    v105 = 0xAAAAAAAAAAAAAAABLL * v50;
    v111 = -1431655765 * v50;
    v51 = NAN;
    v52 = selfCopy;
    do
    {
      v133 = 0;
      v134 = &v133;
      v135 = 0x2020000000;
      v136 = 0;
      v53 = dispatch_semaphore_create(0);
      v54 = *data;
      if (*(*data + 8) != **data)
      {
        v55 = 0;
        do
        {
          v130 = 0;
          v131 = 0;
          v132 = 0;
          v116[0] = 0;
          v160 = 0;
          v57 = *placeholders;
          v56 = *(placeholders + 1);
          if (v49)
          {
            if (v56 != *placeholders)
            {
              v58 = 0;
              do
              {
                *buf = *(*(v151 + 24 * v55) + 8 * v58);
                std::vector<void *>::push_back[abi:ne200100](&v130, buf);
                ++v58;
              }

              while (v58 < (*(placeholders + 1) - *placeholders) >> 3);
            }

            v59 = __src + 16 * v55;
            v116[0] = *v59;
            v160 = *(v59 + 1);
          }

          else
          {
            if (v56 != *placeholders)
            {
              v60 = 0;
              do
              {
                *buf = 0;
                std::vector<void *>::push_back[abi:ne200100](&v130, buf);
                ++v60;
              }

              while (v60 < (*(placeholders + 1) - *placeholders) >> 3);
              v54 = *data;
            }

            [(TransferSeqTagMLFHelper *)v52 getInputEmbeddingsAndTargetTensorsForSequenceData:&(*v54)[3 * v55] seqLabels:**datasets + 24 * v55 batchSize:v105 maxLength:v107 numClasses:v106 embeddingRef:refCopy inputTensorDataItems:&v130 targetTensorData:v116 targetWeightTensorData:&v160];
            memset(buf, 0, sizeof(buf));
            if (*(placeholders + 1) != *placeholders)
            {
              v61 = 0;
              v62 = 0;
              do
              {
                std::vector<void *>::push_back[abi:ne200100](buf, v130 + v61);
                ++v62;
                v61 += 8;
              }

              while (v62 < (*(placeholders + 1) - *placeholders) >> 3);
            }

            std::vector<std::vector<MLCTensorData *>>::push_back[abi:ne200100](&v151, buf);
            v63 = v160;
            v64 = v149;
            if (v149 >= v150)
            {
              v66 = (v149 - __src) >> 4;
              v67 = v66 + 1;
              if ((v66 + 1) >> 60)
              {
                std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
              }

              v68 = v150 - __src;
              if ((v150 - __src) >> 3 > v67)
              {
                v67 = v68 >> 3;
              }

              if (v68 >= 0x7FFFFFFFFFFFFFF0)
              {
                v69 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v67;
              }

              if (v69)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<MLCTensorData *,MLCTensorData *>>>(&__src, v69);
              }

              v70 = 16 * v66;
              *v70 = v116[0];
              *(v70 + 8) = v63;
              v65 = 16 * v66 + 16;
              v71 = (16 * v66 - (v149 - __src));
              memcpy(v71, __src, v149 - __src);
              v72 = __src;
              __src = v71;
              v149 = v65;
              v150 = 0;
              if (v72)
              {
                operator delete(v72);
              }
            }

            else
            {
              *v149 = v116[0];
              v64[1] = v63;
              v65 = (v64 + 2);
            }

            v149 = v65;
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          v73 = objc_autoreleasePoolPush();
          v74 = *placeholders;
          if (*(placeholders + 1) != *placeholders)
          {
            v75 = 0;
            do
            {
              [dictionary setObject:*(v130 + v75) forKey:{objc_msgSend(*(v74 + 8 * v75), "label")}];
              ++v75;
              v74 = *placeholders;
            }

            while (v75 < (*(placeholders + 1) - *placeholders) >> 3);
          }

          v52 = selfCopy;
          label = [labelPlaceholders label];
          v164 = v116[0];
          v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&label count:1];
          label2 = [weightsPlaceholders label];
          v162 = v160;
          v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&label2 count:1];
          v128[0] = MEMORY[0x1E69E9820];
          v128[1] = 3221225472;
          v128[2] = __268__TransferSeqTagMLFHelper_doSeqTagTrainingAndEvalFromData_batchedLabels_batchedPaddedLabelDatasets_labelArray_embeddingRef_modeLayerList_trainingGraph_inferenceGraph_scalarParams_inputPlaceholders_targetLabelPlaceholders_targetLabelWeightsPlaceholders_trainingLogger___block_invoke;
          v128[3] = &unk_1E7625520;
          v128[6] = &__p;
          v128[7] = &v133;
          v128[8] = v55;
          v128[9] = data;
          v129 = 0;
          v128[4] = v53;
          v128[5] = &v141;
          [graph executeWithInputsData:dictionary lossLabelsData:v76 lossLabelWeightsData:v77 batchSize:v111 options:0 completionHandler:v128];
          v131 = v130;
          objc_autoreleasePoolPop(v73);
          if (v130)
          {
            v131 = v130;
            operator delete(v130);
          }

          ++v55;
          v54 = *data;
        }

        while (v55 < 0xAAAAAAAAAAAAAAABLL * ((*(*data + 8) - **data) >> 3));
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [TransferSeqTagMLFHelper doSeqTagTrainingAndEvalFromData:v127 batchedLabels:? batchedPaddedLabelDatasets:? labelArray:? embeddingRef:? modeLayerList:? trainingGraph:? inferenceGraph:? scalarParams:? inputPlaceholders:? targetLabelPlaceholders:? targetLabelWeightsPlaceholders:? trainingLogger:?];
        v52 = selfCopy;
      }

      dispatch_semaphore_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [TransferSeqTagMLFHelper doSeqTagTrainingAndEvalFromData:v125 batchedLabels:? batchedPaddedLabelDatasets:? labelArray:? embeddingRef:? modeLayerList:? trainingGraph:? inferenceGraph:? scalarParams:? inputPlaceholders:? targetLabelPlaceholders:? targetLabelWeightsPlaceholders:? trainingLogger:?];
        v52 = selfCopy;
      }

      [graph synchronizeUpdates];
      dispatch_release(v53);
      v78 = *(v134 + 6);
      v80 = **data;
      v79 = *(*data + 8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [TransferSeqTagMLFHelper doSeqTagTrainingAndEvalFromData:v123 batchedLabels:? batchedPaddedLabelDatasets:? labelArray:? embeddingRef:? modeLayerList:? trainingGraph:? inferenceGraph:? scalarParams:? inputPlaceholders:? targetLabelPlaceholders:? targetLabelWeightsPlaceholders:? trainingLogger:?];
        v52 = selfCopy;
      }

      (*(logger + 2))(logger, [MEMORY[0x1E696AEC0] stringWithFormat:@"Completed epoch number = [%d] Total Training Loss = %f", (v49 + 1), (v78 / (0xAAAAAAAAAAAAAAABLL * ((v79 - v80) >> 3)))], &v159);
      v119 = 0;
      v120 = 0;
      v121 = 0;
      std::vector<void *>::__init_with_size[abi:ne200100]<void **,void **>(&v119, *list, *(list + 1), (*(list + 1) - *list) >> 3);
      v81 = [(TransferSeqTagMLFHelper *)v52 getModelLayerWeights:&v119];
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      v130 = 0;
      v131 = 0;
      v132 = 0;
      if (v49 == v102 - 1)
      {
        memset(buf, 0, sizeof(buf));
        v82 = *data;
        v83 = *datasets;
        std::string::basic_string[abi:ne200100]<0>(v117, "Training");
        [(TransferSeqTagMLFHelper *)v52 evaluateInferenceGraphWithInputTensorData:&v151 batchedInputSentences:v82 batchedLabels:v83 inferenceGraph:inferenceGraph inputPlaceholders:placeholders scalarParams:params labelArray:arrayCopy dataTypeString:v117 trainingLogger:logger predictedLabels:buf];
        if (v118 < 0)
        {
          operator delete(v117[0]);
        }

        memset(v116, 0, sizeof(v116));
        [(TransferSeqTagMLFHelper *)v52 labelIdsToString:buf labelArray:arrayCopy labelStrings:v116];
        v84 = applesauce::CF::details::make_CFArrayRef<std::vector<std::string>>(v116);
        v160 = v84;
        CFDictionaryAddValue(theDict, kNLModelPredictedTrainingLabelsKey, v84);
        if (v84)
        {
          CFRelease(v84);
        }

        v160 = v116;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v160);
        v116[0] = buf;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v116);
      }

      CoreNLP::MontrealModel::MontrealModel(v116, [v81 objectAtIndexedSubscript:0]);
      std::string::basic_string[abi:ne200100]<0>(v114, "Validation");
      [(TransferSeqTagMLFHelper *)v52 evaluateMontrealModelOnData:&v156 evalLabels:v154 evalEmbeddingsCache:&v145 embeddingRef:refCopy montrealModel:v116 labelArray:arrayCopy trainingLogger:logger dataTypeString:v114 predictedLabels:&v130];
      v86 = v85;
      if (v115 < 0)
      {
        operator delete(v114[0]);
      }

      if (v86 > v51)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v86;
          _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "\nValidation f-1 improved from %f to %f", buf, 0x16u);
        }

        memset(buf, 0, sizeof(buf));
        [(TransferSeqTagMLFHelper *)v52 labelIdsToString:&v130 labelArray:arrayCopy labelStrings:buf];
        v87 = applesauce::CF::details::make_CFArrayRef<std::vector<std::string>>(buf);
        v160 = v87;
        if (CFDictionaryContainsKey(theDict, kNLModelPredictedValidationLabelsKey))
        {
          CFDictionaryReplaceValue(theDict, kNLModelPredictedValidationLabelsKey, v87);
        }

        else
        {
          CFDictionaryAddValue(theDict, kNLModelPredictedValidationLabelsKey, v87);
        }

        if (v87)
        {
          CFRelease(v87);
        }

        v160 = buf;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v160);
        v51 = v86;
        v100 = v81;
      }

      else
      {
        v81 = v100;
      }

      CoreNLP::MontrealModel::~MontrealModel(v116);
      *buf = &v130;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](buf);
      _Block_object_dispose(&v133, 8);
      ++v49;
    }

    while (v49 != v102);
  }

  else
  {
    v81 = 0;
  }

  CFDictionaryAddValue(theDict, kNLModelTrainerModelDataArrayKey, v81);
  v88 = v152;
  v89 = v151;
  if (v152 != v151)
  {
    v90 = v152;
    do
    {
      v92 = *(v90 - 24);
      v90 -= 24;
      v91 = v92;
      if (v92)
      {
        *(v88 - 16) = v91;
        operator delete(v91);
      }

      v88 = v90;
    }

    while (v90 != v89);
  }

  v152 = v89;
  v149 = __src;
  v93 = v146;
  v94 = v145;
  if (v146 != v145)
  {
    v95 = v146;
    do
    {
      v97 = *(v95 - 24);
      v95 -= 24;
      v96 = v97;
      if (v97)
      {
        *(v93 - 16) = v96;
        operator delete(v96);
      }

      v93 = v95;
    }

    while (v95 != v94);
  }

  v146 = v94;
  (*(logger + 2))(logger, [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished Training"], &v159);
  _Block_object_dispose(&__p, 8);
  _Block_object_dispose(&v141, 8);
  v141 = &v145;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v141);
  if (__src)
  {
    v149 = __src;
    operator delete(__src);
  }

  v141 = &v151;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v141);
  v141 = v154;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v141);
  v141 = v155;
  std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v141);
  v141 = &v156;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v141);
  v98 = *MEMORY[0x1E69E9840];
  return theDict;
}

void __268__TransferSeqTagMLFHelper_doSeqTagTrainingAndEvalFromData_batchedLabels_batchedPaddedLabelDatasets_labelArray_embeddingRef_modeLayerList_trainingGraph_inferenceGraph_scalarParams_inputPlaceholders_targetLabelPlaceholders_targetLabelWeightsPlaceholders_trainingLogger___block_invoke(uint64_t a1, void *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v4 = [objc_msgSend(a2 "data")];
  v5 = v4;
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = *v4 + *(*(*(a1 + 56) + 8) + 24);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __268__TransferSeqTagMLFHelper_doSeqTagTrainingAndEvalFromData_batchedLabels_batchedPaddedLabelDatasets_labelArray_embeddingRef_modeLayerList_trainingGraph_inferenceGraph_scalarParams_inputPlaceholders_targetLabelPlaceholders_targetLabelWeightsPlaceholders_trainingLogger___block_invoke_cold_1(a1, v5);
  }

  if (*(a1 + 64) == 0xAAAAAAAAAAAAAAABLL * ((*(**(a1 + 72) + 24 * *(a1 + 80) + 8) - *(**(a1 + 72) + 24 * *(a1 + 80))) >> 3) - 1)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (void)labelIdsToString:(void *)string labelArray:(void *)array labelStrings:(void *)strings
{
  v5 = *string;
  if (*(string + 1) != *string)
  {
    v9 = 0;
    do
    {
      memset(v13, 0, sizeof(v13));
      v11 = (v5 + 24 * v9);
      v10 = *v11;
      if (v11[1] != *v11)
      {
        v12 = 0;
        do
        {
          std::vector<std::string>::push_back[abi:ne200100](v13, (*array + 24 * *(v10 + 4 * v12++)));
          v10 = *(*string + 24 * v9);
        }

        while (v12 < (*(*string + 24 * v9 + 8) - v10) >> 2);
      }

      std::vector<std::vector<std::string>>::push_back[abi:ne200100](strings, v13);
      v14 = v13;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
      ++v9;
      v5 = *string;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(string + 1) - *string) >> 3) > v9);
  }
}

- (float)showF1ResultsMatrix:(void *)matrix labelCounts:()map<int perLabelResults:()int trainingLogger:()std:(std:(int>>> *)std :(void *)a5 allocator<std:(id)a6 :()basic_string<char pair<const)int :()std:(std::allocator<char>> *)a7 :char_traits<char> less<int> dataTypeString:
{
  v10 = -1431655765 * ((*(matrix + 1) - *matrix) >> 3);
  p_i = 0;
  std::vector<std::pair<float,float>>::vector[abi:ne200100](__p, v10);
  v35 = 0;
  (*(a6 + 2))(a6, [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\t Count \t\tLabel \t\t Prec \t\t Rec \t\t F-1"], &v35);
  v34 = 0;
  if (v10 < 1)
  {
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = 0;
      v15 = 0;
      for (i = 0; i < v10; ++i)
      {
        p_i = &v34;
        v16 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a5, &v34);
        p_i = &i;
        v17 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v16 + 5), &i) + 8);
        p_i = &i;
        v18 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a5, &i);
        p_i = &v34;
        v15 += v17;
        v14 += *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v18 + 5), &v34) + 8);
      }

      v19 = 0.0;
      v20 = 0.0;
      if (v15)
      {
        p_i = &v34;
        v21 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a5, &v34);
        p_i = &v34;
        v20 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v21 + 5), &v34) + 8) / v15;
      }

      if (v14)
      {
        p_i = &v34;
        v22 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a5, &v34);
        p_i = &v34;
        v19 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v22 + 5), &v34) + 8) / v14;
      }

      v23 = (__p[0] + 8 * v34);
      *v23 = v20;
      v23[1] = v19;
      v24 = MEMORY[0x1E696AEC0];
      p_i = &v34;
      v25 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(std, &v34);
      v26 = *matrix + 24 * v34;
      if (*(v26 + 23) < 0)
      {
        v26 = *v26;
      }

      v27 = (v20 + v19) * 0.5;
      (*(a6 + 2))(a6, [v24 stringWithFormat:@"\t\t %d \t\t%s \t\t %4.2f \t\t %4.2f \t\t %4.2f", *(v25 + 8), v26, v20, v19, v27], &v35);
      v13 = v13 + v27;
      v12 = v12 + v20;
      v11 = v11 + v19;
      ++v34;
    }

    while (v34 < v10);
  }

  v28 = v13 / v10;
  var0 = a7;
  if (*(&a7->var0.var1 + 23) < 0)
  {
    var0 = a7->var0.var1.var0;
  }

  (*(a6 + 2))(a6, [MEMORY[0x1E696AEC0] stringWithFormat:@"Macro-average Precision = %4.2f Recall = %4.2f %s F-1 Score = %4.2f", (v12 / v10), (v11 / v10), var0, v28], &v35);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v28;
}

- (float)evaluateMontrealModelOnData:(void *)data evalLabels:(void *)labels evalEmbeddingsCache:(void *)cache embeddingRef:(void *)ref montrealModel:(void *)model labelArray:(void *)array trainingLogger:(id)logger dataTypeString:()basic_string<char predictedLabels:()std:(std::allocator<char>> *)self0 :char_traits<char>
{
  v84 = *MEMORY[0x1E69E9840];
  v80[0] = 0;
  v80[1] = 0;
  v78[1] = 0;
  v79 = v80;
  v77 = v78;
  v78[0] = 0;
  LODWORD(v81) = 0;
  if (*(array + 1) != *array)
  {
    do
    {
      *buf = &v81;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, &v81) + 8) = 0;
      v76 = 0;
      if (*(array + 1) == *array)
      {
        break;
      }

      do
      {
        *buf = &v81;
        v13 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(&v79, &v81);
        *buf = &v76;
        *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v13 + 5), &v76) + 8) = 0;
        v14 = ++v76;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((*(array + 1) - *array) >> 3);
      }

      while (v15 > v14);
      v16 = v81 + 1;
      LODWORD(v81) = v81 + 1;
    }

    while (v15 > v16);
  }

  v75 = 0;
  loggerCopy2 = logger;
  (*(logger + 2))(logger, [MEMORY[0x1E696AEC0] stringWithFormat:@"Begin Validation...", labels, cache, ref], &v75);
  if (*(data + 1) != *data)
  {
    selfCopy = self;
    v18 = 0;
    v19 = 0.0;
    v20 = 0.0;
    modelCopy2 = model;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      memset(buf, 0, sizeof(buf));
      v23 = 0xAAAAAAAAAAAAAAABLL * ((*(*data + 24 * v18 + 8) - *(*data + 24 * v18)) >> 3);
      CoreNLP::MontrealModel::setInput(modelCopy2, 1, v23, *(*cache + 24 * v18), 0);
      CoreNLP::MontrealModel::predict(modelCopy2);
      context = v22;
      v24 = CoreNLP::MontrealModel::output(modelCopy2, 0);
      v25 = CoreNLP::MontrealModel::outputSize(modelCopy2);
      if (v23 >= 1)
      {
        v26 = 0;
        v27 = 4 * v25;
        v28 = v25 >> 1;
        do
        {
          v29 = v24;
          if (v28)
          {
            v30 = v24 + 1;
            v31 = *v24;
            v32 = v27 - 4;
            v29 = v24;
            v33 = v24 + 1;
            do
            {
              v34 = *v33++;
              v35 = v34;
              if (v31 < v34)
              {
                v31 = v35;
                v29 = v30;
              }

              v30 = v33;
              v32 -= 4;
            }

            while (v32);
          }

          LODWORD(v81) = (v29 - v24) >> 2;
          std::vector<int>::push_back[abi:ne200100](buf, &v81);
          v24 = (v24 + v27);
          ++v26;
        }

        while (v26 != v23);
      }

      std::vector<std::vector<int>>::push_back[abi:ne200100](v85, buf);
      v36 = (*(*data + 24 * v18 + 8) - *(*data + 24 * v18)) >> 3;
      v37 = 0xAAAAAAAAAAAAAAABLL * v36;
      if (*(*data + 24 * v18 + 8) == *(*data + 24 * v18))
      {
        v46 = 0.0;
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v68 = 0xAAAAAAAAAAAAAAABLL * v36;
        if (v37 <= 1)
        {
          v37 = 1;
        }

        v40 = 1;
        do
        {
          v76 = *(*(*labels + 24 * v18) + 4 * v38);
          v41 = *(*buf + 4 * v38);
          v81 = &v76;
          v42 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, &v76);
          ++*(v42 + 8);
          v43 = v76 == v41;
          if (v76 == v41)
          {
            ++v39;
          }

          v74 = v76;
          v81 = &v74;
          v44 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(&v79, &v74);
          v73 = v41;
          v81 = &v73;
          v45 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v44 + 5), &v73);
          v40 &= v43;
          ++*(v45 + 8);
          ++v38;
        }

        while (v37 != v38);
        v46 = v39;
        v37 = v68;
        if (!v40)
        {
          goto LABEL_26;
        }
      }

      v20 = v20 + 1.0;
LABEL_26:
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      objc_autoreleasePoolPop(context);
      modelCopy2 = model;
      v19 = v19 + (v46 / v37);
      ++v18;
      v47 = 0xAAAAAAAAAAAAAAABLL * ((*(data + 1) - *data) >> 3);
      if (v47 <= v18)
      {
        loggerCopy2 = logger;
        self = selfCopy;
        goto LABEL_31;
      }
    }
  }

  v47 = 0;
  v20 = 0.0;
  v19 = 0.0;
LABEL_31:
  stdCopy = std;
  var0 = std;
  if (*(&std->var0.var1 + 23) < 0)
  {
    var0 = std->var0.var1.var0;
  }

  loggerCopy2[2](loggerCopy2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s data prediction completed.\n", var0], &v75);
  std::map<int,int>::map[abi:ne200100](v72, &v77);
  if (*(&std->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, std->var0.var1.var0, std->var0.var1.var1);
  }

  else
  {
    v71 = *std;
  }

  [(TransferSeqTagMLFHelper *)self showF1ResultsMatrix:array labelCounts:v72 perLabelResults:&v79 trainingLogger:loggerCopy2 dataTypeString:&v71];
  v51 = v50;
  v52 = v19 / v47;
  v53 = v20 / v47;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v72, v72[1]);
  v54 = v52;
  loggerCopy2[2](loggerCopy2, [MEMORY[0x1E696AEC0] stringWithFormat:@"Average Tag Accuracy = %4.2f, Average Instance Accuracy = %4.2f \n", *&v54, v53], &v75);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    if (*(&std->var0.var1 + 23) < 0)
    {
      stdCopy = std->var0.var1.var0;
    }

    *buf = 134218498;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *&buf[14] = stdCopy;
    *&buf[22] = 2048;
    v83 = v51;
    _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Montreal Average Tag Accuracy = %4.2f, %s F-1 score = %4.2f \n", buf, 0x20u);
  }

  v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v55)
  {
    [TransferSeqTagMLFHelper evaluateMontrealModelOnData:v55 evalLabels:v56 evalEmbeddingsCache:v57 embeddingRef:v58 montrealModel:v59 labelArray:v60 trainingLogger:v61 dataTypeString:v62 predictedLabels:?];
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v77, v78[0]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(&v79, v80[0]);
  v63 = *MEMORY[0x1E69E9840];
  return v51;
}

- (void)evaluateInferenceGraphWithInputTensorData:(void *)data batchedInputSentences:(void *)sentences batchedLabels:(void *)labels inferenceGraph:(id)graph inputPlaceholders:(void *)placeholders scalarParams:(void *)params labelArray:(void *)array dataTypeString:()basic_string<char trainingLogger:()std:(std::allocator<char>> *)self0 :char_traits<char> predictedLabels:
{
  v94 = *MEMORY[0x1E69E9840];
  v12 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:@"maxLength"];
  if (v12)
  {
    intValue = [v12 intValue];
  }

  else
  {
    intValue = 30;
  }

  v13 = [(NSDictionary *)self->_trainingParameters objectForKeyedSubscript:@"batchSize"];
  selfCopy = self;
  if (v13)
  {
    intValue2 = [v13 intValue];
  }

  else
  {
    intValue2 = 32;
  }

  v88[0] = 0;
  v88[1] = 0;
  v86[1] = 0;
  v87 = v88;
  v85 = v86;
  v86[0] = 0;
  LODWORD(v83[0]) = 0;
  if (*(array + 1) != *array)
  {
    do
    {
      *buf = v83;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v85, v83) + 8) = 0;
      LODWORD(__p) = 0;
      if (*(array + 1) == *array)
      {
        break;
      }

      do
      {
        *buf = v83;
        v14 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(&v87, v83);
        *buf = &__p;
        *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v14 + 5), &__p) + 8) = 0;
        v15 = __p + 1;
        LODWORD(__p) = __p + 1;
        v16 = 0xAAAAAAAAAAAAAAABLL * ((*(array + 1) - *array) >> 3);
      }

      while (v16 > v15);
      v17 = SLODWORD(v83[0]) + 1;
      ++LODWORD(v83[0]);
    }

    while (v16 > v17);
  }

  v84 = 0;
  (*(v95 + 16))(v95, [MEMORY[0x1E696AEC0] stringWithFormat:@"Begin Validation..."], &v84);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = *params;
  if (*(params + 1) != *params)
  {
    v19 = 0;
    do
    {
      [dictionary setObject:objc_msgSend(*(v18 + 8 * v19) forKey:{"data"), objc_msgSend(*(*params + 8 * v19), "label")}];
      ++v19;
      v18 = *params;
    }

    while (v19 < (*(params + 1) - *params) >> 3);
  }

  if (*(data + 1) != *data)
  {
    v20 = 0;
    v21 = intValue2;
    v22 = 0.0;
    v23 = 0.0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [TransferSeqTagMLFHelper evaluateInferenceGraphWithInputTensorData:v92 batchedInputSentences:v20 batchedLabels:&v93 inferenceGraph:? inputPlaceholders:? scalarParams:? labelArray:? dataTypeString:? trainingLogger:? predictedLabels:?];
      }

      memset(buf, 0, sizeof(buf));
      memset(v83, 0, sizeof(v83));
      v24 = *placeholders;
      if (*(placeholders + 1) != *placeholders)
      {
        v25 = 0;
        do
        {
          [dictionary setObject:*(*(*data + 24 * v20) + 8 * v25) forKey:{objc_msgSend(*(v24 + 8 * v25), "label")}];
          ++v25;
          v24 = *placeholders;
        }

        while (v25 < (*(placeholders + 1) - *placeholders) >> 3);
      }

      [(TransferSeqTagMLFHelper *)selfCopy executeInferenceGraph:graph inputsDictionary:dictionary batchSize:intValue2 maxLength:intValue labelSize:-1431655765 * ((*(array + 1) - *array) >> 3) predictedLabels:buf];
      [(TransferSeqTagMLFHelper *)selfCopy getMaxIndicesFromOneHotVectors:*labels + 24 * v20 maxIndicesBatch:v83];
      if (intValue2)
      {
        break;
      }

      v27 = 0.0;
LABEL_40:
      __p = v83;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v83[0] = buf;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v83);
      objc_autoreleasePoolPop(context);
      v23 = v23 / v21;
      v22 = v22 + (v27 / v21);
      if (0xAAAAAAAAAAAAAAABLL * ((*(data + 1) - *data) >> 3) <= ++v20)
      {
        goto LABEL_43;
      }
    }

    v26 = 0;
    v27 = 0.0;
    v71 = v20;
    while (1)
    {
      v28 = 3 * v26;
      if (0xAAAAAAAAAAAAAAABLL * ((*(*(*sentences + 24 * v20) + 24 * v26 + 8) - *(*(*sentences + 24 * v20) + 24 * v26)) >> 3) >= intValue)
      {
        v29 = intValue;
      }

      else
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * ((*(*(*sentences + 24 * v20) + 24 * v26 + 8) - *(*(*sentences + 24 * v20) + 24 * v26)) >> 3);
      }

      v30 = *(*buf + 24 * v26);
      v81 = 0;
      v82 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&__p, v30, v30 + 4 * v29, v29);
      std::vector<std::vector<int>>::push_back[abi:ne200100](v96, &__p);
      if (__p)
      {
        v81 = __p;
        operator delete(__p);
      }

      if (v29)
      {
        v76 = v26;
        v31 = 0;
        v32 = 0;
        LOBYTE(v33) = 1;
        do
        {
          v34 = *(v83[0][v28] + v31);
          v35 = *(*(*buf + 8 * v28) + 4 * v31);
          if (v34 == v35)
          {
            ++v32;
          }

          LODWORD(__p) = *(v83[0][v28] + v31);
          p_p = &__p;
          v36 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(&v87, &__p);
          v79 = v35;
          p_p = &v79;
          v37 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v36 + 5), &v79);
          ++*(v37 + 8);
          LODWORD(__p) = v34;
          p_p = &__p;
          v38 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v85, &__p);
          v33 = (v34 == v35) & v33;
          ++*(v38 + 8);
          ++v31;
        }

        while (v29 != v31);
        v27 = v27 + (v32 / v29);
        v20 = v71;
        v26 = v76;
        if (!v33)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v27 = v27 + (0.0 / 0);
      }

      v23 = v23 + 1.0;
LABEL_37:
      if (++v26 == intValue2)
      {
        goto LABEL_40;
      }
    }
  }

  v23 = 0.0;
  v22 = 0.0;
LABEL_43:
  v40 = *labels;
  v39 = *(labels + 1);
  v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v41)
  {
    [TransferSeqTagMLFHelper evaluateInferenceGraphWithInputTensorData:v41 batchedInputSentences:v42 batchedLabels:v43 inferenceGraph:v44 inputPlaceholders:v45 scalarParams:v46 labelArray:v47 dataTypeString:v48 trainingLogger:? predictedLabels:?];
  }

  stdCopy = std;
  var0 = std;
  if (*(&std->var0.var1 + 23) < 0)
  {
    var0 = std->var0.var1.var0;
  }

  (*(v95 + 16))(v95, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s data prediction completed.\n", var0], &v84);
  std::map<int,int>::map[abi:ne200100](v78, &v85);
  if (*(&std->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, std->var0.var1.var0, std->var0.var1.var1);
  }

  else
  {
    v77 = *std;
  }

  [(TransferSeqTagMLFHelper *)selfCopy showF1ResultsMatrix:array labelCounts:v78 perLabelResults:&v87 trainingLogger:v95 dataTypeString:&v77];
  v52 = v51;
  v53 = (0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 3));
  v54 = v22 / v53;
  v55 = v23 / v53;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v78, v78[1]);
  (*(v95 + 16))(v95, [MEMORY[0x1E696AEC0] stringWithFormat:@"Average Tag Accuracy = %4.2f, Instance Accuracy = %4.2f \n", v54, v55], &v84);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    if (*(&std->var0.var1 + 23) < 0)
    {
      stdCopy = std->var0.var1.var0;
    }

    *buf = 134218498;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *&buf[14] = stdCopy;
    *&buf[22] = 2048;
    v91 = v52;
    _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "MLF Average Tag Accuracy = %4.2f , %s F-1 Score = %4.2f\n", buf, 0x20u);
  }

  v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v56)
  {
    [TransferSeqTagMLFHelper evaluateInferenceGraphWithInputTensorData:v56 batchedInputSentences:v57 batchedLabels:v58 inferenceGraph:v59 inputPlaceholders:v60 scalarParams:v61 labelArray:v62 dataTypeString:v63 trainingLogger:? predictedLabels:?];
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v85, v86[0]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(&v87, v88[0]);
  v64 = *MEMORY[0x1E69E9840];
}

- (void)executeInferenceGraph:(id)graph inputsDictionary:(id)dictionary batchSize:(int)size maxLength:(int)length labelSize:(int)labelSize predictedLabels:(void *)labels
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x4812000000;
  v12[3] = __Block_byref_object_copy__2;
  v12[4] = __Block_byref_object_dispose__2;
  v12[5] = "";
  v14 = 0;
  v15 = 0;
  __p = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__TransferSeqTagMLFHelper_executeInferenceGraph_inputsDictionary_batchSize_maxLength_labelSize_predictedLabels___block_invoke;
  v8[3] = &unk_1E7625548;
  sizeCopy = size;
  lengthCopy = length;
  labelSizeCopy = labelSize;
  v8[4] = self;
  v8[5] = v12;
  v8[6] = labels;
  [graph executeWithInputsData:dictionary batchSize:size options:2 completionHandler:v8];
  _Block_object_dispose(v12, 8);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

uint64_t __112__TransferSeqTagMLFHelper_executeInferenceGraph_inputsDictionary_batchSize_maxLength_labelSize_predictedLabels___block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) findMaxIndexWithData:objc_msgSend(a2 batchSize:"data") sequenceLength:*(a1 + 56) numClasses:{*(a1 + 60), *(a1 + 64)}];
  if (*(a1 + 56))
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 48);
      if (*(a1 + 60))
      {
        v7 = 0;
        do
        {
          v8 = [v4 bytes];
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v8 + v5 * *(a1 + 60) + 8 * v7);
          std::vector<int>::push_back[abi:ne200100]((v9 + 48), &v10);
          ++v7;
        }

        while (v7 < *(a1 + 60));
      }

      result = std::vector<std::vector<int>>::push_back[abi:ne200100](*(a1 + 48), (*(*(a1 + 40) + 8) + 48));
      ++v6;
      v5 += 8;
    }

    while (v6 < *(a1 + 56));
  }

  return result;
}

- (void)printLstmWeights:(_DWORD *)a3 .cold.3(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Gate#:%d\n", buf, 8u);
}

- (void)printLstmWeights:(uint64_t *)a3 .cold.4(uint8_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = [objc_msgSend(&unk_1F10B4E90 objectAtIndexedSubscript:{a2), "UTF8String"}];
  *a1 = 136315138;
  *a3 = v5;
  _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "\nW_type:%s\n", a1, 0xCu);
}

- (double)printLstmWeights:(uint8_t *)buf .cold.5(uint64_t a1, uint64_t a2, uint8_t *buf, double *a4)
{
  v4 = *(a1 + 4 * a2);
  *buf = 134217984;
  *a4 = v4;
  _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "\t%f", buf, 0xCu);
  return result;
}

- (void)createTrainingGraphFromGraphObject:(void *)a1 inputPlaceholders:scalarWeights:targetLabels:targeLabelWeights:device:.cold.1(void *a1)
{
  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0(&dword_19D184000, MEMORY[0x1E69E9C10], v1, "\nError creating Training Graph", v2, v3, v4, v5, 0);
  }

  objc_end_catch();
}

- (void)createInferenceGraphFromGraphObject:(void *)a1 inputPlaceholders:scalarWeights:finalLayerTensor:device:.cold.1(void *a1)
{
  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0(&dword_19D184000, MEMORY[0x1E69E9C10], v1, "\nError creating Inference Graph", v2, v3, v4, v5, 0);
  }

  objc_end_catch();
}

void __268__TransferSeqTagMLFHelper_doSeqTagTrainingAndEvalFromData_batchedLabels_batchedPaddedLabelDatasets_labelArray_embeddingRef_modeLayerList_trainingGraph_inferenceGraph_scalarParams_inputPlaceholders_targetLabelPlaceholders_targetLabelWeightsPlaceholders_trainingLogger___block_invoke_cold_1(uint64_t a1, float *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *a2;
  v5[0] = 67109376;
  v5[1] = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "\nBatch No.: [%d]. Loss = %4.2f", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)evaluateInferenceGraphWithInputTensorData:(_DWORD *)a3 batchedInputSentences:batchedLabels:inferenceGraph:inputPlaceholders:scalarParams:labelArray:dataTypeString:trainingLogger:predictedLabels:.cold.1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Eval Batch No.: [%d]. \n", buf, 8u);
}

@end