@interface BPSApproxPercentileDigest
- (BPSApproxPercentileDigest)initWithCapacity:(unint64_t)a3 bufferMultiplier:(unint64_t)a4;
- (BPSApproxPercentileDigest)initWithCoder:(id)a3;
- (BPSApproxPercentileDigest)initWithProto:(id)a3;
- (BPSApproxPercentileDigest)initWithProtoData:(id)a3;
- (double)quantileLimitForClusterIndex:(unint64_t)a3 maxCentroidCount:(unint64_t)a4;
- (double)valueAtQuantile:(double)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)addDigest:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeCentroids;
@end

@implementation BPSApproxPercentileDigest

- (BPSApproxPercentileDigest)initWithCapacity:(unint64_t)a3 bufferMultiplier:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = BPSApproxPercentileDigest;
  v6 = [(BPSApproxPercentileDigest *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxCentroidCount = a3;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    mergedCentroids = v7->_mergedCentroids;
    v7->_mergedCentroids = v8;

    v7->_unmergedBufferSize = a4 * a3;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    unmergedCentroids = v7->_unmergedCentroids;
    v7->_unmergedCentroids = v10;

    v7->_totalWeight = 0;
  }

  return v7;
}

- (double)quantileLimitForClusterIndex:(unint64_t)a3 maxCentroidCount:(unint64_t)a4
{
  v4 = a3 / a4;
  if (v4 >= 0.5)
  {
    return (1.0 - v4) * -2.0 * (1.0 - v4) + 1.0;
  }

  else
  {
    return v4 * (v4 + v4);
  }
}

- (double)valueAtQuantile:(double)a3
{
  [(BPSApproxPercentileDigest *)self mergeCentroids];
  v5 = [(BPSApproxPercentileDigest *)self mergedCentroids];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v8 = [v7 count];

    if (v8 == 2)
    {
      v9 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v10 = [v9 firstObject];
      [v10 mean];
      v12 = v11;
LABEL_52:

      goto LABEL_53;
    }

    v13 = [(BPSApproxPercentileDigest *)self totalWeight]* a3;
    v14 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v9 = [v14 firstObject];

    if ([v9 weight] >= 2 && v13 < vcvtd_n_f64_u32(objc_msgSend(v9, "weight"), 1uLL))
    {
      [(BPSApproxPercentileDigest *)self min];
      v16 = v15;
      v17 = (v13 + -1.0) / (vcvtd_n_f64_u32([v9 weight], 1uLL) + -1.0);
      [v9 mean];
      v19 = v18;
      [(BPSApproxPercentileDigest *)self min];
      v12 = v16 + v17 * (v19 - v20);
LABEL_53:

      return v12;
    }

    if (v13 >= ([(BPSApproxPercentileDigest *)self totalWeight]- 1))
    {
      [(BPSApproxPercentileDigest *)self max];
      v12 = v29;
      goto LABEL_53;
    }

    v21 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v10 = [v21 lastObject];

    [v10 mean];
    if (v22 > 1.0 && -[BPSApproxPercentileDigest totalWeight](self, "totalWeight") - v13 < vcvtd_n_f64_u32([v10 weight], 1uLL))
    {
      [(BPSApproxPercentileDigest *)self max];
      v24 = v23;
      v25 = (-[BPSApproxPercentileDigest totalWeight](self, "totalWeight") - v13 + -1.0) / (vcvtd_n_f64_u32([v10 weight], 1uLL) + -1.0);
      [(BPSApproxPercentileDigest *)self max];
      v27 = v26;
      [v10 mean];
      v12 = v24 + v25 * (v27 - v28);
      goto LABEL_52;
    }

    v30 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v31 = [v30 firstObject];
    v32 = [v31 weight];

    v33 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v34 = [v33 count];

    if (v34 == 1)
    {
LABEL_17:
      v44 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v38 = [v44 lastObject];

      v45 = v13 - -[BPSApproxPercentileDigest totalWeight](self, "totalWeight") - vcvtd_n_f64_u32([v38 weight], 1uLL);
      [v38 mean];
      v47 = v46 * 0.5 - v45;
      [v38 mean];
      v49 = v48;
      v50 = v48;
      [(BPSApproxPercentileDigest *)self max];
      v52 = v51;
      v53 = v49 > v51;
      if (v49 <= v51)
      {
        v54 = v47 * v51 + v50 * v45;
      }

      else
      {
        v54 = v45 * v50 + v51 * v47;
      }

      if (v53)
      {
        v55 = v50;
      }

      else
      {
        v55 = v52;
      }

      if (!v53)
      {
        v52 = v50;
      }

      v56 = v54 / (v45 + v47);
      if (v56 >= v55)
      {
        v56 = v55;
      }

      if (v56 <= v52)
      {
        v12 = v52;
      }

      else
      {
        v12 = v56;
      }

      goto LABEL_51;
    }

    v35 = 0;
    v36 = vcvtd_n_f64_u32(v32, 1uLL);
    while (1)
    {
      v37 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v38 = [v37 objectAtIndex:v35];

      v39 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v40 = [v39 objectAtIndex:++v35];

      v41 = v36 + vcvtd_n_f64_u32([v40 weight] + objc_msgSend(v38, "weight"), 1uLL);
      if (v41 > v13)
      {
        break;
      }

      v42 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v43 = [v42 count] - 1;

      v36 = v41;
      if (v35 >= v43)
      {
        goto LABEL_17;
      }
    }

    v57 = 0.0;
    v58 = v13 - v36;
    v59 = 0.0;
    if ([v38 weight] == 1 && (v59 = 0.5, v58 < 0.5))
    {
      v60 = v38;
    }

    else
    {
      v61 = [v40 weight];
      v62 = v41 - v13;
      if (v61 != 1 || (v57 = 0.5, v62 > 0.5))
      {
        v63 = v58 - v59;
        v64 = v62 - v57;
        [v38 mean];
        v66 = v65;
        v67 = v65;
        [v40 mean];
        v69 = v68;
        v70 = v66 > v68;
        if (v66 <= v68)
        {
          v71 = v63 * v68 + v67 * v64;
        }

        else
        {
          v71 = v64 * v67 + v68 * v63;
        }

        if (v70)
        {
          v72 = v67;
        }

        else
        {
          v72 = v69;
        }

        if (!v70)
        {
          v69 = v67;
        }

        v73 = v71 / (v63 + v64);
        if (v73 >= v72)
        {
          v73 = v72;
        }

        if (v73 <= v69)
        {
          v12 = v69;
        }

        else
        {
          v12 = v73;
        }

        goto LABEL_50;
      }

      v60 = v40;
    }

    [v60 mean];
    v12 = v74;
LABEL_50:

LABEL_51:
    goto LABEL_52;
  }

  return 0.0;
}

- (void)mergeCentroids
{
  v50[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_unmergedCentroids count])
  {
    [(NSMutableArray *)self->_unmergedCentroids addObjectsFromArray:self->_mergedCentroids];
    unmergedCentroids = self->_unmergedCentroids;
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mean" ascending:1];
    v50[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    [(NSMutableArray *)unmergedCentroids sortUsingDescriptors:v5];

    v6 = [(NSMutableArray *)self->_unmergedCentroids firstObject];
    v7 = v6;
    if (v6 && [v6 weight] == 1)
    {
      [v7 mean];
      if (min >= self->_min)
      {
        min = self->_min;
      }

      self->_min = min;
    }

    v9 = [(NSMutableArray *)self->_unmergedCentroids lastObject];
    v10 = v9;
    if (v9 && [v9 weight] == 1)
    {
      [v10 mean];
      if (max < self->_max)
      {
        max = self->_max;
      }

      self->_max = max;
    }

    [(NSMutableArray *)self->_mergedCentroids removeAllObjects];
    totalWeight = self->_totalWeight;
    [(BPSApproxPercentileDigest *)self quantileLimitForClusterIndex:1 maxCentroidCount:[(BPSApproxPercentileDigest *)self maxCentroidCount]];
    v14 = v13;
    [v7 mean];
    v16 = v15;
    v17 = [v7 weight];
    [(NSMutableArray *)self->_unmergedCentroids removeObjectAtIndex:0];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = self->_unmergedCentroids;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v42 = v10;
      v43 = v7;
      v44 = 24;
      v21 = 0;
      v22 = 0;
      v23 = v14 * totalWeight;
      v24 = *v46;
      v25 = 1;
      do
      {
        v26 = 0;
        v27 = v22;
        do
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v45 + 1) + 8 * v26);

          v28 = v21 + v17;
          if (v23 >= (v28 + [v22 weight]))
          {
            v17 = [v22 weight] + v17;
            [v22 mean];
            v16 = v16 + (v36 * [v22 weight]);
          }

          else
          {
            v29 = [(BPSApproxPercentileDigest *)self mergedCentroids];
            v30 = [BPSApproxPercentileDigestCentroid alloc];
            *&v31 = v16 / v17;
            v32 = [(BPSApproxPercentileDigestCentroid *)v30 initWithMeanAndWeight:v17 weight:v31];
            [v29 addObject:v32];

            v17 = [v22 weight];
            [v22 mean];
            v16 = (v33 * [v22 weight]);
            ++v25;
            v34 = self->_totalWeight;
            [(BPSApproxPercentileDigest *)self quantileLimitForClusterIndex:v25 maxCentroidCount:[(BPSApproxPercentileDigest *)self maxCentroidCount]];
            v23 = v35 * v34;
            v21 = v28;
          }

          ++v26;
          v27 = v22;
        }

        while (v20 != v26);
        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v20);

      v7 = v43;
      v10 = v42;
    }

    if (v17)
    {
      v37 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v38 = [BPSApproxPercentileDigestCentroid alloc];
      *&v39 = v16 / v17;
      v40 = [(BPSApproxPercentileDigestCentroid *)v38 initWithMeanAndWeight:v17 weight:v39];
      [v37 addObject:v40];
    }

    [(NSMutableArray *)self->_unmergedCentroids removeAllObjects:v42];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)addDigest:(id)a3
{
  v4 = a3;
  [v4 mergeCentroids];
  -[BPSApproxPercentileDigest setTotalWeight:](self, "setTotalWeight:", -[BPSApproxPercentileDigest totalWeight](self, "totalWeight") + [v4 totalWeight]);
  v5 = [(BPSApproxPercentileDigest *)self unmergedCentroids];
  v6 = [v4 mergedCentroids];

  [v5 addObjectsFromArray:v6];

  [(BPSApproxPercentileDigest *)self mergeCentroids];
}

- (id)encodeAsProto
{
  v2 = [(BPSApproxPercentileDigest *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BPSApproxPercentileDigest)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BPSApproxPercentileDigest *)self initWithProto:v10];
    }

    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v5 hasBufferMultiplier];
  v7 = [BPSApproxPercentileDigest alloc];
  v8 = [v5 centroidCount];
  if (v6)
  {
    v9 = -[BPSApproxPercentileDigest initWithCapacity:bufferMultiplier:](v7, "initWithCapacity:bufferMultiplier:", v8, [v5 bufferMultiplier]);
  }

  else
  {
    v9 = [(BPSApproxPercentileDigest *)v7 initWithCapacity:v8];
  }

  v11 = v9;
  [v5 min];
  [(BPSApproxPercentileDigest *)v11 setMin:?];
  [v5 max];
  [(BPSApproxPercentileDigest *)v11 setMax:?];
  if ([v5 centroidWeightsCount])
  {
    v12 = 0;
    do
    {
      [v5 centroidMeansAtIndex:v12];
      v14 = v13;
      v15 = [v5 centroidWeightsAtIndex:v12];
      v16 = [(BPSApproxPercentileDigest *)v11 mergedCentroids];
      v17 = [BPSApproxPercentileDigestCentroid alloc];
      LODWORD(v18) = v14;
      v19 = [(BPSApproxPercentileDigestCentroid *)v17 initWithMeanAndWeight:v15 weight:v18];
      [v16 addObject:v19];

      [(BPSApproxPercentileDigest *)v11 setTotalWeight:[(BPSApproxPercentileDigest *)v11 totalWeight]+ v15];
      ++v12;
    }

    while ([v5 centroidWeightsCount] > v12);
  }

LABEL_14:
  return v11;
}

- (BPSApproxPercentileDigest)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BPSPBApproxPercentileDigest alloc] initWithData:v4];

    self = [(BPSApproxPercentileDigest *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v18 = *MEMORY[0x1E69E9840];
  [(BPSApproxPercentileDigest *)self mergeCentroids];
  v3 = objc_opt_new();
  [(BPSApproxPercentileDigest *)self min];
  [v3 setMin:?];
  [(BPSApproxPercentileDigest *)self max];
  [v3 setMax:?];
  v4 = [(BPSApproxPercentileDigest *)self mergedCentroids];
  [v3 setCentroidCount:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BPSApproxPercentileDigest *)self mergedCentroids];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 mean];
        [v3 addCentroidMeans:?];
        [v3 addCentroidWeights:{objc_msgSend(v10, "weight")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BPSApproxPercentileDigest *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (BPSApproxPercentileDigest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (v5)
  {
    self = [(BPSApproxPercentileDigest *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_fault_impl(&dword_1C871B000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-BPSPBTDigest proto", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end