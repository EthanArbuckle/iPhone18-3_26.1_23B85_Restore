@interface CHStrokeGroupClassificationVisualization
- (CGColor)newColorForStrokeInGroup:(id)a3;
- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5;
@end

@implementation CHStrokeGroupClassificationVisualization

- (void)drawVisualizationInRect:(CGRect)a3 context:(CGContext *)a4 viewBounds:(CGRect)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v195 = *MEMORY[0x1E69E9840];
  v182.receiver = self;
  v182.super_class = CHStrokeGroupClassificationVisualization;
  [(CHStrokeGroupingVisualization *)&v182 drawVisualizationInRect:a3.origin.x context:a3.origin.y viewBounds:a3.size.width, a3.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  color = CGColorCreate(DeviceRGB, dbl_1839D92C8);
  v179 = CGColorCreate(DeviceRGB, dbl_1839D92E8);
  v175 = CGColorCreate(DeviceRGB, dbl_1839D9308);
  v178 = CGColorCreate(DeviceRGB, dbl_1839D9328);
  v177 = CGColorCreate(DeviceRGB, dbl_1839D9348);
  v176 = CGColorCreate(DeviceRGB, dbl_1839D9368);
  v174 = CGColorCreate(DeviceRGB, dbl_1839D9388);
  v12 = CGColorCreate(DeviceRGB, dbl_1839D93A8);
  v13 = CGColorCreate(DeviceRGB, dbl_1839D93C8);
  v196.size.width = 432.0;
  v196.origin.x = 6.0;
  v196.origin.y = 8.0;
  v196.size.height = 18.0;
  v202.origin.x = x;
  v202.origin.y = y;
  v202.size.width = width;
  v202.size.height = height;
  if (CGRectIntersectsRect(v196, v202))
  {
    CGContextSetFillColorWithColor(a4, color);
    v197.size.width = 432.0;
    v197.origin.x = 6.0;
    v197.origin.y = 8.0;
    v197.size.height = 18.0;
    CGContextFillRect(a4, v197);
    v198.size.width = 432.0;
    v198.origin.x = 6.0;
    v198.origin.y = 8.0;
    v198.size.height = 18.0;
    MidY = CGRectGetMidY(v198);
    CGContextTranslateCTM(a4, 0.0, MidY);
    CGContextScaleCTM(a4, 1.0, -1.0);
    v199.size.width = 432.0;
    v199.origin.x = 6.0;
    v199.origin.y = 8.0;
    v199.size.height = 18.0;
    v15 = CGRectGetMidY(v199);
    CGContextTranslateCTM(a4, 0.0, -v15);
    v188 = 0;
    v189 = &v188;
    v190 = 0x2020000000;
    v16 = off_1EA84D088;
    v191 = off_1EA84D088;
    if (!off_1EA84D088)
    {
      v183 = MEMORY[0x1E69E9820];
      v184 = 3221225472;
      v185 = sub_18389E458;
      v186 = &unk_1E6DDD2E0;
      v187 = &v188;
      sub_18389E458(&v183);
      v16 = v189[3];
    }

    _Block_object_dispose(&v188, 8);
    if (v16)
    {
      v17 = v16(@"Helvetica-Bold", 0, 12.0);
      v181 = 0;
      v192 = 0;
      v193 = 1;
      v194 = &v181;
      v188 = 0;
      v189 = &v188;
      v190 = 0x2020000000;
      v18 = off_1EA84D098;
      v191 = off_1EA84D098;
      if (!off_1EA84D098)
      {
        v183 = MEMORY[0x1E69E9820];
        v184 = 3221225472;
        v185 = sub_18389E614;
        v186 = &unk_1E6DDD2E0;
        v187 = &v188;
        sub_18389E614(&v183);
        v18 = v189[3];
      }

      _Block_object_dispose(&v188, 8);
      if (v18)
      {
        v19 = v18(&v192, 1);
        v20 = objc_alloc(MEMORY[0x1E696AAB0]);
        v25 = objc_msgSend_initWithString_(v20, v21, @"   ", v22, v23, v24);
        v26 = objc_alloc(MEMORY[0x1E696AD40]);
        v32 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v27, v28, v29, v30, v31);
        v35 = objc_msgSend_localizedStringForKey_value_table_(v32, v33, @"Stroke group classification: ", &stru_1EF1C0318, 0, v34);
        v36 = sub_18389E0DC(self, v35, v179, v17, v19);
        v41 = objc_msgSend_initWithAttributedString_(v26, v37, v36, v38, v39, v40);
        objc_msgSend_appendAttributedString_(v41, v42, v25, v43, v44, v45);
        v51 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v46, v47, v48, v49, v50);
        v54 = objc_msgSend_localizedStringForKey_value_table_(v51, v52, @"text", &stru_1EF1C0318, 0, v53);
        v55 = sub_18389E0DC(self, v54, v178, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v56, v55, v57, v58, v59);
        objc_msgSend_appendAttributedString_(v41, v60, v25, v61, v62, v63);
        v69 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v64, v65, v66, v67, v68);
        v72 = objc_msgSend_localizedStringForKey_value_table_(v69, v70, @"math", &stru_1EF1C0318, 0, v71);
        v73 = sub_18389E0DC(self, v72, v177, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v74, v73, v75, v76, v77);
        objc_msgSend_appendAttributedString_(v41, v78, v25, v79, v80, v81);
        v87 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v82, v83, v84, v85, v86);
        v90 = objc_msgSend_localizedStringForKey_value_table_(v87, v88, @"clutter", &stru_1EF1C0318, 0, v89);
        v91 = sub_18389E0DC(self, v90, v13, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v92, v91, v93, v94, v95);
        objc_msgSend_appendAttributedString_(v41, v96, v25, v97, v98, v99);
        v105 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v100, v101, v102, v103, v104);
        v108 = objc_msgSend_localizedStringForKey_value_table_(v105, v106, @"doodle", &stru_1EF1C0318, 0, v107);
        v109 = sub_18389E0DC(self, v108, v176, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v110, v109, v111, v112, v113);
        objc_msgSend_appendAttributedString_(v41, v114, v25, v115, v116, v117);
        v123 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v118, v119, v120, v121, v122);
        v126 = objc_msgSend_localizedStringForKey_value_table_(v123, v124, @"line", &stru_1EF1C0318, 0, v125);
        v127 = sub_18389E0DC(self, v126, v174, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v128, v127, v129, v130, v131);
        objc_msgSend_appendAttributedString_(v41, v132, v25, v133, v134, v135);
        v141 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v136, v137, v138, v139, v140);
        v144 = objc_msgSend_localizedStringForKey_value_table_(v141, v142, @"container", &stru_1EF1C0318, 0, v143);
        v145 = sub_18389E0DC(self, v144, v12, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v146, v145, v147, v148, v149);
        objc_msgSend_appendAttributedString_(v41, v150, v25, v151, v152, v153);
        v159 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v154, v155, v156, v157, v158);
        v162 = objc_msgSend_localizedStringForKey_value_table_(v159, v160, @"unknown", &stru_1EF1C0318, 0, v161);
        v163 = sub_18389E0DC(self, v162, v175, v17, v19);
        objc_msgSend_appendAttributedString_(v41, v164, v163, v165, v166, v167);
        v200.size.width = 432.0;
        v200.origin.x = 6.0;
        v200.origin.y = 8.0;
        v200.size.height = 18.0;
        v201 = CGRectInset(v200, 4.0, 1.0);
        v168 = CGPathCreateWithRect(v201, 0);
        v188 = 0;
        v189 = &v188;
        v190 = 0x2020000000;
        v169 = off_1EA84D0A0;
        v191 = off_1EA84D0A0;
        if (!off_1EA84D0A0)
        {
          v183 = MEMORY[0x1E69E9820];
          v184 = 3221225472;
          v185 = sub_18389E75C;
          v186 = &unk_1E6DDD2E0;
          v187 = &v188;
          sub_18389E75C(&v183);
          v169 = v189[3];
        }

        _Block_object_dispose(&v188, 8);
        if (v169)
        {
          v170 = v169(v41);
          v188 = 0;
          v189 = &v188;
          v190 = 0x2020000000;
          v171 = off_1EA84D0A8;
          v191 = off_1EA84D0A8;
          if (!off_1EA84D0A8)
          {
            v183 = MEMORY[0x1E69E9820];
            v184 = 3221225472;
            v185 = sub_18389E8A4;
            v186 = &unk_1E6DDD2E0;
            v187 = &v188;
            sub_18389E8A4(&v183);
            v171 = v189[3];
          }

          _Block_object_dispose(&v188, 8);
          if (v171)
          {
            v172 = (v171)(v170, 0, 0, v168, 0);
            v188 = 0;
            v189 = &v188;
            v190 = 0x2020000000;
            v173 = off_1EA84D0B0;
            v191 = off_1EA84D0B0;
            if (!off_1EA84D0B0)
            {
              v183 = MEMORY[0x1E69E9820];
              v184 = 3221225472;
              v185 = sub_18389E9EC;
              v186 = &unk_1E6DDD2E0;
              v187 = &v188;
              sub_18389E9EC(&v183);
              v173 = v189[3];
            }

            _Block_object_dispose(&v188, 8);
            if (v173)
            {
              v173(v172, a4);
              CFRelease(v172);
              CFRelease(v170);
              CFRelease(v19);
              CFRelease(v17);
              CGPathRelease(v168);
              goto LABEL_18;
            }
          }
        }
      }

      dlerror();
      abort_report_np();
    }

    else
    {
      dlerror();
      abort_report_np();
    }

    __break(1u);
  }

LABEL_18:
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(color);
  CGColorRelease(v179);
  CGColorRelease(v175);
  CGColorRelease(v178);
  CGColorRelease(v177);
  CGColorRelease(v176);
  CGColorRelease(v174);
  CGColorRelease(v12);
  CGColorRelease(v13);
}

- (CGColor)newColorForStrokeInGroup:(id)a3
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = objc_msgSend_classification(a3, v5, v6, v7, v8, v9);
  if (v10 > 8)
  {
    CGColorSpaceRelease(DeviceRGB);
    return 0;
  }

  else
  {
    v11 = CGColorCreate(DeviceRGB, off_1E6DDF5C8[v10]);
    CGColorSpaceRelease(DeviceRGB);
    return v11;
  }
}

@end