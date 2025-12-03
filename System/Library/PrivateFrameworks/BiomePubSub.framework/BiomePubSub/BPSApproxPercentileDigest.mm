@interface BPSApproxPercentileDigest
- (BPSApproxPercentileDigest)initWithCapacity:(unint64_t)capacity bufferMultiplier:(unint64_t)multiplier;
- (BPSApproxPercentileDigest)initWithCoder:(id)coder;
- (BPSApproxPercentileDigest)initWithProto:(id)proto;
- (BPSApproxPercentileDigest)initWithProtoData:(id)data;
- (double)quantileLimitForClusterIndex:(unint64_t)index maxCentroidCount:(unint64_t)count;
- (double)valueAtQuantile:(double)quantile;
- (id)encodeAsProto;
- (id)proto;
- (void)addDigest:(id)digest;
- (void)encodeWithCoder:(id)coder;
- (void)mergeCentroids;
@end

@implementation BPSApproxPercentileDigest

- (BPSApproxPercentileDigest)initWithCapacity:(unint64_t)capacity bufferMultiplier:(unint64_t)multiplier
{
  v13.receiver = self;
  v13.super_class = BPSApproxPercentileDigest;
  v6 = [(BPSApproxPercentileDigest *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxCentroidCount = capacity;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:capacity];
    mergedCentroids = v7->_mergedCentroids;
    v7->_mergedCentroids = v8;

    v7->_unmergedBufferSize = multiplier * capacity;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    unmergedCentroids = v7->_unmergedCentroids;
    v7->_unmergedCentroids = v10;

    v7->_totalWeight = 0;
  }

  return v7;
}

- (double)quantileLimitForClusterIndex:(unint64_t)index maxCentroidCount:(unint64_t)count
{
  v4 = index / count;
  if (v4 >= 0.5)
  {
    return (1.0 - v4) * -2.0 * (1.0 - v4) + 1.0;
  }

  else
  {
    return v4 * (v4 + v4);
  }
}

- (double)valueAtQuantile:(double)quantile
{
  [(BPSApproxPercentileDigest *)self mergeCentroids];
  mergedCentroids = [(BPSApproxPercentileDigest *)self mergedCentroids];
  v6 = [mergedCentroids count];

  if (v6)
  {
    mergedCentroids2 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v8 = [mergedCentroids2 count];

    if (v8 == 2)
    {
      mergedCentroids3 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      firstObject = [mergedCentroids3 firstObject];
      [firstObject mean];
      v12 = v11;
LABEL_52:

      goto LABEL_53;
    }

    v13 = [(BPSApproxPercentileDigest *)self totalWeight]* quantile;
    mergedCentroids4 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    mergedCentroids3 = [mergedCentroids4 firstObject];

    if ([mergedCentroids3 weight] >= 2 && v13 < vcvtd_n_f64_u32(objc_msgSend(mergedCentroids3, "weight"), 1uLL))
    {
      [(BPSApproxPercentileDigest *)self min];
      v16 = v15;
      v17 = (v13 + -1.0) / (vcvtd_n_f64_u32([mergedCentroids3 weight], 1uLL) + -1.0);
      [mergedCentroids3 mean];
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

    mergedCentroids5 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    firstObject = [mergedCentroids5 lastObject];

    [firstObject mean];
    if (v22 > 1.0 && -[BPSApproxPercentileDigest totalWeight](self, "totalWeight") - v13 < vcvtd_n_f64_u32([firstObject weight], 1uLL))
    {
      [(BPSApproxPercentileDigest *)self max];
      v24 = v23;
      v25 = (-[BPSApproxPercentileDigest totalWeight](self, "totalWeight") - v13 + -1.0) / (vcvtd_n_f64_u32([firstObject weight], 1uLL) + -1.0);
      [(BPSApproxPercentileDigest *)self max];
      v27 = v26;
      [firstObject mean];
      v12 = v24 + v25 * (v27 - v28);
      goto LABEL_52;
    }

    mergedCentroids6 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    firstObject2 = [mergedCentroids6 firstObject];
    weight = [firstObject2 weight];

    mergedCentroids7 = [(BPSApproxPercentileDigest *)self mergedCentroids];
    v34 = [mergedCentroids7 count];

    if (v34 == 1)
    {
LABEL_17:
      mergedCentroids8 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      lastObject = [mergedCentroids8 lastObject];

      v45 = v13 - -[BPSApproxPercentileDigest totalWeight](self, "totalWeight") - vcvtd_n_f64_u32([lastObject weight], 1uLL);
      [lastObject mean];
      v47 = v46 * 0.5 - v45;
      [lastObject mean];
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
    v36 = vcvtd_n_f64_u32(weight, 1uLL);
    while (1)
    {
      mergedCentroids9 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      lastObject = [mergedCentroids9 objectAtIndex:v35];

      mergedCentroids10 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v40 = [mergedCentroids10 objectAtIndex:++v35];

      v41 = v36 + vcvtd_n_f64_u32([v40 weight] + objc_msgSend(lastObject, "weight"), 1uLL);
      if (v41 > v13)
      {
        break;
      }

      mergedCentroids11 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v43 = [mergedCentroids11 count] - 1;

      v36 = v41;
      if (v35 >= v43)
      {
        goto LABEL_17;
      }
    }

    v57 = 0.0;
    v58 = v13 - v36;
    v59 = 0.0;
    if ([lastObject weight] == 1 && (v59 = 0.5, v58 < 0.5))
    {
      v60 = lastObject;
    }

    else
    {
      weight2 = [v40 weight];
      v62 = v41 - v13;
      if (weight2 != 1 || (v57 = 0.5, v62 > 0.5))
      {
        v63 = v58 - v59;
        v64 = v62 - v57;
        [lastObject mean];
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

    firstObject = [(NSMutableArray *)self->_unmergedCentroids firstObject];
    v7 = firstObject;
    if (firstObject && [firstObject weight] == 1)
    {
      [v7 mean];
      if (min >= self->_min)
      {
        min = self->_min;
      }

      self->_min = min;
    }

    lastObject = [(NSMutableArray *)self->_unmergedCentroids lastObject];
    v10 = lastObject;
    if (lastObject && [lastObject weight] == 1)
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
    weight = [v7 weight];
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

          v28 = v21 + weight;
          if (v23 >= (v28 + [v22 weight]))
          {
            weight = [v22 weight] + weight;
            [v22 mean];
            v16 = v16 + (v36 * [v22 weight]);
          }

          else
          {
            mergedCentroids = [(BPSApproxPercentileDigest *)self mergedCentroids];
            v30 = [BPSApproxPercentileDigestCentroid alloc];
            *&v31 = v16 / weight;
            v32 = [(BPSApproxPercentileDigestCentroid *)v30 initWithMeanAndWeight:weight weight:v31];
            [mergedCentroids addObject:v32];

            weight = [v22 weight];
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

    if (weight)
    {
      mergedCentroids2 = [(BPSApproxPercentileDigest *)self mergedCentroids];
      v38 = [BPSApproxPercentileDigestCentroid alloc];
      *&v39 = v16 / weight;
      v40 = [(BPSApproxPercentileDigestCentroid *)v38 initWithMeanAndWeight:weight weight:v39];
      [mergedCentroids2 addObject:v40];
    }

    [(NSMutableArray *)self->_unmergedCentroids removeAllObjects:v42];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)addDigest:(id)digest
{
  digestCopy = digest;
  [digestCopy mergeCentroids];
  -[BPSApproxPercentileDigest setTotalWeight:](self, "setTotalWeight:", -[BPSApproxPercentileDigest totalWeight](self, "totalWeight") + [digestCopy totalWeight]);
  unmergedCentroids = [(BPSApproxPercentileDigest *)self unmergedCentroids];
  mergedCentroids = [digestCopy mergedCentroids];

  [unmergedCentroids addObjectsFromArray:mergedCentroids];

  [(BPSApproxPercentileDigest *)self mergeCentroids];
}

- (id)encodeAsProto
{
  proto = [(BPSApproxPercentileDigest *)self proto];
  data = [proto data];

  return data;
}

- (BPSApproxPercentileDigest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
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

  v5 = protoCopy;
  hasBufferMultiplier = [v5 hasBufferMultiplier];
  v7 = [BPSApproxPercentileDigest alloc];
  centroidCount = [v5 centroidCount];
  if (hasBufferMultiplier)
  {
    v9 = -[BPSApproxPercentileDigest initWithCapacity:bufferMultiplier:](v7, "initWithCapacity:bufferMultiplier:", centroidCount, [v5 bufferMultiplier]);
  }

  else
  {
    v9 = [(BPSApproxPercentileDigest *)v7 initWithCapacity:centroidCount];
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
      mergedCentroids = [(BPSApproxPercentileDigest *)v11 mergedCentroids];
      v17 = [BPSApproxPercentileDigestCentroid alloc];
      LODWORD(v18) = v14;
      v19 = [(BPSApproxPercentileDigestCentroid *)v17 initWithMeanAndWeight:v15 weight:v18];
      [mergedCentroids addObject:v19];

      [(BPSApproxPercentileDigest *)v11 setTotalWeight:[(BPSApproxPercentileDigest *)v11 totalWeight]+ v15];
      ++v12;
    }

    while ([v5 centroidWeightsCount] > v12);
  }

LABEL_14:
  return v11;
}

- (BPSApproxPercentileDigest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BPSPBApproxPercentileDigest alloc] initWithData:dataCopy];

    self = [(BPSApproxPercentileDigest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  mergedCentroids = [(BPSApproxPercentileDigest *)self mergedCentroids];
  [v3 setCentroidCount:{objc_msgSend(mergedCentroids, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mergedCentroids2 = [(BPSApproxPercentileDigest *)self mergedCentroids];
  v6 = [mergedCentroids2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(mergedCentroids2);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 mean];
        [v3 addCentroidMeans:?];
        [v3 addCentroidWeights:{objc_msgSend(v10, "weight")}];
      }

      v7 = [mergedCentroids2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BPSApproxPercentileDigest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"data"];
}

- (BPSApproxPercentileDigest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (v5)
  {
    self = [(BPSApproxPercentileDigest *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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