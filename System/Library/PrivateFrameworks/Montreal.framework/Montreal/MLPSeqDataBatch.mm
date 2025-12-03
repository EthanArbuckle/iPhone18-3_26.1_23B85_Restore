@interface MLPSeqDataBatch
- (MLPSeqDataBatch)initWithDataBatch:(id)batch batchSize:(unint64_t)size network:(id)network;
@end

@implementation MLPSeqDataBatch

- (MLPSeqDataBatch)initWithDataBatch:(id)batch batchSize:(unint64_t)size network:(id)network
{
  batchCopy = batch;
  networkCopy = network;
  v137.receiver = self;
  v137.super_class = MLPSeqDataBatch;
  v11 = [(MLPSeqDataBatch *)&v137 init];
  if (v11)
  {
    v12 = objc_msgSend_deviceHandler(networkCopy, v8, v9, v10);
    v123 = objc_msgSend_device(v12, v13, v14, v15);

    v19 = objc_msgSend_layers(networkCopy, v16, v17, v18);
    v122 = objc_msgSend_firstObject(v19, v20, v21, v22);

    v26 = objc_msgSend_layers(networkCopy, v23, v24, v25);
    v124 = objc_msgSend_lastObject(v26, v27, v28, v29);

    v132 = objc_msgSend_objectForKeyedSubscript_(batchCopy, v30, MLPModelSampleDataBatchOfSequencesKey, v31);
    v128 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33, v34);
    v127 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37);
    v38 = MEMORY[0x1E6974468];
    v42 = objc_msgSend_outputChannels(v124, v39, v40, v41);
    v121 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(v38, v43, 4, 1, 1, v42);
    v130 = v11;
    if (size)
    {
      v46 = 0;
      v131 = 0;
      objc_msgSend_objectAtIndexedSubscript_(v132, v44, 0, v45);
      while (1)
        v47 = {;
        v50 = objc_msgSend_objectForKeyedSubscript_(v47, v48, MLPModelSampleDataSequenceValuesKey, v49);
        v54 = objc_msgSend_count(v50, v51, v52, v53);
        v55 = v131;
        v56 = v131 >> 4;
        if (((v131 >> 4) + 1) >> 60)
        {
          sub_19D2AE2B4();
        }

        if (v131 >> 4 != -1)
        {
          if (!(((v131 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_19D2AD81C();
        }

        v57 = (16 * v56);
        *v57 = v46;
        v57[1] = v54;
        v131 = 16 * v56 + 16;
        memcpy(0, 0, v55);

        if (size == ++v46)
        {
          break;
        }

        objc_msgSend_objectAtIndexedSubscript_(v132, v58, v46, v59);
      }
    }

    else
    {
      v131 = 0;
    }

    v60 = v131;
    v61 = 126 - 2 * __clz(v131 >> 4);
    if (v131)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    sub_19D38F76C(0, v131, v62, 1);
    v11 = v130;
    v126 = MEMORY[8];
    if (MEMORY[8])
    {
      v66 = 0;
      do
      {
        __p = 0;
        v135 = 0;
        v136 = 0;
        if (v60)
        {
          v133 = 0;
          for (i = 0; i != v60; i += 2)
          {
            v69 = objc_msgSend_objectAtIndexedSubscript_(v132, v63, *i, v65);
            v72 = objc_msgSend_objectForKeyedSubscript_(v69, v70, MLPModelSampleDataSequenceValuesKey, v71);
            v75 = objc_msgSend_objectForKeyedSubscript_(v69, v73, MLPModelSampleDataSequenceLabelsKey, v74);
            if (objc_msgSend_count(v72, v76, v77, v78) > v66)
            {
              v81 = v66;
              v82 = objc_msgSend_objectAtIndexedSubscript_(v72, v79, v66, v80);
              v86 = objc_msgSend_unsignedIntegerValue(v82, v83, v84, v85);
              v87 = v133 >> 2;
              if (((v133 >> 2) + 1) >> 62)
              {
                sub_19D2AE2B4();
              }

              if (v133 >> 2 != -1)
              {
                if (!(((v133 >> 2) + 1) >> 62))
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              *(4 * v87) = v86;
              memcpy(0, 0, v133);
              v133 = 4 * v87 + 4;

              v90 = objc_msgSend_objectAtIndexedSubscript_(v75, v88, v66, v89);
              v94 = objc_msgSend_unsignedIntegerValue(v90, v91, v92, v93);
              v95 = v135;
              if (v135 < v136)
              {
                *v135 = v94;
                v68 = (v95 + 1);
                v60 = v131;
              }

              else
              {
                v96 = __p;
                v97 = v135 - __p;
                v98 = (v135 - __p) >> 2;
                v99 = v98 + 1;
                if ((v98 + 1) >> 62)
                {
                  sub_19D2AE2B4();
                }

                v100 = v136 - __p;
                if ((v136 - __p) >> 1 > v99)
                {
                  v99 = v100 >> 1;
                }

                if (v100 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v101 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v101 = v99;
                }

                if (v101)
                {
                  if (!(v101 >> 62))
                  {
                    operator new();
                  }

                  sub_19D2AD81C();
                }

                *(4 * v98) = v94;
                v68 = 4 * v98 + 4;
                memcpy(0, v96, v97);
                __p = 0;
                v135 = v68;
                v136 = 0;
                if (v96)
                {
                  operator delete(v96);
                }

                v60 = v131;
                v66 = v81;
              }

              v135 = v68;

              v11 = v130;
            }
          }
        }

        else
        {
          v133 = 0;
        }

        v102 = objc_msgSend_deviceHandler(networkCopy, v63, v64, v65);
        v104 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(v102, v103, v133 >> 2, 1, 0, 0, 0.0);

        objc_msgSend_addObject_(v128, v105, v104, v106);
        v60 = v131;
        v11->_labelsCount += (v135 - __p) >> 2;
        v107 = sub_19D38C918(&__p);
        objc_msgSend_addObjectsFromArray_(v127, v108, v107, v109);

        if (v107)
        {
          CFRelease(v107);
        }

        if (__p)
        {
          v135 = __p;
          operator delete(__p);
        }

        ++v66;
      }

      while (v66 != v126);
    }

    v110 = objc_msgSend_copy(v128, v63, v64, v65);
    matrix = v11->_matrix;
    v11->_matrix = v110;

    v112 = objc_alloc_init(MLPNDArrayLossLabels);
    v116 = objc_msgSend_copy(v127, v113, v114, v115);
    objc_msgSend_setLabels_(v112, v117, v116, v118);

    combinedLossLabels = v11->_combinedLossLabels;
    v11->_combinedLossLabels = v112;
  }

  return v11;
}

@end