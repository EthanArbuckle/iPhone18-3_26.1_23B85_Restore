void sub_1CF46DAC0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((*(v3 + 448) & 3) != 0 || (*(v3 + 240) & 2) != 0 || *(v3 + 160) > 2u)
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = 0x80;
LABEL_12:
    *(a3 + 24) = v8;
    return;
  }

  if (!*(v3 + 160))
  {
    v7 = *(v3 + 144);
    if (v7 != 4096 && v7 != 0x2000 && v7 != 0x4000)
    {
      *a3 = 0xD000000000000016;
      *(a3 + 8) = 0x80000001CFA45910;
      *(a3 + 16) = v7;
      *(a3 + 24) = 0;
      return;
    }

    goto LABEL_11;
  }

  if (*(v3 + 160) != 1)
  {
    v5 = 0x80000001CFA458E0;
    v6 = 0xD000000000000020;
    goto LABEL_15;
  }

  if (*(v3 + 368) == 2)
  {
    v5 = 0x80000001CFA458A0;
    v6 = 0xD000000000000034;
LABEL_15:
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = 0;
    v8 = 1;
    goto LABEL_12;
  }

  v9 = *(v3 + 232);
  if (*(v3 + 8) != 255 && *(v3 + 248) && *(v3 + 344) == 1)
  {
    v5 = 0x80000001CFA45870;
    v6 = 0xD00000000000002ALL;
    goto LABEL_15;
  }

  sub_1CF3FA99C(a1, a2 & 1, v13);
  if (!v4)
  {
    if (LOBYTE(v13[0]) == 89)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0x80;
    }

    else
    {
      v11 = v13[1];
      *a3 = LOBYTE(v13[0]);
      *(a3 + 8) = v11;
      *(a3 + 16) = v9;
      *(a3 + 24) = 64;
      v12 = v9;
    }
  }
}

void sub_1CF46DC58(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((*(v3 + 448) & 3) != 0 || (*(v3 + 200) & 2) != 0 || *(v3 + 120) > 2u)
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = 0x80;
LABEL_12:
    *(a3 + 24) = v8;
    return;
  }

  if (!*(v3 + 120))
  {
    v7 = *(v3 + 104);
    if (v7 != 4096 && v7 != 0x2000 && v7 != 0x4000)
    {
      *a3 = 0xD000000000000016;
      *(a3 + 8) = 0x80000001CFA45910;
      *(a3 + 16) = v7;
      *(a3 + 24) = 0;
      return;
    }

    goto LABEL_11;
  }

  if (*(v3 + 120) != 1)
  {
    v5 = 0x80000001CFA458E0;
    v6 = 0xD000000000000020;
    goto LABEL_15;
  }

  if (*(v3 + 368) == 2)
  {
    v5 = 0x80000001CFA458A0;
    v6 = 0xD000000000000034;
LABEL_15:
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = 0;
    v8 = 1;
    goto LABEL_12;
  }

  v9 = *(v3 + 192);
  if (*v3 && *(v3 + 216) != 255 && *(v3 + 344) == 1)
  {
    v5 = 0x80000001CFA45870;
    v6 = 0xD00000000000002ALL;
    goto LABEL_15;
  }

  sub_1CF3F9E7C(a1, a2 & 1, v13);
  if (!v4)
  {
    if (LOBYTE(v13[0]) == 89)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0x80;
    }

    else
    {
      v11 = v13[1];
      *a3 = LOBYTE(v13[0]);
      *(a3 + 8) = v11;
      *(a3 + 16) = v9;
      *(a3 + 24) = 64;
      v12 = v9;
    }
  }
}

uint64_t sub_1CF46DDF0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v35, "<activity:");
  BYTE3(v35[1]) = 0;
  HIDWORD(v35[1]) = -369098752;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v14 = v13;
  v15 = *(v9 + 8);
  result = v15(v12, v8);
  v17 = v14 * 1000000000.0;
  if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = sub_1CF065A84(v17, a3);
  MEMORY[0x1D3868CC0](v18);

  v20 = v35[0];
  v19 = v35[1];
  strcpy(v35, " expiration:");
  BYTE5(v35[1]) = 0;
  HIWORD(v35[1]) = -5120;
  if ((a2 & 1) == 0)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v24 = v23;
    result = v15(v12, v8);
    v25 = v24 * 1000000000.0;
    if (COERCE__INT64(fabs(v24 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v25 > -9.22337204e18)
      {
        if (v25 < 9.22337204e18)
        {
          v22 = sub_1CF065A84(v25, a1);
          v21 = v26;
          goto LABEL_10;
        }

LABEL_22:
        __break(1u);
        return result;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = 0xE600000000000000;
  v22 = 0x3E656E6F6E3CLL;
LABEL_10:
  MEMORY[0x1D3868CC0](v22, v21);

  v27 = v35[0];
  v28 = v35[1];
  v35[0] = v20;
  v35[1] = v19;

  MEMORY[0x1D3868CC0](v27, v28);

  v30 = v35[0];
  v29 = v35[1];
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1CF9E7948();

  v35[0] = 0xD000000000000010;
  v35[1] = 0x80000001CFA46E80;
  if (a4)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (a4)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v31, v32);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v33 = v35[0];
  v34 = v35[1];
  v35[0] = v30;
  v35[1] = v29;

  MEMORY[0x1D3868CC0](v33, v34);

  return v35[0];
}

uint64_t sub_1CF46E134()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(*(v0 + 8) + 16))
  {
    return 0;
  }

  if (*(*(v0 + 16) + 16))
  {
    return 0;
  }

  if (*(*(v0 + 24) + 16))
  {
    return 0;
  }

  return (*(v0 + 41) ^ 1) & 1;
}

uint64_t sub_1CF46E194(void *a1)
{
  v2 = v1;
  if ((sub_1CF46E134() & 1) != 0 && !*(v1[4] + 16))
  {
    v119 = a1[3];
    v120 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v119);
    return sub_1CF4FB2BC(0xD000000000000022, 0x80000001CFA46E50, v119, v120);
  }

  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1CF9E7948();

  if (v1[5])
  {
    v5 = 0x6F6C667265766F20;
  }

  else
  {
    v5 = 0;
  }

  if (v1[5])
  {
    v6 = 0xED000021676E6977;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v5, v6);

  sub_1CF4FB2BC(0xD000000000000016, 0x80000001CFA46DB0, v3, v4);

  v8 = *v1;
  v124 = v1;
  if (!*(*v1 + 16))
  {
    goto LABEL_31;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);

  sub_1CF9E7948();

  v138 = *(v8 + 16);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46DD0, v9, v10);

  v12 = 0;
  v13 = v8 + 64;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v8 + 64);
  v17 = (v14 + 63) >> 6;
  v121 = v8;
  while (v16)
  {
LABEL_21:
    v23 = __clz(__rbit64(v16)) | (v12 << 6);
    v24 = *(v8 + 48) + 16 * v23;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v8 + 56) + 32 * v23;
    v128 = *v27;
    v28 = *(v27 + 8);
    v29 = *(v27 + 16);
    v125 = *(v27 + 24);
    v30 = a1[3];
    v133 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    if (!v26)
    {
      v139 = 0x284449636F64;
      v144 = 0xE600000000000000;
LABEL_14:
      v18 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v18);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v19 = v139;
      v20 = v144;
      goto LABEL_15;
    }

    if (v26 == 1)
    {
      v139 = 0x284449656C6966;
      v144 = 0xE700000000000000;
      goto LABEL_14;
    }

    if (v25)
    {
      v19 = 0x6873617274;
    }

    else
    {
      v19 = 1953460082;
    }

    if (v25)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

LABEL_15:
    v16 &= v16 - 1;
    MEMORY[0x1D3868CC0](v19, v20);

    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v21 = sub_1CF46DDF0(v128, v28, v29, v125);
    MEMORY[0x1D3868CC0](v21);

    sub_1CF4FB2BC(538976288, 0xE400000000000000, v30, v133);

    v8 = v121;
    v2 = v124;
  }

  while (1)
  {
    v22 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_120;
    }

    if (v22 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v22);
    ++v12;
    if (v16)
    {
      v12 = v22;
      goto LABEL_21;
    }
  }

LABEL_31:
  v31 = v2[1];
  if (*(v31 + 16))
  {
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);

    sub_1CF9E7948();

    v140 = *(v31 + 16);
    v34 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v34);

    sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA46DF0, v32, v33);

    v35 = 0;
    v122 = v31;
    v36 = v31 + 64;
    v37 = 1 << *(v31 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v31 + 64);
    v40 = (v37 + 63) >> 6;
    if (v39)
    {
      while (1)
      {
        v41 = v35;
LABEL_40:
        v42 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v43 = v42 | (v41 << 6);
        v44 = *(*(v122 + 48) + 8 * v43);
        v45 = *(v122 + 56) + 32 * v43;
        v129 = *v45;
        v126 = *(v45 + 8);
        v46 = *(v45 + 16);
        v47 = *(v45 + 24);
        v48 = a1[3];
        v134 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v48);
        v49 = v44;
        v50 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v50);

        MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
        v51 = sub_1CF46DDF0(v129, v126, v46, v47);
        MEMORY[0x1D3868CC0](v51);

        sub_1CF4FB2BC(538976288, 0xE400000000000000, v48, v134);

        if (!v39)
        {
          goto LABEL_36;
        }
      }
    }

    while (1)
    {
LABEL_36:
      v41 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_121;
      }

      if (v41 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v41);
      ++v35;
      if (v39)
      {
        v35 = v41;
        goto LABEL_40;
      }
    }

    v2 = v124;
  }

  v52 = v2[2];
  if (!*(v52 + 16) && !*(v2[3] + 16))
  {
    goto LABEL_95;
  }

  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);

  sub_1CF9E7948();

  result = v2[3];
  if (__OFADD__(*(v52 + 16), *(result + 16)))
  {
    goto LABEL_123;
  }

  v132 = v2[3];

  v55 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v55);

  sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46E10, v53, v54);

  v56 = 0;
  v57 = 1 << *(v52 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v52 + 56);
  v60 = (v57 + 63) >> 6;
LABEL_52:
  if (v59)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v64 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v64 >= v60)
    {
      break;
    }

    v59 = *(v52 + 56 + 8 * v64);
    ++v56;
    if (v59)
    {
      v56 = v64;
LABEL_57:
      v65 = *(v52 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v59))));
      v66 = *v65;
      v67 = *(v65 + 8);
      v68 = a1[3];
      v69 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v68);
      if (!v67)
      {
        v141 = 0x284449636F64;
        v145 = 0xE600000000000000;
        goto LABEL_50;
      }

      if (v67 == 1)
      {
        v141 = 0x284449656C6966;
        v145 = 0xE700000000000000;
LABEL_50:
        v61 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v61);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v62 = v141;
        v63 = v145;
      }

      else
      {
        if (v66)
        {
          v62 = 0x6873617274;
        }

        else
        {
          v62 = 1953460082;
        }

        if (v66)
        {
          v63 = 0xE500000000000000;
        }

        else
        {
          v63 = 0xE400000000000000;
        }
      }

      v59 &= v59 - 1;
      MEMORY[0x1D3868CC0](v62, v63);

      sub_1CF4FB2BC(0x3A736620202020, 0xE700000000000000, v68, v69);

      goto LABEL_52;
    }
  }

  v70 = 0;
  result = v132;
  v71 = 1 << *(v132 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v132 + 56);
  v74 = (v71 + 63) >> 6;
  v130 = *MEMORY[0x1E6967258];
  v127 = *MEMORY[0x1E6967298];
  v123 = *MEMORY[0x1E6967280];
  while (2)
  {
    if (v73)
    {
LABEL_77:
      v79 = *(*(result + 48) + ((v70 << 9) | (8 * __clz(__rbit64(v73)))));
      v80 = a1[3];
      v135 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v80);
      v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v83 = v82;
      if (v81 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v83 == v84)
      {
        v75 = v79;
      }

      else
      {
        v86 = sub_1CF9E8048();
        v87 = v79;

        if ((v86 & 1) == 0)
        {
          v88 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v90 = v89;
          if (v88 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v90 == v91)
          {

            v77 = 0x676E696B726F772ELL;
            v76 = 0xEB00000000746553;
          }

          else
          {
            v93 = sub_1CF9E8048();

            v77 = 0x676E696B726F772ELL;
            v76 = 0xEB00000000746553;
            if ((v93 & 1) == 0)
            {
              v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v96 = v95;
              if (v94 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v96 == v97)
              {
              }

              else
              {
                v98 = sub_1CF9E8048();

                if ((v98 & 1) == 0)
                {
                  v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v76 = v99;
                  goto LABEL_71;
                }
              }

              v76 = 0xE600000000000000;
              v77 = 0x68736172742ELL;
            }
          }

LABEL_71:
          v73 &= v73 - 1;
          MEMORY[0x1D3868CC0](v77, v76);

          sub_1CF4FB2BC(0x3A706620202020, 0xE700000000000000, v80, v135);

          result = v132;
          continue;
        }
      }

      v76 = 0xE500000000000000;
      v77 = 0x746F6F722ELL;
      goto LABEL_71;
    }

    break;
  }

  while (1)
  {
    v78 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_119;
    }

    if (v78 >= v74)
    {
      break;
    }

    v73 = *(v132 + 56 + 8 * v78);
    ++v70;
    if (v73)
    {
      v70 = v78;
      goto LABEL_77;
    }
  }

  v2 = v124;
LABEL_95:
  v100 = v2[4];
  if (!*(v100 + 16))
  {
    return result;
  }

  v101 = a1[3];
  v102 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v101);

  sub_1CF9E7948();

  v142 = *(v100 + 16);
  v103 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v103);

  sub_1CF4FB2BC(0xD000000000000014, 0x80000001CFA46E30, v101, v102);

  v104 = 0;
  v105 = v100 + 56;
  v106 = 1 << *(v100 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & *(v100 + 56);
  v109 = (v106 + 63) >> 6;
  v131 = v100;
  while (2)
  {
    if (v108)
    {
LABEL_106:
      v112 = *(v100 + 48) + ((v104 << 10) | (16 * __clz(__rbit64(v108))));
      v113 = *v112;
      v114 = *(v112 + 8);
      v115 = *(v112 + 9);
      v117 = a1[3];
      v116 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v117);
      if (v115)
      {
        v143 = 0x28726568746F2ELL;
        v146 = 0xE700000000000000;
        sub_1CEFD0988(v113, v114, 1);
        v110 = NSFileProviderItemIdentifier.description.getter();
      }

      else
      {
        v143 = 0x286E69616D2ELL;
        v146 = 0xE600000000000000;
        if (v114)
        {
          if (v114 != 1)
          {
            if (v113)
            {
              v110 = 0x6873617274;
            }

            else
            {
              v110 = 1953460082;
            }

            goto LABEL_100;
          }

          v137 = 0x284449656C6966;
        }

        else
        {
          v137 = 0x284449636F64;
        }

        v118 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v118);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v110 = v137;
      }

LABEL_100:
      MEMORY[0x1D3868CC0](v110);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v108 &= v108 - 1;
      MEMORY[0x1D3868CC0](v143, v146);

      sub_1CEFD0994(v113, v114, v115);
      sub_1CF4FB2BC(538976288, 0xE400000000000000, v117, v116);

      v100 = v131;
      continue;
    }

    break;
  }

  while (1)
  {
    v111 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v111 >= v109)
    {
    }

    v108 = *(v105 + 8 * v111);
    ++v104;
    if (v108)
    {
      v104 = v111;
      goto LABEL_106;
    }
  }

LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  return result;
}

void sub_1CF46F028(uint64_t a1)
{
  v3 = sub_1CF9E6118();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  v7 = *(*(*(*(v1 + 128) + 32) + 16) + 136);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  v10 = sub_1CF9E6888();

  v41 = "- Disk phase for ";
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1CF9E7948();

  v46 = 0xD000000000000017;
  v47 = 0x80000001CFA46150;
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v45 = *(a1 + 16);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xA3A736D65744920, 0xE800000000000000);
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v15 = sub_1CF9E67D8();
  MEMORY[0x1D3868CC0](v15);

  v16 = v46;
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39[1] = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = v10;
    v23 = v22;
    v45 = a1;
    v46 = v22;
    *v21 = 136315138;
    v24 = sub_1CF9E67D8();
    v26 = sub_1CEFD0DF0(v24, v25, &v46);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "💂🏼‍♀️  TTR-ing stuck items:\n%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v10 = v40;
    MEMORY[0x1D386CDC0](v27, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);
  }

  (*(v42 + 8))(v6, v43);
  v28 = *(v44 + 136);
  v29 = sub_1CF9E6888();
  v30 = sub_1CF9E6888();

  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v31 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v32 = sub_1CF9E6D28();
  v33 = sub_1CF9E6888();
  v34 = v10;
  v35 = [v34 pathComponents];
  v36 = sub_1CF9E6D48();

  v37 = *(v36 + 16);

  v38 = v34;
  if (v37 >= 2)
  {
    v38 = [v34 stringByDeletingLastPathComponent];
    if (!v38)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v38 = sub_1CF9E6888();
    }
  }

  [v28 requestTapToRadarWithTitle:v29 description:v30 keywords:v31 attachments:v32 displayReason:v33 providerID:v38];
}

void sub_1CF46F500(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = 1000000000 * v2;
  if ((v2 * 1000000000) >> 64 != (1000000000 * v2) >> 63)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v134 = a1 - v3;
  if (__OFSUB__(a1, v3))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  swift_beginAccess();
  v133 = v1;
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1CF1F90EC(*(v4 + 16), 0);
    v7 = sub_1CF1FAB04(&v138, (v6 + 4), v5, v4);
    swift_bridgeObjectRetain_n();
    sub_1CEFCB59C();
    if (v7 != v5)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = v8[2];
  v10 = a1;
  if (!v9)
  {
    v135 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v11 = 0;
  v12 = v8 + 9;
  v135 = MEMORY[0x1E69E7CC0];
  v13 = v8;
  v130 = v8 + 9;
  do
  {
    v14 = &v12[6 * v11++];
    while (1)
    {
      if (v11 - 1 >= v9)
      {
        goto LABEL_133;
      }

      if (*v14)
      {
        goto LABEL_15;
      }

      v17 = *(v14 - 5);
      v18 = *(v14 - 32);
      v19 = *(v14 - 3);
      v20 = *(v14 - 1);
      v21 = *(v14 - 16);
      if (v20 < v134)
      {
        v22 = *(v133 + 112);

        v23 = sub_1CF7DCFA4(v17, v18, v22);
        v10 = a1;

        v8 = v13;
        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      if (v19 >= v10)
      {
        v15 = 1;
      }

      else
      {
        v15 = v21;
      }

      if (v15 != 1)
      {
        v138 = 0;
        v139 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x206D657449202DLL, 0xE700000000000000);
        if (v18)
        {
          if (v18 == 1)
          {
            v136 = 0x284449656C6966;
            v137 = 0xE700000000000000;
            goto LABEL_27;
          }

          if (v17)
          {
            v25 = 0x6873617274;
          }

          else
          {
            v25 = 1953460082;
          }

          if (v17)
          {
            v26 = 0xE500000000000000;
          }

          else
          {
            v26 = 0xE400000000000000;
          }
        }

        else
        {
          v136 = 0x284449636F64;
          v137 = 0xE600000000000000;
LABEL_27:
          v24 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v24);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v25 = v136;
          v26 = v137;
        }

        MEMORY[0x1D3868CC0](v25, v26);

        MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA460D0);
        goto LABEL_44;
      }

      v9 = v8[2];
LABEL_15:
      v14 += 48;
      v16 = v11++ == v9;
      if (v16)
      {
        goto LABEL_56;
      }
    }

    v138 = 0;
    v139 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA46100);
    if (v18)
    {
      if (v18 == 1)
      {
        v136 = 0x284449656C6966;
        v137 = 0xE700000000000000;
        goto LABEL_36;
      }

      if (v17)
      {
        v28 = 0x6873617274;
      }

      else
      {
        v28 = 1953460082;
      }

      if (v17)
      {
        v29 = 0xE500000000000000;
      }

      else
      {
        v29 = 0xE400000000000000;
      }
    }

    else
    {
      v136 = 0x284449636F64;
      v137 = 0xE600000000000000;
LABEL_36:
      v27 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v27);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v28 = v136;
      v29 = v137;
    }

    MEMORY[0x1D3868CC0](v28, v29);

    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA46090);
    v136 = v20;
    sub_1CF064F48();
    v30 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v30);

LABEL_44:
    v31 = v138;
    v32 = v139;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v33 = v135;
    }

    else
    {
      v33 = sub_1CF0710C0(0, *(v135 + 16) + 1, 1, v135);
    }

    v12 = v130;
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1CF0710C0((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v135 = v33;
    v36 = &v33[16 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v32;
    swift_beginAccess();
    sub_1CF6E9D5C(&v136, v17, v18);
    sub_1CEFD0994(v136, v137, SBYTE1(v137));
    *(v133 + 72) = 1;
    v37 = *(v133 + 80);
    v38 = sub_1CF7BF2C0(v17, v18);
    if (v39)
    {
      v40 = v38;
      v41 = *(v133 + 80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v133 + 80);
      v136 = v43;
      *(v133 + 80) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D4F34();
        v43 = v136;
      }

      sub_1CF1D134C(v40, v43);
      *(v133 + 80) = v43;
    }

    swift_endAccess();
    v10 = a1;
    *(v133 + 72) = 1;
    v8 = v13;
    v9 = v13[2];
  }

  while (v9 != v11);
LABEL_56:

  v44 = *(v133 + 88);
  v45 = *(v44 + 16);
  if (!v45)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v48 = v46[2];
    v49 = a1;
    if (v48)
    {
      v50 = 0;
      v51 = v46 + 7;
      do
      {
        v52 = &v51[5 * v50++];
        while (1)
        {
          if (v50 - 1 >= v48)
          {
            goto LABEL_134;
          }

          v54 = *(v52 - 3);
          v53 = *(v52 - 2);
          v55 = *v52;
          v56 = *(v52 - 8);
          if (*v52 >= v134)
          {
            v60 = v54;
          }

          else
          {
            v57 = *(v133 + 112);
            v58 = v54;

            v59 = v58;
            LOBYTE(v58) = sub_1CF7DCFA4(v54, 256, v57);

            v49 = a1;

            if ((v58 & 1) == 0)
            {
              v138 = 0;
              v139 = 0xE000000000000000;
              sub_1CF9E7948();
              MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46070);
              v71 = NSFileProviderItemIdentifier.description.getter();
              MEMORY[0x1D3868CC0](v71);

              MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA46090);
              v136 = v55;
              sub_1CF064F48();
              v72 = sub_1CF9E7F98();
              MEMORY[0x1D3868CC0](v72);

              v73 = v138;
              v74 = v139;
              v75 = swift_isUniquelyReferenced_nonNull_native();
              if (v75)
              {
                v76 = v135;
              }

              else
              {
                v76 = sub_1CF0710C0(0, *(v135 + 16) + 1, 1, v135);
              }

              v51 = v46 + 7;
              v78 = *(v76 + 2);
              v77 = *(v76 + 3);
              if (v78 >= v77 >> 1)
              {
                v76 = sub_1CF0710C0((v77 > 1), v78 + 1, 1, v76);
              }

              *(v76 + 2) = v78 + 1;
              v135 = v76;
              v79 = &v76[16 * v78];
              *(v79 + 4) = v73;
              *(v79 + 5) = v74;
              v69 = v133;
              swift_beginAccess();
              v70 = v59;
              goto LABEL_85;
            }
          }

          v61 = v53 >= v49 ? 1 : v56;
          if (v61 != 1)
          {
            break;
          }

          v48 = v46[2];
          v52 += 5;
          v16 = v50++ == v48;
          if (v16)
          {
            goto LABEL_89;
          }
        }

        v138 = 0;
        v139 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x206D657449202DLL, 0xE700000000000000);
        v62 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v62);

        MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA46040);
        v63 = v138;
        v64 = v139;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v65 = v135;
        }

        else
        {
          v65 = sub_1CF0710C0(0, *(v135 + 16) + 1, 1, v135);
        }

        v51 = v46 + 7;
        v67 = *(v65 + 2);
        v66 = *(v65 + 3);
        if (v67 >= v66 >> 1)
        {
          v65 = sub_1CF0710C0((v66 > 1), v67 + 1, 1, v65);
        }

        *(v65 + 2) = v67 + 1;
        v135 = v65;
        v68 = &v65[16 * v67];
        *(v68 + 4) = v63;
        *(v68 + 5) = v64;
        v69 = v133;
        swift_beginAccess();
        v70 = v54;
LABEL_85:
        v80 = v70;
        sub_1CF6E9D5C(&v136, v54, 256);
        sub_1CEFD0994(v136, v137, SBYTE1(v137));
        *(v69 + 72) = 1;
        sub_1CF1CEABC(v80);
        swift_endAccess();

        *(v69 + 72) = 1;
        v48 = v46[2];
        v49 = a1;
      }

      while (v48 != v50);
    }

LABEL_89:

    v81 = *(v133 + 96);
    v84 = *(v81 + 56);
    v83 = v81 + 56;
    v82 = v84;
    v85 = 1 << *(*(v133 + 96) + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & v82;
    v88 = (v85 + 63) >> 6;
    v132 = *(v133 + 96);

    v89 = 0;
    if (!v87)
    {
      while (1)
      {
LABEL_92:
        v90 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          __break(1u);
          goto LABEL_132;
        }

        if (v90 >= v88)
        {
          break;
        }

        v87 = *(v83 + 8 * v90);
        ++v89;
        if (v87)
        {
          v89 = v90;
          goto LABEL_96;
        }
      }

      v106 = v133;
      v107 = *(v133 + 96);
      *(v133 + 96) = MEMORY[0x1E69E7CD0];

      *(v133 + 72) = 1;
      v108 = *(v133 + 104);
      v109 = 1 << *(v108 + 32);
      v110 = -1;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      v111 = v110 & *(v108 + 56);
      v112 = (v109 + 63) >> 6;
      v113 = *(v133 + 104);

      v114 = 0;
      if (v111)
      {
        goto LABEL_121;
      }

      while (1)
      {
        v115 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          break;
        }

        if (v115 >= v112)
        {

          v129 = *(v106 + 104);
          *(v106 + 104) = MEMORY[0x1E69E7CD0];

          *(v106 + 72) = 1;
          if (*(v135 + 16))
          {
            sub_1CF7F2FB4();
            sub_1CF46F028(v135);
          }

          return;
        }

        v111 = *(v108 + 56 + 8 * v115);
        ++v114;
        if (v111)
        {
          v114 = v115;
          do
          {
LABEL_121:
            v116 = *(*(v108 + 48) + ((v114 << 9) | (8 * __clz(__rbit64(v111)))));
            v138 = 0;
            v139 = 0xE000000000000000;
            v117 = v116;
            sub_1CF9E7948();
            MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA460B0);
            v118 = NSFileProviderItemIdentifier.description.getter();
            MEMORY[0x1D3868CC0](v118);

            v120 = v138;
            v119 = v139;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v121 = v135;
            }

            else
            {
              v121 = sub_1CF0710C0(0, *(v135 + 16) + 1, 1, v135);
            }

            v123 = *(v121 + 2);
            v122 = *(v121 + 3);
            if (v123 >= v122 >> 1)
            {
              v121 = sub_1CF0710C0((v122 > 1), v123 + 1, 1, v121);
            }

            v111 &= v111 - 1;
            *(v121 + 2) = v123 + 1;
            v135 = v121;
            v124 = &v121[16 * v123];
            *(v124 + 4) = v120;
            *(v124 + 5) = v119;
            swift_beginAccess();
            sub_1CF6E9D5C(&v136, v117, 256);
            v125 = v136;
            v126 = BYTE1(v137);
            v127 = v137;
            swift_endAccess();
            v128 = v125;
            v106 = v133;
            sub_1CEFD0994(v128, v127, v126);
            *(v133 + 72) = 1;
          }

          while (v111);
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    while (1)
    {
LABEL_96:
      v91 = *(v132 + 48) + ((v89 << 10) | (16 * __clz(__rbit64(v87))));
      v92 = *v91;
      v93 = *(v91 + 8);
      v138 = 0;
      v139 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA460B0);
      if (v93)
      {
        if (v93 != 1)
        {
          if (v92)
          {
            v95 = 0x6873617274;
          }

          else
          {
            v95 = 1953460082;
          }

          if (v92)
          {
            v96 = 0xE500000000000000;
          }

          else
          {
            v96 = 0xE400000000000000;
          }

          goto LABEL_107;
        }

        v136 = 0x284449656C6966;
        v137 = 0xE700000000000000;
      }

      else
      {
        v136 = 0x284449636F64;
        v137 = 0xE600000000000000;
      }

      v94 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v94);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v95 = v136;
      v96 = v137;
LABEL_107:
      MEMORY[0x1D3868CC0](v95, v96);

      v97 = v138;
      v98 = v139;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v99 = v135;
      }

      else
      {
        v99 = sub_1CF0710C0(0, *(v135 + 16) + 1, 1, v135);
      }

      v101 = *(v99 + 2);
      v100 = *(v99 + 3);
      if (v101 >= v100 >> 1)
      {
        v99 = sub_1CF0710C0((v100 > 1), v101 + 1, 1, v99);
      }

      v87 &= v87 - 1;
      *(v99 + 2) = v101 + 1;
      v135 = v99;
      v102 = &v99[16 * v101];
      *(v102 + 4) = v97;
      *(v102 + 5) = v98;
      swift_beginAccess();
      sub_1CF6E9D5C(&v136, v92, v93);
      v103 = v136;
      v104 = BYTE1(v137);
      v105 = v137;
      swift_endAccess();
      sub_1CEFD0994(v103, v105, v104);
      *(v133 + 72) = 1;
      if (!v87)
      {
        goto LABEL_92;
      }
    }
  }

  v46 = sub_1CF1F9050(*(v44 + 16), 0);
  v47 = sub_1CF1FA994(&v138, (v46 + 4), v45, v44);
  swift_bridgeObjectRetain_n();
  sub_1CEFCB59C();
  if (v47 == v45)
  {

    goto LABEL_60;
  }

LABEL_138:
  __break(1u);
}

id sub_1CF4703B8()
{
  if (*(v0 + 168))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + 168))
    {
      v1 = *(v0 + 168);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v2 = *(v0 + 168);
    }
  }

  *(v0 + 168) = 0;
  swift_unknownObjectRelease();

  return sub_1CF47045C();
}

id sub_1CF47045C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 176);
  if (*(v0 + 121) == 1)
  {
    if (*(v0 + 176))
    {
      return result;
    }

    *(v0 + 176) = 1;
    v3 = qword_1EDEACB30;
    v4 = &selRef_addWatcher_;
  }

  else
  {
    if ((*(v0 + 176) & 1) == 0)
    {
      return result;
    }

    *(v0 + 176) = 0;
    v3 = qword_1EDEACB30;
    v4 = &selRef_removeWatcher_;
  }

  if (v3 != -1)
  {
    swift_once();
  }

  return [qword_1EDEBBB20 *v4];
}

id sub_1CF470518()
{
  v1 = v0;
  v2 = sub_1CF9E6388();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = sub_1CF9E6498();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v46 - v15;
  v16 = sub_1CF9E6448();
  ObjectType = *(v16 - 8);
  v56 = v16;
  v17 = *(ObjectType + 64);
  MEMORY[0x1EEE9AC00](v16);
  v54 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1CF9E73D8();
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF47045C();
  result = swift_beginAccess();
  if (!*(*(v0 + 80) + 16) && !*(*(v0 + 88) + 16) && !*(*(v0 + 96) + 16) && !*(*(v0 + 104) + 16) && (*(v0 + 121) & 1) == 0)
  {
    return sub_1CF4703B8();
  }

  v51 = v9;
  if (!*(v0 + 168))
  {
    v46 = v7;
    v24 = *(v0 + 128);
    v25 = *(*(*(v24 + 32) + 16) + 136);
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    v50 = v3;

    sub_1CF9E6AE8();

    v48 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v28 = *(v24 + 64);
    v58 = MEMORY[0x1E69E7CC0];
    sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v49 = v11;
    v47 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v29 = v49;
    sub_1CF9E77B8();
    v30 = v50;
    v31 = sub_1CF9E73E8();

    (*(v53 + 8))(v22, v19);
    v32 = *(v1 + 168);
    *(v1 + 168) = v31;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v33 = swift_allocObject();
    swift_weakInit();

    v34 = v54;
    sub_1CF042F9C();
    sub_1CEFD5828(0, v34, sub_1CF482C8C, v33);
    swift_unknownObjectRelease();

    (*(ObjectType + 8))(v34, v56);

    if (*(v1 + 168))
    {
      v35 = *(v1 + 168);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v36 = v52;
      sub_1CF9E6478();
      v53 = *(v1 + 144);
      v56 = v10;
      v37 = v51;
      *v51 = v53;
      v38 = *MEMORY[0x1E69E7F48];
      v48 = *(v30 + 104);
      v48(v37, v38, v2);
      MEMORY[0x1D3868740](v36, v37);
      v39 = v29;
      v40 = v2;
      v41 = *(v30 + 8);
      v41(v37, v40);
      v54 = *(v39 + 8);
      v54(v36, v56);
      *v37 = v53;
      v48(v37, v38, v40);
      v42 = v46;
      v43 = ObjectType;
      sub_1CEFD5BD8(v46);
      v44 = v57;
      MEMORY[0x1D3869770](v57, v37, v42, v43);
      swift_unknownObjectRelease();
      v41(v42, v40);
      v41(v37, v40);
      result = (v54)(v44, v56);
      if (*(v1 + 168))
      {
        v45 = *(v1 + 168);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7428();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1CF470BA0()
{
  v0 = sub_1CF9E5CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v12 = sub_1CF9E6108();
    v13 = sub_1CF9E7298();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1CEFC7000, v12, v13, "💂🏼‍♀️  evaluating stuck imports", v14, 2u);
      MEMORY[0x1D386CDC0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v16 = v15;
    result = (*(v1 + 8))(v4, v0);
    v17 = v16 * 1000000000.0;
    if (COERCE__INT64(fabs(v16 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        sub_1CF46F500(v17);
        sub_1CF470518();
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1CF470E34(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v35 - v13;
  result = swift_beginAccess();
  v16 = *(*(v4 + 80) + 16);
  v17 = *(*(v4 + 88) + 16);
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(*(v4 + 96) + 16);
  v18 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = *(*(v4 + 104) + 16);
  v18 = __OFADD__(v21, v22);
  v23 = v21 + v22;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = *(*(v4 + 112) + 16);
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (*(v4 + 120))
  {
    if (v25 <= 29)
    {
      v26 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E7298();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v35[5] = v3;
        v30 = v29;
        *v29 = 0;
        _os_log_impl(&dword_1CEFC7000, v27, v28, "💂🏼‍♀️ we can track more items", v29, 2u);
        MEMORY[0x1D386CDC0](v30, -1, -1);
      }

      (*(v8 + 8))(v14, v7);
      *(v4 + 120) = 0;
      *(v4 + 72) = 1;
      return sub_1CF471C20(a1, a2);
    }
  }

  else if (v25 > 50)
  {
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E7298();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v25;
      _os_log_impl(&dword_1CEFC7000, v32, v33, "💂🏼‍♀️ we're tracking to many importing items (%ld)", v34, 0xCu);
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    result = (*(v8 + 8))(v12, v7);
    *(v4 + 120) = 1;
    *(v4 + 72) = 1;
  }

  return result;
}

uint64_t sub_1CF471120(void *a1, unsigned __int8 a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v70 = a3;
  v6 = v5;
  v11 = sub_1CF9E6118();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ItemMetadata();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v63[-v21];
  v78 = a1;
  v79 = a2;
  v76 = a4;
  v77 = a5;
  swift_beginAccess();
  sub_1CF8DDA6C(a1, a2, &v74);
  v23 = v74;
  v24 = v75;
  swift_endAccess();
  v25 = v23;
  v26 = v6;
  sub_1CF47FDFC(v25, v24);
  *(v6 + 72) = 1;
  v27 = v71;
  result = sub_1CF470E34(a4, a5);
  if (v27)
  {
    return result;
  }

  v68 = v18;
  v71 = v14;
  if (*(v6 + 120))
  {
    return result;
  }

  v29 = *(**(*(v6 + 128) + 32) + 240);

  v29(&v78, 1, &v76, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  v66 = 0;
  v67 = v26;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v31 = (*(*(v30 - 8) + 48))(v22, 1, v30);
  v65 = v11;
  if (v31 != 1)
  {
    v35 = v68;
    sub_1CEFDA214(&v22[*(v30 + 48)], v68, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v22, &unk_1EC4BE360, &qword_1CF9FE650);
    v36 = *(v35 + 4);
    v37 = *(v35 + 8);
    result = sub_1CEFD5278(v35, type metadata accessor for ItemMetadata);
    v34 = v71;
    if (v37)
    {
      v68 = 0;
      v64 = 1;
      v32 = a4;
      v33 = v69;
      goto LABEL_11;
    }

    v38 = *(v67 + 160);
    v39 = (v36 / 0x3E8 + 1) * v38;
    if (((v36 / 0x3E8 + 1) * v38) >> 64 == v39 >> 63)
    {
      v40 = 1000000000 * v39;
      if ((v39 * 1000000000) >> 64 == (1000000000 * v39) >> 63)
      {
        v32 = a4;
        v33 = v69;
        if (!__OFADD__(v70, v40))
        {
          v68 = (v70 + v40);
          v64 = 0;
          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  sub_1CEFCCC44(v22, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v68 = 0;
  v64 = 1;
  v32 = a4;
  v33 = v69;
  v34 = v71;
LABEL_11:
  v41 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v42 = v78;
  v43 = v79;
  v44 = sub_1CF9E6108();
  v45 = sub_1CF9E7298();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v71 = v32;
    v47 = a5;
    v48 = v34;
    v49 = v46;
    v50 = swift_slowAlloc();
    v74 = v50;
    v51 = v43;
    v52 = v50;
    *v49 = 136315138;
    v72 = v42;
    v73 = v51;
    v54 = VFSItemID.description.getter(v50, v53);
    v56 = sub_1CEFD0DF0(v54, v55, &v74);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_1CEFC7000, v44, v45, "💂🏼‍♀️ start monitoring import:disk for %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v49, -1, -1);

    v57 = v48;
    a5 = v47;
    v32 = v71;
    (*(v33 + 8))(v57, v65);
  }

  else
  {

    (*(v33 + 8))(v34, v65);
  }

  v58 = v78;
  v59 = v79;
  v60 = v67;
  swift_beginAccess();
  v61 = *(v60 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v60 + 80);
  *(v60 + 80) = 0x8000000000000000;
  sub_1CF1D4C68(v68, v64, v70, 0, v58, v59, isUniquelyReferenced_nonNull_native);
  *(v60 + 80) = v74;
  swift_endAccess();
  *(v60 + 72) = 1;
  return sub_1CF470E34(v32, a5);
}

uint64_t sub_1CF4716AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v5 = v4;
  v9 = sub_1CF9E6118();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for ItemMetadata();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60[-v19];
  v76 = a1;
  v74 = a3;
  v75 = a4;
  swift_beginAccess();
  v21 = a1;
  sub_1CF8DDA6C(a1, 256, &v72);
  v22 = v72;
  v23 = v73;
  swift_endAccess();

  v24 = v22;
  v25 = v5;
  sub_1CF47FDFC(v24, v23);
  *(v5 + 72) = 1;
  v26 = v70;
  result = sub_1CF470E34(a3, a4);
  if (v26)
  {
    return result;
  }

  v66 = v12;
  v70 = a3;
  v65 = a4;
  v28 = v69;
  if (*(v5 + 120))
  {
    return result;
  }

  v29 = *(**(*(v5 + 128) + 40) + 240);

  v29(&v76, 1, &v74, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  v63 = 0;
  v64 = v25;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if ((*(*(v30 - 8) + 48))(v20, 1, v30) != 1)
  {
    v31 = v16;
    sub_1CEFDA214(&v20[*(v30 + 48)], v16, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v20, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v32 = *(v16 + 1);
    v33 = v16[8];
    result = sub_1CEFD5278(v31, type metadata accessor for ItemMetadata);
    if (v33)
    {
      goto LABEL_7;
    }

    v37 = *(v64 + 160);
    v38 = (v32 / 0x3E8 + 1) * v37;
    if (((v32 / 0x3E8 + 1) * v37) >> 64 == v38 >> 63)
    {
      v39 = 1000000000 * v38;
      if ((v38 * 1000000000) >> 64 == (1000000000 * v38) >> 63)
      {
        v34 = v28 + v39;
        v36 = v66;
        if (!__OFADD__(v28, v39))
        {
          LODWORD(v35) = 0;
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_1CEFCCC44(v20, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_7:
  v34 = 0;
  LODWORD(v35) = 1;
  v36 = v66;
LABEL_12:
  v40 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v41 = v21;
  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7298();
  v44 = os_log_type_enabled(v42, v43);
  v62 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61 = v35;
    v35 = v46;
    v71[0] = v46;
    *v45 = 136315138;
    v47 = v34;
    v48 = NSFileProviderItemIdentifier.description.getter();
    v50 = v49;

    v51 = sub_1CEFD0DF0(v48, v50, v71);

    *(v45 + 4) = v51;
    v34 = v47;
    _os_log_impl(&dword_1CEFC7000, v42, v43, "💂🏼‍♀️ start monitoring import:provider for %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v52 = v35;
    LOBYTE(v35) = v61;
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);

    (*(v67 + 8))(v66, v68);
  }

  else
  {

    (*(v67 + 8))(v36, v68);
  }

  v53 = v28;
  v54 = v65;
  v55 = v70;
  v56 = v64;
  swift_beginAccess();
  v57 = v62;
  v58 = *(v56 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v56 + 88);
  sub_1CF1D4ACC(v34, v35, v53, 0, v57, isUniquelyReferenced_nonNull_native);
  *(v56 + 88) = v72;

  swift_endAccess();
  *(v56 + 72) = 1;
  return sub_1CF470E34(v55, v54);
}

uint64_t sub_1CF471C20(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  result = swift_beginAccess();
  if ((*(v3 + 120) & 1) == 0)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v13 = v12;
    result = (*(v7 + 8))(v10, v6);
    v14 = v13 * 1000000000.0;
    if (COERCE__INT64(fabs(v13 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        v15 = *(*(v3 + 128) + 16);
        MEMORY[0x1EEE9AC00](result);
        *(&v18 - 4) = v3;
        *(&v18 - 3) = &v19;
        *(&v18 - 2) = v16;
        v17 = *(*v15 + 264);

        v17(&v19, sub_1CF482C94, &v18 - 6, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1CF471E4C(void *a1, unsigned __int8 a2, void *a3, char a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 0xFF)
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    swift_beginAccess();
    v22 = *(a5 + 112);
    v16 = a3;

    v23 = sub_1CF7DCFA4(a3, 256, v22);

    if ((v23 & 1) == 0)
    {
      swift_beginAccess();
      v16 = v16;
      sub_1CF6EA6C4(v36, v16);
      v31 = v36[0];
      swift_endAccess();

      *(a5 + 72) = 1;
      sub_1CF470E34(a6, a7);
      goto LABEL_25;
    }

LABEL_11:

    goto LABEL_21;
  }

  if (a3)
  {
    if (a4 != 3)
    {
      if (a4 != 4)
      {
LABEL_21:
        swift_beginAccess();
LABEL_22:
        v26 = *(a5 + 120) ^ 1;
        return v26 & 1;
      }

      swift_beginAccess();
      v15 = *(a5 + 112);
      v16 = a3;

      v17 = sub_1CF7DCFA4(a3, 256, v15);

      if ((v17 & 1) == 0)
      {
        if (*(*(a5 + 88) + 16))
        {
          v19 = *(a5 + 96);
          v18 = *(a5 + 104);
          v20 = *(a5 + 112);
          v33 = *(a5 + 80);

          sub_1CEFE863C(v16);
          if (v21)
          {

            goto LABEL_21;
          }
        }

        sub_1CF4716AC(v16, a8, a6, a7);
LABEL_25:

        if (v8)
        {
          return v26 & 1;
        }

        goto LABEL_21;
      }

      goto LABEL_11;
    }

    swift_beginAccess();
    v27 = *(a5 + 112);
    v28 = a3;

    v29 = sub_1CF7DCFA4(a1, a2, v27);

    if (v29 & 1) != 0 || *(*(a5 + 80) + 16) && (sub_1CF7BF2C0(a1, a2), (v30))
    {

      goto LABEL_21;
    }

    sub_1CF471120(a1, a2, a8, a6, a7);

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    swift_beginAccess();
    v24 = *(a5 + 112);

    v25 = sub_1CF7DCFA4(a1, a2, v24);

    if (v25)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    sub_1CF6E9500(v36, a1, a2);
    swift_endAccess();
    *(a5 + 72) = 1;
    sub_1CF470E34(a6, a7);
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  return v26 & 1;
}

id sub_1CF4721F4(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v179 = a3;
  v178 = a2;
  v4 = sub_1CF9E6118();
  v173 = *(v4 - 8);
  v174 = v4;
  v5 = *(v173 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v172 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v172 - v8);
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v176 = v10;
  v177 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v175 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &qword_1CF9FE5A8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v172 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v172 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v172 - v26);
  sub_1CEFCCBDC(a1, &v172 - v26, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 21)
  {
    if (EnumCaseMultiPayload != 22)
    {
      if (EnumCaseMultiPayload == 44)
      {
        sub_1CF7F2FB4();
      }

      goto LABEL_134;
    }

    sub_1CEFCCBDC(v27, v22, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v14 = *v22;
    if (*v22 < 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      v67 = swift_dynamicCastClass();
      if (v67)
      {
        v66 = v67;
        v29 = v180;
LABEL_42:
        sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
        swift_beginAccess();
        v68 = *(v66 + 272);
        v69 = *(v66 + 280);

        if (v69 == 255)
        {
          goto LABEL_135;
        }

        v25 = v185;
        v35 = sub_1CF387C98(v185);
        v27 = &v183;
        v19 = sub_1CF598798(&v183, v68, v69);
        if (*(v70 + 24) != 2)
        {
          v9 = v70;
          v77 = v175;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v79 = v78;
          (*(v177 + 1))(v77, v176);
          v40 = v79 * 1000000000.0;
          if (COERCE__INT64(fabs(v79 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v40 > -9.22337204e18)
            {
              if (v40 < 9.22337204e18)
              {
                goto LABEL_53;
              }

LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_44:
        (v19)(&v183, 0);
        (v35)(v185, 0);
        goto LABEL_135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
      v80 = swift_dynamicCastClass();
      v29 = v180;
      if (v80)
      {
LABEL_57:
        v81 = v80;
        sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v35 = *(v81 + 144);

        v27 = v185;
        v9 = sub_1CF387C98(v185);
        v22 = &v183;
        v19 = sub_1CF598870(&v183, v35);
        if (*(v82 + 24) == 2)
        {
          (v19)(&v183, 0);

          v9(v185, 0);
          goto LABEL_135;
        }

        v25 = v82;
        v95 = v175;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v97 = v96;
        (*(v177 + 1))(v95, v176);
        v98 = v97 * 1000000000.0;
        if (COERCE__INT64(fabs(v97 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v98 > -9.22337204e18)
          {
            if (v98 < 9.22337204e18)
            {
              *(v25 + 2) = v98;
              (v19)(&v183, 0);

              v9(v185, 0);
              goto LABEL_135;
            }

            goto LABEL_151;
          }

LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
      v110 = swift_dynamicCastClass();
      if (!v110)
      {
        goto LABEL_133;
      }

      v111 = v110 + *(*v110 + 632);
      swift_beginAccess();
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if ((*(*(v112 - 8) + 48))(v111, 1, v112))
      {
        goto LABEL_133;
      }

      v113 = *(v111 + 8);
      v114 = sub_1CF387C98(v185);
      v116 = sub_1CF598870(&v183, v113);
      if (*(v115 + 24) == 2)
      {
        (v116)(&v183, 0);
        v114(v185, 0);
      }

      else
      {
        v167 = v115;
        v168 = v175;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v170 = v169;
        result = (*(v177 + 1))(v168, v176);
        v171 = v170 * 1000000000.0;
        if (COERCE__INT64(fabs(v170 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (v171 <= -9.22337204e18)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (v171 >= 9.22337204e18)
        {
LABEL_168:
          __break(1u);
          return result;
        }

        *(v167 + 16) = v171;
        (v116)(&v183, 0);
        v114(v185, 0);
      }

      goto LABEL_133;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v31 = v32;
      v29 = v180;
LABEL_15:
      sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v33 = *(v31 + 144);
      v34 = *(v31 + 152);

      v25 = v185;
      v35 = sub_1CF387C98(v185);
      v27 = &v183;
      v19 = sub_1CF598798(&v183, v33, v34);
      if (*(v36 + 24) != 2)
      {
        v9 = v36;
        v37 = v175;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v39 = v38;
        (*(v177 + 1))(v37, v176);
        v40 = v39 * 1000000000.0;
        if (COERCE__INT64(fabs(v39 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v40 > -9.22337204e18)
        {
          if (v40 >= 9.22337204e18)
          {
            __break(1u);
            goto LABEL_20;
          }

LABEL_53:
          *(v9 + 2) = v40;
          (v19)(&v183, 0);
          (v35)(v185, 0);
          goto LABEL_135;
        }

        __break(1u);
        goto LABEL_143;
      }

      goto LABEL_44;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
    v71 = swift_dynamicCastClass();
    if (v71)
    {
      v35 = v71;
      v72 = v71 + *(*v71 + 632);
      swift_beginAccess();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
      {
        v74 = *(v72 + 16);
        v75 = *(v72 + 24);
        v25 = sub_1CF387C98(v185);
        LODWORD(v174) = v75;
        v59 = sub_1CF598798(&v183, v74, v75);
        if (*(v76 + 24) == 2)
        {
          (v59)(&v183, 0);
          v25(v185, 0);
        }

        else
        {
          v145 = v76;
          v146 = v175;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v148 = v147;
          (*(v177 + 1))(v146, v176);
          v149 = v148 * 1000000000.0;
          if (COERCE__INT64(fabs(v148 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v149 <= -9.22337204e18)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v149 >= 9.22337204e18)
          {
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          *(v145 + 16) = v149;
          (v59)(&v183, 0);
          v25(v185, 0);
        }

        if (*(v35 + 112) == 3)
        {
          v151 = *(v35 + 96);
          v150 = *(v35 + 104);
          sub_1CF03C530(v151, v150, 3u);
          sub_1CF03C530(v151, v150, 3u);
          if (sub_1CF94C0CC(v151) == 9)
          {
            v152 = sub_1CF387C98(v185);
            v154 = sub_1CF598798(&v183, v74, v174);
            if (*(v153 + 24) != 2)
            {
              *(v153 + 24) = 1;
            }

            (v154)(&v183, 0);
            v152(v185, 0);

            sub_1CF03D7A8(v151, v150, 3u);
            v155 = v180;
            swift_beginAccess();
            *(v155 + 121) = 1;
            *(v155 + 72) = 1;
            goto LABEL_134;
          }

          sub_1CF03D7A8(v151, v150, 3u);
        }
      }

      goto LABEL_133;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
    v99 = swift_dynamicCastClass();
    if (v99)
    {
      v100 = v99;
      swift_beginAccess();
      v101 = *(v100 + 168);
      if (v101 != 255)
      {
        v102 = *(v100 + 160);
        v25 = v185;
        v35 = sub_1CF387C98(v185);
        v59 = sub_1CF598798(&v183, v102, v101);
        if (*(v103 + 24) == 2)
        {
          (v59)(&v183, 0);
          (v35)(v185, 0);
        }

        else
        {
          v156 = v103;
          v157 = v175;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v159 = v158;
          (*(v177 + 1))(v157, v176);
          v160 = v159 * 1000000000.0;
          if (COERCE__INT64(fabs(v159 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          if (v160 <= -9.22337204e18)
          {
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          if (v160 >= 9.22337204e18)
          {
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          *(v156 + 16) = v160;
          (v59)(&v183, 0);
          (v35)(v185, 0);
        }
      }

      goto LABEL_133;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
    v118 = swift_dynamicCastClass();
    if (!v118)
    {
      goto LABEL_133;
    }

    v119 = v118;
    sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
    swift_beginAccess();
    v120 = *(v119 + 232);
    v121 = v120;

    if (!v120)
    {
      goto LABEL_135;
    }

    v122 = v121;
    v123 = sub_1CF387C98(v185);
    v125 = sub_1CF598870(&v183, v122);
    if (*(v124 + 24) == 2)
    {
      (v125)(&v183, 0);

      v123(v185, 0);
      goto LABEL_135;
    }

    v162 = v124;
    v163 = v175;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v165 = v164;
    result = (*(v177 + 1))(v163, v176);
    v166 = v165 * 1000000000.0;
    if (COERCE__INT64(fabs(v165 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v166 > -9.22337204e18)
    {
      if (v166 < 9.22337204e18)
      {
        *(v162 + 16) = v166;
        (v125)(&v183, 0);

        v123(v185, 0);
        goto LABEL_135;
      }

      goto LABEL_165;
    }

    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  if (EnumCaseMultiPayload != 12)
  {
    v29 = v180;
    if (EnumCaseMultiPayload != 21)
    {
      goto LABEL_134;
    }

    sub_1CEFCCBDC(v27, v19, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v19 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = v30;
        goto LABEL_15;
      }

LABEL_133:

      goto LABEL_134;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v65 = swift_dynamicCastClass();
    if (v65)
    {
      v66 = v65;
      goto LABEL_42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
    v80 = swift_dynamicCastClass();
    if (!v80)
    {
      goto LABEL_133;
    }

    goto LABEL_57;
  }

  sub_1CEFCCBDC(v27, v25, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v29 = v180;
  if (*(v25 + 9))
  {
    sub_1CF47FDFC(*(v25 + 2), *(v25 + 12));
    sub_1CEFD0994(*v25, *(v25 + 8), *(v25 + 9));
    goto LABEL_134;
  }

LABEL_20:
  v41 = *(v25 + 27);
  if (v41 == 3)
  {
    v14 = *v25;
    LOBYTE(v9) = *(v25 + 8);
    v22 = *(v25 + 2);
    v35 = *(v25 + 12);
    v90 = v175;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v92 = v91;
    (*(v177 + 1))(v90, v176);
    v93 = v92 * 1000000000.0;
    if (COERCE__INT64(fabs(v92 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v94 = v181;
      if (v93 > -9.22337204e18)
      {
        if (v93 < 9.22337204e18)
        {
          sub_1CF471120(v14, v9, v93, v178, v179);
          if (!v94)
          {
            if (v35 >> 8 > 0xFE || (v35 & 0x100) == 0)
            {
              swift_beginAccess();
              sub_1CF6E9500(&v183, v14, v9);
              swift_endAccess();
            }

            else
            {
              swift_beginAccess();
              sub_1CEFD0988(v22, v35, 1);
              sub_1CF1CEABC(v22);
              swift_endAccess();
              sub_1CF47FDFC(v22, v35);
            }

            sub_1CF47FDFC(v22, v35);
            *(v29 + 72) = 1;
            sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
            v64 = 0;
            goto LABEL_136;
          }

          v181 = v94;
          sub_1CF47FDFC(v22, v35);
          return sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        goto LABEL_148;
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v41 == 4)
  {
    v14 = *v25;
    LOBYTE(v9) = *(v25 + 8);
    v22 = *(v25 + 2);
    v35 = *(v25 + 12);
    swift_beginAccess();
    v83 = v29[10];
    v84 = sub_1CF7BF2C0(v14, v9);
    if ((v85 & 1) == 0)
    {
      goto LABEL_62;
    }

    v19 = v84;
    v86 = v29[10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v29[10];
    v183 = v88;
    v29[10] = 0x8000000000000000;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_61:
      sub_1CF1D134C(v19, v88);
      v29[10] = v88;
LABEL_62:
      swift_endAccess();
      v59 = 1;
      *(v29 + 72) = 1;
      if (v35 >> 8 > 0xFE || (v35 & 0x100) == 0)
      {
        swift_beginAccess();
        sub_1CF6E9500(&v183, v14, v9);
        swift_endAccess();
        sub_1CF47FDFC(v22, v35);
        *(v29 + 72) = 1;
        goto LABEL_134;
      }

      sub_1CEFD0988(v22, v35, 1);
      v104 = v175;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v106 = v105;
      (*(v177 + 1))(v104, v176);
      v107 = v106 * 1000000000.0;
      if (COERCE__INT64(fabs(v106 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v108 = v181;
        if (v107 > -9.22337204e18)
        {
          if (v107 < 9.22337204e18)
          {
            sub_1CF4716AC(v22, v107, v178, v179);
            sub_1CF47FDFC(v22, v35);
            sub_1CF47FDFC(v22, v35);
            v181 = v108;
            if (v108)
            {
              return sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

LABEL_134:
            sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
            goto LABEL_135;
          }

          goto LABEL_155;
        }
      }

      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

LABEL_152:
    sub_1CF7D4F34();
    v88 = v183;
    goto LABEL_61;
  }

  if (v41 != 6 || *(v25 + 26) - 3 >= 2)
  {
    sub_1CF47FDFC(*(v25 + 2), *(v25 + 12));
    goto LABEL_134;
  }

  v42 = v29;
  v43 = *(v25 + 8);
  v44 = *v25;
  v14 = *(v25 + 12);
  v25 = *(v25 + 2);
  sub_1CEFCCC44(v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
  swift_beginAccess();
  if (*(v42[10] + 16))
  {
    sub_1CF7BF2C0(v44, v43);
    if (v45)
    {
      v177 = v25;
      v46 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v47 = sub_1CF9E6108();
      v48 = sub_1CF9E7298();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v176 = v49;
        v50 = swift_slowAlloc();
        v182[0] = v50;
        *v49 = 136315138;
        v183 = v44;
        v184 = v43;
        v52 = VFSItemID.description.getter(v50, v51);
        v54 = sub_1CEFD0DF0(v52, v53, v182);

        v55 = v176;
        *(v176 + 1) = v54;
        _os_log_impl(&dword_1CEFC7000, v47, v48, "💂🏼‍♀️ stop monitoring import:disk for %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x1D386CDC0](v50, -1, -1);
        MEMORY[0x1D386CDC0](v55, -1, -1);
      }

      (*(v173 + 8))(v9, v174);
      v35 = v180;
      swift_beginAccess();
      v56 = *(v35 + 80);
      v57 = sub_1CF7BF2C0(v44, v43);
      v25 = v177;
      if ((v58 & 1) == 0)
      {
        goto LABEL_31;
      }

      v59 = v57;
      v60 = *(v35 + 80);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = *(v35 + 80);
      v182[0] = v62;
      *(v35 + 80) = 0x8000000000000000;
      if (v61)
      {
LABEL_30:
        sub_1CF1D134C(v59, v62);
        *(v35 + 80) = v62;
LABEL_31:
        swift_endAccess();
        *(v35 + 72) = 1;
        goto LABEL_32;
      }

LABEL_162:
      sub_1CF7D4F34();
      v62 = v182[0];
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v14 >> 8 > 0xFE || (v14 & 0x100) == 0)
  {
    v64 = v181;
    goto LABEL_136;
  }

  v126 = v180;
  if (*(v180[11] + 16))
  {
    v177 = (v180 + 11);
    v128 = v180[13];
    v127 = v180[14];
    v129 = v25;
    v130 = v180[12];
    v131 = v180[10];

    sub_1CEFE863C(v129);
    v133 = v132;

    if (v133)
    {
      v134 = fpfs_current_or_default_log();
      v135 = v14;
      v136 = v172;
      sub_1CF9E6128();
      sub_1CEFD0988(v129, v135, 1);
      v137 = sub_1CF9E6108();
      v138 = sub_1CF9E7298();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v183 = v140;
        *v139 = 136315138;
        v141 = NSFileProviderItemIdentifier.description.getter();
        v143 = v142;
        sub_1CF47FDFC(v129, v135);
        v144 = sub_1CEFD0DF0(v141, v143, &v183);

        *(v139 + 4) = v144;
        _os_log_impl(&dword_1CEFC7000, v137, v138, "💂🏼‍♀️ stop monitoring import:provider for %s", v139, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v140);
        MEMORY[0x1D386CDC0](v140, -1, -1);
        MEMORY[0x1D386CDC0](v139, -1, -1);

        (*(v173 + 8))(v172, v174);
      }

      else
      {
        sub_1CF47FDFC(v129, v135);

        (*(v173 + 8))(v136, v174);
      }

      swift_beginAccess();
      sub_1CEFD0988(v129, v135, 1);
      sub_1CF1CEABC(v129);
      swift_endAccess();
      sub_1CF47FDFC(v129, v135);
      sub_1CF47FDFC(v129, v135);
      *(v126 + 72) = 1;
      goto LABEL_135;
    }

    v161 = v129;
  }

  else
  {
    v161 = v25;
  }

  sub_1CF47FDFC(v161, v14);
LABEL_135:
  v64 = v181;
LABEL_136:
  result = sub_1CF470E34(v178, v179);
  if (!v64)
  {
    return sub_1CF470518();
  }

  return result;
}

uint64_t sub_1CF4739B0(void *a1, int a2, uint64_t a3, int a4, void *(*a5)(_BYTE *__return_ptr))
{
  LODWORD(v245) = a2;
  v10 = sub_1CF9E5CF8();
  v235 = *(v10 - 8);
  v236 = v10;
  v11 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v238 = &v218 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v231 = &v218 - v15;
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v247 = v16;
  v248 = v17;
  v18 = *(v17 + 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v243 = &v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v226 = &v218 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v227 = &v218 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v229 = &v218 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v230 = &v218 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v228 = &v218 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v232 = &v218 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v234 = &v218 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v233 = &v218 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v239 = &v218 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v241 = &v218 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v242 = &v218 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v246 = &v218 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v218 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v218 - v48;
  v240 = a3;
  v257 = a3;
  v237 = a4;
  v258 = a4;
  v50 = objc_sync_enter(a1);
  if (v50)
  {
LABEL_123:
    MEMORY[0x1EEE9AC00](v50);
    v217 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v218 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v51 = a1;
  v52 = *(a1 + qword_1EDEADAA8);
  v244 = v51;
  result = objc_sync_exit(v51);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v217 = v244;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v218 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v52)
  {
    result = a5(v256);
    if (!v5)
    {
      memcpy(v255, v256, sizeof(v255));
      if (sub_1CF08B99C(v255) == 1)
      {
        memcpy(v254, v256, sizeof(v254));
        return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v225 = 0;
      memcpy(v254, v256, sizeof(v254));
      v265 = *&v256[73];
      v266 = *&v256[89];
      *v267 = *&v256[105];
      *&v267[15] = *&v256[120];
      v261 = *&v256[9];
      v262 = *&v256[25];
      v263 = *&v256[41];
      v264 = *&v256[57];
      v253 = BYTE2(v254[17]);
      v273 = *&v256[187];
      v274 = *&v256[203];
      *v275 = *&v256[219];
      *&v275[13] = *&v256[232];
      v270 = *&v256[139];
      v271 = *&v256[155];
      v272 = *&v256[171];
      v54 = v254[31];
      v280 = *&v256[304];
      v281 = *&v256[320];
      v278 = *&v256[272];
      v279 = *&v256[288];
      v277 = *&v256[256];
      v284 = *&v256[345];
      v285 = *&v256[361];
      v288 = *&v256[409];
      v289 = *&v256[425];
      v286 = *&v256[377];
      v287 = *&v256[393];
      *(v293 + 15) = *&v256[504];
      v55 = LOBYTE(v254[43]);
      v292 = *&v256[473];
      v293[0] = *&v256[489];
      v290 = *&v256[441];
      v291 = *&v256[457];
      v259 = v254[0];
      v260 = v254[1];
      v268 = v254[17];
      v269 = BYTE2(v254[17]);
      v282 = *&v256[336];
      v276 = v254[31];
      v283 = v254[43];
      if (LOBYTE(v254[1]) == 255)
      {
        return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v251 = v254[0];
      v252 = v254[1];
      if (!v254[31])
      {
        return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      if (BYTE1(v254[17]) == 3)
      {
        v224 = LOBYTE(v254[17]);
        v56 = objc_allocWithZone(FPLoggerScope);
        v223 = v54;
        v245 = v54;
        v57 = [v56 init];
        v58 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v59 = v57;
        sub_1CEFCCBDC(v254, v250, &unk_1EC4BFC20, &unk_1CFA0A290);
        v60 = sub_1CF9E6108();
        v61 = sub_1CF9E7298();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v220 = v63;
          v221 = swift_slowAlloc();
          v250[0] = v221;
          *v62 = 138412546;
          v64 = [v59 enter];
          *(v62 + 4) = v64;
          *v63 = v64;
          *(v62 + 12) = 2082;
          v222 = v59;
          v65 = v61;
          v66 = sub_1CF38B634();
          LODWORD(v63) = v55;
          v68 = v67;
          sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
          v69 = sub_1CEFD0DF0(v66, v68, v250);
          v55 = v63;

          *(v62 + 14) = v69;
          v70 = v65;
          v59 = v222;
          _os_log_impl(&dword_1CEFC7000, v60, v70, "%@ evaluating disk import status for %{public}s", v62, 0x16u);
          v71 = v220;
          sub_1CEFCCC44(v220, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v71, -1, -1);
          v72 = v221;
          __swift_destroy_boxed_opaque_existential_1(v221);
          MEMORY[0x1D386CDC0](v72, -1, -1);
          MEMORY[0x1D386CDC0](v62, -1, -1);
        }

        else
        {
          sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        v76 = *(v248 + 1);
        v77 = v49;
        v78 = v247;
        v76(v77, v247);
        if (v55 != 3)
        {
          v79 = v78;
          v80 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          memcpy(v250, v254, sizeof(v250));
          sub_1CEFCCBDC(v254, v249, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CEFCCBDC(v250, v249, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v81 = sub_1CF9E6108();
          v82 = sub_1CF9E72B8();
          if (os_log_type_enabled(v81, v82))
          {
            LODWORD(v221) = v82;
            v222 = v81;
            v83 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            v249[0] = v220;
            *v83 = 136446466;
            v84 = 0xED00006465747365;
            v85 = 0x7265746E49746F6ELL;
            v86 = 0xE800000000000000;
            v87 = 0x676E696863746177;
            if (v55 != 2)
            {
              v87 = 0xD000000000000015;
              v86 = 0x80000001CFA45AA0;
            }

            if (v55)
            {
              v85 = 0x746F687370616E73;
              v84 = 0xEC000000676E6974;
            }

            if (v55 <= 1)
            {
              v88 = v85;
            }

            else
            {
              v88 = v87;
            }

            if (v55 <= 1)
            {
              v89 = v84;
            }

            else
            {
              v89 = v86;
            }

            v90 = sub_1CEFD0DF0(v88, v89, v249);

            *(v83 + 4) = v90;
            *(v83 + 12) = 2082;
            v91 = sub_1CF38B634();
            v93 = v92;
            sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
            v94 = sub_1CEFD0DF0(v91, v93, v249);

            *(v83 + 14) = v94;
            v95 = v222;
            _os_log_impl(&dword_1CEFC7000, v222, v221, "👽 item content status is %{public}s instead of content:import: %{public}s", v83, 0x16u);
            v96 = v220;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v96, -1, -1);
            MEMORY[0x1D386CDC0](v83, -1, -1);

            v78 = v247;
            v97 = v47;
            v98 = v247;
          }

          else
          {
            sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);

            v97 = v47;
            v78 = v79;
            v98 = v79;
          }

          v76(v97, v98);
        }

        if (v224 != 2)
        {
          v113 = v76;
          v114 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v115 = sub_1CF9E6108();
          v116 = sub_1CF9E7298();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            *v117 = 0;
            _os_log_impl(&dword_1CEFC7000, v115, v116, "skip item not watching content", v117, 2u);
            MEMORY[0x1D386CDC0](v117, -1, -1);
          }

          v113(v246, v78);
          v118 = fpfs_current_or_default_log();
          v119 = v78;
          v120 = v243;
          sub_1CF9E6128();
          v106 = v59;
          v121 = sub_1CF9E6108();
          v122 = sub_1CF9E7298();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            *v123 = 138412290;
            v125 = [v106 leave];
            *(v123 + 4) = v125;
            *v124 = v125;
            _os_log_impl(&dword_1CEFC7000, v121, v122, "%@", v123, 0xCu);
            sub_1CEFCCC44(v124, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v124, -1, -1);
            MEMORY[0x1D386CDC0](v123, -1, -1);

            v126 = v120;
            v127 = v247;
          }

          else
          {

            v126 = v120;
            v127 = v119;
          }

          goto LABEL_55;
        }

        v99 = v59;
        v100 = v244[4];
        v101 = v225;
        v102 = ((*v100)[53])(&v251, &v257, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v101)
        {
          v103 = v76;
          v225 = v101;
          v104 = fpfs_current_or_default_log();
          v105 = v242;
          sub_1CF9E6128();
          v106 = v99;
          v107 = sub_1CF9E6108();
          v108 = sub_1CF9E7298();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *v109 = 138412290;
            v111 = [v106 leave];
            *(v109 + 4) = v111;
            *v110 = v111;
            _os_log_impl(&dword_1CEFC7000, v107, v108, "%@", v109, 0xCu);
            sub_1CEFCCC44(v110, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v110, -1, -1);
            MEMORY[0x1D386CDC0](v109, -1, -1);

            v112 = v242;
          }

          else
          {

            v112 = v105;
          }

          v103(v112, v78);
          goto LABEL_56;
        }

        if (v102)
        {
          v225 = 0;
          v128 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v129 = sub_1CF9E6108();
          v130 = sub_1CF9E7298();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            *v131 = 0;
            _os_log_impl(&dword_1CEFC7000, v129, v130, "skip item with pending children", v131, 2u);
            MEMORY[0x1D386CDC0](v131, -1, -1);
          }

          v76(v241, v78);
          v132 = fpfs_current_or_default_log();
          v133 = v239;
          sub_1CF9E6128();
          v134 = v99;
          v113 = v76;
          v106 = v134;
          v135 = sub_1CF9E6108();
          v136 = sub_1CF9E7298();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            *v137 = 138412290;
            v139 = [v106 leave];
            *(v137 + 4) = v139;
            *v138 = v139;
            _os_log_impl(&dword_1CEFC7000, v135, v136, "%@", v137, 0xCu);
            sub_1CEFCCC44(v138, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v138, -1, -1);
            MEMORY[0x1D386CDC0](v137, -1, -1);

            v126 = v239;
          }

          else
          {

            v126 = v133;
          }

          v127 = v78;
LABEL_55:
          v113(v126, v127);
LABEL_56:

          return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        if (v253)
        {
          v140 = ((*v100)[48])(&v251, 1, &v257, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v141 = v245;
          v142 = v237;
          v219 = v76;
          if (v140)
          {
            a1 = 0;
            v143 = v240;
            goto LABEL_60;
          }

          v167 = v231;
          ((*v100)[30])(&v251, 1, &v257, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          a1 = 0;
          v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
          if ((*(*(v184 - 8) + 48))(v167, 1, v184) == 1)
          {
            sub_1CEFCCC44(v231, &qword_1EC4C1B40, &unk_1CF9FCB70);
            goto LABEL_90;
          }

          v196 = v231;
          v197 = v231 + *(v184 + 48);
          LOBYTE(v197) = *(v197 + *(type metadata accessor for ItemMetadata() + 80));
          sub_1CEFCCC44(v196, &unk_1EC4BE360, &qword_1CF9FE650);
          if (v197)
          {
LABEL_90:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
            v198 = swift_allocObject();
            *(v198 + 16) = xmmword_1CF9FC3C0;
            v199 = v223;
            *(v198 + 32) = v223;
            *(v198 + 40) = 256;
            *(v198 + 48) = 0;
            *(v198 + 114) = 10;
            *(v198 + 147) = 9;
            *(v198 + 152) = v199;
            *(v198 + 160) = 393472;
            *(v198 + 267) = 15;
            *(v198 + 272) = v199;
            *(v198 + 280) = 256;
            v246 = v245;
            v200 = v238;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v202 = v201;
            v203 = *(v235 + 8);
            v50 = v203(v200, v236);
            v204 = v202 * 1000000000.0;
            if (COERCE__INT64(fabs(v202 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v204 > -9.22337204e18)
              {
                if (v204 < 9.22337204e18)
                {
                  *(v198 + 288) = xmmword_1CFA04F40;
                  *(v198 + 304) = v204;
                  *(v198 + 354) = 0;
                  *(v198 + 387) = 9;
                  sub_1CF808014(MEMORY[0x1E69E7CC0], v198, v240, v237);

                  (*(*v100[2] + 96))(v250, v205);
                  v206 = v238;
                  sub_1CF9E5CE8();
                  sub_1CF9E5C98();
                  v208 = v207;
                  v50 = v203(v206, v236);
                  v209 = v208 * 1000000000.0;
                  if (COERCE__INT64(fabs(v208 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (v209 > -9.22337204e18)
                    {
                      if (v209 < 9.22337204e18)
                      {
                        v210 = v209;
                        v211 = v250[0];
                        a1 = LOBYTE(v250[1]);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
                        v212 = swift_allocObject();
                        *(v212 + 152) = a1;
                        *(v212 + 16) = 0u;
                        *(v212 + 32) = 0u;
                        *(v212 + 48) = 1;
                        *(v212 + 56) = 0u;
                        *(v212 + 72) = 0u;
                        *(v212 + 88) = 0;
                        *(v212 + 96) = xmmword_1CF9FEC30;
                        *(v212 + 112) = 0;
                        *(v212 + 120) = 0x2000000000000000;
                        *(v212 + 128) = v210;
                        *(v212 + 136) = 0x10000;
                        *(v212 + 144) = v211;
                        v213 = v238;
                        sub_1CF9E5CE8();
                        sub_1CF9E5C98();
                        v215 = v214;
                        v50 = v203(v213, v236);
                        v216 = v215 * 1000000000.0;
                        if (COERCE__INT64(fabs(v215 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          if (v216 > -9.22337204e18)
                          {
                            if (v216 < 9.22337204e18)
                            {
                              sub_1CF902E70(v212, v216, v240, v237);

                              goto LABEL_86;
                            }

                            goto LABEL_122;
                          }

LABEL_121:
                          __break(1u);
LABEL_122:
                          __break(1u);
                          goto LABEL_123;
                        }

LABEL_120:
                        __break(1u);
                        goto LABEL_121;
                      }

LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

LABEL_116:
                __break(1u);
                goto LABEL_117;
              }

LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v78 = v247;
        }

        else
        {
          v219 = v76;
          a1 = 0;
        }

        v141 = v245;
        v142 = v237;
        v143 = v240;
LABEL_60:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
        v144 = swift_allocObject();
        *(v144 + 16) = xmmword_1CF9FA450;
        *(v144 + 32) = v223;
        *(v144 + 40) = 262400;
        *(v144 + 147) = 15;
        v246 = v141;
        v145 = MEMORY[0x1E69E7CC0];
        sub_1CF808014(MEMORY[0x1E69E7CC0], v144, v143, v142);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
        v161 = swift_allocObject();
        *(v161 + 16) = v145;
        *(v161 + 24) = v145;
        *(v161 + 32) = v145;
        *(v161 + 40) = v145;
        *(v161 + 48) = 0;
        v162 = v238;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v164 = v163;
        v165 = *(v235 + 8);
        v50 = v165(v162, v236);
        v166 = v164 * 1000000000.0;
        if (COERCE__INT64(fabs(v164 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v166 > -9.22337204e18)
          {
            if (v166 < 9.22337204e18)
            {
              sub_1CF3A0978(v251, v252, 0x2000000000000000, v166, 0x20000, v244, 0, v161, v240, v142);
              v225 = 0;
              a1 = v238;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v169 = v168;
              v50 = v165(a1, v236);
              v170 = v169 * 1000000000.0;
              if (COERCE__INT64(fabs(v169 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v170 > -9.22337204e18)
                {
                  v171 = v225;
                  if (v170 < 9.22337204e18)
                  {
                    sub_1CF7F6588(v161, v170, v240, v142);
                    if (v171)
                    {
                      v225 = v171;
                      swift_setDeallocating();
                      v172 = *(v161 + 16);

                      v173 = *(v161 + 24);

                      v174 = *(v161 + 32);

                      v175 = *(v161 + 40);

                      swift_deallocClassInstance();
                      v176 = fpfs_current_or_default_log();
                      v177 = v228;
                      sub_1CF9E6128();
                      v178 = v99;
                      v179 = sub_1CF9E6108();
                      v180 = sub_1CF9E7298();

                      if (os_log_type_enabled(v179, v180))
                      {
                        v181 = swift_slowAlloc();
                        v182 = swift_slowAlloc();
                        *v181 = 138412290;
                        v183 = [v178 leave];
                        *(v181 + 4) = v183;
                        *v182 = v183;
                        _os_log_impl(&dword_1CEFC7000, v179, v180, "%@", v181, 0xCu);
                        sub_1CEFCCC44(v182, &qword_1EC4BE350, &unk_1CF9FC3B0);
                        MEMORY[0x1D386CDC0](v182, -1, -1);
                        MEMORY[0x1D386CDC0](v181, -1, -1);
                      }

                      v219(v177, v78);
                      return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
                    }

                    swift_setDeallocating();
                    v185 = *(v161 + 16);

                    v186 = *(v161 + 24);

                    v187 = *(v161 + 32);

                    v188 = *(v161 + 40);

                    swift_deallocClassInstance();
LABEL_86:
                    v189 = fpfs_current_or_default_log();
                    sub_1CF9E6128();
                    v190 = v99;
                    v191 = sub_1CF9E6108();
                    v192 = sub_1CF9E7298();

                    if (os_log_type_enabled(v191, v192))
                    {
                      v193 = swift_slowAlloc();
                      v194 = swift_slowAlloc();
                      *v193 = 138412290;
                      v195 = [v190 leave];
                      *(v193 + 4) = v195;
                      *v194 = v195;
                      _os_log_impl(&dword_1CEFC7000, v191, v192, "%@", v193, 0xCu);
                      sub_1CEFCCC44(v194, &qword_1EC4BE350, &unk_1CF9FC3B0);
                      MEMORY[0x1D386CDC0](v194, -1, -1);
                      MEMORY[0x1D386CDC0](v193, -1, -1);
                    }

                    v219(v230, v247);
                    return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
                  }

                  goto LABEL_113;
                }

LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

LABEL_111:
              __break(1u);
              goto LABEL_112;
            }

LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if ((v245 & 1) == 0 || BYTE1(v254[17]) != 6 || !LOBYTE(v254[43]))
      {
        return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v73 = *(*v244[4] + 424);
      v74 = v254[31];
      v75 = v73(&v251, &v257, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      a1 = 0;
      if (v75)
      {

        return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v146 = v251;
      v147 = v252;
      v148 = v238;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v150 = v149;
      v151 = v236;
      v152 = *(v235 + 8);
      v50 = v152(v148, v236);
      v153 = v150 * 1000000000.0;
      if (COERCE__INT64(fabs(v150 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v248 = v152;
        if (v153 > -9.22337204e18)
        {
          if (v153 < 9.22337204e18)
          {
            v154 = v147;
            v155 = v153;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
            v156 = swift_allocObject();
            *(v156 + 152) = v154;
            *(v156 + 16) = 0u;
            *(v156 + 32) = 0u;
            *(v156 + 48) = 1;
            *(v156 + 56) = 0u;
            *(v156 + 72) = 0u;
            *(v156 + 88) = 0;
            *(v156 + 120) = 0x2000000000000000;
            *(v156 + 128) = v155;
            *(v156 + 136) = 0x20000;
            *(v156 + 144) = v146;
            *(v156 + 96) = xmmword_1CFA04E20;
            *(v156 + 112) = 0;
            v157 = v238;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v159 = v158;
            v50 = v248(v157, v151);
            v160 = v159 * 1000000000.0;
            if (COERCE__INT64(fabs(v159 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v160 > -9.22337204e18)
              {
                if (v160 < 9.22337204e18)
                {
                  sub_1CF902E70(v156, v160, v240, v237);

                  return sub_1CEFCCC44(v254, &unk_1EC4BFC20, &unk_1CFA0A290);
                }

LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      __break(1u);
      goto LABEL_104;
    }
  }

  return result;
}

void sub_1CF475D0C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v17 = a2;
  v18 = a3;
  v15 = a4;
  v16 = a5;
  (*(**(a1 + 32) + 288))(&v13, &v17, &v15, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v6)
  {
    if (v14 == 255)
    {
      sub_1CF095754(__src);
      memcpy(a6, __src, 0x208uLL);
    }

    else
    {
      v11 = *(a1 + 16);
      sub_1CF7EB934(v13, v14, a4, a5, a6);
    }
  }
}

uint64_t sub_1CF475E04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = sub_1CF9E5CF8();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v52 - v20;
  v60 = a1;
  v61 = a2;
  v54 = a5;
  v58 = a5;
  v55 = a6;
  v59 = a6;
  if (*(a3 + 456) == 1)
  {
    result = (*(**(a4 + 32) + 240))(&v60, 1, &v58, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v6)
    {
      v53 = a4;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v21, 1, v22) == 1)
      {
        sub_1CEFCCC44(v21, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_13:
        v40 = *(v53 + 24);
        v41 = sub_1CF8DCAA0();
        v42 = *(v41 + 52);
        v43 = (*(v41 + 48) + 7) & 0x1FFFFFFF8;
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1CF9FA450;
        *(v44 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE60, &qword_1CF9FAE20);
        v45 = (*(*v40 + 312))(&v60, v44, &v58, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        v46 = sub_1CF663828(v45);

        if (!v46)
        {
          return result;
        }

        if (*(v46 + 112) == 1)
        {
          v47 = *(v46 + 96);
          v48 = *(v46 + 104);
          *(v46 + 96) = 0;
          *(v46 + 104) = 0;
          *(v46 + 112) = 4;
          sub_1CF03D7A8(v47, v48, 1u);

          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v50 = v49;
          result = (*(v56 + 8))(v16, v57);
          v51 = v50 * 1000000000.0;
          if (COERCE__INT64(fabs(v50 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v51 > -9.22337204e18)
            {
              if (v51 < 9.22337204e18)
              {
                sub_1CF902E70(v46, v51, v54, v55);
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return result;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v24 = &v21[*(v22 + 48)];
      LOBYTE(v24) = v24[*(type metadata accessor for ItemMetadata() + 80)];
      sub_1CEFCCC44(v21, &unk_1EC4BE360, &qword_1CF9FE650);
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }

      v25 = v60;
      v26 = v61;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v28 = v27;
      v29 = *(v56 + 8);
      result = v29(v16, v57);
      v30 = v28 * 1000000000.0;
      if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v30 > -9.22337204e18)
      {
        v56 = v25;
        if (v30 < 9.22337204e18)
        {
          v52 = v30;
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFC0, &unk_1CF9FAE00);
          v32 = *(v31 + 48);
          v33 = *(v31 + 52);
          v34 = swift_allocObject();
          (*(v23 + 56))(v34 + *(*v34 + 632), 1, 1, v22);
          *(v34 + 152) = v26;
          *(v34 + 16) = 0u;
          *(v34 + 32) = 0u;
          *(v34 + 48) = 1;
          *(v34 + 56) = 0u;
          *(v34 + 72) = 0u;
          *(v34 + 88) = 0;
          *(v34 + 96) = xmmword_1CF9FEC30;
          *(v34 + 112) = 0;
          v35 = v52;
          *(v34 + 120) = 0x2000000000000000;
          *(v34 + 128) = v35;
          v36 = v56;
          *(v34 + 136) = 0x10000;
          *(v34 + 144) = v36;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v38 = v37;
          result = v29(v16, v57);
          v39 = v38 * 1000000000.0;
          if (COERCE__INT64(fabs(v38 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v39 > -9.22337204e18)
            {
              if (v39 < 9.22337204e18)
              {
                sub_1CF902E70(v34, v39, v54, v55);
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  return result;
}

void sub_1CF476408(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v7 = *(a1 + 16);
  sub_1CF7F5EA8(*(a2 + 8), a3, a4, __src);
  if (!v5)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1CEFCCC44(v8, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CF095754(v9);
      memcpy(a5, v9, 0x208uLL);
    }

    else
    {
      memcpy(v12, __src, sizeof(v12));
      sub_1CF7F6024(a5);
      memcpy(v9, __src, sizeof(v9));
      sub_1CEFCCC44(v9, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      nullsub_1(a5);
    }
  }
}

void sub_1CF47650C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v7 = *(a1 + 16);
  sub_1CF7F5EA8(a2, a3, a4, __src);
  if (!v5)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1CEFCCC44(v8, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CF095754(v9);
      memcpy(a5, v9, 0x208uLL);
    }

    else
    {
      memcpy(v12, __src, sizeof(v12));
      sub_1CF7F6024(a5);
      memcpy(v9, __src, sizeof(v9));
      sub_1CEFCCC44(v9, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      nullsub_1(a5);
    }
  }
}

uint64_t sub_1CF476610@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CF343AF8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF47663C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CF343BFC();
}

uint64_t sub_1CF476664(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1CF476694@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF4766C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C0728, &qword_1CFA05B38);
    v2 = sub_1CF9E78F8();
    v16 = v2;
    sub_1CF9E7808();
    if (sub_1CF9E7838())
    {
      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1CF6EB5FC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1CF9E7558();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1CF9E7838());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF4768B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F8, &qword_1CFA05B08);
    v2 = sub_1CF9E78F8();
    v16 = v2;
    sub_1CF9E7808();
    if (sub_1CF9E7838())
    {
      type metadata accessor for FSChangesEnumerator();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1CF6EBD0C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1CF9E7558();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1CF9E7838());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF476A94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0658, &qword_1CFA05A68);
    v2 = sub_1CF9E78F8();
    v16 = v2;
    sub_1CF9E7808();
    if (sub_1CF9E7838())
    {
      sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1CF6EC518(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1CF9E7558();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1CF9E7838());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF476C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
    v2 = sub_1CF9E78F8();
    v17 = v2;
    sub_1CF9E7808();
    for (; sub_1CF9E7838(); ++*(v17 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
      swift_dynamicCast();
      v11 = *(v2 + 16);
      if (*(v2 + 24) <= v11)
      {
        sub_1CF6ED0E8(v11 + 1);
      }

      v2 = v17;
      v3 = *(v17 + 40);
      sub_1CF9E81D8();
      v4 = *(v16 + 16);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      result = sub_1CF9E8228();
      v6 = v17 + 56;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 0;
        v13 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v13 && (v12 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v14 = v9 == v13;
          if (v9 == v13)
          {
            v9 = 0;
          }

          v12 |= v14;
          v15 = *(v6 + 8 * v9);
        }

        while (v15 == -1);
        v10 = __clz(__rbit64(~v15)) + (v9 << 6);
      }

      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1CF476EA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1CF9E7558();
  v5 = -1 << *(a2 + 32);
  result = sub_1CF9E77F8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1CF476F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = *(a2 + 40);
  sub_1CF9E81D8();
  sub_1CEFCCBDC(a1, v16, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = &qword_1CFA12AC0;
    sub_1CEFE55D0(v16, v7, &unk_1EC4BFD70, &qword_1CFA12AC0);
    MEMORY[0x1D386A470](1);
    sub_1CF1CE0C8();
    v19 = v7;
    v20 = &unk_1EC4BFD70;
  }

  else
  {
    v18 = &unk_1CF9FCB50;
    sub_1CEFE55D0(v16, v11, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    MEMORY[0x1D386A470](0);
    sub_1CF1CDC08();
    v19 = v11;
    v20 = &unk_1EC4BFCC0;
  }

  sub_1CEFCCC44(v19, v20, v18);
  sub_1CF9E8228();
  v21 = -1 << *(a2 + 32);
  v22 = sub_1CF9E77F8();
  *(a2 + 56 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
  result = sub_1CEFE55D0(a1, *(a2 + 48) + *(v13 + 72) * v22, &unk_1EC4BF650, &unk_1CF9FCB40);
  ++*(a2 + 16);
  return result;
}

void sub_1CF4771D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CF4772B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04A0, &unk_1CF9FE5B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE718, &unk_1CFA058A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1CF4773B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1CF477568(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1CF9E7818();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_1CF476C84(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_1CF477608(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF477608(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1CF9E81D8();
  v8 = *(a1 + 16);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  v9 = sub_1CF9E8228();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v46 = v2;
    v12 = ~v10;
    v13 = 1;
    while (1)
    {
      v14 = *(*(*(v6 + 48) + 8 * v11) + 16);
      v15 = *(a1 + 16);
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      if (v16 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v18 == v19)
      {

        v22 = 0;
        v13 = 0;
        v3 = v46;
        goto LABEL_14;
      }

      v21 = sub_1CF9E8048();

      if (v21)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v13 = 0;
LABEL_13:
    v3 = v46;
    v22 = v21 ^ 1;
  }

  else
  {
    v22 = 1;
    v13 = 1;
  }

LABEL_14:
  v23 = *(v6 + 16);
  v24 = v23 + v13;
  if (__OFADD__(v23, v13))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = *(v6 + 24);
  if (v25 < v24 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1CF6ED0E8(v24);
    }

    else
    {
      if (v25 >= v24)
      {
        sub_1CF6EFF7C();
        if ((v22 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      sub_1CF6F1A54(v24);
    }

    v26 = *v3;
    v27 = *(*v3 + 40);
    sub_1CF9E81D8();
    v28 = *(a1 + 16);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E69C8();

    v29 = sub_1CF9E8228();
    v30 = -1 << *(v26 + 32);
    v11 = v29 & ~v30;
    if ((*(v26 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v31 = ~v30;
      while (1)
      {
        v32 = *(*(*(v26 + 48) + 8 * v11) + 16);
        v33 = *(a1 + 16);
        v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v36 = v35;
        if (v34 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v36 == v37)
        {
          break;
        }

        v39 = sub_1CF9E8048();

        if (v39)
        {
          goto LABEL_37;
        }

        v11 = (v11 + 1) & v31;
        if (((*(v26 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if ((v22 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_33:
      if (v22)
      {
LABEL_34:
        v40 = *v3;
        *(*v3 + 8 * (v11 >> 6) + 56) |= 1 << v11;
        *(*(v40 + 48) + 8 * v11) = a1;
        v41 = *(v40 + 16);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (!v42)
        {
          result = 0;
          *(v40 + 16) = v43;
          return result;
        }

        goto LABEL_41;
      }
    }

LABEL_42:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
    result = sub_1CF9E80F8();
    __break(1u);
    return result;
  }

  if (v22)
  {
    goto LABEL_34;
  }

LABEL_38:
  v45 = *(*v3 + 48);
  result = *(v45 + 8 * v11);
  *(v45 + 8 * v11) = a1;
  return result;
}

uint64_t sub_1CF47794C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_1CF9E77E8();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1CF4779CC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  result = sub_1CF5D5D4C(2u, 0x7FFFFFFFFFFFFFFFLL, v6, 0, 0, v4, v5);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1CF477A40(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

size_t sub_1CF477AC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    v6 = a4 >> 1;
    v7 = (a4 >> 1) - a3;
    if (!__OFSUB__(a4 >> 1, a3))
    {
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_11:
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_1CF9E8078();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);

  v6 = a4 >> 1;
  v15 = __OFSUB__(a4 >> 1, a3);
  v7 = (a4 >> 1) - a3;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 == v7)
  {
    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v9)
    {
      return v9;
    }

    goto LABEL_11;
  }

LABEL_16:
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = sub_1CF1F8CC4(v7, 0);
  if (v6 != a3)
  {
    v9 = result;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0) - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = *(v10 + 72);
    swift_arrayInitWithCopy();
LABEL_12:
    swift_unknownObjectRelease();
    return v9;
  }

  __break(1u);
  return result;
}

void sub_1CF477C48(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a2 + 16);
  v6 = *(a3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  sub_1CF38F7F4(v4, v6, a1);
}

void sub_1CF477CD0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v5;
  v8 = *(a2 + 24);
  *(a2 + 24) = v6;
  sub_1CF0BA8A4(v5);
  sub_1CF483C30(v7, v8);
  dispatch_group_leave(a3);
}

uint64_t sub_1CF477D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(void *, uint64_t, uint64_t, void, uint64_t, void (*)(void *__return_ptr, void), uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v38[0] = sub_1CF477A40(*a1, v13, v14, a2);
  v38[1] = v17;
  a3(&v39, v38);

  if ((v16 & 1) == 0)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = *(v39 + 16);

      if (v19 != v20)
      {
        result = sub_1CF0BA900(v12, v13, v14);
LABEL_5:
        v21 = 0;
        goto LABEL_6;
      }
    }

    result = sub_1CF47794C(v12, v13, v14, a2);
    if (v23)
    {
LABEL_14:
      __break(1u);
LABEL_15:
      LOBYTE(v14) = 0;
      v19 = 0;
      v21 = 1;
LABEL_6:
      *a9 = v12;
      *(a9 + 8) = v13;
      *(a9 + 16) = v14;
      *(a9 + 24) = v19;
      *(a9 + 32) = v21;
      return result;
    }

    v12 = result;
    v24 = v22;
    while (1)
    {
      v13 = *(a2 + 36);
      if (v13 != v24)
      {
        break;
      }

      if (v12 == 1 << *(a2 + 32))
      {
        goto LABEL_15;
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v26 = a7();
      v27 = a8(v38, v12, v24, 0, a2, a3, a4, v25, v26);
      v13 = v24;
      v29 = *v28;

      v27(v38, 0);
      v30 = *(v29 + 16);

      if (v30)
      {
        LOBYTE(v14) = 0;
        v19 = 0;
        goto LABEL_5;
      }

      result = sub_1CF47794C(v12, v13, 0, a2);
      v12 = result;
      v24 = v31;
      if (v32)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CF477F5C(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void *)))(uint64_t *)
{
  v9[0] = sub_1CF477A40(a2, a3, a4 & 1, a5);
  v9[1] = v7;
  a6(v9);

  return sub_1CF485974;
}

uint64_t (*sub_1CF477FFC(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void *)))(uint64_t *a1)
{
  v9[0] = sub_1CF477A40(a2, a3, a4 & 1, a5);
  v9[1] = v7;
  a6(v9);

  return sub_1CF47809C;
}

uint64_t sub_1CF4780A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + qword_1EDEBBCB8);
  if (v4)
  {
    v5 = result;
    swift_beginAccess();
    v6 = v4[6];
    v8 = v4[5];
    v9[0] = v6;
    *(v9 + 10) = *(v4 + 106);

    sub_1CEFCCBDC(&v8, v7, &qword_1EC4C4EC0, &qword_1CFA05AE8);
    sub_1CF46E194(v5);
    sub_1CEFCCC44(&v8, &qword_1EC4C4EC0, &qword_1CFA05AE8);
  }

  *a3 = v4 == 0;
  return result;
}

uint64_t sub_1CF478184(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  v12 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v13 = *(a4 + qword_1EC4EBCD0);
  if (v13)
  {
    v14 = *(a4 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(a4 + qword_1EC4EBCD0), v14);
    v15 = v13;
    sub_1CF1FD6F8(v13, v14);
    if ((*(a4 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v16);
      v21 = a4;
      v22 = v25;
      v23 = a2 & 1;
      v24 = a3 & 1;
      v18 = objc_autoreleasePoolPush();
      sub_1CF804374(a4, 1, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF48391C, v20);
      objc_autoreleasePoolPop(v18);
    }

    else
    {

      sub_1CF482E50(v15, 2, v25, a2 & 1, a3 & 1, a4, a4);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v21 = a4;
    v22 = v25;
    v23 = a2 & 1;
    v24 = a3 & 1;
    v17 = objc_autoreleasePoolPush();
    sub_1CF804374(a4, 2, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF4839A4, v20);
    objc_autoreleasePoolPop(v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void *sub_1CF4783A8(uint64_t a1, uint64_t a2, void *__src)
{
  result = memcpy(v9, __src, sizeof(v9));
  v6 = *(a2 + qword_1EDEBBDD8);
  if (v6)
  {
    v7 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v8[2] = v9;
    v8[3] = a1;
    v8[4] = a2;

    v6(sub_1CF4800CC, v8);
    return sub_1CEFF7124(v6);
  }

  return result;
}

uint64_t sub_1CF47849C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *a3;
  v4 = *(a2 + qword_1EDEBBDD8);
  if (v4)
  {
    v6 = *(a2 + qword_1EDEBBDD8 + 8);
    v8[2] = MEMORY[0x1EEE9AC00](result);
    v8[3] = v7;
    v8[4] = &v9;

    v4(a4, v8);
    return sub_1CEFF7124(v4);
  }

  return result;
}

uint64_t sub_1CF478550(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v10 = *a3;
  v11 = v4;
  v5 = *(a2 + qword_1EDEBBDD8);
  if (v5)
  {
    v7 = *(a2 + qword_1EDEBBDD8 + 8);
    v9[2] = MEMORY[0x1EEE9AC00](result);
    v9[3] = v8;
    v9[4] = &v10;

    v5(a4, v9);
    return sub_1CEFF7124(v5);
  }

  return result;
}

uint64_t sub_1CF478610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CF0262EC;

  return sub_1CF3FE51C(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1CF4786E0@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v10 = *a2;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1CF3CA63C(&v10, a3, v8, v6, v7, a4);
}

uint64_t sub_1CF478758@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v9 = *a2;
  v10 = v4;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  return sub_1CF3CA2D8(&v9, 0, v7, v5, v6, a3);
}

uint64_t sub_1CF4787D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v15[0] = *a3;
  v15[1] = v4;
  v15[2] = v5;
  v15[3] = v6;
  v15[4] = v7;
  v16 = v8;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  sub_1CF480278(v4, v5, v6, v7, v8, sub_1CF48034C);
  sub_1CF399CD8(&v12);
  sub_1CF480358(v4, v5, v6, v7, v8, sub_1CF1E53F8);
  v11[2] = v15;
  v17[0] = v12;
  v17[1] = v13;
  v18 = v14;
  v9 = sub_1CF393BDC(v17, a1, sub_1CF480BC8, v11);
  sub_1CF480358(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, sub_1CEFD0994);
  return v9;
}

uint64_t sub_1CF478928(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 40);
  v5 = *(a3 + 16);
  *v8 = *a3;
  *&v8[16] = v5;
  *&v8[32] = v3;
  v9 = v4;
  v7[2] = v8;
  v11 = v4;
  v10[0] = *&v8[8];
  v10[1] = *&v8[24];
  return sub_1CF393BDC(v10, a1, sub_1CF480D5C, v7);
}

uint64_t sub_1CF4789A4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA456A0);
  v1 = sub_1CF38B634();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF478A8C@<X0>(unsigned __int8 *a1@<X0>, const void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v7 = sub_1CF357F60(v6);
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v8 = sub_1CF38DE58(v6, a3);
  MEMORY[0x1D3868CC0](v8);

  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1CF478B60(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = qword_1EDEA4990;
  swift_beginAccess();
  v7 = v5;
  v8 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_1CF1D3C18(a3, v7, isUniquelyReferenced_nonNull_native);

  *(a1 + v6) = v11;
  return swift_endAccess();
}

uint64_t sub_1CF478C28()
{
  v1 = v0[3];
  v3 = *(*v0 + 2632);
  v4 = *(*v0 + 2648);
  type metadata accessor for SQLJobRegistry();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1CF478CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 41);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      v11 = *(v4 - 9);
      sub_1CF48034C(v11, v6, *v4);
      swift_getAtKeyPath();
      sub_1CF1E53F8(v11, v6, v5);
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1CEFE95CC((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v12;
      *(v9 + 40) = v13;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CF478DD0(void *a1)
{
  v2 = type metadata accessor for GlobalResourceStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v21[3] = v2;
  v21[4] = &off_1F4C04308;
  v21[0] = sub_1CF51BB3C();
  sub_1CF1A91AC(v21, v20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06E0, &unk_1CFA05AF0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  sub_1CF1A91AC(v20, v8 + 16);
  v9 = v8 + *(*v8 + 136);
  v10 = sub_1CF9E5CF8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for FPFeedbackManagerState();
  v12 = *(v11 + 20);
  v13 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v9 + v12) = v13;
  v14 = v9 + *(v11 + 24);
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v8 + 56) = 0xD000000000000016;
  *(v8 + 64) = 0x80000001CFA46EE0;
  sub_1CF1A6E34();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v15 = *(*v8 + 136);
  swift_beginAccess();
  sub_1CF1A1590(a1);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v8 + 16));
  v16 = *(v8 + 64);

  sub_1CEFD5278(v8 + *(*v8 + 136), type metadata accessor for FPFeedbackManagerState);
  v17 = *(*v8 + 48);
  v18 = *(*v8 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1CF479160(uint64_t a1, uint64_t a2, char a3, void *a4, __int16 a5, uint64_t (*a6)(void, unint64_t))
{
  v8 = v6;
  *&v39 = a1;
  *(&v39 + 1) = a2;
  *(v8 + 16) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 1;
  *(v8 + 120) = 0;
  *(v8 + 128) = 1;
  v11 = (v8 + 168);
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  if (qword_1EDEACD18 != -1)
  {
    v38 = a3;
    swift_once();
    a3 = v38;
  }

  v12 = xmmword_1EDEBBB80;
  v43[6] = xmmword_1EDEBBB90;
  v43[7] = xmmword_1EDEBBBA0;
  v13 = xmmword_1EDEBBBA0;
  v43[8] = xmmword_1EDEBBBB0;
  v14 = xmmword_1EDEBBB40;
  v15 = xmmword_1EDEBBB50;
  v43[2] = xmmword_1EDEBBB50;
  v43[3] = xmmword_1EDEBBB60;
  v16 = xmmword_1EDEBBB60;
  v17 = xmmword_1EDEBBB70;
  v43[4] = xmmword_1EDEBBB70;
  v43[5] = xmmword_1EDEBBB80;
  v18 = xmmword_1EDEBBB30;
  v43[0] = xmmword_1EDEBBB30;
  v43[1] = xmmword_1EDEBBB40;
  *(v8 + 264) = xmmword_1EDEBBB90;
  *(v8 + 280) = v13;
  *(v8 + 296) = xmmword_1EDEBBBB0;
  *(v8 + 200) = v15;
  *(v8 + 216) = v16;
  *(v8 + 232) = v17;
  *(v8 + 248) = v12;
  *v11 = v18;
  *(v8 + 184) = v14;
  *(v8 + 24) = a3 & 1;
  if (a3)
  {
    v19 = 20550;
  }

  else
  {
    v19 = 21318;
  }

  sub_1CF3386F8(v43, v42);
  *(v8 + 48) = sub_1CF206B28(0, 0xE000000000000000);
  *(v8 + 56) = v20;
  *(v8 + 64) = a6(0, 0xE000000000000000);
  *(v8 + 72) = v21;
  *(v8 + 152) = a4;
  *&v42[0] = 0;
  *(&v42[0] + 1) = 0xE000000000000000;
  if (*(v8 + 24))
  {
    v22 = 20550;
  }

  else
  {
    v22 = 21318;
  }

  v23 = a4;
  MEMORY[0x1D3868CC0](v22, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x6C74746F7268745FLL, 0xE900000000000065);
  v24 = *(&v42[0] + 1);
  *(v8 + 32) = *&v42[0];
  *(v8 + 40) = v24;
  *(v8 + 96) = (a5 & 2) == 0;
  *(v8 + 97) = (a5 & 0x10) != 0;
  *(v8 + 160) = 1;
  *(v8 + 162) = 0;
  v42[0] = v39;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v19, 0xE200000000000000);

  v25 = *(&v42[0] + 1);
  *(v8 + 80) = *&v42[0];
  *(v8 + 88) = v25;
  if ((a5 & 0x100) != 0)
  {
    if (qword_1EC4BCD80 != -1)
    {
      swift_once();
    }

    v26 = xmmword_1EC4EBEF0;
    v27 = xmmword_1EC4EBF00;
    v41[6] = xmmword_1EC4EBF00;
    v41[7] = xmmword_1EC4EBF10;
    v28 = xmmword_1EC4EBF10;
    v41[8] = xmmword_1EC4EBF20;
    v29 = xmmword_1EC4EBEB0;
    v30 = xmmword_1EC4EBEC0;
    v41[2] = xmmword_1EC4EBEC0;
    v41[3] = xmmword_1EC4EBED0;
    v31 = xmmword_1EC4EBED0;
    v41[4] = xmmword_1EC4EBEE0;
    v41[5] = xmmword_1EC4EBEF0;
    v32 = xmmword_1EC4EBEA0;
    v41[0] = xmmword_1EC4EBEA0;
    v41[1] = xmmword_1EC4EBEB0;
    v33 = *(v8 + 280);
    v42[6] = *(v8 + 264);
    v42[7] = v33;
    v42[8] = *(v8 + 296);
    v34 = *(v8 + 216);
    v42[2] = *(v8 + 200);
    v42[3] = v34;
    v35 = *(v8 + 248);
    v42[4] = *(v8 + 232);
    v42[5] = v35;
    v36 = *(v8 + 184);
    v42[0] = *v11;
    v42[1] = v36;
    *(v8 + 232) = xmmword_1EC4EBEE0;
    *(v8 + 248) = v26;
    *(v8 + 264) = v27;
    *(v8 + 280) = v28;
    *(v8 + 296) = xmmword_1EC4EBF20;
    *(v8 + 200) = v30;
    *(v8 + 216) = v31;
    *v11 = v32;
    *(v8 + 184) = v29;
    sub_1CF3386F8(v41, v40);
    sub_1CF338754(v42);
  }

  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA88 ping];
  if (qword_1EDEACB30 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB20 ping];
  return v8;
}

char *sub_1CF4794AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v119 = a7;
  v128 = a4;
  v122 = a3;
  v121 = a2;
  v120 = a1;
  v118 = sub_1CF9E7318();
  v117 = *(v118 - 8);
  v11 = *(v117 + 64);
  v12 = MEMORY[0x1EEE9AC00](v118);
  v115 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v105 - v14;
  v15 = sub_1CF9E6448();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v114 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v105 - v20;
  v127 = sub_1CF9E7388();
  v129 = *(v127 - 8);
  v22 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1CF9E7488();
  v24 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a8[72] = 1;
  a8[90] = 0;
  type metadata accessor for JobLimit();
  *(a8 + 12) = 0;
  *(a8 + 13) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CFA04F50;
  *(v26 + 32) = xmmword_1CFA04F60;
  *(a8 + 15) = v26;
  *(a8 + 16) = 500;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0608, &qword_1CFA05A18);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC0];
  v27[2] = sub_1CF4E1CD8(MEMORY[0x1E69E7CC0]);
  v27[3] = sub_1CF4E1E00(v28);
  v27[4] = sub_1CF4E1F20(v28);
  v27[5] = [objc_opt_self() weakObjectsHashTable];
  *(a8 + 17) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0610, &qword_1CFA05A20);
  v29 = swift_allocObject();
  v29[2] = sub_1CF4E1A40(v28);
  v29[3] = sub_1CF4E1B90(v28);
  v29[4] = sub_1CF4E1CC4(v28);
  v29[5] = [objc_opt_self() weakObjectsHashTable];
  *(a8 + 18) = v29;
  a8[152] = 0;
  type metadata accessor for PersistenceCounters();
  v30 = swift_allocObject();
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 47) = 0;
  *(a8 + 20) = v30;
  type metadata accessor for TaskTracker();
  v31 = swift_allocObject();
  v32 = fp_task_tracker_create("db");
  if (!v32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v110 = a5;
  v123 = v21;
  v111 = v16;
  v124 = v15;
  v125 = a6;
  *(v31 + 16) = v32;
  *(a8 + 21) = v31;
  *(a8 + 22) = dispatch_group_create();
  *(a8 + 24) = sub_1CF4E0F3C(v28);
  *(a8 + 25) = 0;
  *(a8 + 52) = 0;
  *(a8 + 27) = 0;
  *(a8 + 28) = 0;
  v33 = qword_1EDEBBC70;
  *&a8[v33] = sub_1CF4E1040(v28);
  v34 = qword_1EC4EBD70;
  *&a8[v34] = sub_1CF4E1238(v28);
  v35 = qword_1EC4EBD78;
  *&a8[v35] = sub_1CF4E1330(v28);
  *&a8[qword_1EDEBBC90] = v28;
  v36 = qword_1EC4EBD80;
  *&a8[v36] = sub_1CF4E1344(v28);
  v37 = MEMORY[0x1E69E7CD0];
  *&a8[qword_1EDEBBCC0] = MEMORY[0x1E69E7CD0];
  *&a8[qword_1EDEBBCC8] = v37;
  *&a8[qword_1EDEBBD00] = v28;
  v38 = qword_1EDEBBC60;
  *&a8[v38] = sub_1CF4E1358(v28);
  v39 = &a8[qword_1EDEBBC20];
  sub_1CF3FE320(sub_1CF4E0DEC, sub_1CF4E1848, sub_1CF056EEC, sub_1CF4E1938, v132);
  v40 = v132[3];
  *(v39 + 40) = v132[2];
  *(v39 + 56) = v40;
  v41 = v132[5];
  *(v39 + 72) = v132[4];
  *(v39 + 88) = v41;
  v42 = v132[1];
  *(v39 + 8) = v132[0];
  *v39 = 0;
  v43 = MEMORY[0x1E69E7CC8];
  *(v39 + 24) = v42;
  *(v39 + 13) = v43;
  v44 = &a8[qword_1EDEBBC28];
  sub_1CF3FE320(sub_1CF4E154C, sub_1CF4E1660, sub_1CF03AED0, sub_1CF4E1750, v133);
  v45 = v133[3];
  *(v44 + 40) = v133[2];
  *(v44 + 56) = v45;
  v46 = v133[5];
  *(v44 + 72) = v133[4];
  *(v44 + 88) = v46;
  v47 = v133[1];
  *(v44 + 8) = v133[0];
  *v44 = 0;
  *(v44 + 24) = v47;
  *&a8[qword_1EDEBBCB0] = 0;
  *&a8[qword_1EDEADB30] = 0;
  a8[qword_1EDEADB48] = 1;
  *&a8[qword_1EDEBBCD8] = v28;
  v48 = qword_1EDEADB50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0618, &unk_1CFA05A28);
  v49 = swift_allocObject();
  *&a8[v48] = v49;
  v50 = qword_1EDEBBC38;
  *&a8[qword_1EDEBBC38] = 0;
  a8[qword_1EDEBBCF0] = 0;
  a8[qword_1EC4EBD88] = 0;
  *(v49 + 24) = 0;
  *(v49 + 16) = 0;
  v51 = &a8[qword_1EDEBBC30];
  *&a8[qword_1EDEBBC30] = 0;
  v52 = &v51[*(type metadata accessor for DBCounters() + 20)];
  sub_1CF9E5CC8();
  v53 = &a8[qword_1EDEBBCA0];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = &a8[qword_1EDEBBC80];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &a8[qword_1EDEBBCD0];
  *v55 = 0;
  *(v55 + 1) = 0;
  v56 = &a8[qword_1EDEBBCA8];
  *v56 = 0;
  *(v56 + 1) = 0;
  *&a8[qword_1EDEBBC58] = 0;
  v57 = &a8[qword_1EDEBBC78];
  *v57 = 0;
  *(v57 + 1) = 0;
  a8[qword_1EDEBBC50] = 0;
  v58 = &a8[qword_1EDEBBC68];
  *v58 = 0;
  v58[8] = 1;
  a8[qword_1EDEADAA8] = 0;
  v59 = qword_1EDEADB40;
  v60 = v28;
  if (qword_1EDEAC5D0 != -1)
  {
    swift_once();
  }

  v61 = qword_1EDEBBAB8;
  *&a8[v59] = qword_1EDEBBAB8;
  *&a8[qword_1EDEBBCB8] = 0;
  *&a8[qword_1EDEBBC88] = 0;
  *&a8[qword_1EDEBBC98] = 0;
  a8[qword_1EDEBBCE0] = 0;
  *&a8[qword_1EDEADA98] = 0;
  a8[qword_1EDEBBC48] = 0;
  a8[qword_1EDEBBC40] = 0;
  v62 = &a8[qword_1EDEBBCF8];
  v63 = type metadata accessor for RequestContinuation();
  *v62 = 0;
  *(v62 + 1) = 0;
  v64 = v61;
  sub_1CF387D24(v63);
  v65 = type metadata accessor for MaintenanceContinuation();
  sub_1CF387D24(v65);
  v66 = type metadata accessor for DiskImportContinuation();
  sub_1CF387D24(v66);
  v67 = type metadata accessor for StagedContext();
  sub_1CF387D24(v67);
  v68 = type metadata accessor for MaintenanceWaitingContinuation();
  sub_1CF387D24(v68);
  v69 = *(*(v128 + 16) + 136);
  v70 = *(v69 + 16);
  v71 = *(v69 + 24);
  sub_1CF9E6978();

  v72 = fpfs_create_log_for_provider();

  v73 = *&a8[v50];
  *&a8[v50] = v72;

  v108 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v130 = v70;
  v131 = v71;

  MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xEA00000000006573);
  v130 = v60;
  sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CF9E77B8();
  LODWORD(v112) = *MEMORY[0x1E69E8098];
  v109 = *(v129 + 104);
  v129 += 104;
  v109(v126);
  *(a8 + 8) = sub_1CF9E7498();
  v113 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v130 = 0;
  v131 = 0xE000000000000000;
  sub_1CF9E7948();

  v130 = v70;
  v131 = v71;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA46340);
  v108 = v130;
  v107 = v131;
  v106 = *(a8 + 8);
  v74 = v106;
  v75 = v123;
  sub_1CF9E63F8();
  v130 = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v76 = v116;
  v77 = v118;
  sub_1CF9E77B8();
  v78 = v111;
  v79 = v124;
  (*(v111 + 16))(v114, v75, v124);
  v80 = v117;
  (*(v117 + 16))(v115, v76, v77);
  (v109)(v126, v112, v127);
  v81 = sub_1CF9E73B8();
  (*(v80 + 8))(v76, v77);
  v129 = *(v78 + 8);
  (v129)(v75, v79);
  *&a8[qword_1EDEBBD08] = v81;
  v82 = v119;
  a8[88] = (v119 & 0x20) == 0;
  a8[89] = (v82 & 0x800) != 0;
  *(a8 + 10) = v82;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v83 = *(a8 + 8);
  v84 = sub_1CF9E73F8();

  *(a8 + 14) = v84;
  v85 = v122;
  *(a8 + 23) = *(*(v122 + 16) + 136);
  v86 = *(a8 + 8);

  v87 = v86;
  v88 = sub_1CF9E73F8();

  *&a8[qword_1EDEBBCE8] = v88;
  sub_1CEFCCBDC(v125, &a8[qword_1EDEBBC18], &qword_1EC4BFB10, &unk_1CFA12AD0);
  v89 = v121;
  *(a8 + 2) = v120;
  *(a8 + 3) = v89;
  v90 = v128;
  *(a8 + 4) = v85;
  *(a8 + 5) = v90;
  *(a8 + 6) = v110;
  *(a8 + 7) = &off_1F4BFC938;
  swift_weakAssign();
  v91 = *(a8 + 4);
  swift_weakAssign();
  v92 = *(a8 + 5);
  v93 = *(*a8 + 176);

  v93(v94);

  swift_weakAssign();

  v95 = *(a8 + 14);
  swift_getObjectType();
  v96 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  swift_unknownObjectRetain();

  v97 = v123;
  sub_1CF042F9C();
  sub_1CEFD5828(0, v97, sub_1CF065084, v96);
  swift_unknownObjectRelease();

  v98 = v124;
  v99 = v129;
  (v129)(v97, v124);

  v100 = *&a8[qword_1EDEBBCE8];
  swift_getObjectType();
  v101 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_1CF042F9C();
  sub_1CEFD5828(0, v97, sub_1CF02E08C, v101);
  swift_unknownObjectRelease();

  v99(v97, v98);

  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBD10 ping];
  v32 = objc_sync_enter(a8);
  if (v32)
  {
LABEL_16:
    MEMORY[0x1EEE9AC00](v32);
    *(&v105 - 2) = a8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v105 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v102 = *&a8[qword_1EDEADB40];
  v103 = objc_sync_exit(a8);
  if (v103)
  {
    MEMORY[0x1EEE9AC00](v103);
    *(&v105 - 2) = a8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v105 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  [v102 ping];

  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB28 ping];
  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA80 ping];
  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBBF8 ping];

  sub_1CEFCCC44(v125, &qword_1EC4BFB10, &unk_1CFA12AD0);
  return a8;
}

void sub_1CF47A748(void *a1, NSObject *a2, uint64_t a3, char a4)
{
  v6 = v5;
  v11 = swift_allocObject();
  swift_weakInit();
  *&v78 = sub_1CF485A94;
  *(&v78 + 1) = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v77 = sub_1CF00A468;
  *(&v77 + 1) = &block_descriptor_79;
  v12 = _Block_copy(&aBlock);

  [a1 setAutoRollbackHandlerForSwift_];
  _Block_release(v12);
  if (a4)
  {
    sub_1CF3B107C(a1, a2);
    if (!v6)
    {
      return;
    }

    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  v15 = (a3 + v14[13]);
  v16 = *(a3 + v14[14]);
  v72 = *(a3 + v14[15]);
  v73 = v16;
  v17 = *v15;
  v70 = v15[1];
  v71 = v17;
  v18 = *(a3 + v14[18]);
  v19 = [objc_opt_self() defaultStore];
  [v19 sqlDatabaseBatchDelay];
  v67 = v19;
  [a1 useBatchingOnTargetQueue:a2 delay:objc_msgSend(v19 changeCount:{sel_sqlDatabaseBatchChangeCount), v20}];
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *&v78 = sub_1CEFE8634;
  *(&v78 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v77 = sub_1CEFE7F20;
  *(&v77 + 1) = &block_descriptor_85_0;
  v22 = _Block_copy(&aBlock);
  v23 = a1;

  [v23 setProfilingHookV2_];
  _Block_release(v22);
  v24 = swift_allocObject();
  swift_weakInit();
  *&v78 = sub_1CF47FBCC;
  *(&v78 + 1) = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v77 = sub_1CF3B1E88;
  *(&v77 + 1) = &block_descriptor_89;
  v25 = _Block_copy(&aBlock);

  [v23 setBusyHandler_];
  _Block_release(v25);
  v68 = &v66;
  v82 = 0;
  MEMORY[0x1EEE9AC00](v26);
  v57[16] = v18;
  v58 = v23;
  v59 = v4;
  v69 = v4;
  v60 = &v82;
  v61 = &v82 + 1;
  v62 = v71;
  v63 = v70;
  v64 = v73;
  v65 = v72;
  v27 = fpfs_current_log();
  v73 = fpfs_adopt_log();
  *&v74[0] = 0;
  BYTE8(v74[0]) = 1;
  *&aBlock = sub_1CF9E73C8();
  *(&aBlock + 1) = v28;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v29 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v29);

  sub_1CF9E6978();

  v30 = __fp_log_fork();

  v72 = v57;
  *&v74[0] = v30;
  BYTE8(v74[0]) = 0;
  MEMORY[0x1EEE9AC00](v31);
  v53[2] = v27;
  v53[3] = v74;
  v53[4] = a2;
  v53[5] = "setUpWriteDatabase(db:queue:label:creationReason:fsTree:fpTree:inMemory:)";
  v53[6] = 73;
  v54 = 2;
  v55 = sub_1CF47FBD4;
  v56 = v57;
  v81 = 1;
  v80 = 0;
  v32 = swift_allocObject();
  v32[2] = &v81;
  v32[3] = sub_1CF2BA13C;
  v32[4] = v53;
  v32[5] = &v80;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1CF2BA170;
  *(v33 + 24) = v32;
  *&v78 = sub_1CF1C0B54;
  *(&v78 + 1) = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v77 = sub_1CEFFD02C;
  *(&v77 + 1) = &block_descriptor_101;
  v34 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(a2, v34);
  _Block_release(v34);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v80;
  if (v80)
  {
    swift_willThrow();

    v36 = v73;
    v37 = fpfs_adopt_log();

    goto LABEL_7;
  }

  v48 = v69;
  if (v81)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v49 = v73;
  v50 = fpfs_adopt_log();

  if (HIBYTE(v82) != 1 || (*(v48 + 82) & 0x20) == 0 || (sub_1CF3C3CA0(0), !v6))
  {

    return;
  }

LABEL_3:
  v13 = v6;
LABEL_7:
  v80 = v13;
  v38 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {

    v74[0] = aBlock;
    v74[1] = v77;
    v74[2] = v78;
    v75 = v79;
    sub_1CF3E3914();
    sub_1CF24CD3C();
    swift_allocError();
    sub_1CF47FADC(v74, v39);
    swift_willThrow();
    sub_1CF47FB38(v74);

    return;
  }

  *&aBlock = v13;
  v40 = v13;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v41 = *&v74[0];
    v42 = [*&v74[0] domain];
    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;

    v46 = *MEMORY[0x1E69E5948];
    if (v43 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v45 == v47)
    {

LABEL_20:

      sub_1CF3E3914();
      swift_willThrow();

      return;
    }

    v51 = sub_1CF9E8048();

    if (v51)
    {
      goto LABEL_20;
    }
  }

  sub_1CF3E3914();
  sub_1CF24CD3C();
  swift_allocError();
  *v52 = v13;
  *(v52 + 48) = 2;
  swift_willThrow();
}

uint64_t sub_1CF47AFBC(uint64_t a1)
{
  if (*(v1 + 112))
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    *(v1 + 96) &= ~a1;
    return v1;
  }

  return result;
}

uint64_t sub_1CF47B03C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C0, &qword_1CFA056E0);
    v6 = swift_allocObject();
    memcpy((v6 + 16), v5, 0x208uLL);
    *(v6 + 536) = a2;
    v7 = *(v5 + 8);
    v8 = MEMORY[0x1E69E7D40];
    if (v7 == 255)
    {
      sub_1CEFCCBDC(v5, v23, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v14 = v5[31];
      if (!v14)
      {
      }
    }

    else
    {
      v9 = *v5;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
      v11 = objc_allocWithZone(v10);
      v12 = v11 + *((*v8 & *v11) + 0x70);
      *v12 = v9;
      v12[8] = v7;
      v12[9] = 0;
      sub_1CEFCCBDC(v5, v23, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v21.receiver = v11;
      v21.super_class = v10;
      v13 = objc_msgSendSuper2(&v21, sel_init);
      [*(v3 + 80) setObject:v6 forKey:v13];

      v14 = v5[31];
      if (!v14)
      {
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
    v16 = objc_allocWithZone(v15);
    v17 = &v16[*((*v8 & *v16) + 0x70)];
    *v17 = v14;
    *(v17 + 4) = 256;
    v22.receiver = v16;
    v22.super_class = v15;
    v18 = v14;
    v19 = objc_msgSendSuper2(&v22, sel_init);
    v20 = *(v3 + 80);
    [v20 setObject:v6 forKey:v19];
  }

  return result;
}

void sub_1CF47B24C(uint64_t *a1, char a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 8);
    v4 = MEMORY[0x1E69E7D40];
    if (v3 != 255)
    {
      v5 = *a1;
      v6 = a1;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
      v8 = objc_allocWithZone(v7);
      v9 = &v8[*((*v4 & *v8) + 0x70)];
      *v9 = v5;
      v9[8] = v3;
      v9[9] = 0;
      v17.receiver = v8;
      v17.super_class = v7;
      v10 = objc_msgSendSuper2(&v17, sel_init);
      [*(v2 + 80) removeObjectForKey_];

      a1 = v6;
    }

    v11 = a1[31];
    if (v11)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
      v13 = objc_allocWithZone(v12);
      v14 = &v13[*((*v4 & *v13) + 0x70)];
      *v14 = v11;
      *(v14 + 4) = 256;
      v18.receiver = v13;
      v18.super_class = v12;
      v15 = v11;
      v16 = objc_msgSendSuper2(&v18, sel_init);
      [*(v2 + 80) removeObjectForKey_];
    }
  }
}

void sub_1CF47B3BC(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a1;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5268();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF7D55FC(sub_1CF209EF0, 0, a3, a4);
  if (!v4)
  {
    v17 = v16;
    v18 = v33;
    v29 = v15;
    v30 = v10;
    if (![v16 next])
    {
LABEL_13:

      return;
    }

    v27 = v12;
    v28 = v11;
    v19 = v18;
    while (1)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v17;
      v22 = [v21 longAtIndex_];
      if (v22 == 0x8000000000000000)
      {
        v24 = 2;
        v23 = 1;
      }

      else
      {
        v23 = v22;
        if (v22)
        {
          if (v22 < 0)
          {
            v23 = -v22;
            if (-v22 >> 32)
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
              v25 = v29;
              v26 = v28;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v27 + 8))(v25, v26);
              swift_willThrow();

              objc_autoreleasePoolPop(v20);
              return;
            }

            v24 = 0;
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v24 = 2;
        }
      }

      v31 = v23;
      v32 = v24;
      v19(&v31);
      objc_autoreleasePoolPop(v20);
      if (([v21 next] & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1CF47B684(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      if (a3 <= 2u)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            v58 = *(a1 + 23);
            v210 = *(a1 + 21);
            v211 = v58;
            v59 = *(a1 + 27);
            v212 = *(a1 + 25);
            v213 = v59;
            if ((*(&v58 + 1) & 0xF000000000000000) == 0xB000000000000000)
            {
              v60 = 0;
            }

            else
            {
              v60 = v211;
            }

            if ((*(&v58 + 1) & 0xF000000000000000) == 0xB000000000000000)
            {
              v61 = 0xF000000000000000;
            }

            else
            {
              v61 = *(&v211 + 1);
            }

            v62 = *(a2 + 23);
            *v208 = *(a2 + 21);
            *&v208[16] = v62;
            v63 = *(a2 + 27);
            *&v208[32] = *(a2 + 25);
            *&v208[48] = v63;
            if ((*&v208[24] & 0xF000000000000000) == 0xB000000000000000)
            {
              v64 = 0;
            }

            else
            {
              v64 = *&v208[16];
            }

            if ((*&v208[24] & 0xF000000000000000) == 0xB000000000000000)
            {
              v65 = 0xF000000000000000;
            }

            else
            {
              v65 = *&v208[24];
            }

            if (v61 >> 60 == 15)
            {
              if (v65 >> 60 == 15)
              {
                sub_1CEFCCBDC(&v210, v204, &unk_1EC4BF260, &unk_1CFA01B60);
                sub_1CEFCCBDC(v208, v204, &unk_1EC4BF260, &unk_1CFA01B60);
                sub_1CEFE48D8(v60, v61);
                v34 = 0;
                return v34 & 1;
              }
            }

            else if (v65 >> 60 != 15)
            {
              sub_1CEFCCBDC(&v210, v204, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(v208, v204, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(&v210, v204, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(v208, v204, &unk_1EC4BF260, &unk_1CFA01B60);
              v193 = sub_1CF328660(v60, v61, v64, v65);
              sub_1CEFCCC44(v208, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCC44(&v210, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFE48D8(v64, v65);
              sub_1CEFE48D8(v60, v61);
              v34 = v193 ^ 1;
              return v34 & 1;
            }

            sub_1CEFCCBDC(&v210, v204, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(v208, v204, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFE48D8(v60, v61);
            sub_1CEFE48D8(v64, v65);
            v34 = 1;
            return v34 & 1;
          }

          if (a1[24] >> 60 == 11)
          {
            v3 = 0;
            v4 = 1;
          }

          else
          {
            v3 = *(a1 + 44);
            v4 = *(a1 + 180);
          }

          if (a2[24] >> 60 == 11)
          {
            v114 = 0;
            v115 = 1;
          }

          else
          {
            v114 = *(a2 + 44);
            v115 = *(a2 + 180);
          }

          v118 = (v3 == v114) & ~v115;
          if (v4)
          {
            v118 = v115;
          }

          v34 = v118 ^ 1;
          return v34 & 1;
        }

        v56 = a2[24] & 0xF000000000000000;
        v57 = v56 == 0xB000000000000000;
        if (v56 == 0xB000000000000000)
        {
          v110 = 0;
        }

        else
        {
          v110 = a2[21];
        }

        if (a1[24] >> 60 == 11)
        {
LABEL_148:
          v34 = !v57;
          return v34 & 1;
        }

        v111 = v56 == 0xB000000000000000;
        v112 = a1[21];
LABEL_142:
        v57 = !v111 && v112 == v110;
        goto LABEL_148;
      }

      if (a3 == 3)
      {
        if (a1[24] >> 60 == 11)
        {
          v35 = 0;
          v36 = 1;
        }

        else
        {
          v35 = a1[25];
          v36 = *(a1 + 216);
          if (v36)
          {
            v35 = 0;
          }
        }

        if (a2[24] >> 60 == 11)
        {
LABEL_137:
          v113 = 0;
          v116 = 1;
LABEL_156:
          v119 = (v35 == v113) & ~v116;
          if (v36)
          {
            v120 = v116;
          }

          else
          {
            v120 = v119;
          }

          v34 = v120 ^ 1;
          return v34 & 1;
        }

        v113 = a2[25];
      }

      else
      {
        if (a3 != 4)
        {
          v66 = a2[24] & 0xF000000000000000;
          v57 = v66 == 0xB000000000000000;
          if (v66 == 0xB000000000000000)
          {
            v110 = 0;
          }

          else
          {
            v110 = a2[28];
          }

          if (a1[24] >> 60 == 11)
          {
            goto LABEL_148;
          }

          v111 = v66 == 0xB000000000000000;
          v112 = a1[28];
          goto LABEL_142;
        }

        if (a1[24] >> 60 == 11)
        {
          v35 = 0;
          v36 = 1;
        }

        else
        {
          v35 = a1[26];
          v36 = *(a1 + 216);
          if (v36)
          {
            v35 = 0;
          }
        }

        if (a2[24] >> 60 == 11)
        {
          goto LABEL_137;
        }

        v113 = a2[26];
      }

      v116 = *(a2 + 216);
      if (v116)
      {
        v113 = 0;
      }

      goto LABEL_156;
    }

    v12 = a1[18];
    v13 = *(a1 + 160);
    v14 = a2[18];
    v15 = *(a2 + 160);
    if (v13 <= 1)
    {
      if (!*(a1 + 160))
      {
        if (!*(a2 + 160))
        {
          v34 = v12 != v14;
          return v34 & 1;
        }

        goto LABEL_245;
      }

      if (v15 != 1)
      {
        goto LABEL_245;
      }
    }

    else if (v13 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_245;
      }
    }

    else
    {
      if (v13 == 3)
      {
        if (v15 == 3)
        {
          v16 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          v17 = sub_1CF9E6948();
          v19 = v18;
          *&v210 = v14;
          v20 = v14;
          if (v17 != sub_1CF9E6948() || v19 != v21)
          {
            v180 = sub_1CF9E8048();

            v34 = v180 ^ 1;
            return v34 & 1;
          }

          goto LABEL_162;
        }

LABEL_245:
        v34 = 1;
        return v34 & 1;
      }

      v55 = a2[19];
      if (*(a1 + 9) == 0)
      {
        if (v15 != 4 || v55 | v14)
        {
          goto LABEL_245;
        }
      }

      else if (v15 != 4 || v14 != 1 || v55)
      {
        goto LABEL_245;
      }
    }

LABEL_162:
    v34 = 0;
    return v34 & 1;
  }

  if (a3 >> 6 != 3)
  {
    if (a3 > 0x83u)
    {
      if (a3 > 0x85u)
      {
        if (a3 == 134)
        {
          v34 = *(a1 + 138) ^ *(a2 + 138);
          return v34 & 1;
        }

        v101 = *(a1 + 5);
        v102 = *(a1 + 13);
        v103 = *(a1 + 11);
        v212 = *(a1 + 9);
        v213 = v103;
        v104 = *(a1 + 15);
        v214 = v102;
        v215 = v104;
        v105 = *(a1 + 7);
        v210 = v101;
        v211 = v105;
        v106 = v101;
        v107 = v214;
        if (v214)
        {
          v108 = *(a1 + 4);
          *&v208[8] = *(a1 + 3);
          *&v208[24] = v108;
          *&v208[40] = *(a1 + 5);
          v109 = a1[12];
          *v208 = v101;
          *&v208[56] = v109;
          *v209 = v214;
          *&v209[8] = *(a1 + 7);
          *&v209[24] = a1[16];
          sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          v181 = *(a1 + 4);
          *&v208[8] = *(a1 + 3);
          *&v208[24] = v181;
          *&v208[40] = *(a1 + 5);
          v182 = a1[12];
          *v208 = v101;
          *&v208[56] = v182;
          *v209 = 0;
          *&v209[8] = *(a1 + 7);
          *&v209[24] = a1[16];
          sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v106 = 0;
        }

        v183 = a2;
        v184 = *(a2 + 5);
        v185 = *(a2 + 13);
        v186 = *(a2 + 11);
        *&v208[32] = *(a2 + 9);
        *&v208[48] = v186;
        v187 = *(a2 + 15);
        *v209 = v185;
        *&v209[16] = v187;
        v188 = *(a2 + 7);
        *v208 = v184;
        *&v208[16] = v188;
        v189 = v184;
        v190 = *v209;
        v129 = *v209 == 0;
        if (*v209)
        {
          *v204 = v184;
          v191 = *(v183 + 4);
          *&v204[8] = *(v183 + 3);
          *&v204[24] = v191;
          *&v204[40] = *(v183 + 5);
          *&v204[56] = v183[12];
          v205 = *v209;
          v206 = *(v183 + 7);
          v207 = v183[16];
          sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          *v204 = v184;
          v192 = *(v183 + 4);
          *&v204[8] = *(v183 + 3);
          *&v204[24] = v192;
          *&v204[40] = *(v183 + 5);
          *&v204[56] = v183[12];
          v205 = 0;
          v206 = *(v183 + 7);
          v207 = v183[16];
          sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v189 = 0;
        }

        if (v107)
        {
          if (v190)
          {
            v131 = v106 == v189;
          }

          else
          {
            v131 = 0;
          }

          goto LABEL_227;
        }

LABEL_230:
        v34 = !v129;
        return v34 & 1;
      }

      if (a3 == 132)
      {
        v34 = *(a1 + 136) != *(a2 + 136);
        return v34 & 1;
      }

      v98 = *(a1 + 137);
      v99 = *(a2 + 137);
    }

    else
    {
      if (a3 <= 0x81u)
      {
        if (a3 == 128)
        {
          v22 = *a1;
          v23 = *(a1 + 8);
          v24 = *a2;
          v25 = *(a2 + 8);
          v26 = *a1 == *a2;
          if (*(a2 + 8))
          {
            v26 = 0;
          }

          v28 = v25 == 1 && v22 == v24;
          v30 = v25 == 2 && v24 == 0;
          v32 = v25 == 2 && v24 == 1;
          if (v22)
          {
            v33 = v32;
          }

          else
          {
            v33 = v30;
          }

          if (v23 == 1)
          {
            v33 = v28;
          }

          if (!*(a1 + 8))
          {
            v33 = v26;
          }

          if (v25 == 255)
          {
            v33 = *(a1 + 8) == 255;
          }

          if (v23 == 255)
          {
            v33 = *(a2 + 8) == 255;
          }

          v34 = !v33;
          return v34 & 1;
        }

        v53 = a1[2];
        v54 = a2[2];
LABEL_119:
        v34 = v53 != v54;
        return v34 & 1;
      }

      if (a3 == 130)
      {
        v53 = a1[3];
        v54 = a2[3];
        goto LABEL_119;
      }

      v98 = *(a1 + 32);
      v99 = *(a2 + 32);
    }

    v34 = v99 != v98;
    return v34 & 1;
  }

  if (a3 <= 0xC2u)
  {
    if (a3 != 192)
    {
      if (a3 == 193)
      {
        v38 = *(a1 + 7);
        v39 = *(a1 + 13);
        v40 = *(a1 + 11);
        v212 = *(a1 + 9);
        v213 = v40;
        v41 = *(a1 + 15);
        v214 = v39;
        v215 = v41;
        v210 = *(a1 + 5);
        v211 = v38;
        v42 = v38;
        v43 = BYTE8(v38);
        if (v39)
        {
          *v208 = *(a1 + 5);
          *&v208[16] = v38;
          v208[24] = BYTE8(v38);
          *&v208[25] = *(a1 + 65);
          *&v208[41] = *(a1 + 81);
          *&v208[56] = a1[12];
          *v209 = v39;
          *&v209[8] = *(a1 + 7);
          *&v209[24] = a1[16];
          sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          *v208 = *(a1 + 5);
          *&v208[16] = v38;
          v208[24] = BYTE8(v38);
          *&v208[25] = *(a1 + 65);
          *&v208[41] = *(a1 + 81);
          *&v208[56] = a1[12];
          *v209 = 0;
          *&v209[8] = *(a1 + 7);
          *&v209[24] = a1[16];
          sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v42 = 0;
          v43 = 1;
        }

        v132 = *(a2 + 7);
        v133 = *(a2 + 13);
        v134 = *(a2 + 11);
        *&v208[32] = *(a2 + 9);
        *&v208[48] = v134;
        v135 = *(a2 + 15);
        *v209 = v133;
        *&v209[16] = v135;
        *v208 = *(a2 + 5);
        *&v208[16] = v132;
        v136 = v132;
        v95 = BYTE8(v132);
        if (v133)
        {
          *v204 = *(a2 + 5);
          *&v204[16] = v132;
          v204[24] = BYTE8(v132);
          *&v204[25] = *(a2 + 65);
          *&v204[41] = *(a2 + 81);
          *&v204[56] = a2[12];
          v205 = *v209;
          v206 = *(a2 + 7);
          v207 = a2[16];
          sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          *v204 = *(a2 + 5);
          *&v204[16] = v132;
          v204[24] = BYTE8(v132);
          *&v204[25] = *(a2 + 65);
          *&v204[41] = *(a2 + 81);
          *&v204[56] = a2[12];
          v205 = 0;
          v206 = *(a2 + 7);
          v207 = a2[16];
          sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v136 = 0;
          v95 = 1;
        }

        if ((v43 & 1) == 0)
        {
          v95 = (v42 == v136) & ~v95;
        }

        goto LABEL_186;
      }

      v78 = *(a1 + 11);
      v212 = *(a1 + 9);
      v213 = v78;
      v79 = *(a1 + 15);
      v214 = *(a1 + 13);
      v215 = v79;
      v80 = *(a1 + 7);
      v210 = *(a1 + 5);
      v211 = v80;
      v81 = *(&v212 + 1);
      v82 = v213;
      if (v214)
      {
        v83 = *(a1 + 7);
        *v208 = *(a1 + 5);
        *&v208[16] = v83;
        *&v208[32] = a1[9];
        *&v208[40] = *(&v212 + 1);
        v208[48] = v213;
        *&v208[49] = *(a1 + 89);
        *&v208[52] = *(a1 + 23);
        *&v208[56] = *(&v213 + 1);
        *v209 = v214;
        *&v209[8] = *(a1 + 7);
        *&v209[24] = a1[16];
        sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
      }

      else
      {
        v137 = *(a1 + 7);
        *v208 = *(a1 + 5);
        *&v208[16] = v137;
        *&v208[32] = a1[9];
        *&v208[40] = *(&v212 + 1);
        v208[48] = v213;
        *&v208[49] = *(a1 + 89);
        *&v208[52] = *(a1 + 23);
        *&v208[56] = *(&v213 + 1);
        *v209 = 0;
        *&v209[8] = *(a1 + 7);
        *&v209[24] = a1[16];
        sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);

        v81 = 0;
        v82 = 255;
      }

      v138 = a2;
      v139 = *(a2 + 11);
      *&v208[32] = *(a2 + 9);
      *&v208[48] = v139;
      v140 = *(a2 + 15);
      *v209 = *(a2 + 13);
      *&v209[16] = v140;
      v141 = *(a2 + 7);
      *v208 = *(a2 + 5);
      *&v208[16] = v141;
      v142 = *&v208[40];
      v143 = v208[48];
      if (*v209)
      {
        v144 = *(v138 + 7);
        *v204 = *(v138 + 5);
        *&v204[16] = v144;
        *&v204[32] = v138[9];
        *&v204[40] = *&v208[40];
        v204[48] = v208[48];
        *&v204[49] = *(v138 + 89);
        *&v204[52] = *(v138 + 23);
        *&v204[56] = *&v208[56];
        v205 = *v209;
        v206 = *(v138 + 7);
        v207 = v138[16];
        sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);

        if (v82 != 255)
        {
          if (v143 == 255)
          {
            goto LABEL_245;
          }

          if (v82)
          {
            if (v82 == 1)
            {
              v145 = v143 == 1 && v81 == v142;
            }

            else if (v81)
            {
              v145 = v143 == 2 && v142 == 1;
            }

            else
            {
              v145 = v143 == 2 && v142 == 0;
            }
          }

          else
          {
            if (v143)
            {
              goto LABEL_245;
            }

            v145 = v81 == v142;
          }

LABEL_190:
          v147 = v145;
          v34 = v147 ^ 1;
          return v34 & 1;
        }
      }

      else
      {
        v146 = *(v138 + 7);
        *v204 = *(v138 + 5);
        *&v204[16] = v146;
        *&v204[32] = v138[9];
        *&v204[40] = *&v208[40];
        v204[48] = v208[48];
        *&v204[49] = *(v138 + 89);
        *&v204[52] = *(v138 + 23);
        *&v204[56] = *&v208[56];
        v205 = 0;
        v206 = *(v138 + 7);
        v207 = v138[16];
        sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);

        if (v82 != 255)
        {
          goto LABEL_245;
        }

        v143 = 255;
      }

      v145 = v143 == 255;
      goto LABEL_190;
    }

    v68 = *(a1 + 5);
    v69 = *(a1 + 13);
    v70 = *(a1 + 11);
    v212 = *(a1 + 9);
    v213 = v70;
    v71 = *(a1 + 15);
    v214 = v69;
    v215 = v71;
    v72 = *(a1 + 7);
    v210 = v68;
    v211 = v72;
    v73 = DWORD2(v68);
    v74 = v214;
    *v208 = v68;
    *&v208[12] = *(a1 + 52);
    *&v208[28] = *(a1 + 68);
    *&v208[44] = *(a1 + 84);
    v75 = *(a1 + 25);
    *&v208[8] = DWORD2(v68);
    *&v208[60] = v75;
    *&v209[8] = *(a1 + 7);
    v76 = a1[16];
    if (v214)
    {
      *v209 = v214;
      *&v209[24] = v76;
      sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
    }

    else
    {
      *v209 = 0;
      *&v209[24] = v76;
      sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v73 = 0;
    }

    v121 = a2;
    v122 = *(a2 + 5);
    v123 = *(a2 + 13);
    v124 = *(a2 + 11);
    *&v208[32] = *(a2 + 9);
    *&v208[48] = v124;
    v125 = *(a2 + 15);
    *v209 = v123;
    *&v209[16] = v125;
    v126 = *(a2 + 7);
    *v208 = v122;
    *&v208[16] = v126;
    v127 = DWORD2(v122);
    v128 = *v209;
    v129 = *v209 == 0;
    *v204 = v122;
    *&v204[8] = DWORD2(v122);
    *&v204[12] = *(v121 + 52);
    *&v204[28] = *(v121 + 68);
    *&v204[44] = *(v121 + 84);
    *&v204[60] = *(v121 + 25);
    v206 = *(v121 + 7);
    v130 = v121[16];
    if (*v209)
    {
      v205 = *v209;
      v207 = v130;
      sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);
    }

    else
    {
      v205 = 0;
      v207 = v130;
      sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v127 = 0;
    }

    if (v74)
    {
      if (v128)
      {
        v131 = v73 == v127;
      }

      else
      {
        v131 = 0;
      }

LABEL_227:
      v129 = v131;
      goto LABEL_230;
    }

    goto LABEL_230;
  }

  if (a3 > 0xC4u)
  {
    if (a3 == 197)
    {
      v45 = *(a1 + 11);
      v212 = *(a1 + 9);
      v213 = v45;
      v46 = *(a1 + 15);
      v214 = *(a1 + 13);
      v215 = v46;
      v47 = *(a1 + 7);
      v210 = *(a1 + 5);
      v211 = v47;
      v48 = *(&v212 + 1);
      v49 = v213;
      v51 = *(&v213 + 1);
      v50 = v214;
      if (v214)
      {
        v52 = *(a1 + 7);
        *v208 = *(a1 + 5);
        *&v208[16] = v52;
        *&v208[32] = a1[9];
        *&v208[40] = *(&v212 + 1);
        v208[48] = v213;
        *&v208[49] = *(a1 + 89);
        *&v208[52] = *(a1 + 23);
        *&v208[56] = *(&v213 + 1);
        *v209 = v214;
        *&v209[8] = *(a1 + 7);
        *&v209[24] = a1[16];
        sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
      }

      else
      {
        v158 = *(a1 + 7);
        *v208 = *(a1 + 5);
        *&v208[16] = v158;
        *&v208[32] = a1[9];
        *&v208[40] = *(&v212 + 1);
        v208[48] = v213;
        *&v208[49] = *(a1 + 89);
        *&v208[52] = *(a1 + 23);
        *&v208[56] = *(&v213 + 1);
        *v209 = 0;
        *&v209[8] = *(a1 + 7);
        *&v209[24] = a1[16];
        sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);
        v48 = 0;
        v49 = 0;
        v51 = 0;
        v50 = 0;
      }

      v159 = a2;
      v160 = *(a2 + 11);
      *&v208[32] = *(a2 + 9);
      *&v208[48] = v160;
      v161 = *(a2 + 15);
      *v209 = *(a2 + 13);
      *&v209[16] = v161;
      v162 = *(a2 + 7);
      *v208 = *(a2 + 5);
      *&v208[16] = v162;
      v163 = *&v208[40];
      v164 = v208[48];
      v166 = *&v208[56];
      v165 = *v209;
      if (*v209)
      {
        v167 = *(v159 + 7);
        *v204 = *(v159 + 5);
        *&v204[16] = v167;
        *&v204[32] = v159[9];
        *&v204[40] = *&v208[40];
        v204[48] = v208[48];
        *&v204[49] = *(v159 + 89);
        *&v204[52] = *(v159 + 23);
        *&v204[56] = *&v208[56];
        v205 = *v209;
        v206 = *(v159 + 7);
        v207 = v159[16];
        sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);
        if (v50)
        {
          swift_bridgeObjectRetain_n();

          v168 = sub_1CF443664(v48, v49, v51, v50, v163, v164, v166, v165);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v34 = v168 ^ 1;
          return v34 & 1;
        }

        goto LABEL_216;
      }

      v179 = *(v159 + 7);
      *v204 = *(v159 + 5);
      *&v204[16] = v179;
      *&v204[32] = v159[9];
      *&v204[40] = *&v208[40];
      v204[48] = v208[48];
      *&v204[49] = *(v159 + 89);
      *&v204[52] = *(v159 + 23);
      *&v204[56] = *&v208[56];
      v205 = 0;
      v206 = *(v159 + 7);
      v207 = v159[16];
      sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
      if (v50)
      {
        goto LABEL_216;
      }

LABEL_232:

      v34 = 0;
      return v34 & 1;
    }

    v93 = a1[29];
    v94 = a2[29];
    v95 = (v93 | v94) == 0;
    if (v93 && v94)
    {
      sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      v96 = v94;
      v97 = v93;
      v95 = sub_1CF9E7568();
    }

LABEL_186:
    v34 = v95 ^ 1;
    return v34 & 1;
  }

  if (a3 == 195)
  {
    v6 = *(a1 + 11);
    v212 = *(a1 + 9);
    v213 = v6;
    v7 = *(a1 + 15);
    v214 = *(a1 + 13);
    v215 = v7;
    v8 = *(a1 + 7);
    v210 = *(a1 + 5);
    v211 = v8;
    v10 = *(&v213 + 1);
    v9 = v214;
    if (v214)
    {
      v11 = *(a1 + 7);
      *v208 = *(a1 + 5);
      *&v208[16] = v11;
      *&v208[32] = a1[9];
      *&v208[40] = *(&v212 + 1);
      v208[48] = v213;
      *&v208[49] = *(a1 + 89);
      *&v208[52] = *(a1 + 23);
      *&v208[56] = *(&v213 + 1);
      *v209 = v214;
      *&v209[8] = *(a1 + 7);
      *&v209[24] = a1[16];
      sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);

      sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
    }

    else
    {
      v148 = *(a1 + 7);
      *v208 = *(a1 + 5);
      *&v208[16] = v148;
      *&v208[32] = a1[9];
      *&v208[40] = *(&v212 + 1);
      v208[48] = v213;
      *&v208[49] = *(a1 + 89);
      *&v208[52] = *(a1 + 23);
      *&v208[56] = *(&v213 + 1);
      *v209 = 0;
      *&v209[8] = *(a1 + 7);
      *&v209[24] = a1[16];
      sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);

      v10 = 0;
      v9 = 0;
    }

    v149 = a2;
    v150 = *(a2 + 11);
    *&v208[32] = *(a2 + 9);
    *&v208[48] = v150;
    v151 = *(a2 + 15);
    *v209 = *(a2 + 13);
    *&v209[16] = v151;
    v152 = *(a2 + 7);
    *v208 = *(a2 + 5);
    *&v208[16] = v152;
    v154 = *&v208[56];
    v153 = *v209;
    if (*v209)
    {
      v155 = *(v149 + 7);
      *v204 = *(v149 + 5);
      *&v204[16] = v155;
      *&v204[32] = v149[9];
      *&v204[40] = *&v208[40];
      v204[48] = v208[48];
      *&v204[49] = *(v149 + 89);
      *&v204[52] = *(v149 + 23);
      *&v204[56] = *&v208[56];
      v205 = *v209;
      v206 = *(v149 + 7);
      v207 = v149[16];
      sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);

      sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);
      if (v9)
      {

        v156 = sub_1CEFE7394(v10, v9);
        if (v157)
        {
          if (v156 == 12565487 && v157 == 0xA300000000000000)
          {

LABEL_234:
            v195 = sub_1CF9E69E8();
            v196 = sub_1CF025150(v195, v10, v9);
            v10 = MEMORY[0x1D3868C10](v196);
            v198 = v197;

            goto LABEL_236;
          }

          v194 = sub_1CF9E8048();

          if (v194)
          {
            goto LABEL_234;
          }
        }

        v198 = v9;
LABEL_236:
        *v204 = v154;
        *&v204[8] = v153;
        if (v10 == sub_1CF662E90() && v198 == v199)
        {

          swift_bridgeObjectRelease_n();
          v34 = 0;
        }

        else
        {
          v200 = sub_1CF9E8048();

          swift_bridgeObjectRelease_n();
          v34 = v200 ^ 1;
        }

        return v34 & 1;
      }

LABEL_216:

      v34 = 1;
      return v34 & 1;
    }

    v178 = *(v149 + 7);
    *v204 = *(v149 + 5);
    *&v204[16] = v178;
    *&v204[32] = v149[9];
    *&v204[40] = *&v208[40];
    v204[48] = v208[48];
    *&v204[49] = *(v149 + 89);
    *&v204[52] = *(v149 + 23);
    *&v204[56] = *&v208[56];
    v205 = 0;
    v206 = *(v149 + 7);
    v207 = v149[16];
    sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);

    if (v9)
    {
      goto LABEL_216;
    }

    goto LABEL_232;
  }

  v85 = *(a1 + 7);
  v210 = *(a1 + 5);
  v211 = v85;
  v86 = *(a1 + 13);
  v87 = *(a1 + 11);
  v212 = *(a1 + 9);
  v213 = v87;
  v88 = *(a1 + 15);
  v214 = v86;
  v215 = v88;
  v89 = v210;
  v90 = DWORD2(v210);
  v91 = BYTE8(v211);
  v92 = v86;
  v34 = v86 != 0;
  *v208 = v210;
  if (v86)
  {
    v202 = v211;
    *&v208[16] = v211;
    v208[24] = BYTE8(v211);
    *&v208[25] = *(a1 + 65);
    *&v208[41] = *(a1 + 81);
    *&v208[56] = a1[12];
    *v209 = v86;
    *&v209[8] = *(a1 + 7);
    *&v209[24] = a1[16];
    sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v208, &unk_1EC4BE330, &unk_1CF9FF010);
  }

  else
  {
    *&v208[16] = v211;
    v208[24] = BYTE8(v211);
    *&v208[25] = *(a1 + 65);
    *&v208[41] = *(a1 + 81);
    *&v208[56] = a1[12];
    *v209 = 0;
    *&v209[8] = *(a1 + 7);
    *&v209[24] = a1[16];
    sub_1CEFCCBDC(&v210, v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v208, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v89 = 0;
    v90 = 0;
    v202 = 0;
    v91 = 0;
  }

  v169 = a2;
  v170 = *(a2 + 7);
  *v208 = *(a2 + 5);
  *&v208[16] = v170;
  v171 = *(a2 + 13);
  v172 = *(a2 + 11);
  *&v208[32] = *(a2 + 9);
  *&v208[48] = v172;
  v173 = *(a2 + 15);
  *v209 = v171;
  *&v209[16] = v173;
  v174 = *v208;
  v175 = *&v208[8];
  v176 = *&v208[16];
  v177 = v208[24];
  if (!v171)
  {
    *v204 = *v208;
    *&v204[16] = *&v208[16];
    v204[24] = v208[24];
    *&v204[25] = *(v169 + 65);
    *&v204[41] = *(v169 + 81);
    *&v204[56] = v169[12];
    v205 = 0;
    v206 = *(v169 + 7);
    v207 = v169[16];
    sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v204, &unk_1EC4BECD0, &unk_1CF9FEF80);
    return v34 & 1;
  }

  *v204 = *v208;
  *&v204[16] = *&v208[16];
  v204[24] = v208[24];
  *&v204[25] = *(v169 + 65);
  *&v204[41] = *(v169 + 81);
  *&v204[56] = v169[12];
  v205 = v171;
  v206 = *(v169 + 7);
  v207 = v169[16];
  sub_1CEFCCBDC(v208, v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
  sub_1CEFCCC44(v204, &unk_1EC4BE330, &unk_1CF9FF010);
  v34 = 1;
  if (v92 && v89 == v174 && v90 == v175)
  {
    if (v91)
    {
      if ((v177 & 1) == 0)
      {
        return v34 & 1;
      }
    }

    else if ((v177 & 1) != 0 || v202 != v176)
    {
      return v34 & 1;
    }

    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_1CF47D064(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      if (a3 <= 2u)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            if (*(a1 + 152) >> 60 == 11)
            {
              v4 = 0;
              v5 = 1;
            }

            else
            {
              v4 = *(a1 + 136);
              v5 = *(a1 + 140);
            }

            if (*(a2 + 152) >> 60 == 11)
            {
              v95 = 0;
              v96 = 1;
            }

            else
            {
              v95 = *(a2 + 136);
              v96 = *(a2 + 140);
            }

            v101 = (v4 == v95) & ~v96;
            if (v5)
            {
              v101 = v96;
            }

            v14 = v101 ^ 1;
            return v14 & 1;
          }

          v50 = *(a1 + 144);
          v135 = *(a1 + 128);
          v136 = v50;
          v51 = *(a1 + 176);
          v137 = *(a1 + 160);
          v138 = v51;
          if ((*(&v50 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v52 = 0;
          }

          else
          {
            v52 = v136;
          }

          if ((*(&v50 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v53 = 0xF000000000000000;
          }

          else
          {
            v53 = *(&v136 + 1);
          }

          v54 = *(a2 + 144);
          v133 = *(a2 + 128);
          *v134 = v54;
          v55 = *(a2 + 176);
          *&v134[16] = *(a2 + 160);
          *&v134[32] = v55;
          if ((*&v134[8] & 0xF000000000000000) == 0xB000000000000000)
          {
            v56 = 0;
          }

          else
          {
            v56 = *v134;
          }

          if ((*&v134[8] & 0xF000000000000000) == 0xB000000000000000)
          {
            v57 = 0xF000000000000000;
          }

          else
          {
            v57 = *&v134[8];
          }

          if (v53 >> 60 == 15)
          {
            if (v57 >> 60 == 15)
            {
              sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(&v133, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
              v58 = v52;
              v59 = v53;
LABEL_156:
              sub_1CEFE48D8(v58, v59);
              v14 = 0;
              return v14 & 1;
            }
          }

          else if (v57 >> 60 != 15)
          {
            sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v133, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v133, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
            v116 = sub_1CF328660(v52, v53, v56, v57);
            sub_1CEFCCC44(&v133, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCC44(&v135, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFE48D8(v56, v57);
            sub_1CEFE48D8(v52, v53);
            v14 = v116 ^ 1;
            return v14 & 1;
          }

          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(&v133, &v129, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFE48D8(v52, v53);
          v98 = v56;
          v99 = v57;
LABEL_160:
          sub_1CEFE48D8(v98, v99);
          v14 = 1;
          return v14 & 1;
        }

        v48 = *(a2 + 152) & 0xF000000000000000;
        v49 = v48 == 0xB000000000000000;
        if (v48 == 0xB000000000000000)
        {
          v91 = 0;
        }

        else
        {
          v91 = *(a2 + 128);
        }

        if (*(a1 + 152) >> 60 == 11)
        {
          goto LABEL_128;
        }

        v92 = v48 == 0xB000000000000000;
        v93 = *(a1 + 128);
        goto LABEL_122;
      }

      if (a3 == 3)
      {
        if (*(a1 + 152) >> 60 == 11)
        {
          v30 = 0;
          v31 = 1;
        }

        else
        {
          v30 = *(a1 + 160);
          v31 = *(a1 + 176);
          if (v31)
          {
            v30 = 0;
          }
        }

        if (*(a2 + 152) >> 60 == 11)
        {
LABEL_117:
          v94 = 0;
          v97 = 1;
LABEL_136:
          v102 = (v30 == v94) & ~v97;
          if (v31)
          {
            v103 = v97;
          }

          else
          {
            v103 = v102;
          }

          v14 = v103 ^ 1;
          return v14 & 1;
        }

        v94 = *(a2 + 160);
      }

      else
      {
        if (a3 != 4)
        {
          v60 = *(a2 + 152) & 0xF000000000000000;
          v49 = v60 == 0xB000000000000000;
          if (v60 == 0xB000000000000000)
          {
            v91 = 0;
          }

          else
          {
            v91 = *(a2 + 184);
          }

          if (*(a1 + 152) >> 60 == 11)
          {
            goto LABEL_128;
          }

          v92 = v60 == 0xB000000000000000;
          v93 = *(a1 + 184);
LABEL_122:
          v49 = !v92 && v93 == v91;
LABEL_128:
          v14 = !v49;
          return v14 & 1;
        }

        if (*(a1 + 152) >> 60 == 11)
        {
          v30 = 0;
          v31 = 1;
        }

        else
        {
          v30 = *(a1 + 168);
          v31 = *(a1 + 176);
          if (v31)
          {
            v30 = 0;
          }
        }

        if (*(a2 + 152) >> 60 == 11)
        {
          goto LABEL_117;
        }

        v94 = *(a2 + 168);
      }

      v97 = *(a2 + 176);
      if (v97)
      {
        v94 = 0;
      }

      goto LABEL_136;
    }

    v15 = *(a1 + 104);
    v16 = *(a1 + 120);
    v9 = *(a2 + 104);
    v17 = *(a2 + 120);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (v16 == 3)
        {
          if (v17 == 3)
          {
            v18 = v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v19 = sub_1CF9E6948();
            v21 = v20;
            *&v135 = v9;
            v22 = v9;
            if (v19 != sub_1CF9E6948() || v21 != v23)
            {
              v115 = sub_1CF9E8048();

              v14 = v115 ^ 1;
              return v14 & 1;
            }

            goto LABEL_142;
          }

          goto LABEL_60;
        }

        v47 = *(a2 + 112);
        if (*(a1 + 104) == 0)
        {
          if (v17 != 4 || v47 | v9)
          {
            goto LABEL_60;
          }
        }

        else if (v17 != 4 || v9 != 1 || v47)
        {
          goto LABEL_60;
        }

LABEL_142:
        v14 = 0;
        return v14 & 1;
      }

      if (v17 == 2)
      {
        goto LABEL_142;
      }

LABEL_60:
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_42;
  }

  if (a3 >> 6 == 3)
  {
    if (a3 > 0xC2u)
    {
      if (a3 > 0xC4u)
      {
        if (a3 != 197)
        {
          v78 = *(a1 + 192);
          v79 = *(a2 + 192);
          v80 = (v78 | v79) == 0;
          if (v78 && v79)
          {
            sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
            v81 = v79;
            v82 = v78;
            v80 = sub_1CF9E7568();
          }

          v14 = v80 ^ 1;
          return v14 & 1;
        }

        v40 = *(a1 + 48);
        v135 = *(a1 + 32);
        v136 = v40;
        v41 = *(a1 + 80);
        v137 = *(a1 + 64);
        v138 = v41;
        v42 = *(&v40 + 1);
        v43 = v137;
        v133 = *(a1 + 32);
        if (v40 == 1)
        {
          *v134 = 1;
          *&v134[8] = *(&v40 + 1);
          *&v134[24] = *(a1 + 72);
          v44 = *(a1 + 88);
          *&v134[16] = v137;
          *&v134[40] = v44;
          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v42 = 0;
          v43 = 0xF000000000000000;
        }

        else
        {
          *v134 = v40;
          *&v134[24] = *(a1 + 72);
          v104 = *(a1 + 88);
          *&v134[16] = v137;
          *&v134[40] = v104;
          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v42, v43);
          sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
        }

        v105 = a2;
        v106 = *(a2 + 48);
        v133 = *(a2 + 32);
        *v134 = v106;
        v107 = *(a2 + 80);
        *&v134[16] = *(a2 + 64);
        *&v134[32] = v107;
        v108 = *(&v106 + 1);
        v109 = *&v134[16];
        if (v106 == 1)
        {
          v129 = *(v105 + 32);
          *v130 = v106;
          v131 = *(v105 + 72);
          v110 = *(v105 + 88);
          *&v130[16] = *&v134[16];
          goto LABEL_149;
        }

        v129 = *(v105 + 32);
        *v130 = *v134;
        v131 = *(v105 + 72);
        v114 = *(v105 + 88);
        *&v130[16] = *&v134[16];
      }

      else
      {
        if (a3 == 195)
        {
          v6 = *(a1 + 48);
          v135 = *(a1 + 32);
          v136 = v6;
          v7 = *(a1 + 80);
          v137 = *(a1 + 64);
          v138 = v7;
          v8 = *(&v6 + 1);
          v9 = v137;
          if (v6 == 1)
          {
            v3 = a2;
            v129 = *(a1 + 32);
            *v130 = 1;
            *&v130[8] = *(&v6 + 1);
            v131 = *(a1 + 72);
            v10 = *(a1 + 88);
            *&v130[16] = v137;
            v132 = v10;
            sub_1CEFCCBDC(&v135, &v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            sub_1CEFCCC44(&v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            v11 = *(v3 + 48);
            v133 = *(v3 + 32);
            *v134 = v11;
            v12 = *(v3 + 80);
            *&v134[16] = *(v3 + 64);
            *&v134[32] = v12;
            v8 = *(&v11 + 1);
            v13 = v11;
            v9 = *&v134[16];
            if (v11 == 1)
            {
              v125 = *(v3 + 32);
              *v126 = v11;
              *&v126[16] = *&v134[16];
              v127 = *(v3 + 72);
              v128 = *(v3 + 88);
              sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
              sub_1CEFCCC44(&v125, &unk_1EC4BF2D0, &unk_1CF9FEF20);

              v14 = 0;
              return v14 & 1;
            }

            goto LABEL_172;
          }

          v133 = *(a1 + 32);
          *v134 = v6;
          *&v134[24] = *(a1 + 72);
          v119 = *(a1 + 88);
          *&v134[16] = v137;
          *&v134[40] = v119;
          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v8, v9);
          a1 = sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_169;
        }

        v75 = *(a1 + 48);
        v135 = *(a1 + 32);
        v136 = v75;
        v76 = *(a1 + 80);
        v137 = *(a1 + 64);
        v138 = v76;
        v43 = *(&v135 + 1);
        v42 = v135;
        v133 = v135;
        *&v134[8] = *(a1 + 56);
        *&v134[24] = *(a1 + 72);
        v77 = *(a1 + 88);
        if (v136 == 1)
        {
          *v134 = 1;
          *&v134[40] = v77;
          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v42 = 0;
          v43 = 0xF000000000000000;
        }

        else
        {
          *v134 = v136;
          *&v134[40] = v77;
          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v42, v43);
          sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
        }

        v111 = a2;
        v112 = *(a2 + 48);
        v133 = *(a2 + 32);
        *v134 = v112;
        v113 = *(a2 + 80);
        *&v134[16] = *(a2 + 64);
        *&v134[32] = v113;
        v109 = *(&v133 + 1);
        v108 = v133;
        if (*v134 == 1)
        {
          v129 = v133;
          *&v130[8] = *(v111 + 56);
          v131 = *(v111 + 72);
          v110 = *(v111 + 88);
          *v130 = 1;
LABEL_149:
          v132 = v110;
          sub_1CEFCCBDC(&v133, &v125, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          if (v43 >> 60 != 15)
          {
            v108 = 0;
            v109 = 0xF000000000000000;
LABEL_158:
            sub_1CEFF05F4(v42, v43);
            sub_1CEFE4714(v42, v43);
            goto LABEL_159;
          }

          goto LABEL_155;
        }

        v129 = v133;
        *&v130[8] = *(v111 + 56);
        v131 = *(v111 + 72);
        v114 = *(v111 + 88);
        *v130 = *v134;
      }

      v132 = v114;
      sub_1CEFCCBDC(&v133, &v125, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFE42D4(v108, v109);
      sub_1CEFCCC44(&v129, &unk_1EC4BF250, &unk_1CFA01B50);
      if (v43 >> 60 != 15)
      {
        if (v109 >> 60 != 15)
        {
          sub_1CEFF05F4(v42, v43);
          sub_1CEFF05F4(v108, v109);
          sub_1CEFF05F4(v42, v43);
          v117 = sub_1CF328660(v42, v43, v108, v109);
          sub_1CEFE48D8(v108, v109);
          sub_1CEFE48D8(v108, v109);
          sub_1CEFE48D8(v42, v43);
          sub_1CEFE4714(v42, v43);
          sub_1CEFE48D8(v42, v43);
          v14 = v117 ^ 1;
          return v14 & 1;
        }

        goto LABEL_158;
      }

      if (v109 >> 60 != 15)
      {
LABEL_159:
        sub_1CEFE48D8(v42, v43);
        v98 = v108;
        v99 = v109;
        goto LABEL_160;
      }

LABEL_155:
      v58 = v42;
      v59 = v43;
      goto LABEL_156;
    }

    if (a3 != 192)
    {
      if (a3 == 193)
      {
        v32 = *(a1 + 48);
        v135 = *(a1 + 32);
        v136 = v32;
        v33 = *(a1 + 80);
        v137 = *(a1 + 64);
        v138 = v33;
        v9 = *(&v135 + 1);
        v8 = v135;
        v34 = v136;
        if (v136 != 1)
        {
LABEL_169:
          *&v133 = v8;
          *(&v133 + 1) = v9;
          *&v134[8] = *(a1 + 56);
          *&v134[24] = *(a1 + 72);
          v120 = *(a1 + 88);
          *v134 = v34;
          *&v134[40] = v120;
          sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v8, v9);
          a1 = sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_170;
        }

        v3 = a2;
        v129 = v135;
        *&v130[8] = *(a1 + 56);
        v131 = *(a1 + 72);
        v35 = *(a1 + 88);
        *v130 = 1;
        v132 = v35;
        sub_1CEFCCBDC(&v135, &v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v36 = *(v3 + 48);
        v133 = *(v3 + 32);
        *v134 = v36;
        v37 = *(v3 + 80);
        *&v134[16] = *(v3 + 64);
        *&v134[32] = v37;
        v9 = *(&v133 + 1);
        v8 = v133;
        v38 = *v134;
        if (*v134 != 1)
        {
          v125 = v133;
          *v126 = *v134;
          *&v126[8] = *(v3 + 56);
          v127 = *(v3 + 72);
          v128 = *(v3 + 88);
          sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v8, v9);
          sub_1CEFCCC44(&v125, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
LABEL_42:
          if (v16)
          {
            if (v17 == 1)
            {
              goto LABEL_142;
            }

            goto LABEL_60;
          }

          if (v17)
          {
            goto LABEL_60;
          }

          v14 = v15 != v9;
          return v14 & 1;
        }

        goto LABEL_103;
      }

LABEL_87:
      v67 = *(a1 + 48);
      v135 = *(a1 + 32);
      v136 = v67;
      v68 = *(a1 + 80);
      v137 = *(a1 + 64);
      v138 = v68;
      v8 = *(&v67 + 1);
      v69 = v67;
      v9 = v137;
      if (v67 != 1)
      {
LABEL_171:
        v133 = *(a1 + 32);
        *v134 = v69;
        *&v134[8] = v8;
        *&v134[24] = *(a1 + 72);
        v122 = *(a1 + 88);
        *&v134[16] = v9;
        *&v134[40] = v122;
        sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
LABEL_172:
        v125 = *(v3 + 32);
        *v126 = v13;
        *&v126[8] = v8;
        *&v126[16] = v9;
        v127 = *(v3 + 72);
        v128 = *(v3 + 88);
        sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        sub_1CEFCCC44(&v125, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
        goto LABEL_173;
      }

      v3 = a2;
      v129 = *(a1 + 32);
      *v130 = 1;
      *&v130[8] = *(&v67 + 1);
      v131 = *(a1 + 72);
      v70 = *(a1 + 88);
      *&v130[16] = v137;
      v132 = v70;
      sub_1CEFCCBDC(&v135, &v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFCCC44(&v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      v71 = *(v3 + 48);
      v133 = *(v3 + 32);
      *v134 = v71;
      v72 = *(v3 + 80);
      *&v134[16] = *(v3 + 64);
      *&v134[32] = v72;
      v8 = *(&v71 + 1);
      v73 = v71;
      v9 = *&v134[16];
      if (v71 != 1)
      {
LABEL_173:
        v125 = *(v3 + 32);
        *v126 = v73;
        *&v126[8] = v8;
        *&v126[16] = v9;
        v127 = *(v3 + 72);
        v128 = *(v3 + 88);
        sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        a1 = sub_1CEFCCC44(&v125, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
LABEL_174:
        *&v133 = v8;
        *(&v133 + 1) = v9;
        *&v134[8] = *(a1 + 56);
        *&v134[24] = *(a1 + 72);
        v123 = *(a1 + 88);
        *v134 = v87;
        *&v134[40] = v123;
        sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
        goto LABEL_175;
      }

      v125 = *(v3 + 32);
      *v126 = v71;
      *&v126[16] = *&v134[16];
LABEL_104:
      v127 = *(v3 + 72);
      v128 = *(v3 + 88);
      sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFCCC44(&v125, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      v14 = 0;
      return v14 & 1;
    }

    v61 = *(a1 + 48);
    v135 = *(a1 + 32);
    v136 = v61;
    v62 = *(a1 + 80);
    v137 = *(a1 + 64);
    v138 = v62;
    v9 = *(&v135 + 1);
    v8 = v135;
    v63 = v136;
    if (v136 != 1)
    {
LABEL_170:
      *&v133 = v8;
      *(&v133 + 1) = v9;
      *&v134[8] = *(a1 + 56);
      *&v134[24] = *(a1 + 72);
      v121 = *(a1 + 88);
      *v134 = v63;
      *&v134[40] = v121;
      sub_1CEFCCBDC(&v135, &v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFE42D4(v8, v9);
      a1 = sub_1CEFCCC44(&v133, &unk_1EC4BF250, &unk_1CFA01B50);
      __break(1u);
      goto LABEL_171;
    }

    v3 = a2;
    v129 = v135;
    *&v130[8] = *(a1 + 56);
    v131 = *(a1 + 72);
    v64 = *(a1 + 88);
    *v130 = 1;
    v132 = v64;
    sub_1CEFCCBDC(&v135, &v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CEFCCC44(&v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
    v65 = *(v3 + 48);
    v133 = *(v3 + 32);
    *v134 = v65;
    v66 = *(v3 + 80);
    *&v134[16] = *(v3 + 64);
    *&v134[32] = v66;
    v9 = *(&v133 + 1);
    v8 = v133;
    v38 = *v134;
    if (*v134 != 1)
    {
      v125 = v133;
      *v126 = *v134;
      *&v126[8] = *(v3 + 56);
      v127 = *(v3 + 72);
      v128 = *(v3 + 88);
      sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFE42D4(v8, v9);
      a1 = sub_1CEFCCC44(&v125, &unk_1EC4BF250, &unk_1CFA01B50);
      __break(1u);
      goto LABEL_87;
    }

LABEL_103:
    *&v125 = v8;
    *(&v125 + 1) = v9;
    *v126 = v38;
    *&v126[8] = *(v3 + 56);
    goto LABEL_104;
  }

  if (a3 <= 0x83u)
  {
    if (a3 <= 0x81u)
    {
      if (a3 == 128)
      {
        v24 = *a1;
        v25 = (v24 | *a2) == 0;
        if (v24 && *a2)
        {
          v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v28 = v27;
          if (v26 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v28 == v29)
          {
            v25 = 1;
          }

          else
          {
            v25 = sub_1CF9E8048();
          }
        }

        v14 = v25 ^ 1;
        return v14 & 1;
      }

      v45 = *(a1 + 8);
      v46 = *(a2 + 8);
      goto LABEL_97;
    }

    if (a3 == 130)
    {
      v45 = *(a1 + 16);
      v46 = *(a2 + 16);
LABEL_97:
      v14 = v45 != v46;
      return v14 & 1;
    }

    v83 = *(a1 + 24);
    v84 = *(a2 + 24);
LABEL_100:
    v14 = v84 != v83;
    return v14 & 1;
  }

  if (a3 <= 0x85u)
  {
    if (a3 == 132)
    {
      v14 = *(a1 + 96) != *(a2 + 96);
      return v14 & 1;
    }

    v83 = *(a1 + 97);
    v84 = *(a2 + 97);
    goto LABEL_100;
  }

  if (a3 == 134)
  {
    v14 = *(a1 + 98) ^ *(a2 + 98);
    return v14 & 1;
  }

  v85 = *(a1 + 48);
  v135 = *(a1 + 32);
  v136 = v85;
  v86 = *(a1 + 80);
  v137 = *(a1 + 64);
  v138 = v86;
  v9 = *(&v135 + 1);
  v8 = v135;
  v87 = v136;
  if (v136 != 1)
  {
    goto LABEL_174;
  }

  v3 = a2;
  v129 = v135;
  *&v130[8] = *(a1 + 56);
  v131 = *(a1 + 72);
  v88 = *(a1 + 88);
  *v130 = 1;
  v132 = v88;
  sub_1CEFCCBDC(&v135, &v133, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CEFCCC44(&v129, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  v89 = *(v3 + 48);
  v133 = *(v3 + 32);
  *v134 = v89;
  v90 = *(v3 + 80);
  *&v134[16] = *(v3 + 64);
  *&v134[32] = v90;
  v9 = *(&v133 + 1);
  v8 = v133;
  v38 = *v134;
  if (*v134 == 1)
  {
    goto LABEL_103;
  }

LABEL_175:
  *&v125 = v8;
  *(&v125 + 1) = v9;
  *v126 = v38;
  *&v126[8] = *(v3 + 56);
  v127 = *(v3 + 72);
  v128 = *(v3 + 88);
  sub_1CEFCCBDC(&v133, v124, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CEFE42D4(v8, v9);
  result = sub_1CEFCCC44(&v125, &unk_1EC4BF250, &unk_1CFA01B50);
  __break(1u);
  return result;
}

uint64_t sub_1CF47E31C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{

  MEMORY[0x1D3868FA0](v12);
  if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v24 = *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  if (a5)
  {
    return 0;
  }

  v13 = *a1;
  v14 = sub_1CF388E8C();
  v15 = a1[18];
  v16 = *(a1 + 152);
  sub_1CF19F384(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
  v17 = swift_dynamicCastMetatype();
  if (v17)
  {
    v26 = v15;
    v27 = v16;
    v18 = (*(v17 + 592))(&v26, a2, a3, a4);
    v20 = *(v18 + 96);
    v19 = *(v18 + 104);
    *(v18 + 96) = 0;
    *(v18 + 104) = 0;
    v21 = *(v18 + 112);
    *(v18 + 112) = 0;

    sub_1CF03D7A8(v20, v19, v21);

    MEMORY[0x1D3868FA0](v22);
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
    return 0;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF47E540(unsigned int a1, __int128 *a2, __int128 *a3)
{
  v3 = (a1 >> 4) & 3;
  if (v3 <= 1)
  {
    if (v3)
    {
      v21 = *(a2 + 248);
      v22 = *(a2 + 392);
      v23 = *(a2 + 424);
      v24 = *(a2 + 440);
      v93 = *(a2 + 408);
      v94 = v23;
      v95 = v24;
      v25 = *(a2 + 328);
      v26 = *(a2 + 360);
      v27 = *(a2 + 376);
      v89 = *(a2 + 344);
      v90 = v26;
      v91 = v27;
      v92 = v22;
      v28 = *(a2 + 264);
      v29 = *(a2 + 280);
      v83 = v21;
      v84 = v28;
      v30 = *(a2 + 296);
      v31 = *(a2 + 312);
      v85 = v29;
      v86 = v30;
      v87 = v31;
      v88 = v25;
      v32 = *(a3 + 392);
      v33 = *(a3 + 424);
      v34 = *(a3 + 440);
      v77 = *(a3 + 408);
      v78 = v33;
      v79 = v34;
      v35 = *(a3 + 328);
      v36 = *(a3 + 360);
      v37 = *(a3 + 376);
      v73 = *(a3 + 344);
      v74 = v36;
      v75 = v37;
      v76 = v32;
      v38 = *(a3 + 264);
      v39 = *(a3 + 296);
      v40 = *(a3 + 312);
      v69 = *(a3 + 280);
      v70 = v39;
      v71 = v40;
      v72 = v35;
      v67 = *(a3 + 248);
      v68 = v38;
      v18 = sub_1CF47D064(&v83, &v67, a1 & 0xCF);
    }

    else
    {
      v4 = a2[13];
      v95 = a2[12];
      v96 = v4;
      v97 = a2[14];
      v98 = *(a2 + 30);
      v5 = a2[9];
      v91 = a2[8];
      v92 = v5;
      v6 = a2[11];
      v93 = a2[10];
      v94 = v6;
      v7 = a2[5];
      v87 = a2[4];
      v88 = v7;
      v8 = a2[7];
      v89 = a2[6];
      v90 = v8;
      v9 = a2[1];
      v83 = *a2;
      v84 = v9;
      v10 = a2[3];
      v85 = a2[2];
      v86 = v10;
      v11 = a3[13];
      v79 = a3[12];
      v80 = v11;
      v81 = a3[14];
      v82 = *(a3 + 30);
      v12 = a3[9];
      v75 = a3[8];
      v76 = v12;
      v13 = a3[11];
      v77 = a3[10];
      v78 = v13;
      v14 = a3[5];
      v71 = a3[4];
      v72 = v14;
      v15 = a3[7];
      v73 = a3[6];
      v74 = v15;
      v16 = a3[1];
      v67 = *a3;
      v68 = v16;
      v17 = a3[3];
      v69 = a3[2];
      v70 = v17;
      v18 = sub_1CF47B684(&v83, &v67, a1);
    }

    return v18 & 1;
  }

  if (v3 == 2)
  {
    if (a1)
    {
      v19 = *(a2 + 60);
      v20 = *(a3 + 60);
    }

    else
    {
      v19 = *(a2 + 59);
      v20 = *(a3 + 59);
    }

    goto LABEL_58;
  }

  if (a1 > 0x32u)
  {
    if (a1 > 0x34u)
    {
      if (a1 == 53)
      {
        v19 = *(a2 + 64);
        v20 = *(a3 + 64);
      }

      else
      {
        v19 = *(a2 + 62);
        v20 = *(a3 + 62);
      }
    }

    else
    {
      if (a1 != 51)
      {
        v18 = *(a2 + 504) ^ *(a3 + 504);
        return v18 & 1;
      }

      v19 = *(a2 + 61);
      v20 = *(a3 + 61);
    }

LABEL_58:
    v18 = v19 != v20;
    return v18 & 1;
  }

  if (a1 == 48)
  {
    v58 = *(a2 + 456);
    v59 = v58 == 4;
    v60 = *(a3 + 456);
    if (v60 != 4)
    {
      v59 = 0;
    }

    if (v58 != 4 && *(a3 + 456) != 4)
    {
      v59 = qword_1CFA05EB0[v58] == qword_1CFA05EB0[v60];
    }

    v18 = !v59;
    return v18 & 1;
  }

  if (a1 != 49)
  {
    v19 = *(a2 + 30);
    v20 = *(a3 + 30);
    goto LABEL_58;
  }

  v41 = *(a2 + 58);
  v42 = *(a3 + 58);
  v43 = *(v41 + 16);
  if (v43 != *(v42 + 16))
  {
    v18 = 1;
    return v18 & 1;
  }

  if (!v43 || v41 == v42)
  {
    v18 = 0;
    return v18 & 1;
  }

  v44 = (v41 + 41);
  for (i = (v42 + 41); ; i += 16)
  {
    v46 = *(v44 - 9);
    v47 = *(v44 - 1);
    v48 = *v44;
    v49 = *(i - 9);
    v50 = *(i - 1);
    v51 = *i;
    if ((*v44 & 1) == 0)
    {
      break;
    }

    if ((*i & 1) == 0)
    {
      goto LABEL_62;
    }

    v66 = *v44;
    v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v54 = v53;
    if (v52 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v54 == v55)
    {
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);

      sub_1CEFD0994(v49, v50, 1);
    }

    else
    {
      v65 = sub_1CF9E8048();
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);

      sub_1CEFD0994(v49, v50, 1);
      if ((v65 & 1) == 0)
      {
        sub_1CEFD0994(v46, v47, 1);
        sub_1CEFD0994(v49, v50, 1);
        v62 = v46;
        v63 = v47;
        v64 = 1;
        goto LABEL_65;
      }
    }

    sub_1CEFD0994(v46, v47, 1);
    sub_1CEFD0994(v49, v50, 1);
    v48 = v66;
LABEL_22:
    sub_1CEFD0994(v46, v47, v48);
    v18 = 0;
    v44 += 16;
    if (!--v43)
    {
      return v18 & 1;
    }
  }

  if (*i)
  {
LABEL_62:
    sub_1CEFD0988(*(v44 - 9), *(v44 - 1), *v44);
    sub_1CEFD0988(v49, v50, v48 ^ 1);
    sub_1CEFD0994(v46, v47, v48);
    sub_1CEFD0994(v49, v50, v48 ^ 1);
    v18 = 1;
    return v18 & 1;
  }

  if (*(v44 - 1))
  {
    if (v47 == 1)
    {
      if (v50 != 1 || v46 != v49)
      {
        goto LABEL_63;
      }
    }

    else if (v46)
    {
      if (v50 != 2 || v49 != 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v57 = 0;
      if (v50 != 2 || v49)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_21;
  }

  if (!*(i - 1) && v46 == v49)
  {
LABEL_21:
    sub_1CEFD0988(*(v44 - 9), *(v44 - 1), 0);
    sub_1CEFD0988(v49, v50, 0);
    goto LABEL_22;
  }

LABEL_63:
  v57 = *(v44 - 9);
LABEL_64:
  sub_1CEFD0988(v57, *(v44 - 1), 0);
  sub_1CEFD0988(v49, v50, 0);
  v62 = v57;
  v63 = v47;
  v64 = 0;
LABEL_65:
  sub_1CEFD0994(v62, v63, v64);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1CF47EAD4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1CF1F77F0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1CF8E5BBC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1CF47EB94(_BYTE *a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  v73 = a5;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[8];
  if (v14 == 255)
  {
    if (a3 == 0xFF)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a3 == 0xFF)
  {
    goto LABEL_19;
  }

  v15 = *a1;
  if (!a1[8])
  {
    if (!a3 && v15 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v14 == 1)
  {
    if (a3 == 1 && v15 == a2)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (!v15)
  {
    if (a3 == 2 && !a2)
    {
      goto LABEL_56;
    }

    goto LABEL_19;
  }

  if (a3 != 2 || a2 != 1)
  {
LABEL_19:
    v16 = *(a1 + 13);
    v75[12] = *(a1 + 12);
    v75[13] = v16;
    v75[14] = *(a1 + 14);
    *&v75[15] = *(a1 + 30);
    v17 = *(a1 + 9);
    v75[8] = *(a1 + 8);
    v75[9] = v17;
    v18 = *(a1 + 11);
    v75[10] = *(a1 + 10);
    v75[11] = v18;
    v19 = *(a1 + 5);
    v75[4] = *(a1 + 4);
    v75[5] = v19;
    v20 = *(a1 + 7);
    v75[6] = *(a1 + 6);
    v75[7] = v20;
    v21 = *(a1 + 1);
    v75[0] = *a1;
    v75[1] = v21;
    v22 = *(a1 + 3);
    v75[2] = *(a1 + 2);
    v75[3] = v22;
    sub_1CEFCCC44(v75, &unk_1EC4BFE00, &unk_1CF9FEF00);
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    a1[32] = 5;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    a1[136] = 0;
    *(a1 + 137) = 6;
    *(a1 + 9) = xmmword_1CF9FD920;
    a1[160] = 4;
    *(a1 + 21) = 0;
    *(a1 + 22) = 0;
    *(a1 + 23) = 0;
    *(a1 + 24) = 0xB000000000000000;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *a1 = a2;
    a1[8] = a3;
    if (a3 <= 1u)
    {
      LODWORD(v15) = a2;
      if (a3)
      {
        goto LABEL_27;
      }

LABEL_21:
      if (v15 == a2)
      {
        goto LABEL_27;
      }

      goto LABEL_57;
    }

    if (a3 == 255)
    {
      goto LABEL_27;
    }

    if (a2)
    {
      goto LABEL_25;
    }

LABEL_56:
    if (a3 == 2)
    {
      goto LABEL_27;
    }

LABEL_57:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 436);
  }

LABEL_25:
  if (a3 != 2 || a2 != 1)
  {
    goto LABEL_57;
  }

LABEL_27:
  v71 = v9;
  v72 = v13;
  v23 = *(a1 + 31);
  v70 = v10;
  if (!v23)
  {
    v30 = a4;
    goto LABEL_33;
  }

  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;
  if (v24 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v26 != v27)
  {
    HIDWORD(v69) = sub_1CF9E8048();
    v28 = v23;
    v31 = a4;
    v32 = a4;

    v30 = v31;

    if ((v69 & 0x100000000) != 0)
    {
      goto LABEL_34;
    }

LABEL_33:
    v33 = *(a1 + 424);
    v75[10] = *(a1 + 408);
    v75[11] = v33;
    v75[12] = *(a1 + 440);
    v34 = *(a1 + 360);
    v75[6] = *(a1 + 344);
    v75[7] = v34;
    v35 = *(a1 + 392);
    v75[8] = *(a1 + 376);
    v75[9] = v35;
    v36 = *(a1 + 296);
    v75[2] = *(a1 + 280);
    v75[3] = v36;
    v37 = *(a1 + 328);
    v75[4] = *(a1 + 312);
    v75[5] = v37;
    v38 = *(a1 + 264);
    v75[0] = *(a1 + 248);
    v75[1] = v38;
    sub_1CEFCCC44(v75, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    *(a1 + 33) = 0;
    a1[272] = 5;
    *(a1 + 35) = 0;
    *(a1 + 36) = 0;
    *(a1 + 37) = 1;
    *(a1 + 19) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 329) = 0u;
    *(a1 + 345) = 6;
    *(a1 + 22) = xmmword_1CF9FD920;
    a1[368] = 4;
    *(a1 + 47) = 0;
    *(a1 + 48) = 0;
    *(a1 + 49) = 0;
    *(a1 + 50) = 0xB000000000000000;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 31) = v30;
    *(a1 + 32) = 0;
    v39 = v30;
    v28 = v30;
    goto LABEL_34;
  }

  v28 = v23;
  v29 = a4;

  v30 = a4;

LABEL_34:
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;
  if (v40 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v42 == v43)
  {
    v44 = v28;
    v45 = v30;
    v46 = v44;
    v47 = v45;

    v49 = v72;
  }

  else
  {
    v50 = sub_1CF9E8048();
    v51 = v28;
    v52 = v30;
    v53 = v51;
    v54 = v52;

    v49 = v72;
    if ((v50 & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 449);
    }
  }

  v55 = a1[456];
  if (v55 <= 1)
  {
    v56 = a1[456];
    if (a1[456])
    {
      v56 = 1;
    }
  }

  else if (v55 == 2)
  {
    v56 = 2;
  }

  else
  {
    if (v55 != 3)
    {
      goto LABEL_64;
    }

    v56 = 4;
  }

  if (v56 == qword_1CFA05EB0[v73])
  {
    goto LABEL_64;
  }

  if (v55 == 3)
  {
    if (!v73)
    {
      goto LABEL_64;
    }
  }

  else if (!a1[456] && v73 == 3)
  {
    goto LABEL_64;
  }

  memcpy(v75, a1, 0x208uLL);
  sub_1CEFCCBDC(v75, v74, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v75, v74, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E72B8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v74[0] = v61;
    *v60 = 136446466;
    v62 = sub_1CF38B634();
    v64 = v63;
    sub_1CEFCCC44(v75, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v65 = sub_1CEFD0DF0(v62, v64, v74);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2082;
    if (v73 > 1u)
    {
      if (v73 == 2)
      {
        v66 = 0xE700000000000000;
        v67 = 0x6B6E696C6D7973;
      }

      else
      {
        v66 = 0xE500000000000000;
        v67 = 0x7361696C61;
      }
    }

    else
    {
      v66 = 0xE300000000000000;
      if (v73)
      {
        v67 = 7498084;
      }

      else
      {
        v67 = 6516580;
      }
    }

    v68 = sub_1CEFD0DF0(v67, v66, v74);

    *(v60 + 14) = v68;
    _os_log_impl(&dword_1CEFC7000, v58, v59, "inconsistent item kind %{public}s new kind %{public}s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);

    (*(v70 + 8))(v49, v71);
  }

  else
  {

    sub_1CEFCCC44(v75, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    (*(v70 + 8))(v49, v71);
  }

  result = sub_1CEFCCC44(v75, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_64:
  a1[456] = v73;
  return result;
}