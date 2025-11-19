@interface VCPHumanPoseEspressoSession
- (VCPHumanPoseEspressoSession)initWithOptions:(id)a3;
- (id)keypointsToObservation:(id)a3;
- (int)keypointsFromTensor:(VCPHumanPoseEspressoSession *)self width:(SEL)a2 height:channels:withOptions:results:;
- (int)keypointsFromTensor:(id *)a3 withOptions:(id)a4 results:(id)a5;
- (int)processFrame:(__CVBuffer *)a3 withOptions:(id)a4 results:(id)a5;
- (int)requiredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5;
- (void)dealloc;
@end

@implementation VCPHumanPoseEspressoSession

- (VCPHumanPoseEspressoSession)initWithOptions:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = VCPHumanPoseEspressoSession;
  v5 = [(VCPHumanPoseEspressoSession *)&v27 init];
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    *&v5->_width = 0x3000000030;
    v5->_revision = 1;
    v8 = [v4 objectForKeyedSubscript:@"revision"];

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"revision"];
      v7->_revision = [v9 intValue];
    }

    v10 = [v4 objectForKeyedSubscript:@"config"];

    if (!v10)
    {
LABEL_11:
      v7->_plan = 0;
      v7->_ctx = 0;
      v13 = [v4 objectForKeyedSubscript:@"loadModel"];
      v14 = v13;
      if (v13 && [v13 BOOLValue])
      {
        v15 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
        v16 = [v15 resourceURL];

        v17 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_human_pose_lite_v2.espresso.net" relativeToURL:v16];
        v7->_ctx = espresso_create_context();
        plan = espresso_create_plan();
        v7->_plan = plan;
        if (!plan || ([v17 path], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "UTF8String"), v20 = espresso_plan_add_network(), v19, v20) || (objc_msgSend(@"res_256x160", "UTF8String"), espresso_network_select_configuration()) || espresso_plan_build())
        {

          goto LABEL_24;
        }

        v21 = espresso_network_bind_buffer();

        if (v21)
        {
          goto LABEL_24;
        }
      }

      v22 = 17 * v7->_width * v7->_height;
      if (v22 < 0)
      {
        v23 = -1;
      }

      else
      {
        v23 = 2 * v22;
      }

      v24 = operator new[](v23, MEMORY[0x1E69E5398]);
      *v7->_heatmapNms = v24;
      if (v24)
      {
        *&v7->_modelOutput16bit[4] = 0;
        *&v7->_loadModel = 0;
        v6 = v7;
LABEL_25:

        goto LABEL_26;
      }

LABEL_24:
      v6 = 0;
      goto LABEL_25;
    }

    v11 = [v4 objectForKeyedSubscript:@"config"];
    if ([v11 isEqualToString:@"res_256x160"])
    {
      v12 = 0x2800000040;
    }

    else
    {
      if (![v11 isEqualToString:@"res_160x256"])
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = 0x4000000028;
    }

    *&v7->_width = v12;
    goto LABEL_10;
  }

LABEL_26:
  v25 = v6;

  return v25;
}

- (void)dealloc
{
  v3 = *self->_heatmapNms;
  if (v3)
  {
    MEMORY[0x1CCA95C10](v3, 0x1000C80BDFB0063);
  }

  v4 = *&self->_modelOutput16bit[4];
  if (v4)
  {
    MEMORY[0x1CCA95C10](v4, 0x1000C80BDFB0063);
  }

  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_ctx)
  {
    espresso_context_destroy();
  }

  v5.receiver = self;
  v5.super_class = VCPHumanPoseEspressoSession;
  [(VCPHumanPoseEspressoSession *)&v5 dealloc];
}

- (id)keypointsToObservation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v21 = v3;
  if ([v3 count] == 17)
  {
    v20 = objc_alloc_init(VCPPersonObservation);
    v4 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          if ([v9 count] != 3)
          {

            v17 = 0;
            goto LABEL_16;
          }

          v10 = objc_alloc_init(VCPKeypoint);
          v11 = [v9 objectAtIndexedSubscript:0];
          [v11 floatValue];
          v13 = v12;
          v14 = [v9 objectAtIndexedSubscript:1];
          [v14 floatValue];
          [(VCPKeypoint *)v10 setLocation:v13, v15];

          v16 = [v9 objectAtIndexedSubscript:2];
          [v16 floatValue];
          [(VCPKeypoint *)v10 setConfidence:?];

          [v4 addObject:v10];
        }

        v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(VCPPersonObservation *)v20 setKeypoints:v4];
    v17 = v20;
    [(VCPPersonObservation *)v20 setRevision:1];
LABEL_16:
    v18 = v17;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, " keypointsToObservation - unexpected keypoints count", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (int)keypointsFromTensor:(id *)a3 withOptions:(id)a4 results:(id)a5
{
  v8 = a4;
  v9 = a5;
  var0 = a3->var0;
  if (!a3->var0)
  {
    v28 = -18;
    goto LABEL_15;
  }

  var4 = a3->var4;
  var5 = a3->var5;
  var6 = a3->var6;
  v14 = *&self->_modelOutput16bit[4];
  v15 = var4 * var5;
  if (!v14)
  {
    goto LABEL_5;
  }

  if (v15 != *&self->_loadModel)
  {
    MEMORY[0x1CCA95C10](*&self->_modelOutput16bit[4], 0x1000C80BDFB0063);
LABEL_5:
    v16 = (var5 * var4 * var6);
    v17 = v16 << 32;
    v18 = 2 * v16;
    if (v17 < 0)
    {
      v19 = -1;
    }

    else
    {
      v19 = v18;
    }

    v14 = operator new[](v19, MEMORY[0x1E69E5398]);
    *&self->_modelOutput16bit[4] = v14;
    *&self->_loadModel = v15;
    if (!v14)
    {
      v28 = -108;
      goto LABEL_15;
    }
  }

  v20 = (v15 * var6);
  if (v20 >= 1)
  {
    v21 = v14;
    do
    {
      v22 = *var0++;
      _S0 = v22;
      __asm { FCVT            H0, S0 }

      *v21++ = _S0;
      --v20;
    }

    while (v20);
  }

  v28 = [(VCPHumanPoseEspressoSession *)self keypointsFromTensor:v14 width:var4 height:var5 channels:var6 withOptions:v8 results:v9];
LABEL_15:

  return v28;
}

- (int)keypointsFromTensor:(VCPHumanPoseEspressoSession *)self width:(SEL)a2 height:channels:withOptions:results:
{
  v8 = v7;
  v9 = v5;
  v10 = v4;
  v11 = v3;
  v12 = v2;
  v198 = *MEMORY[0x1E69E9840];
  v157 = v6;
  v158 = v8;
  v13 = -18;
  if (v9 != 34)
  {
    goto LABEL_118;
  }

  if (!v12)
  {
    goto LABEL_118;
  }

  __src = v12;
  if (!v158)
  {
    goto LABEL_118;
  }

  v161 = [MEMORY[0x1E695DF70] array];
  v14 = self;
  v15 = *self->_heatmapNms;
  v16 = v10 * v11;
  if (v15)
  {
    if (v16 == self->_height * self->_width)
    {
      v17 = 34 * v16;
      v14 = self;
      goto LABEL_13;
    }

    MEMORY[0x1CCA95C10]();
    v14 = self;
  }

  v17 = 34 * v16;
  if (((17 * v16) & 0x8000000000000000) != 0)
  {
    v18 = -1;
  }

  else
  {
    v18 = 34 * v16;
  }

  v15 = operator new[](v18, MEMORY[0x1E69E5398]);
  *v14->_heatmapNms = v15;
  if (!v15)
  {
    v13 = -108;
    goto LABEL_117;
  }

  v14->_width = v11;
  v14->_height = v10;
LABEL_13:
  memcpy(v15, __src, v17);
  v19 = 0;
  v20 = *v14->_heatmapNms;
  LOWORD(v21) = COERCE_UNSIGNED_INT(-1.0);
  v22 = v20;
  do
  {
    if (v10)
    {
      v23 = 0;
      LODWORD(v24) = 0;
      v25 = v20 + 2 * v16 * v19;
      v26 = -3;
      do
      {
        if (v11)
        {
          v27 = 0;
          v24 = v24;
          v28 = v22;
          do
          {
            _H1 = *(v25 + 2 * v24);
            __asm { FCVT            S2, H1 }

            if (_S2 >= 0.1)
            {
              v34 = -3;
              v35 = v26;
              do
              {
                v36 = (v34 + v23);
                v38 = (v36 & 0x80000000) != 0 || v36 >= v10;
                v39 = -3;
                while (v38 || v27 + v39 < 0 || v27 + v39 >= v11 || *(v28 + 2 * v11 * v35 + 2 * v39) <= _H1)
                {
                  if (++v39 == 4)
                  {
                    goto LABEL_35;
                  }
                }

                _H1 = _H1 + *&v21;
                *(v25 + 2 * v24) = _H1;
LABEL_35:
                ++v34;
                ++v35;
              }

              while (v34 != 4);
            }

            else
            {
              *(v25 + 2 * v24) = _H1 + *&v21;
            }

            ++v27;
            ++v24;
            v28 += 2;
          }

          while (v27 != v11);
        }

        ++v23;
        ++v26;
      }

      while (v23 != v10);
    }

    ++v19;
    v22 += 2 * v16;
  }

  while (v19 != 17);
  v162 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 17; ++i)
  {
    if (!v10)
    {
      continue;
    }

    v40 = 0;
    v174 = *self->_heatmapNms + 2 * v16 * i;
    v163 = &__src[2 * v16 * (i + 17)];
    for (j = 0; j != v10; ++j)
    {
      if (!v11)
      {
        continue;
      }

      v41 = 0;
      v42 = v40;
      do
      {
        _H0 = *(v174 + 2 * v42);
        __asm { FCVT            S0, H0 }

        if (_S0 <= 0.1)
        {
          goto LABEL_64;
        }

        obj = v41;
        v171 = v42;
        _H8 = *&v163[2 * v42];
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v188 = 0u;
        v46 = v162;
        v47 = [v46 countByEnumeratingWithState:&v185 objects:v197 count:16];
        __asm { FCVT            S8, H8 }

        if (v47)
        {
          v49 = 0;
          v50 = *v186;
          LODWORD(v51) = -1;
          v52 = 3.4028e38;
          do
          {
            v53 = 0;
            v54 = v49;
            v49 += v47;
            do
            {
              if (*v186 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v55 = [*(*(&v185 + 1) + 8 * v53) objectAtIndexedSubscript:0];
              [v55 floatValue];
              v57 = v56;

              v58 = vabds_f32(_S8, v57);
              if (v58 >= v52)
              {
                v51 = v51;
              }

              else
              {
                v52 = v58;
                v51 = v54;
              }

              ++v54;
              ++v53;
            }

            while (v47 != v53);
            v47 = [v46 countByEnumeratingWithState:&v185 objects:v197 count:16];
          }

          while (v47);

          if ((v51 & 0x80000000) == 0 && v52 < 0.3)
          {
            v60 = [v161 objectAtIndexedSubscript:v51];
            v61 = [v46 objectAtIndexedSubscript:v51];
            v62 = [v61 objectAtIndexedSubscript:0];
            [v62 floatValue];
            v64 = v63;

            v65 = [v46 objectAtIndexedSubscript:v51];
            v66 = [v65 objectAtIndexedSubscript:1];
            [v66 floatValue];
            v68 = v67;

            *&v69 = (_S8 + (v64 * v68)) / (v68 + 1.0);
            v70 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
            v196[0] = v70;
            *&v71 = v68 + 1.0;
            v72 = [MEMORY[0x1E696AD98] numberWithFloat:v71];
            v196[1] = v72;
            v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:2];
            [v46 setObject:v73 atIndexedSubscript:v51];

            _H8 = *(v174 + 2 * v171);
            v75 = [v60 objectAtIndexedSubscript:i];
            v76 = [v75 objectAtIndexedSubscript:2];
            [v76 floatValue];
            __asm { FCVT            S1, H8 }

            LODWORD(v73) = v78 < _S1;

            if (v73)
            {
              v79 = [MEMORY[0x1E696AD98] numberWithInt:obj];
              v195[0] = v79;
              v80 = [MEMORY[0x1E696AD98] numberWithInt:j];
              v195[1] = v80;
              _H0 = *(v174 + 2 * v171);
              __asm { FCVT            S0, H0 }

              v83 = [MEMORY[0x1E696AD98] numberWithFloat:_D0];
              v195[2] = v83;
              v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:3];
              [v60 setObject:v84 atIndexedSubscript:i];
            }

            goto LABEL_63;
          }
        }

        else
        {
        }

        *&v59 = _S8;
        v85 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
        v194[0] = v85;
        v194[1] = &unk_1F49BB0A8;
        v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];
        [v46 addObject:v86];

        v60 = [MEMORY[0x1E695DF70] array];
        v87 = 17;
        do
        {
          [v60 addObject:&unk_1F49BE890];
          --v87;
        }

        while (v87);
        v88 = [MEMORY[0x1E696AD98] numberWithInt:obj];
        v193[0] = v88;
        v89 = [MEMORY[0x1E696AD98] numberWithInt:j];
        v193[1] = v89;
        _H0 = *(v174 + 2 * v171);
        __asm { FCVT            S0, H0 }

        v92 = [MEMORY[0x1E696AD98] numberWithFloat:_D0];
        v193[2] = v92;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:3];
        [v60 setObject:v93 atIndexedSubscript:i];

        [v161 addObject:v60];
LABEL_63:

        v16 = v10 * v11;
        v41 = obj;
        v42 = v171;
LABEL_64:
        ++v41;
        ++v42;
      }

      while (v41 != v11);
      v40 = v42;
    }
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  obja = v161;
  v94 = [obja countByEnumeratingWithState:&v181 objects:v192 count:16];
  if (v94)
  {
    v175 = *v182;
    while (2)
    {
      v172 = v94;
      for (k = 0; k != v172; ++k)
      {
        if (*v182 != v175)
        {
          objc_enumerationMutation(obja);
        }

        v96 = *(*(&v181 + 1) + 8 * k);
        if ([v96 count] != 17)
        {
LABEL_119:
          v13 = -18;
          goto LABEL_120;
        }

        for (m = 0; [v96 count] > m; ++m)
        {
          v98 = [v96 objectAtIndexedSubscript:m];
          v99 = [v98 objectAtIndexedSubscript:2];
          [v99 floatValue];
          v101 = v100 > 0.1;

          if (v101)
          {
            v102 = [v98 objectAtIndexedSubscript:0];
            v103 = [v102 intValue];

            v104 = [v98 objectAtIndexedSubscript:1];
            v105 = [v104 intValue];

            v107 = 0.0;
            v108 = -3;
            v109 = 0.0;
            v110 = 0.0;
            do
            {
              v111 = (v108 + v105);
              v112 = &__src[2 * v10 * v11 * m + 2 * v111 * v11];
              *&v106 = v111;
              v114 = (v111 & 0x80000000) != 0 || v111 >= v10;
              v115 = 7;
              v116 = v103 - 3;
              do
              {
                v117 = (v116 & 0x80000000) != 0 || v114;
                if ((v117 & 1) == 0 && v116 < v11)
                {
                  _H2 = *(v112 + 2 * v116);
                  __asm { FCVT            S2, H2 }

                  if (_S2 > 0.05)
                  {
                    v107 = v107 + _S2;
                    *&v110 = *&v110 + (_S2 * v116);
                    v109 = v109 + (_S2 * *&v106);
                  }
                }

                ++v116;
                --v115;
              }

              while (v115);
              ++v108;
            }

            while (v108 != 4);
            if (v107 > 0.0)
            {
              *&v110 = (*&v110 / v107) + 0.5;
              v120 = [MEMORY[0x1E696AD98] numberWithFloat:{v110, v106}];
              v191[0] = v120;
              *&v121 = (v109 / v107) + 0.5;
              v122 = [MEMORY[0x1E696AD98] numberWithFloat:v121];
              v191[1] = v122;
              v123 = [v98 objectAtIndexedSubscript:2];
              v191[2] = v123;
              v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:3];
              [v96 setObject:v124 atIndexedSubscript:m];
            }
          }
        }
      }

      v94 = [obja countByEnumeratingWithState:&v181 objects:v192 count:16];
      if (v94)
      {
        continue;
      }

      break;
    }
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v165 = obja;
  v166 = [v165 countByEnumeratingWithState:&v177 objects:v190 count:16];
  if (v166)
  {
    v168 = *v178;
    v125 = v11;
    v126 = v10;
    do
    {
      for (n = 0; n != v166; ++n)
      {
        if (*v178 != v168)
        {
          objc_enumerationMutation(v165);
        }

        v127 = 0;
        v128 = *(*(&v177 + 1) + 8 * n);
        v129 = 0.0;
        v130 = 0.0;
        while ([v128 count] > v127)
        {
          v132 = [v128 objectAtIndexedSubscript:v127];
          v133 = [v132 count] == 3;

          if (!v133)
          {
            goto LABEL_119;
          }

          v134 = MEMORY[0x1E696AD98];
          v176 = [v128 objectAtIndexedSubscript:v127];
          v135 = [v176 objectAtIndexedSubscript:0];
          [v135 floatValue];
          *&v137 = v136 / v125;
          v138 = [v134 numberWithFloat:v137];
          v189[0] = v138;
          v139 = MEMORY[0x1E696AD98];
          v140 = [v128 objectAtIndexedSubscript:v127];
          v141 = [v140 objectAtIndexedSubscript:1];
          [v141 floatValue];
          *&v143 = 1.0 - (v142 / v126);
          v144 = [v139 numberWithFloat:v143];
          v189[1] = v144;
          v145 = [v128 objectAtIndexedSubscript:v127];
          v146 = [v145 objectAtIndexedSubscript:2];
          v189[2] = v146;
          v147 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:3];
          [v128 setObject:v147 atIndexedSubscript:v127];

          v148 = [v128 objectAtIndexedSubscript:v127];
          v149 = [v148 objectAtIndexedSubscript:2];
          [v149 floatValue];
          LODWORD(v145) = v150 > 0.1;

          if (v145)
          {
            v151 = [v128 objectAtIndexedSubscript:v127];
            v152 = [v151 objectAtIndexedSubscript:2];
            [v152 floatValue];
            v154 = v153;

            v129 = v129 + v154;
            v130 = v130 + 1.0;
          }

          ++v127;
        }

        if (v130 > 4.0)
        {
          *&v131 = v129 / v130;
          if ((v129 / v130) > 0.1)
          {
            v155 = [(VCPHumanPoseEspressoSession *)self keypointsToObservation:v128, v131];
            [v158 addObject:v155];
          }
        }
      }

      v13 = 0;
      v166 = [v165 countByEnumeratingWithState:&v177 objects:v190 count:{16, v131}];
    }

    while (v166);
  }

  else
  {
    v13 = 0;
  }

LABEL_120:

LABEL_117:
LABEL_118:

  return v13;
}

- (int)requiredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5
{
  result = -50;
  if (a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a3 = 256;
      *a4 = 160;
      *a5 = 1111970369;
    }
  }

  return result;
}

- (int)processFrame:(__CVBuffer *)a3 withOptions:(id)a4 results:(id)a5
{
  v7 = a5;
  v8 = v7;
  v9 = -50;
  if (a3 && v7)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (CVPixelBufferGetPixelFormatType(a3) == 1111970369 && Width == 256 && Height == 160)
    {
      [@"input" UTF8String];
      if (espresso_network_bind_direct_cvpixelbuffer() || espresso_plan_execute_sync())
      {
        v9 = -18;
      }

      else
      {
        v9 = [(VCPHumanPoseEspressoSession *)self keypointsFromTensor:&self->_outputBlob withOptions:0 results:v8];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "incompatible input buffer size/format, check requiredInputFormat", v13, 2u);
      }

      v9 = -50;
    }
  }

  return v9;
}

@end