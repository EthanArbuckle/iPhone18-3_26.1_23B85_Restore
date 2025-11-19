uint64_t sub_254F5F3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5F10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5F3E4(uint64_t a1)
{
  v2 = sub_254F5F69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5F420(uint64_t a1)
{
  v2 = sub_254F5F69C();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.MeCard.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F760EF8);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F5F69C();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BD40();
  if (!v0)
  {
    sub_254F509D0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F64404();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F643F0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F52F94(&qword_27F760F08);
    sub_254F5FB38(&qword_27F760F10, sub_254F5F6F0);
    sub_254F4E2F0();
    sub_254F9BE00();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F4F348();
}

unint64_t sub_254F5F69C()
{
  result = qword_27F760F00;
  if (!qword_27F760F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F00);
  }

  return result;
}

unint64_t sub_254F5F6F0()
{
  result = qword_27F760F18;
  if (!qword_27F760F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F18);
  }

  return result;
}

void StructuredContext.SiriRequestContext.MeCard.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254F4E9D0();
  sub_254F4F268();
  v13 = v12;
  sub_254F52F94(&qword_27F760F20);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4EFBC(v10, v10[3]);
  sub_254F5F69C();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (v11)
  {
    sub_254F6436C();
    sub_254F4DA5C(v10);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    sub_254F64260();
    v14 = sub_254F9BC50();
    v35 = v15;
    sub_254F6432C(1);
    sub_254F64260();
    v33 = sub_254F9BC50();
    v34 = v16;
    sub_254F6432C(2);
    sub_254F64260();
    v17 = sub_254F9BC50();
    v19 = v18;
    v32 = v17;
    v31 = v13;
    sub_254F6432C(3);
    sub_254F64260();
    v20 = sub_254F9BC50();
    v22 = v21;
    v30 = v20;
    v29 = v14;
    sub_254F6432C(4);
    sub_254F64260();
    v23 = sub_254F9BC50();
    v25 = v24;
    v28 = v23;
    sub_254F52F94(&qword_27F760F08);
    v38 = 5;
    sub_254F5FB38(&qword_27F760F28, sub_254F5FBB0);
    sub_254F9BD10();
    v26 = sub_254F4E318();
    v27(v26);
    v36[0] = v29;
    v36[1] = v35;
    v36[2] = v33;
    v36[3] = v34;
    v36[4] = v32;
    v36[5] = v19;
    v36[6] = v30;
    v36[7] = v22;
    v36[8] = v28;
    v36[9] = v25;
    v36[10] = a10;
    memcpy(v31, v36, 0x58uLL);
    sub_254F5FC04(v36, v37);
    sub_254F4DA5C(v10);
    v37[0] = v29;
    v37[1] = v35;
    v37[2] = v33;
    v37[3] = v34;
    v37[4] = v32;
    v37[5] = v19;
    v37[6] = v30;
    v37[7] = v22;
    v37[8] = v28;
    v37[9] = v25;
    v37[10] = a10;
    sub_254F5FC3C(v37);
  }

  sub_254F643E4();
  sub_254F4F348();
}

uint64_t sub_254F5FB38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_254F55B94(&qword_27F760F08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254F5FBB0()
{
  result = qword_27F760F30;
  if (!qword_27F760F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F30);
  }

  return result;
}

unint64_t StructuredContext.SiriRequestContext.DeviceIdiom.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 11;
  if (result < 0xB)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void *StructuredContext.SiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPSCFire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, __int16 a23, const void *a24, char *a25, char a26)
{
  *(a9 + 88) = xmmword_254F9DA30;
  *(a9 + 112) = xmmword_254F9DA40;
  *(a9 + 328) = 11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v28 = *a13;
  v27 = a13[1];
  v29 = *(a13 + 8);
  *(a9 + 64) = a10;
  v30 = *(a18 + 32);
  *(a9 + 65) = *(&a10 + 1);
  v31 = *(a18 + 36);
  v35 = *a25;
  *(a9 + 104) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = 0;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 192) = 0;
  v32 = (a9 + 192);
  *(a9 + 176) = xmmword_254F9DA50;
  *(a9 + 196) = 0;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0;
  *(a9 + 240) = 0u;
  sub_254F5C28C(0, 1);
  *(a9 + 88) = v28;
  *(a9 + 96) = v27;
  *(a9 + 104) = v29;
  sub_254F5C38C(*(a9 + 112), *(a9 + 120));
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 144) = a16;
  *(a9 + 152) = a17;
  sub_254F5C5AC(*(a9 + 160), *(a9 + 168), *(a9 + 176));
  v33 = *(a18 + 16);
  *(a9 + 160) = *a18;
  *(a9 + 176) = v33;
  *(a9 + 196) = v31;
  *v32 = v30;
  *(a9 + 200) = a19;
  *(a9 + 208) = a20 & 1;
  *(a9 + 216) = a21;
  *(a9 + 224) = a22;
  *(a9 + 232) = a23;
  memcpy(__dst, (a9 + 240), 0x58uLL);
  sub_254F60B2C(__dst, &qword_27F760E98);
  result = memcpy((a9 + 240), a24, 0x58uLL);
  *(a9 + 328) = v35;
  *(a9 + 329) = a26;
  return result;
}

BOOL static StructuredContext.SiriRequestContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v200 = a1[4];
  v205 = a1[2];
  v206 = a1[5];
  v196 = a1[6];
  v207 = a1[7];
  v199 = *(a1 + 64);
  v194 = *(a1 + 65);
  v193 = *(a1 + 66);
  v192 = *(a1 + 67);
  v191 = *(a1 + 68);
  v188 = a1[12];
  v189 = a1[11];
  v190 = *(a1 + 52);
  v180 = a1[14];
  v184 = a1[15];
  v172 = a1[16];
  v176 = a1[17];
  v154 = a1[18];
  v174 = a1[19];
  v167 = a1[20];
  v168 = a1[21];
  v169 = a1[23];
  v170 = a1[22];
  v148 = *(a1 + 196);
  v7 = *(a1 + 25);
  v145 = *(a1 + 48);
  HIDWORD(v136) = *(a1 + 208);
  v124 = a1[27];
  v133 = a1[28];
  HIDWORD(v127) = *(a1 + 232);
  HIDWORD(v115) = *(a1 + 233);
  memcpy(__dst, a1 + 30, sizeof(__dst));
  LODWORD(v112) = *(a1 + 328);
  HIDWORD(v112) = *(a1 + 329);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v195 = a2[6];
  v201 = a2[7];
  v197 = *(a2 + 64);
  v198 = *(a2 + 65);
  v202 = *(a2 + 66);
  v203 = *(a2 + 67);
  v204 = *(a2 + 68);
  v185 = a2[11];
  v187 = a2[12];
  v186 = *(a2 + 52);
  v177 = a2[14];
  v181 = a2[15];
  v171 = a2[16];
  v175 = a2[17];
  v151 = a2[18];
  v173 = a2[19];
  v163 = a2[20];
  v166 = a2[22];
  v157 = a2[21];
  v160 = a2[23];
  v142 = *(a2 + 196);
  v14 = *(a2 + 25);
  v139 = *(a2 + 48);
  LODWORD(v136) = *(a2 + 208);
  v118 = a2[27];
  v130 = a2[28];
  HIDWORD(v121) = *(a2 + 232);
  LODWORD(v115) = *(a2 + 233);
  memcpy(__src, a2 + 30, 0x58uLL);
  v15 = *(a2 + 328);
  v16 = *(a2 + 329);
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    if (v4 != v8 || v5 != v9)
    {
      v18 = sub_254F4FFF8();
      v15 = v8;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    if (v205 != v10 || v6 != v11)
    {
      v20 = sub_254F4FFF8();
      v15 = v8;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v206)
  {
    v21 = v207;
    if (!v12)
    {
      return 0;
    }

    if (v200 != v13 || v206 != v12)
    {
      v23 = sub_254F4FFF8();
      v15 = v8;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v21 = v207;
    if (v12)
    {
      return 0;
    }
  }

  if (v21)
  {
    v24 = v204;
    v25 = v203;
    v26 = v202;
    if (!v201)
    {
      return 0;
    }

    if (v196 != v195 || v21 != v201)
    {
      v28 = sub_254F4FFF8();
      v15 = v8;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v24 = v204;
    v25 = v203;
    v26 = v202;
    if (v201)
    {
      return 0;
    }
  }

  if (v199 == 2)
  {
    v29 = v198;
    if (v197 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v29 = v198;
    if (v197 == 2 || ((v197 ^ v199) & 1) != 0)
    {
      return result;
    }
  }

  if (v194 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v29 == 2 || ((v29 ^ v194) & 1) != 0)
    {
      return result;
    }
  }

  if (v193 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 2 || ((v26 ^ v193) & 1) != 0)
    {
      return result;
    }
  }

  if (v192 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v25 == 2 || ((v25 ^ v192) & 1) != 0)
    {
      return result;
    }
  }

  if (v191 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v24 == 2 || ((v24 ^ v191) & 1) != 0)
    {
      return result;
    }
  }

  v31 = v15;
  sub_254F551E4();
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  sub_254F551E4();
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  if (v188 == 1)
  {
    sub_254F5C238(v189, 1);
    v34 = v187;
    if (v187 == 1)
    {
      sub_254F5C238(v185, 1);
      v35 = sub_254F5C28C(v189, 1);
      goto LABEL_72;
    }

    v43 = v185;
    sub_254F5C238(v185, v187);
    v44 = v189;
LABEL_70:
    sub_254F5C28C(v44, v188);
    sub_254F5C28C(v43, v34);
    return 0;
  }

  v213[0] = v189;
  v213[1] = v188;
  LOWORD(v213[2]) = v190;
  if (v187 == 1)
  {
    sub_254F5C238(v189, v188);
    v43 = v185;
    sub_254F5C238(v185, 1);
    sub_254F5C238(v189, v188);

    v44 = v189;
    v34 = 1;
    goto LABEL_70;
  }

  v212[0] = v185;
  v212[1] = v187;
  LOWORD(v212[2]) = v186;
  v45 = static StructuredContext.SiriRequestContext.User.== infix(_:_:)(v213, v212);
  v46 = sub_254F6437C();
  sub_254F5C238(v46, v47);
  sub_254F5C238(v185, v187);
  v48 = sub_254F6437C();
  sub_254F5C238(v48, v49);

  v50 = sub_254F6437C();
  v35 = sub_254F5C28C(v50, v51);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  if (v184 >> 60 == 15)
  {
    if (v181 >> 60 == 15)
    {
      sub_254F64438(v35, v36, v37, v38, v39, v40, v41, v42, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v180, v181, v184);
      sub_254F5C2EC(v178, v182);
      v52 = sub_254F4F220();
      v54 = sub_254F5C38C(v52, v53);
      goto LABEL_80;
    }

LABEL_76:
    sub_254F64438(v35, v36, v37, v38, v39, v40, v41, v42, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v180, v181, v184);
    sub_254F5C2EC(v179, v183);
    v62 = sub_254F4F220();
    sub_254F5C38C(v62, v63);
    sub_254F5C38C(v179, v183);
    return 0;
  }

  if (v181 >> 60 == 15)
  {
    goto LABEL_76;
  }

  sub_254F5C2EC(v180, v184);
  sub_254F5C2EC(v177, v181);
  v64 = MEMORY[0x259C2F750](v180, v184, v177, v181);
  sub_254F5C38C(v177, v181);
  v54 = sub_254F5C38C(v180, v184);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  if (v176)
  {
    if (!v175)
    {
      return 0;
    }

    if (v172 != v171 || v176 != v175)
    {
      v54 = sub_254F9BE30();
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v175)
  {
    return 0;
  }

  if (v174)
  {
    if (!v173)
    {
      return 0;
    }

    if (v154 != v151 || v174 != v173)
    {
      v54 = sub_254F9BE30();
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v173)
  {
    return 0;
  }

  if (v170 != 1)
  {
    v213[0] = v167;
    v213[1] = v168;
    v213[2] = v170;
    v213[3] = v169;
    LODWORD(v213[4]) = v145;
    BYTE4(v213[4]) = (v145 | (v148 << 32)) >> 32;
    if (v166 != 1)
    {
      *v210 = v163;
      *&v210[8] = v157;
      *&v210[16] = v166;
      *&v210[24] = v160;
      v210[36] = (v139 | (v142 << 32)) >> 32;
      *&v210[32] = v139;
      v208 = static StructuredContext.SiriRequestContext.ContentRestriction.== infix(_:_:)(v213, v210);
      v211[0] = *v210;
      v211[1] = *&v210[16];
      *(&v211[1] + 13) = *&v210[29];
      sub_254F643C4();
      sub_254F6435C();
      sub_254F5C540(v97, v98, v99);
      sub_254F5C540(v163, v157, v166);
      sub_254F643C4();
      sub_254F6435C();
      sub_254F5C540(v100, v101, v102);
      sub_254F5D2A8(v211);
      sub_254F6438C();
      sub_254F5D2A8(v212);
      sub_254F643C4();
      sub_254F6435C();
      sub_254F5C5AC(v103, v104, v105);
      if ((v208 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_106;
    }

    sub_254F6438C();
    v89 = sub_254F5C540(v167, v168, v170);
    sub_254F64418(v89, v90, v91, v92, v93, v94, v95, v96, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163);
    sub_254F5C540(v167, v168, v170);
    sub_254F5D2A8(v212);
LABEL_104:
    sub_254F5C5AC(v167, v168, v170);
    sub_254F5C5AC(v164, v158, v166);
    return 0;
  }

  v67 = sub_254F643D0(v54, v55, v56, v57, v58, v59, v60, v61, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v167);
  v70 = sub_254F5C540(v67, v68, v69);
  if (v166 != 1)
  {
    sub_254F5C540(v164, v158, v166);
    goto LABEL_104;
  }

  v78 = sub_254F64418(v70, v71, v72, v73, v74, v75, v76, v77, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164);
  v86 = sub_254F643D0(v78, v79, v80, v81, v82, v83, v84, v85, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, 1, v167);
  sub_254F5C5AC(v86, v87, v88);
LABEL_106:
  if ((v136 & 0x100000000) != 0)
  {
    if (!v136)
    {
      return 0;
    }
  }

  else
  {
    v106 = v136;
    if (v7 != v14)
    {
      v106 = 1;
    }

    if (v106)
    {
      return 0;
    }
  }

  if (v133)
  {
    if (!v130)
    {
      return 0;
    }

    v107 = v124 == v118 && v133 == v130;
    if (!v107 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v130)
  {
    return 0;
  }

  if (HIDWORD(v127) == 2)
  {
    if (HIDWORD(v121) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (HIDWORD(v121) == 2 || ((HIDWORD(v121) ^ HIDWORD(v127)) & 1) != 0)
    {
      return result;
    }
  }

  if (HIDWORD(v115) == 2)
  {
    if (v115 != 2)
    {
      return 0;
    }

LABEL_131:
    memcpy(v217, __dst, sizeof(v217));
    v108 = __dst[10];
    memcpy(v216, __src, sizeof(v216));
    v109 = __src[10];
    if (__dst[10])
    {
      memcpy(v213, __dst, 0x50uLL);
      v213[10] = __dst[10];
      memcpy(v212, v213, 0x58uLL);
      if (__src[10])
      {
        memcpy(v211, __src, 0x50uLL);
        *&v211[5] = __src[10];
        sub_254F5C750(__dst, v210);
        sub_254F5C750(__src, v210);
        sub_254F5C750(v213, v210);
        v110 = static StructuredContext.SiriRequestContext.MeCard.== infix(_:_:)(v212, v211);
        memcpy(v209, v211, sizeof(v209));
        sub_254F5FC3C(v209);
        memcpy(v210, v212, sizeof(v210));
        sub_254F5FC3C(v210);
        memcpy(v211, v217, 0x50uLL);
        *&v211[5] = v108;
        sub_254F60B2C(v211, &qword_27F760E98);
        if ((v110 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_140;
      }

      memcpy(v211, v213, 0x58uLL);
      sub_254F5C750(__dst, v210);
      sub_254F5C750(__src, v210);
      sub_254F5C750(v213, v210);
      sub_254F5FC3C(v211);
    }

    else
    {
      if (!__src[10])
      {
        memcpy(v213, __dst, 0x50uLL);
        v213[10] = 0;
        sub_254F5C750(__dst, v212);
        sub_254F5C750(__src, v212);
        sub_254F60B2C(v213, &qword_27F760E98);
LABEL_140:
        if (v112 == 11)
        {
          if (v31 != 11)
          {
            return 0;
          }
        }

        else if (v31 == 11 || v112 != v31)
        {
          return 0;
        }

        if (HIDWORD(v112) != 2)
        {
          return v16 != 2 && ((v16 ^ HIDWORD(v112)) & 1) == 0;
        }

        return v16 == 2;
      }

      sub_254F5C750(__dst, v213);
      sub_254F5C750(__src, v213);
    }

    memcpy(v213, v217, 0x50uLL);
    v213[10] = v108;
    memcpy(v214, v216, sizeof(v214));
    v215 = v109;
    sub_254F60B2C(v213, &qword_27F760F38);
    return 0;
  }

  result = 0;
  if (v115 != 2 && ((v115 ^ HIDWORD(v115)) & 1) == 0)
  {
    goto LABEL_131;
  }

  return result;
}

uint64_t sub_254F60B2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_254F52F94(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254F60B8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7246736579457369 && a2 == 0xEA00000000006565;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5569746C754D7369 && a2 == 0xEB00000000726573;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000254FA6510 == a2;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x8000000254FA6530 == a2;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000254FA6550 == a2;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x8000000254FA6570 == a2;
                    if (v14 || (sub_254F9BE30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4D6E496567726162 && a2 == 0xEC0000007365646FLL;
                      if (v15 || (sub_254F9BE30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEE00726573556465;
                        if (v16 || (sub_254F9BE30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4C6465646F636E65 && a2 == 0xEF6E6F697461636FLL;
                          if (v17 || (sub_254F9BE30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
                            if (v18 || (sub_254F9BE30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL;
                              if (v19 || (sub_254F9BE30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x8000000254FA6590 == a2;
                                if (v20 || (sub_254F9BE30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x656C6163536975 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_254F9BE30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x74617265706D6574 && a2 == 0xEF74696E55657275;
                                    if (v22 || (sub_254F9BE30() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000019 && 0x8000000254FA65B0 == a2;
                                      if (v23 || (sub_254F9BE30() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7053726F736E6563 && a2 == 0xEC00000068636565;
                                        if (v24 || (sub_254F9BE30() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x64726143656DLL && a2 == 0xE600000000000000;
                                          if (v25 || (sub_254F9BE30() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6449656369766564 && a2 == 0xEB000000006D6F69;
                                            if (v26 || (sub_254F9BE30() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0x6946435350646964 && a2 == 0xEA00000000006572)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_254F9BE30();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F612A8(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x4974736575716572;
      break;
    case 2:
      result = 0x69724F7475706E69;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x7246736579457369;
      break;
    case 5:
      result = 0x5569746C754D7369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x4D6E496567726162;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x4C6465646F636E65;
      break;
    case 13:
      result = 0x437972746E756F63;
      break;
    case 14:
      result = 0x61636F4C69726973;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x656C6163536975;
      break;
    case 17:
      result = 0x74617265706D6574;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      result = 0x7053726F736E6563;
      break;
    case 20:
      result = 0x64726143656DLL;
      break;
    case 21:
      result = 0x6449656369766564;
      break;
    case 22:
      result = 0x6946435350646964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6157C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F60B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F615A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F612A0();
  *a1 = result;
  return result;
}

uint64_t sub_254F615CC(uint64_t a1)
{
  v2 = sub_254F62BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F61608(uint64_t a1)
{
  v2 = sub_254F62BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.encode(to:)()
{
  sub_254F4E9D0();
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F760F40);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  v16 = v0[11];
  v17 = v0[12];
  v14 = v0[14];
  v15 = v0[15];
  v12 = v0[22];
  v13 = v0[21];
  v11 = v0[20];
  memcpy(v20, v0 + 30, 0x58uLL);
  sub_254F4EFBC(v4, v4[3]);
  sub_254F62BE4();
  sub_254F4F360();
  sub_254F9BF20();
  v19[0] = 0;
  sub_254F9BD40();
  if (v1)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    sub_254F64338(1);
    sub_254F642FC();
    sub_254F9BD40();
    sub_254F64338(2);
    sub_254F642FC();
    sub_254F9BD40();
    sub_254F64338(3);
    sub_254F642FC();
    sub_254F9BD40();
    sub_254F64344(4);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(5);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(6);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(7);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(8);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F52F94(&qword_27F760DD0);
    sub_254F50650(&qword_280C460D8);
    sub_254F643A4();
    sub_254F642FC();
    sub_254F9BE00();
    sub_254F643A4();
    sub_254F642FC();
    sub_254F9BE00();
    sub_254F5C238(v16, v17);
    sub_254F62C38();
    sub_254F643A4();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F5C28C(v16, v17);
    sub_254F5C2EC(v14, v15);
    sub_254F62C8C();
    sub_254F643A4();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F5C38C(v14, v15);
    sub_254F64338(13);
    sub_254F642C4();
    sub_254F9BD40();
    sub_254F64338(14);
    sub_254F642C4();
    sub_254F9BD40();
    v18[0] = 15;
    sub_254F5C540(v11, v13, v12);
    sub_254F62CE0();
    sub_254F643A4();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F4F18C();
    sub_254F64338(16);
    sub_254F642C4();
    sub_254F9BD60();
    sub_254F64338(17);
    sub_254F642C4();
    sub_254F9BD40();
    sub_254F64344(18);
    sub_254F4F39C();
    sub_254F9BD50();
    sub_254F64344(19);
    sub_254F4F39C();
    sub_254F9BD50();
    memcpy(v19, v20, sizeof(v19));
    v18[95] = 20;
    sub_254F5C750(v20, v18);
    sub_254F62D34();
    sub_254F4F39C();
    sub_254F9BD80();
    memcpy(v18, v19, 0x58uLL);
    sub_254F60B2C(v18, &qword_27F760E98);
    sub_254F62D88();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F4F39C();
    sub_254F9BD50();
    v10 = sub_254F643C4();
    v9(v10, v8);
  }

  sub_254F4FC6C();
  sub_254F4F348();
}

void StructuredContext.SiriRequestContext.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v4 = v3;
  sub_254F52F94(&qword_27F760F78);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v6 = &v25 - v5;
  v7 = v2[3];
  v49 = v2;
  sub_254F4EFBC(v2, v7);
  sub_254F62BE4();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F642D0();
    v69 = 0;
    v70 = 0;
    v71 = 0;
    sub_254F4DF64();
    sub_254F4E47C();
    sub_254F64350();
    sub_254F4E568();
    sub_254F4DA5C(v49);

    if (v2)
    {
    }

    if (v6)
    {
    }

    sub_254F5C28C(v70, v53);
    sub_254F5C38C(v69, v61);

    sub_254F5C5AC(v68, v67, v51);

    v74 = v64;
    v75 = v63;
    v76 = v62;
    v77 = v60;
    v78 = v59;
    v79 = v58;
    v80 = v57;
    v81 = v55;
    v82 = v54;
    v83 = v52;
    v84 = v50;
    sub_254F60B2C(&v74, &qword_27F760E98);
  }

  else
  {
    v8 = v4;
    LOBYTE(v74) = 0;
    sub_254F642AC();
    v9 = sub_254F9BC50();
    v46 = v10;
    sub_254F4E024(1);
    v11 = sub_254F9BC50();
    v45 = v12;
    sub_254F4E024(2);
    v43 = sub_254F9BC50();
    v44 = v13;
    sub_254F4E024(3);
    v41 = sub_254F9BC50();
    v42 = v14;
    sub_254F4E024(4);
    v40 = sub_254F9BC60();
    sub_254F4E024(5);
    v39 = sub_254F9BC60();
    sub_254F4E024(6);
    v38 = sub_254F9BC60();
    sub_254F4E024(7);
    v37 = sub_254F9BC60();
    sub_254F4E024(8);
    v36 = sub_254F9BC60();
    v35 = v9;
    sub_254F52F94(&qword_27F760DD0);
    LOBYTE(v73[0]) = 9;
    sub_254F50650(&qword_280C459D8);
    sub_254F642AC();
    sub_254F9BD10();
    v48 = v74;
    LOBYTE(v73[0]) = 10;
    sub_254F642AC();
    sub_254F9BD10();
    v47 = v74;
    LOBYTE(v73[0]) = 11;
    sub_254F62DDC();
    sub_254F64270();
    v70 = v74;
    v53 = v75;
    v71 = v76;
    sub_254F5C28C(0, 1);
    LOBYTE(v73[0]) = 12;
    sub_254F62E30();
    sub_254F64270();
    v69 = v74;
    v61 = v75;
    sub_254F5C38C(0, 0xF000000000000000);
    sub_254F4E024(13);
    v34 = sub_254F9BC50();
    v151 = v15;
    sub_254F4E024(14);
    v33 = sub_254F9BC50();
    v72 = v16;
    LOBYTE(v73[0]) = 15;
    sub_254F62E84();
    sub_254F64270();
    v67 = v75;
    v68 = v74;
    v51 = v76;
    v65 = v78 | (BYTE4(v78) << 32);
    v66 = v77;
    sub_254F5C5AC(0, 0, 1);
    sub_254F4E024(16);
    v32 = sub_254F9BC70();
    v144 = v17 & 1;
    sub_254F4E024(17);
    v31 = sub_254F9BC50();
    v56 = v18;
    sub_254F4E024(18);
    v30 = sub_254F9BC60();
    sub_254F4E024(19);
    v29 = sub_254F9BC60();
    v129 = 20;
    sub_254F62ED8();
    sub_254F642AC();
    sub_254F9BC90();
    v63 = v131;
    v64 = v130;
    v62 = v132;
    v59 = v134;
    v60 = v133;
    v57 = v136;
    v58 = v135;
    v54 = v138;
    v55 = v137;
    v52 = v139;
    v50 = v140;
    memset(v127, 0, sizeof(v127));
    v128 = 0;
    sub_254F60B2C(v127, &qword_27F760E98);
    LOBYTE(v73[0]) = 21;
    sub_254F62F2C();
    sub_254F64270();
    v28 = v74;
    v126 = 22;
    sub_254F642AC();
    v27 = sub_254F9BC60();
    v19 = sub_254F4F2F4();
    v20(v19);
    v73[0] = v35;
    v73[1] = v46;
    v26 = v11;
    v73[2] = v11;
    v73[3] = v45;
    v73[4] = v43;
    v73[5] = v44;
    v73[6] = v41;
    v73[7] = v42;
    LOBYTE(v73[8]) = v40;
    BYTE1(v73[8]) = v39;
    BYTE2(v73[8]) = v38;
    BYTE3(v73[8]) = v37;
    BYTE4(v73[8]) = v36;
    *(&v73[8] + 5) = v149;
    HIBYTE(v73[8]) = v150;
    v73[9] = v48;
    v73[10] = v47;
    v73[11] = v70;
    v73[12] = v53;
    LOWORD(v73[13]) = v71;
    *(&v73[13] + 2) = v147;
    HIWORD(v73[13]) = v148;
    v73[14] = v69;
    v73[15] = v61;
    v73[16] = v34;
    v73[17] = v151;
    v73[18] = v33;
    v73[19] = v72;
    v73[20] = v68;
    v73[21] = v67;
    v73[22] = v51;
    LODWORD(v9) = v65;
    v73[23] = v66;
    *(&v73[24] + 5) = v145;
    HIDWORD(v73[26]) = *&v143[3];
    *(&v73[26] + 1) = *v143;
    *(&v73[29] + 2) = v141;
    v21 = HIDWORD(v65);
    BYTE4(v73[24]) = BYTE4(v65);
    LODWORD(v73[24]) = v65;
    HIBYTE(v73[24]) = v146;
    v22 = v32;
    v73[25] = v32;
    HIWORD(v73[29]) = v142;
    v23 = v144;
    LOBYTE(v73[26]) = v144;
    v73[27] = v31;
    v24 = v56;
    v73[28] = v56;
    LOBYTE(v73[29]) = v30;
    BYTE1(v73[29]) = v29;
    v73[30] = v64;
    v73[31] = v63;
    v73[32] = v62;
    v73[33] = v60;
    v73[34] = v59;
    v73[35] = v58;
    v73[36] = v57;
    v73[37] = v55;
    v73[38] = v54;
    v73[39] = v52;
    v73[40] = v50;
    LOBYTE(v73[41]) = v28;
    BYTE1(v73[41]) = v27;
    memcpy(v8, v73, 0x14AuLL);
    sub_254F62F80(v73, &v74);
    sub_254F4DA5C(v49);
    v74 = v35;
    v75 = v46;
    v76 = v26;
    v77 = v45;
    v78 = v43;
    v79 = v44;
    v80 = v41;
    v81 = v42;
    LOBYTE(v82) = v40;
    BYTE1(v82) = v39;
    BYTE2(v82) = v38;
    BYTE3(v82) = v37;
    BYTE4(v82) = v36;
    v83 = v48;
    v84 = v47;
    v85 = v70;
    v86 = v53;
    v87 = v71;
    v90 = v69;
    v91 = v61;
    *(&v82 + 5) = v149;
    HIBYTE(v82) = v150;
    v88 = v147;
    v89 = v148;
    v92 = v34;
    v93 = v151;
    v94 = v33;
    v95 = v72;
    v96 = v68;
    v97 = v67;
    v98 = v51;
    v99 = v66;
    v101 = v21;
    v100 = v9;
    v103 = v146;
    v102 = v145;
    v104 = v22;
    v105 = v23;
    *&v106[3] = *&v143[3];
    *v106 = *v143;
    v107 = v31;
    v108 = v24;
    v109 = v30;
    v110 = v29;
    v112 = v142;
    v111 = v141;
    v113 = v64;
    v114 = v63;
    v115 = v62;
    v116 = v60;
    v117 = v59;
    v118 = v58;
    v119 = v57;
    v120 = v55;
    v121 = v54;
    v122 = v52;
    v123 = v50;
    v124 = v28;
    v125 = v27;
    sub_254F62FB8(&v74);
  }

  sub_254F643E4();
  sub_254F4F348();
}

uint64_t static StructuredContext.SiriRequestContext.carPlayDeviceRestrictionIdentifier.getter()
{
  swift_beginAccess();

  return sub_254F4F220();
}

uint64_t static StructuredContext.SiriRequestContext.carPlayDeviceRestrictionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aStark = a1;
  qword_27F760E90 = a2;
}

uint64_t (*static StructuredContext.SiriRequestContext.carPlayDeviceRestrictionIdentifier.modify())()
{
  sub_254F4F220();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t StructuredContext.SiriRequestContext.isCarPlayEnvironment.getter()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v4[0] = *aStark;
  v4[1] = qword_27F760E90;
  v3[2] = v4;

  LOBYTE(v1) = sub_254F62B34(sub_254F63058, v3, v1);

  return v1 & 1;
}

CLLocation_optional __swiftcall StructuredContext.SiriRequestContext.location()()
{
  v1 = 0;
  v2 = *(v0 + 120);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 112);
    sub_254F63078(0, &qword_27F760FA8);
    sub_254F63078(0, &qword_27F760FB0);
    sub_254F5C300(v3, v2);
    v1 = sub_254F9BB40();
    sub_254F5C38C(v3, v2);
  }

  v6 = v1;
  result.value._internal = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

BOOL sub_254F62B34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_254F62BE4()
{
  result = qword_27F760F48;
  if (!qword_27F760F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F48);
  }

  return result;
}

unint64_t sub_254F62C38()
{
  result = qword_27F760F50;
  if (!qword_27F760F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F50);
  }

  return result;
}

unint64_t sub_254F62C8C()
{
  result = qword_27F760F58;
  if (!qword_27F760F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F58);
  }

  return result;
}

unint64_t sub_254F62CE0()
{
  result = qword_27F760F60;
  if (!qword_27F760F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F60);
  }

  return result;
}

unint64_t sub_254F62D34()
{
  result = qword_27F760F68;
  if (!qword_27F760F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F68);
  }

  return result;
}

unint64_t sub_254F62D88()
{
  result = qword_27F760F70;
  if (!qword_27F760F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F70);
  }

  return result;
}

unint64_t sub_254F62DDC()
{
  result = qword_27F760F80;
  if (!qword_27F760F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F80);
  }

  return result;
}

unint64_t sub_254F62E30()
{
  result = qword_27F760F88;
  if (!qword_27F760F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F88);
  }

  return result;
}

unint64_t sub_254F62E84()
{
  result = qword_27F760F90;
  if (!qword_27F760F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F90);
  }

  return result;
}

unint64_t sub_254F62ED8()
{
  result = qword_27F760F98;
  if (!qword_27F760F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F98);
  }

  return result;
}

unint64_t sub_254F62F2C()
{
  result = qword_27F760FA0;
  if (!qword_27F760FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FA0);
  }

  return result;
}

uint64_t sub_254F62FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_254F9BE30() & 1;
  }
}

uint64_t sub_254F63078(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_254F630BC()
{
  result = qword_27F760FB8;
  if (!qword_27F760FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FB8);
  }

  return result;
}

unint64_t sub_254F63114()
{
  result = qword_27F760FC0;
  if (!qword_27F760FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FC0);
  }

  return result;
}

uint64_t sub_254F63168(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F6318C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_254F631A8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F631D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F631F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254F63214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 330))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 330) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 330) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_254F632FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254F63310(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_254F633D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_254F633E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *_s18SiriRequestContextV4UserV14ClassificationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F63580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F635C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254F6362C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s18SiriRequestContextV11DeviceIdiomOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18SiriRequestContextV11DeviceIdiomOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t _s18SiriRequestContextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18SiriRequestContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254F639D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18SiriRequestContextV4UserV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18SiriRequestContextV18ContentRestrictionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254F63C6C()
{
  result = qword_27F760FC8;
  if (!qword_27F760FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FC8);
  }

  return result;
}

unint64_t sub_254F63CC4()
{
  result = qword_27F760FD0;
  if (!qword_27F760FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FD0);
  }

  return result;
}

unint64_t sub_254F63D1C()
{
  result = qword_27F760FD8;
  if (!qword_27F760FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FD8);
  }

  return result;
}

unint64_t sub_254F63D74()
{
  result = qword_27F760FE0;
  if (!qword_27F760FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FE0);
  }

  return result;
}

unint64_t sub_254F63DCC()
{
  result = qword_27F760FE8;
  if (!qword_27F760FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FE8);
  }

  return result;
}

unint64_t sub_254F63E24()
{
  result = qword_27F760FF0;
  if (!qword_27F760FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FF0);
  }

  return result;
}

unint64_t sub_254F63E7C()
{
  result = qword_27F760FF8;
  if (!qword_27F760FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FF8);
  }

  return result;
}

unint64_t sub_254F63ED4()
{
  result = qword_27F761000;
  if (!qword_27F761000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761000);
  }

  return result;
}

unint64_t sub_254F63F2C()
{
  result = qword_27F761008;
  if (!qword_27F761008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761008);
  }

  return result;
}

unint64_t sub_254F63F84()
{
  result = qword_27F761010;
  if (!qword_27F761010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761010);
  }

  return result;
}

unint64_t sub_254F63FDC()
{
  result = qword_27F761018;
  if (!qword_27F761018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761018);
  }

  return result;
}

unint64_t sub_254F64034()
{
  result = qword_27F761020;
  if (!qword_27F761020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761020);
  }

  return result;
}

unint64_t sub_254F6408C()
{
  result = qword_27F761028;
  if (!qword_27F761028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761028);
  }

  return result;
}

unint64_t sub_254F640E4()
{
  result = qword_27F761030;
  if (!qword_27F761030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761030);
  }

  return result;
}

unint64_t sub_254F6413C()
{
  result = qword_27F761038;
  if (!qword_27F761038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761038);
  }

  return result;
}

unint64_t sub_254F64190()
{
  result = qword_27F761040;
  if (!qword_27F761040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761040);
  }

  return result;
}

unint64_t sub_254F641E4()
{
  result = qword_27F761048;
  if (!qword_27F761048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761048);
  }

  return result;
}

uint64_t sub_254F64270()
{

  return sub_254F9BC90();
}

void sub_254F642D0()
{
  v0[38] = 0;
  v0[39] = 0;
  v0[36] = 0;
  v0[37] = 0;
}

uint64_t sub_254F642DC@<X0>(char a1@<W8>)
{
  *(v1 - 184) = a1;

  return sub_254F9BC50();
}

__n128 sub_254F6438C()
{
  result = *&STACK[0x330];
  v1 = *&STACK[0x340];
  *&STACK[0x2D0] = *&STACK[0x330];
  *&STACK[0x2E0] = v1;
  STACK[0x2ED] = STACK[0x34D];
  return result;
}

uint64_t sub_254F64418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_254F5C540(a26, a24, 1);
}

uint64_t sub_254F64438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41)
{

  return sub_254F5C2EC(a39, a41);
}

uint64_t sub_254F64458()
{
}

uint64_t StructuredContext.value.getter()
{
  sub_254F4E418();
  memcpy(v0, v1, v2);
  sub_254F4E418();
  v6 = memcpy(v3, v4, v5);
  v14 = sub_254F68770(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  return sub_254F644B8(v14, v15);
}

uint64_t sub_254F644B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *StructuredContext.value.setter()
{
  sub_254F4E418();
  memcpy(v1, v2, v3);
  sub_254F6456C(v5);
  return sub_254F686D0(v0);
}

uint64_t static StructuredContext.Value.== infix(_:_:)(const void *a1)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F686D0(__src);
  sub_254F4E418();
  memcpy(v5, v6, v7);
  sub_254F686D0(&v128);
  sub_254F4E418();
  memcpy(v8, v9, v10);
  switch(sub_254F64950(v129))
  {
    case 1u:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124) != 1)
      {
        goto LABEL_16;
      }

      sub_254F5103C(v124);
      sub_254F686F4();
      memcpy(v56, v57, 0x49uLL);
      v58 = memcpy(__dst, a1, 0x49uLL);
      v66 = sub_254F4EEF8(v58, v59, v60, v61, v62, v63, v64, v65, v87, v90, v91, v94, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v43 = static StructuredContext.IntelligenceCommandContext.== infix(_:_:)(v66, v67);
      goto LABEL_15;
    case 2u:
      v28 = sub_254F5103C(v129);
      v29 = *v28;
      v30 = *(v28 + 8);
      v88 = *(v28 + 32);
      v92 = *(v28 + 16);
      memcpy(v124, __src, 0x14AuLL);
      if (sub_254F64950(v124) != 2)
      {
        goto LABEL_16;
      }

      v31 = sub_254F5103C(v124);
      v32 = *v31;
      v33 = v31[1];
      v119 = v30;
      v120 = v92;
      v121 = v88;
      v41 = sub_254F4EEF8(v31, v34, v35, v36, v37, v38, v39, v40, v88, *(&v88 + 1), v92, *(&v92 + 1), v32, v33, v31[2], v31[3], v31[4], v31[5], *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v29);
      v43 = static StructuredContext.AppInFocusContext.== infix(_:_:)(v41, v42);
      goto LABEL_15;
    case 3u:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124) != 3)
      {
        goto LABEL_16;
      }

      sub_254F5103C(v124);
      sub_254F686F4();
      memcpy(v44, v45, 0xA0uLL);
      v46 = memcpy(__dst, a1, sizeof(__dst));
      v54 = sub_254F4EEF8(v46, v47, v48, v49, v50, v51, v52, v53, v87, v90, v91, v94, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v43 = static StructuredContext.NowPlayingMediaItemContext.== infix(_:_:)(v54, v55);
      goto LABEL_15;
    case 4u:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124) != 4)
      {
        goto LABEL_16;
      }

      sub_254F5103C(v124);
      sub_254F686F4();
      memcpy(v15, v16, 0x98uLL);
      memcpy(__dst, a1, 0x98uLL);
      sub_254F6495C(__src, v123);
      sub_254F6495C(v125, v123);
      sub_254F6495C(v125, v123);
      v17 = sub_254F6495C(__src, v123);
      v25 = sub_254F4EEF8(v17, v18, v19, v20, v21, v22, v23, v24, v87, v90, v91, v94, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v14 = static StructuredContext.OnScreenUIText.== infix(_:_:)(v25, v26);
      goto LABEL_6;
    case 5u:
      v68 = sub_254F5103C(v129);
      v69 = *v68;
      v70 = *(v68 + 8);
      v89 = *(v68 + 32);
      v93 = *(v68 + 16);
      v71 = *(v68 + 48);
      memcpy(v124, __src, 0x14AuLL);
      if (sub_254F64950(v124) != 5)
      {
        goto LABEL_16;
      }

      v72 = sub_254F5103C(v124);
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 48);
      v118 = v69;
      v119 = v70;
      v120 = v93;
      v121 = v89;
      v122 = v71;
      *&__dst[0] = v73;
      *(&__dst[0] + 1) = v74;
      v76 = *(v72 + 32);
      __dst[1] = *(v72 + 16);
      LOBYTE(__dst[3]) = v75;
      v84 = sub_254F4EEF8(v72, v77, v78, v79, v80, v81, v82, v83, v89, *(&v89 + 1), v93, *(&v93 + 1), v73, v74, *&__dst[1], *(&__dst[1] + 1), v76, *(&v76 + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v69);
      v43 = static StructuredContext.AppContext.== infix(_:_:)(v84, v85);
LABEL_15:
      v27 = v43;
      sub_254F6495C(v125, v123);
      sub_254F6495C(__src, v123);
      sub_254F60B2C(v127, &qword_27F761058);
      break;
    default:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124))
      {
LABEL_16:
        sub_254F6495C(v125, v124);
        sub_254F6495C(__src, v124);
        sub_254F60B2C(v127, &qword_27F761058);
        v27 = 0;
      }

      else
      {
        sub_254F5103C(v124);
        sub_254F686D0(v123);
        sub_254F4E418();
        memcpy(v11, v12, v13);
        sub_254F6495C(__src, __dst);
        sub_254F6495C(v125, __dst);
        sub_254F6495C(v125, __dst);
        sub_254F6495C(__src, __dst);
        v14 = static StructuredContext.SiriRequestContext.== infix(_:_:)(v123, &v118);
LABEL_6:
        v27 = v14;
        sub_254F60B2C(v127, &qword_27F761058);
        sub_254F64994(__src);
        sub_254F64994(v125);
      }

      break;
  }

  return v27 & 1;
}

uint64_t sub_254F649D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000254FA5F00 == a2;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000254FA5F20 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000254FA6600 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x8000000254FA6620 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65657263536E6FLL && a2 == 0xEE00747865544955;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65746E6F43707061 && a2 == 0xEA00000000007478)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F64BCC(char a1)
{
  result = 0x6E65657263536E6FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x65746E6F43707061;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_254F64CAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254F64D20(uint64_t a1)
{
  v2 = sub_254F65810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64D5C(uint64_t a1)
{
  v2 = sub_254F65810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64D98(uint64_t a1)
{
  v2 = sub_254F65A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64DD4(uint64_t a1)
{
  v2 = sub_254F65A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F649D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F64E40(uint64_t a1)
{
  v2 = sub_254F657BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64E7C(uint64_t a1)
{
  v2 = sub_254F657BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64EB8(uint64_t a1)
{
  v2 = sub_254F65AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64EF4(uint64_t a1)
{
  v2 = sub_254F65AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64F30(uint64_t a1)
{
  v2 = sub_254F65960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64F6C(uint64_t a1)
{
  v2 = sub_254F65960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64FA8(uint64_t a1)
{
  v2 = sub_254F658B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64FE4(uint64_t a1)
{
  v2 = sub_254F658B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F65020(uint64_t a1)
{
  v2 = sub_254F65B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6505C(uint64_t a1)
{
  v2 = sub_254F65B58();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.Value.encode(to:)()
{
  sub_254F4E9D0();
  *&v77 = v0;
  v2 = v1;
  sub_254F52F94(&qword_27F761060);
  sub_254F4DF18();
  v72 = v4;
  *&v73 = v3;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v71 = v5;
  sub_254F52F94(&qword_27F761068);
  sub_254F4DF18();
  v69 = v7;
  *&v70 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v68 = v8;
  sub_254F52F94(&qword_27F761070);
  sub_254F4DF18();
  v66 = v10;
  v67 = v9;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v65 = v11;
  sub_254F52F94(&qword_27F761078);
  sub_254F4DF18();
  v63 = v13;
  v64 = v12;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v15 = &v60 - v14;
  sub_254F52F94(&qword_27F761080);
  sub_254F4DF18();
  v61 = v17;
  v62 = v16;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v19 = &v60 - v18;
  v20 = sub_254F52F94(&qword_27F761088);
  sub_254F4DF18();
  v60 = v21;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v23 = &v60 - v22;
  sub_254F52F94(&qword_27F761090);
  sub_254F4DF18();
  v75 = v24;
  v76 = v25;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v27 = &v60 - v26;
  sub_254F4EF24(v2, v2[3]);
  sub_254F657BC();
  v74 = v27;
  sub_254F9BF20();
  memcpy(v83, v77, 0x14AuLL);
  LODWORD(v2) = sub_254F64950(v83);
  v28 = sub_254F5103C(v83);
  v29 = v28;
  switch(v2)
  {
    case 1:
      LOBYTE(v78) = 1;
      sub_254F65AB0();
      v48 = v74;
      v40 = v75;
      sub_254F4E380();
      sub_254F9BD30();
      v49 = sub_254F68764();
      memcpy(v49, v50, 0x49uLL);
      sub_254F65B04();
      v51 = v62;
      sub_254F9BE00();
      (*(v61 + 8))(v19, v51);
      sub_254F68744();
      v44 = v48;
      goto LABEL_9;
    case 2:
      v37 = *v28;
      v38 = *(v28 + 8);
      LOBYTE(v78) = 2;
      sub_254F65A08();
      v39 = *(v29 + 32);
      v77 = *(v29 + 16);
      v73 = v39;
      v41 = v74;
      v40 = v75;
      sub_254F4E380();
      sub_254F9BD30();
      v78 = v37;
      v79 = v38;
      v81 = v73;
      v80 = v77;
      sub_254F65A5C();
      v42 = v64;
      sub_254F9BE00();
      (*(v63 + 8))(v15, v42);
      sub_254F68744();
      v44 = v41;
LABEL_9:
      v47 = v40;
      goto LABEL_11;
    case 3:
      LOBYTE(v78) = 3;
      sub_254F65960();
      v32 = v65;
      sub_254F686B0();
      v45 = sub_254F68764();
      memcpy(v45, v46, 0xA0uLL);
      sub_254F659B4();
      v35 = v67;
      sub_254F9BE00();
      v36 = v66;
      goto LABEL_6;
    case 4:
      LOBYTE(v78) = 4;
      sub_254F658B8();
      v32 = v68;
      sub_254F686B0();
      v33 = sub_254F68764();
      memcpy(v33, v34, 0x98uLL);
      sub_254F6590C();
      v35 = v70;
      sub_254F9BE00();
      v36 = v69;
LABEL_6:
      (*(v36 + 8))(v32, v35);
      goto LABEL_7;
    case 5:
      v52 = *v28;
      v53 = *(v28 + 8);
      v54 = *(v28 + 48);
      LOBYTE(v78) = 5;
      sub_254F65810();
      v55 = *(v29 + 32);
      v77 = *(v29 + 16);
      v70 = v55;
      v56 = v71;
      v58 = v74;
      v57 = v75;
      sub_254F9BD30();
      v78 = v52;
      v79 = v53;
      v81 = v70;
      v80 = v77;
      v82 = v54;
      sub_254F65864();
      v59 = v73;
      sub_254F9BE00();
      (*(v72 + 8))(v56, v59);
      sub_254F68744();
      v44 = v58;
      v47 = v57;
      goto LABEL_11;
    default:
      LOBYTE(v78) = 0;
      sub_254F65B58();
      sub_254F686B0();
      v30 = sub_254F68764();
      memcpy(v30, v31, 0x14AuLL);
      sub_254F65BAC();
      sub_254F9BE00();
      (*(v60 + 8))(v23, v20);
LABEL_7:
      sub_254F68744();
      v44 = v27;
      v47 = v19;
LABEL_11:
      v43(v44, v47);
      sub_254F4F348();
      return;
  }
}

unint64_t sub_254F657BC()
{
  result = qword_280C46178;
  if (!qword_280C46178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46178);
  }

  return result;
}

unint64_t sub_254F65810()
{
  result = qword_27F761098;
  if (!qword_27F761098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761098);
  }

  return result;
}

unint64_t sub_254F65864()
{
  result = qword_27F7610A0;
  if (!qword_27F7610A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610A0);
  }

  return result;
}

unint64_t sub_254F658B8()
{
  result = qword_280C46160;
  if (!qword_280C46160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46160);
  }

  return result;
}

unint64_t sub_254F6590C()
{
  result = qword_280C461D8;
  if (!qword_280C461D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461D8);
  }

  return result;
}

unint64_t sub_254F65960()
{
  result = qword_280C45C60;
  if (!qword_280C45C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C60);
  }

  return result;
}

unint64_t sub_254F659B4()
{
  result = qword_280C45630;
  if (!qword_280C45630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45630);
  }

  return result;
}

unint64_t sub_254F65A08()
{
  result = qword_280C461D0;
  if (!qword_280C461D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461D0);
  }

  return result;
}

unint64_t sub_254F65A5C()
{
  result = qword_280C45CB8[0];
  if (!qword_280C45CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C45CB8);
  }

  return result;
}

unint64_t sub_254F65AB0()
{
  result = qword_27F7610A8;
  if (!qword_27F7610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610A8);
  }

  return result;
}

unint64_t sub_254F65B04()
{
  result = qword_27F7610B0;
  if (!qword_27F7610B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610B0);
  }

  return result;
}

unint64_t sub_254F65B58()
{
  result = qword_27F7610B8;
  if (!qword_27F7610B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610B8);
  }

  return result;
}

unint64_t sub_254F65BAC()
{
  result = qword_27F7610C0;
  if (!qword_27F7610C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610C0);
  }

  return result;
}

void StructuredContext.Value.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v79 = v3;
  v78 = sub_254F52F94(&qword_27F7610C8);
  sub_254F4DF18();
  v76 = v4;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v84 = v5;
  v77 = sub_254F52F94(&qword_27F7610D0);
  sub_254F4DF18();
  v74 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v82 = v7;
  v75 = sub_254F52F94(&qword_27F7610D8);
  sub_254F4DF18();
  v72 = v8;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v81 = v9;
  v73 = sub_254F52F94(&qword_27F7610E0);
  sub_254F4DF18();
  v70 = v10;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  v80 = v11;
  v71 = sub_254F52F94(&qword_27F7610E8);
  sub_254F4DF18();
  v69 = v12;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v14 = &v63 - v13;
  v15 = sub_254F52F94(&qword_27F7610F0);
  sub_254F4DF18();
  v68 = v16;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v18 = &v63 - v17;
  v19 = sub_254F52F94(&qword_27F7610F8);
  sub_254F4DF18();
  v83 = v20;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v22 = &v63 - v21;
  v23 = v2[3];
  v85 = v2;
  sub_254F4EF24(v2, v23);
  sub_254F657BC();
  sub_254F9BF10();
  if (v0)
  {
    goto LABEL_10;
  }

  v64 = v15;
  v65 = v18;
  v66 = v14;
  v24 = v84;
  v25 = sub_254F9BD20();
  sub_254F673E4(v25, 0);
  v30 = v19;
  if (v28 == v29 >> 1)
  {
LABEL_9:
    v39 = sub_254F9BBB0();
    swift_allocError();
    v41 = v40;
    sub_254F52F94(&qword_27F761100);
    *v41 = &type metadata for StructuredContext.Value;
    sub_254F9BC40();
    sub_254F9BBA0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v22, v30);
LABEL_10:
    v24 = v85;
LABEL_11:
    sub_254F4DA5C(v24);
    sub_254F4F348();
    return;
  }

  v67 = v19;
  v63 = 0;
  if (v28 < (v29 >> 1))
  {
    v31 = *(v27 + v28);
    sub_254F685D8(v28 + 1, v29 >> 1, v26, v27, v28, v29);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v63;
      switch(v31)
      {
        case 1:
          v87[0] = 1;
          sub_254F65AB0();
          sub_254F4E03C();
          sub_254F68704();
          sub_254F67610();
          sub_254F4E380();
          sub_254F6877C();
          sub_254F68674();
          swift_unknownObjectRelease();
          v58 = sub_254F4E494();
          v59(v58);
          v60 = sub_254F4F304();
          v61(v60);
          memcpy(v87, v86, 0x49uLL);
          sub_254F67664(v87);
          goto LABEL_21;
        case 2:
          v87[0] = 2;
          sub_254F65A08();
          sub_254F4E03C();
          sub_254F68704();
          sub_254F67594();
          sub_254F4E380();
          sub_254F6877C();
          sub_254F68674();
          swift_unknownObjectRelease();
          v46 = sub_254F4E494();
          v47(v46);
          v48 = sub_254F4F304();
          v49(v48);
          sub_254F4E328(v86[0]);
          sub_254F675E8(v87);
          goto LABEL_21;
        case 3:
          v87[0] = 3;
          sub_254F65960();
          sub_254F4E03C();
          sub_254F68704();
          sub_254F67518();
          sub_254F4E380();
          sub_254F6877C();
          sub_254F68674();
          swift_unknownObjectRelease();
          v50 = sub_254F4E494();
          v51(v50);
          v52 = sub_254F4F304();
          v53(v52);
          memcpy(v87, v86, 0xA0uLL);
          sub_254F6756C(v87);
          goto LABEL_21;
        case 4:
          v87[0] = 4;
          sub_254F658B8();
          sub_254F4E03C();
          sub_254F68704();
          sub_254F6749C();
          sub_254F4E380();
          sub_254F6877C();
          sub_254F68674();
          swift_unknownObjectRelease();
          v42 = sub_254F4E494();
          v43(v42);
          v44 = sub_254F4F304();
          v45(v44);
          memcpy(v87, v86, 0x98uLL);
          sub_254F674F0(v87);
          goto LABEL_21;
        case 5:
          v87[0] = 5;
          sub_254F65810();
          sub_254F4E03C();
          sub_254F68704();
          sub_254F6741C();
          v55 = v78;
          sub_254F4E380();
          sub_254F9BD10();
          v56 = (v76 + 8);
          v57 = (v83 + 8);
          if (v33)
          {
            swift_unknownObjectRelease();
            (*v56)(v24, v55);
            (*v57)(v18, v67);
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*v56)(v24, v55);
          (*v57)(v18, v67);
          sub_254F4E328(v86[0]);
          v87[48] = v62;
          sub_254F67470(v87);
LABEL_21:
          memcpy(v88, v87, sizeof(v88));
          goto LABEL_22;
        default:
          v87[0] = 0;
          sub_254F65B58();
          v37 = v65;
          v38 = v67;
          sub_254F4E380();
          sub_254F9BC30();
          if (v36)
          {
            (*(v83 + 8))(v22, v38);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_254F6768C();
          v54 = v64;
          sub_254F9BD10();
          sub_254F68674();
          swift_unknownObjectRelease();
          MEMORY[0](v37, v54);
          (*v37)(v22, v67);
          memcpy(v86, v87, 0x14AuLL);
          sub_254F676E0(v86);
          memcpy(v88, v86, sizeof(v88));
          v24 = v85;
LABEL_22:
          memcpy(v79, v88, 0x14AuLL);
          break;
      }

      goto LABEL_11;
    }

    v30 = v67;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static StructuredContext.== infix(_:_:)(const void *a1)
{
  sub_254F686D0(v26);
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F686D0(__src);
  sub_254F4E418();
  memcpy(v5, v6, v7);
  sub_254F686D0(v28);
  sub_254F68710(v28);
  if (!v15)
  {
    sub_254F686D0(v24);
    sub_254F4E418();
    memcpy(v12, v13, v14);
    sub_254F68710(__dst);
    if (!v15)
    {
      sub_254F644B8(v26, v22);
      sub_254F644B8(v27, v22);
      sub_254F644B8(v24, v22);
      v11 = static StructuredContext.Value.== infix(_:_:)(a1);
      sub_254F4E418();
      memcpy(v16, v17, v18);
      sub_254F64994(&v20);
      sub_254F686D0(v21);
      sub_254F64994(v21);
      sub_254F686D0(v22);
      sub_254F60B2C(v22, &qword_27F761050);
      return v11 & 1;
    }

    sub_254F686D0(v22);
    sub_254F644B8(v26, v21);
    sub_254F644B8(v27, v21);
    sub_254F644B8(v24, v21);
    sub_254F64994(v22);
LABEL_9:
    memcpy(__dst, __src, 0x29AuLL);
    sub_254F60B2C(__dst, &qword_27F761120);
    v11 = 0;
    return v11 & 1;
  }

  sub_254F4E418();
  memcpy(v8, v9, v10);
  sub_254F68710(__dst);
  if (!v15)
  {
    sub_254F644B8(v26, v24);
    sub_254F644B8(v27, v24);
    goto LABEL_9;
  }

  sub_254F686D0(v24);
  sub_254F644B8(v26, v22);
  sub_254F644B8(v27, v22);
  sub_254F60B2C(v24, &qword_27F761050);
  v11 = 1;
  return v11 & 1;
}

uint64_t StructuredContext.description.getter()
{
  sub_254F4E418();
  memcpy(v0, v1, v2);
  sub_254F4E418();
  memcpy(v3, v4, v5);
  sub_254F644B8(v8, &v7);
  sub_254F52F94(&qword_27F761050);
  return sub_254F9B9A0();
}

uint64_t sub_254F66910(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254F6699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F66910(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254F669C8(uint64_t a1)
{
  v2 = sub_254F67728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F66A04(uint64_t a1)
{
  v2 = sub_254F67728();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.encode(to:)()
{
  sub_254F4E9D0();
  v1 = v0;
  v2 = sub_254F52F94(&qword_27F761128);
  sub_254F4DF18();
  v4 = v3;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v6 = &v11[-v5 - 8];
  sub_254F4E418();
  memcpy(v7, v8, v9);
  sub_254F4EF24(v1, v1[3]);
  sub_254F644B8(v13, v12);
  sub_254F67728();
  sub_254F9BF20();
  memcpy(v12, v13, 0x14AuLL);
  sub_254F6777C();
  sub_254F9BD80();
  memcpy(v11, v12, 0x14AuLL);
  sub_254F60B2C(v11, &qword_27F761050);
  (*(v4 + 8))(v6, v2);
  sub_254F4F348();
}

void StructuredContext.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v11 = v3;
  v4 = sub_254F52F94(&qword_27F761130);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v8 = &v10[-v7 - 8];
  sub_254F4EF24(v2, v2[3]);
  sub_254F67728();
  sub_254F9BF10();
  if (!v0)
  {
    sub_254F677D0();
    sub_254F4E380();
    sub_254F9BC90();
    (*(v6 + 8))(v8, v4);
    memcpy(v11, v10, 0x14AuLL);
  }

  sub_254F4DA5C(v2);
  sub_254F4F348();
}

void *StructuredContext.init(_:)()
{
  sub_254F686E8();
  sub_254F67824(v9);
  sub_254F4E864(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15], v9[16], v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25], v9[26], v9[27], v9[28], v9[29], v9[30], v9[31], v9[32], v9[33], v9[34], v9[35], v9[36], v9[37], v9[38], v9[39], v9[40], v9[41], v10[0]);
  sub_254F6456C(v10);
  sub_254F686D0(v11);
  sub_254F676E0(v11);
  sub_254F4F3AC();
  nullsub_1(v12);
  return sub_254F4E518();
}

{
  sub_254F686E8();
  sub_254F67824(v10);
  sub_254F4E864(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v10[26], v10[27], v10[28], v10[29], v10[30], v10[31], v10[32], v10[33], v10[34], v10[35], v10[36], v10[37], v10[38], v10[39], v10[40], v10[41], v11[0]);
  sub_254F6456C(v11);
  memcpy(__dst, v0, 0x49uLL);
  sub_254F67664(__dst);
  sub_254F4F3AC();
  nullsub_1(v13);
  return sub_254F4E518();
}

{
  sub_254F686E8();
  sub_254F67824(v9);
  sub_254F4E864(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15], v9[16], v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25], v9[26], v9[27], v9[28], v9[29], v9[30], v9[31], v9[32], v9[33], v9[34], v9[35], v9[36], v9[37], v9[38], v9[39], v9[40], v9[41], v10[0]);
  sub_254F6456C(v10);
  sub_254F68750();
  sub_254F675E8(v11);
  sub_254F4F3AC();
  nullsub_1(v12);
  return sub_254F4E518();
}

{
  sub_254F686E8();
  sub_254F67824(v10);
  sub_254F4E864(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v10[26], v10[27], v10[28], v10[29], v10[30], v10[31], v10[32], v10[33], v10[34], v10[35], v10[36], v10[37], v10[38], v10[39], v10[40], v10[41], v11[0]);
  sub_254F6456C(v11);
  memcpy(__dst, v0, 0xA0uLL);
  sub_254F6756C(__dst);
  sub_254F4F3AC();
  nullsub_1(v13);
  return sub_254F4E518();
}

{
  sub_254F686E8();
  sub_254F67824(v10);
  sub_254F4E864(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v10[26], v10[27], v10[28], v10[29], v10[30], v10[31], v10[32], v10[33], v10[34], v10[35], v10[36], v10[37], v10[38], v10[39], v10[40], v10[41], v11[0]);
  sub_254F6456C(v11);
  memcpy(__dst, v0, 0x98uLL);
  sub_254F674F0(__dst);
  sub_254F4F3AC();
  nullsub_1(v13);
  return sub_254F4E518();
}

{
  sub_254F686E8();
  v1 = *(v0 + 48);
  sub_254F67824(v11);
  sub_254F4E864(v2, v3, v4, v5, v6, v7, v8, v9, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v11[22], v11[23], v11[24], v11[25], v11[26], v11[27], v11[28], v11[29], v11[30], v11[31], v11[32], v11[33], v11[34], v11[35], v11[36], v11[37], v11[38], v11[39], v11[40], v11[41], v12[0]);
  sub_254F6456C(v12);
  sub_254F68750();
  LOBYTE(v14) = v1;
  sub_254F67470(v13);
  sub_254F4F3AC();
  nullsub_1(v15);
  return sub_254F4E518();
}

void *StructuredContext.siriRequestContext.getter@<X0>(void *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(__src);
  if (v5 || (memcpy(__dst, __src, 0x14AuLL), sub_254F64950(__dst)))
  {
    sub_254F67878(__dst);
    return memcpy(a1, __dst, 0x14AuLL);
  }

  else
  {
    v7 = sub_254F5103C(__dst);
    memcpy(v12, v7, 0x14AuLL);
    nullsub_1(v12);
    memcpy(a1, v12, 0x14AuLL);
    sub_254F4E418();
    memcpy(v8, v9, v10);
    return sub_254F6495C(v13, v11);
  }
}

double StructuredContext.intelligenceCommand.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(v66);
  if (v5 || (sub_254F68728(), sub_254F64950(v65) != 1))
  {
    result = 0.0;
    *(a1 + 57) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    v6 = sub_254F5103C(v65);
    memcpy(a1, v6, 0x49uLL);
    sub_254F4E418();
    v10 = memcpy(v7, v8, v9);
    v18 = sub_254F68770(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_254F6495C(v18, v19);
  }

  return result;
}

void *StructuredContext.nowPlayingMediaItemContext.getter@<X0>(void *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(__src);
  if (v5 || (memcpy(__dst, __src, 0x14AuLL), sub_254F64950(__dst) != 3))
  {
    sub_254F67880(__dst);
    return memcpy(a1, __dst, 0xA0uLL);
  }

  else
  {
    v6 = sub_254F5103C(__dst);
    memcpy(v12, v6, sizeof(v12));
    nullsub_1(v12);
    memcpy(a1, v12, 0xA0uLL);
    sub_254F4E418();
    memcpy(v7, v8, v9);
    return sub_254F6495C(v13, v11);
  }
}

double StructuredContext.appInFocusContext.getter@<D0>(uint64_t a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(v68);
  if (v5 || (sub_254F68728(), sub_254F64950(v67) != 2))
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v6 = sub_254F5103C(v67);
    v7 = *(v6 + 8);
    *a1 = *v6;
    *(a1 + 8) = v7;
    v8 = *(v6 + 32);
    *(a1 + 16) = *(v6 + 16);
    *(a1 + 32) = v8;
    sub_254F4E418();
    v12 = memcpy(v9, v10, v11);
    v20 = sub_254F68770(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    sub_254F6495C(v20, v21);
  }

  return result;
}

void *StructuredContext.onScreenUIText.getter@<X0>(void *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(__src);
  if (v5 || (memcpy(__dst, __src, 0x14AuLL), sub_254F64950(__dst) != 4))
  {
    sub_254F67888(__dst);
    return memcpy(a1, __dst, 0x98uLL);
  }

  else
  {
    v6 = sub_254F5103C(__dst);
    memcpy(v12, v6, sizeof(v12));
    nullsub_1(v12);
    memcpy(a1, v12, 0x98uLL);
    sub_254F4E418();
    memcpy(v7, v8, v9);
    return sub_254F6495C(v13, &v11);
  }
}

double StructuredContext.appContext.getter@<D0>(uint64_t a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(v69);
  if (v5 || (sub_254F68728(), sub_254F64950(v68) != 5))
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v6 = sub_254F5103C(v68);
    v7 = *(v6 + 8);
    v8 = *(v6 + 48);
    *a1 = *v6;
    *(a1 + 8) = v7;
    v9 = *(v6 + 32);
    *(a1 + 16) = *(v6 + 16);
    *(a1 + 32) = v9;
    *(a1 + 48) = v8;
    sub_254F4E418();
    v13 = memcpy(v10, v11, v12);
    v21 = sub_254F68770(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    sub_254F6495C(v21, v22);
  }

  return result;
}

void sub_254F673E4(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_254F4E604();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_254F6741C()
{
  result = qword_27F761108;
  if (!qword_27F761108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761108);
  }

  return result;
}

uint64_t sub_254F67470(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0xA000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F6749C()
{
  result = qword_280C45C68;
  if (!qword_280C45C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C68);
  }

  return result;
}

uint64_t sub_254F674F0(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x8000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F67518()
{
  result = qword_280C45628;
  if (!qword_280C45628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45628);
  }

  return result;
}

uint64_t sub_254F6756C(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x6000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F67594()
{
  result = qword_280C45CB0;
  if (!qword_280C45CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45CB0);
  }

  return result;
}

uint64_t sub_254F675E8(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x4000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F67610()
{
  result = qword_27F761110;
  if (!qword_27F761110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761110);
  }

  return result;
}

uint64_t sub_254F67664(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x2000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F6768C()
{
  result = qword_27F761118;
  if (!qword_27F761118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761118);
  }

  return result;
}

uint64_t sub_254F676E0(uint64_t result)
{
  v1 = *(result + 232);
  v2 = *(result + 208) & 1;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v2;
  *(result + 232) = v1;
  return result;
}

uint64_t sub_254F67704(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_254F67728()
{
  result = qword_280C46248;
  if (!qword_280C46248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46248);
  }

  return result;
}

unint64_t sub_254F6777C()
{
  result = qword_280C46148;
  if (!qword_280C46148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46148);
  }

  return result;
}

unint64_t sub_254F677D0()
{
  result = qword_280C45C58;
  if (!qword_280C45C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C58);
  }

  return result;
}

double sub_254F67824(void *a1)
{
  v1 = a1;
  bzero(a1, 0xC0uLL);
  result = NAN;
  *(v1 + 27) = 0u;
  v1 += 27;
  *(v1 - 3) = xmmword_254F9E800;
  *(v1 - 1) = 510;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_254F6789C(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F678C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 330))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
      v4 = -2 - v3;
      if ((-2 - v3) < 0)
      {
        v4 = -1;
      }

      if (v3 <= 0x80000000)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_254F67928(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 164) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      a1[330] = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      a1[330] = 0;
    }

    if (a2)
    {
      v4 = ~a2;
      v5 = v4 << 40;
      v6 = (v4 >> 23) & 0x1FE;
      bzero(a1, 0xC0uLL);
      *(a1 + 216) = 0u;
      v7 = a1 + 216;
      *(v7 - 3) = v5;
      *(v7 - 2) = 0;
      *(v7 - 1) = v6;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 4) = 0u;
      *(v7 + 5) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 56) = 0;
    }
  }
}

uint64_t sub_254F67A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 330))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_254F67A90(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 164) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      a1[330] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[330] = 0;
    }

    if (a2)
    {
      v4 = -a2;
      v5 = v4 << 40;
      v6 = (v4 >> 23) & 0x1FE;
      bzero(a1, 0xC0uLL);
      *(a1 + 216) = 0u;
      v7 = a1 + 216;
      *(v7 - 3) = v5;
      *(v7 - 2) = 0;
      *(v7 - 1) = v6;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 4) = 0u;
      *(v7 + 5) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 56) = 0;
    }
  }
}

uint64_t sub_254F67B78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208) & 1;
  v3 = *(result + 232) | (a2 << 61);
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v2;
  *(result + 232) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StructuredContext.Value.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254F67CEC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_254F67D9C()
{
  result = qword_27F761138;
  if (!qword_27F761138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761138);
  }

  return result;
}

unint64_t sub_254F67DF4()
{
  result = qword_27F761140;
  if (!qword_27F761140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761140);
  }

  return result;
}

unint64_t sub_254F67E4C()
{
  result = qword_27F761148;
  if (!qword_27F761148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761148);
  }

  return result;
}

unint64_t sub_254F67EA4()
{
  result = qword_27F761150;
  if (!qword_27F761150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761150);
  }

  return result;
}

unint64_t sub_254F67EFC()
{
  result = qword_27F761158;
  if (!qword_27F761158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761158);
  }

  return result;
}

unint64_t sub_254F67F54()
{
  result = qword_27F761160;
  if (!qword_27F761160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761160);
  }

  return result;
}

unint64_t sub_254F67FAC()
{
  result = qword_27F761168;
  if (!qword_27F761168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761168);
  }

  return result;
}

unint64_t sub_254F68004()
{
  result = qword_27F761170;
  if (!qword_27F761170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761170);
  }

  return result;
}

unint64_t sub_254F6805C()
{
  result = qword_280C46238;
  if (!qword_280C46238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46238);
  }

  return result;
}

unint64_t sub_254F680B4()
{
  result = qword_280C46240;
  if (!qword_280C46240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46240);
  }

  return result;
}

unint64_t sub_254F6810C()
{
  result = qword_280C461B0;
  if (!qword_280C461B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461B0);
  }

  return result;
}

unint64_t sub_254F68164()
{
  result = qword_280C461B8;
  if (!qword_280C461B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461B8);
  }

  return result;
}

unint64_t sub_254F681BC()
{
  result = qword_280C46180;
  if (!qword_280C46180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46180);
  }

  return result;
}

unint64_t sub_254F68214()
{
  result = qword_280C46188;
  if (!qword_280C46188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46188);
  }

  return result;
}

unint64_t sub_254F6826C()
{
  result = qword_280C461C0;
  if (!qword_280C461C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461C0);
  }

  return result;
}

unint64_t sub_254F682C4()
{
  result = qword_280C461C8;
  if (!qword_280C461C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461C8);
  }

  return result;
}

unint64_t sub_254F6831C()
{
  result = qword_280C461A0;
  if (!qword_280C461A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461A0);
  }

  return result;
}

unint64_t sub_254F68374()
{
  result = qword_280C461A8;
  if (!qword_280C461A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461A8);
  }

  return result;
}

unint64_t sub_254F683CC()
{
  result = qword_280C46150;
  if (!qword_280C46150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46150);
  }

  return result;
}

unint64_t sub_254F68424()
{
  result = qword_280C46158;
  if (!qword_280C46158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46158);
  }

  return result;
}

unint64_t sub_254F6847C()
{
  result = qword_280C46190;
  if (!qword_280C46190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46190);
  }

  return result;
}

unint64_t sub_254F684D4()
{
  result = qword_280C46198;
  if (!qword_280C46198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46198);
  }

  return result;
}

unint64_t sub_254F6852C()
{
  result = qword_280C46168;
  if (!qword_280C46168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46168);
  }

  return result;
}

unint64_t sub_254F68584()
{
  result = qword_280C46170;
  if (!qword_280C46170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46170);
  }

  return result;
}

uint64_t sub_254F685D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_254F68684()
{

  return memcpy(&STACK[0x410], &STACK[0x6B0], 0x14AuLL);
}

uint64_t sub_254F686B0()
{

  return sub_254F9BD30();
}

void *sub_254F686D0(void *a1)
{

  return memcpy(a1, v1, 0x14AuLL);
}

void *sub_254F68728()
{

  return memcpy(&STACK[0x2A8], &STACK[0x3F8], 0x14AuLL);
}

__n128 sub_254F68750()
{
  STACK[0x2A0] = v1;
  STACK[0x2A8] = v2;
  result = *(v0 + 16);
  v4 = *(v0 + 32);
  *&STACK[0x2B0] = result;
  *&STACK[0x2C0] = v4;
  return result;
}

uint64_t sub_254F6877C()
{

  return sub_254F9BD10();
}

id static ContextXPCService.interface.getter()
{
  if (qword_280C46350 != -1)
  {
    swift_once();
  }

  v1 = qword_280C46358;

  return v1;
}

uint64_t static ContextXPCService.selectorClasses.getter()
{
  if (qword_280C46388 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254F68890()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C46368);
  v1 = sub_254F4DED0(v0, qword_280C46368);
  if (qword_280C46328 != -1)
  {
    swift_once();
  }

  v2 = sub_254F4DED0(v0, qword_280C46330);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static ContextXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C46360 != -1)
  {
    swift_once();
  }

  v2 = sub_254F9B7F0();
  v3 = sub_254F4DED0(v2, qword_280C46368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for ContextXPCService(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *sub_254F68ABC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t RetrievedContext.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RetrievedContext.value.getter()
{
  v2 = sub_254F77918();
  v3 = *(type metadata accessor for RetrievedContext(v2) + 20);
  sub_254F9B890();
  sub_254F4E534();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t RetrievedContext.value.setter()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  sub_254F9B890();
  sub_254F4E534();
  v1 = sub_254F77B40();

  return v2(v1);
}

uint64_t RetrievedContext.value.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.typedValue.getter()
{
  v2 = sub_254F77918();
  v3 = type metadata accessor for RetrievedContext(v2);
  return sub_254F69104(v1 + *(v3 + 24), v0, &qword_27F761178);
}

uint64_t RetrievedContext.typedValue.setter()
{
  v2 = sub_254F778A0();
  v3 = v1 + *(type metadata accessor for RetrievedContext(v2) + 24);

  return sub_254F68D6C(v0, v3);
}

uint64_t sub_254F68D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761178);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RetrievedContext.typedValue.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.structuredContext.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for RetrievedContext(v1);
  memcpy(__dst, (v0 + *(v2 + 28)), 0x14AuLL);
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x14AuLL);
  return sub_254F69104(__dst, &v6, &qword_27F761180);
}

void *RetrievedContext.structuredContext.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for RetrievedContext(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x14AuLL);
  sub_254F6C10C(v14, &qword_27F761180);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x14AuLL);
}

uint64_t RetrievedContext.structuredContext.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.relevance.getter()
{
  v2 = sub_254F77918();
  result = type metadata accessor for RetrievedContext(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  *(v0 + 4) = *(v4 + 4);
  *v0 = v5;
  return result;
}

uint64_t RetrievedContext.relevance.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for RetrievedContext(0);
  v5 = v1 + *(result + 32);
  *(v5 + 4) = v3;
  *v5 = v2;
  return result;
}

uint64_t RetrievedContext.relevance.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.type.getter()
{
  v2 = sub_254F77918();
  result = type metadata accessor for RetrievedContext(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t RetrievedContext.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RetrievedContext(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t RetrievedContext.type.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.metadata.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for RetrievedContext(v1);
  memcpy(__dst, (v0 + *(v2 + 40)), sizeof(__dst));
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x140uLL);
  return sub_254F69104(__dst, &v6, &qword_27F761188);
}

uint64_t sub_254F69104(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_254F52F94(a3);
  sub_254F4E534();
  v4 = sub_254F4E364();
  v5(v4);
  return a2;
}

void *RetrievedContext.metadata.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for RetrievedContext(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x140uLL);
  sub_254F6C10C(v14, &qword_27F761188);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x140uLL);
}

uint64_t RetrievedContext.metadata.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

void RetrievedContext.init(identifier:structuredContext:typedValue:relevance:type:metadata:)()
{
  sub_254F77B94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v52 = v7;
  v9 = v8;
  v48 = v10;
  v49 = v11;
  v13 = v12;
  v14 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v14);
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4FC44();
  v15 = sub_254F9B890();
  sub_254F4DF18();
  v17 = v16;
  MEMORY[0x28223BE20]();
  sub_254F4F314();
  v56 = (v19 - v18);
  sub_254F9B760();
  sub_254F4DF18();
  v46 = v21;
  v47 = v20;
  MEMORY[0x28223BE20]();
  sub_254F4F314();
  v24 = v23 - v22;
  memcpy(v59, v9, sizeof(v59));
  v54 = *v6 | (*(v6 + 4) << 32);
  v55 = *v4;
  memcpy(v60, v2, sizeof(v60));
  v25 = type metadata accessor for RetrievedContext(0);
  v26 = v25[6];
  sub_254F77A50();
  sub_254F4E598(v27, v28, v29, v15);
  v30 = v25[7];
  sub_254F695EC(v61);
  v50 = v30;
  memcpy(v13 + v30, v61, 0x14AuLL);
  v51 = v25[8];
  sub_254F77AB8(v13 + v51);
  v31 = v25[10];
  sub_254F69640(v62);
  v53 = v31;
  v32 = v13 + v31;
  v33 = v49;
  memcpy(v32, v62, 0x140uLL);
  if (v49)
  {
    v34 = v48;
  }

  else
  {
    sub_254F9B750();
    v34 = sub_254F9B740();
    v33 = v35;
    (*(v46 + 8))(v24, v47);
  }

  *v13 = v34;
  v13[1] = v33;
  sub_254F69648(v52, v13 + v26);
  v36 = sub_254F77A24();
  sub_254F696B8(v36, v37);
  sub_254F77A30(v0);
  if (v38)
  {
    sub_254F9B870();
    v39 = swift_allocBox();
    *v40 = 0;
    sub_254F778AC();
    (*(v41 + 104))();
    v42 = v56;
    *v56 = v39;
    (*(v17 + 104))(v56, *MEMORY[0x277D72A58], v15);
    sub_254F77A30(v0);
    if (!v38)
    {
      sub_254F6C10C(v0, &qword_27F761178);
    }
  }

  else
  {
    v42 = v56;
    v43 = sub_254F77A24();
    v44(v43);
  }

  (*(v17 + 32))(v13 + v25[5], v42, v15);
  memcpy(v57, v13 + v50, 0x14AuLL);
  sub_254F6C10C(v57, &qword_27F761180);
  memcpy(v13 + v50, v59, 0x14AuLL);
  v45 = v13 + v51;
  v45[4] = BYTE4(v54);
  *v45 = v54;
  *(v13 + v25[9]) = v55;
  memcpy(v58, v13 + v53, sizeof(v58));
  sub_254F6C10C(v58, &qword_27F761188);
  memcpy(v13 + v53, v60, 0x140uLL);
  sub_254F77BAC();
}

double sub_254F695EC(void *a1)
{
  v1 = a1;
  bzero(a1, 0xC0uLL);
  result = NAN;
  *(v1 + 27) = 0u;
  v1 += 27;
  *(v1 - 3) = xmmword_254F9F980;
  *(v1 - 1) = 510;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_254F69648(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761178);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F696B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761178);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void RetrievedContext.init(structuredContext:typedValue:relevance:type:metadata:)()
{
  sub_254F77B94();
  v52 = v1;
  v53 = v0;
  v3 = v2;
  v5 = v4;
  v48 = v4;
  v54 = v6;
  v8 = v7;
  v9 = sub_254F9B890();
  v47 = v9;
  v56 = *(v9 - 8);
  (MEMORY[0x28223BE20])();
  sub_254F4F314();
  v55 = (v11 - v10);
  v49 = sub_254F9B760();
  sub_254F4DF18();
  v13 = v12;
  (MEMORY[0x28223BE20])();
  sub_254F4F314();
  v16 = v15 - v14;
  v17 = sub_254F52F94(&qword_27F761178);
  v18 = sub_254F77A18(v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  memcpy(v59, v54, sizeof(v59));
  v54 = (*v3 | (*(v3 + 4) << 32));
  LODWORD(v53) = *v53;
  memcpy(v60, v52, sizeof(v60));
  sub_254F69104(v5, v23, &qword_27F761178);
  v24 = type metadata accessor for RetrievedContext(0);
  v25 = v24[6];
  sub_254F77A50();
  sub_254F4E598(v26, v27, v28, v9);
  v29 = v24[7];
  sub_254F695EC(v61);
  v51 = v29;
  memcpy(&v8[v29], v61, 0x14AuLL);
  v50 = v24[8];
  sub_254F77AB8(&v8[v50]);
  v30 = v24[10];
  sub_254F69640(v62);
  v52 = v30;
  memcpy(&v30[v8], v62, 0x140uLL);
  sub_254F9B750();
  v31 = sub_254F9B740();
  v33 = v32;
  sub_254F6C10C(v48, &qword_27F761178);
  (*(v13 + 8))(v16, v49);
  *v8 = v31;
  *(v8 + 1) = v33;
  v34 = &v8[v25];
  v35 = v47;
  sub_254F69648(v23, v34);
  sub_254F696B8(v23, v21);
  sub_254F77A30(v21);
  if (v36)
  {
    sub_254F9B870();
    v37 = swift_allocBox();
    *v38 = 0;
    sub_254F778AC();
    (*(v39 + 104))();
    v41 = v55;
    v40 = v56;
    *v55 = v37;
    (*(v40 + 104))(v41, *MEMORY[0x277D72A58], v35);
    sub_254F77A30(v21);
    if (!v36)
    {
      sub_254F6C10C(v21, &qword_27F761178);
    }
  }

  else
  {
    v41 = v55;
    v40 = v56;
    (*(v56 + 32))(v55, v21, v35);
  }

  (*(v40 + 32))(&v8[v24[5]], v41, v35);
  v42 = v51;
  memcpy(v57, &v8[v51], 0x14AuLL);
  sub_254F6C10C(v57, &qword_27F761180);
  memcpy(&v8[v42], v59, 0x14AuLL);
  v43 = &v8[v50];
  v44 = v54;
  v43[4] = BYTE4(v54);
  *v43 = v44;
  v8[v24[9]] = v53;
  v45 = v52;
  memcpy(v58, &v52[v8], sizeof(v58));
  sub_254F6C10C(v58, &qword_27F761188);
  memcpy(&v45[v8], v60, 0x140uLL);
  sub_254F77BAC();
}

void static RetrievedContext.== infix(_:_:)()
{
  sub_254F77B94();
  v2 = v1;
  v4 = v3;
  v5 = sub_254F9B890();
  sub_254F4DF18();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_254F4F314();
  v11 = v10 - v9;
  v12 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v12);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F778C8();
  v14 = sub_254F52F94(&qword_27F761190);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v15);
  sub_254F4E38C();
  v16 = type metadata accessor for RetrievedContext(0);
  if ((sub_254F568F8(*(v4 + v16[9]), *(v2 + v16[9])) & 1) == 0)
  {
    goto LABEL_20;
  }

  v38 = v7;
  v17 = v4;
  v18 = v16[6];
  v19 = *(v14 + 48);
  v37 = v17;
  sub_254F50B7C(v17);
  sub_254F69104(v2 + v18, v0 + v19, &qword_27F761178);
  sub_254F77880(v0);
  if (v23)
  {
    sub_254F77880(v0 + v19);
    if (v23)
    {
      sub_254F6C10C(v0, &qword_27F761178);
LABEL_12:
      v32 = v16[7];
      memcpy(v46, (v37 + v32), 0x14AuLL);
      sub_254F77CE8(v47);
      memcpy(v45, (v37 + v32), 0x14AuLL);
      sub_254F77CE8(&v45[336]);
      memcpy(v48, (v37 + v32), 0x14AuLL);
      if (sub_254F6A030(v48) == 1)
      {
        sub_254F77B64(v43);
        if (sub_254F6A030(v43) == 1)
        {
          sub_254F77BF4(v44);
          sub_254F77A00(v46, v42);
          sub_254F77A00(v47, v42);
          sub_254F77A9C();
          sub_254F6C10C(v33, v34);
          goto LABEL_20;
        }

        sub_254F77A00(v46, v44);
        sub_254F77A00(v47, v44);
      }

      else
      {
        sub_254F77BF4(v44);
        sub_254F77BF4(v42);
        sub_254F77B64(v43);
        if (sub_254F6A030(v43) != 1)
        {
          sub_254F77B64(v41);
          sub_254F77950(v46);
          sub_254F77950(v47);
          sub_254F77950(v44);
          static StructuredContext.== infix(_:_:)(v42);
          memcpy(v39, v41, 0x14AuLL);
          sub_254F6456C(v39);
          memcpy(v40, v42, 0x14AuLL);
          sub_254F6456C(v40);
          sub_254F77BF4(v41);
          sub_254F77A9C();
          sub_254F6C10C(v35, v36);
          goto LABEL_20;
        }

        sub_254F77BF4(v41);
        sub_254F77950(v46);
        sub_254F77950(v47);
        sub_254F77950(v44);
        sub_254F6456C(v41);
      }

      memcpy(v43, v45, 0x29AuLL);
      v26 = &unk_27F761198;
      v27 = v43;
LABEL_19:
      sub_254F6C10C(v27, v26);
      goto LABEL_20;
    }

LABEL_10:
    v26 = &qword_27F761190;
    v27 = v0;
    goto LABEL_19;
  }

  v20 = sub_254F77B1C();
  sub_254F69104(v20, v21, v22);
  sub_254F77880(v0 + v19);
  if (v23)
  {
    v24 = sub_254F77C74();
    v25(v24);
    goto LABEL_10;
  }

  (*(v38 + 32))(v11, v0 + v19, v5);
  sub_254F4DF84();
  sub_254F6A874(v28);
  sub_254F5043C();
  v29 = sub_254F9B950();
  v30 = *(v38 + 8);
  v30(v11, v5);
  v31 = sub_254F77C74();
  (v30)(v31);
  sub_254F6C10C(v0, &qword_27F761178);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_20:
  sub_254F77BAC();
}

uint64_t sub_254F6A030(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F6A064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000254FA6670 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_254F9BE30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F6A2B4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x6C61566465707974;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x636E6176656C6572;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6A390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6A064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6A3B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F6A2AC();
  *a1 = result;
  return result;
}

uint64_t sub_254F6A3E0(uint64_t a1)
{
  v2 = sub_254F6A820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6A41C(uint64_t a1)
{
  v2 = sub_254F6A820();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedContext.encode(to:)()
{
  sub_254F4E9D0();
  v2 = v0;
  v4 = v3;
  sub_254F52F94(&qword_27F7611A8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F4FC44();
  sub_254F4EFBC(v4, v4[3]);
  sub_254F6A820();
  sub_254F779D0();
  sub_254F9BF20();
  v21[0] = 0;
  sub_254F9BDB0();
  if (v1)
  {
    v6 = sub_254F77C24();
    v7(v6);
  }

  else
  {
    v15 = type metadata accessor for RetrievedContext(0);
    v21[0] = 1;
    sub_254F9B890();
    sub_254F4DF84();
    sub_254F6A874(v8);
    sub_254F77AA8();
    sub_254F9BE00();
    sub_254F77AA8();
    sub_254F9BD80();
    v9 = v15[7];
    memcpy(v21, (v2 + v9), 0x14AuLL);
    memcpy(v20, (v2 + v9), sizeof(v20));
    sub_254F69104(v21, v19, &qword_27F761180);
    sub_254F6A8B8();
    sub_254F77924();
    sub_254F9BD80();
    memcpy(v19, v20, 0x14AuLL);
    sub_254F6C10C(v19, &qword_27F761180);
    v10 = (v2 + v15[8]);
    v11 = *v10;
    LOBYTE(v18[1]) = *(v10 + 4);
    v18[0] = v11;
    v17[0] = 4;
    sub_254F6A90C();
    sub_254F77924();
    sub_254F9BD80();
    sub_254F6A960();
    sub_254F77924();
    sub_254F9BE00();
    v12 = v15[10];
    memcpy(v18, (v2 + v12), sizeof(v18));
    memcpy(v17, (v2 + v12), sizeof(v17));
    sub_254F69104(v18, v16, &qword_27F761188);
    sub_254F6A9B4();
    sub_254F77924();
    sub_254F9BD80();
    memcpy(v16, v17, sizeof(v16));
    sub_254F6C10C(v16, &qword_27F761188);
    v13 = sub_254F77C24();
    v14(v13);
  }

  sub_254F77C44();
  sub_254F4F348();
}

unint64_t sub_254F6A820()
{
  result = qword_280C46300;
  if (!qword_280C46300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46300);
  }

  return result;
}

unint64_t sub_254F6A874(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254F6A8B8()
{
  result = qword_280C46140;
  if (!qword_280C46140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46140);
  }

  return result;
}

unint64_t sub_254F6A90C()
{
  result = qword_280C462E8;
  if (!qword_280C462E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462E8);
  }

  return result;
}

unint64_t sub_254F6A960()
{
  result = qword_280C462C0;
  if (!qword_280C462C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462C0);
  }

  return result;
}

unint64_t sub_254F6A9B4()
{
  result = qword_280C46278;
  if (!qword_280C46278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46278);
  }

  return result;
}

void RetrievedContext.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v32 = v4;
  v5 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v5);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F4E38C();
  v7 = sub_254F9B890();
  sub_254F4DF18();
  v33 = v8;
  MEMORY[0x28223BE20](v9);
  sub_254F4F314();
  v12 = v11 - v10;
  sub_254F52F94(&qword_27F7611B0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F778D8();
  v14 = type metadata accessor for RetrievedContext(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v15);
  sub_254F4F314();
  v18 = (v17 - v16);
  v34 = v7;
  v35 = *(v19 + 24);
  sub_254F77A50();
  sub_254F4E598(v20, v21, v22, v7);
  v23 = v14[7];
  sub_254F695EC(v43);
  v36 = v23;
  memcpy(v18 + v23, v43, 0x14AuLL);
  v24 = v14[8];
  sub_254F77AB8(v18 + v24);
  v25 = v14[10];
  sub_254F69640(v44);
  memcpy(v18 + v25, v44, 0x140uLL);
  sub_254F4EFBC(v3, v3[3]);
  sub_254F6A820();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v3);
    sub_254F6C10C(v18 + v35, &qword_27F761178);
    memcpy(v42, v18 + v36, 0x14AuLL);
    sub_254F6C10C(v42, &qword_27F761180);
    memcpy(v41, v18 + v25, 0x140uLL);
    sub_254F6C10C(v41, &qword_27F761188);
  }

  else
  {
    *v18 = sub_254F9BCC0();
    v18[1] = v26;
    v42[0] = 1;
    sub_254F4DF84();
    sub_254F6A874(v27);
    sub_254F77C5C();
    sub_254F9BD10();
    (*(v33 + 32))(v18 + v14[5], v12, v34);
    v42[0] = 2;
    sub_254F77C5C();
    sub_254F9BC90();
    sub_254F68D6C(v1, v18 + v35);
    sub_254F6B058();
    sub_254F509E0();
    sub_254F9BC90();
    memcpy(v40, v42, sizeof(v40));
    memcpy(v41, v18 + v36, 0x14AuLL);
    sub_254F6C10C(v41, &qword_27F761180);
    memcpy(v18 + v36, v40, 0x14AuLL);
    sub_254F6B0AC();
    sub_254F509E0();
    sub_254F9BC90();
    v28 = v39[0];
    v29 = v18 + v24;
    v29[4] = v39[1];
    *v29 = v28;
    v38[0] = 5;
    sub_254F6B100();
    sub_254F509E0();
    sub_254F9BD10();
    *(v18 + MEMORY[0x24]) = v39[0];
    sub_254F6B154();
    sub_254F509E0();
    sub_254F9BC90();
    v30 = sub_254F77AC8();
    v31(v30);
    memcpy(v37, v39, sizeof(v37));
    memcpy(v38, v18 + v25, sizeof(v38));
    sub_254F6C10C(v38, &qword_27F761188);
    memcpy(v18 + v25, v37, 0x140uLL);
    sub_254F6E1A0(v18, v32);
    sub_254F4DA5C(v3);
    sub_254F6E1F8();
  }

  sub_254F77C44();
  sub_254F4F348();
}

unint64_t sub_254F6B058()
{
  result = qword_280C46138;
  if (!qword_280C46138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46138);
  }

  return result;
}

unint64_t sub_254F6B0AC()
{
  result = qword_280C462E0;
  if (!qword_280C462E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462E0);
  }

  return result;
}

unint64_t sub_254F6B100()
{
  result = qword_280C462B8;
  if (!qword_280C462B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462B8);
  }

  return result;
}

unint64_t sub_254F6B154()
{
  result = qword_280C46270;
  if (!qword_280C46270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46270);
  }

  return result;
}

uint64_t ContextValue.value.getter()
{
  sub_254F77918();
  sub_254F9B890();
  sub_254F4E534();
  v0 = sub_254F4E364();

  return v1(v0);
}

uint64_t ContextValue.value.setter()
{
  sub_254F778A0();
  sub_254F9B890();
  sub_254F4E534();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t ContextValue.typedValue.getter()
{
  v2 = sub_254F77918();
  v3 = type metadata accessor for ContextValue(v2);
  return sub_254F69104(v1 + *(v3 + 20), v0, &qword_27F761178);
}

uint64_t ContextValue.typedValue.setter()
{
  v2 = sub_254F778A0();
  v3 = v1 + *(type metadata accessor for ContextValue(v2) + 20);

  return sub_254F68D6C(v0, v3);
}

uint64_t ContextValue.typedValue.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ContextValue(v0);
  return sub_254F4F68C();
}

uint64_t ContextValue.structuredContext.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for ContextValue(v1);
  memcpy(__dst, (v0 + *(v2 + 24)), 0x14AuLL);
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x14AuLL);
  return sub_254F69104(__dst, &v6, &qword_27F761180);
}

void *ContextValue.structuredContext.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for ContextValue(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x14AuLL);
  sub_254F6C10C(v14, &qword_27F761180);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x14AuLL);
}

uint64_t ContextValue.structuredContext.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ContextValue(v0);
  return sub_254F4F68C();
}

uint64_t ContextValue.metadata.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for ContextValue(v1);
  memcpy(__dst, (v0 + *(v2 + 28)), sizeof(__dst));
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x140uLL);
  return sub_254F69104(__dst, &v6, &qword_27F761188);
}

void *ContextValue.metadata.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for ContextValue(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x140uLL);
  sub_254F6C10C(v14, &qword_27F761188);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x140uLL);
}

uint64_t ContextValue.metadata.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ContextValue(v0);
  return sub_254F4F68C();
}

void *ContextValue.init(value:metadata:)@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  memcpy(v15, a1, sizeof(v15));
  v3 = type metadata accessor for ContextValue(0);
  v4 = v3[5];
  v5 = sub_254F9B890();
  sub_254F77A50();
  sub_254F4E598(v6, v7, v8, v5);
  v9 = v3[6];
  sub_254F695EC(__src);
  memcpy((a2 + v9), __src, 0x14AuLL);
  v10 = v3[7];
  sub_254F69640(v17);
  memcpy((a2 + v10), v17, 0x140uLL);
  v11 = sub_254F4E364();
  v12(v11);
  sub_254F6C10C(a2 + v4, &qword_27F761178);
  sub_254F77A9C();
  v13();
  sub_254F4E598(a2 + v4, 0, 1, v5);
  memcpy(__dst, (a2 + v10), sizeof(__dst));
  sub_254F6C10C(__dst, &qword_27F761188);
  return memcpy((a2 + v10), v15, 0x140uLL);
}

void ContextValue.init(structuredContext:typedValue:metadata:)()
{
  sub_254F77B94();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  v7 = v6;
  v8 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v8);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F4E558();
  v10 = sub_254F9B890();
  sub_254F4DF18();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_254F4F314();
  v16 = (v15 - v14);
  memcpy(v33, v2, sizeof(v33));
  v17 = type metadata accessor for ContextValue(0);
  v18 = v17[5];
  sub_254F77A50();
  sub_254F4E598(v19, v20, v21, v10);
  v22 = v17[6];
  sub_254F695EC(v34);
  memcpy((v7 + v22), v34, 0x14AuLL);
  v23 = v17[7];
  sub_254F69640(v35);
  memcpy((v7 + v23), v35, 0x140uLL);
  memcpy(v36, (v7 + v22), 0x14AuLL);
  sub_254F6C10C(v36, &qword_27F761180);
  memcpy((v7 + v22), v31, 0x14AuLL);
  sub_254F69648(v4, v7 + v18);
  sub_254F696B8(v4, v0);
  if (sub_254F4E5C0(v0, 1, v10) == 1)
  {
    sub_254F9B870();
    v24 = swift_allocBox();
    *v25 = 0;
    sub_254F778AC();
    (*(v26 + 104))();
    *v16 = v24;
    (*(v12 + 104))(v16, *MEMORY[0x277D72A58], v10);
    if (sub_254F4E5C0(v0, 1, v10) != 1)
    {
      sub_254F6C10C(v0, &qword_27F761178);
    }
  }

  else
  {
    v27 = sub_254F77C24();
    v28(v27);
  }

  v29 = sub_254F77A24();
  v30(v29);
  memcpy(v32, (v7 + v23), sizeof(v32));
  sub_254F6C10C(v32, &qword_27F761188);
  memcpy((v7 + v23), v33, 0x140uLL);
  sub_254F77BAC();
}

void static ContextValue.== infix(_:_:)()
{
  sub_254F77B94();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v3;
  v5 = v2;
  v6 = sub_254F9B890();
  sub_254F4DF18();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_254F4F314();
  v12 = v11 - v10;
  v13 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v13);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  sub_254F778C8();
  v15 = sub_254F52F94(&qword_27F761190);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v16);
  sub_254F4E38C();
  if ((sub_254F9B880() & 1) == 0)
  {
    goto LABEL_29;
  }

  v17 = type metadata accessor for ContextValue(0);
  v65 = v4;
  v18 = *(v17 + 20);
  v19 = *(v15 + 48);
  v64 = v17;
  sub_254F50B7C(v5);
  sub_254F69104(v65 + v18, v0 + v19, &qword_27F761178);
  sub_254F77880(v0);
  if (!v23)
  {
    v20 = sub_254F77B1C();
    sub_254F69104(v20, v21, v22);
    sub_254F77880(v0 + v19);
    if (!v23)
    {
      (*(v8 + 32))(v12, v0 + v19, v6);
      sub_254F4DF84();
      sub_254F6A874(v28);
      sub_254F5043C();
      v29 = sub_254F9B950();
      v30 = *(v8 + 8);
      v30(v12, v6);
      v31 = sub_254F77C74();
      (v30)(v31);
      sub_254F6C10C(v0, &qword_27F761178);
      if ((v29 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    v24 = sub_254F77C74();
    v25(v24);
LABEL_10:
    v26 = &qword_27F761190;
    v27 = v0;
LABEL_28:
    sub_254F6C10C(v27, v26);
    goto LABEL_29;
  }

  sub_254F77880(v0 + v19);
  if (!v23)
  {
    goto LABEL_10;
  }

  sub_254F6C10C(v0, &qword_27F761178);
LABEL_12:
  v32 = *(v64 + 24);
  memcpy(v75, (v5 + v32), 0x14AuLL);
  sub_254F77CE8(v76);
  memcpy(v74, (v5 + v32), 0x14AuLL);
  sub_254F77CE8(&v74[336]);
  memcpy(v77, (v5 + v32), 0x14AuLL);
  if (sub_254F6A030(v77) == 1)
  {
    sub_254F77B64(v72);
    if (sub_254F6A030(v72) == 1)
    {
      sub_254F77BDC(v73);
      sub_254F69104(v75, v71, &qword_27F761180);
      sub_254F69104(v76, v71, &qword_27F761180);
      sub_254F6C10C(v73, &qword_27F761180);
LABEL_20:
      v52 = *(v64 + 28);
      memcpy(v68, (v5 + v52), 0x140uLL);
      v53 = *(v64 + 28);
      memcpy(v71, (v65 + v53), 0x140uLL);
      memcpy(v74, (v5 + v52), 0x140uLL);
      memcpy(&v74[320], (v65 + v53), 0x140uLL);
      memcpy(v73, (v5 + v52), 0x140uLL);
      if (sub_254F6C0F4(v73) == 1)
      {
        memcpy(v72, &v74[320], 0x140uLL);
        if (sub_254F6C0F4(v72) == 1)
        {
          sub_254F77BC4(v67);
          sub_254F779DC(v68);
          sub_254F779DC(v71);
          sub_254F77A9C();
          sub_254F6C10C(v54, v55);
          goto LABEL_29;
        }

        sub_254F4EFD4();
        sub_254F69104(v56, v57, v58);
        sub_254F4EFD4();
        sub_254F69104(v59, v60, v61);
      }

      else
      {
        sub_254F77BC4(v67);
        memcpy(v72, &v74[320], 0x140uLL);
        if (sub_254F6C0F4(v72) != 1)
        {
          sub_254F779DC(v68);
          sub_254F779DC(v71);
          sub_254F779DC(v67);
          static ContextMetadata.== infix(_:_:)(v74, &v74[320]);
          memcpy(v69, &v74[320], sizeof(v69));
          sub_254F6C164(v69);
          sub_254F77BC4(v70);
          sub_254F6C164(v70);
          sub_254F77BC4(v66);
          sub_254F77A9C();
          sub_254F6C10C(v62, v63);
          goto LABEL_29;
        }

        sub_254F77BC4(v66);
        sub_254F77A00(v68, v70);
        sub_254F77A00(v71, v70);
        sub_254F77A00(v67, v70);
        sub_254F6C164(v66);
      }

      memcpy(v72, v74, 0x280uLL);
      v26 = &unk_27F7611B8;
      goto LABEL_27;
    }

    sub_254F77A00(v75, v73);
    sub_254F77A00(v76, v73);
LABEL_18:
    memcpy(v72, v74, 0x29AuLL);
    v26 = &unk_27F761198;
LABEL_27:
    v27 = v72;
    goto LABEL_28;
  }

  sub_254F77BDC(v73);
  sub_254F77BDC(v71);
  sub_254F77B64(v72);
  if (sub_254F6A030(v72) == 1)
  {
    sub_254F77BDC(v68);
    sub_254F4EFD4();
    sub_254F69104(v33, v34, v35);
    sub_254F4EFD4();
    sub_254F69104(v36, v37, v38);
    sub_254F4EFD4();
    sub_254F69104(v39, v40, v41);
    sub_254F6456C(v68);
    goto LABEL_18;
  }

  sub_254F77B64(v68);
  sub_254F4EFD4();
  sub_254F69104(v42, v43, v44);
  sub_254F4EFD4();
  sub_254F69104(v45, v46, v47);
  sub_254F4EFD4();
  sub_254F69104(v48, v49, v50);
  v51 = static StructuredContext.== infix(_:_:)(v71);
  memcpy(v66, v68, 0x14AuLL);
  sub_254F6456C(v66);
  memcpy(v67, v71, 0x14AuLL);
  sub_254F6456C(v67);
  sub_254F77BDC(v68);
  sub_254F6C10C(v68, &qword_27F761180);
  if (v51)
  {
    goto LABEL_20;
  }

LABEL_29:
  sub_254F77BAC();
}

uint64_t sub_254F6C0F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254F6C10C(uint64_t a1, uint64_t *a2)
{
  sub_254F52F94(a2);
  sub_254F4E534();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254F6C194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000254FA6670 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_254F6C2F8(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6C61566465707974;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6C388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6C194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6C3B0(uint64_t a1)
{
  v2 = sub_254F6E14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6C3EC(uint64_t a1)
{
  v2 = sub_254F6E14C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextValue.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v0;
  v5 = v4;
  v6 = sub_254F52F94(&qword_27F7611C0);
  sub_254F4DF18();
  v8 = v7;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F50064();
  sub_254F4EFBC(v5, v5[3]);
  sub_254F6E14C();
  sub_254F779D0();
  sub_254F9BF20();
  v22[0] = 0;
  sub_254F9B890();
  sub_254F4DF84();
  sub_254F6A874(v10);
  v11 = v3;
  v16 = v6;
  sub_254F77AA8();
  sub_254F9BE00();
  if (v1)
  {
    (*(v8 + 8))(v2, v6);
  }

  else
  {
    v12 = type metadata accessor for ContextValue(0);
    sub_254F9BD80();
    v13 = *(v12 + 24);
    memcpy(v22, (v11 + v13), 0x14AuLL);
    memcpy(v21, (v11 + v13), sizeof(v21));
    sub_254F69104(v22, v20, &qword_27F761180);
    sub_254F6A8B8();
    sub_254F9BD80();
    v14 = v8;
    memcpy(v20, v21, 0x14AuLL);
    sub_254F6C10C(v20, &qword_27F761180);
    v15 = *(v12 + 28);
    memcpy(v19, (v11 + v15), sizeof(v19));
    memcpy(v18, (v11 + v15), sizeof(v18));
    sub_254F69104(v19, v17, &qword_27F761188);
    sub_254F6A9B4();
    sub_254F9BD80();
    memcpy(v17, v18, sizeof(v17));
    sub_254F6C10C(v17, &qword_27F761188);
    (*(v14 + 8))(0, v16);
  }

  sub_254F77C44();
  sub_254F4F348();
}

void ContextValue.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v26 = v4;
  v5 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v5);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F50064();
  v7 = sub_254F9B890();
  sub_254F4DF18();
  v27 = v8;
  MEMORY[0x28223BE20](v9);
  sub_254F4F314();
  v28 = v11 - v10;
  sub_254F52F94(&qword_27F7611C8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v12);
  sub_254F778C8();
  v13 = type metadata accessor for ContextValue(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  sub_254F4F314();
  v17 = v16 - v15;
  v29 = v14[7];
  sub_254F77A50();
  sub_254F4E598(v18, v19, v20, v7);
  v21 = v14[8];
  sub_254F695EC(v36);
  memcpy((v17 + v21), v36, 0x14AuLL);
  v22 = v14[9];
  sub_254F69640(v37);
  memcpy((v17 + v22), v37, 0x140uLL);
  sub_254F4EFBC(v3, v3[3]);
  sub_254F6E14C();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v3);
    sub_254F6C10C(v17 + v29, &qword_27F761178);
    memcpy(v35, (v17 + v21), 0x14AuLL);
    sub_254F6C10C(v35, &qword_27F761180);
    memcpy(v34, (v17 + v22), 0x140uLL);
    sub_254F6C10C(v34, &qword_27F761188);
  }

  else
  {
    v35[0] = 0;
    sub_254F4DF84();
    sub_254F6A874(v23);
    sub_254F9BD10();
    (*(v27 + 32))(v17, v28, v7);
    v35[0] = 1;
    sub_254F9BC90();
    sub_254F68D6C(v1, v17 + v29);
    sub_254F6B058();
    sub_254F9BC90();
    memcpy(v33, v35, sizeof(v33));
    memcpy(v34, (v17 + v21), 0x14AuLL);
    sub_254F6C10C(v34, &qword_27F761180);
    memcpy((v17 + v21), v33, 0x14AuLL);
    sub_254F6B154();
    sub_254F9BC90();
    v24 = sub_254F7796C();
    v25(v24);
    memcpy(v30, v32, sizeof(v30));
    memcpy(v31, (v17 + v22), sizeof(v31));
    sub_254F6C10C(v31, &qword_27F761188);
    memcpy((v17 + v22), v30, 0x140uLL);
    sub_254F6E1A0(v17, v26);
    sub_254F4DA5C(v3);
    sub_254F6E1F8();
  }

  sub_254F4F348();
}

uint64_t ContextMetadata.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContextMetadata.processInstanceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

__n128 ContextMetadata.screenSize.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

uint64_t ContextMetadata.frames.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ContextMetadata.elementVisibility.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

__n128 ContextMetadata.frame.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

void ContextMetadata.saliency.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *(a1 + 4) = *(v1 + 236);
  *a1 = v2;
}

uint64_t ContextMetadata.displayRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_254F6E24C(v2, v3);
}

uint64_t ContextMetadata.init(entityId:appBundleId:saliency:screenDimensions:onScreenSurroundingText:onScreenBoundingBox:seq:groupId:dataSource:displayRepresentation:isSelected:isPrimary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, float32x2_t *a6@<X5>, uint64_t a7@<X6>, int64x2_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, __int128 *a15, char a16, char a17)
{
  v20 = a17;
  v21 = a16;
  v23 = a12;
  v22 = a13;
  v24 = a10;
  v25 = *a5 | (*(a5 + 4) << 32);
  v27 = *a6;
  v26 = a6[1];
  v28 = a6[2];
  v29 = *a8;
  v30 = a8[1].i64[0];
  v31 = *a14;
  v32 = *a15;
  v33 = a15[1];
  v60 = 1;
  v34 = 0uLL;
  v59 = 1;
  v35 = 0uLL;
  v36 = 0uLL;
  v58 = a6[3].i8[0];
  if ((v58 & 1) == 0)
  {
    v35 = vcvtq_f64_f32(v27);
    v36 = vcvtq_f64_f32(__PAIR64__(v28.u32[0], v26.u32[1]));
    v60 = 0;
  }

  v57 = a8[1].i8[8];
  if (v57)
  {
    v37 = MEMORY[0x277D84F90];
    v38 = 0uLL;
  }

  else
  {
    v45 = v36;
    v39.i32[0] = vmovn_s64(v29).u32[0];
    v39.i32[1] = a8[1].i64[0];
    v43 = vcvtq_f64_f32(v39);
    v44 = vcvtq_f64_f32(vshrn_n_s64(v29, 0x20uLL));
    v59 = 0;
    v53 = a3;
    v54 = a2;
    v50 = a6[2];
    v51 = *a6;
    v48 = a7;
    v47 = a6[1];
    v49 = a8[1].i64[0];
    v40 = a4;
    v41 = v25;
    v56 = *a15;
    v55 = a15[1];
    v52 = *a8;
    v46 = v35;
    sub_254F52F94(&qword_27F7611D0);
    v37 = swift_allocObject();
    v38 = v43;
    v34 = v44;
    v35 = v46;
    v21 = a16;
    v20 = a17;
    v29 = v52;
    v33 = v55;
    v32 = v56;
    v25 = v41;
    a4 = v40;
    v26 = v47;
    v23 = a12;
    v24 = a10;
    a7 = v48;
    v30 = v49;
    a3 = v53;
    a2 = v54;
    v22 = a13;
    v28 = v50;
    v27 = v51;
    *(v37 + 16) = xmmword_254F9F990;
    v36 = v45;
    *(v37 + 32) = v43.f64[0];
    *(v37 + 40) = v44;
    *(v37 + 56) = v43.f64[1];
  }

  *a9 = v21 & 1;
  *(a9 + 1) = v20 & 1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = v35;
  *(a9 + 56) = v36;
  *(a9 + 72) = v60;
  *(a9 + 80) = v37;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 104) = v38.f64[0];
  *(a9 + 112) = v34;
  *(a9 + 128) = v38.f64[1];
  *(a9 + 136) = v59;
  *(a9 + 144) = a3;
  *(a9 + 152) = a4;
  *(a9 + 160) = v27;
  *(a9 + 168) = v26;
  *(a9 + 176) = v28;
  *(a9 + 184) = v58;
  *(a9 + 188) = v29;
  *(a9 + 204) = v30;
  *(a9 + 212) = v57;
  *(a9 + 216) = a1;
  *(a9 + 224) = a2;
  *(a9 + 232) = v25;
  *(a9 + 236) = BYTE4(v25);
  *(a9 + 240) = v24;
  *(a9 + 248) = a11 & 1;
  *(a9 + 256) = v23;
  *(a9 + 264) = v22;
  *(a9 + 272) = v31;
  *(a9 + 280) = v32;
  *(a9 + 296) = v33;
  *(a9 + 312) = a7;
}

void ContextMetadata.init(appBundleIdentifier:screenSize:frame:isSelected:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  swift_bridgeObjectRelease_n();
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 32);
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 32);
  v18 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  if ((v17 & 1) == 0)
  {
    v25 = a4[1];
    v26 = *a4;
    v23 = v13;
    v24 = v12;
    sub_254F52F94(&qword_27F7611D0);
    v19 = swift_allocObject();
    v20 = *a4;
    v21 = a4[1];
    v19[1] = xmmword_254F9F990;
    v19[2] = v20;
    v19[3] = v21;

    v13 = v23;
    v12 = v24;
    v16 = v25;
    v15 = v26;
  }

  *a6 = a5 & 1;
  *(a6 + 1) = 0;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = v12;
  *(a6 + 56) = v13;
  *(a6 + 72) = v14;
  *(a6 + 80) = v19;
  *(a6 + 88) = 0;
  *(a6 + 96) = 1;
  *(a6 + 104) = v15;
  *(a6 + 120) = v16;
  *(a6 + 136) = v17;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0;
  *(a6 + 184) = 1;
  *(a6 + 204) = 0;
  *(a6 + 188) = 0;
  *(a6 + 196) = 0;
  *(a6 + 212) = 1;
  sub_254F77B4C();
  *(a6 + 248) = 1;
  sub_254F77B28(v22);
  *(a6 + 312) = v18;
}

void ContextMetadata.init(appBundleIdentifier:processInstanceIdentifier:screenSize:frame:isSelected:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  swift_bridgeObjectRelease_n();
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 32);
  v18 = *a6;
  v19 = a6[1];
  v20 = *(a6 + 32);
  v21 = MEMORY[0x277D84F90];
  if ((v20 & 1) == 0)
  {
    v28 = a6[1];
    v29 = *a6;
    v26 = v16;
    v27 = v15;
    sub_254F52F94(&qword_27F7611D0);
    v21 = swift_allocObject();
    v22 = *a6;
    v23 = a6[1];
    v21[1] = xmmword_254F9F990;
    v21[2] = v22;
    v21[3] = v23;

    v16 = v26;
    v15 = v27;
    v19 = v28;
    v18 = v29;
  }

  *a8 = a7 & 1;
  *(a8 + 1) = 0;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = v15;
  *(a8 + 56) = v16;
  *(a8 + 72) = v17;
  *(a8 + 80) = v21;
  *(a8 + 88) = 0;
  *(a8 + 96) = 1;
  *(a8 + 104) = v18;
  *(a8 + 120) = v19;
  *(a8 + 136) = v20;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0;
  *(a8 + 184) = 1;
  *(a8 + 204) = 0;
  *(a8 + 188) = 0;
  *(a8 + 196) = 0;
  *(a8 + 212) = 1;
  sub_254F77B4C();
  *(a8 + 248) = 1;
  sub_254F77B28(v24);
  *(a8 + 312) = v25;
}

double ContextMetadata.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 72) = 1;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 204) = 0;
  *(a1 + 188) = 0;
  *(a1 + 196) = 0;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 236) = 3;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 6;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = v2;
  return result;
}

void static ContextMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    goto LABEL_124;
  }

  v2 = *(a1 + 2);
  v323 = *(a1 + 3);
  v324 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  v6 = *(a1 + 8);
  v320 = a1[72];
  v7 = *(a1 + 10);
  v8 = *(a1 + 11);
  v318 = a1[96];
  v10 = *(a1 + 13);
  v9 = *(a1 + 14);
  v11 = *(a1 + 15);
  v316 = a1[136];
  v312 = *(a1 + 18);
  v313 = *(a1 + 19);
  v309 = *(a1 + 21);
  v310 = *(a1 + 20);
  v308 = *(a1 + 22);
  v307 = a1[184];
  v303 = *(a1 + 196);
  v304 = *(a1 + 188);
  v302 = *(a1 + 204);
  v301 = a1[212];
  v12 = a1[236];
  v13 = *(a1 + 58);
  v14 = *(a1 + 30);
  LODWORD(v15) = a1[248];
  v17 = *(a1 + 32);
  v16 = *(a1 + 33);
  v18 = a1[272];
  v20 = *(a1 + 35);
  v19 = *(a1 + 36);
  v22 = *(a1 + 37);
  v21 = *(a1 + 38);
  v23 = *(a1 + 39);
  v24 = *(a2 + 5);
  v25 = *(a2 + 6);
  v26 = *(a2 + 7);
  v27 = *(a2 + 8);
  v28 = *(a2 + 11);
  v30 = *(a2 + 13);
  v29 = *(a2 + 14);
  v31 = *(a2 + 16);
  v32 = *(a2 + 58);
  v33 = *(a2 + 30);
  v34 = *(a2 + 2);
  v321 = *(a2 + 3);
  v35 = *(a2 + 4);
  v319 = a2[72];
  v317 = a2[96];
  v315 = a2[136];
  v311 = *(a2 + 18);
  v314 = *(a2 + 19);
  v305 = *(a2 + 22);
  v306 = a2[184];
  v299 = *(a2 + 204);
  v300 = a2[212];
  v297 = *(a2 + 27);
  v298 = *(a2 + 28);
  v36 = a2[248];
  v37 = *(a2 + 32);
  v38 = *(a2 + 33);
  v39 = a2[272];
  v40 = *(a2 + 35);
  v296 = *(a2 + 36);
  v41 = *(a2 + 37);
  v42 = *(a2 + 38);
  if (v2)
  {
    if (!v34)
    {
      goto LABEL_124;
    }

    if (*(a1 + 1) != *(a2 + 1) || v2 != v34)
    {
      v284 = a2[272];
      v270 = a1[236];
      v272 = *(a1 + 37);
      v264 = *(a1 + 39);
      v268 = *(a1 + 10);
      v236 = *(a1 + 27);
      v238 = *(a1 + 36);
      v276 = *(a1 + 35);
      v288 = *(a1 + 38);
      v44 = *(a2 + 35);
      v45 = a1[272];
      HIDWORD(v274) = a1[248];
      v247 = *(a1 + 32);
      v46 = *(a1 + 33);
      v292 = *(a1 + 30);
      v47 = *(a1 + 58);
      v48 = *(a2 + 32);
      v252 = a2[248];
      v281 = *(a1 + 11);
      v258 = *(a1 + 14);
      v260 = *(a1 + 15);
      v262 = *(a2 + 11);
      v245 = *(a1 + 13);
      v49 = *(a1 + 8);
      v228 = *(a1 + 7);
      v230 = *(a1 + 5);
      v50 = *(a2 + 13);
      v232 = *(a2 + 14);
      v234 = *(a2 + 16);
      v51 = *(a1 + 6);
      v52 = *(a2 + 8);
      v254 = *(a2 + 5);
      v256 = *(a2 + 6);
      v53 = *(a2 + 7);
      v54 = sub_254F9BE30();
      v24 = v254;
      v25 = v256;
      v26 = v53;
      v27 = v52;
      v3 = v230;
      v29 = v232;
      v4 = v51;
      v31 = v234;
      v30 = v50;
      v5 = v228;
      v6 = v49;
      v10 = v245;
      v11 = v260;
      v28 = *&v262;
      v9 = v258;
      v8 = v281;
      v36 = v252;
      v19 = v238;
      v37 = v48;
      v13 = v47;
      v39 = v284;
      v14 = v292;
      v16 = v46;
      v17 = v247;
      LODWORD(v15) = HIDWORD(v274);
      v18 = v45;
      v40 = v44;
      v7 = v268;
      v12 = v270;
      v21 = v288;
      v22 = v272;
      v20 = v276;
      v23 = v264;
      if ((v54 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v34)
  {
    goto LABEL_124;
  }

  if (v324)
  {
    if (!v35)
    {
      goto LABEL_124;
    }

    if (v323 != v321 || v324 != v35)
    {
      v285 = v39;
      v270 = v12;
      v272 = v22;
      v289 = v21;
      v221 = v37;
      v224 = v41;
      v277 = v20;
      HIDWORD(v274) = v15;
      v15 = v16;
      v293 = v14;
      v56 = v19;
      v265 = v23;
      v268 = v7;
      v57 = v13;
      v242 = v32;
      v58 = v36;
      v260 = v11;
      *&v262 = v28;
      v59 = v10;
      v282 = v8;
      v256 = v25;
      v258 = v9;
      v60 = v6;
      v61 = v5;
      v62 = v30;
      v63 = v29;
      v64 = v31;
      v245 = v4;
      v65 = v3;
      v236 = v26;
      v238 = v27;
      v254 = v24;
      v66 = sub_254F9BE30();
      v24 = v254;
      v25 = v256;
      v26 = v236;
      v27 = v238;
      v3 = v65;
      v4 = v245;
      v31 = v64;
      v29 = v63;
      v30 = v62;
      v5 = v61;
      v6 = v60;
      v8 = v282;
      v10 = v59;
      v28 = *&v262;
      v36 = v58;
      v32 = v242;
      v12 = v270;
      v13 = v57;
      v23 = v265;
      v39 = v285;
      v19 = v56;
      v14 = v293;
      v16 = v15;
      LODWORD(v15) = HIDWORD(v274);
      v20 = v277;
      v37 = v221;
      v41 = v224;
      v21 = v289;
      v22 = v272;
      if ((v66 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_124;
  }

  if (v320)
  {
    if ((v319 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    if (v319)
    {
      goto LABEL_124;
    }

    v294 = v14;
    v218 = v33;
    v245 = v10;
    v322 = v30;
    v270 = v12;
    v272 = v22;
    v290 = v21;
    v268 = v7;
    v225 = v41;
    v67 = v42;
    v278 = v20;
    HIDWORD(v274) = v15;
    v15 = v16;
    v68 = v19;
    v286 = v39;
    v69 = v23;
    v70 = v13;
    v71 = v37;
    v253 = v36;
    v72 = v29;
    v73 = v31;
    v74 = CGRectEqualToRect(*&v3, *&v24);
    v31 = v73;
    v29 = v72;
    v30 = v322;
    v36 = v253;
    v33 = v218;
    v37 = v71;
    v13 = v70;
    v23 = v69;
    v39 = v286;
    v19 = v68;
    v14 = v294;
    v16 = v15;
    LOBYTE(v15) = BYTE4(v274);
    v20 = v278;
    v42 = v67;
    v41 = v225;
    v12 = v270;
    v21 = v290;
    v22 = v272;
    if (!v74)
    {
      goto LABEL_124;
    }
  }

  HIDWORD(v240) = v32;
  v295 = v14;
  v219 = v33;
  v243 = v38;
  HIDWORD(v250) = v36;
  v222 = v37;
  v226 = v41;
  v248 = v17;
  v216 = v16;
  HIDWORD(v214) = v18;
  v287 = v39;
  v209 = v42;
  v211 = v40;
  v291 = v21;
  v75 = v19;
  v76 = v23;
  v77 = v12;
  v78 = v13;
  v283 = v8;
  v79 = v30;
  v80 = v29;
  v81 = v31;
  sub_254F55378();
  if ((v82 & 1) == 0)
  {
LABEL_124:
    sub_254F77C8C();
    return;
  }

  sub_254F4E424();
  if (v318)
  {
    if (!v317)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v104 = v317;
    if (v283 != v28)
    {
      v104 = 1;
    }

    if (v104)
    {
      goto LABEL_124;
    }
  }

  if (v316)
  {
    if ((v315 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    if (v315)
    {
      goto LABEL_124;
    }

    v105 = v79;
    v106 = v80;
    v107 = v81;
    CGRectEqualToRect(*&v96, *(&v100 - 2));
    sub_254F5062C();
    sub_254F4E424();
    if (!v108)
    {
      goto LABEL_124;
    }
  }

  if (v313)
  {
    if (!v314)
    {
      goto LABEL_124;
    }

    if (v312 != v311 || v313 != v314)
    {
      sub_254F9BE30();
      sub_254F5062C();
      sub_254F4E424();
      if ((v110 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v314)
  {
    goto LABEL_124;
  }

  v329 = v310;
  v330 = v309;
  v331 = v308;
  v332 = v307;
  v333 = v101;
  v334 = v305;
  v111 = v306;
  v335 = v306;
  if ((v307 & 1) == 0)
  {
    v326.i64[0] = v310;
    v326.i64[1] = v309;
    v327 = v308;
    v328 = 0;
    if (v306)
    {
      goto LABEL_124;
    }

    static BoundingBox.== infix(_:_:)(&v326, &v333);
    sub_254F5062C();
    sub_254F4E424();
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_124;
  }

  v329 = v304;
  v330 = v303;
  v331 = v302;
  v332 = v301;
  v333 = v102;
  v334 = v299;
  v112 = v300;
  v335 = v300;
  if ((v301 & 1) == 0)
  {
    v326.i64[0] = v304;
    v326.i64[1] = v303;
    v327 = v302;
    v328 = 0;
    if (v300)
    {
      goto LABEL_124;
    }

    static BoundingBox.== infix(_:_:)(&v326, &v333);
    sub_254F5062C();
    sub_254F4E424();
  }

  if ((v112 & 1) == 0)
  {
    goto LABEL_124;
  }

  if (v83)
  {
    if (!v298)
    {
      goto LABEL_124;
    }

    if (v94 != v297 || v83 != v298)
    {
      sub_254F9BE30();
      sub_254F5062C();
      v93 = v78;
      v90 = v77;
      v92 = v76;
      v91 = v75;
      if ((v112 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v298)
  {
    goto LABEL_124;
  }

  v114 = v93 | (v90 << 32);
  if (BYTE4(v114) == 3)
  {
    if (v95 != 3)
    {
      goto LABEL_124;
    }
  }

  else if (v95 == 3 || v103 != *&v114 || BYTE4(v114) != v95)
  {
    goto LABEL_124;
  }

  v266 = v92;
  v117 = v15;
  v118 = v91;
  v279 = v20;
  if (v117)
  {
    v119 = v216;
    if (!HIDWORD(v250))
    {
      goto LABEL_124;
    }
  }

  else
  {
    v120 = BYTE4(v250);
    if (v295 != *&v33)
    {
      v120 = 1;
    }

    v119 = v216;
    if (v120)
    {
      goto LABEL_124;
    }
  }

  if (!v119)
  {
    v121 = v18;
    if (!v38)
    {
      goto LABEL_90;
    }

    goto LABEL_124;
  }

  v121 = v18;
  v112 = v17;
  v83 = v216;
  v85 = v38;
  v84 = v222;
  if (!v38)
  {
    goto LABEL_124;
  }

  if (v17 != v222 || v216 != v38)
  {
    v112 = sub_254F9BE30();
    v121 = v18;
    if ((v112 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

LABEL_90:
  if (v121 == 6)
  {
    v123 = v287 == 6;
  }

  else
  {
    v123 = v287 != 6 && v18 == v287;
  }

  if (!v123)
  {
    goto LABEL_124;
  }

  if (v118)
  {
    if (v296)
    {
      v124 = v20 == v211 && v118 == v296;
      if (v124 || (v112 = sub_254F9BE30(), (v112 & 1) != 0))
      {
        if (!v291)
        {
          v158 = sub_254F4F3C8(v112, v83, v84, v85, v86, v87, v88, v89, v207, v209, v211, v214, v216, v33, v222, v41, v228, v230, v232, v234, v236, v238, v240, v38, v245, v17, v250, v254, v256, v258, v260, v262, v266, v268, v270, v272, v274, v20);
          sub_254F6E24C(v158, v159);
          if (!v210)
          {
            v160 = sub_254F4F1B0();
            v162 = sub_254F6E24C(v160, v161);
            v170 = sub_254F4F3C8(v162, v163, v164, v165, v166, v167, v168, v169, v208, 0, v213, v215, v217, v220, v223, v227, v229, v231, v233, v235, v237, v239, v241, v244, v246, v249, v251, v255, v257, v259, v261, v263, v267, v269, v271, v273, v275, v280);
            sub_254F6E24C(v170, v171);
            v172 = sub_254F4F1B0();
            goto LABEL_126;
          }

LABEL_121:
          v176 = sub_254F4F1B0();
          v178 = sub_254F6E24C(v176, v177);
          v186 = sub_254F4F3C8(v178, v179, v180, v181, v182, v183, v184, v185, v208, v210, v213, v215, v217, v220, v223, v227, v229, v231, v233, v235, v237, v239, v241, v244, v246, v249, v251, v255, v257, v259, v261, v263, v267, v269, v271, v273, v275, v280);
          sub_254F6E24C(v186, v187);
          v188 = sub_254F4F1B0();
          sub_254F72780(v188, v189);
LABEL_122:

          v148 = sub_254F4F3C8(v190, v191, v192, v193, v194, v195, v196, v197, v207, v209, v211, v214, v216, v219, v222, v226, v228, v230, v232, v234, v236, v238, v240, v243, v245, v248, v250, v254, v256, v258, v260, v262, v266, v268, v270, v272, v274, v279);
          goto LABEL_123;
        }

        if (v209)
        {
          if (v22 != v41 || v291 != v209)
          {
            v325 = sub_254F9BE30();
            sub_254F778E8();
            sub_254F6E24C(v126, v127);
            v128 = sub_254F4F1B0();
            sub_254F6E24C(v128, v129);
            sub_254F778E8();
            sub_254F6E24C(v130, v131);
            v132 = sub_254F4F1B0();
            sub_254F72780(v132, v133);
            if (v325)
            {
              goto LABEL_127;
            }

            goto LABEL_122;
          }

          sub_254F778E8();
          sub_254F6E24C(v198, v199);
          v200 = sub_254F4F1B0();
          sub_254F6E24C(v200, v201);
          sub_254F778E8();
          sub_254F6E24C(v202, v203);
          v172 = sub_254F4F1B0();
LABEL_126:
          sub_254F72780(v172, v173);
LABEL_127:

          goto LABEL_128;
        }

        v209 = 0;
      }

      v174 = sub_254F4F3C8(v112, v83, v84, v85, v86, v87, v88, v89, v207, v209, v211, v214, v216, v33, v222, v41, v228, v230, v232, v234, v236, v238, v240, v38, v245, v17, v250, v254, v256, v258, v260, v262, v266, v268, v270, v272, v274, v20);
      sub_254F6E24C(v174, v175);
      goto LABEL_121;
    }

    sub_254F778E8();
    sub_254F6E24C(v142, v143);
    sub_254F6E24C(v211, 0);
    sub_254F778E8();
    sub_254F6E24C(v144, v145);

LABEL_115:
    v146 = sub_254F4F3C8(v134, v135, v136, v137, v138, v139, v140, v141, v207, v209, v211, v214, v216, v33, v222, v41, v228, v230, v232, v234, v236, v238, v240, v38, v245, v17, v250, v254, v256, v258, v260, v262, v266, v268, v270, v272, v274, v20);
    sub_254F72780(v146, v147);
    v148 = v212;
    v149 = v296;
LABEL_123:
    sub_254F72780(v148, v149);
    goto LABEL_124;
  }

  sub_254F6E24C(v20, 0);
  if (v296)
  {
    v134 = sub_254F6E24C(v211, v296);
    goto LABEL_115;
  }

  v150 = sub_254F6E24C(v211, 0);
LABEL_128:
  v204 = sub_254F4F3C8(v150, v151, v152, v153, v154, v155, v156, v157, v207, v209, v211, v214, v216, v219, v222, v226, v228, v230, v232, v234, v236, v238, v240, v243, v245, v248, v250, v254, v256, v258, v260, v262, v266, v268, v270, v272, v274, v279);
  sub_254F72780(v204, v205);
  sub_254F77C8C();

  sub_254F553FC();
}

unint64_t sub_254F6E14C()
{
  result = qword_280C45790;
  if (!qword_280C45790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45790);
  }

  return result;
}

uint64_t sub_254F6E1A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_254F77C50();
  v4(v3);
  sub_254F4E534();
  v5 = sub_254F4E364();
  v6(v5);
  return a2;
}

uint64_t sub_254F6E1F8()
{
  v1 = sub_254F778A0();
  v2(v1);
  sub_254F4E534();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_254F6E24C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_254F6E290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000254FA6690 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000254FA66B0 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69536E6565726373 && a2 == 0xEA0000000000657ALL;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73656D617266 && a2 == 0xE600000000000000;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000254FA66D0 == a2;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000254FA66F0 == a2;
                    if (v14 || (sub_254F9BE30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x8000000254FA6710 == a2;
                      if (v15 || (sub_254F9BE30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
                        if (v16 || (sub_254F9BE30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x79636E65696C6173 && a2 == 0xE800000000000000;
                          if (v17 || (sub_254F9BE30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 7431539 && a2 == 0xE300000000000000;
                            if (v18 || (sub_254F9BE30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
                              if (v19 || (sub_254F9BE30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563;
                                if (v20 || (sub_254F9BE30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000015 && 0x8000000254FA6730 == a2;
                                  if (v21 || (sub_254F9BE30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD000000000000017 && 0x8000000254FA6750 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_254F9BE30();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F6E7E8(char a1)
{
  result = 0x7463656C65537369;
  switch(a1)
  {
    case 1:
      result = 0x72616D6972507369;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x69536E6565726373;
      break;
    case 5:
      result = 0x73656D617266;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x656D617266;
      break;
    case 8:
      result = 0x6C646E7542707061;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6449797469746E65;
      break;
    case 12:
      result = 0x79636E65696C6173;
      break;
    case 13:
      result = 7431539;
      break;
    case 14:
      result = 0x644970756F7267;
      break;
    case 15:
      result = 0x72756F5361746164;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6E9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6E290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6EA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F6E7E0();
  *a1 = result;
  return result;
}

uint64_t sub_254F6EA3C(uint64_t a1)
{
  v2 = sub_254F727C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6EA78(uint64_t a1)
{
  v2 = sub_254F727C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextMetadata.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  sub_254F52F94(&qword_27F7611D8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F778D8();
  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  sub_254F4EFBC(v3, v3[3]);
  sub_254F727C4();
  sub_254F9BF20();
  sub_254F9BDC0();
  if (v1)
  {
    v5 = sub_254F778F4();
  }

  else
  {
    sub_254F505C8();
    sub_254F9BDC0();
    sub_254F4F22C(2);
    sub_254F77B1C();
    sub_254F505C8();
    sub_254F9BD40();
    sub_254F4F22C(3);
    sub_254F505C8();
    sub_254F9BD40();
    type metadata accessor for CGRect(0);
    sub_254F4E4A4();
    sub_254F6A874(v7);
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F52F94(&qword_27F7611E0);
    sub_254F72968(&unk_280C459D0);
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BE00();
    sub_254F4F22C(6);
    sub_254F505C8();
    sub_254F9BD60();
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F4F22C(8);
    sub_254F505C8();
    sub_254F9BD40();
    sub_254F72818();
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F4F22C(11);
    sub_254F4F274();
    sub_254F9BD40();
    sub_254F6A90C();
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BD80();
    sub_254F4F22C(13);
    sub_254F4F274();
    sub_254F9BD60();
    sub_254F4F22C(14);
    sub_254F4F274();
    sub_254F9BD40();
    sub_254F7286C();
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BD80();
    sub_254F6E24C(v8, v9);
    sub_254F728C0();
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BD80();
    sub_254F72780(v8, v9);
    sub_254F52F94(&qword_27F7611E8);
    sub_254F72AE4(&unk_280C45A10);
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BE00();
    v5 = sub_254F5043C();
  }

  v6(v5);
  sub_254F4F348();
}

void ContextMetadata.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v5 = v4;
  v6 = sub_254F52F94(&qword_27F7611F0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F778D8();
  v75 = v3;
  sub_254F4EFBC(v3, v3[3]);
  sub_254F727C4();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F7786C();
    sub_254F4DA5C(v3);

    if (v5)
    {
    }

    if (v1)
    {

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!v6)
    {
LABEL_7:
      if (!v3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (!v3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_254F72780(v70, v68);
    goto LABEL_12;
  }

  LOBYTE(v77[0]) = 0;
  v8 = sub_254F9BCD0();
  sub_254F4E584(1);
  v66 = sub_254F9BCD0();
  sub_254F4E584(2);
  v9 = sub_254F9BC50();
  v63 = v8;
  v65 = v10;
  sub_254F4E584(3);
  v60 = sub_254F9BC50();
  v61 = v9;
  v62 = v11;
  type metadata accessor for CGRect(0);
  sub_254F4E4A4();
  sub_254F6A874(v12);
  sub_254F77B04();
  sub_254F9BC90();
  sub_254F4F160();
  v58 = v13;
  v59 = v14;
  v56 = v79;
  v57 = v78;
  v147 = v80;
  sub_254F52F94(&qword_27F7611E0);
  sub_254F72968(&unk_280C459C8);
  sub_254F9BD10();
  v15 = v77[0];
  sub_254F4E584(6);
  v55 = sub_254F9BC70();
  v145 = v16 & 1;
  sub_254F77B04();
  sub_254F9BC90();
  sub_254F4F160();
  v50 = v17;
  v51 = v18;
  v53 = v79;
  v54 = v78;
  v143 = v80;
  sub_254F4E584(8);
  v52 = sub_254F9BC50();
  v74 = v19;
  sub_254F729E8();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4F160();
  v48 = v20;
  v49 = v21;
  v47 = v78;
  v141 = v79;
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4F160();
  v45 = v22;
  v46 = v23;
  v44 = v78;
  v138 = v79;
  sub_254F4E584(11);
  v43 = sub_254F9BC50();
  v73 = v24;
  sub_254F6B0AC();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4E584(13);
  v42 = sub_254F9BC70();
  v133 = v25 & 1;
  sub_254F4E584(14);
  v39 = sub_254F9BC50();
  v72 = v26;
  sub_254F72A3C();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  LOBYTE(v76[0]) = 16;
  sub_254F72A90();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4F160();
  v69 = v27;
  v71 = v28;
  v67 = v78;
  v29 = v79;
  sub_254F52F94(&qword_27F7611E8);
  v129 = 17;
  sub_254F72AE4(&unk_280C45A08);
  sub_254F7790C();
  sub_254F9BD10();
  v30 = v63 & 1;
  v37 = v63 & 1;
  v66 &= 1u;
  v64 = LODWORD(v77[0]) | (BYTE4(v77[0]) << 32);
  v31 = sub_254F778F4();
  v32(v31);
  v35 = v130;
  LOBYTE(v76[0]) = v30;
  BYTE1(v76[0]) = v66;
  *(v76 + 2) = v148;
  HIWORD(v76[0]) = v149;
  v76[1] = v61;
  v76[2] = v65;
  v76[3] = v60;
  v76[4] = v62;
  v76[5] = v59;
  v76[6] = v58;
  v76[7] = v57;
  v76[8] = v56;
  v36 = v147;
  LOBYTE(v76[9]) = v147;
  HIDWORD(v76[9]) = *&v146[3];
  *(&v76[9] + 1) = *v146;
  v76[10] = v15;
  v76[11] = v55;
  v34 = v145;
  LOBYTE(v76[12]) = v145;
  *(&v76[12] + 1) = *v144;
  HIDWORD(v76[12]) = *&v144[3];
  v76[13] = v51;
  v76[14] = v50;
  v76[15] = v54;
  v76[16] = v53;
  v41 = v143;
  LOBYTE(v76[17]) = v143;
  HIDWORD(v76[17]) = *&v142[3];
  *(&v76[17] + 1) = *v142;
  v76[18] = v52;
  v76[19] = v74;
  v76[20] = v49;
  v76[21] = v48;
  v76[22] = v47;
  v40 = v141;
  LOBYTE(v76[23]) = v141;
  BYTE3(v76[23]) = v140;
  *(&v76[23] + 1) = v139;
  *(&v76[23] + 4) = v46;
  *(&v76[24] + 4) = v45;
  *(&v76[25] + 4) = v44;
  v38 = v138;
  BYTE4(v76[26]) = v138;
  HIBYTE(v76[26]) = v137;
  *(&v76[26] + 5) = v136;
  v76[27] = v43;
  v76[28] = v73;
  *(&v76[29] + 5) = v134;
  HIDWORD(v76[31]) = *&v132[3];
  *(&v76[31] + 1) = *v132;
  *(&v76[34] + 1) = *v131;
  BYTE4(v76[29]) = BYTE4(v64);
  LODWORD(v76[29]) = v64;
  HIBYTE(v76[29]) = v135;
  v76[30] = v42;
  HIDWORD(v76[34]) = *&v131[3];
  v33 = v133;
  LOBYTE(v76[31]) = v133;
  v76[32] = v39;
  v76[33] = v72;
  LOBYTE(v76[34]) = 0;
  v76[35] = v71;
  v76[36] = v69;
  v76[37] = v67;
  v76[38] = v29;
  v76[39] = v130;
  memcpy(v5, v76, 0x140uLL);
  sub_254F72BA4(v76, v77);
  sub_254F4DA5C(v75);
  LOBYTE(v77[0]) = v37;
  BYTE1(v77[0]) = v66;
  v77[1] = v61;
  v78 = v65;
  v79 = v60;
  v80 = v62;
  v81 = v59;
  v82 = v58;
  v83 = v57;
  v84 = v56;
  v85 = v36;
  v87 = v15;
  v88 = v55;
  v89 = v34;
  v91 = v51;
  v92 = v50;
  *(v77 + 2) = v148;
  HIWORD(v77[0]) = v149;
  *v86 = *v146;
  *&v86[3] = *&v146[3];
  *v90 = *v144;
  *&v90[3] = *&v144[3];
  v93 = v54;
  v94 = v53;
  v95 = v41;
  *v96 = *v142;
  *&v96[3] = *&v142[3];
  v97 = v52;
  v98 = v74;
  v99 = v49;
  v100 = v48;
  v101 = v47;
  v102 = v40;
  v104 = v140;
  v103 = v139;
  v105 = v46;
  v106 = v45;
  v107 = v44;
  v108 = v38;
  v110 = v137;
  v109 = v136;
  v111 = v43;
  v112 = v73;
  v113 = v64;
  v114 = BYTE4(v64);
  v116 = v135;
  v115 = v134;
  v117 = v42;
  v118 = v33;
  *&v119[3] = *&v132[3];
  *v119 = *v132;
  v120 = v39;
  v121 = v72;
  v122 = 0;
  *v123 = *v131;
  *&v123[3] = *&v131[3];
  v124 = v71;
  v125 = v69;
  v126 = v67;
  v127 = v29;
  v128 = v35;
  sub_254F6C164(v77);
LABEL_12:
  sub_254F4F348();
}

IntelligenceFlowShared::ContextualEntityDisplayRepresentation __swiftcall ContextualEntityDisplayRepresentation.init(title:subtitle:)(Swift::String title, Swift::String_optional subtitle)
{
  v2->value = title;
  v2[1] = subtitle;
  result.subtitle = subtitle;
  result.title = title;
  return result;
}

uint64_t static ContextualEntityDisplayRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_254F9BE30(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_254F9BE30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_254F6FE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254F6FEF0(char a1)
{
  if (a1)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_254F6FF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6FE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6FF54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F6FEE8();
  *a1 = result;
  return result;
}

uint64_t sub_254F6FF7C(uint64_t a1)
{
  v2 = sub_254F72BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6FFB8(uint64_t a1)
{
  v2 = sub_254F72BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextualEntityDisplayRepresentation.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F7611F8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4E558();
  v2 = sub_254F5043C();
  sub_254F4EFBC(v2, v3);
  sub_254F72BDC();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F4E2F0();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F77AF8();
    sub_254F4E2F0();
    sub_254F9BD40();
  }

  v4 = sub_254F77A78();
  v5(v4);
  sub_254F4F348();
}

uint64_t ContextualEntityDisplayRepresentation.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_254F9B9C0();
  if (!v1)
  {
    return sub_254F9BED0();
  }

  sub_254F9BED0();
  sub_254F77A78();

  return sub_254F9B9C0();
}

uint64_t ContextualEntityDisplayRepresentation.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_254F77C0C();
  sub_254F9B9C0();
  sub_254F9BED0();
  if (v1)
  {
    sub_254F9B9C0();
  }

  return sub_254F9BF00();
}

void ContextualEntityDisplayRepresentation.init(from:)()
{
  sub_254F4E9D0();
  sub_254F77AD8();
  v4 = sub_254F52F94(&qword_27F761208);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4E38C();
  sub_254F77848();
  sub_254F72BDC();
  sub_254F77988();
  if (v1)
  {
    sub_254F4DA5C(v0);
  }

  else
  {
    sub_254F5002C();
    v8 = sub_254F9BCC0();
    v10 = v9;
    sub_254F77AF8();
    sub_254F5002C();
    v11 = sub_254F9BC50();
    v13 = v12;
    v14 = v11;
    (*(v6 + 8))(v3, v4);
    *v2 = v8;
    v2[1] = v10;
    v2[2] = v14;
    v2[3] = v13;

    sub_254F4DA5C(v0);
  }

  sub_254F4F348();
}

uint64_t sub_254F703F4()
{
  v1 = *(v0 + 24);
  sub_254F9BEB0();
  sub_254F9B9C0();
  sub_254F9BED0();
  if (v1)
  {
    sub_254F9B9C0();
  }

  return sub_254F9BF00();
}

void __swiftcall BoundingBox.init(xCoordinate:yCoordinate:zCoordinate:width:height:depth:)(IntelligenceFlowShared::BoundingBox *__return_ptr retstr, Swift::Float xCoordinate, Swift::Float yCoordinate, Swift::Float zCoordinate, Swift::Float width, Swift::Float height, Swift::Float depth)
{
  retstr->xCoordinate = xCoordinate;
  retstr->yCoordinate = yCoordinate;
  retstr->zCoordinate = zCoordinate;
  retstr->width = width;
  retstr->height = height;
  retstr->depth = depth;
}

BOOL static BoundingBox.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && a1[1].f32[0] == a2[1].f32[0])
  {
    return a1[1].f32[1] == a2[1].f32[1];
  }

  return result;
}

uint64_t sub_254F70504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6964726F6F4378 && a2 == 0xEB00000000657461;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6964726F6F4379 && a2 == 0xEB00000000657461;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6964726F6F437ALL && a2 == 0xEB00000000657461;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6874706564 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254F706D4(char a1)
{
  result = 0x6E6964726F6F4378;
  switch(a1)
  {
    case 1:
      result = 0x6E6964726F6F4379;
      break;
    case 2:
      result = 0x6E6964726F6F437ALL;
      break;
    case 3:
      result = 0x6874646977;
      break;
    case 4:
      result = 0x746867696568;
      break;
    case 5:
      result = 0x6874706564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F7076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F70504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F70794(uint64_t a1)
{
  v2 = sub_254F72C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F707D0(uint64_t a1)
{
  v2 = sub_254F72C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoundingBox.encode(to:)(void *a1)
{
  sub_254F52F94(&qword_27F761210);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F4E558();
  sub_254F4EFBC(a1, a1[3]);
  sub_254F72C30();
  sub_254F4F360();
  sub_254F77C5C();
  sub_254F9BF20();
  sub_254F4E2F0();
  sub_254F9BDE0();
  if (!v1)
  {
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
  }

  v4 = sub_254F77A78();
  return v5(v4);
}

void BoundingBox.init(from:)()
{
  sub_254F77D18();
  v2 = v1;
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F761218);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F4E38C();
  sub_254F77848();
  sub_254F72C30();
  sub_254F779D0();
  sub_254F9BF10();
  if (!v0)
  {
    sub_254F77934();
    v8 = v7;
    sub_254F77AF8();
    sub_254F77934();
    v10 = v9;
    sub_254F77934();
    v12 = v11;
    sub_254F77934();
    v14 = v13;
    sub_254F77934();
    v16 = v15;
    sub_254F77934();
    v18 = v17;
    v19 = sub_254F77900();
    v20(v19, v5);
    *v4 = v8;
    v4[1] = v10;
    v4[2] = v12;
    v4[3] = v14;
    v4[4] = v16;
    v4[5] = v18;
  }

  sub_254F4DA5C(v2);
  sub_254F77D3C();
}

double SurroundingText.onScreenBoundingBox.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

BOOL static SurroundingText.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1];
  v3 = a1[2].i64[0];
  v4 = a2[1];
  v5 = a2[2].i64[0];
  v6 = a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1];
  if (v6 || (v11 = a2[1], v12 = a1[1], v7 = sub_254F9BE30(), v4 = v11, v2 = v12, v8 = v7, v9 = 0, (v8 & 1) != 0))
  {
    v15 = v2;
    v16 = v3;
    v13 = v4;
    v14 = v5;
    return static BoundingBox.== infix(_:_:)(&v15, &v13);
  }

  return v9;
}

uint64_t sub_254F70CC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000254FA6710 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254F70D94(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_254F70DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F70CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F70DF8(uint64_t a1)
{
  v2 = sub_254F72C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F70E34(uint64_t a1)
{
  v2 = sub_254F72C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SurroundingText.encode(to:)(void *a1)
{
  sub_254F52F94(&qword_27F761220);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F4E558();
  sub_254F4EFBC(a1, a1[3]);
  sub_254F72C84();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F77B1C();
  sub_254F4E2F0();
  sub_254F9BDB0();
  if (!v1)
  {
    sub_254F72818();
    sub_254F4E2F0();
    sub_254F9BE00();
  }

  v4 = sub_254F77A78();
  return v5(v4);
}

void SurroundingText.init(from:)()
{
  sub_254F77D18();
  sub_254F77AD8();
  sub_254F52F94(&qword_27F761230);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F4E38C();
  sub_254F77848();
  sub_254F72C84();
  sub_254F77988();
  if (v1)
  {
    sub_254F4DA5C(v0);
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    sub_254F5002C();
    v4 = sub_254F9BCC0();
    v6 = v5;
    sub_254F729E8();
    sub_254F5002C();
    sub_254F9BD10();
    v7 = sub_254F4E508();
    v8(v7);
    v9 = v17;
    v10 = v18;
    *&v12[0] = v4;
    *(&v12[0] + 1) = v6;
    v12[1] = v17;
    v13 = v18;
    v11 = v17;
    *v2 = v12[0];
    *(v2 + 16) = v11;
    *(v2 + 32) = v13;
    sub_254F72CD8(v12, v14);
    sub_254F4DA5C(v0);
    v14[0] = v4;
    v14[1] = v6;
    v15 = v9;
    v16 = v10;
    sub_254F72D10(v14);
  }

  sub_254F77D3C();
}