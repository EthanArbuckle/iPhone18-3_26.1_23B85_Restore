@interface Image_Estimator_HEIFInput
- (Image_Estimator_HEIFInput)initWithInput_File_Size:(double)a3 Input_Height:(double)a4 Input_Entropy:(double)a5 Aspect_Ratio:(double)a6 Target_File_Size:(double)a7 Target_Max_Dimension_4032:(int64_t)a8 Target_Max_Dimension_3000:(int64_t)a9 Target_Max_Dimension_2048:(int64_t)a10 Target_Max_Dimension_1600:(int64_t)a11 Target_Max_Dimension_1280:(int64_t)a12 Target_Max_Dimension_1024:(int64_t)a13 Target_Max_Dimension_800:(int64_t)a14 Compression_Ratio:(double)a15 Input_H_x_W__NumOfPixels_:(double)a16 Target_Height:(double)a17 Target_Width:(double)a18 Input_log_NumOfPixels_:(double)a19 Ratio_of_NumOfPixels:(double)a20 Exponential_Entropy:(double)a21;
- (id)featureValueForName:(id)a3;
@end

@implementation Image_Estimator_HEIFInput

- (Image_Estimator_HEIFInput)initWithInput_File_Size:(double)a3 Input_Height:(double)a4 Input_Entropy:(double)a5 Aspect_Ratio:(double)a6 Target_File_Size:(double)a7 Target_Max_Dimension_4032:(int64_t)a8 Target_Max_Dimension_3000:(int64_t)a9 Target_Max_Dimension_2048:(int64_t)a10 Target_Max_Dimension_1600:(int64_t)a11 Target_Max_Dimension_1280:(int64_t)a12 Target_Max_Dimension_1024:(int64_t)a13 Target_Max_Dimension_800:(int64_t)a14 Compression_Ratio:(double)a15 Input_H_x_W__NumOfPixels_:(double)a16 Target_Height:(double)a17 Target_Width:(double)a18 Input_log_NumOfPixels_:(double)a19 Ratio_of_NumOfPixels:(double)a20 Exponential_Entropy:(double)a21
{
  v36.receiver = self;
  v36.super_class = Image_Estimator_HEIFInput;
  result = [(Image_Estimator_HEIFInput *)&v36 init];
  if (result)
  {
    result->_Input_File_Size = a3;
    result->_Input_Height = a4;
    result->_Input_Entropy = a5;
    result->_Aspect_Ratio = a6;
    result->_Target_File_Size = a7;
    result->_Target_Max_Dimension_4032 = a8;
    result->_Target_Max_Dimension_3000 = a9;
    result->_Target_Max_Dimension_2048 = a10;
    result->_Target_Max_Dimension_1600 = a11;
    result->_Target_Max_Dimension_1280 = a12;
    result->_Target_Max_Dimension_1024 = a13;
    result->_Target_Max_Dimension_800 = a14;
    result->_Compression_Ratio = a15;
    result->_Input_H_x_W__NumOfPixels_ = a16;
    result->_Target_Height = a17;
    result->_Target_Width = a18;
    result->_Input_log_NumOfPixels_ = a19;
    result->_Ratio_of_NumOfPixels = a20;
    result->_Exponential_Entropy = a21;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, @"Input File Size", v6, v7, v8, v9))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_File_Size(self, v10, v11, v12, v13, v14, v15);
LABEL_11:
    v47 = objc_msgSend_featureValueWithDouble_(v16, v17, v18, v19, v20, v21, v22);
LABEL_12:
    v48 = v47;
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(v4, v10, @"Input Height", v12, v13, v14, v15))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_Height(self, v23, v24, v25, v26, v27, v28);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v23, @"Input Entropy", v25, v26, v27, v28))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_Entropy(self, v29, v30, v31, v32, v33, v34);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v29, @"Aspect Ratio", v31, v32, v33, v34))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Aspect_Ratio(self, v35, v36, v37, v38, v39, v40);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v35, @"Target File Size", v37, v38, v39, v40))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_File_Size(self, v41, v42, v43, v44, v45, v46);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v41, @"Target Max Dimension_4032", v43, v44, v45, v46))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_4032(self, v50, v51, v52, v53, v54, v55);
LABEL_30:
    v47 = objc_msgSend_featureValueWithInt64_(v56, v58, v57, v59, v60, v61, v62);
    goto LABEL_12;
  }

  if (objc_msgSend_isEqualToString_(v4, v50, @"Target Max Dimension_3000", v52, v53, v54, v55))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_3000(self, v63, v64, v65, v66, v67, v68);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v4, v63, @"Target Max Dimension_2048", v65, v66, v67, v68))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_2048(self, v69, v70, v71, v72, v73, v74);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v4, v69, @"Target Max Dimension_1600", v71, v72, v73, v74))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_1600(self, v75, v76, v77, v78, v79, v80);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v4, v75, @"Target Max Dimension_1280", v77, v78, v79, v80))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_1280(self, v81, v82, v83, v84, v85, v86);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v4, v81, @"Target Max Dimension_1024", v83, v84, v85, v86))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_1024(self, v87, v88, v89, v90, v91, v92);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v4, v87, @"Target Max Dimension_800", v89, v90, v91, v92))
  {
    v56 = MEMORY[0x277CBFEF8];
    v57 = objc_msgSend_Target_Max_Dimension_800(self, v93, v94, v95, v96, v97, v98);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v4, v93, @"Compression Ratio", v95, v96, v97, v98))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Compression_Ratio(self, v99, v100, v101, v102, v103, v104);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v99, @"Input H x W (NumOfPixels)", v101, v102, v103, v104))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_H_x_W__NumOfPixels_(self, v105, v106, v107, v108, v109, v110);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v105, @"Target Height", v107, v108, v109, v110))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Height(self, v111, v112, v113, v114, v115, v116);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v111, @"Target Width", v113, v114, v115, v116))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Width(self, v117, v118, v119, v120, v121, v122);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v117, @"Input log(NumOfPixels)", v119, v120, v121, v122))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Input_log_NumOfPixels_(self, v123, v124, v125, v126, v127, v128);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v123, @"Ratio of NumOfPixels", v125, v126, v127, v128))
  {
    v16 = MEMORY[0x277CBFEF8];
    objc_msgSend_Ratio_of_NumOfPixels(self, v129, v130, v131, v132, v133, v134);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v4, v129, @"Exponential Entropy", v131, v132, v133, v134))
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