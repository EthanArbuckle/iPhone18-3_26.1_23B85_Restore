@interface VCPVideoCNNActionClassifier
+ (float)thresholdForClass:(id)class isHighPrecision:(BOOL)precision;
+ (id)sharedModel:(id)model inputNames:(id)names properties:(id)properties;
+ (id)sharedModelStage1:(id)stage1 inputNames:(id)names properties:(id)properties;
- (VCPVideoCNNActionClassifier)initWithPHFaces:(id)faces;
- (id).cxx_construct;
- (id)results;
- (int)run:(id)run withPersons:(id)persons andRegionCrop:(CGRect)crop atTime:(id *)time andDuration:(id *)duration;
@end

@implementation VCPVideoCNNActionClassifier

+ (float)thresholdForClass:(id)class isHighPrecision:(BOOL)precision
{
  precisionCopy = precision;
  v16 = *MEMORY[0x1E69E9840];
  classCopy = class;
  switch([classCopy intValue])
  {
    case 0u:
      v10 = !precisionCopy;
      v11 = 0.95;
      goto LABEL_23;
    case 1u:
      v6 = !precisionCopy;
      v7 = 0.3;
      v9 = 0.671;
      goto LABEL_34;
    case 2u:
      v6 = !precisionCopy;
      v7 = 0.6;
      goto LABEL_28;
    case 3u:
      v6 = !precisionCopy;
      v7 = 0.6;
      v9 = 0.92;
      goto LABEL_34;
    case 4u:
      v6 = !precisionCopy;
      v7 = 0.35;
      goto LABEL_33;
    case 5u:
      v6 = !precisionCopy;
      v7 = 0.376;
      v9 = 0.65;
      goto LABEL_34;
    case 6u:
    case 0x16u:
      v6 = !precisionCopy;
      v7 = 0.4;
      goto LABEL_15;
    case 7u:
      v6 = !precisionCopy;
      v7 = 0.45;
LABEL_28:
      v9 = 0.8;
      goto LABEL_34;
    case 8u:
      v10 = !precisionCopy;
      v11 = 0.6;
LABEL_23:
      v12 = 0.5;
      goto LABEL_24;
    case 9u:
      v6 = !precisionCopy;
      v7 = 0.683;
      v9 = 0.87;
      goto LABEL_34;
    case 0xBu:
      v6 = !precisionCopy;
      v7 = 0.2;
LABEL_15:
      v9 = 0.9;
      goto LABEL_34;
    case 0xDu:
      v10 = !precisionCopy;
      v11 = 0.82;
      v12 = 0.25;
LABEL_24:
      if (v10)
      {
        v8 = v12;
      }

      else
      {
        v8 = v11;
      }

      break;
    case 0xEu:
      v6 = !precisionCopy;
      v7 = 0.2;
      goto LABEL_11;
    case 0xFu:
      v6 = !precisionCopy;
      v7 = 0.3;
      v9 = 0.75;
      goto LABEL_34;
    case 0x11u:
      v6 = !precisionCopy;
      v7 = 0.638;
      v9 = 0.82;
      goto LABEL_34;
    case 0x12u:
      v6 = !precisionCopy;
      v7 = 0.4;
      goto LABEL_31;
    case 0x13u:
      v6 = !precisionCopy;
      v7 = 0.364;
LABEL_31:
      v9 = 0.7;
      goto LABEL_34;
    case 0x14u:
      v6 = !precisionCopy;
      v7 = 0.3;
      v9 = 0.55;
      goto LABEL_34;
    case 0x15u:
      v6 = !precisionCopy;
      v7 = 0.35;
LABEL_11:
      v9 = 0.85;
      goto LABEL_34;
    case 0x19u:
      v6 = !precisionCopy;
      v7 = 0.4;
LABEL_33:
      v9 = 0.5;
LABEL_34:
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = v9;
      }

      break;
    default:
      v8 = 1.1;
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = classCopy;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid class ID for HAR %@", &v14, 0xCu);
      }

      break;
  }

  return v8;
}

+ (id)sharedModel:(id)model inputNames:(id)names properties:(id)properties
{
  modelCopy = model;
  namesCopy = names;
  propertiesCopy = properties;
  v10 = +[VCPSharedInstanceManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__VCPVideoCNNActionClassifier_sharedModel_inputNames_properties___block_invoke;
  v16[3] = &unk_1E834E480;
  v11 = modelCopy;
  v17 = v11;
  v12 = namesCopy;
  v18 = v12;
  v13 = propertiesCopy;
  v19 = v13;
  v14 = [v10 sharedInstanceWithIdentifier:@"VCPVideoCNNActionClassifierEspresso" andCreationBlock:v16];

  return v14;
}

VCPCNNModelEspresso *__65__VCPVideoCNNActionClassifier_sharedModel_inputNames_properties___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:a1[4] inputNames:a1[5] outputNames:0 properties:a1[6]];

  return v1;
}

+ (id)sharedModelStage1:(id)stage1 inputNames:(id)names properties:(id)properties
{
  stage1Copy = stage1;
  namesCopy = names;
  propertiesCopy = properties;
  v10 = +[VCPSharedInstanceManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__VCPVideoCNNActionClassifier_sharedModelStage1_inputNames_properties___block_invoke;
  v16[3] = &unk_1E834E480;
  v11 = stage1Copy;
  v17 = v11;
  v12 = namesCopy;
  v18 = v12;
  v13 = propertiesCopy;
  v19 = v13;
  v14 = [v10 sharedInstanceWithIdentifier:@"VCPVideoCNNActionClassifierEspressoStage1" andCreationBlock:v16];

  return v14;
}

VCPCNNModelEspresso *__71__VCPVideoCNNActionClassifier_sharedModelStage1_inputNames_properties___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:a1[4] inputNames:a1[5] outputNames:0 properties:a1[6]];

  return v1;
}

- (VCPVideoCNNActionClassifier)initWithPHFaces:(id)faces
{
  v43[2] = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v40.receiver = self;
  v40.super_class = VCPVideoCNNActionClassifier;
  v5 = [(VCPVideoCNNActionClassifier *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v7 = DeviceGeqD5x();
    v42[0] = @"forceNNGraph";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v7 ^ 1];
    v43[0] = v8;
    v42[1] = @"sharedContext";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v43[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

    array = [MEMORY[0x1E695DF70] array];
    phFaces = v5->_phFaces;
    v5->_phFaces = array;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = facesCopy;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [(NSMutableArray *)v5->_phFaces addObject:*(*(&v36 + 1) + 8 * i), v36];
        }

        v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v14);
    }

    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v19 = [MEMORY[0x1E695DFF8] URLWithString:@"action_recognition_head.espresso.net" relativeToURL:resourceURL];
    v20 = [MEMORY[0x1E695DFF8] URLWithString:@"action_taxonomy.plist" relativeToURL:resourceURL];
    v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfURL:v20];
    taxonomy = v5->_taxonomy;
    v5->_taxonomy = v21;

    if ([(NSArray *)v5->_taxonomy count]== 35)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      results = v5->_results;
      v5->_results = array2;

      inputNames = v5->_inputNames;
      v5->_inputNames = &unk_1F49BF178;

      std::vector<void *>::resize(&v5->_inputsData.__begin_, [(NSArray *)v5->_inputNames count]);
      if (DeviceHasANE())
      {
        v26 = [objc_opt_class() sharedModel:v19 inputNames:v5->_inputNames properties:0];
      }

      else
      {
        v26 = [[VCPCNNModelEspresso alloc] initWithParameters:v19 inputNames:v5->_inputNames outputNames:0 properties:0];
      }

      modelEspresso = v5->_modelEspresso;
      v5->_modelEspresso = v26;

      v28 = v5->_modelEspresso;
      if (v28)
      {
        if (![(VCPCNNModelEspresso *)v28 prepareModelWithConfig:&stru_1F496CB30])
        {
          v29 = [MEMORY[0x1E695DFF8] URLWithString:@"action_recognition_head_stage1.espresso.net" relativeToURL:resourceURL];

          if (DeviceHasANE())
          {
            v30 = [objc_opt_class() sharedModelStage1:v29 inputNames:0 properties:v10];
          }

          else
          {
            v30 = [[VCPCNNModelEspresso alloc] initWithParameters:v29 inputNames:0 outputNames:0 properties:v10];
          }

          modelEspressoStage1 = v5->_modelEspressoStage1;
          v5->_modelEspressoStage1 = v30;

          v32 = v5->_modelEspressoStage1;
          if (v32)
          {
            v33 = [(VCPCNNModelEspresso *)v32 prepareModelWithConfig:&stru_1F496CB30]== 0;

            if (v33)
            {
              v6 = v5;
              goto LABEL_24;
            }

LABEL_23:
            v6 = 0;
            goto LABEL_24;
          }

          v19 = v29;
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  v34 = v6;

  return v34;
}

- (int)run:(id)run withPersons:(id)persons andRegionCrop:(CGRect)crop atTime:(id *)time andDuration:(id *)duration
{
  v144 = *MEMORY[0x1E69E9840];
  runCopy = run;
  personsCopy = persons;
  if (!personsCopy && ![(NSMutableArray *)self->_phFaces count])
  {
    v65 = 0;
    goto LABEL_83;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_phFaces count])
  {
    if ([(NSMutableArray *)self->_phFaces count]>= 4)
    {
      [(NSMutableArray *)self->_phFaces sortUsingComparator:&__block_literal_global_85];
      v9 = [(NSMutableArray *)self->_phFaces subarrayWithRange:0, 3];
      v10 = [v9 mutableCopy];
      phFaces = self->_phFaces;
      self->_phFaces = v10;
    }

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v12 = self->_phFaces;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v129 objects:v143 count:16];
    if (v13)
    {
      v14 = *v130;
      v15 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v130 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v129 + 1) + 8 * i);
          [v17 bodyWidth];
          v19 = v18;
          [v17 bodyHeight];
          if (v19 * v20 == 0.0)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              localIdentifier = [v17 localIdentifier];
              LODWORD(buf[0].value) = 138412290;
              *(&buf[0].value + 4) = localIdentifier;
              _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEBUG, "Action classifier - empty torso bound in PHFace %@", buf, 0xCu);
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              localIdentifier2 = [v17 localIdentifier];
              LODWORD(buf[0].value) = 138412290;
              *(&buf[0].value + 4) = localIdentifier2;
              _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEBUG, "Action classifier - found torso bound in PHFace %@", buf, 0xCu);
            }

            [v17 bodyCenterX];
            v24 = v23;
            [v17 bodyWidth];
            v26 = v25;
            [v17 bodyCenterY];
            v28 = v27;
            [v17 bodyHeight];
            v30 = v29;
            [v17 bodyWidth];
            v32 = v31;
            [v17 bodyHeight];
            v34 = v33;
            localIdentifier3 = [v17 localIdentifier];
            v36 = localIdentifier3 == 0;

            v37 = v24 + v26 * -0.5;
            v38 = v28 + v30 * -0.5;
            if (!v36)
            {
              v145.origin.x = v37;
              v145.origin.y = v28 + v30 * -0.5;
              v145.size.width = v32;
              v145.size.height = v34;
              v39 = NSStringFromRect(v145);
              localIdentifier4 = [v17 localIdentifier];
              [dictionary3 setObject:v39 forKeyedSubscript:localIdentifier4];
            }

            if (!CGRectIsEmpty(crop))
            {
              v37 = fmax(v37 - crop.origin.x, 0.0) / crop.size.width;
              v38 = fmax(v38 - crop.origin.y, 0.0) / crop.size.height;
              v32 = fmin(v32 / crop.size.width, 0.99000001 - v37);
              v34 = fmin(v34 / crop.size.height, 0.99000001 - v38);
            }

            v146.origin.x = v37;
            v146.origin.y = v38;
            v146.size.width = v32;
            v146.size.height = v34;
            v41 = NSStringFromRect(v146);
            [array addObject:v41];
            localIdentifier5 = [v17 localIdentifier];
            v43 = localIdentifier5 == 0;

            if (!v43)
            {
              localIdentifier6 = [v17 localIdentifier];
              [dictionary setObject:localIdentifier6 forKeyedSubscript:v41];
            }
          }
        }

        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v129 objects:v143 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v128 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v12 = personsCopy;
    v45 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v125 objects:v142 count:16];
    if (v45)
    {
      v46 = *v126;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v126 != v46)
          {
            objc_enumerationMutation(v12);
          }

          v48 = *(*(&v125 + 1) + 8 * j);
          [v48 bounds];
          v49 = NSStringFromRect(v147);
          [array addObject:v49];
          torsoprint = [v48 torsoprint];
          v51 = torsoprint == 0;

          if (!v51)
          {
            torsoprint2 = [v48 torsoprint];
            [dictionary2 setObject:torsoprint2 forKeyedSubscript:v49];
          }
        }

        v45 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v125 objects:v142 count:16];
      }

      while (v45);
    }
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = array;
  v53 = [obj countByEnumeratingWithState:&v121 objects:v141 count:16];
  if (!v53)
  {
    v65 = 0;
    goto LABEL_82;
  }

  v114 = 0;
  v54 = 0;
  v111 = *v122;
  __asm { FMOV            V0.2D, #1.0 }

  v108 = _Q0;
  while (2)
  {
    v110 = v53;
    for (k = 0; k != v110; ++k)
    {
      if (*v122 != v111)
      {
        objc_enumerationMutation(obj);
      }

      v61 = *(*(&v121 + 1) + 8 * k);
      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      v148 = NSRectFromString(v61);
      if (v148.size.height * v148.size.width >= 0.00499999989)
      {
        if (v114 > 2)
        {
          v65 = 0;
        }

        else
        {
          v149 = CGRectInset(v148, v148.size.width * -0.25, v148.size.height * -0.25);
          v138 = 0;
          v149.origin.y = 1.0 - v149.origin.y;
          v63.f64[0] = v149.origin.x;
          v63.f64[1] = v149.origin.y - v149.size.height;
          v139 = vcvt_f32_f64(vmaxnmq_f64(v63, 0));
          v149.origin.x = v149.origin.x + v149.size.width;
          y = v149.origin.y;
          v140 = vcvt_f32_f64(vminnmq_f64(v149.origin, v108));
          if ((v54 & 1) == 0)
          {
            v65 = -[VCPCNNModelEspresso espressoForward:](self->_modelEspressoStage1, "espressoForward:", [runCopy outputRes4]);
            if (v65)
            {
              goto LABEL_81;
            }
          }

          modelEspressoStage1 = self->_modelEspressoStage1;
          if (modelEspressoStage1)
          {
            [(VCPCNNModelEspresso *)modelEspressoStage1 outputBlob];
            value = buf[0].value;
          }

          else
          {
            value = 0;
          }

          *self->_inputsData.__begin_ = value;
          *(self->_inputsData.__begin_ + 1) = &v138;
          modelEspresso = self->_modelEspresso;
          v119 = 0;
          v120 = 0;
          __p = 0;
          std::vector<float *>::__init_with_size[abi:ne200100]<float **,float **>(&__p, self->_inputsData.__begin_, self->_inputsData.__end_, self->_inputsData.__end_ - self->_inputsData.__begin_);
          v65 = [(VCPCNNModelEspresso *)modelEspresso espressoForwardInputs:&__p];
          if (__p)
          {
            v119 = __p;
            operator delete(__p);
          }

          if (v65)
          {
            goto LABEL_81;
          }

          v69 = self->_modelEspresso;
          if (!v69)
          {
            goto LABEL_80;
          }

          [(VCPCNNModelEspresso *)v69 outputBlob];
          v70 = buf[0].value;
          if (!buf[0].value)
          {
            goto LABEL_80;
          }

          v71 = 0;
          ++v114;
          v72 = 0.0;
          do
          {
            v72 = v72 + expf(*(v70 + v71));
            v71 += 4;
          }

          while (v71 != 140);
          for (m = 0; m != 35; ++m)
          {
            if ((expf(*(v70 + 4 * m)) / v72) > 0.1)
            {
              v74 = [MEMORY[0x1E696AD98] numberWithFloat:?];
              v75 = [MEMORY[0x1E696AD98] numberWithInt:m];
              stringValue = [v75 stringValue];
              [dictionary4 setObject:v74 forKeyedSubscript:stringValue];
            }
          }

          allKeys = [dictionary4 allKeys];
          v78 = [allKeys count] == 0;

          if (v78)
          {
            goto LABEL_72;
          }

          v150 = NSRectFromString(v61);
          x = v150.origin.x;
          v80 = v150.origin.y;
          width = v150.size.width;
          height = v150.size.height;
          v83 = [dictionary objectForKeyedSubscript:v61];
          if (!v83 || ([dictionary objectForKeyedSubscript:v61], v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary3, "objectForKeyedSubscript:", v84), v85 = objc_claimAutoreleasedReturnValue(), v86 = v85 == 0, v85, v84, v83, v86))
          {
            if (!CGRectIsEmpty(crop))
            {
              x = crop.origin.x + x * crop.size.width;
              v80 = crop.origin.y + v80 * crop.size.height;
              width = crop.size.width * width;
              height = crop.size.height * height;
            }
          }

          else
          {
            v87 = [dictionary objectForKeyedSubscript:v61];
            v88 = [dictionary3 objectForKeyedSubscript:v87];
            v151 = NSRectFromString(v88);
            x = v151.origin.x;
            v80 = v151.origin.y;
            width = v151.size.width;
            height = v151.size.height;
          }

          v89 = MEMORY[0x1E695DF90];
          v135[0] = @"humanActions";
          v135[1] = @"humanBounds";
          v136[0] = dictionary4;
          v152.origin.x = x;
          v152.origin.y = v80;
          v152.size.width = width;
          v152.size.height = height;
          v90 = NSStringFromRect(v152);
          v136[1] = v90;
          v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:2];
          v92 = [v89 dictionaryWithDictionary:v91];

          v93 = [dictionary objectForKeyedSubscript:v61];
          LOBYTE(v90) = v93 == 0;

          if ((v90 & 1) == 0)
          {
            v94 = [dictionary objectForKeyedSubscript:v61];
            [v92 setObject:v94 forKeyedSubscript:@"faceIdentifier"];
          }

          v95 = [dictionary2 objectForKeyedSubscript:v61];
          v96 = v95 == 0;

          if (v96)
          {
LABEL_71:
            results = self->_results;
            v133[0] = @"start";
            buf[0] = *time;
            v100 = CMTimeCopyAsDictionary(buf, 0);
            v134[0] = v100;
            v133[1] = @"duration";
            buf[0] = *duration;
            v101 = CMTimeCopyAsDictionary(buf, 0);
            v133[2] = @"attributes";
            v134[1] = v101;
            v134[2] = v92;
            v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v133 count:3];
            [(NSMutableArray *)results addObject:v102];

LABEL_72:
            v54 = 1;
            goto LABEL_73;
          }

          v97 = [dictionary2 objectForKeyedSubscript:v61];
          v98 = [v97 serializeStateAndReturnError:0];

          if (v98)
          {
            [v92 setObject:v98 forKeyedSubscript:@"torsoPrint"];

            goto LABEL_71;
          }

LABEL_80:
          v65 = -18;
        }

LABEL_81:

        goto LABEL_82;
      }

LABEL_73:
    }

    v53 = [obj countByEnumeratingWithState:&v121 objects:v141 count:16];
    v65 = 0;
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_82:

LABEL_83:
  return v65;
}

uint64_t __80__VCPVideoCNNActionClassifier_run_withPersons_andRegionCrop_atTime_andDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 bodyWidth];
  v7 = v6;
  [v4 bodyHeight];
  v9 = v8;
  [v5 bodyWidth];
  v11 = v10;
  [v5 bodyHeight];
  v12 = v7 * v9;
  v14 = v11 * v13;
  if (v12 > v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = v12 < v14;
  }

  return v15;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  v5 = @"HumanActionClassificationResults";
  v6[0] = results;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end