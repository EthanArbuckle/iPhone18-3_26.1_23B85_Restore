@interface SMTGlobalNNLM
+ (id)attachmentURL:(id)l withName:(id)name;
+ (id)compressedAttachmentURLFromRecipe:(id)recipe attachments:(id)attachments;
+ (void)initialize;
- (SMTGlobalNNLM)initWithRecipe:(id)recipe;
- (id)_fetchTensorInfo:(id)info;
- (id)computeDelta:(BOOL)delta;
- (id)evaluate;
- (id)evaluatePartialDelta;
- (id)getEvalTask:(id *)task;
- (id)getTrainTask:(id *)task;
- (id)loadData;
- (id)restoreFromLatestWeights:(id)weights;
- (id)setup;
- (id)train;
@end

@implementation SMTGlobalNNLM

- (id)computeDelta:(BOOL)delta
{
  deltaCopy = delta;
  v5 = objc_autoreleasePoolPush();
  v139 = 0;
  v6 = [(SMTGlobalNNLM *)self getEvalTask:&v139];
  context = v5;
  v122 = deltaCopy;
  v7 = v139;
  v123 = v7;
  v125 = v6;
  if (!v6 || v7)
  {
    *&v10 = COERCE_DOUBLE(v7);
    v36 = 0;
  }

  else
  {
    v8 = self->_tensorInfo;
    v9 = v6;
    *&v10 = COERCE_DOUBLE(objc_opt_new());
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v11 = v8;
    v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v140 objects:buf count:16];
    if (v12)
    {
      v13 = *v141;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v141 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v140 + 1) + 8 * i);
          v16 = [v9 getTensorNamed:v15 directBind:1];
          [(__CFString *)v10 setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v140 objects:buf count:16];
      }

      while (v12);
    }

    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    obj = v10;
    v17 = [(__CFString *)obj countByEnumeratingWithState:&v135 objects:v162 count:16];
    if (v17)
    {
      v118 = *v136;
      *&v10 = COERCE_DOUBLE(@"size");
      do
      {
        v18 = 0;
        v116 = v17;
        do
        {
          if (*v136 != v118)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v135 + 1) + 8 * v18);
          v20 = [(__CFString *)obj objectForKeyedSubscript:v19];
          v120 = v18;
          dataPointer = [v20 dataPointer];

          v22 = 0;
          while (1)
          {
            v23 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v19];
            v24 = [v23 objectForKeyedSubscript:@"size"];
            v25 = v22 < [v24 intValue];

            if (!v25)
            {
              break;
            }

            v26 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v19];
            v27 = [v26 objectForKeyedSubscript:@"offset"];
            intValue = [v27 intValue];

            weightsRawPtr = self->_weightsRawPtr;
            v30 = weightsRawPtr[(v22 + intValue)] - dataPointer[v22];
            weightsRawPtr[(v22++ + intValue)] = v30;
            if ((LODWORD(v30) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v37 = [NSString stringWithFormat:@"delta[%d] is not finite", intValue + v22 - 1];
              v160 = NSLocalizedDescriptionKey;
              v161 = v37;
              v38 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
              [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:156 userInfo:v38];
              *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

              goto LABEL_26;
            }
          }

          v18 = v120 + 1;
        }

        while ((v120 + 1) != v116);
        v17 = [(__CFString *)obj countByEnumeratingWithState:&v135 objects:v162 count:16];
      }

      while (v17);
    }

    numParam = self->_numParam;
    if (numParam)
    {
      v32 = self->_weightsRawPtr;
      v33 = 4 * numParam;
      v34 = 0.0;
      do
      {
        v35 = *v32++;
        v34 = v34 + (v35 * v35);
        v33 -= 4;
      }

      while (v33);
    }

    else
    {
      v34 = 0.0;
    }

    v39 = sqrt(v34);
    v40 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v164 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "l2-norm of the delta is %f", buf, 0xCu);
    }

    *&v41 = v39;
    v42 = [NSNumber numberWithFloat:v41];
    [(NSMutableDictionary *)self->_results setObject:v42 forKeyedSubscript:@"DeltaL2Norm"];

    if (!self->_deltaIsPartial)
    {
      goto LABEL_103;
    }

    self->_numParam = 0;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v43 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
    v44 = [v43 countByEnumeratingWithState:&v131 objects:v159 count:16];
    if (v44)
    {
      v45 = *v132;
      v121 = v43;
      v115 = *v132;
      do
      {
        v46 = 0;
        v117 = v44;
        while (2)
        {
          if (*v132 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v119 = v46;
          v10 = *(*(&v131 + 1) + 8 * v46);
          v47 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v10];
          v48 = [v47 objectForKeyedSubscript:@"offset"];
          intValue2 = [v48 intValue];

          v50 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
          LOBYTE(v48) = v50 == 0;

          if (v48)
          {
            v157[0] = &off_10003B180;
            v156[0] = @"start";
            v156[1] = @"end";
            v51 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v10];
            v52 = [v51 objectForKeyedSubscript:@"size"];
            v156[2] = @"scale";
            v157[1] = v52;
            v157[2] = &off_10003B1F8;
            v53 = [NSDictionary dictionaryWithObjects:v157 forKeys:v156 count:3];
            v158 = v53;
            v54 = [NSArray arrayWithObjects:&v158 count:1];
            [(NSMutableDictionary *)self->_partialUpdateOffsets setObject:v54 forKeyedSubscript:v10];

            v55 = qword_10003FF18;
            if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v164 = *&v10;
              _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "%@ applies full update", buf, 0xCu);
            }
          }

          for (j = 0; ; ++j)
          {
            v57 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v58 = j < [v57 count];

            if (!v58)
            {
              break;
            }

            v59 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v60 = [v59 objectAtIndexedSubscript:j];
            v61 = [v60 objectForKeyedSubscript:@"start"];
            unsignedIntValue = [v61 unsignedIntValue];

            v63 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v64 = [v63 objectAtIndexedSubscript:j];
            v65 = [v64 objectForKeyedSubscript:@"end"];
            LODWORD(v60) = [v65 unsignedIntValue];

            v66 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v67 = [v66 objectAtIndexedSubscript:j];
            v68 = [v67 objectForKeyedSubscript:@"scale"];
            [v68 floatValue];
            v70 = v69;

            v71 = unsignedIntValue + intValue2;
            v72 = v60 + intValue2;
            if (v71 < v72)
            {
              v73 = self->_numParam;
              while (v71 >= v73)
              {
                v74 = self->_weightsRawPtr;
                v75 = v70 * v74[v71];
                self->_numParam = v73 + 1;
                v74[v73] = v75;
                ++v71;
                ++v73;
                if (v72 == v71)
                {
                  goto LABEL_45;
                }
              }

              v83 = [NSString stringWithFormat:@"shifting delta[%lu] to delta[%lu] may overwrite chosen gradient", v71, v73];
              v154 = NSLocalizedDescriptionKey;
              v155 = v83;
              v84 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
              [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:156 userInfo:v84];
              *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

              goto LABEL_26;
            }

LABEL_45:
            ;
          }

          v46 = v119 + 1;
          v43 = v121;
          v45 = v115;
          if ((v119 + 1) != v117)
          {
            continue;
          }

          break;
        }

        v44 = [v121 countByEnumeratingWithState:&v131 objects:v159 count:16];
      }

      while (v44);
    }

    v76 = self->_weightsRawPtr;
    v77 = self->_numParam;
    if (v77)
    {
      v78 = 4 * v77;
      v79 = 0.0;
      v80 = self->_weightsRawPtr;
      v81 = &selRef_vocabSize;
      do
      {
        v82 = *v80++;
        v79 = v79 + (v82 * v82);
        v78 -= 4;
      }

      while (v78);
    }

    else
    {
      v79 = 0.0;
      v81 = &selRef_vocabSize;
    }

    v85 = sqrt(v79);
    v86 = v81[483];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v164 = v85;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "l2-norm of the partial delta before normalization is %f", buf, 0xCu);
      v77 = self->_numParam;
      v76 = self->_weightsRawPtr;
    }

    if (v77)
    {
      v87 = v76;
      v88 = v77;
      do
      {
        *v87 = (v39 / v85) * *v87;
        ++v87;
        --v88;
      }

      while (v88);
      v89 = 4 * v77;
      v90 = 0.0;
      do
      {
        v91 = *v76++;
        v90 = v90 + (v91 * v91);
        v89 -= 4;
      }

      while (v89);
    }

    else
    {
      v90 = 0.0;
    }

    v92 = v81[483];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v93 = sqrt(v90);
      *buf = 134217984;
      v164 = v93;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "l2-norm of the partial delta after normalization is %f", buf, 0xCu);
      v92 = v81[483];
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v94 = *&self->_numParam;
      *buf = 134217984;
      v164 = v94;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "Gradients of %lu parameters are chosen and sent to server", buf, 0xCu);
    }

    v95 = [[SMTSimpleMmapBuffer alloc] initWithData:self->_weightsRawPtr ofSize:4 * self->_numParam];
    mmappedPartialWeights = self->_mmappedPartialWeights;
    self->_mmappedPartialWeights = v95;

    if (!self->_mmappedPartialWeights)
    {
      v152 = NSLocalizedDescriptionKey;
      v153 = @"Unable to buffer partial delta";
      v114 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v114];
      *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

LABEL_26:
      v36 = 0;
    }

    else
    {
LABEL_103:
      if (sub_100006924(self->_recipe, @"deltaIsWeighted", 1))
      {
        v97 = self->_numParam;
        if (v97)
        {
          numWordsTrain = self->_numWordsTrain;
          v99 = self->_weightsRawPtr;
          do
          {
            *v99 = *v99 * numWordsTrain;
            ++v99;
            --v97;
          }

          while (v97);
        }

        v100 = qword_10003FF18;
        v36 = 1;
        if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "delta is weighted", buf, 2u);
        }
      }

      else
      {
        v36 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  if (v36)
  {
    if (!v122)
    {
      v111 = [NSData dataWithBytes:self->_weightsRawPtr length:4 * self->_numParam];
      *&v10 = 0.0;
      delta = self->_delta;
      self->_delta = v111;
LABEL_96:

      goto LABEL_97;
    }

    v151[0] = @"maxNorm";
    v151[1] = @"normBinCount";
    [NSArray arrayWithObjects:v151 count:2];
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    delta = v128 = 0u;
    v102 = [(NSData *)delta countByEnumeratingWithState:&v127 objects:v150 count:16];
    if (v102)
    {
      v103 = *v128;
      while (2)
      {
        for (k = 0; k != v102; k = k + 1)
        {
          if (*v128 != v103)
          {
            objc_enumerationMutation(delta);
          }

          v105 = *(*(&v127 + 1) + 8 * k);
          v106 = [(NSDictionary *)self->_recipe valueForKey:v105];
          v107 = v106 == 0;

          if (v107)
          {
            v105 = [NSString stringWithFormat:@"Unable to read recipe[%@]", v105];
            v148 = NSLocalizedDescriptionKey;
            v149 = v105;
            v112 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
            [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:153 userInfo:v112];
            *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            deltaCopy2 = delta;
            goto LABEL_94;
          }
        }

        v102 = [(NSData *)delta countByEnumeratingWithState:&v127 objects:v150 count:16];
        if (v102)
        {
          continue;
        }

        break;
      }
    }

    deltaCopy2 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"iCloudAggServiceKey"];
    if (deltaCopy2 || ([(NSDictionary *)self->_recipe objectForKeyedSubscript:@"HaruspexKey"], (deltaCopy2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v105 = [[NSData alloc] initWithBase64EncodedString:deltaCopy2 options:0];
      v110 = NSLocalizedDescriptionKey;
      if (!v105)
      {
        v146 = NSLocalizedDescriptionKey;
        v147 = @"Corrupted HaruspexKey";
        v105 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:153 userInfo:v105];
        *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_95:

        goto LABEL_96;
      }
    }

    else
    {
      v105 = 0;
      v110 = NSLocalizedDescriptionKey;
    }

    v144 = v110;
    v145 = @"Privatization of deltas failed";
    v112 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:153 userInfo:v112];
    *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_94:

    goto LABEL_95;
  }

LABEL_97:

  return v10;
}

- (id)evaluatePartialDelta
{
  v48[0] = 0;
  v3 = [(SMTGlobalNNLM *)self getEvalTask:v48];
  evaluate = v48[0];
  v42 = v3;
  if (v3 && !evaluate)
  {
    v5 = sub_10000726C(self->_tensorInfo, v3, self->_weightsRawPtr);
    tensors = self->_tensors;
    self->_tensors = v5;

    dataPointer = [(SMTSimpleMmapBuffer *)self->_mmappedPartialWeights dataPointer];
    v7 = [(SMTSimpleMmapBuffer *)self->_mmappedPartialWeights size];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
    v8 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    v9 = 0;
    if (v8)
    {
      v10 = v7 >> 2;
      v11 = *v45;
      v38 = *v45;
      do
      {
        v12 = 0;
        v39 = v8;
        while (2)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = 0;
          v40 = v12;
          v14 = *(*(&v44 + 1) + 8 * v12);
          while (1)
          {
            v15 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v14];
            v16 = v13 < [v15 count];

            if (!v16)
            {
              break;
            }

            v17 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v14];
            v18 = [v17 objectAtIndexedSubscript:v13];
            v19 = [v18 objectForKeyedSubscript:@"start"];
            unsignedIntegerValue = [v19 unsignedIntegerValue];

            v21 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v14];
            v22 = [v21 objectAtIndexedSubscript:v13];
            v23 = [v22 objectForKeyedSubscript:@"end"];
            unsignedIntegerValue2 = [v23 unsignedIntegerValue];

            v25 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v14];
            v26 = [v25 objectForKeyedSubscript:@"size"];
            unsignedIntValue = [v26 unsignedIntValue];

            v28 = [(NSDictionary *)self->_tensors objectForKeyedSubscript:v14];
            dataPointer2 = [v28 dataPointer];

            if (unsignedIntegerValue < unsignedIntegerValue2)
            {
              while (1)
              {
                if (unsignedIntegerValue > unsignedIntValue)
                {
                  v34 = [NSString stringWithFormat:@"setting %@[%lu] while size(%@) == %lu", v14, unsignedIntegerValue, v14, unsignedIntValue];
                  v53 = NSLocalizedDescriptionKey;
                  v54 = v34;
                  v35 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
                  v36 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v35];
                  goto LABEL_25;
                }

                if (v9 > v10)
                {
                  break;
                }

                v30 = v9 + 1;
                dataPointer2[unsignedIntegerValue] = dataPointer[v9] + dataPointer2[unsignedIntegerValue];
                ++unsignedIntegerValue;
                ++v9;
                if (unsignedIntegerValue2 == unsignedIntegerValue)
                {
                  goto LABEL_16;
                }
              }

              v34 = [NSString stringWithFormat:@"accessing partiaDelta[%lu] while size(partiaDelta) == %lu", v9, v10];
              v51 = NSLocalizedDescriptionKey;
              v52 = v34;
              v35 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
              v36 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v35];
LABEL_25:
              v33 = v36;

              v32 = 0;
              goto LABEL_26;
            }

            v30 = v9;
LABEL_16:
            ++v13;
            v9 = v30;
          }

          v12 = v40 + 1;
          v11 = v38;
          if ((v40 + 1) != v39)
          {
            continue;
          }

          break;
        }

        v8 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v8);
    }

    v31 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v50 = v9;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "parsed %lu chosen gradients", buf, 0xCu);
    }

    evaluate = [(SMTGlobalNNLM *)self evaluate];
  }

  v32 = evaluate;
  v33 = v32;
LABEL_26:

  return v33;
}

- (id)train
{
  v55 = +[NSMutableArray array];
  v3 = objc_autoreleasePoolPush();
  v92[0] = 0;
  v4 = [(SMTGlobalNNLM *)self getTrainTask:v92];
  v5 = v92[0];
  context = v3;
  if (!v4 || v5)
  {
    v19 = v5;
    v20 = 0;
    fofeTrainSource = v19;
    goto LABEL_35;
  }

  v54 = v4;
  v50 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingOutputs"];
  v6 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateName"];
  v7 = v6 == 0;

  if (v7)
  {
    v51 = 0;
    goto LABEL_16;
  }

  v8 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateName"];
  v9 = [v4 getTensorNamed:v8];

  dataPointer = [v9 dataPointer];
  v11 = qword_10003FF18;
  if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
  {
    v12 = *dataPointer;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "The learning rate embedded in the training graph is %f", &buf, 0xCu);
  }

  v13 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateValue"];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateValue"];
    [v15 floatValue];
    *dataPointer = v16;

    v17 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateName"];
    v91 = 0;
    [v54 setTensorNamed:v17 withValue:v9 error:&v91];
    v51 = v91;

    v18 = qword_10003FF18;
    if (v51)
    {
      if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to override learning rate", &buf, 2u);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      v22 = *dataPointer;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Override learning rate with value %f", &buf, 0xCu);
    }
  }

  v51 = 0;
LABEL_15:

LABEL_16:
  v23 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"batchPerUpdate"];
  unsignedIntValue = [v23 unsignedIntValue];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v101 = 0x3032000000;
  v102 = sub_100008240;
  v103 = sub_100008250;
  v104 = objc_opt_new();
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_100008240;
  v89 = sub_100008250;
  v25 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"sparseGlobals"];
  v26 = v25;
  v27 = &__NSArray0__struct;
  if (v25)
  {
    v27 = v25;
  }

  v90 = v27;

  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v84 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v28 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"l2ClipNorm"];
  [v28 floatValue];
  if (v29 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v82 = v30;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v31 = v80[6];
  v78 = v31 > 0.0;
  v32 = qword_10003FF18;
  v33 = os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO);
  if (v31 <= 0.0)
  {
    if (!v33)
    {
      goto LABEL_27;
    }

    LOWORD(v97) = 0;
    v34 = "Gradients are not clipped";
    v35 = v32;
    v36 = 2;
  }

  else
  {
    if (!v33)
    {
      goto LABEL_27;
    }

    LODWORD(v97) = 134217984;
    *(&v97 + 4) = v31;
    v34 = "Gradients are clipped by global L2Norm of %f";
    v35 = v32;
    v36 = 12;
  }

  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v34, &v97, v36);
LABEL_27:
  *&v97 = 0;
  *(&v97 + 1) = &v97;
  v98 = 0x2020000000;
  v99 = unsignedIntValue > 0;
  if (unsignedIntValue >= 1)
  {
    v37 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      v38 = v86[5];
      *v95 = 138412290;
      v96 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Gradient of %@ are accumulated in a sparse fashion", v95, 0xCu);
    }
  }

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100008258;
  v67[3] = &unk_100038998;
  v39 = v50;
  v68 = v39;
  v69 = v55;
  selfCopy = self;
  v72 = v83;
  p_buf = &buf;
  v74 = v77;
  v75 = &v79;
  v76 = &v97;
  v40 = v54;
  v71 = v40;
  v52 = objc_retainBlock(v67);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000088C4;
  v57[3] = &unk_1000389C0;
  v41 = v39;
  v58 = v41;
  selfCopy2 = self;
  v60 = v83;
  v61 = &buf;
  v66 = unsignedIntValue;
  v62 = &v85;
  v63 = v77;
  v64 = &v79;
  v65 = &v97;
  v42 = objc_retainBlock(v57);
  v43 = objc_opt_new();
  v44 = objc_retainBlock(v52);
  [v43 setObject:v44 forKeyedSubscript:ETCallbackTypeEpoch];

  if (*(*(&v97 + 1) + 24) == 1)
  {
    v45 = objc_retainBlock(v42);
    [v43 setObject:v45 forKeyedSubscript:ETCallbackTypeBatch];
  }

  [(SMTTextProcessorTrain *)self->_textProcessorTrain shuffleSamples];
  [(SMTDataSourceTrain *)self->_fofeTrainSource setVectorsWithProcessor:self->_textProcessorTrain];
  fofeTrainSource = self->_fofeTrainSource;
  v46 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"numberOfEpochs"];
  v56 = v51;
  v20 = [v40 doTrainingOnData:fofeTrainSource forNumberOfEpochs:objc_msgSend(v46 withCallback:"intValue") error:{v43, &v56}];
  v19 = v56;

  if ((v20 & 1) == 0)
  {
    v93[0] = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithFormat:@"Training failed with error."];
    v93[1] = NSUnderlyingErrorKey;
    v94[0] = v47;
    v94[1] = v19;
    v48 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];
    fofeTrainSource = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v48];
  }

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(&v85, 8);

  _Block_object_dispose(&buf, 8);
  v4 = v54;
LABEL_35:

  objc_autoreleasePoolPop(context);
  if (v20)
  {
    [(NSMutableDictionary *)self->_results setObject:v55 forKeyedSubscript:@"TrainingCostOfEachBatch"];
    fofeTrainSource = 0;
    self->_weightsAreUpdated = 1;
  }

  return fofeTrainSource;
}

- (id)evaluate
{
  context = objc_autoreleasePoolPush();
  v85[0] = 0;
  v3 = [(SMTGlobalNNLM *)self getEvalTask:v85];
  v4 = v85[0];
  if (!v3 || v4)
  {
    goto LABEL_7;
  }

  v5 = qword_10003FF18;
  if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Evaluation model loaded", buf, 2u);
  }

  if (self->_weightsAreUpdated)
  {
    v4 = [(SMTGlobalNNLM *)self restoreFromLatestWeights:v3];
    if (v4)
    {
LABEL_7:
      v69 = v4;
      v61 = v69;
      goto LABEL_59;
    }
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = self->_evalData;
  v66 = v3;
  selfCopy = self;
  v55 = [(NSMutableArray *)obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v55)
  {
    v59 = 0;
    v6 = 0;
    v56 = *v82;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        v69 = v6;
        if (*v82 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v62 = [*(*(&v81 + 1) + 8 * i) mutableCopy];
        [(SMTTextProcessorInference *)self->_textProcessorInference resetWithBOS:[(SMTKaldiVocab *)self->_vocab beginOfSentenceIndex]];
        endOfSentenceToken = [(SMTKaldiVocab *)self->_vocab endOfSentenceToken];
        [v62 addObject:endOfSentenceToken];

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v63 = v62;
        v9 = [v63 countByEnumeratingWithState:&v77 objects:v92 count:16];
        if (v9)
        {
          v65 = *v78;
          while (2)
          {
            v10 = 0;
            v64 = v9;
            v59 += v9;
            do
            {
              if (*v78 != v65)
              {
                objc_enumerationMutation(v63);
              }

              v68 = *(*(&v77 + 1) + 8 * v10);
              [(SMTTextProcessorInference *)selfCopy->_textProcessorInference addText:?];
              [(SMTDataSourceInference *)selfCopy->_fofeInferenceSource setVectorsWithProcessor:selfCopy->_textProcessorInference];
              v11 = objc_autoreleasePoolPush();
              fofeInferenceSource = selfCopy->_fofeInferenceSource;
              v76 = v69;
              v13 = [v66 doInferenceOnData:fofeInferenceSource error:&v76];
              v14 = v76;

              if (v13)
              {
                v15 = v14 == 0;
              }

              else
              {
                v15 = 0;
              }

              v16 = v15;
              v67 = v16;
              if (v15)
              {
                v75 = 0;
                v17 = [v13 dataPointAtIndex:0 error:&v75];
                v69 = v75;
                v71 = 0u;
                v72 = 0u;
                v73 = 0u;
                v74 = 0u;
                v25 = v17;
                v18 = [v25 countByEnumeratingWithState:&v71 objects:v89 count:16];
                if (v18)
                {
                  v19 = *v72;
                  do
                  {
                    for (j = 0; j != v18; j = j + 1)
                    {
                      if (*v72 != v19)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v21 = *(*(&v71 + 1) + 8 * j);
                      v22 = [v25 objectForKeyedSubscript:v21];
                      dataPointer = [v22 dataPointer];

                      v24 = *dataPointer;
                      v7 = v7 + v24;
                    }

                    v18 = [v25 countByEnumeratingWithState:&v71 objects:v89 count:16];
                  }

                  while (v18);
                }
              }

              else
              {
                v90[0] = NSLocalizedDescriptionKey;
                v90[1] = NSUnderlyingErrorKey;
                v91[0] = @"Call to doInferenceOnData during evaluation failed.";
                v91[1] = v14;
                v25 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
                v61 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v25];
                v69 = v14;
              }

              objc_autoreleasePoolPop(v11);
              if (!v67)
              {

                goto LABEL_58;
              }

              v10 = v10 + 1;
            }

            while (v10 != v64);
            v9 = [v63 countByEnumeratingWithState:&v77 objects:v92 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v6 = v69;
        self = selfCopy;
      }

      v55 = [(NSMutableArray *)obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v55);
  }

  else
  {
    v59 = 0;
    v6 = 0;
    v7 = 0.0;
  }

  v69 = v6;

  v26 = [(NSMutableDictionary *)selfCopy->_results objectForKeyedSubscript:@"NumWordsInEvaluation"];
  v27 = v26;
  if (!v26)
  {
    v26 = &off_10003B180;
  }

  intValue = [v26 intValue];

  if (intValue >= 1 && intValue != v59)
  {
    v30 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v87 = intValue;
      *&v87[4] = 1024;
      *&v87[6] = v59;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Data size mismatch. %d tokens were fetched while %d words were evaluated", buf, 0xEu);
    }
  }

  if (selfCopy->_weightsAreUpdated)
  {
    if (selfCopy->_mmappedPartialWeights)
    {
      *&v29 = v7;
      v31 = [NSNumber numberWithFloat:v29];
      [(NSMutableDictionary *)selfCopy->_results setObject:v31 forKeyedSubscript:@"TotalEvalCostWithPartialUpdate"];

      v32 = v7 / v59;
      v33 = expf(v32);
      *&v34 = v32;
      v35 = [NSNumber numberWithFloat:v34];
      [(NSMutableDictionary *)selfCopy->_results setObject:v35 forKeyedSubscript:@"EvaluationCostWithPartialUpdate"];

      *&v36 = v33;
      v37 = [NSNumber numberWithFloat:v36];
      [(NSMutableDictionary *)selfCopy->_results setObject:v37 forKeyedSubscript:@"EvaluationPPLWithPartialUpdate"];

      v38 = qword_10003FF18;
      if (!os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 134218240;
      *v87 = v32;
      *&v87[8] = 2048;
      v88 = v33;
      v39 = "evaluation cost/PPL with partial update: %.2f/%.2f";
    }

    else
    {
      *&v29 = v7;
      v47 = [NSNumber numberWithFloat:v29];
      [(NSMutableDictionary *)selfCopy->_results setObject:v47 forKeyedSubscript:@"TotalEvalCostAfterTraining"];

      v48 = v7 / v59;
      v49 = expf(v48);
      *&v50 = v48;
      v51 = [NSNumber numberWithFloat:v50];
      [(NSMutableDictionary *)selfCopy->_results setObject:v51 forKeyedSubscript:@"EvaluationCostAfterTraining"];

      *&v52 = v49;
      v53 = [NSNumber numberWithFloat:v52];
      [(NSMutableDictionary *)selfCopy->_results setObject:v53 forKeyedSubscript:@"EvaluationPPLAfterTraining"];

      v38 = qword_10003FF18;
      if (!os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 134218240;
      *v87 = v48;
      *&v87[8] = 2048;
      v88 = v49;
      v39 = "evaluation cost/PPL after training: %.2f/%.2f";
    }
  }

  else
  {
    *&v29 = v7;
    v40 = [NSNumber numberWithFloat:v29];
    [(NSMutableDictionary *)selfCopy->_results setObject:v40 forKeyedSubscript:@"TotalEvalCostBeforeTraining"];

    v41 = v7 / v59;
    v42 = expf(v41);
    *&v43 = v41;
    v44 = [NSNumber numberWithFloat:v43];
    [(NSMutableDictionary *)selfCopy->_results setObject:v44 forKeyedSubscript:@"EvaluationCostBeforeTraining"];

    *&v45 = v42;
    v46 = [NSNumber numberWithFloat:v45];
    [(NSMutableDictionary *)selfCopy->_results setObject:v46 forKeyedSubscript:@"EvaluationPPLBeforeTraining"];

    v38 = qword_10003FF18;
    if (!os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_57;
    }

    *buf = 134218240;
    *v87 = v41;
    *&v87[8] = 2048;
    v88 = v42;
    v39 = "evaluation cost/PPL before training: %.2f/%.2f";
  }

  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v39, buf, 0x16u);
LABEL_57:
  v61 = 0;
LABEL_58:
  v3 = v66;
LABEL_59:

  objc_autoreleasePoolPop(context);

  return v61;
}

- (id)restoreFromLatestWeights:(id)weights
{
  weightsCopy = weights;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals", 0];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      v10 = [weightsCopy getTensorNamed:v9 directBind:1];
      v11 = [(NSDictionary *)self->_tensors objectForKeyedSubscript:v9];
      v12 = sub_100009230(v11, v10);

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (id)getTrainTask:(id *)task
{
  v51[0] = @"trainingGraph";
  v51[1] = @"inferenceInputs";
  v51[2] = @"inferenceOutputs";
  v51[3] = @"trainingInputs";
  v51[4] = @"trainingOutputs";
  v51[5] = @"trainingGlobals";
  v51[6] = @"numberOfEpochs";
  [NSArray arrayWithObjects:v51 count:7];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v5 = v41 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v6)
  {
    v7 = *v41;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_recipe objectForKey:v9];
        v11 = v10 == 0;

        if (v11)
        {
          v27 = [NSString stringWithFormat:@"Unable to read recipe[%@]", v9];
          v13 = v27;
          if (task)
          {
            v48 = NSLocalizedDescriptionKey;
            v49 = v27;
            v28 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            *task = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v28];
          }

          v26 = 0;
          v12 = v5;
          goto LABEL_44;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGraph"];
  v9 = [objc_opt_class() attachmentURL:self->_attachments withName:v12];
  if (v9)
  {
    v13 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingOutputs"];
    v35 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingInputs"];
    v14 = [ETModelDefinition alloc];
    v15 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceInputs"];
    v16 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceOutputs"];
    v17 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"checkpointName"];
    v39 = 0;
    v36 = [v14 initWithTrainingNetworkPath:v9 inferenceInputs:v15 inferenceOutputs:v16 trainingInputs:v35 trainingOutputs:v13 trainingControlVariableName:@"is_training" withInitializer:v17 error:&v39];
    v18 = v39;

    if (v18 || !v36)
    {
      if (!task)
      {
        v26 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v29 = [NSMutableDictionary dictionaryWithObject:@"Unable to create ETModelDefinition (train)" forKey:NSLocalizedDescriptionKey];
      v19 = v29;
      if (v18)
      {
        [v29 setObject:v18 forKey:NSUnderlyingErrorKey];
      }

      [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v19];
      *task = v26 = 0;
    }

    else
    {
      v38 = 0;
      v34 = [[ETTaskDefinition alloc] initWithTrainingModelDefinition:v36 forPlatform:1 error:&v38];
      v18 = v38;
      v19 = v34;
      if (v18 || !v34)
      {
        if (!task)
        {
          v26 = 0;
          goto LABEL_42;
        }

        v30 = [NSMutableDictionary dictionaryWithObject:@"Unable to create ETTaskDefinition (training)" forKey:NSLocalizedDescriptionKey];
        v31 = v30;
        if (v18)
        {
          [v30 setObject:v18 forKey:NSUnderlyingErrorKey];
        }

        *task = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v31];
      }

      else
      {
        v20 = qword_10003FF18;
        if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Training model loaded", buf, 2u);
        }

        numParam = self->_numParam;
        v22 = [(SMTGlobalNNLM *)self _fetchTensorInfo:v34];
        v23 = [v22 objectForKeyedSubscript:@"totalSize"];
        LOBYTE(numParam) = numParam == [v23 unsignedLongValue];

        if (numParam)
        {
          v19 = v34;
          v24 = v34;
          if (task)
          {
            v25 = [(SMTGlobalNNLM *)self restoreFromLatestWeights:v34];
            *task = v25;
            v19 = v34;
            if (v25)
            {
              v24 = 0;
            }

            else
            {
              v24 = v34;
            }
          }

          v26 = v24;
          v18 = 0;
          goto LABEL_42;
        }

        if (task)
        {
          v44 = NSLocalizedDescriptionKey;
          v45 = @"Unexpected number of paramters changed (training, this[%lu] vs previous[%lu])";
          v32 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          *task = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v32];
        }

        v18 = 0;
      }

      v26 = 0;
      v19 = v34;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (!task)
  {
    v9 = 0;
    v26 = 0;
    goto LABEL_45;
  }

  v46 = NSLocalizedDescriptionKey;
  v47 = @"training model is not attached";
  v13 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v13];
  v9 = 0;
  *task = v26 = 0;
LABEL_44:

LABEL_45:

  return v26;
}

- (id)getEvalTask:(id *)task
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v34[0] = @"inferenceInputs";
  v34[1] = @"inferenceOutputs";
  v34[2] = @"inferenceGraph";
  v5 = [NSArray arrayWithObjects:v34 count:3];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (!v6)
  {
LABEL_9:

    v5 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceInputs"];
    v12 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceOutputs"];
    v13 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceGraph"];
    v14 = [objc_opt_class() attachmentURL:self->_attachments withName:v13];
    v15 = [ETModelDefinition alloc];
    v16 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"checkpointName"];
    v27 = 0;
    v17 = [v15 initWithTrainingNetworkPath:v14 inferenceInputs:v5 inferenceOutputs:v12 trainingInputs:v5 trainingOutputs:v12 trainingControlVariableName:@"is_training" withInitializer:v16 error:&v27];
    v18 = v27;

    if (v18 || !v17)
    {
      if (!task)
      {
        v20 = 0;
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v22 = [NSString stringWithFormat:@"Unable to create ETModelDefinition (evaluation)"];
      v19 = [NSMutableDictionary dictionaryWithObject:v22 forKey:NSLocalizedDescriptionKey];

      if (v18)
      {
        [v19 setObject:v18 forKey:NSUnderlyingErrorKey];
      }

      [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v19];
      *task = v20 = 0;
    }

    else
    {
      v26 = 0;
      v19 = [[ETTaskDefinition alloc] initWithTrainingModelDefinition:v17 forPlatform:1 error:&v26];
      v18 = v26;
      if (v18 || !v19)
      {
        if (task)
        {
          v23 = [NSMutableDictionary dictionaryWithObject:@"Unable to create ETTaskDefinition (evaluation)" forKey:NSLocalizedDescriptionKey];
          v24 = v23;
          if (v18)
          {
            [v23 setObject:v18 forKey:NSUnderlyingErrorKey];
          }

          *task = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v24];
        }

        v20 = 0;
      }

      else
      {
        v19 = v19;
        v18 = 0;
        v20 = v19;
      }
    }

    goto LABEL_27;
  }

  v7 = *v29;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v29 != v7)
    {
      objc_enumerationMutation(v5);
    }

    v9 = *(*(&v28 + 1) + 8 * v8);
    v10 = [(NSDictionary *)self->_recipe valueForKey:v9];
    v11 = v10 == 0;

    if (v11)
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }

  v21 = [NSString stringWithFormat:@"Unable to read recipe[%@]", v9];
  v12 = v21;
  if (task)
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = v21;
    v13 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v13];
    *task = v20 = 0;
    goto LABEL_28;
  }

  v20 = 0;
LABEL_29:

  return v20;
}

- (id)setup
{
  v3 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"kaldiVocab"];

  if (!v3)
  {
    v113 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"No vocab filename specified in recipe."];
    v114 = v10;
    v7 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v7];
    goto LABEL_11;
  }

  v4 = objc_opt_class();
  attachments = self->_attachments;
  v6 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"kaldiVocab"];
  v7 = [v4 attachmentURL:attachments withName:v6];

  if (!v7)
  {
    v111 = NSLocalizedDescriptionKey;
    v12 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"kaldiVocab"];
    v14 = [NSString stringWithFormat:@"No vocab file attached: %@", v12];
    v112 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v15];

    v7 = 0;
    goto LABEL_9;
  }

  v8 = qword_10003FF18;
  if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v110 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attached vocabulary URL: %@", buf, 0xCu);
  }

  v94[0] = 0;
  v9 = [[SMTKaldiVocab alloc] initWithContentsOfUrl:v7 outError:v94];
  v10 = v94[0];
  vocab = self->_vocab;
  self->_vocab = v9;

  if (!v10)
  {
    v17 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Vocabulary loaded", buf, 2u);
    }

    partialUpdateOffsets = self->_partialUpdateOffsets;
    self->_partialUpdateOffsets = 0;

    v19 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"partialUpdateOffsetFile"];
    v20 = v19 == 0;

    if (v20)
    {
      goto LABEL_24;
    }

    v21 = objc_opt_class();
    v22 = self->_attachments;
    v23 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"partialUpdateOffsetFile"];
    v24 = [v21 attachmentURL:v22 withName:v23];

    if (v24)
    {
      v93 = 0;
      v25 = [NSData dataWithContentsOfURL:v24 options:1 error:&v93];
      v26 = v93;
      if (v26)
      {
        v10 = v26;
        v103 = NSLocalizedDescriptionKey;
        v104 = @"Unable to load partial update offsets";
        v27 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v27];

LABEL_43:
        v12 = v24;
        goto LABEL_10;
      }

      v92 = 0;
      v28 = [NSJSONSerialization JSONObjectWithData:v25 options:1 error:&v92];
      v10 = v92;
      if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v101 = NSLocalizedDescriptionKey;
        v102 = @"Unable to load _recipe[kRecipePartialUpdateOffsetFile] as json";
        v74 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:153 userInfo:v74];

        goto LABEL_43;
      }

      v29 = self->_partialUpdateOffsets;
      self->_partialUpdateOffsets = v28;

      self->_deltaIsPartial = 1;
LABEL_24:
      v100[0] = @"inferenceContextSize";
      v100[1] = @"trainingContextKey";
      v100[2] = @"trainingTargetKey";
      v100[3] = @"sequenceLength";
      v100[4] = @"numNoise";
      v100[5] = @"batchSize";
      v100[6] = @"trainingMaskKey";
      v100[7] = @"trainingNoiseKey";
      [NSArray arrayWithObjects:v100 count:8];
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v12 = v89 = 0u;
      v30 = [v12 countByEnumeratingWithState:&v88 objects:v99 count:16];
      if (v30)
      {
        v31 = *v89;
        while (2)
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v89 != v31)
            {
              objc_enumerationMutation(v12);
            }

            v33 = *(*(&v88 + 1) + 8 * i);
            v34 = [(NSDictionary *)self->_recipe valueForKey:v33];
            v35 = v34 == 0;

            if (v35)
            {
              v72 = [NSString stringWithFormat:@"Unable to read recipe[%@]", v33];
              v97 = NSLocalizedDescriptionKey;
              v98 = v72;
              v73 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
              v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v73];

              goto LABEL_9;
            }
          }

          v30 = [v12 countByEnumeratingWithState:&v88 objects:v99 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v36 = [SMTTextProcessorInference alloc];
      v37 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceContextSize"];
      v38 = -[SMTTextProcessorInference initWithLength:vocab:BOS:](v36, "initWithLength:vocab:BOS:", [v37 integerValue], self->_vocab, -[SMTKaldiVocab beginOfSentenceIndex](self->_vocab, "beginOfSentenceIndex"));
      textProcessorInference = self->_textProcessorInference;
      self->_textProcessorInference = v38;

      v40 = [SMTDataSourceInference alloc];
      v41 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceContextSize"];
      integerValue = [v41 integerValue];
      v43 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingContextKey"];
      v44 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingTargetKey"];
      v45 = [(SMTDataSourceInference *)v40 initWithLength:integerValue contextKey:v43 targetKey:v44];
      fofeInferenceSource = self->_fofeInferenceSource;
      self->_fofeInferenceSource = v45;

      v47 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"sequenceLength"];
      LODWORD(v41) = [v47 intValue];

      v48 = [[SMTTextProcessorTrain alloc] initWithVocab:self->_vocab];
      textProcessorTrain = self->_textProcessorTrain;
      self->_textProcessorTrain = v48;

      v50 = v41;
      trainData = self->_trainData;
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_10000C1DC;
      v87[3] = &unk_100038970;
      v87[4] = self;
      v87[5] = v41;
      [(NSMutableArray *)trainData enumerateObjectsUsingBlock:v87];
      v52 = [SMTDataSourceTrain alloc];
      numberSamples = [(SMTTextProcessorTrain *)self->_textProcessorTrain numberSamples];
      [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"numNoise"];
      v83 = v82 = numberSamples;
      LODWORD(numberSamples) = [v83 intValue];
      v81 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"batchSize"];
      intValue = [v81 intValue];
      vocabSize = [(SMTKaldiVocab *)self->_vocab vocabSize];
      v85 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingContextKey"];
      v84 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingTargetKey"];
      v56 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingMaskKey"];
      v57 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingNoiseKey"];
      v58 = [(SMTDataSourceTrain *)v52 initWithNumDataPoints:v82 sequenceLength:v50 noiseSize:numberSamples batchSize:intValue vocabSize:vocabSize contextKey:v85 targetKey:v84 maskKey:v56 noiseKey:v57];
      fofeTrainSource = self->_fofeTrainSource;
      self->_fofeTrainSource = v58;

      v60 = qword_10003FF18;
      if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Data feeder loaded", buf, 2u);
      }

      v86 = 0;
      v61 = [(SMTGlobalNNLM *)self getEvalTask:&v86];
      v62 = v86;
      v10 = v62;
      if (!v61 || v62)
      {
        v13 = v62;
      }

      else
      {
        v63 = [(SMTGlobalNNLM *)self _fetchTensorInfo:v61];
        v64 = [v63 objectForKeyedSubscript:@"tensorInfo"];
        tensorInfo = self->_tensorInfo;
        self->_tensorInfo = v64;

        v66 = [v63 objectForKeyedSubscript:@"totalSize"];
        self->_numParam = [v66 intValue];

        if (!sub_100006924(self->_recipe, @"enableMemoryMap", 0))
        {
          numParam = self->_numParam;
          operator new[]();
        }

        v67 = [[SMTSimpleMmapBuffer alloc] initWithData:0 ofSize:4 * self->_numParam];
        mmappedWeights = self->_mmappedWeights;
        self->_mmappedWeights = v67;

        v69 = self->_mmappedWeights;
        if (v69)
        {
          ptr = self->_weights.__ptr_;
          self->_weights.__ptr_ = 0;
          if (ptr)
          {
            operator delete[]();
          }

          dataPointer = [(SMTSimpleMmapBuffer *)v69 dataPointer];
          self->_weightsRawPtr = dataPointer;
          v76 = sub_10000726C(self->_tensorInfo, v61, dataPointer);
          tensors = self->_tensors;
          self->_tensors = v76;

          v78 = qword_10003FF18;
          if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "Initial weights and tensor shapes have been read from evaluation graph", buf, 2u);
          }

          v13 = 0;
        }

        else
        {
          v95 = NSLocalizedDescriptionKey;
          v96 = @"Unable to memory map the buffer";
          v80 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v80];
        }
      }

      goto LABEL_10;
    }

    v105 = NSLocalizedDescriptionKey;
    v106 = @"recipe[kRecipePartialUpdateOffsetFile] is configured but not resolved";
    v12 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v12];
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v107 = NSUnderlyingErrorKey;
  v108 = v10;
  v12 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v12];
LABEL_10:

LABEL_11:

  return v13;
}

- (id)loadData
{
  v3 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"language"];
  v4 = v3;
  if (!v3)
  {
    v3 = @"en-US";
  }

  v5 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  language = self->_language;
  self->_language = v5;

  v7 = sub_100006924(self->_recipe, @"mergeTrainDev", 0);
  if (v7)
  {
    objc_storeStrong(&self->_evalData, self->_trainData);
    v8 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "merge training and evaluation data and use them for both training and evaluation", buf, 2u);
    }
  }

  v9 = objc_autoreleasePoolPush();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = self->_trainData;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v10);
        }

        self->_numWordsTrain += [*(*(&v35 + 1) + 8 * i) count] + 1;
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_evalData;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        self->_numWordsEval += [*(*(&v31 + 1) + 8 * j) count] + 1;
      }

      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v15);
  }

  v18 = qword_10003FF18;
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v19)
    {
      v20 = [(NSMutableArray *)self->_trainData count];
      numWordsTrain = self->_numWordsTrain;
      *buf = 134218240;
      v40 = v20;
      v41 = 2048;
      v42 = numWordsTrain;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%lu sentences (%lu words) will be used for both traiing and evaluation data", buf, 0x16u);
    }

    v22 = self->_numWordsTrain + self->_numWordsEval;
    self->_numWordsTrain = v22;
    self->_numWordsEval = v22;
  }

  else
  {
    if (v19)
    {
      v23 = [(NSMutableArray *)self->_trainData count];
      v24 = self->_numWordsTrain;
      *buf = 134218240;
      v40 = v23;
      v41 = 2048;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%lu sentences (%lu words) will be used for traiing data", buf, 0x16u);
    }

    v25 = qword_10003FF18;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [(NSMutableArray *)self->_evalData count];
      numWordsEval = self->_numWordsEval;
      *buf = 134218240;
      v40 = v26;
      v41 = 2048;
      v42 = numWordsEval;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%lu sentences (%lu words) will be used for evaluation data", buf, 0x16u);
    }

    v22 = self->_numWordsTrain;
  }

  v28 = [NSNumber numberWithUnsignedInteger:v22];
  [(NSMutableDictionary *)self->_results setObject:v28 forKeyedSubscript:@"NumWordsInTraining"];

  v29 = [NSNumber numberWithUnsignedInteger:self->_numWordsEval];
  [(NSMutableDictionary *)self->_results setObject:v29 forKeyedSubscript:@"NumWordsInEvaluation"];

  objc_autoreleasePoolPop(v9);

  return 0;
}

- (SMTGlobalNNLM)initWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v16.receiver = self;
  v16.super_class = SMTGlobalNNLM;
  v6 = [(SMTGlobalNNLM *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipe, recipe);
    v7->_numParam = 0;
    v8 = objc_opt_new();
    trainData = v7->_trainData;
    v7->_trainData = v8;

    v10 = objc_opt_new();
    evalData = v7->_evalData;
    v7->_evalData = v10;

    v7->_weightsAreUpdated = 0;
    v7->_numWordsTrain = 0;
    v7->_numWordsEval = 0;
    v12 = objc_opt_new();
    results = v7->_results;
    v7->_results = v12;

    v7->_deltaIsPartial = 0;
    mmappedPartialWeights = v7->_mmappedPartialWeights;
    v7->_mmappedPartialWeights = 0;
  }

  return v7;
}

- (id)_fetchTensorInfo:(id)info
{
  infoCopy = info;
  v26 = objc_opt_new();
  v30 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v4)
  {
    v34 = 0;
    v28 = *v41;
    do
    {
      v5 = 0;
      v31 = v4;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [infoCopy getTensorNamed:v6 directBind:1];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = v7;
        shape = [v7 shape];
        v9 = [shape countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v9)
        {
          v10 = *v37;
          LODWORD(v11) = 1;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(shape);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              intValue = [v13 intValue];

              v11 = intValue * v11;
            }

            v9 = [shape countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v9);
        }

        else
        {
          v11 = 1;
        }

        v45[0] = v6;
        v44[0] = @"name";
        v44[1] = @"size";
        v32 = [NSNumber numberWithInt:v11];
        v45[1] = v32;
        v44[2] = @"shape";
        v15 = [NSMutableArray alloc];
        shape2 = [v35 shape];
        v17 = [v15 initWithArray:shape2 copyItems:1];
        v45[2] = v17;
        v44[3] = @"strides";
        v18 = [NSMutableArray alloc];
        strides = [v35 strides];
        v20 = [v18 initWithArray:strides copyItems:1];
        v45[3] = v20;
        v44[4] = @"offset";
        v21 = [NSNumber numberWithInt:v34];
        v45[4] = v21;
        v22 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:5];
        v23 = [v22 mutableCopy];
        [v30 setObject:v23 forKeyedSubscript:v6];

        objc_autoreleasePoolPop(context);
        v34 += v11;
        v5 = v5 + 1;
      }

      while (v5 != v31);
      v4 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v4);
  }

  else
  {
    v34 = 0;
  }

  [v26 setObject:v30 forKeyedSubscript:@"tensorInfo"];
  v24 = [NSNumber numberWithInt:v34];
  [v26 setObject:v24 forKeyedSubscript:@"totalSize"];

  return v26;
}

+ (id)compressedAttachmentURLFromRecipe:(id)recipe attachments:(id)attachments
{
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  v8 = [recipeCopy objectForKeyedSubscript:@"compressedAttachmentFilename"];
  if (v8)
  {
    v9 = [self attachmentURL:attachmentsCopy withName:v8];
    v10 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attached compressed file URL: %@", &v13, 0xCu);
    }

    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)attachmentURL:(id)l withName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v7 = [lCopy count];
  v8 = 0;
  if (nameCopy && v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D0AC;
    v11[3] = &unk_100038948;
    v12 = nameCopy;
    v9 = [lCopy indexOfObjectPassingTest:v11];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [lCopy objectAtIndexedSubscript:v9];
    }
  }

  return v8;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10003FF18 = os_log_create("com.apple.speech.speechmodeltraining", "SMTGlobalNNLM");

    _objc_release_x1();
  }
}

@end