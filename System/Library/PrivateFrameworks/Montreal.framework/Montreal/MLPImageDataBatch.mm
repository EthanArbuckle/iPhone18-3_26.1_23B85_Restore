@interface MLPImageDataBatch
- (MLPImageDataBatch)initWithDataBatch:(id)batch batchSize:(unint64_t)size network:(id)network;
@end

@implementation MLPImageDataBatch

- (MLPImageDataBatch)initWithDataBatch:(id)batch batchSize:(unint64_t)size network:(id)network
{
  batchCopy = batch;
  networkCopy = network;
  v139.receiver = self;
  v139.super_class = MLPImageDataBatch;
  v12 = [(MLPImageDataBatch *)&v139 init];
  if (v12)
  {
    v13 = objc_msgSend_deviceHandler(networkCopy, v9, v10, v11);
    v135 = objc_msgSend_device(v13, v14, v15, v16);

    v20 = objc_msgSend_layers(networkCopy, v17, v18, v19);
    v24 = objc_msgSend_firstObject(v20, v21, v22, v23);

    v28 = objc_msgSend_layers(networkCopy, v25, v26, v27);
    v134 = objc_msgSend_lastObject(v28, v29, v30, v31);

    v129 = objc_msgSend_objectForKeyedSubscript_(batchCopy, v32, MLPModelSampleDataFeatureValuesKey, v33);
    v130 = objc_msgSend_bytes(v129, v34, v35, v36);
    v133 = objc_msgSend_objectForKeyedSubscript_(batchCopy, v37, MLPModelSampleDataLabelsKey, v38);
    v41 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v39, size, v40);
    v128 = v12;
    v131 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v42, size, v43);
    v127 = batchCopy;
    v44 = MEMORY[0x1E6974468];
    v48 = objc_msgSend_outputChannels(v134, v45, v46, v47);
    v132 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(v44, v49, 1, 1, 1, v48);
    if (size)
    {
      sizeCopy = size;
      for (i = 0; i != sizeCopy; ++i)
      {
        v55 = objc_alloc_init(MLPData);
        v59 = objc_msgSend_inputLength(v24, v56, v57, v58);
        v63 = objc_msgSend_inputChannels(v24, v60, v61, v62);
        v65 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v64, v130 + 4 * v63 * v59 * i, 4 * v63 * v59);
        objc_msgSend_setPixels_(v55, v66, v65, v67);

        v71 = objc_msgSend_deviceHandler(networkCopy, v68, v69, v70);
        v75 = objc_msgSend_pixels(v55, v72, v73, v74);
        v79 = objc_msgSend_inputLength(v24, v76, v77, v78);
        v83 = objc_msgSend_inputChannels(v24, v80, v81, v82);
        v85 = objc_msgSend_imageFromData_width_height_featureChannels_(v71, v84, v75, v79, 1, v83);

        objc_msgSend_addObject_(v41, v86, v85, v87);
        v90 = objc_msgSend_objectAtIndex_(v133, v88, i, v89);
        v94 = objc_msgSend_unsignedIntegerValue(v90, v91, v92, v93);
        objc_msgSend_setLabel_(v55, v95, v94, v96);
        v97 = objc_alloc(MEMORY[0x1E6974460]);
        v99 = objc_msgSend_initWithDevice_imageDescriptor_(v97, v98, v135, v132);
        v103 = objc_msgSend_outputChannels(v134, v100, v101, v102);
        if (v103)
        {
          if ((v103 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        *objc_msgSend_unsignedIntegerValue(v90, v104, v105, v106) = -1;
        v110 = objc_msgSend_deviceHandler(networkCopy, v107, v108, v109);
        v114 = objc_msgSend_dataLayout(v110, v111, v112, v113);
        objc_msgSend_writeBytes_dataLayout_imageIndex_(v99, v115, 0, v114, 0);

        v116 = objc_alloc(MEMORY[0x1E6974948]);
        v137 = vdupq_n_s64(1uLL);
        v138 = 1;
        v118 = objc_msgSend_initWithDevice_lossImageSize_labelsImage_weightsImage_(v116, v117, v135, &v137, v99, 0);
        objc_msgSend_addObject_(v131, v119, v118, v120);

        operator delete(0);
      }
    }

    v121 = objc_msgSend_copy(v41, v50, v51, v52);
    images = v128->_images;
    v128->_images = v121;

    lossLabels = v128->_lossLabels;
    v128->_lossLabels = v131;
    v124 = v131;

    v12 = v128;
    labels = v128->_labels;
    v128->_labels = v133;

    batchCopy = v127;
  }

  return v12;
}

@end