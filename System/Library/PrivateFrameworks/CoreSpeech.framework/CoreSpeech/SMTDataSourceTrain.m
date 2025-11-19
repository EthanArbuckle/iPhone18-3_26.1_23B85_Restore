@interface SMTDataSourceTrain
- (SMTDataSourceTrain)initWithNumDataPoints:(unint64_t)a3 sequenceLength:(unint64_t)a4 noiseSize:(unint64_t)a5 batchSize:(unint64_t)a6 vocabSize:(unint64_t)a7 contextKey:(id)a8 targetKey:(id)a9 maskKey:(id)a10 noiseKey:(id)a11;
- (id).cxx_construct;
- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4;
- (void)setVectorsWithProcessor:(id)a3;
@end

@implementation SMTDataSourceTrain

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setVectorsWithProcessor:(id)a3
{
  v25 = a3;
  [v25 textSequence];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v28 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v28)
  {
    LODWORD(v30) = 0;
    v27 = *v32;
    do
    {
      v29 = 0;
      v30 = v30;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v31 + 1) + 8 * v29);
        batchSize = self->_batchSize;
        v6 = [v4 sequence];
        v7 = [v4 target];
        v8 = [v4 mask];
        v9 = 0;
        v10 = (v30 % batchSize);
        v11 = v30 / batchSize;
        while (v9 < [v6 count])
        {
          sequenceLength = self->_sequenceLength;
          v13 = [v6 objectAtIndexedSubscript:v9];
          [v13 floatValue];
          v14 = v9 + sequenceLength * v10;
          *(*(self->_contextData.__begin_ + 3 * v11) + 4 * v14) = v15;

          v16 = [v7 objectAtIndexedSubscript:v9];
          [v16 floatValue];
          *(*(self->_targetData.__begin_ + 3 * v11) + 4 * v14) = v17;

          v18 = [v8 objectAtIndexedSubscript:v9];
          [v18 floatValue];
          *(*(self->_maskData.__begin_ + 3 * v11) + 4 * v14) = v19;

          ++v9;
        }

        v29 = v29 + 1;
        ++v30;
      }

      while (v29 != v28);
      v28 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v28);
  }

  noiseSize = self->_noiseSize;
  if (noiseSize)
  {
    v21 = 0;
    numBatches = self->_numBatches;
    do
    {
      if (numBatches)
      {
        v23 = 0;
        for (i = 0; i < numBatches; ++i)
        {
          *(*(self->_noiseData.__begin_ + v23) + 4 * v21) = [(SMTNoiseSampler *)self->_sampler drawNoise];
          numBatches = self->_numBatches;
          v23 += 24;
        }

        noiseSize = self->_noiseSize;
      }

      ++v21;
    }

    while (v21 < noiseSize);
  }
}

- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4
{
  if (self->_numBatches <= a3)
  {
    v39 = &__NSDictionary0__struct;
  }

  else
  {
    v39 = objc_opt_new();
    batchSize = self->_batchSize;
    sequenceLength = self->_sequenceLength;
    v43[0] = &off_10003B1C8;
    v43[1] = &off_10003B1C8;
    v43[2] = &off_10003B1C8;
    v8 = [NSNumber numberWithUnsignedInteger:batchSize];
    v43[3] = v8;
    v9 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
    v43[4] = v9;
    v37 = [NSArray arrayWithObjects:v43 count:5];

    v10 = sequenceLength * batchSize;
    v11 = [NSNumber numberWithUnsignedInteger:sequenceLength * batchSize];
    v42[0] = v11;
    v12 = [NSNumber numberWithUnsignedInteger:v10];
    v42[1] = v12;
    v13 = [NSNumber numberWithUnsignedInteger:v10];
    v42[2] = v13;
    v14 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
    v42[3] = v14;
    v42[4] = &off_10003B1C8;
    v38 = [NSArray arrayWithObjects:v42 count:5];

    v15 = [[ETDataTensor alloc] initWithData:*(self->_contextData.__begin_ + 3 * a3) type:2 shape:v37 strides:v38];
    [v39 setObject:v15 forKeyedSubscript:self->_contextKey];

    v16 = [NSNumber numberWithUnsignedInteger:v10];
    v17 = [v39 objectForKeyedSubscript:self->_contextKey];
    [v17 setMaxNumberOfElements:v16];

    v18 = [[ETDataTensor alloc] initWithData:*(self->_targetData.__begin_ + 3 * a3) type:2 shape:v37 strides:v38];
    [v39 setObject:v18 forKeyedSubscript:self->_targetKey];

    v19 = [NSNumber numberWithUnsignedInteger:v10];
    v20 = [v39 objectForKeyedSubscript:self->_targetKey];
    [v20 setMaxNumberOfElements:v19];

    v21 = [[ETDataTensor alloc] initWithData:*(self->_maskData.__begin_ + 3 * a3) type:2 shape:v37 strides:v38];
    [v39 setObject:v21 forKeyedSubscript:self->_maskKey];

    v22 = [NSNumber numberWithUnsignedInteger:v10];
    v23 = [v39 objectForKeyedSubscript:self->_maskKey];
    [v23 setMaxNumberOfElements:v22];

    v24 = [ETDataTensor alloc];
    v25 = *(self->_noiseData.__begin_ + 3 * a3);
    v41[0] = &off_10003B1C8;
    v41[1] = &off_10003B1C8;
    v41[2] = &off_10003B1C8;
    v41[3] = &off_10003B1C8;
    v36 = [NSNumber numberWithUnsignedInteger:self->_noiseSize];
    v41[4] = v36;
    v26 = [NSArray arrayWithObjects:v41 count:5];
    v27 = [NSNumber numberWithUnsignedInteger:self->_noiseSize];
    v40[0] = v27;
    v28 = [NSNumber numberWithUnsignedInteger:self->_noiseSize];
    v40[1] = v28;
    v29 = [NSNumber numberWithUnsignedInteger:self->_noiseSize];
    v40[2] = v29;
    v30 = [NSNumber numberWithUnsignedInteger:self->_noiseSize];
    v40[3] = v30;
    v40[4] = &off_10003B1C8;
    v31 = [NSArray arrayWithObjects:v40 count:5];
    v32 = [v24 initWithData:v25 type:2 shape:v26 strides:v31];
    [v39 setObject:v32 forKeyedSubscript:self->_noiseKey];

    v33 = [NSNumber numberWithUnsignedInteger:self->_noiseSize];
    v34 = [v39 objectForKeyedSubscript:self->_noiseKey];
    [v34 setMaxNumberOfElements:v33];
  }

  return v39;
}

- (SMTDataSourceTrain)initWithNumDataPoints:(unint64_t)a3 sequenceLength:(unint64_t)a4 noiseSize:(unint64_t)a5 batchSize:(unint64_t)a6 vocabSize:(unint64_t)a7 contextKey:(id)a8 targetKey:(id)a9 maskKey:(id)a10 noiseKey:(id)a11
{
  v36 = a8;
  v35 = a9;
  v34 = a10;
  v33 = a11;
  v38.receiver = self;
  v38.super_class = SMTDataSourceTrain;
  v18 = [(SMTDataSourceTrain *)&v38 init];
  v19 = v18;
  if (!v18)
  {
LABEL_8:
    v20 = v19;
    goto LABEL_9;
  }

  sub_10001EAD0(v18 + 1, 1uLL);
  sub_10001EAD0(v19 + 4, 1uLL);
  sub_10001ECA8(*(v19 + 1), a4);
  sub_10001ECA8(*(v19 + 4), a4);
  v20 = 0;
  *(v19 + 13) = a4;
  if (a3 && a6)
  {
    *(v19 + 14) = (a3 + a6 - 1) / a6;
    *(v19 + 15) = a5;
    *(v19 + 16) = a6;
    v21 = [[SMTNoiseSampler alloc] initWithZipfOfSize:a7];
    v22 = *(v19 + 17);
    *(v19 + 17) = v21;

    sub_10001EAD0(v19 + 1, *(v19 + 14));
    sub_10001EAD0(v19 + 4, *(v19 + 14));
    sub_10001EAD0(v19 + 7, *(v19 + 14));
    sub_10001EAD0(v19 + 10, *(v19 + 14));
    if (*(v19 + 14))
    {
      v24 = 0;
      v25 = 0;
      v26 = *(v19 + 16) * a4;
      do
      {
        v27 = *(v19 + 1);
        v37 = 0;
        sub_100002844((v27 + v24), v26, &v37, v23);
        v28 = *(v19 + 4);
        v37 = 0;
        sub_100002844((v28 + v24), v26, &v37, v29);
        v30 = *(v19 + 7);
        v37 = 0;
        sub_100002844((v30 + v24), v26, &v37, v31);
        sub_10001ECA8((*(v19 + 10) + v24), *(v19 + 15));
        ++v25;
        v24 += 24;
      }

      while (v25 < *(v19 + 14));
    }

    objc_storeStrong(v19 + 18, a8);
    objc_storeStrong(v19 + 19, a9);
    objc_storeStrong(v19 + 20, a10);
    objc_storeStrong(v19 + 21, a11);
    goto LABEL_8;
  }

LABEL_9:

  return v20;
}

@end