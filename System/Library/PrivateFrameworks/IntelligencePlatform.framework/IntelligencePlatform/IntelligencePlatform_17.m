id sub_1ABBAE414()
{
  v1 = sub_1ABF240C4();

  v2 = sub_1ABF240C4();

  v3 = sub_1ABF240C4();

  v4 = sub_1ABF240C4();

  v5 = [v0 initWithNames:v1 contactIdentifiers:v2 visualIdentifiers:v3 emails:v4];

  return v5;
}

id sub_1ABBAE4F4(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, void *a10, void *a11, char a12, void *a13)
{
  v14 = v13;
  if (a9)
  {
    v26 = sub_1ABF23BD4();
  }

  else
  {
    v26 = 0;
  }

  v27 = [v14 initWithEntityID:a1 sourceID:a2 entityClass:v26 features:a10 score:a11 nameScore:a12 & 1 contextualScore:a3 entityRelevance:a4 entityRelevanceInferenceEventId:a5 confirmationConfidence:a6 isRelationshipMatch:a7 identifierInformation:a13];

  return v27;
}

id sub_1ABBAE608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAFF390(0, &qword_1ED86B978, off_1E7960330);
  v7 = sub_1ABF240C4();

  if (a4)
  {
    v8 = sub_1ABF23BD4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithSpan:a1 rankedEntities:v7 entityClass:v8];

  return v9;
}

uint64_t sub_1ABBAE6C8(void *a1)
{
  v1 = [a1 entityClassFilter];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF240D4();

  return v3;
}

uint64_t sub_1ABBAE720(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1ABAFF390(0, a3, a4);
  v8 = sub_1ABF240D4();

  return v8;
}

uint64_t sub_1ABBAE794(uint64_t a1)
{
  if (*(a1 + 968))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBAE7B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABB37294(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABBAE7C4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1ABF23C04();

  return v4;
}

void sub_1ABBAE824(char a1)
{
  switch(a1)
  {
    case 6:
      return;
    default:
      sub_1ABA7F0D0();
      break;
  }
}

unint64_t sub_1ABBAE950(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD00000000000002BLL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
    case 10:
    case 25:
    case 28:
    case 35:
    case 38:
    case 105:
      result = 0xD00000000000004FLL;
      break;
    case 8:
    case 11:
    case 26:
    case 29:
    case 36:
    case 39:
    case 88:
    case 91:
      result = 0xD000000000000053;
      break;
    case 9:
    case 12:
    case 27:
    case 30:
    case 61:
    case 64:
    case 76:
    case 79:
    case 82:
    case 89:
    case 92:
      result = 0xD000000000000057;
      break;
    case 13:
    case 31:
    case 41:
      result = 0xD000000000000051;
      break;
    case 14:
    case 32:
    case 42:
    case 70:
    case 73:
    case 94:
      result = 0xD000000000000055;
      break;
    case 15:
    case 33:
    case 67:
    case 71:
    case 74:
    case 85:
    case 95:
      result = 0xD000000000000059;
      break;
    case 16:
    case 19:
    case 52:
    case 55:
    case 62:
    case 65:
    case 77:
    case 80:
    case 83:
    case 90:
    case 93:
      result = 0xD00000000000005BLL;
      break;
    case 17:
    case 20:
    case 53:
    case 56:
    case 63:
    case 66:
    case 78:
    case 81:
    case 84:
      result = 0xD00000000000005FLL;
      break;
    case 18:
    case 21:
    case 54:
    case 57:
      result = 0xD000000000000063;
      break;
    case 22:
    case 58:
    case 68:
    case 72:
    case 75:
    case 86:
    case 96:
      result = 0xD00000000000005DLL;
      break;
    case 23:
    case 59:
    case 69:
    case 87:
      result = 0xD000000000000061;
      break;
    case 24:
    case 60:
      result = 0xD000000000000065;
      break;
    case 34:
    case 37:
    case 45:
    case 48:
    case 104:
      result = 0xD00000000000004BLL;
      break;
    case 40:
    case 51:
    case 99:
    case 102:
    case 108:
    case 111:
    case 113:
      result = 0xD00000000000004DLL;
      break;
    case 43:
    case 46:
      result = 0xD000000000000043;
      break;
    case 44:
    case 47:
    case 103:
      result = 0xD000000000000047;
      break;
    case 49:
    case 97:
    case 100:
    case 106:
    case 109:
    case 118:
      result = 0xD000000000000045;
      break;
    case 50:
    case 98:
    case 101:
    case 107:
    case 110:
      result = 0xD000000000000049;
      break;
    case 112:
    case 114:
    case 115:
      result = 0xD00000000000003BLL;
      break;
    case 116:
      result = 0xD000000000000046;
      break;
    case 117:
      result = 0xD00000000000003DLL;
      break;
    case 119:
      result = 0xD000000000000038;
      break;
    case 120:
      result = 0xD00000000000003ALL;
      break;
    case 121:
      result = 0xD000000000000058;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBAF02C()
{
  result = sub_1ABE8AE5C(&unk_1F208FC48);
  qword_1EB5495B0 = result;
  return result;
}

BOOL static EntityFeatures.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))));
  v5 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))));
  v6 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 320), *(a2 + 320)), vceqq_f64(*(a1 + 336), *(a2 + 336))), vuzp1q_s32(vceqq_f64(*(a1 + 352), *(a2 + 352)), vceqq_f64(*(a1 + 368), *(a2 + 368))));
  v7 = vcltzq_s8(vshlq_n_s8(vandq_s8(vandq_s8(vuzp1q_s8(v5, v4), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 256), *(a2 + 256)), vceqq_f64(*(a1 + 272), *(a2 + 272))), vuzp1q_s32(vceqq_f64(*(a1 + 288), *(a2 + 288)), vceqq_f64(*(a1 + 304), *(a2 + 304)))), v6)), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144))), vuzp1q_s32(vceqq_f64(*(a1 + 160), *(a2 + 160)), vceqq_f64(*(a1 + 176), *(a2 + 176)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 192), *(a2 + 192)), vceqq_f64(*(a1 + 208), *(a2 + 208))), vuzp1q_s32(vceqq_f64(*(a1 + 224), *(a2 + 224)), vceqq_f64(*(a1 + 240), *(a2 + 240))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 384), *(a2 + 384)), vceqq_f64(*(a1 + 400), *(a2 + 400))), vuzp1q_s32(vceqq_f64(*(a1 + 416), *(a2 + 416)), vceqq_f64(*(a1 + 432), *(a2 + 432)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 448), *(a2 + 448)), vceqq_f64(*(a1 + 464), *(a2 + 464))), vuzp1q_s32(vceqq_f64(*(a1 + 480), *(a2 + 480)), vceqq_f64(*(a1 + 496), *(a2 + 496))))))), 7uLL));
  v7.i8[0] = vminvq_u8(v7);
  v8 = v7.i32[0];
  v9 = vcltzq_s8(vshlq_n_s8(vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 512), *(a2 + 512)), vceqq_f64(*(a1 + 528), *(a2 + 528))), vuzp1q_s32(vceqq_f64(*(a1 + 544), *(a2 + 544)), vceqq_f64(*(a1 + 560), *(a2 + 560)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 576), *(a2 + 576)), vceqq_f64(*(a1 + 592), *(a2 + 592))), vuzp1q_s32(vceqq_f64(*(a1 + 608), *(a2 + 608)), vceqq_f64(*(a1 + 624), *(a2 + 624))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 640), *(a2 + 640)), vceqq_f64(*(a1 + 656), *(a2 + 656))), vuzp1q_s32(vceqq_f64(*(a1 + 672), *(a2 + 672)), vceqq_f64(*(a1 + 688), *(a2 + 688)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 704), *(a2 + 704)), vceqq_f64(*(a1 + 720), *(a2 + 720))), vuzp1q_s32(vceqq_f64(*(a1 + 736), *(a2 + 736)), vceqq_f64(*(a1 + 752), *(a2 + 752)))))), 7uLL));
  v9.i8[0] = vminvq_u8(v9);
  v10 = v9.i32[0];
  v11 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 768), *(a2 + 768)), vceqq_f64(*(a1 + 784), *(a2 + 784))), vuzp1q_s32(vceqq_f64(*(a1 + 800), *(a2 + 800)), vceqq_f64(*(a1 + 816), *(a2 + 816)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 832), *(a2 + 832)), vceqq_f64(*(a1 + 848), *(a2 + 848))), vuzp1q_s32(vceqq_f64(*(a1 + 864), *(a2 + 864)), vceqq_f64(*(a1 + 880), *(a2 + 880)))));
  v11.i8[0] = vminvq_u8(v11);
  v12 = v11.i32[0];
  *v11.i8 = vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 912), *(a2 + 912)), vceqq_f64(*(a1 + 928), *(a2 + 928))));
  v11.i16[0] = vminv_u16(*v11.i8);
  v13 = v8 & v10 & v12 & v11.i32[0] & (*(a1 + 952) == *(a2 + 952));
  if (*(a1 + 896) != *(a2 + 896))
  {
    v13 = 0;
  }

  if (*(a1 + 900) != *(a2 + 900))
  {
    v13 = 0;
  }

  if (v13 == 1 && *(a1 + 904) == *(a2 + 904) && *(a1 + 944) == *(a2 + 944))
  {
    return *(a1 + 960) == *(a2 + 960);
  }

  return result;
}

void EntityFeatures.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1ABAB1064();
  a30 = v33;
  a31 = v34;
  v169 = v32;
  v36 = v35;
  v37 = sub_1ABAD219C(&qword_1EB4D4058, &qword_1ABF420B0);
  sub_1ABA7BB64(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v90 - v43;
  v45 = *(v31 + 8);
  v170 = *v31;
  v46 = *(v31 + 24);
  v167 = *(v31 + 16);
  v168 = v45;
  v47 = *(v31 + 40);
  v165 = *(v31 + 32);
  v166 = v46;
  v48 = *(v31 + 56);
  v163 = *(v31 + 48);
  v164 = v47;
  v49 = *(v31 + 72);
  v161 = *(v31 + 64);
  v162 = v48;
  v50 = *(v31 + 88);
  v159 = *(v31 + 80);
  v160 = v49;
  v158 = v50;
  v51 = *(v31 + 104);
  v157 = *(v31 + 96);
  v156 = v51;
  v52 = *(v31 + 120);
  v155 = *(v31 + 112);
  v154 = v52;
  v53 = *(v31 + 136);
  v153 = *(v31 + 128);
  v90[1] = v53;
  v54 = *(v31 + 152);
  v90[2] = *(v31 + 144);
  v90[3] = v54;
  v55 = *(v31 + 168);
  v90[4] = *(v31 + 160);
  v90[5] = v55;
  v56 = *(v31 + 184);
  v90[6] = *(v31 + 176);
  v90[7] = v56;
  v57 = *(v31 + 200);
  v90[8] = *(v31 + 192);
  v90[9] = v57;
  v58 = *(v31 + 216);
  v90[10] = *(v31 + 208);
  v90[12] = v58;
  v59 = *(v31 + 232);
  v90[14] = *(v31 + 224);
  v90[16] = v59;
  v60 = *(v31 + 248);
  v90[18] = *(v31 + 240);
  v90[20] = v60;
  a18 = *(v31 + 896);
  v152[1] = *(v31 + 900);
  v61 = *(v31 + 904);
  v62 = *(v31 + 944);
  v64 = v36[3];
  v63 = v36[4];
  v65 = *(v31 + 264);
  v90[11] = *(v31 + 256);
  v90[13] = v65;
  v66 = *(v31 + 280);
  v90[15] = *(v31 + 272);
  v90[17] = v66;
  v67 = *(v31 + 296);
  v90[19] = *(v31 + 288);
  v90[21] = v67;
  v68 = *(v31 + 312);
  v90[22] = *(v31 + 304);
  v90[23] = v68;
  v69 = *(v31 + 328);
  v90[24] = *(v31 + 320);
  v90[25] = v69;
  v70 = *(v31 + 344);
  v90[26] = *(v31 + 336);
  v90[27] = v70;
  v71 = *(v31 + 360);
  v90[28] = *(v31 + 352);
  v90[29] = v71;
  v72 = *(v31 + 376);
  v90[30] = *(v31 + 368);
  v90[31] = v72;
  v73 = *(v31 + 392);
  v90[32] = *(v31 + 384);
  v91 = v73;
  v74 = *(v31 + 408);
  v92 = *(v31 + 400);
  v93 = v74;
  v75 = *(v31 + 424);
  v94 = *(v31 + 416);
  v95 = v75;
  v76 = *(v31 + 440);
  v96 = *(v31 + 432);
  v97 = v76;
  v77 = *(v31 + 456);
  v98 = *(v31 + 448);
  v99 = v77;
  v78 = *(v31 + 472);
  v100 = *(v31 + 464);
  v101 = v78;
  v79 = *(v31 + 488);
  v102 = *(v31 + 480);
  v103 = v79;
  v80 = *(v31 + 504);
  v104 = *(v31 + 496);
  v105 = v80;
  v106 = *(v31 + 512);
  v107 = *(v31 + 520);
  v108 = *(v31 + 528);
  v109 = *(v31 + 536);
  v110 = *(v31 + 544);
  v111 = *(v31 + 552);
  v112 = *(v31 + 560);
  v113 = *(v31 + 568);
  v114 = *(v31 + 576);
  v115 = *(v31 + 584);
  v116 = *(v31 + 592);
  v117 = *(v31 + 600);
  v118 = *(v31 + 608);
  v119 = *(v31 + 616);
  v120 = *(v31 + 624);
  v121 = *(v31 + 632);
  v122 = *(v31 + 640);
  v123 = *(v31 + 648);
  v124 = *(v31 + 656);
  v125 = *(v31 + 664);
  v126 = *(v31 + 672);
  v127 = *(v31 + 680);
  v128 = *(v31 + 688);
  v129 = *(v31 + 696);
  v130 = *(v31 + 704);
  v131 = *(v31 + 712);
  v132 = *(v31 + 720);
  v133 = *(v31 + 728);
  v134 = *(v31 + 736);
  v135 = *(v31 + 744);
  v136 = *(v31 + 752);
  v137 = *(v31 + 760);
  v138 = *(v31 + 768);
  v139 = *(v31 + 776);
  v140 = *(v31 + 784);
  v141 = *(v31 + 792);
  v142 = *(v31 + 800);
  v143 = *(v31 + 808);
  v144 = *(v31 + 816);
  v145 = *(v31 + 824);
  v146 = *(v31 + 832);
  v147 = *(v31 + 840);
  v148 = *(v31 + 848);
  v149 = *(v31 + 856);
  v150 = *(v31 + 864);
  v151 = *(v31 + 872);
  v81 = *(v31 + 880);
  v82 = *(v31 + 888);
  v83 = *(v31 + 912);
  v84 = *(v31 + 920);
  v85 = *(v31 + 928);
  v86 = *(v31 + 936);
  v87 = *(v31 + 952);
  v88 = *(v31 + 960);
  sub_1ABA93E20(v36, v64);
  sub_1ABBB05A0();
  sub_1ABF252E4();
  a21 = 0;
  v170 = v37;
  v89 = v169;
  sub_1ABF24F54();
  if (!v89)
  {
    sub_1ABA7F0C4(1);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(2);
    sub_1ABAA3030();
    sub_1ABA7F0C4(3);
    sub_1ABAA3030();
    sub_1ABA7F0C4(4);
    sub_1ABAA3030();
    sub_1ABA7F0C4(5);
    sub_1ABAA3030();
    sub_1ABA7F0C4(6);
    sub_1ABAA3030();
    sub_1ABA7F0C4(7);
    sub_1ABAA3030();
    sub_1ABA7F0C4(8);
    sub_1ABAA3030();
    sub_1ABA7F0C4(9);
    sub_1ABAA3030();
    sub_1ABA7F0C4(10);
    sub_1ABAA3030();
    sub_1ABA7F0C4(11);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(12);
    sub_1ABA7D578(&a29);
    sub_1ABA7F0C4(13);
    sub_1ABA7D578(&a28);
    sub_1ABA7F0C4(14);
    sub_1ABA7D578(&a27);
    sub_1ABA7F0C4(15);
    sub_1ABA7D578(&a26);
    sub_1ABA7F0C4(16);
    sub_1ABA7D578(&a25);
    sub_1ABA7F0C4(17);
    sub_1ABA7D578(&v91);
    sub_1ABA7F0C4(18);
    sub_1ABA7D578(&v92);
    sub_1ABA7F0C4(19);
    sub_1ABA7D578(&v93);
    sub_1ABA7F0C4(20);
    sub_1ABA7D578(&v94);
    sub_1ABA7F0C4(21);
    sub_1ABA7D578(&v95);
    sub_1ABA7F0C4(22);
    sub_1ABA7D578(&v96);
    sub_1ABA7F0C4(23);
    sub_1ABA7D578(&v97);
    sub_1ABA7F0C4(24);
    sub_1ABA7D578(&v98);
    sub_1ABA7F0C4(25);
    sub_1ABA7D578(&v99);
    sub_1ABA7F0C4(26);
    sub_1ABA7D578(&v100);
    sub_1ABA7F0C4(27);
    sub_1ABA7D578(&v102);
    sub_1ABA7F0C4(28);
    sub_1ABA7D578(&v104);
    sub_1ABA7F0C4(29);
    sub_1ABA7D578(&v106);
    sub_1ABA7F0C4(30);
    sub_1ABA7D578(&v108);
    sub_1ABA7F0C4(31);
    sub_1ABA7D578(&v110);
    sub_1ABA7F0C4(32);
    sub_1ABA7D578(&v101);
    sub_1ABA7F0C4(33);
    sub_1ABA7D578(&v103);
    sub_1ABA7F0C4(34);
    sub_1ABA7D578(&v105);
    sub_1ABA7F0C4(35);
    sub_1ABA7D578(&v107);
    sub_1ABA7F0C4(36);
    sub_1ABA7D578(&v109);
    sub_1ABA7F0C4(37);
    sub_1ABA7D578(&v111);
    sub_1ABA7F0C4(38);
    sub_1ABA7D578(&v112);
    sub_1ABA7F0C4(39);
    sub_1ABA7D578(&v113);
    sub_1ABA7F0C4(40);
    sub_1ABA7D578(&v114);
    sub_1ABA7F0C4(41);
    sub_1ABA7D578(&v115);
    sub_1ABA7F0C4(42);
    sub_1ABA7D578(&v116);
    sub_1ABA7F0C4(43);
    sub_1ABA7D578(&v117);
    sub_1ABA7F0C4(44);
    sub_1ABA7D578(&v118);
    sub_1ABA7F0C4(45);
    sub_1ABA7D578(&v119);
    sub_1ABA7F0C4(46);
    sub_1ABA7D578(&v120);
    sub_1ABA7F0C4(47);
    sub_1ABA7D578(&v121);
    sub_1ABA7F0C4(48);
    sub_1ABA7D578(&v122);
    sub_1ABA7F0C4(49);
    sub_1ABA7D578(&v123);
    sub_1ABA7F0C4(50);
    sub_1ABA7D578(&v124);
    sub_1ABA7F0C4(51);
    sub_1ABA7D578(&v125);
    sub_1ABA7F0C4(52);
    sub_1ABA7D578(&v126);
    sub_1ABA7F0C4(53);
    sub_1ABA7D578(&v127);
    sub_1ABA7F0C4(54);
    sub_1ABA7D578(&v128);
    sub_1ABA7F0C4(55);
    sub_1ABA7D578(&v129);
    sub_1ABA7F0C4(56);
    sub_1ABA7D578(&v130);
    sub_1ABA7F0C4(57);
    sub_1ABA7D578(&v131);
    sub_1ABA7F0C4(58);
    sub_1ABA7D578(&v132);
    sub_1ABA7F0C4(59);
    sub_1ABA7D578(&v133);
    sub_1ABA7F0C4(60);
    sub_1ABA7D578(&v134);
    sub_1ABA7F0C4(61);
    sub_1ABA7D578(&v135);
    sub_1ABA7F0C4(62);
    sub_1ABA7D578(&v136);
    sub_1ABA7F0C4(63);
    sub_1ABA7D578(&v137);
    sub_1ABA7F0C4(64);
    sub_1ABA7D578(&v138);
    sub_1ABA7F0C4(65);
    sub_1ABA7D578(&v139);
    sub_1ABA7F0C4(66);
    sub_1ABA7D578(&v140);
    sub_1ABA7F0C4(67);
    sub_1ABA7D578(&v141);
    sub_1ABA7F0C4(68);
    sub_1ABA7D578(&v142);
    sub_1ABA7F0C4(69);
    sub_1ABA7D578(&v143);
    sub_1ABA7F0C4(70);
    sub_1ABA7D578(&v144);
    sub_1ABA7F0C4(71);
    sub_1ABA7D578(&v145);
    sub_1ABA7F0C4(72);
    sub_1ABA7D578(&v146);
    sub_1ABA7F0C4(73);
    sub_1ABA7D578(&v147);
    sub_1ABA7F0C4(74);
    sub_1ABA7D578(&v148);
    sub_1ABA7F0C4(75);
    sub_1ABA7D578(&v149);
    sub_1ABA7F0C4(76);
    sub_1ABA7D578(&v150);
    sub_1ABA7F0C4(77);
    sub_1ABA7D578(&v151);
    sub_1ABA7F0C4(78);
    sub_1ABA7D578(v152);
    sub_1ABA7F0C4(79);
    sub_1ABA7D578(&v153);
    sub_1ABA7F0C4(80);
    sub_1ABA7D578(&v154);
    sub_1ABA7F0C4(81);
    sub_1ABA7D578(&v155);
    sub_1ABA7F0C4(82);
    sub_1ABA7D578(&v156);
    sub_1ABA7F0C4(83);
    sub_1ABA7D578(&v157);
    sub_1ABA7F0C4(84);
    sub_1ABA7D578(&v158);
    sub_1ABA7F0C4(85);
    sub_1ABA7D578(&v159);
    sub_1ABA7F0C4(86);
    sub_1ABA7D578(&v160);
    sub_1ABA7F0C4(87);
    sub_1ABA7D578(&v161);
    sub_1ABA7F0C4(88);
    sub_1ABA7D578(&v162);
    sub_1ABA7F0C4(89);
    sub_1ABA7D578(&v163);
    sub_1ABA7F0C4(90);
    sub_1ABA7D578(&v164);
    sub_1ABA7F0C4(91);
    sub_1ABA7D578(&v165);
    sub_1ABA7F0C4(92);
    sub_1ABA7D578(&v166);
    sub_1ABA7F0C4(93);
    sub_1ABA7D578(&v167);
    sub_1ABA7F0C4(94);
    sub_1ABA7D578(&v168);
    sub_1ABA7F0C4(95);
    sub_1ABA7D578(&v169);
    sub_1ABA7F0C4(96);
    sub_1ABA7D578(&v170);
    sub_1ABA7F0C4(97);
    sub_1ABA7D578(&v171);
    sub_1ABA7F0C4(98);
    sub_1ABA7D578(&a9);
    sub_1ABA7F0C4(99);
    sub_1ABA7D578(&a10);
    sub_1ABA7F0C4(100);
    sub_1ABA7D578(&a11);
    sub_1ABA7F0C4(101);
    sub_1ABA7D578(&a12);
    sub_1ABA7F0C4(102);
    sub_1ABA7D578(&a13);
    sub_1ABA7F0C4(103);
    sub_1ABA7D578(&a14);
    sub_1ABA7F0C4(104);
    sub_1ABA7D578(&a15);
    sub_1ABA7F0C4(105);
    sub_1ABA7D578(&a16);
    sub_1ABA7F0C4(106);
    sub_1ABA7D578(&a17);
    sub_1ABA7F0C4(107);
    sub_1ABA7D578(&a18);
    sub_1ABA7F0C4(108);
    sub_1ABA7D578(&a22);
    sub_1ABA7F0C4(109);
    sub_1ABA7D578(&a23);
    sub_1ABA7F0C4(110);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(111);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7AC90(112);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7AC90(113);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7AC90(114);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7F0C4(115);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(116);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(117);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(118);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7AC90(119);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7F0C4(120);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(121);
    sub_1ABA80994();
    sub_1ABF24F54();
  }

  (*(v39 + 8))(v44, v170);
  sub_1ABAA1ED4();
}

unint64_t sub_1ABBB05A0()
{
  result = qword_1EB4CFFF0;
  if (!qword_1EB4CFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFF0);
  }

  return result;
}

void EntityFeatures.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1ABAB1064();
  a30 = v32;
  a31 = v33;
  v35 = v34;
  v37 = v36;
  v38 = sub_1ABAD219C(&qword_1EB4D4060, &qword_1ABF420B8);
  sub_1ABA7BB64(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v204 - v44;
  v46 = v35[4];
  sub_1ABA93E20(v35, v35[3]);
  sub_1ABBB05A0();
  sub_1ABF252C4();
  if (!v31)
  {
    a21 = 0;
    sub_1ABA80994();
    sub_1ABF24E34();
    v48 = v47;
    sub_1ABA8F270(1);
    sub_1ABF24E34();
    v50 = v49;
    sub_1ABA8F270(2);
    sub_1ABF24E34();
    v52 = v51;
    sub_1ABA8F270(3);
    sub_1ABF24E34();
    v54 = v53;
    sub_1ABA8F270(4);
    sub_1ABF24E34();
    v56 = v55;
    sub_1ABA8F270(5);
    sub_1ABF24E34();
    v58 = v57;
    sub_1ABA8F270(6);
    sub_1ABF24E34();
    v60 = v59;
    sub_1ABA8F270(7);
    sub_1ABF24E34();
    v308 = v61;
    sub_1ABA8F270(8);
    sub_1ABF24E34();
    v63 = v62;
    sub_1ABA8F270(9);
    sub_1ABF24E34();
    v307 = v64;
    sub_1ABA8F270(10);
    sub_1ABF24E34();
    v306 = v65;
    sub_1ABA8F270(11);
    sub_1ABF24E34();
    v305 = v66;
    sub_1ABA8F270(12);
    sub_1ABF24E34();
    v304 = v67;
    sub_1ABA8F270(13);
    sub_1ABF24E34();
    v303 = v68;
    sub_1ABA8F270(14);
    sub_1ABF24E34();
    v302 = v69;
    sub_1ABA8F270(15);
    sub_1ABF24E34();
    v301 = v70;
    sub_1ABA8F270(16);
    sub_1ABF24E34();
    v300 = v71;
    sub_1ABA8F270(17);
    sub_1ABF24E34();
    v299 = v72;
    sub_1ABA8F270(18);
    sub_1ABF24E34();
    v298 = v73;
    sub_1ABA8F270(19);
    sub_1ABF24E34();
    v297 = v74;
    sub_1ABA8F270(20);
    sub_1ABF24E34();
    v296 = v75;
    sub_1ABA8F270(21);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a29, v76);
    sub_1ABA8F270(22);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a28, v77);
    sub_1ABA8F270(23);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a27, v78);
    sub_1ABA8F270(24);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a26, v79);
    sub_1ABA8F270(25);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a25, v80);
    sub_1ABA8F270(26);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a24, v81);
    sub_1ABA8F270(27);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a23, v82);
    sub_1ABA8F270(28);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a22, v83);
    sub_1ABA8F270(29);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a18, v84);
    sub_1ABA8F270(30);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a17, v85);
    sub_1ABA8F270(31);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a16, v86);
    sub_1ABA8F270(32);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a15, v87);
    sub_1ABA8F270(33);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a14, v88);
    sub_1ABA8F270(34);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a13, v89);
    sub_1ABA8F270(35);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a12, v90);
    sub_1ABA8F270(36);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a11, v91);
    sub_1ABA8F270(37);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a10, v92);
    sub_1ABA8F270(38);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a9, v93);
    sub_1ABA8F270(39);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v309, v94);
    sub_1ABA8F270(40);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v308, v95);
    sub_1ABA8F270(41);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v307, v96);
    sub_1ABA8F270(42);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v306, v97);
    sub_1ABA8F270(43);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v305, v98);
    sub_1ABA8F270(44);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v304, v99);
    sub_1ABA8F270(45);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v303, v100);
    sub_1ABA8F270(46);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v302, v101);
    sub_1ABA8F270(47);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v301, v102);
    sub_1ABA8F270(48);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v300, v103);
    sub_1ABA8F270(49);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v299, v104);
    sub_1ABA8F270(50);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v298, v105);
    sub_1ABA8F270(51);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v297, v106);
    sub_1ABA8F270(52);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v296, v107);
    sub_1ABA8F270(53);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v295, v108);
    sub_1ABA8F270(54);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v294, v109);
    sub_1ABA8F270(55);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v293, v110);
    sub_1ABA8F270(56);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v292, v111);
    sub_1ABA8F270(57);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v291, v112);
    sub_1ABA8F270(58);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v290, v113);
    sub_1ABA8F270(59);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v289, v114);
    sub_1ABA8F270(60);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v288, v115);
    sub_1ABA8F270(61);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v287, v116);
    sub_1ABA8F270(62);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v286, v117);
    sub_1ABA8F270(63);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v285, v118);
    sub_1ABA8F270(64);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v284, v119);
    sub_1ABA8F270(65);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v283, v120);
    sub_1ABA8F270(66);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v282, v121);
    sub_1ABA8F270(67);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v281, v122);
    sub_1ABA8F270(68);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v280, v123);
    sub_1ABA8F270(69);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v279, v124);
    sub_1ABA8F270(70);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v278, v125);
    sub_1ABA8F270(71);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v277, v126);
    sub_1ABA8F270(72);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v276, v127);
    sub_1ABA8F270(73);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v275, v128);
    sub_1ABA8F270(74);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v274, v129);
    sub_1ABA8F270(75);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v273, v130);
    sub_1ABA8F270(76);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v272, v131);
    sub_1ABA8F270(77);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v271, v132);
    sub_1ABA8F270(78);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v270, v133);
    sub_1ABA8F270(79);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v269, v134);
    sub_1ABA8F270(80);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v268, v135);
    sub_1ABA8F270(81);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v267, v136);
    sub_1ABA8F270(82);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v266, v137);
    sub_1ABA8F270(83);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v265, v138);
    sub_1ABA8F270(84);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v264, v139);
    sub_1ABA8F270(85);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v263, v140);
    sub_1ABA8F270(86);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v262, v141);
    sub_1ABA8F270(87);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v261, v142);
    sub_1ABA8F270(88);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v260, v143);
    sub_1ABA8F270(89);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v259, v144);
    sub_1ABA8F270(90);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v258, v145);
    sub_1ABA8F270(91);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v257, v146);
    sub_1ABA8F270(92);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v256, v147);
    sub_1ABA8F270(93);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v255, v148);
    sub_1ABA8F270(94);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v254, v149);
    sub_1ABA8F270(95);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v253, v150);
    sub_1ABA8F270(96);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v252, v151);
    sub_1ABA8F270(97);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v251, v152);
    sub_1ABA8F270(98);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v250, v153);
    sub_1ABA8F270(99);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v249, v154);
    sub_1ABA8F270(100);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v248, v155);
    sub_1ABA8F270(101);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v247, v156);
    sub_1ABA8F270(102);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v246, v157);
    sub_1ABA8F270(103);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v245, v158);
    sub_1ABA8F270(104);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v244, v159);
    sub_1ABA8F270(105);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v243, v160);
    sub_1ABA8F270(106);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v242, v161);
    sub_1ABA8F270(107);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v241, v162);
    sub_1ABA8F270(108);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v240, v163);
    sub_1ABA8F270(109);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v239, v164);
    sub_1ABA8F270(110);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v238, v165);
    sub_1ABA8F270(111);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v237, v166);
    sub_1ABA8F270(112);
    a18 = sub_1ABF24E74();
    sub_1ABA8F270(113);
    v205 = sub_1ABF24E74();
    sub_1ABA8F270(114);
    v167 = sub_1ABF24E74();
    sub_1ABA8F270(115);
    sub_1ABF24E34();
    sub_1ABA7C02C(v236, v168);
    sub_1ABA8F270(116);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v235, v169);
    sub_1ABA8F270(117);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v234, v170);
    sub_1ABA8F270(118);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v233, v171);
    sub_1ABA8F270(119);
    v172 = sub_1ABF24E74();
    sub_1ABA8F270(120);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v232, v173);
    sub_1ABA8F270(121);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v231, v174);
    (*(v40 + 8))(v45, v38);
    *v37 = v48;
    *(v37 + 8) = v50;
    *(v37 + 16) = v52;
    *(v37 + 24) = v54;
    *(v37 + 32) = v56;
    *(v37 + 40) = v58;
    v175 = v307;
    v176 = v308;
    *(v37 + 48) = v60;
    *(v37 + 56) = v176;
    *(v37 + 64) = v63;
    *(v37 + 72) = v175;
    v177 = v305;
    *(v37 + 80) = v306;
    *(v37 + 88) = v177;
    v178 = v303;
    *(v37 + 96) = v304;
    *(v37 + 104) = v178;
    v179 = v301;
    *(v37 + 112) = v302;
    *(v37 + 120) = v179;
    v180 = v299;
    *(v37 + 128) = v300;
    *(v37 + 136) = v180;
    v181 = v297;
    *(v37 + 144) = v298;
    *(v37 + 152) = v181;
    v182 = v295;
    *(v37 + 160) = v296;
    *(v37 + 168) = v182;
    v183 = v293;
    *(v37 + 176) = v294;
    *(v37 + 184) = v183;
    v184 = v291;
    *(v37 + 192) = v292;
    *(v37 + 200) = v184;
    v185 = v289;
    *(v37 + 208) = v290;
    *(v37 + 216) = v185;
    v186 = v287;
    *(v37 + 224) = v288;
    *(v37 + 232) = v186;
    v187 = v285;
    *(v37 + 240) = v286;
    *(v37 + 248) = v187;
    v188 = v283;
    *(v37 + 256) = v284;
    *(v37 + 264) = v188;
    v189 = v281;
    *(v37 + 272) = v282;
    *(v37 + 280) = v189;
    v190 = v279;
    *(v37 + 288) = v280;
    *(v37 + 296) = v190;
    v191 = v277;
    *(v37 + 304) = v278;
    *(v37 + 312) = v191;
    v192 = v275;
    *(v37 + 320) = v276;
    *(v37 + 328) = v192;
    v193 = v273;
    *(v37 + 336) = v274;
    *(v37 + 344) = v193;
    v194 = v271;
    *(v37 + 352) = v272;
    *(v37 + 360) = v194;
    v195 = v269;
    *(v37 + 368) = v270;
    *(v37 + 376) = v195;
    v196 = v267;
    *(v37 + 384) = v268;
    *(v37 + 392) = v196;
    v197 = v265;
    *(v37 + 400) = v266;
    *(v37 + 408) = v197;
    v198 = v263;
    *(v37 + 416) = v264;
    *(v37 + 424) = v198;
    v199 = v261;
    *(v37 + 432) = v262;
    *(v37 + 440) = v199;
    v200 = v259;
    *(v37 + 448) = v260;
    *(v37 + 456) = v200;
    v201 = v257;
    *(v37 + 464) = v258;
    *(v37 + 472) = v201;
    v202 = v255;
    *(v37 + 480) = v256;
    *(v37 + 488) = v202;
    v203 = v253;
    *(v37 + 496) = v254;
    *(v37 + 504) = v203;
    *(v37 + 512) = v252;
    *(v37 + 520) = v251;
    *(v37 + 528) = v250;
    *(v37 + 536) = v249;
    *(v37 + 544) = v248;
    *(v37 + 552) = v247;
    *(v37 + 560) = v246;
    *(v37 + 568) = v245;
    *(v37 + 576) = v244;
    *(v37 + 584) = v243;
    *(v37 + 592) = v242;
    *(v37 + 600) = v241;
    *(v37 + 608) = v240;
    *(v37 + 616) = v239;
    *(v37 + 624) = v238;
    *(v37 + 632) = v237;
    *(v37 + 640) = v236[1];
    *(v37 + 648) = v236[0];
    *(v37 + 656) = v235;
    *(v37 + 664) = v234;
    *(v37 + 672) = v233;
    *(v37 + 680) = v232;
    *(v37 + 688) = v231;
    *(v37 + 696) = v230;
    *(v37 + 704) = v229;
    *(v37 + 712) = v228;
    *(v37 + 720) = v227;
    *(v37 + 728) = v226;
    *(v37 + 736) = v225;
    *(v37 + 744) = v224;
    *(v37 + 752) = v223;
    *(v37 + 760) = v222;
    *(v37 + 768) = v221;
    *(v37 + 776) = v220;
    *(v37 + 784) = v219;
    *(v37 + 792) = v218;
    *(v37 + 800) = v217;
    *(v37 + 808) = v216;
    *(v37 + 816) = v215;
    *(v37 + 824) = v214;
    *(v37 + 832) = v213;
    *(v37 + 840) = v212;
    *(v37 + 848) = v211;
    *(v37 + 856) = v210;
    *(v37 + 864) = v209;
    *(v37 + 872) = v208;
    *(v37 + 880) = v207;
    *(v37 + 888) = v206;
    *(v37 + 896) = a18;
    *(v37 + 900) = v205;
    *(v37 + 904) = v167;
    *(v37 + 912) = v204[5];
    *(v37 + 920) = v204[4];
    *(v37 + 928) = v204[3];
    *(v37 + 936) = v204[2];
    *(v37 + 944) = v172;
    *(v37 + 952) = v204[1];
    *(v37 + 960) = v204[0];
  }

  sub_1ABA84B54(v35);
  sub_1ABAA1ED4();
}

uint64_t sub_1ABBB173C()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABBB1788()
{
  v0 = sub_1ABF250B4();

  v1 = 0;
  result = 29;
  switch(v0)
  {
    case 0:
      goto LABEL_101;
    case 1:
      v1 = 1;
      goto LABEL_101;
    case 2:
      v1 = 2;
      goto LABEL_101;
    case 3:
      v1 = 3;
      goto LABEL_101;
    case 4:
      v1 = 4;
      goto LABEL_101;
    case 5:
      v1 = 5;
      goto LABEL_101;
    case 6:
      v1 = 6;
      goto LABEL_101;
    case 7:
      v1 = 7;
      goto LABEL_101;
    case 8:
      v1 = 8;
      goto LABEL_101;
    case 9:
      v1 = 9;
      goto LABEL_101;
    case 10:
      v1 = 10;
      goto LABEL_101;
    case 11:
      v1 = 11;
      goto LABEL_101;
    case 12:
      v1 = 12;
      goto LABEL_101;
    case 13:
      v1 = 13;
      goto LABEL_101;
    case 14:
      v1 = 14;
      goto LABEL_101;
    case 15:
      v1 = 15;
      goto LABEL_101;
    case 16:
      v1 = 16;
      goto LABEL_101;
    case 17:
      v1 = 17;
      goto LABEL_101;
    case 18:
      v1 = 18;
      goto LABEL_101;
    case 19:
      v1 = 19;
      goto LABEL_101;
    case 20:
      v1 = 20;
      goto LABEL_101;
    case 21:
      v1 = 21;
      goto LABEL_101;
    case 22:
      v1 = 22;
      goto LABEL_101;
    case 23:
      v1 = 23;
      goto LABEL_101;
    case 24:
      v1 = 24;
      goto LABEL_101;
    case 25:
      v1 = 25;
      goto LABEL_101;
    case 26:
      v1 = 26;
      goto LABEL_101;
    case 27:
      v1 = 27;
      goto LABEL_101;
    case 28:
      v1 = 28;
LABEL_101:
      result = v1;
      break;
    case 29:
      return result;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    default:
      result = 122;
      break;
  }

  return result;
}

uint64_t sub_1ABBB1C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABBB173C();
  *a2 = result;
  return result;
}

void sub_1ABBB1C5C(void *a1@<X8>)
{
  sub_1ABBAE824(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1ABBB1CAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABBB1788();
  *a2 = result;
  return result;
}

unint64_t sub_1ABBB1CDC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABBAE950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBB1D10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBB1BCC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBB1D54(uint64_t a1)
{
  v2 = sub_1ABBB05A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB1D90(uint64_t a1)
{
  v2 = sub_1ABBB05A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABBB1DCC()
{
  qword_1EB5495C8 = 0x6B6E615265676170;
  unk_1EB5495D0 = 0xE800000000000000;
  qword_1EB5495D8 = 0x6E61725F65676170;
  unk_1EB5495E0 = 0xE90000000000006BLL;
}

IntelligencePlatform::PopularityMetric __swiftcall PopularityMetric.init(name:columnName:)(Swift::String name, Swift::String columnName)
{
  *v2 = name;
  v2[1] = columnName;
  result.columnName = columnName;
  result.name = name;
  return result;
}

void sub_1ABBB1E18()
{
  qword_1EB5495E8 = 0x6565726765446E69;
  unk_1EB5495F0 = 0xE800000000000000;
  qword_1EB5495F8 = 0x65726765645F6E69;
  unk_1EB549600 = 0xE900000000000065;
}

void sub_1ABBB1E58()
{
  qword_1EB549608 = 0x657267654474756FLL;
  unk_1EB549610 = 0xE900000000000065;
  qword_1EB549618 = 0x726765645F74756FLL;
  unk_1EB549620 = 0xEA00000000006565;
}

void sub_1ABBB1E9C()
{
  strcpy(&qword_1EB549628, "entityInDegree");
  unk_1EB549637 = -18;
  qword_1EB549638 = 0xD000000000000010;
  unk_1EB549640 = 0x80000001ABF899C0;
}

void sub_1ABBB1EE8()
{
  qword_1EB549648 = 0x754F797469746E65;
  unk_1EB549650 = 0xEF65657267654474;
  qword_1EB549658 = 0xD000000000000011;
  unk_1EB549660 = 0x80000001ABF899E0;
}

void sub_1ABBB1F34()
{
  qword_1EB549668 = 0xD000000000000010;
  unk_1EB549670 = 0x80000001ABF89900;
  qword_1EB549678 = 0xD000000000000010;
  unk_1EB549680 = 0x80000001ABF899C0;
}

void sub_1ABBB1F70()
{
  qword_1EB549688 = 0xD000000000000011;
  unk_1EB549690 = 0x80000001ABF89920;
  qword_1EB549698 = 0xD000000000000014;
  unk_1EB5496A0 = 0x80000001ABF89A20;
}

void sub_1ABBB1FB0()
{
  qword_1EB5496A8 = 0xD000000000000011;
  unk_1EB5496B0 = 0x80000001ABF89940;
  qword_1EB5496B8 = 0xD000000000000014;
  unk_1EB5496C0 = 0x80000001ABF89A40;
}

void sub_1ABBB1FF0()
{
  qword_1EB5496C8 = 0xD000000000000012;
  unk_1EB5496D0 = 0x80000001ABF89960;
  qword_1EB5496D8 = 0xD000000000000015;
  unk_1EB5496E0 = 0x80000001ABF89A60;
}

void sub_1ABBB2030()
{
  qword_1EB5496E8 = 0x656572676564;
  unk_1EB5496F0 = 0xE600000000000000;
  qword_1EB5496F8 = 0x656572676564;
  unk_1EB549700 = 0xE600000000000000;
}

void sub_1ABBB2054()
{
  strcpy(&qword_1EB549708, "entityDegree");
  unk_1EB549715 = 0;
  unk_1EB549716 = -5120;
  strcpy(&qword_1EB549718, "entity_degree");
  unk_1EB549726 = -4864;
}

void sub_1ABBB20A4()
{
  qword_1EB549728 = 0xD000000000000010;
  unk_1EB549730 = 0x80000001ABF89980;
  qword_1EB549738 = 0xD000000000000012;
  unk_1EB549740 = 0x80000001ABF89A80;
}

void sub_1ABBB20E4()
{
  qword_1EB549748 = 0xD000000000000011;
  unk_1EB549750 = 0x80000001ABF899A0;
  qword_1EB549758 = 0xD000000000000013;
  unk_1EB549760 = 0x80000001ABF89AA0;
}

void sub_1ABBB2124()
{
  qword_1EB549768 = 0x6C6169636F73;
  unk_1EB549770 = 0xE600000000000000;
  qword_1EB549778 = 0x6C6169636F73;
  unk_1EB549780 = 0xE600000000000000;
}

uint64_t PopularityMetric.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PopularityMetric.columnName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall PopularityMetric.init(rawValue:)(IntelligencePlatform::PopularityMetric_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = rawValue._countAndFlagsBits == 0x6B6E615265676170 && rawValue._object == 0xE800000000000000;
  if (v4 || (sub_1ABA7C038() & 1) != 0)
  {

    if (qword_1EB4D0280 != -1)
    {
      sub_1ABAA4D5C();
    }

    v5 = &qword_1EB5495C8;
  }

  else
  {
    v6 = countAndFlagsBits == 0x6565726765446E69 && object == 0xE800000000000000;
    if (v6 || (sub_1ABA7C038() & 1) != 0)
    {

      if (qword_1EB4D0288 != -1)
      {
        sub_1ABAA5270();
      }

      v5 = &qword_1EB5495E8;
    }

    else
    {
      v7 = countAndFlagsBits == 0x657267654474756FLL && object == 0xE900000000000065;
      if (v7 || (sub_1ABA7C038() & 1) != 0)
      {

        if (qword_1EB4D0290 != -1)
        {
          sub_1ABAA57A4();
        }

        v5 = &qword_1EB549608;
      }

      else
      {
        v9 = countAndFlagsBits == (sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x6E49000000000000) && object == v8;
        if (v9 || (sub_1ABA7C038() & 1) != 0)
        {

          if (qword_1EB4D0298 != -1)
          {
            sub_1ABA97AB0();
          }

          v5 = &qword_1EB549628;
        }

        else
        {
          v11 = countAndFlagsBits == (sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x754F000000000000) && object == v10;
          if (v11 || (sub_1ABA7C038() & 1) != 0)
          {

            if (qword_1EB4D02A0 != -1)
            {
              sub_1ABA8404C();
            }

            v5 = &qword_1EB549648;
          }

          else
          {
            sub_1ABA7F0D0();
            v13 = countAndFlagsBits == 0xD000000000000010 && v12 == object;
            if (v13 || (sub_1ABA7C038() & 1) != 0)
            {

              if (qword_1EB4D02A8 != -1)
              {
                sub_1ABA8E190();
              }

              v5 = &qword_1EB549668;
            }

            else
            {
              sub_1ABA8E7E0();
              v15 = v4 && v14 == object;
              if (v15 || (sub_1ABA7C038() & 1) != 0)
              {

                if (qword_1EB4D02B0 != -1)
                {
                  sub_1ABA9A370();
                }

                v5 = &qword_1EB549688;
              }

              else
              {
                sub_1ABA8E7E0();
                v17 = v4 && v16 == object;
                if (v17 || (sub_1ABA7C038() & 1) != 0)
                {

                  if (qword_1EB4D02B8 != -1)
                  {
                    sub_1ABAA5FC8();
                  }

                  v5 = &qword_1EB5496A8;
                }

                else
                {
                  sub_1ABA7F0D0();
                  v19 = countAndFlagsBits == 0xD000000000000012 && v18 == object;
                  if (v19 || (sub_1ABA7C038() & 1) != 0)
                  {

                    if (qword_1EB4D02C0 != -1)
                    {
                      sub_1ABA906DC();
                    }

                    v5 = &qword_1EB5496C8;
                  }

                  else
                  {
                    sub_1ABAA2248();
                    v20 = v4 && object == 0xE600000000000000;
                    if (v20 || (sub_1ABA7C038() & 1) != 0)
                    {

                      if (qword_1EB4D02C8 != -1)
                      {
                        sub_1ABA9934C();
                      }

                      v5 = &qword_1EB5496E8;
                    }

                    else
                    {
                      v22 = countAndFlagsBits == (sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x6544000000000000) && object == v21;
                      if (v22 || (sub_1ABA7C038() & 1) != 0)
                      {

                        if (qword_1EB4D02D0 != -1)
                        {
                          sub_1ABA8BF6C();
                        }

                        v5 = &qword_1EB549708;
                      }

                      else
                      {
                        sub_1ABA7F0D0();
                        v24 = countAndFlagsBits == 0xD000000000000010 && v23 == object;
                        if (v24 || (sub_1ABA7C038() & 1) != 0)
                        {

                          if (qword_1EB4D02D8 != -1)
                          {
                            sub_1ABA8FF90();
                          }

                          v5 = &qword_1EB549728;
                        }

                        else
                        {
                          sub_1ABA8E7E0();
                          v26 = v4 && v25 == object;
                          if (v26 || (sub_1ABA7C038() & 1) != 0)
                          {

                            if (qword_1EB4D02E0 != -1)
                            {
                              sub_1ABA948D4();
                            }

                            v5 = &qword_1EB549748;
                          }

                          else
                          {
                            sub_1ABA957A4();
                            v27 = v4 && object == 0xE600000000000000;
                            if (!v27 && (sub_1ABA7C038() & 1) == 0)
                            {
                              sub_1ABAA2568();
                              goto LABEL_10;
                            }

                            if (qword_1EB4D02E8 != -1)
                            {
                              sub_1ABA81734();
                            }

                            v5 = &qword_1EB549768;
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

  sub_1ABAA3484(v5);
LABEL_10:

  sub_1ABA96984();
}

void __swiftcall PopularityMetric.init(columnName:)(IntelligencePlatform::PopularityMetric_optional *__return_ptr retstr, Swift::String columnName)
{
  object = columnName._object;
  countAndFlagsBits = columnName._countAndFlagsBits;
  v4 = columnName._countAndFlagsBits == 0x6E61725F65676170 && columnName._object == 0xE90000000000006BLL;
  if (v4 || (sub_1ABA7C038() & 1) != 0)
  {

    if (qword_1EB4D0280 != -1)
    {
      sub_1ABAA4D5C();
    }

    v5 = &qword_1EB5495C8;
  }

  else
  {
    v6 = countAndFlagsBits == 0x65726765645F6E69 && object == 0xE900000000000065;
    if (v6 || (sub_1ABA7C038() & 1) != 0)
    {

      if (qword_1EB4D0288 != -1)
      {
        sub_1ABAA5270();
      }

      v5 = &qword_1EB5495E8;
    }

    else
    {
      v7 = countAndFlagsBits == 0x726765645F74756FLL && object == 0xEA00000000006565;
      if (v7 || (sub_1ABA7C038() & 1) != 0)
      {

        if (qword_1EB4D0290 != -1)
        {
          sub_1ABAA57A4();
        }

        v5 = &qword_1EB549608;
      }

      else
      {
        sub_1ABA7F0D0();
        v9 = countAndFlagsBits == 0xD000000000000010 && v8 == object;
        if (v9 || (sub_1ABA7C038() & 1) != 0)
        {

          if (qword_1EB4D0298 != -1)
          {
            sub_1ABA97AB0();
          }

          v5 = &qword_1EB549628;
        }

        else
        {
          sub_1ABA7F0D0();
          v11 = countAndFlagsBits == 0xD000000000000011 && v10 == object;
          if (v11 || (sub_1ABA7C038() & 1) != 0)
          {

            if (qword_1EB4D02A0 != -1)
            {
              sub_1ABA8404C();
            }

            v5 = &qword_1EB549648;
          }

          else
          {
            sub_1ABA8E7E0();
            v13 = v4 && v12 == object;
            if (v13 || (sub_1ABA7C038() & 1) != 0)
            {

              if (qword_1EB4D02A8 != -1)
              {
                sub_1ABA8E190();
              }

              v5 = &qword_1EB549668;
            }

            else
            {
              sub_1ABA7F0D0();
              v15 = countAndFlagsBits == 0xD000000000000014 && v14 == object;
              if (v15 || (sub_1ABA7C038() & 1) != 0)
              {

                if (qword_1EB4D02B0 != -1)
                {
                  sub_1ABA9A370();
                }

                v5 = &qword_1EB549688;
              }

              else
              {
                sub_1ABA7F0D0();
                v17 = countAndFlagsBits == 0xD000000000000014 && v16 == object;
                if (v17 || (sub_1ABA7C038() & 1) != 0)
                {

                  if (qword_1EB4D02B8 != -1)
                  {
                    sub_1ABAA5FC8();
                  }

                  v5 = &qword_1EB5496A8;
                }

                else
                {
                  sub_1ABA7F0D0();
                  v19 = countAndFlagsBits == 0xD000000000000015 && v18 == object;
                  if (v19 || (sub_1ABA7C038() & 1) != 0)
                  {

                    if (qword_1EB4D02C0 != -1)
                    {
                      sub_1ABA906DC();
                    }

                    v5 = &qword_1EB5496C8;
                  }

                  else
                  {
                    sub_1ABAA2248();
                    v20 = v4 && object == 0xE600000000000000;
                    if (v20 || (sub_1ABA7C038() & 1) != 0)
                    {

                      if (qword_1EB4D02C8 != -1)
                      {
                        sub_1ABA9934C();
                      }

                      v5 = &qword_1EB5496E8;
                    }

                    else
                    {
                      v22 = countAndFlagsBits == (sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x645F000000000000) && object == v21;
                      if (v22 || (sub_1ABA7C038() & 1) != 0)
                      {

                        if (qword_1EB4D02D0 != -1)
                        {
                          sub_1ABA8BF6C();
                        }

                        v5 = &qword_1EB549708;
                      }

                      else
                      {
                        sub_1ABA7F0D0();
                        v24 = countAndFlagsBits == 0xD000000000000012 && v23 == object;
                        if (v24 || (sub_1ABA7C038() & 1) != 0)
                        {

                          if (qword_1EB4D02D8 != -1)
                          {
                            sub_1ABA8FF90();
                          }

                          v5 = &qword_1EB549728;
                        }

                        else
                        {
                          sub_1ABA8E7E0();
                          v26 = v4 && v25 == object;
                          if (v26 || (sub_1ABA7C038() & 1) != 0)
                          {

                            if (qword_1EB4D02E0 != -1)
                            {
                              sub_1ABA948D4();
                            }

                            v5 = &qword_1EB549748;
                          }

                          else
                          {
                            sub_1ABA957A4();
                            v27 = v4 && object == 0xE600000000000000;
                            if (!v27 && (sub_1ABA7C038() & 1) == 0)
                            {
                              sub_1ABAA2568();
                              goto LABEL_10;
                            }

                            if (qword_1EB4D02E8 != -1)
                            {
                              sub_1ABA81734();
                            }

                            v5 = &qword_1EB549768;
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

  sub_1ABAA3484(v5);
LABEL_10:

  sub_1ABA96984();
}

uint64_t sub_1ABBB2D00(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1ABBC7208(a1, *v1, v1[1]);
}

uint64_t sub_1ABBB2D88(uint64_t a1)
{
  v2 = sub_1ABBB4B94();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABBB2DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBB4B94();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

void sub_1ABBB2E28()
{
  qword_1EB549788 = 0xD000000000000011;
  unk_1EB549790 = 0x80000001ABF89AC0;
  qword_1EB549798 = 0xD000000000000013;
  unk_1EB5497A0 = 0x80000001ABF89AE0;
}

void sub_1ABBB2E68()
{
  qword_1EB5497A8 = 0x6E6F437361696C61;
  unk_1EB5497B0 = 0xEB00000000746163;
  strcpy(&qword_1EB5497B8, "alias_concat");
  unk_1EB5497C5 = 0;
  unk_1EB5497C6 = -5120;
}

void __swiftcall DescriptionSignal.init(rawValue:)(IntelligencePlatform::DescriptionSignal_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  v3 = rawValue._countAndFlagsBits == 0xD000000000000011 && 0x80000001ABF89AC0 == rawValue._object;
  if (v3 || (countAndFlagsBits = rawValue._countAndFlagsBits, (sub_1ABA7C038() & 1) != 0))
  {

    if (qword_1EB4D02F0 != -1)
    {
      sub_1ABAA3FFC();
    }

    v5 = &qword_1EB549788;
  }

  else
  {
    v6 = countAndFlagsBits == 0x6E6F437361696C61 && object == 0xEB00000000746163;
    if (!v6 && (sub_1ABA7C038() & 1) == 0)
    {
      sub_1ABAA2568();
      goto LABEL_10;
    }

    if (qword_1EB4D02F8 != -1)
    {
      sub_1ABAA44C0();
    }

    v5 = &qword_1EB5497A8;
  }

  sub_1ABAA3484(v5);
LABEL_10:

  sub_1ABA96984();
}

void __swiftcall DescriptionSignal.init(columnName:)(IntelligencePlatform::DescriptionSignal_optional *__return_ptr retstr, Swift::String columnName)
{
  object = columnName._object;
  v3 = columnName._countAndFlagsBits == 0xD000000000000013 && 0x80000001ABF89AE0 == columnName._object;
  if (v3 || (countAndFlagsBits = columnName._countAndFlagsBits, (sub_1ABA7C038() & 1) != 0))
  {

    if (qword_1EB4D02F0 != -1)
    {
      sub_1ABAA3FFC();
    }

    v5 = &qword_1EB549788;
  }

  else
  {
    v6 = countAndFlagsBits == 0x6F635F7361696C61 && object == 0xEC0000007461636ELL;
    if (!v6 && (sub_1ABA7C038() & 1) == 0)
    {
      sub_1ABAA2568();
      goto LABEL_10;
    }

    if (qword_1EB4D02F8 != -1)
    {
      sub_1ABAA44C0();
    }

    v5 = &qword_1EB5497A8;
  }

  sub_1ABAA3484(v5);
LABEL_10:

  sub_1ABA96984();
}

uint64_t sub_1ABBB31CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();
  v9 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v7, v8, v9);
}

uint64_t sub_1ABBB3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4();
  v10 = a5();
  v11 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v9, v10, v11);
}

uint64_t sub_1ABBB3324(uint64_t a1)
{
  v2 = sub_1ABBB4A44();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABBB3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBB4A44();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

__n128 Neighbor.init(identifier:relationPredicate:direction:type:)@<Q0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = *a4;
  result = *a5;
  v8 = a5[1].n128_u64[0];
  v9 = a5[1].n128_u64[1];
  v10 = a5[2].n128_u8[0];
  a6->n128_u64[0] = *a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u8[8] = v6;
  a6[2] = result;
  a6[3].n128_u64[0] = v8;
  a6[3].n128_u64[1] = v9;
  a6[4].n128_u8[0] = v10;
  return result;
}

uint64_t static Neighbor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a2 + 24);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v8 && (sub_1ABF25054() & 1) == 0 || (sub_1ABACF100(v2) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1ABF25054();
}

uint64_t sub_1ABBB34CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF89B00 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABBB363C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6F69746365726964;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBB36CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB34CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB36F4(uint64_t a1)
{
  v2 = sub_1ABBB39B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB3730(uint64_t a1)
{
  v2 = sub_1ABBB39B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Neighbor.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4068, &qword_1ABF420C0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v13 = *v1;
  v12 = v1[1];
  v27 = v1[2];
  v28 = v12;
  v34 = *(v1 + 24);
  v14 = v1[4];
  v25 = v1[5];
  v26 = v14;
  v15 = v1[6];
  v23 = v1[7];
  v24 = v15;
  HIDWORD(v22) = *(v1 + 64);
  v16 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBB39B8();
  sub_1ABF252E4();
  v29 = v13;
  v35 = 0;
  sub_1ABAE8BC8();
  sub_1ABA7D598();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    v17 = v34;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    LOBYTE(v29) = 1;
    sub_1ABA7BF34();
    sub_1ABF24F34();
    LOBYTE(v29) = v17;
    v35 = 2;
    sub_1ABBB3A0C();
    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v29 = v20;
    v30 = v19;
    v31 = v18;
    v32 = v23;
    v33 = BYTE4(v22);
    v35 = 3;
    sub_1ABA98CE4();

    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v11, v4);
}

unint64_t sub_1ABBB39B8()
{
  result = qword_1EB4D4070;
  if (!qword_1EB4D4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4070);
  }

  return result;
}

unint64_t sub_1ABBB3A0C()
{
  result = qword_1EB4D4078;
  if (!qword_1EB4D4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4078);
  }

  return result;
}

uint64_t Neighbor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4080, &qword_1ABF420C8);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBB39B8();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1ABAE8B74();
  sub_1ABAA37F0();
  v10 = v24[0];
  LOBYTE(v24[0]) = 1;
  v11 = sub_1ABF24E14();
  v13 = v12;
  v21 = v11;
  v22 = v10;
  LOBYTE(__src[0]) = 2;
  sub_1ABBB3D54();
  sub_1ABAA37F0();
  LOBYTE(v10) = v24[0];
  v37 = 3;
  sub_1ABA9B278();
  sub_1ABAA37F0();
  v14 = sub_1ABA7ABFC();
  v15(v14);
  v20 = v31;
  v16 = v33;
  v19 = v32;
  v17 = v34;
  v36 = v35;
  __src[0] = v22;
  __src[1] = v21;
  __src[2] = v13;
  LOBYTE(__src[3]) = v10;
  __src[4] = v31;
  __src[5] = v32;
  __src[6] = v33;
  __src[7] = v34;
  LOBYTE(__src[8]) = v35;
  memcpy(a2, __src, 0x41uLL);
  sub_1ABBB3DA8(__src, v24);
  sub_1ABA84B54(a1);
  v24[0] = v22;
  v24[1] = v21;
  v24[2] = v13;
  v25 = v10;
  v26 = v20;
  v27 = v19;
  v28 = v16;
  v29 = v17;
  v30 = v36;
  return sub_1ABBB3DE0(v24);
}

unint64_t sub_1ABBB3D54()
{
  result = qword_1EB4D4088;
  if (!qword_1EB4D4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4088);
  }

  return result;
}

IntelligencePlatform::RelationDirection_optional __swiftcall RelationDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RelationDirection.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6472617774756FLL;
  }

  else
  {
    result = 0x647261776E69;
  }

  *v0;
  return result;
}

unint64_t sub_1ABBB3EE4()
{
  result = qword_1EB4D4090;
  if (!qword_1EB4D4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4090);
  }

  return result;
}

unint64_t sub_1ABBB3F3C()
{
  result = qword_1EB4D4098;
  if (!qword_1EB4D4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4098);
  }

  return result;
}

unint64_t sub_1ABBB3F94()
{
  result = qword_1EB4D40A0;
  if (!qword_1EB4D40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40A0);
  }

  return result;
}

unint64_t sub_1ABBB3FEC()
{
  result = qword_1EB4D40A8;
  if (!qword_1EB4D40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40A8);
  }

  return result;
}

unint64_t sub_1ABBB4044()
{
  result = qword_1EB4D40B0;
  if (!qword_1EB4D40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40B0);
  }

  return result;
}

unint64_t sub_1ABBB409C()
{
  result = qword_1EB4D40B8;
  if (!qword_1EB4D40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40B8);
  }

  return result;
}

unint64_t sub_1ABBB4100()
{
  result = qword_1EB4D40C0;
  if (!qword_1EB4D40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40C0);
  }

  return result;
}

uint64_t sub_1ABBB4178@<X0>(uint64_t *a1@<X8>)
{
  result = RelationDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABBB4258(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 968))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBB4278(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 952) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 968) = v3;
  return result;
}

uint64_t sub_1ABBB43C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABBB4404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RelationDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Neighbor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBB4618(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x87)
  {
    if (a2 + 121 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 121) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 122;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7A;
  v5 = v6 - 122;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABBB46A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 121 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 121) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x87)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x86)
  {
    v6 = ((a2 - 135) >> 8) + 1;
    *result = a2 + 121;
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
          *result = a2 + 121;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBB477C()
{
  result = qword_1EB4D40C8;
  if (!qword_1EB4D40C8)
  {
    sub_1ABAE2850(&qword_1EB4D40D0, qword_1ABF42718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40C8);
  }

  return result;
}

unint64_t sub_1ABBB47E4()
{
  result = qword_1EB4D40D8;
  if (!qword_1EB4D40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40D8);
  }

  return result;
}

unint64_t sub_1ABBB483C()
{
  result = qword_1EB4D40E0;
  if (!qword_1EB4D40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40E0);
  }

  return result;
}

unint64_t sub_1ABBB4894()
{
  result = qword_1EB4D40E8;
  if (!qword_1EB4D40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40E8);
  }

  return result;
}

unint64_t sub_1ABBB48EC()
{
  result = qword_1EB4D40F0;
  if (!qword_1EB4D40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40F0);
  }

  return result;
}

unint64_t sub_1ABBB4944()
{
  result = qword_1EB4CFFE0;
  if (!qword_1EB4CFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFE0);
  }

  return result;
}

unint64_t sub_1ABBB499C()
{
  result = qword_1EB4CFFE8;
  if (!qword_1EB4CFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFE8);
  }

  return result;
}

unint64_t sub_1ABBB49F0()
{
  result = qword_1EB4D40F8;
  if (!qword_1EB4D40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40F8);
  }

  return result;
}

unint64_t sub_1ABBB4A44()
{
  result = qword_1EB4D4100;
  if (!qword_1EB4D4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4100);
  }

  return result;
}

unint64_t sub_1ABBB4A98()
{
  result = qword_1EB4D4108;
  if (!qword_1EB4D4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4108);
  }

  return result;
}

unint64_t sub_1ABBB4AEC()
{
  result = qword_1EB4D4110;
  if (!qword_1EB4D4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4110);
  }

  return result;
}

unint64_t sub_1ABBB4B40()
{
  result = qword_1EB4D4118;
  if (!qword_1EB4D4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4118);
  }

  return result;
}

unint64_t sub_1ABBB4B94()
{
  result = qword_1EB4D4120;
  if (!qword_1EB4D4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4120);
  }

  return result;
}

unint64_t sub_1ABBB4BE8()
{
  result = qword_1EB4D4128;
  if (!qword_1EB4D4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4128);
  }

  return result;
}

unint64_t sub_1ABBB4C3C()
{
  result = qword_1EB4D4130;
  if (!qword_1EB4D4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4130);
  }

  return result;
}

unint64_t sub_1ABBB4C90()
{
  result = qword_1EB4D4138;
  if (!qword_1EB4D4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4138);
  }

  return result;
}

_BYTE *sub_1ABBB4CE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBB4DC0()
{
  result = qword_1EB4CF2C8;
  if (!qword_1EB4CF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF2C8);
  }

  return result;
}

uint64_t sub_1ABBB4E2C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1ABF23D34();
}

uint64_t sub_1ABBB4E34()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB4ED0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1ABF23D34();
}

uint64_t sub_1ABBB4ED8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    case 6:
      sub_1ABA88F98();
      break;
    case 7:
      sub_1ABA89B1C();
      break;
    case 8:
      sub_1ABA8E7F0();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5014()
{
  sub_1ABBC7264();
  switch(v0)
  {
    case 1:
    case 5:
      sub_1ABA7AC9C();
      break;
    case 2:
      sub_1ABA9E680();
      break;
    case 3:
      sub_1ABAB65B4();
      break;
    case 4:
      sub_1ABA9E530();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB50B0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
      sub_1ABA8E7F0();
      break;
    case 4:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB51B0()
{
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABAB52B8();
}

uint64_t sub_1ABBB5200()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5278(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_1ABA948F4();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB533C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      sub_1ABA88F98();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB543C()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB54BC()
{
  sub_1ABAB68BC();
  switch(v0)
  {
    case 1:
      sub_1ABA9F864();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA9ED18();
      break;
    case 3:
      sub_1ABA8CC50();
      sub_1ABA7AC9C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5538()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB55E8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1ABA9E08C();
  }

  else
  {
    sub_1ABA8E7F0();
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5664()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB56DC()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5754()
{
  sub_1ABA8A1AC();
  switch(v0)
  {
    case 2:
      sub_1ABAA0EB0();
      sub_1ABAA0868();
      break;
    case 3:
      sub_1ABAB5CA4();
      break;
    case 4:
      sub_1ABAB108C();
      break;
    case 5:
      sub_1ABA8BF8C();
      break;
    case 6:
      sub_1ABAA02FC();
      break;
    case 7:
      sub_1ABA948F4();
      break;
    case 8:
      sub_1ABA90CB4();
      break;
    case 9:
      sub_1ABBC723C();
      break;
    case 10:
      sub_1ABBC7250();
      break;
    case 11:
      sub_1ABAA1EFC();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5848()
{
  sub_1ABA88EC4();
  sub_1ABA88F98();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB58F8()
{
  sub_1ABA8BAB8();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5978()
{
  sub_1ABAB68BC();
  switch(v0)
  {
    case 1:
      sub_1ABA9F864();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA9ED18();
      break;
    case 3:
      sub_1ABA7AC9C();
      goto LABEL_7;
    case 4:
      sub_1ABA8E7F0();
      break;
    case 5:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    case 6:
LABEL_7:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5A2C()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5AB4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5B70()
{
  sub_1ABA88EC4();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1ABAB52B8();
}

uint64_t sub_1ABBB5CBC()
{
  sub_1ABA8071C();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5D34()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5D9C()
{
  sub_1ABA88EC4();
  switch(v0)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
    case 5:
      sub_1ABA89B1C();
      break;
    case 4:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5E8C()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5EF4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
    case 6:
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB602C()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB60E0()
{
  sub_1ABA88EC4();
  switch(v0)
  {
    case 1:
      sub_1ABAA0EB0();
      sub_1ABAA0868();
      break;
    case 2:
      sub_1ABAB5CA4();
      break;
    case 3:
      sub_1ABAB108C();
      break;
    case 4:
      sub_1ABA8BF8C();
      break;
    case 5:
      sub_1ABAA02FC();
      break;
    case 6:
      sub_1ABA948F4();
      break;
    case 7:
      sub_1ABA90CB4();
      break;
    case 8:
      sub_1ABBC723C();
      break;
    case 9:
      sub_1ABBC7250();
      break;
    case 10:
      sub_1ABAA1EFC();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB61B0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABA88F98();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB6268()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB62B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 7:
      sub_1ABA89B1C();
      break;
    case 8:
      break;
    default:
      sub_1ABA7E59C();
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB63D4()
{
  sub_1ABA9F794();
  switch(v0)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB649C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1ABA9F794();
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB6518(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABAA0EB0();
      break;
    case 2:
      sub_1ABAB5CA4();
      break;
    case 3:
      sub_1ABAB108C();
      break;
    case 4:
      sub_1ABA8BF8C();
      break;
    case 5:
      sub_1ABAA02FC();
      break;
    case 6:
      sub_1ABA948F4();
      break;
    case 7:
      sub_1ABA90CB4();
      break;
    case 8:
      sub_1ABBC723C();
      break;
    case 9:
      sub_1ABBC7250();
      break;
    case 10:
      sub_1ABAA1EFC();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB65F0()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB66A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1ABAB52B8();
}

uint64_t sub_1ABBB66E8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1ABA9E08C();
  }

  else
  {
    sub_1ABA89B1C();
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB677C()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB6864()
{
  sub_1ABBC7264();
  switch(v0)
  {
    case 1:
      sub_1ABA9E680();
      break;
    case 2:
      sub_1ABAB65B4();
      break;
    case 3:
      sub_1ABA9E530();
      break;
    case 4:
      sub_1ABA7AC9C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB6914()
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB69C8()
{
  sub_1ABA8A1AC();
  switch(v0)
  {
    case 1:
    case 3:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    case 2:
      sub_1ABA8E7F0();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

char *sub_1ABBB6A70(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2B4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABBC2E70(v6);
  *a1 = v2;
  return result;
}

void EntityResolutionError.description.getter()
{
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
LABEL_4:
      sub_1ABAA44E0();
      return;
    case 2:
      sub_1ABA9936C();
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000003ALL, 0x80000001ABF89C50);
      goto LABEL_10;
    case 3:
LABEL_6:
      sub_1ABA9E43C();
      sub_1ABA7F0D0();
      return;
    case 4:
    case 6:
    case 7:
    case 8:
      sub_1ABA9936C();
      sub_1ABF24AB4();

      sub_1ABAA401C();
LABEL_10:
      v3 = sub_1ABAB50D4();
      goto LABEL_11;
    case 5:
      sub_1ABA9936C();
      sub_1ABF24AB4();

      v5 = sub_1ABAB50D4();
      MEMORY[0x1AC5A9410](v5);
      sub_1ABA7F0D0();
      v3 = sub_1ABA9E43C();
      goto LABEL_11;
    case 9:
      switch(*v0)
      {
        case 1:
          goto LABEL_6;
        case 4:
          sub_1ABA7F0D0();
          break;
        default:
          goto LABEL_4;
      }

      return;
    default:
      sub_1ABA9936C();
      sub_1ABF24AB4();

      sub_1ABAA401C();
      v2 = sub_1ABAB50D4();
      MEMORY[0x1AC5A9410](v2);
      v3 = 46;
      v4 = 0xE100000000000000;
LABEL_11:
      MEMORY[0x1AC5A9410](v3, v4);
      return;
  }
}

IntelligencePlatform::PreprocessingStep_optional __swiftcall PreprocessingStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void PreprocessingStep.rawValue.getter()
{
  switch(*v0)
  {
    case 3:
    case 6:
      sub_1ABA7F0D0();
      break;
    default:
      return;
  }
}

void sub_1ABBB6F04(void *a1@<X8>)
{
  PreprocessingStep.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static CandidateConstraint.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 34);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 34);
  v102[0] = *a1;
  v102[1] = v2;
  v102[2] = v5;
  v102[3] = v4;
  v103 = v6;
  v104 = v7;
  v105 = v9;
  v106 = v8;
  v107 = v11;
  v108 = v10;
  v109 = v12;
  v110 = v13;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_19;
      }

      v65 = v6;
      v92 = sub_1ABB4F410(v3, v9);
      v66 = sub_1ABA7C054();
      sub_1ABB37294(v66, v67, v68, v69, v12, 1);
      v20 = sub_1ABA809A0();
      v24 = v65;
      v25 = 1;
      goto LABEL_18;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_19;
      }

      v46 = v6;
      v92 = sub_1ABB4F410(v3, v9);
      v47 = sub_1ABA7C054();
      sub_1ABB37294(v47, v48, v49, v50, v12, 2);
      v20 = sub_1ABA809A0();
      v24 = v46;
      v25 = 2;
      goto LABEL_18;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v51 = *(v3 + 50);
      v52 = *(v3 + 48);
      v53 = *(v9 + 48);
      v54 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v55 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v55;
      v100 = v52;
      v101 = v51;
      v56 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v56;
      v96 = v53;
      v97 = v54;
      v57 = sub_1ABA7C054();
      v59 = v58;
      sub_1ABB37294(v57, v60, v61, v62, v12, v63);
      v40 = sub_1ABA809A0();
      v44 = v59;
      v45 = 3;
      goto LABEL_14;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v26 = *(v3 + 50);
      v27 = *(v3 + 48);
      v28 = *(v9 + 48);
      v29 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v31 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v31;
      v100 = v27;
      v101 = v26;
      v32 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v32;
      v96 = v28;
      v97 = v29;
      v33 = sub_1ABA7C054();
      v35 = v34;
      sub_1ABB37294(v33, v36, v37, v38, v12, v39);
      v40 = sub_1ABA809A0();
      v44 = v35;
      v45 = 4;
LABEL_14:
      sub_1ABB37294(v40, v41, v42, v43, v44, v45);
      if ((static CandidateConstraint.== infix(_:_:)(&v98, &v94) & 1) == 0)
      {
        goto LABEL_20;
      }

      v98 = v93;
      v99 = v91;
      v100 = v90;
      v101 = v89;
      v94 = v88;
      v95 = v87;
      v96 = v30;
      v97 = v86;
      v64 = static CandidateConstraint.== infix(_:_:)(&v98, &v94);
      sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
      return v64 & 1;
    default:
      if (v13)
      {
LABEL_19:
        v71 = sub_1ABA7C054();
        v73 = v72;
        sub_1ABB37294(v71, v74, v75, v76, v12, v77);
        v78 = sub_1ABA809A0();
        sub_1ABB37294(v78, v79, v80, v81, v73, v7);
LABEL_20:
        sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
        v64 = 0;
        return v64 & 1;
      }

      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1ABB37294(v3, v2, v11, v10, v12, 0);
        v82 = sub_1ABA809A0();
        sub_1ABB37294(v82, v83, v84, v85, v14, 0);
        sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
        v64 = 1;
        return v64 & 1;
      }

      v92 = sub_1ABF25054();
      v16 = sub_1ABA7C054();
      sub_1ABB37294(v16, v17, v18, v19, v12, 0);
      v20 = sub_1ABA809A0();
      v24 = v14;
      v25 = 0;
LABEL_18:
      sub_1ABB37294(v20, v21, v22, v23, v24, v25);
      sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
      return v92 & 1;
  }
}

uint64_t sub_1ABBB7380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6964657250736168 && a2 == 0xEC00000065746163;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564756C637865 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746573627573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6581857 && a2 == 0xE300000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 29295 && a2 == 0xE200000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABBB7518(char a1)
{
  result = 0x6964657250736168;
  switch(a1)
  {
    case 1:
      result = 0x6564756C637865;
      break;
    case 2:
      result = 0x746573627573;
      break;
    case 3:
      result = 6581857;
      break;
    case 4:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBB75A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBB7640(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABA8A940() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABA8A940();

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

uint64_t sub_1ABBB76E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBB7778(uint64_t a1)
{
  v2 = sub_1ABBC2B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB77B4(uint64_t a1)
{
  v2 = sub_1ABBC2B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB7810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB7380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB7838(uint64_t a1)
{
  v2 = sub_1ABBC2A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7874(uint64_t a1)
{
  v2 = sub_1ABBC2A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB78B4(uint64_t a1)
{
  v2 = sub_1ABBC2CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB78F0(uint64_t a1)
{
  v2 = sub_1ABBC2CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB7930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB75A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABBB795C(uint64_t a1)
{
  v2 = sub_1ABBC2D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7998(uint64_t a1)
{
  v2 = sub_1ABBC2D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB79D4(uint64_t a1)
{
  v2 = sub_1ABBC2AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7A10(uint64_t a1)
{
  v2 = sub_1ABBC2AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB7A4C(uint64_t a1)
{
  v2 = sub_1ABBC2BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7A88(uint64_t a1)
{
  v2 = sub_1ABBC2BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CandidateConstraint.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v99 = v21;
  v26 = v25;
  v98.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4148, &qword_1ABF42A38);
  sub_1ABA7BB64(v98.n128_i64[0]);
  v97.n128_u64[0] = v27;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v96.n128_u64[0] = v31;
  v95.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4150, &qword_1ABF42A40);
  sub_1ABA7BB64(v95.n128_i64[0]);
  v94.n128_u64[0] = v32;
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  v93.n128_u64[0] = v36;
  v92.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4158, &qword_1ABF42A48);
  sub_1ABA7BB64(v92.n128_i64[0]);
  v91 = v37;
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  v90 = v41;
  v89 = sub_1ABAD219C(&qword_1EB4D4160, &qword_1ABF42A50);
  sub_1ABA7BB64(v89);
  v88 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA8176C();
  v87 = sub_1ABAD219C(&qword_1EB4D4168, &qword_1ABF42A58);
  sub_1ABA7BB64(v87);
  v86 = v46;
  v48 = *(v47 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v82 - v50;
  v52 = sub_1ABAD219C(&qword_1EB4D4170, &unk_1ABF42A60);
  v100 = sub_1ABA7BB64(v52);
  v101 = v53;
  v55 = *(v54 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA7BCE0();
  v57 = *v20;
  v85 = *(v20 + 8);
  v58 = *(v20 + 24);
  v84 = *(v20 + 16);
  v83 = v58;
  v107 = *(v20 + 32);
  v59 = *(v20 + 34);
  v60 = v26[4];
  sub_1ABA88DCC(v26, v26[3]);
  sub_1ABBC2A90();
  sub_1ABAA0704();
  sub_1ABF252E4();
  switch(v59)
  {
    case 1:
      sub_1ABA8BCB4();
      sub_1ABBC2CB8();
      sub_1ABA9FE88();
      v102 = v57;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABBC2C34();
      sub_1ABA9F594(&a14);
      v70 = &a13;
      goto LABEL_12;
    case 2:
      LOBYTE(v102) = 2;
      sub_1ABBC2BE0();
      sub_1ABA9FE88();
      v102 = v57;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABBC2C34();
      sub_1ABA9F594(&a17);
      v70 = &a16;
LABEL_12:
      v79 = *(*(v70 - 32) + 8);
      v80 = sub_1ABA8A354();
      v81(v80);
      v78 = *(v101 + 8);
      v76 = v22;
      v77 = v59;
      goto LABEL_13;
    case 3:
      v96 = sub_1ABAA0A78();
      v71 = v57[5].n128_u16[4];
      v72 = v57[5].n128_u8[10];
      LOBYTE(v102) = 3;
      sub_1ABBC2B8C();
      v73 = v57[1];
      v97 = v57[2];
      v98 = v73;
      v66 = v93.n128_u64[0];
      sub_1ABA8AEFC();
      sub_1ABA88D1C(v98, v97);
      sub_1ABA97F74();
      v67 = v95.n128_u64[0];
      sub_1ABAA1F14();
      v74 = v99;
      sub_1ABF24F84();
      if (!v74)
      {
        sub_1ABA8A4D8(v96, v92);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v69 = v94.n128_u64[0];
      goto LABEL_10;
    case 4:
      v93 = sub_1ABAA0A78();
      v63 = v57[5].n128_u16[4];
      v64 = v57[5].n128_u8[10];
      LOBYTE(v102) = 4;
      sub_1ABBC2AE4();
      v65 = v57[1];
      v94 = v57[2];
      v95 = v65;
      v66 = v96.n128_u64[0];
      sub_1ABA8AEFC();
      sub_1ABA88D1C(v95, v94);
      sub_1ABA97F74();
      v67 = v98.n128_u64[0];
      sub_1ABAA1F14();
      v68 = v99;
      sub_1ABF24F84();
      if (!v68)
      {
        sub_1ABA8A4D8(v93, v92);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v69 = v97.n128_u64[0];
LABEL_10:
      (*(v69 + 8))(v66, v67);
      v75 = *(v101 + 8);
      v76 = sub_1ABA8A354();
LABEL_13:
      v78(v76, v77);
      break;
    default:
      LOBYTE(v102) = 0;
      sub_1ABBC2D0C();
      v61 = v100;
      sub_1ABF24EC4();
      v102 = v57;
      v103 = v85;
      v104 = v84;
      v105 = v83;
      v106 = v107;
      sub_1ABAA68CC();
      v62 = v87;
      sub_1ABF24F84();
      (*(v86 + 8))(v51, v62);
      (*(v101 + 8))(v22, v61);
      break;
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CandidateConstraint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 34))
  {
    case 1:
      v7 = 1;
      goto LABEL_10;
    case 2:
      v7 = 2;
LABEL_10:
      MEMORY[0x1AC5AA8A0](v7);
      v8 = sub_1ABA7E378();

      sub_1ABB4EC5C(v8, v9);
      return;
    case 3:
      v5 = sub_1ABA97F4C();
      v6 = 3;
      goto LABEL_8;
    case 4:
      v5 = sub_1ABA97F4C();
      v6 = 4;
LABEL_8:
      MEMORY[0x1AC5AA8A0](v6, v5);
      CandidateConstraint.hash(into:)(a1);
      CandidateConstraint.hash(into:)(a1);
      break;
    default:
      v4 = v1[1];
      MEMORY[0x1AC5AA8A0](0);
      sub_1ABA7E378();

      sub_1ABF23D34();
      break;
  }
}

uint64_t CandidateConstraint.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 34);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1ABA7AB5C();
  CandidateConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

void CandidateConstraint.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v108 = v3;
  v101 = sub_1ABAD219C(&qword_1EB4D41B8, &qword_1ABF42A70);
  sub_1ABA7BB64(v101);
  v104 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v107 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D41C0, &qword_1ABF42A78);
  v10 = sub_1ABA7BB64(v9);
  v102 = v11;
  v103 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v106 = v15;
  v16 = sub_1ABAD219C(&qword_1EB4D41C8, &qword_1ABF42A80);
  v17 = sub_1ABA7BB64(v16);
  v99 = v18;
  v100 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7FBE0();
  v105 = v22;
  v23 = sub_1ABAD219C(&qword_1EB4D41D0, &qword_1ABF42A88);
  v24 = sub_1ABA7BB64(v23);
  v97 = v25;
  v98 = v24;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BCE0();
  v29 = sub_1ABAD219C(&qword_1EB4D41D8, &qword_1ABF42A90);
  sub_1ABA7BB64(v29);
  v96 = v30;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v91 - v34;
  v36 = sub_1ABAD219C(&qword_1EB4D41E0, &unk_1ABF42A98);
  sub_1ABA7BB64(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v91 - v42;
  v45 = v2[3];
  v44 = v2[4];
  v109 = v2;
  sub_1ABA88DCC(v2, v45);
  sub_1ABBC2A90();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v94 = v35;
  v93 = v29;
  v95 = v36;
  v46 = v108;
  v115 = v38;
  v47 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v47, 0);
  if (v49 == v50 >> 1)
  {
LABEL_7:
    v56 = sub_1ABF24B44();
    swift_allocError();
    v58 = v57;
    v59 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v58 = &type metadata for CandidateConstraint;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABAA1BE0();
    v60 = sub_1ABA8C744();
    v61(v60);
LABEL_8:
    v62 = v109;
LABEL_9:
    sub_1ABA84B54(v62);
    sub_1ABA7BC90();
    return;
  }

  if (v49 < (v50 >> 1))
  {
    v51 = 0;
    v92 = *(v48 + v49);
    sub_1ABAD4E90(v49 + 1);
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    if (v53 == v55 >> 1)
    {
      switch(v92)
      {
        case 1:
          sub_1ABA8BCB4();
          sub_1ABBC2CB8();
          v51 = v95;
          sub_1ABF24D94();
          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          sub_1ABBC358C();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v80 = sub_1ABA891F8();
          v81(v80);
          sub_1ABAA1BE0();
          v68 = v43;
          goto LABEL_14;
        case 2:
          LOBYTE(v110) = 2;
          sub_1ABBC2BE0();
          sub_1ABA9A390();
          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          sub_1ABBC358C();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v65 = sub_1ABA7E5B0();
          v66(v65);
          sub_1ABAA1BE0();
          v68 = v43;
LABEL_14:
          v67(v68, v51);
          sub_1ABA96C54();
          v62 = v109;
          v76 = v110;
          goto LABEL_16;
        case 3:
          LOBYTE(v110) = 3;
          sub_1ABBC2B8C();
          sub_1ABA9A390();
          sub_1ABA8913C();
          v76 = swift_allocObject();
          LOBYTE(v110) = 0;
          sub_1ABBC3538();
          sub_1ABA8861C();
          sub_1ABF24E64();
          sub_1ABA8BCB4();
          sub_1ABA8861C();
          sub_1ABF24E64();
          v69 = v102;
          swift_unknownObjectRelease();
          v86 = *(v69 + 8);
          v87 = sub_1ABA8C744();
          v88(v87);
          sub_1ABAA1BE0();
          v89 = sub_1ABA7D0F8();
          v90(v89);
          sub_1ABA96C54();
          goto LABEL_15;
        case 4:
          LOBYTE(v110) = 4;
          sub_1ABBC2AE4();
          sub_1ABA9A390();
          v106 = v43;
          sub_1ABA8913C();
          v63 = swift_allocObject();
          LOBYTE(v110) = 0;
          sub_1ABBC3538();
          sub_1ABA8861C();
          sub_1ABF24E64();
          sub_1ABA8BCB4();
          sub_1ABA8861C();
          sub_1ABF24E64();
          v64 = v104;
          swift_unknownObjectRelease();
          v82 = *(v64 + 8);
          v83 = sub_1ABA8EF78();
          v84(v83);
          sub_1ABAA1BE0();
          v85(v106, 0);
          sub_1ABA96C54();
          v62 = v109;
          v76 = v63;
          goto LABEL_16;
        default:
          LOBYTE(v110) = 0;
          sub_1ABBC2D0C();
          sub_1ABA9A390();
          sub_1ABAA6FE4();
          sub_1ABA8AB00();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v70 = sub_1ABA7E5B0();
          v71(v70);
          v72 = *(v115 + 8);
          v73 = sub_1ABA7D0F8();
          v74(v73);
          v76 = v110;
          v75 = v111;
          v77 = v112;
          v78 = v113;
          v79 = v114;
LABEL_15:
          v62 = v109;
LABEL_16:
          *v46 = v76;
          *(v46 + 8) = v75;
          *(v46 + 16) = v77;
          *(v46 + 24) = v78;
          *(v46 + 32) = v79;
          *(v46 + 34) = v92;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABBB8D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 34);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1ABF25234();
  CandidateConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

uint64_t EntitySourceID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  result = sub_1ABF23D34();
  if (v3)
  {

    return sub_1ABF23D34();
  }

  return result;
}

uint64_t static EntitySourceID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1ABF25054(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1ABF25054() & 1) != 0)
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

uint64_t sub_1ABBB8EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABBB8F9C(char a1)
{
  if (a1)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1ABBB8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB8EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB8FFC(uint64_t a1)
{
  v2 = sub_1ABBC3610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB9038(uint64_t a1)
{
  v2 = sub_1ABBC3610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntitySourceID.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D41F8, &qword_1ABF42AA8);
  sub_1ABA7BB64(v5);
  v18 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = *v0;
  v11 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = sub_1ABA8A354();
  sub_1ABA88DCC(v14, v15);
  sub_1ABBC3610();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABA8E804();
    sub_1ABA7BF34();
    sub_1ABF24ED4();
  }

  (*(v18 + 8))(v2, v5);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t EntitySourceID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  if (v4)
  {
    sub_1ABF23D34();
  }

  return sub_1ABF25294();
}

void EntitySourceID.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D4208, &qword_1ABF42AB0);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC3610();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v3);
  }

  else
  {
    v12 = sub_1ABF24E14();
    v14 = v13;
    sub_1ABA8E804();
    v15 = sub_1ABF24DB4();
    v17 = v16;
    v18 = v15;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    v5[1] = v14;
    v5[2] = v18;
    v5[3] = v17;

    sub_1ABA84B54(v3);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBB93F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_1ABF25234();
  EntitySourceID.hash(into:)();
  return sub_1ABF25294();
}

unint64_t EntitySourceID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_1ABF24AB4();

  sub_1ABA8071C();
  v5 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v5);
  MEMORY[0x1AC5A9410](0x3A656372756F7320, 0xE800000000000000);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 4271950;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v6, v7);

  return 0xD000000000000011;
}

uint64_t static EntityResolutionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v144 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v140 = *(a1 + 90);
  v141 = *(a1 + 88);
  v142 = *(a1 + 48);
  v12 = *(a1 + 96);
  v11 = *(a1 + 104);
  v13 = *(a1 + 112);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v20 = *(a2 + 64);
  v23 = *(a2 + 72);
  v22 = *(a2 + 80);
  v24 = *(a2 + 90);
  v25 = *(a2 + 88);
  v27 = *(a2 + 96);
  v26 = *(a2 + 104);
  v28 = *(a2 + 112);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    v138 = *(a2 + 80);
    v139 = *(a1 + 56);
    v134 = *(a1 + 96);
    v135 = *(a1 + 64);
    *&v133 = *(a2 + 112);
    *(&v133 + 1) = *(a1 + 112);
    v131 = *(a2 + 104);
    v132 = *(a1 + 104);
    v136 = *(a1 + 72);
    v137 = *(a1 + 80);
    if (*a1 != *a2 || v3 != v14)
    {
      v127 = *(a2 + 32);
      v129 = *(a2 + 96);
      v30 = *(a2 + 56);
      v31 = *(a2 + 64);
      v32 = *(a2 + 72);
      v125 = *(a2 + 24);
      v33 = *(a1 + 40);
      v34 = *(a2 + 40);
      v35 = *(a2 + 90);
      v36 = *(a2 + 88);
      v37 = *(a1 + 24);
      v38 = sub_1ABF25054();
      v5 = v37;
      v25 = v36;
      v24 = v35;
      v18 = v34;
      v6 = v33;
      v16 = v125;
      v23 = v32;
      v20 = v31;
      v21 = v30;
      v17 = v127;
      v27 = v129;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v138 = *(a2 + 80);
    v139 = *(a1 + 56);
    v134 = *(a1 + 96);
    v135 = *(a1 + 64);
    *&v133 = *(a2 + 112);
    *(&v133 + 1) = *(a1 + 112);
    v131 = *(a2 + 104);
    v132 = *(a1 + 104);
    v136 = *(a1 + 72);
    v137 = *(a1 + 80);
    if (v14)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v15)
    {
      return 0;
    }

    v39 = sub_1ABA8C744();
    v41 = v40;
    v43 = v42;
    v124 = v20;
    v44 = v21;
    v45 = v24;
    v47 = v46;
    v48 = v16;
    v49 = v27;
    v51 = v50;
    v53 = sub_1ABB49178(v39, v52);
    v5 = v51;
    v27 = v49;
    v16 = v48;
    v25 = v47;
    v24 = v45;
    v21 = v44;
    v20 = v124;
    v6 = v43;
    v23 = v41;
    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    v126 = v25;
    v128 = v23;
    v130 = v6;

    v55 = sub_1ABB49340(v54, v16);

    v6 = v130;
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v126 = v25;
    v128 = v23;
    if (v16)
    {
      return 0;
    }
  }

  v56 = v144 == v17 && v6 == v18;
  if (!v56 && (sub_1ABF25054() & 1) == 0 || (sub_1ABACFAA8() & 1) == 0)
  {
    return 0;
  }

  v57 = v20;
  v58 = v141 | (v140 << 16);
  v59 = v126 | (v24 << 16);
  if (BYTE2(v58) == 255)
  {
    v60 = v141 | (v140 << 16);
    sub_1ABBAE7B0(v139, v135, v136, v137, v58);
    sub_1ABA9FB30();
    sub_1ABBAE7B0(v61, v62, v63, v64, v65);
    if (BYTE2(v59) == 255)
    {
      v66 = sub_1ABAA4954();
      sub_1ABB37314(v66, v67, v68, v69, v60);
      goto LABEL_35;
    }

LABEL_31:
    v83 = sub_1ABAA4954();
    sub_1ABB37314(v83, v84, v85, v86, v60);
    sub_1ABA9EAA8();
    sub_1ABB37314(v87, v88, v89, v90, v91);
    return 0;
  }

  v145 = (v141 | (v140 << 16)) >> 16;
  v149[0] = v139;
  v149[1] = v135;
  v149[2] = v136;
  v149[3] = v137;
  v150 = v141;
  v151 = v145;
  if (BYTE2(v59) == 255)
  {
    v70 = v141 | (v140 << 16);
    sub_1ABBAE7B0(v139, v135, v136, v137, v58);
    sub_1ABA9FB30();
    sub_1ABBAE7B0(v71, v72, v73, v74, v126 | (v24 << 16));
    v75 = sub_1ABAA4954();
    sub_1ABBAE7B0(v75, v76, v77, v78, v70);
    v79 = sub_1ABAA4954();
    v60 = v70;
    sub_1ABB37328(v79, v80, v81, v82, v70, v145);
    goto LABEL_31;
  }

  v146[0] = v21;
  v146[1] = v57;
  v146[2] = v128;
  v146[3] = v138;
  v147 = v126;
  v148 = (v126 | (v24 << 16)) >> 16;
  sub_1ABA96C48();
  sub_1ABBAE7B0(v93, v94, v95, v96, v97);
  sub_1ABA894F8();
  sub_1ABBAE7B0(v98, v99, v100, v101, v102);
  v103 = sub_1ABA82794();
  sub_1ABBAE7B0(v103, v104, v105, v106, v107);
  v143 = static CandidateConstraint.== infix(_:_:)(v149, v146);
  sub_1ABA894F8();
  sub_1ABB37328(v108, v109, v110, v111, v112, SBYTE2(v59));
  v113 = sub_1ABA82794();
  sub_1ABB37328(v113, v114, v115, v116, v117, v145);
  v118 = sub_1ABA82794();
  sub_1ABB37314(v118, v119, v120, v121, v122);
  if ((v143 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (!v134)
  {
    if (!v27)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v27 || (sub_1ABB490A0(v134, v27) & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  result = v133 == 0;
  if (*(&v133 + 1) && v133)
  {
    if (v132 == v131 && *(&v133 + 1) == v133)
    {
      return 1;
    }

    else
    {

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t EntityResolutionRequest.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = *(v1 + 48);
  v7 = v1[7];
  v26 = v1[4];
  v8 = v1[9];
  v9 = *(v1 + 90);
  v10 = *(v1 + 44);
  if (v1[1])
  {
    v11 = *v1;
    sub_1ABA90FA4();
    sub_1ABF23D34();
    if (v3)
    {
LABEL_3:
      sub_1ABA90FA4();
      sub_1ABB4ED20(a1, v3);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1ABA88B50();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_1ABA88B50();
LABEL_6:
  v12 = v10 | (v9 << 16);
  if (v4)
  {
    sub_1ABA90FA4();
    v13 = sub_1ABA7E378();
    sub_1ABB4EC9C(v13, v14);
  }

  else
  {
    sub_1ABA88B50();
  }

  sub_1ABBB5978();
  sub_1ABF23D34();
  if ((v12 & 0xFFFFFFu) >= 0xFF0000)
  {
    return sub_1ABA88B50();
  }

  sub_1ABA90FA4();
  sub_1ABA894EC();
  sub_1ABA9EAA8();
  sub_1ABB37294(v16, v17, v18, v19, v20, SBYTE2(v12));
  CandidateConstraint.hash(into:)(a1);
  sub_1ABA894EC();
  sub_1ABA9EAA8();

  return sub_1ABB37328(v21, v22, v23, v24, v25, SBYTE2(v12));
}

uint64_t sub_1ABBB9B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF89F10 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E617073 && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701080941 && a2 == 0xE400000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001ABF89F30 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4449656372756F73 && a2 == 0xE900000000000073;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7432043 && a2 == 0xE300000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x466564756C636E69 && a2 == 0xEF73657275746165;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001ABF89F50 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000012 && 0x80000001ABF89F70 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1ABBB9EAC(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x736E617073;
      break;
    case 3:
      result = 0x4974736575716572;
      break;
    case 4:
      result = 1701080941;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4449656372756F73;
      break;
    case 7:
      result = 7432043;
      break;
    case 8:
      result = 0x466564756C636E69;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBB9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB9B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBA01C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBB9EA4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBBA044(uint64_t a1)
{
  v2 = sub_1ABBC3664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBA080(uint64_t a1)
{
  v2 = sub_1ABBC3664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRequest.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D4210, &qword_1ABF42AB8);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v10 = *v0;
  v11 = v0[1];
  v31 = v0[3];
  v32 = v0[2];
  v29 = v0[5];
  v30 = v0[4];
  v33[0] = *(v0 + 48);
  v23 = v0[7];
  v24 = v0[8];
  v27 = v0[9];
  v28 = v0[10];
  v25 = *(v0 + 44);
  v26 = *(v0 + 90);
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v18 = *(v0 + 121);
  v19 = *(v0 + 120);
  v12 = *(v0 + 122);
  v13 = v3[3];
  v14 = v3[4];
  v15 = v3;
  v17 = v16;
  sub_1ABA88DCC(v15, v13);
  sub_1ABBC3664();
  sub_1ABAA0704();
  sub_1ABF252E4();
  sub_1ABF24ED4();
  if (!v1)
  {
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABBC36B8();
    sub_1ABAA3810();
    sub_1ABAD219C(&qword_1EB4D4230, &qword_1ABF42AC8);
    sub_1ABBC373C();
    sub_1ABAA3810();
    sub_1ABF24F34();
    sub_1ABBC3814();
    sub_1ABA96990();
    sub_1ABF24F84();
    sub_1ABBAE7B0(v23, v24, v27, v28, v25 | (v26 << 16));
    sub_1ABBC2B38();
    sub_1ABA96990();
    sub_1ABF24F14();
    sub_1ABA89B28();
    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3868();
    sub_1ABAA3810();
    sub_1ABF24ED4();
    sub_1ABA96990();
    sub_1ABF24F44();
    sub_1ABA96990();
    sub_1ABF24F44();
    sub_1ABA96990();
    sub_1ABF24F44();
  }

  (*(v6 + 8))(v17, v4);
  sub_1ABA7BC90();
}

uint64_t EntityResolutionRequest.hashValue.getter()
{
  sub_1ABA7AB5C();
  EntityResolutionRequest.hash(into:)(v1);
  return sub_1ABF25294();
}

void EntityResolutionRequest.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v43 = sub_1ABAD219C(&qword_1EB4D4268, &qword_1ABF42AD8);
  sub_1ABA7BB64(v43);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABBC3664();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v13 = v6;
    v32 = v4;
    LOBYTE(v45) = 0;
    sub_1ABAA19A0();
    v14 = sub_1ABF24DB4();
    v42 = v15;
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    LOBYTE(v44[0]) = 1;
    sub_1ABBC3940();
    sub_1ABA8406C();
    v41 = v45;
    sub_1ABAD219C(&qword_1EB4D4230, &qword_1ABF42AC8);
    LOBYTE(v44[0]) = 2;
    sub_1ABBC39C4();
    sub_1ABA8406C();
    v40 = v45;
    sub_1ABA81754(3);
    v31 = sub_1ABF24E14();
    v39 = v16;
    LOBYTE(v44[0]) = 4;
    sub_1ABBC3A9C();
    sub_1ABAA19A0();
    sub_1ABF24E64();
    v30 = v45;
    LOBYTE(v44[0]) = 5;
    sub_1ABBC3538();
    sub_1ABAA19A0();
    sub_1ABF24DF4();
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v64 = v49 | (BYTE2(v49) << 16);
    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    LOBYTE(v44[0]) = 6;
    sub_1ABBC3AF0();
    sub_1ABA8406C();
    v29 = v14;
    v33 = v45;
    sub_1ABA81754(7);
    v17 = sub_1ABF24DB4();
    v34 = v18;
    v28 = v17;
    sub_1ABA81754(8);
    v27 = sub_1ABF24E24();
    sub_1ABA81754(9);
    v19 = sub_1ABF24E24();
    sub_1ABAA19A0();
    v20 = sub_1ABF24E24();
    v21 = v27 & 1;
    v26 = v19 & 1;
    (*(v13 + 8))(v11, v43);
    LODWORD(v43) = v20 & 1;
    v44[0] = v29;
    v44[1] = v42;
    v44[2] = v41;
    v44[3] = v40;
    v44[4] = v31;
    v44[5] = v39;
    LOBYTE(v44[6]) = v30;
    v44[7] = v35;
    v44[8] = v36;
    v44[9] = v37;
    v44[10] = v38;
    v27 = HIWORD(v64);
    BYTE2(v44[11]) = BYTE2(v64);
    LOWORD(v44[11]) = v64;
    v23 = v33;
    v22 = v34;
    v24 = v28;
    v44[12] = v33;
    v44[13] = v28;
    v44[14] = v34;
    LOBYTE(v44[15]) = v21;
    v25 = v26;
    BYTE1(v44[15]) = v26;
    BYTE2(v44[15]) = v20 & 1;
    memcpy(v32, v44, 0x7BuLL);
    sub_1ABBC3BC8(v44, &v45);
    sub_1ABA84B54(v2);
    v45 = v29;
    v46 = v42;
    v47 = v41;
    v48 = v40;
    v49 = v31;
    v50 = v39;
    v51 = v30;
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v55 = v38;
    v57 = v27;
    v56 = v64;
    v58 = v23;
    v59 = v24;
    v60 = v22;
    v61 = v21;
    v62 = v25;
    v63 = v43;
    sub_1ABBC3C00(&v45);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBBAA78()
{
  sub_1ABF25234();
  EntityResolutionRequest.hash(into:)(v1);
  return sub_1ABF25294();
}

void sub_1ABBBAAB4()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16) == 1)
  {
    if (_Records_GDEntityClass_records)
    {
      v2 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v4);
      MEMORY[0x1EEE9AC00](v2);
      v3[2] = &v4;
      sub_1ABB2F984(sub_1ABBC71D4, v3, v1);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1ABBBABC4()
{
  switch(*(v0 + 48))
  {
    case 1:
      sub_1ABA9A3B4();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA7FC58();
      break;
    case 3:
      sub_1ABA8B08C();
      goto LABEL_8;
    case 4:
      sub_1ABA8E7F0();
      break;
    case 5:
      sub_1ABA89B1C();
      v1 = 1;
      goto LABEL_10;
    case 6:
      sub_1ABA95110();
LABEL_8:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  v1 = sub_1ABF25054();
LABEL_10:

  return v1 & 1;
}

uint64_t sub_1ABBBACA4()
{
  switch(*(v0 + 48))
  {
    case 1:
      sub_1ABA9A3B4();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA7FC58();
      break;
    case 3:
      sub_1ABA8B08C();
      goto LABEL_8;
    case 4:
      sub_1ABA89B1C();
      v1 = 1;
      goto LABEL_10;
    case 5:
      sub_1ABA89B1C();
      break;
    case 6:
      sub_1ABA95110();
LABEL_8:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  v1 = sub_1ABF25054();
LABEL_10:

  return v1 & 1;
}

uint64_t sub_1ABBBAD8C()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v16 = *v0;
  memcpy(v19, v0 + 2, sizeof(v19));
  if (sub_1ABBBABC4())
  {
    return 0;
  }

  v17 = *v0;
  memcpy(v19, v0 + 2, sizeof(v19));
  v3 = 0;
  if ((sub_1ABBBACA4() & 1) == 0)
  {
    if (v1)
    {
      v5 = *(v1 + 16);
      v3 = MEMORY[0x1E69E7CC0];
      if (v5)
      {
        v18 = MEMORY[0x1E69E7CC0];
        sub_1ABADE16C(0, v5, 0);
        if (v2)
        {
          v6 = v2;
        }

        else
        {
          v6 = v3;
        }

        v15 = v6;
        v3 = v18;
        v7 = (v1 + 56);
        do
        {
          v9 = *(v7 - 3);
          v8 = *(v7 - 2);
          v10 = *(v7 - 1);
          v11 = *v7;
          v13 = *(v18 + 16);
          v12 = *(v18 + 24);

          if (v13 >= v12 >> 1)
          {
            sub_1ABADE16C((v12 > 1), v13 + 1, 1);
          }

          v7 += 4;
          *(v18 + 16) = v13 + 1;
          v14 = v18 + 80 * v13;
          *(v14 + 32) = v9;
          *(v14 + 40) = v8;
          *(v14 + 48) = v10;
          *(v14 + 56) = v11;
          *(v14 + 64) = 0;
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v14 + 88) = v15;
          *(v14 + 96) = 0;
          *(v14 + 104) = 1;
          --v5;
        }

        while (v5);
      }
    }
  }

  return v3;
}

__n128 Mention.init(span:entityClasses:score:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4 & 1;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  return result;
}

void sub_1ABBBAF2C(void *a1@<X8>)
{
  *__src = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *&__src[32] = *(v1 + 32);
  *&__src[48] = v5;
  v6 = *(v1 + 80);
  *&__src[64] = *(v1 + 64);
  v22 = v6;
  v7 = *(v1 + 96);
  *v24 = *(v1 + 104);
  *&v24[15] = *(v1 + 119);
  *&__src[16] = v3;
  *&__src[24] = v4;
  v23 = v7;
  if ((sub_1ABBBABC4() & 1) == 0)
  {
LABEL_16:
    sub_1ABA9E918(xmmword_1ABF34750);
    return;
  }

  if (!v7)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1ED871B20);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24664();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      sub_1ABA9490C(&dword_1ABA78000, v17, v18, "No sourceIDs available for a structured input.");
      MEMORY[0x1AC5AB8B0](v16, -1, -1);
    }

    goto LABEL_16;
  }

  v8 = 0uLL;
  if (v4 && v4[1].n128_u64[0])
  {
    v10 = v4[2].n128_u64[0];
    v9 = v4[2].n128_i64[1];
    v19 = v4[3];

    v8 = v19;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v20[0].n128_u64[0] = v10;
  v20[0].n128_u64[1] = v11;
  v20[1] = v8;
  if (v3)
  {
    v12 = v3;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  Mention.init(sourceIDs:span:entityClasses:)(v7, v20, v12, __src);
  memcpy(a1, __src, 0x49uLL);
}

__n128 Mention.init(sourceIDs:span:entityClasses:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3;
  v6 = a4;
  v20 = a2[1];
  v21 = *a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];

    sub_1ABADDBD4();
    v8 = (a1 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *v8;

      swift_bridgeObjectRetain_n();
      v12 = sub_1ABA894A0();
      MEMORY[0x1AC5A9410](v12);

      MEMORY[0x1AC5A9410](39, 0xE100000000000000);

      v13 = *(v23 + 16);
      if (v13 >= *(v23 + 24) >> 1)
      {
        sub_1ABADDBD4();
      }

      v8 += 4;
      *(v23 + 16) = v13 + 1;
      v14 = v23 + 16 * v13;
      *(v14 + 32) = 39;
      *(v14 + 40) = 0xE100000000000000;
      --v7;
    }

    while (v7);

    v6 = a4;
    v4 = a3;
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  sub_1ABA9EBC4();
  sub_1ABF23B54();

  sub_1ABF24AB4();

  sub_1ABA8071C();
  v22 = v15;
  v16 = sub_1ABAA015C();
  MEMORY[0x1AC5A9410](v16);

  MEMORY[0x1AC5A9410](10589, 0xE200000000000000);
  result = v21;
  *v6 = v21;
  v6[1] = v20;
  v6[2].n128_u64[0] = a1;
  v6[2].n128_u64[1] = 0xD000000000000013;
  v6[3].n128_u64[0] = v22;
  v6[3].n128_u64[1] = v4;
  v6[4].n128_u64[0] = 0;
  v6[4].n128_u8[8] = 1;
  return result;
}

void sub_1ABBBB2E8(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  memcpy(v21, (v1 + 24), sizeof(v21));
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  v24 = *(v1 + 120);
  v25 = *(v1 + 122);
  v22 = v7;
  v23 = v6;
  if ((sub_1ABBBACA4() & 1) == 0)
  {
LABEL_23:
    sub_1ABA9E918(xmmword_1ABF34750);
    return;
  }

  if (!v6)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B20);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24664();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      sub_1ABA9490C(&dword_1ABA78000, v19, v20, "No kgq available for a semi-structured input.");
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
    }

    goto LABEL_23;
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4;
  }

  v9 = 7;
  v10 = MEMORY[0x1E69E7CC0];
  if (((v3 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  if (v3)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v3;
  v12 = v9 | (v8 << 16);
  v13 = 15;
  if (!v3)
  {
    v13 = 0;
    v12 = 0;
  }

  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = v10;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v14;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
}

__n128 Mention.init(kgq:span:entityClasses:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = *a3;
  v6 = *(a3 + 16);
  *a5 = *a3;
  *(a5 + 16) = v6;
  *(a5 + 48) = a2;
  *(a5 + 56) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = a1;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  return result;
}

uint64_t EntityResolutionRequest.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v28 = *(v0 + 40);
  v29 = *(v0 + 32);
  v27 = *(v0 + 48);
  v31 = *(v0 + 64);
  v32 = *(v0 + 56);
  v5 = *(v0 + 80);
  v30 = *(v0 + 72);
  v6 = *(v0 + 90);
  v7 = *(v0 + 88);
  v33 = *(v0 + 96);
  v34 = *(v0 + 104);
  v8 = *(v0 + 112);

  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x203A74786574, 0xE600000000000000);
  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 4271950;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v9, v1);

  MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF89D50);
  if (v4)
  {
    MEMORY[0x1AC5A9750](v4, &type metadata for EntityClass);
  }

  else
  {
    _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
  }

  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  v10 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v10);

  MEMORY[0x1AC5A9410](0x203A6E6170730A29, 0xE800000000000000);
  if (v3)
  {
    MEMORY[0x1AC5A9750](v3, &type metadata for Span);
  }

  else
  {
    _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
  }

  v11 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v11);

  MEMORY[0x1AC5A9410](0x203A65646F6D0ALL, 0xE700000000000000);
  v12 = 0xE800000000000000;
  v13 = sub_1ABA9A3B4();
  switch(v27)
  {
    case 1:
      break;
    case 2:
      v12 = 0xEB00000000797469;
      v13 = sub_1ABA7FC58();
      break;
    case 3:
      v14 = sub_1ABA8B08C();
      goto LABEL_19;
    case 4:
      v12 = 0x80000001ABF7F180;
      v13 = 0xD000000000000014;
      break;
    case 5:
      v12 = 0x80000001ABF7F1A0;
      v13 = 0xD000000000000010;
      break;
    case 6:
      v14 = sub_1ABA95110();
LABEL_19:
      v13 = v14 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
      v12 = 0xEC00000068637261;
      break;
    default:
      v12 = 0xEA00000000007963;
      v13 = 0x6E6574614C776F6CLL;
      break;
  }

  MEMORY[0x1AC5A9410](v13, v12);

  MEMORY[0x1AC5A9410](0x747365757165720ALL, 0xEC000000203A6449);
  MEMORY[0x1AC5A9410](v29, v28);
  MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF89D70);
  sub_1ABA9EAA8();
  sub_1ABBAE7B0(v15, v16, v17, v18, v19);
  sub_1ABAD219C(&qword_1EB4D42A0, &qword_1ABF42AE0);
  v20 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v20);

  MEMORY[0x1AC5A9410](0x49656372756F730ALL, 0xEC000000203A7344);
  v21 = 0xE300000000000000;
  if (v33)
  {
    v22 = MEMORY[0x1AC5A9750](v33, &type metadata for EntitySourceID);
    v24 = v23;
  }

  else
  {
    v22 = 4271950;
    v24 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v22, v24);

  MEMORY[0x1AC5A9410](0x203A71676B0ALL, 0xE600000000000000);
  if (v8)
  {
    v25 = v34;
  }

  else
  {
    v25 = 4271950;
  }

  if (v8)
  {
    v21 = v8;
  }

  MEMORY[0x1AC5A9410](v25, v21);

  return 0;
}

uint64_t sub_1ABBBB8A4()
{
  v0 = sub_1ABF24D84();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBBB8F8(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1ABBBB948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABBBB8A4();
  *a2 = result;
  return result;
}

uint64_t sub_1ABBBB978@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBBB8F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBBB9AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBBB8A4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBBB9D4(uint64_t a1)
{
  v2 = sub_1ABBC3C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBBA10(uint64_t a1)
{
  v2 = sub_1ABBC3C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Span.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D42A8, &unk_1ABF42AE8);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC3C30();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
LABEL_4:
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  v9 = sub_1ABF24E14();
  v11 = v10;
  sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
  sub_1ABBC3C84();
  sub_1ABF24E64();
  if (!v17[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = sub_1ABBBBC7C(0xFuLL, v17[4], v9, v11);
  if (v17[2] < 2uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v17[5];

  v12 = sub_1ABBBBC7C(0xFuLL, v15, v9, v11);

  v13 = sub_1ABA8E0A8();
  v14(v13);
  if (v12 >> 14 >= v16 >> 14)
  {
    *v4 = v9;
    v4[1] = v11;
    v4[2] = v16;
    v4[3] = v12;

    sub_1ABA84B54(v2);

    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_1ABBBBC7C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_1ABBC2D60(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_39;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = sub_1ABF23CF4();
LABEL_36:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = sub_1ABF24B74();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_36;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1ABF23CE4();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1ABF24B74();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
      }

      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

void Span.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D42C0, &qword_1ABF42AF8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E338();
  v11 = *v0;
  v12 = v0[1];
  v20 = v0[2];
  v21 = v0[3];
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = sub_1ABA97F40();
  sub_1ABA88DCC(v15, v16);
  sub_1ABBC3C30();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABAA015C();
  sub_1ABF24F34();
  if (v1)
  {
    goto LABEL_4;
  }

  sub_1ABBBC000(0xFuLL, v20, v11, v12);
  v18 = v17;
  sub_1ABBBC000(0xFuLL, v21, v11, v12);
  if (v19 >= v18)
  {
    sub_1ABAD219C(&qword_1EB4D42C8, &qword_1ABF42B00);
    sub_1ABBC3D00();
    sub_1ABA7BF34();
    sub_1ABF24F84();
LABEL_4:
    (*(v7 + 8))(v2, v5);
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  __break(1u);
}

void sub_1ABBBC000(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = sub_1ABBC2D60(a1, a3, a4);
  sub_1ABA893C0();
  v10 = sub_1ABBC2D60(v7, v8, v9) >> 14;
  if (v6 >> 14 >= v10)
  {
    if (v10 >= v6 >> 14)
    {
      return;
    }

    v17 = 0;
    while (1)
    {
      if (__OFSUB__(v17--, 1))
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      sub_1ABA893C0();
      v6 = sub_1ABF23CF4();
LABEL_34:
      if (v10 >= v6 >> 14)
      {
        return;
      }
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v23 = a3;
      v24 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v23 + (v6 >> 16) - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          sub_1ABA89780(v20);
        }

        while (v21);
        goto LABEL_31;
      }
    }

    else
    {
      v19 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v19 = sub_1ABF24B74();
      }

      if ((*(v19 + (v6 >> 16) - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          sub_1ABA89780(v20);
        }

        while (v21);
LABEL_31:
        v22 = v20 + 1;
LABEL_33:
        v6 = (v6 + (v22 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_34;
      }
    }

    v22 = -1;
    goto LABEL_33;
  }

  for (i = 0; !__OFADD__(i, 1); ++i)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      sub_1ABA893C0();
      v6 = sub_1ABF23CE4();
    }

    else
    {
      v12 = v6 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v23 = a3;
        v24 = a4 & 0xFFFFFFFFFFFFFFLL;
        v14 = *(&v23 + v12);
      }

      else
      {
        v13 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v13 = sub_1ABF24B74();
        }

        v14 = *(v13 + v12);
      }

      v15 = v14;
      v16 = __clz(v14 ^ 0xFF) - 24;
      if (v15 >= 0)
      {
        LOBYTE(v16) = 1;
      }

      v6 = ((v12 + v16) << 16) | 5;
    }

    if (v10 <= v6 >> 14)
    {
      return;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t Span.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABF23D34();
  MEMORY[0x1AC5AA8D0](v3 >> 14);
  return MEMORY[0x1AC5AA8D0](v4 >> 14);
}

uint64_t static Span.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = *a1, v8 = 0, (sub_1ABF25054() & 1) != 0))
  {
    sub_1ABA894A0();
    v9 = sub_1ABF23EC4();
    v10 = MEMORY[0x1AC5A9330](v9);
    v12 = v11;

    sub_1ABA894EC();
    v13 = sub_1ABF23EC4();
    v14 = MEMORY[0x1AC5A9330](v13);
    v16 = v15;

    if (v10 == v14 && v12 == v16)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1ABA8A940();
    }
  }

  return v8 & 1;
}

uint64_t Span.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  MEMORY[0x1AC5AA8D0](v3 >> 14);
  MEMORY[0x1AC5AA8D0](v4 >> 14);
  return sub_1ABF25294();
}

uint64_t sub_1ABBBC3E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_1ABF25234();
  Span.hash(into:)();
  return sub_1ABF25294();
}

uint64_t Span.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v6 = v5 << 16;
  v7 = 4 * v5;
  if (v7 >= v3 >> 14)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v6;
  }

  if (v7 >= v4 >> 14)
  {
    v9 = v0[3];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 >> 14;
  if (v3 >> 14 == v8 >> 14 && v10 == v4 >> 14)
  {
    v22[0] = 91;
    v22[1] = 0xE100000000000000;
    sub_1ABBBC000(0xFuLL, v3, v1, v2);
    sub_1ABAA015C();
    v14 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v14);

    v15 = sub_1ABA9EBC4();
    MEMORY[0x1AC5A9410](v15);
    sub_1ABBBC000(0xFuLL, v4, v1, v2);
    sub_1ABAA015C();
    v16 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v16);

    MEMORY[0x1AC5A9410](14889, 0xE200000000000000);
    sub_1ABA894EC();
    v17 = sub_1ABF23EC4();
    v18 = MEMORY[0x1AC5A9330](v17);
    v20 = v19;

    MEMORY[0x1AC5A9410](v18, v20);
  }

  else
  {
    sub_1ABA8B290();
    sub_1ABF24AB4();

    strcpy(v22, "Span: range: ");
    HIWORD(v22[1]) = -4864;
    sub_1ABA894EC();
    v12 = sub_1ABBC34A0();
    MEMORY[0x1AC5A9410](v12);

    MEMORY[0x1AC5A9410](0x203A74786574202CLL, 0xE800000000000000);
    v13 = sub_1ABA7E378();
    MEMORY[0x1AC5A9410](v13);
  }

  return v22[0];
}

uint64_t sub_1ABBBC630(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1851879539 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656372756F73 && a2 == 0xE900000000000073;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7432043 && a2 == 0xE300000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C43797469746E65 && a2 == 0xED00007365737361;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABBBC7DC(char a1)
{
  result = 1851879539;
  switch(a1)
  {
    case 1:
      result = 0x4449656372756F73;
      break;
    case 2:
      result = 7432043;
      break;
    case 3:
      result = 0x6C43797469746E65;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBBC87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBC630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBC8A4(uint64_t a1)
{
  v2 = sub_1ABBC3D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBC8E0(uint64_t a1)
{
  v2 = sub_1ABBC3D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Mention.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D42D8, &qword_1ABF42B08);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E338();
  v15 = *(v0 + 5);
  v16 = *(v0 + 4);
  v13 = *(v0 + 7);
  v14 = *(v0 + 6);
  v12 = *(v0 + 8);
  v7 = *(v0 + 72);
  v8 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  v9 = sub_1ABBC3D7C();
  v17 = *v0;
  v18 = v0[1];

  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABBC37C0();
  sub_1ABA9FFE0();
  sub_1ABA7BF34();
  sub_1ABF24F14();
  if (v9)
  {
  }

  else
  {

    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3868();
    sub_1ABA9FFE0();
    sub_1ABA7BF34();
    sub_1ABF24F14();
    sub_1ABA7BF34();
    sub_1ABF24ED4();
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABBC36B8();
    sub_1ABA9FFE0();
    sub_1ABA7BF34();
    sub_1ABF24F14();
    sub_1ABA7BF34();
    sub_1ABF24EF4();
  }

  v10 = sub_1ABA8862C();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void Mention.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D42E8, &qword_1ABF42B10);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA8176C();
  v11 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABBC3D7C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABBC3A48();
    sub_1ABA8AB00();
    sub_1ABF24DF4();
    v26 = v29;
    v27 = v30;
    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3AF0();
    sub_1ABA8CCA8();
    v23 = v32;
    v22 = v31;
    v25 = v29;
    LOBYTE(v29) = 2;
    v12 = sub_1ABF24DB4();
    v24 = v13;
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    LOBYTE(v28[0]) = 3;
    sub_1ABBC3940();
    sub_1ABA8CCA8();
    v14 = sub_1ABF24DD4();
    v16 = v15;
    v17 = *(v7 + 8);
    v18 = v14;
    v19 = sub_1ABA8A354();
    v20(v19);
    v21 = v29;
    v28[0] = v26;
    v28[1] = v30;
    v28[2] = v31;
    v28[3] = v32;
    v28[4] = v25;
    v28[5] = v12;
    v28[6] = v24;
    v28[7] = v29;
    v28[8] = v18;
    LOBYTE(v28[9]) = v16 & 1;
    memcpy(v4, v28, 0x49uLL);
    sub_1ABB3E11C(v28, &v29);
    sub_1ABA84B54(v2);
    v29 = v26;
    v30 = v27;
    v31 = v22;
    v32 = v23;
    v33 = v25;
    v34 = v12;
    v35 = v24;
    v36 = v21;
    v37 = v18;
    v38 = v16 & 1;
    sub_1ABBC3DD0(&v29);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t static Mention.== infix(_:_:)(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a2 + 1);
  v11 = *(a2 + 4);
  v10 = *(a2 + 5);
  v13 = *(a2 + 6);
  v12 = *(a2 + 7);
  v14 = a2[8];
  v15 = *(a2 + 72);
  if (v2)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    v36[0] = *a1;
    v36[1] = v2;
    v37 = *(a1 + 16);
    if (v9)
    {
      v31 = v5;
      v32 = v8;
      v33 = v15;
      *v34 = v16;
      v34[1] = v9;
      v35 = v17;
      swift_bridgeObjectRetain_n();

      v18 = static Span.== infix(_:_:)(v36, v34);

      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }

      if (v4)
      {
        goto LABEL_5;
      }

LABEL_15:
      if (v11)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v19 = *(a2 + 1);

    goto LABEL_11;
  }

  v31 = *(a1 + 56);
  v32 = *(a1 + 72);
  v33 = *(a2 + 72);

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (!v11 || (sub_1ABB490A0(v4, v11) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (v6)
  {
    v23 = v32;
    v22 = v33;
    v24 = v31;
    if (!v13)
    {
      goto LABEL_12;
    }

    if (v3 != v10 || v6 != v13)
    {
      v26 = sub_1ABF25054();
      v24 = v31;
      v23 = v32;
      v22 = v33;
      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v23 = v32;
    v22 = v33;
    v24 = v31;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  if (!v24)
  {
    if ((v12 != 0) | v23 & 1)
    {
      v20 = (v12 == 0) & v22;
      return v20 & 1;
    }

    goto LABEL_31;
  }

  if (v12)
  {
    v27 = v12;
    v28 = v22;
    v29 = v23;
    v30 = sub_1ABB49178(v24, v27);
    v22 = v28;
    if (v29 & 1 | ((v30 & 1) == 0))
    {
      v20 = v30 & v28;
      return v20 & 1;
    }

LABEL_31:
    v20 = (v7 == v14) & ~v22;
    return v20 & 1;
  }

LABEL_12:
  v20 = 0;
  return v20 & 1;
}

uint64_t Mention.description.getter()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v6[0] = *v0;
    v6[1] = v1;
    v7 = *(v0 + 16);
    return Span.description.getter();
  }

  else
  {
    v3 = *(v0 + 32);
    if (v3)
    {
      return MEMORY[0x1AC5A9750](v3, &type metadata for EntitySourceID);
    }

    else if (*(v0 + 48))
    {
      v4 = *(v0 + 40);
      sub_1ABA9936C();
      sub_1ABF24AB4();

      strcpy(v6, "Knosis Query: ");
      HIBYTE(v6[1]) = -18;
      v5 = sub_1ABAB50D4();
      MEMORY[0x1AC5A9410](v5);
      return v6[0];
    }

    else
    {
      sub_1ABA7F0D0();
      return 0xD000000000000010;
    }
  }
}

uint64_t CandidateConfidenceMetric.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t RetrievedCandidate.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[11];
  sub_1ABA8B290();
  sub_1ABF24AB4();

  sub_1ABA8B8A8();
  v7 = v4;
  EntityIdentifier.description.getter();
  sub_1ABA9F244();

  sub_1ABA9FD28();
  sub_1ABA8D3A8();
  sub_1ABA9F244();

  sub_1ABA7F0D0();
  v5 = sub_1ABA9E43C();
  MEMORY[0x1AC5A9410](v5);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA9F244();

  return v7;
}

uint64_t PopulatedCandidate.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(v0 + 80);
  v4 = *(v0 + 324);
  sub_1ABA8B290();
  sub_1ABF24AB4();

  sub_1ABA8B8A8();
  v7 = v5;
  EntityIdentifier.description.getter();
  sub_1ABA9F244();

  sub_1ABA9FD28();
  sub_1ABA8D3A8();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](0x6F6353656D616E20, 0xEC000000203A6572);
  _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
  if ((v4 & 1) == 0)
  {
    Float.toString(decimalPlaces:)(3);
  }

  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  sub_1ABF23C74();
  sub_1ABA9F244();

  return v7;
}

uint64_t sub_1ABBBD49C()
{
  v1 = v0;
  sub_1ABF24AB4();

  v29 = *(v0 + 24);
  v31 = *(v0 + 40);
  v32 = *(v0 + 56);
  v2 = *(v0 + 80);
  v34 = *(v0 + 88);
  v35 = *(v0 + 96);
  v33 = *(v0 + 72);
  v3 = Mention.description.getter();
  MEMORY[0x1AC5A9410](v3);

  sub_1ABA8CAC4();
  if (v2)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v5 = (v2 + 56);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v30 + 16);
        v8 = *(v30 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_1ABADDBD4();
        }

        *(v30 + 16) = v9 + 1;
        v10 = v30 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 5;
        --v4;
      }

      while (v4);
    }

    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    sub_1ABA9EBC4();
    sub_1ABF23B54();
  }

  v11 = sub_1ABA7D0F8();
  MEMORY[0x1AC5A9410](v11);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000014);
  swift_beginAccess();
  v28 = *(*(v1 + 16) + 16);
  v12 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v12);

  result = 0x3A6E6F69746E656DLL;
  v14 = *(v1 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {

    do
    {
      v16 = *(v14 + 32);
      v17 = *(v14 + 56);
      v18 = *(v14 + 352);
      v19 = *(v14 + 356);
      sub_1ABF24AB4();

      sub_1ABA8B8A8();
      v27 = v20;
      v21 = EntityIdentifier.description.getter();
      MEMORY[0x1AC5A9410](v21);

      MEMORY[0x1AC5A9410](0x3A65726F637320, 0xE700000000000000);
      v22 = sub_1ABA8D3A8();
      MEMORY[0x1AC5A9410](v22);

      v23 = sub_1ABA894EC();
      MEMORY[0x1AC5A9410](v23);
      _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
      if ((v19 & 1) == 0)
      {
        Float.toString(decimalPlaces:)(3);
      }

      v24 = sub_1ABAA015C();
      sub_1ABAD219C(v24, v25);
      v26 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v26);

      MEMORY[0x1AC5A9410](v27, 0xE600000000000000);

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      v14 += 328;
      --v15;
    }

    while (v15);

    return 0x3A6E6F69746E656DLL;
  }

  return result;
}

void *PopulatedCandidatesForMention.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[10];

  return v0;
}

uint64_t PopulatedCandidatesForMention.__deallocating_deinit()
{
  PopulatedCandidatesForMention.deinit();

  return swift_deallocClassInstance();
}

uint64_t static RerankedEntity.== infix(_:_:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  result = 0;
  if (*v2 != *v1)
  {
    return result;
  }

  v4 = v1;
  if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v2 + 8), *(v1 + 8)), vceqq_f64(*(v2 + 24), *(v1 + 24))), xmmword_1ABF42A10)) & 0xF) != 0)
  {
    return result;
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v130 = *(v2 + 80);
  v131 = *(v2 + 72);
  v132 = *(v2 + 88);
  v133 = *(v2 + 96);
  v134 = *(v2 + 104);
  v9 = *(v2 + 1088);
  v10 = *(v2 + 1096);
  v11 = *(v2 + 1104);
  v12 = *(v2 + 1112);
  v13 = *(v2 + 1120);
  v14 = *(v2 + 1128);
  v15 = *(v2 + 1136);
  v16 = *(v2 + 1144);
  v126 = *(v2 + 1152);
  v17 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = *(v1 + 64);
  v135 = *(v1 + 56);
  v136 = v7;
  v20 = *(v1 + 72);
  v21 = *(v1 + 80);
  v23 = *(v1 + 88);
  v22 = *(v1 + 96);
  v24 = *(v1 + 104);
  v25 = *(v1 + 1088);
  v26 = *(v1 + 1096);
  v27 = *(v4 + 1104);
  v128 = *(v4 + 1112);
  v127 = *(v4 + 1120);
  v28 = *(v4 + 1128);
  v29 = *(v4 + 1136);
  v30 = *(v4 + 1144);
  v31 = *(v4 + 1152);
  if (!v6)
  {
    v120 = v25;
    v121 = *(v2 + 1088);
    v129 = v21;
    v124 = *(v2 + 1120);
    v125 = v20;
    v122 = v26;
    v123 = *(v2 + 1096);
    v117 = *(v4 + 1128);
    v118 = *(v2 + 1128);
    v119 = *(v2 + 1112);
    v115 = *(v4 + 1136);
    v116 = *(v2 + 1136);
    v112 = *(v4 + 1152);
    v113 = *(v4 + 1144);
    v114 = *(v2 + 1144);
    v50 = *(v2 + 40);
    sub_1ABB9AE60(v5, 0);
    if (!v18)
    {
      v111 = v23;
      sub_1ABB9AE60(v17, 0);
      v6 = 0;
      goto LABEL_34;
    }

    sub_1ABA826A8();
    sub_1ABA8A3A4();
    sub_1ABB9AE60(v51, v52);
    goto LABEL_21;
  }

  if (!v18)
  {
    v53 = sub_1ABA9FA2C(v10, v26, v7, v5);
    sub_1ABB9AE60(v53, v54);
    sub_1ABA8A3A4();
    sub_1ABB9AE60(v55, v56);
    v57 = sub_1ABA89628();
    sub_1ABB9AE60(v57, v58);

LABEL_21:
    v59 = sub_1ABA89628();
    sub_1ABAA8FA8(v59, v60);
    sub_1ABA826A8();
    sub_1ABA8A3A4();
LABEL_27:
    sub_1ABAA8FA8(v61, v62);
    return 0;
  }

  v122 = v26;
  v123 = *(v2 + 1096);
  v120 = v25;
  v121 = *(v2 + 1088);
  v117 = *(v4 + 1128);
  v118 = *(v2 + 1128);
  v119 = *(v2 + 1112);
  v115 = *(v4 + 1136);
  v116 = *(v2 + 1136);
  v124 = *(v2 + 1120);
  v112 = *(v4 + 1152);
  v113 = *(v4 + 1144);
  v114 = *(v2 + 1144);
  v32 = v5 == v17 && v6 == v18;
  v129 = v21;
  v110 = v22;
  if (!v32)
  {
    sub_1ABA9FA2C(v10, v26, v7, v5);
    v34 = v33;
    v35 = v8;
    v36 = v23;
    v38 = v37;
    v10 = sub_1ABF25054();
    v20 = v38;
    v23 = v36;
    v8 = v35;
    v5 = v34;
    if ((v10 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!v8)
  {
    v111 = v23;
    v125 = v20;
    v65 = sub_1ABA9FA2C(v10, v26, v7, v5);
    v41 = v66;
    sub_1ABB9AE60(v65, v67);
    if (!v19)
    {
      v83 = sub_1ABA826A8();
      sub_1ABB9AE60(v83, v84);
      v85 = sub_1ABAA4D7C();
      sub_1ABB9AE60(v85, v86);
      v81 = sub_1ABA826A8();
      goto LABEL_32;
    }

LABEL_25:
    sub_1ABA826A8();
    sub_1ABA8A3A4();
    sub_1ABB9AE60(v68, v69);
    v70 = sub_1ABAA4D7C();
    sub_1ABB9AE60(v70, v71);
    sub_1ABA826A8();
    sub_1ABA8A3A4();
    sub_1ABAA8FA8(v72, v73);
LABEL_26:

    v61 = sub_1ABAA4D7C();
    goto LABEL_27;
  }

  if (!v19)
  {
LABEL_22:
    v63 = sub_1ABA9FA2C(v10, v26, v7, v5);
    sub_1ABB9AE60(v63, v64);
    goto LABEL_25;
  }

  v111 = v23;
  v125 = v20;
  if (v136 != v135 || v8 != v19)
  {
    sub_1ABA894A0();
    v41 = v40;
    v109 = sub_1ABF25054();
    v42 = sub_1ABAA4D7C();
    sub_1ABB9AE60(v42, v43);
    v44 = sub_1ABA826A8();
    sub_1ABB9AE60(v44, v45);
    v46 = sub_1ABAA4D7C();
    sub_1ABB9AE60(v46, v47);
    v48 = sub_1ABA826A8();
    sub_1ABAA8FA8(v48, v49);
    if (v109)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v74 = sub_1ABA9FA2C(v10, v26, v7, v5);
  v41 = v75;
  sub_1ABB9AE60(v74, v76);
  v77 = sub_1ABA826A8();
  sub_1ABB9AE60(v77, v78);
  v79 = sub_1ABAA4D7C();
  sub_1ABB9AE60(v79, v80);
  v81 = sub_1ABA826A8();
LABEL_32:
  sub_1ABAA8FA8(v81, v82);
LABEL_33:
  v50 = v41;

  v22 = v110;
LABEL_34:
  sub_1ABAA8FA8(v50, v6);
  if (!v130)
  {
    v87 = v129;
    if (!v129)
    {
      sub_1ABA96C48();
      sub_1ABBA1F34(v103, v104);
      sub_1ABBA1F34(v125, 0);
      goto LABEL_46;
    }

LABEL_43:
    v93 = sub_1ABA933D0();
    sub_1ABBA1F34(v93, v94);
    sub_1ABBA1F34(v125, v87);
    v95 = sub_1ABA933D0();
    sub_1ABAA8FA8(v95, v96);
    sub_1ABAA8FA8(v125, v87);
    return 0;
  }

  v87 = v129;
  if (!v129)
  {
    goto LABEL_43;
  }

  if (v132 == v111 && v133 == v22)
  {
    v97 = sub_1ABA933D0();
    sub_1ABBA1F34(v97, v98);
    sub_1ABA96C48();
    sub_1ABBA1F34(v99, v100);
    sub_1ABA96C48();
    sub_1ABAA8FA8(v101, v102);
LABEL_46:
    v105 = sub_1ABA933D0();
    sub_1ABAA8FA8(v105, v106);
LABEL_47:
    sub_1ABA88C44(v140);
    memcpy(v141, (v4 + 112), 0x3C9uLL);
    sub_1ABA88C44(v142);
    if (sub_1ABBAE794(v142) == 1)
    {
      memcpy(__dst, (v4 + 112), 0x3C9uLL);
      if (sub_1ABBAE794(__dst) != 1)
      {
        return 0;
      }
    }

    else
    {
      sub_1ABA88C44(v138);
      memcpy(__dst, (v4 + 112), 0x3C9uLL);
      if (sub_1ABBAE794(__dst) == 1 || !static EntityFeatures.== infix(_:_:)(v138, v141))
      {
        return 0;
      }
    }

    if (v123)
    {
      v107 = v124;
      if (v122)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v108 = v122;
      if (v121 != v120)
      {
        v108 = 1;
      }

      v107 = v124;
      if ((v108 & 1) == 0)
      {
LABEL_58:
        if (v11 == v27 && v119 == v128 && (sub_1ABB48494(v107, v127) & 1) != 0 && (sub_1ABB48494(v118, v117) & 1) != 0 && (sub_1ABB48494(v116, v115) & 1) != 0 && (sub_1ABB48494(v114, v113) & 1) != 0)
        {
          if (v126)
          {
            if (v112 && (sub_1ABB499DC(v126, v112) & 1) != 0)
            {
              return 1;
            }
          }

          else if (!v112)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  sub_1ABA7D0F8();
  v137 = sub_1ABF25054();
  v89 = sub_1ABA933D0();
  sub_1ABBA1F34(v89, v90);
  sub_1ABBA1F34(v125, v129);
  sub_1ABAA8FA8(v125, v129);
  v91 = sub_1ABA933D0();
  sub_1ABAA8FA8(v91, v92);
  result = 0;
  if (v137)
  {
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_1ABBBE020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6353656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x75747865746E6F63 && a2 == 0xEF65726F63536C61;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552797469746E65 && a2 == 0xEF65636E6176656CLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4449656372756F73 && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6546797469746E65 && a2 == 0xEE00736572757461;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001FLL && 0x80000001ABF89F90 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x80000001ABF89FB0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001ABF89FD0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73656D616ELL && a2 == 0xE500000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x80000001ABF89FF0 == a2;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x80000001ABF8A010 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x736C69616D65 && a2 == 0xE600000000000000;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7574616546776172 && a2 == 0xEB00000000736572)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1ABF25054();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1ABBBE518(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 0x726F6353656D616ELL;
      break;
    case 3:
      result = 0x75747865746E6F63;
      break;
    case 4:
      result = 0x6552797469746E65;
      break;
    case 5:
      result = 0x4449656372756F73;
      break;
    case 6:
      result = 0x6C43797469746E65;
      break;
    case 7:
      result = 0x6546797469746E65;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x73656D616ELL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x736C69616D65;
      break;
    case 15:
      result = 0x7574616546776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBBE71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBE020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBE744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBBE510();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBBE76C(uint64_t a1)
{
  v2 = sub_1ABBC3E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBE7A8(uint64_t a1)
{
  v2 = sub_1ABBC3E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RerankedEntity.encode(to:)()
{
  sub_1ABA8D110();
  v55 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D42F0, &qword_1ABF42B18);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = *v2;
  v15 = v2[1];
  v14 = v2[2];
  v17 = v2[3];
  v16 = v2[4];
  v18 = v2[5];
  v53 = v2[6];
  v54 = v18;
  v19 = v2[7];
  v51 = v2[8];
  v52 = v19;
  v20 = v2[10];
  v46 = v2[9];
  v47 = v20;
  v21 = v2[12];
  v48 = v2[11];
  v50 = v21;
  v49 = *(v2 + 104);
  v44 = v2[136];
  v45 = *(v2 + 1096);
  v22 = v2[138];
  v43 = *(v2 + 1112);
  v23 = v2[140];
  v41 = v2[141];
  v42 = v23;
  v24 = v2[142];
  v39 = v2[143];
  v40 = v24;
  v38 = v2[144];
  v25 = *(v4 + 24);
  v26 = *(v4 + 32);
  v27 = sub_1ABA8C744();
  sub_1ABA88DCC(v27, v28);
  sub_1ABBC3E00();
  sub_1ABF252E4();
  *v56 = v13;
  v57 = 0;
  sub_1ABAE8BC8();
  sub_1ABAABC88();
  v29 = v55;
  sub_1ABF24F84();
  if (v29)
  {
    (*(v7 + 8))(v12, v5);
  }

  else
  {
    v30 = v52;
    v31 = v53;
    v32 = v54;
    v55 = v7;
    sub_1ABA8A288(1);
    sub_1ABA899E4();
    sub_1ABA8A288(2);
    sub_1ABA899E4();
    sub_1ABA8A288(3);
    sub_1ABA899E4();
    sub_1ABA8A288(4);
    sub_1ABA899E4();
    *v56 = v32;
    *&v56[8] = v31;
    *&v56[16] = v30;
    *&v56[24] = v51;
    v57 = 5;
    sub_1ABB9AE60(v32, v31);
    sub_1ABBC38EC();
    sub_1ABAABC88();
    sub_1ABF24F14();
    v33 = sub_1ABA89074();
    sub_1ABAA8FA8(v33, v34);
    *v56 = v46;
    *&v56[8] = v47;
    *&v56[16] = v48;
    *&v56[24] = v50;
    v56[32] = v49;
    v57 = 6;
    sub_1ABBA1F34(v46, v47);
    sub_1ABA98CE4();
    sub_1ABAABC88();
    sub_1ABF24F14();
    v35 = sub_1ABA89074();
    sub_1ABAA8FA8(v35, v36);
    memcpy(v56, v2 + 14, sizeof(v56));
    v57 = 7;
    sub_1ABBC3E54();
    sub_1ABAABC88();
    sub_1ABF24F14();
    v56[0] = 8;
    sub_1ABF24F24();
    sub_1ABA8A288(9);
    sub_1ABA899E4();
    v56[0] = 10;
    sub_1ABF24F44();
    *v56 = v42;
    v57 = 11;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABBC3EA8();
    sub_1ABA8FFB0();
    *v56 = v41;
    v57 = 12;
    sub_1ABA8FFB0();
    *v56 = v40;
    v57 = 13;
    sub_1ABA8FFB0();
    *v56 = v39;
    v57 = 14;
    sub_1ABA8FFB0();
    *v56 = v38;
    v57 = 15;
    sub_1ABAD219C(&qword_1EB4D1370, &qword_1ABF42B20);
    sub_1ABBC3F24();
    sub_1ABAABC88();
    sub_1ABF24F14();
    (*(v55 + 8))(0, v5);
  }

  sub_1ABA8D258();
}

void RerankedEntity.init(from:)()
{
  sub_1ABA8D110();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D4318, &qword_1ABF42B28);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v2 + 32);
  sub_1ABA88DCC(v2, *(v2 + 24));
  sub_1ABBC3E00();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA8B4C4();
    sub_1ABA84B54(v2);
    if (v4)
    {

      if ((v5 & 1) == 0)
      {
LABEL_9:
        if (!v2)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v5)
    {
      goto LABEL_9;
    }

    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v35 = v4;
  sub_1ABAE8B74();
  sub_1ABA8E1B0();
  sub_1ABF24E64();
  v10 = v49;
  sub_1ABA7D5A8(1);
  sub_1ABF24E34();
  v12 = v11;
  sub_1ABA7D5A8(2);
  sub_1ABF24E34();
  v14 = v13;
  sub_1ABA7D5A8(3);
  sub_1ABF24E34();
  v16 = v15;
  sub_1ABA7D5A8(4);
  sub_1ABF24E34();
  v18 = v17;
  sub_1ABBC3B74();
  sub_1ABA8E1B0();
  sub_1ABF24DF4();
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v47 = v52;
  sub_1ABA9B278();
  sub_1ABA8E1B0();
  sub_1ABF24DF4();
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v39 = v53;
  v78 = 7;
  sub_1ABBA4E68();
  sub_1ABA8FF84();
  sub_1ABF24DF4();
  memcpy(&v81[7], v79, 0x3C9uLL);
  sub_1ABA7D5A8(8);
  v19 = sub_1ABF24E04();
  v80 = v20 & 1;
  sub_1ABA7D5A8(9);
  sub_1ABF24E34();
  v22 = v21;
  sub_1ABA7D5A8(10);
  v34 = sub_1ABF24E24();
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABBC3FA0();
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v38 = v49;
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v37 = v49;
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v36 = v49;
  LOBYTE(v48[0]) = 14;
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v23 = v49;
  sub_1ABAD219C(&qword_1EB4D1370, &qword_1ABF42B20);
  v76 = 15;
  sub_1ABBC401C();
  sub_1ABA8FF84();
  sub_1ABF24DF4();
  v34 &= 1u;
  v24 = sub_1ABA906FC();
  v25(v24);
  v26 = v77;
  v48[0] = v10;
  v48[1] = v12;
  v48[2] = v14;
  v48[3] = v16;
  v48[4] = v18;
  v48[5] = v44;
  v48[6] = v45;
  v48[7] = v46;
  v48[8] = v47;
  v48[9] = v40;
  v48[10] = v41;
  v48[11] = v42;
  v48[12] = v43;
  LOBYTE(v48[13]) = v39;
  memcpy(&v48[13] + 1, v81, 0x3D0uLL);
  sub_1ABA9EE68();
  HIDWORD(v48[135]) = v27;
  v48[136] = v19;
  v33 = v80;
  LOBYTE(v48[137]) = v80;
  sub_1ABA898A0();
  HIDWORD(v48[137]) = v28;
  v48[138] = v22;
  LOBYTE(v48[139]) = v34;
  sub_1ABA9F0A4();
  HIDWORD(v48[139]) = v29;
  v48[140] = v38;
  v48[141] = v37;
  v48[142] = v36;
  v48[143] = v23;
  v48[144] = v26;
  memcpy(v35, v48, 0x488uLL);
  sub_1ABB4F254(v48, &v49);
  sub_1ABA84B54(v2);
  v49 = v10;
  v50 = v12;
  v51 = v14;
  v52 = v16;
  v53 = v18;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v62 = v39;
  memcpy(v63, v81, sizeof(v63));
  sub_1ABA9EE68();
  v64 = v30;
  v65 = v19;
  v66 = v33;
  sub_1ABA898A0();
  v67 = v31;
  v68 = v22;
  v69 = v34;
  sub_1ABA9F0A4();
  v70 = v32;
  v71 = v38;
  v72 = v37;
  v73 = v36;
  v74 = v23;
  v75 = v26;
  sub_1ABB4F2B0(&v49);
LABEL_11:
  sub_1ABA8D258();
}

uint64_t RerankedEntity.description.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[10];
  v23 = v0[11];
  v24 = v0[9];
  v22 = v0[12];
  v11 = *(v0 + 104);
  sub_1ABA88C44(__src);
  v21 = v0[136];
  v25 = *(v0 + 1096);
  v12 = v0[138];
  v13 = *(v0 + 1112);
  sub_1ABA9E0D4();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x696669746E656469, 0xEB000000003A7265);
  v26[0] = v1;
  EntityIdentifier.description.getter();
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0x65726F6373200A20, 0xE90000000000003ALL);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0x53656D616E200A20, 0xED00003A65726F63);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000013);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000013);
  sub_1ABA8D3A8();
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF89E30);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF89E50);
  if (v13)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1AC5A9410](v14, v15);

  v30 = __dst[0];
  v31 = __dst[1];
  if (v7)
  {
    strcpy(v26, "\n source:");
    WORD1(v26[1]) = 0;
    HIDWORD(v26[1]) = -385875968;
    __dst[0] = v6;
    __dst[1] = v7;
    __dst[2] = v8;
    __dst[3] = v9;
    v16 = EntitySourceID.description.getter();
    MEMORY[0x1AC5A9410](v16);

    sub_1ABA8A090();
  }

  if (v10)
  {
    sub_1ABA9E0D4();
    sub_1ABF24AB4();

    strcpy(v26, "\n entityClass:");
    HIBYTE(v26[1]) = -18;
    __dst[0] = v24;
    __dst[1] = v10;
    __dst[2] = v23;
    __dst[3] = v22;
    LOBYTE(__dst[4]) = v11;
    v17 = EntityClass.description.getter();
    MEMORY[0x1AC5A9410](v17);

    sub_1ABA8A090();
  }

  memcpy(__dst, __src, 0x3C9uLL);
  if (sub_1ABBAE794(__dst) != 1)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    MEMORY[0x1AC5A9410](0x727574616566200ALL, 0xEC000000203A7365);
    memcpy(v26, __dst, sizeof(v26));
    sub_1ABF24C54();
    MEMORY[0x1AC5A9410](v27, v28);
  }

  if ((v25 & 1) == 0)
  {
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA8071C();
    v26[0] = 0xD000000000000023;
    v26[1] = v18;
    v27 = v21;
    v19 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v19);

    MEMORY[0x1AC5A9410](41, 0xE100000000000000);
    sub_1ABA8A090();
  }

  return v30;
}

uint64_t static RerankedEntitiesForMention.== infix(_:_:)(uint64_t *__src, void *a2)
{
  memcpy(v9, __src, 0x49uLL);
  v4 = __src[10];
  memcpy(__dst, a2, 0x49uLL);
  v5 = a2[10];
  sub_1ABB3E11C(v9, v12);
  sub_1ABB3E11C(__dst, v12);
  v6 = static Mention.== infix(_:_:)(__src, a2);
  memcpy(v11, a2, 0x49uLL);
  sub_1ABBC3DD0(v11);
  memcpy(v12, __src, 0x49uLL);
  sub_1ABBC3DD0(v12);
  if (v6)
  {
    v7 = sub_1ABB49204(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1ABBBF92C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746E656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABBBF9F4(char a1)
{
  if (a1)
  {
    return 0x7365697469746E65;
  }

  else
  {
    return 0x6E6F69746E656DLL;
  }
}

uint64_t sub_1ABBBFA2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBBFA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBF92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBFAA8(uint64_t a1)
{
  v2 = sub_1ABBC4098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBFAE4(uint64_t a1)
{
  v2 = sub_1ABBC4098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RerankedEntitiesForMention.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D4328, &qword_1ABF42B30);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  memcpy(v17, v0, 0x49uLL);
  v8 = v0[10];
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = sub_1ABAA015C();
  sub_1ABA88DCC(v11, v12);
  sub_1ABB3E11C(v17, v16);
  sub_1ABBC4098();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  memcpy(v16, v17, 0x49uLL);
  sub_1ABBC40EC();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  memcpy(v15, v16, 0x49uLL);
  sub_1ABBC3DD0(v15);
  if (!v1)
  {
    sub_1ABA8E804();
    sub_1ABAD219C(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABBC4140();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v13 = sub_1ABA8862C();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void RerankedEntitiesForMention.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v15 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D4358, &qword_1ABF42B40);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8176C();
  v10 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABBC4098();
  sub_1ABA9F6A4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABBC4218();
    sub_1ABA8AB00();
    sub_1ABF24E64();
    memcpy(v21, v20, 0x49uLL);
    sub_1ABAD219C(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABA8E804();
    sub_1ABBC426C();
    sub_1ABF24E64();
    v11 = *(v6 + 8);
    v12 = sub_1ABA8EF78();
    v13(v12);
    v14 = v19;
    memcpy(v16, v21, 0x50uLL);
    v16[10] = v19;
    memcpy(v15, v16, 0x58uLL);
    sub_1ABBC4344(v16, v17);
    sub_1ABA84B54(v2);
    memcpy(v17, v21, sizeof(v17));
    v18 = v14;
    sub_1ABBC437C(v17);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t RerankedEntitiesForMention.description.getter()
{
  v1 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v1;
  v22[2] = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  *&v22[3] = *(v0 + 48);
  *&v22[4] = v3;
  BYTE8(v22[4]) = *(v0 + 72);
  v4 = *(v0 + 80);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x3A6E6F69746E656DLL, 0xE900000000000020);
  *(&v22[3] + 1) = v2;
  v5 = Mention.description.getter();
  MEMORY[0x1AC5A9410](v5);

  sub_1ABA8CAC4();
  if (v2)
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      *&v22[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v7 = *&v22[0];
      v8 = (v2 + 56);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        *&v22[0] = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);

        if (v12 >= v11 >> 1)
        {
          sub_1ABADDBD4();
          v7 = *&v22[0];
        }

        *(v7 + 16) = v12 + 1;
        v13 = v7 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v8 += 5;
        --v6;
      }

      while (v6);
    }

    *&v22[0] = v7;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    sub_1ABA9EBC4();
    v14 = sub_1ABF23B54();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 4271950;
  }

  MEMORY[0x1AC5A9410](v14, v16);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000017);
  *&v22[0] = *(v4 + 16);
  v17 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v17);

  result = v25;
  v19 = *(v4 + 16);
  if (v19)
  {
    v20 = (v4 + 32);
    do
    {
      memcpy(v22, v20, 0x488uLL);
      v23 = 32;
      v24 = 0xE100000000000000;
      v21 = RerankedEntity.description.getter();
      MEMORY[0x1AC5A9410](v21);

      MEMORY[0x1AC5A9410](v23, v24);

      v20 += 1160;
      --v19;
    }

    while (v19);
    return v25;
  }

  return result;
}

uint64_t sub_1ABBC01BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E6F69746E656DLL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABBC0318(char a1)
{
  result = 0x74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6769666E6F63;
      break;
    case 2:
      result = 0x65736E6F70736572;
      break;
    case 3:
      result = 0x736E6F69746E656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBC03A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC01BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBC03CC(uint64_t a1)
{
  v2 = sub_1ABBC43AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC0408(uint64_t a1)
{
  v2 = sub_1ABBC43AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionSession.encode(to:)()
{
  sub_1ABA7BCA8();
  v20 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D4378, &qword_1ABF42B48);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  memcpy(v26, v0, 0x7BuLL);
  memcpy(v27, v0 + 16, 0x8DuLL);
  v12 = v0[35];
  v19 = v0[34];
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = sub_1ABA894A0();
  sub_1ABA88DCC(v15, v16);
  sub_1ABBC3BC8(v26, v23);
  sub_1ABBC43AC();
  sub_1ABA8177C();
  sub_1ABF252E4();
  memcpy(v25, v26, sizeof(v25));
  sub_1ABBC4400();
  v17 = v20;
  sub_1ABF24F84();
  if (v17)
  {
    memcpy(v23, v25, 0x7BuLL);
    sub_1ABBC3C00(v23);
  }

  else
  {
    v18 = v19;
    memcpy(v24, v25, 0x7BuLL);
    sub_1ABBC3C00(v24);
    memcpy(v23, v27, 0x8DuLL);
    sub_1ABA8E804();
    sub_1ABBA9514(v27, v22);
    sub_1ABBC4454();
    sub_1ABF24F84();
    memcpy(v22, v23, 0x8DuLL);
    sub_1ABBA954C(v22);
    v21 = v18;
    sub_1ABAD219C(&qword_1EB4D4398, &qword_1ABF42B50);
    sub_1ABBC44A8();
    sub_1ABA8BC88();
    v21 = v12;
    sub_1ABAD219C(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC4580();
    sub_1ABA8BC88();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

void EntityResolutionSession.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v13 = sub_1ABAD219C(&qword_1EB4D43C0, &qword_1ABF42B60);
  sub_1ABA7BB64(v13);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8176C();
  v8 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABBC43AC();
  sub_1ABA9F6A4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABBC4604();
    sub_1ABA8AB00();
    sub_1ABF24E64();
    memcpy(v19, v18, 0x7BuLL);
    sub_1ABA8E804();
    sub_1ABBAA574();
    sub_1ABA8AB00();
    sub_1ABF24E64();
    memcpy(&v19[128], v17, 0x8DuLL);
    sub_1ABAD219C(&qword_1EB4D4398, &qword_1ABF42B50);
    LOBYTE(v14[0]) = 2;
    sub_1ABBC4658();
    sub_1ABA892F4();
    sub_1ABF24E64();
    v9 = v15[0];
    sub_1ABAD219C(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC4730();
    sub_1ABA892F4();
    sub_1ABF24E64();
    v10 = sub_1ABA9F1EC();
    v11(v10, v13);
    v12 = v16;
    memcpy(v14, v19, 0x110uLL);
    v14[34] = v9;
    v14[35] = v16;
    memcpy(v4, v14, 0x120uLL);
    sub_1ABBC47B4(v14, v15);
    sub_1ABA84B54(v2);
    memcpy(v15, v19, 0x110uLL);
    v15[34] = v9;
    v15[35] = v12;
    sub_1ABBC47EC(v15);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}