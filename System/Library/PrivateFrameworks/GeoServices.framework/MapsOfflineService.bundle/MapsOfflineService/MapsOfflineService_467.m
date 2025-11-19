char *sub_18EDFA8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
    *v4 = 10;
    v8 = *(v7 + 48);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_186D438(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 18;
  v11 = *(v10 + 44);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_18A42F0(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 72);
  *v4 = 26;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_18A3558(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 80);
  *v4 = 34;
  v17 = *(v16 + 44);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_18A6C0C(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 88);
  *v4 = 42;
  v20 = *(v19 + 44);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_18A7DE0(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 96);
  *v4 = 50;
  v23 = *(v22 + 20);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_18B4030(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 104);
  *v4 = 58;
  v26 = *(v25 + 20);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_18AD660(v25, v27, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_82;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 112);
  *v4 = 66;
  v29 = *(v28 + 20);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_18BBCAC(v28, v30, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_88;
  }

LABEL_82:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v31 = *(a1 + 120);
  *v4 = 74;
  v32 = *(v31 + 44);
  v4[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v4 + 1);
  }

  else
  {
    v33 = v4 + 2;
  }

  v4 = sub_18BE450(v31, v33, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v34 = *(a1 + 128);
  *v4 = 82;
  v35 = *(v34 + 44);
  v4[1] = v35;
  if (v35 > 0x7F)
  {
    v36 = sub_19575D0(v35, v4 + 1);
  }

  else
  {
    v36 = v4 + 2;
  }

  v4 = sub_18D5C20(v34, v36, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v37 = *(a1 + 136);
  *v4 = 90;
  v38 = *(v37 + 20);
  v4[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v4 + 1);
  }

  else
  {
    v39 = v4 + 2;
  }

  v4 = sub_1876680(v37, v39, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v40 = *(a1 + 144);
  *v4 = 98;
  v41 = *(v40 + 20);
  v4[1] = v41;
  if (v41 > 0x7F)
  {
    v42 = sub_19575D0(v41, v4 + 1);
  }

  else
  {
    v42 = v4 + 2;
  }

  v4 = sub_189A35C(v40, v42, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_112;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v43 = *(a1 + 152);
  *v4 = 106;
  v44 = *(v43 + 20);
  v4[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v4 + 1);
  }

  else
  {
    v45 = v4 + 2;
  }

  v4 = sub_189F454(v43, v45, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_118;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v46 = *(a1 + 160);
  *v4 = 114;
  v47 = *(v46 + 20);
  v4[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v4 + 1);
  }

  else
  {
    v48 = v4 + 2;
  }

  v4 = sub_1895C10(v46, v48, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_118:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v49 = *(a1 + 168);
  *v4 = 122;
  v50 = *(v49 + 20);
  v4[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v4 + 1);
  }

  else
  {
    v51 = v4 + 2;
  }

  v4 = sub_18A26EC(v49, v51, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_130;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v52 = *(a1 + 176);
  *v4 = 386;
  v53 = *(v52 + 20);
  v4[2] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v4 + 2);
  }

  else
  {
    v54 = v4 + 3;
  }

  v4 = sub_18A07F4(v52, v54, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_136;
  }

LABEL_130:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v55 = *(a1 + 184);
  *v4 = 394;
  v56 = *(v55 + 20);
  v4[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v4 + 2);
  }

  else
  {
    v57 = v4 + 3;
  }

  v4 = sub_18B1DC4(v55, v57, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_142;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v58 = *(a1 + 192);
  *v4 = 402;
  v59 = *(v58 + 20);
  v4[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v4 + 2);
  }

  else
  {
    v60 = v4 + 3;
  }

  v4 = sub_18C0660(v58, v60, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_148;
  }

LABEL_142:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v61 = *(a1 + 200);
  *v4 = 410;
  v62 = *(v61 + 44);
  v4[2] = v62;
  if (v62 > 0x7F)
  {
    v63 = sub_19575D0(v62, v4 + 2);
  }

  else
  {
    v63 = v4 + 3;
  }

  v4 = sub_18A58F4(v61, v63, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_154;
  }

LABEL_148:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v64 = *(a1 + 208);
  *v4 = 418;
  v65 = *(v64 + 20);
  v4[2] = v65;
  if (v65 > 0x7F)
  {
    v66 = sub_19575D0(v65, v4 + 2);
  }

  else
  {
    v66 = v4 + 3;
  }

  v4 = sub_1897690(v64, v66, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_160;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v67 = *(a1 + 216);
  *v4 = 426;
  v68 = *(v67 + 20);
  v4[2] = v68;
  if (v68 > 0x7F)
  {
    v69 = sub_19575D0(v68, v4 + 2);
  }

  else
  {
    v69 = v4 + 3;
  }

  v4 = sub_18B92D4(v67, v69, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_166;
  }

LABEL_160:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v70 = *(a1 + 224);
  *v4 = 434;
  v71 = *(v70 + 44);
  v4[2] = v71;
  if (v71 > 0x7F)
  {
    v72 = sub_19575D0(v71, v4 + 2);
  }

  else
  {
    v72 = v4 + 3;
  }

  v4 = sub_18C17A0(v70, v72, a3);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_172;
  }

LABEL_166:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v73 = *(a1 + 232);
  *v4 = 442;
  v74 = *(v73 + 44);
  v4[2] = v74;
  if (v74 > 0x7F)
  {
    v75 = sub_19575D0(v74, v4 + 2);
  }

  else
  {
    v75 = v4 + 3;
  }

  v4 = sub_18A9D74(v73, v75, a3);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_178;
  }

LABEL_172:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v76 = *(a1 + 240);
  *v4 = 450;
  v77 = *(v76 + 20);
  v4[2] = v77;
  if (v77 > 0x7F)
  {
    v78 = sub_19575D0(v77, v4 + 2);
  }

  else
  {
    v78 = v4 + 3;
  }

  v4 = sub_18C2780(v76, v78, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_184;
  }

LABEL_178:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v79 = *(a1 + 248);
  *v4 = 458;
  v80 = *(v79 + 56);
  v4[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v4 + 2);
  }

  else
  {
    v81 = v4 + 3;
  }

  v4 = sub_18D735C(v79, v81, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_190;
  }

LABEL_184:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v82 = *(a1 + 256);
  *v4 = 466;
  v83 = *(v82 + 64);
  v4[2] = v83;
  if (v83 > 0x7F)
  {
    v84 = sub_19575D0(v83, v4 + 2);
  }

  else
  {
    v84 = v4 + 3;
  }

  v4 = sub_18D7F30(v82, v84, a3);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_196;
  }

LABEL_190:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v85 = *(a1 + 264);
  *v4 = 482;
  v86 = *(v85 + 88);
  v4[2] = v86;
  if (v86 > 0x7F)
  {
    v87 = sub_19575D0(v86, v4 + 2);
  }

  else
  {
    v87 = v4 + 3;
  }

  v4 = sub_18C34F0(v85, v87, a3);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_202;
  }

LABEL_196:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v88 = *(a1 + 272);
  *v4 = 490;
  v89 = *(v88 + 20);
  v4[2] = v89;
  if (v89 > 0x7F)
  {
    v90 = sub_19575D0(v89, v4 + 2);
  }

  else
  {
    v90 = v4 + 3;
  }

  v4 = sub_18C4130(v88, v90, a3);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_208;
  }

LABEL_202:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v91 = *(a1 + 280);
  *v4 = 498;
  v92 = *(v91 + 20);
  v4[2] = v92;
  if (v92 > 0x7F)
  {
    v93 = sub_19575D0(v92, v4 + 2);
  }

  else
  {
    v93 = v4 + 3;
  }

  v4 = sub_18D88E8(v91, v93, a3);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_214;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v94 = *(a1 + 288);
  *v4 = 506;
  v95 = *(v94 + 40);
  v4[2] = v95;
  if (v95 > 0x7F)
  {
    v96 = sub_19575D0(v95, v4 + 2);
  }

  else
  {
    v96 = v4 + 3;
  }

  v4 = sub_18C4F24(v94, v96, a3);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_220;
  }

LABEL_214:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v97 = *(a1 + 296);
  *v4 = 642;
  v98 = *(v97 + 20);
  v4[2] = v98;
  if (v98 > 0x7F)
  {
    v99 = sub_19575D0(v98, v4 + 2);
  }

  else
  {
    v99 = v4 + 3;
  }

  v4 = sub_18DE004(v97, v99, a3);
  if (v6 < 0)
  {
LABEL_220:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v100 = *(a1 + 304);
    *v4 = 650;
    v101 = *(v100 + 20);
    v4[2] = v101;
    if (v101 > 0x7F)
    {
      v102 = sub_19575D0(v101, v4 + 2);
    }

    else
    {
      v102 = v4 + 3;
    }

    v4 = sub_18DE9EC(v100, v102, a3);
  }

LABEL_226:
  v103 = *(a1 + 44);
  if (v103)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v104 = *(a1 + 312);
    *v4 = 658;
    v105 = *(v104 + 20);
    v4[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v4 + 2);
    }

    else
    {
      v106 = v4 + 3;
    }

    v4 = sub_18DF1DC(v104, v106, a3);
    if ((v103 & 2) == 0)
    {
LABEL_228:
      if ((v103 & 4) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_270;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_228;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v107 = *(a1 + 320);
  *v4 = 666;
  v108 = *(v107 + 20);
  v4[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v4 + 2);
  }

  else
  {
    v109 = v4 + 3;
  }

  v4 = sub_18E0354(v107, v109, a3);
  if ((v103 & 4) == 0)
  {
LABEL_229:
    if ((v103 & 8) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_276;
  }

LABEL_270:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v110 = *(a1 + 328);
  *v4 = 674;
  v111 = *(v110 + 64);
  v4[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v4 + 2);
  }

  else
  {
    v112 = v4 + 3;
  }

  v4 = sub_18E0E38(v110, v112, a3);
  if ((v103 & 8) == 0)
  {
LABEL_230:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_282;
  }

LABEL_276:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v113 = *(a1 + 336);
  *v4 = 682;
  v114 = *(v113 + 32);
  v4[2] = v114;
  if (v114 > 0x7F)
  {
    v115 = sub_19575D0(v114, v4 + 2);
  }

  else
  {
    v115 = v4 + 3;
  }

  v4 = sub_18E32F4(v113, v115, a3);
  if ((v103 & 0x10) == 0)
  {
LABEL_231:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_288;
  }

LABEL_282:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v116 = *(a1 + 344);
  *v4 = 690;
  v117 = *(v116 + 20);
  v4[2] = v117;
  if (v117 > 0x7F)
  {
    v118 = sub_19575D0(v117, v4 + 2);
  }

  else
  {
    v118 = v4 + 3;
  }

  v4 = sub_18E39A8(v116, v118, a3);
  if ((v103 & 0x20) == 0)
  {
LABEL_232:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_294;
  }

LABEL_288:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v119 = *(a1 + 352);
  *v4 = 698;
  v120 = *(v119 + 44);
  v4[2] = v120;
  if (v120 > 0x7F)
  {
    v121 = sub_19575D0(v120, v4 + 2);
  }

  else
  {
    v121 = v4 + 3;
  }

  v4 = sub_1418878(v119, v121, a3);
  if ((v103 & 0x40) == 0)
  {
LABEL_233:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_300;
  }

LABEL_294:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v122 = *(a1 + 360);
  *v4 = 706;
  v123 = *(v122 + 40);
  v4[2] = v123;
  if (v123 > 0x7F)
  {
    v124 = sub_19575D0(v123, v4 + 2);
  }

  else
  {
    v124 = v4 + 3;
  }

  v4 = sub_18E4198(v122, v124, a3);
  if ((v103 & 0x80) == 0)
  {
LABEL_234:
    if ((v103 & 0x100) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_306;
  }

LABEL_300:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v125 = *(a1 + 368);
  *v4 = 714;
  v126 = *(v125 + 40);
  v4[2] = v126;
  if (v126 > 0x7F)
  {
    v127 = sub_19575D0(v126, v4 + 2);
  }

  else
  {
    v127 = v4 + 3;
  }

  v4 = sub_18D9078(v125, v127, a3);
  if ((v103 & 0x100) == 0)
  {
LABEL_235:
    if ((v103 & 0x200) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_312;
  }

LABEL_306:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v128 = *(a1 + 376);
  *v4 = 722;
  v129 = *(v128 + 20);
  v4[2] = v129;
  if (v129 > 0x7F)
  {
    v130 = sub_19575D0(v129, v4 + 2);
  }

  else
  {
    v130 = v4 + 3;
  }

  v4 = sub_18DC354(v128, v130, a3);
  if ((v103 & 0x200) == 0)
  {
LABEL_236:
    if ((v103 & 0x400) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_318;
  }

LABEL_312:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v131 = *(a1 + 384);
  *v4 = 730;
  v132 = *(v131 + 20);
  v4[2] = v132;
  if (v132 > 0x7F)
  {
    v133 = sub_19575D0(v132, v4 + 2);
  }

  else
  {
    v133 = v4 + 3;
  }

  v4 = sub_18782C0(v131, v133, a3);
  if ((v103 & 0x400) == 0)
  {
LABEL_237:
    if ((v103 & 0x800) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_324;
  }

LABEL_318:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v134 = *(a1 + 392);
  *v4 = 738;
  v135 = *(v134 + 20);
  v4[2] = v135;
  if (v135 > 0x7F)
  {
    v136 = sub_19575D0(v135, v4 + 2);
  }

  else
  {
    v136 = v4 + 3;
  }

  v4 = sub_1881DF0(v134, v136, a3);
  if ((v103 & 0x800) == 0)
  {
LABEL_238:
    if ((v103 & 0x1000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_330;
  }

LABEL_324:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v137 = *(a1 + 400);
  *v4 = 746;
  v138 = *(v137 + 40);
  v4[2] = v138;
  if (v138 > 0x7F)
  {
    v139 = sub_19575D0(v138, v4 + 2);
  }

  else
  {
    v139 = v4 + 3;
  }

  v4 = sub_174AF48(v137, v139, a3);
  if ((v103 & 0x1000) == 0)
  {
LABEL_239:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_336;
  }

LABEL_330:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v140 = *(a1 + 408);
  *v4 = 754;
  v141 = *(v140 + 20);
  v4[2] = v141;
  if (v141 > 0x7F)
  {
    v142 = sub_19575D0(v141, v4 + 2);
  }

  else
  {
    v142 = v4 + 3;
  }

  v4 = sub_187F1B0(v140, v142, a3);
  if ((v103 & 0x2000) == 0)
  {
LABEL_240:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_342;
  }

LABEL_336:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v143 = *(a1 + 416);
  *v4 = 762;
  v144 = *(v143 + 20);
  v4[2] = v144;
  if (v144 > 0x7F)
  {
    v145 = sub_19575D0(v144, v4 + 2);
  }

  else
  {
    v145 = v4 + 3;
  }

  v4 = sub_187C608(v143, v145, a3);
  if ((v103 & 0x4000) == 0)
  {
LABEL_241:
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_348;
  }

LABEL_342:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v146 = *(a1 + 424);
  *v4 = 898;
  v147 = *(v146 + 20);
  v4[2] = v147;
  if (v147 > 0x7F)
  {
    v148 = sub_19575D0(v147, v4 + 2);
  }

  else
  {
    v148 = v4 + 3;
  }

  v4 = sub_18AEA2C(v146, v148, a3);
  if ((v103 & 0x8000) == 0)
  {
LABEL_242:
    if ((v103 & 0x10000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_354;
  }

LABEL_348:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v149 = *(a1 + 432);
  *v4 = 906;
  v150 = *(v149 + 40);
  v4[2] = v150;
  if (v150 > 0x7F)
  {
    v151 = sub_19575D0(v150, v4 + 2);
  }

  else
  {
    v151 = v4 + 3;
  }

  v4 = sub_18AF478(v149, v151, a3);
  if ((v103 & 0x10000) == 0)
  {
LABEL_243:
    if ((v103 & 0x20000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_360;
  }

LABEL_354:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v152 = *(a1 + 440);
  *v4 = 914;
  v153 = *(v152 + 20);
  v4[2] = v153;
  if (v153 > 0x7F)
  {
    v154 = sub_19575D0(v153, v4 + 2);
  }

  else
  {
    v154 = v4 + 3;
  }

  v4 = sub_18E6F2C(v152, v154, a3);
  if ((v103 & 0x20000) == 0)
  {
LABEL_244:
    if ((v103 & 0x40000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_366;
  }

LABEL_360:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v155 = *(a1 + 448);
  *v4 = 922;
  v156 = *(v155 + 20);
  v4[2] = v156;
  if (v156 > 0x7F)
  {
    v157 = sub_19575D0(v156, v4 + 2);
  }

  else
  {
    v157 = v4 + 3;
  }

  v4 = sub_188AC00(v155, v157, a3);
  if ((v103 & 0x40000) == 0)
  {
LABEL_245:
    if ((v103 & 0x80000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_372;
  }

LABEL_366:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v158 = *(a1 + 456);
  *v4 = 930;
  v159 = *(v158 + 20);
  v4[2] = v159;
  if (v159 > 0x7F)
  {
    v160 = sub_19575D0(v159, v4 + 2);
  }

  else
  {
    v160 = v4 + 3;
  }

  v4 = sub_1884240(v158, v160, a3);
  if ((v103 & 0x80000) == 0)
  {
LABEL_246:
    if ((v103 & 0x100000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_378;
  }

LABEL_372:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v161 = *(a1 + 464);
  *v4 = 938;
  v162 = *(v161 + 20);
  v4[2] = v162;
  if (v162 > 0x7F)
  {
    v163 = sub_19575D0(v162, v4 + 2);
  }

  else
  {
    v163 = v4 + 3;
  }

  v4 = sub_1887600(v161, v163, a3);
  if ((v103 & 0x100000) == 0)
  {
LABEL_247:
    if ((v103 & 0x200000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_384;
  }

LABEL_378:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v164 = *(a1 + 472);
  *v4 = 946;
  v165 = *(v164 + 20);
  v4[2] = v165;
  if (v165 > 0x7F)
  {
    v166 = sub_19575D0(v165, v4 + 2);
  }

  else
  {
    v166 = v4 + 3;
  }

  v4 = sub_18B0338(v164, v166, a3);
  if ((v103 & 0x200000) == 0)
  {
LABEL_248:
    if ((v103 & 0x400000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_390;
  }

LABEL_384:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v167 = *(a1 + 480);
  *v4 = 954;
  v168 = *(v167 + 20);
  v4[2] = v168;
  if (v168 > 0x7F)
  {
    v169 = sub_19575D0(v168, v4 + 2);
  }

  else
  {
    v169 = v4 + 3;
  }

  v4 = sub_188D8D8(v167, v169, a3);
  if ((v103 & 0x400000) == 0)
  {
LABEL_249:
    if ((v103 & 0x800000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_396;
  }

LABEL_390:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v170 = *(a1 + 488);
  *v4 = 962;
  v171 = *(v170 + 64);
  v4[2] = v171;
  if (v171 > 0x7F)
  {
    v172 = sub_19575D0(v171, v4 + 2);
  }

  else
  {
    v172 = v4 + 3;
  }

  v4 = sub_18A91B0(v170, v172, a3);
  if ((v103 & 0x800000) == 0)
  {
LABEL_250:
    if ((v103 & 0x1000000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_402;
  }

LABEL_396:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v173 = *(a1 + 496);
  *v4 = 970;
  v174 = *(v173 + 40);
  v4[2] = v174;
  if (v174 > 0x7F)
  {
    v175 = sub_19575D0(v174, v4 + 2);
  }

  else
  {
    v175 = v4 + 3;
  }

  v4 = sub_18E7C5C(v173, v175, a3);
  if ((v103 & 0x1000000) == 0)
  {
LABEL_251:
    if ((v103 & 0x2000000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_408;
  }

LABEL_402:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v176 = *(a1 + 504);
  *v4 = 978;
  v177 = *(v176 + 20);
  v4[2] = v177;
  if (v177 > 0x7F)
  {
    v178 = sub_19575D0(v177, v4 + 2);
  }

  else
  {
    v178 = v4 + 3;
  }

  v4 = sub_18E890C(v176, v178, a3);
  if ((v103 & 0x2000000) == 0)
  {
LABEL_252:
    if ((v103 & 0x4000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_414;
  }

LABEL_408:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v179 = *(a1 + 512);
  *v4 = 986;
  v180 = *(v179 + 20);
  v4[2] = v180;
  if (v180 > 0x7F)
  {
    v181 = sub_19575D0(v180, v4 + 2);
  }

  else
  {
    v181 = v4 + 3;
  }

  v4 = sub_18E9354(v179, v181, a3);
  if ((v103 & 0x4000000) == 0)
  {
LABEL_253:
    if ((v103 & 0x8000000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_420;
  }

LABEL_414:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v182 = *(a1 + 520);
  *v4 = 994;
  v183 = *(v182 + 20);
  v4[2] = v183;
  if (v183 > 0x7F)
  {
    v184 = sub_19575D0(v183, v4 + 2);
  }

  else
  {
    v184 = v4 + 3;
  }

  v4 = sub_18E4834(v182, v184, a3);
  if ((v103 & 0x8000000) == 0)
  {
LABEL_254:
    if ((v103 & 0x10000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_426;
  }

LABEL_420:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v185 = *(a1 + 528);
  *v4 = 1002;
  v186 = *(v185 + 64);
  v4[2] = v186;
  if (v186 > 0x7F)
  {
    v187 = sub_19575D0(v186, v4 + 2);
  }

  else
  {
    v187 = v4 + 3;
  }

  v4 = sub_18A87F0(v185, v187, a3);
  if ((v103 & 0x10000000) == 0)
  {
LABEL_255:
    if ((v103 & 0x20000000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_432;
  }

LABEL_426:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v188 = *(a1 + 536);
  *v4 = 1010;
  v189 = *(v188 + 44);
  v4[2] = v189;
  if (v189 > 0x7F)
  {
    v190 = sub_19575D0(v189, v4 + 2);
  }

  else
  {
    v190 = v4 + 3;
  }

  v4 = sub_18EA12C(v188, v190, a3);
  if ((v103 & 0x20000000) == 0)
  {
LABEL_256:
    if ((v103 & 0x40000000) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_438;
  }

LABEL_432:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v191 = *(a1 + 544);
  *v4 = 1018;
  v192 = *(v191 + 20);
  v4[2] = v192;
  if (v192 > 0x7F)
  {
    v193 = sub_19575D0(v192, v4 + 2);
  }

  else
  {
    v193 = v4 + 3;
  }

  v4 = sub_18AABCC(v191, v193, a3);
  if ((v103 & 0x40000000) != 0)
  {
LABEL_438:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v194 = *(a1 + 552);
    *v4 = 1154;
    v195 = *(v194 + 20);
    v4[2] = v195;
    if (v195 > 0x7F)
    {
      v196 = sub_19575D0(v195, v4 + 2);
    }

    else
    {
      v196 = v4 + 3;
    }

    v4 = sub_18ABB8C(v194, v196, a3);
  }

LABEL_444:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 1050, v4, a3);
  }

  v197 = *(a1 + 8);
  if ((v197 & 1) == 0)
  {
    return v4;
  }

  v199 = v197 & 0xFFFFFFFFFFFFFFFCLL;
  v200 = *(v199 + 31);
  if (v200 < 0)
  {
    v201 = *(v199 + 8);
    v200 = *(v199 + 16);
  }

  else
  {
    v201 = (v199 + 8);
  }

  if ((*a3 - v4) >= v200)
  {
    v202 = v200;
    memcpy(v4, v201, v200);
    v4 += v202;
    return v4;
  }

  return sub_1957130(a3, v201, v200, v4);
}

uint64_t sub_18EFA1C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v14 = sub_186E5B8(*(a1 + 56));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v15 = sub_18A4684(*(a1 + 64));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_84;
  }

LABEL_83:
  v16 = sub_18A3620(*(a1 + 72));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_85;
  }

LABEL_84:
  v17 = sub_18A6EB8(*(a1 + 80));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_86:
    v19 = sub_18B4748(*(a1 + 96));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_87;
  }

LABEL_85:
  v18 = sub_18A8088(*(a1 + 88));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_86;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_87:
  v20 = sub_18ADB80(*(a1 + 104));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = sub_18BC1E8(*(a1 + 112));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    v21 = sub_18BE91C(*(a1 + 120));
    v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_91;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v22 = sub_18D63E0(*(a1 + 128));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_92;
  }

LABEL_91:
  v23 = sub_1876CD4(*(a1 + 136));
  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_93;
  }

LABEL_92:
  v24 = sub_189B028(*(a1 + 144));
  v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_94;
  }

LABEL_93:
  v25 = sub_189F68C(*(a1 + 152));
  v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_95;
  }

LABEL_94:
  v26 = sub_1895F0C(*(a1 + 160));
  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_95:
  v27 = sub_18A28B0(*(a1 + 168));
  v2 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    v5 = sub_18A09FC(*(a1 + 176));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    v28 = sub_18B227C(*(a1 + 184));
    v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_99;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  v29 = sub_18C08E4(*(a1 + 192));
  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_99:
  v30 = sub_18A5AC8(*(a1 + 200));
  v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_101;
  }

LABEL_100:
  v31 = sub_189794C(*(a1 + 208));
  v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_102;
  }

LABEL_101:
  v32 = sub_18B9488(*(a1 + 216));
  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_103;
  }

LABEL_102:
  v33 = sub_18C1A8C(*(a1 + 224));
  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_103:
  v34 = sub_18A9F94(*(a1 + 232));
  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    v6 = sub_18C29A8(*(a1 + 240));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v62 = sub_18D7538(*(a1 + 248));
    v2 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_138;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  v63 = sub_18D80F4(*(a1 + 256));
  v2 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_139;
  }

LABEL_138:
  v64 = sub_18C3738(*(a1 + 264));
  v2 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_140;
  }

LABEL_139:
  v65 = sub_18C42F0(*(a1 + 272));
  v2 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_141;
  }

LABEL_140:
  v66 = sub_18D89B0(*(a1 + 280));
  v2 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_142:
    v68 = sub_18DE1C4(*(a1 + 296));
    v2 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_143;
  }

LABEL_141:
  v67 = sub_18C5064(*(a1 + 288));
  v2 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_142;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_143:
  v69 = sub_18DEAF8(*(a1 + 304));
  v2 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_40:
  v7 = *(a1 + 44);
  if (!v7)
  {
    goto LABEL_50;
  }

  if (v7)
  {
    v35 = sub_18DF2A4(*(a1 + 312));
    v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 2) == 0)
    {
LABEL_43:
      if ((v7 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_107;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_43;
  }

  v36 = sub_18E04E0(*(a1 + 320));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 4) == 0)
  {
LABEL_44:
    if ((v7 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_108;
  }

LABEL_107:
  v37 = sub_18E0FFC(*(a1 + 328));
  v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 8) == 0)
  {
LABEL_45:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_109;
  }

LABEL_108:
  v38 = sub_18E3444(*(a1 + 336));
  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10) == 0)
  {
LABEL_46:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_110;
  }

LABEL_109:
  v39 = sub_18E3B50(*(a1 + 344));
  v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20) == 0)
  {
LABEL_47:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_111;
  }

LABEL_110:
  v40 = sub_1418B70(*(a1 + 352));
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40) == 0)
  {
LABEL_48:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_111:
  v41 = sub_18E42D8(*(a1 + 360));
  v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80) != 0)
  {
LABEL_49:
    v8 = sub_18D91B8(*(a1 + 368));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_50:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v7 & 0x100) != 0)
  {
    v42 = sub_18DC4A0(*(a1 + 376));
    v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x200) == 0)
    {
LABEL_53:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_115;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v43 = sub_18785BC(*(a1 + 384));
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x400) == 0)
  {
LABEL_54:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_116;
  }

LABEL_115:
  v44 = sub_18821B4(*(a1 + 392));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x800) == 0)
  {
LABEL_55:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_117;
  }

LABEL_116:
  v45 = sub_174B088(*(a1 + 400));
  v2 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x1000) == 0)
  {
LABEL_56:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_118;
  }

LABEL_117:
  v46 = sub_187F410(*(a1 + 408));
  v2 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x2000) == 0)
  {
LABEL_57:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_119;
  }

LABEL_118:
  v47 = sub_187C868(*(a1 + 416));
  v2 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x4000) == 0)
  {
LABEL_58:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_119:
  v48 = sub_18AEC68(*(a1 + 424));
  v2 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x8000) != 0)
  {
LABEL_59:
    v9 = sub_18AF5B8(*(a1 + 432));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_60:
  if ((v7 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v7 & 0x10000) != 0)
  {
    v49 = sub_18E70D4(*(a1 + 440));
    v2 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x20000) == 0)
    {
LABEL_63:
      if ((v7 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_123;
    }
  }

  else if ((v7 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  v50 = sub_188AD50(*(a1 + 448));
  v2 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40000) == 0)
  {
LABEL_64:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_124;
  }

LABEL_123:
  v51 = sub_18843CC(*(a1 + 456));
  v2 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80000) == 0)
  {
LABEL_65:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_125;
  }

LABEL_124:
  v52 = sub_188799C(*(a1 + 464));
  v2 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x100000) == 0)
  {
LABEL_66:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_126;
  }

LABEL_125:
  v53 = sub_18B0764(*(a1 + 472));
  v2 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x200000) == 0)
  {
LABEL_67:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_127;
  }

LABEL_126:
  v54 = sub_188DBE4(*(a1 + 480));
  v2 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x400000) == 0)
  {
LABEL_68:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_127:
  v55 = sub_18A9314(*(a1 + 488));
  v2 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x800000) != 0)
  {
LABEL_69:
    v10 = sub_18E7D9C(*(a1 + 496));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_70:
  if ((v7 & 0x7F000000) == 0)
  {
    goto LABEL_79;
  }

  if ((v7 & 0x1000000) != 0)
  {
    v56 = sub_18E8AEC(*(a1 + 504));
    v2 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_131;
    }
  }

  else if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  v57 = sub_18E9460(*(a1 + 512));
  v2 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_132;
  }

LABEL_131:
  v58 = sub_18E4940(*(a1 + 520));
  v2 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_133;
  }

LABEL_132:
  v59 = sub_18A8954(*(a1 + 528));
  v2 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_134;
  }

LABEL_133:
  v60 = sub_18EA27C(*(a1 + 536));
  v2 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_134:
  v61 = sub_18AAE48(*(a1 + 544));
  v2 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40000000) != 0)
  {
LABEL_78:
    v11 = sub_18ABDF8(*(a1 + 552));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_79:
  v12 = *(a1 + 8);
  if (v12)
  {
    v70 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v71 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v71 < 0)
    {
      v71 = *(v70 + 16);
    }

    v2 += v71;
  }

  *(a1 + 48) = v2;
  return v2;
}

void sub_18F0790(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 56);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_18FF57C(v7);
      *(a1 + 56) = v5;
    }

    if (*(a2 + 56))
    {
      v8 = *(a2 + 56);
    }

    else
    {
      v8 = &off_2787CC0;
    }

    sub_186EEB8(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 40) |= 2u;
  v9 = *(a1 + 64);
  if (!v9)
  {
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_1901FAC(v11);
    *(a1 + 64) = v9;
  }

  if (*(a2 + 64))
  {
    v12 = *(a2 + 64);
  }

  else
  {
    v12 = &off_2789120;
  }

  sub_18A4848(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 40) |= 4u;
  v13 = *(a1 + 72);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_1901EB0(v15);
    *(a1 + 72) = v13;
  }

  if (*(a2 + 72))
  {
    v16 = *(a2 + 72);
  }

  else
  {
    v16 = &off_27890E8;
  }

  sub_132DE2C(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 40) |= 8u;
  v17 = *(a1 + 80);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_190211C(v19);
    *(a1 + 80) = v17;
  }

  if (*(a2 + 80))
  {
    v20 = *(a2 + 80);
  }

  else
  {
    v20 = &off_2789258;
  }

  sub_18A6FFC(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
  *(a1 + 40) |= 0x10u;
  v21 = *(a1 + 88);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_19021D4(v23);
    *(a1 + 88) = v21;
  }

  if (*(a2 + 88))
  {
    v24 = *(a2 + 88);
  }

  else
  {
    v24 = &off_27892F0;
  }

  sub_18A8178(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
  *(a1 + 40) |= 0x20u;
  v25 = *(a1 + 96);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_1902CA0(v27);
    *(a1 + 96) = v25;
  }

  if (*(a2 + 96))
  {
    v28 = *(a2 + 96);
  }

  else
  {
    v28 = &off_2789790;
  }

  sub_18B4BCC(v25, v28);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 40) |= 0x40u;
  v29 = *(a1 + 104);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_19026F8(v31);
    *(a1 + 104) = v29;
  }

  if (*(a2 + 104))
  {
    v32 = *(a2 + 104);
  }

  else
  {
    v32 = &off_2789548;
  }

  sub_18ADE4C(v29, v32);
  if ((v4 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 40) |= 0x80u;
    v33 = *(a1 + 112);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      sub_1903364(v35);
      *(a1 + 112) = v33;
    }

    if (*(a2 + 112))
    {
      v36 = *(a2 + 112);
    }

    else
    {
      v36 = &off_2789A88;
    }

    sub_18BC4D8(v33, v36);
  }

LABEL_75:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v37 = *(a1 + 120);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_1903554(v39);
      *(a1 + 120) = v37;
    }

    if (*(a2 + 120))
    {
      v40 = *(a2 + 120);
    }

    else
    {
      v40 = &off_2789B88;
    }

    sub_18BEB80(v37, v40);
    if ((v4 & 0x200) == 0)
    {
LABEL_78:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 40) |= 0x200u;
  v41 = *(a1 + 128);
  if (!v41)
  {
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    v41 = sub_190471C(v43);
    *(a1 + 128) = v41;
  }

  if (*(a2 + 128))
  {
    v44 = *(a2 + 128);
  }

  else
  {
    v44 = &off_278A328;
  }

  sub_18D67A0(v41, v44);
  if ((v4 & 0x400) == 0)
  {
LABEL_79:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 40) |= 0x400u;
  v45 = *(a1 + 136);
  if (!v45)
  {
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_18FF844(v47);
    *(a1 + 136) = v45;
  }

  if (*(a2 + 136))
  {
    v48 = *(a2 + 136);
  }

  else
  {
    v48 = &off_2788068;
  }

  sub_1876F94(v45, v48);
  if ((v4 & 0x800) == 0)
  {
LABEL_80:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 40) |= 0x800u;
  v49 = *(a1 + 144);
  if (!v49)
  {
    v50 = *(a1 + 8);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    sub_1901958(v51);
    *(a1 + 144) = v49;
  }

  if (*(a2 + 144))
  {
    v52 = *(a2 + 144);
  }

  else
  {
    v52 = &off_2788D88;
  }

  sub_189B6C8(v49, v52);
  if ((v4 & 0x1000) == 0)
  {
LABEL_81:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 40) |= 0x1000u;
  v53 = *(a1 + 152);
  if (!v53)
  {
    v54 = *(a1 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    v53 = sub_1901A14(v55);
    *(a1 + 152) = v53;
  }

  if (*(a2 + 152))
  {
    v56 = *(a2 + 152);
  }

  else
  {
    v56 = &off_2788FB0;
  }

  sub_189F7D4(v53, v56);
  if ((v4 & 0x2000) == 0)
  {
LABEL_82:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 40) |= 0x2000u;
  v57 = *(a1 + 160);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    sub_19015E0(v59);
    *(a1 + 160) = v57;
  }

  if (*(a2 + 160))
  {
    v60 = *(a2 + 160);
  }

  else
  {
    v60 = &off_2788C78;
  }

  sub_189604C(v57, v60);
  if ((v4 & 0x4000) == 0)
  {
LABEL_83:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 40) |= 0x4000u;
  v61 = *(a1 + 168);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    v61 = sub_1901D90(v63);
    *(a1 + 168) = v61;
  }

  if (*(a2 + 168))
  {
    v64 = *(a2 + 168);
  }

  else
  {
    v64 = &off_2789088;
  }

  sub_18A2984(v61, v64);
  if ((v4 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 40) |= 0x8000u;
    v65 = *(a1 + 176);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_1901B24(v67);
      *(a1 + 176) = v65;
    }

    if (*(a2 + 176))
    {
      v68 = *(a2 + 176);
    }

    else
    {
      v68 = &off_2789010;
    }

    sub_18A0B20(v65, v68);
  }

LABEL_149:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_223;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v69 = *(a1 + 184);
    if (!v69)
    {
      v70 = *(a1 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      sub_1902B74(v71);
      *(a1 + 184) = v69;
    }

    if (*(a2 + 184))
    {
      v72 = *(a2 + 184);
    }

    else
    {
      v72 = &off_2789700;
    }

    sub_18B2594(v69, v72);
    if ((v4 & 0x20000) == 0)
    {
LABEL_152:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_175;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(a1 + 40) |= 0x20000u;
  v73 = *(a1 + 192);
  if (!v73)
  {
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    sub_19036E8(v75);
    *(a1 + 192) = v73;
  }

  if (*(a2 + 192))
  {
    v76 = *(a2 + 192);
  }

  else
  {
    v76 = &off_2789C70;
  }

  sub_18C0A18(v73, v76);
  if ((v4 & 0x40000) == 0)
  {
LABEL_153:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_183;
  }

LABEL_175:
  *(a1 + 40) |= 0x40000u;
  v77 = *(a1 + 200);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_1902064(v79);
    *(a1 + 200) = v77;
  }

  if (*(a2 + 200))
  {
    v80 = *(a2 + 200);
  }

  else
  {
    v80 = &off_27891C8;
  }

  sub_18A5BDC(v77, v80);
  if ((v4 & 0x80000) == 0)
  {
LABEL_154:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_191;
  }

LABEL_183:
  *(a1 + 40) |= 0x80000u;
  v81 = *(a1 + 208);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_19017A4(v83);
    *(a1 + 208) = v81;
  }

  if (*(a2 + 208))
  {
    v84 = *(a2 + 208);
  }

  else
  {
    v84 = &off_2788D00;
  }

  sub_12095D8(v81, v84);
  if ((v4 & 0x100000) == 0)
  {
LABEL_155:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_199;
  }

LABEL_191:
  *(a1 + 40) |= 0x100000u;
  v85 = *(a1 + 216);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_19030EC(v87);
    *(a1 + 216) = v85;
  }

  if (*(a2 + 216))
  {
    v88 = *(a2 + 216);
  }

  else
  {
    v88 = &off_27899D8;
  }

  sub_18B95C8(v85, v88);
  if ((v4 & 0x200000) == 0)
  {
LABEL_156:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_207;
  }

LABEL_199:
  *(a1 + 40) |= 0x200000u;
  v89 = *(a1 + 224);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_19037D4(v91);
    *(a1 + 224) = v89;
  }

  if (*(a2 + 224))
  {
    v92 = *(a2 + 224);
  }

  else
  {
    v92 = &off_2789CD0;
  }

  sub_18C1BA0(v89, v92);
  if ((v4 & 0x400000) == 0)
  {
LABEL_157:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_215;
  }

LABEL_207:
  *(a1 + 40) |= 0x400000u;
  v93 = *(a1 + 232);
  if (!v93)
  {
    v94 = *(a1 + 8);
    v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
    if (v94)
    {
      v95 = *v95;
    }

    v93 = sub_19023D8(v95);
    *(a1 + 232) = v93;
  }

  if (*(a2 + 232))
  {
    v96 = *(a2 + 232);
  }

  else
  {
    v96 = &off_2789400;
  }

  sub_18AA088(v93, v96);
  if ((v4 & 0x800000) != 0)
  {
LABEL_215:
    *(a1 + 40) |= 0x800000u;
    v97 = *(a1 + 240);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      v97 = sub_190388C(v99);
      *(a1 + 240) = v97;
    }

    if (*(a2 + 240))
    {
      v100 = *(a2 + 240);
    }

    else
    {
      v100 = &off_2789D58;
    }

    sub_18C2AB0(v97, v100);
  }

LABEL_223:
  if (!HIBYTE(v4))
  {
    goto LABEL_297;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(a1 + 40) |= 0x1000000u;
    v101 = *(a1 + 248);
    if (!v101)
    {
      v102 = *(a1 + 8);
      v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
      if (v102)
      {
        v103 = *v103;
      }

      v101 = sub_1904778(v103);
      *(a1 + 248) = v101;
    }

    if (*(a2 + 248))
    {
      v104 = *(a2 + 248);
    }

    else
    {
      v104 = &off_278A3D8;
    }

    sub_18D7638(v101, v104);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_226:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_249;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_226;
  }

  *(a1 + 40) |= 0x2000000u;
  v105 = *(a1 + 256);
  if (!v105)
  {
    v106 = *(a1 + 8);
    v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
    if (v106)
    {
      v107 = *v107;
    }

    v105 = sub_1904894(v107);
    *(a1 + 256) = v105;
  }

  if (*(a2 + 256))
  {
    v108 = *(a2 + 256);
  }

  else
  {
    v108 = &off_278A430;
  }

  sub_18D81EC(v105, v108);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_227:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_257;
  }

LABEL_249:
  *(a1 + 40) |= 0x4000000u;
  v109 = *(a1 + 264);
  if (!v109)
  {
    v110 = *(a1 + 8);
    v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
    if (v110)
    {
      v111 = *v111;
    }

    v109 = sub_19039A0(v111);
    *(a1 + 264) = v109;
  }

  if (*(a2 + 264))
  {
    v112 = *(a2 + 264);
  }

  else
  {
    v112 = &off_2789DB0;
  }

  sub_18C3880(v109, v112);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_228:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_265;
  }

LABEL_257:
  *(a1 + 40) |= 0x8000000u;
  v113 = *(a1 + 272);
  if (!v113)
  {
    v114 = *(a1 + 8);
    v115 = (v114 & 0xFFFFFFFFFFFFFFFCLL);
    if (v114)
    {
      v115 = *v115;
    }

    v113 = sub_1903AC8(v115);
    *(a1 + 272) = v113;
  }

  if (*(a2 + 272))
  {
    v116 = *(a2 + 272);
  }

  else
  {
    v116 = &off_2789E28;
  }

  sub_18C43C4(v113, v116);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_229:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_273;
  }

LABEL_265:
  *(a1 + 40) |= 0x10000000u;
  v117 = *(a1 + 280);
  if (!v117)
  {
    v118 = *(a1 + 8);
    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      v119 = *v119;
    }

    v117 = sub_19049B0(v119);
    *(a1 + 280) = v117;
  }

  if (*(a2 + 280))
  {
    v120 = *(a2 + 280);
  }

  else
  {
    v120 = &off_278A490;
  }

  sub_132DE2C(v117, v120);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_230:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_281;
  }

LABEL_273:
  *(a1 + 40) |= 0x20000000u;
  v121 = *(a1 + 288);
  if (!v121)
  {
    v122 = *(a1 + 8);
    v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
    if (v122)
    {
      v123 = *v123;
    }

    v121 = sub_1903C04(v123);
    *(a1 + 288) = v121;
  }

  if (*(a2 + 288))
  {
    v124 = *(a2 + 288);
  }

  else
  {
    v124 = &off_2789E90;
  }

  sub_18C510C(v121, v124);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_231:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_289;
  }

LABEL_281:
  *(a1 + 40) |= 0x40000000u;
  v125 = *(a1 + 296);
  if (!v125)
  {
    v126 = *(a1 + 8);
    v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
    if (v126)
    {
      v127 = *v127;
    }

    v125 = sub_1905020(v127);
    *(a1 + 296) = v125;
  }

  if (*(a2 + 296))
  {
    v128 = *(a2 + 296);
  }

  else
  {
    v128 = &off_278A5C0;
  }

  sub_18DE298(v125, v128);
  if ((v4 & 0x80000000) != 0)
  {
LABEL_289:
    *(a1 + 40) |= 0x80000000;
    v129 = *(a1 + 304);
    if (!v129)
    {
      v130 = *(a1 + 8);
      v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL);
      if (v130)
      {
        v131 = *v131;
      }

      v129 = sub_1905138(v131);
      *(a1 + 304) = v129;
    }

    if (*(a2 + 304))
    {
      v132 = *(a2 + 304);
    }

    else
    {
      v132 = &off_278A610;
    }

    sub_18DEB78(v129, v132);
  }

LABEL_297:
  v133 = *(a2 + 44);
  if (!v133)
  {
    goto LABEL_371;
  }

  if (v133)
  {
    *(a1 + 44) |= 1u;
    v134 = *(a1 + 312);
    if (!v134)
    {
      v135 = *(a1 + 8);
      v136 = (v135 & 0xFFFFFFFFFFFFFFFCLL);
      if (v135)
      {
        v136 = *v136;
      }

      v134 = sub_1905228(v136);
      *(a1 + 312) = v134;
    }

    if (*(a2 + 312))
    {
      v137 = *(a2 + 312);
    }

    else
    {
      v137 = &off_278A648;
    }

    sub_132DE2C(v134, v137);
    if ((v133 & 2) == 0)
    {
LABEL_300:
      if ((v133 & 4) == 0)
      {
        goto LABEL_301;
      }

      goto LABEL_323;
    }
  }

  else if ((v133 & 2) == 0)
  {
    goto LABEL_300;
  }

  *(a1 + 44) |= 2u;
  v138 = *(a1 + 320);
  if (!v138)
  {
    v139 = *(a1 + 8);
    v140 = (v139 & 0xFFFFFFFFFFFFFFFCLL);
    if (v139)
    {
      v140 = *v140;
    }

    v138 = sub_1905338(v140);
    *(a1 + 320) = v138;
  }

  if (*(a2 + 320))
  {
    v141 = *(a2 + 320);
  }

  else
  {
    v141 = &off_278A6A8;
  }

  sub_18E0598(v138, v141);
  if ((v133 & 4) == 0)
  {
LABEL_301:
    if ((v133 & 8) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_331;
  }

LABEL_323:
  *(a1 + 44) |= 4u;
  v142 = *(a1 + 328);
  if (!v142)
  {
    v143 = *(a1 + 8);
    v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
    if (v143)
    {
      v144 = *v144;
    }

    v142 = sub_190542C(v144);
    *(a1 + 328) = v142;
  }

  if (*(a2 + 328))
  {
    v145 = *(a2 + 328);
  }

  else
  {
    v145 = &off_278A6E8;
  }

  sub_18E10F4(v142, v145);
  if ((v133 & 8) == 0)
  {
LABEL_302:
    if ((v133 & 0x10) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_339;
  }

LABEL_331:
  *(a1 + 44) |= 8u;
  v146 = *(a1 + 336);
  if (!v146)
  {
    v147 = *(a1 + 8);
    v148 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
    if (v147)
    {
      v148 = *v148;
    }

    v146 = sub_19056C4(v148);
    *(a1 + 336) = v146;
  }

  if (*(a2 + 336))
  {
    v149 = *(a2 + 336);
  }

  else
  {
    v149 = &off_278A800;
  }

  sub_1326DC0(v146, v149);
  if ((v133 & 0x10) == 0)
  {
LABEL_303:
    if ((v133 & 0x20) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_347;
  }

LABEL_339:
  *(a1 + 44) |= 0x10u;
  v150 = *(a1 + 344);
  if (!v150)
  {
    v151 = *(a1 + 8);
    v152 = (v151 & 0xFFFFFFFFFFFFFFFCLL);
    if (v151)
    {
      v152 = *v152;
    }

    v150 = sub_1905758(v152);
    *(a1 + 344) = v150;
  }

  if (*(a2 + 344))
  {
    v153 = *(a2 + 344);
  }

  else
  {
    v153 = &off_278A828;
  }

  sub_18E3C2C(v150, v153);
  if ((v133 & 0x20) == 0)
  {
LABEL_304:
    if ((v133 & 0x40) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_355;
  }

LABEL_347:
  *(a1 + 44) |= 0x20u;
  v154 = *(a1 + 352);
  if (!v154)
  {
    v155 = *(a1 + 8);
    v156 = (v155 & 0xFFFFFFFFFFFFFFFCLL);
    if (v155)
    {
      v156 = *v156;
    }

    v154 = sub_141BFE4(v156);
    *(a1 + 352) = v154;
  }

  if (*(a2 + 352))
  {
    v157 = *(a2 + 352);
  }

  else
  {
    v157 = &off_2770288;
  }

  sub_1418CA4(v154, v157);
  if ((v133 & 0x40) == 0)
  {
LABEL_305:
    if ((v133 & 0x80) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_363;
  }

LABEL_355:
  *(a1 + 44) |= 0x40u;
  v158 = *(a1 + 360);
  if (!v158)
  {
    v159 = *(a1 + 8);
    v160 = (v159 & 0xFFFFFFFFFFFFFFFCLL);
    if (v159)
    {
      v160 = *v160;
    }

    v158 = sub_19057F4(v160);
    *(a1 + 360) = v158;
  }

  if (*(a2 + 360))
  {
    v161 = *(a2 + 360);
  }

  else
  {
    v161 = &off_278A860;
  }

  sub_18E4380(v158, v161);
  if ((v133 & 0x80) != 0)
  {
LABEL_363:
    *(a1 + 44) |= 0x80u;
    v162 = *(a1 + 368);
    if (!v162)
    {
      v163 = *(a1 + 8);
      v164 = (v163 & 0xFFFFFFFFFFFFFFFCLL);
      if (v163)
      {
        v164 = *v164;
      }

      v162 = sub_1904AAC(v164);
      *(a1 + 368) = v162;
    }

    if (*(a2 + 368))
    {
      v165 = *(a2 + 368);
    }

    else
    {
      v165 = &off_278A4C8;
    }

    sub_18D9260(v162, v165);
  }

LABEL_371:
  if ((v133 & 0xFF00) == 0)
  {
    goto LABEL_445;
  }

  if ((v133 & 0x100) != 0)
  {
    *(a1 + 44) |= 0x100u;
    v166 = *(a1 + 376);
    if (!v166)
    {
      v167 = *(a1 + 8);
      v168 = (v167 & 0xFFFFFFFFFFFFFFFCLL);
      if (v167)
      {
        v168 = *v168;
      }

      v166 = sub_1904DEC(v168);
      *(a1 + 376) = v166;
    }

    if (*(a2 + 376))
    {
      v169 = *(a2 + 376);
    }

    else
    {
      v169 = &off_278A580;
    }

    sub_12C35F4(v166, v169);
    if ((v133 & 0x200) == 0)
    {
LABEL_374:
      if ((v133 & 0x400) == 0)
      {
        goto LABEL_375;
      }

      goto LABEL_397;
    }
  }

  else if ((v133 & 0x200) == 0)
  {
    goto LABEL_374;
  }

  *(a1 + 44) |= 0x200u;
  v170 = *(a1 + 384);
  if (!v170)
  {
    v171 = *(a1 + 8);
    v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
    if (v171)
    {
      v172 = *v172;
    }

    v170 = sub_18FF990(v172);
    *(a1 + 384) = v170;
  }

  if (*(a2 + 384))
  {
    v173 = *(a2 + 384);
  }

  else
  {
    v173 = &off_2788110;
  }

  sub_1878754(v170, v173);
  if ((v133 & 0x400) == 0)
  {
LABEL_375:
    if ((v133 & 0x800) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_405;
  }

LABEL_397:
  *(a1 + 44) |= 0x400u;
  v174 = *(a1 + 392);
  if (!v174)
  {
    v175 = *(a1 + 8);
    v176 = (v175 & 0xFFFFFFFFFFFFFFFCLL);
    if (v175)
    {
      v176 = *v176;
    }

    sub_190037C(v176);
    *(a1 + 392) = v174;
  }

  if (*(a2 + 392))
  {
    v177 = *(a2 + 392);
  }

  else
  {
    v177 = &off_27884D8;
  }

  sub_18823A4(v174, v177);
  if ((v133 & 0x800) == 0)
  {
LABEL_376:
    if ((v133 & 0x1000) == 0)
    {
      goto LABEL_377;
    }

    goto LABEL_413;
  }

LABEL_405:
  *(a1 + 44) |= 0x800u;
  v178 = *(a1 + 400);
  if (!v178)
  {
    v179 = *(a1 + 8);
    v180 = (v179 & 0xFFFFFFFFFFFFFFFCLL);
    if (v179)
    {
      v180 = *v180;
    }

    v178 = sub_174DE74(v180);
    *(a1 + 400) = v178;
  }

  if (*(a2 + 400))
  {
    v181 = *(a2 + 400);
  }

  else
  {
    v181 = &off_2780C68;
  }

  sub_174B130(v178, v181);
  if ((v133 & 0x1000) == 0)
  {
LABEL_377:
    if ((v133 & 0x2000) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_421;
  }

LABEL_413:
  *(a1 + 44) |= 0x1000u;
  v182 = *(a1 + 408);
  if (!v182)
  {
    v183 = *(a1 + 8);
    v184 = (v183 & 0xFFFFFFFFFFFFFFFCLL);
    if (v183)
    {
      v184 = *v184;
    }

    sub_19000E8(v184);
    *(a1 + 408) = v182;
  }

  if (*(a2 + 408))
  {
    v185 = *(a2 + 408);
  }

  else
  {
    v185 = &off_27883E8;
  }

  sub_187F540(v182, v185);
  if ((v133 & 0x2000) == 0)
  {
LABEL_378:
    if ((v133 & 0x4000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_429;
  }

LABEL_421:
  *(a1 + 44) |= 0x2000u;
  v186 = *(a1 + 416);
  if (!v186)
  {
    v187 = *(a1 + 8);
    v188 = (v187 & 0xFFFFFFFFFFFFFFFCLL);
    if (v187)
    {
      v188 = *v188;
    }

    sub_18FFE54(v188);
    *(a1 + 416) = v186;
  }

  if (*(a2 + 416))
  {
    v189 = *(a2 + 416);
  }

  else
  {
    v189 = &off_27882F0;
  }

  sub_187C998(v186, v189);
  if ((v133 & 0x4000) == 0)
  {
LABEL_379:
    if ((v133 & 0x8000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_437;
  }

LABEL_429:
  *(a1 + 44) |= 0x4000u;
  v190 = *(a1 + 424);
  if (!v190)
  {
    v191 = *(a1 + 8);
    v192 = (v191 & 0xFFFFFFFFFFFFFFFCLL);
    if (v191)
    {
      v192 = *v192;
    }

    v190 = sub_1902820(v192);
    *(a1 + 424) = v190;
  }

  if (*(a2 + 424))
  {
    v193 = *(a2 + 424);
  }

  else
  {
    v193 = &off_27895D0;
  }

  sub_14A7F20(v190, v193);
  if ((v133 & 0x8000) != 0)
  {
LABEL_437:
    *(a1 + 44) |= 0x8000u;
    v194 = *(a1 + 432);
    if (!v194)
    {
      v195 = *(a1 + 8);
      v196 = (v195 & 0xFFFFFFFFFFFFFFFCLL);
      if (v195)
      {
        v196 = *v196;
      }

      v194 = sub_1902928(v196);
      *(a1 + 432) = v194;
    }

    if (*(a2 + 432))
    {
      v197 = *(a2 + 432);
    }

    else
    {
      v197 = &off_2789630;
    }

    sub_18AF660(v194, v197);
  }

LABEL_445:
  if ((v133 & 0xFF0000) == 0)
  {
    goto LABEL_519;
  }

  if ((v133 & 0x10000) != 0)
  {
    *(a1 + 44) |= 0x10000u;
    v198 = *(a1 + 440);
    if (!v198)
    {
      v199 = *(a1 + 8);
      v200 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
      if (v199)
      {
        v200 = *v200;
      }

      v198 = sub_1905C0C(v200);
      *(a1 + 440) = v198;
    }

    if (*(a2 + 440))
    {
      v201 = *(a2 + 440);
    }

    else
    {
      v201 = &off_278A980;
    }

    sub_18E71B0(v198, v201);
    if ((v133 & 0x20000) == 0)
    {
LABEL_448:
      if ((v133 & 0x40000) == 0)
      {
        goto LABEL_449;
      }

      goto LABEL_471;
    }
  }

  else if ((v133 & 0x20000) == 0)
  {
    goto LABEL_448;
  }

  *(a1 + 44) |= 0x20000u;
  v202 = *(a1 + 448);
  if (!v202)
  {
    v203 = *(a1 + 8);
    v204 = (v203 & 0xFFFFFFFFFFFFFFFCLL);
    if (v203)
    {
      v204 = *v204;
    }

    v202 = sub_1900B84(v204);
    *(a1 + 448) = v202;
  }

  if (*(a2 + 448))
  {
    v205 = *(a2 + 448);
  }

  else
  {
    v205 = &off_27887F0;
  }

  sub_188ADE8(v202, v205);
  if ((v133 & 0x40000) == 0)
  {
LABEL_449:
    if ((v133 & 0x80000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_479;
  }

LABEL_471:
  *(a1 + 44) |= 0x40000u;
  v206 = *(a1 + 456);
  if (!v206)
  {
    v207 = *(a1 + 8);
    v208 = (v207 & 0xFFFFFFFFFFFFFFFCLL);
    if (v207)
    {
      v208 = *v208;
    }

    v206 = sub_1900560(v208);
    *(a1 + 456) = v206;
  }

  if (*(a2 + 456))
  {
    v209 = *(a2 + 456);
  }

  else
  {
    v209 = &off_27885B8;
  }

  sub_1884488(v206, v209);
  if ((v133 & 0x80000) == 0)
  {
LABEL_450:
    if ((v133 & 0x100000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_487;
  }

LABEL_479:
  *(a1 + 44) |= 0x80000u;
  v210 = *(a1 + 464);
  if (!v210)
  {
    v211 = *(a1 + 8);
    v212 = (v211 & 0xFFFFFFFFFFFFFFFCLL);
    if (v211)
    {
      v212 = *v212;
    }

    sub_19008C0(v212);
    *(a1 + 464) = v210;
  }

  if (*(a2 + 464))
  {
    v213 = *(a2 + 464);
  }

  else
  {
    v213 = &off_27886E0;
  }

  sub_1887B80(v210, v213);
  if ((v133 & 0x100000) == 0)
  {
LABEL_451:
    if ((v133 & 0x200000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_495;
  }

LABEL_487:
  *(a1 + 44) |= 0x100000u;
  v214 = *(a1 + 472);
  if (!v214)
  {
    v215 = *(a1 + 8);
    v216 = (v215 & 0xFFFFFFFFFFFFFFFCLL);
    if (v215)
    {
      v216 = *v216;
    }

    sub_1902A40(v216);
    *(a1 + 472) = v214;
  }

  if (*(a2 + 472))
  {
    v217 = *(a2 + 472);
  }

  else
  {
    v217 = &off_2789678;
  }

  sub_18B0920(v214, v217);
  if ((v133 & 0x200000) == 0)
  {
LABEL_452:
    if ((v133 & 0x400000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_503;
  }

LABEL_495:
  *(a1 + 44) |= 0x200000u;
  v218 = *(a1 + 480);
  if (!v218)
  {
    v219 = *(a1 + 8);
    v220 = (v219 & 0xFFFFFFFFFFFFFFFCLL);
    if (v219)
    {
      v220 = *v220;
    }

    sub_1900E78(v220);
    *(a1 + 480) = v218;
  }

  if (*(a2 + 480))
  {
    v221 = *(a2 + 480);
  }

  else
  {
    v221 = &off_2788910;
  }

  sub_188DDA0(v218, v221);
  if ((v133 & 0x400000) == 0)
  {
LABEL_453:
    if ((v133 & 0x800000) == 0)
    {
      goto LABEL_519;
    }

    goto LABEL_511;
  }

LABEL_503:
  *(a1 + 44) |= 0x400000u;
  v222 = *(a1 + 488);
  if (!v222)
  {
    v223 = *(a1 + 8);
    v224 = (v223 & 0xFFFFFFFFFFFFFFFCLL);
    if (v223)
    {
      v224 = *v224;
    }

    v222 = sub_1902304(v224);
    *(a1 + 488) = v222;
  }

  if (*(a2 + 488))
  {
    v225 = *(a2 + 488);
  }

  else
  {
    v225 = &off_27893A0;
  }

  sub_18A93C0(v222, v225);
  if ((v133 & 0x800000) != 0)
  {
LABEL_511:
    *(a1 + 44) |= 0x800000u;
    v226 = *(a1 + 496);
    if (!v226)
    {
      v227 = *(a1 + 8);
      v228 = (v227 & 0xFFFFFFFFFFFFFFFCLL);
      if (v227)
      {
        v228 = *v228;
      }

      v226 = sub_1905D20(v228);
      *(a1 + 496) = v226;
    }

    if (*(a2 + 496))
    {
      v229 = *(a2 + 496);
    }

    else
    {
      v229 = &off_278A9D8;
    }

    sub_18E7E44(v226, v229);
  }

LABEL_519:
  if ((v133 & 0x7F000000) == 0)
  {
    goto LABEL_584;
  }

  if ((v133 & 0x1000000) != 0)
  {
    *(a1 + 44) |= 0x1000000u;
    v230 = *(a1 + 504);
    if (!v230)
    {
      v231 = *(a1 + 8);
      v232 = (v231 & 0xFFFFFFFFFFFFFFFCLL);
      if (v231)
      {
        v232 = *v232;
      }

      v230 = sub_1905E38(v232);
      *(a1 + 504) = v230;
    }

    if (*(a2 + 504))
    {
      v233 = *(a2 + 504);
    }

    else
    {
      v233 = &off_278AA28;
    }

    sub_18E8BD8(v230, v233);
    if ((v133 & 0x2000000) == 0)
    {
LABEL_522:
      if ((v133 & 0x4000000) == 0)
      {
        goto LABEL_523;
      }

      goto LABEL_544;
    }
  }

  else if ((v133 & 0x2000000) == 0)
  {
    goto LABEL_522;
  }

  *(a1 + 44) |= 0x2000000u;
  v234 = *(a1 + 512);
  if (!v234)
  {
    v235 = *(a1 + 8);
    v236 = (v235 & 0xFFFFFFFFFFFFFFFCLL);
    if (v235)
    {
      v236 = *v236;
    }

    v234 = sub_1905F54(v236);
    *(a1 + 512) = v234;
  }

  if (*(a2 + 512))
  {
    v237 = *(a2 + 512);
  }

  else
  {
    v237 = &off_278AA80;
  }

  sub_18E94E0(v234, v237);
  if ((v133 & 0x4000000) == 0)
  {
LABEL_523:
    if ((v133 & 0x8000000) == 0)
    {
      goto LABEL_524;
    }

    goto LABEL_552;
  }

LABEL_544:
  *(a1 + 44) |= 0x4000000u;
  v238 = *(a1 + 520);
  if (!v238)
  {
    v239 = *(a1 + 8);
    v240 = (v239 & 0xFFFFFFFFFFFFFFFCLL);
    if (v239)
    {
      v240 = *v240;
    }

    v238 = sub_1905894(v240);
    *(a1 + 520) = v238;
  }

  if (*(a2 + 520))
  {
    v241 = *(a2 + 520);
  }

  else
  {
    v241 = &off_278A890;
  }

  sub_187B620(v238, v241);
  if ((v133 & 0x8000000) == 0)
  {
LABEL_524:
    if ((v133 & 0x10000000) == 0)
    {
      goto LABEL_525;
    }

    goto LABEL_560;
  }

LABEL_552:
  *(a1 + 44) |= 0x8000000u;
  v242 = *(a1 + 528);
  if (!v242)
  {
    v243 = *(a1 + 8);
    v244 = (v243 & 0xFFFFFFFFFFFFFFFCLL);
    if (v243)
    {
      v244 = *v244;
    }

    v242 = sub_1902230(v244);
    *(a1 + 528) = v242;
  }

  if (*(a2 + 528))
  {
    v245 = *(a2 + 528);
  }

  else
  {
    v245 = &off_2789340;
  }

  sub_18049C0(v242, v245);
  if ((v133 & 0x10000000) == 0)
  {
LABEL_525:
    if ((v133 & 0x20000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_568;
  }

LABEL_560:
  *(a1 + 44) |= 0x10000000u;
  v246 = *(a1 + 536);
  if (!v246)
  {
    v247 = *(a1 + 8);
    v248 = (v247 & 0xFFFFFFFFFFFFFFFCLL);
    if (v247)
    {
      v248 = *v248;
    }

    v246 = sub_1906044(v248);
    *(a1 + 536) = v246;
  }

  if (*(a2 + 536))
  {
    v249 = *(a2 + 536);
  }

  else
  {
    v249 = &off_278AAC0;
  }

  sub_18EA354(v246, v249);
  if ((v133 & 0x20000000) == 0)
  {
LABEL_526:
    if ((v133 & 0x40000000) == 0)
    {
      goto LABEL_584;
    }

    goto LABEL_576;
  }

LABEL_568:
  *(a1 + 44) |= 0x20000000u;
  v250 = *(a1 + 544);
  if (!v250)
  {
    v251 = *(a1 + 8);
    v252 = (v251 & 0xFFFFFFFFFFFFFFFCLL);
    if (v251)
    {
      v252 = *v252;
    }

    v250 = sub_19024AC(v252);
    *(a1 + 544) = v250;
  }

  if (*(a2 + 544))
  {
    v253 = *(a2 + 544);
  }

  else
  {
    v253 = &off_2789468;
  }

  sub_18AAFD0(v250, v253);
  if ((v133 & 0x40000000) != 0)
  {
LABEL_576:
    *(a1 + 44) |= 0x40000000u;
    v254 = *(a1 + 552);
    if (!v254)
    {
      v255 = *(a1 + 8);
      v256 = (v255 & 0xFFFFFFFFFFFFFFFCLL);
      if (v255)
      {
        v256 = *v256;
      }

      v254 = sub_19025D0(v256);
      *(a1 + 552) = v254;
    }

    if (*(a2 + 552))
    {
      v257 = *(a2 + 552);
    }

    else
    {
      v257 = &off_27894D0;
    }

    sub_18ABFA8(v254, v257);
  }

LABEL_584:
  sub_225EA0C(a1 + 16, a2 + 16);
  v258 = *(a2 + 8);
  if (v258)
  {

    sub_1957EF4((a1 + 8), (v258 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18F1BF4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      result = sub_186F888(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_18A4A74(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_18A7150(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_18A82B0(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_18B54B4(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_18AE0DC(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) != 0)
    {
      result = sub_18BC804(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x100) != 0)
    {
      result = sub_18BEE18(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_18D6CB0(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x400) != 0)
    {
      result = sub_1877280(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x800) != 0)
    {
      result = sub_189BD64(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = sub_189F8F4(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = sub_18961A4(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = sub_18A2A6C(*(a1 + 168));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = sub_18A0C64(*(a1 + 176));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = sub_18B2834(*(a1 + 184));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = sub_18C0B50(*(a1 + 192));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = sub_18A5CF8(*(a1 + 200));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x100000) != 0)
    {
      v4 = *(a1 + 216);
      if ((*(v4 + 16) & 2) != 0)
      {
        result = sub_16E4B4C(*(v4 + 56));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      result = sub_18C1CD8(*(a1 + 224));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x400000) != 0)
    {
      result = sub_18AA180(*(a1 + 232));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x800000) != 0)
    {
      v5 = *(a1 + 240);
      if (*(v5 + 16))
      {
        result = sub_16E4B4C(*(v5 + 48));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x1000000) != 0)
    {
      v6 = *(a1 + 248);
      v7 = *(v6 + 24);
      while (v7 >= 1)
      {
        v8 = v7 - 1;
        v9 = sub_16E4B4C(*(*(v6 + 32) + 8 * v7));
        result = 0;
        v7 = v8;
        if ((v9 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x2000000) != 0)
    {
      v10 = *(a1 + 256);
      v11 = *(v10 + 24);
      while (v11 >= 1)
      {
        v12 = v11 - 1;
        v13 = sub_16E5370(*(*(v10 + 32) + 8 * v11));
        result = 0;
        v11 = v12;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x4000000) != 0)
    {
      v14 = *(a1 + 264);
      v15 = *(v14 + 48);
      while (v15 >= 1)
      {
        v16 = v15 - 1;
        v17 = sub_16E6614(*(*(v14 + 56) + 8 * v15));
        result = 0;
        v15 = v16;
        if (!v17)
        {
          return result;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x8000000) != 0)
    {
      v18 = *(a1 + 272);
      v19 = *(v18 + 32);
      while (v19 >= 1)
      {
        v20 = v19 - 1;
        v21 = sub_16E5370(*(*(v18 + 40) + 8 * v19));
        result = 0;
        v19 = v20;
        if ((v21 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40000000) != 0)
    {
      result = sub_18DE378(*(a1 + 296) + 24);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80000000) == 0 || (v22 = *(a1 + 304), (*(v22 + 16) & 1) == 0) || (result = sub_16E4B4C(*(v22 + 24)), result))
    {
      v23 = *(a1 + 44);
      if ((v23 & 2) != 0)
      {
        v24 = *(a1 + 320);
        if (*(v24 + 16))
        {
          result = sub_16E4B4C(*(v24 + 24));
          if (!result)
          {
            return result;
          }

          v23 = *(a1 + 44);
        }
      }

      if ((v23 & 4) != 0)
      {
        result = sub_18E120C(*(a1 + 328));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x10) != 0)
      {
        result = sub_18E3D3C(*(a1 + 344));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x20) != 0)
      {
        result = sub_1418DB0(*(a1 + 352));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x40) != 0)
      {
        v25 = *(a1 + 360);
        v26 = *(v25 + 24);
        while (v26 >= 1)
        {
          v27 = v26 - 1;
          v28 = sub_195228C(*(*(v25 + 32) + 8 * v26) + 16);
          result = 0;
          v26 = v27;
          if ((v28 & 1) == 0)
          {
            return result;
          }
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x200) != 0)
      {
        result = sub_1878938(*(a1 + 384));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x400) != 0)
      {
        result = sub_1882634(*(a1 + 392));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x800) != 0)
      {
        result = sub_174B1EC(*(a1 + 400));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x1000) != 0)
      {
        result = sub_187F7E0(*(a1 + 408));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x2000) != 0)
      {
        result = sub_187CC38(*(a1 + 416));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x8000) != 0)
      {
        v29 = *(a1 + 432);
        v30 = *(v29 + 24);
        while (v30 >= 1)
        {
          v31 = v30 - 1;
          v32 = sub_16E5890(*(*(v29 + 32) + 8 * v30));
          result = 0;
          v30 = v31;
          if (!v32)
          {
            return result;
          }
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x10000) != 0)
      {
        result = sub_18E72C0(*(a1 + 440));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x20000) != 0)
      {
        v33 = *(a1 + 448);
        if (*(v33 + 16))
        {
          result = sub_1878938(*(v33 + 24));
          if (!result)
          {
            return result;
          }

          v23 = *(a1 + 44);
        }
      }

      if ((v23 & 0x40000) != 0)
      {
        result = sub_1884558(*(a1 + 456));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x80000) != 0)
      {
        result = sub_1887DB4(*(a1 + 464));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x100000) != 0)
      {
        result = sub_18B0B44(*(a1 + 472));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x200000) != 0)
      {
        result = sub_188DF60(*(a1 + 480));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x400000) != 0)
      {
        result = sub_18A9488(*(a1 + 488));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x800000) != 0)
      {
        result = sub_18E7304(*(a1 + 496) + 16);
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x1000000) != 0)
      {
        result = sub_18E8D04(*(a1 + 504));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x2000000) != 0)
      {
        v34 = *(a1 + 512);
        if (*(v34 + 16))
        {
          result = sub_16E6614(*(v34 + 24));
          if (!result)
          {
            return result;
          }

          v23 = *(a1 + 44);
        }
      }

      if ((v23 & 0x4000000) != 0)
      {
        result = sub_18E49C0(*(a1 + 520));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x8000000) != 0)
      {
        result = sub_18A8A00(*(a1 + 528));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x10000000) != 0)
      {
        result = sub_18EA44C(*(a1 + 536));
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 44);
      }

      if ((v23 & 0x20000000) != 0)
      {
        v35 = *(a1 + 544);
        if ((*(v35 + 16) & 2) != 0)
        {
          result = sub_16E4B4C(*(v35 + 72));
          if (!result)
          {
            return result;
          }

          v23 = *(a1 + 44);
        }
      }

      if ((v23 & 0x40000000) == 0)
      {
        return 1;
      }

      result = sub_18AC168(*(a1 + 552));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_18F21C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_271B358;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_166F5FC(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18F22A4(_Unwind_Exception *a1)
{
  sub_166F0CC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18F22E8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_166F0CC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18F2368(void *a1)
{
  sub_18F22E8(a1);

  operator delete();
}

uint64_t sub_18F23A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1835058(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18F241C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            sub_18645D4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_222EFD0(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_18F25AC(uint64_t a1, char *__dst, void *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_183538C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_18F26EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1835610(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

void sub_18F2794(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_166F5FC((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18F2868(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_271B3D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  return a1;
}

void sub_18F2930(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18F2960(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_271B3D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  v6 = *(a2 + 40);
  if (v6)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 240) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(a1 + 248) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(a1 + 256) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(a1 + 264) = 0;
  if ((v6 & 0x8000000) != 0)
  {
    operator new();
  }

  *(a1 + 272) = 0;
  if ((v6 & 0x10000000) != 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  if ((v6 & 0x20000000) != 0)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v6 & 0x40000000) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if (v6 < 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  v7 = *(a2 + 44);
  if (v7)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v7 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v7 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v7 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v7 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v7 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v7 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  if ((v7 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 416) = 0;
  if ((v7 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 424) = 0;
  if ((v7 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 432) = 0;
  if ((v7 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 440) = 0;
  if ((v7 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 448) = 0;
  if ((v7 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 456) = 0;
  if ((v7 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 464) = 0;
  if ((v7 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 472) = 0;
  if ((v7 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 480) = 0;
  if ((v7 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 488) = 0;
  if ((v7 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 496) = 0;
  if ((v7 & 0x1000000) != 0)
  {
    operator new();
  }

  *(a1 + 504) = 0;
  if ((v7 & 0x2000000) != 0)
  {
    operator new();
  }

  *(a1 + 512) = 0;
  if ((v7 & 0x4000000) != 0)
  {
    operator new();
  }

  *(a1 + 520) = 0;
  return a1;
}

void *sub_18F3938(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_18F39C4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_18F39C4(uint64_t result)
{
  if (result != &off_278AD90)
  {
    v1 = result;
    v2 = *(result + 56);
    if (v2)
    {
      sub_18717B8(v2);
      operator delete();
    }

    v3 = v1[8];
    if (v3)
    {
      sub_18A4CE0(v3);
      operator delete();
    }

    v4 = v1[9];
    if (v4)
    {
      sub_18A3750(v4);
      operator delete();
    }

    v5 = v1[10];
    if (v5)
    {
      sub_18A7350(v5);
      operator delete();
    }

    v6 = v1[11];
    if (v6)
    {
      sub_18A8B14(v6);
      operator delete();
    }

    v7 = v1[12];
    if (v7)
    {
      sub_18B865C(v7);
      operator delete();
    }

    v8 = v1[13];
    if (v8)
    {
      sub_18AE1E8(v8);
      operator delete();
    }

    v9 = v1[14];
    if (v9)
    {
      sub_18BCA70(v9);
      operator delete();
    }

    v10 = v1[15];
    if (v10)
    {
      sub_18BF074(v10);
      operator delete();
    }

    v11 = v1[16];
    if (v11)
    {
      sub_18C7810(v11);
      operator delete();
    }

    v12 = v1[17];
    if (v12)
    {
      sub_187745C(v12);
      operator delete();
    }

    v13 = v1[18];
    if (v13)
    {
      sub_189C61C(v13);
      operator delete();
    }

    v14 = v1[19];
    if (v14)
    {
      sub_189FA7C(v14);
      operator delete();
    }

    v15 = v1[20];
    if (v15)
    {
      sub_18963B4(v15);
      operator delete();
    }

    v16 = v1[21];
    if (v16)
    {
      sub_18A2C18(v16);
      operator delete();
    }

    v17 = v1[22];
    if (v17)
    {
      sub_18A1C14(v17);
      operator delete();
    }

    v18 = v1[23];
    if (v18)
    {
      sub_18B292C(v18);
      operator delete();
    }

    v19 = v1[24];
    if (v19)
    {
      sub_18C0D00(v19);
      operator delete();
    }

    v20 = v1[25];
    if (v20)
    {
      sub_18A5F3C(v20);
      operator delete();
    }

    v21 = v1[26];
    if (v21)
    {
      sub_1897B7C(v21);
      operator delete();
    }

    v22 = v1[27];
    if (v22)
    {
      sub_18B9850(v22);
      operator delete();
    }

    v23 = v1[28];
    if (v23)
    {
      sub_18C1E90(v23);
      operator delete();
    }

    v24 = v1[29];
    if (v24)
    {
      sub_18AA294(v24);
      operator delete();
    }

    v25 = v1[30];
    if (v25)
    {
      sub_18C2CB8(v25);
      operator delete();
    }

    v26 = v1[31];
    if (v26)
    {
      sub_18D783C(v26);
      operator delete();
    }

    v27 = v1[32];
    if (v27)
    {
      sub_18D8408(v27);
      operator delete();
    }

    v28 = v1[33];
    if (v28)
    {
      sub_18C3AF8(v28);
      operator delete();
    }

    v29 = v1[34];
    if (v29)
    {
      sub_18C4628(v29);
      operator delete();
    }

    v30 = v1[35];
    if (v30)
    {
      sub_18D8AE0(v30);
      operator delete();
    }

    v31 = v1[36];
    if (v31)
    {
      sub_18C527C(v31);
      operator delete();
    }

    v32 = v1[37];
    if (v32)
    {
      sub_18DE4B0(v32);
      operator delete();
    }

    v33 = v1[38];
    if (v33)
    {
      sub_18DECFC(v33);
      operator delete();
    }

    v34 = v1[39];
    if (v34)
    {
      sub_18DF4D4(v34);
      operator delete();
    }

    v35 = v1[40];
    if (v35)
    {
      sub_18E0744(v35);
      operator delete();
    }

    v36 = v1[41];
    if (v36)
    {
      sub_18E25F4(v36);
      operator delete();
    }

    v37 = v1[42];
    if (v37)
    {
      sub_18F22E8(v37);
      operator delete();
    }

    v38 = v1[43];
    if (v38)
    {
      sub_18E5770(v38);
      operator delete();
    }

    v39 = v1[44];
    if (v39)
    {
      sub_18E54C4(v39);
      operator delete();
    }

    v40 = v1[45];
    if (v40)
    {
      sub_18E6468(v40);
      operator delete();
    }

    v41 = v1[46];
    if (v41)
    {
      sub_18DB89C(v41);
      operator delete();
    }

    v42 = v1[47];
    if (v42)
    {
      sub_18DC608(v42);
      operator delete();
    }

    v43 = v1[48];
    if (v43)
    {
      sub_18836F8(v43);
      operator delete();
    }

    v44 = v1[49];
    if (v44)
    {
      sub_1878B64(v44);
      operator delete();
    }

    v45 = v1[50];
    if (v45)
    {
      sub_1880C44(v45);
      operator delete();
    }

    v46 = v1[51];
    if (v46)
    {
      sub_187E19C(v46);
      operator delete();
    }

    v47 = v1[52];
    if (v47)
    {
      sub_18AEEE0(v47);
      operator delete();
    }

    v48 = v1[53];
    if (v48)
    {
      sub_18AF820(v48);
      operator delete();
    }

    v49 = v1[54];
    if (v49)
    {
      sub_188BACC(v49);
      operator delete();
    }

    v50 = v1[55];
    if (v50)
    {
      sub_1885654(v50);
      operator delete();
    }

    v51 = v1[56];
    if (v51)
    {
      sub_1889D50(v51);
      operator delete();
    }

    v52 = v1[57];
    if (v52)
    {
      sub_18B0C84(v52);
      operator delete();
    }

    v53 = v1[58];
    if (v53)
    {
      sub_1894E24(v53);
      operator delete();
    }

    v54 = v1[59];
    if (v54)
    {
      sub_18A959C(v54);
      operator delete();
    }

    v55 = v1[60];
    if (v55)
    {
      sub_18E8E18(v55);
      operator delete();
    }

    v56 = v1[61];
    if (v56)
    {
      sub_18E96C4(v56);
      operator delete();
    }

    v57 = v1[62];
    if (v57)
    {
      sub_18E4F2C(v57);
      operator delete();
    }

    v58 = v1[63];
    if (v58)
    {
      sub_18EA608(v58);
      operator delete();
    }

    v59 = v1[64];
    if (v59)
    {
      sub_18AB238(v59);
      operator delete();
    }

    result = v1[65];
    if (result)
    {
      sub_18AC318(result);

      operator delete();
    }
  }

  return result;
}

void sub_18F4004(void *a1)
{
  sub_18F3938(a1);

  operator delete();
}

uint64_t *sub_18F403C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (v3)
  {
    result = sub_1871B18(*(a1 + 56));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v4 = *(a1 + 72);
      v5 = *(v4 + 8);
      result = (v4 + 8);
      if (v5)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_10;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_18A4DA0(*(a1 + 64));
  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v3 & 8) != 0)
  {
    result = sub_18A7404(*(a1 + 80));
  }

  if ((v3 & 0x10) != 0)
  {
    v6 = *(a1 + 88);
    v7 = *(v6 + 8);
    result = (v6 + 8);
    if (v7)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v3 & 0x20) != 0)
  {
    result = sub_18B874C(*(a1 + 96));
  }

  if ((v3 & 0x40) != 0)
  {
    v8 = *(a1 + 104);
    v9 = *(v8 + 8);
    result = (v8 + 8);
    if (v9)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v3 & 0x80) != 0)
  {
    result = sub_18BCB34(*(a1 + 112));
  }

LABEL_22:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_32;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_18BF188(*(a1 + 120));
    if ((v3 & 0x200) == 0)
    {
LABEL_25:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  result = sub_18C7964(*(a1 + 128));
  if ((v3 & 0x400) == 0)
  {
LABEL_26:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = sub_1877514(*(a1 + 136));
  if ((v3 & 0x800) == 0)
  {
LABEL_27:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = sub_189C900(*(a1 + 144));
  if ((v3 & 0x1000) == 0)
  {
LABEL_28:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = sub_189FB80(*(a1 + 152));
  if ((v3 & 0x2000) == 0)
  {
LABEL_29:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_1896478(*(a1 + 160));
  if ((v3 & 0x4000) == 0)
  {
LABEL_30:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_49:
  result = sub_18A2CF8(*(a1 + 168));
  if ((v3 & 0x8000) != 0)
  {
LABEL_31:
    result = sub_18A1CCC(*(a1 + 176));
  }

LABEL_32:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_61;
  }

  if ((v3 & 0x10000) != 0)
  {
    v10 = *(a1 + 184);
    v11 = *(v10 + 8);
    result = (v10 + 8);
    if (v11)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v3 & 0x20000) != 0)
  {
    result = sub_18C0DB4(*(a1 + 192));
    if ((v3 & 0x40000) == 0)
    {
LABEL_38:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_53;
    }
  }

  else if ((v3 & 0x40000) == 0)
  {
    goto LABEL_38;
  }

  result = sub_18A5FFC(*(a1 + 200));
  if ((v3 & 0x80000) == 0)
  {
LABEL_39:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = sub_1897C34(*(a1 + 208));
  if ((v3 & 0x100000) == 0)
  {
LABEL_40:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = sub_18B9928(*(a1 + 216));
  if ((v3 & 0x200000) == 0)
  {
LABEL_41:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

LABEL_56:
    v12 = *(a1 + 232);
    v13 = *(v12 + 8);
    result = (v12 + 8);
    if (v13)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_58;
  }

LABEL_55:
  result = sub_18C1F44(*(a1 + 224));
  if ((v3 & 0x400000) != 0)
  {
    goto LABEL_56;
  }

LABEL_58:
  if ((v3 & 0x800000) != 0)
  {
    v14 = *(a1 + 240);
    v15 = *(v14 + 8);
    result = (v14 + 8);
    if (v15)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_61:
  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v16 = *(a1 + 248);
      v17 = *(v16 + 8);
      result = (v16 + 8);
      if (v17)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v18 = *(a1 + 256);
      v19 = *(v18 + 8);
      result = (v18 + 8);
      if (v19)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      v20 = *(a1 + 264);
      v21 = *(v20 + 8);
      result = (v20 + 8);
      if (v21)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      result = sub_18C46E0(*(a1 + 272));
    }

    if ((v3 & 0x10000000) != 0)
    {
      v22 = *(a1 + 280);
      v23 = *(v22 + 8);
      result = (v22 + 8);
      if (v23)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v24 = *(a1 + 288);
      v25 = *(v24 + 8);
      result = (v24 + 8);
      if (v25)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v26 = *(a1 + 296);
      v27 = *(v26 + 8);
      result = (v26 + 8);
      if (v27)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      v28 = *(a1 + 304);
      v29 = *(v28 + 8);
      result = (v28 + 8);
      if (v29)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v30 = *(a1 + 44);
  if (v30)
  {
    if (v30)
    {
      result = sub_18DF608(*(a1 + 312));
    }

    if ((v30 & 2) != 0)
    {
      v31 = *(a1 + 320);
      v32 = *(v31 + 8);
      result = (v31 + 8);
      if (v32)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v30 & 4) != 0)
    {
      result = sub_18E26B8(*(a1 + 328));
      if ((v30 & 8) == 0)
      {
LABEL_93:
        if ((v30 & 0x10) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }
    }

    else if ((v30 & 8) == 0)
    {
      goto LABEL_93;
    }

    result = sub_18F23A0(*(a1 + 336));
    if ((v30 & 0x10) == 0)
    {
LABEL_94:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }

LABEL_98:
    result = sub_18E5860(*(a1 + 344));
    if ((v30 & 0x20) == 0)
    {
LABEL_101:
      if ((v30 & 0x40) != 0)
      {
        result = sub_18E6520(*(a1 + 360));
      }

      if ((v30 & 0x80) != 0)
      {
        result = sub_18DB954(*(a1 + 368));
      }

      goto LABEL_105;
    }

LABEL_99:
    v33 = *(a1 + 352);
    v34 = *(v33 + 8);
    result = (v33 + 8);
    if (v34)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_101;
  }

LABEL_105:
  if ((v30 & 0xFF00) == 0)
  {
    goto LABEL_126;
  }

  if ((v30 & 0x100) != 0)
  {
    v35 = *(a1 + 376);
    v36 = *(v35 + 8);
    result = (v35 + 8);
    if (v36)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v30 & 0x200) != 0)
  {
    result = sub_18837DC(*(a1 + 384));
    if ((v30 & 0x400) == 0)
    {
LABEL_111:
      if ((v30 & 0x800) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_117;
    }
  }

  else if ((v30 & 0x400) == 0)
  {
    goto LABEL_111;
  }

  result = sub_1878C60(*(a1 + 392));
  if ((v30 & 0x800) == 0)
  {
LABEL_112:
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_113;
    }

LABEL_118:
    result = sub_187E2A4(*(a1 + 408));
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

LABEL_119:
    v37 = *(a1 + 416);
    v38 = *(v37 + 8);
    result = (v37 + 8);
    if (v38)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_121;
  }

LABEL_117:
  result = sub_1880D08(*(a1 + 400));
  if ((v30 & 0x1000) != 0)
  {
    goto LABEL_118;
  }

LABEL_113:
  if ((v30 & 0x2000) != 0)
  {
    goto LABEL_119;
  }

LABEL_121:
  if ((v30 & 0x4000) != 0)
  {
    v39 = *(a1 + 424);
    v40 = *(v39 + 8);
    result = (v39 + 8);
    if (v40)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v30 & 0x8000) != 0)
  {
    result = sub_188BB84(*(a1 + 432));
  }

LABEL_126:
  if ((v30 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v30 & 0x10000) != 0)
  {
    result = sub_1885738(*(a1 + 440));
    if ((v30 & 0x20000) == 0)
    {
LABEL_129:
      if ((v30 & 0x40000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_135;
    }
  }

  else if ((v30 & 0x20000) == 0)
  {
    goto LABEL_129;
  }

  result = sub_1889E78(*(a1 + 448));
  if ((v30 & 0x40000) == 0)
  {
LABEL_130:
    if ((v30 & 0x80000) == 0)
    {
      goto LABEL_131;
    }

LABEL_136:
    result = sub_1894F20(*(a1 + 464));
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_139;
    }

LABEL_137:
    v41 = *(a1 + 472);
    v42 = *(v41 + 8);
    result = (v41 + 8);
    if (v42)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_139;
  }

LABEL_135:
  result = sub_18B0D5C(*(a1 + 456));
  if ((v30 & 0x80000) != 0)
  {
    goto LABEL_136;
  }

LABEL_131:
  if ((v30 & 0x100000) != 0)
  {
    goto LABEL_137;
  }

LABEL_139:
  if ((v30 & 0x200000) != 0)
  {
    v43 = *(a1 + 480);
    v44 = *(v43 + 8);
    result = (v43 + 8);
    if (v44)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v30 & 0x400000) != 0)
  {
    result = sub_18E97B4(*(a1 + 488));
  }

  if ((v30 & 0x800000) != 0)
  {
    result = sub_18E501C(*(a1 + 496));
  }

LABEL_146:
  if ((v30 & 0x7000000) != 0)
  {
    if ((v30 & 0x1000000) != 0)
    {
      result = sub_18EA6BC(*(a1 + 504));
    }

    if ((v30 & 0x2000000) != 0)
    {
      v45 = *(a1 + 512);
      v46 = *(v45 + 8);
      result = (v45 + 8);
      if (v46)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v30 & 0x4000000) != 0)
    {
      result = sub_18AC420(*(a1 + 520));
    }
  }

  v48 = *(a1 + 8);
  v47 = (a1 + 8);
  v47[4] = 0;
  if (v48)
  {

    return sub_1957EA8(v47);
  }

  return result;
}

char *sub_18F44C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v191 = a2;
  if (sub_195ADC0(a3, &v191, a3[11].i32[1]))
  {
    return v191;
  }

  while (2)
  {
    v6 = v191 + 1;
    v7 = *v191;
    if (*v191 < 0)
    {
      v7 = v7 + (*v6 << 7) - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v191, v7);
      }

      else
      {
        v6 = v191 + 2;
      }
    }

    v191 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 1u;
        v8 = *(a1 + 56);
        if (!v8)
        {
          v9 = *(a1 + 8);
          v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
          if (v9)
          {
            v10 = *v10;
          }

          v8 = sub_18FF760(v10);
          *(a1 + 56) = v8;
          v6 = v191;
        }

        v11 = sub_22581AC(a3, v8, v6);
        goto LABEL_371;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 2u;
        v96 = *(a1 + 64);
        if (!v96)
        {
          v97 = *(a1 + 8);
          v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
          if (v97)
          {
            v98 = *v98;
          }

          v96 = sub_1902008(v98);
          *(a1 + 64) = v96;
          v6 = v191;
        }

        v11 = sub_225823C(a3, v96, v6);
        goto LABEL_371;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 4u;
        v75 = *(a1 + 72);
        if (!v75)
        {
          v76 = *(a1 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v77 = *v77;
          }

          v75 = sub_1901F34(v77);
          *(a1 + 72) = v75;
          v6 = v191;
        }

        v11 = sub_22582CC(a3, v75, v6);
        goto LABEL_371;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 8u;
        v120 = *(a1 + 80);
        if (!v120)
        {
          v121 = *(a1 + 8);
          v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
          if (v121)
          {
            v122 = *v122;
          }

          v120 = sub_1902178(v122);
          *(a1 + 80) = v120;
          v6 = v191;
        }

        v11 = sub_2258360(a3, v120, v6);
        goto LABEL_371;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x10u;
        v126 = *(a1 + 88);
        if (!v126)
        {
          v127 = *(a1 + 8);
          v128 = (v127 & 0xFFFFFFFFFFFFFFFCLL);
          if (v127)
          {
            v128 = *v128;
          }

          v126 = sub_190228C(v128);
          *(a1 + 88) = v126;
          v6 = v191;
        }

        v11 = sub_22583F0(a3, v126, v6);
        goto LABEL_371;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x20u;
        v84 = *(a1 + 96);
        if (!v84)
        {
          v85 = *(a1 + 8);
          v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
          if (v85)
          {
            v86 = *v86;
          }

          v84 = sub_1903070(v86);
          *(a1 + 96) = v84;
          v6 = v191;
        }

        v11 = sub_2258484(a3, v84, v6);
        goto LABEL_371;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x40u;
        v99 = *(a1 + 104);
        if (!v99)
        {
          v100 = *(a1 + 8);
          v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
          if (v100)
          {
            v101 = *v101;
          }

          v99 = sub_19027A8(v101);
          *(a1 + 104) = v99;
          v6 = v191;
        }

        v11 = sub_2258514(a3, v99, v6);
        goto LABEL_371;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x80u;
        v102 = *(a1 + 112);
        if (!v102)
        {
          v103 = *(a1 + 8);
          v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
          if (v103)
          {
            v104 = *v104;
          }

          v102 = sub_190342C(v104);
          *(a1 + 112) = v102;
          v6 = v191;
        }

        v11 = sub_22585A8(a3, v102, v6);
        goto LABEL_371;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x100u;
        v138 = *(a1 + 120);
        if (!v138)
        {
          v139 = *(a1 + 8);
          v140 = (v139 & 0xFFFFFFFFFFFFFFFCLL);
          if (v139)
          {
            v140 = *v140;
          }

          v138 = sub_19035B0(v140);
          *(a1 + 120) = v138;
          v6 = v191;
        }

        v11 = sub_2258638(a3, v138, v6);
        goto LABEL_371;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x200u;
        v132 = *(a1 + 128);
        if (!v132)
        {
          v133 = *(a1 + 8);
          v134 = (v133 & 0xFFFFFFFFFFFFFFFCLL);
          if (v133)
          {
            v134 = *v134;
          }

          v132 = sub_1903E70(v134);
          *(a1 + 128) = v132;
          v6 = v191;
        }

        v11 = sub_22586C8(a3, v132, v6);
        goto LABEL_371;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x400u;
        v54 = *(a1 + 136);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_18FF8F0(v56);
          *(a1 + 136) = v54;
          v6 = v191;
        }

        v11 = sub_2252664(a3, v54, v6);
        goto LABEL_371;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x800u;
        v87 = *(a1 + 144);
        if (!v87)
        {
          v88 = *(a1 + 8);
          v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
          if (v88)
          {
            v89 = *v89;
          }

          v87 = sub_19019B8(v89);
          *(a1 + 144) = v87;
          v6 = v191;
        }

        v11 = sub_2258758(a3, v87, v6);
        goto LABEL_371;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x1000u;
        v69 = *(a1 + 152);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_1901A9C(v71);
          *(a1 + 152) = v69;
          v6 = v191;
        }

        v11 = sub_22587E8(a3, v69, v6);
        goto LABEL_371;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x2000u;
        v45 = *(a1 + 160);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_1901668(v47);
          *(a1 + 160) = v45;
          v6 = v191;
        }

        v11 = sub_2258878(a3, v45, v6);
        goto LABEL_371;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x4000u;
        v108 = *(a1 + 168);
        if (!v108)
        {
          v109 = *(a1 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v108 = sub_1901E0C(v110);
          *(a1 + 168) = v108;
          v6 = v191;
        }

        v11 = sub_2258908(a3, v108, v6);
        goto LABEL_371;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x8000u;
        v111 = *(a1 + 176);
        if (!v111)
        {
          v112 = *(a1 + 8);
          v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
          if (v112)
          {
            v113 = *v113;
          }

          v111 = sub_1901CF0(v113);
          *(a1 + 176) = v111;
          v6 = v191;
        }

        v11 = sub_2258998(a3, v111, v6);
        goto LABEL_371;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x10000u;
        v147 = *(a1 + 184);
        if (!v147)
        {
          v148 = *(a1 + 8);
          v149 = (v148 & 0xFFFFFFFFFFFFFFFCLL);
          if (v148)
          {
            v149 = *v149;
          }

          v147 = sub_1902C28(v149);
          *(a1 + 184) = v147;
          v6 = v191;
        }

        v11 = sub_2258A28(a3, v147, v6);
        goto LABEL_371;
      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x20000u;
        v141 = *(a1 + 192);
        if (!v141)
        {
          v142 = *(a1 + 8);
          v143 = (v142 & 0xFFFFFFFFFFFFFFFCLL);
          if (v142)
          {
            v143 = *v143;
          }

          v141 = sub_1903778(v143);
          *(a1 + 192) = v141;
          v6 = v191;
        }

        v11 = sub_2258ABC(a3, v141, v6);
        goto LABEL_371;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x40000u;
        v39 = *(a1 + 200);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_19020C0(v41);
          *(a1 + 200) = v39;
          v6 = v191;
        }

        v11 = sub_2258B4C(a3, v39, v6);
        goto LABEL_371;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x80000u;
        v72 = *(a1 + 208);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          v72 = sub_1901820(v74);
          *(a1 + 208) = v72;
          v6 = v191;
        }

        v11 = sub_2258BDC(a3, v72, v6);
        goto LABEL_371;
      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x100000u;
        v156 = *(a1 + 216);
        if (!v156)
        {
          v157 = *(a1 + 8);
          v158 = (v157 & 0xFFFFFFFFFFFFFFFCLL);
          if (v157)
          {
            v158 = *v158;
          }

          v156 = sub_1903194(v158);
          *(a1 + 216) = v156;
          v6 = v191;
        }

        v11 = sub_2258C6C(a3, v156, v6);
        goto LABEL_371;
      case 0x16u:
        if (v7 != 178)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x200000u;
        v42 = *(a1 + 224);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_1903830(v44);
          *(a1 + 224) = v42;
          v6 = v191;
        }

        v11 = sub_2258CFC(a3, v42, v6);
        goto LABEL_371;
      case 0x17u:
        if (v7 != 186)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x400000u;
        v66 = *(a1 + 232);
        if (!v66)
        {
          v67 = *(a1 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_1902434(v68);
          *(a1 + 232) = v66;
          v6 = v191;
        }

        v11 = sub_2258D8C(a3, v66, v6);
        goto LABEL_371;
      case 0x18u:
        if (v7 != 194)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x800000u;
        v51 = *(a1 + 240);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_1903928(v53);
          *(a1 + 240) = v51;
          v6 = v191;
        }

        v11 = sub_2258E20(a3, v51, v6);
        goto LABEL_371;
      case 0x19u:
        if (v7 != 202)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x1000000u;
        v90 = *(a1 + 248);
        if (!v90)
        {
          v91 = *(a1 + 8);
          v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
          if (v91)
          {
            v92 = *v92;
          }

          v90 = sub_190481C(v92);
          *(a1 + 248) = v90;
          v6 = v191;
        }

        v11 = sub_2258EB4(a3, v90, v6);
        goto LABEL_371;
      case 0x1Au:
        if (v7 != 210)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x2000000u;
        v48 = *(a1 + 256);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_1904938(v50);
          *(a1 + 256) = v48;
          v6 = v191;
        }

        v11 = sub_2258F48(a3, v48, v6);
        goto LABEL_371;
      case 0x1Cu:
        if (v7 != 226)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x4000000u;
        v168 = *(a1 + 264);
        if (!v168)
        {
          v169 = *(a1 + 8);
          v170 = (v169 & 0xFFFFFFFFFFFFFFFCLL);
          if (v169)
          {
            v170 = *v170;
          }

          v168 = sub_1903A50(v170);
          *(a1 + 264) = v168;
          v6 = v191;
        }

        v11 = sub_2258FDC(a3, v168, v6);
        goto LABEL_371;
      case 0x1Du:
        if (v7 != 234)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x8000000u;
        v165 = *(a1 + 272);
        if (!v165)
        {
          v166 = *(a1 + 8);
          v167 = (v166 & 0xFFFFFFFFFFFFFFFCLL);
          if (v166)
          {
            v167 = *v167;
          }

          v165 = sub_1903B64(v167);
          *(a1 + 272) = v165;
          v6 = v191;
        }

        v11 = sub_2259070(a3, v165, v6);
        goto LABEL_371;
      case 0x1Eu:
        if (v7 != 242)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x10000000u;
        v60 = *(a1 + 280);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_1904A34(v62);
          *(a1 + 280) = v60;
          v6 = v191;
        }

        v11 = sub_2259100(a3, v60, v6);
        goto LABEL_371;
      case 0x1Fu:
        if (v7 != 250)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x20000000u;
        v78 = *(a1 + 288);
        if (!v78)
        {
          v79 = *(a1 + 8);
          v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
          if (v79)
          {
            v80 = *v80;
          }

          v78 = sub_1903CA4(v80);
          *(a1 + 288) = v78;
          v6 = v191;
        }

        v11 = sub_2259194(a3, v78, v6);
        goto LABEL_371;
      case 0x20u:
        if (v7 != 2)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x40000000u;
        v117 = *(a1 + 296);
        if (!v117)
        {
          v118 = *(a1 + 8);
          v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
          if (v118)
          {
            v119 = *v119;
          }

          v117 = sub_19050C0(v119);
          *(a1 + 296) = v117;
          v6 = v191;
        }

        v11 = sub_2259228(a3, v117, v6);
        goto LABEL_371;
      case 0x21u:
        if (v7 != 10)
        {
          goto LABEL_362;
        }

        *(a1 + 40) |= 0x80000000;
        v81 = *(a1 + 304);
        if (!v81)
        {
          v82 = *(a1 + 8);
          v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
          if (v82)
          {
            v83 = *v83;
          }

          v81 = sub_19051B0(v83);
          *(a1 + 304) = v81;
          v6 = v191;
        }

        v11 = sub_22592BC(a3, v81, v6);
        goto LABEL_371;
      case 0x22u:
        if (v7 != 18)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 1u;
        v177 = *(a1 + 312);
        if (!v177)
        {
          v178 = *(a1 + 8);
          v179 = (v178 & 0xFFFFFFFFFFFFFFFCLL);
          if (v178)
          {
            v179 = *v179;
          }

          v177 = sub_19052AC(v179);
          *(a1 + 312) = v177;
          v6 = v191;
        }

        v11 = sub_2259350(a3, v177, v6);
        goto LABEL_371;
      case 0x23u:
        if (v7 != 26)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 2u;
        v57 = *(a1 + 320);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_19053B4(v59);
          *(a1 + 320) = v57;
          v6 = v191;
        }

        v11 = sub_22593E0(a3, v57, v6);
        goto LABEL_371;
      case 0x24u:
        if (v7 != 34)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 4u;
        v144 = *(a1 + 328);
        if (!v144)
        {
          v145 = *(a1 + 8);
          v146 = (v145 & 0xFFFFFFFFFFFFFFFCLL);
          if (v145)
          {
            v146 = *v146;
          }

          v144 = sub_1905618(v146);
          *(a1 + 328) = v144;
          v6 = v191;
        }

        v11 = sub_2259474(a3, v144, v6);
        goto LABEL_371;
      case 0x25u:
        if (v7 != 42)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 8u;
        v174 = *(a1 + 336);
        if (!v174)
        {
          v175 = *(a1 + 8);
          v176 = (v175 & 0xFFFFFFFFFFFFFFFCLL);
          if (v175)
          {
            v176 = *v176;
          }

          v174 = sub_1906158(v176);
          *(a1 + 336) = v174;
          v6 = v191;
        }

        v11 = sub_2259504(a3, v174, v6);
        goto LABEL_371;
      case 0x26u:
        if (v7 != 50)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x10u;
        v33 = *(a1 + 344);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_1905A78(v35);
          *(a1 + 344) = v33;
          v6 = v191;
        }

        v11 = sub_2259594(a3, v33, v6);
        goto LABEL_371;
      case 0x27u:
        if (v7 != 58)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x20u;
        v129 = *(a1 + 352);
        if (!v129)
        {
          v130 = *(a1 + 8);
          v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL);
          if (v130)
          {
            v131 = *v131;
          }

          v129 = sub_1905A00(v131);
          *(a1 + 352) = v129;
          v6 = v191;
        }

        v11 = sub_2259624(a3, v129, v6);
        goto LABEL_371;
      case 0x28u:
        if (v7 != 66)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x40u;
        v30 = *(a1 + 360);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          v30 = sub_1905B6C(v32);
          *(a1 + 360) = v30;
          v6 = v191;
        }

        v11 = sub_22596B8(a3, v30, v6);
        goto LABEL_371;
      case 0x29u:
        if (v7 != 74)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x80u;
        v27 = *(a1 + 368);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_1904D50(v29);
          *(a1 + 368) = v27;
          v6 = v191;
        }

        v11 = sub_2259748(a3, v27, v6);
        goto LABEL_371;
      case 0x2Au:
        if (v7 != 82)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x100u;
        v63 = *(a1 + 376);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_1904E70(v65);
          *(a1 + 376) = v63;
          v6 = v191;
        }

        v11 = sub_22597D8(a3, v63, v6);
        goto LABEL_371;
      case 0x2Bu:
        if (v7 != 90)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x200u;
        v93 = *(a1 + 384);
        if (!v93)
        {
          v94 = *(a1 + 8);
          v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
          if (v94)
          {
            v95 = *v95;
          }

          v93 = sub_19004BC(v95);
          *(a1 + 384) = v93;
          v6 = v191;
        }

        v11 = sub_225986C(a3, v93, v6);
        goto LABEL_371;
      case 0x2Cu:
        if (v7 != 98)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x400u;
        v153 = *(a1 + 392);
        if (!v153)
        {
          v154 = *(a1 + 8);
          v155 = (v154 & 0xFFFFFFFFFFFFFFFCLL);
          if (v154)
          {
            v155 = *v155;
          }

          v153 = sub_18FFA3C(v155);
          *(a1 + 392) = v153;
          v6 = v191;
        }

        v11 = sub_22526F4(a3, v153, v6);
        goto LABEL_371;
      case 0x2Du:
        if (v7 != 106)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x800u;
        v12 = *(a1 + 400);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_19002D8(v14);
          *(a1 + 400) = v12;
          v6 = v191;
        }

        v11 = sub_22598FC(a3, v12, v6);
        goto LABEL_371;
      case 0x2Eu:
        if (v7 != 114)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x1000u;
        v36 = *(a1 + 408);
        if (!v36)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_1900044(v38);
          *(a1 + 408) = v36;
          v6 = v191;
        }

        v11 = sub_225998C(a3, v36, v6);
        goto LABEL_371;
      case 0x2Fu:
        if (v7 != 122)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x2000u;
        v105 = *(a1 + 416);
        if (!v105)
        {
          v106 = *(a1 + 8);
          v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
          if (v106)
          {
            v107 = *v107;
          }

          v105 = sub_19028B0(v107);
          *(a1 + 416) = v105;
          v6 = v191;
        }

        v11 = sub_2259A1C(a3, v105, v6);
        goto LABEL_371;
      case 0x30u:
        if (v7 != 130)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x4000u;
        v123 = *(a1 + 424);
        if (!v123)
        {
          v124 = *(a1 + 8);
          v125 = (v124 & 0xFFFFFFFFFFFFFFFCLL);
          if (v124)
          {
            v125 = *v125;
          }

          v123 = sub_19029C8(v125);
          *(a1 + 424) = v123;
          v6 = v191;
        }

        v11 = sub_2259AB0(a3, v123, v6);
        goto LABEL_371;
      case 0x31u:
        if (v7 != 138)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x8000u;
        v180 = *(a1 + 432);
        if (!v180)
        {
          v181 = *(a1 + 8);
          v182 = (v181 & 0xFFFFFFFFFFFFFFFCLL);
          if (v181)
          {
            v182 = *v182;
          }

          v180 = sub_1900C8C(v182);
          *(a1 + 432) = v180;
          v6 = v191;
        }

        v11 = sub_2259B44(a3, v180, v6);
        goto LABEL_371;
      case 0x32u:
        if (v7 != 146)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x10000u;
        v114 = *(a1 + 440);
        if (!v114)
        {
          v115 = *(a1 + 8);
          v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
          if (v115)
          {
            v116 = *v116;
          }

          v114 = sub_1900700(v116);
          *(a1 + 440) = v114;
          v6 = v191;
        }

        v11 = sub_2259BD4(a3, v114, v6);
        goto LABEL_371;
      case 0x33u:
        if (v7 != 154)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x20000u;
        v24 = *(a1 + 448);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_1900AE4(v26);
          *(a1 + 448) = v24;
          v6 = v191;
        }

        v11 = sub_2259C64(a3, v24, v6);
        goto LABEL_371;
      case 0x36u:
        if (v7 != 178)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x40000u;
        v15 = *(a1 + 456);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1902AF0(v17);
          *(a1 + 456) = v15;
          v6 = v191;
        }

        v11 = sub_2259CF4(a3, v15, v6);
        goto LABEL_371;
      case 0x37u:
        if (v7 != 186)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x80000u;
        v183 = *(a1 + 464);
        if (!v183)
        {
          v184 = *(a1 + 8);
          v185 = (v184 & 0xFFFFFFFFFFFFFFFCLL);
          if (v184)
          {
            v185 = *v185;
          }

          v183 = sub_1901544(v185);
          *(a1 + 464) = v183;
          v6 = v191;
        }

        v11 = sub_2259D84(a3, v183, v6);
        goto LABEL_371;
      case 0x38u:
        if (v7 != 194)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x100000u;
        v171 = *(a1 + 472);
        if (!v171)
        {
          v172 = *(a1 + 8);
          v173 = (v172 & 0xFFFFFFFFFFFFFFFCLL);
          if (v172)
          {
            v173 = *v173;
          }

          v171 = sub_1902360(v173);
          *(a1 + 472) = v171;
          v6 = v191;
        }

        v11 = sub_2259E14(a3, v171, v6);
        goto LABEL_371;
      case 0x3Au:
        if (v7 != 210)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x200000u;
        v21 = *(a1 + 480);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_1905EDC(v23);
          *(a1 + 480) = v21;
          v6 = v191;
        }

        v11 = sub_2259EA8(a3, v21, v6);
        goto LABEL_371;
      case 0x3Bu:
        if (v7 != 218)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x400000u;
        v135 = *(a1 + 488);
        if (!v135)
        {
          v136 = *(a1 + 8);
          v137 = (v136 & 0xFFFFFFFFFFFFFFFCLL);
          if (v136)
          {
            v137 = *v137;
          }

          v135 = sub_1905FCC(v137);
          *(a1 + 488) = v135;
          v6 = v191;
        }

        v11 = sub_2259F3C(a3, v135, v6);
        goto LABEL_371;
      case 0x3Cu:
        if (v7 != 226)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x800000u;
        v150 = *(a1 + 496);
        if (!v150)
        {
          v151 = *(a1 + 8);
          v152 = (v151 & 0xFFFFFFFFFFFFFFFCLL);
          if (v151)
          {
            v152 = *v152;
          }

          v150 = sub_1905988(v152);
          *(a1 + 496) = v150;
          v6 = v191;
        }

        v11 = sub_2259FCC(a3, v150, v6);
        goto LABEL_371;
      case 0x3Eu:
        if (v7 != 242)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x1000000u;
        v18 = *(a1 + 504);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_19060A0(v20);
          *(a1 + 504) = v18;
          v6 = v191;
        }

        v11 = sub_225A05C(a3, v18, v6);
        goto LABEL_371;
      case 0x3Fu:
        if (v7 != 250)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x2000000u;
        v162 = *(a1 + 512);
        if (!v162)
        {
          v163 = *(a1 + 8);
          v164 = (v163 & 0xFFFFFFFFFFFFFFFCLL);
          if (v163)
          {
            v164 = *v164;
          }

          v162 = sub_1902558(v164);
          *(a1 + 512) = v162;
          v6 = v191;
        }

        v11 = sub_225A0EC(a3, v162, v6);
        goto LABEL_371;
      case 0x40u:
        if (v7 != 2)
        {
          goto LABEL_362;
        }

        *(a1 + 44) |= 0x4000000u;
        v159 = *(a1 + 520);
        if (!v159)
        {
          v160 = *(a1 + 8);
          v161 = (v160 & 0xFFFFFFFFFFFFFFFCLL);
          if (v160)
          {
            v161 = *v161;
          }

          v159 = sub_1902678(v161);
          *(a1 + 520) = v159;
          v6 = v191;
        }

        v11 = sub_225A180(a3, v159, v6);
        goto LABEL_371;
      default:
LABEL_362:
        if (v7)
        {
          v186 = (v7 & 7) == 4;
        }

        else
        {
          v186 = 1;
        }

        if (!v186)
        {
          if (v7 - 8000 > 0x18F)
          {
            v187 = *(a1 + 8);
            if (v187)
            {
              v188 = (v187 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v190 = v7;
              v189 = sub_11F1920((a1 + 8));
              v7 = v190;
              v6 = v191;
              v188 = v189;
            }

            v11 = sub_1952690(v7, v188, v6, a3);
          }

          else
          {
            v11 = sub_19525AC((a1 + 16), v7, v6, &off_278AD90, (a1 + 8), a3);
          }

LABEL_371:
          v191 = v11;
          if (!v11)
          {
            return 0;
          }

          if (sub_195ADC0(a3, &v191, a3[11].i32[1]))
          {
            return v191;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v191;
    }
  }
}

char *sub_18F59A0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1872ED8(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 18;
  v11 = *(v10 + 64);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_18A4FE4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 72);
  *v4 = 26;
  v14 = *(v13 + 16);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_18A380C(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 80);
  *v4 = 34;
  v17 = *(v16 + 40);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_18A758C(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 88);
  *v4 = 42;
  v20 = *(v19 + 16);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_18A8BD0(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 96);
  *v4 = 50;
  v23 = *(v22 + 20);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_18B8994(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 104);
  *v4 = 58;
  v26 = *(v25 + 16);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_18AE2A4(v25, v27, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_82;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 112);
  *v4 = 66;
  v29 = *(v28 + 20);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_18BCE9C(v28, v30, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_88;
  }

LABEL_82:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v31 = *(a1 + 120);
  *v4 = 74;
  v32 = *(v31 + 20);
  v4[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v4 + 1);
  }

  else
  {
    v33 = v4 + 2;
  }

  v4 = sub_18BF468(v31, v33, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v34 = *(a1 + 128);
  *v4 = 82;
  v35 = *(v34 + 44);
  v4[1] = v35;
  if (v35 > 0x7F)
  {
    v36 = sub_19575D0(v35, v4 + 1);
  }

  else
  {
    v36 = v4 + 2;
  }

  v4 = sub_18C8424(v34, v36, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v37 = *(a1 + 136);
  *v4 = 90;
  v38 = *(v37 + 40);
  v4[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v4 + 1);
  }

  else
  {
    v39 = v4 + 2;
  }

  v4 = sub_1877720(v37, v39, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v40 = *(a1 + 144);
  *v4 = 98;
  v41 = *(v40 + 44);
  v4[1] = v41;
  if (v41 > 0x7F)
  {
    v42 = sub_19575D0(v41, v4 + 1);
  }

  else
  {
    v42 = v4 + 2;
  }

  v4 = sub_189D6AC(v40, v42, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_112;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v43 = *(a1 + 152);
  *v4 = 106;
  v44 = *(v43 + 20);
  v4[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v4 + 1);
  }

  else
  {
    v45 = v4 + 2;
  }

  v4 = sub_189FE4C(v43, v45, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_118;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v46 = *(a1 + 160);
  *v4 = 114;
  v47 = *(v46 + 64);
  v4[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v4 + 1);
  }

  else
  {
    v48 = v4 + 2;
  }

  v4 = sub_1896750(v46, v48, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_118:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v49 = *(a1 + 168);
  *v4 = 122;
  v50 = *(v49 + 20);
  v4[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v4 + 1);
  }

  else
  {
    v51 = v4 + 2;
  }

  v4 = sub_18A2FC0(v49, v51, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_130;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v52 = *(a1 + 176);
  *v4 = 386;
  v53 = *(v52 + 40);
  v4[2] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v4 + 2);
  }

  else
  {
    v54 = v4 + 3;
  }

  v4 = sub_18A1ED8(v52, v54, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_136;
  }

LABEL_130:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v55 = *(a1 + 184);
  *v4 = 394;
  v56 = *(v55 + 16);
  v4[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v4 + 2);
  }

  else
  {
    v57 = v4 + 3;
  }

  v4 = sub_18B29E8(v55, v57, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_142;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v58 = *(a1 + 192);
  *v4 = 402;
  v59 = *(v58 + 40);
  v4[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v4 + 2);
  }

  else
  {
    v60 = v4 + 3;
  }

  v4 = sub_18C0F3C(v58, v60, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_148;
  }

LABEL_142:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v61 = *(a1 + 200);
  *v4 = 410;
  v62 = *(v61 + 64);
  v4[2] = v62;
  if (v62 > 0x7F)
  {
    v63 = sub_19575D0(v62, v4 + 2);
  }

  else
  {
    v63 = v4 + 3;
  }

  v4 = sub_18A6240(v61, v63, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_154;
  }

LABEL_148:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v64 = *(a1 + 208);
  *v4 = 418;
  v65 = *(v64 + 40);
  v4[2] = v65;
  if (v65 > 0x7F)
  {
    v66 = sub_19575D0(v65, v4 + 2);
  }

  else
  {
    v66 = v4 + 3;
  }

  v4 = sub_1897E40(v64, v66, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_160;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v67 = *(a1 + 216);
  *v4 = 426;
  v68 = *(v67 + 20);
  v4[2] = v68;
  if (v68 > 0x7F)
  {
    v69 = sub_19575D0(v68, v4 + 2);
  }

  else
  {
    v69 = v4 + 3;
  }

  v4 = sub_18B9AA4(v67, v69, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_166;
  }

LABEL_160:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v70 = *(a1 + 224);
  *v4 = 434;
  v71 = *(v70 + 40);
  v4[2] = v71;
  if (v71 > 0x7F)
  {
    v72 = sub_19575D0(v71, v4 + 2);
  }

  else
  {
    v72 = v4 + 3;
  }

  v4 = sub_18C20CC(v70, v72, a3);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_172;
  }

LABEL_166:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v73 = *(a1 + 232);
  *v4 = 442;
  v74 = *(v73 + 16);
  v4[2] = v74;
  if (v74 > 0x7F)
  {
    v75 = sub_19575D0(v74, v4 + 2);
  }

  else
  {
    v75 = v4 + 3;
  }

  v4 = sub_18AA350(v73, v75, a3);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_178;
  }

LABEL_172:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v76 = *(a1 + 240);
  *v4 = 450;
  v77 = *(v76 + 16);
  v4[2] = v77;
  if (v77 > 0x7F)
  {
    v78 = sub_19575D0(v77, v4 + 2);
  }

  else
  {
    v78 = v4 + 3;
  }

  v4 = sub_18C2D74(v76, v78, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_184;
  }

LABEL_178:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v79 = *(a1 + 248);
  *v4 = 458;
  v80 = *(v79 + 16);
  v4[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v4 + 2);
  }

  else
  {
    v81 = v4 + 3;
  }

  v4 = sub_18D78F8(v79, v81, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_190;
  }

LABEL_184:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v82 = *(a1 + 256);
  *v4 = 466;
  v83 = *(v82 + 16);
  v4[2] = v83;
  if (v83 > 0x7F)
  {
    v84 = sub_19575D0(v83, v4 + 2);
  }

  else
  {
    v84 = v4 + 3;
  }

  v4 = sub_18D84C4(v82, v84, a3);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_196;
  }

LABEL_190:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v85 = *(a1 + 264);
  *v4 = 482;
  v86 = *(v85 + 16);
  v4[2] = v86;
  if (v86 > 0x7F)
  {
    v87 = sub_19575D0(v86, v4 + 2);
  }

  else
  {
    v87 = v4 + 3;
  }

  v4 = sub_18C3BB4(v85, v87, a3);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_202;
  }

LABEL_196:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v88 = *(a1 + 272);
  *v4 = 490;
  v89 = *(v88 + 40);
  v4[2] = v89;
  if (v89 > 0x7F)
  {
    v90 = sub_19575D0(v89, v4 + 2);
  }

  else
  {
    v90 = v4 + 3;
  }

  v4 = sub_18C48EC(v88, v90, a3);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_208;
  }

LABEL_202:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v91 = *(a1 + 280);
  *v4 = 498;
  v92 = *(v91 + 16);
  v4[2] = v92;
  if (v92 > 0x7F)
  {
    v93 = sub_19575D0(v92, v4 + 2);
  }

  else
  {
    v93 = v4 + 3;
  }

  v4 = sub_18D8B9C(v91, v93, a3);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_214;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v94 = *(a1 + 288);
  *v4 = 506;
  v95 = *(v94 + 16);
  v4[2] = v95;
  if (v95 > 0x7F)
  {
    v96 = sub_19575D0(v95, v4 + 2);
  }

  else
  {
    v96 = v4 + 3;
  }

  v4 = sub_18C5338(v94, v96, a3);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_220;
  }

LABEL_214:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v97 = *(a1 + 296);
  *v4 = 642;
  v98 = *(v97 + 16);
  v4[2] = v98;
  if (v98 > 0x7F)
  {
    v99 = sub_19575D0(v98, v4 + 2);
  }

  else
  {
    v99 = v4 + 3;
  }

  v4 = sub_18DE56C(v97, v99, a3);
  if (v6 < 0)
  {
LABEL_220:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v100 = *(a1 + 304);
    *v4 = 650;
    v101 = *(v100 + 16);
    v4[2] = v101;
    if (v101 > 0x7F)
    {
      v102 = sub_19575D0(v101, v4 + 2);
    }

    else
    {
      v102 = v4 + 3;
    }

    v4 = sub_18DEDB8(v100, v102, a3);
  }

LABEL_226:
  v103 = *(a1 + 44);
  if (v103)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v104 = *(a1 + 312);
    *v4 = 658;
    v105 = *(v104 + 20);
    v4[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v4 + 2);
    }

    else
    {
      v106 = v4 + 3;
    }

    v4 = sub_18DF9B8(v104, v106, a3);
    if ((v103 & 2) == 0)
    {
LABEL_228:
      if ((v103 & 4) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_266;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_228;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v107 = *(a1 + 320);
  *v4 = 666;
  v108 = *(v107 + 16);
  v4[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v4 + 2);
  }

  else
  {
    v109 = v4 + 3;
  }

  v4 = sub_18E0800(v107, v109, a3);
  if ((v103 & 4) == 0)
  {
LABEL_229:
    if ((v103 & 8) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_272;
  }

LABEL_266:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v110 = *(a1 + 328);
  *v4 = 674;
  v111 = *(v110 + 20);
  v4[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v4 + 2);
  }

  else
  {
    v112 = v4 + 3;
  }

  v4 = sub_18E2A10(v110, v112, a3);
  if ((v103 & 8) == 0)
  {
LABEL_230:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_278;
  }

LABEL_272:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v113 = *(a1 + 336);
  *v4 = 682;
  v114 = *(v113 + 40);
  v4[2] = v114;
  if (v114 > 0x7F)
  {
    v115 = sub_19575D0(v114, v4 + 2);
  }

  else
  {
    v115 = v4 + 3;
  }

  v4 = sub_18F25AC(v113, v115, a3);
  if ((v103 & 0x10) == 0)
  {
LABEL_231:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_284;
  }

LABEL_278:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v116 = *(a1 + 344);
  *v4 = 690;
  v117 = *(v116 + 20);
  v4[2] = v117;
  if (v117 > 0x7F)
  {
    v118 = sub_19575D0(v117, v4 + 2);
  }

  else
  {
    v118 = v4 + 3;
  }

  v4 = sub_18E5A00(v116, v118, a3);
  if ((v103 & 0x20) == 0)
  {
LABEL_232:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_290;
  }

LABEL_284:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v119 = *(a1 + 352);
  *v4 = 698;
  v120 = *(v119 + 16);
  v4[2] = v120;
  if (v120 > 0x7F)
  {
    v121 = sub_19575D0(v120, v4 + 2);
  }

  else
  {
    v121 = v4 + 3;
  }

  v4 = sub_18E5580(v119, v121, a3);
  if ((v103 & 0x40) == 0)
  {
LABEL_233:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_296;
  }

LABEL_290:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v122 = *(a1 + 360);
  *v4 = 706;
  v123 = *(v122 + 40);
  v4[2] = v123;
  if (v123 > 0x7F)
  {
    v124 = sub_19575D0(v123, v4 + 2);
  }

  else
  {
    v124 = v4 + 3;
  }

  v4 = sub_18E672C(v122, v124, a3);
  if ((v103 & 0x80) == 0)
  {
LABEL_234:
    if ((v103 & 0x100) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_302;
  }

LABEL_296:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v125 = *(a1 + 368);
  *v4 = 714;
  v126 = *(v125 + 20);
  v4[2] = v126;
  if (v126 > 0x7F)
  {
    v127 = sub_19575D0(v126, v4 + 2);
  }

  else
  {
    v127 = v4 + 3;
  }

  v4 = sub_18DBBF0(v125, v127, a3);
  if ((v103 & 0x100) == 0)
  {
LABEL_235:
    if ((v103 & 0x200) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_308;
  }

LABEL_302:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v128 = *(a1 + 376);
  *v4 = 722;
  v129 = *(v128 + 16);
  v4[2] = v129;
  if (v129 > 0x7F)
  {
    v130 = sub_19575D0(v129, v4 + 2);
  }

  else
  {
    v130 = v4 + 3;
  }

  v4 = sub_18DC6C4(v128, v130, a3);
  if ((v103 & 0x200) == 0)
  {
LABEL_236:
    if ((v103 & 0x400) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_314;
  }

LABEL_308:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v131 = *(a1 + 384);
  *v4 = 730;
  v132 = *(v131 + 20);
  v4[2] = v132;
  if (v132 > 0x7F)
  {
    v133 = sub_19575D0(v132, v4 + 2);
  }

  else
  {
    v133 = v4 + 3;
  }

  v4 = sub_1883A64(v131, v133, a3);
  if ((v103 & 0x400) == 0)
  {
LABEL_237:
    if ((v103 & 0x800) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_320;
  }

LABEL_314:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v134 = *(a1 + 392);
  *v4 = 738;
  v135 = *(v134 + 20);
  v4[2] = v135;
  if (v135 > 0x7F)
  {
    v136 = sub_19575D0(v135, v4 + 2);
  }

  else
  {
    v136 = v4 + 3;
  }

  v4 = sub_1878ED4(v134, v136, a3);
  if ((v103 & 0x800) == 0)
  {
LABEL_238:
    if ((v103 & 0x1000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_326;
  }

LABEL_320:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v137 = *(a1 + 400);
  *v4 = 746;
  v138 = *(v137 + 64);
  v4[2] = v138;
  if (v138 > 0x7F)
  {
    v139 = sub_19575D0(v138, v4 + 2);
  }

  else
  {
    v139 = v4 + 3;
  }

  v4 = sub_1880FE0(v137, v139, a3);
  if ((v103 & 0x1000) == 0)
  {
LABEL_239:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_332;
  }

LABEL_326:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v140 = *(a1 + 408);
  *v4 = 754;
  v141 = *(v140 + 20);
  v4[2] = v141;
  if (v141 > 0x7F)
  {
    v142 = sub_19575D0(v141, v4 + 2);
  }

  else
  {
    v142 = v4 + 3;
  }

  v4 = sub_187E5D4(v140, v142, a3);
  if ((v103 & 0x2000) == 0)
  {
LABEL_240:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_338;
  }

LABEL_332:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v143 = *(a1 + 416);
  *v4 = 762;
  v144 = *(v143 + 16);
  v4[2] = v144;
  if (v144 > 0x7F)
  {
    v145 = sub_19575D0(v144, v4 + 2);
  }

  else
  {
    v145 = v4 + 3;
  }

  v4 = sub_18AEF9C(v143, v145, a3);
  if ((v103 & 0x4000) == 0)
  {
LABEL_241:
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_344;
  }

LABEL_338:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v146 = *(a1 + 424);
  *v4 = 898;
  v147 = *(v146 + 16);
  v4[2] = v147;
  if (v147 > 0x7F)
  {
    v148 = sub_19575D0(v147, v4 + 2);
  }

  else
  {
    v148 = v4 + 3;
  }

  v4 = sub_18AF8DC(v146, v148, a3);
  if ((v103 & 0x8000) == 0)
  {
LABEL_242:
    if ((v103 & 0x10000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_350;
  }

LABEL_344:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v149 = *(a1 + 432);
  *v4 = 906;
  v150 = *(v149 + 40);
  v4[2] = v150;
  if (v150 > 0x7F)
  {
    v151 = sub_19575D0(v150, v4 + 2);
  }

  else
  {
    v151 = v4 + 3;
  }

  v4 = sub_188BD90(v149, v151, a3);
  if ((v103 & 0x10000) == 0)
  {
LABEL_243:
    if ((v103 & 0x20000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_356;
  }

LABEL_350:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v152 = *(a1 + 440);
  *v4 = 914;
  v153 = *(v152 + 20);
  v4[2] = v153;
  if (v153 > 0x7F)
  {
    v154 = sub_19575D0(v153, v4 + 2);
  }

  else
  {
    v154 = v4 + 3;
  }

  v4 = sub_18859C0(v152, v154, a3);
  if ((v103 & 0x20000) == 0)
  {
LABEL_244:
    if ((v103 & 0x40000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_362;
  }

LABEL_356:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v155 = *(a1 + 448);
  *v4 = 922;
  v156 = *(v155 + 20);
  v4[2] = v156;
  if (v156 > 0x7F)
  {
    v157 = sub_19575D0(v156, v4 + 2);
  }

  else
  {
    v157 = v4 + 3;
  }

  v4 = sub_188A1B8(v155, v157, a3);
  if ((v103 & 0x40000) == 0)
  {
LABEL_245:
    if ((v103 & 0x80000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_368;
  }

LABEL_362:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v158 = *(a1 + 456);
  *v4 = 946;
  v159 = *(v158 + 20);
  v4[2] = v159;
  if (v159 > 0x7F)
  {
    v160 = sub_19575D0(v159, v4 + 2);
  }

  else
  {
    v160 = v4 + 3;
  }

  v4 = sub_18B1004(v158, v160, a3);
  if ((v103 & 0x80000) == 0)
  {
LABEL_246:
    if ((v103 & 0x100000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_374;
  }

LABEL_368:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v161 = *(a1 + 464);
  *v4 = 954;
  v162 = *(v161 + 20);
  v4[2] = v162;
  if (v162 > 0x7F)
  {
    v163 = sub_19575D0(v162, v4 + 2);
  }

  else
  {
    v163 = v4 + 3;
  }

  v4 = sub_1895194(v161, v163, a3);
  if ((v103 & 0x100000) == 0)
  {
LABEL_247:
    if ((v103 & 0x200000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_380;
  }

LABEL_374:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v164 = *(a1 + 472);
  *v4 = 962;
  v165 = *(v164 + 16);
  v4[2] = v165;
  if (v165 > 0x7F)
  {
    v166 = sub_19575D0(v165, v4 + 2);
  }

  else
  {
    v166 = v4 + 3;
  }

  v4 = sub_18A9658(v164, v166, a3);
  if ((v103 & 0x200000) == 0)
  {
LABEL_248:
    if ((v103 & 0x400000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_386;
  }

LABEL_380:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v167 = *(a1 + 480);
  *v4 = 978;
  v168 = *(v167 + 16);
  v4[2] = v168;
  if (v168 > 0x7F)
  {
    v169 = sub_19575D0(v168, v4 + 2);
  }

  else
  {
    v169 = v4 + 3;
  }

  v4 = sub_18E8ED4(v167, v169, a3);
  if ((v103 & 0x400000) == 0)
  {
LABEL_249:
    if ((v103 & 0x800000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_392;
  }

LABEL_386:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v170 = *(a1 + 488);
  *v4 = 986;
  v171 = *(v170 + 20);
  v4[2] = v171;
  if (v171 > 0x7F)
  {
    v172 = sub_19575D0(v171, v4 + 2);
  }

  else
  {
    v172 = v4 + 3;
  }

  v4 = sub_18E9954(v170, v172, a3);
  if ((v103 & 0x800000) == 0)
  {
LABEL_250:
    if ((v103 & 0x1000000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_398;
  }

LABEL_392:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v173 = *(a1 + 496);
  *v4 = 994;
  v174 = *(v173 + 20);
  v4[2] = v174;
  if (v174 > 0x7F)
  {
    v175 = sub_19575D0(v174, v4 + 2);
  }

  else
  {
    v175 = v4 + 3;
  }

  v4 = sub_18E51CC(v173, v175, a3);
  if ((v103 & 0x1000000) == 0)
  {
LABEL_251:
    if ((v103 & 0x2000000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_404;
  }

LABEL_398:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v176 = *(a1 + 504);
  *v4 = 1010;
  v177 = *(v176 + 40);
  v4[2] = v177;
  if (v177 > 0x7F)
  {
    v178 = sub_19575D0(v177, v4 + 2);
  }

  else
  {
    v178 = v4 + 3;
  }

  v4 = sub_18EA844(v176, v178, a3);
  if ((v103 & 0x2000000) == 0)
  {
LABEL_252:
    if ((v103 & 0x4000000) == 0)
    {
      goto LABEL_416;
    }

    goto LABEL_410;
  }

LABEL_404:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v179 = *(a1 + 512);
  *v4 = 1018;
  v180 = *(v179 + 16);
  v4[2] = v180;
  if (v180 > 0x7F)
  {
    v181 = sub_19575D0(v180, v4 + 2);
  }

  else
  {
    v181 = v4 + 3;
  }

  v4 = sub_18AB2F4(v179, v181, a3);
  if ((v103 & 0x4000000) != 0)
  {
LABEL_410:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v182 = *(a1 + 520);
    *v4 = 1154;
    v183 = *(v182 + 20);
    v4[2] = v183;
    if (v183 > 0x7F)
    {
      v184 = sub_19575D0(v183, v4 + 2);
    }

    else
    {
      v184 = v4 + 3;
    }

    v4 = sub_18AC6B8(v182, v184, a3);
  }

LABEL_416:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 1050, v4, a3);
  }

  v185 = *(a1 + 8);
  if ((v185 & 1) == 0)
  {
    return v4;
  }

  v187 = v185 & 0xFFFFFFFFFFFFFFFCLL;
  v188 = *(v187 + 31);
  if (v188 < 0)
  {
    v189 = *(v187 + 8);
    v188 = *(v187 + 16);
  }

  else
  {
    v189 = (v187 + 8);
  }

  if ((*a3 - v4) >= v188)
  {
    v190 = v188;
    memcpy(v4, v189, v188);
    v4 += v190;
    return v4;
  }

  return sub_1957130(a3, v189, v188, v4);
}