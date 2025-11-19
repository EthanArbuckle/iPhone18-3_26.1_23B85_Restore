void *sub_2145245E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v184 = a2;
  v4 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v192 = *(v4 - 8);
  v5 = *(v192 + 64);
  MEMORY[0x28223BE20](v4);
  v194 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v189 = (&v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v191 = &v158 - v11;
  v12 = type metadata accessor for CSDMHandleProto(0);
  v199 = *(v12 - 8);
  v200 = v12;
  v13 = *(v199 + 64);
  MEMORY[0x28223BE20](v12);
  v188 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v187 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v198 = &v158 - v19;
  v20 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v197 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v196 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v158 - v28;
  v30 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
  v201 = a1;
  v31 = *(a1 + v30);
  swift_beginAccess();
  v32 = v31[3];
  v190 = v31[2];
  v299 = v32;
  swift_beginAccess();
  v34 = v31[4];
  v33 = v31[5];
  if (v33 >> 60 != 15)
  {
    sub_213FDCA18(v31[4], v31[5]);
  }

  v193 = v4;
  v204 = v34;
  v205 = v33;
  v209 = v2;
  swift_beginAccess();
  v35 = v31[7];
  v186 = v31[6];
  v208 = v35;
  swift_beginAccess();
  v36 = v31[9];
  v185 = v31[8];
  v207 = v36;
  swift_beginAccess();
  v38 = v31[10];
  v37 = v31[11];
  if (v37 >> 60 != 15)
  {
    sub_213FDCA18(v31[10], v31[11]);
  }

  v202 = v38;
  v203 = v37;
  v39 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  sub_213FB2E54(v31 + v39, v29, &qword_27C903DA0, &qword_2146E9880);
  v195 = *(v21 + 48);
  v40 = v195(v29, 1, v20);

  sub_213FB2DF4(v29, &qword_27C903DA0, &qword_2146E9880);
  v206 = v31;
  if (v40 == 1)
  {
    sub_214535078(&v290);
  }

  else
  {
    v41 = v31 + v39;
    v42 = v196;
    sub_213FB2E54(v41, v196, &qword_27C903DA0, &qword_2146E9880);
    v43 = v195;
    if (v195(v42, 1, v20) == 1)
    {
      v44 = v197;
      sub_2146D8DE8();
      v45 = &v44[v20[5]];
      *v45 = 0;
      *(v45 + 1) = 0;
      v46 = &v44[v20[6]];
      *v46 = 0;
      *(v46 + 1) = 0;
      v47 = &v44[v20[7]];
      *v47 = 0;
      *(v47 + 1) = 0;
      v48 = &v44[v20[8]];
      *v48 = 0;
      *(v48 + 1) = 0;
      if (v43(v42, 1, v20) != 1)
      {
        sub_213FB2DF4(v42, &qword_27C903DA0, &qword_2146E9880);
      }
    }

    else
    {
      v44 = v197;
      sub_214534FEC(v42, v197, type metadata accessor for CSDMConversationActivityContextProto);
    }

    v49 = &v44[v20[5]];
    v50 = *v49;
    v51 = v49[1];
    v52 = &v44[v20[6]];
    v53 = *v52;
    v54 = v52[1];
    v55 = v20[8];
    v56 = &v44[v20[7]];
    v57 = *v56;
    v58 = v56[1];
    v59 = v44;
    v61 = *&v44[v55];
    v60 = *&v44[v55 + 8];

    v62 = v50;
    v63 = v209;
    sub_2140E4070(v62, v51, v53, v54, v57, v58, v61, v60, v215);
    if (v63)
    {
      sub_2145351E4(v59, type metadata accessor for CSDMConversationActivityContextProto);
      sub_2145351E4(v201, type metadata accessor for CSDMConversationActivityProto);
      sub_213FDC6BC(v204, v205);
      sub_213FDC6BC(v202, v203);
    }

    v209 = 0;
    sub_2145351E4(v59, type metadata accessor for CSDMConversationActivityContextProto);
    v272 = *&v215[96];
    v273 = *&v215[112];
    v274[0] = *&v215[128];
    *(v274 + 9) = *&v215[137];
    v268 = *&v215[32];
    v269 = *&v215[48];
    v270 = *&v215[64];
    v271 = *&v215[80];
    v266 = *v215;
    v267 = *&v215[16];
    nullsub_1(&v266);
    v296 = v272;
    v297 = v273;
    v298[0] = v274[0];
    *(v298 + 9) = *(v274 + 9);
    v292 = v268;
    v293 = v269;
    v294 = v270;
    v295 = v271;
    v290 = v266;
    v291 = v267;
  }

  v64 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v65 = v206;
  swift_beginAccess();
  v66 = v198;
  sub_213FB2E54(v65 + v64, v198, &unk_27C903788, "Į\r");
  v67 = v200;
  v199 = *(v199 + 48);
  v68 = (v199)(v66, 1, v200);
  sub_213FB2DF4(v66, &unk_27C903788, "Į\r");
  if (v68 == 1)
  {
    sub_214535098(&v278);
    goto LABEL_24;
  }

  v69 = v187;
  sub_213FB2E54(v65 + v64, v187, &unk_27C903788, "Į\r");
  v70 = v199;
  if ((v199)(v69, 1, v67) == 1)
  {
    v71 = v188;
    sub_2146D8DE8();
    *(v71 + v67[5]) = 4;
    v72 = (v71 + v67[6]);
    *v72 = 0;
    v72[1] = 0;
    v73 = (v71 + v67[7]);
    *v73 = 0;
    v73[1] = 0;
    v74 = (v71 + v67[8]);
    *v74 = 0;
    v74[1] = 0;
    if (v70(v69, 1, v67) != 1)
    {
      sub_213FB2DF4(v69, &unk_27C903788, "Į\r");
    }
  }

  else
  {
    v71 = v188;
    sub_214534FEC(v69, v188, type metadata accessor for CSDMHandleProto);
  }

  v75 = v209;
  sub_21451F0C0(v71, v215);
  if (v75)
  {
    sub_2145351E4(v201, type metadata accessor for CSDMConversationActivityProto);
    sub_213FDC6BC(v204, v205);
    sub_213FDC6BC(v202, v203);
    sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
  }

  v209 = 0;
  v275 = *&v215[160];
  v276[0] = *&v215[176];
  *(v276 + 9) = *&v215[185];
  v272 = *&v215[96];
  v273 = *&v215[112];
  v274[1] = *&v215[144];
  v274[0] = *&v215[128];
  v268 = *&v215[32];
  v269 = *&v215[48];
  v271 = *&v215[80];
  v270 = *&v215[64];
  v267 = *&v215[16];
  v266 = *v215;
  nullsub_1(&v266);
  v288 = v275;
  v289[0] = v276[0];
  *(v289 + 9) = *(v276 + 9);
  v284 = v272;
  v285 = v273;
  v287 = v274[1];
  v286 = v274[0];
  v280 = v268;
  v281 = v269;
  v283 = v271;
  v282 = v270;
  v279 = v267;
  v278 = v266;
LABEL_24:
  v77 = v206;
  v78 = v206 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  swift_beginAccess();
  v199 = *v78;
  LODWORD(v198) = v78[8];
  v79 = (v77 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v80 = v79[1];
  v163 = *v79;
  v81 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  v82 = v191;
  sub_213FB2E54(v77 + v81, v191, &qword_27C903D90, &qword_2146E9870);
  v83 = v193;
  v197 = *(v192 + 48);
  v84 = (v197)(v82, 1, v193);
  v200 = v80;

  sub_213FB2DF4(v82, &qword_27C903D90, &qword_2146E9870);
  if (v84 == 1)
  {
    sub_2145350BC(&v266);
  }

  else
  {
    v85 = v189;
    sub_213FB2E54(v77 + v81, v189, &qword_27C903D90, &qword_2146E9870);
    v86 = v197;
    if ((v197)(v85, 1, v83) == 1)
    {
      v87 = v194;
      sub_2146D8DE8();
      v88 = (v87 + v83[5]);
      *v88 = 0;
      v88[1] = 0;
      *(v87 + v83[6]) = 2;
      v89 = (v87 + v83[7]);
      *v89 = 0;
      v89[1] = 0;
      v90 = (v87 + v83[8]);
      *v90 = 0;
      v90[1] = 0;
      *(v87 + v83[9]) = xmmword_2146E68C0;
      v91 = v87 + v83[10];
      *v91 = 0;
      *(v91 + 4) = 1;
      v92 = v83[11];
      v93 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
      (*(*(v93 - 8) + 56))(v87 + v92, 1, 1, v93);
      *(v87 + v83[12]) = 2;
      v94 = v87 + v83[13];
      v95 = v189;
      *v94 = 0;
      *(v94 + 4) = 1;
      if ((v86)(v95, 1, v83) != 1)
      {
        sub_213FB2DF4(v95, &qword_27C903D90, &qword_2146E9870);
      }
    }

    else
    {
      sub_214534FEC(v85, v194, type metadata accessor for CSDMConversationActivityMetadataProto);
    }

    v96 = v209;
    sub_21452366C(v194, v215);
    v209 = v96;
    if (v96)
    {
      sub_2145351E4(v201, type metadata accessor for CSDMConversationActivityProto);
      sub_213FDC6BC(v204, v205);
      sub_213FDC6BC(v202, v203);
      sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
      sub_213FB2DF4(&v278, &qword_27C905AD0, &unk_214759900);
    }

    v211 = *&v215[160];
    v212 = *&v215[176];
    v213 = *&v215[192];
    v214 = v215[208];
    v210[6] = *&v215[96];
    v210[7] = *&v215[112];
    v210[8] = *&v215[128];
    v210[9] = *&v215[144];
    v210[2] = *&v215[32];
    v210[3] = *&v215[48];
    v210[4] = *&v215[64];
    v210[5] = *&v215[80];
    v210[0] = *v215;
    v210[1] = *&v215[16];
    nullsub_1(v210);
    v275 = v211;
    v276[0] = v212;
    v276[1] = v213;
    v277 = v214;
    v272 = v210[6];
    v273 = v210[7];
    v274[0] = v210[8];
    v274[1] = v210[9];
    v268 = v210[2];
    v269 = v210[3];
    v270 = v210[4];
    v271 = v210[5];
    v266 = v210[0];
    v267 = v210[1];
  }

  v97 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  v98 = v206;
  swift_beginAccess();
  v171 = *(v98 + v97);
  v99 = (v98 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  swift_beginAccess();
  v170 = *v99;
  LOBYTE(v98) = *(v99 + 8);
  sub_213FB2E54(&v290, v215, &qword_27C905C08, &unk_2147738C0);
  sub_213FB2E54(&v278, v215, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v266, v215, &qword_27C905C20, &qword_2146F4020);
  sub_21465335C(v253);
  v100 = v253[0];
  v101 = v253[1];
  v102 = v253[2];
  v103 = v253[3];
  v104 = v254;
  sub_214653390(v251);
  v206 = v251[0];
  v164 = v251[1];
  v195 = v251[3];
  v196 = v251[2];
  LODWORD(v197) = v252;
  sub_2146533CC(v249);
  v189 = v249[0];
  v192 = v249[2];
  v193 = v249[1];
  v194 = v249[3];
  LODWORD(v191) = v250;
  sub_214653518(v247);
  v179 = v247[0];
  v182 = v247[2];
  v187 = v247[1];
  v188 = v247[3];
  v183 = v248;
  sub_214653664(v245);
  v181 = v245[0];
  v178 = v245[2];
  v176 = v245[1];
  v177 = v245[3];
  v180 = v246;
  sub_2146537D8(v243);
  *(&v210[6] + 7) = v296;
  *(&v210[7] + 7) = v297;
  *(&v210[8] + 7) = v298[0];
  v210[9] = *(v298 + 9);
  *(&v210[2] + 7) = v292;
  *(&v210[3] + 7) = v293;
  *(&v210[4] + 7) = v294;
  *(&v210[5] + 7) = v295;
  *(v210 + 7) = v290;
  *(&v210[1] + 7) = v291;
  *&v215[151] = v287;
  *&v215[167] = v288;
  *&v215[183] = v289[0];
  *&v215[192] = *(v289 + 9);
  *&v215[87] = v283;
  *&v215[103] = v284;
  *&v215[119] = v285;
  *&v215[135] = v286;
  *&v215[23] = v279;
  *&v215[39] = v280;
  *&v215[55] = v281;
  v172 = v243[0];
  v173 = v243[2];
  v174 = v243[3];
  v175 = v243[1];
  v167 = v244;
  *&v215[71] = v282;
  *&v215[7] = v278;
  v257 = v198;
  *&v256[167] = v275;
  *&v256[183] = v276[0];
  *&v256[199] = v276[1];
  v256[215] = v277;
  *&v256[103] = v272;
  *&v256[119] = v273;
  *&v256[135] = v274[0];
  *&v256[151] = v274[1];
  *&v256[39] = v268;
  *&v256[55] = v269;
  *&v256[71] = v270;
  *&v256[87] = v271;
  *&v256[7] = v266;
  *&v256[23] = v267;
  v255 = v98;
  v265[6] = v210[6];
  v265[7] = v210[7];
  v265[8] = v210[8];
  v265[9] = *(v298 + 9);
  v265[2] = v210[2];
  v265[3] = v210[3];
  v265[4] = v210[4];
  v265[5] = v210[5];
  v265[0] = v210[0];
  v265[1] = v210[1];
  v265[20] = *&v215[160];
  v265[21] = *&v215[176];
  v265[22] = *(v289 + 9);
  v265[16] = *&v215[96];
  v265[17] = *&v215[112];
  v265[19] = *&v215[144];
  v265[18] = *&v215[128];
  v265[12] = *&v215[32];
  v265[13] = *&v215[48];
  v265[15] = *&v215[80];
  v265[14] = *&v215[64];
  v265[11] = *&v215[16];
  v265[10] = *v215;
  v165 = v198;
  v166 = v98;
  *&v210[0] = v190;
  *(&v210[0] + 1) = v299;
  v168 = v104;
  LOBYTE(v253[0]) = v104;
  *v215 = 0xD00000000000002DLL;
  *&v215[8] = 0x800000021478D220;
  *&v215[16] = 0xD00000000000001CLL;
  *&v215[24] = 0x800000021478A360;

  sub_213FDC9D0(v102, v103);
  v198 = v101;
  v105 = v209;
  v169 = v100;
  v106 = v100(v210, v253, v215);
  if (v105)
  {
    goto LABEL_37;
  }

  if ((v106 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v109 = 0xD00000000000002DLL;
    v109[1] = 0x800000021478D220;
    v109[2] = 0xD00000000000001CLL;
    v109[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_37:
    sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v278, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v266, &qword_27C905C20, &qword_2146F4020);
    v110 = v179;
    v111 = v198;
    sub_213FDC6BC(v202, v203);
    sub_213FDC6BC(v204, v205);

    sub_213FDC6D0(v102, v103);
    v112 = v167;
    v114 = v177;
    v113 = v178;
    v115 = v176;
    v116 = v182;
    v118 = v195;
    v117 = v196;
    v119 = v164;
LABEL_38:
    *v215 = v169;
    *&v215[8] = v111;
    *&v215[16] = v102;
    *&v215[24] = v103;
    v215[32] = v168;
    *&v215[33] = *v264;
    *&v215[36] = *&v264[3];
    *&v215[40] = v206;
    *&v215[48] = v119;
    *&v215[56] = v117;
    *&v215[64] = v118;
    v215[72] = v197;
    *&v215[73] = *v263;
    *&v215[76] = *&v263[3];
    *&v215[80] = v189;
    *&v215[88] = v193;
    *&v215[96] = v192;
    *&v215[104] = v194;
    v215[112] = v191;
    *&v215[116] = *&v262[3];
    *&v215[113] = *v262;
    *&v215[120] = v110;
    *&v215[128] = v187;
    *&v215[136] = v116;
    *&v215[144] = v188;
    v215[152] = v183;
    *&v215[153] = *v261;
    *&v215[156] = *&v261[3];
    *&v215[160] = v181;
    *&v215[168] = v115;
    *&v215[176] = v113;
    *&v215[184] = v114;
    v215[192] = v180;
    memcpy(&v215[193], v265, 0x177uLL);
    v216 = v199;
    v217 = v165;
    *v218 = v260[0];
    *&v218[3] = *(v260 + 3);
    v219 = v172;
    v220 = v175;
    v221 = v173;
    v222 = v174;
    v223 = v112;
    v234 = *&v256[160];
    v235 = *&v256[176];
    v236 = *&v256[192];
    v237 = *&v256[208];
    v230 = *&v256[96];
    v231 = *&v256[112];
    v232 = *&v256[128];
    v233 = *&v256[144];
    v226 = *&v256[32];
    v227 = *&v256[48];
    v228 = *&v256[64];
    v229 = *&v256[80];
    v224 = *v256;
    v225 = *&v256[16];
    v238 = v171;
    v239 = v258;
    v240 = v259;
    v241 = v170;
    v242 = v166;
    sub_2142E6E50(v215);
    return sub_2145351E4(v201, type metadata accessor for CSDMConversationActivityProto);
  }

  sub_213FDC6D0(v102, v103);

  sub_213FDC6D0(v102, v103);
  *v215 = v206;
  *&v215[8] = v164;
  v108 = v195;
  v107 = v196;
  *&v215[16] = v196;
  *&v215[24] = v195;
  v215[32] = v197;

  sub_21404F7E0(v107, v108);
  sub_214032118(v204, v205, 2, 0xD00000000000002BLL, 0x800000021478D250, 0xD00000000000001CLL, 0x800000021478A360);

  v206 = *v215;
  v159 = *&v215[8];
  v160 = *&v215[16];
  v161 = *&v215[24];
  LODWORD(v197) = v215[32];

  sub_214032564(v196, v195);
  *&v210[0] = v186;
  *(&v210[0] + 1) = v208;
  LOBYTE(v253[0]) = v191;
  *v215 = 0xD000000000000029;
  *&v215[8] = 0x800000021478D280;
  *&v215[16] = 0xD00000000000001CLL;
  v162 = 0x800000021478A360;
  *&v215[24] = 0x800000021478A360;

  v120 = v192;
  sub_213FDC9D0(v192, v194);
  v121 = (v189)(v210, v253, v215);
  v102 = v190;
  v112 = v167;
  v111 = v198;
  if ((v121 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v129 = 0xD000000000000029;
    v129[1] = 0x800000021478D280;
    v129[2] = 0xD00000000000001CLL;
    v129[3] = v162;
    swift_willThrow();

    sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v278, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v266, &qword_27C905C20, &qword_2146F4020);
    v110 = v179;
    sub_213FDC6BC(v202, v203);

    sub_213FDC6BC(v204, v205);

    sub_213FDC6D0(v120, v194);
    v103 = v299;
    v119 = v159;
    v117 = v160;
    v118 = v161;
    v114 = v177;
    v113 = v178;
    v115 = v176;
    v116 = v182;
    goto LABEL_38;
  }

  v122 = v194;
  sub_213FDC6D0(v120, v194);
  v123 = v162;

  sub_213FDC6D0(v120, v122);
  *&v210[0] = v185;
  *(&v210[0] + 1) = v207;
  LOBYTE(v253[0]) = v183;
  *v215 = 0xD00000000000002BLL;
  *&v215[8] = 0x800000021478D2B0;
  *&v215[16] = 0xD00000000000001CLL;
  *&v215[24] = v123;

  sub_213FDC9D0(v182, v188);
  v110 = v179;
  if ((v179(v210, v253, v215) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v130 = 0xD00000000000002BLL;
    v130[1] = 0x800000021478D2B0;
    v131 = v162;
    v130[2] = 0xD00000000000001CLL;
    v130[3] = v131;
    swift_willThrow();

    sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v278, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v266, &qword_27C905C20, &qword_2146F4020);
    sub_213FDC6BC(v202, v203);

    sub_213FDC6BC(v204, v205);

    v116 = v182;
    sub_213FDC6D0(v182, v188);
    v102 = v190;
    v103 = v299;
    v119 = v159;
    v117 = v160;
    v118 = v161;
    v192 = v186;
    v194 = v208;
    v114 = v177;
    v113 = v178;
    v115 = v176;
    goto LABEL_38;
  }

  v124 = v182;
  v125 = v188;
  sub_213FDC6D0(v182, v188);
  v126 = v162;

  sub_213FDC6D0(v124, v125);
  *v215 = v181;
  v127 = v177;
  *&v215[8] = v176;
  v128 = v178;
  *&v215[16] = v178;
  *&v215[24] = v177;
  v215[32] = v180;

  sub_21404F7E0(v128, v127);
  v196 = "Activity.activityIdentifier";
  sub_214032118(v202, v203, 2, 0xD000000000000021, 0x800000021478D2E0, 0xD00000000000001CLL, v126);
  v209 = 0;
  v132 = v162;

  v181 = *v215;
  v133 = *&v215[8];
  v195 = *&v215[16];
  v196 = *&v215[24];
  v180 = v215[32];

  sub_214032564(v178, v177);
  *&v210[0] = v163;
  *(&v210[0] + 1) = v200;
  LOBYTE(v253[0]) = v112;
  *v215 = 0xD000000000000030;
  *&v215[8] = 0x800000021478D310;
  *&v215[16] = 0xD00000000000001CLL;
  *&v215[24] = v132;

  sub_213FDC9D0(v173, v174);
  v134 = v209;
  v135 = v172(v210, v253, v215);
  if (v134)
  {
    goto LABEL_48;
  }

  if ((v135 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v156 = 0xD000000000000030;
    v156[1] = 0x800000021478D310;
    v157 = v162;
    v156[2] = 0xD00000000000001CLL;
    v156[3] = v157;
    swift_willThrow();

LABEL_48:
    sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v278, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v266, &qword_27C905C20, &qword_2146F4020);
    v111 = v198;

    sub_213FDC6BC(v202, v203);
    sub_213FDC6BC(v204, v205);

    sub_213FDC6D0(v173, v174);
    v102 = v190;
    v103 = v299;
    v119 = v159;
    v117 = v160;
    v118 = v161;
    v116 = v185;
    v192 = v186;
    v194 = v208;
    v188 = v207;
    v115 = v133;
    v113 = v195;
    v114 = v196;
    v110 = v179;
    goto LABEL_38;
  }

  v137 = v173;
  v136 = v174;
  sub_213FDC6D0(v173, v174);
  v138 = v200;

  sub_213FB2DF4(&v290, &qword_27C905C08, &unk_2147738C0);
  sub_213FB2DF4(&v278, &qword_27C905AD0, &unk_214759900);
  sub_213FB2DF4(&v266, &qword_27C905C20, &qword_2146F4020);

  sub_213FDC6BC(v202, v203);
  sub_213FDC6BC(v204, v205);

  sub_213FDC6D0(v137, v136);
  sub_2145351E4(v201, type metadata accessor for CSDMConversationActivityProto);
  v139 = v184;
  v140 = v198;
  *v184 = v169;
  v139[1] = v140;
  v141 = v299;
  v139[2] = v190;
  v139[3] = v141;
  *(v139 + 32) = v168;
  *(v139 + 33) = *v264;
  *(v139 + 9) = *&v264[3];
  v142 = v159;
  v143 = v160;
  v139[5] = v206;
  v139[6] = v142;
  v144 = v161;
  v139[7] = v143;
  v139[8] = v144;
  *(v139 + 72) = v197;
  *(v139 + 73) = *v263;
  *(v139 + 19) = *&v263[3];
  v145 = v193;
  v139[10] = v189;
  v139[11] = v145;
  v146 = v208;
  v139[12] = v186;
  v139[13] = v146;
  *(v139 + 112) = v191;
  *(v139 + 29) = *&v262[3];
  *(v139 + 113) = *v262;
  v147 = v187;
  v139[15] = v179;
  v139[16] = v147;
  v148 = v207;
  v139[17] = v185;
  v139[18] = v148;
  *(v139 + 152) = v183;
  *(v139 + 153) = *v261;
  *(v139 + 39) = *&v261[3];
  v139[20] = v181;
  v139[21] = v133;
  v149 = v196;
  v139[22] = v195;
  v139[23] = v149;
  *(v139 + 192) = v180;
  result = memcpy(v139 + 193, v265, 0x177uLL);
  v139[71] = v199;
  *(v139 + 576) = v165;
  *(v139 + 577) = v260[0];
  *(v139 + 145) = *(v260 + 3);
  v139[73] = v172;
  v139[74] = v175;
  v139[75] = v163;
  v139[76] = v138;
  *(v139 + 616) = v112;
  v150 = *&v256[176];
  *(v139 + 777) = *&v256[160];
  *(v139 + 793) = v150;
  *(v139 + 809) = *&v256[192];
  *(v139 + 825) = *&v256[208];
  v151 = *&v256[112];
  *(v139 + 713) = *&v256[96];
  *(v139 + 729) = v151;
  v152 = *&v256[144];
  *(v139 + 745) = *&v256[128];
  *(v139 + 761) = v152;
  v153 = *&v256[48];
  *(v139 + 649) = *&v256[32];
  *(v139 + 665) = v153;
  v154 = *&v256[80];
  *(v139 + 681) = *&v256[64];
  *(v139 + 697) = v154;
  v155 = *&v256[16];
  *(v139 + 617) = *v256;
  *(v139 + 633) = v155;
  *(v139 + 833) = v171;
  *(v139 + 834) = v258;
  *(v139 + 419) = v259;
  v139[105] = v170;
  *(v139 + 848) = v166;
  return result;
}

uint64_t sub_2145265B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v193 = &v188 - v6;
  v199 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v192 = *(v199 - 8);
  v7 = *(v192 + 64);
  MEMORY[0x28223BE20](v199);
  v198 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v191 = &v188 - v11;
  v197 = type metadata accessor for CSDMHandleProto(0);
  v190 = *(v197 - 8);
  v12 = *(v190 + 64);
  MEMORY[0x28223BE20](v197);
  v196 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v189 = &v188 - v16;
  v195 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v188 = *(v195 - 8);
  v17 = *(v188 + 64);
  MEMORY[0x28223BE20](v195);
  v194 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 24);
  if (v19)
  {
    if (v19 == 1)
    {
      goto LABEL_60;
    }

    v20 = *(a2 + 16);
    v21 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

    v22 = *(a1 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a1 + v21);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_21402E6F0(v24);

      *(a1 + v21) = v28;
      v24 = v28;
    }

    swift_beginAccess();
    v29 = v24[3];
    v24[2] = v20;
    v24[3] = v19;
  }

  v30 = *(a2 + 64);
  if (v30 >> 60 == 11)
  {
    goto LABEL_60;
  }

  if (v30 >> 60 != 15)
  {
    v31 = *(a2 + 56);
    v32 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    sub_213FDCA18(v31, v30);
    v33 = *(a1 + v32);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a1 + v32);
    if ((v34 & 1) == 0)
    {
      v36 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = sub_21402E6F0(v35);

      *(a1 + v32) = v39;
      v35 = v39;
    }

    swift_beginAccess();
    v40 = v35[4];
    v41 = v35[5];
    v35[4] = v31;
    v35[5] = v30;
    sub_213FDC6BC(v40, v41);
  }

  v42 = *(a2 + 104);
  if (v42)
  {
    if (v42 == 1)
    {
      goto LABEL_60;
    }

    v43 = *(a2 + 96);
    v44 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

    v45 = *(a1 + v44);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(a1 + v44);
    if ((v46 & 1) == 0)
    {
      v48 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v51 = sub_21402E6F0(v47);

      *(a1 + v44) = v51;
      v47 = v51;
    }

    swift_beginAccess();
    v52 = v47[7];
    v47[6] = v43;
    v47[7] = v42;
  }

  v53 = *(a2 + 144);
  if (v53)
  {
    if (v53 == 1)
    {
      goto LABEL_60;
    }

    v54 = *(a2 + 136);
    v55 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

    v56 = *(a1 + v55);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(a1 + v55);
    if ((v57 & 1) == 0)
    {
      v59 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      v62 = sub_21402E6F0(v58);

      *(a1 + v55) = v62;
      v58 = v62;
    }

    swift_beginAccess();
    v63 = v58[9];
    v58[8] = v54;
    v58[9] = v53;
  }

  v64 = *(a2 + 184);
  if (v64 >> 60 == 11)
  {
    goto LABEL_60;
  }

  if (v64 >> 60 != 15)
  {
    v65 = *(a2 + 176);
    v66 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    sub_213FDCA18(v65, v64);
    v67 = *(a1 + v66);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a1 + v66);
    if ((v68 & 1) == 0)
    {
      v70 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_21402E6F0(v69);

      *(a1 + v66) = v73;
      v69 = v73;
    }

    swift_beginAccess();
    v74 = v69[10];
    v75 = v69[11];
    v69[10] = v65;
    v69[11] = v64;
    sub_213FDC6BC(v74, v75);
  }

  v76 = *(a2 + 312);
  v77 = *(a2 + 280);
  v261 = *(a2 + 296);
  v262 = v76;
  v78 = *(a2 + 312);
  v263[0] = *(a2 + 328);
  *(v263 + 9) = *(a2 + 337);
  v79 = *(a2 + 248);
  v257 = *(a2 + 232);
  v258 = v79;
  v80 = *(a2 + 280);
  v259 = *(a2 + 264);
  v260 = v80;
  v81 = *(a2 + 216);
  v255 = *(a2 + 200);
  v256 = v81;
  v270 = v261;
  v271 = v78;
  v272[0] = *(a2 + 328);
  *(v272 + 9) = *(a2 + 337);
  v82 = *(a2 + 248);
  v266 = *(a2 + 232);
  v267 = v82;
  v268 = v259;
  v269 = v77;
  v83 = *(a2 + 216);
  v264 = *(a2 + 200);
  v265 = v83;
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v264);
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    v296[8] = v270;
    v296[9] = v271;
    v297[0] = v272[0];
    *(v297 + 9) = *(v272 + 9);
    v296[4] = v266;
    v296[5] = v267;
    v296[6] = v268;
    v296[7] = v269;
    v296[2] = v264;
    v296[3] = v265;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
    v279 = v261;
    v280 = v262;
    v281[0] = v263[0];
    *(v281 + 9) = *(v263 + 9);
    v275 = v257;
    v276 = v258;
    v277 = v259;
    v278 = v260;
    v273 = v255;
    v274 = v256;
    sub_2142E6DF4(&v273, &v217);
    sub_214534FA4(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto);
    v85 = v298;
    sub_2146D9018();
    v298 = v85;
    v86 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v87 = *(a1 + v86);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(&v255, &qword_27C905C08, &unk_2147738C0);
      v88 = *(a1 + v86);
    }

    else
    {
      v89 = *(a1 + v86);
      v90 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();

      v88 = sub_21402E6F0(v93);

      sub_213FB2DF4(&v255, &qword_27C905C08, &unk_2147738C0);

      *(a1 + v86) = v88;
    }

    v94 = v189;
    sub_214534FEC(v194, v189, type metadata accessor for CSDMConversationActivityContextProto);
    (*(v188 + 56))(v94, 0, 1, v195);
    v95 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
    swift_beginAccess();
    sub_21402EDB8(v94, v88 + v95, &qword_27C903DA0, &qword_2146E9880);
    swift_endAccess();
  }

  v96 = *(a2 + 504);
  v97 = *(a2 + 536);
  v241 = *(a2 + 520);
  v242[0] = v97;
  *(v242 + 9) = *(a2 + 545);
  v98 = *(a2 + 440);
  v99 = *(a2 + 472);
  v237 = *(a2 + 456);
  v238 = v99;
  v101 = *(a2 + 472);
  v100 = *(a2 + 488);
  v102 = v100;
  v240 = *(a2 + 504);
  v239 = v100;
  v103 = *(a2 + 376);
  v104 = *(a2 + 408);
  v233 = *(a2 + 392);
  v234 = v104;
  v106 = *(a2 + 408);
  v105 = *(a2 + 424);
  v107 = v105;
  v236 = *(a2 + 440);
  v235 = v105;
  v108 = *(a2 + 360);
  v109 = v108;
  v232 = *(a2 + 376);
  v231 = v108;
  v110 = *(a2 + 536);
  v253 = v241;
  v254[0] = v110;
  *(v254 + 9) = *(a2 + 545);
  v249 = v237;
  v250 = v101;
  v252 = v96;
  v251 = v102;
  v245 = v233;
  v246 = v106;
  v248 = v98;
  v247 = v107;
  v244 = v103;
  v243 = v109;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v243);
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 == 1)
  {
    if (*(a2 + 576))
    {
      goto LABEL_33;
    }

LABEL_39:
    v123 = *(a2 + 568);
    v124 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v125 = *(a1 + v124);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(a1 + v124);
    if ((v126 & 1) == 0)
    {
      v128 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v129 = *(v128 + 48);
      v130 = *(v128 + 52);
      swift_allocObject();
      v131 = sub_21402E6F0(v127);

      *(a1 + v124) = v131;
      v127 = v131;
    }

    v132 = v127 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
    swift_beginAccess();
    *v132 = v123;
    v132[8] = 0;
    v112 = *(a2 + 608);
    if (!v112)
    {
      goto LABEL_46;
    }

LABEL_42:
    if (v112 != 1)
    {
      v133 = *(a2 + 600);
      v134 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

      v135 = *(a1 + v134);
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v137 = *(a1 + v134);
      if ((v136 & 1) == 0)
      {
        v138 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
        v139 = *(v138 + 48);
        v140 = *(v138 + 52);
        swift_allocObject();
        v141 = sub_21402E6F0(v137);

        *(a1 + v134) = v141;
        v137 = v141;
      }

      v142 = (v137 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
      swift_beginAccess();
      v143 = v142[1];
      *v142 = v133;
      v142[1] = v112;

      goto LABEL_46;
    }

LABEL_60:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v295 = v253;
  v296[0] = v254[0];
  *(v296 + 9) = *(v254 + 9);
  v291 = v249;
  v292 = v250;
  v294 = v252;
  v293 = v251;
  v287 = v245;
  v288 = v246;
  v290 = v248;
  v289 = v247;
  v286 = v244;
  v285 = v243;
  MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0);
  v282 = v241;
  v283[0] = v242[0];
  *(v283 + 9) = *(v242 + 9);
  v279 = v237;
  v280 = v238;
  v281[1] = v240;
  v281[0] = v239;
  v275 = v233;
  v276 = v234;
  v278 = v236;
  v277 = v235;
  v274 = v232;
  v273 = v231;
  sub_2142E5FD0(&v273, &v217);
  sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D9018();
  v113 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
  v114 = *(a1 + v113);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_213FB2DF4(&v231, &qword_27C905AD0, &unk_214759900);
    v115 = *(a1 + v113);
  }

  else
  {
    v116 = *(a1 + v113);
    v117 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    swift_allocObject();

    v115 = sub_21402E6F0(v120);

    sub_213FB2DF4(&v231, &qword_27C905AD0, &unk_214759900);

    *(a1 + v113) = v115;
  }

  v121 = v191;
  sub_214534FEC(v196, v191, type metadata accessor for CSDMHandleProto);
  (*(v190 + 56))(v121, 0, 1, v197);
  v122 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  sub_21402EDB8(v121, v115 + v122, &unk_27C903788, "Į\r");
  swift_endAccess();
  if ((*(a2 + 576) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v112 = *(a2 + 608);
  if (v112)
  {
    goto LABEL_42;
  }

LABEL_46:
  v144 = *(a2 + 800);
  v145 = *(a2 + 768);
  v213 = *(a2 + 784);
  v214 = v144;
  v146 = *(a2 + 800);
  v215 = *(a2 + 816);
  v147 = *(a2 + 736);
  v148 = *(a2 + 704);
  v209 = *(a2 + 720);
  v210 = v147;
  v149 = *(a2 + 736);
  v150 = *(a2 + 768);
  v211 = *(a2 + 752);
  v212 = v150;
  v151 = *(a2 + 672);
  v152 = *(a2 + 640);
  v205 = *(a2 + 656);
  v206 = v151;
  v153 = *(a2 + 672);
  v154 = *(a2 + 704);
  v207 = *(a2 + 688);
  v208 = v154;
  v155 = *(a2 + 640);
  v203 = *(a2 + 624);
  v204 = v155;
  v227 = v213;
  v228 = v146;
  v229 = *(a2 + 816);
  v222 = v148;
  v223 = v209;
  v224 = v149;
  v225 = v211;
  v226 = v145;
  v219 = v205;
  v220 = v153;
  v221 = v207;
  v216 = *(a2 + 832);
  v230 = *(a2 + 832);
  v217 = v203;
  v218 = v152;
  result = sub_214534F38(&v217);
  if (result != 1)
  {
    v284 = v230;
    v282 = v227;
    v283[0] = v228;
    v283[1] = v229;
    v279 = v223;
    v280 = v224;
    v281[0] = v225;
    v281[1] = v226;
    v275 = v219;
    v276 = v220;
    v277 = v221;
    v278 = v222;
    v273 = v217;
    v274 = v218;
    MEMORY[0x28223BE20](result);
    v201[10] = v213;
    v201[11] = v214;
    v201[12] = v215;
    v202 = v216;
    v201[6] = v209;
    v201[7] = v210;
    v201[8] = v211;
    v201[9] = v212;
    v201[2] = v205;
    v201[3] = v206;
    v201[4] = v207;
    v201[5] = v208;
    v201[0] = v203;
    v201[1] = v204;
    sub_2142E6C18(v201, &v200);
    sub_214534FA4(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto);
    sub_2146D9018();
    v157 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v158 = *(a1 + v157);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(&v203, &qword_27C905C20, &qword_2146F4020);
      v159 = *(a1 + v157);
    }

    else
    {
      v160 = *(a1 + v157);
      v161 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v162 = *(v161 + 48);
      v163 = *(v161 + 52);
      swift_allocObject();

      v159 = sub_21402E6F0(v164);

      sub_213FB2DF4(&v203, &qword_27C905C20, &qword_2146F4020);

      *(a1 + v157) = v159;
    }

    v165 = v193;
    sub_214534FEC(v198, v193, type metadata accessor for CSDMConversationActivityMetadataProto);
    (*(v192 + 56))(v165, 0, 1, v199);
    v166 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
    swift_beginAccess();
    sub_21402EDB8(v165, v159 + v166, &qword_27C903D90, &qword_2146E9870);
    result = swift_endAccess();
  }

  v167 = *(a2 + 833);
  if (v167 != 2)
  {
    v168 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v169 = *(a1 + v168);
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v171 = *(a1 + v168);
    if ((v170 & 1) == 0)
    {
      v172 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v173 = *(v172 + 48);
      v174 = *(v172 + 52);
      swift_allocObject();
      v175 = sub_21402E6F0(v171);

      *(a1 + v168) = v175;
      v171 = v175;
    }

    v176 = v167 & 1;
    v177 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
    result = swift_beginAccess();
    *(v171 + v177) = v176;
  }

  if ((*(a2 + 848) & 1) == 0)
  {
    v178 = *(a2 + 840);
    v179 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v180 = *(a1 + v179);
    v181 = swift_isUniquelyReferenced_nonNull_native();
    v182 = *(a1 + v179);
    if ((v181 & 1) == 0)
    {
      v183 = type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      v184 = *(v183 + 48);
      v185 = *(v183 + 52);
      swift_allocObject();
      v186 = sub_21402E6F0(v182);

      *(a1 + v179) = v186;
      v182 = v186;
    }

    v187 = v182 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
    result = swift_beginAccess();
    *v187 = v178;
    v187[8] = 0;
  }

  return result;
}

void *sub_214527708@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for CSDMConversationActivityProto(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v15 = *(v14 + 24);
  v16 = (a1 + *(v14 + 20));
  v17 = *v16;
  v18 = v16[1];
  v44 = v14;
  v45 = v17;
  sub_213FB2E54(a1 + v15, v13, &unk_27C903858, &unk_2146E6F50);
  v19 = *(v4 + 48);
  v42 = v3;
  LODWORD(v3) = v19(v13, 1, v3);
  v47 = v18;

  sub_213FB2DF4(v13, &unk_27C903858, &unk_2146E6F50);
  if (v3 == 1)
  {
    sub_214535070(v52);
    v20 = a1;
    v21 = v45;
  }

  else
  {
    sub_213FB2E54(a1 + v15, v11, &unk_27C903858, &unk_2146E6F50);
    v22 = v42;
    v20 = a1;
    if (v19(v11, 1, v42) == 1)
    {
      v41 = v19;
      v23 = v43;
      sub_2146D8DE8();
      v24 = *(v22 + 20);
      v21 = v45;
      if (qword_27C902DC8 != -1)
      {
        swift_once();
      }

      *(v23 + v24) = qword_27C902DD0;
      v25 = v41(v11, 1);

      if (v25 != 1)
      {
        sub_213FB2DF4(v11, &unk_27C903858, &unk_2146E6F50);
      }
    }

    else
    {
      v23 = v43;
      sub_214534FEC(v11, v43, type metadata accessor for CSDMConversationActivityProto);
      v21 = v45;
    }

    v26 = v46;
    sub_2145245E4(v23, v49);
    if (v26)
    {
      sub_2145351E4(a1, type metadata accessor for CSDMConversationActivitySessionProto);
    }

    v46 = 0;
    memcpy(v48, v49, 0x351uLL);
    nullsub_1(v48);
    memcpy(v52, v48, 0x351uLL);
  }

  v28 = v20 + *(v44 + 28);
  v43 = *v28;
  v44 = v20;
  v29 = *(v28 + 8);
  sub_213FB2E54(v52, v49, &qword_27C905C70, &unk_214759910);
  sub_2146540C8(v48);
  v31 = v48[0];
  v30 = v48[1];
  v32 = v48[3];
  memcpy(v49 + 7, v52, 0x351uLL);
  memcpy(v51, v49, 0x358uLL);
  LODWORD(v42) = v29;
  v48[0] = v21;
  v33 = v48[2];
  v48[1] = v47;
  LODWORD(v41) = LOBYTE(v48[4]);
  v53[0] = v48[4];
  v49[0] = 0xD000000000000034;
  v49[1] = 0x800000021478D350;
  v49[2] = 0xD00000000000001CLL;
  v49[3] = 0x800000021478A360;

  sub_213FDC9D0(v33, v32);
  v34 = v46;
  v35 = v31(v48, v53, v49);
  if (v34)
  {
    sub_213FB2DF4(v52, &qword_27C905C70, &unk_214759910);
  }

  else
  {
    if (v35)
    {
      sub_213FDC6D0(v33, v32);
      sub_213FB2DF4(v52, &qword_27C905C70, &unk_214759910);

      sub_213FDC6D0(v33, v32);
      sub_2145351E4(v44, type metadata accessor for CSDMConversationActivitySessionProto);
      v36 = v40;
      *v40 = v31;
      v36[1] = v30;
      v37 = v47;
      v36[2] = v45;
      v36[3] = v37;
      *(v36 + 32) = v41;
      result = memcpy(v36 + 33, v51, 0x35FuLL);
      v36[112] = v43;
      *(v36 + 904) = v42;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000034;
    v38[1] = 0x800000021478D350;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v52, &qword_27C905C70, &unk_214759910);
  }

  sub_213FDC6D0(v33, v32);
  v49[0] = v31;
  v49[1] = v30;
  v49[2] = v33;
  v49[3] = v32;
  LOBYTE(v49[4]) = v41;
  memcpy(&v49[4] + 1, v51, 0x35FuLL);
  v49[112] = v43;
  v50 = v42;
  sub_2142E72B4(v49);
  return sub_2145351E4(v44, type metadata accessor for CSDMConversationActivitySessionProto);
}

uint64_t sub_214527D30(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for CSDMConversationActivityProto(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v3 + 24);
  if (v9)
  {
    if (v9 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v10 = *(v3 + 16);
    v11 = (v4 + *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 20));
    v12 = v11[1];

    *v11 = v10;
    v11[1] = v9;
  }

  memcpy(v21, (v3 + 40), 0x351uLL);
  memcpy(v22, (v3 + 40), 0x351uLL);
  result = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v22);
  if (result != 1)
  {
    v14 = memcpy(v23, v22, sizeof(v23));
    MEMORY[0x28223BE20](v14);
    memcpy(v20, v21, 0x351uLL);
    sub_2142E70A8(v20, v19);
    sub_214534FA4(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto);
    sub_2146D9018();
    sub_213FB2DF4(v21, &qword_27C905C70, &unk_214759910);
    v15 = *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 24);
    sub_213FB2DF4(v4 + v15, &unk_27C903858, &unk_2146E6F50);
    sub_214534FEC(v8, v4 + v15, type metadata accessor for CSDMConversationActivityProto);
    result = (*(v24 + 56))(v4 + v15, 0, 1, v5);
  }

  v16 = *(v3 + 904);
  if ((v16 & 1) == 0)
  {
    v17 = *(v3 + 896);
    result = type metadata accessor for CSDMConversationActivitySessionProto(0);
    v18 = v4 + *(result + 28);
    *v18 = v17;
    *(v18 + 8) = v16;
  }

  return result;
}

uint64_t sub_21452802C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v149 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v151 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v154 = &v125 - v9;
  v155 = type metadata accessor for CSDMHandleProto(0);
  v162 = *(v155 - 1);
  v10 = *(v162 + 8);
  v11 = MEMORY[0x28223BE20](v155);
  v152 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v125 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v125 - v16;
  v18 = type metadata accessor for CSDMConversationLinkProto(0);
  v19 = v18[7];
  v20 = (a1 + v18[6]);
  v21 = v20[1];
  v153 = *v20;
  v22 = *(a1 + v19);
  v23 = *(a1 + v19 + 8);
  if (v23 >> 60 != 15)
  {
    sub_213FDCA18(*(a1 + v19), *(a1 + v19 + 8));
  }

  v159 = v22;
  v161 = v18;
  v24 = (a1 + v18[8]);
  v26 = *v24;
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_213FDCA18(v26, v25);
  }

  v156 = v26;
  v157 = v25;
  v27 = *a1;
  v28 = *(*a1 + 16);
  v160 = a1;
  v163 = v21;
  v158 = v23;
  if (v28)
  {
    v166 = v27;
    *&v167 = MEMORY[0x277D84F90];

    v29 = sub_2140A00C0(0, v28, 0);
    if (!*(v166 + 16))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v30 = 0;
    v31 = v167;
    v32 = v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v164 = *(v162 + 9);
    v165 = v28 - 1;
    while (1)
    {
      v33 = v31;
      sub_21453517C(v32, v17, type metadata accessor for CSDMHandleProto);
      sub_21453517C(v17, v15, type metadata accessor for CSDMHandleProto);
      sub_21451F0C0(v15, v179);
      if (v3)
      {
        sub_213FDC6BC(v159, v158);
        sub_213FDC6BC(v156, v157);

        sub_2145351E4(v17, type metadata accessor for CSDMHandleProto);

        return sub_2145351E4(v160, type metadata accessor for CSDMConversationLinkProto);
      }

      v230 = 0;
      v29 = sub_2145351E4(v17, type metadata accessor for CSDMHandleProto);
      v221 = *&v179[48];
      v220 = *&v179[32];
      v219 = *&v179[16];
      v225 = *&v179[112];
      v224 = *&v179[96];
      v222 = *&v179[64];
      v223 = *&v179[80];
      *(v229 + 9) = *&v179[185];
      v229[0] = *&v179[176];
      v228 = *&v179[160];
      v226 = *&v179[128];
      v227 = *&v179[144];
      v31 = v33;
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      v28 = v35 + 1;
      v218 = *v179;
      *&v167 = v31;
      if (v35 >= v34 >> 1)
      {
        v29 = sub_2140A00C0((v34 > 1), v35 + 1, 1);
        v31 = v167;
      }

      *(v31 + 16) = v28;
      v36 = (v31 + 208 * v35);
      v36[2] = v218;
      v37 = v219;
      v38 = v220;
      v39 = v222;
      v36[5] = v221;
      v36[6] = v39;
      v36[3] = v37;
      v36[4] = v38;
      v40 = v223;
      v41 = v224;
      v42 = v226;
      v36[9] = v225;
      v36[10] = v42;
      v36[7] = v40;
      v36[8] = v41;
      v43 = v227;
      v44 = v228;
      v45 = v229[0];
      *(v36 + 217) = *(v229 + 9);
      v36[12] = v44;
      v36[13] = v45;
      v36[11] = v43;
      if (v165 == v30)
      {
        break;
      }

      v32 += v164;
      ++v30;
      v3 = v230;
      if (v30 >= *(v166 + 16))
      {
        goto LABEL_36;
      }
    }

    v165 = v31;
    a1 = v160;
  }

  else
  {
    v230 = v2;

    v165 = MEMORY[0x277D84F90];
  }

  v46 = v161[10];
  v47 = a1 + v161[9];
  v150 = *v47;
  LODWORD(v164) = *(v47 + 8);
  v48 = *(a1 + v46 + 8);
  v127 = *(a1 + v46);
  v49 = v161[11];
  v50 = v154;
  sub_213FB2E54(a1 + v49, v154, &unk_27C903788, "Į\r");
  v51 = v155;
  v162 = *(v162 + 6);
  v52 = (v162)(v50, 1, v155);
  v166 = v48;

  sub_213FB2DF4(v50, &unk_27C903788, "Į\r");
  if (v52 == 1)
  {
    sub_214535098(&v218);
    v53 = v163;
  }

  else
  {
    v54 = a1 + v49;
    v55 = v151;
    sub_213FB2E54(v54, v151, &unk_27C903788, "Į\r");
    v56 = v162;
    if ((v162)(v55, 1, v51) == 1)
    {
      v57 = v152;
      sub_2146D8DE8();
      *(v57 + v51[5]) = 4;
      v58 = (v57 + v51[6]);
      *v58 = 0;
      v58[1] = 0;
      v59 = (v57 + v51[7]);
      *v59 = 0;
      v59[1] = 0;
      v60 = (v57 + v51[8]);
      *v60 = 0;
      v60[1] = 0;
      v61 = (v56)(v55, 1, v51);
      v53 = v163;
      if (v61 != 1)
      {
        sub_213FB2DF4(v55, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v57 = v152;
      sub_214534FEC(v55, v152, type metadata accessor for CSDMHandleProto);
      v53 = v163;
    }

    v62 = v230;
    sub_21451F0C0(v57, v179);
    if (v62)
    {
      sub_2145351E4(a1, type metadata accessor for CSDMConversationLinkProto);
      sub_213FDC6BC(v159, v158);
      sub_213FDC6BC(v156, v157);
    }

    v230 = 0;
    v177 = *&v179[160];
    v178[0] = *&v179[176];
    *(v178 + 9) = *&v179[185];
    v173 = *&v179[96];
    v174 = *&v179[112];
    v175 = *&v179[128];
    v176 = *&v179[144];
    v169 = *&v179[32];
    v170 = *&v179[48];
    v171 = *&v179[64];
    v172 = *&v179[80];
    v167 = *v179;
    v168 = *&v179[16];
    nullsub_1(&v167);
    v228 = v177;
    v229[0] = v178[0];
    *(v229 + 9) = *(v178 + 9);
    v224 = v173;
    v225 = v174;
    v227 = v176;
    v226 = v175;
    v220 = v169;
    v221 = v170;
    v223 = v172;
    v222 = v171;
    v219 = v168;
    v218 = v167;
  }

  v64 = v161[13];
  v65 = a1 + v161[12];
  v140 = *v65;
  v66 = *(v65 + 8);
  v141 = *(a1 + v64);
  v67 = (a1 + v161[14]);
  v69 = *v67;
  v68 = v67[1];
  LODWORD(v67) = *(a1 + v161[15]);
  v70 = v67 == 2;
  v142 = v67 & 1;
  v143 = v69;
  v128 = v68;

  sub_213FB2E54(&v218, v179, &qword_27C905AD0, &unk_214759900);
  sub_21465423C(&v167);
  v71 = v167;
  v72 = *(&v168 + 1);
  v129 = v168;
  v73 = v169;
  sub_214654270(v194);
  v162 = v194[0];
  v131 = v194[1];
  v132 = v194[2];
  v155 = v194[3];
  LODWORD(v161) = v195;
  sub_2146543E4(v192);
  v154 = v192[0];
  v133 = v192[1];
  v134 = v192[2];
  v151 = v192[3];
  LODWORD(v152) = v193;
  sub_214654420(v190);
  *&v179[151] = v227;
  *&v179[167] = v228;
  *&v179[183] = v229[0];
  *&v179[192] = *(v229 + 9);
  *&v179[87] = v223;
  *&v179[103] = v224;
  *&v179[119] = v225;
  *&v179[135] = v226;
  *&v179[23] = v219;
  *&v179[39] = v220;
  *&v179[55] = v221;
  v144 = v190[0];
  v147 = v190[1];
  v148 = v190[2];
  v146 = v190[3];
  v145 = v191;
  v198 = v164;
  *&v179[71] = v222;
  *&v179[7] = v218;
  v197 = v66;
  v196 = v70;
  v135 = v164;
  v215 = *&v179[160];
  v216 = *&v179[176];
  v217[0] = *(v229 + 9);
  v211 = *&v179[96];
  v212 = *&v179[112];
  v214 = *&v179[144];
  v213 = *&v179[128];
  v207 = *&v179[32];
  v208 = *&v179[48];
  v210 = *&v179[80];
  v209 = *&v179[64];
  v206 = *&v179[16];
  v205 = *v179;
  v138 = v66;
  *&v167 = v153;
  *(&v167 + 1) = v53;
  v74 = v129;
  v136 = v73;
  LOBYTE(v194[0]) = v73;
  *v179 = 0xD00000000000001ELL;
  *&v179[8] = 0x800000021478D390;
  *&v179[16] = 0xD00000000000001CLL;
  v164 = 0x800000021478A360;
  *&v179[24] = 0x800000021478A360;

  v130 = v72;
  sub_213FDC9D0(v74, v72);
  v75 = v230;
  v137 = v71;
  v76 = (v71)(&v167, v194, v179);
  v139 = v70;
  if (v75)
  {
LABEL_30:
    sub_213FB2DF4(&v218, &qword_27C905AD0, &unk_214759900);
    sub_213FDC6BC(v156, v157);
    sub_213FDC6BC(v159, v158);
    v83 = v128;
    v17 = *(&v71 + 1);

    v84 = v130;
    sub_213FDC6D0(v74, v130);
    v86 = v133;
    v85 = v134;
    v87 = v151;
    v89 = v131;
    v88 = v132;
    v90 = v155;
    goto LABEL_31;
  }

  if ((v76 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v81 = 0xD00000000000001ELL;
    v81[1] = 0x800000021478D390;
    v82 = v164;
    v81[2] = 0xD00000000000001CLL;
    v81[3] = v82;
    swift_willThrow();

    goto LABEL_30;
  }

  v77 = v130;
  sub_213FDC6D0(v74, v130);
  v78 = v164;

  v126 = *(&v71 + 1);

  sub_213FDC6D0(v74, v77);
  *v179 = v162;
  v79 = v132;
  *&v179[8] = v131;
  *&v179[16] = v132;
  v80 = v155;
  *&v179[24] = v155;
  v179[32] = v161;

  sub_21404F7E0(v79, v80);
  v162 = "CSDMConversationLink.pseudonym";
  sub_214032118(v159, v158, 2, 0xD00000000000001ELL, 0x800000021478D3B0, 0xD00000000000001CLL, v78);
  v230 = 0;
  v91 = v164;

  v162 = *v179;
  v125 = *&v179[8];
  v129 = *&v179[16];
  v130 = *&v179[24];
  LODWORD(v161) = v179[32];

  sub_214032564(v79, v155);
  *v179 = v154;
  v92 = v134;
  *&v179[8] = v133;
  *&v179[16] = v134;
  v93 = v151;
  *&v179[24] = v151;
  v179[32] = v152;

  sub_21404F7E0(v92, v93);
  v95 = v156;
  v94 = v157;
  v96 = v230;
  sub_214032118(v156, v157, 2, 0xD00000000000001FLL, 0x800000021478D3D0, 0xD00000000000001CLL, v91);
  if (v96)
  {
    sub_213FB2DF4(&v218, &qword_27C905AD0, &unk_214759900);
    sub_213FDC6BC(v95, v94);
    sub_213FDC6BC(v159, v158);

    v154 = *v179;
    v97 = *&v179[8];
    v98 = *&v179[16];
    v87 = *&v179[24];
    LODWORD(v152) = v179[32];

    sub_214032564(v92, v151);
    v74 = v153;
    v84 = v163;
    v89 = v125;
    v88 = v129;
    v90 = v130;
    v86 = v97;
    v85 = v98;
    v83 = v128;
    v17 = v126;
    goto LABEL_31;
  }

  v99 = v164;

  v132 = *&v179[8];
  v154 = *v179;
  v155 = *&v179[16];
  v230 = *&v179[24];
  LODWORD(v152) = v179[32];

  sub_214032564(v92, v151);
  *&v167 = v127;
  *(&v167 + 1) = v166;
  v28 = 0x800000021478D3F0;
  LOBYTE(v194[0]) = v145;
  *v179 = 0xD000000000000024;
  *&v179[8] = 0x800000021478D3F0;
  *&v179[16] = 0xD00000000000001CLL;
  *&v179[24] = v99;

  sub_213FDC9D0(v148, v146);
  v29 = v144(&v167, v194, v179);
  v17 = v126;
LABEL_37:
  v100 = v163;
  v74 = v153;
  v101 = v158;
  if (v29)
  {
    v102 = v146;
    sub_213FDC6D0(v148, v146);
    sub_213FB2DF4(&v218, &qword_27C905AD0, &unk_214759900);
    sub_213FDC6BC(v156, v157);
    sub_213FDC6BC(v159, v101);
    v103 = v147;

    sub_213FDC6D0(v148, v102);
    result = sub_2145351E4(v160, type metadata accessor for CSDMConversationLinkProto);
    v104 = v149;
    *v149 = v137;
    v104[1] = v17;
    v104[2] = v74;
    v104[3] = v100;
    *(v104 + 32) = v136;
    *(v104 + 33) = *v204;
    *(v104 + 9) = *&v204[3];
    v105 = v125;
    v104[5] = v162;
    v104[6] = v105;
    v106 = v130;
    v104[7] = v129;
    v104[8] = v106;
    *(v104 + 72) = v161;
    *(v104 + 73) = *v203;
    *(v104 + 19) = *&v203[3];
    v107 = v132;
    v104[10] = v154;
    v104[11] = v107;
    v108 = v230;
    v104[12] = v155;
    v104[13] = v108;
    *(v104 + 112) = v152;
    *(v104 + 29) = *(v202 + 3);
    *(v104 + 113) = v202[0];
    v109 = v150;
    v104[15] = v165;
    v104[16] = v109;
    *(v104 + 136) = v135;
    *(v104 + 35) = *(v201 + 3);
    *(v104 + 137) = v201[0];
    v104[18] = v144;
    v104[19] = v103;
    v110 = v166;
    v104[20] = v127;
    v104[21] = v110;
    *(v104 + 176) = v145;
    v111 = v205;
    *(v104 + 193) = v206;
    *(v104 + 177) = v111;
    v112 = v207;
    v113 = v208;
    v114 = v210;
    *(v104 + 241) = v209;
    *(v104 + 225) = v113;
    *(v104 + 209) = v112;
    v115 = v211;
    v116 = v213;
    v117 = v214;
    *(v104 + 289) = v212;
    *(v104 + 305) = v116;
    *(v104 + 257) = v114;
    *(v104 + 273) = v115;
    v118 = v215;
    v119 = v216;
    v120 = v217[0];
    v104[48] = *(v217 + 15);
    *(v104 + 353) = v119;
    *(v104 + 369) = v120;
    *(v104 + 321) = v117;
    *(v104 + 337) = v118;
    v104[49] = v140;
    *(v104 + 400) = v138;
    *(v104 + 401) = v141;
    *(v104 + 402) = v199;
    *(v104 + 203) = v200;
    v121 = v128;
    v104[51] = v143;
    v104[52] = v121;
    v104[53] = v142;
    *(v104 + 432) = v139;
    return result;
  }

  sub_214031C4C();
  swift_allocError();
  *v122 = 0xD000000000000024;
  v122[1] = v28;
  v123 = v164;
  v122[2] = 0xD00000000000001CLL;
  v122[3] = v123;
  swift_willThrow();

  v124 = v163;

  sub_213FB2DF4(&v218, &qword_27C905AD0, &unk_214759900);

  sub_213FDC6BC(v156, v157);
  sub_213FDC6BC(v159, v101);

  sub_213FDC6D0(v148, v146);
  v84 = v124;
  v89 = v125;
  v88 = v129;
  v90 = v130;
  v86 = v132;
  v85 = v155;
  v87 = v230;
  v83 = v128;
LABEL_31:
  *v179 = v137;
  *&v179[8] = v17;
  *&v179[16] = v74;
  *&v179[24] = v84;
  v179[32] = v136;
  *&v179[33] = *v204;
  *&v179[36] = *&v204[3];
  *&v179[40] = v162;
  *&v179[48] = v89;
  *&v179[56] = v88;
  *&v179[64] = v90;
  v179[72] = v161;
  *&v179[73] = *v203;
  *&v179[76] = *&v203[3];
  *&v179[80] = v154;
  *&v179[88] = v86;
  *&v179[96] = v85;
  *&v179[104] = v87;
  v179[112] = v152;
  *&v179[116] = *(v202 + 3);
  *&v179[113] = v202[0];
  *&v179[120] = v165;
  *&v179[128] = v150;
  v179[136] = v135;
  *&v179[140] = *(v201 + 3);
  *&v179[137] = v201[0];
  *&v179[144] = v144;
  *&v179[152] = v147;
  *&v179[160] = v148;
  *&v179[168] = v146;
  v179[176] = v145;
  *&v179[289] = v212;
  *&v179[305] = v213;
  *&v179[257] = v210;
  *&v179[273] = v211;
  *&v179[353] = v216;
  *v180 = v217[0];
  *&v179[321] = v214;
  *&v179[337] = v215;
  *&v179[193] = v206;
  *&v179[177] = v205;
  *&v179[241] = v209;
  *&v179[225] = v208;
  *&v179[209] = v207;
  *&v180[15] = *(v217 + 15);
  v181 = v140;
  v182 = v138;
  v183 = v141;
  v184 = v199;
  v185 = v200;
  v186 = v143;
  v187 = v83;
  v188 = v142;
  v189 = v139;
  sub_2142E7568(v179);
  return sub_2145351E4(v160, type metadata accessor for CSDMConversationLinkProto);
}

int *sub_2145292E8(void *a1, void *a2)
{
  v112 = type metadata accessor for CSDMHandleProto(0);
  v80 = *(v112 - 8);
  v4 = *(v80 + 64);
  v5 = MEMORY[0x28223BE20](v112);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - v7;
  v9 = a2[3];
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_37;
    }

    v10 = a2[2];
    v11 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 24));
    v12 = v11[1];

    *v11 = v10;
    v11[1] = v9;
  }

  v13 = a2[8];
  if (v13 >> 60 == 11)
  {
    goto LABEL_37;
  }

  v79 = a2;
  if (v13 >> 60 != 15)
  {
    v14 = a2[7];
    v15 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 28));
    v16 = *v15;
    v17 = v15[1];
    sub_213FDCA18(v14, v13);
    v18 = v16;
    a2 = v79;
    sub_213FDC6BC(v18, v17);
    *v15 = v14;
    v15[1] = v13;
  }

  v19 = a2[13];
  if (v19 >> 60 == 11)
  {
    goto LABEL_37;
  }

  if (v19 >> 60 != 15)
  {
    v20 = a2[12];
    v21 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 32));
    v22 = *v21;
    v23 = v21[1];
    sub_213FDCA18(v20, v19);
    v24 = v22;
    a2 = v79;
    sub_213FDC6BC(v24, v23);
    *v21 = v20;
    v21[1] = v19;
  }

  v25 = a2[15];
  v26 = *(v25 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v77 = a1;
    *&v96 = MEMORY[0x277D84F90];
    v28 = sub_2140A00E0(0, v26, 0);
    v27 = v96;
    v29 = (v25 + 32);
    do
    {
      v110[0] = *v29;
      v30 = v29[1];
      v31 = v29[2];
      v32 = v29[3];
      v110[4] = v29[4];
      v110[3] = v32;
      v110[2] = v31;
      v110[1] = v30;
      v33 = v29[5];
      v34 = v29[6];
      v35 = v29[7];
      v110[8] = v29[8];
      v110[7] = v35;
      v110[6] = v34;
      v110[5] = v33;
      v36 = v29[9];
      v37 = v29[10];
      v38 = v29[11];
      *(v111 + 9) = *(v29 + 185);
      v111[0] = v38;
      v110[10] = v37;
      v110[9] = v36;
      MEMORY[0x28223BE20](v28);
      sub_2142E5FD0(v110, v108);
      sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
      sub_2146D9018();
      sub_2142E5ED4(v110);
      *&v96 = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2140A00E0(v39 > 1, v40 + 1, 1);
        v27 = v96;
      }

      *(v27 + 16) = v40 + 1;
      v28 = sub_214534FEC(v8, v27 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v40, type metadata accessor for CSDMHandleProto);
      v29 += 13;
      --v26;
    }

    while (v26);
    a1 = v77;
  }

  v41 = *a1;

  *a1 = v27;
  v42 = v79;
  v43 = *(v79 + 136);
  if ((v43 & 1) == 0)
  {
    v44 = v79[16];
    v45 = a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 36);
    *v45 = v44;
    v45[8] = v43;
  }

  v46 = v42[21];
  if (v46)
  {
    if (v46 == 1)
    {
      goto LABEL_37;
    }

    v47 = v42[20];
    v48 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 40));
    v49 = v48[1];

    *v48 = v47;
    v48[1] = v46;
  }

  v50 = *(v42 + 41);
  v51 = *(v42 + 45);
  v94 = *(v42 + 43);
  v95[0] = v51;
  *(v95 + 9) = *(v42 + 369);
  v52 = *(v42 + 33);
  v53 = v52;
  v54 = *(v42 + 37);
  v55 = *(v42 + 39);
  v90 = *(v42 + 35);
  v91 = v54;
  v56 = *(v42 + 37);
  v57 = *(v42 + 41);
  v92 = *(v42 + 39);
  v93 = v57;
  v58 = *(v42 + 25);
  v59 = *(v42 + 29);
  v86 = *(v42 + 27);
  v87 = v59;
  v88 = *(v42 + 31);
  v89 = v52;
  v84 = *(v42 + 23);
  v85 = v58;
  v60 = *(v42 + 45);
  v106 = v94;
  v107[0] = v60;
  *(v107 + 9) = *(v42 + 369);
  v102 = v90;
  v103 = v56;
  v104 = v55;
  v105 = v50;
  v61 = *(v42 + 25);
  v62 = *(v42 + 29);
  v98 = *(v42 + 27);
  v99 = v62;
  v100 = *(v42 + 31);
  v101 = v53;
  v96 = *(v42 + 23);
  v97 = v61;
  result = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v96);
  if (result != 1)
  {
    v109[0] = v107[0];
    *(v109 + 9) = *(v107 + 9);
    v108[6] = v102;
    v108[7] = v103;
    v108[9] = v105;
    v108[10] = v106;
    v108[8] = v104;
    v108[2] = v98;
    v108[3] = v99;
    v108[4] = v100;
    v108[5] = v101;
    v108[0] = v96;
    v108[1] = v97;
    MEMORY[0x28223BE20](result);
    v82[10] = v94;
    v83[0] = v95[0];
    *(v83 + 9) = *(v95 + 9);
    v82[6] = v90;
    v82[7] = v91;
    v82[8] = v92;
    v82[9] = v93;
    v82[2] = v86;
    v82[3] = v87;
    v82[4] = v88;
    v82[5] = v89;
    v82[0] = v84;
    v82[1] = v85;
    sub_2142E5FD0(v82, &v81);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
    v64 = v78;
    v65 = v112;
    sub_2146D9018();
    sub_213FB2DF4(&v84, &qword_27C905AD0, &unk_214759900);
    v66 = *(type metadata accessor for CSDMConversationLinkProto(0) + 44);
    sub_213FB2DF4(a1 + v66, &unk_27C903788, "Į\r");
    sub_214534FEC(v64, a1 + v66, type metadata accessor for CSDMHandleProto);
    result = (*(v80 + 56))(a1 + v66, 0, 1, v65);
  }

  v67 = *(v42 + 400);
  if ((v67 & 1) == 0)
  {
    v68 = v42[49];
    result = type metadata accessor for CSDMConversationLinkProto(0);
    v69 = a1 + result[12];
    *v69 = v68;
    v69[8] = v67;
  }

  v70 = *(v42 + 401);
  if (v70 != 2)
  {
    result = type metadata accessor for CSDMConversationLinkProto(0);
    *(a1 + result[13]) = v70;
  }

  v71 = v42[52];
  if (v71)
  {
    v72 = v42[51];
    v73 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 56));
    v74 = v73[1];

    *v73 = v72;
    v73[1] = v71;
  }

  if ((v42[54] & 1) == 0)
  {
    v75 = v42[53];
    if (!v75)
    {
      v76 = 0;
LABEL_34:
      result = type metadata accessor for CSDMConversationLinkProto(0);
      *(a1 + result[15]) = v76;
      return result;
    }

    if (v75 == 1)
    {
      v76 = 1;
      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

int *sub_214529A2C(int *result, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  if ((a2 & 0x100000000) == 0)
  {
    v9 = a2;
    result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
    v10 = v8 + result[5];
    *v10 = v9;
    v10[4] = 0;
  }

  if ((a4 & 1) == 0)
  {
    if (a3 > 3)
    {
      __break(1u);
      return result;
    }

    result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
    *(v8 + result[6]) = a3;
  }

  if ((a5 & 1) == 0)
  {
    result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
    v11 = v8 + result[7];
    *v11 = HIDWORD(a4);
    v11[4] = 0;
  }

  return result;
}

void *sub_214529AD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v6 = sub_2146D8E18();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for CSDMConversationMessageProto(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13 - 8];
  v22 = a1;
  v23 = a2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  v16 = v24;
  sub_21453517C(v14, v12, type metadata accessor for CSDMConversationMessageProto);
  sub_214529CFC(v12);
  sub_2145351E4(v14, type metadata accessor for CSDMConversationMessageProto);
  sub_213FB54FC(a1, a2);
  return memcpy(v16, v18, 0x6F3uLL);
}

uint64_t sub_214529CFC(uint64_t a1)
{
  v350 = v1;
  v2 = MEMORY[0x28223BE20](a1);
  v307 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v309 = &v289[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v289[-v8];
  v345 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v316 = *(v345 - 1);
  v10 = *(v316 + 64);
  v11 = MEMORY[0x28223BE20](v345);
  v344 = &v289[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v343 = &v289[-v13];
  v14 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v322 = *(v14 - 8);
  v323 = v14;
  v15 = *(v322 + 64);
  MEMORY[0x28223BE20](v14);
  v317 = &v289[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  *&v318 = &v289[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v321 = &v289[-v21];
  v330 = type metadata accessor for CSDMConversationReportProto(0);
  v326 = *(v330 - 8);
  v22 = *(v326 + 64);
  MEMORY[0x28223BE20](v330);
  v319 = &v289[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v320 = &v289[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v325 = &v289[-v28];
  v29 = type metadata accessor for CSDMConversationLinkProto(0);
  v328 = *(v29 - 1);
  v329 = v29;
  v30 = *(v328 + 64);
  MEMORY[0x28223BE20](v29);
  v324 = &v289[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v327 = &v289[-v34];
  v315 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v331 = *(v315 - 8);
  v35 = *(v331 + 64);
  v36 = MEMORY[0x28223BE20](v315);
  v38 = &v289[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v36);
  v346 = &v289[-v40];
  MEMORY[0x28223BE20](v39);
  v347 = &v289[-v41];
  v42 = type metadata accessor for CSDMConversationMemberProto(0);
  v334 = *(v42 - 8);
  v43 = *(v334 + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v336 = &v289[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x28223BE20](v44);
  v338 = &v289[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v340 = &v289[-v49];
  v50 = MEMORY[0x28223BE20](v48);
  v339 = &v289[-v51];
  v52 = MEMORY[0x28223BE20](v50);
  v349 = &v289[-v53];
  MEMORY[0x28223BE20](v52);
  v348 = &v289[-v54];
  v55 = type metadata accessor for CSDMConversationParticipantProto(0);
  v335 = *(v55 - 8);
  v56 = *(v335 + 8);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v333 = &v289[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v289[-v60];
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v289[-v63];
  MEMORY[0x28223BE20](v62);
  v66 = &v289[-v65];
  v67 = *(v2 + *(type metadata accessor for CSDMConversationMessageProto(0) + 20));
  swift_beginAccess();
  v313 = *(v67 + 16);
  v68 = *(v67 + 20);
  swift_beginAccess();
  v69 = *(v67 + 21);
  v341 = v2;
  if (v69 != 34)
  {
    result = sub_214655BAC(qword_2147599E8[v69], v354);
    LODWORD(v69) = v354[0];
    if (v354[0] == 34)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }
  }

  v312 = v69;
  v337 = v61;
  v308 = v38;
  v310 = v68;
  swift_beginAccess();
  v311 = *(v67 + 22);
  swift_beginAccess();
  v71 = *(v67 + 24);
  v72 = *(v71 + 16);
  v73 = MEMORY[0x277D84F90];
  v342 = v67;
  v314 = v9;
  if (v72)
  {
    v74 = v350;
    *&v353[0] = MEMORY[0x277D84F90];

    sub_2140A0184(0, v72, 0);
    v352 = v71;
    if (*(v71 + 16))
    {
      v75 = 0;
      v394 = *&v353[0];
      v73 = v352 + ((v335[80] + 32) & ~v335[80]);
      v351 = *(v335 + 9);
      while (1)
      {
        sub_21453517C(v73, v66, type metadata accessor for CSDMConversationParticipantProto);
        sub_21453517C(v66, v64, type metadata accessor for CSDMConversationParticipantProto);
        sub_21452135C(v64, v354);
        v76 = v74;
        if (v74)
        {
          break;
        }

        sub_2145351E4(v66, type metadata accessor for CSDMConversationParticipantProto);
        memcpy(v393, v354, 0x16AuLL);
        v77 = v394;
        *&v353[0] = v394;
        v79 = *(v394 + 16);
        v78 = *(v394 + 24);
        if (v79 >= v78 >> 1)
        {
          v350 = 0;
          sub_2140A0184((v78 > 1), v79 + 1, 1);
          v76 = v350;
          v77 = *&v353[0];
        }

        *(v77 + 16) = v79 + 1;
        v394 = v77;
        memcpy((v77 + 368 * v79 + 32), v393, 0x16AuLL);
        if (v72 - 1 == v75)
        {
          v350 = v76;

          v67 = v342;
          v73 = MEMORY[0x277D84F90];
          goto LABEL_15;
        }

        v74 = v76;
        v73 += v351;
        if (++v75 >= *(v352 + 16))
        {
          goto LABEL_120;
        }
      }

      sub_2145351E4(v66, type metadata accessor for CSDMConversationParticipantProto);

LABEL_38:

      return sub_2145351E4(v341, type metadata accessor for CSDMConversationMessageProto);
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v394 = MEMORY[0x277D84F90];
LABEL_15:
  swift_beginAccess();
  v80 = *(v67 + 40);
  v305 = *(v67 + 32);
  swift_beginAccess();
  v74 = *(v67 + 48);
  v81 = *(v74 + 16);
  v82 = v347;
  *&v332 = v80;
  if (v81)
  {
    v83 = v350;
    *&v353[0] = v73;

    sub_2140A0164(0, v81, 0);
    if (!*(v74 + 16))
    {
LABEL_124:
      __break(1u);
LABEL_125:
      v350 = v82;
      memcpy(v353, v354, 0x389uLL);
      nullsub_1(v353);
      memcpy(v393, v353, 0x389uLL);
      goto LABEL_126;
    }

    v84 = 0;
    v73 = v74 + ((*(v334 + 80) + 32) & ~*(v334 + 80));
    v351 = *(v334 + 72);
    v352 = *&v353[0];
    v85 = v81 - 1;
    while (1)
    {
      v66 = v348;
      sub_21453517C(v73, v348, type metadata accessor for CSDMConversationMemberProto);
      v86 = v349;
      sub_21453517C(v66, v349, type metadata accessor for CSDMConversationMemberProto);
      sub_21451FEE0(v86, v354);
      v87 = v83;
      if (v83)
      {
        sub_2145351E4(v66, type metadata accessor for CSDMConversationMemberProto);

        goto LABEL_38;
      }

      sub_2145351E4(v66, type metadata accessor for CSDMConversationMemberProto);
      memcpy(v393, v354, 0x1F0uLL);
      v88 = v352;
      *&v353[0] = v352;
      v82 = *(v352 + 16);
      v89 = *(v352 + 24);
      if (v82 >= v89 >> 1)
      {
        v350 = 0;
        sub_2140A0164((v89 > 1), v82 + 1, 1);
        v87 = v350;
        v88 = *&v353[0];
      }

      *(v88 + 16) = v82 + 1;
      v352 = v88;
      memcpy((v88 + 496 * v82 + 32), v393, 0x1F0uLL);
      if (v85 == v84)
      {
        break;
      }

      v83 = v87;
      v73 += v351;
      if (++v84 >= *(v74 + 16))
      {
        goto LABEL_124;
      }
    }

    v350 = v87;

    v67 = v342;
    v82 = v347;
  }

  else
  {

    v352 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v90 = *(v67 + 56);
  LODWORD(v302) = *(v67 + 60);
  swift_beginAccess();
  v91 = *(v67 + 64);
  v92 = *(v67 + 72);
  swift_beginAccess();
  v93 = *(v67 + 80);
  v94 = *(v93 + 16);
  v303 = v90;
  v306 = v92;
  v301 = v91;
  if (v94)
  {
    v95 = v350;
    *&v353[0] = MEMORY[0x277D84F90];

    sub_2140A0144(0, v94, 0);
    if (!*(v93 + 16))
    {
LABEL_131:
      __break(1u);
LABEL_132:

      v344 = *v354;
      v301 = *&v354[8];
      v302 = *&v354[16];
      v306 = *&v354[24];
      LODWORD(v248) = v354[32];

      sub_213FDC6D0(v95, v94);
      *v354 = v342;
      v257 = v299;
      *&v354[8] = v298;
      v258 = v300;
      *&v354[16] = v300;
      *&v354[24] = v299;
      v354[32] = v339;

      sub_213FDC9D0(v258, v257);
      v259 = v350;
      sub_214031B48(v324, v304, 2, 0xD000000000000020, 0x800000021478D490, 0xD00000000000001CLL, v93 | 0x8000000000000000);
      v260 = v327;
      v350 = v259;
      if (v259)
      {
        sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
        sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
        sub_2142E8030(v325, v260, v328, v326, sub_213FDC6BC);
        sub_213FB2DF4(v393, &qword_27C905DB8, &unk_2147598E0);

        v342 = *v354;
        v261 = *&v354[8];
        v262 = *&v354[16];
        v263 = *&v354[24];
        LODWORD(v339) = v354[32];

        sub_213FDC6D0(v258, v257);
        v253 = v301;
        v254 = v302;
        v255 = v306;
        v252 = v261;
        v250 = v262;
        v251 = v263;
        v244 = v349;
        v245 = v343;
        v246 = v340;
        v247 = v292;
        v249 = v308;
LABEL_141:
        v240 = v305;
        v243 = v332;
        v241 = v291;
        v242 = v290;
        goto LABEL_142;
      }

      LODWORD(v338) = v248;

      v342 = *v354;
      v297 = *&v354[8];
      v304 = *&v354[16];
      v324 = *&v354[24];
      LODWORD(v339) = v354[32];

      sub_213FDC6D0(v258, v257);
      *v354 = v337;
      v149 = v334;
      *&v354[8] = v333;
      v165 = v335;
      *&v354[16] = v335;
      *&v354[24] = v334;
      v354[32] = v336;

      sub_213FDC9D0(v165, v149);
      v264 = v350;
      sub_214031B48(v321, v329, 2, 0xD00000000000002FLL, 0x800000021478D4C0, 0xD00000000000001CLL, v93 | 0x8000000000000000);
      v350 = v264;
      if (v264)
      {
        sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
        sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
        sub_2142E8030(v325, v327, v328, v326, sub_213FDC6BC);
        sub_213FB2DF4(v393, &qword_27C905DB8, &unk_2147598E0);

        v337 = *v354;
        v265 = *&v354[8];
        v266 = *&v354[16];
        v267 = *&v354[24];
        LODWORD(v336) = v354[32];

        sub_213FDC6D0(v165, v149);
        v253 = v301;
        v254 = v302;
        v255 = v306;
        v252 = v297;
        v250 = v304;
        v251 = v324;
        v333 = v265;
        v334 = v267;
        v335 = v266;
        v244 = v349;
        v245 = v343;
        v246 = v340;
        v247 = v292;
        LOBYTE(v248) = v338;
        v249 = v308;
        goto LABEL_141;
      }

      goto LABEL_139;
    }

    v96 = 0;
    v351 = *&v353[0];
    v97 = v93 + ((*(v331 + 80) + 32) & ~*(v331 + 80));
    v349 = *(v331 + 72);
    --v94;
    while (1)
    {
      v98 = v93;
      sub_21453517C(v97, v82, type metadata accessor for CSDMConversationActivitySessionProto);
      v99 = v82;
      v100 = v82;
      v101 = v346;
      sub_21453517C(v99, v346, type metadata accessor for CSDMConversationActivitySessionProto);
      sub_214527708(v101, v354);
      v102 = v95;
      if (v95)
      {
        sub_2145351E4(v100, type metadata accessor for CSDMConversationActivitySessionProto);

        goto LABEL_38;
      }

      sub_2145351E4(v100, type metadata accessor for CSDMConversationActivitySessionProto);
      memcpy(v393, v354, 0x389uLL);
      v103 = v351;
      *&v353[0] = v351;
      v105 = *(v351 + 16);
      v104 = *(v351 + 24);
      if (v105 >= v104 >> 1)
      {
        v350 = 0;
        sub_2140A0144((v104 > 1), v105 + 1, 1);
        v102 = v350;
        v103 = *&v353[0];
      }

      *(v103 + 16) = v105 + 1;
      v351 = v103;
      memcpy((v103 + 912 * v105 + 32), v393, 0x389uLL);
      v93 = v98;
      if (v94 == v96)
      {
        break;
      }

      v95 = v102;
      v97 += v349;
      ++v96;
      v82 = v347;
      if (v96 >= *(v98 + 16))
      {
        goto LABEL_131;
      }
    }

    v350 = v102;

    v67 = v342;
  }

  else
  {

    v351 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v106 = *(v67 + 88);
  v107 = *(v67 + 96);
  v108 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  v109 = v327;
  sub_213FB2E54(v67 + v108, v327, &qword_27C903CD8, &qword_2146E9808);
  LODWORD(v108) = (*(v328 + 48))(v109, 1, v329);
  v304 = v107;

  sub_213FB2DF4(v109, &qword_27C903CD8, &qword_2146E9808);
  v110 = v108 == 1;
  v111 = v330;
  if (v110)
  {
    v324 = v106;
    sub_214535138(v392);
  }

  else
  {
    v112 = v324;
    v113 = v341;
    sub_21400ABFC(v324);
    v114 = v350;
    sub_21452802C(v112, v354);
    if (v114)
    {
      sub_2145351E4(v113, type metadata accessor for CSDMConversationMessageProto);
    }

    v324 = v106;
    v350 = 0;
    memcpy(v393, v354, 0x1B1uLL);
    nullsub_1(v393);
    memcpy(v392, v393, 0x1B1uLL);
  }

  v115 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v116 = v342;
  swift_beginAccess();
  v117 = v325;
  sub_213FB2E54(v116 + v115, v325, &qword_27C903CD0, &qword_2146E9800);
  v349 = *(v326 + 48);
  v118 = v111;
  v119 = (v349)(v117, 1, v111);
  sub_213FB2DF4(v117, &qword_27C903CD0, &qword_2146E9800);
  if (v119 == 1)
  {
    memset(v391, 0, 25);
    v390 = 0u;
    v389 = 0u;
    v388 = 0u;
    v387 = 0u;
    v120 = v337;
  }

  else
  {
    v121 = v320;
    sub_213FB2E54(v116 + v115, v320, &qword_27C903CD0, &qword_2146E9800);
    v122 = v349;
    if ((v349)(v121, 1, v118) == 1)
    {
      v123 = v319;
      sub_2146D8DE8();
      v124 = &v123[v118[5]];
      *v124 = 0;
      v124[1] = 0;
      v125 = &v123[v118[6]];
      *v125 = 0;
      v125[8] = 1;
      v126 = &v123[v118[7]];
      *v126 = 0;
      v126[1] = 0;
      v127 = v118;
      if (v122(v121, 1, v118) != 1)
      {
        sub_213FB2DF4(v121, &qword_27C903CD0, &qword_2146E9800);
      }
    }

    else
    {
      v127 = v118;
      v123 = v319;
      sub_214534FEC(v121, v319, type metadata accessor for CSDMConversationReportProto);
    }

    v128 = v127;
    v129 = v127[6];
    v130 = &v123[v127[5]];
    v132 = *v130;
    v131 = v130[1];
    v133 = *&v123[v129];
    v134 = v123[v129 + 8];
    v135 = &v123[v128[7]];
    v136 = *v135;
    v137 = *(v135 + 1);

    v138 = v132;
    v139 = v350;
    sub_2140DDB3C(v138, v131, v133, v134, v136, v137, v354);
    v120 = v337;
    if (v139)
    {
      sub_2145351E4(v123, type metadata accessor for CSDMConversationReportProto);
      sub_2145351E4(v341, type metadata accessor for CSDMConversationMessageProto);
      sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);

      goto LABEL_64;
    }

    v350 = 0;
    sub_2145351E4(v123, type metadata accessor for CSDMConversationReportProto);
    v389 = *&v354[32];
    v390 = *&v354[48];
    v391[0] = *&v354[64];
    *(v391 + 9) = *&v354[73];
    v387 = *v354;
    v388 = *&v354[16];
  }

  v140 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  v141 = v342;
  swift_beginAccess();
  LODWORD(v320) = *(v141 + v140);
  v142 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  swift_beginAccess();
  v143 = v321;
  sub_213FB2E54(v141 + v142, v321, &qword_27C903CC8, &qword_2146E97F8);
  v144 = v323;
  v349 = *(v322 + 48);
  v145 = (v349)(v143, 1, v323);
  sub_213FB2DF4(v143, &qword_27C903CC8, &qword_2146E97F8);
  if (v145 != 1)
  {
    v150 = v318;
    sub_213FB2E54(v141 + v142, v318, &qword_27C903CC8, &qword_2146E97F8);
    v151 = v349;
    v152 = (v349)(v150, 1, v144);
    v153 = v350;
    if (v152 == 1)
    {
      v154 = v317;
      sub_2146D8DE8();
      *&v154[*(v144 + 20)] = xmmword_2146E68C0;
      *&v154[*(v144 + 24)] = xmmword_2146E68C0;
      v110 = v151(v150, 1, v144) == 1;
      v155 = v150;
      v156 = v341;
      if (!v110)
      {
        sub_213FB2DF4(v155, &qword_27C903CC8, &qword_2146E97F8);
      }
    }

    else
    {
      v154 = v317;
      sub_214534FEC(v150, v317, type metadata accessor for CSDMEncryptedConversationMessageProto);
      v156 = v341;
    }

    sub_21452CFDC(v154, v354);
    v148 = v338;
    v149 = MEMORY[0x277D84F90];
    if (!v153)
    {
      v350 = 0;
      v146 = *v354;
      v327 = *&v354[8];
      v328 = *&v354[16];
      v147 = *&v354[24];
      goto LABEL_66;
    }

    sub_2145351E4(v156, type metadata accessor for CSDMConversationMessageProto);
    sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);

LABEL_64:
  }

  v146 = 0;
  v147 = 0;
  v327 = 0xB000000000000000;
  v328 = 0;
  v148 = v338;
  v149 = MEMORY[0x277D84F90];
LABEL_66:
  v157 = v141 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle;
  swift_beginAccess();
  v158 = *(v157 + 8);
  v321 = *v157;
  v329 = v158;
  v159 = v141 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid;
  swift_beginAccess();
  v160 = *(v159 + 8);
  v319 = *v159;
  v330 = v160;
  v161 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  swift_beginAccess();
  v162 = *(v141 + v161);
  v325 = v146;
  if (v162 != 34)
  {
    result = sub_214655BAC(qword_2147599E8[v162], v354);
    LODWORD(v162) = v354[0];
    if (v354[0] == 34)
    {
      goto LABEL_147;
    }
  }

  LODWORD(v322) = v162;
  v326 = v147;
  v163 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  swift_beginAccess();
  v164 = *(v141 + v163);
  v165 = *(v164 + 16);
  if (v165)
  {
    *v354 = v149;

    sub_2140A0124(0, v165, 0);
    v166 = *v354;
    v167 = *(v316 + 80);
    v323 = v164;
    v149 = v164 + ((v167 + 32) & ~v167);
    v346 = *(v316 + 72);
    do
    {
      v168 = v343;
      sub_21453517C(v149, v343, type metadata accessor for CSDMConversationInvitationPreferenceProto);
      v169 = v168;
      v170 = v344;
      sub_214534FEC(v169, v344, type metadata accessor for CSDMConversationInvitationPreferenceProto);
      v171 = v345[6];
      v172 = &v170[v345[5]];
      v173 = *v172;
      LODWORD(v348) = v172[4];
      v174 = v170[v171];
      if (v174 == 4)
      {
        v175 = 0;
      }

      else
      {
        v175 = v170[v171];
      }

      v347 = v175;
      v176 = &v170[v345[7]];
      v177 = *v176;
      LODWORD(v349) = v176[4];
      sub_2145351E4(v170, type metadata accessor for CSDMConversationInvitationPreferenceProto);
      *v354 = v166;
      v179 = *(v166 + 16);
      v178 = *(v166 + 24);
      if (v179 >= v178 >> 1)
      {
        sub_2140A0124((v178 > 1), v179 + 1, 1);
        v166 = *v354;
      }

      *(v166 + 16) = v179 + 1;
      v180 = v166 + 32 * v179;
      *(v180 + 32) = v173;
      *(v180 + 36) = v348;
      *(v180 + 40) = v347;
      *(v180 + 48) = v174 == 4;
      *(v180 + 52) = v177;
      v149 += v346;
      *(v180 + 56) = v349;
      --v165;
    }

    while (v165);
    v347 = v166;

    v141 = v342;
    v120 = v337;
    v148 = v338;
  }

  else
  {

    v347 = MEMORY[0x277D84F90];
  }

  v181 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  swift_beginAccess();
  v93 = *(v141 + v181);
  v182 = *(v93 + 16);
  if (v182)
  {
    *&v353[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v182, 0);
    if (*(v93 + 16))
    {
      v149 = 0;
      v183 = *&v353[0];
      v165 = v93 + ((*(v334 + 80) + 32) & ~*(v334 + 80));
      v348 = *(v334 + 72);
      v349 = v182 - 1;
      while (1)
      {
        v184 = v93;
        v185 = v339;
        sub_21453517C(v165, v339, type metadata accessor for CSDMConversationMemberProto);
        v186 = v340;
        sub_21453517C(v185, v340, type metadata accessor for CSDMConversationMemberProto);
        v187 = v350;
        sub_21451FEE0(v186, v354);
        if (v187)
        {
          break;
        }

        sub_2145351E4(v185, type metadata accessor for CSDMConversationMemberProto);
        memcpy(v393, v354, 0x1F0uLL);
        *&v353[0] = v183;
        v189 = *(v183 + 16);
        v188 = *(v183 + 24);
        v350 = 0;
        if (v189 >= v188 >> 1)
        {
          sub_2140A0164((v188 > 1), v189 + 1, 1);
          v183 = *&v353[0];
        }

        *(v183 + 16) = v189 + 1;
        memcpy((v183 + 496 * v189 + 32), v393, 0x1F0uLL);
        v93 = v184;
        if (v349 == v149)
        {
          v348 = v183;

          v141 = v342;
          v120 = v337;
          v148 = v338;
          goto LABEL_90;
        }

        v165 += v348;
        if (++v149 >= *(v184 + 16))
        {
          goto LABEL_136;
        }
      }

      sub_2145351E4(v185, type metadata accessor for CSDMConversationMemberProto);

LABEL_101:

      sub_2142E8030(v325, v327, v328, v326, sub_213FDC6BC);
      sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
      sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);

      return sub_2145351E4(v341, type metadata accessor for CSDMConversationMessageProto);
    }

LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v348 = MEMORY[0x277D84F90];
LABEL_90:
  v190 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v93 = *(v141 + v190);
  v191 = *(v93 + 16);
  if (v191)
  {
    *&v353[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v191, 0);
    if (!*(v93 + 16))
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v149 = 0;
    v192 = *&v353[0];
    v165 = v93 + ((*(v334 + 80) + 32) & ~*(v334 + 80));
    v349 = *(v334 + 72);
    while (1)
    {
      v193 = v93;
      sub_21453517C(v165, v148, type metadata accessor for CSDMConversationMemberProto);
      v194 = v148;
      v195 = v148;
      v196 = v336;
      sub_21453517C(v194, v336, type metadata accessor for CSDMConversationMemberProto);
      v197 = v350;
      sub_21451FEE0(v196, v354);
      if (v197)
      {
        sub_2145351E4(v195, type metadata accessor for CSDMConversationMemberProto);

        goto LABEL_101;
      }

      sub_2145351E4(v195, type metadata accessor for CSDMConversationMemberProto);
      memcpy(v393, v354, 0x1F0uLL);
      *&v353[0] = v192;
      v199 = *(v192 + 16);
      v198 = *(v192 + 24);
      v350 = 0;
      if (v199 >= v198 >> 1)
      {
        sub_2140A0164((v198 > 1), v199 + 1, 1);
        v192 = *&v353[0];
      }

      *(v192 + 16) = v199 + 1;
      memcpy((v192 + 496 * v199 + 32), v393, 0x1F0uLL);
      v93 = v193;
      if (v191 - 1 == v149)
      {
        break;
      }

      v165 += v349;
      ++v149;
      v148 = v338;
      if (v149 >= *(v193 + 16))
      {
        goto LABEL_137;
      }
    }

    v346 = v192;

    v141 = v342;
    v120 = v337;
  }

  else
  {
    v346 = MEMORY[0x277D84F90];
  }

  v200 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  swift_beginAccess();
  v93 = *(v141 + v200);
  v201 = *(v93 + 16);
  if (!v201)
  {
    v345 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  *&v353[0] = MEMORY[0x277D84F90];

  sub_2140A0184(0, v201, 0);
  v349 = v93;
  if (*(v93 + 16))
  {
    v149 = 0;
    v202 = *&v353[0];
    v93 = v349 + ((v335[80] + 32) & ~v335[80]);
    v203 = *(v335 + 9);
    v165 = v201 - 1;
    while (1)
    {
      sub_21453517C(v93, v120, type metadata accessor for CSDMConversationParticipantProto);
      v204 = v333;
      sub_21453517C(v120, v333, type metadata accessor for CSDMConversationParticipantProto);
      v205 = v350;
      sub_21452135C(v204, v354);
      if (v205)
      {
        sub_2145351E4(v120, type metadata accessor for CSDMConversationParticipantProto);

        sub_2142E8030(v325, v327, v328, v326, sub_213FDC6BC);
        sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
        sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);

        return sub_2145351E4(v341, type metadata accessor for CSDMConversationMessageProto);
      }

      sub_2145351E4(v120, type metadata accessor for CSDMConversationParticipantProto);
      memcpy(v393, v354, 0x16AuLL);
      *&v353[0] = v202;
      v207 = *(v202 + 16);
      v206 = *(v202 + 24);
      v350 = 0;
      if (v207 >= v206 >> 1)
      {
        sub_2140A0184((v206 > 1), v207 + 1, 1);
        v202 = *&v353[0];
      }

      *(v202 + 16) = v207 + 1;
      memcpy((v202 + 368 * v207 + 32), v393, 0x16AuLL);
      if (v165 == v149)
      {
        break;
      }

      v93 += v203;
      ++v149;
      v120 = v337;
      if (v149 >= *(v349 + 16))
      {
        goto LABEL_138;
      }
    }

    v345 = v202;

    v141 = v342;
LABEL_115:
    v208 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
    swift_beginAccess();
    LODWORD(v343) = *(v141 + v208);
    v209 = v141 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier;
    swift_beginAccess();
    v210 = *(v209 + 8);
    v340 = *v209;
    v211 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
    swift_beginAccess();
    v212 = v314;
    sub_213FB2E54(v141 + v211, v314, &qword_27C903CB8, &qword_2146E97F0);
    v213 = v315;
    v344 = *(v331 + 48);
    v214 = (v344)(v212, 1, v315);
    v349 = v210;

    sub_213FB2DF4(v212, &qword_27C903CB8, &qword_2146E97F0);
    if (v214 == 1)
    {
      sub_214534D10(v393);
      v66 = v325;
      v73 = v326;
      v74 = v328;
LABEL_126:
      v227 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
      v228 = v342;
      result = swift_beginAccess();
      if (*(v228 + v227) > 3u)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v317) = *(v228 + v227);
        v229 = v228 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
        swift_beginAccess();
        LODWORD(v316) = *v229;
        v230 = *(v229 + 4);
        v231 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
        result = swift_beginAccess();
        LODWORD(v315) = *(v228 + v231);
        if (v315 <= 3)
        {
          v232 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
          swift_beginAccess();
          LODWORD(v314) = *(v228 + v232);
          sub_213FB2E54(v392, v354, &qword_27C905D58, &qword_2146F4098);
          sub_213FB2E54(&v387, v354, &qword_27C905D70, &qword_2146F40A0);
          v233 = v327;
          sub_2142E8030(v66, v327, v74, v73, sub_213FDCA18);
          v328 = v74;
          sub_213FB2E54(v393, v354, &qword_27C905DB8, &unk_2147598E0);
          sub_214654964(v370);
          v234 = v370[0];
          v235 = v370[1];
          v236 = v370[2];
          v237 = v370[3];
          v238 = v371;
          sub_214654998(v368);
          v344 = v368[0];
          v296 = v368[2];
          v297 = v368[1];
          v295 = v368[3];
          LODWORD(v338) = v369;
          sub_2146549CC(v366);
          v342 = v366[0];
          v300 = v366[2];
          v298 = v366[1];
          v299 = v366[3];
          LODWORD(v339) = v367;
          sub_214654B18(v364);
          v337 = v364[0];
          v335 = v364[2];
          v333 = v364[1];
          v334 = v364[3];
          LODWORD(v336) = v365;
          sub_214654C54(&v360);
          v318 = v360;
          v323 = v361;
          v331 = v362;
          LODWORD(v308) = v363;
          v374 = v310;
          v373 = v302;
          memcpy(&v354[7], v392, 0x1B1uLL);
          *(&v353[2] + 7) = v389;
          *(&v353[3] + 7) = v390;
          *(&v353[4] + 7) = v391[0];
          v353[5] = *(v391 + 9);
          *(v353 + 7) = v387;
          *(&v353[1] + 7) = v388;
          memcpy(v375, v393, sizeof(v375));
          v372 = v230;
          v292 = v310;
          LODWORD(v309) = v302;
          memcpy(v386, v354, 0x1B8uLL);
          *&v386[59] = v353[2];
          *&v386[61] = v353[3];
          *&v386[63] = v353[4];
          *&v386[65] = *(v391 + 9);
          *&v386[55] = v353[0];
          *&v386[57] = v353[1];
          v310 = v230;
          *v354 = v234;
          *&v354[8] = v235;
          *&v354[16] = v236;
          *&v354[24] = v237;
          v354[32] = v238;
          v293 = v235;

          v294 = v236;
          v302 = v237;
          sub_213FDC9D0(v236, v237);
          v239 = v350;
          sub_214031B48(v305, v332, 2, 0xD000000000000033, 0x800000021478D420, 0xD00000000000001CLL, 0x800000021478A360);
          if (v239)
          {
            v350 = v239;
            sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
            sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
            v327 = v233;
            sub_2142E8030(v325, v233, v328, v326, sub_213FDC6BC);
            sub_213FB2DF4(v393, &qword_27C905DB8, &unk_2147598E0);

            v332 = *v354;
            v240 = *&v354[16];
            v241 = *&v354[24];
            v242 = v354[32];

            sub_213FDC6D0(v294, v302);
            v243 = v332;
            v244 = v349;
            v245 = v343;
            v246 = v340;
            v247 = v292;
            LOBYTE(v248) = v338;
            v249 = v308;
            v251 = v299;
            v250 = v300;
            v253 = v297;
            v252 = v298;
            v255 = v295;
            v254 = v296;
LABEL_142:
            *v354 = v313;
            v354[4] = v247;
            v354[5] = v312;
            v354[6] = v311;
            *&v354[8] = v394;
            *&v354[16] = v243;
            *&v354[32] = v240;
            *&v354[40] = v241;
            v354[48] = v242;
            *&v354[49] = v385[0];
            *&v354[52] = *(v385 + 3);
            *&v354[56] = v352;
            *&v354[64] = v303;
            v354[68] = v309;
            v354[71] = v384;
            *&v354[69] = v383;
            *&v354[72] = v344;
            *&v354[80] = v253;
            *&v354[88] = v254;
            *&v354[96] = v255;
            v354[104] = v248;
            *&v354[108] = *(v382 + 3);
            *&v354[105] = v382[0];
            *&v354[112] = v351;
            *&v354[120] = v342;
            *&v354[128] = v252;
            *&v354[136] = v250;
            *&v354[144] = v251;
            v354[152] = v339;
            memcpy(&v354[153], v386, 0x218uLL);
            v354[689] = v320;
            *&v354[690] = v380;
            *&v354[694] = v381;
            *&v354[696] = v325;
            *&v354[704] = v327;
            *&v354[712] = v328;
            *&v354[720] = v326;
            *&v354[728] = v337;
            *&v354[736] = v333;
            *&v354[744] = v335;
            *&v354[752] = v334;
            v354[760] = v336;
            *&v354[761] = *v379;
            *&v354[764] = *&v379[3];
            *&v354[768] = v318;
            *&v354[784] = v323;
            *&v354[792] = v331;
            v354[800] = v249;
            v354[801] = v322;
            *&v354[802] = v377;
            *&v354[806] = v378;
            *&v354[808] = v347;
            *&v354[816] = v348;
            *&v354[824] = v346;
            *&v354[832] = v345;
            v354[840] = v245;
            *&v354[841] = v376[0];
            *&v354[844] = *(v376 + 3);
            *&v354[848] = v246;
            *&v354[856] = v244;
            memcpy(&v354[864], v375, 0x389uLL);
            v355 = v317;
            v356 = v316;
            v357 = v310;
            v358 = v315;
            v359 = v314;
            sub_2142E77C8(v354);
            return sub_2145351E4(v341, type metadata accessor for CSDMConversationMessageProto);
          }

          v332 = *v354;
          v305 = *&v354[16];
          v291 = *&v354[24];
          v290 = v354[32];

          sub_213FDC6D0(v294, v302);
          *v354 = v344;
          v95 = v296;
          *&v354[8] = v297;
          *&v354[16] = v296;
          v256 = v295;
          *&v354[24] = v295;
          v354[32] = v338;

          sub_213FDC9D0(v95, v256);
          v93 = "BlastDoor/Untrusted.swift";
          sub_214031B48(v301, v306, 2, 0xD00000000000002FLL, 0x800000021478D460, 0xD00000000000001CLL, 0x800000021478A360);
          v94 = v256;
          v350 = 0;
          goto LABEL_132;
        }
      }

      __break(1u);
      goto LABEL_146;
    }

    v215 = v342 + v211;
    v64 = v309;
    sub_213FB2E54(v215, v309, &qword_27C903CB8, &qword_2146E97F0);
    v216 = v344;
    v217 = (v344)(v64, 1, v213);
    v73 = v326;
    v74 = v328;
    if (v217 == 1)
    {
      v218 = v213;
      v219 = v308;
      sub_2146D8DE8();
      v220 = (v219 + v218[5]);
      *v220 = 0;
      v220[1] = 0;
      v221 = v218[6];
      v222 = type metadata accessor for CSDMConversationActivityProto(0);
      (*(*(v222 - 8) + 56))(v219 + v221, 1, 1, v222);
      v223 = v219 + v218[7];
      *v223 = 0;
      *(v223 + 8) = 1;
      v224 = (v216)(v64, 1, v218);
      v225 = v341;
      v66 = v325;
      if (v224 != 1)
      {
        sub_213FB2DF4(v64, &qword_27C903CB8, &qword_2146E97F0);
      }

LABEL_122:
      v226 = v350;
      sub_214527708(v219, v354);
      v82 = v226;
      if (v226)
      {
        sub_2145351E4(v225, type metadata accessor for CSDMConversationMessageProto);
        sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
        sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
        sub_2142E8030(v66, v327, v74, v73, sub_213FDC6BC);
      }

      goto LABEL_125;
    }

LABEL_121:
    v219 = v308;
    sub_214534FEC(v64, v308, type metadata accessor for CSDMConversationActivitySessionProto);
    v225 = v341;
    v66 = v325;
    goto LABEL_122;
  }

LABEL_138:
  __break(1u);
LABEL_139:

  v337 = *v354;
  v329 = *&v354[8];
  v321 = *&v354[16];
  v268 = *&v354[24];
  LODWORD(v336) = v354[32];

  sub_213FDC6D0(v165, v149);
  *v354 = v318;
  v269 = v323;
  *&v354[16] = v323;
  v248 = v331;
  *&v354[24] = v331;
  v354[32] = v308;

  sub_213FDC9D0(v269, v248);
  v270 = v350;
  sub_214031B48(v319, v330, 2, 0xD00000000000002DLL, 0x800000021478D4F0, 0xD00000000000001CLL, v93 | 0x8000000000000000);
  v350 = v270;
  if (v270)
  {
    sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
    sub_2142E8030(v325, v327, v328, v326, sub_213FDC6BC);
    sub_213FB2DF4(v393, &qword_27C905DB8, &unk_2147598E0);

    v318 = *v354;
    v271 = *&v354[16];
    v272 = *&v354[24];
    v249 = v354[32];

    sub_213FDC6D0(v269, v248);
    v253 = v301;
    v254 = v302;
    v255 = v306;
    v252 = v297;
    v250 = v304;
    v251 = v324;
    v333 = v329;
    v334 = v268;
    v335 = v321;
    v323 = v271;
    v331 = v272;
    v244 = v349;
    v245 = v343;
    v246 = v340;
    v247 = v292;
    LOBYTE(v248) = v338;
    goto LABEL_141;
  }

  sub_213FB2DF4(v392, &qword_27C905D58, &qword_2146F4098);
  sub_213FB2DF4(&v387, &qword_27C905D70, &qword_2146F40A0);
  v273 = v325;
  v335 = v268;
  v274 = v328;
  sub_2142E8030(v325, v327, v328, v326, sub_213FDC6BC);
  sub_213FB2DF4(v393, &qword_27C905DB8, &unk_2147598E0);

  v275 = *&v354[16];
  v276 = *&v354[24];
  v277 = v354[32];

  sub_213FDC6D0(v269, v248);
  sub_2145351E4(v341, type metadata accessor for CSDMConversationMessageProto);
  v278 = v307;
  *v307 = v313;
  *(v278 + 4) = v292;
  v279 = v311;
  *(v278 + 5) = v312;
  *(v278 + 6) = v279;
  *(v278 + 1) = v394;
  *(v278 + 1) = v332;
  v280 = v291;
  *(v278 + 4) = v305;
  *(v278 + 5) = v280;
  *(v278 + 48) = v290;
  *(v278 + 49) = v385[0];
  v278[13] = *(v385 + 3);
  *(v278 + 7) = v352;
  v278[16] = v303;
  *(v278 + 68) = v309;
  LOWORD(v280) = v383;
  *(v278 + 71) = v384;
  *(v278 + 69) = v280;
  v281 = v301;
  v282 = v302;
  *(v278 + 9) = v344;
  *(v278 + 10) = v281;
  v283 = v306;
  *(v278 + 11) = v282;
  *(v278 + 12) = v283;
  *(v278 + 104) = v338;
  *(v278 + 105) = v382[0];
  v278[27] = *(v382 + 3);
  v284 = v342;
  *(v278 + 14) = v351;
  *(v278 + 15) = v284;
  v285 = v304;
  *(v278 + 16) = v297;
  *(v278 + 17) = v285;
  *(v278 + 18) = v324;
  *(v278 + 152) = v339;
  memcpy(v278 + 153, v386, 0x218uLL);
  *(v278 + 689) = v320;
  *(v278 + 690) = v380;
  *(v278 + 347) = v381;
  *(v278 + 87) = v273;
  v286 = v326;
  *(v278 + 88) = v327;
  *(v278 + 89) = v274;
  *(v278 + 90) = v286;
  *(v278 + 91) = v337;
  *(v278 + 92) = v329;
  *(v278 + 93) = v321;
  *(v278 + 94) = v335;
  *(v278 + 760) = v336;
  *(v278 + 761) = *v379;
  v278[191] = *&v379[3];
  *(v278 + 48) = *v354;
  *(v278 + 98) = v275;
  *(v278 + 99) = v276;
  *(v278 + 800) = v277;
  *(v278 + 801) = v322;
  *(v278 + 802) = v377;
  *(v278 + 403) = v378;
  v287 = v348;
  *(v278 + 101) = v347;
  *(v278 + 102) = v287;
  v288 = v345;
  *(v278 + 103) = v346;
  *(v278 + 104) = v288;
  *(v278 + 840) = v343;
  v278[211] = *(v376 + 3);
  *(v278 + 841) = v376[0];
  *(v278 + 106) = v340;
  *(v278 + 107) = v349;
  result = memcpy(v278 + 216, v375, 0x389uLL);
  *(v278 + 1769) = v317;
  v278[443] = v316;
  *(v278 + 1776) = v310;
  *(v278 + 1777) = v315;
  *(v278 + 1778) = v314;
  return result;
}

uint64_t sub_21452CFDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v5 = (a1 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
    sub_213FDCA18(v7, v6);
  }

  v8 = (a1 + *(v4 + 24));
  v10 = *v8;
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_213FDCA18(v10, v9);
  }

  result = sub_2145351E4(a1, type metadata accessor for CSDMEncryptedConversationMessageProto);
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v9;
  return result;
}

uint64_t sub_21452D098(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v422 = &v421 - v8;
  v9 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v445 = *(v9 - 8);
  v446 = v9;
  v10 = *(v445 + 64);
  MEMORY[0x28223BE20](v9);
  v427 = &v421 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v426 = &v421 - v14;
  v439 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v425 = *(v439 - 8);
  v15 = *(v425 + 64);
  MEMORY[0x28223BE20](v439);
  v438 = &v421 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v434 = &v421 - v19;
  v444 = type metadata accessor for CSDMConversationReportProto(0);
  v433 = *(v444 - 8);
  v20 = *(v433 + 64);
  MEMORY[0x28223BE20](v444);
  v440 = (&v421 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v424 = &v421 - v24;
  v437 = type metadata accessor for CSDMConversationLinkProto(0);
  v423 = *(v437 - 8);
  v25 = *(v423 + 64);
  MEMORY[0x28223BE20](v437);
  v436 = &v421 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v447 = *(v27 - 8);
  v448 = v27;
  v28 = *(v447 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v435 = &v421 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v432 = &v421 - v31;
  v475 = type metadata accessor for CSDMConversationMemberProto(0);
  v451 = *(v475 - 8);
  v32 = *(v451 + 64);
  v33 = MEMORY[0x28223BE20](v475);
  v429 = &v421 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v428 = &v421 - v36;
  MEMORY[0x28223BE20](v35);
  v431 = &v421 - v37;
  v38 = type metadata accessor for CSDMConversationParticipantProto(0);
  v449 = *(v38 - 8);
  v450 = v38;
  v39 = *(v449 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v430 = &v421 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v421 - v42;
  v44 = &v421 - v42;
  if ((v4[1] & 1) == 0)
  {
    v45 = *v4;
    v46 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
    v47 = *(v5 + v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v5 + v46);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v53 = sub_21402CD8C(v49);

      *(v5 + v46) = v53;
      v49 = v53;
    }

    swift_beginAccess();
    *(v49 + 16) = v45;
    *(v49 + 20) = 0;
    v43 = v44;
  }

  v54 = *(v4 + 5);
  switch(*(v4 + 5))
  {
    case 1:
      v54 = 1;
      goto LABEL_39;
    case 2:
      v54 = 2;
      goto LABEL_39;
    case 3:
      v54 = 3;
      goto LABEL_39;
    case 4:
      v54 = 4;
      goto LABEL_39;
    case 5:
      v54 = 5;
      goto LABEL_39;
    case 6:
      v54 = 6;
      goto LABEL_39;
    case 7:
      v54 = 8;
      goto LABEL_39;
    case 8:
      v54 = 9;
      goto LABEL_39;
    case 9:
      v54 = 10;
      goto LABEL_39;
    case 0xA:
      v54 = 11;
      goto LABEL_39;
    case 0xB:
      v54 = 12;
      goto LABEL_39;
    case 0xC:
      v54 = 13;
      goto LABEL_39;
    case 0xD:
      v54 = 14;
      goto LABEL_39;
    case 0xE:
      v54 = 15;
      goto LABEL_39;
    case 0xF:
      v54 = 16;
      goto LABEL_39;
    case 0x10:
      v54 = 19;
      goto LABEL_39;
    case 0x11:
      v54 = 21;
      goto LABEL_39;
    case 0x12:
      v54 = 22;
      goto LABEL_39;
    case 0x13:
      v54 = 23;
      goto LABEL_39;
    case 0x14:
      v54 = 24;
      goto LABEL_39;
    case 0x15:
      v54 = 25;
      goto LABEL_39;
    case 0x16:
      v54 = 26;
      goto LABEL_39;
    case 0x17:
      v54 = 27;
      goto LABEL_39;
    case 0x18:
      v54 = 28;
      goto LABEL_39;
    case 0x19:
      v54 = 29;
      goto LABEL_39;
    case 0x1A:
      v54 = 30;
      goto LABEL_39;
    case 0x1B:
      v54 = 31;
      goto LABEL_39;
    case 0x1C:
      v54 = 32;
      goto LABEL_39;
    case 0x1D:
      v54 = 33;
      goto LABEL_39;
    case 0x1E:
      v54 = 34;
      goto LABEL_39;
    case 0x1F:
      v54 = 35;
      goto LABEL_39;
    case 0x20:
      v54 = 36;
      goto LABEL_39;
    case 0x21:
      v54 = 37;
      goto LABEL_39;
    case 0x22:
      goto LABEL_43;
    default:
LABEL_39:
      v55 = sub_214028EFC(v54);
      if (v55 == 34)
      {
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      v56 = v55;
      v57 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
      v58 = *(v5 + v57);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(v5 + v57);
      if ((v59 & 1) == 0)
      {
        v61 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v64 = sub_21402CD8C(v60);

        *(v5 + v57) = v64;
        v60 = v64;
      }

      swift_beginAccess();
      *(v60 + 21) = v56;
      v43 = v44;
LABEL_43:
      v65 = *(v4 + 6);
      if (v65 != 2)
      {
        v66 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
        v67 = *(v5 + v66);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v69 = *(v5 + v66);
        if ((v68 & 1) == 0)
        {
          v70 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          v71 = *(v70 + 48);
          v72 = *(v70 + 52);
          swift_allocObject();
          v73 = sub_21402CD8C(v69);

          *(v5 + v66) = v73;
          v69 = v73;
        }

        swift_beginAccess();
        *(v69 + 22) = v65 & 1;
        v43 = v44;
      }

      v441 = v4;
      v442 = v5;
      v74 = *(v4 + 1);
      v75 = *(v74 + 16);
      v76 = MEMORY[0x277D84F90];
      if (v75)
      {
        *&v460[0] = MEMORY[0x277D84F90];
        sub_2140A0270(0, v75, 0);
        v76 = *&v460[0];
        v77 = (v74 + 32);
        do
        {
          v78 = memcpy(v474, v77, 0x16AuLL);
          MEMORY[0x28223BE20](v78);
          v419 = v474;
          sub_2142E6788(v474, v472);
          sub_214534FA4(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);
          sub_2146D9018();
          sub_2142E6530(v474);
          *&v460[0] = v76;
          v80 = *(v76 + 16);
          v79 = *(v76 + 24);
          if (v80 >= v79 >> 1)
          {
            sub_2140A0270(v79 > 1, v80 + 1, 1);
            v76 = *&v460[0];
          }

          *(v76 + 16) = v80 + 1;
          sub_214534FEC(v43, v76 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v80, type metadata accessor for CSDMConversationParticipantProto);
          v77 += 368;
          --v75;
        }

        while (v75);
      }

      v81 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
      v82 = v442;
      v83 = *(v442 + v81);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v82 + v81);
      if (v84)
      {
        v86 = v82;
      }

      else
      {
        v87 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v88 = *(v87 + 48);
        v89 = *(v87 + 52);
        swift_allocObject();
        v90 = sub_21402CD8C(v85);

        v86 = v82;
        *(v82 + v81) = v90;
        v85 = v90;
      }

      swift_beginAccess();
      v91 = *(v85 + 24);
      *(v85 + 24) = v76;

      v92 = v441[5];
      v443 = v81;
      if (!v92)
      {
        goto LABEL_60;
      }

      if (v92 == 1)
      {
        goto LABEL_229;
      }

      v93 = v441[4];

      v94 = *(v86 + v81);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v81;
      v97 = *(v86 + v81);
      if ((v95 & 1) == 0)
      {
        v98 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v99 = *(v98 + 48);
        v100 = *(v98 + 52);
        swift_allocObject();
        v101 = sub_21402CD8C(v97);

        *(v86 + v96) = v101;
        v97 = v101;
      }

      swift_beginAccess();
      v102 = *(v97 + 40);
      *(v97 + 32) = v93;
      *(v97 + 40) = v92;

      v81 = v443;
LABEL_60:
      v103 = v441[7];
      v104 = *(v103 + 16);
      v105 = MEMORY[0x277D84F90];
      if (v104)
      {
        *&v460[0] = MEMORY[0x277D84F90];
        sub_2140A022C(0, v104, 0);
        v105 = *&v460[0];
        v106 = (v103 + 32);
        v107 = v431;
        do
        {
          v108 = memcpy(v473, v106, sizeof(v473));
          MEMORY[0x28223BE20](v108);
          v419 = v473;
          sub_2142E627C(v473, v472);
          sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
          sub_2146D9018();
          sub_2142E6080(v473);
          *&v460[0] = v105;
          v110 = *(v105 + 16);
          v109 = *(v105 + 24);
          if (v110 >= v109 >> 1)
          {
            sub_2140A022C(v109 > 1, v110 + 1, 1);
            v105 = *&v460[0];
          }

          *(v105 + 16) = v110 + 1;
          sub_214534FEC(v107, v105 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v110, type metadata accessor for CSDMConversationMemberProto);
          v106 += 496;
          --v104;
        }

        while (v104);
        v112 = v441;
        v111 = v442;
        v81 = v443;
      }

      else
      {
        v111 = v86;
        v112 = v441;
      }

      v113 = *(v111 + v81);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      v115 = *(v111 + v81);
      if ((v114 & 1) == 0)
      {
        v116 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v117 = *(v116 + 48);
        v118 = *(v116 + 52);
        swift_allocObject();
        v119 = sub_21402CD8C(v115);

        *(v111 + v81) = v119;
        v115 = v119;
      }

      swift_beginAccess();
      v120 = *(v115 + 48);
      *(v115 + 48) = v105;

      if ((*(v112 + 68) & 1) == 0)
      {
        v121 = *(v112 + 16);
        v122 = v442;
        v123 = *(v442 + v81);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v125 = *(v122 + v81);
        if ((v124 & 1) == 0)
        {
          v126 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          v127 = *(v126 + 48);
          v128 = *(v126 + 52);
          swift_allocObject();
          v129 = sub_21402CD8C(v125);

          *(v122 + v81) = v129;
          v125 = v129;
        }

        swift_beginAccess();
        *(v125 + 56) = v121;
        *(v125 + 60) = 0;
      }

      v130 = v112[12];
      if (!v130)
      {
        goto LABEL_78;
      }

      if (v130 == 1)
      {
        goto LABEL_229;
      }

      v131 = v112[11];
      v132 = v112[12];

      v133 = v442;
      v134 = *(v442 + v81);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v136 = *(v133 + v81);
      if ((v135 & 1) == 0)
      {
        v137 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v138 = *(v137 + 48);
        v139 = *(v137 + 52);
        swift_allocObject();
        v140 = sub_21402CD8C(v136);

        *(v133 + v81) = v140;
        v136 = v140;
      }

      swift_beginAccess();
      v141 = *(v136 + 72);
      *(v136 + 64) = v131;
      *(v136 + 72) = v130;

LABEL_78:
      v142 = v112[14];
      v143 = *(v142 + 16);
      v144 = MEMORY[0x277D84F90];
      if (v143)
      {
        v455[0] = MEMORY[0x277D84F90];
        sub_2140A01E8(0, v143, 0);
        v144 = v455[0];
        v145 = (v142 + 32);
        v146 = v432;
        do
        {
          v147 = memcpy(v472, v145, 0x389uLL);
          MEMORY[0x28223BE20](v147);
          v419 = v472;
          sub_2142E7434(v472, v460);
          sub_214534FA4(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
          sub_2146D9018();
          sub_2142E72B4(v472);
          v455[0] = v144;
          v149 = *(v144 + 16);
          v148 = *(v144 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_2140A01E8(v148 > 1, v149 + 1, 1);
            v144 = v455[0];
          }

          *(v144 + 16) = v149 + 1;
          sub_214534FEC(v146, v144 + ((*(v447 + 80) + 32) & ~*(v447 + 80)) + *(v447 + 72) * v149, type metadata accessor for CSDMConversationActivitySessionProto);
          v145 += 912;
          --v143;
        }

        while (v143);
        v112 = v441;
        v150 = v442;
        v81 = v443;
      }

      else
      {
        v150 = v442;
      }

      v151 = *(v150 + v81);
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v153 = *(v150 + v81);
      if ((v152 & 1) == 0)
      {
        v154 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v155 = *(v154 + 48);
        v156 = *(v154 + 52);
        swift_allocObject();
        v157 = sub_21402CD8C(v153);

        *(v150 + v81) = v157;
        v153 = v157;
      }

      swift_beginAccess();
      v158 = *(v153 + 80);
      *(v153 + 80) = v144;

      v159 = v112[18];
      v160 = v1;
      v161 = v442;
      if (!v159)
      {
        goto LABEL_92;
      }

      if (v159 == 1)
      {
        goto LABEL_229;
      }

      v162 = v112[17];
      v163 = v112[18];

      v164 = *(v161 + v81);
      v165 = swift_isUniquelyReferenced_nonNull_native();
      v166 = *(v161 + v81);
      if ((v165 & 1) == 0)
      {
        v167 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v168 = *(v167 + 48);
        v169 = *(v167 + 52);
        swift_allocObject();
        v170 = sub_21402CD8C(v166);

        *(v161 + v81) = v170;
        v166 = v170;
      }

      swift_beginAccess();
      v171 = *(v166 + 96);
      *(v166 + 88) = v162;
      *(v166 + 96) = v159;

LABEL_92:
      memcpy(v458, v112 + 20, 0x1B1uLL);
      memcpy(v459, v112 + 20, 0x1B1uLL);
      enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v459);
      if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
      {
        v173 = memcpy(v471, v459, 0x1B1uLL);
        MEMORY[0x28223BE20](v173);
        v419 = v471;
        memcpy(v460, v458, 0x1B1uLL);
        sub_2142E7694(v460, v455);
        sub_214534FA4(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto);
        sub_2146D9018();
        v174 = *(v161 + v81);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_213FB2DF4(v458, &qword_27C905D58, &qword_2146F4098);
          v175 = *(v161 + v81);
        }

        else
        {
          v176 = *(v161 + v81);
          v177 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          v178 = *(v177 + 48);
          v179 = *(v177 + 52);
          swift_allocObject();

          v175 = sub_21402CD8C(v180);

          sub_213FB2DF4(v458, &qword_27C905D58, &qword_2146F4098);

          *(v161 + v81) = v175;
        }

        v181 = v424;
        sub_214534FEC(v436, v424, type metadata accessor for CSDMConversationLinkProto);
        (*(v423 + 56))(v181, 0, 1, v437);
        v182 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
        swift_beginAccess();
        sub_21402EDB8(v181, v175 + v182, &qword_27C903CD8, &qword_2146E9808);
        enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = swift_endAccess();
      }

      v183 = *(v112 + 81);
      v456[2] = *(v112 + 79);
      v456[3] = v183;
      v457[0] = *(v112 + 83);
      *(v457 + 9) = *(v112 + 673);
      v184 = *(v112 + 77);
      v456[0] = *(v112 + 75);
      v456[1] = v184;
      if (*&v456[0])
      {
        v464 = *&v456[0];
        v185 = *(v112 + 41);
        v467 = *(v112 + 40);
        v468 = v185;
        v469 = *(v112 + 42);
        v470 = *(v112 + 688);
        v186 = *(v112 + 39);
        v465 = *(v112 + 38);
        v466 = v186;
        MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
        v419 = &v464;
        v188 = v187[3];
        v187[68] = v187[2];
        v187[69] = v188;
        v187[70] = v187[4];
        *(&v460[4] + 9) = *(v187 + 73);
        v189 = v187[1];
        v460[0] = *v187;
        v460[1] = v189;
        sub_2142E64D4(v460, v455);
        sub_214534FA4(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto);
        sub_2146D9018();
        v190 = *(v161 + v81);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_213FB2DF4(v456, &qword_27C905D70, &qword_2146F40A0);
          v191 = *(v161 + v81);
        }

        else
        {
          v192 = *(v161 + v81);
          v193 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          v194 = *(v193 + 48);
          v195 = *(v193 + 52);
          swift_allocObject();

          v191 = sub_21402CD8C(v196);

          sub_213FB2DF4(v456, &qword_27C905D70, &qword_2146F40A0);

          *(v161 + v81) = v191;
        }

        v197 = v434;
        sub_214534FEC(v440, v434, type metadata accessor for CSDMConversationReportProto);
        (*(v433 + 56))(v197, 0, 1, v444);
        v198 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
        swift_beginAccess();
        sub_21402EDB8(v197, v191 + v198, &qword_27C903CD0, &qword_2146E9800);
        enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = swift_endAccess();
      }

      v199 = *(v112 + 689);
      if (v199 != 2)
      {
        v200 = *(v161 + v81);
        v201 = swift_isUniquelyReferenced_nonNull_native();
        v202 = *(v161 + v81);
        if ((v201 & 1) == 0)
        {
          v203 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          v204 = *(v203 + 48);
          v205 = *(v203 + 52);
          swift_allocObject();
          v206 = sub_21402CD8C(v202);

          *(v161 + v81) = v206;
          v202 = v206;
        }

        v207 = v199 & 1;
        v208 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
        enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = swift_beginAccess();
        *(v202 + v208) = v207;
      }

      v209 = v112[88];
      if (v209 >> 60 != 11)
      {
        v440 = &v421;
        v210 = v112[87];
        v211 = v161;
        v212 = v112[89];
        v213 = v112[90];
        MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
        *(&v421 - 4) = v210;
        *(&v421 - 3) = v209;
        v419 = v212;
        v420 = v213;
        sub_213FDCA18(v210, v209);
        sub_213FDCA18(v212, v213);
        sub_214534FA4(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto);
        v81 = v443;
        sub_2146D9018();
        v444 = v1;
        v214 = *(v211 + v81);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2142E8030(v210, v209, v212, v213, sub_213FDC6BC);
          v215 = *(v211 + v81);
        }

        else
        {
          v216 = *(v211 + v443);
          v217 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          v218 = *(v217 + 48);
          v219 = *(v217 + 52);
          swift_allocObject();

          v215 = sub_21402CD8C(v220);

          sub_2142E8030(v210, v209, v212, v213, sub_213FDC6BC);
          v81 = v443;

          *(v211 + v81) = v215;
        }

        v161 = v211;
        v221 = v426;
        sub_214534FEC(v438, v426, type metadata accessor for CSDMEncryptedConversationMessageProto);
        (*(v425 + 56))(v221, 0, 1, v439);
        v222 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
        swift_beginAccess();
        sub_21402EDB8(v221, v215 + v222, &qword_27C903CC8, &qword_2146E97F8);
        swift_endAccess();
        v160 = v444;
      }

      v223 = v112[94];
      if (!v223)
      {
        goto LABEL_116;
      }

      if (v223 == 1)
      {
        goto LABEL_229;
      }

      v224 = v112[93];
      v225 = v112[94];

      v226 = *(v161 + v81);
      v227 = swift_isUniquelyReferenced_nonNull_native();
      v228 = *(v161 + v81);
      if ((v227 & 1) == 0)
      {
        v229 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        v230 = *(v229 + 48);
        v231 = *(v229 + 52);
        swift_allocObject();
        v232 = sub_21402CD8C(v228);

        *(v161 + v81) = v232;
        v228 = v232;
      }

      v233 = (v228 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
      swift_beginAccess();
      v234 = v233[1];
      *v233 = v224;
      v233[1] = v223;

LABEL_116:
      v235 = v112[99];
      if (v235)
      {
        if (v235 != 1)
        {
          v236 = v112[98];
          v237 = v112[99];

          v238 = *(v161 + v81);
          v239 = swift_isUniquelyReferenced_nonNull_native();
          v240 = *(v161 + v81);
          if ((v239 & 1) == 0)
          {
            v241 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            v242 = *(v241 + 48);
            v243 = *(v241 + 52);
            swift_allocObject();
            v244 = sub_21402CD8C(v240);

            *(v161 + v81) = v244;
            v240 = v244;
          }

          v245 = (v240 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
          swift_beginAccess();
          v246 = v245[1];
          *v245 = v236;
          v245[1] = v235;

          goto LABEL_121;
        }

LABEL_229:
        LODWORD(v420) = 0;
        v419 = 51;
        result = sub_2146DA018();
        __break(1u);
        return result;
      }

LABEL_121:
      v247 = *(v112 + 801);
      switch(*(v112 + 801))
      {
        case 1:
          v247 = 1;
          goto LABEL_155;
        case 2:
          v247 = 2;
          goto LABEL_155;
        case 3:
          v247 = 3;
          goto LABEL_155;
        case 4:
          v247 = 4;
          goto LABEL_155;
        case 5:
          v247 = 5;
          goto LABEL_155;
        case 6:
          v247 = 6;
          goto LABEL_155;
        case 7:
          v247 = 8;
          goto LABEL_155;
        case 8:
          v247 = 9;
          goto LABEL_155;
        case 9:
          v247 = 10;
          goto LABEL_155;
        case 0xA:
          v247 = 11;
          goto LABEL_155;
        case 0xB:
          v247 = 12;
          goto LABEL_155;
        case 0xC:
          v247 = 13;
          goto LABEL_155;
        case 0xD:
          v247 = 14;
          goto LABEL_155;
        case 0xE:
          v247 = 15;
          goto LABEL_155;
        case 0xF:
          v247 = 16;
          goto LABEL_155;
        case 0x10:
          v247 = 19;
          goto LABEL_155;
        case 0x11:
          v247 = 21;
          goto LABEL_155;
        case 0x12:
          v247 = 22;
          goto LABEL_155;
        case 0x13:
          v247 = 23;
          goto LABEL_155;
        case 0x14:
          v247 = 24;
          goto LABEL_155;
        case 0x15:
          v247 = 25;
          goto LABEL_155;
        case 0x16:
          v247 = 26;
          goto LABEL_155;
        case 0x17:
          v247 = 27;
          goto LABEL_155;
        case 0x18:
          v247 = 28;
          goto LABEL_155;
        case 0x19:
          v247 = 29;
          goto LABEL_155;
        case 0x1A:
          v247 = 30;
          goto LABEL_155;
        case 0x1B:
          v247 = 31;
          goto LABEL_155;
        case 0x1C:
          v247 = 32;
          goto LABEL_155;
        case 0x1D:
          v247 = 33;
          goto LABEL_155;
        case 0x1E:
          v247 = 34;
          goto LABEL_155;
        case 0x1F:
          v247 = 35;
          goto LABEL_155;
        case 0x20:
          v247 = 36;
          goto LABEL_155;
        case 0x21:
          v247 = 37;
          goto LABEL_155;
        case 0x22:
          goto LABEL_159;
        default:
LABEL_155:
          v248 = sub_214028EFC(v247);
          if (v248 == 34)
          {
            goto LABEL_228;
          }

          v249 = v248;
          v250 = *(v161 + v81);
          v251 = swift_isUniquelyReferenced_nonNull_native();
          v252 = *(v161 + v81);
          if ((v251 & 1) == 0)
          {
            v253 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            v254 = *(v253 + 48);
            v255 = *(v253 + 52);
            swift_allocObject();
            v256 = sub_21402CD8C(v252);

            *(v161 + v81) = v256;
            v252 = v256;
          }

          v257 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
          swift_beginAccess();
          *(v252 + v257) = v249;
LABEL_159:
          v258 = v112[101];
          v259 = *(v258 + 16);
          v260 = MEMORY[0x277D84F90];
          if (v259)
          {
            *&v460[0] = MEMORY[0x277D84F90];
            sub_2140A01A4(0, v259, 0);
            v260 = *&v460[0];
            v261 = sub_214534FA4(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto);
            v444 = v261;
            v262 = (v258 + 56);
            v263 = v427;
            do
            {
              v264 = *(v262 - 6);
              v265 = *(v262 - 20);
              v266 = *(v262 - 2);
              v267 = *(v262 - 8);
              v268 = *(v262 - 1);
              v269 = *v262;
              MEMORY[0x28223BE20](v261);
              *(&v421 - 8) = v270;
              *(&v421 - 28) = v271;
              *(&v421 - 3) = v272;
              LOBYTE(v419) = v273;
              HIDWORD(v419) = v274;
              LOBYTE(v420) = v269;
              v275 = v160;
              sub_2146D9018();
              *&v460[0] = v260;
              v277 = *(v260 + 16);
              v276 = *(v260 + 24);
              if (v277 >= v276 >> 1)
              {
                sub_2140A01A4(v276 > 1, v277 + 1, 1);
                v260 = *&v460[0];
              }

              *(v260 + 16) = v277 + 1;
              v261 = sub_214534FEC(v263, v260 + ((*(v445 + 80) + 32) & ~*(v445 + 80)) + *(v445 + 72) * v277, type metadata accessor for CSDMConversationInvitationPreferenceProto);
              v262 += 32;
              --v259;
              v160 = v275;
            }

            while (v259);
            v112 = v441;
            v81 = v443;
          }

          v278 = v442;
          v279 = *(v442 + v81);
          v280 = swift_isUniquelyReferenced_nonNull_native();
          v281 = *(v278 + v81);
          v282 = v160;
          if ((v280 & 1) == 0)
          {
            v283 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            v284 = *(v283 + 48);
            v285 = *(v283 + 52);
            swift_allocObject();
            v286 = sub_21402CD8C(v281);

            *(v278 + v81) = v286;
            v281 = v286;
          }

          v287 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
          swift_beginAccess();
          v288 = *(v281 + v287);
          *(v281 + v287) = v260;

          v289 = v112[102];
          v290 = *(v289 + 16);
          v291 = MEMORY[0x277D84F90];
          if (v290)
          {
            v455[0] = MEMORY[0x277D84F90];
            sub_2140A022C(0, v290, 0);
            v291 = v455[0];
            v292 = (v289 + 32);
            v293 = v428;
            do
            {
              v294 = memcpy(v463, v292, sizeof(v463));
              MEMORY[0x28223BE20](v294);
              v419 = v463;
              sub_2142E627C(v463, v460);
              sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
              sub_2146D9018();
              sub_2142E6080(v463);
              v455[0] = v291;
              v296 = *(v291 + 16);
              v295 = *(v291 + 24);
              if (v296 >= v295 >> 1)
              {
                sub_2140A022C(v295 > 1, v296 + 1, 1);
                v291 = v455[0];
              }

              *(v291 + 16) = v296 + 1;
              sub_214534FEC(v293, v291 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v296, type metadata accessor for CSDMConversationMemberProto);
              v292 += 496;
              --v290;
            }

            while (v290);
            v112 = v441;
            v297 = v442;
          }

          else
          {
            v297 = v442;
          }

          v298 = v443;
          v299 = *(v297 + v443);
          v300 = swift_isUniquelyReferenced_nonNull_native();
          v301 = *(v297 + v298);
          if ((v300 & 1) == 0)
          {
            v302 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            v303 = *(v302 + 48);
            v304 = *(v302 + 52);
            swift_allocObject();
            v305 = sub_21402CD8C(v301);

            *(v297 + v298) = v305;
            v301 = v305;
          }

          v306 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
          swift_beginAccess();
          v307 = *(v301 + v306);
          *(v301 + v306) = v291;

          v308 = v112[103];
          v309 = *(v308 + 16);
          v310 = MEMORY[0x277D84F90];
          if (v309)
          {
            v455[0] = MEMORY[0x277D84F90];
            sub_2140A022C(0, v309, 0);
            v310 = v455[0];
            v311 = (v308 + 32);
            v312 = v429;
            do
            {
              v313 = memcpy(v462, v311, sizeof(v462));
              MEMORY[0x28223BE20](v313);
              v419 = v462;
              sub_2142E627C(v462, v460);
              sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
              sub_2146D9018();
              sub_2142E6080(v462);
              v455[0] = v310;
              v315 = *(v310 + 16);
              v314 = *(v310 + 24);
              if (v315 >= v314 >> 1)
              {
                sub_2140A022C(v314 > 1, v315 + 1, 1);
                v310 = v455[0];
              }

              *(v310 + 16) = v315 + 1;
              sub_214534FEC(v312, v310 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v315, type metadata accessor for CSDMConversationMemberProto);
              v311 += 496;
              --v309;
            }

            while (v309);
            v112 = v441;
            v297 = v442;
          }

          v316 = v443;
          v317 = *(v297 + v443);
          v318 = swift_isUniquelyReferenced_nonNull_native();
          v319 = *(v297 + v316);
          if ((v318 & 1) == 0)
          {
            v320 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            v321 = *(v320 + 48);
            v322 = *(v320 + 52);
            swift_allocObject();
            v323 = sub_21402CD8C(v319);

            *(v297 + v316) = v323;
            v319 = v323;
          }

          v324 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
          swift_beginAccess();
          v325 = *(v319 + v324);
          *(v319 + v324) = v310;

          v326 = v112[104];
          v327 = *(v326 + 16);
          v328 = MEMORY[0x277D84F90];
          if (v327)
          {
            v455[0] = MEMORY[0x277D84F90];
            sub_2140A0270(0, v327, 0);
            v328 = v455[0];
            v329 = (v326 + 32);
            v330 = v430;
            do
            {
              v331 = memcpy(v461, v329, 0x16AuLL);
              MEMORY[0x28223BE20](v331);
              v419 = v461;
              sub_2142E6788(v461, v460);
              sub_214534FA4(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto);
              sub_2146D9018();
              sub_2142E6530(v461);
              v455[0] = v328;
              v333 = *(v328 + 16);
              v332 = *(v328 + 24);
              if (v333 >= v332 >> 1)
              {
                sub_2140A0270(v332 > 1, v333 + 1, 1);
                v328 = v455[0];
              }

              *(v328 + 16) = v333 + 1;
              sub_214534FEC(v330, v328 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v333, type metadata accessor for CSDMConversationParticipantProto);
              v329 += 368;
              --v327;
            }

            while (v327);
            v112 = v441;
            v297 = v442;
          }

          v334 = v443;
          v335 = *(v297 + v443);
          v336 = swift_isUniquelyReferenced_nonNull_native();
          v337 = *(v297 + v334);
          if ((v336 & 1) == 0)
          {
            v338 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            v339 = *(v338 + 48);
            v340 = *(v338 + 52);
            swift_allocObject();
            v341 = sub_21402CD8C(v337);

            *(v297 + v334) = v341;
            v337 = v341;
          }

          v342 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
          swift_beginAccess();
          v343 = *(v337 + v342);
          *(v337 + v342) = v328;

          v344 = *(v112 + 840);
          v345 = v282;
          if (v344 != 2)
          {
            v346 = v443;
            v347 = *(v297 + v443);
            v348 = swift_isUniquelyReferenced_nonNull_native();
            v349 = *(v297 + v346);
            if ((v348 & 1) == 0)
            {
              v350 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v351 = *(v350 + 48);
              v352 = *(v350 + 52);
              swift_allocObject();
              v353 = sub_21402CD8C(v349);

              *(v297 + v346) = v353;
              v349 = v353;
            }

            v354 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
            swift_beginAccess();
            *(v349 + v354) = v344 & 1;
          }

          v355 = v297;
          v356 = v112[107];
          if (v356)
          {
            v444 = v345;
            v357 = v112[106];

            v358 = v443;
            v359 = *(v355 + v443);
            v360 = swift_isUniquelyReferenced_nonNull_native();
            v361 = *(v355 + v358);
            if ((v360 & 1) == 0)
            {
              v362 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v363 = *(v362 + 48);
              v364 = *(v362 + 52);
              swift_allocObject();
              v365 = sub_21402CD8C(v361);

              *(v355 + v358) = v365;
              v361 = v365;
            }

            v366 = (v361 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
            swift_beginAccess();
            v367 = v366[1];
            *v366 = v357;
            v366[1] = v356;
          }

          memcpy(v454, v112 + 108, 0x389uLL);
          memcpy(v455, v112 + 108, 0x389uLL);
          result = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v455);
          v369 = v443;
          if (result == 1)
          {
            v370 = v355;
          }

          else
          {
            v371 = memcpy(v460, v455, 0x389uLL);
            MEMORY[0x28223BE20](v371);
            v419 = v460;
            memcpy(v453, v454, 0x389uLL);
            sub_2142E7434(v453, &v452);
            sub_214534FA4(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
            v372 = v435;
            sub_2146D9018();
            v370 = v355;
            v373 = *(v355 + v369);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              sub_213FB2DF4(v454, &qword_27C905DB8, &unk_2147598E0);
              v374 = *(v355 + v369);
            }

            else
            {
              v375 = *(v355 + v369);
              v376 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v377 = *(v376 + 48);
              v378 = *(v376 + 52);
              swift_allocObject();

              v374 = sub_21402CD8C(v379);

              sub_213FB2DF4(v454, &qword_27C905DB8, &unk_2147598E0);
              v372 = v435;

              *(v355 + v369) = v374;
            }

            v380 = v422;
            sub_214534FEC(v372, v422, type metadata accessor for CSDMConversationActivitySessionProto);
            (*(v447 + 56))(v380, 0, 1, v448);
            v381 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
            swift_beginAccess();
            sub_21402EDB8(v380, v374 + v381, &qword_27C903CB8, &qword_2146E97F0);
            result = swift_endAccess();
          }

          v382 = *(v112 + 1769);
          if (v382 >= 3)
          {
            if (v382 != 3)
            {
              __break(1u);
              goto LABEL_226;
            }
          }

          else
          {
            v383 = *(v370 + v369);
            v384 = swift_isUniquelyReferenced_nonNull_native();
            v385 = *(v370 + v369);
            if ((v384 & 1) == 0)
            {
              v386 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v387 = *(v386 + 48);
              v388 = *(v386 + 52);
              swift_allocObject();
              v389 = sub_21402CD8C(v385);

              *(v370 + v369) = v389;
              v385 = v389;
            }

            v390 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
            result = swift_beginAccess();
            *(v385 + v390) = v382;
          }

          if ((v112[222] & 1) == 0)
          {
            v391 = *(v112 + 443);
            v392 = *(v370 + v369);
            v393 = swift_isUniquelyReferenced_nonNull_native();
            v394 = *(v370 + v369);
            if ((v393 & 1) == 0)
            {
              v395 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v396 = *(v395 + 48);
              v397 = *(v395 + 52);
              swift_allocObject();
              v398 = sub_21402CD8C(v394);

              *(v370 + v369) = v398;
              v394 = v398;
            }

            v399 = v394 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
            result = swift_beginAccess();
            *v399 = v391;
            *(v399 + 4) = 0;
          }

          v400 = *(v112 + 1777);
          if (v400 < 3)
          {
            v401 = *(v370 + v369);
            v402 = swift_isUniquelyReferenced_nonNull_native();
            v403 = *(v370 + v369);
            if ((v402 & 1) == 0)
            {
              v404 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v405 = *(v404 + 48);
              v406 = *(v404 + 52);
              swift_allocObject();
              v407 = sub_21402CD8C(v403);

              *(v370 + v369) = v407;
              v403 = v407;
            }

            v408 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
            result = swift_beginAccess();
            *(v403 + v408) = v400;
            goto LABEL_221;
          }

          if (v400 != 3)
          {
LABEL_226:
            __break(1u);
            goto LABEL_227;
          }

LABEL_221:
          v409 = *(v112 + 1778);
          if (v409 != 2)
          {
            v410 = *(v370 + v369);
            v411 = swift_isUniquelyReferenced_nonNull_native();
            v412 = *(v370 + v369);
            if ((v411 & 1) == 0)
            {
              v413 = type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              v414 = *(v413 + 48);
              v415 = *(v413 + 52);
              swift_allocObject();
              v416 = sub_21402CD8C(v412);

              *(v370 + v369) = v416;
              v412 = v416;
            }

            v417 = v409 & 1;
            v418 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
            result = swift_beginAccess();
            *(v412 + v418) = v417;
          }

          return result;
      }
  }
}

uint64_t sub_21452F860@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v29 = a1;
  v30 = a2;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  sub_21453517C(v15, v13, type metadata accessor for CSDMEncryptedConversationMessageProto);
  v17 = &v13[*(v9 + 20)];
  v19 = *v17;
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_213FDCA18(v19, v18);
  }

  v25 = v19;
  v31 = a3;
  v20 = &v13[*(v9 + 24)];
  v22 = *v20;
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_213FDCA18(v22, v21);
  }

  sub_2145351E4(v13, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_2145351E4(v15, type metadata accessor for CSDMEncryptedConversationMessageProto);
  result = sub_213FB54FC(a1, a2);
  v23 = v31;
  *v31 = v25;
  v23[1] = v18;
  v23[2] = v22;
  v23[3] = v21;
  return result;
}

uint64_t sub_21452FAC4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  if (a3 >> 60 != 15)
  {
    v10 = (result + *(type metadata accessor for CSDMEncryptedConversationMessageProto(0) + 20));
    v11 = *v10;
    v12 = v10[1];
    sub_21402D9F8(a2, a3);
    result = sub_213FDC6BC(v11, v12);
    *v10 = a2;
    v10[1] = a3;
  }

  if (a5 >> 60 != 15)
  {
    v13 = (v7 + *(type metadata accessor for CSDMEncryptedConversationMessageProto(0) + 24));
    v14 = *v13;
    v15 = v13[1];
    sub_21402D9F8(a4, a5);
    result = sub_213FDC6BC(v14, v15);
    *v13 = a4;
    v13[1] = a5;
  }

  return result;
}

void *sub_21452FB94(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v334 = v1;
  v4 = v3;
  v5 = v2;
  v224 = v6;
  v7 = type metadata accessor for CSDMHandleProto(0);
  v227 = *(v7 - 8);
  v8 = *(v227 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v239 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v240 = &v177 - v11;
  v12 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v230 = *(v12 - 8);
  v231 = v12;
  v13 = *(v230 + 64);
  MEMORY[0x28223BE20](v12);
  v226 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v225 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v229 = &v177 - v19;
  v20 = type metadata accessor for CSDMConversationMessageProto(0);
  v234 = *(v20 - 8);
  v235 = v20;
  v21 = *(v234 + 64);
  MEMORY[0x28223BE20](v20);
  v228 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CSDMConversationMemberProto(0);
  v236 = *(v23 - 8);
  v24 = *(v236 + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v237 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v238 = &v177 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v177 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v177 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v232 = &v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v233 = &v177 - v38;
  v39 = sub_2146D8E18();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v177 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v177 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333[0] = v5;
  v47 = v4;
  v333[1] = v4;
  memset(v245, 0, 40);
  v48 = v5;
  v49 = v47;
  sub_21402D9F8(v5, v47);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
  v50 = v334;
  sub_2146D8FD8();
  v51 = v50;
  if (v50)
  {
    v52 = v48;
    v53 = v49;
    return sub_213FB54FC(v52, v53);
  }

  v220 = v48;
  v222 = v49;
  v55 = *&v46[*(v43 + 20)];
  swift_beginAccess();
  v56 = *(v55 + 16);
  v218 = *(v55 + 20);
  swift_beginAccess();
  v221 = v55;
  v57 = *(v55 + 24);
  v58 = *(v57 + 16);
  v223 = v46;
  v219 = v56;
  if (v58)
  {
    v243[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v58, 0);
    v334 = v57;
    if (!*(v57 + 16))
    {
LABEL_58:
      __break(1u);
LABEL_59:

      v221 = *v245;
      v177 = *&v245[8];
      v182 = *&v245[16];
      v183 = *&v245[24];
      v217 = v245[32];

      sub_213FDC6D0(v42, v46);
      *v245 = v210;
      *&v245[8] = v211;
      v97 = v188;
      *&v245[16] = v188;
      v96 = v212;
      *&v245[24] = v212;
      v245[32] = v209;

      sub_213FDC9D0(v97, v96);
      sub_214031B48(v181, v186, 2, 0xD000000000000040, 0x800000021478D600, 0xD00000000000001CLL, v51 | 0x8000000000000000);
      v334 = 0;
LABEL_63:
      sub_213FB54FC(v220, v222);
      sub_213FB2DF4(v333, &qword_27C905E98, &qword_2147738D0);
      sub_213FB2DF4(v243, &qword_27C905DB8, &unk_2147598E0);

      v171 = *&v245[16];
      v172 = *&v245[24];
      v173 = v245[32];

      sub_213FDC6D0(v97, v96);
      sub_2145351E4(v223, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
      v174 = v224;
      *v224 = v219;
      *(v174 + 4) = v187;
      *(v174 + 5) = v331;
      *(v174 + 7) = v332;
      *(v174 + 1) = v233;
      memcpy(v174 + 4, v330, 0x6F3uLL);
      *(v174 + 1795) = v328;
      *(v174 + 1799) = v329;
      *(v174 + 225) = v242;
      v175 = v184;
      *(v174 + 226) = v185;
      *(v174 + 227) = v175;
      *(v174 + 228) = v180;
      *(v174 + 1832) = v179;
      *(v174 + 1833) = *v327;
      v174[459] = *&v327[3];
      *(v174 + 230) = v232;
      *(v174 + 231) = v178;
      *(v174 + 232) = v229;
      *(v174 + 233) = v241;
      *(v174 + 1872) = v216;
      *(v174 + 1873) = v234;
      result = memcpy(v174 + 1874, v316, 0x38FuLL);
      *(v174 + 2785) = v231;
      *(v174 + 2786) = v230;
      *(v174 + 349) = v228;
      *(v174 + 350) = v235;
      *(v174 + 351) = v227;
      *(v174 + 2816) = v225;
      *(v174 + 353) = v208;
      *(v174 + 2832) = v206;
      *(v174 + 2833) = v203;
      *(v174 + 2834) = v200;
      *(v174 + 2787) = v325;
      *(v174 + 2817) = v324[0];
      *(v174 + 2791) = v326;
      v174[705] = *(v324 + 3);
      v174[709] = v202;
      *(v174 + 2840) = v240;
      *(v174 + 2841) = v207;
      *(v174 + 2842) = v205;
      *(v174 + 2843) = v322;
      *(v174 + 2847) = v323;
      *(v174 + 356) = v221;
      *(v174 + 357) = v177;
      v176 = v183;
      *(v174 + 358) = v182;
      *(v174 + 359) = v176;
      *(v174 + 2880) = v217;
      *(v174 + 2881) = v204;
      *(v174 + 2882) = v201;
      LOBYTE(v176) = v198;
      *(v174 + 2883) = v199;
      *(v174 + 2884) = v176;
      *(v174 + 2885) = v320;
      *(v174 + 2887) = v321;
      v174[722] = v197;
      *(v174 + 2892) = v239;
      *(v174 + 2895) = v319;
      *(v174 + 2893) = v318;
      v174[724] = v196;
      *(v174 + 2900) = v238;
      LOBYTE(v176) = v194;
      *(v174 + 2901) = v195;
      *(v174 + 2902) = v176;
      *(v174 + 2903) = v193;
      *(v174 + 726) = *v245;
      *(v174 + 365) = v171;
      *(v174 + 366) = v172;
      *(v174 + 2936) = v173;
      LOBYTE(v176) = v191;
      *(v174 + 2937) = v192;
      *(v174 + 2938) = v176;
      LODWORD(v176) = v189;
      *(v174 + 2939) = v190;
      v174[735] = v176;
      *(v174 + 2944) = v218;
      return result;
    }

    v59 = 0;
    v46 = (v334 + ((*(v236 + 80) + 32) & ~*(v236 + 80)));
    v241 = *(v236 + 72);
    v242 = v58 - 1;
    v60 = v243[0];
    while (1)
    {
      sub_21453517C(v46, v33, type metadata accessor for CSDMConversationMemberProto);
      sub_21453517C(v33, v31, type metadata accessor for CSDMConversationMemberProto);
      sub_21451FEE0(v31, v245);
      v42 = 0;
      sub_2145351E4(v33, type metadata accessor for CSDMConversationMemberProto);
      memcpy(v333, v245, 0x1F0uLL);
      v243[0] = v60;
      v62 = *(v60 + 16);
      v61 = *(v60 + 24);
      v63 = v60;
      if (v62 >= v61 >> 1)
      {
        sub_2140A0164((v61 > 1), v62 + 1, 1);
        v63 = v243[0];
      }

      *(v63 + 16) = v62 + 1;
      memcpy((v63 + 496 * v62 + 32), v333, 0x1F0uLL);
      v60 = v63;
      if (v242 == v59)
      {
        break;
      }

      v46 += v241;
      ++v59;
      v51 = 0;
      if (v59 >= *(v334 + 16))
      {
        goto LABEL_58;
      }
    }

    v51 = 0;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  v64 = v233;
  v65 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v66 = v221;
  swift_beginAccess();
  sub_213FB2E54(v66 + v65, v64, &qword_27C903CF0, &unk_2146E9810);
  v67 = v235;
  v334 = *(v234 + 48);
  v68 = (v334)(v64, 1, v235);
  sub_213FB2DF4(v64, &qword_27C903CF0, &unk_2146E9810);
  if (v68 != 1)
  {
    v69 = v232;
    sub_213FB2E54(v66 + v65, v232, &qword_27C903CF0, &unk_2146E9810);
    if ((v334)(v69, 1, v67) == 1)
    {
      v70 = v228;
      sub_2146D8DE8();
      v71 = *(v67 + 20);
      v72 = v223;
      if (qword_27C902D68 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_65;
    }

    v70 = v228;
    sub_214534FEC(v69, v228, type metadata accessor for CSDMConversationMessageProto);
    v75 = v222;
    v72 = v223;
    v66 = v221;
    goto LABEL_21;
  }

  sub_214534D08(v333);
  while (1)
  {
    v76 = v229;
    v77 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
    swift_beginAccess();
    v78 = v77[1];
    v232 = *v77;
    v242 = v78;
    v79 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
    swift_beginAccess();
    v80 = v79[1];
    v229 = *v79;
    v81 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
    swift_beginAccess();
    LODWORD(v234) = *(v66 + v81);
    v82 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
    swift_beginAccess();
    sub_213FB2E54(v66 + v82, v76, &qword_27C903CB8, &qword_2146E97F0);
    v83 = v231;
    v334 = *(v230 + 48);
    v84 = v76;
    LODWORD(v76) = (v334)(v76, 1, v231);
    v241 = v80;

    sub_213FB2DF4(v84, &qword_27C903CB8, &qword_2146E97F0);
    if (v76 == 1)
    {
      sub_214534D10(v243);
    }

    else
    {
      v85 = v225;
      sub_213FB2E54(v66 + v82, v225, &qword_27C903CB8, &qword_2146E97F0);
      if ((v334)(v85, 1, v83) == 1)
      {
        v86 = v226;
        sub_2146D8DE8();
        v87 = (v86 + v83[5]);
        *v87 = 0;
        v87[1] = 0;
        v88 = v83[6];
        v89 = type metadata accessor for CSDMConversationActivityProto(0);
        (*(*(v89 - 8) + 56))(v86 + v88, 1, 1, v89);
        v90 = v86 + v83[7];
        *v90 = 0;
        *(v90 + 8) = 1;
        if ((v334)(v85, 1, v83) != 1)
        {
          sub_213FB2DF4(v85, &qword_27C903CB8, &qword_2146E97F0);
        }
      }

      else
      {
        v86 = v226;
        sub_214534FEC(v85, v226, type metadata accessor for CSDMConversationActivitySessionProto);
      }

      sub_214527708(v86, v245);
      memcpy(v244, v245, 0x389uLL);
      nullsub_1(v244);
      memcpy(v243, v244, 0x389uLL);
    }

    v91 = v227;
    v92 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
    swift_beginAccess();
    LODWORD(v231) = *(v66 + v92);
    v93 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
    swift_beginAccess();
    LODWORD(v230) = *(v66 + v93);
    v94 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
    swift_beginAccess();
    v71 = v94[1];
    v228 = *v94;
    v95 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
    swift_beginAccess();
    v96 = *(v66 + v95);
    v97 = *(v96 + 16);
    v233 = v60;
    v235 = v71;
    if (v97)
    {
      v310[0] = MEMORY[0x277D84F90];

      sub_2140A00C0(0, v97, 0);
      if (!*(v96 + 16))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v98 = 0;
      v99 = v310[0];
      v100 = v91;
      v101 = v96 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v334 = *(v100 + 72);
      v102 = v97 - 1;
      while (1)
      {
        v103 = v99;
        v104 = v240;
        sub_21453517C(v101, v240, type metadata accessor for CSDMHandleProto);
        v105 = v239;
        sub_21453517C(v104, v239, type metadata accessor for CSDMHandleProto);
        sub_21451F0C0(v105, v245);
        sub_2145351E4(v104, type metadata accessor for CSDMHandleProto);
        v244[2] = *&v245[32];
        v244[3] = *&v245[48];
        v244[1] = *&v245[16];
        v244[6] = *&v245[96];
        v244[7] = *&v245[112];
        v244[4] = *&v245[64];
        v244[5] = *&v245[80];
        *(&v244[11] + 9) = *&v245[185];
        v244[10] = *&v245[160];
        v244[11] = *&v245[176];
        v244[8] = *&v245[128];
        v244[9] = *&v245[144];
        v99 = v103;
        v71 = *(v103 + 16);
        v106 = *(v99 + 24);
        v97 = v71 + 1;
        v244[0] = *v245;
        v310[0] = v99;
        if (v71 >= v106 >> 1)
        {
          sub_2140A00C0((v106 > 1), v71 + 1, 1);
          v99 = v310[0];
        }

        *(v99 + 16) = v97;
        v107 = (v99 + 208 * v71);
        v107[2] = v244[0];
        v108 = v244[1];
        v109 = v244[2];
        v110 = v244[4];
        v107[5] = v244[3];
        v107[6] = v110;
        v107[3] = v108;
        v107[4] = v109;
        v111 = v244[5];
        v112 = v244[6];
        v113 = v244[8];
        v107[9] = v244[7];
        v107[10] = v113;
        v107[7] = v111;
        v107[8] = v112;
        v114 = v244[9];
        v115 = v244[10];
        v116 = v244[11];
        *(v107 + 217) = *(&v244[11] + 9);
        v107[12] = v115;
        v107[13] = v116;
        v107[11] = v114;
        if (v102 == v98)
        {
          break;
        }

        v101 += v334;
        if (++v98 >= *(v96 + 16))
        {
          goto LABEL_62;
        }
      }

      v227 = v99;

      v66 = v221;
    }

    else
    {

      v227 = MEMORY[0x277D84F90];
    }

    v334 = 0;
    v117 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
    swift_beginAccess();
    v72 = *(v66 + v117);
    v118 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
    swift_beginAccess();
    v119 = *(v66 + v118);
    v60 = *(v119 + 16);
    v70 = v236;
    LODWORD(v225) = v72;
    if (!v60)
    {
      v208 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    v310[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v60, 0);
    if (*(v119 + 16))
    {
      break;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
LABEL_18:
    *(v70 + v71) = qword_27C902D70;
    v73 = v232;
    v74 = (v334)(v232, 1);

    v66 = v221;
    v75 = v222;
    if (v74 != 1)
    {
      sub_213FB2DF4(v73, &qword_27C903CF0, &unk_2146E9810);
    }

LABEL_21:
    sub_214529CFC(v70);
    if (v51)
    {
      sub_2145351E4(v72, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);

      v52 = v220;
      v53 = v75;
      return sub_213FB54FC(v52, v53);
    }

    memcpy(v243, v245, 0x6F3uLL);
    nullsub_1(v243);
    memcpy(v333, v243, 0x6F3uLL);
  }

  v71 = 0;
  v120 = v310[0];
  v121 = v70;
  v70 = v119 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v51 = *(v121 + 72);
  v122 = v60 - 1;
  while (1)
  {
    v123 = v120;
    v124 = v238;
    sub_21453517C(v70, v238, type metadata accessor for CSDMConversationMemberProto);
    v125 = v237;
    sub_21453517C(v124, v237, type metadata accessor for CSDMConversationMemberProto);
    v126 = v334;
    sub_21451FEE0(v125, v245);
    v334 = v126;
    if (v126)
    {

      sub_213FB2DF4(v243, &qword_27C905DB8, &unk_2147598E0);
      sub_213FB2DF4(v333, &qword_27C905E98, &qword_2147738D0);
      sub_213FB54FC(v220, v222);
      sub_2145351E4(v124, type metadata accessor for CSDMConversationMemberProto);

      return sub_2145351E4(v223, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    }

    sub_2145351E4(v124, type metadata accessor for CSDMConversationMemberProto);
    memcpy(v244, v245, 0x1F0uLL);
    v120 = v123;
    v310[0] = v123;
    v72 = *(v123 + 16);
    v127 = *(v120 + 24);
    v60 = v72 + 1;
    if (v72 >= v127 >> 1)
    {
      sub_2140A0164((v127 > 1), v72 + 1, 1);
      v120 = v310[0];
    }

    *(v120 + 16) = v60;
    memcpy((v120 + 496 * v72 + 32), v244, 0x1F0uLL);
    if (v122 == v71)
    {
      break;
    }

    v70 += v51;
    if (++v71 >= *(v119 + 16))
    {
      goto LABEL_64;
    }
  }

  v208 = v120;

  v66 = v221;
LABEL_53:
  v128 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v206 = *(v66 + v128);
  v129 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v203 = *(v66 + v129);
  v130 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  swift_beginAccess();
  v200 = *(v66 + v130);
  v131 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion);
  swift_beginAccess();
  v202 = *v131;
  LODWORD(v240) = *(v131 + 4);
  v132 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  v207 = *(v66 + v132);
  v133 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  v205 = *(v66 + v133);
  v134 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v135 = v134[1];
  v182 = *v134;
  v136 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  v204 = *(v66 + v136);
  v137 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  v201 = *(v66 + v137);
  v138 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  v199 = *(v66 + v138);
  v139 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  v198 = *(v66 + v139);
  v140 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion);
  swift_beginAccess();
  v197 = *v140;
  LODWORD(v239) = *(v140 + 4);
  v141 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion);
  swift_beginAccess();
  v196 = *v141;
  LODWORD(v238) = *(v141 + 4);
  v142 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  v195 = *(v66 + v142);
  v143 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  v194 = *(v66 + v143);
  v144 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  v193 = *(v66 + v144);
  v145 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v146 = v145[1];
  v181 = *v145;
  v147 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  v192 = *(v66 + v147);
  v148 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  swift_beginAccess();
  v191 = *(v66 + v148);
  v149 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  swift_beginAccess();
  v190 = *(v66 + v149);
  v150 = (v66 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion);
  swift_beginAccess();
  v189 = *v150;
  v151 = *(v150 + 4);
  v186 = v146;

  v183 = v135;

  sub_213FB2E54(v333, v245, &qword_27C905E98, &qword_2147738D0);
  sub_213FB2E54(v243, v245, &qword_27C905DB8, &unk_2147598E0);
  sub_2146552EC(v245);
  v152 = *v245;
  v153 = *&v245[8];
  v154 = *&v245[16];
  v155 = *&v245[24];
  v156 = v245[32];
  sub_214655320(v244);
  v157 = *&v244[0];
  v236 = *&v244[1];
  v237 = *(&v244[0] + 1);
  v226 = *(&v244[1] + 1);
  v216 = LOBYTE(v244[2]);
  sub_21465546C(v310);
  v221 = v310[0];
  v215 = v310[2];
  v213 = v310[1];
  v214 = v310[3];
  v217 = v311;
  sub_2146554A0(v308);
  v210 = v308[0];
  v211 = v308[1];
  v188 = v308[2];
  v212 = v308[3];
  v209 = v309;
  v317 = v218;
  memcpy(v330, v333, sizeof(v330));
  memcpy(&v316[6], v243, 0x389uLL);
  v315 = v240;
  v314 = v239;
  v313 = v238;
  v218 = v151;
  v312 = v151;
  v187 = v317;
  v51 = "BlastDoor/Untrusted.swift";
  *v245 = v152;
  *&v245[8] = v153;
  *&v245[16] = v154;
  *&v245[24] = v155;
  v245[32] = v156;

  sub_213FDC9D0(v154, v155);
  v158 = v334;
  sub_214031B48(v232, v242, 2, 0xD000000000000041, 0x800000021478D520, 0xD00000000000001CLL, 0x800000021478A360);
  v334 = v158;
  if (v158)
  {
    v232 = v157;
    sub_213FB54FC(v220, v222);
    sub_213FB2DF4(v333, &qword_27C905E98, &qword_2147738D0);
    sub_213FB2DF4(v243, &qword_27C905DB8, &unk_2147598E0);

    v242 = *v245;
    v184 = *&v245[16];
    v185 = *&v245[8];
    v159 = *&v245[24];
    v160 = v245[32];

    sub_213FDC6D0(v154, v155);
    v161 = v188;
    v162 = v216;
    v163 = v225;
  }

  else
  {

    v164 = *v245;
    v184 = *&v245[16];
    v185 = *&v245[8];
    v180 = *&v245[24];
    v179 = v245[32];

    sub_213FDC6D0(v154, v155);
    *v245 = v157;
    v165 = v236;
    *&v245[8] = v237;
    *&v245[16] = v236;
    v166 = v226;
    *&v245[24] = v226;
    v245[32] = v216;

    sub_213FDC9D0(v165, v166);
    v167 = v334;
    sub_214031B48(v229, v241, 2, 0xD00000000000003BLL, 0x800000021478D570, 0xD00000000000001CLL, 0x800000021478A360);
    v242 = v164;
    if (!v167)
    {

      v232 = *v245;
      v178 = *&v245[8];
      v229 = *&v245[16];
      v241 = *&v245[24];
      v216 = v245[32];

      sub_213FDC6D0(v165, v166);
      *v245 = v221;
      v46 = v214;
      *&v245[8] = v213;
      v42 = v215;
      *&v245[16] = v215;
      *&v245[24] = v214;
      v245[32] = v217;

      sub_213FDC9D0(v42, v46);
      sub_214031B48(v182, v183, 2, 0xD000000000000041, 0x800000021478D5B0, 0xD00000000000001CLL, 0x800000021478A360);
      goto LABEL_59;
    }

    v334 = v167;
    sub_213FB54FC(v220, v222);
    sub_213FB2DF4(v333, &qword_27C905E98, &qword_2147738D0);
    sub_213FB2DF4(v243, &qword_27C905DB8, &unk_2147598E0);

    v232 = *v245;
    v168 = *&v245[8];
    v169 = *&v245[16];
    v170 = *&v245[24];
    v162 = v245[32];

    sub_213FDC6D0(v165, v166);
    v236 = v169;
    v237 = v168;
    v226 = v170;
    v163 = v225;
    v161 = v188;
    v159 = v180;
    v160 = v179;
  }

  *v245 = v219;
  v245[4] = v187;
  *&v245[5] = v331;
  v245[7] = v332;
  *&v245[8] = v233;
  memcpy(&v245[16], v330, 0x6F3uLL);
  v246 = v328;
  v247 = v329;
  v248 = v242;
  v249 = v185;
  v250 = v184;
  v251 = v159;
  v252 = v160;
  *v253 = *v327;
  *&v253[3] = *&v327[3];
  v254 = v232;
  v255 = v237;
  v256 = v236;
  v257 = v226;
  v258 = v162;
  v259 = v234;
  memcpy(v260, v316, 0x38FuLL);
  v260[911] = v231;
  v260[912] = v230;
  v263 = v228;
  v264 = v235;
  v265 = v227;
  v266 = v163;
  v268 = v208;
  v269 = v206;
  v270 = v203;
  v271 = v200;
  v272 = v202;
  v273 = v240;
  v261 = v325;
  *v267 = v324[0];
  v262 = v326;
  *&v267[3] = *(v324 + 3);
  v274 = v207;
  v275 = v205;
  v276 = v322;
  v277 = v323;
  v278 = v221;
  v279 = v213;
  v280 = v215;
  v281 = v214;
  v282 = v217;
  v283 = v204;
  v284 = v201;
  v285 = v199;
  v286 = v198;
  v287 = v320;
  v288 = v321;
  v289 = v197;
  v290 = v239;
  v291 = v318;
  v292 = v319;
  v293 = v196;
  v294 = v238;
  v295 = v195;
  v296 = v194;
  v297 = v193;
  v298 = v210;
  v299 = v211;
  v300 = v161;
  v301 = v212;
  v302 = v209;
  v303 = v192;
  v304 = v191;
  v305 = v190;
  v306 = v189;
  v307 = v218;
  sub_2142E890C(v245);
  return sub_2145351E4(v223, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
}

uint64_t sub_214531DE0(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v417 = v2;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v419 = *(v6 - 8);
  v420 = v6;
  v7 = *(v419 + 64);
  MEMORY[0x28223BE20](v6);
  v411 = &v406 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v410 = &v406 - v11;
  v421 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v409 = *(v421 - 8);
  v12 = *(v409 + 64);
  MEMORY[0x28223BE20](v421);
  v415 = &v406 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v408 = &v406 - v16;
  v413 = type metadata accessor for CSDMConversationMessageProto(0);
  v407 = *(v413 - 8);
  v17 = *(v407 + 64);
  MEMORY[0x28223BE20](v413);
  v414 = &v406 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = type metadata accessor for CSDMConversationMemberProto(0);
  v422 = *(v435 - 8);
  v19 = *(v422 + 64);
  v20 = MEMORY[0x28223BE20](v435);
  v412 = &v406 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v406 - v22;
  if ((v5[1] & 1) == 0)
  {
    v24 = *v5;
    v25 = *(type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0) + 20);
    v26 = v417;
    v27 = *(v417 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v26 + v25);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = sub_21402C09C(v29);

      *(v26 + v25) = v33;
      v29 = v33;
    }

    swift_beginAccess();
    *(v29 + 16) = v24;
    *(v29 + 20) = 0;
  }

  v34 = *(v5 + 1);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x277D84F90];
  v416 = v5;
  if (v35)
  {
    v430[0] = MEMORY[0x277D84F90];
    sub_2140A022C(0, v35, 0);
    v36 = v430[0];
    v37 = (v34 + 32);
    do
    {
      v38 = memcpy(v434, v37, 0x1F0uLL);
      MEMORY[0x28223BE20](v38);
      sub_2142E627C(v434, v433);
      sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
      v39 = v3;
      sub_2146D9018();
      sub_2142E6080(v434);
      v430[0] = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2140A022C(v40 > 1, v41 + 1, 1);
        v36 = v430[0];
      }

      *(v36 + 16) = v41 + 1;
      sub_214534FEC(v23, v36 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v41, type metadata accessor for CSDMConversationMemberProto);
      v37 += 496;
      --v35;
      v3 = v39;
    }

    while (v35);
    v5 = v416;
  }

  v42 = *(type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0) + 20);
  v43 = v417;
  v44 = *(v417 + v42);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v43 + v42);
  v418 = v42;
  if ((v45 & 1) == 0)
  {
    v47 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = sub_21402C09C(v46);

    *(v43 + v42) = v50;
    v46 = v50;
  }

  swift_beginAccess();
  v51 = *(v46 + 24);
  *(v46 + 24) = v36;

  memcpy(v429, v5 + 4, 0x6F3uLL);
  memcpy(v430, v5 + 4, 0x6F3uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(v430) == 1)
  {
    v52 = v418;
    v53 = *(v5 + 228);
    if (!v53)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v55 = memcpy(v433, v430, 0x6F3uLL);
    MEMORY[0x28223BE20](v55);
    memcpy(v424, v429, 0x6F3uLL);
    sub_2142E809C(v424, v423);
    sub_214534FA4(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto);
    v56 = v413;
    sub_2146D9018();
    v52 = v418;
    v57 = *(v43 + v418);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(v429, &qword_27C905E98, &qword_2147738D0);
      v58 = *(v43 + v52);
    }

    else
    {
      v59 = *(v43 + v52);
      v60 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();

      v58 = sub_21402C09C(v63);

      sub_213FB2DF4(v429, &qword_27C905E98, &qword_2147738D0);
      v56 = v413;

      *(v43 + v52) = v58;
    }

    v64 = v408;
    sub_214534FEC(v414, v408, type metadata accessor for CSDMConversationMessageProto);
    (*(v407 + 56))(v64, 0, 1, v56);
    v65 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
    swift_beginAccess();
    sub_21402EDB8(v64, v58 + v65, &qword_27C903CF0, &unk_2146E9810);
    swift_endAccess();
    v53 = *(v5 + 228);
    if (!v53)
    {
LABEL_15:
      v54 = *(v5 + 233);
      if (!v54)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  if (v53 == 1)
  {
    goto LABEL_158;
  }

  v66 = *(v5 + 227);

  v67 = *(v43 + v52);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v43 + v52);
  if ((v68 & 1) == 0)
  {
    v70 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v73 = sub_21402C09C(v69);

    *(v43 + v52) = v73;
    v69 = v73;
  }

  v74 = (v69 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v75 = v74[1];
  *v74 = v66;
  v74[1] = v53;

  v54 = *(v5 + 233);
  if (v54)
  {
LABEL_25:
    if (v54 == 1)
    {
      goto LABEL_158;
    }

    v76 = *(v5 + 232);

    v77 = *(v43 + v52);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v43 + v52);
    if ((v78 & 1) == 0)
    {
      v80 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      v83 = sub_21402C09C(v79);

      *(v43 + v52) = v83;
      v79 = v83;
    }

    v84 = (v79 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
    swift_beginAccess();
    v85 = v84[1];
    *v84 = v76;
    v84[1] = v54;
  }

LABEL_29:
  v86 = *(v5 + 1873);
  if (v86 != 2)
  {
    v87 = *(v43 + v52);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v43 + v52);
    if ((v88 & 1) == 0)
    {
      v90 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      v93 = sub_21402C09C(v89);

      *(v43 + v52) = v93;
      v89 = v93;
    }

    v94 = v86 & 1;
    v95 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
    swift_beginAccess();
    *(v89 + v95) = v94;
  }

  memcpy(v428, v5 + 470, 0x389uLL);
  memcpy(v423, v5 + 470, 0x389uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v423) != 1)
  {
    v96 = memcpy(v424, v423, 0x389uLL);
    MEMORY[0x28223BE20](v96);
    memcpy(v426, v428, 0x389uLL);
    sub_2142E7434(v426, v425);
    sub_214534FA4(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);
    sub_2146D9018();
    v97 = *(v43 + v52);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(v428, &qword_27C905DB8, &unk_2147598E0);
      v98 = *(v43 + v52);
    }

    else
    {
      v99 = *(v43 + v52);
      v100 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      swift_allocObject();

      v98 = sub_21402C09C(v103);

      sub_213FB2DF4(v428, &qword_27C905DB8, &unk_2147598E0);

      *(v43 + v52) = v98;
    }

    v104 = v410;
    sub_214534FEC(v415, v410, type metadata accessor for CSDMConversationActivitySessionProto);
    (*(v409 + 56))(v104, 0, 1, v421);
    v105 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
    swift_beginAccess();
    sub_21402EDB8(v104, v98 + v105, &qword_27C903CB8, &qword_2146E97F0);
    swift_endAccess();
  }

  v106 = *(v5 + 2785);
  if (v106 != 2)
  {
    v107 = *(v43 + v52);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v43 + v52);
    if ((v108 & 1) == 0)
    {
      v110 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();
      v113 = sub_21402C09C(v109);

      *(v43 + v52) = v113;
      v109 = v113;
    }

    v114 = v106 & 1;
    v115 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
    swift_beginAccess();
    *(v109 + v115) = v114;
  }

  v116 = *(v5 + 2786);
  if (v116 != 2)
  {
    v117 = *(v43 + v52);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(v43 + v52);
    if ((v118 & 1) == 0)
    {
      v120 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();
      v123 = sub_21402C09C(v119);

      *(v43 + v52) = v123;
      v119 = v123;
    }

    v124 = v116 & 1;
    v125 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
    swift_beginAccess();
    *(v119 + v125) = v124;
  }

  v126 = *(v5 + 350);
  if (v126)
  {
    v127 = *(v5 + 349);
    v128 = *(v5 + 350);

    v129 = *(v43 + v52);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v131 = *(v43 + v52);
    if ((v130 & 1) == 0)
    {
      v132 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v133 = *(v132 + 48);
      v134 = *(v132 + 52);
      swift_allocObject();
      v135 = sub_21402C09C(v131);

      *(v43 + v52) = v135;
      v131 = v135;
    }

    v136 = (v131 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
    swift_beginAccess();
    v137 = v136[1];
    *v136 = v127;
    v136[1] = v126;
  }

  v138 = *(v5 + 351);
  v139 = *(v138 + 16);
  v140 = MEMORY[0x277D84F90];
  if (v139)
  {
    v425[0] = MEMORY[0x277D84F90];
    v141 = sub_2140A00E0(0, v139, 0);
    v140 = v425[0];
    v142 = (v138 + 32);
    v143 = v411;
    do
    {
      v431[0] = *v142;
      v144 = v142[1];
      v145 = v142[2];
      v146 = v142[4];
      v431[3] = v142[3];
      v431[4] = v146;
      v431[1] = v144;
      v431[2] = v145;
      v147 = v142[5];
      v148 = v142[6];
      v149 = v142[8];
      v431[7] = v142[7];
      v431[8] = v149;
      v431[5] = v147;
      v431[6] = v148;
      v150 = v142[9];
      v151 = v142[10];
      v152 = v142[11];
      *(v432 + 9) = *(v142 + 185);
      v431[10] = v151;
      v432[0] = v152;
      v431[9] = v150;
      MEMORY[0x28223BE20](v141);
      sub_2142E5FD0(v431, v426);
      sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
      sub_2146D9018();
      v421 = v3;
      sub_2142E5ED4(v431);
      v425[0] = v140;
      v154 = *(v140 + 16);
      v153 = *(v140 + 24);
      if (v154 >= v153 >> 1)
      {
        sub_2140A00E0(v153 > 1, v154 + 1, 1);
        v140 = v425[0];
      }

      *(v140 + 16) = v154 + 1;
      v141 = sub_214534FEC(v143, v140 + ((*(v419 + 80) + 32) & ~*(v419 + 80)) + *(v419 + 72) * v154, type metadata accessor for CSDMHandleProto);
      v142 += 13;
      --v139;
      v3 = v421;
    }

    while (v139);
    v52 = v418;
  }

  v155 = v417;
  v156 = *(v417 + v52);
  v157 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *(v155 + v52);
  if ((v157 & 1) == 0)
  {
    v159 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    v160 = *(v159 + 48);
    v161 = *(v159 + 52);
    swift_allocObject();
    v162 = sub_21402C09C(v158);

    *(v155 + v52) = v162;
    v158 = v162;
  }

  v163 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v164 = *(v158 + v163);
  *(v158 + v163) = v140;

  v165 = v416;
  v166 = *(v416 + 2816);
  if (v166 != 2)
  {
    v167 = *(v155 + v52);
    v168 = swift_isUniquelyReferenced_nonNull_native();
    v169 = *(v155 + v52);
    if ((v168 & 1) == 0)
    {
      v170 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v171 = *(v170 + 48);
      v172 = *(v170 + 52);
      swift_allocObject();
      v173 = sub_21402C09C(v169);

      *(v155 + v52) = v173;
      v169 = v173;
    }

    v174 = v166 & 1;
    v175 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
    swift_beginAccess();
    *(v169 + v175) = v174;
  }

  v176 = *(v165 + 353);
  v177 = *(v176 + 16);
  v178 = MEMORY[0x277D84F90];
  if (v177)
  {
    v427 = MEMORY[0x277D84F90];
    sub_2140A022C(0, v177, 0);
    v178 = v427;
    v179 = (v176 + 32);
    v180 = v412;
    do
    {
      v181 = memcpy(v426, v179, 0x1F0uLL);
      MEMORY[0x28223BE20](v181);
      sub_2142E627C(v426, v425);
      sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto);
      sub_2146D9018();
      sub_2142E6080(v426);
      v427 = v178;
      v183 = *(v178 + 16);
      v182 = *(v178 + 24);
      if (v183 >= v182 >> 1)
      {
        sub_2140A022C(v182 > 1, v183 + 1, 1);
        v178 = v427;
      }

      *(v178 + 16) = v183 + 1;
      sub_214534FEC(v180, v178 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v183, type metadata accessor for CSDMConversationMemberProto);
      v179 += 496;
      --v177;
    }

    while (v177);
    v165 = v416;
    v155 = v417;
  }

  v184 = v418;
  v185 = *(v155 + v418);
  v186 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *(v155 + v184);
  if ((v186 & 1) == 0)
  {
    v188 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    v189 = *(v188 + 48);
    v190 = *(v188 + 52);
    swift_allocObject();
    v191 = sub_21402C09C(v187);

    *(v155 + v184) = v191;
    v187 = v191;
  }

  v192 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v193 = *(v187 + v192);
  *(v187 + v192) = v178;

  v195 = *(v165 + 2832);
  v196 = v418;
  if (v195 != 2)
  {
    v197 = *(v155 + v418);
    v198 = swift_isUniquelyReferenced_nonNull_native();
    v199 = *(v155 + v196);
    if ((v198 & 1) == 0)
    {
      v200 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v201 = *(v200 + 48);
      v202 = *(v200 + 52);
      swift_allocObject();
      v203 = sub_21402C09C(v199);

      *(v155 + v196) = v203;
      v199 = v203;
    }

    v204 = v195 & 1;
    v205 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
    result = swift_beginAccess();
    *(v199 + v205) = v204;
  }

  v206 = *(v165 + 2833);
  if (v206 != 2)
  {
    v207 = *(v155 + v196);
    v208 = swift_isUniquelyReferenced_nonNull_native();
    v209 = *(v155 + v196);
    if ((v208 & 1) == 0)
    {
      v210 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v211 = *(v210 + 48);
      v212 = *(v210 + 52);
      swift_allocObject();
      v213 = sub_21402C09C(v209);

      *(v155 + v196) = v213;
      v209 = v213;
    }

    v214 = v206 & 1;
    v215 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
    result = swift_beginAccess();
    *(v209 + v215) = v214;
  }

  v216 = *(v165 + 2834);
  if (v216 != 2)
  {
    v217 = *(v155 + v196);
    v218 = swift_isUniquelyReferenced_nonNull_native();
    v219 = *(v155 + v196);
    if ((v218 & 1) == 0)
    {
      v220 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v221 = *(v220 + 48);
      v222 = *(v220 + 52);
      swift_allocObject();
      v223 = sub_21402C09C(v219);

      *(v155 + v196) = v223;
      v219 = v223;
    }

    v224 = v216 & 1;
    v225 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
    result = swift_beginAccess();
    *(v219 + v225) = v224;
  }

  if ((v165[710] & 1) == 0)
  {
    v226 = v165[709];
    v227 = *(v155 + v196);
    v228 = swift_isUniquelyReferenced_nonNull_native();
    v229 = *(v155 + v196);
    if ((v228 & 1) == 0)
    {
      v230 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v231 = *(v230 + 48);
      v232 = *(v230 + 52);
      swift_allocObject();
      v233 = sub_21402C09C(v229);

      *(v155 + v196) = v233;
      v229 = v233;
    }

    v234 = v229 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
    result = swift_beginAccess();
    *v234 = v226;
    *(v234 + 4) = 0;
  }

  v235 = *(v165 + 2841);
  if (v235 != 2)
  {
    v236 = *(v155 + v196);
    v237 = swift_isUniquelyReferenced_nonNull_native();
    v238 = *(v155 + v196);
    if ((v237 & 1) == 0)
    {
      v239 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v240 = *(v239 + 48);
      v241 = *(v239 + 52);
      swift_allocObject();
      v242 = sub_21402C09C(v238);

      *(v155 + v196) = v242;
      v238 = v242;
    }

    v243 = v235 & 1;
    v244 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
    result = swift_beginAccess();
    *(v238 + v244) = v243;
  }

  v245 = *(v165 + 2842);
  if (v245 != 2)
  {
    v246 = *(v155 + v196);
    v247 = swift_isUniquelyReferenced_nonNull_native();
    v248 = *(v155 + v196);
    if ((v247 & 1) == 0)
    {
      v249 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v250 = *(v249 + 48);
      v251 = *(v249 + 52);
      swift_allocObject();
      v252 = sub_21402C09C(v248);

      *(v155 + v196) = v252;
      v248 = v252;
    }

    v253 = v245 & 1;
    v254 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
    result = swift_beginAccess();
    *(v248 + v254) = v253;
  }

  v255 = *(v165 + 359);
  if (v255)
  {
    if (v255 == 1)
    {
      goto LABEL_158;
    }

    v256 = *(v165 + 358);
    v257 = *(v165 + 359);

    v258 = *(v155 + v196);
    v259 = swift_isUniquelyReferenced_nonNull_native();
    v260 = *(v155 + v196);
    if ((v259 & 1) == 0)
    {
      v261 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v262 = *(v261 + 48);
      v263 = *(v261 + 52);
      swift_allocObject();
      v264 = sub_21402C09C(v260);

      *(v155 + v196) = v264;
      v260 = v264;
    }

    v265 = (v260 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
    swift_beginAccess();
    v266 = v265[1];
    *v265 = v256;
    v265[1] = v255;
  }

  v267 = *(v165 + 2881);
  if (v267 != 2)
  {
    v268 = *(v155 + v196);
    v269 = swift_isUniquelyReferenced_nonNull_native();
    v270 = *(v155 + v196);
    if ((v269 & 1) == 0)
    {
      v271 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v272 = *(v271 + 48);
      v273 = *(v271 + 52);
      swift_allocObject();
      v274 = sub_21402C09C(v270);

      *(v155 + v196) = v274;
      v270 = v274;
    }

    v275 = v267 & 1;
    v276 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
    result = swift_beginAccess();
    *(v270 + v276) = v275;
  }

  v277 = *(v165 + 2882);
  if (v277 != 2)
  {
    v278 = *(v155 + v196);
    v279 = swift_isUniquelyReferenced_nonNull_native();
    v280 = *(v155 + v196);
    if ((v279 & 1) == 0)
    {
      v281 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v282 = *(v281 + 48);
      v283 = *(v281 + 52);
      swift_allocObject();
      v284 = sub_21402C09C(v280);

      *(v155 + v196) = v284;
      v280 = v284;
    }

    v285 = v277 & 1;
    v286 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
    result = swift_beginAccess();
    *(v280 + v286) = v285;
  }

  v287 = *(v165 + 2883);
  if (v287 != 2)
  {
    v288 = *(v155 + v196);
    v289 = swift_isUniquelyReferenced_nonNull_native();
    v290 = *(v155 + v196);
    if ((v289 & 1) == 0)
    {
      v291 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v292 = *(v291 + 48);
      v293 = *(v291 + 52);
      swift_allocObject();
      v294 = sub_21402C09C(v290);

      *(v155 + v196) = v294;
      v290 = v294;
    }

    v295 = v287 & 1;
    v296 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
    result = swift_beginAccess();
    *(v290 + v296) = v295;
  }

  v297 = *(v165 + 2884);
  if (v297 == 2)
  {
    if (v165[723])
    {
      goto LABEL_113;
    }
  }

  else
  {
    v298 = *(v155 + v196);
    v299 = swift_isUniquelyReferenced_nonNull_native();
    v300 = *(v155 + v196);
    if ((v299 & 1) == 0)
    {
      v301 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v302 = *(v301 + 48);
      v303 = *(v301 + 52);
      swift_allocObject();
      v304 = sub_21402C09C(v300);

      *(v155 + v196) = v304;
      v300 = v304;
    }

    v305 = v297 & 1;
    v306 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
    result = swift_beginAccess();
    *(v300 + v306) = v305;
    if (v165[723])
    {
LABEL_113:
      if (v165[725])
      {
        goto LABEL_124;
      }

      goto LABEL_121;
    }
  }

  v307 = v165[722];
  v308 = *(v155 + v196);
  v309 = swift_isUniquelyReferenced_nonNull_native();
  v310 = *(v155 + v196);
  if ((v309 & 1) == 0)
  {
    v311 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    v312 = *(v311 + 48);
    v313 = *(v311 + 52);
    swift_allocObject();
    v314 = sub_21402C09C(v310);

    *(v155 + v196) = v314;
    v310 = v314;
  }

  v315 = v310 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  result = swift_beginAccess();
  *v315 = v307;
  *(v315 + 4) = 0;
  if ((v165[725] & 1) == 0)
  {
LABEL_121:
    v316 = v165[724];
    v317 = *(v155 + v196);
    v318 = swift_isUniquelyReferenced_nonNull_native();
    v319 = *(v155 + v196);
    if ((v318 & 1) == 0)
    {
      v320 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v321 = *(v320 + 48);
      v322 = *(v320 + 52);
      swift_allocObject();
      v323 = sub_21402C09C(v319);

      *(v155 + v196) = v323;
      v319 = v323;
    }

    v324 = v319 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
    result = swift_beginAccess();
    *v324 = v316;
    *(v324 + 4) = 0;
  }

LABEL_124:
  v325 = *(v165 + 2901);
  if (v325 != 2)
  {
    v326 = *(v155 + v196);
    v327 = swift_isUniquelyReferenced_nonNull_native();
    v328 = *(v155 + v196);
    if ((v327 & 1) == 0)
    {
      v329 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v330 = *(v329 + 48);
      v331 = *(v329 + 52);
      swift_allocObject();
      v332 = sub_21402C09C(v328);

      *(v155 + v196) = v332;
      v328 = v332;
    }

    v333 = v325 & 1;
    v334 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
    result = swift_beginAccess();
    *(v328 + v334) = v333;
  }

  v335 = *(v165 + 2902);
  if (v335 != 2)
  {
    v336 = *(v155 + v196);
    v337 = swift_isUniquelyReferenced_nonNull_native();
    v338 = *(v155 + v196);
    if ((v337 & 1) == 0)
    {
      v339 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v340 = *(v339 + 48);
      v341 = *(v339 + 52);
      swift_allocObject();
      v342 = sub_21402C09C(v338);

      *(v155 + v196) = v342;
      v338 = v342;
    }

    v343 = v335 & 1;
    v344 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
    result = swift_beginAccess();
    *(v338 + v344) = v343;
  }

  v345 = *(v165 + 2903);
  if (v345 != 2)
  {
    v346 = *(v155 + v196);
    v347 = swift_isUniquelyReferenced_nonNull_native();
    v348 = *(v155 + v196);
    if ((v347 & 1) == 0)
    {
      v349 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v350 = *(v349 + 48);
      v351 = *(v349 + 52);
      swift_allocObject();
      v352 = sub_21402C09C(v348);

      *(v155 + v196) = v352;
      v348 = v352;
    }

    v353 = v345 & 1;
    v354 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
    result = swift_beginAccess();
    *(v348 + v354) = v353;
  }

  v355 = *(v165 + 366);
  if (!v355)
  {
    goto LABEL_141;
  }

  if (v355 == 1)
  {
LABEL_158:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v356 = *(v165 + 365);
  v357 = *(v165 + 366);

  v358 = *(v155 + v196);
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v360 = *(v155 + v196);
  if ((v359 & 1) == 0)
  {
    v361 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    v362 = *(v361 + 48);
    v363 = *(v361 + 52);
    swift_allocObject();
    v364 = sub_21402C09C(v360);

    *(v155 + v196) = v364;
    v360 = v364;
  }

  v365 = (v360 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v366 = v365[1];
  *v365 = v356;
  v365[1] = v355;

LABEL_141:
  v367 = *(v165 + 2937);
  if (v367 != 2)
  {
    v368 = *(v155 + v196);
    v369 = swift_isUniquelyReferenced_nonNull_native();
    v370 = *(v155 + v196);
    if ((v369 & 1) == 0)
    {
      v371 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v372 = *(v371 + 48);
      v373 = *(v371 + 52);
      swift_allocObject();
      v374 = sub_21402C09C(v370);

      *(v155 + v196) = v374;
      v370 = v374;
    }

    v375 = v367 & 1;
    v376 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
    result = swift_beginAccess();
    *(v370 + v376) = v375;
  }

  v377 = *(v165 + 2938);
  if (v377 != 2)
  {
    v378 = *(v155 + v196);
    v379 = swift_isUniquelyReferenced_nonNull_native();
    v380 = *(v155 + v196);
    if ((v379 & 1) == 0)
    {
      v381 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v382 = *(v381 + 48);
      v383 = *(v381 + 52);
      swift_allocObject();
      v384 = sub_21402C09C(v380);

      *(v155 + v196) = v384;
      v380 = v384;
    }

    v385 = v377 & 1;
    v386 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
    result = swift_beginAccess();
    *(v380 + v386) = v385;
  }

  v387 = *(v165 + 2939);
  if (v387 != 2)
  {
    v388 = *(v155 + v196);
    v389 = swift_isUniquelyReferenced_nonNull_native();
    v390 = *(v155 + v196);
    if ((v389 & 1) == 0)
    {
      v391 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v392 = *(v391 + 48);
      v393 = *(v391 + 52);
      swift_allocObject();
      v394 = sub_21402C09C(v390);

      *(v155 + v196) = v394;
      v390 = v394;
    }

    v395 = v387 & 1;
    v396 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
    result = swift_beginAccess();
    *(v390 + v396) = v395;
  }

  if ((v165[736] & 1) == 0)
  {
    v397 = v165[735];
    v398 = *(v155 + v196);
    v399 = swift_isUniquelyReferenced_nonNull_native();
    v400 = *(v155 + v196);
    if ((v399 & 1) == 0)
    {
      v401 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      v402 = *(v401 + 48);
      v403 = *(v401 + 52);
      swift_allocObject();
      v404 = sub_21402C09C(v400);

      *(v155 + v196) = v404;
      v400 = v404;
    }

    v405 = v400 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
    result = swift_beginAccess();
    *v405 = v397;
    *(v405 + 4) = 0;
  }

  return result;
}

uint64_t sub_214533A14()
{
  v2 = sub_2146D8E38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v13, v0, 0xB81uLL);
  v12[2] = v13;
  sub_214534FA4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
  sub_2146D9018();
  sub_2146D8E28();
  sub_2146D8FE8();
  (*(v3 + 8))(v6, v2);
  if (v1)
  {
    return sub_2145351E4(v10, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
  }

  sub_2145351E4(v10, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
  return v12[4];
}

uint64_t sub_214533C5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  sub_2146D8FD8();
  result = sub_213FB54FC(a1, a2);
  if (!v3)
  {
    v14 = *(v9 + 24);
    v15 = &v12[*(v9 + 20)];
    v16 = *v15;
    v17 = v15[4];
    v18 = v12[v14];
    result = sub_2145351E4(v12, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
    *a3 = v16;
    if (v18 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18;
    }

    *(a3 + 4) = v17;
    *(a3 + 5) = v19;
  }

  return result;
}

uint64_t sub_214533E24(uint64_t result, unint64_t a2)
{
  v3 = result;
  if ((a2 & 0x100000000) == 0)
  {
    result = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
    v4 = v3 + *(result + 20);
    *v4 = a2;
    *(v4 + 4) = 0;
  }

  if ((a2 & 0xFF0000000000) != 0x40000000000)
  {
    if (BYTE5(a2) >= 3u)
    {
      if ((a2 & 0xFF0000000000) != 0x30000000000)
      {
        __break(1u);
        return result;
      }

      LOBYTE(v5) = 3;
    }

    else
    {
      v5 = a2 >> 40;
    }

    result = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
    *(v3 + *(result + 24)) = v5;
  }

  return result;
}

uint64_t sub_214533EBC()
{
  v2 = sub_2146D8E38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  v15 = *v0;
  v16 = v11;
  v17 = v12;
  sub_214534FA4(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  sub_2146D9018();
  sub_2146D8E28();
  sub_2146D8FE8();
  (*(v3 + 8))(v6, v2);
  if (v1)
  {
    return sub_2145351E4(v10, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  }

  sub_2145351E4(v10, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  return v18;
}

uint64_t sub_2145340F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v83 = a3;
  v6 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = sub_2146D8E18();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = type metadata accessor for CSDMCallMessageProto(0);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  v102 = a2;
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903C58, type metadata accessor for CSDMCallMessageProto);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  v81 = v14;
  v82 = v9;
  v77 = a1;
  v78 = a2;
  v84 = 0;
  v24 = v19[6];
  v25 = v22[v19[5]];
  if (v25 >= 3)
  {
    v25 = 3;
  }

  v75 = v25;
  v74 = *&v22[v24];
  v76 = v22[v24 + 4];
  v26 = v19[8];
  v73 = v22[v19[7]];
  sub_213FB2E54(&v22[v26], v16, &unk_27C9037B8, &unk_2147598F0);
  v27 = *(v85 + 48);
  v28 = v27(v16, 1, v86);
  sub_213FB2DF4(v16, &unk_27C9037B8, &unk_2147598F0);
  if (v28 == 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0xB000000000000000;
  }

  else
  {
    v35 = v81;
    sub_213FB2E54(&v22[v26], v81, &unk_27C9037B8, &unk_2147598F0);
    if (v27(v35, 1, v86) == 1)
    {
      v36 = v82;
      sub_2146D8DE8();
      v37 = v86;
      *(v36 + *(v86 + 20)) = xmmword_2146E68C0;
      *(v36 + *(v37 + 24)) = xmmword_2146E68C0;
      *(v36 + *(v37 + 28)) = xmmword_2146E68C0;
      v38 = (v27)(v35, 1);
      v39 = v84;
      if (v38 != 1)
      {
        sub_213FB2DF4(v35, &unk_27C9037B8, &unk_2147598F0);
      }
    }

    else
    {
      v36 = v82;
      sub_214534FEC(v35, v82, type metadata accessor for CSDMAVConferenceInviteDataProto);
      v39 = v84;
    }

    sub_214534A08(v36, &v87);
    v84 = v39;
    v34 = *(&v87 + 1);
    v29 = v87;
    v31 = *(&v88 + 1);
    v30 = v88;
    v32 = v89;
    v33 = v90;
  }

  v68 = v32;
  v67 = v31;
  v85 = v29;
  v86 = v30;
  v40 = v19[10];
  v71 = v22[v19[9]];
  v72 = v22[v40];
  v41 = v19[12];
  v70 = v22[v19[11]];
  v43 = *&v22[v41];
  v42 = *&v22[v41 + 8];

  sub_214534D70(v29, v34, v30, v31, v32, v33, sub_213FDCA18);
  sub_214655A1C(&v87);
  v44 = v87;
  v45 = v88;
  v101 = v43;
  v102 = v42;
  v69 = v89;
  v103 = v89;
  *&v87 = 0xD000000000000027;
  *(&v87 + 1) = 0x800000021478D650;
  v80 = 0x800000021478D650;
  *&v88 = 0xD00000000000001CLL;
  *(&v88 + 1) = 0x800000021478A360;
  v79 = 0x800000021478A360;

  v81 = *(&v45 + 1);
  v82 = v45;
  sub_213FDC9D0(v45, *(&v45 + 1));
  v46 = v84;
  v84 = v44;
  v47 = (v44)(&v101, &v103, &v87);
  if (v46)
  {
    sub_213FB54FC(v77, v78);
    v48 = v67;
    v49 = v68;
    sub_214534D70(v85, v34, v86, v67, v68, v33, sub_213FDC6BC);
  }

  else
  {
    v64 = v43;
    v66 = v42;
    v65 = v33;
    v48 = v67;
    v50 = v85;
    v51 = v86;
    if (v47)
    {
      sub_213FDC6D0(v82, v81);

      sub_213FB54FC(v77, v78);
      v52 = v51;
      v53 = v68;
      v54 = v65;
      sub_214534D70(v50, v34, v52, v48, v68, v65, sub_213FDC6BC);

      v55 = v66;

      sub_213FDC6D0(v82, v81);
      result = sub_2145351E4(v22, type metadata accessor for CSDMCallMessageProto);
      v56 = v83;
      *v83 = v75;
      *(v56 + 1) = v74;
      v56[8] = v76;
      v56[9] = v73;
      *(v56 + 2) = v50;
      *(v56 + 3) = v34;
      *(v56 + 4) = v86;
      *(v56 + 5) = v48;
      *(v56 + 6) = v53;
      *(v56 + 7) = v54;
      v56[64] = v71;
      v56[65] = v72;
      v56[66] = v70;
      *(v56 + 9) = v84;
      *(v56 + 10) = *(&v44 + 1);
      *(v56 + 11) = v64;
      *(v56 + 12) = v55;
      v56[104] = v69;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    v57 = v80;
    *v58 = 0xD000000000000027;
    v58[1] = v57;
    v59 = v79;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = v59;
    swift_willThrow();

    sub_213FB54FC(v77, v78);
    v60 = v51;
    v49 = v68;
    v33 = v65;
    sub_214534D70(v50, v34, v60, v48, v68, v65, sub_213FDC6BC);
  }

  v61 = v82;
  v62 = v81;
  sub_213FDC6D0(v82, v81);
  LOBYTE(v87) = v75;
  DWORD1(v87) = v74;
  BYTE8(v87) = v76;
  BYTE9(v87) = v73;
  *&v88 = v85;
  *(&v88 + 1) = v34;
  v89 = v86;
  v90 = v48;
  v91 = v49;
  v92 = v33;
  v93 = v71;
  v94 = v72;
  v95 = v70;
  v96 = v84;
  v97 = *(&v44 + 1);
  v98 = v61;
  v99 = v62;
  v100 = v69;
  sub_2142E8DC4(&v87);
  return sub_2145351E4(v22, type metadata accessor for CSDMCallMessageProto);
}

uint64_t sub_214534A08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v5 = (a1 + v4[5]);
  v7 = *v5;
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
    sub_213FDCA18(v7, v6);
  }

  v8 = (a1 + v4[6]);
  v10 = *v8;
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_213FDCA18(v10, v9);
  }

  v11 = (a1 + v4[7]);
  v13 = *v11;
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_213FDCA18(v13, v12);
  }

  result = sub_2145351E4(a1, type metadata accessor for CSDMAVConferenceInviteDataProto);
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v9;
  a2[4] = v13;
  a2[5] = v12;
  return result;
}

uint64_t sub_214534AF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v21 = a1;
  v22 = a2;
  *&v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  sub_21453517C(v15, v13, type metadata accessor for CSDMAVConferenceInviteDataProto);
  sub_214534A08(v13, &v18);
  sub_2145351E4(v15, type metadata accessor for CSDMAVConferenceInviteDataProto);
  result = sub_213FB54FC(a1, a2);
  v17 = v19;
  *a3 = v18;
  a3[1] = v17;
  a3[2] = v20;
  return result;
}

void sub_214534D70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (a2 >> 60 != 11)
  {
    a7();
    (a7)(a3, a4);

    (a7)(a5, a6);
  }
}

uint64_t sub_214534F38(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214534FA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214534FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_214535078(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_214535098(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_2145350BC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2145350E4()
{
  result = qword_27C915238;
  if (!qword_27C915238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915238);
  }

  return result;
}

double sub_214535138(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21453517C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2145351E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214535258()
{
  result = qword_27C915240;
  if (!qword_27C915240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915240);
  }

  return result;
}

uint64_t type metadata accessor for ChatSessionClose()
{
  result = qword_280B307A8;
  if (!qword_280B307A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2145353B0(char a1)
{
  result = type metadata accessor for ChatSessionClose();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_21453544C(uint64_t a1)
{
  result = type metadata accessor for ChatSessionClose();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2145354C4()
{
  v1 = (v0 + *(type metadata accessor for ChatSessionClose() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214535504(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ChatSessionClose() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214535594()
{
  v1 = (v0 + *(type metadata accessor for ChatSessionClose() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2145355D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ChatSessionClose() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214535664()
{
  v1 = (v0 + *(type metadata accessor for ChatSessionClose() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2145356A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ChatSessionClose() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214535758(char a1)
{
  result = type metadata accessor for ChatSessionClose();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_2145357D0(uint64_t a1)
{
  *(a1 + 8) = sub_214535838(&qword_27C915248);
  result = sub_214535838(&qword_27C915250);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214535838(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChatSessionClose();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2145358A4()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21453594C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_2144A066C;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF60;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF94;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

unint64_t sub_214535C88@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF28;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF54;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

uint64_t sub_214535FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214536010(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21453606C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145360B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214536114@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214536160(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145361BC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214536238()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145362B4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214536330@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214536394()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_2145363C8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6572756C696166;
  }

  else
  {
    v2 = 0x73736563637573;
  }

  if (*a2)
  {
    v3 = 0x6572756C696166;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_214536450()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145364C8()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_214536524()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214536598@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2145365F8(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x6572756C696166;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_2145366E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214536828(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145368C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214536994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214536ADC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214536B78(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

uint64_t sub_214536C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v12 = *(v3 + 112);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 104);

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214536D58(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214536DF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

unint64_t sub_214536E90()
{
  result = qword_27C915258;
  if (!qword_27C915258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915258);
  }

  return result;
}

unint64_t sub_214536EE4(uint64_t a1)
{
  *(a1 + 8) = sub_214536F14();
  result = sub_214536F68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214536F14()
{
  result = qword_27C915260;
  if (!qword_27C915260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915260);
  }

  return result;
}

unint64_t sub_214536F68()
{
  result = qword_27C915268;
  if (!qword_27C915268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915268);
  }

  return result;
}

unint64_t sub_214536FDC()
{
  result = qword_27C915270;
  if (!qword_27C915270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915270);
  }

  return result;
}

uint64_t sub_214537030()
{
  type metadata accessor for UnpackerActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_280B30978 = v0;
  return result;
}

uint64_t static UnpackerActor.shared.getter()
{
  if (qword_280B30970 != -1)
  {
    swift_once();
  }
}

uint64_t UnpackerActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_214537134()
{
  result = qword_27C914D40;
  if (!qword_27C914D40)
  {
    type metadata accessor for UnpackerActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914D40);
  }

  return result;
}

uint64_t sub_2145371AC()
{
  if (qword_280B30970 != -1)
  {
    swift_once();
  }
}

uint64_t sub_214537208(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnpackerActor();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_214537258(uint64_t a1)
{
  *(a1 + 8) = sub_21431EA74();
  result = sub_21431DF08();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145372A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_2145372F8(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_214537344(uint64_t a1)
{
  *(a1 + 8) = sub_214307168();
  result = sub_214307684();
  *(a1 + 16) = result;
  return result;
}

BlastDoor::MBDActionType_optional __swiftcall MBDActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if ((rawValue + 1) < 0xE)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2145373AC()
{
  result = qword_27C915278;
  if (!qword_27C915278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915278);
  }

  return result;
}

unint64_t sub_214537408(uint64_t a1)
{
  *(a1 + 8) = sub_2142EA284();
  result = sub_2142EA3E0();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDActionContent()
{
  result = qword_27C915280;
  if (!qword_27C915280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214537544()
{
  sub_2145377B4(319, &qword_27C915290, &qword_27C915298);
  if (v0 <= 0x3F)
  {
    sub_2145377B4(319, &qword_27C9152A0, &qword_27C9152A8);
    if (v1 <= 0x3F)
    {
      sub_2145377B4(319, &qword_27C9152B0, &qword_27C9152B8);
      if (v2 <= 0x3F)
      {
        sub_2145377B4(319, &qword_27C9152C0, &qword_27C9152C8);
        if (v3 <= 0x3F)
        {
          sub_2145377B4(319, &qword_27C9152D0, &qword_27C9152D8);
          if (v4 <= 0x3F)
          {
            sub_2145377B4(319, &qword_27C9152E0, &qword_27C9152E8);
            if (v5 <= 0x3F)
            {
              sub_2145377B4(319, &qword_27C9152F0, &qword_27C9152F8);
              if (v6 <= 0x3F)
              {
                sub_214537804();
                if (v7 <= 0x3F)
                {
                  sub_2145377B4(319, &qword_27C915310, &qword_27C915318);
                  if (v8 <= 0x3F)
                  {
                    sub_2145377B4(319, &qword_27C915320, &qword_27C915328);
                    if (v9 <= 0x3F)
                    {
                      sub_2145377B4(319, &qword_27C915330, &qword_27C915338);
                      if (v10 <= 0x3F)
                      {
                        sub_2145377B4(319, &qword_27C915340, &qword_27C915348);
                        if (v11 <= 0x3F)
                        {
                          sub_2145377B4(319, &qword_27C915350, &qword_27C915358);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_2145377B4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_21403BEC8(0, a3);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_214537804()
{
  if (!qword_27C915300)
  {
    sub_21453784C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C915300);
    }
  }
}

void sub_21453784C()
{
  if (!qword_27C915308)
  {
    type metadata accessor for MBDActionCalendar();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C915308);
    }
  }
}

unint64_t sub_2145378A4()
{
  result = qword_27C915360;
  if (!qword_27C915360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915360);
  }

  return result;
}

uint64_t sub_214537974(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2146D8D98();
}

uint64_t sub_214537A0C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v35 = sub_2146D8D48();
  v31 = *(v35 - 8);
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v28 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v34 = &v28 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v33 = &v28 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v36 = 37;
  v37 = 0xE100000000000000;
  v21 = sub_2145031D0();
  MEMORY[0x216053AF0](v38, &v36, MEMORY[0x277D837D0], v21);
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_27CA19E38);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v29 = v20;
  MEMORY[0x216053AF0](v22, v4, v23);
  MEMORY[0x216053AF0](v22, v4, v23);
  v36 = v38[0];
  v37 = v38[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  v24 = v30;
  sub_2146D8CD8();
  v25 = *(v5 + 8);
  v25(v9, v4);
  v25(v12, v4);
  v31 = *(v31 + 8);
  (v31)(v3, v35);
  sub_2146D8C38();
  sub_2146D8D08();
  v26 = v33;
  sub_2146D8D08();
  sub_2146D8CD8();
  v25(v9, v4);
  v25(v12, v4);
  (v31)(v3, v35);
  v25(v24, v4);
  v25(v34, v4);
  v25(v26, v4);
  return (v25)(v29, v4);
}

uint64_t sub_214537EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v5, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_2146D8C08();
  return (v9)(v7, v0);
}

uint64_t sub_214538040@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2146D8D48();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - v6;
  v7 = sub_2146D8C48();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_27CA19E08);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v15;
  MEMORY[0x216053AD0](v22, v15, v23);
  v43 = 2120166957;
  v44 = 0xE400000000000000;
  sub_2146D8D58();
  sub_2146D8D78();
  v24 = sub_2145030B8();
  MEMORY[0x216053AD0](v12, v7, v24);
  v32 = v21;
  v25 = *(v34 + 8);
  v25(v12, v7);
  v26 = v35;
  sub_2146D8BE8();
  v27 = v37;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v28 = MEMORY[0x277D83E40];
  v29 = v39;
  sub_2146D8CF8();
  (*(v40 + 8))(v27, v41);
  MEMORY[0x216053B70](v19, v28);
  (*(v38 + 8))(v26, v29);
  v25(v14, v7);
  return (*(v36 + 8))(v32, v33);
}

unint64_t sub_2145384E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EAEB0;
  v8 = sub_214069764(&unk_282653928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214059810;
  *(v9 + 24) = v10;
  *(v7 + 32) = v9;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = __swift_project_value_buffer(v11, qword_27CA19E80);
  (*(*(v11 - 8) + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  v13 = swift_allocObject();
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2144A041C(v5, v15 + v14);
  *(v13 + 16) = sub_214306D5C;
  *(v13 + 24) = v15;
  *(v7 + 40) = v13;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v16 + 16) = sub_21439DF54;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214538784@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if ((result + 1) < 4)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2145387AC()
{
  result = qword_27C915368;
  if (!qword_27C915368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915368);
  }

  return result;
}

uint64_t sub_214538910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21453896C()
{
  result = qword_27C915370;
  if (!qword_27C915370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915370);
  }

  return result;
}

uint64_t sub_2145389C0(void (*a1)(uint64_t *__return_ptr, _BYTE *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      memcpy(__dst, v9, 0x121uLL);
      memcpy(__src, v9, 0x121uLL);
      sub_21430B818(__dst, v12);
      a1(&v15, __src, &v13);
      if (v4)
      {
        memcpy(v12, __src, 0x121uLL);
        sub_21430B698(v12);
      }

      v4 = 0;
      memcpy(v12, __src, 0x121uLL);
      sub_21430B698(v12);
      sub_2146D9F98();
      v11 = *(v17 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v9 += 296;
    }

    return v17;
  }

  return result;
}

uint64_t sub_214538B10(void (*a1)(uint64_t *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v57 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      v11 = v9[7];
      v12 = v9[9];
      v54 = v9[8];
      v55 = v12;
      v13 = v9[3];
      v14 = v9[5];
      v50 = v9[4];
      v51 = v14;
      v15 = v9[5];
      v16 = v9[7];
      v52 = v9[6];
      v53 = v16;
      v17 = v9[1];
      v47[0] = *v9;
      v47[1] = v17;
      v18 = v9[3];
      v20 = *v9;
      v19 = v9[1];
      v48 = v9[2];
      v49 = v18;
      v21 = v9[9];
      v43 = v54;
      v44 = v21;
      v39 = v50;
      v40 = v15;
      v41 = v52;
      v42 = v11;
      v35 = v20;
      v36 = v19;
      v56 = *(v9 + 20);
      v45 = *(v9 + 20);
      v37 = v48;
      v38 = v13;
      sub_2143DA3B8(v47, &v23);
      a1(&v46, &v35, &v34);
      if (v4)
      {
        v31 = v43;
        v32 = v44;
        v33 = v45;
        v27 = v39;
        v28 = v40;
        v29 = v41;
        v30 = v42;
        v23 = v35;
        v24 = v36;
        v25 = v37;
        v26 = v38;
        sub_2143DA414(&v23);
      }

      v4 = 0;
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      sub_2143DA414(&v23);
      sub_2146D9F98();
      v22 = *(v57 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v9 = (v9 + 168);
    }

    return v57;
  }

  return result;
}

char *sub_214538CE4(void (*a1)(void *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v20 = MEMORY[0x277D84F90];
    result = sub_2140A00A0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v20;
    v10 = i - 1;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216054E00](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v18 = v11;
      a1(__src, &v18, &v17);
      if (v4)
      {

        return v7;
      }

      v4 = 0;

      memcpy(__dst, __src, sizeof(__dst));
      v20 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2140A00A0((v13 > 1), v14 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      memcpy((v7 + 296 * v14 + 32), __dst, 0x121uLL);
      if (v10 == v9)
      {
        return v7;
      }

      ++v9;
    }

    while (!__OFADD__(v9, 1));
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

char *sub_214538E9C(void (*a1)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v32 = MEMORY[0x277D84F90];
    result = sub_2140A0080(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v32;
    v10 = i - 1;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216054E00](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v29 = v11;
      a1(v30, &v29, &v28);
      if (v4)
      {

        return v7;
      }

      v4 = 0;

      v21 = v30[4];
      v22 = v30[5];
      v18 = v30[1];
      v19 = v30[2];
      v20 = v30[3];
      v25 = v30[8];
      v26 = v30[9];
      v23 = v30[6];
      v24 = v30[7];
      v27 = v31;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v17 = v30[0];
      v32 = v7;
      if (v14 >= v13 >> 1)
      {
        sub_2140A0080((v13 > 1), v14 + 1, 1);
        v7 = v32;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 168 * v14;
      *(v15 + 48) = v18;
      *(v15 + 64) = v19;
      *(v15 + 32) = v17;
      *(v15 + 112) = v22;
      *(v15 + 128) = v23;
      *(v15 + 80) = v20;
      *(v15 + 96) = v21;
      *(v15 + 192) = v27;
      *(v15 + 160) = v25;
      *(v15 + 176) = v26;
      *(v15 + 144) = v24;
      if (v10 == v9)
      {
        return v7;
      }

      ++v9;
    }

    while (!__OFADD__(v9, 1));
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}