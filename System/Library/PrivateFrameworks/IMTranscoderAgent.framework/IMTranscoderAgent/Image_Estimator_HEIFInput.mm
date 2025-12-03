@interface Image_Estimator_HEIFInput
- (Image_Estimator_HEIFInput)initWithInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy;
- (id)featureValueForName:(id)name;
@end

@implementation Image_Estimator_HEIFInput

- (Image_Estimator_HEIFInput)initWithInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy
{
  v36.receiver = self;
  v36.super_class = Image_Estimator_HEIFInput;
  result = [(Image_Estimator_HEIFInput *)&v36 init];
  if (result)
  {
    result->_Input_File_Size = size;
    result->_Input_Height = height;
    result->_Input_Entropy = entropy;
    result->_Aspect_Ratio = ratio;
    result->_Target_File_Size = file_Size;
    result->_Target_Max_Dimension_4032 = dimension_4032;
    result->_Target_Max_Dimension_3000 = dimension_3000;
    result->_Target_Max_Dimension_2048 = dimension_2048;
    result->_Target_Max_Dimension_1600 = dimension_1600;
    result->_Target_Max_Dimension_1280 = dimension_1280;
    result->_Target_Max_Dimension_1024 = dimension_1024;
    result->_Target_Max_Dimension_800 = dimension_800;
    result->_Compression_Ratio = compression_Ratio;
    result->_Input_H_x_W__NumOfPixels_ = pixels_;
    result->_Target_Height = target_Height;
    result->_Target_Width = width;
    result->_Input_log_NumOfPixels_ = ofPixels_;
    result->_Ratio_of_NumOfPixels = pixels;
    result->_Exponential_Entropy = exponential_Entropy;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_isEqualToString_(nameCopy, v5, @"Input File Size", v6, v7, v8, v9))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_File_Size(self, v10, v11, v12, v13, v14, v15);
LABEL_11:
    v47 = objc_msgSend_featureValueWithDouble_(v16, v17, v18, v19, v20, v21, v22);
LABEL_12:
    v48 = v47;
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v10, @"Input Height", v12, v13, v14, v15))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_Height(self, v23, v24, v25, v26, v27, v28);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v23, @"Input Entropy", v25, v26, v27, v28))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_Entropy(self, v29, v30, v31, v32, v33, v34);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v29, @"Aspect Ratio", v31, v32, v33, v34))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Aspect_Ratio(self, v35, v36, v37, v38, v39, v40);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v35, @"Target File Size", v37, v38, v39, v40))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_File_Size(self, v41, v42, v43, v44, v45, v46);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v41, @"Target Max Dimension_4032", v43, v44, v45, v46))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_4032(self, v50, v51, v52, v53, v54, v55);
LABEL_30:
    v47 = objc_msgSend_featureValueWithInt64_(v56, v58, v57, v59, v60, v61, v62);
    goto LABEL_12;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v50, @"Target Max Dimension_3000", v52, v53, v54, v55))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_3000(self, v63, v64, v65, v66, v67, v68);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v63, @"Target Max Dimension_2048", v65, v66, v67, v68))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_2048(self, v69, v70, v71, v72, v73, v74);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v69, @"Target Max Dimension_1600", v71, v72, v73, v74))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_1600(self, v75, v76, v77, v78, v79, v80);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v75, @"Target Max Dimension_1280", v77, v78, v79, v80))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_1280(self, v81, v82, v83, v84, v85, v86);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v81, @"Target Max Dimension_1024", v83, v84, v85, v86))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_1024(self, v87, v88, v89, v90, v91, v92);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v87, @"Target Max Dimension_800", v89, v90, v91, v92))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_800(self, v93, v94, v95, v96, v97, v98);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v93, @"Compression Ratio", v95, v96, v97, v98))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Compression_Ratio(self, v99, v100, v101, v102, v103, v104);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v99, @"Input H x W (NumOfPixels)", v101, v102, v103, v104))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_H_x_W__NumOfPixels_(self, v105, v106, v107, v108, v109, v110);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v105, @"Target Height", v107, v108, v109, v110))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Height(self, v111, v112, v113, v114, v115, v116);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v111, @"Target Width", v113, v114, v115, v116))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Width(self, v117, v118, v119, v120, v121, v122);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v117, @"Input log(NumOfPixels)", v119, v120, v121, v122))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_log_NumOfPixels_(self, v123, v124, v125, v126, v127, v128);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v123, @"Ratio of NumOfPixels", v125, v126, v127, v128))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Ratio_of_NumOfPixels(self, v129, v130, v131, v132, v133, v134);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(nameCopy, v129, @"Exponential Entropy", v131, v132, v133, v134))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Exponential_Entropy(self, v135, v136, v137, v138, v139, v140);
    goto LABEL_11;
  }

  v48 = 0;
LABEL_13:

  return v48;
}

@end