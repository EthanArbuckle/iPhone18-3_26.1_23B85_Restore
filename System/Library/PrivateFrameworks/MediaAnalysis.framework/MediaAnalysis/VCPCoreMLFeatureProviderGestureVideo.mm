@interface VCPCoreMLFeatureProviderGestureVideo
- (BOOL)ready;
- (VCPCoreMLFeatureProviderGestureVideo)init;
- (id)featureValueForName:(id)name;
- (id)observationsForCurrentGroup;
- (void)addLeftHand:(id)hand andRightHand:(id)rightHand;
@end

@implementation VCPCoreMLFeatureProviderGestureVideo

- (VCPCoreMLFeatureProviderGestureVideo)init
{
  v8.receiver = self;
  v8.super_class = VCPCoreMLFeatureProviderGestureVideo;
  v2 = [(VCPCoreMLFeatureProviderGestureVideo *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(v2 + 1);
    *(v2 + 1) = dictionary;

    *(v2 + 14) = 0;
    *(v2 + 8) = 0;
    *(v2 + 20) = -4294967291;
  }

  if (*(v2 + 1))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (void)addLeftHand:(id)hand andRightHand:(id)rightHand
{
  handCopy = hand;
  rightHandCopy = rightHand;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (handCopy)
  {
    [dictionary setObject:handCopy forKeyedSubscript:@"leftHand"];
  }

  if (rightHandCopy)
  {
    [dictionary setObject:rightHandCopy forKeyedSubscript:@"rightHand"];
  }

  observationsPersons = self->_observationsPersons;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
  v10 = [(NSMutableDictionary *)observationsPersons objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = self->_observationsPersons;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
    array = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [array addObject:dictionary];
  v14 = self->_observationsPersons;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
  [(NSMutableDictionary *)v14 setObject:array forKeyedSubscript:v15];

  v16 = self->_observationsPersons;
  v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];
  v19 = [v18 count];
  channels = self->_channels;

  if (v19 > channels)
  {
    [array removeObjectAtIndex:0];
  }
}

- (BOOL)ready
{
  selfCopy = self;
  observationsPersons = self->_observationsPersons;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
  v5 = [(NSMutableDictionary *)observationsPersons objectForKeyedSubscript:v4];
  LOBYTE(selfCopy) = [v5 count] >= selfCopy->_channels;

  return selfCopy;
}

- (id)observationsForCurrentGroup
{
  observationsPersons = self->_observationsPersons;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
  v4 = [(NSMutableDictionary *)observationsPersons objectForKeyedSubscript:v3];

  return v4;
}

- (id)featureValueForName:(id)name
{
  v112 = v110;
  v130[3] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00]();
  v115 = &v110[-16 * v4];
  v5 = objc_alloc(MEMORY[0x1E695FED0]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_channels];
  v130[0] = v6;
  v130[1] = &unk_1F49BE470;
  v130[2] = &unk_1F49BE488;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:3];
  v117 = [v5 initWithShape:v7 dataType:65568 error:0];

  observationsPersons = self->_observationsPersons;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
  v10 = [(NSMutableDictionary *)observationsPersons objectForKeyedSubscript:v9];
  LODWORD(v7) = [v10 count] == self->_channels;

  if (!v7)
  {
    v108 = 0;
    goto LABEL_90;
  }

  if (self->_channels < 1)
  {
    goto LABEL_88;
  }

  v13 = 0;
  v116 = @"leftHand";
  v111 = 2;
  v113 = 0.3;
  v114 = 0.0;
  do
  {
    v14 = self->_observationsPersons;
    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
    v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
    v17 = [v16 objectAtIndexedSubscript:v13];
    v18 = [v17 objectForKeyedSubscript:v116];

    v19 = self->_observationsPersons;
    v20 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
    v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
    v22 = [v21 objectAtIndexedSubscript:v13];
    v23 = [v22 objectForKeyedSubscript:@"rightHand"];

    if (self->_lrFlip)
    {
      v24 = self->_observationsPersons;
      v25 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
      v26 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:v25];
      v27 = [v26 objectAtIndexedSubscript:v13];
      v28 = [v27 objectForKeyedSubscript:@"rightHand"];

      v29 = self->_observationsPersons;
      v30 = [MEMORY[0x1E696AD98] numberWithInt:self->_currentGroupID];
      v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:v30];
      v32 = [v31 objectAtIndexedSubscript:v13];
      v33 = [v32 objectForKeyedSubscript:v116];

      v23 = v33;
    }

    else
    {
      v28 = v18;
    }

    v34 = v117;
    v35 = 0;
    v36 = ([v117 dataPointer] + ((0x7E00000000 * v13) >> 30) + 252);
    v37 = 0.0;
    v38 = 1.0;
    v39 = 1.0;
    v40 = 0.0;
    do
    {
      if (v28)
      {
        keypoints = [v28 keypoints];
        v42 = [keypoints objectAtIndexedSubscript:v35];
        [v42 location];
        transformLocation(v132, self->_lrFlip, self->_rotationInDegrees);
        v44 = v43;
        v46 = v45;

        v47 = v44;
        *(v36 - 63) = v47;
        v48 = v46;
        *(v36 - 21) = v48;
        keypoints2 = [v28 keypoints];
        v50 = [keypoints2 objectAtIndexedSubscript:v35];
        [v50 confidence];
        *(v36 + 21) = v51;

        if (v44 <= v38)
        {
          v38 = v44;
        }

        if (v46 <= v39)
        {
          v39 = v46;
        }

        if (v44 > v37)
        {
          v37 = v44;
        }

        if (v46 > v40)
        {
          v40 = v46;
        }

        if (!v23)
        {
LABEL_28:
          *(v36 - 42) = 0.0;
          *v36 = 0.0;
          v36[42] = 0.0;
          goto LABEL_29;
        }
      }

      else
      {
        *(v36 - 63) = 0.0;
        *(v36 - 21) = 0.0;
        v36[21] = 0.0;
        if (!v23)
        {
          goto LABEL_28;
        }
      }

      keypoints3 = [v23 keypoints];
      v53 = [keypoints3 objectAtIndexedSubscript:v35];
      [v53 location];
      transformLocation(v133, self->_lrFlip, self->_rotationInDegrees);
      v55 = v54;
      v57 = v56;

      v58 = v55;
      *(v36 - 42) = v58;
      v59 = v57;
      *v36 = v59;
      keypoints4 = [v23 keypoints];
      v61 = [keypoints4 objectAtIndexedSubscript:v35];
      [v61 confidence];
      *(v36 + 42) = v62;

      if (v55 <= v38)
      {
        v38 = v55;
      }

      if (v57 <= v39)
      {
        v39 = v57;
      }

      if (v55 > v37)
      {
        v37 = v55;
      }

      if (v57 > v40)
      {
        v40 = v57;
      }

LABEL_29:
      ++v35;
      ++v36;
    }

    while (v35 != 21);
    if (self->_scaleUpSmallHandGroup)
    {
      if (v38 < 1.0)
      {
        v63 = v38;
      }

      else
      {
        v63 = 1.0;
      }

      v64 = v38 > 0.0;
      v65 = 0.0;
      if (v64)
      {
        v66 = v63;
      }

      else
      {
        v66 = 0.0;
      }

      if (v39 < 1.0)
      {
        v67 = v39;
      }

      else
      {
        v67 = 1.0;
      }

      if (v39 <= 0.0)
      {
        v68 = 0.0;
      }

      else
      {
        v68 = v67;
      }

      if (v37 < 1.0)
      {
        v69 = v37;
      }

      else
      {
        v69 = 1.0;
      }

      if (v37 <= 0.0)
      {
        v70 = 0.0;
      }

      else
      {
        v70 = v69;
      }

      if (v40 < 1.0)
      {
        v71 = v40;
      }

      else
      {
        v71 = 1.0;
      }

      if (v40 <= 0.0)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = v71;
      }

      v73 = (v70 + v66) * 0.5;
      v74 = (v72 + v68) * 0.5;
      v75 = &v115[16 * v13];
      *v75 = v73;
      v75[1] = v74;
      if (v28)
      {
        [v28 bounds];
        v77 = v76;
        [v28 bounds];
        v65 = fmax((v77 + v78) * 0.5, 0.0);
      }

      if (v23)
      {
        [v23 bounds];
        v80 = v79;
        [v23 bounds];
        v82 = (v80 + v81) * 0.5;
        if (v82 > v65)
        {
          v83 = v82;
          v65 = v83;
        }
      }

      if (v65 > 0.0)
      {
        v84 = v113 / v65;
        if (v114 >= (v113 / v65))
        {
          v84 = v114;
        }

        v85 = v73 / (v73 - v66);
        if (v85 >= v74 / (v74 - v68))
        {
          v85 = v74 / (v74 - v68);
        }

        v86 = v85;
        v87 = (1.0 - v73) / (v70 - v73);
        v88 = v72 - v74;
        if (v87 >= (1.0 - v74) / v88)
        {
          v87 = (1.0 - v74) / v88;
        }

        v89 = v87;
        if (v86 >= v89)
        {
          v90 = v87;
        }

        else
        {
          v90 = v86;
        }

        if (v84 < v90)
        {
          v90 = v84;
        }

        v64 = v84 > 0.0;
        v91 = 0.0;
        if (v64)
        {
          v91 = v90;
        }

        v114 = v91;
        if (MediaAnalysisLogLevel() >= 7)
        {
          v92 = MEMORY[0x1E69E9C10];
          v93 = v111;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], v111))
          {
            *buf = 134219264;
            v119 = v114;
            v120 = 2048;
            v121 = v73;
            v122 = 2048;
            v123 = (v72 + v68) * 0.5;
            v124 = 2048;
            v125 = v65;
            v126 = 2048;
            v127 = v86;
            v128 = 2048;
            v129 = v89;
            _os_log_impl(&dword_1C9B70000, v92, v93, "Adjusted scaleF %.2f, groupCenter [%.2f,%.2f], refHandSize %.2f, upperBounds:%.2f,%.2f", buf, 0x3Eu);
          }
        }
      }
    }

    ++v13;
  }

  while (v13 < self->_channels);
  if (self->_scaleUpSmallHandGroup)
  {
    LODWORD(v11) = 1.0;
    *&v12 = v114;
    if (v114 > 1.0)
    {
      v94 = MediaAnalysisLogLevel();
      *&v11 = v114;
      v95 = v114;
      v96 = v111;
      if (v94 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], v111))
      {
        *buf = 134217984;
        v119 = v95;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], v96, "VCPCoreMLFeatureProviderGestureVideo: scaling up small hands, scale factor %.2f", buf, 0xCu);
      }

      if (self->_channels >= 1)
      {
        v97 = 0;
        do
        {
          v98 = v117;
          dataPointer = [v117 dataPointer];
          v100 = &v115[16 * v97];
          v11 = *v100;
          v12 = v100[1];
          v101 = (dataPointer + ((0x7E00000000 * v97) >> 30) + 168);
          v102 = 21;
          do
          {
            v103 = v11 + v95 * (*(v101 - 42) - v11);
            v104 = v12 + v95 * (*v101 - v12);
            v105 = v11 + v95 * (*(v101 - 21) - v11);
            v106 = v12 + v95 * (v101[21] - v12);
            *(v101 - 42) = v103;
            *v101 = v104;
            v107 = v106;
            *(v101 - 21) = v105;
            v101[21] = v107;
            ++v101;
            --v102;
          }

          while (v102);
          ++v97;
        }

        while (v97 < self->_channels);
      }
    }
  }

LABEL_88:
  v108 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:{v117, v11, v12}];
LABEL_90:

  return v108;
}

@end