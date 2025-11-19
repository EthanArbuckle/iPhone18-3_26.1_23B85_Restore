@interface HAFacialMetricsExporter
- (HAFacialMetricsExporter)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (id)sr_dictionaryRepresentation;
@end

@implementation HAFacialMetricsExporter

- (HAFacialMetricsExporter)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v17.receiver = self;
  v17.super_class = HAFacialMetricsExporter;
  v8 = [(HAFacialMetricsExporter *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v8->_packet, a3);
  if ([v7 length] <= 3)
  {
    v10 = ha_get_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [HAFacialMetricsExporter initWithBinarySampleRepresentation:v10 metadata:? timestamp:?];
    }

LABEL_5:

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  [v7 getBytes:&v9->_packetType length:4];
  v11 = [(HAFacialMetricsExporter *)v9 packetType];
  if (v11 >= 6)
  {
    v10 = ha_get_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [HAFacialMetricsExporter initWithBinarySampleRepresentation:buf metadata:[(HAFacialMetricsExporter *)v9 packetType] timestamp:v10];
    }

    goto LABEL_5;
  }

  v12 = qword_2512C81E8[v11];
  if ([v7 length] != v12)
  {
    v14 = ha_get_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      -[HAFacialMetricsExporter initWithBinarySampleRepresentation:metadata:timestamp:].cold.2(buf, v12, [v7 length], v14);
    }

    goto LABEL_15;
  }

  v13 = v9;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)sr_dictionaryRepresentation
{
  v231[8] = *MEMORY[0x277D85DE8];
  v209 = objc_opt_new();
  v230[0] = @"lock_session_id";
  v207 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v231[0] = v207;
  v230[1] = @"lock_session_relative_timestamp";
  v205 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v231[1] = v205;
  v230[2] = @"messages_session_id";
  v203 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v231[2] = v203;
  v230[3] = @"message_session_relative_timestamp";
  v201 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v231[3] = v201;
  v230[4] = @"pose";
  v228[0] = @"rotation";
  LODWORD(v2) = *(a1 + 72);
  v199 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v226[0] = v199;
  LODWORD(v3) = *(a1 + 76);
  v197 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v226[1] = v197;
  LODWORD(v4) = *(a1 + 80);
  v195 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v226[2] = v195;
  v194 = [MEMORY[0x277CBEA60] arrayWithObjects:v226 count:3];
  v227[0] = v194;
  LODWORD(v5) = *(a1 + 84);
  v193 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v225[0] = v193;
  LODWORD(v6) = *(a1 + 88);
  v192 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v225[1] = v192;
  LODWORD(v7) = *(a1 + 92);
  v191 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v225[2] = v191;
  v190 = [MEMORY[0x277CBEA60] arrayWithObjects:v225 count:3];
  v227[1] = v190;
  LODWORD(v8) = *(a1 + 96);
  v189 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v224[0] = v189;
  LODWORD(v9) = *(a1 + 100);
  v188 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v224[1] = v188;
  LODWORD(v10) = *(a1 + 104);
  v187 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v224[2] = v187;
  v186 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:3];
  v227[2] = v186;
  v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v227 count:3];
  v228[1] = @"translation";
  v229[0] = v185;
  LODWORD(v11) = *(a1 + 108);
  v184 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v223[0] = v184;
  LODWORD(v12) = *(a1 + 112);
  v183 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v223[1] = v183;
  LODWORD(v13) = *(a1 + 116);
  v182 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v223[2] = v182;
  v181 = [MEMORY[0x277CBEA60] arrayWithObjects:v223 count:3];
  v229[1] = v181;
  v180 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v229 forKeys:v228 count:2];
  v231[4] = v180;
  v230[5] = @"gaze";
  LODWORD(v14) = *(a1 + 160);
  v179 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v222[0] = v179;
  LODWORD(v15) = *(a1 + 164);
  v178 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v222[1] = v178;
  LODWORD(v16) = *(a1 + 168);
  v177 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v222[2] = v177;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:3];
  v231[5] = v176;
  v230[6] = @"blendshapes";
  v220[0] = @"eye_blink_left";
  LODWORD(v17) = *(a1 + 172);
  v175 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v221[0] = v175;
  v220[1] = @"eye_blink_right";
  LODWORD(v18) = *(a1 + 176);
  v174 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v221[1] = v174;
  v220[2] = @"eye_squint_left";
  LODWORD(v19) = *(a1 + 180);
  v173 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v221[2] = v173;
  v220[3] = @"eye_squint_right";
  LODWORD(v20) = *(a1 + 184);
  v172 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v221[3] = v172;
  v220[4] = @"eye_look_down_left";
  LODWORD(v21) = *(a1 + 188);
  v171 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v221[4] = v171;
  v220[5] = @"eye_look_down_right";
  LODWORD(v22) = *(a1 + 192);
  v170 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v221[5] = v170;
  v220[6] = @"eye_look_in_left";
  LODWORD(v23) = *(a1 + 196);
  v169 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v221[6] = v169;
  v220[7] = @"eye_look_in_right";
  LODWORD(v24) = *(a1 + 200);
  v168 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v221[7] = v168;
  v220[8] = @"eye_wide_left";
  LODWORD(v25) = *(a1 + 204);
  v167 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v221[8] = v167;
  v220[9] = @"eye_wide_right";
  LODWORD(v26) = *(a1 + 208);
  v166 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v221[9] = v166;
  v220[10] = @"eye_look_out_left";
  LODWORD(v27) = *(a1 + 212);
  v165 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v221[10] = v165;
  v220[11] = @"eye_look_out_right";
  LODWORD(v28) = *(a1 + 216);
  v164 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v221[11] = v164;
  v220[12] = @"eye_look_up_left";
  LODWORD(v29) = *(a1 + 220);
  v163 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v221[12] = v163;
  v220[13] = @"eye_look_up_right";
  LODWORD(v30) = *(a1 + 224);
  v162 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v221[13] = v162;
  v220[14] = @"brow_down_left";
  LODWORD(v31) = *(a1 + 228);
  v161 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v221[14] = v161;
  v220[15] = @"brow_down_right";
  LODWORD(v32) = *(a1 + 232);
  v160 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v221[15] = v160;
  v220[16] = @"brow_inner_up";
  LODWORD(v33) = *(a1 + 236);
  v159 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v221[16] = v159;
  v220[17] = @"brow_outer_up_left";
  LODWORD(v34) = *(a1 + 240);
  v158 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  v221[17] = v158;
  v220[18] = @"brow_outer_up_right";
  LODWORD(v35) = *(a1 + 244);
  v157 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v221[18] = v157;
  v220[19] = @"jaw_open";
  LODWORD(v36) = *(a1 + 248);
  v156 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v221[19] = v156;
  v220[20] = @"mouth_close";
  LODWORD(v37) = *(a1 + 252);
  v155 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
  v221[20] = v155;
  v220[21] = @"jaw_left";
  LODWORD(v38) = *(a1 + 256);
  v154 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v221[21] = v154;
  v220[22] = @"jaw_right";
  LODWORD(v39) = *(a1 + 260);
  v153 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v221[22] = v153;
  v220[23] = @"jaw_forward";
  LODWORD(v40) = *(a1 + 264);
  v152 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  v221[23] = v152;
  v220[24] = @"mouth_upper_up_left";
  LODWORD(v41) = *(a1 + 268);
  v151 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v221[24] = v151;
  v220[25] = @"mouth_upper_up_right";
  LODWORD(v42) = *(a1 + 272);
  v150 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  v221[25] = v150;
  v220[26] = @"mouth_lower_down_left";
  LODWORD(v43) = *(a1 + 276);
  v149 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v221[26] = v149;
  v220[27] = @"mouth_lower_down_right";
  LODWORD(v44) = *(a1 + 280);
  v148 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  v221[27] = v148;
  v220[28] = @"mouth_roll_upper";
  LODWORD(v45) = *(a1 + 284);
  v147 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
  v221[28] = v147;
  v220[29] = @"mouth_roll_lower";
  LODWORD(v46) = *(a1 + 288);
  v146 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  v221[29] = v146;
  v220[30] = @"mouth_smile_left";
  LODWORD(v47) = *(a1 + 292);
  v145 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  v221[30] = v145;
  v220[31] = @"mouth_smile_right";
  LODWORD(v48) = *(a1 + 296);
  v144 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  v221[31] = v144;
  v220[32] = @"mouth_dimple_left";
  LODWORD(v49) = *(a1 + 300);
  v143 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
  v221[32] = v143;
  v220[33] = @"mouth_dimple_right";
  LODWORD(v50) = *(a1 + 304);
  v142 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  v221[33] = v142;
  v220[34] = @"mouth_stretch_left";
  LODWORD(v51) = *(a1 + 308);
  v141 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
  v221[34] = v141;
  v220[35] = @"mouth_stretch_right";
  LODWORD(v52) = *(a1 + 312);
  v140 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  v221[35] = v140;
  v220[36] = @"mouth_frown_left";
  LODWORD(v53) = *(a1 + 316);
  v139 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
  v221[36] = v139;
  v220[37] = @"mouth_frown_right";
  LODWORD(v54) = *(a1 + 320);
  v138 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  v221[37] = v138;
  v220[38] = @"mouth_press_left";
  LODWORD(v55) = *(a1 + 324);
  v137 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
  v221[38] = v137;
  v220[39] = @"mouth_press_right";
  LODWORD(v56) = *(a1 + 328);
  v136 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  v221[39] = v136;
  v220[40] = @"mouth_pucker";
  LODWORD(v57) = *(a1 + 332);
  v135 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
  v221[40] = v135;
  v220[41] = @"mouth_funnel";
  LODWORD(v58) = *(a1 + 336);
  v134 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
  v221[41] = v134;
  v220[42] = @"mouth_left";
  LODWORD(v59) = *(a1 + 340);
  v133 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
  v221[42] = v133;
  v220[43] = @"mouth_right";
  LODWORD(v60) = *(a1 + 344);
  v132 = [MEMORY[0x277CCABB0] numberWithFloat:v60];
  v221[43] = v132;
  v220[44] = @"mouth_shrug_lower";
  LODWORD(v61) = *(a1 + 348);
  v131 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
  v221[44] = v131;
  v220[45] = @"mouth_shrug_upper";
  LODWORD(v62) = *(a1 + 352);
  v130 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
  v221[45] = v130;
  v220[46] = @"nose_sneer_left";
  LODWORD(v63) = *(a1 + 356);
  v129 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
  v221[46] = v129;
  v220[47] = @"nose_sneer_right";
  LODWORD(v64) = *(a1 + 360);
  v128 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
  v221[47] = v128;
  v220[48] = @"cheek_puff";
  LODWORD(v65) = *(a1 + 364);
  v127 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
  v221[48] = v127;
  v220[49] = @"cheek_squint_left";
  LODWORD(v66) = *(a1 + 368);
  v126 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
  v221[49] = v126;
  v220[50] = @"cheek_squint_right";
  LODWORD(v67) = *(a1 + 372);
  v125 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
  v221[50] = v125;
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v221 forKeys:v220 count:51];
  v231[6] = v124;
  v230[7] = @"face_positions";
  v218[0] = @"expressions";
  v216[0] = @"brow_furrow_and_eyes_wide_and_mouth_pressed_tight";
  LODWORD(v68) = *(a1 + 376);
  v123 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  v217[0] = v123;
  v216[1] = @"baseline";
  LODWORD(v69) = *(a1 + 380);
  v122 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
  v217[1] = v122;
  v216[2] = @"nose_wrinkle_or_upper_lip_raise";
  LODWORD(v70) = *(a1 + 384);
  v121 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
  v217[2] = v121;
  v216[3] = @"brow_raise_with_furrow_and_eye_widen_and_mouth_stretch";
  LODWORD(v71) = *(a1 + 388);
  v120 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
  v217[3] = v120;
  v216[4] = @"lip_raise_and_cheek_raise";
  LODWORD(v72) = *(a1 + 392);
  v119 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
  v217[4] = v119;
  v216[5] = @"inner_brow_raise_and_mouth_corner_depress";
  LODWORD(v73) = *(a1 + 396);
  v118 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  v217[5] = v118;
  v216[6] = @"brow_raise_without_furrow_and_eye_widen_and_jaw_drop";
  LODWORD(v74) = *(a1 + 400);
  v117 = [MEMORY[0x277CCABB0] numberWithFloat:v74];
  v217[6] = v117;
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:7];
  v219[0] = v116;
  v218[1] = @"key_actions";
  v214[0] = @"inner_brow_raise";
  LODWORD(v75) = *(a1 + 404);
  v115 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
  v215[0] = v115;
  v214[1] = @"brow_raise_with_furrow";
  LODWORD(v76) = *(a1 + 408);
  v114 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
  v215[1] = v114;
  v214[2] = @"brow_raise_without_furrow";
  LODWORD(v77) = *(a1 + 412);
  v113 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
  v215[2] = v113;
  v214[3] = @"brow_furrow";
  LODWORD(v78) = *(a1 + 416);
  v79 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
  v215[3] = v79;
  v214[4] = @"mouth_corner_depress";
  LODWORD(v80) = *(a1 + 420);
  v81 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
  v215[4] = v81;
  v214[5] = @"mouth_stretch";
  LODWORD(v82) = *(a1 + 424);
  v83 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
  v215[5] = v83;
  v214[6] = @"mouth_pressed_or_tight";
  LODWORD(v84) = *(a1 + 428);
  v85 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
  v215[6] = v85;
  v214[7] = @"nose_wrinkle";
  LODWORD(v86) = *(a1 + 432);
  v87 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
  v215[7] = v87;
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:8];
  v219[1] = v88;
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:2];
  v231[7] = v89;
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v231 forKeys:v230 count:8];
  [v209 addEntriesFromDictionary:v90];

  v212[0] = @"session_id";
  v208 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 24)];
  v213[0] = v208;
  v212[1] = @"session_flags_enum";
  v206 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
  v213[1] = v206;
  v212[2] = @"geometry_left_eye";
  LODWORD(v91) = *(a1 + 120);
  v204 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
  v211[0] = v204;
  LODWORD(v92) = *(a1 + 124);
  v202 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
  v211[1] = v202;
  LODWORD(v93) = *(a1 + 128);
  v200 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
  v211[2] = v200;
  v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:3];
  v213[2] = v198;
  v212[3] = @"geometry_right_eye";
  LODWORD(v94) = *(a1 + 132);
  v196 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
  v210[0] = v196;
  LODWORD(v95) = *(a1 + 136);
  v96 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
  v210[1] = v96;
  LODWORD(v97) = *(a1 + 140);
  v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
  v210[2] = v98;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v210 count:3];
  v213[3] = v99;
  v212[4] = @"left_eye_pitch";
  LODWORD(v100) = *(a1 + 144);
  v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
  v213[4] = v101;
  v212[5] = @"left_eye_yaw";
  LODWORD(v102) = *(a1 + 148);
  v103 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
  v213[5] = v103;
  v212[6] = @"right_eye_pitch";
  LODWORD(v104) = *(a1 + 152);
  v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
  v213[6] = v105;
  v212[7] = @"right_eye_yaw";
  LODWORD(v106) = *(a1 + 156);
  v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
  v213[7] = v107;
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:8];
  [v209 addEntriesFromDictionary:v108];

  v109 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1 + 4];
  v110 = [v109 UUIDString];
  [v209 setObject:v110 forKeyedSubscript:@"track_index"];

  v111 = *MEMORY[0x277D85DE8];

  return v209;
}

- (void)initWithBinarySampleRepresentation:(uint8_t *)buf metadata:(int)a2 timestamp:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_fault_impl(&dword_251282000, log, OS_LOG_TYPE_FAULT, "unrecognized facial metrics packet type (%u)", buf, 8u);
}

- (void)initWithBinarySampleRepresentation:(uint64_t)a3 metadata:(os_log_t)log timestamp:.cold.2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_fault_impl(&dword_251282000, log, OS_LOG_TYPE_FAULT, "invalid packet length: expected %zu, got %zu", buf, 0x16u);
}

@end