@interface CRXFVisionPrescriptionURLDecoder
- (CRXFVisionPrescriptionURLDecoder)initWithDeviceModel:(id)a3;
- (id)prescriptionFromURL:(id)a3 withDescription:(id)a4;
- (unsigned)computeCRC16ForString:(id)a3;
- (unsigned)computeURLChecksum:(id)a3;
@end

@implementation CRXFVisionPrescriptionURLDecoder

- (CRXFVisionPrescriptionURLDecoder)initWithDeviceModel:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CRXFVisionPrescriptionURLDecoder;
  v5 = [(CRXFVisionPrescriptionURLDecoder *)&v23 init];
  if (v5)
  {
    v6 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v5->_log;
    v5->_log = v6;

    v8 = [v4 copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v8;

    v10 = [MEMORY[0x277CCDAB0] diopterUnit];
    v11 = HKQuantityRangeInclusive();
    sphereRange = v5->_sphereRange;
    v5->_sphereRange = v11;

    v13 = [MEMORY[0x277CCDAB0] diopterUnit];
    v14 = HKQuantityRangeInclusive();
    cylinderRange = v5->_cylinderRange;
    v5->_cylinderRange = v14;

    v16 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
    v17 = HKQuantityRangeInclusive();
    axisRange = v5->_axisRange;
    v5->_axisRange = v17;

    v19 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
    v20 = HKQuantityRangeInclusive();
    prismRange = v5->_prismRange;
    v5->_prismRange = v20;
  }

  return v5;
}

- (id)prescriptionFromURL:(id)a3 withDescription:(id)a4
{
  v176 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v6 resolvingAgainstBaseURL:0];
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:];
    }

    v79 = 0;
    goto LABEL_136;
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v10 = [v8 queryItems];
  v11 = [v10 countByEnumeratingWithState:&v151 objects:v175 count:16];
  if (!v11)
  {
    v77 = 0;
    v146 = 0;
    v147 = 0;
    v137 = 0;
    v138 = 0;
    v132 = 0;
    v133 = 0;
    v145 = 0;
    v141 = 0;
    v142 = 0;
    v131 = 0;
    v135 = 0;
    v136 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v143 = 1;
    v144 = 1;
    v130 = 1;
    v139 = 1;
    v140 = 1;
    v134 = 1;
    v126 = 1;
    v127 = 1;
    v125 = 1;
    v78 = 1;
LABEL_96:

LABEL_98:
    log = self->_log;
    v81 = v147;
    v82 = v137;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v112 = v77;
      v113 = MEMORY[0x277CCABB0];
      v114 = log;
      v115 = [v113 numberWithBool:v144 & 1];
      v116 = [MEMORY[0x277CCABB0] numberWithBool:v130 & 1];
      *buf = 136317186;
      v158 = "[CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:]";
      v159 = 1024;
      v160 = 247;
      v161 = 2112;
      v162 = v147;
      v163 = 2112;
      v164 = v112;
      v165 = 2112;
      v166 = v138;
      v167 = 2112;
      v168 = v137;
      v169 = 2112;
      v170 = v135;
      v171 = 2112;
      v172 = v115;
      v173 = 2112;
      v174 = v116;
      _os_log_debug_impl(&dword_24732C000, v114, OS_LOG_TYPE_DEBUG, "%s @%d: lc: %@, ls: %@, rc: %@, rs: %@, acc: %@, la: %@, ra: %@", buf, 0x58u);

      v77 = v112;
      v82 = v137;
      v81 = v147;
    }

    if (v81)
    {
      v83 = v77 == 0;
    }

    else
    {
      v83 = 1;
    }

    v87 = !v83 && v138 != 0 && v82 != 0 && v135 != 0;
    if (v87 & v144 & v130)
    {
      if (v143 & v140 & v139 & v134 & v127 & v126 & v125 & v78)
      {
        v88 = 0;
        if (v131)
        {
          v89 = v77;
          if (v133)
          {
            v88 = [objc_alloc(MEMORY[0x277CCDBD0]) initWithVerticalAmount:v131 verticalBase:v119 horizontalAmount:v133 horizontalBase:v120 eye:2];
          }
        }

        else
        {
          v89 = v77;
        }

        v92 = 0;
        v129 = v9;
        if (v141 && v145)
        {
          v92 = [objc_alloc(MEMORY[0x277CCDBD0]) initWithVerticalAmount:v141 verticalBase:v136 horizontalAmount:v145 horizontalBase:v142 eye:1];
        }

        v93 = v92;
        v150 = v92;
        v94 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v82 cylinder:v138 axis:v132 addPower:0 vertexDistance:0 prism:v88 farPupillaryDistance:0 nearPupillaryDistance:0];
        v95 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v89 cylinder:v81 axis:v146 addPower:0 vertexDistance:0 prism:v93 farPupillaryDistance:0 nearPupillaryDistance:0];
        v96 = *MEMORY[0x277CCE138];
        v155[0] = *MEMORY[0x277CCE120];
        v155[1] = v96;
        deviceModel = self->_deviceModel;
        v156[0] = v135;
        v156[1] = deviceModel;
        v155[2] = *MEMORY[0x277CCE128];
        v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v121];
        v99 = v98;
        v100 = @"Lenses";
        v101 = *MEMORY[0x277CCC4A8];
        if (v7)
        {
          v100 = v7;
        }

        v156[2] = v98;
        v156[3] = v100;
        v102 = *MEMORY[0x277CCC520];
        v155[3] = v101;
        v155[4] = v102;
        v103 = [MEMORY[0x277CCAD78] UUID];
        [v103 UUIDString];
        v105 = v104 = v88;
        v155[5] = *MEMORY[0x277CCC528];
        v156[4] = v105;
        v156[5] = &unk_285933BC0;
        v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:6];

        v107 = MEMORY[0x277CCD488];
        v108 = [MEMORY[0x277CBEAA8] date];
        v109 = [MEMORY[0x277CCD2E8] localDevice];
        v79 = [v107 prescriptionWithRightEyeSpecification:v94 leftEyeSpecification:v95 dateIssued:v108 expirationDate:0 device:v109 metadata:v106];

        v82 = v137;
        v81 = v147;

        v77 = v89;
        v9 = v129;
        goto LABEL_135;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:];
    }

    v79 = 0;
    goto LABEL_135;
  }

  v12 = v11;
  v128 = v9;
  v122 = v7;
  v123 = v6;
  v124 = 0;
  v13 = 0;
  v120 = 0;
  v121 = 0;
  v135 = 0;
  v136 = 0;
  v119 = 0;
  v141 = 0;
  v142 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v145 = 0;
  v146 = 0;
  v137 = 0;
  v138 = 0;
  v147 = 0;
  v148 = self;
  v149 = 0;
  v14 = *v152;
  v117 = 0;
  v118 = 1;
  v125 = 1;
  v126 = 1;
  v127 = 1;
  v134 = 1;
  v139 = 1;
  v140 = 1;
  v143 = 1;
  v144 = 1;
  v130 = 1;
  do
  {
    v15 = 0;
    do
    {
      if (*v152 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v151 + 1) + 8 * v15);
      v17 = [v16 name];
      v18 = [v16 value];
      if (v18)
      {
        if ([v17 isEqualToString:@"ls"])
        {
          v19 = MEMORY[0x277CCD7E8];
          v20 = [MEMORY[0x277CCDAB0] diopterUnit];
          [v18 doubleValue];
          v21 = [v19 quantityWithUnit:v20 doubleValue:?];

          if ([(HKQuantityRange *)self->_sphereRange containsQuantity:v21])
          {
            v22 = v21;

            v149 = v22;
          }

          goto LABEL_27;
        }

        if ([v17 isEqualToString:@"lc"])
        {
          v23 = MEMORY[0x277CCD7E8];
          v24 = [MEMORY[0x277CCDAB0] diopterUnit];
          [v18 doubleValue];
          v21 = [v23 quantityWithUnit:v24 doubleValue:?];

          self = v148;
          if ([(HKQuantityRange *)v148->_cylinderRange containsQuantity:v21])
          {
            v25 = v21;

            v147 = v25;
          }

          goto LABEL_27;
        }

        if ([v17 isEqualToString:@"la"])
        {
          [v18 doubleValue];
          if (v26 != 0.0)
          {
            v27 = v26;
            v28 = MEMORY[0x277CCD7E8];
            v29 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
            v21 = [v28 quantityWithUnit:v29 doubleValue:v27];

            self = v148;
            if ([(HKQuantityRange *)v148->_axisRange containsQuantity:v21])
            {
              v30 = v21;

              v146 = v30;
            }

            else
            {
              v144 = 0;
            }

            goto LABEL_27;
          }

          goto LABEL_28;
        }

        if ([v17 isEqualToString:@"lhp"])
        {
          [v18 doubleValue];
          v32 = v31;
          v33 = MEMORY[0x277CCD7E8];
          v34 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v21 = [v33 quantityWithUnit:v34 doubleValue:v32];

          self = v148;
          if ([(HKQuantityRange *)v148->_prismRange containsQuantity:v21])
          {
            v35 = v21;

            v145 = v35;
          }

          else
          {
            v143 = 0;
          }

          goto LABEL_27;
        }

        if ([v17 isEqualToString:@"lhpd"])
        {
          v36 = [v18 integerValue];
          if (v36)
          {
            if (v36 != 1)
            {
              v140 = 0;
              goto LABEL_28;
            }

            v37 = 3;
          }

          else
          {
            v37 = 4;
          }

          v142 = v37;
LABEL_28:
          ++v13;
          goto LABEL_29;
        }

        if ([v17 isEqualToString:@"lvp"])
        {
          [v18 doubleValue];
          v39 = v38;
          v40 = MEMORY[0x277CCD7E8];
          v41 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v21 = [v40 quantityWithUnit:v41 doubleValue:v39];

          self = v148;
          if ([(HKQuantityRange *)v148->_prismRange containsQuantity:v21])
          {
            v42 = v21;

            v141 = v42;
          }

          else
          {
            v139 = 0;
          }

          goto LABEL_27;
        }

        if ([v17 isEqualToString:@"lvpd"])
        {
          v43 = [v18 integerValue];
          if (v43)
          {
            self = v148;
            if (v43 == 1)
            {
              v136 = 2;
            }

            else
            {
              v134 = 0;
            }
          }

          else
          {
            v136 = 1;
            self = v148;
          }

          goto LABEL_28;
        }

        if ([v17 isEqualToString:@"rs"])
        {
          v44 = MEMORY[0x277CCD7E8];
          v45 = [MEMORY[0x277CCDAB0] diopterUnit];
          [v18 doubleValue];
          v21 = [v44 quantityWithUnit:v45 doubleValue:?];

          self = v148;
          if ([(HKQuantityRange *)v148->_sphereRange containsQuantity:v21])
          {
            v46 = v21;

            v137 = v46;
          }

LABEL_27:

          goto LABEL_28;
        }

        if ([v17 isEqualToString:@"rc"])
        {
          v47 = MEMORY[0x277CCD7E8];
          v48 = [MEMORY[0x277CCDAB0] diopterUnit];
          [v18 doubleValue];
          v21 = [v47 quantityWithUnit:v48 doubleValue:?];

          self = v148;
          if ([(HKQuantityRange *)v148->_cylinderRange containsQuantity:v21])
          {
            v49 = v21;

            v138 = v49;
          }

          goto LABEL_27;
        }

        if ([v17 isEqualToString:@"ra"])
        {
          [v18 doubleValue];
          self = v148;
          if (v50 == 0.0)
          {
            goto LABEL_28;
          }

          v51 = v50;
          v52 = MEMORY[0x277CCD7E8];
          v53 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
          v54 = [v52 quantityWithUnit:v53 doubleValue:v51];

          if ([(HKQuantityRange *)v148->_axisRange containsQuantity:v54])
          {
            v55 = v54;
            v56 = v54;

            v132 = v56;
            goto LABEL_57;
          }

          v130 = 0;
        }

        else
        {
          self = v148;
          if ([v17 isEqualToString:@"rhp"])
          {
            [v18 doubleValue];
            v58 = v57;
            v59 = MEMORY[0x277CCD7E8];
            v60 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
            v54 = [v59 quantityWithUnit:v60 doubleValue:v58];

            if (![(HKQuantityRange *)v148->_prismRange containsQuantity:v54])
            {
              v127 = 0;
              goto LABEL_64;
            }

            v55 = v54;
            v61 = v54;

            v133 = v61;
          }

          else
          {
            if ([v17 isEqualToString:@"rhpd"])
            {
              v62 = [v18 integerValue];
              if (v62)
              {
                if (v62 != 1)
                {
                  v126 = 0;
                  goto LABEL_28;
                }

                v63 = 3;
              }

              else
              {
                v63 = 4;
              }

              v120 = v63;
              goto LABEL_28;
            }

            if (![v17 isEqualToString:@"rvp"])
            {
              if (![v17 isEqualToString:@"rvpd"])
              {
                if ([v17 isEqualToString:@"acc"])
                {
                  if ([v18 length] == 38 || objc_msgSend(v18, "length") == 32)
                  {
                    v71 = [MEMORY[0x277CBEA90] crxu_dataWithHexString:v18];

                    v135 = v71;
                  }
                }

                else if ([v17 isEqualToString:@"cc"])
                {
                  v121 = strtoul([v18 UTF8String], 0, 10);
                }

                else if ([v17 isEqualToString:@"c"])
                {
                  v72 = [v128 queryItems];
                  v73 = [v72 count] - 1;

                  if (v13 == v73)
                  {
                    v117 = strtoul([v18 UTF8String], 0, 16);
                    v124 = 1;
                  }
                }

                goto LABEL_28;
              }

              v69 = [v18 integerValue];
              if (v69)
              {
                if (v69 != 1)
                {
                  v118 = 0;
                  goto LABEL_28;
                }

                v70 = 2;
              }

              else
              {
                v70 = 1;
              }

              v119 = v70;
              goto LABEL_28;
            }

            [v18 doubleValue];
            v65 = v64;
            v66 = MEMORY[0x277CCD7E8];
            v67 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
            v54 = [v66 quantityWithUnit:v67 doubleValue:v65];

            if (![(HKQuantityRange *)v148->_prismRange containsQuantity:v54])
            {
              v125 = 0;
              goto LABEL_64;
            }

            v55 = v54;
            v68 = v54;

            v131 = v68;
          }

LABEL_57:
          v54 = v55;
        }

LABEL_64:

        goto LABEL_28;
      }

LABEL_29:

      ++v15;
    }

    while (v12 != v15);
    v74 = [v10 countByEnumeratingWithState:&v151 objects:v175 count:16];
    v12 = v74;
  }

  while (v74);

  if ((v124 & 1) == 0)
  {
    v7 = v122;
    v6 = v123;
    v9 = v128;
    v77 = v149;
    v78 = v118;
    goto LABEL_98;
  }

  v6 = v123;
  v75 = [v123 absoluteString];
  v10 = [v75 substringToIndex:{objc_msgSend(v75, "length") - 7}];

  v76 = [(CRXFVisionPrescriptionURLDecoder *)self computeCRC16ForString:v10];
  v7 = v122;
  v9 = v128;
  v77 = v149;
  if (v76 == v117)
  {
    v78 = v118;
    goto LABEL_96;
  }

  v90 = v76;
  v91 = self->_log;
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
  {
    [(CRXFVisionPrescriptionURLDecoder *)v90 prescriptionFromURL:v117 withDescription:v91];
  }

  v79 = 0;
  v81 = v147;
  v82 = v137;
LABEL_135:

LABEL_136:
  v110 = *MEMORY[0x277D85DE8];

  return v79;
}

- (unsigned)computeURLChecksum:(id)a3
{
  v4 = [a3 absoluteString];
  if ([v4 length] >= 7)
  {
    v6 = [v4 substringWithRange:{objc_msgSend(v4, "length") - 7, 3}];
    if ([v6 isEqualToString:@"&c="])
    {
      v7 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 7}];

      v4 = v7;
    }

    v5 = [(CRXFVisionPrescriptionURLDecoder *)self computeCRC16ForString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)computeCRC16ForString:(id)a3
{
  v3 = a3;
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 bytes];
  v6 = [v4 length];
  if (v6 < 1)
  {
    v8 = -1;
  }

  else
  {
    v7 = &v5[v6];
    v8 = -1;
    do
    {
      v9 = *v5++;
      v10 = v9 ^ HIBYTE(v8) ^ ((v9 ^ HIBYTE(v8)) >> 4);
      v8 = (v10 | (v8 << 8)) ^ (v10 << 12) ^ (32 * v10);
    }

    while (v5 < v7);
  }

  return v8;
}

- (void)prescriptionFromURL:(os_log_t)log withDescription:.cold.1(int a1, int a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = "[CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:]";
  v6 = 1024;
  v7 = 240;
  v8 = 1026;
  v9 = a1;
  v10 = 1026;
  v11 = a2;
  _os_log_debug_impl(&dword_24732C000, log, OS_LOG_TYPE_DEBUG, "%s @%d: checksum failed: %{public}04x vs %{public}04x", &v4, 0x1Eu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)prescriptionFromURL:withDescription:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 251;
  _os_log_debug_impl(&dword_24732C000, v0, OS_LOG_TYPE_DEBUG, "%s @%d: Invalid or missing RX values", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)prescriptionFromURL:withDescription:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 262;
  _os_log_debug_impl(&dword_24732C000, v0, OS_LOG_TYPE_DEBUG, "%s @%d: Invalid prism RX values", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)prescriptionFromURL:withDescription:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 60;
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: Can't get query items.", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end