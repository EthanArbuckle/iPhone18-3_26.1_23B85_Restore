@interface VCPImageHumanPoseAnalyzer
+ (id)sharedModel:(id)model;
- (VCPImageHumanPoseAnalyzer)initWithKeypointsOption:(BOOL)option aspectRatio:(id)ratio lightweight:(BOOL)lightweight forceCPU:(BOOL)u sharedModel:(BOOL)model flushModel:(BOOL)flushModel;
- (id).cxx_construct;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)configForAspectRatio:(id)ratio;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data withChannels:(int)channels;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer modelInputHeight:(int)height modelInputWidth:(int)width;
- (int)createModelWithHeight:(int)height srcWidth:(int)width;
- (int)generateHumanPose:(__CVBuffer *)pose;
- (int)parsePersons:(float)persons width:(int)width height:(int)height;
- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5;
- (int)processPersons:(float)persons width:(int)width height:(int)height;
- (int)reInitModel;
- (int)updateModelForAspectRatio:(id)ratio;
- (void)dealloc;
@end

@implementation VCPImageHumanPoseAnalyzer

- (VCPImageHumanPoseAnalyzer)initWithKeypointsOption:(BOOL)option aspectRatio:(id)ratio lightweight:(BOOL)lightweight forceCPU:(BOOL)u sharedModel:(BOOL)model flushModel:(BOOL)flushModel
{
  uCopy = u;
  modelCopy = model;
  lightweightCopy = lightweight;
  v40[2] = *MEMORY[0x1E69E9840];
  ratioCopy = ratio;
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v13 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_human_pose.espresso.net" relativeToURL:resourceURL];
  netFileUrl = self->_netFileUrl;
  self->_netFileUrl = v13;

  v38.receiver = self;
  v38.super_class = VCPImageHumanPoseAnalyzer;
  v15 = [(VCPImageHumanPoseAnalyzer *)&v38 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  resConfig = v15->_resConfig;
  v15->_resConfig = @"res_256x256";

  v16->_inputWidth = 256;
  v16->_inputHeight = 256;
  if (lightweightCopy)
  {
    v18 = v16->_resConfig;
    v16->_resConfig = @"res_192x192";

    v16->_inputWidth = 192;
    v16->_inputHeight = 192;
    goto LABEL_6;
  }

  if (ratioCopy && [(VCPImageHumanPoseAnalyzer *)v16 configForAspectRatio:ratioCopy])
  {
LABEL_12:
    v31 = 0;
    goto LABEL_13;
  }

LABEL_6:
  v16->_inputData = 0;
  v16->_trackingMode = 0;
  array = [MEMORY[0x1E695DF70] array];
  persons = v16->_persons;
  v16->_persons = array;

  array2 = [MEMORY[0x1E695DF70] array];
  results = v16->_results;
  v16->_results = array2;

  if ((DeviceHasANE() & modelCopy) != 1 || uCopy)
  {
    v25 = [VCPCNNModelEspresso alloc];
    v26 = v16->_netFileUrl;
    v39[0] = @"forceCPU";
    v24 = [MEMORY[0x1E696AD98] numberWithBool:uCopy];
    v40[0] = v24;
    v39[1] = @"sharedContext";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
    v40[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v29 = [(VCPCNNModelEspresso *)v25 initWithParameters:v26 inputNames:0 outputNames:0 properties:v28];
    modelEspresso = v16->_modelEspresso;
    v16->_modelEspresso = v29;
  }

  else
  {
    v23 = [objc_opt_class() sharedModel:v16->_netFileUrl];
    v24 = v16->_modelEspresso;
    v16->_modelEspresso = v23;
  }

  v31 = v16->_modelEspresso;
  if (v31)
  {
    if (![(VCPImageHumanPoseAnalyzer *)v16 createModelWithHeight:v16->_inputHeight srcWidth:v16->_inputWidth])
    {
      v16->_saveKeypoints = option;
      v16->_heatmapNms = 0;
      v16->_forceCPU = uCopy;
      v16->_sharedModel = modelCopy;
      v16->_flushModel = flushModel;
      v31 = v16;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v32 = v31;

  return v32;
}

- (int)reInitModel
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [VCPCNNModelEspresso alloc];
  netFileUrl = self->_netFileUrl;
  v11[0] = @"forceCPU";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceCPU];
  v12[0] = v5;
  v11[1] = @"sharedContext";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharedModel];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [(VCPCNNModelEspresso *)v3 initWithParameters:netFileUrl inputNames:0 outputNames:0 properties:v7];
  modelEspresso = self->_modelEspresso;
  self->_modelEspresso = v8;

  if (self->_modelEspresso)
  {
    return [(VCPImageHumanPoseAnalyzer *)self createModelWithHeight:self->_inputHeight srcWidth:self->_inputWidth];
  }

  else
  {
    return -108;
  }
}

+ (id)sharedModel:(id)model
{
  modelCopy = model;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__VCPImageHumanPoseAnalyzer_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = modelCopy;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPHumanPoseEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__41__VCPImageHumanPoseAnalyzer_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  heatmapNms = self->_heatmapNms;
  if (heatmapNms)
  {
    MEMORY[0x1CCA95C10](heatmapNms, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPImageHumanPoseAnalyzer;
  [(VCPImageHumanPoseAnalyzer *)&v5 dealloc];
}

- (int)configForAspectRatio:(id)ratio
{
  ratioCopy = ratio;
  v5 = ratioCopy;
  if (ratioCopy)
  {
    [ratioCopy floatValue];
    if (v6 <= 1.4)
    {
      [v5 floatValue];
      resConfig = self->_resConfig;
      if (v10 >= 0.714285726)
      {
        self->_resConfig = @"res_256x256";
        v9 = 256;
        v8 = 256;
      }

      else
      {
        self->_resConfig = @"res_192x320";
        v8 = 320;
        v9 = 192;
      }
    }

    else
    {
      resConfig = self->_resConfig;
      self->_resConfig = @"res_320x192";
      v8 = 192;
      v9 = 320;
    }

    self->_inputWidth = v9;
    self->_inputHeight = v8;
  }

  return 0;
}

- (int)updateModelForAspectRatio:(id)ratio
{
  v5 = self->_resConfig;
  v6 = [(VCPImageHumanPoseAnalyzer *)self configForAspectRatio:ratio];
  if (!v6)
  {
    if (v5 == self->_resConfig)
    {
      v6 = 0;
    }

    else if (self->_modelEspresso)
    {
      v6 = [(VCPImageHumanPoseAnalyzer *)self createModelWithHeight:self->_inputHeight srcWidth:self->_inputWidth];
    }

    else
    {
      v6 = -108;
    }
  }

  return v6;
}

- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5
{
  result = -50;
  if (format && height)
  {
    if (a5)
    {
      result = 0;
      *format = self->_inputWidth;
      *height = self->_inputHeight;
      *a5 = 1111970369;
    }
  }

  return result;
}

- (int)parsePersons:(float)persons width:(int)width height:(int)height
{
  v133 = *MEMORY[0x1E69E9840];
  modelEspresso = self->_modelEspresso;
  if (!modelEspresso)
  {
    return -18;
  }

  selfCopy = self;
  [(VCPCNNModelEspresso *)modelEspresso outputBlob];
  __src = v125;
  if (!v125)
  {
    return -18;
  }

  heatmapNms = selfCopy->_heatmapNms;
  v106 = height * width;
  if (!heatmapNms)
  {
    operator new[]();
  }

  memcpy(heatmapNms, v125, 68 * height * width);
  v11 = 0;
  v12 = 0;
  v13 = selfCopy->_heatmapNms;
  v14 = 4 * width;
  LODWORD(v15) = -1.0;
  do
  {
    if (height >= 1)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      v18 = &v13[v11 - 3 + -3 * width];
      v19 = &v13[v106 * v12];
      do
      {
        if (width >= 1)
        {
          v20 = 0;
          v17 = v17;
          v21 = -3;
          v22 = v18;
          do
          {
            v23 = v19[v17];
            if (v23 >= persons)
            {
              v24 = -3;
              v25 = v22;
              do
              {
                v26 = 0;
                v27 = v21;
                while (v24 + v16 >= height || v27 >= width || *(v25 + v26) <= v23)
                {
                  ++v27;
                  v26 += 4;
                  if (v26 == 28)
                  {
                    goto LABEL_20;
                  }
                }

                v23 = v23 + -1.0;
                v19[v17] = v23;
LABEL_20:
                ++v24;
                v25 += v14;
              }

              while (v24 != 4);
            }

            else
            {
              v19[v17] = v23 + -1.0;
            }

            ++v20;
            ++v17;
            ++v21;
            v22 += 4;
          }

          while (v20 != width);
        }

        ++v16;
        v18 += v14;
      }

      while (v16 != height);
    }

    ++v12;
    v11 += v106;
  }

  while (v12 != 17);
  array = [MEMORY[0x1E695DF70] array];
  v109 = 0;
  v28 = selfCopy;
  do
  {
    if (height < 1)
    {
      goto LABEL_52;
    }

    v108 = 0;
    v29 = 0;
    v113 = &v28->_heatmapNms[v106 * v109];
    do
    {
      if (width < 1)
      {
        goto LABEL_51;
      }

      v115 = 0;
      v30 = v29;
      do
      {
        if (*(v113 + 4 * v30) <= persons)
        {
          goto LABEL_49;
        }

        obj = v30;
        v31 = __src[v106 * (v109 + 17) + v30];
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v32 = array;
        v33 = [v32 countByEnumeratingWithState:&v121 objects:v132 count:16];
        if (v33)
        {
          v34 = 0;
          v35 = *v122;
          LODWORD(v36) = -1;
          v37 = 3.4028e38;
          do
          {
            v38 = 0;
            v39 = v34;
            v34 += v33;
            do
            {
              if (*v122 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v40 = [*(*(&v121 + 1) + 8 * v38) objectAtIndexedSubscript:0];
              [v40 floatValue];
              v42 = v41;

              v43 = vabds_f32(v31, v42);
              if (v43 >= v37)
              {
                v36 = v36;
              }

              else
              {
                v37 = v43;
                v36 = v39;
              }

              ++v39;
              ++v38;
            }

            while (v33 != v38);
            v33 = [v32 countByEnumeratingWithState:&v121 objects:v132 count:16];
          }

          while (v33);

          if ((v36 & 0x80000000) == 0 && v37 < 0.3)
          {
            array2 = [(NSMutableArray *)selfCopy->_persons objectAtIndexedSubscript:v36];
            v46 = [v32 objectAtIndexedSubscript:v36];
            v47 = [v46 objectAtIndexedSubscript:0];
            [v47 floatValue];
            v49 = v48;

            v50 = [v32 objectAtIndexedSubscript:v36];
            v51 = [v50 objectAtIndexedSubscript:1];
            [v51 floatValue];
            v53 = v52;

            *&v54 = (v31 + (v49 * v53)) / (v53 + 1.0);
            v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
            v131[0] = v55;
            *&v56 = v53 + 1.0;
            v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
            v131[1] = v57;
            v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
            [v32 setObject:v58 atIndexedSubscript:v36];

            v59 = *(v113 + 4 * obj);
            v60 = [array2 objectAtIndexedSubscript:v109];
            v61 = [v60 objectAtIndexedSubscript:2];
            [v61 floatValue];
            LODWORD(v55) = v59 > v62;

            if (v55)
            {
              v63 = [MEMORY[0x1E696AD98] numberWithInt:v115];
              v130[0] = v63;
              v64 = [MEMORY[0x1E696AD98] numberWithInt:v108];
              v130[1] = v64;
              LODWORD(v65) = *(v113 + 4 * obj);
              v66 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
              v130[2] = v66;
              v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:3];
              [array2 setObject:v67 atIndexedSubscript:v109];
            }

            goto LABEL_48;
          }
        }

        else
        {
        }

        *&v44 = v31;
        v68 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
        v129[0] = v68;
        v129[1] = &unk_1F49BB278;
        v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
        [v32 addObject:v69];

        array2 = [MEMORY[0x1E695DF70] array];
        v70 = 17;
        do
        {
          [array2 addObject:&unk_1F49BF1C0];
          --v70;
        }

        while (v70);
        v71 = [MEMORY[0x1E696AD98] numberWithInt:v115];
        v128[0] = v71;
        v72 = [MEMORY[0x1E696AD98] numberWithInt:v108];
        v128[1] = v72;
        LODWORD(v73) = *(v113 + 4 * obj);
        v74 = [MEMORY[0x1E696AD98] numberWithFloat:v73];
        v128[2] = v74;
        v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
        [array2 setObject:v75 atIndexedSubscript:v109];

        [(NSMutableArray *)selfCopy->_persons addObject:array2];
LABEL_48:

        v28 = selfCopy;
        v30 = obj;
LABEL_49:
        v30 = v30 + 1;
        ++v115;
      }

      while (v115 != width);
      v29 = v30;
LABEL_51:
      ++v108;
    }

    while (v108 != height);
LABEL_52:
    ++v109;
  }

  while (v109 != 17);
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obja = v28->_persons;
  v76 = [(NSMutableArray *)obja countByEnumeratingWithState:&v117 objects:v127 count:16];
  if (v76)
  {
    v116 = *v118;
    while (2)
    {
      v114 = v76;
      for (i = 0; i != v114; ++i)
      {
        if (*v118 != v116)
        {
          objc_enumerationMutation(obja);
        }

        v78 = *(*(&v117 + 1) + 8 * i);
        if ([v78 count] != 17)
        {
          v103 = -18;
          goto LABEL_81;
        }

        for (j = 0; [v78 count] > j; ++j)
        {
          v80 = [v78 objectAtIndexedSubscript:j];
          v81 = [v80 objectAtIndexedSubscript:2];
          [v81 floatValue];
          v83 = v82 > 0.1;

          if (v83)
          {
            v84 = [v80 objectAtIndexedSubscript:0];
            intValue = [v84 intValue];

            v86 = [v80 objectAtIndexedSubscript:1];
            intValue2 = [v86 intValue];

            v89 = width * (intValue2 - 3);
            v90 = 0.0;
            v91 = -3;
            v92 = 0.0;
            v93 = 0.0;
            do
            {
              v94 = v91 + intValue2;
              *&v88 = (v91 + intValue2);
              v95 = 7;
              v96 = intValue - 3;
              do
              {
                if ((v94 & 0x80000000) == 0 && v94 < height && (v96 & 0x80000000) == 0 && v96 < width)
                {
                  v97 = __src[v106 * j + v89 + v96];
                  if (v97 > 0.05)
                  {
                    v90 = v90 + v97;
                    *&v93 = *&v93 + (v97 * v96);
                    v92 = v92 + (v97 * *&v88);
                  }
                }

                ++v96;
                --v95;
              }

              while (v95);
              ++v91;
              v89 += width;
            }

            while (v91 != 4);
            if (v90 > 0.0)
            {
              *&v93 = (*&v93 / v90) + 0.5;
              v98 = [MEMORY[0x1E696AD98] numberWithFloat:{v93, v88}];
              v126[0] = v98;
              *&v99 = (v92 / v90) + 0.5;
              v100 = [MEMORY[0x1E696AD98] numberWithFloat:v99];
              v126[1] = v100;
              v101 = [v80 objectAtIndexedSubscript:2];
              v126[2] = v101;
              v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
              [v78 setObject:v102 atIndexedSubscript:j];
            }
          }
        }
      }

      v76 = [(NSMutableArray *)obja countByEnumeratingWithState:&v117 objects:v127 count:16];
      if (v76)
      {
        continue;
      }

      break;
    }
  }

  v103 = 0;
LABEL_81:

  return v103;
}

- (int)processPersons:(float)persons width:(int)width height:(int)height
{
  v95 = *MEMORY[0x1E69E9840];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = self->_persons;
  v79 = [(NSMutableArray *)obj countByEnumeratingWithState:&v87 objects:v94 count:16];
  if (v79)
  {
    personsCopy = persons;
    heightCopy = height;
    widthCopy = width;
    v81 = *v88;
    v8 = 1.0;
    HIDWORD(v9) = 1072850534;
    while (2)
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v88 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v86 = *(*(&v87 + 1) + 8 * i);
        LODWORD(v9) = 1036831949;
        v80 = [VCPHuman flagsFromKeypoints:v9 withMinConfidence:?];
        v10 = 0;
        v11 = 1.0;
        v12 = 0.0;
        v13 = 0.0;
        v14 = 1.0;
        v15 = 0.0;
        v16 = 0.0;
        while ([v86 count] > v10)
        {
          v17 = [v86 objectAtIndexedSubscript:v10];
          v18 = [v17 count] == 3;

          if (!v18)
          {
            v75 = -18;
            goto LABEL_49;
          }

          v19 = MEMORY[0x1E696AD98];
          v20 = [v86 objectAtIndexedSubscript:v10];
          v21 = [v20 objectAtIndexedSubscript:0];
          [v21 floatValue];
          *&v23 = v22 / widthCopy;
          v24 = [v19 numberWithFloat:v23];
          v93[0] = v24;
          v25 = MEMORY[0x1E696AD98];
          v26 = [v86 objectAtIndexedSubscript:v10];
          v27 = [v26 objectAtIndexedSubscript:1];
          [v27 floatValue];
          *&v29 = v8 - (v28 / heightCopy);
          v30 = [v25 numberWithFloat:v29];
          v93[1] = v30;
          v31 = [v86 objectAtIndexedSubscript:v10];
          v32 = [v31 objectAtIndexedSubscript:2];
          v93[2] = v32;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
          [v86 setObject:v33 atIndexedSubscript:v10];

          v34 = [v86 objectAtIndexedSubscript:v10];
          v35 = [v34 objectAtIndexedSubscript:2];
          [v35 floatValue];
          LODWORD(v31) = v36 > 0.1;

          if (v31)
          {
            v37 = [v86 objectAtIndexedSubscript:v10];
            v38 = [v37 objectAtIndexedSubscript:0];
            [v38 floatValue];
            if (v14 >= v39)
            {
              v14 = v39;
            }

            v40 = [v86 objectAtIndexedSubscript:v10];
            v41 = [v40 objectAtIndexedSubscript:1];
            [v41 floatValue];
            if (v11 >= v42)
            {
              v11 = v42;
            }

            v43 = [v86 objectAtIndexedSubscript:v10];
            v44 = [v43 objectAtIndexedSubscript:0];
            [v44 floatValue];
            if (v45 >= v13)
            {
              v13 = v45;
            }

            v46 = [v86 objectAtIndexedSubscript:v10];
            v47 = [v46 objectAtIndexedSubscript:1];
            [v47 floatValue];
            if (v48 >= v12)
            {
              v12 = v48;
            }

            v49 = [v86 objectAtIndexedSubscript:v10];
            v50 = [v49 objectAtIndexedSubscript:2];
            [v50 floatValue];
            v52 = v51;

            v16 = v16 + v52;
            v15 = v15 + v8;
          }

          ++v10;
        }

        if ((v13 - v14) != 0.0 && (v12 - v11) != 0.0 && v15 > 4.0 && (v80 & 0xFFFFFFFFFFEFFFFFLL) != 0)
        {
          v53 = vabds_f32(v13, v14);
          v54 = vabds_f32(v12, v11);
          v55 = v53 >= v54 ? v53 : v54;
          if (v55 > 0.1)
          {
            v56 = v14;
            v57 = v11;
            v58 = v53;
            v59 = v54;
            v60 = v16 / v15;
            v61 = v14 - v58 * 0.150000006;
            v62 = v61 >= 0.0 ? v14 - v58 * 0.150000006 : 0.0;
            v63 = v57 - v59 * 0.150000006;
            v64 = v63 >= 0.0 ? v57 - v59 * 0.150000006 : 0.0;
            v65 = v56 + v58 * 1.14999998;
            v66 = v65 <= 1.0 ? v65 : 1.0;
            v9 = v57 + v59 * 1.14999998;
            *&v9 = v9;
            v8 = 1.0;
            v67 = *&v9 <= 1.0 ? *&v9 : 1.0;
            if (v60 > personsCopy)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v96.origin.x = v62;
              v96.origin.y = v64;
              v96.size.width = (v66 - v62);
              v96.size.height = (v67 - v64);
              v69 = NSStringFromRect(v96);
              [dictionary setObject:v69 forKeyedSubscript:@"humanBounds"];

              *&v70 = v60;
              v71 = [MEMORY[0x1E696AD98] numberWithFloat:v70];
              [dictionary setObject:v71 forKeyedSubscript:@"humanConfidence"];

              if (self->_saveKeypoints)
              {
                [dictionary setObject:v86 forKeyedSubscript:@"humanKeypoints"];
              }

              results = self->_results;
              v91[0] = @"flags";
              v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v80];
              v91[1] = @"attributes";
              v92[0] = v73;
              v92[1] = dictionary;
              v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
              [(NSMutableArray *)results addObject:v74];
            }
          }
        }
      }

      v75 = 0;
      v79 = [(NSMutableArray *)obj countByEnumeratingWithState:&v87 objects:v94 count:16];
      if (v79)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v75 = 0;
  }

LABEL_49:

  return v75;
}

- (int)generateHumanPose:(__CVBuffer *)pose
{
  result = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!result)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso)
    {
      [(VCPCNNModelEspresso *)modelEspresso outputBlob];
      v7 = self->_modelEspresso;
      v8 = v11;
      if (v7)
      {
        [(VCPCNNModelEspresso *)v7 outputBlob];
        v9 = v12;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    LODWORD(v5) = 1036831949;
    result = [(VCPImageHumanPoseAnalyzer *)self parsePersons:v8 width:v9 height:v5];
    if (!result)
    {
      LODWORD(v10) = 1036831949;
      return [(VCPImageHumanPoseAnalyzer *)self processPersons:v8 width:v9 height:v10];
    }
  }

  return result;
}

- (int)copyImage:(__CVBuffer *)image toData:(float *)data withChannels:(int)channels
{
  if (channels != 3 || CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (!image)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v9 = Height;
  v10 = CVPixelBufferLockBaseAddress(image, 1uLL);
  v24 = v10;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageConverter convertImage:yuvFrame:];
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    bzero(data, 3 * 4 * Width * v9);
    if (v9 >= 1)
    {
      v16 = 0;
      v17 = &data[2 * v9 * Width];
      v18 = &data[v9 * Width];
      v19 = 4 * Width;
      do
      {
        if (Width >= 1)
        {
          v20 = 0;
          v21 = Width & 0x7FFFFFFF;
          do
          {
            LOBYTE(v15) = BaseAddress[(v20 * 4) + 2];
            *&v22 = LODWORD(v15) / 255.0;
            data[v20] = *&v22;
            LOBYTE(v22) = BaseAddress[(v20 * 4) + 1];
            *&v23 = v22 / 255.0;
            v18[v20] = *&v23;
            LOBYTE(v23) = BaseAddress[(v20 * 4)];
            v15 = v23 / 255.0;
            v17[v20++] = v15;
            --v21;
          }

          while (v21);
        }

        BaseAddress += BytesPerRow;
        ++v16;
        v17 = (v17 + v19);
        v18 = (v18 + v19);
        data = (data + v19);
      }

      while (v16 != v9);
    }

    v11 = CVPixelBufferLock::Unlock(&v24);
    if (pixelBuffer && !v24 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v11;
}

- (int)createModelWithHeight:(int)height srcWidth:(int)width
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210, *&height, *&width);
    self->_inputData = 0;
  }

  heatmapNms = self->_heatmapNms;
  if (heatmapNms)
  {
    MEMORY[0x1CCA95C10](heatmapNms, 0x1000C8052888210, *&height, *&width);
    self->_heatmapNms = 0;
  }

  result = [(VCPCNNModelEspresso *)self->_modelEspresso prepareModelWithConfig:self->_resConfig, *&width];
  if (!result)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso && ([(VCPCNNModelEspresso *)modelEspresso inputBlob], (v9 = self->_modelEspresso) != 0))
    {
      [(VCPCNNModelEspresso *)v9 inputBlob];
      v10 = self->_modelEspresso;
      v11 = v17 * v18;
      if (v10)
      {
        [(VCPCNNModelEspresso *)v10 inputBlob];
        v12 = v16;
LABEL_12:
        v13 = v11 * v12;
        if (v13 >> 62)
        {
          v14 = -1;
        }

        else
        {
          v14 = 4 * v13;
        }

        v15 = operator new[](v14, MEMORY[0x1E69E5398]);
        self->_inputData = v15;
        if (v15)
        {
          return 0;
        }

        else
        {
          return -108;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    goto LABEL_12;
  }

  return result;
}

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer modelInputHeight:(int)height modelInputWidth:(int)width
{
  if (!input)
  {
    return -108;
  }

  v6 = *&width;
  v7 = *&height;
  cf = 0;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (CVPixelBufferGetPixelFormatType(buffer) == 1111970369 && Width == v6 && Height == v7)
  {
    v13 = CFRetain(buffer);
    cf = v13;
  }

  else
  {
    Scaler::Scale(&self->_scaler, buffer, &cf, v6, v7, 1111970369);
    v14 = v15;
    if (v15)
    {
      goto LABEL_10;
    }

    v13 = cf;
  }

  v14 = [(VCPImageHumanPoseAnalyzer *)self copyImage:v13 toData:input withChannels:3];
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v20[1] = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  [(NSMutableArray *)self->_persons removeAllObjects];
  [(NSMutableArray *)self->_results removeAllObjects];
  *results = 0;
  if (cancelCopy && (cancelCopy[2](cancelCopy) & 1) != 0)
  {
    reInitModel = -128;
    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (self->_flushModel && !self->_modelEspresso)
  {
    reInitModel = [(VCPImageHumanPoseAnalyzer *)self reInitModel];
    if (reInitModel)
    {
LABEL_18:
      v15 = 0;
      goto LABEL_19;
    }
  }

  if (Height >= Width)
  {
    v14 = Width;
  }

  else
  {
    v14 = Height;
  }

  if (v14 >= 64)
  {
    reInitModel = [(VCPImageHumanPoseAnalyzer *)self createInput:self->_inputData withBuffer:buffer modelInputHeight:self->_inputHeight modelInputWidth:self->_inputWidth];
    if (!reInitModel)
    {
      reInitModel = [(VCPImageHumanPoseAnalyzer *)self generateHumanPose:buffer];
      if (!reInitModel)
      {
        if (self->_flushModel)
        {
          modelEspresso = self->_modelEspresso;
          if (modelEspresso)
          {
            self->_modelEspresso = 0;
          }
        }

        reInitModel = 0;
        v15 = 1;
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v15 = 0;
  reInitModel = 0;
LABEL_19:
  objc_autoreleasePoolPop(v11);
  if (v15 && [(NSMutableArray *)self->_results count])
  {
    results = self->_results;
    v19 = @"HumanPoseResults";
    v20[0] = results;
    *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

LABEL_22:

  return reInitModel;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 34) = 0;
  return self;
}

@end