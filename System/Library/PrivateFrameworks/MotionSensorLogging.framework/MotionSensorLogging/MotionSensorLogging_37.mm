uint64_t CMMsl::KappaRemoteAudioResult::hash_value(CMMsl::KappaRemoteAudioResult *this)
{
  v1 = *(this + 204);
  if (v1)
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x10) != 0)
  {
    v131 = *(this + 10);
  }

  else
  {
    v131 = 0;
  }

  v3 = *(this + 53);
  if ((v3 & 2) == 0)
  {
    v130 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_9;
    }

LABEL_153:
    v129 = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_154;
  }

  v130 = *(this + 188);
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_153;
  }

LABEL_9:
  v4 = *(this + 27);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v129 = v5;
  if ((v3 & 4) != 0)
  {
LABEL_12:
    v128 = *(this + 189);
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_155;
  }

LABEL_154:
  v128 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_13:
    v127 = *(this + 2);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_14;
    }

LABEL_156:
    v126 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_17;
    }

LABEL_157:
    v125 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_20;
    }

LABEL_158:
    v124 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_23;
    }

LABEL_159:
    v123 = 0;
    if ((v1 & 0x400000000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_160;
  }

LABEL_155:
  v127 = 0;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_156;
  }

LABEL_14:
  v6 = *(this + 28);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v126 = v7;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_157;
  }

LABEL_17:
  v8 = *(this + 20);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v125 = v9;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_158;
  }

LABEL_20:
  v10 = *(this + 12);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v124 = v11;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_23:
  v12 = *(this + 32);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v123 = v13;
  if ((v1 & 0x400000000000000) != 0)
  {
LABEL_26:
    v122 = *(this + 181);
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_161;
  }

LABEL_160:
  v122 = 0;
  if ((v1 & 0x400000000) != 0)
  {
LABEL_27:
    v121 = *(this + 157);
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_162;
  }

LABEL_161:
  v121 = 0;
  if ((v3 & 0x400) != 0)
  {
LABEL_28:
    v120 = *(this + 197);
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_163;
  }

LABEL_162:
  v120 = 0;
  if ((v1 & 0x40000000000) != 0)
  {
LABEL_29:
    v119 = *(this + 165);
    if ((v1 & 0x4000000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_164;
  }

LABEL_163:
  v119 = 0;
  if ((v1 & 0x4000000000000) != 0)
  {
LABEL_30:
    v118 = *(this + 173);
    if ((v3 & 8) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_165;
  }

LABEL_164:
  v118 = 0;
  if ((v3 & 8) != 0)
  {
LABEL_31:
    v117 = *(this + 190);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_32;
    }

LABEL_166:
    v116 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_35;
    }

LABEL_167:
    v115 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_168:
    v114 = 0;
    if ((v1 & 0x4000000000000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_169;
  }

LABEL_165:
  v117 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_166;
  }

LABEL_32:
  v14 = *(this + 24);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  v116 = v15;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_167;
  }

LABEL_35:
  v16 = *(this + 16);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  v115 = v17;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_168;
  }

LABEL_38:
  v18 = *(this + 36);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  v114 = v19;
  if ((v1 & 0x4000000000000000) != 0)
  {
LABEL_41:
    v113 = *(this + 185);
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

LABEL_169:
  v113 = 0;
  if ((v1 & 0x4000000000) != 0)
  {
LABEL_42:
    v112 = *(this + 161);
    if ((v3 & 0x4000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_171;
  }

LABEL_170:
  v112 = 0;
  if ((v3 & 0x4000) != 0)
  {
LABEL_43:
    v111 = *(this + 201);
    if ((v1 & 0x400000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_172;
  }

LABEL_171:
  v111 = 0;
  if ((v1 & 0x400000000000) != 0)
  {
LABEL_44:
    v110 = *(this + 169);
    if ((v1 & 0x40000000000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_173;
  }

LABEL_172:
  v110 = 0;
  if ((v1 & 0x40000000000000) != 0)
  {
LABEL_45:
    v109 = *(this + 177);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_174;
  }

LABEL_173:
  v109 = 0;
  if ((v3 & 0x40) != 0)
  {
LABEL_46:
    v108 = *(this + 193);
    if ((v1 & 4) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_175;
  }

LABEL_174:
  v108 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_47:
    v107 = *(this + 3);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_48;
    }

LABEL_176:
    v106 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_51;
    }

LABEL_177:
    v105 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_54;
    }

LABEL_178:
    v104 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_57;
    }

LABEL_179:
    v103 = 0;
    if ((v1 & 0x800000000000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_180;
  }

LABEL_175:
  v107 = 0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_176;
  }

LABEL_48:
  v20 = *(this + 29);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  v106 = v21;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_177;
  }

LABEL_51:
  v22 = *(this + 21);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  v105 = v23;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_178;
  }

LABEL_54:
  v24 = *(this + 13);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  v104 = v25;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_179;
  }

LABEL_57:
  v26 = *(this + 33);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  v103 = v27;
  if ((v1 & 0x800000000000000) != 0)
  {
LABEL_60:
    v102 = *(this + 182);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_181;
  }

LABEL_180:
  v102 = 0;
  if ((v1 & 0x800000000) != 0)
  {
LABEL_61:
    v101 = *(this + 158);
    if ((v3 & 0x800) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_182;
  }

LABEL_181:
  v101 = 0;
  if ((v3 & 0x800) != 0)
  {
LABEL_62:
    v100 = *(this + 198);
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_183;
  }

LABEL_182:
  v100 = 0;
  if ((v1 & 0x80000000000) != 0)
  {
LABEL_63:
    v99 = *(this + 166);
    if ((v1 & 0x8000000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_184;
  }

LABEL_183:
  v99 = 0;
  if ((v1 & 0x8000000000000) != 0)
  {
LABEL_64:
    v98 = *(this + 174);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_185;
  }

LABEL_184:
  v98 = 0;
  if ((v3 & 0x10) != 0)
  {
LABEL_65:
    v97 = *(this + 191);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_66;
    }

LABEL_186:
    v96 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_69;
    }

LABEL_187:
    v95 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_72;
    }

LABEL_188:
    v94 = 0;
    if (v1 < 0)
    {
      goto LABEL_75;
    }

    goto LABEL_189;
  }

LABEL_185:
  v97 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_186;
  }

LABEL_66:
  v28 = *(this + 25);
  v29 = LODWORD(v28);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  v96 = v29;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_187;
  }

LABEL_69:
  v30 = *(this + 17);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  v95 = v31;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_188;
  }

LABEL_72:
  v32 = *(this + 37);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  v94 = v33;
  if (v1 < 0)
  {
LABEL_75:
    v93 = *(this + 186);
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_190;
  }

LABEL_189:
  v93 = 0;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_76:
    v92 = *(this + 162);
    if ((v3 & 0x8000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_191;
  }

LABEL_190:
  v92 = 0;
  if ((v3 & 0x8000) != 0)
  {
LABEL_77:
    v91 = *(this + 202);
    if ((v1 & 0x800000000000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_192;
  }

LABEL_191:
  v91 = 0;
  if ((v1 & 0x800000000000) != 0)
  {
LABEL_78:
    v90 = *(this + 170);
    if ((v1 & 0x80000000000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_193;
  }

LABEL_192:
  v90 = 0;
  if ((v1 & 0x80000000000000) != 0)
  {
LABEL_79:
    v89 = *(this + 178);
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_194;
  }

LABEL_193:
  v89 = 0;
  if ((v3 & 0x80) != 0)
  {
LABEL_80:
    v88 = *(this + 194);
    if ((v1 & 8) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_195;
  }

LABEL_194:
  v88 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_81:
    v87 = *(this + 4);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_196:
    v86 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_85;
    }

LABEL_197:
    v85 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_88;
    }

LABEL_198:
    v84 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_91;
    }

LABEL_199:
    v83 = 0;
    if ((v1 & 0x1000000000000000) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_200;
  }

LABEL_195:
  v87 = 0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_196;
  }

LABEL_82:
  v34 = *(this + 30);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  v86 = v35;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_197;
  }

LABEL_85:
  v36 = *(this + 22);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  v85 = v37;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_198;
  }

LABEL_88:
  v38 = *(this + 14);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  v84 = v39;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_199;
  }

LABEL_91:
  v40 = *(this + 34);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  v83 = v41;
  if ((v1 & 0x1000000000000000) != 0)
  {
LABEL_94:
    v82 = *(this + 183);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_201;
  }

LABEL_200:
  v82 = 0;
  if ((v1 & 0x1000000000) != 0)
  {
LABEL_95:
    v81 = *(this + 159);
    if ((v3 & 0x1000) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_202;
  }

LABEL_201:
  v81 = 0;
  if ((v3 & 0x1000) != 0)
  {
LABEL_96:
    v80 = *(this + 199);
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_97;
    }

    goto LABEL_203;
  }

LABEL_202:
  v80 = 0;
  if ((v1 & 0x100000000000) != 0)
  {
LABEL_97:
    v79 = *(this + 167);
    if ((v1 & 0x10000000000000) != 0)
    {
      goto LABEL_98;
    }

    goto LABEL_204;
  }

LABEL_203:
  v79 = 0;
  if ((v1 & 0x10000000000000) != 0)
  {
LABEL_98:
    v78 = *(this + 175);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_99;
    }

    goto LABEL_205;
  }

LABEL_204:
  v78 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_99:
    v42 = *(this + 192);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_100;
    }

LABEL_206:
    v44 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_104;
    }

LABEL_207:
    v46 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_108;
    }

LABEL_208:
    v48 = 0;
    if (v3)
    {
      goto LABEL_112;
    }

    goto LABEL_209;
  }

LABEL_205:
  v42 = 0;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_206;
  }

LABEL_100:
  v43 = *(this + 26);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = LODWORD(v43);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_207;
  }

LABEL_104:
  v45 = *(this + 18);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v46 = LODWORD(v45);
  }

  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_208;
  }

LABEL_108:
  v47 = *(this + 38);
  if (v47 == 0.0)
  {
    v48 = 0;
  }

  else
  {
    v48 = LODWORD(v47);
  }

  if (v3)
  {
LABEL_112:
    v49 = *(this + 187);
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_113;
    }

    goto LABEL_210;
  }

LABEL_209:
  v49 = 0;
  if ((v1 & 0x10000000000) != 0)
  {
LABEL_113:
    v50 = *(this + 163);
    if ((v3 & 0x10000) != 0)
    {
      goto LABEL_114;
    }

    goto LABEL_211;
  }

LABEL_210:
  v50 = 0;
  if ((v3 & 0x10000) != 0)
  {
LABEL_114:
    v51 = *(this + 203);
    if ((v1 & 0x1000000000000) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_212;
  }

LABEL_211:
  v51 = 0;
  if ((v1 & 0x1000000000000) != 0)
  {
LABEL_115:
    v52 = *(this + 171);
    if ((v1 & 0x100000000000000) != 0)
    {
      goto LABEL_116;
    }

    goto LABEL_213;
  }

LABEL_212:
  v52 = 0;
  if ((v1 & 0x100000000000000) != 0)
  {
LABEL_116:
    v53 = *(this + 179);
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_117;
    }

    goto LABEL_214;
  }

LABEL_213:
  v53 = 0;
  if ((v3 & 0x100) != 0)
  {
LABEL_117:
    v54 = *(this + 195);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_118;
    }

LABEL_215:
    v56 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_122;
    }

LABEL_216:
    v58 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_126;
    }

LABEL_217:
    v60 = 0;
    if ((v1 & 0x200000000000000) != 0)
    {
      goto LABEL_130;
    }

    goto LABEL_218;
  }

LABEL_214:
  v54 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_215;
  }

LABEL_118:
  v55 = *(this + 19);
  if (v55 == 0.0)
  {
    v56 = 0;
  }

  else
  {
    v56 = LODWORD(v55);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_216;
  }

LABEL_122:
  v57 = *(this + 11);
  if (v57 == 0.0)
  {
    v58 = 0;
  }

  else
  {
    v58 = LODWORD(v57);
  }

  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_217;
  }

LABEL_126:
  v59 = *(this + 31);
  if (v59 == 0.0)
  {
    v60 = 0;
  }

  else
  {
    v60 = LODWORD(v59);
  }

  if ((v1 & 0x200000000000000) != 0)
  {
LABEL_130:
    v61 = *(this + 180);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_131;
    }

    goto LABEL_219;
  }

LABEL_218:
  v61 = 0;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_131:
    v62 = *(this + 156);
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_132;
    }

    goto LABEL_220;
  }

LABEL_219:
  v62 = 0;
  if ((v3 & 0x200) != 0)
  {
LABEL_132:
    v63 = *(this + 196);
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_133;
    }

    goto LABEL_221;
  }

LABEL_220:
  v63 = 0;
  if ((v1 & 0x20000000000) != 0)
  {
LABEL_133:
    v64 = *(this + 164);
    if ((v1 & 0x2000000000000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_222;
  }

LABEL_221:
  v64 = 0;
  if ((v1 & 0x2000000000000) != 0)
  {
LABEL_134:
    v65 = *(this + 172);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_135;
    }

LABEL_223:
    v67 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_139;
    }

LABEL_224:
    v69 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_143;
    }

LABEL_225:
    v71 = 0;
    if ((v1 & 0x2000000000000000) != 0)
    {
      goto LABEL_147;
    }

    goto LABEL_226;
  }

LABEL_222:
  v65 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_223;
  }

LABEL_135:
  v66 = *(this + 23);
  if (v66 == 0.0)
  {
    v67 = 0;
  }

  else
  {
    v67 = LODWORD(v66);
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_224;
  }

LABEL_139:
  v68 = *(this + 15);
  if (v68 == 0.0)
  {
    v69 = 0;
  }

  else
  {
    v69 = LODWORD(v68);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_225;
  }

LABEL_143:
  v70 = *(this + 35);
  if (v70 == 0.0)
  {
    v71 = 0;
  }

  else
  {
    v71 = LODWORD(v70);
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
LABEL_147:
    v72 = *(this + 184);
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_227;
  }

LABEL_226:
  v72 = 0;
  if ((v1 & 0x2000000000) != 0)
  {
LABEL_148:
    v73 = *(this + 160);
    if ((v3 & 0x2000) != 0)
    {
      goto LABEL_149;
    }

    goto LABEL_228;
  }

LABEL_227:
  v73 = 0;
  if ((v3 & 0x2000) != 0)
  {
LABEL_149:
    v74 = *(this + 200);
    if ((v1 & 0x200000000000) != 0)
    {
      goto LABEL_150;
    }

LABEL_229:
    v75 = 0;
    if ((v1 & 0x20000000000000) != 0)
    {
      goto LABEL_151;
    }

LABEL_230:
    v76 = 0;
    return v131 ^ v2 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v42 ^ v44 ^ v46 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v56 ^ v58 ^ v60 ^ v61 ^ v62 ^ v63 ^ v64 ^ v65 ^ v67 ^ v69 ^ v71 ^ v72 ^ v73 ^ v74 ^ v75 ^ v76;
  }

LABEL_228:
  v74 = 0;
  if ((v1 & 0x200000000000) == 0)
  {
    goto LABEL_229;
  }

LABEL_150:
  v75 = *(this + 168);
  if ((v1 & 0x20000000000000) == 0)
  {
    goto LABEL_230;
  }

LABEL_151:
  v76 = *(this + 176);
  return v131 ^ v2 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v42 ^ v44 ^ v46 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v56 ^ v58 ^ v60 ^ v61 ^ v62 ^ v63 ^ v64 ^ v65 ^ v67 ^ v69 ^ v71 ^ v72 ^ v73 ^ v74 ^ v75 ^ v76;
}

void CMMsl::KappaRoads::~KappaRoads(CMMsl::KappaRoads *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaRoads::KappaRoads(uint64_t this, const CMMsl::KappaRoads *a2)
{
  *this = &unk_286C21490;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 32) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 32))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 32) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 7);
    *(this + 32) = v3 | 8;
    *(this + 28) = v7;
    return this;
  }

  v6 = *(a2 + 6);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 24) = v6;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::KappaRoads::operator=(uint64_t a1, const CMMsl::KappaRoads *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRoads::KappaRoads(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    *&v3 = *(a1 + 28);
    *(a1 + 28) = v9;
    v9 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaRoads *a2, CMMsl::KappaRoads *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  LODWORD(v5) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  return result;
}

float CMMsl::KappaRoads::KappaRoads(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21490;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

{
  *a1 = &unk_286C21490;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t CMMsl::KappaRoads::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C21490;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    *(a2 + 32) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10 = v6;
    LODWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v3;
    v11 = v4;
    v7 = *(a1 + 28);
    *(a1 + 28) = v5;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::KappaRoads::formatText(CMMsl::KappaRoads *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "distanceToNearestRoad", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 7);
  PB::TextFormatter::format(a2, "roadClass");
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(this + 1);
  PB::TextFormatter::format(a2, "searchTimestamp");
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaRoads::readFrom(CMMsl::KappaRoads *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 6) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 8u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v54 = 0;
          v55 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v56 = (v32 + v31);
          v57 = v2 - v31;
          v58 = v31 + 1;
          while (1)
          {
            if (!v57)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_87;
            }

            v59 = v58;
            v60 = *v56;
            *(a2 + 1) = v59;
            v35 |= (v60 & 0x7F) << v54;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            ++v56;
            --v57;
            v58 = v59 + 1;
            v14 = v55++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_86;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_86:
          v2 = v59;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_87:
        *(this + 7) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 2u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v61 = 0;
          v62 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v2 = *(a2 + 1);
          }

          v63 = (v40 + v39);
          v64 = v2 - v39;
          v65 = v39 + 1;
          while (1)
          {
            if (!v64)
            {
              v43 = 0;
              *(a2 + 24) = 1;
              goto LABEL_91;
            }

            v66 = v65;
            v67 = *v63;
            *(a2 + 1) = v66;
            v43 |= (v67 & 0x7F) << v61;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            ++v63;
            --v64;
            v65 = v66 + 1;
            v14 = v62++ > 8;
            if (v14)
            {
              v43 = 0;
              goto LABEL_90;
            }
          }

          if (*(a2 + 24))
          {
            v43 = 0;
          }

LABEL_90:
          v2 = v66;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v2 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              v43 = 0;
              break;
            }
          }
        }

LABEL_91:
        *(this + 2) = v43;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v49 = (v24 + v23);
          v50 = v2 - v23;
          v51 = v23 + 1;
          while (1)
          {
            if (!v50)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_83;
            }

            v52 = v51;
            v53 = *v49;
            *(a2 + 1) = v52;
            v27 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_82;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_82:
          v2 = v52;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_83:
        *(this + 1) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::KappaRoads::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 24));
      if ((*(v3 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v3 + 28);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaRoads::hash_value(CMMsl::KappaRoads *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    v1 = *(this + 2);
    if (*(this + 32))
    {
LABEL_3:
      v2 = *(this + 1);
      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 32))
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    v4 = LODWORD(v3);
    if (v3 == 0.0)
    {
      v4 = 0;
    }

    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v5 = 0;
    return v2 ^ v1 ^ v4 ^ v5;
  }

LABEL_10:
  v4 = 0;
  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = *(this + 7);
  return v2 ^ v1 ^ v4 ^ v5;
}

void CMMsl::KappaRoadsResult::~KappaRoadsResult(CMMsl::KappaRoadsResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaRoadsResult::KappaRoadsResult(uint64_t this, const CMMsl::KappaRoadsResult *a2)
{
  *this = &unk_286C214C8;
  *(this + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 40) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 8u;
    *(this + 40) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 9);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 36) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 2);
      *(this + 40) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 40) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::KappaRoadsResult::operator=(uint64_t a1, const CMMsl::KappaRoadsResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRoadsResult::KappaRoadsResult(&v9, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v4 = *(a1 + 36);
    LODWORD(v3) = *(a1 + 40);
    v5 = v14;
    *(a1 + 36) = v13;
    *(a1 + 40) = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v6;
    v13 = v4;
    v14 = v3;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaRoadsResult *a2, CMMsl::KappaRoadsResult *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  return result;
}

float CMMsl::KappaRoadsResult::KappaRoadsResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C214C8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C214C8;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KappaRoadsResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12 = &unk_286C214C8;
    v4 = *(a2 + 36);
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    v14 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;
    v15 = v7;
    v8 = *(a1 + 40);
    v16 = *(a1 + 36);
    v17 = v8;
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);
    *(a1 + 36) = v4;
    *(a1 + 40) = v3;
    *(a1 + 24) = v5;
    *(a1 + 8) = v10;
    v13 = v9;
    PB::Base::~Base(&v12);
  }

  return a1;
}

uint64_t CMMsl::KappaRoadsResult::formatText(CMMsl::KappaRoadsResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "distanceToNearestRoad", *(this + 8));
    v5 = *(this + 40);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 1);
  PB::TextFormatter::format(a2, "epochFirstTimestamp");
  v5 = *(this + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "epochLastTimestamp");
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v9 = *(this + 9);
  PB::TextFormatter::format(a2, "roadClass");
  if ((*(this + 40) & 4) != 0)
  {
LABEL_6:
    v6 = *(this + 3);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaRoadsResult::readFrom(CMMsl::KappaRoadsResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 103)
    {
      if (v22 == 101)
      {
        *(this + 40) |= 4u;
        v47 = *(a2 + 1);
        v2 = *(a2 + 2);
        v48 = *a2;
        if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
        {
          v69 = 0;
          v70 = 0;
          v51 = 0;
          if (v2 <= v47)
          {
            v2 = *(a2 + 1);
          }

          v71 = (v48 + v47);
          v72 = v2 - v47;
          v73 = v47 + 1;
          while (1)
          {
            if (!v72)
            {
              v51 = 0;
              *(a2 + 24) = 1;
              goto LABEL_108;
            }

            v74 = v73;
            v75 = *v71;
            *(a2 + 1) = v74;
            v51 |= (v75 & 0x7F) << v69;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            ++v71;
            --v72;
            v73 = v74 + 1;
            v14 = v70++ > 8;
            if (v14)
            {
              v51 = 0;
              goto LABEL_107;
            }
          }

          if (*(a2 + 24))
          {
            v51 = 0;
          }

LABEL_107:
          v2 = v74;
        }

        else
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = (v48 + v47);
          v53 = v47 + 1;
          while (1)
          {
            v2 = v53;
            *(a2 + 1) = v53;
            v54 = *v52++;
            v51 |= (v54 & 0x7F) << v49;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v53;
            v14 = v50++ > 8;
            if (v14)
            {
              v51 = 0;
              break;
            }
          }
        }

LABEL_108:
        *(this + 3) = v51;
        goto LABEL_19;
      }

      if (v22 == 103)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 8) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 0x68:
          *(this + 40) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v57 = (v32 + v31);
            v58 = v2 - v31;
            v59 = v31 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
              }

              v60 = v59;
              v61 = *v57;
              *(a2 + 1) = v60;
              v35 |= (v61 & 0x7F) << v55;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              ++v57;
              --v58;
              v59 = v60 + 1;
              v14 = v56++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_99:
            v2 = v60;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            while (1)
            {
              v2 = v37;
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                break;
              }
            }
          }

LABEL_100:
          *(this + 9) = v35;
          goto LABEL_19;
        case 0xC9:
          *(this + 40) |= 1u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v64 = (v40 + v39);
            v65 = v2 - v39;
            v66 = v39 + 1;
            while (1)
            {
              if (!v65)
              {
                v43 = 0;
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              v67 = v66;
              v68 = *v64;
              *(a2 + 1) = v67;
              v43 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v64;
              --v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                v43 = 0;
                goto LABEL_103;
              }
            }

            if (*(a2 + 24))
            {
              v43 = 0;
            }

LABEL_103:
            v2 = v67;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = (v40 + v39);
            v45 = v39 + 1;
            while (1)
            {
              v2 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
                v43 = 0;
                break;
              }
            }
          }

LABEL_104:
          *(this + 1) = v43;
          goto LABEL_19;
        case 0xCA:
          *(this + 40) |= 2u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v78 = (v24 + v23);
            v79 = v2 - v23;
            v80 = v23 + 1;
            while (1)
            {
              if (!v79)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v81 = v80;
              v82 = *v78;
              *(a2 + 1) = v81;
              v27 |= (v82 & 0x7F) << v76;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              ++v78;
              --v79;
              v80 = v81 + 1;
              v14 = v77++ > 8;
              if (v14)
              {
                v27 = 0;
                goto LABEL_111;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_111:
            v2 = v81;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                v27 = 0;
                break;
              }
            }
          }

LABEL_112:
          *(this + 2) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v83 = 0;
      return v83 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::KappaRoadsResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 4) != 0)
  {
    v5 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = *(v3 + 8);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaRoadsResult::hash_value(CMMsl::KappaRoadsResult *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    v1 = 0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v3 = 0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v1 = *(this + 3);
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = *(this + 8);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_6:
    v4 = *(this + 9);
    if (*(this + 40))
    {
      goto LABEL_7;
    }

LABEL_12:
    v5 = 0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v6 = 0;
    return v3 ^ v1 ^ v4 ^ v5 ^ v6;
  }

LABEL_11:
  v4 = 0;
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v5 = *(this + 1);
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v6 = *(this + 2);
  return v3 ^ v1 ^ v4 ^ v5 ^ v6;
}

void CMMsl::KappaRolloverCrashResult::~KappaRolloverCrashResult(CMMsl::KappaRolloverCrashResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KappaRolloverCrashResult::KappaRolloverCrashResult(CMMsl::KappaRolloverCrashResult *this, const CMMsl::KappaRolloverCrashResult *a2)
{
  v2 = 0;
  v3 = (this + 372);
  v4 = (a2 + 372);
  *this = &unk_286C21500;
  *(this + 380) = 0;
  *(this + 372) = 0;
  if (*(a2 + 372))
  {
    v5 = *(a2 + 1);
    v2 = 1;
    *v3 = 1;
    *(this + 1) = v5;
  }

  v6 = *(a2 + 380);
  if ((v6 & 0x20000000) != 0)
  {
    v8 = *(a2 + 366);
    v7 = 0x20000000;
    *(this + 380) = 0x20000000;
    *(this + 366) = v8;
    if ((*(a2 + 380) & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if ((v6 & 0x40000000) != 0)
  {
LABEL_7:
    v9 = *(a2 + 367);
    v7 |= 0x40000000uLL;
    *(this + 380) = v7;
    *(this + 367) = v9;
  }

LABEL_8:
  v10 = *v4;
  if ((*v4 & 0x2000000000000) != 0)
  {
    result = *(a2 + 52);
    v2 |= 0x2000000000000uLL;
    *v3 = v2;
    *(this + 52) = result;
    v10 = *v4;
  }

  if ((v10 & 0x40000) != 0)
  {
    result = *(a2 + 21);
    v2 |= 0x40000uLL;
    *v3 = v2;
    *(this + 21) = result;
  }

  v12 = *(a2 + 380);
  if ((v12 & 0x20000) != 0)
  {
    result = *(a2 + 84);
    v7 |= 0x20000uLL;
    *(this + 380) = v7;
    *(this + 84) = result;
    v12 = *(a2 + 380);
    if ((v12 & 0x8000000) == 0)
    {
LABEL_14:
      if ((v12 & 0x1000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_151;
    }
  }

  else if ((v12 & 0x8000000) == 0)
  {
    goto LABEL_14;
  }

  v39 = *(a2 + 364);
  v7 |= 0x8000000uLL;
  *(this + 380) = v7;
  *(this + 364) = v39;
  v12 = *(a2 + 380);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_15:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_151:
  v40 = *(a2 + 361);
  v7 |= 0x1000000uLL;
  *(this + 380) = v7;
  *(this + 361) = v40;
  if ((*(a2 + 380) & 0x800000) != 0)
  {
LABEL_16:
    v13 = *(a2 + 360);
    v7 |= 0x800000uLL;
    *(this + 380) = v7;
    *(this + 360) = v13;
  }

LABEL_17:
  if ((*(a2 + 375) & 0x10) != 0)
  {
    v14 = *(a2 + 31);
    v2 |= 0x10000000uLL;
    *v3 = v2;
    *(this + 31) = v14;
  }

  if ((*(a2 + 383) & 4) != 0)
  {
    v15 = *(a2 + 363);
    v7 |= 0x4000000uLL;
    *(this + 380) = v7;
    *(this + 363) = v15;
  }

  v16 = *v4;
  if ((*v4 & 0x1000000) != 0)
  {
    result = *(a2 + 27);
    v2 |= 0x1000000uLL;
    *v3 = v2;
    *(this + 27) = result;
    v16 = *v4;
    if ((*v4 & 0x100000000000000) == 0)
    {
LABEL_23:
      if ((v16 & 0x80000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_155;
    }
  }

  else if ((v16 & 0x100000000000000) == 0)
  {
    goto LABEL_23;
  }

  result = *(a2 + 59);
  v2 |= 0x100000000000000uLL;
  *v3 = v2;
  *(this + 59) = result;
  v16 = *v4;
  if ((*v4 & 0x80000000000000) == 0)
  {
LABEL_24:
    if ((v16 & 0x200000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_156;
  }

LABEL_155:
  result = *(a2 + 58);
  v2 |= 0x80000000000000uLL;
  *v3 = v2;
  *(this + 58) = result;
  v16 = *v4;
  if ((*v4 & 0x200000000000000) == 0)
  {
LABEL_25:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = *(a2 + 60);
  v2 |= 0x200000000000000uLL;
  *v3 = v2;
  *(this + 60) = result;
  v16 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_26:
    if ((v16 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_158;
  }

LABEL_157:
  result = *(a2 + 9);
  v2 |= 0x40uLL;
  *v3 = v2;
  *(this + 9) = result;
  v16 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_27:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_158:
  result = *(a2 + 4);
  v2 |= 2uLL;
  *v3 = v2;
  *(this + 4) = result;
  if ((*v4 & 0x8000) != 0)
  {
LABEL_28:
    result = *(a2 + 18);
    v2 |= 0x8000uLL;
    *v3 = v2;
    *(this + 18) = result;
  }

LABEL_29:
  v17 = *(a2 + 380);
  if ((v17 & 0x100000000) != 0)
  {
    v41 = *(a2 + 369);
    v7 |= 0x100000000uLL;
    *(this + 380) = v7;
    *(this + 369) = v41;
    v17 = *(a2 + 380);
    if ((v17 & 0x2000000) == 0)
    {
LABEL_31:
      if ((v17 & 0x10000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((v17 & 0x2000000) == 0)
  {
    goto LABEL_31;
  }

  v42 = *(a2 + 362);
  v7 |= 0x2000000uLL;
  *(this + 380) = v7;
  *(this + 362) = v42;
  if ((*(a2 + 380) & 0x10000000) != 0)
  {
LABEL_32:
    v18 = *(a2 + 365);
    v7 |= 0x10000000uLL;
    *(this + 380) = v7;
    *(this + 365) = v18;
  }

LABEL_33:
  v19 = *v4;
  if ((*v4 & 0x1000000000000000) != 0)
  {
    result = *(a2 + 63);
    v2 |= 0x1000000000000000uLL;
    *v3 = v2;
    *(this + 63) = result;
    v19 = *v4;
    if ((*v4 & 0x400000000000000) == 0)
    {
LABEL_35:
      if ((v19 & 0x800000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v19 & 0x400000000000000) == 0)
  {
    goto LABEL_35;
  }

  result = *(a2 + 61);
  v2 |= 0x400000000000000uLL;
  *v3 = v2;
  *(this + 61) = result;
  if ((*v4 & 0x800000000000000) != 0)
  {
LABEL_36:
    v20 = *(a2 + 62);
    v2 |= 0x800000000000000uLL;
    *v3 = v2;
    *(this + 62) = v20;
  }

LABEL_37:
  if ((*(a2 + 383) & 0x80) != 0)
  {
    v21 = *(a2 + 368);
    v7 |= 0x80000000uLL;
    *(this + 380) = v7;
    *(this + 368) = v21;
  }

  v22 = *v4;
  if ((*v4 & 0x2000000) != 0)
  {
    result = *(a2 + 28);
    v2 |= 0x2000000uLL;
    *v3 = v2;
    *(this + 28) = result;
    v22 = *v4;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    result = *(a2 + 64);
    v2 |= 0x2000000000000000uLL;
    *v3 = v2;
    *(this + 64) = result;
  }

  if ((*(a2 + 380) & 4) != 0)
  {
    result = *(a2 + 69);
    v7 |= 4uLL;
    *(this + 380) = v7;
    *(this + 69) = result;
  }

  v23 = *v4;
  if ((*v4 & 0x80000) != 0)
  {
    result = *(a2 + 22);
    v2 |= 0x80000uLL;
    *v3 = v2;
    *(this + 22) = result;
    v23 = *v4;
  }

  if ((v23 & 0x4000000000000) != 0)
  {
    result = *(a2 + 53);
    v2 |= 0x4000000000000uLL;
    *v3 = v2;
    *(this + 53) = result;
  }

  if ((*(a2 + 382) & 4) != 0)
  {
    result = *(a2 + 85);
    v7 |= 0x40000uLL;
    *(this + 380) = v7;
    *(this + 85) = result;
  }

  if ((*(a2 + 379) & 0x40) != 0)
  {
    result = *(a2 + 65);
    v2 |= 0x4000000000000000uLL;
    *v3 = v2;
    *(this + 65) = result;
  }

  if ((*(a2 + 380) & 8) != 0)
  {
    result = *(a2 + 70);
    v7 |= 8uLL;
    *(this + 380) = v7;
    *(this + 70) = result;
  }

  v24 = *v4;
  if ((*v4 & 0x100000) != 0)
  {
    result = *(a2 + 23);
    v2 |= 0x100000uLL;
    *v3 = v2;
    *(this + 23) = result;
    v24 = *v4;
  }

  if ((v24 & 0x8000000000000) != 0)
  {
    result = *(a2 + 54);
    v2 |= 0x8000000000000uLL;
    *v3 = v2;
    *(this + 54) = result;
  }

  if ((*(a2 + 382) & 8) != 0)
  {
    result = *(a2 + 86);
    v7 |= 0x80000uLL;
    *(this + 380) = v7;
    *(this + 86) = result;
  }

  if (*v4 < 0)
  {
    result = *(a2 + 66);
    v2 |= 0x8000000000000000;
    *v3 = v2;
    *(this + 66) = result;
  }

  if ((*(a2 + 380) & 0x10) != 0)
  {
    result = *(a2 + 71);
    v7 |= 0x10uLL;
    *(this + 380) = v7;
    *(this + 71) = result;
  }

  v25 = *v4;
  if ((*v4 & 0x200000) != 0)
  {
    result = *(a2 + 24);
    v2 |= 0x200000uLL;
    *v3 = v2;
    *(this + 24) = result;
    v25 = *v4;
  }

  if ((v25 & 0x10000000000000) != 0)
  {
    result = *(a2 + 55);
    v2 |= 0x10000000000000uLL;
    *v3 = v2;
    *(this + 55) = result;
  }

  if ((*(a2 + 382) & 0x10) != 0)
  {
    result = *(a2 + 87);
    v7 |= 0x100000uLL;
    *(this + 380) = v7;
    *(this + 87) = result;
  }

  v26 = *v4;
  if ((*v4 & 0x80) != 0)
  {
    result = *(a2 + 10);
    v2 |= 0x80uLL;
    *v3 = v2;
    *(this + 10) = result;
    v26 = *v4;
    if ((*v4 & 0x400) == 0)
    {
LABEL_73:
      if ((v26 & 0x200) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_168;
    }
  }

  else if ((v26 & 0x400) == 0)
  {
    goto LABEL_73;
  }

  result = *(a2 + 13);
  v2 |= 0x400uLL;
  *v3 = v2;
  *(this + 13) = result;
  v26 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_74:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_169;
  }

LABEL_168:
  result = *(a2 + 12);
  v2 |= 0x200uLL;
  *v3 = v2;
  *(this + 12) = result;
  v26 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_75:
    if ((v26 & 4) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_170;
  }

LABEL_169:
  result = *(a2 + 11);
  v2 |= 0x100uLL;
  *v3 = v2;
  *(this + 11) = result;
  v26 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_76:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_171;
  }

LABEL_170:
  result = *(a2 + 5);
  v2 |= 4uLL;
  *v3 = v2;
  *(this + 5) = result;
  v26 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_77:
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_172;
  }

LABEL_171:
  result = *(a2 + 8);
  v2 |= 0x20uLL;
  *v3 = v2;
  *(this + 8) = result;
  v26 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_78:
    if ((v26 & 8) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_173;
  }

LABEL_172:
  result = *(a2 + 7);
  v2 |= 0x10uLL;
  *v3 = v2;
  *(this + 7) = result;
  v26 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_79:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_174;
  }

LABEL_173:
  result = *(a2 + 6);
  v2 |= 8uLL;
  *v3 = v2;
  *(this + 6) = result;
  v26 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_80:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_175;
  }

LABEL_174:
  result = *(a2 + 14);
  v2 |= 0x800uLL;
  *v3 = v2;
  *(this + 14) = result;
  v26 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_81:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_176;
  }

LABEL_175:
  result = *(a2 + 17);
  v2 |= 0x4000uLL;
  *v3 = v2;
  *(this + 17) = result;
  v26 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_82:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_177;
  }

LABEL_176:
  result = *(a2 + 16);
  v2 |= 0x2000uLL;
  *v3 = v2;
  *(this + 16) = result;
  v26 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_83:
    if ((v26 & 0x10000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_178;
  }

LABEL_177:
  result = *(a2 + 15);
  v2 |= 0x1000uLL;
  *v3 = v2;
  *(this + 15) = result;
  v26 = *v4;
  if ((*v4 & 0x10000) == 0)
  {
LABEL_84:
    if ((v26 & 0x20000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_178:
  result = *(a2 + 19);
  v2 |= 0x10000uLL;
  *v3 = v2;
  *(this + 19) = result;
  if ((*v4 & 0x20000) != 0)
  {
LABEL_85:
    result = *(a2 + 20);
    v2 |= 0x20000uLL;
    *v3 = v2;
    *(this + 20) = result;
  }

LABEL_86:
  v27 = *(a2 + 380);
  if (v27)
  {
    result = *(a2 + 67);
    v7 |= 1uLL;
    *(this + 380) = v7;
    *(this + 67) = result;
    v27 = *(a2 + 380);
  }

  if ((v27 & 0x20) != 0)
  {
    result = *(a2 + 72);
    v7 |= 0x20uLL;
    *(this + 380) = v7;
    *(this + 72) = result;
  }

  v28 = *v4;
  if ((*v4 & 0x400000) != 0)
  {
    result = *(a2 + 25);
    v2 |= 0x400000uLL;
    *v3 = v2;
    *(this + 25) = result;
    v28 = *v4;
  }

  if ((v28 & 0x20000000000000) != 0)
  {
    result = *(a2 + 56);
    v2 |= 0x20000000000000uLL;
    *v3 = v2;
    *(this + 56) = result;
  }

  v29 = *(a2 + 380);
  if ((v29 & 0x200000) != 0)
  {
    result = *(a2 + 88);
    v7 |= 0x200000uLL;
    *(this + 380) = v7;
    *(this + 88) = result;
    v29 = *(a2 + 380);
    if ((v29 & 2) == 0)
    {
LABEL_96:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_96;
  }

  result = *(a2 + 68);
  v7 |= 2uLL;
  *(this + 380) = v7;
  *(this + 68) = result;
  if ((*(a2 + 380) & 0x40) != 0)
  {
LABEL_97:
    result = *(a2 + 73);
    v7 |= 0x40uLL;
    *(this + 380) = v7;
    *(this + 73) = result;
  }

LABEL_98:
  v30 = *v4;
  if ((*v4 & 0x800000) != 0)
  {
    result = *(a2 + 26);
    v2 |= 0x800000uLL;
    *v3 = v2;
    *(this + 26) = result;
    v30 = *v4;
  }

  if ((v30 & 0x40000000000000) != 0)
  {
    result = *(a2 + 57);
    v2 |= 0x40000000000000uLL;
    *v3 = v2;
    *(this + 57) = result;
  }

  if ((*(a2 + 382) & 0x40) != 0)
  {
    result = *(a2 + 89);
    v7 |= 0x400000uLL;
    *(this + 380) = v7;
    *(this + 89) = result;
  }

  v31 = *v4;
  if ((*v4 & 0x2000000000) != 0)
  {
    result = *(a2 + 40);
    v2 |= 0x2000000000uLL;
    *v3 = v2;
    *(this + 40) = result;
    v31 = *v4;
    if ((*v4 & 0x4000000000) == 0)
    {
LABEL_106:
      if ((v31 & 0x40000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_185;
    }
  }

  else if ((v31 & 0x4000000000) == 0)
  {
    goto LABEL_106;
  }

  result = *(a2 + 41);
  v2 |= 0x4000000000uLL;
  *v3 = v2;
  *(this + 41) = result;
  v31 = *v4;
  if ((*v4 & 0x40000000) == 0)
  {
LABEL_107:
    if ((v31 & 0x20000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_186;
  }

LABEL_185:
  result = *(a2 + 33);
  v2 |= 0x40000000uLL;
  *v3 = v2;
  *(this + 33) = result;
  v31 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_108:
    if ((v31 & 0x1000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_187;
  }

LABEL_186:
  result = *(a2 + 32);
  v2 |= 0x20000000uLL;
  *v3 = v2;
  *(this + 32) = result;
  v31 = *v4;
  if ((*v4 & 0x1000000000) == 0)
  {
LABEL_109:
    if ((v31 & 0x200000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_188;
  }

LABEL_187:
  result = *(a2 + 39);
  v2 |= 0x1000000000uLL;
  *v3 = v2;
  *(this + 39) = result;
  v31 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_110:
    if ((v31 & 0x100000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_189;
  }

LABEL_188:
  result = *(a2 + 36);
  v2 |= 0x200000000uLL;
  *v3 = v2;
  *(this + 36) = result;
  v31 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_111:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_190;
  }

LABEL_189:
  result = *(a2 + 35);
  v2 |= 0x100000000uLL;
  *v3 = v2;
  *(this + 35) = result;
  v31 = *v4;
  if ((*v4 & 0x80000000) == 0)
  {
LABEL_112:
    if ((v31 & 0x800000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_191;
  }

LABEL_190:
  result = *(a2 + 34);
  v2 |= 0x80000000uLL;
  *v3 = v2;
  *(this + 34) = result;
  v31 = *v4;
  if ((*v4 & 0x800000000000) == 0)
  {
LABEL_113:
    if ((v31 & 0x1000000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_192;
  }

LABEL_191:
  result = *(a2 + 50);
  v2 |= 0x800000000000uLL;
  *v3 = v2;
  *(this + 50) = result;
  v31 = *v4;
  if ((*v4 & 0x1000000000000) == 0)
  {
LABEL_114:
    if ((v31 & 0x10000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_193;
  }

LABEL_192:
  result = *(a2 + 51);
  v2 |= 0x1000000000000uLL;
  *v3 = v2;
  *(this + 51) = result;
  v31 = *v4;
  if ((*v4 & 0x10000000000) == 0)
  {
LABEL_115:
    if ((v31 & 0x8000000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_194;
  }

LABEL_193:
  result = *(a2 + 43);
  v2 |= 0x10000000000uLL;
  *v3 = v2;
  *(this + 43) = result;
  v31 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_116:
    if ((v31 & 0x400000000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_195;
  }

LABEL_194:
  result = *(a2 + 42);
  v2 |= 0x8000000000uLL;
  *v3 = v2;
  *(this + 42) = result;
  v31 = *v4;
  if ((*v4 & 0x400000000000) == 0)
  {
LABEL_117:
    if ((v31 & 0x80000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_196;
  }

LABEL_195:
  result = *(a2 + 49);
  v2 |= 0x400000000000uLL;
  *v3 = v2;
  *(this + 49) = result;
  v31 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_118:
    if ((v31 & 0x40000000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_197;
  }

LABEL_196:
  result = *(a2 + 46);
  v2 |= 0x80000000000uLL;
  *v3 = v2;
  *(this + 46) = result;
  v31 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_119:
    if ((v31 & 0x20000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_197:
  result = *(a2 + 45);
  v2 |= 0x40000000000uLL;
  *v3 = v2;
  *(this + 45) = result;
  if ((*v4 & 0x20000000000) != 0)
  {
LABEL_120:
    result = *(a2 + 44);
    v2 |= 0x20000000000uLL;
    *v3 = v2;
    *(this + 44) = result;
  }

LABEL_121:
  v32 = *(a2 + 380);
  if ((v32 & 0x100) != 0)
  {
    result = *(a2 + 75);
    v7 |= 0x100uLL;
    *(this + 380) = v7;
    *(this + 75) = result;
    v32 = *(a2 + 380);
    if ((v32 & 0x200) == 0)
    {
LABEL_123:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_201;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_123;
  }

  result = *(a2 + 76);
  v7 |= 0x200uLL;
  *(this + 380) = v7;
  *(this + 76) = result;
  v32 = *(a2 + 380);
  if ((v32 & 0x80) == 0)
  {
LABEL_124:
    if ((v32 & 0x10000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_201:
  result = *(a2 + 74);
  v7 |= 0x80uLL;
  *(this + 380) = v7;
  *(this + 74) = result;
  if ((*(a2 + 380) & 0x10000) != 0)
  {
LABEL_125:
    result = *(a2 + 83);
    v7 |= 0x10000uLL;
    *(this + 380) = v7;
    *(this + 83) = result;
  }

LABEL_126:
  v33 = *v4;
  if ((*v4 & 0x4000000) != 0)
  {
    result = *(a2 + 29);
    v2 |= 0x4000000uLL;
    *v3 = v2;
    *(this + 29) = result;
    v33 = *v4;
  }

  if ((v33 & 0x8000000) != 0)
  {
    result = *(a2 + 30);
    v2 |= 0x8000000uLL;
    *v3 = v2;
    *(this + 30) = result;
  }

  v34 = *(a2 + 380);
  if ((v34 & 0x2000) != 0)
  {
    result = *(a2 + 80);
    v7 |= 0x2000uLL;
    *(this + 380) = v7;
    *(this + 80) = result;
    v34 = *(a2 + 380);
  }

  if ((v34 & 0x400) != 0)
  {
    result = *(a2 + 77);
    v7 |= 0x400uLL;
    *(this + 380) = v7;
    *(this + 77) = result;
  }

  v35 = *v4;
  if ((*v4 & 0x800000000) != 0)
  {
    result = *(a2 + 38);
    v2 |= 0x800000000uLL;
    *v3 = v2;
    *(this + 38) = result;
    v35 = *v4;
  }

  if ((v35 & 0x400000000) != 0)
  {
    result = *(a2 + 37);
    v2 |= 0x400000000uLL;
    *v3 = v2;
    *(this + 37) = result;
  }

  v36 = *(a2 + 380);
  if ((v36 & 0x8000) != 0)
  {
    result = *(a2 + 82);
    v7 |= 0x8000uLL;
    *(this + 380) = v7;
    *(this + 82) = result;
    v36 = *(a2 + 380);
  }

  if ((v36 & 0x1000) != 0)
  {
    result = *(a2 + 79);
    v7 |= 0x1000uLL;
    *(this + 380) = v7;
    *(this + 79) = result;
  }

  v37 = *v4;
  if ((*v4 & 0x200000000000) != 0)
  {
    result = *(a2 + 48);
    v2 |= 0x200000000000uLL;
    *v3 = v2;
    *(this + 48) = result;
    v37 = *v4;
  }

  if ((v37 & 0x100000000000) != 0)
  {
    result = *(a2 + 47);
    *v3 = v2 | 0x100000000000;
    *(this + 47) = result;
  }

  v38 = *(a2 + 380);
  if ((v38 & 0x4000) == 0)
  {
    if ((v38 & 0x800) == 0)
    {
      return result;
    }

LABEL_204:
    result = *(a2 + 78);
    *(this + 380) = v7 | 0x800;
    *(this + 78) = result;
    return result;
  }

  result = *(a2 + 81);
  v7 |= 0x4000uLL;
  *(this + 380) = v7;
  *(this + 81) = result;
  if ((*(a2 + 380) & 0x800) != 0)
  {
    goto LABEL_204;
  }

  return result;
}

CMMsl *CMMsl::KappaRolloverCrashResult::operator=(CMMsl *a1, const CMMsl::KappaRolloverCrashResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRolloverCrashResult::KappaRolloverCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaRolloverCrashResult *a2, CMMsl::KappaRolloverCrashResult *a3)
{
  v3 = *(this + 372);
  *(this + 372) = *(a2 + 372);
  *(a2 + 372) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 366);
  *(this + 366) = *(a2 + 366);
  *(a2 + 366) = v4;
  LOBYTE(v4) = *(this + 367);
  *(this + 367) = *(a2 + 367);
  *(a2 + 367) = v4;
  LODWORD(v3) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v3;
  LODWORD(v3) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  LODWORD(v3) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v3;
  LOBYTE(v4) = *(this + 364);
  *(this + 364) = *(a2 + 364);
  *(a2 + 364) = v4;
  LOBYTE(v4) = *(this + 361);
  *(this + 361) = *(a2 + 361);
  *(a2 + 361) = v4;
  LOBYTE(v4) = *(this + 360);
  *(this + 360) = *(a2 + 360);
  *(a2 + 360) = v4;
  LODWORD(v4) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v4;
  LOBYTE(v4) = *(this + 363);
  *(this + 363) = *(a2 + 363);
  *(a2 + 363) = v4;
  LODWORD(v3) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  LODWORD(v3) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v3;
  LODWORD(v3) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v3;
  LODWORD(v3) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v3;
  LODWORD(v3) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  LODWORD(v3) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  LODWORD(v3) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  LOBYTE(v4) = *(this + 369);
  *(this + 369) = *(a2 + 369);
  *(a2 + 369) = v4;
  LOBYTE(v4) = *(this + 362);
  *(this + 362) = *(a2 + 362);
  *(a2 + 362) = v4;
  LOBYTE(v4) = *(this + 365);
  *(this + 365) = *(a2 + 365);
  *(a2 + 365) = v4;
  LODWORD(v3) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v3;
  LODWORD(v3) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v3;
  LODWORD(v4) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v4;
  LOBYTE(v4) = *(this + 368);
  *(this + 368) = *(a2 + 368);
  *(a2 + 368) = v4;
  LODWORD(v3) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  LODWORD(v3) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  LODWORD(v3) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v3;
  LODWORD(v3) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  LODWORD(v3) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v3;
  LODWORD(v3) = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v3;
  LODWORD(v3) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v3;
  LODWORD(v3) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v3;
  LODWORD(v3) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  LODWORD(v3) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v3;
  LODWORD(v3) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v3;
  LODWORD(v3) = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v3;
  LODWORD(v3) = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v3;
  LODWORD(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  LODWORD(v3) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v3;
  LODWORD(v3) = *(this + 87);
  *(this + 87) = *(a2 + 87);
  *(a2 + 87) = v3;
  LODWORD(v3) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  LODWORD(v3) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  LODWORD(v3) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  LODWORD(v3) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  LODWORD(v3) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  LODWORD(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  LODWORD(v3) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  LODWORD(v3) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  LODWORD(v3) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  LODWORD(v3) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  LODWORD(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LODWORD(v3) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  LODWORD(v3) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v3;
  LODWORD(v3) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  LODWORD(v3) = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v3;
  LODWORD(v3) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v3;
  LODWORD(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  LODWORD(v3) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  LODWORD(v3) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v3;
  LODWORD(v3) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v3;
  LODWORD(v3) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v3;
  LODWORD(v3) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  LODWORD(v3) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v3;
  LODWORD(v3) = *(this + 89);
  *(this + 89) = *(a2 + 89);
  *(a2 + 89) = v3;
  LODWORD(v3) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  LODWORD(v3) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v3;
  LODWORD(v3) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v3;
  LODWORD(v3) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  LODWORD(v3) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v3;
  LODWORD(v3) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  LODWORD(v3) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v3;
  LODWORD(v3) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v3;
  LODWORD(v3) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v3;
  LODWORD(v3) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v3;
  LODWORD(v3) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v3;
  LODWORD(v3) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v3;
  LODWORD(v3) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v3;
  LODWORD(v3) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v3;
  LODWORD(v3) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v3;
  LODWORD(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  LODWORD(v3) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v3;
  LODWORD(v3) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v3;
  LODWORD(v3) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v3;
  LODWORD(v3) = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v3;
  LODWORD(v3) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  LODWORD(v3) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  LODWORD(v3) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v3;
  LODWORD(v3) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v3;
  LODWORD(v3) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  LODWORD(v3) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v3;
  LODWORD(v3) = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v3;
  LODWORD(v3) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v3;
  LODWORD(v3) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  LODWORD(v3) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v3;
  LODWORD(v3) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v3;
  result = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = result;
  return result;
}

float CMMsl::KappaRolloverCrashResult::KappaRolloverCrashResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21500;
  *(a1 + 372) = *(a2 + 372);
  *(a2 + 380) = 0;
  *(a2 + 372) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 366) = *(a2 + 366);
  *(a1 + 367) = *(a2 + 367);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 363) = *(a2 + 363);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 369) = *(a2 + 369);
  *(a1 + 362) = *(a2 + 362);
  *(a1 + 365) = *(a2 + 365);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 348) = *(a2 + 348);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 356) = *(a2 + 356);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 324) = *(a2 + 324);
  result = *(a2 + 312);
  *(a1 + 312) = result;
  return result;
}

CMMsl *CMMsl::KappaRolloverCrashResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRolloverCrashResult::KappaRolloverCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaRolloverCrashResult::formatText(CMMsl::KappaRolloverCrashResult *this, PB::TextFormatter *a2, const char *a3)
{
  v5 = (this + 372);
  PB::TextFormatter::beginObject(a2, a3);
  v6 = *v5;
  if ((*v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "audioRolloverDvChaosThreshold", *(this + 4));
    v6 = *v5;
    if ((*v5 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_111;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "audioRolloverDvChaosThresholdCenter", *(this + 5));
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_112;
  }

LABEL_111:
  PB::TextFormatter::format(a2, "audioRolloverDvChaosThresholdMax", *(this + 6));
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_113;
  }

LABEL_112:
  PB::TextFormatter::format(a2, "audioRolloverDvChaosThresholdMin", *(this + 7));
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::TextFormatter::format(a2, "audioRolloverDvChaosThresholdStretch", *(this + 8));
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_115;
  }

LABEL_114:
  PB::TextFormatter::format(a2, "audioRolloverDvEnergyThreshold", *(this + 9));
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_116;
  }

LABEL_115:
  PB::TextFormatter::format(a2, "audioRolloverDvEnergyThresholdCenter", *(this + 10));
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_117;
  }

LABEL_116:
  PB::TextFormatter::format(a2, "audioRolloverDvEnergyThresholdMax", *(this + 11));
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_118;
  }

LABEL_117:
  PB::TextFormatter::format(a2, "audioRolloverDvEnergyThresholdMin", *(this + 12));
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_119;
  }

LABEL_118:
  PB::TextFormatter::format(a2, "audioRolloverDvEnergyThresholdStretch", *(this + 13));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_120;
  }

LABEL_119:
  PB::TextFormatter::format(a2, "audioRolloverDvMaxRmsThresholdCenter", *(this + 14));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_121;
  }

LABEL_120:
  PB::TextFormatter::format(a2, "audioRolloverDvMaxRmsThresholdMax", *(this + 15));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_122;
  }

LABEL_121:
  PB::TextFormatter::format(a2, "audioRolloverDvMaxRmsThresholdMin", *(this + 16));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(a2, "audioRolloverDvMaxRmsThresholdStretch", *(this + 17));
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(a2, "audioRolloverDvRmsThreshold", *(this + 18));
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(a2, "baroEscalateMaxAccelNormThreshold", *(this + 19));
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(a2, "baroEscalateSpinNormThreshold", *(this + 20));
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_127;
  }

LABEL_126:
  PB::TextFormatter::format(a2, "cumulativeRotation", *(this + 21));
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_128;
  }

LABEL_127:
  PB::TextFormatter::format(a2, "cumulativeRotationThreshold", *(this + 22));
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_129;
  }

LABEL_128:
  PB::TextFormatter::format(a2, "cumulativeRotationThresholdWithAudio", *(this + 23));
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_130;
  }

LABEL_129:
  PB::TextFormatter::format(a2, "cumulativeRotationThresholdWithoutAudio", *(this + 24));
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_131;
  }

LABEL_130:
  PB::TextFormatter::format(a2, "cumulativeRotationThresholdWithoutAudioStandaloneBaroNeeded", *(this + 25));
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(a2, "cumulativeRotationThresholdWithoutAudioStandaloneFull", *(this + 26));
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(a2, "deltaVXYOverEpoch", *(this + 27));
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_134;
  }

LABEL_133:
  PB::TextFormatter::format(a2, "deltaVXYUnconditional", *(this + 28));
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_135;
  }

LABEL_134:
  PB::TextFormatter::format(a2, "deltaVXYUnconditionalRolloverWithAudioThreshold", *(this + 29));
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_135:
  PB::TextFormatter::format(a2, "deltaVXYUnconditionalRolloverWithoutAudioThreshold", *(this + 30));
  if ((*v5 & 0x10000000) != 0)
  {
LABEL_29:
    v7 = *(this + 31);
    PB::TextFormatter::format(a2, "detectorRegime");
  }

LABEL_30:
  v8 = v5[1];
  if ((v8 & 0x800000) != 0)
  {
    v19 = *(this + 360);
    PB::TextFormatter::format(a2, "hasAudioInEpoch");
    v8 = v5[1];
    if ((v8 & 0x1000000) == 0)
    {
LABEL_32:
      if ((v8 & 0x2000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_139;
    }
  }

  else if ((v8 & 0x1000000) == 0)
  {
    goto LABEL_32;
  }

  v20 = *(this + 361);
  PB::TextFormatter::format(a2, "isAudioRollover");
  v8 = v5[1];
  if ((v8 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_140;
  }

LABEL_139:
  v21 = *(this + 362);
  PB::TextFormatter::format(a2, "isAudioRolloverDv");
  v8 = v5[1];
  if ((v8 & 0x4000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_141;
  }

LABEL_140:
  v22 = *(this + 363);
  PB::TextFormatter::format(a2, "isAudioSupported");
  v8 = v5[1];
  if ((v8 & 0x8000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_141:
  v23 = *(this + 364);
  PB::TextFormatter::format(a2, "isBaro");
  if ((v5[1] & 0x10000000) != 0)
  {
LABEL_36:
    v9 = *(this + 365);
    PB::TextFormatter::format(a2, "isCompanionConnected");
  }

LABEL_37:
  v10 = *v5;
  if ((*v5 & 0x20000000) != 0)
  {
    PB::TextFormatter::format(a2, "lowSenseWithAudioCumulativeRotationThreshold", *(this + 32));
    v10 = *v5;
    if ((*v5 & 0x40000000) == 0)
    {
LABEL_39:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_145;
    }
  }

  else if ((v10 & 0x40000000) == 0)
  {
    goto LABEL_39;
  }

  PB::TextFormatter::format(a2, "lowSenseWithAudioMaxAccelNormThreshold", *(this + 33));
  v10 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_40:
    if ((v10 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_146;
  }

LABEL_145:
  PB::TextFormatter::format(a2, "lowSenseWithAudioParBaroCumulativeRotationThreshold", *(this + 34));
  v10 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_41:
    if ((v10 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_147;
  }

LABEL_146:
  PB::TextFormatter::format(a2, "lowSenseWithAudioParBaroNormThreshold", *(this + 35));
  v10 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_148;
  }

LABEL_147:
  PB::TextFormatter::format(a2, "lowSenseWithAudioPeakPressureThreshold", *(this + 36));
  v10 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_43:
    if ((v10 & 0x800000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_149;
  }

LABEL_148:
  PB::TextFormatter::format(a2, "lowSenseWithAudioSlowRollCumCoherentAngleThreshold", *(this + 37));
  v10 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_44:
    if ((v10 & 0x1000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_150;
  }

LABEL_149:
  PB::TextFormatter::format(a2, "lowSenseWithAudioSlowRollMaxAccelNormThreshold", *(this + 38));
  v10 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_45:
    if ((v10 & 0x2000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_151;
  }

LABEL_150:
  PB::TextFormatter::format(a2, "lowSenseWithAudioZgtimeThreshold", *(this + 39));
  v10 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_152;
  }

LABEL_151:
  PB::TextFormatter::format(a2, "lowSenseWithAudiodvThreshold1", *(this + 40));
  v10 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_153;
  }

LABEL_152:
  PB::TextFormatter::format(a2, "lowSenseWithAudiodvThreshold2", *(this + 41));
  v10 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x10000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_154;
  }

LABEL_153:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioCumulativeRotationThreshold", *(this + 42));
  v10 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_49:
    if ((v10 & 0x20000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_155;
  }

LABEL_154:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioMaxAccelNormThreshold", *(this + 43));
  v10 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_50:
    if ((v10 & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_156;
  }

LABEL_155:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioParBaroCumulativeRotationThreshold", *(this + 44));
  v10 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_51:
    if ((v10 & 0x80000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_157;
  }

LABEL_156:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioParBaroNormThreshold", *(this + 45));
  v10 = *v5;
  if ((*v5 & 0x80000000000) == 0)
  {
LABEL_52:
    if ((v10 & 0x100000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_158;
  }

LABEL_157:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioPeakPressureThreshold", *(this + 46));
  v10 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_53:
    if ((v10 & 0x200000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_159;
  }

LABEL_158:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioSlowRollCumCoherentAngleThreshold", *(this + 47));
  v10 = *v5;
  if ((*v5 & 0x200000000000) == 0)
  {
LABEL_54:
    if ((v10 & 0x400000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_160;
  }

LABEL_159:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioSlowRollMaxAccelNormThreshold", *(this + 48));
  v10 = *v5;
  if ((*v5 & 0x400000000000) == 0)
  {
LABEL_55:
    if ((v10 & 0x800000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_161;
  }

LABEL_160:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioZgtimeThreshold", *(this + 49));
  v10 = *v5;
  if ((*v5 & 0x800000000000) == 0)
  {
LABEL_56:
    if ((v10 & 0x1000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_162;
  }

LABEL_161:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudiodvThreshold1", *(this + 50));
  v10 = *v5;
  if ((*v5 & 0x1000000000000) == 0)
  {
LABEL_57:
    if ((v10 & 0x2000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_163;
  }

LABEL_162:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudiodvThreshold2", *(this + 51));
  v10 = *v5;
  if ((*v5 & 0x2000000000000) == 0)
  {
LABEL_58:
    if ((v10 & 0x4000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_164;
  }

LABEL_163:
  PB::TextFormatter::format(a2, "maxAccelNorm", *(this + 52));
  v10 = *v5;
  if ((*v5 & 0x4000000000000) == 0)
  {
LABEL_59:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_165;
  }

LABEL_164:
  PB::TextFormatter::format(a2, "maxAccelNormThreshold", *(this + 53));
  v10 = *v5;
  if ((*v5 & 0x8000000000000) == 0)
  {
LABEL_60:
    if ((v10 & 0x10000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_166;
  }

LABEL_165:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithAudio", *(this + 54));
  v10 = *v5;
  if ((*v5 & 0x10000000000000) == 0)
  {
LABEL_61:
    if ((v10 & 0x20000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_167;
  }

LABEL_166:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithoutAudio", *(this + 55));
  v10 = *v5;
  if ((*v5 & 0x20000000000000) == 0)
  {
LABEL_62:
    if ((v10 & 0x40000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_168;
  }

LABEL_167:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithoutAudioStandaloneBaroNeeded", *(this + 56));
  v10 = *v5;
  if ((*v5 & 0x40000000000000) == 0)
  {
LABEL_63:
    if ((v10 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_169;
  }

LABEL_168:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithoutAudioStandaloneFull", *(this + 57));
  v10 = *v5;
  if ((*v5 & 0x80000000000000) == 0)
  {
LABEL_64:
    if ((v10 & 0x100000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_170;
  }

LABEL_169:
  PB::TextFormatter::format(a2, "maxAudioRolloverChaos", *(this + 58));
  v10 = *v5;
  if ((*v5 & 0x100000000000000) == 0)
  {
LABEL_65:
    if ((v10 & 0x200000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_171;
  }

LABEL_170:
  PB::TextFormatter::format(a2, "maxAudioRolloverEnergy", *(this + 59));
  v10 = *v5;
  if ((*v5 & 0x200000000000000) == 0)
  {
LABEL_66:
    if ((v10 & 0x400000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_172;
  }

LABEL_171:
  PB::TextFormatter::format(a2, "maxAudioRolloverRms", *(this + 60));
  v10 = *v5;
  if ((*v5 & 0x400000000000000) == 0)
  {
LABEL_67:
    if ((v10 & 0x800000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_173;
  }

LABEL_172:
  PB::TextFormatter::format(a2, "maxPulse", *(this + 61));
  v10 = *v5;
  if ((*v5 & 0x800000000000000) == 0)
  {
LABEL_68:
    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_173:
  v24 = *(this + 62);
  PB::TextFormatter::format(a2, "numShortAudio");
  if ((*v5 & 0x1000000000000000) != 0)
  {
LABEL_69:
    PB::TextFormatter::format(a2, "peakPressure", *(this + 63));
  }

LABEL_70:
  v11 = v5[1];
  if ((v11 & 0x20000000) != 0)
  {
    v12 = *(this + 366);
    PB::TextFormatter::format(a2, "rolloverCrashDetectorDecision");
    v11 = v5[1];
  }

  if ((v11 & 0x40000000) != 0)
  {
    v13 = *(this + 367);
    PB::TextFormatter::format(a2, "rolloverCrashDetectorDecisionLowSense");
  }

  v14 = *v5;
  if ((*v5 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x4000000000000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_176:
    PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold1WithAudio", *(this + 65));
    if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_177;
  }

  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold1", *(this + 64));
  v14 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_176;
  }

LABEL_76:
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_177:
  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold1WithoutAudio", *(this + 66));
LABEL_77:
  v15 = v5[1];
  if (v15)
  {
    PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold1WithoutAudioStandaloneBaroNeeded", *(this + 67));
    v15 = v5[1];
    if ((v15 & 2) == 0)
    {
LABEL_79:
      if ((v15 & 4) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_180;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_79;
  }

  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold1WithoutAudioStandaloneFull", *(this + 68));
  v15 = v5[1];
  if ((v15 & 4) == 0)
  {
LABEL_80:
    if ((v15 & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_181;
  }

LABEL_180:
  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold2", *(this + 69));
  v15 = v5[1];
  if ((v15 & 8) == 0)
  {
LABEL_81:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_182;
  }

LABEL_181:
  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold2WithAudio", *(this + 70));
  v15 = v5[1];
  if ((v15 & 0x10) == 0)
  {
LABEL_82:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_183;
  }

LABEL_182:
  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold2WithoutAudio", *(this + 71));
  v15 = v5[1];
  if ((v15 & 0x20) == 0)
  {
LABEL_83:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_184;
  }

LABEL_183:
  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold2WithoutAudioStandaloneBaroNeeded", *(this + 72));
  v15 = v5[1];
  if ((v15 & 0x40) == 0)
  {
LABEL_84:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_185;
  }

LABEL_184:
  PB::TextFormatter::format(a2, "rolloverDetectorRegimeDeltaVThreshold2WithoutAudioStandaloneFull", *(this + 73));
  v15 = v5[1];
  if ((v15 & 0x80) == 0)
  {
LABEL_85:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_186;
  }

LABEL_185:
  PB::TextFormatter::format(a2, "shortAudioMaxPulseThreshold", *(this + 74));
  v15 = v5[1];
  if ((v15 & 0x80000000) == 0)
  {
LABEL_86:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_187;
  }

LABEL_186:
  v25 = *(this + 368);
  PB::TextFormatter::format(a2, "shortAudioMet");
  v15 = v5[1];
  if ((v15 & 0x100) == 0)
  {
LABEL_87:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_188;
  }

LABEL_187:
  PB::TextFormatter::format(a2, "shortAudioNumThreshold", *(this + 75));
  v15 = v5[1];
  if ((v15 & 0x200) == 0)
  {
LABEL_88:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_189;
  }

LABEL_188:
  PB::TextFormatter::format(a2, "shortAudioPeakPressureThreshold", *(this + 76));
  v15 = v5[1];
  if ((v15 & 0x400) == 0)
  {
LABEL_89:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_190;
  }

LABEL_189:
  PB::TextFormatter::format(a2, "slowRollCumCoherentAngleThresholdWithAudio", *(this + 77));
  v15 = v5[1];
  if ((v15 & 0x800) == 0)
  {
LABEL_90:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_191;
  }

LABEL_190:
  PB::TextFormatter::format(a2, "slowRollCumCoherentAngleThresholdWithoutAudioStandaloneBaroNeeded", *(this + 78));
  v15 = v5[1];
  if ((v15 & 0x1000) == 0)
  {
LABEL_91:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_192;
  }

LABEL_191:
  PB::TextFormatter::format(a2, "slowRollCumCoherentAngleThresholdWithoutAudioStandaloneFull", *(this + 79));
  v15 = v5[1];
  if ((v15 & 0x2000) == 0)
  {
LABEL_92:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_193;
  }

LABEL_192:
  PB::TextFormatter::format(a2, "slowRollMaxAccelNormThresholdWithAudio", *(this + 80));
  v15 = v5[1];
  if ((v15 & 0x4000) == 0)
  {
LABEL_93:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_194;
  }

LABEL_193:
  PB::TextFormatter::format(a2, "slowRollMaxAccelNormThresholdWithoutAudioStandaloneBaroNeeded", *(this + 81));
  v15 = v5[1];
  if ((v15 & 0x8000) == 0)
  {
LABEL_94:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_195;
  }

LABEL_194:
  PB::TextFormatter::format(a2, "slowRollMaxAccelNormThresholdWithoutAudioStandaloneFull", *(this + 82));
  v15 = v5[1];
  if ((v15 & 0x10000) == 0)
  {
LABEL_95:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_195:
  PB::TextFormatter::format(a2, "slowRollZgTimeThreshold", *(this + 83));
  if ((v5[1] & 0x100000000) != 0)
  {
LABEL_96:
    v16 = *(this + 369);
    PB::TextFormatter::format(a2, "strongerAudioRollover");
  }

LABEL_97:
  if (*v5)
  {
    v17 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  v18 = v5[1];
  if ((v18 & 0x20000) != 0)
  {
    PB::TextFormatter::format(a2, "zgTime", *(this + 84));
    v18 = v5[1];
    if ((v18 & 0x40000) == 0)
    {
LABEL_101:
      if ((v18 & 0x80000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_199;
    }
  }

  else if ((v18 & 0x40000) == 0)
  {
    goto LABEL_101;
  }

  PB::TextFormatter::format(a2, "zgTimeThreshold", *(this + 85));
  v18 = v5[1];
  if ((v18 & 0x80000) == 0)
  {
LABEL_102:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_200;
  }

LABEL_199:
  PB::TextFormatter::format(a2, "zgTimeThresholdWithAudio", *(this + 86));
  v18 = v5[1];
  if ((v18 & 0x100000) == 0)
  {
LABEL_103:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_201;
  }

LABEL_200:
  PB::TextFormatter::format(a2, "zgTimeThresholdWithoutAudio", *(this + 87));
  v18 = v5[1];
  if ((v18 & 0x200000) == 0)
  {
LABEL_104:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_201:
  PB::TextFormatter::format(a2, "zgTimeThresholdWithoutAudioStandaloneBaroNeeded", *(this + 88));
  if ((v5[1] & 0x400000) != 0)
  {
LABEL_105:
    PB::TextFormatter::format(a2, "zgTimeThresholdWithoutAudioStandaloneFull", *(this + 89));
  }

LABEL_106:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaRolloverCrashResult::readFrom(CMMsl::KappaRolloverCrashResult *this, PB::Reader *a2)
{
  v3 = a2 + 24;
  v2 = *(a2 + 24);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v4 < v5 && (*(a2 + 24) & 1) == 0)
  {
    v8 = (this + 372);
    do
    {
      v9 = *a2;
      if (v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v5)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v19 = (v9 + v4);
        v20 = v5 >= v4;
        v21 = v5 - v4;
        if (!v20)
        {
          v21 = 0;
        }

        v22 = v4 + 1;
        while (1)
        {
          if (!v21)
          {
            v12 = 0;
            *v3 = 1;
            goto LABEL_22;
          }

          v23 = *v19;
          *(a2 + 1) = v22;
          v12 |= (v23 & 0x7F) << v17;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          ++v19;
          --v21;
          ++v22;
          v16 = v18++ > 8;
          if (v16)
          {
LABEL_18:
            v12 = 0;
            goto LABEL_22;
          }
        }

        if (*v3)
        {
          v12 = 0;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = (v9 + v4);
        v14 = v4 + 1;
        while (1)
        {
          *(a2 + 1) = v14;
          v15 = *v13++;
          v12 |= (v15 & 0x7F) << v10;
          if ((v15 & 0x80) == 0)
          {
            break;
          }

          v10 += 7;
          ++v14;
          v16 = v11++ > 8;
          if (v16)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      v2 = *v3;
      if ((*v3 & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v24 = v12 >> 3;
      if ((v12 >> 3) <= 100)
      {
        switch(v24)
        {
          case 1:
            *v8 |= 1uLL;
            v164 = *(a2 + 1);
            v163 = *(a2 + 2);
            v165 = *a2;
            if (v164 > 0xFFFFFFFFFFFFFFF5 || v164 + 10 > v163)
            {
              v188 = 0;
              v189 = 0;
              v168 = 0;
              v190 = (v165 + v164);
              v20 = v163 >= v164;
              v191 = v163 - v164;
              if (!v20)
              {
                v191 = 0;
              }

              v192 = v164 + 1;
              while (1)
              {
                if (!v191)
                {
                  v168 = 0;
                  *v3 = 1;
                  goto LABEL_384;
                }

                v193 = *v190;
                *(a2 + 1) = v192;
                v168 |= (v193 & 0x7F) << v188;
                if ((v193 & 0x80) == 0)
                {
                  break;
                }

                v188 += 7;
                ++v190;
                --v191;
                ++v192;
                v16 = v189++ > 8;
                if (v16)
                {
LABEL_363:
                  v168 = 0;
                  goto LABEL_384;
                }
              }

              if (*v3)
              {
                v168 = 0;
              }
            }

            else
            {
              v166 = 0;
              v167 = 0;
              v168 = 0;
              v169 = (v165 + v164);
              v170 = v164 + 1;
              while (1)
              {
                *(a2 + 1) = v170;
                v171 = *v169++;
                v168 |= (v171 & 0x7F) << v166;
                if ((v171 & 0x80) == 0)
                {
                  break;
                }

                v166 += 7;
                ++v170;
                v16 = v167++ > 8;
                if (v16)
                {
                  goto LABEL_363;
                }
              }
            }

LABEL_384:
            *(this + 1) = v168;
            break;
          case 2:
            v8[1] |= 0x20000000uLL;
            v172 = *(a2 + 1);
            if (v172 >= *(a2 + 2))
            {
              v175 = 0;
              *v3 = 1;
            }

            else
            {
              v173 = v172 + 1;
              v174 = *(*a2 + v172);
              *(a2 + 1) = v173;
              v175 = v174 != 0;
            }

            *(this + 366) = v175;
            break;
          case 3:
            v8[1] |= 0x40000000uLL;
            v26 = *(a2 + 1);
            if (v26 >= *(a2 + 2))
            {
              v29 = 0;
              *v3 = 1;
            }

            else
            {
              v27 = v26 + 1;
              v28 = *(*a2 + v26);
              *(a2 + 1) = v27;
              v29 = v28 != 0;
            }

            *(this + 367) = v29;
            break;
          default:
LABEL_322:
            if (!PB::Reader::skip(a2))
            {
              v195 = 0;
              return v195 & 1;
            }

            break;
        }
      }

      else
      {
        switch(v24)
        {
          case 101:
            *v8 |= 0x2000000000000uLL;
            v25 = *(a2 + 1);
            if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 52) = *(*a2 + v25);
            goto LABEL_369;
          case 102:
            *v8 |= 0x40000uLL;
            v75 = *(a2 + 1);
            if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 21) = *(*a2 + v75);
            goto LABEL_369;
          case 103:
            v8[1] |= 0x20000uLL;
            v74 = *(a2 + 1);
            if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 84) = *(*a2 + v74);
            goto LABEL_369;
          case 104:
            v8[1] |= 0x8000000uLL;
            v100 = *(a2 + 1);
            if (v100 >= *(a2 + 2))
            {
              v103 = 0;
              *v3 = 1;
            }

            else
            {
              v101 = v100 + 1;
              v102 = *(*a2 + v100);
              *(a2 + 1) = v101;
              v103 = v102 != 0;
            }

            *(this + 364) = v103;
            goto LABEL_370;
          case 105:
            v8[1] |= 0x1000000uLL;
            v110 = *(a2 + 1);
            if (v110 >= *(a2 + 2))
            {
              v113 = 0;
              *v3 = 1;
            }

            else
            {
              v111 = v110 + 1;
              v112 = *(*a2 + v110);
              *(a2 + 1) = v111;
              v113 = v112 != 0;
            }

            *(this + 361) = v113;
            goto LABEL_370;
          case 106:
            v8[1] |= 0x800000uLL;
            v80 = *(a2 + 1);
            if (v80 >= *(a2 + 2))
            {
              v83 = 0;
              *v3 = 1;
            }

            else
            {
              v81 = v80 + 1;
              v82 = *(*a2 + v80);
              *(a2 + 1) = v81;
              v83 = v82 != 0;
            }

            *(this + 360) = v83;
            goto LABEL_370;
          case 107:
            *v8 |= 0x10000000uLL;
            v86 = *(a2 + 1);
            v85 = *(a2 + 2);
            v87 = *a2;
            if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = (v87 + v86);
              v92 = v86 + 1;
              do
              {
                *(a2 + 1) = v92;
                v93 = *v91++;
                v90 |= (v93 & 0x7F) << v88;
                if ((v93 & 0x80) == 0)
                {
                  goto LABEL_381;
                }

                v88 += 7;
                ++v92;
                v16 = v89++ > 8;
              }

              while (!v16);
LABEL_341:
              LODWORD(v90) = 0;
              goto LABEL_381;
            }

            v182 = 0;
            v183 = 0;
            v90 = 0;
            v184 = (v87 + v86);
            v20 = v85 >= v86;
            v185 = v85 - v86;
            if (!v20)
            {
              v185 = 0;
            }

            v186 = v86 + 1;
            while (2)
            {
              if (v185)
              {
                v187 = *v184;
                *(a2 + 1) = v186;
                v90 |= (v187 & 0x7F) << v182;
                if (v187 < 0)
                {
                  v182 += 7;
                  ++v184;
                  --v185;
                  ++v186;
                  v16 = v183++ > 8;
                  if (v16)
                  {
                    goto LABEL_341;
                  }

                  continue;
                }

                if (*v3)
                {
                  LODWORD(v90) = 0;
                }
              }

              else
              {
                LODWORD(v90) = 0;
                *v3 = 1;
              }

              break;
            }

LABEL_381:
            *(this + 31) = v90;
            goto LABEL_370;
          case 108:
            v8[1] |= 0x4000000uLL;
            v106 = *(a2 + 1);
            if (v106 >= *(a2 + 2))
            {
              v109 = 0;
              *v3 = 1;
            }

            else
            {
              v107 = v106 + 1;
              v108 = *(*a2 + v106);
              *(a2 + 1) = v107;
              v109 = v108 != 0;
            }

            *(this + 363) = v109;
            goto LABEL_370;
          case 109:
            *v8 |= 0x1000000uLL;
            v105 = *(a2 + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 27) = *(*a2 + v105);
            goto LABEL_369;
          case 110:
            *v8 |= 0x100000000000000uLL;
            v125 = *(a2 + 1);
            if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 59) = *(*a2 + v125);
            goto LABEL_369;
          case 111:
            *v8 |= 0x80000000000000uLL;
            v68 = *(a2 + 1);
            if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 58) = *(*a2 + v68);
            goto LABEL_369;
          case 112:
            *v8 |= 0x200000000000000uLL;
            v128 = *(a2 + 1);
            if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 60) = *(*a2 + v128);
            goto LABEL_369;
          case 113:
            *v8 |= 0x40uLL;
            v134 = *(a2 + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 9) = *(*a2 + v134);
            goto LABEL_369;
          case 114:
            *v8 |= 2uLL;
            v53 = *(a2 + 1);
            if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 4) = *(*a2 + v53);
            goto LABEL_369;
          case 115:
            *v8 |= 0x8000uLL;
            v114 = *(a2 + 1);
            if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 18) = *(*a2 + v114);
            goto LABEL_369;
          case 116:
            v8[1] |= 0x100000000uLL;
            v76 = *(a2 + 1);
            if (v76 >= *(a2 + 2))
            {
              v79 = 0;
              *v3 = 1;
            }

            else
            {
              v77 = v76 + 1;
              v78 = *(*a2 + v76);
              *(a2 + 1) = v77;
              v79 = v78 != 0;
            }

            *(this + 369) = v79;
            goto LABEL_370;
          case 117:
            v8[1] |= 0x2000000uLL;
            v95 = *(a2 + 1);
            if (v95 >= *(a2 + 2))
            {
              v98 = 0;
              *v3 = 1;
            }

            else
            {
              v96 = v95 + 1;
              v97 = *(*a2 + v95);
              *(a2 + 1) = v96;
              v98 = v97 != 0;
            }

            *(this + 362) = v98;
            goto LABEL_370;
          case 118:
            v8[1] |= 0x10000000uLL;
            v129 = *(a2 + 1);
            if (v129 >= *(a2 + 2))
            {
              v132 = 0;
              *v3 = 1;
            }

            else
            {
              v130 = v129 + 1;
              v131 = *(*a2 + v129);
              *(a2 + 1) = v130;
              v132 = v131 != 0;
            }

            *(this + 365) = v132;
            goto LABEL_370;
          case 119:
            *v8 |= 0x1000000000000000uLL;
            v104 = *(a2 + 1);
            if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 63) = *(*a2 + v104);
            goto LABEL_369;
          case 120:
            *v8 |= 0x400000000000000uLL;
            v139 = *(a2 + 1);
            if (v139 > 0xFFFFFFFFFFFFFFFBLL || v139 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 61) = *(*a2 + v139);
            goto LABEL_369;
          case 121:
            *v8 |= 0x800000000000000uLL;
            v59 = *(a2 + 1);
            v58 = *(a2 + 2);
            v60 = *a2;
            if (v59 <= 0xFFFFFFFFFFFFFFF5 && v59 + 10 <= v58)
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = (v60 + v59);
              v65 = v59 + 1;
              do
              {
                *(a2 + 1) = v65;
                v66 = *v64++;
                v63 |= (v66 & 0x7F) << v61;
                if ((v66 & 0x80) == 0)
                {
                  goto LABEL_378;
                }

                v61 += 7;
                ++v65;
                v16 = v62++ > 8;
              }

              while (!v16);
LABEL_331:
              LODWORD(v63) = 0;
              goto LABEL_378;
            }

            v176 = 0;
            v177 = 0;
            v63 = 0;
            v178 = (v60 + v59);
            v20 = v58 >= v59;
            v179 = v58 - v59;
            if (!v20)
            {
              v179 = 0;
            }

            v180 = v59 + 1;
            break;
          case 122:
            v8[1] |= 0x80000000uLL;
            v115 = *(a2 + 1);
            if (v115 >= *(a2 + 2))
            {
              v118 = 0;
              *v3 = 1;
            }

            else
            {
              v116 = v115 + 1;
              v117 = *(*a2 + v115);
              *(a2 + 1) = v116;
              v118 = v117 != 0;
            }

            *(this + 368) = v118;
            goto LABEL_370;
          case 123:
            *v8 |= 0x2000000uLL;
            v142 = *(a2 + 1);
            if (v142 > 0xFFFFFFFFFFFFFFFBLL || v142 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 28) = *(*a2 + v142);
            goto LABEL_369;
          case 201:
            *v8 |= 0x2000000000000000uLL;
            v124 = *(a2 + 1);
            if (v124 > 0xFFFFFFFFFFFFFFFBLL || v124 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 64) = *(*a2 + v124);
            goto LABEL_369;
          case 202:
            v8[1] |= 4uLL;
            v73 = *(a2 + 1);
            if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 69) = *(*a2 + v73);
            goto LABEL_369;
          case 203:
            *v8 |= 0x80000uLL;
            v94 = *(a2 + 1);
            if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 22) = *(*a2 + v94);
            goto LABEL_369;
          case 204:
            *v8 |= 0x4000000000000uLL;
            v140 = *(a2 + 1);
            if (v140 > 0xFFFFFFFFFFFFFFFBLL || v140 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 53) = *(*a2 + v140);
            goto LABEL_369;
          case 205:
            v8[1] |= 0x40000uLL;
            v144 = *(a2 + 1);
            if (v144 > 0xFFFFFFFFFFFFFFFBLL || v144 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 85) = *(*a2 + v144);
            goto LABEL_369;
          case 206:
            *v8 |= 0x4000000000000000uLL;
            v72 = *(a2 + 1);
            if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 65) = *(*a2 + v72);
            goto LABEL_369;
          case 207:
            v8[1] |= 8uLL;
            v99 = *(a2 + 1);
            if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 70) = *(*a2 + v99);
            goto LABEL_369;
          case 208:
            *v8 |= 0x100000uLL;
            v136 = *(a2 + 1);
            if (v136 > 0xFFFFFFFFFFFFFFFBLL || v136 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 23) = *(*a2 + v136);
            goto LABEL_369;
          case 209:
            *v8 |= 0x8000000000000uLL;
            v67 = *(a2 + 1);
            if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 54) = *(*a2 + v67);
            goto LABEL_369;
          case 210:
            v8[1] |= 0x80000uLL;
            v146 = *(a2 + 1);
            if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 86) = *(*a2 + v146);
            goto LABEL_369;
          case 231:
            *v8 |= 0x8000000000000000;
            v71 = *(a2 + 1);
            if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 66) = *(*a2 + v71);
            goto LABEL_369;
          case 232:
            v8[1] |= 0x10uLL;
            v148 = *(a2 + 1);
            if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 71) = *(*a2 + v148);
            goto LABEL_369;
          case 233:
            *v8 |= 0x200000uLL;
            v56 = *(a2 + 1);
            if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 24) = *(*a2 + v56);
            goto LABEL_369;
          case 234:
            *v8 |= 0x10000000000000uLL;
            v45 = *(a2 + 1);
            if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 55) = *(*a2 + v45);
            goto LABEL_369;
          case 235:
            v8[1] |= 0x100000uLL;
            v55 = *(a2 + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 87) = *(*a2 + v55);
            goto LABEL_369;
          case 236:
            *v8 |= 0x80uLL;
            v147 = *(a2 + 1);
            if (v147 > 0xFFFFFFFFFFFFFFFBLL || v147 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 10) = *(*a2 + v147);
            goto LABEL_369;
          case 237:
            *v8 |= 0x400uLL;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 13) = *(*a2 + v40);
            goto LABEL_369;
          case 238:
            *v8 |= 0x200uLL;
            v135 = *(a2 + 1);
            if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 12) = *(*a2 + v135);
            goto LABEL_369;
          case 239:
            *v8 |= 0x100uLL;
            v70 = *(a2 + 1);
            if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 11) = *(*a2 + v70);
            goto LABEL_369;
          case 240:
            *v8 |= 4uLL;
            v49 = *(a2 + 1);
            if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 5) = *(*a2 + v49);
            goto LABEL_369;
          case 241:
            *v8 |= 0x20uLL;
            v52 = *(a2 + 1);
            if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 8) = *(*a2 + v52);
            goto LABEL_369;
          case 242:
            *v8 |= 0x10uLL;
            v127 = *(a2 + 1);
            if (v127 > 0xFFFFFFFFFFFFFFFBLL || v127 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 7) = *(*a2 + v127);
            goto LABEL_369;
          case 243:
            *v8 |= 8uLL;
            v149 = *(a2 + 1);
            if (v149 > 0xFFFFFFFFFFFFFFFBLL || v149 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 6) = *(*a2 + v149);
            goto LABEL_369;
          case 244:
            *v8 |= 0x800uLL;
            v120 = *(a2 + 1);
            if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 14) = *(*a2 + v120);
            goto LABEL_369;
          case 245:
            *v8 |= 0x4000uLL;
            v46 = *(a2 + 1);
            if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 17) = *(*a2 + v46);
            goto LABEL_369;
          case 246:
            *v8 |= 0x2000uLL;
            v41 = *(a2 + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 16) = *(*a2 + v41);
            goto LABEL_369;
          case 247:
            *v8 |= 0x1000uLL;
            v42 = *(a2 + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 15) = *(*a2 + v42);
            goto LABEL_369;
          case 248:
            *v8 |= 0x10000uLL;
            v126 = *(a2 + 1);
            if (v126 > 0xFFFFFFFFFFFFFFFBLL || v126 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 19) = *(*a2 + v126);
            goto LABEL_369;
          case 249:
            *v8 |= 0x20000uLL;
            v151 = *(a2 + 1);
            if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 20) = *(*a2 + v151);
            goto LABEL_369;
          case 250:
            v8[1] |= 1uLL;
            v145 = *(a2 + 1);
            if (v145 > 0xFFFFFFFFFFFFFFFBLL || v145 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 67) = *(*a2 + v145);
            goto LABEL_369;
          case 251:
            v8[1] |= 0x20uLL;
            v133 = *(a2 + 1);
            if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 72) = *(*a2 + v133);
            goto LABEL_369;
          case 252:
            *v8 |= 0x400000uLL;
            v122 = *(a2 + 1);
            if (v122 > 0xFFFFFFFFFFFFFFFBLL || v122 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 25) = *(*a2 + v122);
            goto LABEL_369;
          case 253:
            *v8 |= 0x20000000000000uLL;
            v121 = *(a2 + 1);
            if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 56) = *(*a2 + v121);
            goto LABEL_369;
          case 254:
            v8[1] |= 0x200000uLL;
            v156 = *(a2 + 1);
            if (v156 > 0xFFFFFFFFFFFFFFFBLL || v156 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 88) = *(*a2 + v156);
            goto LABEL_369;
          case 255:
            v8[1] |= 2uLL;
            v154 = *(a2 + 1);
            if (v154 > 0xFFFFFFFFFFFFFFFBLL || v154 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 68) = *(*a2 + v154);
            goto LABEL_369;
          case 256:
            v8[1] |= 0x40uLL;
            v69 = *(a2 + 1);
            if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 73) = *(*a2 + v69);
            goto LABEL_369;
          case 257:
            *v8 |= 0x800000uLL;
            v141 = *(a2 + 1);
            if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 26) = *(*a2 + v141);
            goto LABEL_369;
          case 258:
            *v8 |= 0x40000000000000uLL;
            v57 = *(a2 + 1);
            if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 57) = *(*a2 + v57);
            goto LABEL_369;
          case 259:
            v8[1] |= 0x400000uLL;
            v119 = *(a2 + 1);
            if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 89) = *(*a2 + v119);
            goto LABEL_369;
          case 260:
            *v8 |= 0x2000000000uLL;
            v152 = *(a2 + 1);
            if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 40) = *(*a2 + v152);
            goto LABEL_369;
          case 261:
            *v8 |= 0x4000000000uLL;
            v44 = *(a2 + 1);
            if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 41) = *(*a2 + v44);
            goto LABEL_369;
          case 262:
            *v8 |= 0x40000000uLL;
            v158 = *(a2 + 1);
            if (v158 > 0xFFFFFFFFFFFFFFFBLL || v158 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 33) = *(*a2 + v158);
            goto LABEL_369;
          case 263:
            *v8 |= 0x20000000uLL;
            v161 = *(a2 + 1);
            if (v161 > 0xFFFFFFFFFFFFFFFBLL || v161 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 32) = *(*a2 + v161);
            goto LABEL_369;
          case 264:
            *v8 |= 0x1000000000uLL;
            v43 = *(a2 + 1);
            if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 39) = *(*a2 + v43);
            goto LABEL_369;
          case 265:
            *v8 |= 0x200000000uLL;
            v34 = *(a2 + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 36) = *(*a2 + v34);
            goto LABEL_369;
          case 266:
            *v8 |= 0x100000000uLL;
            v36 = *(a2 + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 35) = *(*a2 + v36);
            goto LABEL_369;
          case 267:
            *v8 |= 0x80000000uLL;
            v51 = *(a2 + 1);
            if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 34) = *(*a2 + v51);
            goto LABEL_369;
          case 268:
            *v8 |= 0x800000000000uLL;
            v143 = *(a2 + 1);
            if (v143 > 0xFFFFFFFFFFFFFFFBLL || v143 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 50) = *(*a2 + v143);
            goto LABEL_369;
          case 269:
            *v8 |= 0x1000000000000uLL;
            v47 = *(a2 + 1);
            if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 51) = *(*a2 + v47);
            goto LABEL_369;
          case 270:
            *v8 |= 0x10000000000uLL;
            v153 = *(a2 + 1);
            if (v153 > 0xFFFFFFFFFFFFFFFBLL || v153 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 43) = *(*a2 + v153);
            goto LABEL_369;
          case 271:
            *v8 |= 0x8000000000uLL;
            v138 = *(a2 + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 42) = *(*a2 + v138);
            goto LABEL_369;
          case 272:
            *v8 |= 0x400000000000uLL;
            v157 = *(a2 + 1);
            if (v157 > 0xFFFFFFFFFFFFFFFBLL || v157 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 49) = *(*a2 + v157);
            goto LABEL_369;
          case 273:
            *v8 |= 0x80000000000uLL;
            v123 = *(a2 + 1);
            if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 46) = *(*a2 + v123);
            goto LABEL_369;
          case 274:
            *v8 |= 0x40000000000uLL;
            v160 = *(a2 + 1);
            if (v160 > 0xFFFFFFFFFFFFFFFBLL || v160 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 45) = *(*a2 + v160);
            goto LABEL_369;
          case 275:
            *v8 |= 0x20000000000uLL;
            v50 = *(a2 + 1);
            if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 44) = *(*a2 + v50);
            goto LABEL_369;
          case 276:
            v8[1] |= 0x100uLL;
            v30 = *(a2 + 1);
            if (v30 > 0xFFFFFFFFFFFFFFFBLL || v30 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 75) = *(*a2 + v30);
            goto LABEL_369;
          case 277:
            v8[1] |= 0x200uLL;
            v137 = *(a2 + 1);
            if (v137 > 0xFFFFFFFFFFFFFFFBLL || v137 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 76) = *(*a2 + v137);
            goto LABEL_369;
          case 278:
            v8[1] |= 0x80uLL;
            v38 = *(a2 + 1);
            if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 74) = *(*a2 + v38);
            goto LABEL_369;
          case 279:
            v8[1] |= 0x10000uLL;
            v155 = *(a2 + 1);
            if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 83) = *(*a2 + v155);
            goto LABEL_369;
          case 280:
            *v8 |= 0x4000000uLL;
            v84 = *(a2 + 1);
            if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 29) = *(*a2 + v84);
            goto LABEL_369;
          case 281:
            *v8 |= 0x8000000uLL;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 30) = *(*a2 + v39);
            goto LABEL_369;
          case 282:
            v8[1] |= 0x2000uLL;
            v33 = *(a2 + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 80) = *(*a2 + v33);
            goto LABEL_369;
          case 283:
            v8[1] |= 0x400uLL;
            v32 = *(a2 + 1);
            if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 77) = *(*a2 + v32);
            goto LABEL_369;
          case 284:
            *v8 |= 0x800000000uLL;
            v150 = *(a2 + 1);
            if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 38) = *(*a2 + v150);
            goto LABEL_369;
          case 285:
            *v8 |= 0x400000000uLL;
            v37 = *(a2 + 1);
            if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 37) = *(*a2 + v37);
            goto LABEL_369;
          case 286:
            v8[1] |= 0x8000uLL;
            v48 = *(a2 + 1);
            if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 82) = *(*a2 + v48);
            goto LABEL_369;
          case 287:
            v8[1] |= 0x1000uLL;
            v31 = *(a2 + 1);
            if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 79) = *(*a2 + v31);
            goto LABEL_369;
          case 288:
            *v8 |= 0x200000000000uLL;
            v159 = *(a2 + 1);
            if (v159 > 0xFFFFFFFFFFFFFFFBLL || v159 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 48) = *(*a2 + v159);
            goto LABEL_369;
          case 289:
            *v8 |= 0x100000000000uLL;
            v54 = *(a2 + 1);
            if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 47) = *(*a2 + v54);
            goto LABEL_369;
          case 290:
            v8[1] |= 0x4000uLL;
            v162 = *(a2 + 1);
            if (v162 > 0xFFFFFFFFFFFFFFFBLL || v162 + 4 > *(a2 + 2))
            {
              goto LABEL_312;
            }

            *(this + 81) = *(*a2 + v162);
            goto LABEL_369;
          case 291:
            v8[1] |= 0x800uLL;
            v35 = *(a2 + 1);
            if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
            {
LABEL_312:
              *v3 = 1;
            }

            else
            {
              *(this + 78) = *(*a2 + v35);
LABEL_369:
              *(a2 + 1) += 4;
            }

            goto LABEL_370;
          default:
            goto LABEL_322;
        }

        while (1)
        {
          if (!v179)
          {
            LODWORD(v63) = 0;
            *v3 = 1;
            goto LABEL_378;
          }

          v181 = *v178;
          *(a2 + 1) = v180;
          v63 |= (v181 & 0x7F) << v176;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          ++v178;
          --v179;
          ++v180;
          v16 = v177++ > 8;
          if (v16)
          {
            goto LABEL_331;
          }
        }

        if (*v3)
        {
          LODWORD(v63) = 0;
        }

LABEL_378:
        *(this + 62) = v63;
      }

LABEL_370:
      v4 = *(a2 + 1);
      v5 = *(a2 + 2);
      v2 = *(a2 + 24);
    }

    while (v4 < v5 && (*(a2 + 24) & 1) == 0);
  }

  v195 = v2 ^ 1;
  return v195 & 1;
}

uint64_t CMMsl::KappaRolloverCrashResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = (this + 372);
  if (*(this + 372))
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
  }

  v6 = v4[1];
  if ((v6 & 0x20000000) != 0)
  {
    v7 = *(v3 + 366);
    this = PB::Writer::write(a2);
    v6 = v4[1];
  }

  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v3 + 367);
    this = PB::Writer::write(a2);
  }

  v9 = *v4;
  if ((*v4 & 0x2000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 208));
    v9 = *v4;
  }

  if ((v9 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 84));
  }

  v10 = v4[1];
  if ((v10 & 0x20000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 336));
    v10 = v4[1];
    if ((v10 & 0x8000000) == 0)
    {
LABEL_13:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_151;
    }
  }

  else if ((v10 & 0x8000000) == 0)
  {
    goto LABEL_13;
  }

  v37 = *(v3 + 364);
  this = PB::Writer::write(a2);
  v10 = v4[1];
  if ((v10 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_151:
  v38 = *(v3 + 361);
  this = PB::Writer::write(a2);
  if ((v4[1] & 0x800000) != 0)
  {
LABEL_15:
    v11 = *(v3 + 360);
    this = PB::Writer::write(a2);
  }

LABEL_16:
  if ((*(v4 + 3) & 0x10) != 0)
  {
    v12 = *(v3 + 124);
    this = PB::Writer::writeVarInt(a2);
  }

  if ((*(v4 + 11) & 4) != 0)
  {
    v13 = *(v3 + 363);
    this = PB::Writer::write(a2);
  }

  v14 = *v4;
  if ((*v4 & 0x1000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 108));
    v14 = *v4;
    if ((*v4 & 0x100000000000000) == 0)
    {
LABEL_22:
      if ((v14 & 0x80000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_155;
    }
  }

  else if ((v14 & 0x100000000000000) == 0)
  {
    goto LABEL_22;
  }

  this = PB::Writer::write(a2, *(v3 + 236));
  v14 = *v4;
  if ((*v4 & 0x80000000000000) == 0)
  {
LABEL_23:
    if ((v14 & 0x200000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = PB::Writer::write(a2, *(v3 + 232));
  v14 = *v4;
  if ((*v4 & 0x200000000000000) == 0)
  {
LABEL_24:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = PB::Writer::write(a2, *(v3 + 240));
  v14 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_25:
    if ((v14 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = PB::Writer::write(a2, *(v3 + 36));
  v14 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_26:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_158:
  this = PB::Writer::write(a2, *(v3 + 16));
  if ((*v4 & 0x8000) != 0)
  {
LABEL_27:
    this = PB::Writer::write(a2, *(v3 + 72));
  }

LABEL_28:
  v15 = v4[1];
  if ((v15 & 0x100000000) != 0)
  {
    v39 = *(v3 + 369);
    this = PB::Writer::write(a2);
    v15 = v4[1];
    if ((v15 & 0x2000000) == 0)
    {
LABEL_30:
      if ((v15 & 0x10000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v15 & 0x2000000) == 0)
  {
    goto LABEL_30;
  }

  v40 = *(v3 + 362);
  this = PB::Writer::write(a2);
  if ((v4[1] & 0x10000000) != 0)
  {
LABEL_31:
    v16 = *(v3 + 365);
    this = PB::Writer::write(a2);
  }

LABEL_32:
  v17 = *v4;
  if ((*v4 & 0x1000000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 252));
    v17 = *v4;
    if ((*v4 & 0x400000000000000) == 0)
    {
LABEL_34:
      if ((v17 & 0x800000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v17 & 0x400000000000000) == 0)
  {
    goto LABEL_34;
  }

  this = PB::Writer::write(a2, *(v3 + 244));
  if ((*v4 & 0x800000000000000) != 0)
  {
LABEL_35:
    v18 = *(v3 + 248);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_36:
  if ((*(v4 + 11) & 0x80) != 0)
  {
    v19 = *(v3 + 368);
    this = PB::Writer::write(a2);
  }

  v20 = *v4;
  if ((*v4 & 0x2000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 112));
    v20 = *v4;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 256));
  }

  if ((v4[1] & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 276));
  }

  v21 = *v4;
  if ((*v4 & 0x80000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 88));
    v21 = *v4;
  }

  if ((v21 & 0x4000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 212));
  }

  if ((*(v4 + 10) & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 340));
  }

  if ((*(v4 + 7) & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 260));
  }

  if ((v4[1] & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 280));
  }

  v22 = *v4;
  if ((*v4 & 0x100000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 92));
    v22 = *v4;
  }

  if ((v22 & 0x8000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 216));
  }

  if ((*(v4 + 10) & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 344));
  }

  if (*v4 < 0)
  {
    this = PB::Writer::write(a2, *(v3 + 264));
  }

  if ((v4[1] & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 284));
  }

  v23 = *v4;
  if ((*v4 & 0x200000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 96));
    v23 = *v4;
  }

  if ((v23 & 0x10000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 220));
  }

  if ((*(v4 + 10) & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 348));
  }

  v24 = *v4;
  if ((*v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40));
    v24 = *v4;
    if ((*v4 & 0x400) == 0)
    {
LABEL_72:
      if ((v24 & 0x200) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_168;
    }
  }

  else if ((v24 & 0x400) == 0)
  {
    goto LABEL_72;
  }

  this = PB::Writer::write(a2, *(v3 + 52));
  v24 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_73:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = PB::Writer::write(a2, *(v3 + 48));
  v24 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_74:
    if ((v24 & 4) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = PB::Writer::write(a2, *(v3 + 44));
  v24 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_75:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = PB::Writer::write(a2, *(v3 + 20));
  v24 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_76:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = PB::Writer::write(a2, *(v3 + 32));
  v24 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_77:
    if ((v24 & 8) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_173;
  }

LABEL_172:
  this = PB::Writer::write(a2, *(v3 + 28));
  v24 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_78:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_174;
  }

LABEL_173:
  this = PB::Writer::write(a2, *(v3 + 24));
  v24 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_79:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_175;
  }

LABEL_174:
  this = PB::Writer::write(a2, *(v3 + 56));
  v24 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_80:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_176;
  }

LABEL_175:
  this = PB::Writer::write(a2, *(v3 + 68));
  v24 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_81:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_177;
  }

LABEL_176:
  this = PB::Writer::write(a2, *(v3 + 64));
  v24 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_82:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_178;
  }

LABEL_177:
  this = PB::Writer::write(a2, *(v3 + 60));
  v24 = *v4;
  if ((*v4 & 0x10000) == 0)
  {
LABEL_83:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_178:
  this = PB::Writer::write(a2, *(v3 + 76));
  if ((*v4 & 0x20000) != 0)
  {
LABEL_84:
    this = PB::Writer::write(a2, *(v3 + 80));
  }

LABEL_85:
  v25 = v4[1];
  if (v25)
  {
    this = PB::Writer::write(a2, *(v3 + 268));
    v25 = v4[1];
  }

  if ((v25 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 288));
  }

  v26 = *v4;
  if ((*v4 & 0x400000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 100));
    v26 = *v4;
  }

  if ((v26 & 0x20000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 224));
  }

  v27 = v4[1];
  if ((v27 & 0x200000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 352));
    v27 = v4[1];
    if ((v27 & 2) == 0)
    {
LABEL_95:
      if ((v27 & 0x40) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_95;
  }

  this = PB::Writer::write(a2, *(v3 + 272));
  if ((v4[1] & 0x40) != 0)
  {
LABEL_96:
    this = PB::Writer::write(a2, *(v3 + 292));
  }

LABEL_97:
  v28 = *v4;
  if ((*v4 & 0x800000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 104));
    v28 = *v4;
  }

  if ((v28 & 0x40000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 228));
  }

  if ((*(v4 + 10) & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 356));
  }

  v29 = *v4;
  if ((*v4 & 0x2000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 160));
    v29 = *v4;
    if ((*v4 & 0x4000000000) == 0)
    {
LABEL_105:
      if ((v29 & 0x40000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_185;
    }
  }

  else if ((v29 & 0x4000000000) == 0)
  {
    goto LABEL_105;
  }

  this = PB::Writer::write(a2, *(v3 + 164));
  v29 = *v4;
  if ((*v4 & 0x40000000) == 0)
  {
LABEL_106:
    if ((v29 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_186;
  }

LABEL_185:
  this = PB::Writer::write(a2, *(v3 + 132));
  v29 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v29 & 0x1000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_187;
  }

LABEL_186:
  this = PB::Writer::write(a2, *(v3 + 128));
  v29 = *v4;
  if ((*v4 & 0x1000000000) == 0)
  {
LABEL_108:
    if ((v29 & 0x200000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_188;
  }

LABEL_187:
  this = PB::Writer::write(a2, *(v3 + 156));
  v29 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_109:
    if ((v29 & 0x100000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_189;
  }

LABEL_188:
  this = PB::Writer::write(a2, *(v3 + 144));
  v29 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_110:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = PB::Writer::write(a2, *(v3 + 140));
  v29 = *v4;
  if ((*v4 & 0x80000000) == 0)
  {
LABEL_111:
    if ((v29 & 0x800000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = PB::Writer::write(a2, *(v3 + 136));
  v29 = *v4;
  if ((*v4 & 0x800000000000) == 0)
  {
LABEL_112:
    if ((v29 & 0x1000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = PB::Writer::write(a2, *(v3 + 200));
  v29 = *v4;
  if ((*v4 & 0x1000000000000) == 0)
  {
LABEL_113:
    if ((v29 & 0x10000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = PB::Writer::write(a2, *(v3 + 204));
  v29 = *v4;
  if ((*v4 & 0x10000000000) == 0)
  {
LABEL_114:
    if ((v29 & 0x8000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = PB::Writer::write(a2, *(v3 + 172));
  v29 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_115:
    if ((v29 & 0x400000000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = PB::Writer::write(a2, *(v3 + 168));
  v29 = *v4;
  if ((*v4 & 0x400000000000) == 0)
  {
LABEL_116:
    if ((v29 & 0x80000000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = PB::Writer::write(a2, *(v3 + 196));
  v29 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_117:
    if ((v29 & 0x40000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = PB::Writer::write(a2, *(v3 + 184));
  v29 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_118:
    if ((v29 & 0x20000000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_197:
  this = PB::Writer::write(a2, *(v3 + 180));
  if ((*v4 & 0x20000000000) != 0)
  {
LABEL_119:
    this = PB::Writer::write(a2, *(v3 + 176));
  }

LABEL_120:
  v30 = v4[1];
  if ((v30 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 300));
    v30 = v4[1];
    if ((v30 & 0x200) == 0)
    {
LABEL_122:
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_201;
    }
  }

  else if ((v30 & 0x200) == 0)
  {
    goto LABEL_122;
  }

  this = PB::Writer::write(a2, *(v3 + 304));
  v30 = v4[1];
  if ((v30 & 0x80) == 0)
  {
LABEL_123:
    if ((v30 & 0x10000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_201:
  this = PB::Writer::write(a2, *(v3 + 296));
  if ((v4[1] & 0x10000) != 0)
  {
LABEL_124:
    this = PB::Writer::write(a2, *(v3 + 332));
  }

LABEL_125:
  v31 = *v4;
  if ((*v4 & 0x4000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 116));
    v31 = *v4;
  }

  if ((v31 & 0x8000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 120));
  }

  v32 = v4[1];
  if ((v32 & 0x2000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 320));
    v32 = v4[1];
  }

  if ((v32 & 0x400) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 308));
  }

  v33 = *v4;
  if ((*v4 & 0x800000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 152));
    v33 = *v4;
  }

  if ((v33 & 0x400000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 148));
  }

  v34 = v4[1];
  if ((v34 & 0x8000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 328));
    v34 = v4[1];
  }

  if ((v34 & 0x1000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 316));
  }

  v35 = *v4;
  if ((*v4 & 0x200000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 192));
    v35 = *v4;
  }

  if ((v35 & 0x100000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 188));
  }

  v36 = v4[1];
  if ((v36 & 0x4000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 324));
    v36 = v4[1];
  }

  if ((v36 & 0x800) != 0)
  {
    v41 = *(v3 + 312);

    return PB::Writer::write(a2, v41);
  }

  return this;
}

uint64_t CMMsl::KappaRolloverCrashResult::hash_value(CMMsl::KappaRolloverCrashResult *this)
{
  v1 = *(this + 372);
  if (v1)
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 380);
  if ((v3 & 0x20000000) != 0)
  {
    v242 = *(this + 366);
    if ((v3 & 0x40000000) != 0)
    {
LABEL_6:
      v241 = *(this + 367);
      if ((v1 & 0x2000000000000) != 0)
      {
        goto LABEL_7;
      }

LABEL_278:
      v240 = 0;
      if ((v1 & 0x40000) != 0)
      {
        goto LABEL_10;
      }

LABEL_279:
      v239 = 0;
      if ((v3 & 0x20000) != 0)
      {
        goto LABEL_13;
      }

LABEL_280:
      v238 = 0;
      if ((v3 & 0x8000000) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_281;
    }
  }

  else
  {
    v242 = 0;
    if ((v3 & 0x40000000) != 0)
    {
      goto LABEL_6;
    }
  }

  v241 = 0;
  if ((v1 & 0x2000000000000) == 0)
  {
    goto LABEL_278;
  }

LABEL_7:
  v4 = *(this + 52);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v240 = v5;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_279;
  }

LABEL_10:
  v6 = *(this + 21);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v239 = v7;
  if ((v3 & 0x20000) == 0)
  {
    goto LABEL_280;
  }

LABEL_13:
  v8 = *(this + 84);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v238 = v9;
  if ((v3 & 0x8000000) != 0)
  {
LABEL_16:
    v237 = *(this + 364);
    if ((v3 & 0x1000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_282;
  }

LABEL_281:
  v237 = 0;
  if ((v3 & 0x1000000) != 0)
  {
LABEL_17:
    v236 = *(this + 361);
    if ((v3 & 0x800000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_283;
  }

LABEL_282:
  v236 = 0;
  if ((v3 & 0x800000) != 0)
  {
LABEL_18:
    v235 = *(this + 360);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_284;
  }

LABEL_283:
  v235 = 0;
  if ((v1 & 0x10000000) != 0)
  {
LABEL_19:
    v234 = *(this + 31);
    if ((v3 & 0x4000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_285;
  }

LABEL_284:
  v234 = 0;
  if ((v3 & 0x4000000) != 0)
  {
LABEL_20:
    v233 = *(this + 363);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_286:
    v232 = 0;
    if ((v1 & 0x100000000000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_287:
    v231 = 0;
    if ((v1 & 0x80000000000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_288:
    v230 = 0;
    if ((v1 & 0x200000000000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_289:
    v229 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_33;
    }

LABEL_290:
    v228 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_36;
    }

LABEL_291:
    v227 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_39;
    }

LABEL_292:
    v226 = 0;
    if ((v3 & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_293;
  }

LABEL_285:
  v233 = 0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_286;
  }

LABEL_21:
  v10 = *(this + 27);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v232 = v11;
  if ((v1 & 0x100000000000000) == 0)
  {
    goto LABEL_287;
  }

LABEL_24:
  v12 = *(this + 59);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v231 = v13;
  if ((v1 & 0x80000000000000) == 0)
  {
    goto LABEL_288;
  }

LABEL_27:
  v14 = *(this + 58);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  v230 = v15;
  if ((v1 & 0x200000000000000) == 0)
  {
    goto LABEL_289;
  }

LABEL_30:
  v16 = *(this + 60);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  v229 = v17;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_290;
  }

LABEL_33:
  v18 = *(this + 9);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  v228 = v19;
  if ((v1 & 2) == 0)
  {
    goto LABEL_291;
  }

LABEL_36:
  v20 = *(this + 4);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  v227 = v21;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_292;
  }

LABEL_39:
  v22 = *(this + 18);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  v226 = v23;
  if ((v3 & 0x100000000) != 0)
  {
LABEL_42:
    v225 = *(this + 369);
    if ((v3 & 0x2000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_294;
  }

LABEL_293:
  v225 = 0;
  if ((v3 & 0x2000000) != 0)
  {
LABEL_43:
    v224 = *(this + 362);
    if ((v3 & 0x10000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_295;
  }

LABEL_294:
  v224 = 0;
  if ((v3 & 0x10000000) != 0)
  {
LABEL_44:
    v223 = *(this + 365);
    if ((v1 & 0x1000000000000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_296:
    v222 = 0;
    if ((v1 & 0x400000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_297:
    v221 = 0;
    if ((v1 & 0x800000000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_298;
  }

LABEL_295:
  v223 = 0;
  if ((v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_296;
  }

LABEL_45:
  v24 = *(this + 63);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  v222 = v25;
  if ((v1 & 0x400000000000000) == 0)
  {
    goto LABEL_297;
  }

LABEL_48:
  v26 = *(this + 61);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  v221 = v27;
  if ((v1 & 0x800000000000000) != 0)
  {
LABEL_51:
    v220 = *(this + 62);
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_299;
  }

LABEL_298:
  v220 = 0;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_52:
    v219 = *(this + 368);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_300:
    v218 = 0;
    if ((v1 & 0x2000000000000000) != 0)
    {
      goto LABEL_56;
    }

LABEL_301:
    v217 = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_59;
    }

LABEL_302:
    v216 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_62;
    }

LABEL_303:
    v215 = 0;
    if ((v1 & 0x4000000000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_304:
    v214 = 0;
    if ((v3 & 0x40000) != 0)
    {
      goto LABEL_68;
    }

LABEL_305:
    v213 = 0;
    if ((v1 & 0x4000000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_306:
    v212 = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_74;
    }

LABEL_307:
    v211 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_77;
    }

LABEL_308:
    v210 = 0;
    if ((v1 & 0x8000000000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_309:
    v209 = 0;
    if ((v3 & 0x80000) != 0)
    {
      goto LABEL_83;
    }

LABEL_310:
    v208 = 0;
    if (v1 < 0)
    {
      goto LABEL_86;
    }

LABEL_311:
    v207 = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_89;
    }

LABEL_312:
    v206 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_92;
    }

LABEL_313:
    v205 = 0;
    if ((v1 & 0x10000000000000) != 0)
    {
      goto LABEL_95;
    }

LABEL_314:
    v204 = 0;
    if ((v3 & 0x100000) != 0)
    {
      goto LABEL_98;
    }

LABEL_315:
    v203 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_101;
    }

LABEL_316:
    v202 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_104;
    }

LABEL_317:
    v201 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_107;
    }

LABEL_318:
    v200 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_110;
    }

LABEL_319:
    v199 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_113;
    }

LABEL_320:
    v198 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_116;
    }

LABEL_321:
    v197 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_119;
    }

LABEL_322:
    v196 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_122;
    }

LABEL_323:
    v195 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_125;
    }

LABEL_324:
    v194 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_128;
    }

LABEL_325:
    v193 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_131;
    }

LABEL_326:
    v192 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_134;
    }

LABEL_327:
    v191 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_137;
    }

LABEL_328:
    v190 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_140;
    }

LABEL_329:
    v189 = 0;
    if (v3)
    {
      goto LABEL_143;
    }

LABEL_330:
    v188 = 0;
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_146;
    }

LABEL_331:
    v187 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_149;
    }

LABEL_332:
    v186 = 0;
    if ((v1 & 0x20000000000000) != 0)
    {
      goto LABEL_152;
    }

LABEL_333:
    v185 = 0;
    if ((v3 & 0x200000) != 0)
    {
      goto LABEL_155;
    }

LABEL_334:
    v184 = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_158;
    }

LABEL_335:
    v183 = 0;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_161;
    }

LABEL_336:
    v182 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_164;
    }

LABEL_337:
    v181 = 0;
    if ((v1 & 0x40000000000000) != 0)
    {
      goto LABEL_167;
    }

LABEL_338:
    v180 = 0;
    if ((v3 & 0x400000) != 0)
    {
      goto LABEL_170;
    }

LABEL_339:
    v179 = 0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_173;
    }

LABEL_340:
    v178 = 0;
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_176;
    }

LABEL_341:
    v177 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_179;
    }

LABEL_342:
    v176 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_182;
    }

LABEL_343:
    v175 = 0;
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_185;
    }

LABEL_344:
    v174 = 0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_345:
    v173 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_191;
    }

LABEL_346:
    v121 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_195;
    }

LABEL_347:
    v123 = 0;
    if ((v1 & 0x800000000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_348:
    v125 = 0;
    if ((v1 & 0x1000000000000) != 0)
    {
      goto LABEL_203;
    }

LABEL_349:
    v127 = 0;
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_207;
    }

LABEL_350:
    v129 = 0;
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_211;
    }

LABEL_351:
    v131 = 0;
    if ((v1 & 0x400000000000) != 0)
    {
      goto LABEL_215;
    }

LABEL_352:
    v133 = 0;
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_219;
    }

LABEL_353:
    v135 = 0;
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_222;
    }

LABEL_354:
    v137 = 0;
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_225;
    }

LABEL_355:
    v139 = 0;
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_228;
    }

LABEL_356:
    v141 = 0;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_231;
    }

LABEL_357:
    v143 = 0;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_234;
    }

LABEL_358:
    v145 = 0;
    if ((v3 & 0x10000) != 0)
    {
      goto LABEL_237;
    }

LABEL_359:
    v147 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_240;
    }

LABEL_360:
    v149 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_243;
    }

LABEL_361:
    v151 = 0;
    if ((v3 & 0x2000) != 0)
    {
      goto LABEL_246;
    }

LABEL_362:
    v153 = 0;
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_249;
    }

LABEL_363:
    v155 = 0;
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_252;
    }

LABEL_364:
    v157 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_255;
    }

LABEL_365:
    v159 = 0;
    if ((v3 & 0x8000) != 0)
    {
      goto LABEL_258;
    }

LABEL_366:
    v161 = 0;
    if ((v3 & 0x1000) != 0)
    {
      goto LABEL_261;
    }

LABEL_367:
    v163 = 0;
    if ((v1 & 0x200000000000) != 0)
    {
      goto LABEL_264;
    }

LABEL_368:
    v165 = 0;
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_267;
    }

LABEL_369:
    v167 = 0;
    if ((v3 & 0x4000) != 0)
    {
      goto LABEL_270;
    }

    goto LABEL_370;
  }

LABEL_299:
  v219 = 0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_300;
  }

LABEL_53:
  v28 = *(this + 28);
  v29 = LODWORD(v28);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  v218 = v29;
  if ((v1 & 0x2000000000000000) == 0)
  {
    goto LABEL_301;
  }

LABEL_56:
  v30 = *(this + 64);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  v217 = v31;
  if ((v3 & 4) == 0)
  {
    goto LABEL_302;
  }

LABEL_59:
  v32 = *(this + 69);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  v216 = v33;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_303;
  }

LABEL_62:
  v34 = *(this + 22);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  v215 = v35;
  if ((v1 & 0x4000000000000) == 0)
  {
    goto LABEL_304;
  }

LABEL_65:
  v36 = *(this + 53);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  v214 = v37;
  if ((v3 & 0x40000) == 0)
  {
    goto LABEL_305;
  }

LABEL_68:
  v38 = *(this + 85);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  v213 = v39;
  if ((v1 & 0x4000000000000000) == 0)
  {
    goto LABEL_306;
  }

LABEL_71:
  v40 = *(this + 65);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  v212 = v41;
  if ((v3 & 8) == 0)
  {
    goto LABEL_307;
  }

LABEL_74:
  v42 = *(this + 70);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  v211 = v43;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_308;
  }

LABEL_77:
  v44 = *(this + 23);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  v210 = v45;
  if ((v1 & 0x8000000000000) == 0)
  {
    goto LABEL_309;
  }

LABEL_80:
  v46 = *(this + 54);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  v209 = v47;
  if ((v3 & 0x80000) == 0)
  {
    goto LABEL_310;
  }

LABEL_83:
  v48 = *(this + 86);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  v208 = v49;
  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_311;
  }

LABEL_86:
  v50 = *(this + 66);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  v207 = v51;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_312;
  }

LABEL_89:
  v52 = *(this + 71);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  v206 = v53;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_313;
  }

LABEL_92:
  v54 = *(this + 24);
  v55 = LODWORD(v54);
  if (v54 == 0.0)
  {
    v55 = 0;
  }

  v205 = v55;
  if ((v1 & 0x10000000000000) == 0)
  {
    goto LABEL_314;
  }

LABEL_95:
  v56 = *(this + 55);
  v57 = LODWORD(v56);
  if (v56 == 0.0)
  {
    v57 = 0;
  }

  v204 = v57;
  if ((v3 & 0x100000) == 0)
  {
    goto LABEL_315;
  }

LABEL_98:
  v58 = *(this + 87);
  v59 = LODWORD(v58);
  if (v58 == 0.0)
  {
    v59 = 0;
  }

  v203 = v59;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_316;
  }

LABEL_101:
  v60 = *(this + 10);
  v61 = LODWORD(v60);
  if (v60 == 0.0)
  {
    v61 = 0;
  }

  v202 = v61;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_317;
  }

LABEL_104:
  v62 = *(this + 13);
  v63 = LODWORD(v62);
  if (v62 == 0.0)
  {
    v63 = 0;
  }

  v201 = v63;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_318;
  }

LABEL_107:
  v64 = *(this + 12);
  v65 = LODWORD(v64);
  if (v64 == 0.0)
  {
    v65 = 0;
  }

  v200 = v65;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_319;
  }

LABEL_110:
  v66 = *(this + 11);
  v67 = LODWORD(v66);
  if (v66 == 0.0)
  {
    v67 = 0;
  }

  v199 = v67;
  if ((v1 & 4) == 0)
  {
    goto LABEL_320;
  }

LABEL_113:
  v68 = *(this + 5);
  v69 = LODWORD(v68);
  if (v68 == 0.0)
  {
    v69 = 0;
  }

  v198 = v69;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_321;
  }

LABEL_116:
  v70 = *(this + 8);
  v71 = LODWORD(v70);
  if (v70 == 0.0)
  {
    v71 = 0;
  }

  v197 = v71;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_322;
  }

LABEL_119:
  v72 = *(this + 7);
  v73 = LODWORD(v72);
  if (v72 == 0.0)
  {
    v73 = 0;
  }

  v196 = v73;
  if ((v1 & 8) == 0)
  {
    goto LABEL_323;
  }

LABEL_122:
  v74 = *(this + 6);
  v75 = LODWORD(v74);
  if (v74 == 0.0)
  {
    v75 = 0;
  }

  v195 = v75;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_324;
  }

LABEL_125:
  v76 = *(this + 14);
  v77 = LODWORD(v76);
  if (v76 == 0.0)
  {
    v77 = 0;
  }

  v194 = v77;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_325;
  }

LABEL_128:
  v78 = *(this + 17);
  v79 = LODWORD(v78);
  if (v78 == 0.0)
  {
    v79 = 0;
  }

  v193 = v79;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_326;
  }

LABEL_131:
  v80 = *(this + 16);
  v81 = LODWORD(v80);
  if (v80 == 0.0)
  {
    v81 = 0;
  }

  v192 = v81;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_327;
  }

LABEL_134:
  v82 = *(this + 15);
  v83 = LODWORD(v82);
  if (v82 == 0.0)
  {
    v83 = 0;
  }

  v191 = v83;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_328;
  }

LABEL_137:
  v84 = *(this + 19);
  v85 = LODWORD(v84);
  if (v84 == 0.0)
  {
    v85 = 0;
  }

  v190 = v85;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_329;
  }

LABEL_140:
  v86 = *(this + 20);
  v87 = LODWORD(v86);
  if (v86 == 0.0)
  {
    v87 = 0;
  }

  v189 = v87;
  if ((v3 & 1) == 0)
  {
    goto LABEL_330;
  }

LABEL_143:
  v88 = *(this + 67);
  v89 = LODWORD(v88);
  if (v88 == 0.0)
  {
    v89 = 0;
  }

  v188 = v89;
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_331;
  }

LABEL_146:
  v90 = *(this + 72);
  v91 = LODWORD(v90);
  if (v90 == 0.0)
  {
    v91 = 0;
  }

  v187 = v91;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_332;
  }

LABEL_149:
  v92 = *(this + 25);
  v93 = LODWORD(v92);
  if (v92 == 0.0)
  {
    v93 = 0;
  }

  v186 = v93;
  if ((v1 & 0x20000000000000) == 0)
  {
    goto LABEL_333;
  }

LABEL_152:
  v94 = *(this + 56);
  v95 = LODWORD(v94);
  if (v94 == 0.0)
  {
    v95 = 0;
  }

  v185 = v95;
  if ((v3 & 0x200000) == 0)
  {
    goto LABEL_334;
  }

LABEL_155:
  v96 = *(this + 88);
  v97 = LODWORD(v96);
  if (v96 == 0.0)
  {
    v97 = 0;
  }

  v184 = v97;
  if ((v3 & 2) == 0)
  {
    goto LABEL_335;
  }

LABEL_158:
  v98 = *(this + 68);
  v99 = LODWORD(v98);
  if (v98 == 0.0)
  {
    v99 = 0;
  }

  v183 = v99;
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_336;
  }

LABEL_161:
  v100 = *(this + 73);
  v101 = LODWORD(v100);
  if (v100 == 0.0)
  {
    v101 = 0;
  }

  v182 = v101;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_337;
  }

LABEL_164:
  v102 = *(this + 26);
  v103 = LODWORD(v102);
  if (v102 == 0.0)
  {
    v103 = 0;
  }

  v181 = v103;
  if ((v1 & 0x40000000000000) == 0)
  {
    goto LABEL_338;
  }

LABEL_167:
  v104 = *(this + 57);
  v105 = LODWORD(v104);
  if (v104 == 0.0)
  {
    v105 = 0;
  }

  v180 = v105;
  if ((v3 & 0x400000) == 0)
  {
    goto LABEL_339;
  }

LABEL_170:
  v106 = *(this + 89);
  v107 = LODWORD(v106);
  if (v106 == 0.0)
  {
    v107 = 0;
  }

  v179 = v107;
  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_340;
  }

LABEL_173:
  v108 = *(this + 40);
  v109 = LODWORD(v108);
  if (v108 == 0.0)
  {
    v109 = 0;
  }

  v178 = v109;
  if ((v1 & 0x4000000000) == 0)
  {
    goto LABEL_341;
  }

LABEL_176:
  v110 = *(this + 41);
  v111 = LODWORD(v110);
  if (v110 == 0.0)
  {
    v111 = 0;
  }

  v177 = v111;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_342;
  }

LABEL_179:
  v112 = *(this + 33);
  v113 = LODWORD(v112);
  if (v112 == 0.0)
  {
    v113 = 0;
  }

  v176 = v113;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_343;
  }

LABEL_182:
  v114 = *(this + 32);
  v115 = LODWORD(v114);
  if (v114 == 0.0)
  {
    v115 = 0;
  }

  v175 = v115;
  if ((v1 & 0x1000000000) == 0)
  {
    goto LABEL_344;
  }

LABEL_185:
  v116 = *(this + 39);
  v117 = LODWORD(v116);
  if (v116 == 0.0)
  {
    v117 = 0;
  }

  v174 = v117;
  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_345;
  }

LABEL_188:
  v118 = *(this + 36);
  v119 = LODWORD(v118);
  if (v118 == 0.0)
  {
    v119 = 0;
  }

  v173 = v119;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_346;
  }

LABEL_191:
  v120 = *(this + 35);
  if (v120 == 0.0)
  {
    v121 = 0;
  }

  else
  {
    v121 = LODWORD(v120);
  }

  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_347;
  }

LABEL_195:
  v122 = *(this + 34);
  if (v122 == 0.0)
  {
    v123 = 0;
  }

  else
  {
    v123 = LODWORD(v122);
  }

  if ((v1 & 0x800000000000) == 0)
  {
    goto LABEL_348;
  }

LABEL_199:
  v124 = *(this + 50);
  if (v124 == 0.0)
  {
    v125 = 0;
  }

  else
  {
    v125 = LODWORD(v124);
  }

  if ((v1 & 0x1000000000000) == 0)
  {
    goto LABEL_349;
  }

LABEL_203:
  v126 = *(this + 51);
  if (v126 == 0.0)
  {
    v127 = 0;
  }

  else
  {
    v127 = LODWORD(v126);
  }

  if ((v1 & 0x10000000000) == 0)
  {
    goto LABEL_350;
  }

LABEL_207:
  v128 = *(this + 43);
  if (v128 == 0.0)
  {
    v129 = 0;
  }

  else
  {
    v129 = LODWORD(v128);
  }

  if ((v1 & 0x8000000000) == 0)
  {
    goto LABEL_351;
  }

LABEL_211:
  v130 = *(this + 42);
  if (v130 == 0.0)
  {
    v131 = 0;
  }

  else
  {
    v131 = LODWORD(v130);
  }

  if ((v1 & 0x400000000000) == 0)
  {
    goto LABEL_352;
  }

LABEL_215:
  v132 = *(this + 49);
  if (v132 == 0.0)
  {
    v133 = 0;
  }

  else
  {
    v133 = LODWORD(v132);
  }

  if ((v1 & 0x80000000000) == 0)
  {
    goto LABEL_353;
  }

LABEL_219:
  v134 = *(this + 46);
  v135 = LODWORD(v134);
  if (v134 == 0.0)
  {
    v135 = 0;
  }

  if ((v1 & 0x40000000000) == 0)
  {
    goto LABEL_354;
  }

LABEL_222:
  v136 = *(this + 45);
  v137 = LODWORD(v136);
  if (v136 == 0.0)
  {
    v137 = 0;
  }

  if ((v1 & 0x20000000000) == 0)
  {
    goto LABEL_355;
  }

LABEL_225:
  v138 = *(this + 44);
  v139 = LODWORD(v138);
  if (v138 == 0.0)
  {
    v139 = 0;
  }

  if ((v3 & 0x100) == 0)
  {
    goto LABEL_356;
  }

LABEL_228:
  v140 = *(this + 75);
  v141 = LODWORD(v140);
  if (v140 == 0.0)
  {
    v141 = 0;
  }

  if ((v3 & 0x200) == 0)
  {
    goto LABEL_357;
  }

LABEL_231:
  v142 = *(this + 76);
  v143 = LODWORD(v142);
  if (v142 == 0.0)
  {
    v143 = 0;
  }

  if ((v3 & 0x80) == 0)
  {
    goto LABEL_358;
  }

LABEL_234:
  v144 = *(this + 74);
  v145 = LODWORD(v144);
  if (v144 == 0.0)
  {
    v145 = 0;
  }

  if ((v3 & 0x10000) == 0)
  {
    goto LABEL_359;
  }

LABEL_237:
  v146 = *(this + 83);
  v147 = LODWORD(v146);
  if (v146 == 0.0)
  {
    v147 = 0;
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_360;
  }

LABEL_240:
  v148 = *(this + 29);
  v149 = LODWORD(v148);
  if (v148 == 0.0)
  {
    v149 = 0;
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_361;
  }

LABEL_243:
  v150 = *(this + 30);
  v151 = LODWORD(v150);
  if (v150 == 0.0)
  {
    v151 = 0;
  }

  if ((v3 & 0x2000) == 0)
  {
    goto LABEL_362;
  }

LABEL_246:
  v152 = *(this + 80);
  v153 = LODWORD(v152);
  if (v152 == 0.0)
  {
    v153 = 0;
  }

  if ((v3 & 0x400) == 0)
  {
    goto LABEL_363;
  }

LABEL_249:
  v154 = *(this + 77);
  v155 = LODWORD(v154);
  if (v154 == 0.0)
  {
    v155 = 0;
  }

  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_364;
  }

LABEL_252:
  v156 = *(this + 38);
  v157 = LODWORD(v156);
  if (v156 == 0.0)
  {
    v157 = 0;
  }

  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_365;
  }

LABEL_255:
  v158 = *(this + 37);
  v159 = LODWORD(v158);
  if (v158 == 0.0)
  {
    v159 = 0;
  }

  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_366;
  }

LABEL_258:
  v160 = *(this + 82);
  v161 = LODWORD(v160);
  if (v160 == 0.0)
  {
    v161 = 0;
  }

  if ((v3 & 0x1000) == 0)
  {
    goto LABEL_367;
  }

LABEL_261:
  v162 = *(this + 79);
  v163 = LODWORD(v162);
  if (v162 == 0.0)
  {
    v163 = 0;
  }

  if ((v1 & 0x200000000000) == 0)
  {
    goto LABEL_368;
  }

LABEL_264:
  v164 = *(this + 48);
  v165 = LODWORD(v164);
  if (v164 == 0.0)
  {
    v165 = 0;
  }

  if ((v1 & 0x100000000000) == 0)
  {
    goto LABEL_369;
  }

LABEL_267:
  v166 = *(this + 47);
  v167 = LODWORD(v166);
  if (v166 == 0.0)
  {
    v167 = 0;
  }

  if ((v3 & 0x4000) != 0)
  {
LABEL_270:
    v168 = *(this + 81);
    v169 = LODWORD(v168);
    if (v168 == 0.0)
    {
      v169 = 0;
    }

    if ((v3 & 0x800) != 0)
    {
      goto LABEL_273;
    }

LABEL_371:
    v171 = 0;
    return v242 ^ v2 ^ v241 ^ v240 ^ v239 ^ v238 ^ v237 ^ v236 ^ v235 ^ v234 ^ v233 ^ v232 ^ v231 ^ v230 ^ v229 ^ v228 ^ v227 ^ v226 ^ v225 ^ v224 ^ v223 ^ v222 ^ v221 ^ v220 ^ v219 ^ v218 ^ v217 ^ v216 ^ v215 ^ v214 ^ v213 ^ v212 ^ v211 ^ v210 ^ v209 ^ v208 ^ v207 ^ v206 ^ v205 ^ v204 ^ v203 ^ v202 ^ v201 ^ v200 ^ v199 ^ v198 ^ v197 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v121 ^ v123 ^ v125 ^ v127 ^ v129 ^ v131 ^ v133 ^ v135 ^ v137 ^ v139 ^ v141 ^ v143 ^ v145 ^ v147 ^ v149 ^ v151 ^ v153 ^ v155 ^ v157 ^ v159 ^ v161 ^ v163 ^ v165 ^ v167 ^ v169 ^ v171;
  }

LABEL_370:
  v169 = 0;
  if ((v3 & 0x800) == 0)
  {
    goto LABEL_371;
  }

LABEL_273:
  v170 = *(this + 78);
  v171 = LODWORD(v170);
  if (v170 == 0.0)
  {
    v171 = 0;
  }

  return v242 ^ v2 ^ v241 ^ v240 ^ v239 ^ v238 ^ v237 ^ v236 ^ v235 ^ v234 ^ v233 ^ v232 ^ v231 ^ v230 ^ v229 ^ v228 ^ v227 ^ v226 ^ v225 ^ v224 ^ v223 ^ v222 ^ v221 ^ v220 ^ v219 ^ v218 ^ v217 ^ v216 ^ v215 ^ v214 ^ v213 ^ v212 ^ v211 ^ v210 ^ v209 ^ v208 ^ v207 ^ v206 ^ v205 ^ v204 ^ v203 ^ v202 ^ v201 ^ v200 ^ v199 ^ v198 ^ v197 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v121 ^ v123 ^ v125 ^ v127 ^ v129 ^ v131 ^ v133 ^ v135 ^ v137 ^ v139 ^ v141 ^ v143 ^ v145 ^ v147 ^ v149 ^ v151 ^ v153 ^ v155 ^ v157 ^ v159 ^ v161 ^ v163 ^ v165 ^ v167 ^ v169 ^ v171;
}