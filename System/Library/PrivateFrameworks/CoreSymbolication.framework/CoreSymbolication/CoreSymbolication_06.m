__int128 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,0>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v122 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1);
  v6 = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v79 = a2[2];
      v90 = a2[3];
      v101 = a2[4];
      v112 = a2[5];
      v57 = *a2;
      v68 = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      v12 = a3[5];
      v14 = a3[2];
      v13 = a3[3];
      a2[4] = a3[4];
      a2[5] = v12;
      a2[2] = v14;
      a2[3] = v13;
      a3[4] = v101;
      a3[5] = v112;
      a3[2] = v79;
      a3[3] = v90;
      *a3 = v57;
      a3[1] = v68;
      if (*(a2 + 1) < *(result + 1))
      {
        v80 = result[2];
        v91 = result[3];
        v102 = result[4];
        v113 = result[5];
        v58 = *result;
        v69 = result[1];
        v15 = a2[1];
        *result = *a2;
        result[1] = v15;
        v16 = a2[5];
        v18 = a2[2];
        v17 = a2[3];
        result[4] = a2[4];
        result[5] = v16;
        result[2] = v18;
        result[3] = v17;
        a2[4] = v102;
        a2[5] = v113;
        a2[2] = v80;
        a2[3] = v91;
        *a2 = v58;
        a2[1] = v69;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v78 = result[2];
      v89 = result[3];
      v100 = result[4];
      v111 = result[5];
      v56 = *result;
      v67 = result[1];
      v7 = a3[1];
      *result = *a3;
      result[1] = v7;
      v8 = a3[5];
      v10 = a3[2];
      v9 = a3[3];
      result[4] = a3[4];
      result[5] = v8;
      result[2] = v10;
      result[3] = v9;
LABEL_9:
      a3[4] = v100;
      a3[5] = v111;
      a3[2] = v78;
      a3[3] = v89;
      *a3 = v56;
      a3[1] = v67;
      goto LABEL_10;
    }

    v81 = result[2];
    v92 = result[3];
    v103 = result[4];
    v114 = result[5];
    v59 = *result;
    v70 = result[1];
    v19 = a2[1];
    *result = *a2;
    result[1] = v19;
    v20 = a2[5];
    v22 = a2[2];
    v21 = a2[3];
    result[4] = a2[4];
    result[5] = v20;
    result[2] = v22;
    result[3] = v21;
    a2[4] = v103;
    a2[5] = v114;
    a2[2] = v81;
    a2[3] = v92;
    *a2 = v59;
    a2[1] = v70;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v78 = a2[2];
      v89 = a2[3];
      v100 = a2[4];
      v111 = a2[5];
      v56 = *a2;
      v67 = a2[1];
      v23 = a3[1];
      *a2 = *a3;
      a2[1] = v23;
      v24 = a3[5];
      v26 = a3[2];
      v25 = a3[3];
      a2[4] = a3[4];
      a2[5] = v24;
      a2[2] = v26;
      a2[3] = v25;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    v82 = a3[2];
    v93 = a3[3];
    v104 = a3[4];
    v115 = a3[5];
    v60 = *a3;
    v71 = a3[1];
    v27 = a4[1];
    *a3 = *a4;
    a3[1] = v27;
    v28 = a4[5];
    v30 = a4[2];
    v29 = a4[3];
    a3[4] = a4[4];
    a3[5] = v28;
    a3[2] = v30;
    a3[3] = v29;
    a4[4] = v104;
    a4[5] = v115;
    a4[2] = v82;
    a4[3] = v93;
    *a4 = v60;
    a4[1] = v71;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v83 = a2[2];
      v94 = a2[3];
      v105 = a2[4];
      v116 = a2[5];
      v61 = *a2;
      v72 = a2[1];
      v31 = a3[1];
      *a2 = *a3;
      a2[1] = v31;
      v32 = a3[5];
      v34 = a3[2];
      v33 = a3[3];
      a2[4] = a3[4];
      a2[5] = v32;
      a2[2] = v34;
      a2[3] = v33;
      a3[4] = v105;
      a3[5] = v116;
      a3[2] = v83;
      a3[3] = v94;
      *a3 = v61;
      a3[1] = v72;
      if (*(a2 + 1) < *(result + 1))
      {
        v84 = result[2];
        v95 = result[3];
        v106 = result[4];
        v117 = result[5];
        v62 = *result;
        v73 = result[1];
        v35 = a2[1];
        *result = *a2;
        result[1] = v35;
        v36 = a2[5];
        v38 = a2[2];
        v37 = a2[3];
        result[4] = a2[4];
        result[5] = v36;
        result[2] = v38;
        result[3] = v37;
        a2[4] = v106;
        a2[5] = v117;
        a2[2] = v84;
        a2[3] = v95;
        *a2 = v62;
        a2[1] = v73;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v85 = a4[2];
    v96 = a4[3];
    v107 = a4[4];
    v118 = a4[5];
    v63 = *a4;
    v74 = a4[1];
    v39 = a5[1];
    *a4 = *a5;
    a4[1] = v39;
    v40 = a5[5];
    v42 = a5[2];
    v41 = a5[3];
    a4[4] = a5[4];
    a4[5] = v40;
    a4[2] = v42;
    a4[3] = v41;
    a5[4] = v107;
    a5[5] = v118;
    a5[2] = v85;
    a5[3] = v96;
    *a5 = v63;
    a5[1] = v74;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v86 = a3[2];
      v97 = a3[3];
      v108 = a3[4];
      v119 = a3[5];
      v64 = *a3;
      v75 = a3[1];
      v43 = a4[1];
      *a3 = *a4;
      a3[1] = v43;
      v44 = a4[5];
      v46 = a4[2];
      v45 = a4[3];
      a3[4] = a4[4];
      a3[5] = v44;
      a3[2] = v46;
      a3[3] = v45;
      a4[4] = v108;
      a4[5] = v119;
      a4[2] = v86;
      a4[3] = v97;
      *a4 = v64;
      a4[1] = v75;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v87 = a2[2];
        v98 = a2[3];
        v109 = a2[4];
        v120 = a2[5];
        v65 = *a2;
        v76 = a2[1];
        v47 = a3[1];
        *a2 = *a3;
        a2[1] = v47;
        v48 = a3[5];
        v50 = a3[2];
        v49 = a3[3];
        a2[4] = a3[4];
        a2[5] = v48;
        a2[2] = v50;
        a2[3] = v49;
        a3[4] = v109;
        a3[5] = v120;
        a3[2] = v87;
        a3[3] = v98;
        *a3 = v65;
        a3[1] = v76;
        if (*(a2 + 1) < *(result + 1))
        {
          v88 = result[2];
          v99 = result[3];
          v110 = result[4];
          v121 = result[5];
          v66 = *result;
          v77 = result[1];
          v51 = a2[1];
          *result = *a2;
          result[1] = v51;
          v52 = a2[5];
          v54 = a2[2];
          v53 = a2[3];
          result[4] = a2[4];
          result[5] = v52;
          result[2] = v54;
          result[3] = v53;
          a2[4] = v110;
          a2[5] = v121;
          a2[2] = v88;
          a2[3] = v99;
          *a2 = v66;
          a2[1] = v77;
        }
      }
    }
  }

  v55 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*>(uint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x1E69E9840];
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v8 = (a2 - 96);
      v9 = *(a1 + 104);
      v10 = *(a2 - 88);
      if (v9 < *(a1 + 8))
      {
        if (v10 >= v9)
        {
          v127 = *(a1 + 32);
          v143 = *(a1 + 48);
          v159 = *(a1 + 64);
          v175 = *(a1 + 80);
          v95 = *a1;
          v111 = *(a1 + 16);
          v44 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 128);
          *(a1 + 48) = v44;
          v45 = *(a1 + 176);
          *(a1 + 64) = *(a1 + 160);
          *(a1 + 80) = v45;
          v46 = *(a1 + 112);
          *a1 = *(a1 + 96);
          *(a1 + 16) = v46;
          *(a1 + 96) = v95;
          *(a1 + 112) = v111;
          *(a1 + 160) = v159;
          *(a1 + 176) = v175;
          *(a1 + 128) = v127;
          *(a1 + 144) = v143;
          if (*(a2 - 88) >= *(a1 + 104))
          {
            goto LABEL_52;
          }

          v119 = *(a1 + 128);
          v135 = *(a1 + 144);
          v151 = *(a1 + 160);
          v167 = *(a1 + 176);
          v87 = *(a1 + 96);
          v103 = *(a1 + 112);
          v47 = *(a2 - 80);
          *(a1 + 96) = *v8;
          *(a1 + 112) = v47;
          v48 = *(a2 - 16);
          v50 = *(a2 - 64);
          v49 = *(a2 - 48);
          *(a1 + 160) = *(a2 - 32);
          *(a1 + 176) = v48;
          *(a1 + 128) = v50;
          *(a1 + 144) = v49;
        }

        else
        {
          v119 = *(a1 + 32);
          v135 = *(a1 + 48);
          v151 = *(a1 + 64);
          v167 = *(a1 + 80);
          v87 = *a1;
          v103 = *(a1 + 16);
          v11 = *(a2 - 80);
          *a1 = *v8;
          *(a1 + 16) = v11;
          v12 = *(a2 - 16);
          v14 = *(a2 - 64);
          v13 = *(a2 - 48);
          *(a1 + 64) = *(a2 - 32);
          *(a1 + 80) = v12;
          *(a1 + 32) = v14;
          *(a1 + 48) = v13;
        }

        *(a2 - 32) = v151;
        *(a2 - 16) = v167;
        *(a2 - 64) = v119;
        *(a2 - 48) = v135;
        result = 1;
        *v8 = v87;
        *(a2 - 80) = v103;
        goto LABEL_53;
      }

      if (v10 >= v9)
      {
LABEL_52:
        result = 1;
        goto LABEL_53;
      }

      v122 = *(a1 + 128);
      v138 = *(a1 + 144);
      v154 = *(a1 + 160);
      v170 = *(a1 + 176);
      v90 = *(a1 + 96);
      v106 = *(a1 + 112);
      v28 = *(a2 - 80);
      *(a1 + 96) = *v8;
      *(a1 + 112) = v28;
      v29 = *(a2 - 16);
      v31 = *(a2 - 64);
      v30 = *(a2 - 48);
      *(a1 + 160) = *(a2 - 32);
      *(a1 + 176) = v29;
      *(a1 + 128) = v31;
      *(a1 + 144) = v30;
      *(a2 - 32) = v154;
      *(a2 - 16) = v170;
      *(a2 - 64) = v122;
      *(a2 - 48) = v138;
      *v8 = v90;
      *(a2 - 80) = v106;
LABEL_50:
      if (*(a1 + 104) < *(a1 + 8))
      {
        v133 = *(a1 + 32);
        v149 = *(a1 + 48);
        v165 = *(a1 + 64);
        v180 = *(a1 + 80);
        v101 = *a1;
        v117 = *(a1 + 16);
        v82 = *(a1 + 144);
        *(a1 + 32) = *(a1 + 128);
        *(a1 + 48) = v82;
        v83 = *(a1 + 176);
        *(a1 + 64) = *(a1 + 160);
        *(a1 + 80) = v83;
        v84 = *(a1 + 112);
        *a1 = *(a1 + 96);
        *(a1 + 16) = v84;
        *(a1 + 96) = v101;
        *(a1 + 112) = v117;
        *(a1 + 160) = v165;
        *(a1 + 176) = v180;
        *(a1 + 128) = v133;
        *(a1 + 144) = v149;
      }

      goto LABEL_52;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,0>(a1, (a1 + 96), (a1 + 192), (a1 + 288), (a2 - 96));
        goto LABEL_52;
      }

      goto LABEL_13;
    }

    v22 = *(a1 + 104);
    v23 = *(a1 + 8);
    v24 = *(a1 + 200);
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        v125 = *(a1 + 128);
        v141 = *(a1 + 144);
        v157 = *(a1 + 160);
        v173 = *(a1 + 176);
        v93 = *(a1 + 96);
        v109 = *(a1 + 112);
        v38 = *(a1 + 240);
        *(a1 + 128) = *(a1 + 224);
        *(a1 + 144) = v38;
        v39 = *(a1 + 272);
        *(a1 + 160) = *(a1 + 256);
        *(a1 + 176) = v39;
        v40 = *(a1 + 208);
        *(a1 + 96) = *(a1 + 192);
        *(a1 + 112) = v40;
        *(a1 + 192) = v93;
        *(a1 + 208) = v109;
        *(a1 + 256) = v157;
        *(a1 + 272) = v173;
        *(a1 + 224) = v125;
        *(a1 + 240) = v141;
        if (*(a1 + 104) < v23)
        {
          v126 = *(a1 + 32);
          v142 = *(a1 + 48);
          v158 = *(a1 + 64);
          v174 = *(a1 + 80);
          v94 = *a1;
          v110 = *(a1 + 16);
          v41 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 128);
          *(a1 + 48) = v41;
          v42 = *(a1 + 176);
          *(a1 + 64) = *(a1 + 160);
          *(a1 + 80) = v42;
          v43 = *(a1 + 112);
          *a1 = *(a1 + 96);
          *(a1 + 16) = v43;
          *(a1 + 96) = v94;
          *(a1 + 112) = v110;
          *(a1 + 160) = v158;
          *(a1 + 176) = v174;
          *(a1 + 128) = v126;
          *(a1 + 144) = v142;
        }
      }

      goto LABEL_47;
    }

    if (v24 >= v22)
    {
      v130 = *(a1 + 32);
      v146 = *(a1 + 48);
      v162 = *(a1 + 64);
      v177 = *(a1 + 80);
      v98 = *a1;
      v114 = *(a1 + 16);
      v68 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 128);
      *(a1 + 48) = v68;
      v69 = *(a1 + 176);
      *(a1 + 64) = *(a1 + 160);
      *(a1 + 80) = v69;
      v70 = *(a1 + 112);
      *a1 = *(a1 + 96);
      *(a1 + 16) = v70;
      *(a1 + 96) = v98;
      *(a1 + 112) = v114;
      *(a1 + 160) = v162;
      *(a1 + 176) = v177;
      *(a1 + 128) = v130;
      *(a1 + 144) = v146;
      if (v24 >= *(a1 + 104))
      {
        goto LABEL_47;
      }

      v121 = *(a1 + 128);
      v137 = *(a1 + 144);
      v153 = *(a1 + 160);
      v169 = *(a1 + 176);
      v89 = *(a1 + 96);
      v105 = *(a1 + 112);
      v71 = *(a1 + 240);
      *(a1 + 128) = *(a1 + 224);
      *(a1 + 144) = v71;
      v72 = *(a1 + 272);
      *(a1 + 160) = *(a1 + 256);
      *(a1 + 176) = v72;
      v73 = *(a1 + 208);
      *(a1 + 96) = *(a1 + 192);
      *(a1 + 112) = v73;
    }

    else
    {
      v121 = *(a1 + 32);
      v137 = *(a1 + 48);
      v153 = *(a1 + 64);
      v169 = *(a1 + 80);
      v89 = *a1;
      v105 = *(a1 + 16);
      v25 = *(a1 + 240);
      *(a1 + 32) = *(a1 + 224);
      *(a1 + 48) = v25;
      v26 = *(a1 + 272);
      *(a1 + 64) = *(a1 + 256);
      *(a1 + 80) = v26;
      v27 = *(a1 + 208);
      *a1 = *(a1 + 192);
      *(a1 + 16) = v27;
    }

    *(a1 + 192) = v89;
    *(a1 + 208) = v105;
    *(a1 + 256) = v153;
    *(a1 + 272) = v169;
    *(a1 + 224) = v121;
    *(a1 + 240) = v137;
LABEL_47:
    if (*(a2 - 88) >= *(a1 + 200))
    {
      goto LABEL_52;
    }

    v74 = (a2 - 96);
    v131 = *(a1 + 224);
    v147 = *(a1 + 240);
    v163 = *(a1 + 256);
    v178 = *(a1 + 272);
    v99 = *(a1 + 192);
    v115 = *(a1 + 208);
    v75 = *(a2 - 80);
    *(a1 + 192) = *(a2 - 96);
    *(a1 + 208) = v75;
    v76 = *(a2 - 16);
    v78 = *(a2 - 64);
    v77 = *(a2 - 48);
    *(a1 + 256) = *(a2 - 32);
    *(a1 + 272) = v76;
    *(a1 + 224) = v78;
    *(a1 + 240) = v77;
    v74[4] = v163;
    v74[5] = v178;
    v74[2] = v131;
    v74[3] = v147;
    *v74 = v99;
    v74[1] = v115;
    if (*(a1 + 200) >= *(a1 + 104))
    {
      goto LABEL_52;
    }

    v132 = *(a1 + 128);
    v148 = *(a1 + 144);
    v164 = *(a1 + 160);
    v179 = *(a1 + 176);
    v100 = *(a1 + 96);
    v116 = *(a1 + 112);
    v79 = *(a1 + 240);
    *(a1 + 128) = *(a1 + 224);
    *(a1 + 144) = v79;
    v80 = *(a1 + 272);
    *(a1 + 160) = *(a1 + 256);
    *(a1 + 176) = v80;
    v81 = *(a1 + 208);
    *(a1 + 96) = *(a1 + 192);
    *(a1 + 112) = v81;
    *(a1 + 192) = v100;
    *(a1 + 208) = v116;
    *(a1 + 256) = v164;
    *(a1 + 272) = v179;
    *(a1 + 224) = v132;
    *(a1 + 240) = v148;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    goto LABEL_52;
  }

  if (v2 == 2)
  {
    if (*(a2 - 88) < *(a1 + 8))
    {
      v118 = *(a1 + 32);
      v134 = *(a1 + 48);
      v150 = *(a1 + 64);
      v166 = *(a1 + 80);
      v86 = *a1;
      v102 = *(a1 + 16);
      v3 = *(a2 - 80);
      *a1 = *(a2 - 96);
      *(a1 + 16) = v3;
      v4 = *(a2 - 16);
      v6 = *(a2 - 64);
      v5 = *(a2 - 48);
      *(a1 + 64) = *(a2 - 32);
      *(a1 + 80) = v4;
      *(a1 + 32) = v6;
      *(a1 + 48) = v5;
      *(a2 - 64) = v118;
      *(a2 - 48) = v134;
      *(a2 - 32) = v150;
      *(a2 - 16) = v166;
      result = 1;
      *(a2 - 96) = v86;
      *(a2 - 80) = v102;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_13:
  v15 = a1 + 192;
  v16 = *(a1 + 104);
  v17 = *(a1 + 8);
  v18 = *(a1 + 200);
  if (v16 >= v17)
  {
    if (v18 < v16)
    {
      v123 = *(a1 + 128);
      v139 = *(a1 + 144);
      v155 = *(a1 + 160);
      v171 = *(a1 + 176);
      v91 = *(a1 + 96);
      v107 = *(a1 + 112);
      v32 = *(a1 + 240);
      *(a1 + 128) = *(a1 + 224);
      *(a1 + 144) = v32;
      v33 = *(a1 + 272);
      *(a1 + 160) = *(a1 + 256);
      *(a1 + 176) = v33;
      v34 = *(a1 + 208);
      *(a1 + 96) = *v15;
      *(a1 + 112) = v34;
      *v15 = v91;
      *(a1 + 208) = v107;
      *(a1 + 256) = v155;
      *(a1 + 272) = v171;
      *(a1 + 224) = v123;
      *(a1 + 240) = v139;
      if (*(a1 + 104) < v17)
      {
        v124 = *(a1 + 32);
        v140 = *(a1 + 48);
        v156 = *(a1 + 64);
        v172 = *(a1 + 80);
        v92 = *a1;
        v108 = *(a1 + 16);
        v35 = *(a1 + 144);
        *(a1 + 32) = *(a1 + 128);
        *(a1 + 48) = v35;
        v36 = *(a1 + 176);
        *(a1 + 64) = *(a1 + 160);
        *(a1 + 80) = v36;
        v37 = *(a1 + 112);
        *a1 = *(a1 + 96);
        *(a1 + 16) = v37;
        *(a1 + 96) = v92;
        *(a1 + 112) = v108;
        *(a1 + 160) = v156;
        *(a1 + 176) = v172;
        *(a1 + 128) = v124;
        *(a1 + 144) = v140;
      }
    }
  }

  else
  {
    if (v18 >= v16)
    {
      v128 = *(a1 + 32);
      v144 = *(a1 + 48);
      v160 = *(a1 + 64);
      v176 = *(a1 + 80);
      v96 = *a1;
      v112 = *(a1 + 16);
      v51 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 128);
      *(a1 + 48) = v51;
      v52 = *(a1 + 176);
      *(a1 + 64) = *(a1 + 160);
      *(a1 + 80) = v52;
      v53 = *(a1 + 112);
      *a1 = *(a1 + 96);
      *(a1 + 16) = v53;
      *(a1 + 96) = v96;
      *(a1 + 112) = v112;
      *(a1 + 160) = v160;
      *(a1 + 176) = v176;
      *(a1 + 128) = v128;
      *(a1 + 144) = v144;
      if (v18 >= *(a1 + 104))
      {
        goto LABEL_33;
      }

      v120 = *(a1 + 128);
      v136 = *(a1 + 144);
      v152 = *(a1 + 160);
      v168 = *(a1 + 176);
      v88 = *(a1 + 96);
      v104 = *(a1 + 112);
      v54 = *(a1 + 240);
      *(a1 + 128) = *(a1 + 224);
      *(a1 + 144) = v54;
      v55 = *(a1 + 272);
      *(a1 + 160) = *(a1 + 256);
      *(a1 + 176) = v55;
      v56 = *(a1 + 208);
      *(a1 + 96) = *v15;
      *(a1 + 112) = v56;
    }

    else
    {
      v120 = *(a1 + 32);
      v136 = *(a1 + 48);
      v152 = *(a1 + 64);
      v168 = *(a1 + 80);
      v88 = *a1;
      v104 = *(a1 + 16);
      v19 = *(a1 + 240);
      *(a1 + 32) = *(a1 + 224);
      *(a1 + 48) = v19;
      v20 = *(a1 + 272);
      *(a1 + 64) = *(a1 + 256);
      *(a1 + 80) = v20;
      v21 = *(a1 + 208);
      *a1 = *v15;
      *(a1 + 16) = v21;
    }

    *v15 = v88;
    *(a1 + 208) = v104;
    *(a1 + 256) = v152;
    *(a1 + 272) = v168;
    *(a1 + 224) = v120;
    *(a1 + 240) = v136;
  }

LABEL_33:
  v57 = a1 + 288;
  if (a1 + 288 == a2)
  {
    goto LABEL_52;
  }

  v58 = 0;
  v59 = 0;
  while (1)
  {
    v60 = *(v57 + 8);
    if (v60 < *(v15 + 8))
    {
      v61 = *v57;
      v129 = *(v57 + 48);
      v145 = *(v57 + 64);
      v161 = *(v57 + 80);
      v62 = v58;
      v97 = *(v57 + 16);
      v113 = *(v57 + 32);
      while (1)
      {
        v63 = a1 + v62;
        v64 = *(a1 + v62 + 240);
        *(v63 + 320) = *(a1 + v62 + 224);
        *(v63 + 336) = v64;
        v65 = *(a1 + v62 + 272);
        *(v63 + 352) = *(a1 + v62 + 256);
        *(v63 + 368) = v65;
        v66 = *(a1 + v62 + 208);
        *(v63 + 288) = *(a1 + v62 + 192);
        *(v63 + 304) = v66;
        if (v62 == -192)
        {
          break;
        }

        v62 -= 96;
        if (v60 >= *(v63 + 104))
        {
          v67 = a1 + v62 + 288;
          goto LABEL_41;
        }
      }

      v67 = a1;
LABEL_41:
      *v67 = v61;
      *(v67 + 8) = v60;
      *(v67 + 48) = v129;
      *(v67 + 64) = v145;
      *(v67 + 80) = v161;
      ++v59;
      *(v67 + 16) = v97;
      *(v67 + 32) = v113;
      if (v59 == 8)
      {
        break;
      }
    }

    v15 = v57;
    v58 += 96;
    v57 += 96;
    if (v57 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v57 + 96 == a2;
LABEL_53:
  v85 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__split_buffer<CSSymbolicatorAotImageInfo>::emplace_back<CSSymbolicatorAotImageInfo const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * (&v4[-*a1] >> 5);
      }

      std::allocator<CSSymbolicatorAotImageInfo>::allocate_at_least[abi:ne200100](a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / -2;
    v8 = &v5[-96 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-96 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / 2)], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v5[96 * v7];
    a1[2] = &v8[v9];
  }

  v11 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  *(v4 + 4) = *(a2 + 64);
  *(v4 + 5) = v14;
  *(v4 + 2) = result;
  *(v4 + 3) = v13;
  a1[2] += 96;
  return result;
}

void std::allocator<CSSymbolicatorAotImageInfo>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void CSCppMutableContext::~CSCppMutableContext(void **this)
{
  v2 = this + 6;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t CSCppSymbolicator::_symbolicator_family_architecture<std::vector<CSCppSymbolOwner *>>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = *(**a1 + 112);
  while (v1 != v2)
  {
    if (*(*v1 + 112) != result)
    {
      return CSArchitectureGetFamily(result);
    }

    v1 += 8;
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<CSCppSymbolOwnerTimeline>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t CSCppSymbolOwner::CSCppSymbolOwner(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, const char *a8)
{
  *a1 = &unk_1F5505740;
  *(a1 + 8) = 0;
  v9 = *a2;
  *(a1 + 32) = 0u;
  v10 = a1 + 32;
  *(a1 + 16) = v9;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a4;
  *(a1 + 96) = a5;
  *(a1 + 104) = a3;
  *(a1 + 108) = a6;
  *(a1 + 112) = a7;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  v11 = strdup(a8);
  *(v10 + 88) = v11;
  *(a1 + 136) = utility_basename(v11);
  return a1;
}

void sub_1D9742174(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolOwner::CSCppSymbolOwner(CSCppSymbolOwner *this, const CSCppSymbolOwner *a2)
{
  *this = &unk_1F5505740;
  *(this + 1) = 0;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<CSCppSectionRange>::__init_with_size[abi:ne200100]<CSCppSectionRange*,CSCppSectionRange*>(this + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  *(this + 10) = 0;
  *(this + 88) = *(a2 + 88);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = strdup(*(a2 + 15));
  v4 = *(a2 + 16);
  if (v4)
  {
    v4 = strdup(v4);
  }

  *(this + 16) = v4;
  v5 = strdup(*(a2 + 17));
  v6 = *(a2 + 18);
  *(this + 17) = v5;
  *(this + 18) = v6;
  *(this + 152) = *(a2 + 152);
  *(this + 168) = 0;
  *(this + 200) = 0;
}

void sub_1D974229C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolOwner::~CSCppSymbolOwner(CSCppSymbolOwner *this)
{
  *this = &unk_1F5505740;
  v2 = *(this + 10);
  if (v2)
  {
    CSCppReferenceCount::release(v2, 1);
    CSCppSymbolOwnerCache::remove_symbol_owner(this, v3);
  }

  free(*(this + 15));
  free(*(this + 16));
  free(*(this + 17));
  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }
}

{
  CSCppSymbolOwner::~CSCppSymbolOwner(this);

  JUMPOUT(0x1DA736760);
}

unint64_t CSCppSymbolOwner::generate_next_unique_private_key(CSCppSymbolOwner *this)
{
  do
  {
    result = atomic_fetch_add_explicit(&CSCppSymbolOwner::generate_next_unique_private_key(void)::key_source, 1uLL, memory_order_relaxed);
  }

  while (!result);
  return result;
}

uint64_t CSCppSymbolOwner::set_symbolicator(uint64_t this, CSCppSymbolicator *a2)
{
  v2 = atomic_load(a2 + 10);
  v3 = *(this + 108);
  if ((v2 & 2) != 0)
  {
    *(this + 108) = v3 | 0x80000000;
    do
    {
      add_explicit = atomic_fetch_add_explicit(&CSCppSymbolOwner::generate_next_unique_private_key(void)::key_source, 1uLL, memory_order_relaxed);
    }

    while (!add_explicit);
    *(this + 144) = add_explicit;
  }

  else
  {
    *(this + 108) = v3 & 0x7FFFFFFF;
  }

  *(this + 8) = a2;
  return this;
}

char *CSCppSymbolOwner::set_path(void **this, const char *a2)
{
  free(this[15]);
  free(this[17]);
  this[15] = strdup(a2);
  result = utility_basename(a2);
  this[17] = result;
  return result;
}

char *CSCppSymbolOwner::set_path_for_symbolication(void **this, const char *a2)
{
  free(this[16]);
  result = strdup(a2);
  this[16] = result;
  *(this + 27) = *(this + 27) & 0x7FBFFFFF | 0x400000;
  this[18] = 0;
  return result;
}

uint64_t CSCppSymbolOwner::_fault_data_purging_empty(CSCppSymbolOwner *this, CSCppSymbolOwner *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!v3)
    {
      v5 = CSCppSymbolOwnerCache::data_for_symbol_owner(this, a2);
      v6 = 0;
      atomic_compare_exchange_strong(this + 10, &v6, v5);
      if (v6)
      {
LABEL_14:
        CSCppReferenceCount::release(v5, 1);
      }
    }
  }

  else if ((atomic_load_explicit((v3 + 12), memory_order_acquire) & 0x80) != 0)
  {
    v7 = CSCppSymbolOwnerCache::data_for_symbol_owner(this, 1);
    v5 = *(this + 10);
    v8 = v5;
    atomic_compare_exchange_strong(this + 10, &v8, v7);
    if (v8 == v5)
    {
      if (v5 == v7)
      {
        return *(this + 10);
      }
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_14;
  }

  return *(this + 10);
}

uint64_t CSCppSymbolOwner::sections_in_address_range(unint64_t this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(this + 56);
  v8 = *(this + 64);
  if (v8 == v7)
  {
    v14 = *(*CSCppSymbolOwner::_fault_data_purging_empty(this, 0) + 80);

    return v14();
  }

  else
  {
    v9 = 0;
    v10 = a3 + a2;
    v11 = *(this + 56);
    do
    {
      if (a2 < v11[1] + *v11 && *v11 < v10)
      {
        ++v9;
        if (a4)
        {
          (*(a4 + 16))(a4, this | 4, v7);
        }
      }

      v11 += 3;
      v7 += 3;
    }

    while (v11 != v8);
    return v9;
  }
}

unint64_t CSCppSymbolOwner::segment_at_address(unint64_t this, uint64_t a2)
{
  v3 = *(this + 32);
  v4 = *(this + 40);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = *(this + 32);
  while ((a2 - *v5) >= v5[1])
  {
    v5 += 4;
    v3 += 4;
    if (v5 == v4)
    {
      return 0;
    }
  }

  return this | 7;
}

uint64_t CSCppSymbolOwner::base_address(CSCppSymbolOwner *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  if (v1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = v1[2];
    if (v3 == global_text_no_suffix[0] || v3 == global_text_with_suffix)
    {
      break;
    }

    v1 += 4;
    if (v1 == v2)
    {
      return 0;
    }
  }

  result = *v1;
  if (*v1 == -1)
  {
    return 0;
  }

  return result;
}

BOOL check_if_segments_match(const CSCppSymbolOwner *a1, const CSCppSymbolOwner *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a2 + 4);
  if (v3 != v4)
  {
    while (1)
    {
      v6 = *v3;
      v7 = *v5;
      v8 = !strcmp(v3[2], v5[2]) && v6 == v7;
      if (!v8 || v3[1] != v5[1])
      {
        break;
      }

      v3 += 4;
      v5 += 4;
      if (v3 == v4)
      {
        return v5 == *(a2 + 5);
      }
    }
  }

  return v3 == v4 && v5 == *(a2 + 5);
}

uint64_t CSCppSymbolOwner::copy_data_from_symbol_owner(uint64_t this, CSCppSymbolOwner *a2)
{
  if (!*(this + 80))
  {
    v2 = *(a2 + 10);
    if (v2)
    {
      v3 = this;
      this = CSCppReferenceCount::retain(*(a2 + 10));
      *(v3 + 80) = v2;
    }
  }

  return this;
}

uint64_t std::vector<CSCppSectionRange>::__init_with_size[abi:ne200100]<CSCppSectionRange*,CSCppSectionRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppSectionRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D974284C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CSCppSectionRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t remove_locked(void *a1, uint64_t *a2)
{
  v4 = a2[28];
  _memory_used -= (*(*v4 + 32))(v4);
  v5 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove(a1, a2, v7);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>>>>::~unique_ptr[abi:ne200100](v7);
  CSCppReferenceCount::release(v4, 1);
  return v5;
}

void CSCppSymbolOwnerCache::create_symbol_owner_data_with_symbol_generator<BOOL({block_pointer})(unsigned long,CSUserSuppliedSymbolData *)>(uint64_t a1, __int128 *a2)
{
  v12 = *(a1 + 112);
  if (CSCppArchitecture::is_64_bit(&v12))
  {
    if (CSCppArchitecture::is_little_endian(&v12))
    {
      v5 = *a2;
      v6 = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      _create_traw_symbol_owner_data_with_symbol_generator<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Attempt to use ISA64Big when it is not defined", 46);
    std::ostringstream::str[abi:ne200100](v9, &v8);
    Exception::Exception(v7, &v8);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v7);
  }

  if (CSCppArchitecture::is_little_endian(&v12))
  {
    v10 = *a2;
    v11 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    _create_traw_symbol_owner_data_with_symbol_generator<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Attempt to use ISA32Big when it is not defined", 46);
  std::ostringstream::str[abi:ne200100](v9, &v8);
  Exception::Exception(v7, &v8);
  v4 = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(v4, v7);
}

void sub_1D9742BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  Exception::~Exception(&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a23);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D9742AE8);
  }

  _Unwind_Resume(a1);
}

void sub_1D9743F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  v63 = *(v61 - 176);
  if (v63)
  {
    *(v61 - 168) = v63;
    operator delete(v63);
  }

  a49 = v61 - 152;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a49);
  v64 = *(v61 - 128);
  *(v61 - 128) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  _Unwind_Resume(a1);
}

void sub_1D9745424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  v53 = *(v51 - 176);
  if (v53)
  {
    *(v51 - 168) = v53;
    operator delete(v53);
  }

  a51 = v51 - 152;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&a51);
  v54 = *(v51 - 128);
  *(v51 - 128) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  _Unwind_Resume(a1);
}

atomic_uint *CSCppSymbolOwnerCache::symbol_owner_data(CSCppSymbolOwnerCache *this, CSCppSymbolOwner *a2, int a3, char a4, char a5)
{
  v8 = a2;
  pthread_mutex_lock(&_cache_lock);
  v10 = _data_cache;
  if (!_data_cache)
  {
    operator new();
  }

  v18 = a5;
  ++_total_lookups;
  while (1)
  {
    v11 = std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::find<CSCppSymbolOwner>(v10, this);
    v12 = v11;
    if (!v11)
    {
      ++_total_misses;
      if (a3)
      {
        v13 = 0;
        std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__emplace_unique_key_args<CSCppSymbolOwner,std::piecewise_construct_t const&,std::tuple<CSCppSymbolOwner const&>,std::tuple<>>(v10, this)[28] = 0;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v13 = v11[28];
    if (v13)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    ++_total_waits;
    pthread_cond_wait(&_cache_cond, &_cache_lock);
  }

  explicit = atomic_load_explicit(v13 + 3, memory_order_acquire);
  if ((a4 & 1) == 0 && (*&v18 & ((explicit & 0x80) >> 7)) == 0)
  {
    v13[20] = atomic_fetch_add_explicit(_access_count, 1u, memory_order_relaxed);
    v15 = (*(*v13 + 208))(v13);
    v16 = atomic_load((*(this + 1) + 40));
    if (!v15 || do_candidate_sources_satisfy_existing(*v15, v16))
    {
      CSCppReferenceCount::retain(v13);
      goto LABEL_17;
    }
  }

  CSCppSymbolOwnerCache::_kill_existing_symbol_owner_data_locked<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *> *>>>(this, v12);
LABEL_16:
  v13 = 0;
LABEL_17:
  pthread_mutex_unlock(&_cache_lock);
  return v13;
}

void *CSCppSymbolOwnerCache::_kill_existing_symbol_owner_data_locked<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *> *>>>(uint64_t a1, uint64_t a2)
{
  ++_total_replacements;
  v3 = symbol_owner_data_graveyard();
  v4 = _data_cache;
  if (!_data_cache)
  {
    operator new();
  }

  v5 = std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__emplace_unique_key_args<CSCppSymbolOwner,CSCppSymbolOwner const&,CSCppSymbolOwnerData *&>(v3, a2 + 16);
  if ((v6 & 1) == 0 && v5)
  {
    _memory_used -= (*(**(a2 + 224) + 32))(*(a2 + 224));
    CSCppReferenceCount::release(*(a2 + 224), 1);
  }

  result = std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__emplace_unique_key_args<CSCppSymbolOwner,std::piecewise_construct_t const&,std::tuple<CSCppSymbolOwner const&>,std::tuple<>>(v4, a2 + 16);
  result[28] = 0;
  return result;
}

uint64_t CSCppSymbolOwnerCache::_set_symbol_owner_data_with_footprint(CSCppSymbolOwnerCache *this, CSCppSymbolOwner *a2, CSCppSymbolOwnerData *a3)
{
  pthread_mutex_lock(&_cache_lock);
  v6 = _data_cache;
  if (!_data_cache)
  {
    operator new();
  }

  _memory_used += a3;
  *(a2 + 20) = atomic_fetch_add_explicit(_access_count, 1u, memory_order_relaxed);
  CSCppReferenceCount::retain(a2);
  std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::__emplace_unique_key_args<CSCppSymbolOwner,std::piecewise_construct_t const&,std::tuple<CSCppSymbolOwner const&>,std::tuple<>>(v6, this)[28] = a2;
  if (_memory_used > _max_memory_used)
  {
    _max_memory_used = _memory_used;
  }

  if (v6[3] > _max_entries)
  {
    _max_entries = v6[3];
  }

  pthread_cond_broadcast(&_cache_cond);
  pthread_mutex_unlock(&_cache_lock);
  return 1;
}

uint64_t CSCppSymbolOwnerCache::create_symbol_owner_data(CFUUIDBytes *this, CSCppSymbolOwner *a2, CSCppDsymData *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  CFUUIDBytesToString(this + 1, __s, 0x28uLL);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "create_symbol_owner_data -- UUID: ", 34);
  v6 = strlen(__s);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __s, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Path: ", 8);
  if (this)
  {
    v9 = *&this[7].byte8;
  }

  else
  {
    v9 = "<none>";
  }

  v10 = strlen(v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", DSYM Path: ", 13);
  if (a2)
  {
    v13 = a2 + 72;
  }

  else
  {
    v13 = "<none>";
  }

  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", is_dyld_shared_cache: ", 24);
  v17 = "No";
  if (this && (this[6].byte13 & 2) != 0)
  {
    v17 = "Yes";
  }

  v18 = strlen(v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::ostringstream::str[abi:ne200100](&v33, __p);
  if (v32 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(v30, v19);
  if ((CSGetForceSafeMachVMReads() & 1) != 0 || (v20 = atomic_load((*&this->byte8 + 40)), (v20 & 0x1000) != 0))
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = ___ZN21CSCppSymbolOwnerCache24create_symbol_owner_dataEP16CSCppSymbolOwnerP13CSCppDsymData_block_invoke;
    v29[3] = &unk_1E8583DC0;
    v29[4] = &v38;
    v29[5] = this;
    v29[6] = a2;
    v22 = CSExceptionSafeThreadRunBlock(v29);
    if (v22 != 4096 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *((*(**(*&this->byte8 + 32) + 16))(*(*&this->byte8 + 32)) + 12);
      v24 = *&this[7].byte8;
      *buf = 67109634;
      v43 = v23;
      v44 = 2080;
      v45 = v24;
      v46 = 1024;
      v47 = v22;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing page in pid %d, create of symbol owner data for [%s] failed, err code %d\n", buf, 0x18u);
    }
  }

  else
  {
    symbol_owner_data2 = create_symbol_owner_data2(this, a2);
    v39[3] = symbol_owner_data2;
  }

  v25 = v39[3];
  if (!v25)
  {
    pthread_mutex_lock(&_cache_lock);
    ++_total_failed_creates;
    v26 = pthread_mutex_unlock(&_cache_lock);
    create_empty_symbol_owner_data(v26);
  }

  CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(v30);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v33 = *MEMORY[0x1E69E54E8];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v34 = MEMORY[0x1E69E5548] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  MEMORY[0x1DA7366F0](&v37);
  _Block_object_dispose(&v38, 8);
  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_1D9746018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(&a17);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a25);
  _Block_object_dispose((v25 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN21CSCppSymbolOwnerCache24create_symbol_owner_dataEP16CSCppSymbolOwnerP13CSCppDsymData_block_invoke(uint64_t a1)
{
  result = create_symbol_owner_data2(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t create_symbol_owner_data2(CSCppSymbolOwner *a1, CSCppDsymData *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (CSGetDebugLoggingLevel() >= 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 15);
    *buf = 134218242;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SYMBOLICATOR %p CREATING SYMBOL OWNER DATA: %s\n", buf, 0x16u);
  }

  v12 = *(a1 + 14);
  if (CSCppArchitecture::is_64_bit(&v12))
  {
    if (!CSCppArchitecture::is_little_endian(&v12))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](buf);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Attempt to use ISA64Big when it is not defined", 46);
      std::ostringstream::str[abi:ne200100](buf, &v11);
      Exception::Exception(v10, &v11);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v10);
    }

    result = create_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2);
  }

  else
  {
    if (!CSCppArchitecture::is_little_endian(&v12))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](buf);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Attempt to use ISA32Big when it is not defined", 46);
      std::ostringstream::str[abi:ne200100](buf, &v11);
      Exception::Exception(v10, &v11);
      v9 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v9, v10);
    }

    result = create_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97462B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a20);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D97461A8);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolOwnerCache::data_for_symbol_owner(CSCppSymbolOwnerCache *this, CSCppSymbolOwner *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (CSGetForceSafeMachVMReads())
  {
    v4 = 1;
  }

  else
  {
    v5 = atomic_load((*(this + 1) + 40));
    v4 = (v5 >> 12) & 1;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke;
  v8[3] = &unk_1E8583E38;
  v8[4] = &v10;
  v8[5] = this;
  v9 = v2;
  if (v4)
  {
    CSExceptionSafeThreadRunBlock(v8);
  }

  else
  {
    ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke(v8);
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke(uint64_t a1)
{
  result = CSCppSymbolOwnerCache::symbol_owner_data(*(a1 + 40), 1, 1, 0, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 32);
  if (!*(*(v3 + 8) + 24))
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke_2;
    v17[3] = &unk_1E8583DE8;
    v14 = *(a1 + 40);
    v17[4] = v3;
    v17[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke_3;
    v16[3] = &unk_1E8583E10;
    v16[4] = v3;
    v16[5] = v14;
    return CSExceptionSafeThreadProtectBlockWithHandler(v17, v16);
  }

  v4 = atomic_load((*(*(a1 + 40) + 8) + 40));
  if ((v4 & 4) != 0 && (atomic_load_explicit((*(*(*(a1 + 32) + 8) + 24) + 12), memory_order_acquire) & 0x1000) == 0)
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = (*(*v5 + 16))(v5, *(a1 + 40));
    v7 = (*(*v6 + 32))(v6);
    v8 = *(*(*(a1 + 32) + 8) + 24);
    result = (*(*v8 + 32))(v8);
    if (v6 == *(*(*(a1 + 32) + 8) + 24))
    {
      if (v7 == result)
      {
LABEL_12:
        *(*(*(a1 + 32) + 8) + 24) = v6;
        return result;
      }

      v15 = (v7 - result);
      CSCppSymbolOwnerCache::symbol_owner_data(*(a1 + 40), 1, 1, 1, 0);
      CSCppReferenceCount::release(*(*(*(a1 + 32) + 8) + 24), 1);
      v12 = *(a1 + 40);
      v13 = v6;
      v11 = v15;
    }

    else
    {
      CSCppSymbolOwnerCache::symbol_owner_data(*(a1 + 40), 1, 1, 1, 0);
      CSCppReferenceCount::release(*(*(*(a1 + 32) + 8) + 24), 1);
      v9 = *(a1 + 40);
      v10 = v9[10];
      if (v10)
      {
        CSCppReferenceCount::release(v10, 1);
        *(*(a1 + 40) + 80) = 0;
        v9 = *(a1 + 40);
      }

      v11 = (*(*v6 + 32))(v6);
      v12 = v9;
      v13 = v6;
    }

    result = CSCppSymbolOwnerCache::_set_symbol_owner_data_with_footprint(v12, v13, v11);
    goto LABEL_12;
  }

  return result;
}

uint64_t ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke_2(uint64_t a1, uint64_t a2, CSCppDsymData *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = CSCppSymbolOwnerCache::create_symbol_owner_data(*(a1 + 40), 0, a3);
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = (*(*v5 + 32))(v5);

  return CSCppSymbolOwnerCache::_set_symbol_owner_data_with_footprint(v4, v5, v6);
}

void ___ZN21CSCppSymbolOwnerCache21data_for_symbol_ownerEP16CSCppSymbolOwnerb_block_invoke_3()
{
  pthread_mutex_lock(&_cache_lock);
  ++_total_failed_creates;
  v0 = pthread_mutex_unlock(&_cache_lock);
  create_empty_symbol_owner_data(v0);
}

BOOL CSCppSymbolOwnerCache::resymbolicate_one_symbol_owner(atomic_uint **this, CSCppSymbolOwner *a2, CSCppDsymData *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = CSCppSymbolOwnerCache::symbol_owner_data(this, 1, 0, 0, 0);
  if (v5)
  {
    if ((atomic_load_explicit(v5 + 3, memory_order_acquire) & 0x90) == 0x10)
    {
      v7 = v5;
      goto LABEL_11;
    }

    CSCppReferenceCount::release(v5, 1);
  }

  if (a2)
  {
    CSCppDsymData::CSCppDsymData(v16, a2);
    v17 = 1;
    symbol_owner_data = CSCppSymbolOwnerCache::create_symbol_owner_data(this, v16, v8);
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    symbol_owner_data = CSCppSymbolOwnerCache::create_symbol_owner_data(this, 0, v6);
  }

  v7 = symbol_owner_data;
  if (v17 == 1)
  {
    CSCppDsymData::~CSCppDsymData(v16);
  }

  v5 = 0;
LABEL_11:
  explicit = atomic_load_explicit(v7 + 3, memory_order_acquire);
  if (explicit < 0)
  {
    CSCppReferenceCount::release(v7, 1);
  }

  else if (v5 == v7)
  {
    v13 = this[10];
    if (v13)
    {
      CSCppReferenceCount::release(v13, 1);
      this[10] = 0;
    }

    this[10] = v7;
  }

  else
  {
    CSCppSymbolOwnerCache::symbol_owner_data(this, 1, 1, 1, 0);
    v11 = this[10];
    if (v11)
    {
      CSCppReferenceCount::release(v11, 1);
      this[10] = 0;
    }

    this[10] = v7;
    v12 = (*(*v7 + 32))(v7);
    CSCppSymbolOwnerCache::_set_symbol_owner_data_with_footprint(this, v7, v12);
  }

  result = (explicit & 0x80) == 0;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97469D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (LOBYTE(STACK[0x450]) == 1)
  {
    CSCppDsymData::~CSCppDsymData(va);
  }

  _Unwind_Resume(a1);
}

void CSCppSymbolOwnerCache::resymbolicate_symbol_owners(uint64_t *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  Mutable = CFDictionaryCreateMutable(0, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3802000000;
      v15[3] = __Block_byref_object_copy__7;
      v15[4] = __Block_byref_object_dispose__7;
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2000000000;
      v14[3] = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZN21CSCppSymbolOwnerCache27resymbolicate_symbol_ownersERKNSt3__16vectorINS0_10shared_ptrI16CSCppSymbolOwnerEENS0_9allocatorIS4_EEEEPK9__CFArray_block_invoke;
      v13[3] = &unk_1E8583E60;
      v13[4] = v15;
      v13[5] = v14;
      v13[6] = Mutable;
      v13[7] = ValueAtIndex;
      CSSymbolicatorForeachSymbolicatorWithURL(ValueAtIndex, v13);
      _Block_object_dispose(v14, 8);
      _Block_object_dispose(v15, 8);
    }
  }

  if (CFDictionaryGetCount(Mutable))
  {
    pthread_mutex_lock(&_cache_lock);
    _total_resymbolications_attempted += (a1[1] - *a1) >> 4;
    pthread_mutex_unlock(&_cache_lock);
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      do
      {
        v9 = *v7;
        v10 = *(v7 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = CSCppSymbolOwnerCache::symbol_owner_data(v9, 1, 0, 0, 0);
        if (v11)
        {
          atomic_load_explicit(v11 + 3, memory_order_acquire);
          CSCppReferenceCount::release(v11, 1);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v7 += 16;
      }

      while (v7 != v8);
    }
  }

  CFRelease(Mutable);
}

void sub_1D9746C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void ___ZN21CSCppSymbolOwnerCache27resymbolicate_symbol_ownersERKNSt3__16vectorINS0_10shared_ptrI16CSCppSymbolOwnerEENS0_9allocatorIS4_EEEEPK9__CFArray_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  SymbolOwner = CSSymbolicatorGetSymbolOwner(a2, a3);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = SymbolOwner;
  *(v5 + 48) = v6;
  if (CSSymbolOwnerGetCFUUIDBytes(*(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48)))
  {
    v9 = *CSSymbolOwnerGetCFUUIDBytes(*(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48));
    *(*(*(a1 + 40) + 8) + 24) = CFUUIDCreateFromUUIDBytes(0, v9);
    CFDictionarySetValue(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), *(a1 + 56));
    v7 = *(*(*(a1 + 40) + 8) + 24);

    CFRelease(v7);
  }
}

void CSCppSymbolOwnerCache::resymbolicate_symbol_owners(uint64_t *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  pthread_mutex_lock(&_cache_lock);
  _total_resymbolications_attempted += (a1[1] - *a1) >> 4;
  pthread_mutex_unlock(&_cache_lock);
  v11 = *a1;
  v10 = a1[1];
  while (v11 != v10)
  {
    v13 = *v11;
    v12 = *(v11 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = CSCppSymbolOwnerCache::symbol_owner_data(v13, 1, 0, 0, 0);
    v15 = v14;
    if (v14 && (atomic_load_explicit(v14 + 3, memory_order_acquire) & 0x10) != 0)
    {
      goto LABEL_10;
    }

    v17 = dsym_data_for_symbol_owner(v13, a2, a3, a4, a5);
    if (v17)
    {
      *(v13 + 27) |= 0x400000u;
      CSCppSymbolOwnerCache::resymbolicate_one_symbol_owner(v13, v17, v16);
      CSCppDsymData::~CSCppDsymData(v17);
      MEMORY[0x1DA736760]();
    }

    if (v15)
    {
LABEL_10:
      CSCppReferenceCount::release(v15, 1);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v11 += 16;
  }
}

void sub_1D9746E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](va, 0);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolOwnerCache::remove_symbol_owner(CSCppSymbolOwnerCache *this, CSCppSymbolOwner *a2)
{
  pthread_mutex_lock(&_cache_lock);
  v3 = _data_cache;
  if (!_data_cache)
  {
    operator new();
  }

  v4 = std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::find<CSCppSymbolOwner>(_data_cache, this);
  if (v4)
  {
    v5 = v4[28];
    if (v5)
    {
      v6 = atomic_load((v5 + 8));
      if (v6 == 1)
      {
        remove_locked(v3, v4);
      }
    }
  }

  v7 = symbol_owner_data_graveyard();
  v8 = std::__hash_table<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,std::__unordered_map_hasher<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerHashFunctor,CSCppSymbolOwnerEqualsFunctor,true>,std::__unordered_map_equal<CSCppSymbolOwner,std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,CSCppSymbolOwnerEqualsFunctor,CSCppSymbolOwnerHashFunctor,true>,std::allocator<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>>>::find<CSCppSymbolOwner>(v7, this);
  if (v8)
  {
    v9 = v8[28];
    if (v9)
    {
      v10 = atomic_load((v9 + 8));
      if (v10 == 1)
      {
        remove_locked(v7, v8);
      }
    }
  }

  return pthread_mutex_unlock(&_cache_lock);
}

uint64_t symbol_owner_data_graveyard(void)
{
  {
    operator new();
  }

  return symbol_owner_data_graveyard(void)::graveyard;
}

uint64_t CSCppSymbolOwnerCache::entry_count(CSCppSymbolOwnerCache *this)
{
  pthread_mutex_lock(&_cache_lock);
  if (!_data_cache)
  {
    operator new();
  }

  v1 = *(_data_cache + 24);
  v2 = *(symbol_owner_data_graveyard() + 24);
  pthread_mutex_unlock(&_cache_lock);
  return v2 + v1;
}

uint64_t CSCppSymbolOwnerCache::reset_stats(CSCppSymbolOwnerCache *this)
{
  pthread_mutex_lock(&_cache_lock);
  _total_lookups = 0;
  _total_waits = 0;
  _total_misses = 0;
  _total_failed_creates = 0;
  _total_replacements = 0;
  _total_resymbolications_attempted = 0;
  _max_memory_used = _memory_used;
  if (!_data_cache)
  {
    operator new();
  }

  _max_entries = *(_data_cache + 24);
  return pthread_mutex_unlock(&_cache_lock);
}

uint64_t CSCppSymbolOwnerCache::print_stats(CSCppSymbolOwnerCache *this)
{
  mach_timebase_info(&info);
  pthread_mutex_lock(&_cache_lock);
  puts("Cache stats:");
  v1 = _total_lookups - _total_misses;
  v2 = 0.0;
  if (v1 > 0.0)
  {
    v2 = v1 / _total_lookups * 100.0;
  }

  printf("\t%05.2f%% hit rate (%zd of %zd lookups hit, with %zd waits)\n", v2, _total_lookups - _total_misses, _total_lookups, _total_waits);
  printf("\t%zd misses (%zd create, %zd failed)\n", _total_misses, _total_misses - _total_failed_creates, _total_failed_creates);
  printf("\t%zd resymbolications attempted. (%zd replacements)\n", _total_resymbolications_attempted, _total_replacements);
  if (!_data_cache)
  {
    operator new();
  }

  printf("\t%zd entries, %zdMB footprint\n", *(_data_cache + 24), (_memory_used + 0xFFFFF) >> 20);
  printf("\t%zd peak entries, %zdMB peak footprint\n", _max_entries, (_max_memory_used + 0xFFFFF) >> 20);
  printf("\t%5.5fs create time\n", 0.0);
  return pthread_mutex_unlock(&_cache_lock);
}

uint64_t CSCppSymbolOwnerCache::print_entries_locked(CSCppSymbolOwnerCache *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = _data_cache;
  if (!_data_cache)
  {
    operator new();
  }

  result = printf("ENTRY COUNT: %zd\n", *(_data_cache + 24));
  for (i = *(v1 + 16); i; i = *&i->byte0)
  {
    v4 = *&i[14].byte0;
    CFUUIDBytesToString(i + 2, v8, 0x28uLL);
    __str[0] = 0;
    if ((*&i[7].byte12 & 0x80000000) != 0)
    {
      snprintf(__str, 0x28uLL, "PRIVATE_KEY:0x%llx ", *&i[10].byte0);
    }

    if (v4)
    {
      v5 = atomic_load(v4 + 2);
    }

    else
    {
      v5 = 0;
    }

    result = printf("%s %s %sDATA:%p retain count (%d)\n", v8, *&i[8].byte8, __str, v4, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSCppSymbolOwnerCache::print_entries(CSCppSymbolOwnerCache *this)
{
  v1 = pthread_mutex_lock(&_cache_lock);
  CSCppSymbolOwnerCache::print_entries_locked(v1);
  return pthread_mutex_unlock(&_cache_lock);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t create_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, CSCppDsymData *a2)
{
  v4 = atomic_load((*(a1 + 8) + 40));
  v5 = (v4 & 0x400) == 0;
  v6 = (v4 & 0x800) == 0;
  if ((*(a1 + 108) & 0x80000000) != 0)
  {
    v6 = 0;
    v5 = *(*(a1 + 8) + 64) & ((v4 & 0x400) == 0);
  }

  v7 = UUID::is_null((a1 + 16)) ^ 1;
  v8 = *(a1 + 108);
  v9 = strcmp(*(a1 + 120), "cl_kernels");
  v13 = (v8 & 0x4004) == 0 && v9 != 0;
  v14 = v13 & v7 & v5;
  v15 = (v4 & 0x4000000 | v8 & 0x100) == 0;
  v16 = (v8 >> 22) & 1;
  if (v14)
  {
    v16 = 1;
  }

  if ((v4 & 0x200) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  v28 = 0;
  if ((v14 | ((v4 & 0x40) >> 6)) != 1)
  {
    v20 = 0;
LABEL_24:
    v23 = 1;
    goto LABEL_25;
  }

  v18 = *(a1 + 8);
  if (*(v18 + 64))
  {
    if (*(v18 + 56))
    {
      v19 = *(v18 + 56);
    }

    else
    {
      v19 = *(a1 + 8);
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = CSCppMMapArchiveCache::archive_for_uuid((a1 + 16), v19, v15 & v6, 0, 0, 0, a1, v11);
  v20 = v21;
  if (!v21)
  {
    goto LABEL_24;
  }

  if (!TMMapArchive::dsym_path(v21))
  {
    if (!a2)
    {
      if ((v4 & 0x80000) != 0)
      {
LABEL_41:
        a2 = 0;
        goto LABEL_42;
      }

      a2 = dsym_data_for_symbol_owner(a1, 0, 0, 0, 0);
      v28 = a2;
      if (!a2)
      {
        if (*(a1 + 109))
        {
          v27 = dsym_data_for_symbol_owner(a1, *(a1 + 120));
          std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](&v28, v27);
          a2 = v28;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_42:
    v22 = (a2 != 0) & v17;
    goto LABEL_43;
  }

  v22 = 0;
LABEL_43:
  if (!(v22 & 1 | !cached_sod_contains_sufficient_data(v20, v4)))
  {
    CSCppSymbolOwnerCache::create_mmap_symbol_owner_data_arch_specific(a1, v20, v10);
  }

  v23 = 0;
LABEL_25:
  if ((((v4 & 0x200) == 0) & v14) != 1)
  {
    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (is_system_path_symbol_owner(a1))
  {
LABEL_29:
    *(a1 + 109);
  }

LABEL_30:
  if (v17)
  {
    create_traw_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2);
  }

  if (v20)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    CSCppSymbolOwnerCache::create_mmap_symbol_owner_data_arch_specific(a1, v20, v10);
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    CSCppDsymData::~CSCppDsymData(v25);
    MEMORY[0x1DA736760]();
  }

  return 0;
}

void sub_1D97478FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t create_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, CSCppDsymData *a2)
{
  v4 = atomic_load((*(a1 + 8) + 40));
  v5 = (v4 & 0x400) == 0;
  v6 = (v4 & 0x800) == 0;
  if ((*(a1 + 108) & 0x80000000) != 0)
  {
    v6 = 0;
    v5 = *(*(a1 + 8) + 64) & ((v4 & 0x400) == 0);
  }

  v7 = UUID::is_null((a1 + 16)) ^ 1;
  v8 = *(a1 + 108);
  v9 = strcmp(*(a1 + 120), "cl_kernels");
  v13 = (v8 & 0x4004) == 0 && v9 != 0;
  v14 = v13 & v7 & v5;
  v15 = (v4 & 0x4000000 | v8 & 0x100) == 0;
  v16 = (v8 >> 22) & 1;
  if (v14)
  {
    v16 = 1;
  }

  if ((v4 & 0x200) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  v28 = 0;
  if ((v14 | ((v4 & 0x40) >> 6)) != 1)
  {
    v20 = 0;
LABEL_24:
    v23 = 1;
    goto LABEL_25;
  }

  v18 = *(a1 + 8);
  if (*(v18 + 64))
  {
    if (*(v18 + 56))
    {
      v19 = *(v18 + 56);
    }

    else
    {
      v19 = *(a1 + 8);
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = CSCppMMapArchiveCache::archive_for_uuid((a1 + 16), v19, v15 & v6, 0, 0, 0, a1, v11);
  v20 = v21;
  if (!v21)
  {
    goto LABEL_24;
  }

  if (!TMMapArchive::dsym_path(v21))
  {
    if (!a2)
    {
      if ((v4 & 0x80000) != 0)
      {
LABEL_41:
        a2 = 0;
        goto LABEL_42;
      }

      a2 = dsym_data_for_symbol_owner(a1, 0, 0, 0, 0);
      v28 = a2;
      if (!a2)
      {
        if (*(a1 + 109))
        {
          v27 = dsym_data_for_symbol_owner(a1, *(a1 + 120));
          std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](&v28, v27);
          a2 = v28;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_42:
    v22 = (a2 != 0) & v17;
    goto LABEL_43;
  }

  v22 = 0;
LABEL_43:
  if (!(v22 & 1 | !cached_sod_contains_sufficient_data(v20, v4)))
  {
    CSCppSymbolOwnerCache::create_mmap_symbol_owner_data_arch_specific(a1, v20, v10);
  }

  v23 = 0;
LABEL_25:
  if ((((v4 & 0x200) == 0) & v14) != 1)
  {
    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (is_system_path_symbol_owner(a1))
  {
LABEL_29:
    *(a1 + 109);
  }

LABEL_30:
  if (v17)
  {
    create_traw_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2);
  }

  if (v20)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    CSCppSymbolOwnerCache::create_mmap_symbol_owner_data_arch_specific(a1, v20, v10);
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    CSCppDsymData::~CSCppDsymData(v25);
    MEMORY[0x1DA736760]();
  }

  return 0;
}

void sub_1D9747CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t TMMapArchive::dsym_path(TMMapArchive *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 2);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = v3;
  v4.i32[1] = v3.i32[0];
  v4.i32[3] = *(this + 6);
  return this + *(this + 22) + *(this + 20) + vaddlvq_u32(vmulq_s32(v4, xmmword_1D97E0550)) + (32 * *(this + 2)) + (24 * *(this + 3)) + v1 + 96;
}

uint64_t dsym_data_for_symbol_owner(const CFUUIDBytes *a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      make_dsym_data_from_path_and_uuid(a2, a1 + 1, &v4);
      if (v5 == 1)
      {
        operator new();
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D9747E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  MEMORY[0x1DA736760](v9, 0x1032C401C2584E0);
  if (LOBYTE(STACK[0x448]) == 1)
  {
    CSCppDsymData::~CSCppDsymData(&a9);
  }

  _Unwind_Resume(a1);
}

BOOL cached_sod_contains_sufficient_data(TMMapArchive *a1, int a2)
{
  v3 = TMMapArchive::optional_data(a1);
  if (!v3 || !*(v3 + 1) || *(v3 + 2) < 0x14u)
  {
    return 1;
  }

  v5 = *(v3 + 4);

  return do_candidate_sources_satisfy_existing(v5, a2);
}

BOOL is_system_path_symbol_owner(CSCppSymbolOwner *a1)
{
  v1 = *(a1 + 15);
  v2 = &unk_1E8583E88;
  v3 = 64;
  do
  {
    v4 = strncmp(v1, *(v2 - 1), *v2);
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    v3 -= 16;
    v2 += 2;
  }

  while (!v5);
  return v4 == 0;
}

void create_traw_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void sub_1D9748C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](&a24, 0);
  v27 = *(v25 - 160);
  *(v25 - 160) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  (*(*v24 + 8))(v24);
  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(uint64_t a1, uint64_t a2, CSCppAddressSet *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((*(a1 + 8) + 40));
  if (!_do_traw_segments_overlap((a2 + 376)))
  {
    if (a3)
    {
      CSCppAddressSet::sort(a3);
    }

    MMapArchiveNameBuffer::MMapArchiveNameBuffer(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D974A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, mach_vm_address_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = *(v71 - 144);
  if (v73)
  {
    *(v71 - 136) = v73;
    operator delete(v73);
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(&a33);
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  CSCppTRawSymbolNameGuard<Pointer32>::~CSCppTRawSymbolNameGuard(&a41);
  DemanglingUtilities::CSCppReusableDemanglingBuffer::~CSCppReusableDemanglingBuffer(&a43);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a45);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a51);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a57);
  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  a71 = a26;
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:ne200100](&a71);
  _Unwind_Resume(a1);
}

char *TMMapArchive::optional_data(TMMapArchive *this)
{
  result = TMMapArchive::strtab_end(this);
  v3 = this + *(this + 1);
  v4 = v3 > result;
  v5 = v3 - result;
  if (!v4 || v5 < 0xC || *result != 12648430 || !*(result + 1))
  {
    return 0;
  }

  LODWORD(v6) = *(result + 2);
  if (v6 <= 0xC)
  {
    v6 = 12;
  }

  else
  {
    v6 = v6;
  }

  if (v5 != v6)
  {
    return 0;
  }

  return result;
}

_DWORD *record_sod_header_version<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(uint64_t *a1, _DWORD *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::version_from_source_version_load_command(*a1, v7);
  if (v8 == 1)
  {
    CSCppStringCache::intern((a2 + 24), v7);
  }

  result = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::id_dylib(*(*a1 + 24));
  if (result)
  {
    a2[64] = result[4];
    a2[65] = result[5];
    if ((v8 & 1) == 0)
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::version_from_id_dylib_load_command(*a1, v6);
      if (v6[32])
      {
        CSCppStringCache::intern((a2 + 24), v6);
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dsym_header_for_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<X0>(uint64_t result@<X0>, void ***a2@<X2>, void ***a3@<X3>, void *a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = atomic_load((*(result + 8) + 40));
  if ((v5 & 0x80000) == 0 && (v6 = result, (*(result + 109) & 0x40) == 0) && ((v8 = *a3) != 0 || (v10 = dsym_data_for_symbol_owner(result, 0, 0, 0, 0), result = std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](a2, v10), v8 = *a2, *a3 = *a2, v8)) && (result = new_file_memory_for_uuid_and_arch((v8 + 9), v6 + 16, *(v6 + 112), 2)) != 0)
  {
    v11 = result;
    v15 = result;
    if (TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v15, 0, 1))
    {
      v12 = *a3;
      v13 = v11[14];
      operator new();
    }

    *a4 = 0;
    result = (*(*v11 + 8))(v11);
  }

  else
  {
    *a4 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D974A8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(a11);
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

void extract_dwarf_data_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, void *a2, char a3, void *a4, uint64_t (***a5)(void, std::vector<std::string>::pointer))
{
  v132 = *MEMORY[0x1E69E9840];
  v7 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "__DWARF");
  v76 = a2;
  v77 = a1;
  if (v7 || (v7 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "__DWARFA")) != 0 || (v7 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "")) != 0)
  {
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v78 = 0;
      v16 = 0;
      v17 = (v7 + 56);
      do
      {
        if (!v9 && !strcmp(v17, "__debug_info"))
        {
          v9 = v17;
        }

        else if (!v10 && !strcmp(v17, "__debug_abbrev"))
        {
          v10 = v17;
        }

        else if (!v11 && !strcmp(v17, "__debug_line"))
        {
          v11 = v17;
        }

        else if (!v12 && !strcmp(v17, "__debug_str"))
        {
          v12 = v17;
        }

        else if (!v13 && !strncmp(v17, "__debug_line_str", 0x10uLL))
        {
          v13 = v17;
        }

        else if (!v14 && !strcmp(v17, "__debug_ranges"))
        {
          v14 = v17;
        }

        else if (!v15 && !strncmp(v17, "__debug_rnglists", 0x10uLL))
        {
          v15 = v17;
        }

        else if (!strcmp(v17, "__debug_addr"))
        {
          v78 = v17;
        }

        else if (!strncmp(v17, "__debug_str_offs", 0x10uLL))
        {
          v16 = v17;
        }

        v17 += 68;
        --v8;
      }

      while (v8);
      if (v9 && v10 && *(v9 + 9) && *(v10 + 9))
      {
        v18 = *(v77 + 8);
        if ((*(*v18 + 16))(v18))
        {
          v19 = *(v77 + 32);
          if (v11)
          {
            v69 = *(v11 + 8) + v19;
          }

          else
          {
            v69 = 0;
          }

          v20 = v78;
          if (v12)
          {
            v72 = *(v12 + 8) + v19;
            if (v13)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v72 = 0;
            if (v13)
            {
LABEL_45:
              v70 = *(v13 + 8) + v19;
              if (v14)
              {
LABEL_46:
                v67 = *(v14 + 8) + v19;
LABEL_55:
                if (v15)
                {
                  v66 = *(v15 + 8) + v19;
                }

                else
                {
                  v66 = 0;
                }

                v21 = v19 + *(v9 + 8);
                v79 = *(v10 + 8) + v19;
                if (v20)
                {
                  v65 = *(v20 + 8) + v19;
                  if (!v16)
                  {
                    goto LABEL_81;
                  }
                }

                else
                {
                  v65 = 0;
                  if (!v16)
                  {
                    goto LABEL_81;
                  }
                }

                v22 = 32;
                goto LABEL_74;
              }

LABEL_54:
              v67 = 0;
              goto LABEL_55;
            }
          }

          v70 = 0;
          if (v14)
          {
            goto LABEL_46;
          }

          goto LABEL_54;
        }

        v19 = *(v77 + 16);
        if (v11)
        {
          v69 = *(v11 + 10) + v19;
        }

        else
        {
          v69 = 0;
        }

        v20 = v78;
        if (v12)
        {
          v72 = *(v12 + 10) + v19;
          if (v13)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v72 = 0;
          if (v13)
          {
LABEL_50:
            v70 = *(v13 + 10) + v19;
            if (v14)
            {
LABEL_51:
              v67 = *(v14 + 10) + v19;
LABEL_60:
              if (v15)
              {
                v66 = *(v15 + 10) + v19;
              }

              else
              {
                v66 = 0;
              }

              v21 = *(v9 + 10) + v19;
              v79 = *(v10 + 10) + v19;
              if (v20)
              {
                v65 = *(v20 + 10) + v19;
                if (!v16)
                {
LABEL_81:
                  v71 = 0;
                  if (!v11)
                  {
LABEL_82:
                    v68 = 0;
                    if (!v12)
                    {
LABEL_83:
                      v23 = 0;
                      if (!v13)
                      {
LABEL_84:
                        v24 = 0;
                        if (!v14)
                        {
LABEL_79:
                          if (v15)
                          {
                            v25 = *(v15 + 9);
                          }

                          else
                          {
                            v25 = 0;
                          }

                          v26 = *(v9 + 9);
                          if (v20)
                          {
                            v64 = *(v20 + 9);
                            if (!v16)
                            {
LABEL_90:
                              v27 = *(v10 + 9);
                              v28 = v21;
                              v29 = (*(*v18 + 32))(v18, v21, v26);
                              if (v29)
                              {
                                v125 = v29;
                                v126 = 0;
                                v127 = v28 | (v26 << 32);
                                madvise(v29, v26, 2);
                                v30 = (*(*v18 + 32))(v18, v79, v27);
                                if (v30)
                                {
                                  v117 = v30;
                                  v118 = 0;
                                  v119 = v79 | (v27 << 32);
                                  v120 = 0;
                                  v122 = 0;
                                  v121 = 0;
                                  v123 = 0u;
                                  v124 = 0u;
                                  madvise(v30, v27, 2);
                                  if (!v23 || (v31 = (*(*v18 + 32))(v18, v72, v23)) == 0)
                                  {
                                    v31 = 0;
                                    v23 = 0;
                                  }

                                  v114 = v31;
                                  v115 = 0;
                                  v116 = v72 | (v23 << 32);
                                  if (!v16 || (v32 = (*(*v18 + 32))(v18, v71, v16)) == 0)
                                  {
                                    v32 = 0;
                                    v16 = 0;
                                  }

                                  v111 = v32;
                                  v112 = 0;
                                  v113 = v71 | (v16 << 32);
                                  if (!v24 || (v33 = (*(*v18 + 32))(v18, v70, v24)) == 0)
                                  {
                                    v33 = 0;
                                    v24 = 0;
                                  }

                                  v108 = v33;
                                  v109 = 0;
                                  v110 = v70 | (v24 << 32);
                                  v34 = v68;
                                  if (!v68 || (v35 = (*(*v18 + 32))(v18, v69, v68)) == 0)
                                  {
                                    v35 = 0;
                                    v34 = 0;
                                  }

                                  v104 = v35;
                                  v105 = 0;
                                  v106 = v69 | (v34 << 32);
                                  v107 = &v108;
                                  if (!v14 || (v36 = (*(*v18 + 32))(v18, v67, v14)) == 0)
                                  {
                                    v36 = 0;
                                    v14 = 0;
                                  }

                                  v101 = v36;
                                  v102 = 0;
                                  v103 = v67 | (v14 << 32);
                                  if (!v25 || (v37 = (*(*v18 + 32))(v18, v66, v25)) == 0)
                                  {
                                    v37 = 0;
                                    v25 = 0;
                                  }

                                  v98 = v37;
                                  v99 = 0;
                                  v100 = v66 | (v25 << 32);
                                  v38 = v64;
                                  if (!v64 || (v39 = (*(*v18 + 32))(v18, v65, v64)) == 0)
                                  {
                                    v39 = 0;
                                    v38 = 0;
                                  }

                                  v95 = v39;
                                  v96 = 0;
                                  v97 = v65 | (v38 << 32);
                                  memset(v93, 0, sizeof(v93));
                                  v94 = 1065353216;
                                  v90 = 0;
                                  v91 = 0;
                                  v92 = 0;
                                  v89 = 0u;
                                  v87 = 0u;
                                  v88 = 0u;
                                  v85 = 0u;
                                  v86 = 0u;
                                  v83 = 0u;
                                  v84 = 0u;
                                  v81 = 0u;
                                  v82 = 0u;
                                  if (HIDWORD(v127) != v126)
                                  {
                                    v40 = MEMORY[0x1E69E9C10];
                                    do
                                    {
                                      v41 = TDwarfInfoStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf32_compile_unit(&v125);
                                      v42 = v41;
                                      if (!v41)
                                      {
                                        break;
                                      }

                                      v43 = 8;
                                      if (*(v41 + 2) < 5u)
                                      {
                                        v43 = 6;
                                      }

                                      v80 = *(v41 + v43);
                                      *&buf = &v80;
                                      v44 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v93, &v80);
                                      v46 = v44[3];
                                      v45 = v44[4];
                                      if (v45)
                                      {
                                        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
                                      }

                                      if (v46)
                                      {
                                        v47 = v42[1];
                                        v42[1];
                                        operator new();
                                      }

                                      if (HIDWORD(v119) >= v80)
                                      {
                                        TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(&v117, v80);
                                        TDwarfAbbrevStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::abbrev_table();
                                      }

                                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                                      {
                                        LOWORD(buf) = 0;
                                        _os_log_impl(&dword_1D96E9000, v40, OS_LOG_TYPE_DEFAULT, "Bad abbrev table offset in compile unit\n", &buf, 2u);
                                      }

                                      if (v45)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                                      }
                                    }

                                    while (HIDWORD(v127) != v126);
                                    v49 = v90;
                                    for (i = v91; v49 != i; ++v49)
                                    {
                                      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(*v49, *(*v49 + 20));
                                      v131 = 0;
                                      v129 = 0u;
                                      v130 = 0u;
                                      buf = 0u;
                                      *&buf = *v49;
                                      *(&buf + 1) = &v117;
                                      *&v129 = &v104;
                                      *(&v129 + 1) = &v114;
                                      *&v130 = &v108;
                                      *(&v130 + 1) = &v101;
                                      v131 = &v98;
                                      parse_dies<Dwarf<Dwarf32,Pointer32,LittleEndian>,TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>(*(v77 + 32), *v49, &v90, &buf, v76, a3, a4, a5, &v84, &v87, &v81);
                                    }
                                  }

                                  TRawSymbolOwnerData<Pointer32>::presize_symbols_container_by(v76, *(&v86 + 1));
                                  std::vector<TRawSourceInfo<Pointer32>>::reserve(v76 + 26, *(&v89 + 1));
                                  if (v85 != *(&v84 + 1))
                                  {
                                    v51 = (*(&v84 + 1) + 8 * (v86 / 0x2A));
                                    v52 = (*v51 + 96 * (v86 % 0x2A));
                                    v53 = *(*(&v84 + 1) + 8 * ((*(&v86 + 1) + v86) / 0x2AuLL)) + 96 * ((*(&v86 + 1) + v86) % 0x2AuLL);
                                    while (v52 != v53)
                                    {
                                      TRawSymbolOwnerData<Pointer32>::add_symbol(v76, v52);
                                      v52 += 24;
                                      if ((v52 - *v51) == 4032)
                                      {
                                        v54 = v51[1];
                                        ++v51;
                                        v52 = v54;
                                      }
                                    }
                                  }

                                  v55 = (*(&v87 + 1) + 8 * (v89 >> 7));
                                  if (v88 == *(&v87 + 1))
                                  {
                                    v56 = 0;
                                    v58 = 0;
                                    v57 = (*(&v87 + 1) + 8 * ((*(&v89 + 1) + v89) >> 7));
                                  }

                                  else
                                  {
                                    v56 = (*v55 + 32 * (v89 & 0x7F));
                                    v57 = (*(&v87 + 1) + 8 * ((*(&v89 + 1) + v89) >> 7));
                                    v58 = (*v57 + 32 * ((*(&v89 + 1) + v89) & 0x7F));
                                  }

                                  *&buf = v76 + 26;
                                  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRawSourceInfo<Pointer32>,TRawSourceInfo<Pointer32>*,TRawSourceInfo<Pointer32>&,TRawSourceInfo<Pointer32>**,long,128l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRawSourceInfo<Pointer32>,TRawSourceInfo<Pointer32>*,TRawSourceInfo<Pointer32>&,TRawSourceInfo<Pointer32>**,long,128l>,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer32>>>>>(v55, v56, v57, v58, &buf);
                                  if (*(&v83 + 1))
                                  {
                                    v59 = (*(&v81 + 1) + 8 * (v83 >> 8));
                                    if (v82 == *(&v81 + 1))
                                    {
                                      v60 = 0;
                                      v62 = 0;
                                      v61 = (*(&v81 + 1) + 8 * ((v83 + *(&v83 + 1)) >> 8));
                                    }

                                    else
                                    {
                                      v60 = (*v59 + 16 * v83);
                                      v61 = (*(&v81 + 1) + 8 * ((v83 + *(&v83 + 1)) >> 8));
                                      v62 = (*v61 + 16 * (v83 + BYTE8(v83)));
                                    }

                                    *&buf = v76 + 66;
                                    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRangeValue<Pointer32,char const*>,TRangeValue<Pointer32,char const*>*,TRangeValue<Pointer32,char const*>&,TRangeValue<Pointer32,char const*>**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRangeValue<Pointer32,char const*>,TRangeValue<Pointer32,char const*>*,TRangeValue<Pointer32,char const*>&,TRangeValue<Pointer32,char const*>**,long,256l>,std::back_insert_iterator<std::vector<TRangeValue<Pointer32,char const*>>>>>(v59, v60, v61, v62, &buf);
                                  }

                                  std::deque<TRangeValue<Pointer32,char const*>>::~deque[abi:ne200100](&v81);
                                  std::deque<TRawSymbol<Pointer32>>::~deque[abi:ne200100](&v84);
                                  std::deque<TRawSourceInfo<Pointer32>>::~deque[abi:ne200100](&v87);
                                  *&buf = &v90;
                                  std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::__destroy_vector::operator()[abi:ne200100](&buf);
                                  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::~__hash_table(v93);
                                  if (v123)
                                  {
                                    *(&v123 + 1) = v123;
                                    operator delete(v123);
                                  }
                                }
                              }

                              goto LABEL_150;
                            }
                          }

                          else
                          {
                            v64 = 0;
                            if (!v16)
                            {
                              goto LABEL_90;
                            }
                          }

                          v16 = *(v16 + 9);
                          goto LABEL_90;
                        }

LABEL_78:
                        v14 = *(v14 + 9);
                        goto LABEL_79;
                      }

LABEL_77:
                      v24 = *(v13 + 9);
                      if (!v14)
                      {
                        goto LABEL_79;
                      }

                      goto LABEL_78;
                    }

LABEL_76:
                    v23 = *(v12 + 9);
                    if (!v13)
                    {
                      goto LABEL_84;
                    }

                    goto LABEL_77;
                  }

LABEL_75:
                  v68 = *(v11 + 9);
                  if (!v12)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_76;
                }
              }

              else
              {
                v65 = 0;
                if (!v16)
                {
                  goto LABEL_81;
                }
              }

              v22 = 40;
LABEL_74:
              v71 = (*&v16[v22] + v19);
              if (!v11)
              {
                goto LABEL_82;
              }

              goto LABEL_75;
            }

LABEL_59:
            v67 = 0;
            goto LABEL_60;
          }
        }

        v70 = 0;
        if (v14)
        {
          goto LABEL_51;
        }

        goto LABEL_59;
      }
    }
  }

LABEL_150:
  v63 = *MEMORY[0x1E69E9840];
}

uint64_t extract_stabs_data_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, void *a7)
{
  v14 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a5 + 24), "__LINKEDIT");
  v15 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symtab(*(a5 + 24));
  v16 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::dysymtab(*(a5 + 24));
  if (!v15)
  {
    return 0;
  }

  v17 = v16;
  v40 = a6;
  v18 = *(a5 + 8);
  v41 = v15[3];
  v39 = a7;
  if ((*(*v18 + 16))(v18))
  {
    v19 = *(v14 + 32);
    v20 = *(a5 + 32) + *(v14 + 24);
    v21 = v20 + v15[2];
    goto LABEL_11;
  }

  if ((*(a5 + 50) & 8) != 0)
  {
    if (*(a5 + 64))
    {
      v19 = *(a5 + 56);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a5 + 16);
    v21 = v15[2] + v20;
LABEL_11:
    v23 = v21 - v19;
    v24 = v20 - v19 + v15[4];
    if (v24)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v22 = *(a5 + 16);
  v23 = v15[2] + v22;
  v24 = v15[4] + v22;
  if (!v24)
  {
    return 0;
  }

LABEL_12:
  if (!v41 || !v15[5])
  {
    return 1;
  }

  result = (*(*v18 + 32))(v18, v23, 12 * v41);
  v38 = result;
  if (result)
  {
    v26 = v15[5];
    if (a1)
    {
      v27 = v24 | (v26 << 32);
      if (a2 && a4)
      {
        extract_direct_stabs_from_header_filtering_redacted<SizeAndEndianness<Pointer32,LittleEndian>>(a5, v40, result, v41, v27);
        extract_stripped_locals_from_dyld_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>>(a2, a3, a4, a5, v40);
      }

      else
      {
        extract_direct_stabs_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(a5, v40, result, v41, v27, v39);
      }
    }

    result = 1;
    if (v14)
    {
      if (v17 && v17[14] && (a1 & 2) != 0 && v17[15])
      {
        if ((*(*v18 + 16))(v18))
        {
          v28 = v26;
          v29 = v17[14] + *(v14 + 24) - *(v14 + 32) + *(a5 + 32);
        }

        else if ((*(a5 + 50) & 8) != 0)
        {
          v28 = v26;
          v30 = *(a5 + 56);
          if ((*(a5 + 64) & 1) == 0)
          {
            v30 = 0;
          }

          v29 = v17[14] + *(a5 + 16) - v30;
        }

        else
        {
          v28 = v26;
          v29 = v17[14] + *(a5 + 16);
        }

        v31 = v17[15];
        v32 = (*(*v18 + 32))(v18, v29, 4 * v31);
        v33 = v32;
        if (v31 && !v32)
        {
          return 0;
        }

        v34 = *(a5 + 24);
        v35 = *(v34 + 20);
        v42 = *(v34 + 16);
        v43 = v34;
        v44 = v34 + 28 + v35;
        v46 = 0;
        v47 = 0;
        v45 = v34 + 28;
        v36 = TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(&v42);
        if (v36)
        {
          v37 = v36;
          do
          {
            if (*(v37 + 56) == 8)
            {
              extract_indirect_stabs_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(a5, v40, v37, v33, v31, v38, v41, v24 | (v28 << 32), v39);
            }

            v37 = TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(&v42);
          }

          while (v37);
        }

        return 1;
      }
    }
  }

  return result;
}

void extract_function_starts_data_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, void *a2, char a3)
{
  v6 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::function_starts(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    if (v6[3])
    {
      v8 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "__LINKEDIT");
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 8);
        if ((*(*v10 + 16))(v10))
        {
          v11 = v7[2] - *(v9 + 32) + *(v9 + 24) + *(a1 + 32);
        }

        else if ((*(a1 + 50) & 8) != 0)
        {
          v12 = *(a1 + 56);
          if ((*(a1 + 64) & 1) == 0)
          {
            v12 = 0;
          }

          v11 = v7[2] + *(a1 + 16) - v12;
        }

        else
        {
          v11 = v7[2] + *(a1 + 16);
        }

        v13 = v7[3];
        v14 = v11;
        v15 = (*(*v10 + 32))(v10, v11, v13);
        if (v15)
        {
          v16 = v15;
          v24 = v15;
          v25 = 0;
          v26 = v14 | (v13 << 32);
          v17 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "__TEXT");
          if (v17)
          {
            v18 = *(a1 + 32) + *(v17 + 24);
            v23 = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
            if (CSCppArchitecture::matches(&v23, 0xCuLL))
            {
              v19 = 0;
              goto LABEL_16;
            }

            v22 = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
            v20 = CSCppArchitecture::matches(&v22, 0x100000CuLL);
            v16 = v24;
            v19 = v25;
            if (v20)
            {
LABEL_16:
              if (*(v16 + v19))
              {
                do
                {
                  v18 += TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(&v24);
                  if (v18)
                  {
                    v21 = 272629824;
                  }

                  else
                  {
                    v21 = 272629760;
                  }

                  TRawSymbolOwnerData<Pointer32>::emplace_symbol(a2, v18 & 0xFFFFFFFE, 0, "$$$function-starts-fake-name$$$", "$$$function-starts-fake-mangled-name$$$", v21, 0, a3);
                }

                while (*(v24 + v25));
              }

              return;
            }

            while (*(v24 + v25))
            {
              v18 += TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(&v24);
              TRawSymbolOwnerData<Pointer32>::emplace_symbol(a2, v18, 0, "$$$function-starts-fake-name$$$", "$$$function-starts-fake-mangled-name$$$", 0x10400000u, 0, a3);
            }
          }
        }
      }
    }
  }
}

const char *extract_debug_map_data_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v4 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a1 + 24), "__LINKEDIT");
  result = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symtab(*(a1 + 24));
  if (!result || *(*(a1 + 24) + 12) == 9)
  {
    return result;
  }

  v6 = result;
  v7 = *(a1 + 8);
  v8 = *(result + 3);
  result = (*(*v7 + 16))(v7);
  if (result)
  {
    v9 = *(v4 + 32);
    v10 = *(a1 + 32) + *(v4 + 24);
    v11 = v10 + *(v6 + 2);
  }

  else
  {
    if ((*(a1 + 50) & 8) == 0)
    {
      v12 = *(a1 + 16);
      v13 = *(v6 + 2) + v12;
      v14 = *(v6 + 4) + v12;
      if (!v8)
      {
        return result;
      }

      goto LABEL_13;
    }

    if (*(a1 + 64))
    {
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 16);
    v11 = *(v6 + 2) + v10;
  }

  v13 = v11 - v9;
  v14 = v10 - v9 + *(v6 + 4);
  if (!v8)
  {
    return result;
  }

LABEL_13:
  if (*(v6 + 5))
  {
    result = (*(*v7 + 32))(v7, v13, 12 * v8);
    if (result)
    {
      v15 = result;
      v16 = v14 | (*(v6 + 5) << 32);
      extract_debug_maps_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2, result, v8, v16);

      return extract_relinked_subdylibs_in_debug_maps_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2, v15, v8, v16);
    }
  }

  return result;
}

unint64_t TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::gc_support_flags(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 20);
  v11 = *(v2 + 16);
  v12 = v2;
  v13 = v2 + 28 + v3;
  v14 = v2 + 28;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
  if (result)
  {
    v5 = result;
    while (1)
    {
      if (*v5 == 1 && (!strcmp("__OBJC", (v5 + 8)) || !strcmp("__DATA", (v5 + 8))))
      {
        v6 = *(v5 + 48);
        if (v6)
        {
          break;
        }
      }

LABEL_11:
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v7 = v5 + 56;
    while (strncmp(v7, "__image_info", 0x10uLL) && strncmp(v7, "__objc_imageinfo", 0x10uLL))
    {
      v7 += 68;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    if (*(v7 + 36) >= 8u && *(v7 + 40))
    {
      if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
      {
        v8 = *(v7 + 32);
        v9 = *(a1 + 32);
      }

      else
      {
        v8 = *(a1 + 16);
        v9 = *(v7 + 40);
      }

      v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), (v9 + v8), 8);
      if (v10)
      {
        return *(v10 + 4) | 1u;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sort_and_filter_extracted_data<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = TRawSymbolOwnerData<Pointer32>::mutable_sorted_symbols(a2);
  v5 = *(a1 + 32);
  v142 = 0;
  v143 = 0;
  __src = 0;
  v6 = *(a1 + 24);
  v7 = v6[3];
  v128 = v2;
  if (v7 == 9 || v7 == 10 && (*(a1 + 48) & 0x38000000) != 0x10000000)
  {
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v8 = v6[5];
    LODWORD(v144) = v6[4];
    *(&v144 + 1) = v6;
    v145 = v6 + v8 + 28;
    v147 = 0;
    *&v148 = 0;
    v146 = v6 + 7;
    while (1)
    {
      v9 = TSectionIterator<SizeAndEndianness<Pointer32,LittleEndian>>::section(&v144);
      v10 = v9;
      if (!v9)
      {
        break;
      }

      v11 = *(v9 + 9);
      if (v11)
      {
        v12 = *(v9 + 14);
        v13 = v12 == 11 || v12 == 0;
        v14 = !v13 || (*(v9 + 14) & 0x80000400) == 0;
        v15 = !v14;
        if (!strstr(v9 + 16, "__LINKINFO"))
        {
          v16 = *(v10 + 8) + v5;
          v17 = v142;
          if (v142 >= v143)
          {
            v19 = __src;
            v20 = v142 - __src;
            v21 = 0xAAAAAAAAAAAAAAABLL * ((v142 - __src) >> 2);
            v22 = v21 + 1;
            if (v21 + 1 > 0x1555555555555555)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v143 - __src) >> 2) > v22)
            {
              v22 = 0x5555555555555556 * ((v143 - __src) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v143 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v23 = 0x1555555555555555;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](&__src, v23);
            }

            v24 = (4 * ((v142 - __src) >> 2));
            *v24 = v16;
            v24[1] = v11;
            v24[2] = v15;
            v18 = 12 * v21 + 12;
            v25 = (12 * v21 - v20);
            memcpy(v25, v19, v20);
            v26 = __src;
            __src = v25;
            v142 = v18;
            v143 = 0;
            if (v26)
            {
              operator delete(v26);
            }

            v2 = v128;
          }

          else
          {
            *v142 = v16;
            *(v17 + 1) = v11;
            v18 = (v17 + 12);
            *(v17 + 2) = v15;
          }

          v142 = v18;
        }
      }
    }

    v28 = __src;
    v27 = v142;
    if (v142 != __src)
    {
      goto LABEL_48;
    }
  }

  v29 = *(v2 + 160);
  v30 = *(v2 + 168);
  if (v29 != v30)
  {
    do
    {
      v32 = *v29;
      v31 = v29[1];
      if (v27 >= v143)
      {
        v33 = __src;
        v34 = v27 - __src;
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v27 - __src) >> 2);
        v36 = v35 + 1;
        if (v35 + 1 > 0x1555555555555555)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v143 - __src) >> 2) > v36)
        {
          v36 = 0x5555555555555556 * ((v143 - __src) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v143 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v37 = 0x1555555555555555;
        }

        else
        {
          v37 = v36;
        }

        if (v37)
        {
          std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](&__src, v37);
        }

        v38 = 12 * v35;
        *v38 = v32;
        *(v38 + 4) = v31;
        *(v38 + 8) = 0;
        v27 = (12 * v35 + 12);
        v39 = (v38 - v34);
        memcpy((v38 - v34), v33, v34);
        v40 = __src;
        __src = v39;
        v142 = v27;
        v143 = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v27 = v32;
        v27[1] = v31;
        v27[2] = 0;
        v27 += 3;
      }

      v142 = v27;
      v29 += 3;
    }

    while (v29 != v30);
    v28 = __src;
    v2 = v128;
  }

LABEL_48:
  if (v28 == v27)
  {
    goto LABEL_173;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,false>(v28, v27, &v144, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v27 - v28)), 1);
  v41 = *v4;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  if (v41 < v4[1])
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = &v130;
    while (2)
    {
      v47 = v41;
      while (2)
      {
        v41 = v47 + 24;
        while ((atomic_load_explicit(v47 + 5, memory_order_acquire) & 2) != 0)
        {
          v47 += 24;
          v48 = v4[1];
          v41 += 24;
          if (v47 >= v48)
          {
            goto LABEL_95;
          }
        }

        v49 = *v47;
        if (*v47 - v45 >= v44)
        {
          v50 = v142;
          if (v142 != __src)
          {
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v142 - __src) >> 2);
            v50 = __src;
            do
            {
              v52 = v51 >> 1;
              v53 = &v50[3 * (v51 >> 1)];
              v55 = *v53;
              v54 = v53 + 3;
              v51 += ~(v51 >> 1);
              if (v49 < v55)
              {
                v51 = v52;
              }

              else
              {
                v50 = v54;
              }
            }

            while (v51);
          }

          if (v50 == __src || v49 - *(v50 - 3) >= *(v50 - 2))
          {
            atomic_fetch_or_explicit(v47 + 5, 0x1000u, memory_order_relaxed);
            v47 += 24;
            v48 = v4[1];
            v42 = 1;
            if (v47 < v48)
            {
              continue;
            }

            v2 = v128;
            goto LABEL_96;
          }

          v45 = *(v50 - 3);
          v44 = *(v50 - 2);
          v43 = *(v50 - 1);
        }

        break;
      }

      sort_inlined_functions<Pointer32>(v47);
      for (i = v4[1]; v41 != i; v41 += 24)
      {
        if (*v41 != *v47)
        {
          break;
        }
      }

      if ((atomic_load_explicit(v47 + 5, memory_order_acquire) & 0x100) == 0)
      {
        v57 = *v47;
        v58 = v44 + v45 - *v47;
        if (v41 == v4[1])
        {
          v59 = v44 + v45 - v57;
        }

        else
        {
          v59 = *v41 - v57;
        }

        if (v59 < v58)
        {
          v58 = v59;
        }

        v60 = v47[1];
        if (v60 >= v58)
        {
          v61 = v58;
        }

        else
        {
          v61 = v47[1];
        }

        if (v60)
        {
          v58 = v61;
        }

        v47[1] = v58;
      }

      v127 = v46;
      if (atomic_load_explicit(v47 + 5, memory_order_acquire) == 2048)
      {
        v62 = (v43 & 1) == 0;
      }

      else
      {
        v62 = 0;
        atomic_store(atomic_load_explicit(v47 + 5, memory_order_acquire) | v43, v47 + 5);
      }

      TRawSymbolOwnerData<Pointer32>::aliases_for_symbol(v128, v47, &v133);
      std::vector<TRawSymbol<Pointer32>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>>(&v138, v139, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 5));
      if (v62)
      {
        TRawSymbolOwnerData<Pointer32>::aliases_from_deduplicated_variants_for_symbol(v128, v47, &v131);
        v46 = v127;
        if (v132 != v131)
        {
          TRawSymbol<Pointer32>::TRawSymbol(v129, v132 - 96);
          v150 = 0;
          v145 = 0;
          v144 = 0uLL;
          v148 = 0u;
          memset(v149, 0, 25);
          TRawSymbol<Pointer32>::operator=(&v144, v129);
          TRawSymbol<Pointer32>::operator=(v129, v47);
          TRawSymbol<Pointer32>::operator=(v47, &v144);
          v151 = v149;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v151);
          atomic_store(atomic_load_explicit(v47 + 5, memory_order_acquire) & 0xFFFFFDFF, v47 + 5);
          v63 = v132;
          *&v144 = v132 - 40;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v144);
          v132 = v63 - 96;
          std::vector<TRawSymbol<Pointer32>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>>(&v138, v139, v131, v63 - 96, 0xAAAAAAAAAAAAAAABLL * ((v63 - 96 - v131) >> 5));
          v46 = v127;
          *&v144 = v127;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v144);
        }

        *&v144 = &v131;
        v64 = &v144;
      }

      else
      {
        TRawSymbolOwnerData<Pointer32>::deduplicated_variants_for_symbol(v128, v47, &v144);
        v66 = *(&v144 + 1);
        v65 = v144;
        if (v144 != *(&v144 + 1))
        {
          do
          {
            atomic_store(atomic_load_explicit((v65 + 20), memory_order_acquire) | v43, (v65 + 20));
            v65 += 96;
          }

          while (v65 != v66);
          v66 = *(&v144 + 1);
          v65 = v144;
        }

        v46 = v127;
        std::vector<TRawSymbol<Pointer32>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>>(&v135, v136, v65, v66, 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 5));
        v129[0] = &v144;
        v64 = v129;
      }

      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v64);
      *&v144 = &v133;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v144);
      v48 = v4[1];
      if (v41 < v48)
      {
        continue;
      }

      break;
    }

LABEL_95:
    v2 = v128;
    if ((v42 & 1) == 0)
    {
      goto LABEL_97;
    }

LABEL_96:
    v67 = std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__mem_fn<BOOL const (TRawSymbol<Pointer32>::*)(void)const>>(*v4, v48, TRawSymbol<Pointer32>::is_marked_for_deletion, 0);
    std::vector<TRawSymbol<Pointer32>>::erase(v4, v67, v4[1]);
  }

LABEL_97:
  if (v138 != v139)
  {
    v145 = 0;
    v144 = 0uLL;
    std::vector<TRawSymbol<Pointer32>>::reserve(&v144, 0xAAAAAAAAAAAAAAABLL * ((v139 - v138) >> 5) - 0x5555555555555555 * ((v4[1] - *v4) >> 5));
    std::__merge[abi:ne200100]<std::__less<void,void> &,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::back_insert_iterator<std::vector<TRawSymbol<Pointer32>>>>(*v4, v4[1], v138, v139, &v144);
    std::vector<TRawSymbol<Pointer32>>::__vdeallocate(v4);
    *v4 = v144;
    v4[2] = v145;
    v144 = 0uLL;
    v145 = 0;
    v129[0] = &v144;
    std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v129);
  }

  if (v135 != v136)
  {
    v145 = 0;
    v144 = 0uLL;
    std::vector<TRawSymbol<Pointer32>>::reserve(&v144, 0xAAAAAAAAAAAAAAABLL * ((v136 - v135) >> 5) - 0x5555555555555555 * ((v4[1] - *v4) >> 5));
    std::__merge[abi:ne200100]<std::__less<void,void> &,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::back_insert_iterator<std::vector<TRawSymbol<Pointer32>>>>(*v4, v4[1], v135, v136, &v144);
    std::vector<TRawSymbol<Pointer32>>::__vdeallocate(v4);
    *v4 = v144;
    v4[2] = v145;
    v144 = 0uLL;
    v145 = 0;
    v129[0] = &v144;
    std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v129);
  }

  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__less<void,void>>(*(v2 + 208), *(v2 + 216), v129);
  v69 = *(v2 + 208);
  v68 = *(v2 + 216);
  if (v69 != v68)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    do
    {
      v73 = v69;
      while (1)
      {
        v74 = *v73;
        if (*v73 - v72 < v71)
        {
          break;
        }

        v75 = v4[1];
        if (v75 != *v4)
        {
          v76 = 0xAAAAAAAAAAAAAAABLL * ((v75 - *v4) >> 5);
          v75 = *v4;
          do
          {
            v77 = v76 >> 1;
            v78 = (v75 + 96 * (v76 >> 1));
            v80 = *v78;
            v79 = v78 + 24;
            v76 += ~(v76 >> 1);
            if (v74 < v80)
            {
              v76 = v77;
            }

            else
            {
              v75 = v79;
            }
          }

          while (v76);
        }

        if (*v4 != v75 && v74 - *(v75 - 96) < *(v75 - 92))
        {
          if ((atomic_load_explicit((v75 - 76), memory_order_acquire) & 0x800) == 0)
          {
            v72 = *(v75 - 96);
            v71 = *(v75 - 92);
            v74 = *v73;
            v68 = *(v2 + 216);
            break;
          }

          v68 = *(v2 + 216);
        }

        v73[5] |= 0x80000000;
        v73 += 8;
        v70 = 1;
        if (v73 == v68)
        {
          goto LABEL_129;
        }
      }

      v81 = v71 + v72 - v74;
      v73[1] = v81;
      v69 = v73 + 8;
      if (v68 != v73 + 8)
      {
        v82 = *v69;
        if (*v69 == v74)
        {
          v83 = v73 + 8;
          v69 = v73 + 16;
          while (1)
          {
            v73[5] |= 0x80000000;
            *(v69 - 7) = v81;
            if (v69 == v68)
            {
              break;
            }

            v73 = v83;
            v83 += 8;
            v84 = *v69;
            v69 += 8;
            v82 = v84;
            if (v84 != v74)
            {
              v73 = v69 - 16;
              v69 -= 8;
              v70 = 1;
              goto LABEL_124;
            }
          }

          v70 = 1;
        }

        else
        {
LABEL_124:
          v85 = v82 - v74;
          if (v85 < v81)
          {
            v73[1] = v85;
          }
        }
      }
    }

    while (v69 != v68);
    if ((v70 & 1) == 0)
    {
      goto LABEL_131;
    }

LABEL_129:
    v86 = std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__mem_fn<BOOL const (TRawSourceInfo<Pointer32>::*)(void)const>>(*(v2 + 208), v68, TRawSourceInfo<Pointer32>::is_marked_for_deletion, 0);
    if (v86 != *(v2 + 216))
    {
      v87 = *(v2 + 216);
      *(v2 + 216) = v86;
    }
  }

LABEL_131:
  v88 = *(v2 + 536);
  v89 = *(v2 + 528);
  if (v89 != v88)
  {
    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,false>(v89, v88, v129, 126 - 2 * __clz((v88 - v89) >> 4), 1, *(v2 + 528));
    v144 = 0uLL;
    v145 = 0;
    std::vector<TRangeValue<Pointer32,char const*>>::reserve(&v144, (*(v2 + 536) - *(v2 + 528)) >> 4);
    v90 = *(v2 + 528);
    v91 = *(v2 + 536);
    if (v90 == v91)
    {
      v91 = *(v2 + 528);
    }

    else
    {
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 1;
      do
      {
        v96 = *(v90 + 1);
        if (v95)
        {
          v95 = 0;
          v94 = *v90;
          v97 = v90[1];
          v90 += 4;
          v92 = v97 + v94;
          v93 = v96;
        }

        else
        {
          v98 = strlen(v93);
          if (!strncmp(v93, v96, v98))
          {
            v95 = 0;
            v102 = *v90;
            v103 = v90[1];
            v90 += 4;
            v92 = v103 + v102;
          }

          else
          {
            v99 = v92 - v94;
            v100 = *(&v144 + 1);
            if (*(&v144 + 1) >= v145)
            {
              v104 = v144;
              v105 = *(&v144 + 1) - v144;
              v106 = (*(&v144 + 1) - v144) >> 4;
              v107 = v106 + 1;
              if ((v106 + 1) >> 60)
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
              }

              v108 = &v145[-v144];
              if (&v145[-v144] >> 3 > v107)
              {
                v107 = v108 >> 3;
              }

              if (v108 >= 0x7FFFFFFFFFFFFFF0)
              {
                v107 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v107)
              {
                std::allocator<TRangeValue<Pointer32,char const*>>::allocate_at_least[abi:ne200100](&v144, v107);
              }

              v109 = (*(&v144 + 1) - v144) >> 4;
              v110 = 16 * v106;
              *v110 = v94;
              *(v110 + 4) = v99;
              *(v110 + 8) = v93;
              v101 = 16 * v106 + 16;
              v111 = (16 * v106 - 16 * v109);
              memcpy(v111, v104, v105);
              v112 = v144;
              *&v144 = v111;
              *(&v144 + 1) = v101;
              v145 = 0;
              if (v112)
              {
                operator delete(v112);
              }
            }

            else
            {
              **(&v144 + 1) = v94;
              *(v100 + 4) = v99;
              v101 = v100 + 16;
              *(v100 + 8) = v93;
            }

            v94 = 0;
            v93 = 0;
            v92 = 0;
            *(&v144 + 1) = v101;
            v91 = *(v2 + 536);
            v95 = 1;
          }
        }
      }

      while (v90 != v91);
      if (v93 && v94 && v92)
      {
        v113 = v92 - v94;
        v114 = *(&v144 + 1);
        if (*(&v144 + 1) >= v145)
        {
          v116 = v144;
          v117 = *(&v144 + 1) - v144;
          v118 = (*(&v144 + 1) - v144) >> 4;
          v119 = v118 + 1;
          if ((v118 + 1) >> 60)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v120 = &v145[-v144];
          if (&v145[-v144] >> 3 > v119)
          {
            v119 = v120 >> 3;
          }

          if (v120 >= 0x7FFFFFFFFFFFFFF0)
          {
            v119 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v119)
          {
            std::allocator<TRangeValue<Pointer32,char const*>>::allocate_at_least[abi:ne200100](&v144, v119);
          }

          v121 = (*(&v144 + 1) - v144) >> 4;
          v122 = 16 * v118;
          *v122 = v94;
          *(v122 + 4) = v113;
          *(v122 + 8) = v93;
          v115 = (16 * v118 + 16);
          v123 = (v122 - 16 * v121);
          memcpy(v123, v116, v117);
          v124 = v144;
          *&v144 = v123;
          *(&v144 + 1) = v115;
          v145 = 0;
          if (v124)
          {
            operator delete(v124);
          }
        }

        else
        {
          **(&v144 + 1) = v94;
          *(v114 + 4) = v113;
          v115 = (v114 + 16);
          *(v114 + 8) = v93;
        }

        *(&v144 + 1) = v115;
        v91 = *(v2 + 536);
        goto LABEL_168;
      }
    }

    v115 = *(&v144 + 1);
LABEL_168:
    v125 = v144;
    v126 = *(v2 + 528);
    if (v115 - v144 < v91 - v126)
    {
      *(v2 + 536) = v126;
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer32,char const*> *,TRangeValue<Pointer32,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer32,char const*>>>>(v129, v125, v115, v2 + 528);
      v125 = v144;
    }

    if (v125)
    {
      *(&v144 + 1) = v125;
      operator delete(v125);
    }
  }

  *&v144 = &v135;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v144);
  *&v144 = &v138;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v144);
  v28 = __src;
LABEL_173:
  if (v28)
  {
    v142 = v28;
    operator delete(v28);
  }
}

void sub_1D974CFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  *(v37 - 208) = a9;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v37 - 208));
  *(v37 - 208) = &a24;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v37 - 208));
  *(v37 - 208) = &a27;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v37 - 208));
  *(v37 - 208) = &a30;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v37 - 208));
  *(v37 - 208) = &a33;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v37 - 208));
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer32>::slide_to_segment_addresses(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  create_segment_relocation_deltas<Pointer32,CSCppSegmentRange,CSCppSegmentRange>(a2, a3, 0, &__p);
  if (a1 + 376 != a2 && *(a1 + 376) == *(a1 + 384))
  {
    std::vector<CSCppSegmentRange>::__assign_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>((a1 + 376), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
  }

  v7 = __p;
  if (__p == v27)
  {
    goto LABEL_22;
  }

  adjustVectorToMatchSegmentDeltas<CSCppSegmentRange,Pointer32>((a1 + 376), &__p);
  if ((a4 & 1) == 0)
  {
    adjustVectorToMatchSegmentDeltas<CSCppSectionRange,Pointer32>((a1 + 160), &__p);
    v9 = *(a1 + 160);
    v10 = *(a1 + 168);
    v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(v9, v10, &v28, v12, 1, v8);
  }

  adjustSymbolsToMatchSegmentDeltas<Pointer32>((a1 + 184), &__p);
  v13 = *(a1 + 184);
  v14 = *(a1 + 192);
  v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 5));
  v16 = v14 == v13 ? 0 : v15;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,false>(v13, v14, &v28, v16, 1);
  adjustVectorToMatchSegmentDeltas<TRawSourceInfo<Pointer32>,Pointer32>((a1 + 208), &__p);
  v18 = *(a1 + 208);
  v19 = *(a1 + 216);
  v20 = 126 - 2 * __clz((v19 - v18) >> 5);
  v21 = v19 == v18 ? 0 : v20;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,false>(v18, v19, &v28, v21, 1, v17);
  v22 = *(a1 + 236);
  v7 = __p;
  if (!v22 || __p >= v27)
  {
LABEL_22:
    if (!v7)
    {
      return;
    }

    goto LABEL_23;
  }

  v23 = *(a1 + 232);
  v24 = v23 + v22;
  v25 = __p;
  while (v23 < *v25 || v24 > v25[1] + *v25)
  {
    v25 += 3;
    if (v25 >= v27)
    {
      goto LABEL_22;
    }
  }

  *(a1 + 232) = v25[2] + v23;
  if (v7)
  {
LABEL_23:
    v27 = v7;
    operator delete(v7);
  }
}

void sub_1D974D294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CSCppSectionRange>::__assign_with_size[abi:ne200100]<CSCppSectionRange*,CSCppSectionRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<CSCppSectionRange>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void std::default_delete<TAddressRelocator<Pointer32>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1DA736760);
  }
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange *>,TAddressRelocator<Pointer32> * create_slide_functor_if_needed<Pointer32>(std::vector<CSCppSegmentRange>,std::vector<CSCppSegmentRange>,CSCppDsymData *)::{lambda(CSCppSegmentRange)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v4 = *(v2 + 16);
      v5 = strncmp(v4, "__OBJC_RO", 9uLL);
      v6 = strncmp(v4, "__OBJC_RW", 9uLL);
      if (!v5 || v6 == 0)
      {
        break;
      }

      v8 = strncmp(v4, "__DWARF", 7uLL);
      v9 = strncmp(v4, "__OBJC_CONST", 0xCuLL);
      if (!v8 || !v9)
      {
        break;
      }

      v2 += 32;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 32; i != a2; i += 32)
      {
        v11 = *(i + 16);
        v12 = strncmp(v11, "__OBJC_RO", 9uLL);
        v13 = strncmp(v11, "__OBJC_RW", 9uLL);
        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = strncmp(v11, "__DWARF", 7uLL);
          v16 = strncmp(v11, "__OBJC_CONST", 0xCuLL);
          if (v15)
          {
            if (v16)
            {
              v17 = *(i + 16);
              *v2 = *i;
              *(v2 + 16) = v17;
              v2 += 32;
            }
          }
        }
      }
    }
  }

  return v2;
}

void create_segment_relocation_deltas<Pointer32,CSCppSegmentRange,CSCppSegmentRange>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, unsigned int **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&v43, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v41 = 0;
    v42 = 0;
    __p = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz((v44 - v43) >> 5);
      if (v44 == v43)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(v43, v44, &v46, v16, 1);
      v17 = 126 - 2 * __clz((v41 - __p) >> 5);
      if (v41 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(__p, v41, &v46, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v43;
    v20 = __p;
    std::vector<TRangeValue<Pointer32,unsigned int>>::reserve(a4, v14 >> 5);
    if (v19 != v44)
    {
      while (1)
      {
        if (v20 == v41)
        {
          goto LABEL_38;
        }

        v21 = v20[3];
        if (!v21)
        {
          v21 = v20[2];
        }

        v22 = *(v19 + 3);
        if (!v22)
        {
          v22 = *(v19 + 2);
        }

        if (!strncmp(v21, v22, 0x10uLL))
        {
          goto LABEL_24;
        }

        if (!CSCppSegmentRange::is_skippable(v19))
        {
          break;
        }

        v19 += 32;
LABEL_21:
        if (v19 == v44)
        {
          goto LABEL_38;
        }
      }

      if (!CSCppSegmentRange::is_skippable(v20))
      {
LABEL_24:
        v23 = *v19;
        v24 = *v20 - *v19;
        v25 = *(v19 + 2);
        v27 = a4[1];
        v26 = a4[2];
        if (v27 >= v26)
        {
          v29 = *a4;
          v30 = v27 - *a4;
          v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2) + 1;
          if (v31 > 0x1555555555555555)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v32 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v29) >> 2);
          if (2 * v32 > v31)
          {
            v31 = 2 * v32;
          }

          if (v32 >= 0xAAAAAAAAAAAAAAALL)
          {
            v33 = 0x1555555555555555;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](a4, v33);
          }

          v34 = (4 * (v30 >> 2));
          *v34 = v23;
          v34[1] = v25;
          v34[2] = v24;
          v28 = v34 + 3;
          v35 = (v34 - v30);
          memcpy(v34 - v30, v29, v30);
          v36 = *a4;
          *a4 = v35;
          a4[1] = v28;
          a4[2] = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v27 = v23;
          v27[1] = v25;
          v28 = v27 + 3;
          v27[2] = v24;
        }

        a4[1] = v28;
        a3 |= v24 != 0;
        v19 += 32;
      }

      v20 += 4;
      goto LABEL_21;
    }

LABEL_38:
    if (a3)
    {
      v37 = a4[1];
      v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v37 - *a4));
      if (v37 == *a4)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,false>(*a4, v37, &v46, v39, 1);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }
  }
}

void sub_1D974D90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TRangeValue<Pointer32,unsigned int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v75 = *(a2 - 3);
        v70 = a2 - 3;
        if (v75 >= *v11)
        {
          return result;
        }

        goto LABEL_76;
      }

      goto LABEL_11;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v67 = v11 + 12;
      v77 = *(v11 + 12);
      v78 = (v11 + 24);
      v79 = *(v11 + 24);
      if (v77 >= *v11)
      {
        if (v79 < v77)
        {
          v84 = *(v11 + 20);
          v85 = *v67;
          *v67 = *v78;
          *(v11 + 20) = *(v11 + 32);
          *v78 = v85;
          *(v11 + 32) = v84;
          if (*(v11 + 12) < *v11)
          {
            v147 = *(v11 + 8);
            v120 = *v11;
            *v11 = *v67;
            *(v11 + 8) = *(v11 + 20);
            *v67 = v120;
            *(v11 + 20) = v147;
          }
        }
      }

      else
      {
        if (v79 < v77)
        {
          v146 = *(v11 + 8);
          v119 = *v11;
          *v11 = *v78;
          *(v11 + 8) = *(v11 + 32);
          *v78 = v119;
          v80 = v146;
          goto LABEL_103;
        }

        v148 = *(v11 + 8);
        v121 = *v11;
        *v11 = *v67;
        *(v11 + 8) = *(v11 + 20);
        *v67 = v121;
        *(v11 + 20) = v148;
        if (v79 < *(v11 + 12))
        {
          v80 = *(v11 + 20);
          v93 = *v67;
          *v67 = *v78;
          *(v11 + 20) = *(v11 + 32);
          *v78 = v93;
LABEL_103:
          *(v11 + 32) = v80;
        }
      }

      if (*v8 >= *v78)
      {
        return result;
      }

      v94 = *(v11 + 32);
      v95 = *v78;
      v96 = *(a2 - 1);
      *v78 = *v8;
      *(v11 + 32) = v96;
      *v8 = v95;
      *(a2 - 1) = v94;
      if (*v78 >= *v67)
      {
        return result;
      }

      v97 = *(v11 + 20);
      v98 = *v67;
      *v67 = *v78;
      *(v11 + 20) = *(v11 + 32);
      *v78 = v98;
      *(v11 + 32) = v97;
LABEL_107:
      if (*(v11 + 12) < *v11)
      {
        v149 = *(v11 + 8);
        v122 = *v11;
        *v11 = *v67;
        *(v11 + 8) = *(v67 + 8);
        *v67 = v122;
        *(v67 + 8) = v149;
      }

      return result;
    }

    if (v15 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,0>(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 3));
    }

LABEL_11:
    if (v14 <= 287)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(v11, a2);
      }

      else if (v11 != a2)
      {
        v86 = (v11 + 12);
        while (v86 != a2)
        {
          v87 = v86;
          v88 = v7[3];
          if (v88 < *v7)
          {
            v89 = *(v7 + 2);
            v90 = v87;
            do
            {
              v91 = v90;
              v92 = *(v90 - 3);
              v90 -= 3;
              *v91 = v92;
              v91[2] = *(v91 - 1);
            }

            while (v88 < *(v91 - 6));
            *v90 = v88;
            *(v90 + 1) = v89;
          }

          v86 = v87 + 3;
          v7 = v87;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,TRangeValue<Pointer32,unsigned int> *>(v11, a2, a2, a3);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 12 * (v15 >> 1));
    v18 = *v8;
    if (v14 >= 0x601)
    {
      v19 = *v17;
      if (*v17 >= *v11)
      {
        if (v18 < v19)
        {
          v125 = v17[2];
          v102 = *v17;
          v23 = *v8;
          v17[2] = *(a2 - 1);
          *v17 = v23;
          *v8 = v102;
          *(a2 - 1) = v125;
          if (*v17 < *v11)
          {
            v126 = *(v11 + 8);
            v103 = *v11;
            v24 = *v17;
            *(v11 + 8) = v17[2];
            *v11 = v24;
            v17[2] = v126;
            *v17 = v103;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          v123 = *(v11 + 8);
          v100 = *v11;
          v20 = *v8;
          *(v11 + 8) = *(a2 - 1);
          *v11 = v20;
          goto LABEL_28;
        }

        v129 = *(v11 + 8);
        v106 = *v11;
        v27 = *v17;
        *(v11 + 8) = v17[2];
        *v11 = v27;
        v17[2] = v129;
        *v17 = v106;
        if (*v8 < *v17)
        {
          v123 = v17[2];
          v100 = *v17;
          v28 = *v8;
          v17[2] = *(a2 - 1);
          *v17 = v28;
LABEL_28:
          *v8 = v100;
          *(a2 - 1) = v123;
        }
      }

      v29 = (v11 + 12);
      v30 = v11 + 12 * v16;
      v33 = *(v30 - 12);
      v31 = v30 - 12;
      v32 = v33;
      v34 = *v9;
      if (v33 >= *(v11 + 12))
      {
        if (v34 < v32)
        {
          v130 = *(v31 + 8);
          v107 = *v31;
          v38 = *v9;
          *(v31 + 8) = *(a2 - 4);
          *v31 = v38;
          *v9 = v107;
          *(a2 - 4) = v130;
          if (*v31 < *v29)
          {
            v39 = *v29;
            v131 = *(v11 + 20);
            v40 = *(v31 + 8);
            *v29 = *v31;
            *(v11 + 20) = v40;
            *(v31 + 8) = v131;
            *v31 = v39;
          }
        }
      }

      else if (v34 >= v32)
      {
        v43 = *v29;
        v133 = *(v11 + 20);
        v44 = *(v31 + 8);
        *v29 = *v31;
        *(v11 + 20) = v44;
        *(v31 + 8) = v133;
        *v31 = v43;
        if (*v9 < v43)
        {
          v134 = *(v31 + 8);
          v109 = *v31;
          v45 = *v9;
          *(v31 + 8) = *(a2 - 4);
          *v31 = v45;
          *v9 = v109;
          *(a2 - 4) = v134;
        }
      }

      else
      {
        v35 = *(v11 + 20);
        v36 = *v29;
        v37 = *(a2 - 4);
        *v29 = *v9;
        *(v11 + 20) = v37;
        *v9 = v36;
        *(a2 - 4) = v35;
      }

      v46 = (v11 + 24);
      v47 = v11 + 12 * v16;
      v50 = *(v47 + 12);
      v48 = v47 + 12;
      v49 = v50;
      v51 = *v10;
      if (v50 >= *(v11 + 24))
      {
        if (v51 < v49)
        {
          v135 = *(v48 + 8);
          v110 = *v48;
          v55 = *v10;
          *(v48 + 8) = *(a2 - 7);
          *v48 = v55;
          *v10 = v110;
          *(a2 - 7) = v135;
          if (*v48 < *v46)
          {
            v56 = *v46;
            v136 = *(v11 + 32);
            v57 = *(v48 + 8);
            *v46 = *v48;
            *(v11 + 32) = v57;
            *(v48 + 8) = v136;
            *v48 = v56;
          }
        }
      }

      else if (v51 >= v49)
      {
        v58 = *v46;
        v137 = *(v11 + 32);
        v59 = *(v48 + 8);
        *v46 = *v48;
        *(v11 + 32) = v59;
        *(v48 + 8) = v137;
        *v48 = v58;
        if (*v10 < v58)
        {
          v138 = *(v48 + 8);
          v111 = *v48;
          v60 = *v10;
          *(v48 + 8) = *(a2 - 7);
          *v48 = v60;
          *v10 = v111;
          *(a2 - 7) = v138;
        }
      }

      else
      {
        v52 = *(v11 + 32);
        v53 = *v46;
        v54 = *(a2 - 7);
        *v46 = *v10;
        *(v11 + 32) = v54;
        *v10 = v53;
        *(a2 - 7) = v52;
      }

      v61 = *v17;
      v62 = *v48;
      if (*v17 >= *v31)
      {
        if (v62 < v61)
        {
          v140 = v17[2];
          v113 = *v17;
          *v17 = *v48;
          v17[2] = *(v48 + 8);
          *(v48 + 8) = v140;
          *v48 = v113;
          if (*v17 < *v31)
          {
            v141 = *(v31 + 8);
            v114 = *v31;
            *v31 = *v17;
            *(v31 + 8) = v17[2];
            v17[2] = v141;
            *v17 = v114;
          }
        }
      }

      else
      {
        if (v62 < v61)
        {
          v139 = *(v31 + 8);
          v112 = *v31;
          *v31 = *v48;
          *(v31 + 8) = *(v48 + 8);
          goto LABEL_56;
        }

        v142 = *(v31 + 8);
        v115 = *v31;
        *v31 = *v17;
        *(v31 + 8) = v17[2];
        v17[2] = v142;
        *v17 = v115;
        if (*v48 < *v17)
        {
          v139 = v17[2];
          v112 = *v17;
          *v17 = *v48;
          v17[2] = *(v48 + 8);
LABEL_56:
          *(v48 + 8) = v139;
          *v48 = v112;
        }
      }

      v143 = *(v11 + 8);
      v116 = *v11;
      v63 = *v17;
      *(v11 + 8) = v17[2];
      *v11 = v63;
      v17[2] = v143;
      *v17 = v116;
      goto LABEL_58;
    }

    v21 = *v11;
    if (*v11 >= *v17)
    {
      if (v18 < v21)
      {
        v127 = *(v11 + 8);
        v104 = *v11;
        v25 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v25;
        *v8 = v104;
        *(a2 - 1) = v127;
        if (*v11 < *v17)
        {
          v128 = v17[2];
          v105 = *v17;
          v26 = *v11;
          v17[2] = *(v11 + 8);
          *v17 = v26;
          *(v11 + 8) = v128;
          *v11 = v105;
        }
      }
    }

    else
    {
      if (v18 < v21)
      {
        v124 = v17[2];
        v101 = *v17;
        v22 = *v8;
        v17[2] = *(a2 - 1);
        *v17 = v22;
LABEL_37:
        *v8 = v101;
        *(a2 - 1) = v124;
        goto LABEL_58;
      }

      v132 = v17[2];
      v108 = *v17;
      v41 = *v11;
      v17[2] = *(v11 + 8);
      *v17 = v41;
      *(v11 + 8) = v132;
      *v11 = v108;
      if (*v8 < *v11)
      {
        v124 = *(v11 + 8);
        v101 = *v11;
        v42 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v42;
        goto LABEL_37;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && *(v11 - 12) >= *v11)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,unsigned int> *,std::__less<void,void> &>(v11, a2);
      v11 = result;
      goto LABEL_65;
    }

    v64 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,unsigned int> *,std::__less<void,void> &>(v11, a2);
    if ((v65 & 1) == 0)
    {
      goto LABEL_63;
    }

    v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(v11, v64);
    v11 = v64 + 12;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(v64 + 12, a2);
    if (result)
    {
      a4 = -v13;
      a2 = v64;
      if (v66)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v66)
    {
LABEL_63:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,false>(v7, v64, a3, -v13, a5 & 1);
      v11 = v64 + 12;
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  v67 = v11 + 12;
  v68 = *(v11 + 12);
  v71 = *(a2 - 3);
  v70 = a2 - 3;
  v69 = v71;
  if (v68 >= *v11)
  {
    if (v69 >= v68)
    {
      return result;
    }

    v81 = *(v11 + 20);
    v82 = *v67;
    v83 = v70[2];
    *v67 = *v70;
    *(v11 + 20) = v83;
    *v70 = v82;
    v70[2] = v81;
    goto LABEL_107;
  }

  if (v69 < v68)
  {
LABEL_76:
    v145 = *(v11 + 8);
    v118 = *v11;
    v76 = *v70;
    *(v11 + 8) = v70[2];
    *v11 = v76;
    *v70 = v118;
    v70[2] = v145;
    return result;
  }

  v144 = *(v11 + 8);
  v117 = *v11;
  *v11 = *v67;
  *(v11 + 8) = *(v11 + 20);
  *v67 = v117;
  *(v11 + 20) = v144;
  if (*v70 < *(v11 + 12))
  {
    v72 = *(v11 + 20);
    v73 = *v67;
    v74 = v70[2];
    *v67 = *v70;
    *(v11 + 20) = v74;
    *v70 = v73;
    v70[2] = v72;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,0>(uint64_t *result, unsigned int *a2, unsigned int *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v10 = a2[2];
      v11 = *a2;
      v12 = a3[2];
      *a2 = *a3;
      a2[2] = v12;
      *a3 = v11;
      a3[2] = v10;
      if (*a2 < *result)
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = a2[2];
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        a2[2] = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = a3[2];
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      a3[2] = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = a2[2];
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    a2[2] = v16;
    if (*a3 < v17)
    {
      v7 = a2[2];
      v8 = *a2;
      v19 = a3[2];
      *a2 = *a3;
      a2[2] = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v20 = a3[2];
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*a3 < *a2)
    {
      v23 = a2[2];
      v24 = *a2;
      v25 = a3[2];
      *a2 = *a3;
      a2[2] = v25;
      *a3 = v24;
      a3[2] = v23;
      if (*a2 < *result)
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = a2[2];
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        a2[2] = v26;
      }
    }
  }

  if (*a5 < *a4)
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*a4 < *a3)
    {
      v32 = a3[2];
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      a3[2] = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*a3 < *a2)
      {
        v35 = a2[2];
        v36 = *a2;
        v37 = a3[2];
        *a2 = *a3;
        a2[2] = v37;
        *a3 = v36;
        a3[2] = v35;
        if (*a2 < *result)
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = a2[2];
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          a2[2] = v38;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 12;
    if (result + 12 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 12);
        if (v6 < *v4)
        {
          v7 = *(v4 + 16);
          v8 = v3;
          while (1)
          {
            v9 = result + v8;
            *(v9 + 12) = *(result + v8);
            *(v9 + 20) = *(result + v8 + 8);
            if (!v8)
            {
              break;
            }

            v8 -= 12;
            if (v6 >= *(v9 - 12))
            {
              v10 = result + v8 + 12;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 4) = v7;
        }

        v2 = v5 + 12;
        v3 += 12;
        v4 = v5;
      }

      while (v5 + 12 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 12))
  {
    v5 = a1 + 3;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 3;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 12);
      a2 -= 12;
    }

    while (v2 < v6);
  }

  v7 = *(a1 + 1);
  while (v3 < a2)
  {
    v14 = v3[2];
    v13 = *v3;
    v8 = *a2;
    v3[2] = *(a2 + 8);
    *v3 = v8;
    *(a2 + 8) = v14;
    *a2 = v13;
    do
    {
      v9 = v3[3];
      v3 += 3;
    }

    while (v2 >= v9);
    do
    {
      v10 = *(a2 - 12);
      a2 -= 12;
    }

    while (v2 < v10);
  }

  if (v3 - 3 != a1)
  {
    v11 = *(v3 - 3);
    a1[2] = *(v3 - 1);
    *a1 = v11;
  }

  *(v3 - 3) = v2;
  *(v3 - 1) = v7;
  return v3;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,unsigned int> *,std::__less<void,void> &>(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  do
  {
    v5 = a1[v2 + 3];
    v2 += 3;
  }

  while (v5 < v3);
  v6 = &a1[v2];
  if (v2 == 3)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 12);
      a2 -= 12;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 12);
      a2 -= 12;
    }

    while (v7 >= v3);
  }

  v9 = &a1[v2];
  if (v6 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      v12 = v9[2];
      v13 = *(v10 + 8);
      *v9 = *v10;
      v9[2] = v13;
      *(v10 + 8) = v12;
      *v10 = v11;
      do
      {
        v14 = v9[3];
        v9 += 3;
      }

      while (v14 < v3);
      do
      {
        v15 = *(v10 - 12);
        v10 -= 12;
      }

      while (v15 >= v3);
    }

    while (v9 < v10);
  }

  if (v9 - 3 != a1)
  {
    v16 = *(v9 - 3);
    a1[2] = *(v9 - 1);
    *a1 = v16;
  }

  *(v9 - 3) = v3;
  *(v9 - 1) = v4;
  return v9 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1 + 12;
      v6 = *(a1 + 12);
      v8 = *(a2 - 3);
      v3 = a2 - 12;
      v7 = v8;
      if (v6 < *a1)
      {
        if (v7 >= v6)
        {
          v37 = *(a1 + 8);
          v38 = *a1;
          *a1 = *v5;
          *(a1 + 8) = *(a1 + 20);
          *v5 = v38;
          *(a1 + 20) = v37;
          if (*v3 < *(a1 + 12))
          {
            v39 = *(a1 + 20);
            v40 = *v5;
            v41 = *(v3 + 8);
            *v5 = *v3;
            *(a1 + 20) = v41;
            *v3 = v40;
            *(v3 + 8) = v39;
          }

          return 1;
        }

LABEL_12:
        v9 = *(a1 + 8);
        v10 = *a1;
        v11 = *(v3 + 8);
        *a1 = *v3;
        *(a1 + 8) = v11;
        *v3 = v10;
        *(v3 + 8) = v9;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v26 = *(a1 + 20);
      v27 = *v5;
      v28 = *(v3 + 8);
      *v5 = *v3;
      *(a1 + 20) = v28;
      *v3 = v27;
      *(v3 + 8) = v26;
LABEL_48:
      if (*(a1 + 12) < *a1)
      {
        v61 = *(a1 + 8);
        v62 = *a1;
        *a1 = *v5;
        *(a1 + 8) = *(v5 + 8);
        *v5 = v62;
        *(v5 + 8) = v61;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,0>(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
      return 1;
    }

    v5 = a1 + 12;
    v19 = *(a1 + 12);
    v20 = (a1 + 24);
    v21 = *(a1 + 24);
    v22 = a2 - 3;
    v23 = *a1;
    if (v19 >= *a1)
    {
      if (v21 < v19)
      {
        v33 = *(a1 + 20);
        v34 = *v5;
        *v5 = *v20;
        *(a1 + 20) = *(a1 + 32);
        *v20 = v34;
        *(a1 + 32) = v33;
        if (*v5 < v23)
        {
          v35 = *(a1 + 8);
          v36 = *a1;
          *a1 = *v5;
          *(a1 + 8) = *(a1 + 20);
          *v5 = v36;
          *(a1 + 20) = v35;
        }
      }

      goto LABEL_45;
    }

    if (v21 >= v19)
    {
      v54 = *(a1 + 8);
      v55 = *a1;
      *a1 = *v5;
      *(a1 + 8) = *(a1 + 20);
      *v5 = v55;
      *(a1 + 20) = v54;
      if (v21 >= *(a1 + 12))
      {
        goto LABEL_45;
      }

      v24 = *(a1 + 20);
      v25 = *v5;
      *v5 = *v20;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v24 = *(a1 + 8);
      v25 = *a1;
      *a1 = *v20;
      *(a1 + 8) = *(a1 + 32);
    }

    *v20 = v25;
    *(a1 + 32) = v24;
LABEL_45:
    if (*v22 >= *v20)
    {
      return 1;
    }

    v56 = *(a1 + 32);
    v57 = *v20;
    v58 = *(a2 - 1);
    *v20 = *v22;
    *(a1 + 32) = v58;
    *v22 = v57;
    *(a2 - 1) = v56;
    if (*v20 >= *v5)
    {
      return 1;
    }

    v59 = *(a1 + 20);
    v60 = *v5;
    *v5 = *v20;
    *(a1 + 20) = *(a1 + 32);
    *v20 = v60;
    *(a1 + 32) = v59;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 3);
    v3 = a2 - 12;
    if (v4 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = (a1 + 24);
  v13 = *(a1 + 24);
  v14 = (a1 + 12);
  v15 = *(a1 + 12);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v29 = *(a1 + 20);
      v30 = *v14;
      *v14 = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v30;
      *(a1 + 32) = v29;
      if (*v14 < v16)
      {
        v31 = *(a1 + 8);
        v32 = *a1;
        *a1 = *v14;
        *(a1 + 8) = *(a1 + 20);
        *v14 = v32;
        *(a1 + 20) = v31;
      }
    }
  }

  else if (v13 >= v15)
  {
    v42 = *(a1 + 8);
    v43 = *a1;
    *a1 = *v14;
    *(a1 + 8) = *(a1 + 20);
    *v14 = v43;
    *(a1 + 20) = v42;
    if (v13 < *(a1 + 12))
    {
      v44 = *(a1 + 20);
      v45 = *v14;
      *v14 = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v45;
      *(a1 + 32) = v44;
    }
  }

  else
  {
    v17 = *(a1 + 8);
    v18 = *a1;
    *a1 = *v12;
    *(a1 + 8) = *(a1 + 32);
    *v12 = v18;
    *(a1 + 32) = v17;
  }

  v46 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v47 = 0;
  v48 = 0;
  while (1)
  {
    v49 = *v46;
    if (*v46 < *v12)
    {
      v50 = *(v46 + 4);
      v51 = v47;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 36) = *(a1 + v51 + 24);
        *(v52 + 44) = *(a1 + v51 + 32);
        if (v51 == -24)
        {
          break;
        }

        v51 -= 12;
        if (v49 >= *(v52 + 12))
        {
          v53 = a1 + v51 + 36;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v49;
      *(v53 + 4) = v50;
      if (++v48 == 8)
      {
        return (v46 + 12) == a2;
      }
    }

    v12 = v46;
    v47 += 12;
    v46 = (v46 + 12);
    if (v46 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *,TRangeValue<Pointer32,unsigned int> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 13)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = a1[2];
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          a1[2] = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 13)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      do
      {
        v18 = 0;
        v29 = *a1;
        v30 = a1[2];
        v19 = a1;
        do
        {
          v20 = &v19[3 * v18];
          v21 = v20 + 3;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = v20[6];
            v23 = v20 + 6;
            if (*(v23 - 3) >= v24)
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          v25 = *v21;
          v19[2] = v21[2];
          *v19 = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 -= 3;
        if (v21 == v6)
        {
          v21[2] = v30;
          *v21 = v29;
        }

        else
        {
          v26 = *v6;
          v21[2] = v6[2];
          *v21 = v26;
          *v6 = v29;
          v6[2] = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(a1, (v21 + 3), a4, 0xAAAAAAAAAAAAAAABLL * (v21 + 3 - a1));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v6 = (result + 12 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 2) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = *v6;
        v8 = v6[3];
        if (*v6 <= v8)
        {
          v7 = v6[3];
        }

        if (*v6 < v8)
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
        }
      }

      v9 = *a4;
      if (v7 >= *a4)
      {
        v10 = *(a4 + 1);
        do
        {
          v11 = a4;
          a4 = v6;
          v12 = *v6;
          v11[2] = a4[2];
          *v11 = v12;
          if (v4 < v5)
          {
            break;
          }

          v13 = (2 * v5) | 1;
          v6 = (result + 12 * v13);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v14 = *v6;
            v5 = v13;
          }

          else
          {
            v14 = *v6;
            v15 = v6[3];
            if (*v6 <= v15)
            {
              v14 = v6[3];
            }

            if (*v6 >= v15)
            {
              v5 = v13;
            }

            else
            {
              v6 += 3;
            }
          }
        }

        while (v14 >= v9);
        *a4 = v9;
        *(a4 + 1) = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 12 * v4);
    v6 = (a2 - 12);
    v7 = *(a2 - 12);
    if (*v5 < v7)
    {
      v8 = *(a2 - 8);
      do
      {
        v9 = v6;
        v6 = v5;
        v10 = *v5;
        *(v9 + 2) = *(v6 + 2);
        *v9 = v10;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 12 * v4);
      }

      while (*v5 < v7);
      *v6 = v7;
      *(v6 + 4) = v8;
    }
  }

  return result;
}

uint64_t std::vector<TRangeValue<Pointer32,unsigned int>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer32,unsigned int>*,TRangeValue<Pointer32,unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRangeValue<Pointer32,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D974F2D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TRangeValue<Pointer32,unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

unsigned int *TDwarfInfoStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf32_compile_unit(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 + 6 > v2)
  {
    goto LABEL_29;
  }

  result = (*a1 + v1);
  v8 = result[1];
  if (v8 - 6 < 0xFFFFFFFC)
  {
    return 0;
  }

  v9 = *result;
  if (v9 == -1)
  {
    return 0;
  }

  v10 = 11;
  if (v8 >= 5u)
  {
    v10 = 12;
  }

  if (v9 + 4 < v10)
  {
    return 0;
  }

  v11 = v1 + v9 + 4;
  if (v11 <= v2 && v11 > v1)
  {
    v13 = 7;
    if (v8 < 5u)
    {
      v13 = 10;
    }

    if (*(result + v13) != 4)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v16 = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "Compile unit with bad address_size\n";
      v5 = &v16;
      goto LABEL_4;
    }

    if (v8 < 5u || (v8 & 0xFF0000) == 0x10000)
    {
      *(a1 + 8) = v11;
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "Unsupported compile unit type\n";
      v5 = &v15;
      goto LABEL_4;
    }
  }

  else
  {
LABEL_29:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "Out of bounds compile unit\n";
      v5 = &v14;
LABEL_4:
      _os_log_impl(&dword_1D96E9000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  return 0;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(uint64_t result, unsigned int a2)
{
  if (*(result + 16) < a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Attempt to set cursor outside bounds", 36);
    std::ostringstream::str[abi:ne200100](v5, &v4);
    Exception::Exception(v3, &v4);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v3);
  }

  *(result + 8) = a2;
  return result;
}

void sub_1D974F560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void parse_dies<Dwarf<Dwarf32,Pointer32,LittleEndian>,TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>(int a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t (***a8)(void, std::vector<std::string>::pointer), void *a9, uint64_t a10, void *a11)
{
  v12 = a6;
  v13 = a4;
  v66 = *(a2 + 48);
  v67 = *(a2 + 40);
  v16 = *(a2 + 80);
  v70 = *(a2 + 72);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v70[7];
  v90 = 0;
  v91 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  if (*(a2 + 16) != *(a2 + 8))
  {
    while (1)
    {
      v18 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a2);
      if (!v18)
      {
        v23 = v87;
        if (v86 != v87)
        {
          v87 -= 8;
          if (v86 != v23 - 8)
          {
            v24 = *(v23 - 2);
            if (v24)
            {
              v25 = v23 - 24;
              do
              {
                if (*(v24 + 80) != 1)
                {
                  break;
                }

                v87 = v25 + 8;
                if (v25 + 8 == v86)
                {
                  break;
                }

                v26 = *v25;
                v25 -= 8;
                v24 = v26;
              }

              while (v26);
            }
          }
        }

        goto LABEL_93;
      }

      v19 = v70[1];
      if (v18 >= ((v70[2] - v19) >> 3) || (v20 = *(v19 + 8 * v18)) == 0)
      {
LABEL_94:
        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        break;
      }

      v21 = *(v20 + 12);
      if ((*(*v20 + 24))(v20) == 1)
      {
        *(v17 + 68) = 0;
        *(v17 + 104) = *(v17 + 96);
        *(v17 + 8) = -1;
        (*(*v20 + 16))(v20, v13, *(a2 + 24));
        LODWORD(v75) = 0;
          ;
        }

        if ((*(v17 + 68) & 0xC) == 0 || (*(v17 + 68) & 1) == 0)
        {
          if (v21)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v84 = 0;
          v85 = 0;
          v33 = resolve_parsed_data_names<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v17, &v85, &v84);
          v83 = v33;
          if ((*(v17 + 68) & 2) != 0)
          {
            if ((*(v17 + 68) & 0x8000) != 0)
            {
              v34 = *v17;
              v35 = *(v17 + 72) + *v17;
            }

            else
            {
              v34 = *v17;
              v35 = *(v17 + 4);
            }

            v36 = v35 - v34;
            if (v36)
            {
              v62 = v36;
              v83 = v33 | 0x100;
LABEL_48:
              v37 = (*v17 + a1);
              if (a7)
              {
                LODWORD(v37) = TAddressRelocator<Pointer32>::relocate(a7, v37);
              }

              v82 = 0uLL;
              if (*(v20 + 8) == 29)
              {
                v38 = v37;
                has_inlined_info = TDwarfAbbrevData<Dwarf<Dwarf32,Pointer32,LittleEndian>>::has_inlined_info(v17, *(a2 + 24));
                v40 = 0;
                LODWORD(v37) = v38;
                if (has_inlined_info && (v12 & 1) == 0)
                {
                  v41 = *(a2 + 24);
                  v42 = *(v17 + 68);
                  if (v41 < 5)
                  {
                    if ((v42 & 0x400) != 0 && *(v17 + 56))
                    {
                      goto LABEL_66;
                    }

LABEL_67:
                    v47 = 0;
                  }

                  else
                  {
                    if ((v42 & 0x400) == 0)
                    {
                      goto LABEL_67;
                    }

LABEL_66:
                    v47 = path_from_file_index<Pointer32>(&v89, *(v17 + 56), *(a2 + 8), a5, v41);
                    v42 = *(v17 + 68);
                    LODWORD(v37) = v38;
                  }

                  *&v82 = v47;
                  *(&v82 + 1) = vbic_s8(*(v17 + 60), vceqz_s32(vand_s8(vdup_n_s32(v42), 0x100000000800)));
                  v40 = 1;
                }
              }

              else
              {
                v40 = 0;
              }

              v49 = *(v17 + 96);
              v48 = *(v17 + 104);
              if (v49 == v48)
              {
                v61 = v83;
                v75 = __PAIR64__(v62, v37);
                v76 = 0;
                v77 = v85;
                v78 = v84;
                v81 = 0;
                v79 = 0u;
                memset(v80, 0, 25);
                if (v40)
                {
                  v79 = v82;
                  v61 = v83 | 0x80000000;
                }

                HIDWORD(v76) = v61;
                record_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>,std::deque<TRawSymbol<Pointer32>>>(&v75, 1, v20, a9, &v86);
                v12 = a6;
                v13 = a4;
                v60 = v80;
              }

              else
              {
                v63 = v16;
                v75 = 0uLL;
                v76 = 0;
                if (v40)
                {
                  v50 = &v82;
                }

                else
                {
                  v50 = 0;
                }

                do
                {
                  v51 = (*v49 + a1);
                  if (a7)
                  {
                    LODWORD(v51) = TAddressRelocator<Pointer32>::relocate(a7, v51);
                  }

                  v74 = v51;
                  v53 = *v49;
                  v52 = v49[1];
                  v54 = v52 - *v49;
                  v73 = v54;
                  if (v52 != v53)
                  {
                    v92[0] = v50;
                    v55 = *(&v75 + 1);
                    if (*(&v75 + 1) >= v76)
                    {
                      v59 = std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<TRawSymbol<Pointer32>::dwarf_ranges_tag,unsigned int &,unsigned int &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo *>(&v75, &v72, &v74, &v73, &v85, &v84, &v83, v92);
                    }

                    else
                    {
                      v57 = v84;
                      v56 = v85;
                      v58 = v83;
                      **(&v75 + 1) = v51;
                      *(v55 + 4) = v54;
                      *(v55 + 8) = 0;
                      *(v55 + 16) = 0;
                      *(v55 + 24) = v56;
                      *(v55 + 32) = v57;
                      *(v55 + 40) = 0u;
                      *(v55 + 88) = 0;
                      *(v55 + 56) = 0u;
                      *(v55 + 65) = 0u;
                      if (v40)
                      {
                        *(v55 + 40) = v82;
                        v58 |= 0x80000000;
                      }

                      *(v55 + 20) = v58;
                      *(v55 + 80) = 1;
                      v59 = v55 + 96;
                    }

                    *(&v75 + 1) = v59;
                  }

                  v49 += 2;
                }

                while (v49 != v48);
                record_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>,std::deque<TRawSymbol<Pointer32>>>(v75, 0xAAAAAAAAAAAAAAABLL * ((*(&v75 + 1) - v75) >> 5), v20, a9, &v86);
                v16 = v63;
                v12 = a6;
                v13 = a4;
                if (v21)
                {
                  v92[0] = 0;
                  std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v86, v92);
                }

                v60 = &v75;
              }

              v92[0] = v60;
              std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v92);
              goto LABEL_93;
            }
          }

          else if (*(v17 + 96) != *(v17 + 104))
          {
            v62 = 0;
            goto LABEL_48;
          }

          if (v21)
          {
LABEL_57:
            *&v75 = 0;
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v86, &v75);
          }
        }
      }

      else
      {
        if ((*(*v20 + 24))(v20) == 2)
        {
          *(v17 + 68) = 0;
          *(v17 + 104) = *(v17 + 96);
          *(v17 + 8) = -1;
          *(v17 + 84) = 0;
          *(v17 + 88) = 0;
          (*(*v20 + 16))(v20, v13, *(a2 + 24));
          TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_compilation_unit_pc_ranges(v20);
          if (v21)
          {
            *&v75 = 0;
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v86, &v75);
          }

          if ((v12 & 1) == 0)
          {
            v90 = v89;
            v27 = *v67;
            v76 = *(v67 + 2);
            v75 = v27;
            v28 = "";
            if ((*(v17 + 68) & 0x20) != 0)
            {
              v28 = *(v17 + 32);
            }

            parse_line_numbers<Dwarf<Dwarf32,Pointer32,LittleEndian>>(&v75, v66, *(v17 + 44), v17 + 88, v28, a1, a5, a7, a8, &v89, a10);
            if (*(v17 + 120))
            {
              *&v75 = *(v17 + 120);
              v29 = *(v17 + 96);
              v30 = *(v17 + 104);
              if (v29 == v30)
              {
                v43 = *(v17 + 68);
                if ((~v43 & 3) == 0)
                {
                  v44 = (*v17 + a1);
                  if (a7)
                  {
                    LODWORD(v44) = TAddressRelocator<Pointer32>::relocate(a7, v44);
                    LOWORD(v43) = *(v17 + 68);
                  }

                  LODWORD(v82) = v44;
                  if ((v43 & 0x8000) != 0)
                  {
                    v45 = *v17;
                    v46 = *(v17 + 72) + *v17;
                  }

                  else
                  {
                    v45 = *v17;
                    v46 = *(v17 + 4);
                  }

                  LODWORD(v92[0]) = v46 - v45;
                  std::deque<TRangeValue<Pointer32,char const*>>::emplace_back<unsigned int &,unsigned int &,char const*&>(a11, &v82, v92, &v75);
                }
              }

              else
              {
                do
                {
                  v31 = (*v29 + a1);
                  if (a7)
                  {
                    LODWORD(v31) = TAddressRelocator<Pointer32>::relocate(a7, v31);
                  }

                  LODWORD(v82) = v31;
                  LODWORD(v92[0]) = v29[1] - *v29;
                  std::deque<TRangeValue<Pointer32,char const*>>::emplace_back<unsigned int &,unsigned int &,char const*&>(a11, &v82, v92, &v75);
                  v29 += 2;
                }

                while (v29 != v30);
              }

              v12 = a6;
              v13 = a4;
            }
          }

          goto LABEL_93;
        }

        (*(*v20 + 16))(v20, v13, *(a2 + 24));
        if (v21)
        {
          goto LABEL_57;
        }
      }

LABEL_93:
      if (*(a2 + 16) == *(a2 + 8))
      {
        goto LABEL_94;
      }
    }
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1D974FE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v30 = v27[2];
  if (v30)
  {
    v27[3] = v30;
    operator delete(v30);
  }

  v31 = v27[5];
  if (v31)
  {
    v27[6] = v31;
    operator delete(v31);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TRawSourceInfo<Pointer32>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::allocator<TRawSourceInfo<Pointer32>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 4);
  if (v1 >= v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Cursor overflow, attempt to read ULEB", 37);
    std::ostringstream::str[abi:ne200100](v15, &v14);
    Exception::Exception(v13, &v14);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v13);
  }

  v3 = *a1;
  v4 = (*a1 + v1);
  v6 = *v4;
  v5 = v4 + 1;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = v3 + v2;
    v7 &= 0x7Fu;
    v9 = 7;
    do
    {
      if (v5 >= v8)
      {
        break;
      }

      v10 = *v5++;
      v7 |= (v10 & 0x7F) << v9;
      v9 += 7;
    }

    while (v10 < 0);
  }

  *(a1 + 2) = v5 - v3;
  return v7;
}

void sub_1D9750334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfAbbrevStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::abbrev(uint64_t *a1)
{
  v2 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
  __src = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    v3 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
    v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    if (!v6)
    {
      v8 = v20;
      if (v20 >= v21)
      {
        v10 = __src;
        v11 = v20 - __src;
        v12 = (v20 - __src) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v21 - __src;
        if ((v21 - __src) >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          std::allocator<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::allocate_at_least[abi:ne200100](&__src, v13);
        }

        v15 = (v20 - __src) >> 2;
        v16 = (4 * v12);
        *v16 = v3;
        v16[1] = v4;
        v9 = 4 * v12 + 4;
        v17 = &v16[-2 * v15];
        memcpy(v17, v10, v11);
        v18 = __src;
        __src = v17;
        v20 = v9;
        v21 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v20 = v3;
        *(v8 + 1) = v4;
        v9 = (v8 + 4);
      }

      v20 = v9;
    }

    if (v5 == 33)
    {
      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
    }
  }

  while ((v7 & 1) != 0);
  if (v2 > 28)
  {
    if (v2 != 46 && v2 != 29)
    {
      goto LABEL_32;
    }
  }

  else if (v2 != 3)
  {
    if (v2 == 17 && has_minimum_source_info_attributes(&__src))
    {
      operator new();
    }

LABEL_32:
    operator new();
  }

  operator new();
}

void sub_1D97505C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1DA736760](v11, 0x10A1C400922EF30);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CSCppDwarfAbbrevTable::set_abbrev_at(CSCppDwarfAbbrevTable *this, unsigned int a2, CSCppDwarfAbbrev *a3)
{
  v5 = a2;
  v7 = *(this + 1);
  v8 = *(this + 2);
  v6 = (this + 8);
  v9 = (v8 - v7) >> 3;
  if (v9 <= a2)
  {
    std::vector<CSCppDwarfAbbrev *>::resize(v6, a2 + 1);
    v7 = *(this + 1);
    v9 = (*(this + 2) - v7) >> 3;
  }

  if (v9 <= v5)
  {
    std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v7 + 8 * v5) = a3;
}

void std::__shared_ptr_emplace<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5505770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

void TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>::~TDwarfAbbrevTable(CSCppDwarfAbbrevTable *a1)
{
  CSCppDwarfAbbrevTable::~CSCppDwarfAbbrevTable(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 >= *(a1 + 4))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint8", 38);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *a1;
  *(a1 + 2) = v1 + 1;
  return *(v2 + v1);
}

void sub_1D975081C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfSymbolAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::TDwarfSymbolAbbrev(uint64_t result, int a2, char a3, void *a4, uint64_t a5)
{
  v5 = result;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = *a4;
  *a4 = 0;
  v6 = *(result + 24);
  *(result + 24) = a4[1];
  a4[1] = v6;
  v7 = *(result + 32);
  *(result + 32) = a4[2];
  a4[2] = v7;
  *result = &unk_1F55057F8;
  *(result + 64) = a5;
  *(result + 72) = 0;
  v8 = *(result + 16);
  if (v8 != *(result + 24))
  {
    v9 = *v8;
    if (v9 <= 0x56)
    {
      if (*v8 > 0x30u)
      {
        switch(v9)
        {
          case '1':
            *(result + 72) |= 0x200u;
            v19 = *(result + 64);
            read_action_for_ref_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
          case 'G':
            *(result + 72) |= 0x10u;
            v22 = *(result + 64);
            read_action_for_ref_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
          case 'U':
            operator new();
        }
      }

      else
      {
        switch(v9)
        {
          case 3u:
            *(result + 72) |= 8u;
            v18 = *(result + 64);
            read_action_for_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
          case 0x11u:
            *(result + 72) |= 1u;
            v20 = v8[1];
            if ((v20 - 41) >= 4 && v20 != 27)
            {
              if (v20 == 1)
              {
                operator new();
              }

              skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v20);
            }

            operator new();
          case 0x12u:
            v12 = *(result + 72);
            *(result + 72) = v12 | 2;
            v13 = v8[1];
            if ((v13 - 41) >= 4 && v13 != 27)
            {
              if (v13 == 1)
              {
                operator new();
              }

              *(v5 + 72) = v12 | 0x8002;
              v23 = *(v5 + 64);
              read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v13);
            }

            operator new();
        }
      }
    }

    else if (*v8 <= 0x6Du)
    {
      switch(v9)
      {
        case 'W':
          *(result + 72) |= 0x1000u;
          v16 = *(result + 64);
          read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
        case 'X':
          *(result + 72) |= 0x400u;
          v17 = *(result + 64);
          read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
        case 'Y':
          *(result + 72) |= 0x800u;
          v14 = *(result + 64);
          read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
      }
    }

    else if (*v8 > 0x3FE2u)
    {
      if (v9 == 16355)
      {
        *(result + 72) |= 0x80u;
        operator new();
      }

      if (v9 == 16359)
      {
        v15 = *(result + 64);
        read_action_for_flag_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
      }
    }

    else if (v9 == 110 || v9 == 8199)
    {
      *(result + 72) |= 4u;
      v11 = *(result + 64);
      read_action_for_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
    }

    skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8[1]);
  }

  return result;
}

void skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  switch(a1)
  {
    case 1:
    case 6:
    case 14:
    case 19:
    case 23:
    case 28:
    case 29:
    case 31:
    case 40:
    case 44:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
    case 18:
    case 38:
    case 42:
      operator new();
    case 7:
    case 20:
    case 32:
    case 36:
      operator new();
    case 8:
      operator new();
    case 9:
    case 24:
      operator new();
    case 10:
      operator new();
    case 11:
    case 12:
    case 17:
    case 37:
    case 41:
      operator new();
    case 13:
    case 15:
    case 21:
    case 26:
    case 27:
    case 34:
    case 35:
      operator new();
    case 16:
      operator new();
    case 22:
      std::ostringstream::basic_ostringstream[abi:ne200100](v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DW_FORM_indirect not handled yet... ", 36);
      std::ostringstream::str[abi:ne200100](v7, &v6);
      Exception::Exception(v5, &v6);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v5);
    case 25:
    case 33:
      operator new();
    case 30:
      operator new();
    case 39:
    case 43:
      operator new();
    default:
      std::ostringstream::basic_ostringstream[abi:ne200100](v7);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unhandled dwarf attribute ", 26);
      MEMORY[0x1DA7365E0](v3, a1);
      std::ostringstream::str[abi:ne200100](v7, &v6);
      Exception::Exception(v5, &v6);
      v4 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v4, v5);
  }
}

void sub_1D9751294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 <= 10)
  {
    switch(a1)
    {
      case 5:
        operator new();
      case 6:
        operator new();
      case 7:
        operator new();
    }
  }

  else if (a1 > 14)
  {
    if (a1 == 15)
    {
      operator new();
    }

    if (a1 == 23)
    {
      operator new();
    }
  }

  else
  {
    if (a1 == 11)
    {
      operator new();
    }

    if (a1 == 13)
    {
      operator new();
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v6);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled form in read data binding ", 36);
  MEMORY[0x1DA7365E0](v2, a1);
  std::ostringstream::str[abi:ne200100](v6, &v5);
  Exception::Exception(v4, &v5);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v4);
}

void sub_1D9751564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 <= 36)
  {
    switch(a1)
    {
      case 8:
        operator new();
      case 0xE:
        operator new();
      case 0x1A:
LABEL_3:
        operator new();
    }
  }

  else if ((a1 - 37) < 4)
  {
    goto LABEL_3;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v6);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled form in read string binding ", 38);
  MEMORY[0x1DA7365E0](v2, a1);
  std::ostringstream::str[abi:ne200100](v6, &v5);
  Exception::Exception(v4, &v5);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v4);
}

void sub_1D9751754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_ref_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 > 18)
  {
    switch(a1)
    {
      case 0x13:
        operator new();
      case 0x14:
        operator new();
      case 0x15:
        operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 0x10:
        operator new();
      case 0x11:
        operator new();
      case 0x12:
        operator new();
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v6);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled form in read ref binding ", 35);
  MEMORY[0x1DA7365E0](v2, a1);
  std::ostringstream::str[abi:ne200100](v6, &v5);
  Exception::Exception(v4, &v5);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v4);
}

void sub_1D97519DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_flag_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 != 25)
  {
    if (a1 == 12)
    {
      operator new();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v6);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled form in read flag binding ", 36);
    MEMORY[0x1DA7365E0](v2, a1);
    std::ostringstream::str[abi:ne200100](v6, &v5);
    Exception::Exception(v4, &v5);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v4);
  }

  operator new();
}

void sub_1D9751B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfSymbolAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::~TDwarfSymbolAbbrev(CSCppDwarfAbbrev *a1)
{
  CSCppDwarfAbbrev::~CSCppDwarfAbbrev(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TDwarfReadDW_FORM_AddrAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 + 4 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read dwarf_address", 46);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 4;
  return v2;
}

void sub_1D9751D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_AddrxAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) == 0)
  {
    if (!*(*(a1 + 32) + 84))
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3);
      *(a1 + 40) = result;
      return result;
    }

    v8 = 0;
    *v4 = v6 | v5;
    v9 = v3[8];
    v10 = *(v9 + 16);
    v13 = *v9;
    v14 = v10;
    v11 = *(a1 + 48);
    if (v11 <= 41)
    {
      if (v11 == 27)
      {
        v8 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3);
        goto LABEL_18;
      }

      if (v11 == 41)
      {
        v12 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(v3);
        goto LABEL_17;
      }
    }

    else
    {
      switch(v11)
      {
        case '*':
          v12 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(v3);
          goto LABEL_17;
        case '+':
          v12 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::threeBytes(v3);
          goto LABEL_17;
        case ',':
          v12 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(v3);
LABEL_17:
          v8 = v12;
          break;
      }
    }

LABEL_18:
    result = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::address_at_base_and_index(&v13, *(*(a1 + 32) + 84), v8);
    **(a1 + 8) = result;
    return result;
  }

  return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(v3);
}

uint64_t TDwarfReadDW_FORM_AddrxAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action_stage2(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = *v4;
  v6 = *(result + 24);
  if ((v6 & v5) == 0)
  {
    v13 = v2;
    v14 = v3;
    v7 = result;
    v8 = *a2;
    *v4 = v6 | v5;
    v9 = *(v8 + 64);
    v10 = *(v9 + 2);
    v11 = *v9;
    v12 = v10;
    result = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::address_at_base_and_index(&v11, *(*(result + 32) + 84), *(result + 40));
    **(v7 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(uint64_t result)
{
  v1 = *(result + 8);
  LODWORD(v2) = *(result + 16);
  if (v1 <= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v1;
  }

  do
  {
    if (v2 == v1)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Cursor overflow, attempt to skip ULEB", 37);
      std::ostringstream::str[abi:ne200100](v8, &v7);
      Exception::Exception(v6, &v7);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v6);
    }

    v3 = v1 + 1;
    v4 = *(*result + v1++);
  }

  while (v4 < 0);
  *(result + 8) = v3;
  return result;
}

void sub_1D9751FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::address_at_base_and_index(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::length_from_header(a1, a2);
  if (a3 >> 30)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Base relative index overflow in TDwarfAddressTableStream", 56);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v12);
  }

  v7 = 4 * a3;
  if (4 * a3 > v6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Base relative index not in bounds of current address table in TDwarfAddressTableStream", 86);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    v10 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v10, v12);
  }

  if (*(a1 + 16) < v7 + a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Offset not in bounds of TDwarfAddressTableStream", 48);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    v11 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v11, v12);
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(a1, v7 + a2);

  return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(a1);
}

void sub_1D9752200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 + 2 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint16", 39);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 2;
  return v2;
}

void sub_1D9752338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::threeBytes(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 + 3 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read three bytes", 44);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 3;
  return v2 & 0xFFFFFF;
}

void sub_1D9752448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 + 4 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint32", 39);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 4;
  return v2;
}

void sub_1D9752558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::length_from_header(uint64_t a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Overflow calculating start of header in TDwarfAddressTableStream", 64);
    std::ostringstream::str[abi:ne200100](v9, &v8);
    Exception::Exception(v7, &v8);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v7);
  }

  v3 = a2 - 8;
  if (*(a1 + 16) < v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid offset to address table header in TDwarfAddressTableStream", 66);
    std::ostringstream::str[abi:ne200100](v9, &v8);
    Exception::Exception(v7, &v8);
    v6 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v6, v7);
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(a1, v3);

  return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(a1);
}

void sub_1D97526E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_FORM_block1(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  if ((v1 - v2) < 0x100)
  {
    if (v1 == v2 || v1 - v2 < (*(*result + v2) + 1))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block1", 44);
      std::ostringstream::str[abi:ne200100](v7, &v6);
      Exception::Exception(v5, &v6);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v5);
    }

    v3 = (*(*result + v2) + 1);
  }

  else
  {
    v3 = *(*result + v2) + 1;
  }

  *(result + 8) = v3 + v2;
  return result;
}

void sub_1D97528B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_FORM_block2(uint64_t a1)
{
  result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(a1);
  v3 = *(a1 + 8) + result;
  if (v3 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block2", 44);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  *(a1 + 8) = v3;
  return result;
}

void sub_1D97529D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_FORM_block4(uint64_t a1)
{
  result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(a1);
  v3 = *(a1 + 8) + result;
  if (v3 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block4", 44);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  *(a1 + 8) = v3;
  return result;
}

void sub_1D9752B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

size_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_FORM_string(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  result = strlen((*a1 + v2));
  if (result + 1 > v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Cursor overflow, attempt to skip FORM_string", 44);
    std::ostringstream::str[abi:ne200100](v8, &v7);
    Exception::Exception(v6, &v7);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v6);
  }

  *(a1 + 8) = result + 1 + v2;
  return result;
}

void sub_1D9752C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_FORM_block(uint64_t a1)
{
  result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
  v3 = *(a1 + 8) + result;
  if (v3 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block", 43);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  *(a1 + 8) = v3;
  return result;
}

void sub_1D9752D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_Data1ToOffsetAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data2AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 2;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data4AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data8AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 8;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint64(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 + 8 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint64", 39);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 8;
  return v2;
}

void sub_1D9753060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_Sec_OffsetAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 + 4 > *(a1 + 16))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read dwarf_offset", 45);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 4;
  return v2;
}

void sub_1D97531E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_UdataAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_SdataAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::LEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::LEB(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 8);
  do
  {
    if (*(a1 + 16) == v3)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Cursor overflow, attempt to read LEB", 36);
      std::ostringstream::str[abi:ne200100](v12, &v11);
      Exception::Exception(v10, &v11);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v10);
    }

    v4 = *(*a1 + v3);
    v5 = v3 + 1;
    v2 |= (v4 & 0x7F) << v1;
    v1 += 7;
    ++v3;
  }

  while ((v4 & 0x80) != 0);
  v6 = v4 < 0x40 || v1 > 0x3F;
  v7 = -1 << v1;
  if (v6)
  {
    v7 = 0;
  }

  *(a1 + 8) = v5;
  return v2 | v7;
}

void sub_1D9753428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 == 5)
  {
    v3 = *MEMORY[0x1E69E9840];

    TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::extract_dwarf5_ranges(a1, a2, 5);
  }

  else if (a3 > 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = a3;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Unexpected DWARF version parsing DW_AT_ranges: %d\n", v7, 8u);
    }

    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::extract_dwarf4_ranges(a1, a2, a3);
  }
}

void TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::extract_dwarf5_ranges(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if (!v3)
  {
    return;
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(*(a2 + 48), 0);
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(v3);
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(v3);
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(v3);
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(v3);
  v7 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(v3);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if (v7)
  {
    v8 = v7;
    do
    {
      LODWORD(v40[0]) = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(v3);
      std::vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::push_back[abi:ne200100](&v43, v40);
      --v8;
    }

    while (v8);
  }

  v9 = *a2;
  if (!v9)
  {
    goto LABEL_39;
  }

  if (*(a1 + 16) == 35)
  {
    v10 = *(a1 + 8);
    v11 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v9);
    if (v11 >= v44 - v43)
    {
      std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *(v10 + 92) + v43[v11];
  }

  else
  {
    v12 = TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::offset_into_ranges(a1, v9, a3);
  }

  if (v12 == -1)
  {
    goto LABEL_39;
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(v3, 0);
  *(v3 + 8) += v12;
  v13 = v9[8];
  v14 = *(v13 + 16);
  v41 = *v13;
  v42 = v14;
  if (!*v3)
  {
    **(a1 + 8) = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v15 = 0;
  v16 = 0;
  v17 = -1;
  v37 = a1;
  while (1)
  {
    v18 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(v3);
    v19 = v18;
    if (v18 != 1)
    {
      break;
    }

    v26 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3);
    v15 = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::address_at_base_and_index(&v41, *(*(a1 + 8) + 84), v26);
LABEL_32:
    if (!*v3)
    {
      goto LABEL_36;
    }
  }

  if (v18 == 4)
  {
    v20 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3) + v15;
    v21 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3) + v15;
    v22 = *(a1 + 8);
    v23 = v22[13];
    v24 = v22[14];
    if (v23 >= v24)
    {
      v27 = v22[12];
      v28 = v23 - v27;
      v29 = (v23 - v27) >> 3;
      v30 = v29 + 1;
      if ((v29 + 1) >> 61)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v31 = v24 - v27;
      if (v31 >> 2 > v30)
      {
        v30 = v31 >> 2;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        std::allocator<unsigned long>::allocate_at_least[abi:ne200100]((v22 + 12), v30);
      }

      v32 = (8 * v29);
      *v32 = v20;
      v32[1] = v21;
      v25 = 8 * v29 + 8;
      memcpy(0, v27, v28);
      v33 = v22[12];
      v22[12] = 0;
      v22[13] = v25;
      v22[14] = 0;
      if (v33)
      {
        operator delete(v33);
      }

      a1 = v37;
    }

    else
    {
      *v23 = v20;
      *(v23 + 1) = v21;
      v25 = (v23 + 8);
    }

    v22[13] = v25;
    if (v20 < v17)
    {
      v17 = v20;
    }

    if (v16 <= v21)
    {
      v16 = v21;
    }

    goto LABEL_32;
  }

  if (v18)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v40);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Unimplemented range list entry kind", 35);
    LOBYTE(v38[0]) = v19;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v38, 1);
    std::ostringstream::str[abi:ne200100](v40, &v39);
    Exception::Exception(v38, &v39);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v38);
  }

LABEL_36:
  v34 = *(a1 + 8);
  *v34 = v17;
  *(v34 + 4) = v16;
  if (v17 != -1 && v16)
  {
    *(v34 + 68) |= 3u;
  }

LABEL_39:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

void sub_1D9753914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  Exception::~Exception(&a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a21);
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::extract_dwarf4_ranges(uint64_t result, uint64_t *a2, int a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    result = TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::offset_into_ranges(result, v4, a3);
    if (result != -1)
    {
      v6 = a2[5];
      if (v6)
      {
        *(v6 + 8) += result;
        v7 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(v6);
        v8 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(v6);
        v9 = 0;
        if (v7 | v8)
        {
          v10 = *(*(v5 + 8) + 76);
          v11 = -1;
          v28 = v5;
          do
          {
            if (v7 == -1)
            {
              v10 = v8;
            }

            else
            {
              v12 = v7 + v10;
              v13 = v10 + v8;
              v14 = *(v5 + 8);
              v16 = v14[13];
              v15 = v14[14];
              if (v16 >= v15)
              {
                v18 = v14[12];
                v19 = v16 - v18;
                v20 = (v16 - v18) >> 3;
                v21 = v20 + 1;
                if ((v20 + 1) >> 61)
                {
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                }

                v22 = v15 - v18;
                if (v22 >> 2 > v21)
                {
                  v21 = v22 >> 2;
                }

                v23 = v22 >= 0x7FFFFFFFFFFFFFF8;
                v24 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v23)
                {
                  v24 = v21;
                }

                if (v24)
                {
                  std::allocator<unsigned long>::allocate_at_least[abi:ne200100]((v14 + 12), v24);
                }

                v25 = (8 * v20);
                *v25 = v12;
                v25[1] = v13;
                v17 = 8 * v20 + 8;
                memcpy(0, v18, v19);
                v26 = v14[12];
                v14[12] = 0;
                v14[13] = v17;
                v14[14] = 0;
                if (v26)
                {
                  operator delete(v26);
                }

                v5 = v28;
              }

              else
              {
                *v16 = v12;
                *(v16 + 1) = v13;
                v17 = (v16 + 8);
              }

              v14[13] = v17;
              if (v12 < v11)
              {
                v11 = v12;
              }

              if (v9 <= v13)
              {
                v9 = v13;
              }
            }

            v7 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(v6);
            v8 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(v6);
          }

          while (v7 | v8);
        }

        else
        {
          v11 = -1;
        }

        result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(v6, 0);
        v27 = *(v5 + 8);
        *v27 = v11;
        *(v27 + 4) = v9;
        if (v11 != -1)
        {
          if (v9)
          {
            *(v27 + 68) |= 3u;
          }
        }
      }
    }
  }

  return result;
}

uint64_t TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer32,LittleEndian>>::offset_into_ranges(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 != 6)
  {
    if (v3 == 7)
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint64(a2);
    }

    else
    {
      if (v3 == 23)
      {
        v4 = *MEMORY[0x1E69E9840];

        return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(a2);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v11 = a3;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "DWARF %d form %u is unrecognized for reading non-indexed ranges.\n", buf, 0xEu);
        v3 = *(a1 + 16);
      }

      fprintf(*MEMORY[0x1E69E9848], "DWARF %d form %u is unrecognized for reading non-indexed ranges.\n", a3, v3);
      result = 0xFFFFFFFFLL;
    }

    v9 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = *MEMORY[0x1E69E9840];

  return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(a2);
}

uint64_t TDwarfReadDW_FORM_StrpAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if ((*(a1 + 24) & **(a1 + 16)) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    v4 = *(result + 32);
    v5 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(result);
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(v4, v5);
    v6 = *(a1 + 8);
    **(a1 + 16) |= *(a1 + 24);
    *v6 = *v4 + *(v4 + 8);
  }

  return result;
}

size_t TDwarfReadDW_FORM_StringAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_FORM_string(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::FORM_string(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::FORM_string(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 4) - v2;
  v4 = *a1;
  v5 = strlen((*a1 + v2)) + 1;
  if (v5 > v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Cursor overflow, attempt to read FORM_string", 44);
    std::ostringstream::str[abi:ne200100](v10, &v9);
    Exception::Exception(v8, &v9);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v8);
  }

  *(a1 + 2) = v5 + v2;
  return v4 + v2;
}

void sub_1D9753EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_StrxAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if ((*(result + 24) & **(result + 16)) != 0)
  {
    *(v2 + 2) += 4;
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = v2[7];
  v6 = *(v3 + 40);
  if (v6 <= 37)
  {
    if (v6 == 26)
    {
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(*a2);
    }

    else
    {
      if (v6 != 37)
      {
        goto LABEL_14;
      }

      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(*a2);
    }

LABEL_13:
    if ((v4 & 0xC0000000) != 0)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FORM_strx index overflow", 24);
      std::ostringstream::str[abi:ne200100](v14, &v13);
      Exception::Exception(v12, &v13);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v12);
    }

    goto LABEL_14;
  }

  switch(v6)
  {
    case '&':
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(*a2);
      goto LABEL_13;
    case '\'':
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::threeBytes(*a2);
      goto LABEL_13;
    case '(':
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(*a2);
      goto LABEL_13;
  }

LABEL_14:
  v7 = **(v3 + 32);
  if (__CFADD__(v7, 4 * v4))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FORM_strx offset overflow", 25);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    v10 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v10, v12);
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(v5, v7 + 4 * v4);
  v8 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(v5);
  v9 = v2[4];
  result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(v9, v8);
  **(v3 + 16) |= *(v3 + 24);
  **(v3 + 8) = *v9 + *(v9 + 8);
  return result;
}

void sub_1D9754158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_RefAddrAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  result = *a2;
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = *(a1 + 24);
  if ((v7 & v6) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v5 = v7 | v6;
    if (a3 > 2)
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(result);
    }

    else
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(result);
    }

    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref1AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref2AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 2;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref4AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref8AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 8;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint64(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref_UdataAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data1AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_FlagAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_FlagPresentAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t result)
{
  v1 = *(result + 8);
  **(result + 16) |= *(result + 24);
  *v1 = 1;
  return result;
}

uint64_t TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::TDwarfSourceInfoAbbrev(uint64_t result, int a2, char a3, void *a4, uint64_t a5)
{
  v5 = result;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = *a4;
  *a4 = 0;
  v6 = *(result + 24);
  *(result + 24) = a4[1];
  a4[1] = v6;
  v7 = *(result + 32);
  *(result + 32) = a4[2];
  a4[2] = v7;
  *result = &unk_1F55061B0;
  *(result + 64) = a5;
  v8 = *(result + 16);
  if (v8 != *(result + 24))
  {
    v9 = *v8;
    v10 = v8[1];
    if (v9 <= 0x51)
    {
      if (*v8 > 0x11u)
      {
        if (v9 == 18)
        {
          if ((v10 - 41) >= 4 && v10 != 27)
          {
            if (v10 == 1)
            {
              operator new();
            }

            v20 = *(v5 + 64);
            read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
          }

          operator new();
        }

        if (v9 == 27)
        {
          v13 = *(v5 + 64);
          read_action_for_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
        }
      }

      else
      {
        if (v9 == 16)
        {
          v15 = *(v5 + 64);
          read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
        }

        if (v9 == 17)
        {
          if ((v10 - 41) >= 4 && v10 != 27)
          {
            if (v10 == 1)
            {
              operator new();
            }

            skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
          }

          operator new();
        }
      }
    }

    else if (*v8 <= 0x72u)
    {
      if (v9 == 82)
      {
        if ((v10 - 41) >= 4 && v10 != 27)
        {
          if (v10 == 1)
          {
            operator new();
          }

          skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
        }

        operator new();
      }

      if (v9 == 114)
      {
        v14 = *(v5 + 64);
        read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
      }
    }

    else
    {
      switch(v9)
      {
        case 0x73u:
          v17 = *(v5 + 64);
          read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
        case 0x74u:
          v19 = *(v5 + 64);
          read_action_for_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
        case 0x3FF0u:
          v11 = *(v5 + 64);
          read_action_for_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
      }
    }

    skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v10);
  }

  return result;
}