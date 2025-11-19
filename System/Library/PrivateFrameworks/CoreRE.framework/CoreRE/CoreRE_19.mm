char *re::anonymous namespace::RegisterMapping::processRegister<re::Matrix3x3<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v137[5] = *MEMORY[0x1E69E9840];
  v5 = *(this + 12);
  if (v5 <= a2)
  {
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 13);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    memset(v136, 0, sizeof(v136));
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[20];
      v14 = v10[18];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[20];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[20];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = (v16 - v13) >> 3;
        v5 = v10[58];
        if (v5 <= v39)
        {
LABEL_131:
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v122 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v137[0]) = 136315906;
          *(v137 + 4) = "operator[]";
          WORD2(v137[1]) = 1024;
          *(&v137[1] + 6) = 797;
          WORD1(v137[2]) = 2048;
          *(&v137[2] + 4) = v39;
          WORD2(v137[3]) = 2048;
          *(&v137[3] + 6) = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_132;
        }

        v40 = (v10[60] + 48 * v39);
        v42 = v40[1];
        v41 = v40[2];
        v136[0] = *v40;
        v136[1] = v42;
        v136[2] = v41;
      }
    }

    v5 = v10[98];
    while (v5 > v12)
    {
      v11 = *(v10[100] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v137[0]) = 136315906;
    *(v137 + 4) = "operator[]";
    WORD2(v137[1]) = 1024;
    *(&v137[1] + 6) = 797;
    WORD1(v137[2]) = 2048;
    *(&v137[2] + 4) = v12;
    WORD2(v137[3]) = 2048;
    *(&v137[3] + 6) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v4;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v92 = v72;
    v93 = v73;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v92;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v93;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v94 = v76;
    v95 = v77;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v94;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v95;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v96 = v56;
    v97 = v57;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v96;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v97;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v98 = v60;
    v99 = v61;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v98;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v99;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v100 = v64;
    v101 = v65;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v100;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v101;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v102 = v68;
    v103 = v69;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v102;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v104 = v52;
    v105 = v53;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v104;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v105;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v106 = v46;
    v107 = v47;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v106;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v107;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v108 = v28;
    v109 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v108;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v109;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v110 = v28;
    v111 = v35;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v110;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v111;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v112 = v28;
    v113 = v37;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v112;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v113;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v114 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v114;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v115 = v28;
    v116 = v29;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v115;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v116;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v117 = v28;
    v118 = v34;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v117;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v118;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v119 = v28;
    v120 = v36;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v119;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v120;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v121 = v28;
    v39 = v31;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v121;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v39;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v137, 0, 32);
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    memset(v136, 0, sizeof(v136));
    v137[v3] = *(v8 + 6);
    v84 = *(v6 + 481);
    *&v122 = *(v6 + 483);
    *(&v122 + 1) = v84;
    v85 = *(v6 + 486);
    *&v123 = *(v6 + 488);
    *(&v123 + 1) = v85;
    v86 = *(v6 + 491);
    *&v124 = *(v6 + 493);
    *(&v124 + 1) = v86;
    v87 = *(v6 + 496);
    *&v125 = *(v6 + 498);
    *(&v125 + 1) = v87;
    v88 = *(v6 + 501);
    *&v126 = *(v6 + 503);
    *(&v126 + 1) = v88;
    v89 = *(v6 + 506);
    v127 = *(v6 + 508);
    v128 = v89;
    v90 = *(v6 + 511);
    v129 = *(v6 + 513);
    v130 = v90;
    v91 = *(v6 + 516);
    v131 = *(v6 + 518);
    v132 = v91;
    v134 = 0;
    v135 = 0;
    v133 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] <= 1u)
    {
      if (v25[v24])
      {
        v28 = *&v26[2 * v24];
        v31 = *(this + 6);
        if (v31 <= v28)
        {
          goto LABEL_130;
        }

        v30 = *(this + 7);
      }

      else
      {
        v28 = *&v26[2 * v24];
        v35 = *(this + 3);
        if (v35 <= v28)
        {
          goto LABEL_124;
        }

        v30 = *(this + 4);
      }

      goto LABEL_49;
    }

    if (v27 == 2)
    {
      v28 = *&v26[2 * v24];
      v36 = *(this + 9);
      if (v36 <= v28)
      {
        goto LABEL_129;
      }

      v30 = *(this + 10);
      goto LABEL_49;
    }

    if (v27 != 3)
    {
      goto LABEL_136;
    }

    v32 = *&v26[2 * v24];
    if (v5 <= v32)
    {
      goto LABEL_126;
    }

    v33 = v7 + (v32 << 6);
LABEL_50:
    if (!v33 || *(v33 + 40) != 3)
    {
      goto LABEL_110;
    }

    v137[v24++] = *(v33 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_123;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_136;
      }

      v28 = *&v26[2 * v24];
      v34 = *(this + 18);
      if (v34 <= v28)
      {
        goto LABEL_128;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_125;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_127;
    }

    v30 = *(this + 25);
LABEL_49:
    v33 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_136;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_134;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_133:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v5;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v5;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v43 = (v8 + 2);
  while (2)
  {
    v45 = *v5++;
    v44 = v45;
    if (v45 > 3)
    {
      if (v44 <= 5)
      {
        if (v44 == 4)
        {
          v68 = *v43;
          v69 = *(v6 + 15);
          if (v69 <= *v43)
          {
            goto LABEL_120;
          }

          v70 = *(v6 + 16) + (v68 << 6);
          v71 = *(v70 + 56);
          v50 = (v70 + 56);
          v49 = v71;
          if (v71 != -1)
          {
            goto LABEL_102;
          }

          v49 = *(v6 + 523);
          *(v6 + 523) = v49 + 1;
        }

        else
        {
          if (v44 != 5)
          {
            goto LABEL_135;
          }

          v52 = *v43;
          v53 = *(v6 + 18);
          if (v53 <= *v43)
          {
            goto LABEL_121;
          }

          v54 = *(v6 + 19) + (v52 << 6);
          v55 = *(v54 + 56);
          v50 = (v54 + 56);
          v49 = v55;
          if (v55 != -1)
          {
            goto LABEL_102;
          }

          v49 = *(v6 + 524);
          *(v6 + 524) = v49 + 1;
        }

        goto LABEL_101;
      }

      if (v44 == 6)
      {
        v76 = *v43;
        v77 = *(v6 + 21);
        if (v77 <= *v43)
        {
          goto LABEL_116;
        }

        v78 = *(v6 + 22) + (v76 << 6);
        v79 = *(v78 + 56);
        v50 = (v78 + 56);
        v49 = v79;
        if (v79 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 525);
        *(v6 + 525) = v49 + 1;
        goto LABEL_101;
      }

      if (v44 == 7)
      {
        v60 = *v43;
        v61 = *(v6 + 24);
        if (v61 <= *v43)
        {
          goto LABEL_118;
        }

        v62 = *(v6 + 25) + (v60 << 6);
        v63 = *(v62 + 56);
        v50 = (v62 + 56);
        v49 = v63;
        if (v63 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 526);
        *(v6 + 526) = v49 + 1;
        goto LABEL_101;
      }

LABEL_135:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v44);
      _os_crash();
      __break(1u);
LABEL_136:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v72 = *v43;
        v73 = *(v6 + 9);
        if (v73 <= *v43)
        {
          goto LABEL_115;
        }

        v74 = *(v6 + 10) + (v72 << 6);
        v75 = *(v74 + 56);
        v50 = (v74 + 56);
        v49 = v75;
        if (v75 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 521);
        *(v6 + 521) = v49 + 1;
      }

      else
      {
        if (v44 != 3)
        {
          goto LABEL_135;
        }

        v56 = *v43;
        v57 = *(v6 + 12);
        if (v57 <= *v43)
        {
          goto LABEL_117;
        }

        v58 = *(v6 + 13) + (v56 << 6);
        v59 = *(v58 + 56);
        v50 = (v58 + 56);
        v49 = v59;
        if (v59 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 522);
        *(v6 + 522) = v49 + 1;
      }

LABEL_101:
      *v50 = v49;
      goto LABEL_102;
    }

    if (!v44)
    {
      v64 = *v43;
      v65 = *(v6 + 3);
      if (v65 <= *v43)
      {
        goto LABEL_119;
      }

      v66 = *(v6 + 4) + (v64 << 6);
      v67 = *(v66 + 56);
      v50 = (v66 + 56);
      v49 = v67;
      if (v67 != -1)
      {
        goto LABEL_102;
      }

      v49 = *(v6 + 519);
      *(v6 + 519) = v49 + 1;
      goto LABEL_101;
    }

    if (v44 != 1)
    {
      goto LABEL_135;
    }

    v46 = *v43;
    v47 = *(v6 + 6);
    if (v47 <= *v43)
    {
      goto LABEL_122;
    }

    v48 = *(v6 + 7) + (v46 << 6);
    v51 = *(v48 + 56);
    v50 = (v48 + 56);
    v49 = v51;
    if (v51 == -1)
    {
      v49 = *(v6 + 520);
      *(v6 + 520) = v49 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v122 = v49;
    re::DynamicArray<unsigned long>::add(a3, &v122);
    ++v43;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 12);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_132:
    v137[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v136[0]) = 136315906;
    *(v136 + 4) = "operator[]";
    WORD6(v136[0]) = 1024;
    *(v136 + 14) = 468;
    WORD1(v136[1]) = 2048;
    *(&v136[1] + 4) = v4;
    WORD6(v136[1]) = 2048;
    *(&v136[1] + 14) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_133;
  }

  v80 = *(v6 + 13) + (v4 << 6);
  v83 = *(v80 + 56);
  v82 = (v80 + 56);
  v81 = v83;
  if (v83 == -1)
  {
    v81 = *(v6 + 522);
    *(v6 + 522) = v81 + 1;
    *v82 = v81;
  }

  *&v122 = v81;
  re::DynamicArray<unsigned long>::add(a3, &v122);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Matrix4x4<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v124[5] = *MEMORY[0x1E69E9840];
  v5 = *(this + 15);
  if (v5 <= a2)
  {
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v4;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v77 = v57;
    v78 = v58;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v77;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v78;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v79 = v61;
    v80 = v62;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v79;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v80;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v81 = v41;
    v82 = v42;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v81;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v82;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v83 = v45;
    v84 = v46;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v83;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_102:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v85 = v49;
    v86 = v50;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v85;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v86;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_103:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v87 = v53;
    v88 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v87;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v88;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v89 = v37;
    v90 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v89;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v90;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v91 = v31;
    v92 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v91;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v92;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v93 = v27;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v93;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v94 = v17;
    v95 = v23;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v94;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v95;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v96 = v17;
    v97 = v25;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v96;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v97;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v98 = v17;
    v99 = v21;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v98;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v99;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v100 = v17;
    v101 = v18;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v100;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v101;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_111:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v102 = v17;
    v103 = v22;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v102;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v104 = v17;
    v105 = v24;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v104;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v105;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v106 = v17;
    v107 = v20;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v106;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v107;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 16);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(*(this + 1), a2, &v108);
  }

  v11 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_6;
  }

  memset(v124, 0, 32);
  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
LABEL_95:
    v123 = 0uLL;
    memset(v122, 0, sizeof(v122));
    v124[v3] = *(v8 + 6);
    v69 = *(v6 + 481);
    *&v108 = *(v6 + 483);
    *(&v108 + 1) = v69;
    v70 = *(v6 + 486);
    *&v109 = *(v6 + 488);
    *(&v109 + 1) = v70;
    v71 = *(v6 + 491);
    *&v110 = *(v6 + 493);
    *(&v110 + 1) = v71;
    v72 = *(v6 + 496);
    *&v111 = *(v6 + 498);
    *(&v111 + 1) = v72;
    v73 = *(v6 + 501);
    *&v112 = *(v6 + 503);
    *(&v112 + 1) = v73;
    v74 = *(v6 + 506);
    v113 = *(v6 + 508);
    v114 = v74;
    v75 = *(v6 + 511);
    v115 = *(v6 + 513);
    v116 = v75;
    v76 = *(v6 + 516);
    v117 = *(v6 + 518);
    v118 = v76;
    v120 = 0;
    v121 = 0;
    v119 = 0;
  }

  v13 = 0;
  v14 = v11 + 10;
  v15 = v8 + 2;
  while (1)
  {
    v16 = v14[v13];
    if (v14[v13] <= 3u)
    {
      if (v14[v13] > 1u)
      {
        if (v16 == 2)
        {
          v17 = *&v15[2 * v13];
          v24 = *(this + 9);
          if (v24 <= v17)
          {
            goto LABEL_112;
          }

          v19 = *(this + 10);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_118;
          }

          v17 = *&v15[2 * v13];
          v21 = *(this + 12);
          if (v21 <= v17)
          {
            goto LABEL_109;
          }

          v19 = *(this + 13);
        }
      }

      else if (v14[v13])
      {
        v17 = *&v15[2 * v13];
        v20 = *(this + 6);
        if (v20 <= v17)
        {
          goto LABEL_113;
        }

        v19 = *(this + 7);
      }

      else
      {
        v17 = *&v15[2 * v13];
        v23 = *(this + 3);
        if (v23 <= v17)
        {
          goto LABEL_107;
        }

        v19 = *(this + 4);
      }

      goto LABEL_37;
    }

    if (v14[v13] > 5u)
    {
      break;
    }

    if (v16 != 4)
    {
      if (v16 != 5)
      {
        goto LABEL_118;
      }

      v17 = *&v15[2 * v13];
      v22 = *(this + 18);
      if (v22 <= v17)
      {
        goto LABEL_111;
      }

      v19 = *(this + 19);
      goto LABEL_37;
    }

    v27 = *&v15[2 * v13];
    if (v5 <= v27)
    {
      goto LABEL_106;
    }

    v26 = v7 + (v27 << 6);
    if (!v26)
    {
      goto LABEL_94;
    }

LABEL_38:
    if (*(v26 + 40) != 3)
    {
      goto LABEL_94;
    }

    v124[v13++] = *(v26 + 48);
    if (v3 == v13)
    {
      goto LABEL_95;
    }
  }

  if (v16 == 6)
  {
    v17 = *&v15[2 * v13];
    v25 = *(this + 21);
    if (v25 <= v17)
    {
      goto LABEL_108;
    }

    v19 = *(this + 22);
LABEL_37:
    v26 = v19 + (v17 << 6);
    if (!v26)
    {
      goto LABEL_94;
    }

    goto LABEL_38;
  }

  if (v16 == 7)
  {
    v17 = *&v15[2 * v13];
    v18 = *(this + 24);
    if (v18 <= v17)
    {
      goto LABEL_110;
    }

    v19 = *(this + 25);
    goto LABEL_37;
  }

  if ((v16 - 253) >= 2)
  {
    goto LABEL_118;
  }

LABEL_94:
  if (v3 == v13)
  {
    goto LABEL_95;
  }

LABEL_6:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v12 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_47;
    }

    goto LABEL_116;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v12 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_47:
      re::DynamicArray<unsigned long>::add(a3, v12);
    }

LABEL_115:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v5;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v5;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
    goto LABEL_88;
  }

  v5 = v11 + 10;
  v28 = (v8 + 2);
  while (2)
  {
    v30 = *v5++;
    v29 = v30;
    if (v30 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v53 = *v28;
          v54 = *(v6 + 15);
          if (v54 <= *v28)
          {
            goto LABEL_103;
          }

          v55 = *(v6 + 16) + (v53 << 6);
          v56 = *(v55 + 56);
          v35 = (v55 + 56);
          v34 = v56;
          if (v56 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 523);
          *(v6 + 523) = v34 + 1;
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_117;
          }

          v37 = *v28;
          v38 = *(v6 + 18);
          if (v38 <= *v28)
          {
            goto LABEL_104;
          }

          v39 = *(v6 + 19) + (v37 << 6);
          v40 = *(v39 + 56);
          v35 = (v39 + 56);
          v34 = v40;
          if (v40 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 524);
          *(v6 + 524) = v34 + 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v61 = *v28;
        v62 = *(v6 + 21);
        if (v62 <= *v28)
        {
          goto LABEL_99;
        }

        v63 = *(v6 + 22) + (v61 << 6);
        v64 = *(v63 + 56);
        v35 = (v63 + 56);
        v34 = v64;
        if (v64 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 525);
        *(v6 + 525) = v34 + 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v45 = *v28;
        v46 = *(v6 + 24);
        if (v46 <= *v28)
        {
          goto LABEL_101;
        }

        v47 = *(v6 + 25) + (v45 << 6);
        v48 = *(v47 + 56);
        v35 = (v47 + 56);
        v34 = v48;
        if (v48 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 526);
        *(v6 + 526) = v34 + 1;
        goto LABEL_85;
      }

LABEL_117:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v29);
      _os_crash();
      __break(1u);
LABEL_118:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v16);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v57 = *v28;
        v58 = *(v6 + 9);
        if (v58 <= *v28)
        {
          goto LABEL_98;
        }

        v59 = *(v6 + 10) + (v57 << 6);
        v60 = *(v59 + 56);
        v35 = (v59 + 56);
        v34 = v60;
        if (v60 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 521);
        *(v6 + 521) = v34 + 1;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_117;
        }

        v41 = *v28;
        v42 = *(v6 + 12);
        if (v42 <= *v28)
        {
          goto LABEL_100;
        }

        v43 = *(v6 + 13) + (v41 << 6);
        v44 = *(v43 + 56);
        v35 = (v43 + 56);
        v34 = v44;
        if (v44 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 522);
        *(v6 + 522) = v34 + 1;
      }

LABEL_85:
      *v35 = v34;
      goto LABEL_86;
    }

    if (!v29)
    {
      v49 = *v28;
      v50 = *(v6 + 3);
      if (v50 <= *v28)
      {
        goto LABEL_102;
      }

      v51 = *(v6 + 4) + (v49 << 6);
      v52 = *(v51 + 56);
      v35 = (v51 + 56);
      v34 = v52;
      if (v52 != -1)
      {
        goto LABEL_86;
      }

      v34 = *(v6 + 519);
      *(v6 + 519) = v34 + 1;
      goto LABEL_85;
    }

    if (v29 != 1)
    {
      goto LABEL_117;
    }

    v31 = *v28;
    v32 = *(v6 + 6);
    if (v32 <= *v28)
    {
      goto LABEL_105;
    }

    v33 = *(v6 + 7) + (v31 << 6);
    v36 = *(v33 + 56);
    v35 = (v33 + 56);
    v34 = v36;
    if (v36 == -1)
    {
      v34 = *(v6 + 520);
      *(v6 + 520) = v34 + 1;
      goto LABEL_85;
    }

LABEL_86:
    *&v108 = v34;
    re::DynamicArray<unsigned long>::add(a3, &v108);
    ++v28;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 15);
LABEL_88:
  if (v5 <= v4)
  {
LABEL_114:
    v124[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v122[0] = 136315906;
    *&v122[1] = "operator[]";
    LOWORD(v122[3]) = 1024;
    *(&v122[3] + 2) = 468;
    HIWORD(v122[4]) = 2048;
    *&v122[5] = v4;
    LOWORD(v122[7]) = 2048;
    *(&v122[7] + 2) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v65 = *(v6 + 16) + (v4 << 6);
  v68 = *(v65 + 56);
  v67 = (v65 + 56);
  v66 = v68;
  if (v68 == -1)
  {
    v66 = *(v6 + 523);
    *(v6 + 523) = v66 + 1;
    *v67 = v66;
  }

  *&v108 = v66;
  re::DynamicArray<unsigned long>::add(a3, &v108);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Quaternion<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v128 = *MEMORY[0x1E69E9840];
  v5 = *(this + 18);
  if (v5 <= a2)
  {
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v77 = v57;
    v78 = v58;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v77;
    v126 = 2048;
    v127 = v78;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v79 = v61;
    v80 = v62;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v79;
    v126 = 2048;
    v127 = v80;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v81 = v41;
    v82 = v42;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v81;
    v126 = 2048;
    v127 = v82;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v83 = v45;
    v84 = v46;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v83;
    v126 = 2048;
    v127 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_102:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v85 = v49;
    v86 = v50;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v85;
    v126 = 2048;
    v127 = v86;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_103:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v87 = v53;
    v88 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v87;
    v126 = 2048;
    v127 = v88;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v89 = v37;
    v90 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v89;
    v126 = 2048;
    v127 = v90;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v91 = v31;
    v92 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v91;
    v126 = 2048;
    v127 = v92;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v93 = v17;
    v94 = v27;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v93;
    v126 = 2048;
    v127 = v94;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v95 = v17;
    v96 = v24;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v95;
    v126 = 2048;
    v127 = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v97 = v17;
    v98 = v26;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v97;
    v126 = 2048;
    v127 = v98;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v99 = v17;
    v100 = v21;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v99;
    v126 = 2048;
    v127 = v100;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v101 = v17;
    v102 = v18;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v101;
    v126 = 2048;
    v127 = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_111:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v103 = v22;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v103;
    v126 = 2048;
    v127 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v104 = v17;
    v105 = v25;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v104;
    v126 = 2048;
    v127 = v105;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v106 = v17;
    v107 = v20;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v106;
    v126 = 2048;
    v127 = v107;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 19);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v108 = xmmword_1E30474D0;
    re::EvaluationTree::getInputValue<re::Quaternion<float>>(*(this + 1), a2, &v108);
  }

  v11 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_6;
  }

  memset(v122, 0, sizeof(v122));
  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
LABEL_95:
    *v123 = xmmword_1E30474D0;
    v122[v3] = *(v8 + 6);
    v69 = *(v6 + 481);
    *&v108 = *(v6 + 483);
    *(&v108 + 1) = v69;
    v70 = *(v6 + 486);
    *&v109 = *(v6 + 488);
    *(&v109 + 1) = v70;
    v71 = *(v6 + 491);
    *&v110 = *(v6 + 493);
    *(&v110 + 1) = v71;
    v72 = *(v6 + 496);
    *&v111 = *(v6 + 498);
    *(&v111 + 1) = v72;
    v73 = *(v6 + 501);
    *&v112 = *(v6 + 503);
    *(&v112 + 1) = v73;
    v74 = *(v6 + 506);
    v113 = *(v6 + 508);
    v114 = v74;
    v75 = *(v6 + 511);
    v115 = *(v6 + 513);
    v116 = v75;
    v76 = *(v6 + 516);
    v117 = *(v6 + 518);
    v118 = v76;
    v120 = 0;
    v121 = 0;
    v119 = 0;
  }

  v13 = 0;
  v14 = v11 + 10;
  v15 = v8 + 2;
  while (1)
  {
    v16 = v14[v13];
    if (v14[v13] <= 3u)
    {
      if (v14[v13] > 1u)
      {
        if (v16 == 2)
        {
          v17 = *&v15[2 * v13];
          v25 = *(this + 9);
          if (v25 <= v17)
          {
            goto LABEL_112;
          }

          v19 = *(this + 10);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_118;
          }

          v17 = *&v15[2 * v13];
          v21 = *(this + 12);
          if (v21 <= v17)
          {
            goto LABEL_109;
          }

          v19 = *(this + 13);
        }
      }

      else if (v14[v13])
      {
        v17 = *&v15[2 * v13];
        v20 = *(this + 6);
        if (v20 <= v17)
        {
          goto LABEL_113;
        }

        v19 = *(this + 7);
      }

      else
      {
        v17 = *&v15[2 * v13];
        v24 = *(this + 3);
        if (v24 <= v17)
        {
          goto LABEL_107;
        }

        v19 = *(this + 4);
      }

      goto LABEL_39;
    }

    if (v14[v13] > 5u)
    {
      break;
    }

    if (v16 == 4)
    {
      v17 = *&v15[2 * v13];
      v27 = *(this + 15);
      if (v27 <= v17)
      {
        goto LABEL_106;
      }

      v19 = *(this + 16);
      goto LABEL_39;
    }

    if (v16 != 5)
    {
      goto LABEL_118;
    }

    v22 = *&v15[2 * v13];
    if (v5 <= v22)
    {
      goto LABEL_111;
    }

    v23 = v7 + (v22 << 6);
LABEL_40:
    if (!v23 || *(v23 + 40) != 3)
    {
      goto LABEL_94;
    }

    v122[v13++] = *(v23 + 48);
    if (v3 == v13)
    {
      goto LABEL_95;
    }
  }

  if (v16 == 6)
  {
    v17 = *&v15[2 * v13];
    v26 = *(this + 21);
    if (v26 <= v17)
    {
      goto LABEL_108;
    }

    v19 = *(this + 22);
    goto LABEL_39;
  }

  if (v16 == 7)
  {
    v17 = *&v15[2 * v13];
    v18 = *(this + 24);
    if (v18 <= v17)
    {
      goto LABEL_110;
    }

    v19 = *(this + 25);
LABEL_39:
    v23 = v19 + (v17 << 6);
    goto LABEL_40;
  }

  if ((v16 - 253) >= 2)
  {
    goto LABEL_118;
  }

LABEL_94:
  if (v3 == v13)
  {
    goto LABEL_95;
  }

LABEL_6:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v12 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_47;
    }

    goto LABEL_116;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v12 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_47:
      re::DynamicArray<unsigned long>::add(a3, v12);
    }

LABEL_115:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v5;
    v126 = 2048;
    v127 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v5;
    v126 = 2048;
    v127 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
    goto LABEL_88;
  }

  v5 = v11 + 10;
  v28 = (v8 + 2);
  while (2)
  {
    v30 = *v5++;
    v29 = v30;
    if (v30 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v53 = *v28;
          v54 = *(v6 + 15);
          if (v54 <= *v28)
          {
            goto LABEL_103;
          }

          v55 = *(v6 + 16) + (v53 << 6);
          v56 = *(v55 + 56);
          v35 = (v55 + 56);
          v34 = v56;
          if (v56 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 523);
          *(v6 + 523) = v34 + 1;
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_117;
          }

          v37 = *v28;
          v38 = *(v6 + 18);
          if (v38 <= *v28)
          {
            goto LABEL_104;
          }

          v39 = *(v6 + 19) + (v37 << 6);
          v40 = *(v39 + 56);
          v35 = (v39 + 56);
          v34 = v40;
          if (v40 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 524);
          *(v6 + 524) = v34 + 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v61 = *v28;
        v62 = *(v6 + 21);
        if (v62 <= *v28)
        {
          goto LABEL_99;
        }

        v63 = *(v6 + 22) + (v61 << 6);
        v64 = *(v63 + 56);
        v35 = (v63 + 56);
        v34 = v64;
        if (v64 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 525);
        *(v6 + 525) = v34 + 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v45 = *v28;
        v46 = *(v6 + 24);
        if (v46 <= *v28)
        {
          goto LABEL_101;
        }

        v47 = *(v6 + 25) + (v45 << 6);
        v48 = *(v47 + 56);
        v35 = (v47 + 56);
        v34 = v48;
        if (v48 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 526);
        *(v6 + 526) = v34 + 1;
        goto LABEL_85;
      }

LABEL_117:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v29);
      _os_crash();
      __break(1u);
LABEL_118:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v16);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v57 = *v28;
        v58 = *(v6 + 9);
        if (v58 <= *v28)
        {
          goto LABEL_98;
        }

        v59 = *(v6 + 10) + (v57 << 6);
        v60 = *(v59 + 56);
        v35 = (v59 + 56);
        v34 = v60;
        if (v60 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 521);
        *(v6 + 521) = v34 + 1;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_117;
        }

        v41 = *v28;
        v42 = *(v6 + 12);
        if (v42 <= *v28)
        {
          goto LABEL_100;
        }

        v43 = *(v6 + 13) + (v41 << 6);
        v44 = *(v43 + 56);
        v35 = (v43 + 56);
        v34 = v44;
        if (v44 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 522);
        *(v6 + 522) = v34 + 1;
      }

LABEL_85:
      *v35 = v34;
      goto LABEL_86;
    }

    if (!v29)
    {
      v49 = *v28;
      v50 = *(v6 + 3);
      if (v50 <= *v28)
      {
        goto LABEL_102;
      }

      v51 = *(v6 + 4) + (v49 << 6);
      v52 = *(v51 + 56);
      v35 = (v51 + 56);
      v34 = v52;
      if (v52 != -1)
      {
        goto LABEL_86;
      }

      v34 = *(v6 + 519);
      *(v6 + 519) = v34 + 1;
      goto LABEL_85;
    }

    if (v29 != 1)
    {
      goto LABEL_117;
    }

    v31 = *v28;
    v32 = *(v6 + 6);
    if (v32 <= *v28)
    {
      goto LABEL_105;
    }

    v33 = *(v6 + 7) + (v31 << 6);
    v36 = *(v33 + 56);
    v35 = (v33 + 56);
    v34 = v36;
    if (v36 == -1)
    {
      v34 = *(v6 + 520);
      *(v6 + 520) = v34 + 1;
      goto LABEL_85;
    }

LABEL_86:
    *&v108 = v34;
    re::DynamicArray<unsigned long>::add(a3, &v108);
    ++v28;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 18);
LABEL_88:
  if (v5 <= v4)
  {
LABEL_114:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v65 = *(v6 + 19) + (v4 << 6);
  v68 = *(v65 + 56);
  v67 = (v65 + 56);
  v66 = v68;
  if (v68 == -1)
  {
    v66 = *(v6 + 524);
    *(v6 + 524) = v66 + 1;
    *v67 = v66;
  }

  *&v108 = v66;
  re::DynamicArray<unsigned long>::add(a3, &v108);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Vector2<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  v5 = *(this + 21);
  if (v5 <= a2)
  {
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 22);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v121 = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[35];
      v14 = v10[33];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[35];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[35];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = v16 - v13;
        v40 = v10[73];
        if (v40 <= (v16 - v13) >> 3)
        {
LABEL_131:
          v120 = v39 >> 3;
          v136[0] = 0;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v122 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v137 = 136315906;
          *&v137[4] = "operator[]";
          v138 = 1024;
          v139 = 797;
          v140 = 2048;
          v141 = v120;
          v142 = 2048;
          v143 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_132;
        }

        v121 = *(v10[75] + v39);
      }
    }

    v5 = v10[113];
    while (v5 > v12)
    {
      v11 = *(v10[115] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 797;
    v140 = 2048;
    v141 = v12;
    v142 = 2048;
    v143 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v4;
    v142 = 2048;
    v143 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v90 = v70;
    v91 = v71;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v90;
    v142 = 2048;
    v143 = v91;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v92 = v74;
    v93 = v75;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v92;
    v142 = 2048;
    v143 = v93;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v94 = v54;
    v95 = v55;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v94;
    v142 = 2048;
    v143 = v95;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v96 = v58;
    v97 = v59;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v96;
    v142 = 2048;
    v143 = v97;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v98 = v62;
    v99 = v63;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v98;
    v142 = 2048;
    v143 = v99;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v100 = v66;
    v101 = v67;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v100;
    v142 = 2048;
    v143 = v101;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v102 = v50;
    v103 = v51;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v102;
    v142 = 2048;
    v143 = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v104 = v44;
    v105 = v45;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v104;
    v142 = 2048;
    v143 = v105;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v106 = v28;
    v107 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v106;
    v142 = 2048;
    v143 = v107;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v108 = v28;
    v109 = v34;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v108;
    v142 = 2048;
    v143 = v109;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v110 = v36;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v110;
    v142 = 2048;
    v143 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v111 = v28;
    v112 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v111;
    v142 = 2048;
    v143 = v112;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v113 = v28;
    v114 = v29;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v113;
    v142 = 2048;
    v143 = v114;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v115 = v28;
    v116 = v33;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v115;
    v142 = 2048;
    v143 = v116;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v117 = v28;
    v118 = v35;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v117;
    v142 = 2048;
    v143 = v118;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v121 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    v119 = v28;
    v40 = v31;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v119;
    v142 = 2048;
    v143 = v40;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v136, 0, sizeof(v136));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    *v137 = 0;
    v136[v3] = *(v8 + 6);
    v82 = *(v6 + 481);
    *&v122 = *(v6 + 483);
    *(&v122 + 1) = v82;
    v83 = *(v6 + 486);
    *&v123 = *(v6 + 488);
    *(&v123 + 1) = v83;
    v84 = *(v6 + 491);
    *&v124 = *(v6 + 493);
    *(&v124 + 1) = v84;
    v85 = *(v6 + 496);
    *&v125 = *(v6 + 498);
    *(&v125 + 1) = v85;
    v86 = *(v6 + 501);
    *&v126 = *(v6 + 503);
    *(&v126 + 1) = v86;
    v87 = *(v6 + 506);
    v127 = *(v6 + 508);
    v128 = v87;
    v88 = *(v6 + 511);
    v129 = *(v6 + 513);
    v130 = v88;
    v89 = *(v6 + 516);
    v131 = *(v6 + 518);
    v132 = v89;
    v134 = 0;
    v135 = 0;
    v133 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] <= 3u)
    {
      if (v25[v24] > 1u)
      {
        if (v27 == 2)
        {
          v28 = *&v26[2 * v24];
          v35 = *(this + 9);
          if (v35 <= v28)
          {
            goto LABEL_129;
          }

          v30 = *(this + 10);
        }

        else
        {
          if (v27 != 3)
          {
            goto LABEL_136;
          }

          v28 = *&v26[2 * v24];
          v32 = *(this + 12);
          if (v32 <= v28)
          {
            goto LABEL_126;
          }

          v30 = *(this + 13);
        }
      }

      else if (v25[v24])
      {
        v28 = *&v26[2 * v24];
        v31 = *(this + 6);
        if (v31 <= v28)
        {
          goto LABEL_130;
        }

        v30 = *(this + 7);
      }

      else
      {
        v28 = *&v26[2 * v24];
        v34 = *(this + 3);
        if (v34 <= v28)
        {
          goto LABEL_124;
        }

        v30 = *(this + 4);
      }

      goto LABEL_49;
    }

    if (v25[v24] <= 5u)
    {
      if (v27 == 4)
      {
        v28 = *&v26[2 * v24];
        v38 = *(this + 15);
        if (v38 <= v28)
        {
          goto LABEL_123;
        }

        v30 = *(this + 16);
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_136;
        }

        v28 = *&v26[2 * v24];
        v33 = *(this + 18);
        if (v33 <= v28)
        {
          goto LABEL_128;
        }

        v30 = *(this + 19);
      }

      goto LABEL_49;
    }

    if (v27 != 6)
    {
      break;
    }

    v36 = *&v26[2 * v24];
    if (v5 <= v36)
    {
      goto LABEL_125;
    }

    v37 = v7 + (v36 << 6);
LABEL_50:
    if (!v37 || *(v37 + 40) != 3)
    {
      goto LABEL_110;
    }

    v136[v24++] = *(v37 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_127;
    }

    v30 = *(this + 25);
LABEL_49:
    v37 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_136;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_134;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_133:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v5;
    v142 = 2048;
    v143 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v5;
    v142 = 2048;
    v143 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v41 = (v8 + 2);
  while (2)
  {
    v43 = *v5++;
    v42 = v43;
    if (v43 > 3)
    {
      if (v42 <= 5)
      {
        if (v42 == 4)
        {
          v66 = *v41;
          v67 = *(v6 + 15);
          if (v67 <= *v41)
          {
            goto LABEL_120;
          }

          v68 = *(v6 + 16) + (v66 << 6);
          v69 = *(v68 + 56);
          v48 = (v68 + 56);
          v47 = v69;
          if (v69 != -1)
          {
            goto LABEL_102;
          }

          v47 = *(v6 + 523);
          *(v6 + 523) = v47 + 1;
        }

        else
        {
          if (v42 != 5)
          {
            goto LABEL_135;
          }

          v50 = *v41;
          v51 = *(v6 + 18);
          if (v51 <= *v41)
          {
            goto LABEL_121;
          }

          v52 = *(v6 + 19) + (v50 << 6);
          v53 = *(v52 + 56);
          v48 = (v52 + 56);
          v47 = v53;
          if (v53 != -1)
          {
            goto LABEL_102;
          }

          v47 = *(v6 + 524);
          *(v6 + 524) = v47 + 1;
        }

        goto LABEL_101;
      }

      if (v42 == 6)
      {
        v74 = *v41;
        v75 = *(v6 + 21);
        if (v75 <= *v41)
        {
          goto LABEL_116;
        }

        v76 = *(v6 + 22) + (v74 << 6);
        v77 = *(v76 + 56);
        v48 = (v76 + 56);
        v47 = v77;
        if (v77 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 525);
        *(v6 + 525) = v47 + 1;
        goto LABEL_101;
      }

      if (v42 == 7)
      {
        v58 = *v41;
        v59 = *(v6 + 24);
        if (v59 <= *v41)
        {
          goto LABEL_118;
        }

        v60 = *(v6 + 25) + (v58 << 6);
        v61 = *(v60 + 56);
        v48 = (v60 + 56);
        v47 = v61;
        if (v61 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 526);
        *(v6 + 526) = v47 + 1;
        goto LABEL_101;
      }

LABEL_135:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v42);
      _os_crash();
      __break(1u);
LABEL_136:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v70 = *v41;
        v71 = *(v6 + 9);
        if (v71 <= *v41)
        {
          goto LABEL_115;
        }

        v72 = *(v6 + 10) + (v70 << 6);
        v73 = *(v72 + 56);
        v48 = (v72 + 56);
        v47 = v73;
        if (v73 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 521);
        *(v6 + 521) = v47 + 1;
      }

      else
      {
        if (v42 != 3)
        {
          goto LABEL_135;
        }

        v54 = *v41;
        v55 = *(v6 + 12);
        if (v55 <= *v41)
        {
          goto LABEL_117;
        }

        v56 = *(v6 + 13) + (v54 << 6);
        v57 = *(v56 + 56);
        v48 = (v56 + 56);
        v47 = v57;
        if (v57 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 522);
        *(v6 + 522) = v47 + 1;
      }

LABEL_101:
      *v48 = v47;
      goto LABEL_102;
    }

    if (!v42)
    {
      v62 = *v41;
      v63 = *(v6 + 3);
      if (v63 <= *v41)
      {
        goto LABEL_119;
      }

      v64 = *(v6 + 4) + (v62 << 6);
      v65 = *(v64 + 56);
      v48 = (v64 + 56);
      v47 = v65;
      if (v65 != -1)
      {
        goto LABEL_102;
      }

      v47 = *(v6 + 519);
      *(v6 + 519) = v47 + 1;
      goto LABEL_101;
    }

    if (v42 != 1)
    {
      goto LABEL_135;
    }

    v44 = *v41;
    v45 = *(v6 + 6);
    if (v45 <= *v41)
    {
      goto LABEL_122;
    }

    v46 = *(v6 + 7) + (v44 << 6);
    v49 = *(v46 + 56);
    v48 = (v46 + 56);
    v47 = v49;
    if (v49 == -1)
    {
      v47 = *(v6 + 520);
      *(v6 + 520) = v47 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v122 = v47;
    re::DynamicArray<unsigned long>::add(a3, &v122);
    ++v41;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 21);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_132:
    v136[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v137 = 136315906;
    *&v137[4] = "operator[]";
    v138 = 1024;
    v139 = 468;
    v140 = 2048;
    v141 = v4;
    v142 = 2048;
    v143 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_133;
  }

  v78 = *(v6 + 22) + (v4 << 6);
  v81 = *(v78 + 56);
  v80 = (v78 + 56);
  v79 = v81;
  if (v81 == -1)
  {
    v79 = *(v6 + 525);
    *(v6 + 525) = v79 + 1;
    *v80 = v79;
  }

  *&v122 = v79;
  re::DynamicArray<unsigned long>::add(a3, &v122);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Vector3<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v128 = *MEMORY[0x1E69E9840];
  v5 = *(this + 24);
  if (v5 <= a2)
  {
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v77 = v57;
    v78 = v58;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v77;
    v126 = 2048;
    v127 = v78;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v79 = v61;
    v80 = v62;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v79;
    v126 = 2048;
    v127 = v80;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v81 = v41;
    v82 = v42;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v81;
    v126 = 2048;
    v127 = v82;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v83 = v45;
    v84 = v46;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v83;
    v126 = 2048;
    v127 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_102:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v85 = v49;
    v86 = v50;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v85;
    v126 = 2048;
    v127 = v86;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_103:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v87 = v53;
    v88 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v87;
    v126 = 2048;
    v127 = v88;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v89 = v37;
    v90 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v89;
    v126 = 2048;
    v127 = v90;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v91 = v31;
    v92 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v91;
    v126 = 2048;
    v127 = v92;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v93 = v19;
    v94 = v27;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v93;
    v126 = 2048;
    v127 = v94;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v95 = v19;
    v96 = v24;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v95;
    v126 = 2048;
    v127 = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v97 = v19;
    v98 = v26;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v97;
    v126 = 2048;
    v127 = v98;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v99 = v19;
    v100 = v22;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v99;
    v126 = 2048;
    v127 = v100;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v101 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v101;
    v126 = 2048;
    v127 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_111:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v102 = v19;
    v103 = v23;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v102;
    v126 = 2048;
    v127 = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v104 = v19;
    v105 = v25;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v104;
    v126 = 2048;
    v127 = v105;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v106 = v19;
    v107 = v20;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v106;
    v126 = 2048;
    v127 = v107;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 25);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v108 = 0u;
    re::EvaluationTree::getInputValue<re::Vector3<float>>(*(this + 1), a2, &v108);
  }

  v11 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_6;
  }

  memset(v122, 0, sizeof(v122));
  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
LABEL_95:
    *v123 = 0uLL;
    v122[v3] = *(v8 + 6);
    v69 = *(v6 + 481);
    v108.n128_u64[0] = *(v6 + 483);
    v108.n128_u64[1] = v69;
    v70 = *(v6 + 486);
    *&v109 = *(v6 + 488);
    *(&v109 + 1) = v70;
    v71 = *(v6 + 491);
    *&v110 = *(v6 + 493);
    *(&v110 + 1) = v71;
    v72 = *(v6 + 496);
    *&v111 = *(v6 + 498);
    *(&v111 + 1) = v72;
    v73 = *(v6 + 501);
    *&v112 = *(v6 + 503);
    *(&v112 + 1) = v73;
    v74 = *(v6 + 506);
    v113 = *(v6 + 508);
    v114 = v74;
    v75 = *(v6 + 511);
    v115 = *(v6 + 513);
    v116 = v75;
    v76 = *(v6 + 516);
    v117 = *(v6 + 518);
    v118 = v76;
    v120 = 0;
    v121 = 0;
    v119 = 0;
  }

  v13 = 0;
  v14 = v11 + 10;
  v15 = v8 + 2;
  while (1)
  {
    v16 = v14[v13];
    if (v14[v13] <= 3u)
    {
      if (v14[v13] > 1u)
      {
        if (v16 == 2)
        {
          v19 = *&v15[2 * v13];
          v25 = *(this + 9);
          if (v25 <= v19)
          {
            goto LABEL_112;
          }

          v21 = *(this + 10);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_118;
          }

          v19 = *&v15[2 * v13];
          v22 = *(this + 12);
          if (v22 <= v19)
          {
            goto LABEL_109;
          }

          v21 = *(this + 13);
        }
      }

      else if (v14[v13])
      {
        v19 = *&v15[2 * v13];
        v20 = *(this + 6);
        if (v20 <= v19)
        {
          goto LABEL_113;
        }

        v21 = *(this + 7);
      }

      else
      {
        v19 = *&v15[2 * v13];
        v24 = *(this + 3);
        if (v24 <= v19)
        {
          goto LABEL_107;
        }

        v21 = *(this + 4);
      }

      goto LABEL_39;
    }

    if (v14[v13] <= 5u)
    {
      if (v16 == 4)
      {
        v19 = *&v15[2 * v13];
        v27 = *(this + 15);
        if (v27 <= v19)
        {
          goto LABEL_106;
        }

        v21 = *(this + 16);
      }

      else
      {
        if (v16 != 5)
        {
          goto LABEL_118;
        }

        v19 = *&v15[2 * v13];
        v23 = *(this + 18);
        if (v23 <= v19)
        {
          goto LABEL_111;
        }

        v21 = *(this + 19);
      }

      goto LABEL_39;
    }

    if (v16 == 6)
    {
      v19 = *&v15[2 * v13];
      v26 = *(this + 21);
      if (v26 <= v19)
      {
        goto LABEL_108;
      }

      v21 = *(this + 22);
LABEL_39:
      v18 = v21 + (v19 << 6);
      goto LABEL_40;
    }

    if (v16 != 7)
    {
      break;
    }

    v17 = *&v15[2 * v13];
    if (v5 <= v17)
    {
      goto LABEL_110;
    }

    v18 = v7 + (v17 << 6);
LABEL_40:
    if (!v18 || *(v18 + 40) != 3)
    {
      goto LABEL_94;
    }

    v122[v13++] = *(v18 + 48);
    if (v3 == v13)
    {
      goto LABEL_95;
    }
  }

  if ((v16 - 253) >= 2)
  {
    goto LABEL_118;
  }

LABEL_94:
  if (v3 == v13)
  {
    goto LABEL_95;
  }

LABEL_6:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v12 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_47;
    }

    goto LABEL_116;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v12 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_47:
      re::DynamicArray<unsigned long>::add(a3, v12);
    }

LABEL_115:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v5;
    v126 = 2048;
    v127 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v5;
    v126 = 2048;
    v127 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
    goto LABEL_88;
  }

  v5 = v11 + 10;
  v28 = (v8 + 2);
  while (2)
  {
    v30 = *v5++;
    v29 = v30;
    if (v30 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v53 = *v28;
          v54 = *(v6 + 15);
          if (v54 <= *v28)
          {
            goto LABEL_103;
          }

          v55 = *(v6 + 16) + (v53 << 6);
          v56 = *(v55 + 56);
          v35 = (v55 + 56);
          v34 = v56;
          if (v56 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 523);
          *(v6 + 523) = v34 + 1;
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_117;
          }

          v37 = *v28;
          v38 = *(v6 + 18);
          if (v38 <= *v28)
          {
            goto LABEL_104;
          }

          v39 = *(v6 + 19) + (v37 << 6);
          v40 = *(v39 + 56);
          v35 = (v39 + 56);
          v34 = v40;
          if (v40 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 524);
          *(v6 + 524) = v34 + 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v61 = *v28;
        v62 = *(v6 + 21);
        if (v62 <= *v28)
        {
          goto LABEL_99;
        }

        v63 = *(v6 + 22) + (v61 << 6);
        v64 = *(v63 + 56);
        v35 = (v63 + 56);
        v34 = v64;
        if (v64 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 525);
        *(v6 + 525) = v34 + 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v45 = *v28;
        v46 = *(v6 + 24);
        if (v46 <= *v28)
        {
          goto LABEL_101;
        }

        v47 = *(v6 + 25) + (v45 << 6);
        v48 = *(v47 + 56);
        v35 = (v47 + 56);
        v34 = v48;
        if (v48 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 526);
        *(v6 + 526) = v34 + 1;
        goto LABEL_85;
      }

LABEL_117:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v29);
      _os_crash();
      __break(1u);
LABEL_118:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v16);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v57 = *v28;
        v58 = *(v6 + 9);
        if (v58 <= *v28)
        {
          goto LABEL_98;
        }

        v59 = *(v6 + 10) + (v57 << 6);
        v60 = *(v59 + 56);
        v35 = (v59 + 56);
        v34 = v60;
        if (v60 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 521);
        *(v6 + 521) = v34 + 1;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_117;
        }

        v41 = *v28;
        v42 = *(v6 + 12);
        if (v42 <= *v28)
        {
          goto LABEL_100;
        }

        v43 = *(v6 + 13) + (v41 << 6);
        v44 = *(v43 + 56);
        v35 = (v43 + 56);
        v34 = v44;
        if (v44 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 522);
        *(v6 + 522) = v34 + 1;
      }

LABEL_85:
      *v35 = v34;
      goto LABEL_86;
    }

    if (!v29)
    {
      v49 = *v28;
      v50 = *(v6 + 3);
      if (v50 <= *v28)
      {
        goto LABEL_102;
      }

      v51 = *(v6 + 4) + (v49 << 6);
      v52 = *(v51 + 56);
      v35 = (v51 + 56);
      v34 = v52;
      if (v52 != -1)
      {
        goto LABEL_86;
      }

      v34 = *(v6 + 519);
      *(v6 + 519) = v34 + 1;
      goto LABEL_85;
    }

    if (v29 != 1)
    {
      goto LABEL_117;
    }

    v31 = *v28;
    v32 = *(v6 + 6);
    if (v32 <= *v28)
    {
      goto LABEL_105;
    }

    v33 = *(v6 + 7) + (v31 << 6);
    v36 = *(v33 + 56);
    v35 = (v33 + 56);
    v34 = v36;
    if (v36 == -1)
    {
      v34 = *(v6 + 520);
      *(v6 + 520) = v34 + 1;
      goto LABEL_85;
    }

LABEL_86:
    v108.n128_u64[0] = v34;
    re::DynamicArray<unsigned long>::add(a3, &v108);
    ++v28;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 24);
LABEL_88:
  if (v5 <= v4)
  {
LABEL_114:
    v122[0] = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    *&v123[12] = 1024;
    *&v123[14] = 468;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v65 = *(v6 + 25) + (v4 << 6);
  v68 = *(v65 + 56);
  v67 = (v65 + 56);
  v66 = v68;
  if (v68 == -1)
  {
    v66 = *(v6 + 526);
    *(v6 + 526) = v66 + 1;
    *v67 = v66;
  }

  v108.n128_u64[0] = v66;
  re::DynamicArray<unsigned long>::add(a3, &v108);
}

_anonymous_namespace_ *re::DynamicArray<re::EvaluationCommand>::add(_anonymous_namespace_ *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 4 * v5) = *a2;
  *(v3 + 2) = v5 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::FixedArray<re::anonymous namespace::RegisterMapping::RegisterMapData>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 58)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, a3 << 6, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0xFFFFFFFFLL;
      *(result + 8) = 0uLL;
      *(result + 24) = 0uLL;
      *(result + 40) = 0;
      *(result + 48) = -1;
      *(result + 56) = -1;
      result += 64;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFLL;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *(result + 56) = -1;
  return result;
}

uint64_t re::EvaluationDependencyMap::isRegisterUsed(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v3 = a1 + 24 * a2;
  if (*(v3 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v3 + 16) + a3);
}

char *re::anonymous namespace::RegisterMapping::enqueueRegisterForProcessing(char *result, int a2, unint64_t a3)
{
  v4 = &result[24 * a2];
  if (*(v4 + 3) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2;
  v6 = (*(v4 + 4) + (a3 << 6));
  v7 = &result[40 * *v6];
  v8 = v7 + 664;
  v9 = *(v7 + 85);
  if (!v9)
  {
    result = re::DynamicArray<re::EvaluationCommand>::add((result + 3784), v6);
    v9 = *(v8 + 2);
  }

  v10 = *(v8 + 1);
  if (v9 >= v10)
  {
    v11 = v9 + 1;
    if (v10 < v9 + 1)
    {
      if (*v8)
      {
        v12 = 2 * v10;
        if (!v10)
        {
          v12 = 8;
        }

        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v8, v13);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v8, v11);
        ++*(v8 + 6);
      }
    }

    v9 = *(v8 + 2);
  }

  v14 = *(v8 + 4) + 16 * v9;
  *v14 = v5;
  *(v14 + 8) = a3;
  ++*(v8 + 2);
  ++*(v8 + 6);
  *(v6 + 40) = 1;
  return result;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<int>(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (*(a1 + 24) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<int>::add((a1 + 3832), a2);
  if (*(a1 + 24) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 32) + (a3 << 6) + 48) = *(a1 + 3848) - 1;
}

BOOL re::anonymous namespace::RegisterMapping::mapCallbackData(re::_anonymous_namespace_::RegisterMapping *this, unint64_t a2)
{
  if (*(this + 27) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(this + 28) + 904 * a2);
  v4 = v3[112];
  if (v4 == -1)
  {
    v5 = *(this + 527);
    *(this + 527) = v5 + 1;
    v3[112] = v5;
    v3[56] = *v3;
    v3[111] = v3[55];
  }

  return v4 == -1;
}

BOOL re::anonymous namespace::RegisterMapping::mapBranchGroup(re::_anonymous_namespace_::RegisterMapping *this, unint64_t a2)
{
  if (*(this + 30) <= a2)
  {
LABEL_97:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 200, v2);
    _os_crash();
    __break(1u);
LABEL_99:
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  v4 = (*(this + 31) + 248 * a2);
  v5 = v4[30];
  if (v5 != -1)
  {
    return v5 == -1;
  }

  v6 = *(this + 528);
  *(this + 528) = v6 + 1;
  v4[30] = v6;
  v7 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(this + 1) + 1608, a2);
  v2 = v7[5];
  v8 = *this;
  v4[3] = *this;
  v4[4] = v2;
  if (!v2)
  {
    goto LABEL_21;
  }

  if (v2 >= 0x147AE147AE147AFLL)
  {
    goto LABEL_98;
  }

  v9 = (*(*v8 + 32))(v8, 200 * v2, 8);
  v4[5] = v9;
  if (!v9)
  {
    goto LABEL_99;
  }

  v11 = v2 - 1;
  if (v2 == 1)
  {
    *v9 = -1;
    v12 = v9 + 1;
  }

  else
  {
    v12 = v9 + 1;
    do
    {
      *(v12 - 1) = -1;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      v12[2] = 0uLL;
      v12[3] = 0uLL;
      v12[4] = 0uLL;
      v12[5] = 0uLL;
      v12[6] = 0uLL;
      v12[7] = 0uLL;
      v12[8] = 0uLL;
      v12[9] = 0uLL;
      v12[10] = 0uLL;
      v12[11] = 0uLL;
      v12 = (v12 + 200);
      --v11;
    }

    while (v11);
    *(v12 - 1) = -1;
  }

  v13 = 0;
  v14 = 0;
  v12[10] = 0u;
  v12[11] = 0u;
  v12[8] = 0u;
  v12[9] = 0u;
  v12[6] = 0u;
  v12[7] = 0u;
  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  do
  {
    if (v4[1] <= v14)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_79:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_80:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_81:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_82:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_83:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_84:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_86:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_87:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_88:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_89:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_90:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_93:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_94:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_95:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_96:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_97;
    }

    if (v4[4] <= v14)
    {
      goto LABEL_79;
    }

    v15 = v4[2];
    v16 = v4[5];
    v17 = *(v15 + v13);
    if (v17 != -1)
    {
      if (*(this + 6) <= v17)
      {
        goto LABEL_96;
      }

      v18 = *(this + 7) + (v17 << 6);
      v21 = *(v18 + 56);
      v20 = (v18 + 56);
      v19 = v21;
      if (v21 == -1)
      {
        v19 = *(this + 520);
        *(this + 520) = v19 + 1;
        *v20 = v19;
      }

      *(v16 + v13) = v19;
    }

    v22 = v15 + v13;
    v23 = v16 + v13;
    ++v14;
    v13 += 200;
  }

  while (v2 != v14);
  v8 = *this;
LABEL_21:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 6, v8, v7[9]);
  if (v7[9])
  {
    v2 = 0;
    v24 = v7[11];
    v25 = v4[8];
    do
    {
      v26 = *(v24 + 8 * v2);
      if (*(this + 3) <= v26)
      {
        goto LABEL_80;
      }

      v27 = *(this + 4) + (v26 << 6);
      v30 = *(v27 + 56);
      v29 = (v27 + 56);
      v28 = v30;
      if (v30 == -1)
      {
        v28 = *(this + 519);
        *(this + 519) = v28 + 1;
        *v29 = v28;
      }

      if (v4[7] <= v2)
      {
        goto LABEL_81;
      }

      *(v25 + 8 * v2++) = v28;
    }

    while (v2 < v7[9]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 9, *this, v7[14]);
  if (v7[14])
  {
    v2 = 0;
    v31 = v7[16];
    v32 = v4[11];
    do
    {
      v33 = *(v31 + 8 * v2);
      if (*(this + 6) <= v33)
      {
        goto LABEL_82;
      }

      v34 = *(this + 7) + (v33 << 6);
      v37 = *(v34 + 56);
      v36 = (v34 + 56);
      v35 = v37;
      if (v37 == -1)
      {
        v35 = *(this + 520);
        *(this + 520) = v35 + 1;
        *v36 = v35;
      }

      if (v4[10] <= v2)
      {
        goto LABEL_83;
      }

      *(v32 + 8 * v2++) = v35;
    }

    while (v2 < v7[14]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 12, *this, v7[19]);
  if (v7[19])
  {
    v2 = 0;
    v38 = v7[21];
    v39 = v4[14];
    do
    {
      v40 = *(v38 + 8 * v2);
      if (*(this + 9) <= v40)
      {
        goto LABEL_84;
      }

      v41 = *(this + 10) + (v40 << 6);
      v44 = *(v41 + 56);
      v43 = (v41 + 56);
      v42 = v44;
      if (v44 == -1)
      {
        v42 = *(this + 521);
        *(this + 521) = v42 + 1;
        *v43 = v42;
      }

      if (v4[13] <= v2)
      {
        goto LABEL_85;
      }

      *(v39 + 8 * v2++) = v42;
    }

    while (v2 < v7[19]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 15, *this, v7[24]);
  if (v7[24])
  {
    v2 = 0;
    v45 = v7[26];
    v46 = v4[17];
    do
    {
      v47 = *(v45 + 8 * v2);
      if (*(this + 12) <= v47)
      {
        goto LABEL_86;
      }

      v48 = *(this + 13) + (v47 << 6);
      v51 = *(v48 + 56);
      v50 = (v48 + 56);
      v49 = v51;
      if (v51 == -1)
      {
        v49 = *(this + 522);
        *(this + 522) = v49 + 1;
        *v50 = v49;
      }

      if (v4[16] <= v2)
      {
        goto LABEL_87;
      }

      *(v46 + 8 * v2++) = v49;
    }

    while (v2 < v7[24]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 18, *this, v7[29]);
  if (v7[29])
  {
    v2 = 0;
    v52 = v7[31];
    v53 = v4[20];
    do
    {
      v54 = *(v52 + 8 * v2);
      if (*(this + 15) <= v54)
      {
        goto LABEL_88;
      }

      v55 = *(this + 16) + (v54 << 6);
      v58 = *(v55 + 56);
      v57 = (v55 + 56);
      v56 = v58;
      if (v58 == -1)
      {
        v56 = *(this + 523);
        *(this + 523) = v56 + 1;
        *v57 = v56;
      }

      if (v4[19] <= v2)
      {
        goto LABEL_89;
      }

      *(v53 + 8 * v2++) = v56;
    }

    while (v2 < v7[29]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 21, *this, v7[34]);
  if (v7[34])
  {
    v2 = 0;
    v59 = v7[36];
    v60 = v4[23];
    do
    {
      v61 = *(v59 + 8 * v2);
      if (*(this + 18) <= v61)
      {
        goto LABEL_90;
      }

      v62 = *(this + 19) + (v61 << 6);
      v65 = *(v62 + 56);
      v64 = (v62 + 56);
      v63 = v65;
      if (v65 == -1)
      {
        v63 = *(this + 524);
        *(this + 524) = v63 + 1;
        *v64 = v63;
      }

      if (v4[22] <= v2)
      {
        goto LABEL_91;
      }

      *(v60 + 8 * v2++) = v63;
    }

    while (v2 < v7[34]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 24, *this, v7[39]);
  if (v7[39])
  {
    v2 = 0;
    v66 = v7[41];
    v67 = v4[26];
    do
    {
      v68 = *(v66 + 8 * v2);
      if (*(this + 21) <= v68)
      {
        goto LABEL_92;
      }

      v69 = *(this + 22) + (v68 << 6);
      v72 = *(v69 + 56);
      v71 = (v69 + 56);
      v70 = v72;
      if (v72 == -1)
      {
        v70 = *(this + 525);
        *(this + 525) = v70 + 1;
        *v71 = v70;
      }

      if (v4[25] <= v2)
      {
        goto LABEL_93;
      }

      *(v67 + 8 * v2++) = v70;
    }

    while (v2 < v7[39]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v4 + 27, *this, v7[44]);
  if (v7[44])
  {
    v2 = 0;
    v73 = v7[46];
    v74 = v4[29];
    while (1)
    {
      v75 = *(v73 + 8 * v2);
      if (*(this + 24) <= v75)
      {
        goto LABEL_94;
      }

      v76 = *(this + 25) + (v75 << 6);
      v79 = *(v76 + 56);
      v78 = (v76 + 56);
      v77 = v79;
      if (v79 == -1)
      {
        v77 = *(this + 526);
        *(this + 526) = v77 + 1;
        *v78 = v77;
      }

      if (v4[28] <= v2)
      {
        goto LABEL_95;
      }

      *(v74 + 8 * v2++) = v77;
      if (v2 >= v7[44])
      {
        return v5 == -1;
      }
    }
  }

  return v5 == -1;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<int,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3, *a1, *(a2 + 8));
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = *(a2 + 16);
    v9 = a3[2];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[3] <= v10)
      {
        break;
      }

      v11 = a1[4] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[519];
        a1[519] = v12 + 1;
        *v13 = v12;
      }

      if (a3[1] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 8))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<unsigned int,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 3, *a1, *(a2 + 32));
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = *(a2 + 40);
    v9 = a3[5];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[6] <= v10)
      {
        break;
      }

      v11 = a1[7] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[520];
        a1[520] = v12 + 1;
        *v13 = v12;
      }

      if (a3[4] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 32))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<float,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 6, *a1, *(a2 + 56));
  if (*(a2 + 56))
  {
    v7 = 0;
    v8 = *(a2 + 64);
    v9 = a3[8];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[9] <= v10)
      {
        break;
      }

      v11 = a1[10] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[521];
        a1[521] = v12 + 1;
        *v13 = v12;
      }

      if (a3[7] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 56))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix3x3<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 9, *a1, *(a2 + 80));
  if (*(a2 + 80))
  {
    v7 = 0;
    v8 = *(a2 + 88);
    v9 = a3[11];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[12] <= v10)
      {
        break;
      }

      v11 = a1[13] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[522];
        a1[522] = v12 + 1;
        *v13 = v12;
      }

      if (a3[10] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 80))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix4x4<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 12, *a1, *(a2 + 104));
  if (*(a2 + 104))
  {
    v7 = 0;
    v8 = *(a2 + 112);
    v9 = a3[14];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[15] <= v10)
      {
        break;
      }

      v11 = a1[16] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[523];
        a1[523] = v12 + 1;
        *v13 = v12;
      }

      if (a3[13] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 104))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Quaternion<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 15, *a1, *(a2 + 128));
  if (*(a2 + 128))
  {
    v7 = 0;
    v8 = *(a2 + 136);
    v9 = a3[17];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[18] <= v10)
      {
        break;
      }

      v11 = a1[19] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[524];
        a1[524] = v12 + 1;
        *v13 = v12;
      }

      if (a3[16] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 128))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector2<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 18, *a1, *(a2 + 152));
  if (*(a2 + 152))
  {
    v7 = 0;
    v8 = *(a2 + 160);
    v9 = a3[20];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[21] <= v10)
      {
        break;
      }

      v11 = a1[22] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[525];
        a1[525] = v12 + 1;
        *v13 = v12;
      }

      if (a3[19] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 152))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector3<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 21, *a1, *(a2 + 176));
  if (*(a2 + 176))
  {
    v7 = 0;
    v8 = *(a2 + 184);
    v9 = a3[23];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      if (a1[24] <= v10)
      {
        break;
      }

      v11 = a1[25] + (v10 << 6);
      v14 = *(v11 + 56);
      v13 = (v11 + 56);
      v12 = v14;
      if (v14 == -1)
      {
        v12 = a1[526];
        a1[526] = v12 + 1;
        *v13 = v12;
      }

      if (a3[22] <= v7)
      {
        goto LABEL_10;
      }

      *(v9 + 8 * v7++) = v12;
      if (v7 >= *(a2 + 176))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisterArray(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationSRT>::init<>(a3, *a1, *(a2 + 8));
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = (a3[2] + 16);
    for (i = (*(a2 + 16) + 16); ; i += 3)
    {
      v10 = *(i - 2);
      if (a1[24] <= v10)
      {
        break;
      }

      v11 = a1[25];
      v12 = v11 + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[526];
        a1[526] = v13 + 1;
        *v14 = v13;
      }

      if (a3[1] <= v7)
      {
        goto LABEL_20;
      }

      *(v8 - 2) = v13;
      if (*(a2 + 8) <= v7)
      {
        goto LABEL_21;
      }

      v16 = *(i - 1);
      if (a1[18] <= v16)
      {
        goto LABEL_22;
      }

      v17 = a1[19] + (v16 << 6);
      v20 = *(v17 + 56);
      v19 = (v17 + 56);
      v18 = v20;
      if (v20 == -1)
      {
        v18 = a1[524];
        a1[524] = v18 + 1;
        *v19 = v18;
      }

      if (a3[1] <= v7)
      {
        goto LABEL_23;
      }

      *(v8 - 1) = v18;
      if (*(a2 + 8) <= v7)
      {
        goto LABEL_24;
      }

      if (a1[24] <= *i)
      {
        goto LABEL_25;
      }

      v21 = v11 + (*i << 6);
      v24 = *(v21 + 56);
      v23 = (v21 + 56);
      v22 = v24;
      if (v24 == -1)
      {
        v22 = a1[526];
        a1[526] = v22 + 1;
        *v23 = v22;
      }

      if (a3[1] <= v7)
      {
        goto LABEL_26;
      }

      *v8 = v22;
      v8 += 3;
      if (++v7 >= *(a2 + 8))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<unsigned int>(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (*(a1 + 48) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<int>::add((a1 + 3872), a2);
  if (*(a1 + 48) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 56) + (a3 << 6) + 48) = *(a1 + 3888) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<float>(uint64_t a1, float *a2, unint64_t a3)
{
  if (*(a1 + 72) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<float>::add((a1 + 3912), a2);
  if (*(a1 + 72) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 80) + (a3 << 6) + 48) = *(a1 + 3928) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 96) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Matrix3x3<float>>::add((a1 + 3952), a2);
  if (*(a1 + 96) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 104) + (a3 << 6) + 48) = *(a1 + 3968) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 120) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Matrix4x4<float>>::add((a1 + 3992), a2);
  if (*(a1 + 120) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 128) + (a3 << 6) + 48) = *(a1 + 4008) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Quaternion<float>>(uint64_t a1, __n128 *a2, unint64_t a3)
{
  if (*(a1 + 144) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Vector3<float>>::add((a1 + 4032), a2);
  if (*(a1 + 144) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 152) + (a3 << 6) + 48) = *(a1 + 4048) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Vector2<float>>(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 168) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<unsigned long>::add((a1 + 4072), a2);
  if (*(a1 + 168) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 176) + (a3 << 6) + 48) = *(a1 + 4088) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Vector3<float>>(uint64_t a1, __n128 *a2, unint64_t a3)
{
  if (*(a1 + 192) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Vector3<float>>::add((a1 + 4112), a2);
  if (*(a1 + 192) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 200) + (a3 << 6) + 48) = *(a1 + 4128) - 1;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<int>(uint64_t *a1, uint64_t *a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3, *a1, a2[1]);
  if (a2[1])
  {
    v7 = 0;
    v8 = *a2;
    v9 = a3[2];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[3] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[1] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[4] + (v10 << 6) + 56);
    }

    while (v7 < a2[1]);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<unsigned int>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 3, *a1, *(a2 + 24));
  if (*(a2 + 24))
  {
    v7 = 0;
    v8 = *(a2 + 16);
    v9 = a3[5];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[6] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[4] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[7] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 24));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<float>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 6, *a1, *(a2 + 40));
  if (*(a2 + 40))
  {
    v7 = 0;
    v8 = *(a2 + 32);
    v9 = a3[8];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[9] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[7] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[10] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 40));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix3x3<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 9, *a1, *(a2 + 56));
  if (*(a2 + 56))
  {
    v7 = 0;
    v8 = *(a2 + 48);
    v9 = a3[11];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[12] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[10] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[13] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 56));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix4x4<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 12, *a1, *(a2 + 72));
  if (*(a2 + 72))
  {
    v7 = 0;
    v8 = *(a2 + 64);
    v9 = a3[14];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[15] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[13] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[16] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 72));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Quaternion<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 15, *a1, *(a2 + 88));
  if (*(a2 + 88))
  {
    v7 = 0;
    v8 = *(a2 + 80);
    v9 = a3[17];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[18] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[16] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[19] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 88));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector2<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 18, *a1, *(a2 + 104));
  if (*(a2 + 104))
  {
    v7 = 0;
    v8 = *(a2 + 96);
    v9 = a3[20];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[21] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[19] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[22] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 104));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector3<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 21, *a1, *(a2 + 120));
  if (*(a2 + 120))
  {
    v7 = 0;
    v8 = *(a2 + 112);
    v9 = a3[23];
    do
    {
      v10 = *(v8 + 8 * v7);
      if (a1[24] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a3[22] <= v7)
      {
        goto LABEL_8;
      }

      *(v9 + 8 * v7++) = *(a1[25] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 120));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisterArray(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationSRT>::init<>(a4, *a1, a3);
  if (a3)
  {
    v9 = 0;
    v10 = (a4[2] + 16);
    for (i = (a2 + 16); ; i += 3)
    {
      v12 = *(i - 2);
      if (a1[24] <= v12)
      {
        break;
      }

      if (a4[1] <= v9)
      {
        goto LABEL_12;
      }

      v13 = a1[25];
      *(v10 - 2) = *(v13 + (v12 << 6) + 56);
      v14 = *(i - 1);
      if (a1[18] <= v14)
      {
        goto LABEL_13;
      }

      if (a4[1] <= v9)
      {
        goto LABEL_14;
      }

      *(v10 - 1) = *(a1[19] + (v14 << 6) + 56);
      if (a1[24] <= *i)
      {
        goto LABEL_15;
      }

      if (a4[1] <= v9)
      {
        goto LABEL_16;
      }

      *v10 = *(v13 + (*i << 6) + 56);
      v10 += 3;
      if (a3 == ++v9)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void re::FixedRegisterTable::initSize<re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  re::FixedArray<int>::init<>(a1, a2, a3[1]);
  re::FixedArray<int>::init<>(a1 + 3, a2, a3[4]);
  re::FixedArray<int>::init<>(a1 + 6, a2, a3[7]);
  re::FixedArray<re::Matrix3x3<float>>::init<>(a1 + 9, a2, a3[10]);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 12, a2, a3[13]);
  re::FixedArray<re::Quaternion<float>>::init<>(a1 + 15, a2, a3[16]);
  re::FixedArray<re::Vector2<float>>::init<>(a1 + 18, a2, a3[19]);
  v6 = a3[22];

  re::FixedArray<re::Vector3<float>>::init<>(a1 + 21, a2, v6);
}

uint64_t re::FixedArray<re::EvaluationSRT>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::EvaluationSRT>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 24 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::EvaluationRegisterId<int>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 8 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::anonymous namespace::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 236);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 241);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_2::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 246);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_3::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 251);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_4::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 256);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_5::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 261);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_6::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 266);
  _os_crash();
  __break(1u);
}

void re::anonymous namespace::$_7::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 271);
  _os_crash();
  __break(1u);
}

uint64_t re::anonymous namespace::$_8::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vaddq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_9::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 104);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 96) + 8 * v10) = vadd_f32(*(*(a3 + 96) + 8 * v6), *(*(a3 + 96) + 8 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_10::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    v3 = 0;
    v4 = a2 >> 2;
    v5 = (result + 16);
    while (a2 > v3)
    {
      v6 = *(v5 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_14;
      }

      v8 = v3 + 1;
      if (a2 <= v3 + 1)
      {
        goto LABEL_15;
      }

      v9 = *(v5 - 1);
      if (v7 <= v9)
      {
        goto LABEL_16;
      }

      v10 = v3 + 2;
      if (a2 <= v3 + 2)
      {
        goto LABEL_17;
      }

      v11 = *v5;
      if (v7 <= *v5)
      {
        goto LABEL_18;
      }

      v12 = v3 + 3;
      if (a2 <= v3 + 3)
      {
        goto LABEL_19;
      }

      v13 = v5[1];
      if (v7 <= v13)
      {
        goto LABEL_20;
      }

      v14 = *(a3 + 112);
      *(v14 + 16 * v13) = vmlaq_f32(*(v14 + 16 * v6), *(v14 + 16 * v11), vsubq_f32(*(v14 + 16 * v9), *(v14 + 16 * v6)));
      v3 += 4;
      v5 += 4;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v7);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a2);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_11::__invoke(uint64_t result, unint64_t a2, void *a3, double a4)
{
  if (a2 >= 4)
  {
    v4 = 0;
    v5 = a2 >> 2;
    v6 = (result + 16);
    LODWORD(a4) = 1.0;
    while (a2 > v4)
    {
      v7 = *(v6 - 2);
      v8 = a3[15];
      if (v8 <= v7)
      {
        goto LABEL_14;
      }

      v9 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v10 = *(v6 - 1);
      if (v8 <= v10)
      {
        goto LABEL_16;
      }

      v11 = v4 + 2;
      if (a2 <= v4 + 2)
      {
        goto LABEL_17;
      }

      v12 = *v6;
      v13 = a3[5];
      if (v13 <= *v6)
      {
        goto LABEL_18;
      }

      v14 = v4 + 3;
      if (a2 <= v4 + 3)
      {
        goto LABEL_19;
      }

      v15 = v6[1];
      if (v8 <= v15)
      {
        goto LABEL_20;
      }

      v16 = *(a3[4] + 4 * v12);
      *(a3[14] + 16 * v15) = vmlaq_n_f32(vmulq_n_f32(*(a3[14] + 16 * v10), v16), *(a3[14] + 16 * v7), 1.0 - v16);
      v4 += 4;
      v6 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v8);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v13);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, a2);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v8);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_12::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 4)
  {
    v6 = 0;
    v7 = a2 >> 2;
    v8 = (a1 + 16);
    while (a2 > v6)
    {
      v9 = *(v8 - 2);
      v3 = a3[11];
      if (v3 <= v9)
      {
        goto LABEL_23;
      }

      v10 = v6 + 1;
      if (a2 <= v6 + 1)
      {
        goto LABEL_24;
      }

      v11 = *(v8 - 1);
      if (v3 <= v11)
      {
        goto LABEL_25;
      }

      v12 = v6 + 2;
      if (a2 <= v6 + 2)
      {
        goto LABEL_26;
      }

      v13 = *v8;
      v14 = a3[5];
      if (v14 <= *v8)
      {
        goto LABEL_27;
      }

      v15 = a3[10];
      v16 = *(a3[4] + 4 * v13);
      v17 = *(v15 + 16 * v9);
      v18 = *(v15 + 16 * v11);
      v19 = vmulq_f32(v17, v18);
      v20 = vextq_s8(v19, v19, 8uLL);
      *v19.f32 = vadd_f32(*v19.f32, *v20.f32);
      v19.f32[0] = vaddv_f32(*v19.f32);
      v20.i64[0] = 0;
      v21 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v19, v20)), 0), vnegq_f32(v18), v18);
      v22 = 1.0;
      v23 = vsubq_f32(v17, v21);
      v24 = vmulq_f32(v23, v23);
      v53 = v21;
      v54 = v17;
      v25 = vaddq_f32(v17, v21);
      v26 = vmulq_f32(v25, v25);
      v27 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)))));
      v28 = v27 + v27;
      v29 = 1.0;
      if ((v27 + v27) != 0.0)
      {
        v29 = sinf(v27 + v27) / v28;
      }

      v30 = (1.0 - v16) * v28;
      if (v30 != 0.0)
      {
        v51 = v29;
        v31 = sinf((1.0 - v16) * v28);
        v29 = v51;
        v22 = v31 / v30;
      }

      v32 = v16 * v28;
      v33 = 1.0;
      if (v32 != 0.0)
      {
        v52 = v29;
        v34 = sinf(v32);
        v29 = v52;
        v33 = v34 / v32;
      }

      v35 = v29;
      v36 = vrecpe_f32(LODWORD(v29));
      v37 = vmul_f32(v36, vrecps_f32(LODWORD(v35), v36));
      v38 = vmul_f32(v37, vrecps_f32(LODWORD(v35), v37)).f32[0];
      v37.f32[0] = (1.0 - v16) * (v38 * v22);
      v39 = vmlaq_f32(vmulq_n_f32(v53, v16 * (v38 * v33)), v54, vdupq_lane_s32(v37, 0));
      v40 = vmulq_f32(v39, v39);
      v41 = vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      if (vaddv_f32(v41) == 0.0)
      {
        v42 = 0;
        v43 = 0x3F80000000000000;
      }

      else
      {
        v44 = vadd_f32(v41, vdup_lane_s32(v41, 1)).u32[0];
        v45 = vrsqrte_f32(v44);
        v46 = vmul_f32(v45, vrsqrts_f32(v44, vmul_f32(v45, v45)));
        v47 = vmulq_n_f32(v39, vmul_f32(v46, vrsqrts_f32(v44, vmul_f32(v46, v46))).f32[0]);
        v43 = v47.i64[1];
        v42 = v47.i64[0];
      }

      v48 = v6 + 3;
      if (a2 <= v6 + 3)
      {
        goto LABEL_28;
      }

      v49 = v8[1];
      if (v3 <= v49)
      {
        goto LABEL_29;
      }

      v50 = (v15 + 16 * v49);
      *v50 = v42;
      v50[1] = v43;
      v6 += 4;
      v8 += 4;
      if (!--v7)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash();
    __break(1u);
LABEL_23:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v3);
    _os_crash();
    __break(1u);
LABEL_24:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash();
    __break(1u);
LABEL_25:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v3);
    _os_crash();
    __break(1u);
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a2);
    _os_crash();
    __break(1u);
LABEL_27:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v14);
    _os_crash();
    __break(1u);
LABEL_28:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v48, a2);
    _os_crash();
    __break(1u);
LABEL_29:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v49, v3);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_13::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v6 = (a1 + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      v9 = a3[15];
      if (v9 <= v8)
      {
        goto LABEL_12;
      }

      v10 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v11 = *(v6 - 1);
      v12 = a3[3];
      if (v12 <= v11)
      {
        goto LABEL_14;
      }

      v13 = a3[14] + 16 * v8;
      v14 = *(a3[2] + 4 * v11);
      v19 = xmmword_1E30474D0;
      re::convertIntrinsicEulersToQuaternions<float>(v13, 1, v14, &v19, 1);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v15 = *v6;
      v16 = a3[11];
      if (v16 <= *v6)
      {
        goto LABEL_16;
      }

      v17 = *(&v19 + 1);
      v18 = (a3[10] + 16 * v15);
      *v18 = v19;
      v18[1] = v17;
      v6 += 3;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v16);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_14::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v6 = (a1 + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      v9 = a3[11];
      if (v9 <= v8)
      {
        goto LABEL_12;
      }

      v10 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v11 = *(v6 - 1);
      v12 = a3[3];
      if (v12 <= v11)
      {
        goto LABEL_14;
      }

      v13 = a3[10] + 16 * v8;
      v14 = *(a3[2] + 4 * v11);
      v19 = 0u;
      re::convertQuaternionsToIntrinsicEulers<float>(v13, 1, v14, &v19, 1);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v15 = *v6;
      v16 = a3[15];
      if (v16 <= *v6)
      {
        goto LABEL_16;
      }

      v17 = *(&v19 + 1);
      v18 = (a3[14] + 16 * v15);
      *v18 = v19;
      v18[1] = v17;
      v6 += 3;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v16);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_15::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      v11 = *(a3 + 112);
      v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v11 + 16 * v9), *(v11 + 16 * v9)), *(v11 + 16 * v9), 0xCuLL), vnegq_f32(*(v11 + 16 * v6))), *(v11 + 16 * v9), vextq_s8(vuzp1q_s32(*(v11 + 16 * v6), *(v11 + 16 * v6)), *(v11 + 16 * v6), 0xCuLL));
      *(v11 + 16 * v10) = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_16::__invoke(uint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (a2 >= 3)
  {
    v4 = a2 / 3;
    v5 = (result + 16);
    v6 = 2;
    LODWORD(a4) = 1.0;
    while (a2 > v6 - 2)
    {
      v7 = *(v5 - 2);
      v8 = *(a3 + 88);
      if (v8 <= v7)
      {
        goto LABEL_12;
      }

      v9 = v6 - 1;
      if (a2 <= v6 - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v5 - 1);
      if (v8 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= v6)
      {
        goto LABEL_15;
      }

      v11 = *v5;
      if (v8 <= *v5)
      {
        goto LABEL_16;
      }

      v12 = *(a3 + 80);
      v13 = *(v12 + 16 * v10);
      v14 = vmulq_f32(v13, v13);
      *v14.i32 = 1.0 / vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
      _S3 = vmuls_lane_f32(*v14.i32, v13, 3);
      _Q1 = vmulq_n_f32(vnegq_f32(v13), *v14.i32);
      _Q2 = *(v12 + 16 * v7);
      v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q2)), _Q1, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
      v19 = vmlaq_n_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), _Q1, _Q2, 3), _Q2, _S3);
      __asm { FMLA            S1, S3, V2.S[3] }

      v19.i32[3] = _Q1.i32[0];
      *(v12 + 16 * v11) = v19;
      v6 += 3;
      v5 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v8);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v8);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_17::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vdivq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_18::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *(a3 + 88);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 80);
      v10 = vnegq_f32(*(v9 + 16 * v6));
      v10.i32[3] = HIDWORD(*(v9 + 16 * v6));
      *(v9 + 16 * v8) = v10;
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_19::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v8 = *(v6 - 1);
      v9 = *(a3 + 56);
      if (v9 <= v8)
      {
        goto LABEL_10;
      }

      v13 = __invert_f3(*(*(a3 + 48) + 48 * v8));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v10 = *v6;
      v11 = *(a3 + 56);
      if (v11 <= *v6)
      {
        goto LABEL_12;
      }

      v12 = *(a3 + 48) + 48 * v10;
      *(v12 + 8) = v13.columns[0].i32[2];
      *v12 = v13.columns[0].i64[0];
      *(v12 + 16) = v13.columns[1].i64[0];
      *(v12 + 24) = v13.columns[1].i32[2];
      *(v12 + 32) = v13.columns[2].i64[0];
      *(v12 + 40) = v13.columns[2].i32[2];
      v6 += 2;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_20::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v8 = *(v6 - 1);
      v9 = *(a3 + 72);
      if (v9 <= v8)
      {
        goto LABEL_10;
      }

      v12 = __invert_f4(*(*(a3 + 64) + (v8 << 6)));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v10 = *v6;
      v11 = *(a3 + 72);
      if (v11 <= *v6)
      {
        goto LABEL_12;
      }

      *(*(a3 + 64) + (v10 << 6)) = v12;
      v6 += 2;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_21::__invoke(uint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v5 = (result + 8);
    v6 = 1;
    LODWORD(a4) = 1.0;
    while (a2 > v6 - 1)
    {
      v7 = *(v5 - 1);
      v8 = *(a3 + 88);
      if (v8 <= v7)
      {
        goto LABEL_10;
      }

      if (a2 <= v6)
      {
        goto LABEL_11;
      }

      v9 = *v5;
      if (v8 <= *v5)
      {
        goto LABEL_12;
      }

      v10 = *(a3 + 80);
      v11 = *(v10 + 16 * v7);
      v12 = vmulq_f32(v11, v11);
      *v12.i32 = 1.0 / vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
      v13 = vmuls_lane_f32(*v12.i32, v11, 3);
      v14 = vmulq_n_f32(vnegq_f32(v11), *v12.i32);
      v14.f32[3] = v13;
      *(v10 + 16 * v9) = v14;
      v6 += 2;
      v5 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v8);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_22::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[14];
    v4 = a3[15];
    v7 = a3[4];
    v6 = a3[5];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      v14 = vmulq_f32(*(v5 + 16 * v10), *(v5 + 16 * v12));
      *(v7 + 4 * v13) = v14.f32[2] + vaddv_f32(*v14.f32);
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_23::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[12];
    v4 = a3[13];
    v7 = a3[4];
    v6 = a3[5];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v13) = vaddv_f32(vmul_f32(*(v5 + 8 * v10), *(v5 + 8 * v12)));
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_24::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 88);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      v11 = *(a3 + 80);
      _Q0 = *(v11 + 16 * v6);
      _Q1 = *(v11 + 16 * v9);
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q0)), _Q1, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
      v15 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q1, _Q0, 3);
      _Q3.i32[0] = _Q1.i32[3];
      v16 = vmlaq_laneq_f32(v15, _Q0, _Q1, 3);
      __asm { FMLA            S1, S3, V0.S[3] }

      v16.i32[3] = _Q1.i32[0];
      *(v11 + 16 * v10) = v16;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_25::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vmulq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_26::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[15];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[5];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(a3[14] + 16 * v11) = vmulq_n_f32(*(a3[14] + 16 * v6), *(a3[4] + 4 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_27::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = 0;
    while (1)
    {
      v4 = 3 * v3;
      if (a2 <= 3 * v3)
      {
        break;
      }

      v5 = *(result + 24 * v3);
      v6 = *(a3 + 56);
      if (v6 <= v5)
      {
        goto LABEL_14;
      }

      v7 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v8 = *(result + 8 * v7);
      if (v6 <= v8)
      {
        goto LABEL_16;
      }

      v9 = 0;
      v10 = *(a3 + 48);
      v11 = (v10 + 48 * v5);
      v12 = (v10 + 48 * v8);
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v12[1];
      v17 = v12[2];
      v24 = *v12;
      v25 = v16;
      v26 = v17;
      do
      {
        *(&v27 + v9) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v24 + v9))), v14, *(&v24 + v9), 1), v15, *(&v24 + v9), 2);
        v9 += 16;
      }

      while (v9 != 48);
      v18 = v4 + 2;
      if (a2 <= v18)
      {
        goto LABEL_17;
      }

      v19 = *(result + 8 * v18);
      if (v6 <= v19)
      {
        goto LABEL_18;
      }

      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v10 + 48 * v19;
      *v23 = v27;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      *(v23 + 24) = DWORD2(v21);
      *(v23 + 32) = v22;
      *(v23 + 40) = DWORD2(v22);
      if (++v3 == a2 / 3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3 * v3, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v6, v24, v25, v26);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v6);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_28::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = 0;
    while (1)
    {
      v4 = 3 * v3;
      if (a2 <= 3 * v3)
      {
        break;
      }

      v5 = *(result + 24 * v3);
      v6 = *(a3 + 72);
      if (v6 <= v5)
      {
        goto LABEL_14;
      }

      v7 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v8 = *(result + 8 * v7);
      if (v6 <= v8)
      {
        goto LABEL_16;
      }

      v9 = 0;
      v10 = *(a3 + 64);
      v11 = (v10 + (v5 << 6));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = (v10 + (v8 << 6));
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v26 = *v16;
      v27 = v17;
      v28 = v18;
      v29 = v19;
      do
      {
        v30[v9 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v26 + v9))), v13, *(&v26 + v9), 1), v14, *(&v26 + v9), 2), v15, *(&v26 + v9), 3);
        v9 += 16;
      }

      while (v9 != 64);
      v20 = v4 + 2;
      if (a2 <= v20)
      {
        goto LABEL_17;
      }

      v21 = *(result + 8 * v20);
      if (v6 <= v21)
      {
        goto LABEL_18;
      }

      v22 = v30[1];
      v23 = v30[2];
      v24 = v30[3];
      v25 = (v10 + (v21 << 6));
      *v25 = v30[0];
      v25[1] = v22;
      v25[2] = v23;
      v25[3] = v24;
      if (++v3 == a2 / 3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3 * v3, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v6, v26, v27, v28, v29);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v6);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v21, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_29::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 112);
      v10 = *(v9 + 16 * v6);
      v11 = vmulq_f32(v10, v10);
      *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
      *v11.f32 = vrsqrte_f32(v12);
      *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
      *(v9 + 16 * v8) = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_30::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[11];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[15];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v10 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = a3[14];
      v13 = *(a3[10] + 16 * v6);
      v14 = *(v12 + 16 * v9);
      v15 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
      v16 = vnegq_f32(v13);
      v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v16), v14, v15);
      v18 = vaddq_f32(v17, v17);
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v20 = vaddq_f32(v14, vmulq_laneq_f32(v19, v13, 3));
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v16), v19, v15);
      *(v12 + 16 * v11) = vaddq_f32(v20, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v10);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_31::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vsubq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_32::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 104);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 96) + 8 * v10) = vsub_f32(*(*(a3 + 96) + 8 * v6), *(*(a3 + 96) + 8 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_33::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *(a3 + 56);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 48);
      v10 = (v9 + 48 * v6);
      v11 = v10[1];
      v12 = vzip1q_s32(*v10, v11).u64[0];
      v13 = vzip2q_s32(vzip1q_s32(*v10, v10[2]), vdupq_lane_s32(*v11.i8, 1));
      v14 = vzip2q_s32(*v10, v11).u64[0];
      v15 = v10[2].i64[1];
      v16 = v9 + 48 * v8;
      *(v16 + 8) = v10[2];
      *v16 = v12;
      *(v16 + 16) = v13.i64[0];
      *(v16 + 24) = v13.i32[2];
      *(v16 + 32) = v14;
      *(v16 + 40) = v15;
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_34::__invoke(uint64_t result, unint64_t a2, void *a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a2 >= 2)
  {
    v6 = a2 >> 1;
    v7 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      v10 = a3[9];
      if (v10 <= v9)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      v12 = a3[7];
      if (v12 <= *v7)
      {
        goto LABEL_12;
      }

      v13 = a3[8] + (v9 << 6);
      a4.n128_u64[0] = *v13;
      a5.n128_u64[0] = *(v13 + 16);
      a6.n128_u64[0] = *(v13 + 32);
      a4.n128_u32[2] = *(v13 + 8);
      a5.n128_u32[2] = *(v13 + 24);
      a6.n128_u32[2] = *(v13 + 40);
      v14 = (a3[6] + 48 * v11);
      *v14 = a4;
      v14[1] = a5;
      v14[2] = a6;
      v7 += 2;
      if (!--v6)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_35::__invoke(uint64_t result, unint64_t a2, void *a3, double a4, double a5)
{
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = (result + 8);
    v7 = 1;
    LODWORD(a4) = 1.0;
    LODWORD(a5) = 0.25;
    while (a2 > v7 - 1)
    {
      v8 = *(v6 - 1);
      v9 = a3[7];
      if (v9 <= v8)
      {
        goto LABEL_19;
      }

      v10 = a3[6] + 48 * v8;
      v11 = *(v10 + 16);
      v12 = vmulq_f32(*v10, *v10);
      *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
      *v12.f32 = vrsqrte_f32(v13);
      *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
      v14 = vmulq_n_f32(*v10, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
      v15 = vmulq_f32(v11, v14);
      v16 = vmulq_f32(v14, v14);
      v17 = *(v10 + 32);
      v18 = vmulq_f32(v14, v17);
      *v18.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v16.i8), vzip2_s32(*v18.i8, *v16.i8)));
      v19 = vsubq_f32(v11, vmulq_n_f32(v14, (v15.f32[2] + vaddv_f32(*v15.f32)) / *&v18.i32[1]));
      v20 = vmulq_f32(v19, v19);
      *v16.i32 = v20.f32[2] + vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(v16.u32[0]);
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v16.u32[0], vmul_f32(*v20.f32, *v20.f32)));
      v21 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v16.u32[0], vmul_f32(*v20.f32, *v20.f32))).f32[0]);
      v22 = vsubq_f32(v17, vmulq_n_f32(v14, *v18.i32 / *&v18.i32[1]));
      v23 = vmulq_f32(v17, v21);
      v24 = vmulq_f32(v21, v21);
      *v23.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)), vadd_f32(vzip1_s32(*v23.i8, *v24.i8), vzip2_s32(*v23.i8, *v24.i8)));
      v25 = vsubq_f32(v22, vmulq_n_f32(v21, vdiv_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).f32[0]));
      v26 = vmulq_f32(v25, v25);
      *v24.i32 = v26.f32[2] + vaddv_f32(*v26.f32);
      *v26.f32 = vrsqrte_f32(v24.u32[0]);
      *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v24.u32[0], vmul_f32(*v26.f32, *v26.f32)));
      v27 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v24.u32[0], vmul_f32(*v26.f32, *v26.f32))).f32[0]);
      v28 = (v14.f32[0] + v21.f32[1]) + v27.f32[2];
      if (v28 >= 0.0)
      {
        v38 = sqrtf(v28 + 1.0);
        v39 = v38 + v38;
        v40 = vrecpe_f32(COERCE_UNSIGNED_INT(v38 + v38));
        v41 = vmul_f32(v40, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v40));
        v42 = vmul_f32(v41, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v41)).f32[0];
        *&v34 = (v21.f32[2] - v27.f32[1]) * v42;
        v35 = (v27.f32[0] - v14.f32[2]) * v42;
        v36 = (v14.f32[1] - v21.f32[0]) * v42;
        v43 = v39 * 0.25;
      }

      else
      {
        if (v14.f32[0] < v21.f32[1] || v14.f32[0] < v27.f32[2])
        {
          v44 = 1.0 - v14.f32[0];
          if (v21.f32[1] >= v27.f32[2])
          {
            v49 = sqrtf(v21.f32[1] + (v44 - v27.f32[2]));
            v50 = v49 + v49;
            v51 = vrecpe_f32(COERCE_UNSIGNED_INT(v49 + v49));
            v52 = vmul_f32(v51, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v51));
            v33 = vmul_f32(v52, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v52)).f32[0];
            *&v34 = (v14.f32[1] + v21.f32[0]) * v33;
            v35 = v50 * 0.25;
            v36 = (v21.f32[2] + v27.f32[1]) * v33;
            v37 = v27.f32[0] - v14.f32[2];
          }

          else
          {
            v45 = sqrtf((v44 - v21.f32[1]) + v27.f32[2]);
            v46 = v45 + v45;
            v47 = vrecpe_f32(COERCE_UNSIGNED_INT(v45 + v45));
            v48 = vmul_f32(v47, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v47));
            v33 = vmul_f32(v48, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v48)).f32[0];
            *&v34 = (v14.f32[2] + v27.f32[0]) * v33;
            v35 = (v21.f32[2] + v27.f32[1]) * v33;
            v36 = v46 * 0.25;
            v37 = v14.f32[1] - v21.f32[0];
          }
        }

        else
        {
          v29 = sqrtf(v14.f32[0] + ((1.0 - v21.f32[1]) - v27.f32[2]));
          *&v30 = v29 + v29;
          v31 = vrecpe_f32(v30);
          v32 = vmul_f32(v31, vrecps_f32(v30, v31));
          v33 = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
          *&v34 = *&v30 * 0.25;
          v35 = (v14.f32[1] + v21.f32[0]) * v33;
          v36 = (v14.f32[2] + v27.f32[0]) * v33;
          v37 = v21.f32[2] - v27.f32[1];
        }

        v43 = v37 * v33;
      }

      if (a2 <= v7)
      {
        goto LABEL_20;
      }

      v53 = *v6;
      v54 = a3[11];
      if (v54 <= *v6)
      {
        goto LABEL_21;
      }

      *(&v34 + 1) = v35;
      *(&v34 + 1) = __PAIR64__(LODWORD(v43), LODWORD(v36));
      *(a3[10] + 16 * v53) = v34;
      v7 += 2;
      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7 - 1, a2);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, a2);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v53, v54);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_36::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = a3[7];
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      v9 = a3[15];
      if (v9 <= *v4)
      {
        goto LABEL_12;
      }

      v10 = (a3[6] + 48 * v6);
      v11 = vmulq_f32(*v10, *v10);
      v12 = vmulq_f32(v10[1], v10[1]);
      v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
      v14 = vextq_s8(v11, v11, 8uLL);
      *v14.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.i8, *&vextq_s8(v12, v12, 8uLL)), v13));
      v15 = vmulq_f32(v10[2], v10[2]);
      v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
      *(a3[14] + 16 * v8) = v14;
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_37::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = a3[9];
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      v9 = a3[15];
      if (v9 <= *v4)
      {
        goto LABEL_12;
      }

      *(a3[14] + 16 * v8) = *(a3[8] + (v6 << 6) + 48);
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_38::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 4)
  {
    v3 = 0;
    v4 = a2 >> 2;
    v5 = (result + 16);
    while (a2 > v3)
    {
      v6 = *(v5 - 2);
      v7 = a3[15];
      if (v7 <= v6)
      {
        goto LABEL_14;
      }

      v8 = v3 + 1;
      if (a2 <= v3 + 1)
      {
        goto LABEL_15;
      }

      v9 = *(v5 - 1);
      if (v7 <= v9)
      {
        goto LABEL_16;
      }

      v10 = v3 + 2;
      if (a2 <= v3 + 2)
      {
        goto LABEL_17;
      }

      v11 = *v5;
      if (v7 <= *v5)
      {
        goto LABEL_18;
      }

      v12 = v3 + 3;
      if (a2 <= v3 + 3)
      {
        goto LABEL_19;
      }

      v13 = v5[1];
      v14 = a3[7];
      if (v14 <= v13)
      {
        goto LABEL_20;
      }

      v15 = a3[14];
      v16 = *(v15 + 16 * v6);
      v17 = *(v15 + 16 * v9);
      v18 = *(v15 + 16 * v11);
      v19 = (a3[6] + 48 * v13);
      *v19 = v16;
      v19[1] = v17;
      v19[2] = v18;
      v3 += 4;
      v5 += 4;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v7);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a2);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v14);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_39::__invoke(uint64_t result, unint64_t a2, void *a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  if (a2 >= 3)
  {
    v9 = 0;
    LODWORD(a4) = 1.0;
    while (1)
    {
      v10 = 3 * v9;
      if (a2 <= 3 * v9)
      {
        break;
      }

      v11 = *(result + 24 * v9);
      v12 = a3[15];
      if (v12 <= v11)
      {
        goto LABEL_14;
      }

      v13 = (a3[14] + 16 * v11);
      DWORD1(v14) = 0;
      *(&v14 + 1) = 0;
      v15 = v10 + 1;
      if (a2 <= v10 + 1)
      {
        goto LABEL_15;
      }

      v16 = *(result + 8 * v15);
      v17 = a3[11];
      if (v17 <= v16)
      {
        goto LABEL_16;
      }

      v18 = 0;
      LODWORD(v19) = 0;
      HIDWORD(v19) = 0;
      *(&v19 + 4) = v13[1];
      *&v20 = 0;
      *(&v20 + 1) = v13[2];
      v21 = (a3[10] + 16 * v16);
      v22 = *v21;
      v23 = v21[1];
      v24 = v23 + v23;
      v25 = v21[2];
      v26 = v21[3];
      v27 = v25 + v25;
      v28 = v22 * (v22 + v22);
      v29 = v23 * (v23 + v23);
      v30 = v25 * (v25 + v25);
      v31 = (v22 + v22) * v23;
      v32 = (v22 + v22) * v25;
      v33 = v24 * v25;
      v34 = (v22 + v22) * v26;
      a7.f32[0] = 1.0 - (v29 + v30);
      a7.f32[1] = v31 + (v27 * v26);
      a8.f32[0] = v31 - (v27 * v26);
      LODWORD(v14) = *v13;
      v41 = v14;
      v42 = v19;
      v43 = v20;
      do
      {
        a8.f32[2] = v33 + v34;
        a9.f32[2] = 1.0 - (v28 + v29);
        a8.f32[1] = 1.0 - (v28 + v30);
        a9.f32[1] = v33 - v34;
        a7.f32[2] = v32 - (v24 * v26);
        a9.f32[0] = v32 + (v24 * v26);
        *(&v44 + v18) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, COERCE_FLOAT(*(&v41 + v18))), a8, *(&v41 + v18), 1), a9, *(&v41 + v18), 2);
        v18 += 16;
      }

      while (v18 != 48);
      v35 = v10 + 2;
      if (a2 <= v35)
      {
        goto LABEL_17;
      }

      v36 = *(result + 8 * v35);
      v37 = a3[7];
      if (v37 <= v36)
      {
        goto LABEL_18;
      }

      v38 = v45;
      v39 = v46;
      a7 = v47;
      v40 = a3[6] + 48 * v36;
      *v40 = v44;
      *(v40 + 8) = v38;
      *(v40 + 16) = v39;
      *(v40 + 24) = DWORD2(v39);
      *(v40 + 32) = a7.i64[0];
      *(v40 + 40) = a7.i32[2];
      if (++v9 == a2 / 3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3 * v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12, v41, v42, v43);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v16, v17);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v37);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_40::__invoke(uint64_t result, unint64_t a2, void *a3, double a4)
{
  if (a2 >= 3)
  {
    v4 = a2 / 3;
    v5 = (result + 16);
    v6 = 2;
    LODWORD(a4) = 1.0;
    while (a2 > v6 - 2)
    {
      v7 = *(v5 - 2);
      v8 = a3[7];
      if (v8 <= v7)
      {
        goto LABEL_12;
      }

      v9 = v6 - 1;
      if (a2 <= v6 - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v5 - 1);
      v11 = a3[15];
      if (v11 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= v6)
      {
        goto LABEL_15;
      }

      v12 = *v5;
      v13 = a3[9];
      if (v13 <= *v5)
      {
        goto LABEL_16;
      }

      v14 = a3[6] + 48 * v7;
      *&v15 = *v14;
      v16 = *(v14 + 8);
      *&v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      *&v19 = *(v14 + 32);
      v20 = *(v14 + 40);
      v21 = a3[14] + 16 * v10;
      *(&v15 + 1) = v16;
      *(&v17 + 1) = v18;
      *(&v19 + 1) = v20;
      *&v22 = *v21;
      DWORD2(v22) = *(v21 + 8);
      HIDWORD(v22) = 1.0;
      v23 = (a3[8] + (v12 << 6));
      *v23 = v15;
      v23[1] = v17;
      v23[2] = v19;
      v23[3] = v22;
      v6 += 3;
      v5 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v13);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_41::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[7];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[15];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v10 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = a3[14];
      *(v12 + 16 * v11) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a3[6] + 48 * v6), COERCE_FLOAT(*(v12 + 16 * v9))), *(a3[6] + 48 * v6 + 16), *(v12 + 16 * v9), 1), *(a3[6] + 48 * v6 + 32), *(v12 + 16 * v9), 2);
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v10);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_42::__invoke(uint64_t result, unint64_t a2, void *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  if (a2 >= 3)
  {
    v6 = a2 / 3;
    v7 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v9 = *(v7 - 2);
      v10 = a3[9];
      if (v10 <= v9)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v7 - 1);
      v13 = a3[15];
      if (v13 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v7;
      if (v13 <= *v7)
      {
        goto LABEL_16;
      }

      v15 = a3[8] + (v9 << 6);
      v16 = a3[14];
      a4.i64[0] = *v15;
      a5.i64[0] = *(v15 + 16);
      a6.i64[0] = *(v15 + 32);
      a4.i32[2] = *(v15 + 8);
      a5.i32[2] = *(v15 + 24);
      a6.i32[2] = *(v15 + 40);
      a4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(*(v16 + 16 * v12))), a5, *(v16 + 16 * v12), 1), a6, *(v16 + 16 * v12), 2);
      *(v16 + 16 * v14) = a4;
      v7 += 3;
      if (!--v6)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v13);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v13);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_43::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[9];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[15];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v10 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = (a3[8] + (v6 << 6));
      v13 = a3[14];
      v14 = vaddq_f32(v12[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v12, COERCE_FLOAT(*(v13 + 16 * v9))), v12[1], *(v13 + 16 * v9), 1), v12[2], *(v13 + 16 * v9), 2));
      *(v13 + 16 * v11) = vdivq_f32(v14, vdupq_laneq_s32(v14, 3));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v10);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_44::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[10];
    v4 = a3[11];
    v7 = a3[4];
    v6 = a3[5];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      v14 = vmulq_f32(*(v5 + 16 * v10), *(v5 + 16 * v12));
      *(v7 + 4 * v13) = vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}