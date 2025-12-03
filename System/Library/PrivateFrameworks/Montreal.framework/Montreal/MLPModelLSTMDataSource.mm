@interface MLPModelLSTMDataSource
- (MLPModelLSTMDataSource)initWithColumns:(unint64_t)columns rows:(unint64_t)rows lstmInputSize:(unint64_t)size lstmOutputSize:(unint64_t)outputSize weightID:(unint64_t)d neuronType:(int)type neuronA:(float)a neuronB:(float)self0 initialWeights_0:(float *)self1 initialWeights_1:(float *)self2 bias_0:(float *)self3 bias_1:(float *)self4 weightAttributes:(unint64_t)self5 deviceHandler:(id)self6;
- (float)biasTerms;
- (id).cxx_construct;
- (void)initializeWeightsAndBiases:(id)biases;
- (void)loadWithInitialWeights_0:(float *)weights_0 initialWeights_1:(float *)weights_1 bias_0:(float *)bias_0 bias_1:(float *)bias_1 weightAttributes:(unint64_t)attributes;
@end

@implementation MLPModelLSTMDataSource

- (MLPModelLSTMDataSource)initWithColumns:(unint64_t)columns rows:(unint64_t)rows lstmInputSize:(unint64_t)size lstmOutputSize:(unint64_t)outputSize weightID:(unint64_t)d neuronType:(int)type neuronA:(float)a neuronB:(float)self0 initialWeights_0:(float *)self1 initialWeights_1:(float *)self2 bias_0:(float *)self3 bias_1:(float *)self4 weightAttributes:(unint64_t)self5 deviceHandler:(id)self6
{
  v18 = *&type;
  handlerCopy = handler;
  v43.receiver = self;
  v43.super_class = MLPModelLSTMDataSource;
  v26 = [(MLPModelLSTMDataSource *)&v43 init];
  v28 = v26;
  if (v26)
  {
    v26->_weightID = d;
    v26->_columns = columns;
    v26->_rows = rows;
    v26->_lstmInputSize = size;
    v26->_lstmOutputSize = outputSize;
    v29 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MEMORY[0x1E69748E8], v27, 1, 1, columns, rows);
    desc = v28->_desc;
    v28->_desc = v29;

    *&v31 = a;
    *&v32 = b;
    objc_msgSend_setNeuronType_parameterA_parameterB_(v28->_desc, v33, v18, v34, v31, v32);
    objc_msgSend_setStrideInPixelsX_(v28->_desc, v35, 1, v36);
    objc_msgSend_setStrideInPixelsY_(v28->_desc, v37, 1, v38);
    if (rows * columns)
    {
      if (!((rows * columns) >> 62))
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    begin = v28->_weight.__begin_;
    if (begin)
    {
      v28->_weight.__end_ = begin;
      operator delete(begin);
      v28->_weight.__begin_ = 0;
      v28->_weight.__end_ = 0;
      v28->_weight.__cap_ = 0;
    }

    v28->_weight.__begin_ = 0;
    v28->_weight.__end_ = 0;
    v28->_weight.__cap_ = 0;
    if (rows)
    {
      if (!(rows >> 62))
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v42 = v28->_bias.__begin_;
    if (v42)
    {
      v28->_bias.__end_ = v42;
      operator delete(v42);
      v28->_bias.__begin_ = 0;
      v28->_bias.__end_ = 0;
      v28->_bias.__cap_ = 0;
    }

    v28->_bias.__begin_ = 0;
    v28->_bias.__end_ = 0;
    v28->_bias.__cap_ = 0;
    if (weights_0 || weights_1 || bias_0 || bias_1)
    {
      objc_msgSend_loadWithInitialWeights_0_initialWeights_1_bias_0_bias_1_weightAttributes_(v28, v39, weights_0, weights_1, bias_0, bias_1, attributes);
    }

    else
    {
      objc_msgSend_initializeWeightsAndBiases_(v28, v39, handlerCopy, 0);
    }
  }

  return v28;
}

- (void)initializeWeightsAndBiases:(id)biases
{
  biasesCopy = biases;
  v8 = 0;
  v9 = 0;
  v43 = 0x3CA3D70A00000000;
  v45 = 0;
  v10 = vdup_n_s32(0x9D2C5680);
  v11 = vdup_n_s32(0xEFC60000);
  __asm { FMOV            V12.2S, #-1.0 }

  while (objc_msgSend_columns(self, v5, v6, v7) > v9)
  {
    for (i = 0; objc_msgSend_rows(self, v17, v18, v19) > i; ++i)
    {
      if (v8)
      {
        v45 = 0;
        v21 = v3;
      }

      else
      {
        v22 = biasesCopy + 1;
        v23 = biasesCopy[313];
        v24 = *(biasesCopy + v23 + 2);
        do
        {
          v25 = (v23 + 1) % 0x270;
          v26 = *(v22 + v25);
          v27 = v26 & 0x7FFFFFFE | v24 & 0x80000000;
          if (v26)
          {
            v28 = -1727483681;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28 ^ *(v22 + (v23 + 397) % 0x270) ^ (v27 >> 1);
          *(v22 + v23) = v29;
          if (v25 < 0x26F)
          {
            v23 = v25 + 1;
          }

          else
          {
            v23 = v25 - 623;
          }

          if (v25 >= 0xE3)
          {
            v30 = -227;
          }

          else
          {
            v30 = 397;
          }

          v24 = *(v22 + v23);
          v31 = *(v22 + v30 + v25);
          if (v24)
          {
            v32 = -1727483681;
          }

          else
          {
            v32 = 0;
          }

          v33 = v32 ^ v31 ^ ((v24 & 0x7FFFFFFE | *(v22 + v25) & 0x80000000) >> 1);
          *(v22 + v25) = v33;
          v34 = veor_s8(vshr_n_u32(__PAIR64__(v29, v33), 0xBuLL), __PAIR64__(v29, v33));
          v35 = veor_s8(vand_s8(vshl_n_s32(v34, 7uLL), v10), v34);
          v36 = veor_s8(vand_s8(vshl_n_s32(v35, 0xFuLL), v11), v35);
          v37 = vmla_f32(_D12, vcvt_f32_u32(veor_s8(vshr_n_u32(v36, 0x12uLL), v36)), 0x3000000030000000);
          v38 = vaddv_f32(vmul_f32(v37, v37));
        }

        while (v38 > 1.0 || v38 == 0.0);
        biasesCopy[313] = v23;
        v42 = v37;
        v39 = sqrtf((logf(v38) * -2.0) / v38);
        v3 = v39 * v42.f32[0];
        v44 = v39 * v42.f32[0];
        v45 = 1;
        v21 = vmuls_lane_f32(v39, v42, 1);
      }

      v8 ^= 1u;
      self->_weight.__begin_[objc_msgSend_rows(self, v5, v6, v7) * v9 + i] = v21 * 0.02;
    }

    ++v9;
  }

  for (j = 0; objc_msgSend_rows(self, v17, v18, v19) > j; ++j)
  {
    self->_bias.__begin_[j] = sub_19D36472C(&v43, (biasesCopy + 1), &v43);
  }
}

- (float)biasTerms
{
  if (self->_bias.__end_ == self->_bias.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_bias.__begin_;
  }
}

- (void)loadWithInitialWeights_0:(float *)weights_0 initialWeights_1:(float *)weights_1 bias_0:(float *)bias_0 bias_1:(float *)bias_1 weightAttributes:(unint64_t)attributes
{
  attributesCopy = attributes;
  weights_0Copy = weights_0;
  v13 = attributes & 0x10;
  v14 = objc_msgSend_weightID(self, a2, weights_0, weights_1);
  if (v14 > 10)
  {
    if (v14 > 14)
    {
      if (v14 == 15)
      {
        if ((attributesCopy & 0x20) != 0)
        {
          v357 = objc_msgSend_lstmOutputSize(self, v15, v16, v17);
          v361 = objc_msgSend_lstmInputSize(self, v358, v359, v360);
          v365 = objc_msgSend_lstmOutputSize(self, v362, v363, v364);
          v369 = objc_msgSend_lstmInputSize(self, v366, v367, v368);
          v373 = objc_msgSend_lstmOutputSize(self, v370, v371, v372);
          if (objc_msgSend_rows(self, v374, v375, v376))
          {
            v377 = v357;
            v378 = 0;
            v379 = v361;
            v380 = 0;
            v381 = &weights_0Copy[3 * v377 * (v365 + v379)];
            v382 = 4 * (v373 + v369);
            do
            {
              if (objc_msgSend_columns(self, v224, v225, v226))
              {
                v386 = 0;
                do
                {
                  v387 = v381[v386];
                  *(&self->_weight.__begin_[v386++] + v378 * objc_msgSend_columns(self, v383, v384, v385)) = v387;
                }

                while (objc_msgSend_columns(self, v388, v389, v390) > v386);
              }

              ++v380;
              v378 += 4;
              v381 = (v381 + v382);
            }

            while (objc_msgSend_rows(self, v383, v384, v385) > v380);
          }
        }

        else
        {
          v210 = objc_msgSend_lstmInputSize(self, v15, v16, v17);
          v214 = objc_msgSend_lstmOutputSize(self, v211, v212, v213);
          objc_msgSend_lstmOutputSize(self, v215, v216, v217);
          objc_msgSend_lstmOutputSize(self, v218, v219, v220);
          if (objc_msgSend_rows(self, v221, v222, v223))
          {
            v227 = 0;
            v228 = 0;
            v229 = 3 * v210 * v214;
            do
            {
              if (objc_msgSend_columns(self, v224, v225, v226))
              {
                v233 = 0;
                do
                {
                  v234 = weights_0Copy[v229 + v233];
                  *(&self->_weight.__begin_[v233++] + v227 * objc_msgSend_columns(self, v230, v231, v232)) = v234;
                }

                while (objc_msgSend_columns(self, v235, v236, v237) > v233);
                v229 += v233;
              }

              ++v228;
              v227 += 4;
            }

            while (objc_msgSend_rows(self, v230, v231, v232) > v228);
          }
        }

        if (objc_msgSend_rows(self, v224, v225, v226))
        {
          v394 = 0;
          do
          {
            self->_bias.__begin_[v394] = bias_0[3 * objc_msgSend_lstmOutputSize(self, v391, v392, v393) + v394];
            if ((attributesCopy & 0x80) == 0)
            {
              self->_bias.__begin_[v394] = self->_bias.__begin_[v394] + bias_1[3 * objc_msgSend_lstmOutputSize(self, v395, v396, v397) + v394];
            }

            ++v394;
          }

          while (objc_msgSend_rows(self, v395, v396, v397) > v394);
        }
      }

      else
      {
        if (v14 != 16)
        {
          goto LABEL_153;
        }

        if ((attributesCopy & 0x20) != 0)
        {
          v512 = objc_msgSend_lstmOutputSize(self, v15, v16, v17);
          v516 = objc_msgSend_lstmInputSize(self, v513, v514, v515);
          v520 = objc_msgSend_lstmOutputSize(self, v517, v518, v519);
          v524 = objc_msgSend_lstmInputSize(self, v521, v522, v523);
          v528 = objc_msgSend_lstmInputSize(self, v525, v526, v527);
          v532 = objc_msgSend_lstmOutputSize(self, v529, v530, v531);
          if (objc_msgSend_rows(self, v533, v534, v535))
          {
            v539 = 0;
            v540 = 0;
            v541 = &weights_0Copy[3 * v512 * (v520 + v516) + v524];
            do
            {
              if (objc_msgSend_columns(self, v536, v537, v538))
              {
                v545 = 0;
                do
                {
                  v546 = v541[v545];
                  *(&self->_weight.__begin_[v545++] + v539 * objc_msgSend_columns(self, v542, v543, v544)) = v546;
                }

                while (objc_msgSend_columns(self, v547, v548, v549) > v545);
              }

              ++v540;
              v539 += 4;
              v541 += v532 + v528;
            }

            while (objc_msgSend_rows(self, v542, v543, v544) > v540);
          }
        }

        else
        {
          objc_msgSend_lstmInputSize(self, v15, v16, v17);
          objc_msgSend_lstmOutputSize(self, v100, v101, v102);
          v106 = objc_msgSend_lstmOutputSize(self, v103, v104, v105);
          v110 = objc_msgSend_lstmOutputSize(self, v107, v108, v109);
          if (objc_msgSend_rows(self, v111, v112, v113))
          {
            v117 = 0;
            v118 = 0;
            v119 = 3 * v106 * v110;
            do
            {
              if (objc_msgSend_columns(self, v114, v115, v116))
              {
                v123 = 0;
                do
                {
                  v124 = weights_1[v119 + v123];
                  *(&self->_weight.__begin_[v123++] + v117 * objc_msgSend_columns(self, v120, v121, v122)) = v124;
                }

                while (objc_msgSend_columns(self, v125, v126, v127) > v123);
                v119 += v123;
              }

              ++v118;
              v117 += 4;
            }

            while (objc_msgSend_rows(self, v120, v121, v122) > v118);
          }
        }
      }
    }

    else if (v14 == 11)
    {
      v560 = v13;
      if ((attributesCopy & 0x20) != 0)
      {
        v273 = objc_msgSend_lstmOutputSize(self, v15, v16, v17);
        v277 = objc_msgSend_lstmInputSize(self, v274, v275, v276);
        v281 = objc_msgSend_lstmOutputSize(self, v278, v279, v280);
        v285 = objc_msgSend_lstmInputSize(self, v282, v283, v284);
        v289 = objc_msgSend_lstmOutputSize(self, v286, v287, v288);
        if (objc_msgSend_rows(self, v290, v291, v292))
        {
          v293 = v273;
          v294 = 0;
          v295 = v277;
          v296 = 0;
          v297 = &weights_0Copy[(v293 << ((v560 >> 4) ^ 1u)) * (v281 + v295)];
          v298 = 4 * (v289 + v285);
          do
          {
            if (objc_msgSend_columns(self, v168, v169, v170))
            {
              v302 = 0;
              do
              {
                v303 = v297[v302];
                *(&self->_weight.__begin_[v302++] + v294 * objc_msgSend_columns(self, v299, v300, v301)) = v303;
              }

              while (objc_msgSend_columns(self, v304, v305, v306) > v302);
            }

            ++v296;
            v294 += 4;
            v297 = (v297 + v298);
          }

          while (objc_msgSend_rows(self, v299, v300, v301) > v296);
        }
      }

      else
      {
        v154 = objc_msgSend_lstmInputSize(self, v15, v16, v17);
        v158 = objc_msgSend_lstmOutputSize(self, v155, v156, v157);
        objc_msgSend_lstmOutputSize(self, v159, v160, v161);
        objc_msgSend_lstmOutputSize(self, v162, v163, v164);
        if (objc_msgSend_rows(self, v165, v166, v167))
        {
          v171 = 0;
          v172 = 0;
          v173 = (v154 << ((v560 >> 4) ^ 1u)) * v158;
          do
          {
            if (objc_msgSend_columns(self, v168, v169, v170))
            {
              v177 = 0;
              do
              {
                v178 = weights_0Copy[v173 + v177];
                *(&self->_weight.__begin_[v177++] + v171 * objc_msgSend_columns(self, v174, v175, v176)) = v178;
              }

              while (objc_msgSend_columns(self, v179, v180, v181) > v177);
              v173 += v177;
            }

            ++v172;
            v171 += 4;
          }

          while (objc_msgSend_rows(self, v174, v175, v176) > v172);
        }
      }

      if (objc_msgSend_rows(self, v168, v169, v170))
      {
        v310 = 0;
        v311 = (v560 >> 4) ^ 1;
        do
        {
          self->_bias.__begin_[v310] = bias_0[(objc_msgSend_lstmOutputSize(self, v307, v308, v309) << v311) + v310];
          if ((attributesCopy & 0x80) == 0)
          {
            self->_bias.__begin_[v310] = self->_bias.__begin_[v310] + bias_1[(objc_msgSend_lstmOutputSize(self, v312, v313, v314) << v311) + v310];
          }

          ++v310;
        }

        while (objc_msgSend_rows(self, v312, v313, v314) > v310);
      }
    }

    else
    {
      if (v14 != 12)
      {
        goto LABEL_153;
      }

      if ((attributesCopy & 0x20) != 0)
      {
        v434 = objc_msgSend_lstmOutputSize(self, v15, v16, v17);
        v438 = objc_msgSend_lstmInputSize(self, v435, v436, v437);
        v442 = objc_msgSend_lstmOutputSize(self, v439, v440, v441);
        v446 = objc_msgSend_lstmInputSize(self, v443, v444, v445);
        v450 = objc_msgSend_lstmInputSize(self, v447, v448, v449);
        v454 = objc_msgSend_lstmOutputSize(self, v451, v452, v453);
        if (objc_msgSend_rows(self, v455, v456, v457))
        {
          v461 = v13;
          v462 = 0;
          v463 = 0;
          v464 = &weights_0Copy[(v434 << ((v461 >> 4) ^ 1u)) * (v442 + v438) + v446];
          do
          {
            if (objc_msgSend_columns(self, v458, v459, v460))
            {
              v468 = 0;
              do
              {
                v469 = v464[v468];
                *(&self->_weight.__begin_[v468++] + v462 * objc_msgSend_columns(self, v465, v466, v467)) = v469;
              }

              while (objc_msgSend_columns(self, v470, v471, v472) > v468);
            }

            ++v463;
            v462 += 4;
            v464 += v454 + v450;
          }

          while (objc_msgSend_rows(self, v465, v466, v467) > v463);
        }
      }

      else
      {
        objc_msgSend_lstmInputSize(self, v15, v16, v17);
        objc_msgSend_lstmOutputSize(self, v44, v45, v46);
        v50 = objc_msgSend_lstmOutputSize(self, v47, v48, v49);
        v54 = objc_msgSend_lstmOutputSize(self, v51, v52, v53);
        if (objc_msgSend_rows(self, v55, v56, v57))
        {
          v61 = 0;
          v62 = 0;
          v63 = (v50 << ((v13 >> 4) ^ 1u)) * v54;
          do
          {
            if (objc_msgSend_columns(self, v58, v59, v60))
            {
              v67 = 0;
              do
              {
                v68 = weights_1[v63 + v67];
                *(&self->_weight.__begin_[v67++] + v61 * objc_msgSend_columns(self, v64, v65, v66)) = v68;
              }

              while (objc_msgSend_columns(self, v69, v70, v71) > v67);
              v63 += v67;
            }

            ++v62;
            v61 += 4;
          }

          while (objc_msgSend_rows(self, v64, v65, v66) > v62);
        }
      }
    }
  }

  else if (v14 > 6)
  {
    if (v14 == 7)
    {
      v561 = v13;
      if ((attributesCopy & 0x20) != 0)
      {
        v315 = objc_msgSend_lstmOutputSize(self, v15, v16, v17);
        v319 = objc_msgSend_lstmInputSize(self, v316, v317, v318);
        v323 = objc_msgSend_lstmOutputSize(self, v320, v321, v322);
        v327 = objc_msgSend_lstmInputSize(self, v324, v325, v326);
        v331 = objc_msgSend_lstmOutputSize(self, v328, v329, v330);
        if (objc_msgSend_rows(self, v332, v333, v334))
        {
          v335 = v315;
          v336 = 0;
          v337 = v319;
          v338 = 0;
          v339 = &weights_0Copy[(v335 << (v561 >> 4)) * (v323 + v337)];
          v340 = 4 * (v331 + v327);
          do
          {
            if (objc_msgSend_columns(self, v196, v197, v198))
            {
              v344 = 0;
              do
              {
                v345 = v339[v344];
                *(&self->_weight.__begin_[v344++] + v336 * objc_msgSend_columns(self, v341, v342, v343)) = v345;
              }

              while (objc_msgSend_columns(self, v346, v347, v348) > v344);
            }

            ++v338;
            v336 += 4;
            v339 = (v339 + v340);
          }

          while (objc_msgSend_rows(self, v341, v342, v343) > v338);
        }
      }

      else
      {
        v182 = objc_msgSend_lstmInputSize(self, v15, v16, v17);
        v186 = objc_msgSend_lstmOutputSize(self, v183, v184, v185);
        objc_msgSend_lstmOutputSize(self, v187, v188, v189);
        objc_msgSend_lstmOutputSize(self, v190, v191, v192);
        if (objc_msgSend_rows(self, v193, v194, v195))
        {
          v199 = 0;
          v200 = 0;
          v201 = (v182 << (v561 >> 4)) * v186;
          do
          {
            if (objc_msgSend_columns(self, v196, v197, v198))
            {
              v205 = 0;
              do
              {
                v206 = weights_0Copy[v201 + v205];
                *(&self->_weight.__begin_[v205++] + v199 * objc_msgSend_columns(self, v202, v203, v204)) = v206;
              }

              while (objc_msgSend_columns(self, v207, v208, v209) > v205);
              v201 += v205;
            }

            ++v200;
            v199 += 4;
          }

          while (objc_msgSend_rows(self, v202, v203, v204) > v200);
        }
      }

      if (objc_msgSend_rows(self, v196, v197, v198))
      {
        v352 = 0;
        v353 = v561 >> 4;
        do
        {
          self->_bias.__begin_[v352] = bias_0[(objc_msgSend_lstmOutputSize(self, v349, v350, v351) << v353) + v352];
          if ((attributesCopy & 0x80) == 0)
          {
            self->_bias.__begin_[v352] = self->_bias.__begin_[v352] + bias_1[(objc_msgSend_lstmOutputSize(self, v354, v355, v356) << v353) + v352];
          }

          ++v352;
        }

        while (objc_msgSend_rows(self, v354, v355, v356) > v352);
      }
    }

    else
    {
      if (v14 != 8)
      {
        goto LABEL_153;
      }

      if ((attributesCopy & 0x20) != 0)
      {
        v473 = objc_msgSend_lstmOutputSize(self, v15, v16, v17);
        v477 = objc_msgSend_lstmInputSize(self, v474, v475, v476);
        v481 = objc_msgSend_lstmOutputSize(self, v478, v479, v480);
        v485 = objc_msgSend_lstmInputSize(self, v482, v483, v484);
        v489 = objc_msgSend_lstmInputSize(self, v486, v487, v488);
        v493 = objc_msgSend_lstmOutputSize(self, v490, v491, v492);
        if (objc_msgSend_rows(self, v494, v495, v496))
        {
          v500 = v13;
          v501 = 0;
          v502 = 0;
          v503 = &weights_0Copy[(v473 << (v500 >> 4)) * (v481 + v477) + v485];
          do
          {
            if (objc_msgSend_columns(self, v497, v498, v499))
            {
              v507 = 0;
              do
              {
                v508 = v503[v507];
                *(&self->_weight.__begin_[v507++] + v501 * objc_msgSend_columns(self, v504, v505, v506)) = v508;
              }

              while (objc_msgSend_columns(self, v509, v510, v511) > v507);
            }

            ++v502;
            v501 += 4;
            v503 += v493 + v489;
          }

          while (objc_msgSend_rows(self, v504, v505, v506) > v502);
        }
      }

      else
      {
        objc_msgSend_lstmInputSize(self, v15, v16, v17);
        objc_msgSend_lstmOutputSize(self, v72, v73, v74);
        v78 = objc_msgSend_lstmOutputSize(self, v75, v76, v77);
        v82 = objc_msgSend_lstmOutputSize(self, v79, v80, v81);
        if (objc_msgSend_rows(self, v83, v84, v85))
        {
          v89 = 0;
          v90 = 0;
          v91 = (v78 << (v13 >> 4)) * v82;
          do
          {
            if (objc_msgSend_columns(self, v86, v87, v88))
            {
              v95 = 0;
              do
              {
                v96 = weights_1[v91 + v95];
                *(&self->_weight.__begin_[v95++] + v89 * objc_msgSend_columns(self, v92, v93, v94)) = v96;
              }

              while (objc_msgSend_columns(self, v97, v98, v99) > v95);
              v91 += v95;
            }

            ++v90;
            v89 += 4;
          }

          while (objc_msgSend_rows(self, v92, v93, v94) > v90);
        }
      }
    }
  }

  else
  {
    if (v14 != 3)
    {
      if (v14 == 4)
      {
        if ((attributesCopy & 0x20) != 0)
        {
          objc_msgSend_lstmOutputSize(self, v15, v16, v17);
          objc_msgSend_lstmInputSize(self, v398, v399, v400);
          objc_msgSend_lstmOutputSize(self, v401, v402, v403);
          v407 = objc_msgSend_lstmInputSize(self, v404, v405, v406);
          v411 = objc_msgSend_lstmInputSize(self, v408, v409, v410);
          v415 = objc_msgSend_lstmOutputSize(self, v412, v413, v414);
          if (objc_msgSend_rows(self, v416, v417, v418))
          {
            v422 = 0;
            v423 = 0;
            v424 = &weights_0Copy[v407];
            v425 = 4 * (v415 + v411);
            do
            {
              if (objc_msgSend_columns(self, v419, v420, v421))
              {
                v429 = 0;
                do
                {
                  v430 = v424[v429];
                  *(&self->_weight.__begin_[v429++] + v422 * objc_msgSend_columns(self, v426, v427, v428)) = v430;
                }

                while (objc_msgSend_columns(self, v431, v432, v433) > v429);
              }

              ++v423;
              v422 += 4;
              v424 = (v424 + v425);
            }

            while (objc_msgSend_rows(self, v426, v427, v428) > v423);
          }
        }

        else
        {
          objc_msgSend_lstmInputSize(self, v15, v16, v17);
          objc_msgSend_lstmOutputSize(self, v18, v19, v20);
          objc_msgSend_lstmOutputSize(self, v21, v22, v23);
          objc_msgSend_lstmOutputSize(self, v24, v25, v26);
          if (objc_msgSend_rows(self, v27, v28, v29))
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            do
            {
              if (objc_msgSend_columns(self, v30, v31, v32))
              {
                v39 = 0;
                do
                {
                  v40 = weights_1[v35 + v39];
                  *(&self->_weight.__begin_[v39++] + v33 * objc_msgSend_columns(self, v36, v37, v38)) = v40;
                }

                while (objc_msgSend_columns(self, v41, v42, v43) > v39);
                v35 += v39;
              }

              ++v34;
              v33 += 4;
            }

            while (objc_msgSend_rows(self, v36, v37, v38) > v34);
          }
        }

        return;
      }

LABEL_153:
      v550 = MEMORY[0x1E695DF30];
      v551 = *MEMORY[0x1E695D930];
      v552 = MEMORY[0x1E696AEC0];
      v553 = objc_msgSend_weightID(self, v15, v16, v17);
      v556 = objc_msgSend_stringWithFormat_(v552, v554, @"Unknown weight ID %tu", v555, v553);
      v558 = objc_msgSend_exceptionWithName_reason_userInfo_(v550, v557, v551, v556, 0);
      v559 = v558;

      objc_exception_throw(v558);
    }

    if ((attributesCopy & 0x20) != 0)
    {
      objc_msgSend_lstmOutputSize(self, v15, v16, v17);
      objc_msgSend_lstmInputSize(self, v238, v239, v240);
      objc_msgSend_lstmOutputSize(self, v241, v242, v243);
      v247 = objc_msgSend_lstmInputSize(self, v244, v245, v246);
      v251 = objc_msgSend_lstmOutputSize(self, v248, v249, v250);
      if (objc_msgSend_rows(self, v252, v253, v254))
      {
        v255 = 0;
        v256 = 0;
        v257 = 4 * (v251 + v247);
        do
        {
          if (objc_msgSend_columns(self, v140, v141, v142))
          {
            v261 = 0;
            do
            {
              v262 = weights_0Copy[v261];
              *(&self->_weight.__begin_[v261++] + v255 * objc_msgSend_columns(self, v258, v259, v260)) = v262;
            }

            while (objc_msgSend_columns(self, v263, v264, v265) > v261);
          }

          ++v256;
          v255 += 4;
          weights_0Copy = (weights_0Copy + v257);
        }

        while (objc_msgSend_rows(self, v258, v259, v260) > v256);
      }
    }

    else
    {
      objc_msgSend_lstmInputSize(self, v15, v16, v17);
      objc_msgSend_lstmOutputSize(self, v128, v129, v130);
      objc_msgSend_lstmOutputSize(self, v131, v132, v133);
      objc_msgSend_lstmOutputSize(self, v134, v135, v136);
      if (objc_msgSend_rows(self, v137, v138, v139))
      {
        v143 = 0;
        v144 = 0;
        v145 = 0;
        do
        {
          if (objc_msgSend_columns(self, v140, v141, v142))
          {
            v149 = 0;
            do
            {
              v150 = weights_0Copy[v145 + v149];
              *(&self->_weight.__begin_[v149++] + v143 * objc_msgSend_columns(self, v146, v147, v148)) = v150;
            }

            while (objc_msgSend_columns(self, v151, v152, v153) > v149);
            v145 += v149;
          }

          ++v144;
          v143 += 4;
        }

        while (objc_msgSend_rows(self, v146, v147, v148) > v144);
      }
    }

    if (objc_msgSend_rows(self, v140, v141, v142))
    {
      v269 = 0;
      do
      {
        objc_msgSend_lstmOutputSize(self, v266, v267, v268);
        self->_bias.__begin_[v269] = bias_0[v269];
        if ((attributesCopy & 0x80) == 0)
        {
          objc_msgSend_lstmOutputSize(self, v270, v271, v272);
          self->_bias.__begin_[v269] = self->_bias.__begin_[v269] + bias_1[v269];
        }

        ++v269;
      }

      while (objc_msgSend_rows(self, v270, v271, v272) > v269);
    }
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end