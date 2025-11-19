uint64_t sub_21BCFD694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21BE2995C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *v12;
      result = v12[1];
      v10 = v12[2];
      *v12 = *(v12 - 3);
      v12[2] = *(v12 - 1);
      *(v12 - 2) = result;
      *(v12 - 1) = v10;
      *(v12 - 3) = v14;
      v12 -= 3;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BCFD774(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_21BDFD0AC(v8);
      v8 = result;
    }

    v88 = v8 + 16;
    v89 = *(v8 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v91 = &v8[16 * v89];
        v5 = *v91;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_21BCFDD74((v90 + 24 * *v91), (v90 + 24 * *v92), v90 + 24 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v5)
        {
          goto LABEL_129;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_130;
        }

        *v91 = v5;
        *(v91 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_131;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        v5 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      result = *(v11 + 8);
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      if (result == *(v13 + 8) && v12 == *(v13 + 16))
      {
        v15 = 0;
      }

      else
      {
        result = sub_21BE2995C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 64);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 4) && *v16 == *(v16 - 3))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21BE2995C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 3;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 0;
          v19 = 24 * v7;
          v20 = 24 * v9;
          v21 = v9;
          do
          {
            if (v21 != v7 + v18 - 1)
            {
              v27 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v27 + v20);
              v23 = v27 + v19;
              v24 = *v22;
              v25 = *(v22 + 2);
              v26 = *(v23 - 8);
              *v22 = *(v23 - 24);
              *(v22 + 2) = v26;
              *(v23 - 24) = v24;
              *(v23 - 8) = v25;
            }

            ++v21;
            --v18;
            v19 -= 24;
            v20 += 24;
          }

          while (v21 < v7 + v18);
        }
      }
    }

    v28 = v5[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v28)
        {
          v29 = v5[1];
        }

        else
        {
          v29 = v9 + a4;
        }

        if (v29 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v29)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BBBCBFC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_21BBBCBFC((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v97;
    if (!*v97)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_21BCFDD74((*v5 + 24 * v85), (*v5 + 24 * *&v8[16 * v46 + 32]), *v5 + 24 * v86, v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21BDFD0AC(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_21BDFD020(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v30 = *v5;
  v31 = *v5 + 24 * v7;
  v95 = v9;
  v32 = v9 - v7;
LABEL_43:
  v33 = v30 + 24 * v7;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = v32;
  v37 = v31;
  while (1)
  {
    v38 = v34 == *(v37 - 2) && v35 == *(v37 - 1);
    if (v38 || (result = sub_21BE2995C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v29)
      {
        goto LABEL_43;
      }

      v7 = v29;
      v5 = a3;
      v9 = v95;
      goto LABEL_54;
    }

    if (!v30)
    {
      break;
    }

    v39 = *v37;
    v34 = v37[1];
    v35 = v37[2];
    *v37 = *(v37 - 3);
    v37[2] = *(v37 - 1);
    *(v37 - 2) = v34;
    *(v37 - 1) = v35;
    *(v37 - 3) = v39;
    v37 -= 3;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_21BCFDD74(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v15 && (sub_21BE2995C() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v5 -= 24;
    do
    {
      v16 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v16 && (sub_21BE2995C() & 1) != 0)
      {
        v19 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v17 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_21BCFDFD4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeSharingViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  return sub_21BCFE038(a1, a2, v7);
}

uint64_t sub_21BCFE038(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = sub_21BE25D6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = MEMORY[0x277D84F90];
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 82) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  sub_21BE25D5C();
  (*(v15 + 32))(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken, v18, v14);
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac) = 0;
  v19 = (a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss);
  *v19 = 0;
  v19[1] = 0;
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = 0;
  sub_21BE25F4C();
  *(a3 + 16) = a1;
  *(a3 + 72) = a2;
  v20 = a1;
  sub_21BE263FC();
  v21 = sub_21BE289CC();

  v22 = [objc_opt_self() bundleWithIdentifier_];

  v23 = [objc_opt_self() flowWithBundle_];
  if (v23)
  {
    v24 = [v23 contentVersion];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    sub_21BE2614C();
    v26 = v25;
    v27 = sub_21BE26A2C();
    v28 = sub_21BE28FCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = v6;
      v30 = v29;
      v31 = swift_slowAlloc();
      v47 = v7;
      v32 = v31;
      v49 = v31;
      *v30 = 136315138;
      v26 = v26;
      v33 = [v26 description];
      v45 = v20;
      v34 = v33;
      v35 = sub_21BE28A0C();
      v46 = v13;
      v36 = v35;
      v38 = v37;

      v39 = sub_21BB3D81C(v36, v38, &v49);

      *(v30 + 4) = v39;
      _os_log_impl(&dword_21BB35000, v27, v28, "Privacy version for onboarding: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x21CF05C50](v32, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);

      (*(v47 + 8))(v46, v48);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    sub_21BE2614C();
    v40 = sub_21BE26A2C();
    v41 = sub_21BE28FDC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21BB35000, v40, v41, "Failed to get privacy version from onboarding", v42, 2u);
      MEMORY[0x21CF05C50](v42, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v26 = sub_21BE293EC();
  }

  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion) = v26;
  return a3;
}

void sub_21BCFE528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  *(v1 + 80) = *(v0 + 24);
  *(v1 + 81) = v2;
}

void sub_21BCFE550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
}

uint64_t sub_21BCFE564(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_21BB3A2A4(0, &qword_27CDB9E70, 0x277CC1E90);

  v6 = sub_21BCFAA1C(a1, a2, 0);
  v7 = [v6 localizedName];

  v8 = sub_21BE28A0C();
  return v8;
}

uint64_t sub_21BCFE7F8()
{
  result = sub_21BE25D6C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21BE25F5C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of AgeRangeSharingViewModel.fetchAccountInfo(altDSID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 840);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBA6A64;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AgeRangeSharingViewModel.load()()
{
  v2 = *(*v0 + 856);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return v6();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AgeRangeSharingViewModel.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AgeRangeSharingViewModel.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_21BCFEEA0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21BCFEEBC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_21BCFEEEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BCFEF68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_21BCFF090(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_21BCFF2B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = *(v0 + 32);
  *(v2 + 24) = v1;
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;
  sub_21BCBD3B8(v1, v4);
  sub_21BCBD3D4(v3, v5);
}

void sub_21BCFF304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion) = v2;
  v4 = v2;
}

uint64_t sub_21BCFF35C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_21BCFF398()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

void sub_21BCFF3D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 52) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_21BCFF510@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F38, &qword_21BE42520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F40, &qword_21BE42528);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  *v7 = sub_21BE275DC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F48, &qword_21BE42530);
  sub_21BCFF704(v2, &v7[*(v12 + 44)]);
  v13 = sub_21BE27BAC();
  v14 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v13)
  {
    v14 = sub_21BE27BBC();
  }

  sub_21BBB7D84(v7, v11, &qword_27CDB9F38, &qword_21BE42520);
  v15 = &v11[*(v8 + 36)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = [objc_opt_self() systemBackgroundColor];
  v17 = sub_21BE2826C();
  v18 = sub_21BE27B7C();
  sub_21BBB7D84(v11, a1, &qword_27CDB9F40, &qword_21BE42528);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F50, &qword_21BE42538);
  v20 = a1 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  return result;
}

uint64_t sub_21BCFF704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F58, &qword_21BE42540);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F60, &qword_21BE42548);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v26 - v17);
  *v18 = sub_21BE2869C();
  v18[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F68, &qword_21BE42550);
  sub_21BCFF988(a1, v18 + *(v20 + 44));
  sub_21BE2869C();
  sub_21BE26F2C();
  v21 = (v18 + *(v12 + 44));
  v22 = v26[1];
  *v21 = v26[0];
  v21[1] = v22;
  v21[2] = v26[2];
  *v10 = sub_21BE2770C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F70, &qword_21BE42558);
  sub_21BCFFCE8(a1, &v10[*(v23 + 44)]);
  sub_21BBA3854(v18, v16, &qword_27CDB9F60, &qword_21BE42548);
  sub_21BBA3854(v10, v8, &qword_27CDB9F58, &qword_21BE42540);
  sub_21BBA3854(v16, a2, &qword_27CDB9F60, &qword_21BE42548);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F78, &unk_21BE42560);
  sub_21BBA3854(v8, a2 + *(v24 + 48), &qword_27CDB9F58, &qword_21BE42540);
  sub_21BB3A4CC(v10, &qword_27CDB9F58, &qword_21BE42540);
  sub_21BB3A4CC(v18, &qword_27CDB9F60, &qword_21BE42548);
  sub_21BB3A4CC(v8, &qword_27CDB9F58, &qword_21BE42540);
  return sub_21BB3A4CC(v16, &qword_27CDB9F60, &qword_21BE42548);
}

uint64_t sub_21BCFF988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FB0, &qword_21BE42598);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v42 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FD0, &qword_21BE42650);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = *(sub_21BE2723C() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_21BE276AC();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #4.0 }

  *v18 = _Q0;
  v45 = a1[2];
  v27 = v45;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FD8, &qword_21BE42658);
  *&v18[*(v28 + 52)] = v27;
  *&v18[*(v28 + 56)] = 256;
  v29 = &v18[*(v12 + 44)];
  *v29 = 0x3FF0000000000000;
  *(v29 + 4) = 0;
  v31 = *a1;
  v30 = a1[1];
  sub_21BD01C94(&v45, v44);

  v32 = sub_21BE2837C();
  v33 = sub_21BE282FC();
  KeyPath = swift_getKeyPath();
  v35 = (v10 + *(v4 + 44));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
  v37 = *MEMORY[0x277CE1050];
  v38 = sub_21BE283BC();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  *v10 = v32;
  v10[1] = KeyPath;
  v10[2] = v33;
  sub_21BBA3854(v18, v16, &qword_27CDB9FD0, &qword_21BE42650);
  sub_21BBA3854(v10, v8, &qword_27CDB9FB0, &qword_21BE42598);
  v39 = v43;
  sub_21BBA3854(v16, v43, &qword_27CDB9FD0, &qword_21BE42650);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FE0, &unk_21BE42660);
  sub_21BBA3854(v8, v39 + *(v40 + 48), &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BB3A4CC(v10, &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BB3A4CC(v18, &qword_27CDB9FD0, &qword_21BE42650);
  sub_21BB3A4CC(v8, &qword_27CDB9FB0, &qword_21BE42598);
  return sub_21BB3A4CC(v16, &qword_27CDB9FD0, &qword_21BE42650);
}

uint64_t sub_21BCFFCE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F80, &qword_21BE4E530);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F88, &qword_21BE42570);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F90, &qword_21BE42578);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F98, &qword_21BE42580);
  v20 = *(*(v59 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v59);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  *v15 = sub_21BE275DC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v29 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FA0, &qword_21BE42588) + 44)];
  v60 = a1;
  sub_21BD00284(a1, v29);
  LOBYTE(a1) = sub_21BE27BCC();
  v30 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != a1)
  {
    v30 = sub_21BE27BBC();
  }

  sub_21BBB7D84(v15, v19, &qword_27CDB9F88, &qword_21BE42570);
  v31 = &v19[*(v16 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  v33 = sub_21BE27B8C();
  *(inited + 32) = v33;
  v34 = sub_21BE27B9C();
  *(inited + 33) = v34;
  v35 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v33)
  {
    v35 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v34)
  {
    v35 = sub_21BE27BBC();
  }

  v36 = v62;
  sub_21BE26E0C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_21BBB7D84(v19, v26, &qword_27CDB9F90, &qword_21BE42578);
  v45 = &v26[*(v59 + 36)];
  *v45 = v35;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  sub_21BBB7D84(v26, v28, &qword_27CDB9F98, &qword_21BE42580);
  if (v60[7])
  {
    v46 = v58;
    sub_21BE285AC();
    v47 = sub_21BE27B7C();
    sub_21BE26E0C();
    v48 = v46 + *(v36 + 36);
    *v48 = v47;
    *(v48 + 8) = v49;
    *(v48 + 16) = v50;
    *(v48 + 24) = v51;
    *(v48 + 32) = v52;
    *(v48 + 40) = 0;
    sub_21BBB7D84(v46, v11, &qword_27CDB9EC8, &qword_21BE42428);
    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  (*(v61 + 56))(v11, v53, 1, v36);
  sub_21BBA3854(v28, v23, &qword_27CDB9F98, &qword_21BE42580);
  v54 = v63;
  sub_21BBA3854(v11, v63, &qword_27CDB9F80, &qword_21BE4E530);
  v55 = v64;
  sub_21BBA3854(v23, v64, &qword_27CDB9F98, &qword_21BE42580);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FA8, &qword_21BE42590);
  sub_21BBA3854(v54, v55 + *(v56 + 48), &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BB3A4CC(v11, &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BB3A4CC(v28, &qword_27CDB9F98, &qword_21BE42580);
  sub_21BB3A4CC(v54, &qword_27CDB9F80, &qword_21BE4E530);
  return sub_21BB3A4CC(v23, &qword_27CDB9F98, &qword_21BE42580);
}

uint64_t sub_21BD00284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FB0, &qword_21BE42598);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v29 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-v9];
  v28 = sub_21BE2771C();
  v31 = 1;
  sub_21BD0064C(a1, &v44);
  v34 = *&v45[16];
  v35 = *&v45[32];
  v36 = *&v45[48];
  v37 = v45[64];
  v32 = v44;
  v33 = *v45;
  v39 = v45[64];
  v38[2] = *&v45[16];
  v38[3] = *&v45[32];
  v38[4] = *&v45[48];
  v38[0] = v44;
  v38[1] = *v45;
  sub_21BBA3854(&v32, &v41, &qword_27CDB9FB8, &qword_21BE425A0);
  sub_21BB3A4CC(v38, &qword_27CDB9FB8, &qword_21BE425A0);
  *&v30[39] = v34;
  *&v30[55] = v35;
  *&v30[71] = v36;
  v30[87] = v37;
  *&v30[7] = v32;
  *&v30[23] = v33;
  v27 = v31;
  v11 = sub_21BE2837C();
  v12 = [objc_opt_self() tertiaryLabelColor];
  v13 = sub_21BE2826C();
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(v5 + 44));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_21BE283BC();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  v19 = v29;
  sub_21BBA3854(v10, v29, &qword_27CDB9FB0, &qword_21BE42598);
  v20 = v28;
  v41 = v28;
  LOBYTE(v17) = v27;
  LOBYTE(v42[0]) = v27;
  *(&v42[2] + 1) = *&v30[32];
  *(&v42[3] + 1) = *&v30[48];
  *(&v42[4] + 1) = *&v30[64];
  *(&v42[5] + 1) = *&v30[80];
  *(v42 + 1) = *v30;
  *(&v42[1] + 1) = *&v30[16];
  HIDWORD(v42[5]) = *&v40[3];
  *(&v42[5] + 9) = *v40;
  v43 = 0x3FF0000000000000;
  v21 = v42[4];
  *(a2 + 64) = v42[3];
  *(a2 + 80) = v21;
  *(a2 + 96) = v42[5];
  v22 = v42[0];
  *a2 = v41;
  *(a2 + 16) = v22;
  v23 = v42[2];
  *(a2 + 32) = v42[1];
  *(a2 + 48) = v23;
  *(a2 + 112) = 0x3FF0000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FC0, &qword_21BE42610);
  sub_21BBA3854(v19, a2 + *(v24 + 64), &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BBA3854(&v41, &v44, &qword_27CDB9FC8, &qword_21BE42618);
  sub_21BB3A4CC(v10, &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BB3A4CC(v19, &qword_27CDB9FB0, &qword_21BE42598);
  v44 = v20;
  v45[0] = v17;
  *&v45[33] = *&v30[32];
  *&v45[49] = *&v30[48];
  v46 = *&v30[64];
  v47 = *&v30[80];
  *&v45[1] = *v30;
  *&v45[17] = *&v30[16];
  *&v48[3] = *&v40[3];
  *v48 = *v40;
  v49 = 0x3FF0000000000000;
  return sub_21BB3A4CC(&v44, &qword_27CDB9FC8, &qword_21BE42618);
}

uint64_t sub_21BD0064C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2766C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BE2765C();
  sub_21BE2764C();
  v6 = a1[3];
  v7 = a1[4];
  sub_21BE2763C();
  sub_21BE2764C();
  sub_21BE2768C();
  v8 = sub_21BE27DAC();
  v34 = v9;
  v35 = v8;
  v33 = v10;
  v36 = v11;
  sub_21BE2765C();
  sub_21BE2764C();
  v12 = a1[5];
  v13 = a1[6];
  sub_21BE2763C();
  sub_21BE2764C();
  sub_21BE2768C();
  v14 = sub_21BE27DAC();
  v16 = v15;
  v18 = v17;
  sub_21BE27BEC();
  v19 = sub_21BE27D9C();
  v21 = v20;
  v23 = v22;

  sub_21BBC7C7C(v14, v16, v18 & 1);

  sub_21BE2833C();
  v24 = sub_21BE27D4C();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_21BBC7C7C(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v28 & 1;
  *(a2 + 56) = v30;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BBA4A38(v24, v26, v28 & 1);

  sub_21BBC7C7C(v24, v26, v28 & 1);

  sub_21BBC7C7C(v35, v34, v33 & 1);
}

uint64_t sub_21BD00920@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_21BCFF510(a1);
}

uint64_t sub_21BD00964@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EA8, &qword_21BE42408);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  *v9 = sub_21BE2770C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EB0, &qword_21BE42410);
  sub_21BD01084(&v9[*(v10 + 44)]);
  v11 = [objc_opt_self() systemBackgroundColor];
  v12 = sub_21BE2826C();
  v13 = sub_21BE27B7C();
  v14 = &v9[*(v3 + 44)];
  *v14 = v12;
  v14[8] = v13;
  v15 = sub_21BE2828C();
  v46 = 0x800000021BE5D350;
  v47 = v15;
  v44 = 0x800000021BE5D380;
  v16 = sub_21BE2829C();
  v42 = v16;
  v52 = sub_21BE2830C();
  v49 = 0x800000021BE5D3B0;
  v51 = sub_21BE282BC();
  v50 = sub_21BE27B7C();
  v37 = 0x800000021BE5D3D0;
  v36 = sub_21BE282EC();
  v38 = 0x800000021BE5D3F0;
  v39 = sub_21BE282CC();
  v40 = 0x800000021BE5D410;
  v48 = v7;
  sub_21BBA3854(v9, v7, &qword_27CDB9EA8, &qword_21BE42408);
  sub_21BBA3854(v7, a1, &qword_27CDB9EA8, &qword_21BE42408);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EB8, &qword_21BE42418);
  v18 = (a1 + v17[12]);
  *&v53 = 0x6E6769736F6ELL;
  *(&v53 + 1) = 0xE600000000000000;
  *&v54 = v15;
  *(&v54 + 1) = 0x746E65746E6F43;
  v45 = 0xD000000000000025;
  *&v55[0] = 0xE700000000000000;
  *(&v55[0] + 1) = 0xD000000000000025;
  *&v55[1] = 0x800000021BE5D350;
  BYTE8(v55[1]) = 1;
  v19 = v54;
  *v18 = v53;
  v18[1] = v19;
  v18[2] = v55[0];
  *(v18 + 41) = *(v55 + 9);
  v20 = (a1 + v17[16]);
  v43 = 0xD000000000000021;
  *&v56 = 0xD000000000000021;
  *(&v56 + 1) = 0x800000021BE5D380;
  *v57 = v16;
  strcpy(&v57[8], "Communication");
  *&v57[22] = -4864;
  strcpy(&v57[24], "Contacts Only");
  *&v57[38] = -4864;
  v57[40] = 1;
  v21 = *v57;
  *v20 = v56;
  v20[1] = v21;
  v20[2] = *&v57[16];
  *(v20 + 41) = *&v57[25];
  v22 = (a1 + v17[20]);
  *&v58 = 0x656C637269632E69;
  *(&v58 + 1) = 0xE800000000000000;
  *&v59 = v52;
  *(&v59 + 1) = 0x697373696D726550;
  v41 = 0xD00000000000001DLL;
  *&v60 = 0xEB00000000736E6FLL;
  *(&v60 + 1) = 0xD00000000000001DLL;
  *&v61[0] = v49;
  BYTE8(v61[0]) = 1;
  *&v61[1] = v51;
  BYTE8(v61[1]) = v50;
  v23 = v59;
  *v22 = v58;
  v22[1] = v23;
  v24 = v61[0];
  v22[2] = v60;
  v22[3] = v24;
  *(v22 + 57) = *(v61 + 9);
  v25 = (a1 + v17[24]);
  v26 = v36;
  v27 = v37;
  *&v62 = 0xD000000000000015;
  *(&v62 + 1) = v37;
  *v63 = v36;
  strcpy(&v63[8], "Always Allowed");
  v63[23] = -18;
  *&v63[24] = 0xD000000000000014;
  v28 = v38;
  *&v63[32] = v38;
  v63[40] = 1;
  v29 = *v63;
  *v25 = v62;
  v25[1] = v29;
  v25[2] = *&v63[16];
  *(v25 + 41) = *&v63[25];
  v30 = (a1 + v17[28]);
  HIWORD(v64) = -4864;
  v31 = v39;
  v32 = v40;
  *v65 = v39;
  strcpy(&v65[8], "Always Blocked");
  v65[23] = -18;
  *&v65[24] = 0xD000000000000013;
  *&v65[32] = v40;
  v65[40] = 0;
  v33 = *&v65[25];
  strcpy(&v64, "x.square.fill");
  v34 = *v65;
  *v30 = v64;
  v30[1] = v34;
  v30[2] = *&v65[16];
  *(v30 + 41) = v33;
  sub_21BD01A84(&v53, v77);
  sub_21BD01A84(&v56, v77);
  sub_21BBA3854(&v58, v77, &qword_27CDB9EC0, &qword_21BE42420);
  sub_21BD01A84(&v62, v77);
  sub_21BD01A84(&v64, v77);
  sub_21BB3A4CC(v9, &qword_27CDB9EA8, &qword_21BE42408);
  strcpy(v66, "x.square.fill");
  v66[7] = -4864;
  v67 = v31;
  strcpy(v68, "Always Blocked");
  v68[15] = -18;
  v69 = 0xD000000000000013;
  v70 = v32;
  v71 = 0;
  sub_21BD01ABC(v66);
  v72[0] = 0xD000000000000015;
  v72[1] = v27;
  v72[2] = v26;
  strcpy(v73, "Always Allowed");
  v73[15] = -18;
  v74 = 0xD000000000000014;
  v75 = v28;
  v76 = 1;
  sub_21BD01ABC(v72);
  v77[0] = 0x656C637269632E69;
  v77[1] = 0xE800000000000000;
  v77[2] = v52;
  v77[3] = 0x697373696D726550;
  v77[4] = 0xEB00000000736E6FLL;
  v77[5] = v41;
  v77[6] = v49;
  v78 = 1;
  v79 = v51;
  v80 = v50;
  sub_21BB3A4CC(v77, &qword_27CDB9EC0, &qword_21BE42420);
  v81[0] = v43;
  v81[1] = v44;
  v81[2] = v42;
  strcpy(v82, "Communication");
  v82[7] = -4864;
  strcpy(v83, "Contacts Only");
  v83[7] = -4864;
  v84 = 1;
  sub_21BD01ABC(v81);
  v85[0] = 0x6E6769736F6ELL;
  v85[1] = 0xE600000000000000;
  v85[2] = v47;
  v85[3] = 0x746E65746E6F43;
  v85[4] = 0xE700000000000000;
  v85[5] = v45;
  v85[6] = v46;
  v86 = 1;
  sub_21BD01ABC(v85);
  return sub_21BB3A4CC(v48, &qword_27CDB9EA8, &qword_21BE42408);
}

uint64_t sub_21BD01084@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v1 = *(*(v57 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v57);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9ED0, &qword_21BE42430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9ED8, &qword_21BE42438);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EE0, &qword_21BE42440);
  v14 = *(*(v54 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v54);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v55 = &v53 - v20;
  *v9 = sub_21BE275DC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EE8, &qword_21BE42448);
  sub_21BD015B0(&v9[*(v21 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  v53 = xmmword_21BE33260;
  *(inited + 16) = xmmword_21BE33260;
  v23 = sub_21BE27BAC();
  *(inited + 32) = v23;
  v24 = sub_21BE27BCC();
  *(inited + 33) = v24;
  v25 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v23)
  {
    v25 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v24)
  {
    v25 = sub_21BE27BBC();
  }

  sub_21BBB7D84(v9, v13, &qword_27CDB9ED0, &qword_21BE42430);
  v26 = &v13[*(v10 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  v27 = swift_initStackObject();
  *(v27 + 16) = v53;
  v28 = sub_21BE27B8C();
  *(v27 + 32) = v28;
  v29 = sub_21BE27B9C();
  *(v27 + 33) = v29;
  v30 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v28)
  {
    v30 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v29)
  {
    v30 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_21BBB7D84(v13, v19, &qword_27CDB9ED8, &qword_21BE42438);
  v39 = &v19[*(v54 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = v19;
  v41 = v55;
  sub_21BBB7D84(v40, v55, &qword_27CDB9EE0, &qword_21BE42440);
  sub_21BE285AC();
  v42 = sub_21BE27B7C();
  sub_21BE26E0C();
  v43 = v56;
  v44 = &v5[*(v57 + 36)];
  *v44 = v42;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  sub_21BBA3854(v41, v43, &qword_27CDB9EE0, &qword_21BE42440);
  v49 = v59;
  sub_21BBA3854(v5, v59, &qword_27CDB9EC8, &qword_21BE42428);
  v50 = v58;
  sub_21BBA3854(v43, v58, &qword_27CDB9EE0, &qword_21BE42440);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF8, &qword_21BE42458);
  sub_21BBA3854(v49, v50 + *(v51 + 48), &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BB3A4CC(v5, &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BB3A4CC(v41, &qword_27CDB9EE0, &qword_21BE42440);
  sub_21BB3A4CC(v49, &qword_27CDB9EC8, &qword_21BE42428);
  return sub_21BB3A4CC(v43, &qword_27CDB9EE0, &qword_21BE42440);
}

uint64_t sub_21BD015B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F00, &qword_21BE42460);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  sub_21BE2767C();
  v9 = sub_21BE27DAC();
  v28 = v10;
  v29 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21BE286AC();
  sub_21BE2725C();
  v16 = v13 & 1;
  v60 = v13 & 1;
  sub_21BE2767C();
  sub_21BE2708C();
  *&v8[*(v3 + 44)] = 257;
  v17 = v27;
  sub_21BBA3854(v8, v27, &qword_27CDB9F00, &qword_21BE42460);
  *&v38 = v9;
  *(&v38 + 1) = v11;
  LOBYTE(v39) = v16;
  *(&v39 + 1) = *v37;
  DWORD1(v39) = *&v37[3];
  *(&v39 + 1) = v15;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v18 = v35;
  v19 = v36;
  v20 = v33;
  *(a1 + 96) = v34;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  v21 = v41;
  v22 = v42;
  v23 = v39;
  *(a1 + 32) = v40;
  *(a1 + 48) = v21;
  v47 = 0x3FF0000000000000;
  *(a1 + 144) = 0x3FF0000000000000;
  *(a1 + 64) = v22;
  *(a1 + 80) = v20;
  *a1 = v38;
  *(a1 + 16) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F08, &qword_21BE42468);
  sub_21BBA3854(v17, a1 + *(v24 + 48), &qword_27CDB9F00, &qword_21BE42460);
  sub_21BBA3854(&v38, v48, &qword_27CDB9F10, &qword_21BE42470);
  sub_21BB3A4CC(v8, &qword_27CDB9F00, &qword_21BE42460);
  sub_21BB3A4CC(v17, &qword_27CDB9F00, &qword_21BE42460);
  v48[0] = v29;
  v48[1] = v28;
  v49 = v16;
  *v50 = *v37;
  *&v50[3] = *&v37[3];
  v51 = v15;
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v59 = 0x3FF0000000000000;
  return sub_21BB3A4CC(v48, &qword_27CDB9F10, &qword_21BE42470);
}

uint64_t sub_21BD018D8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21BE2770C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E78, &qword_21BE423D8) + 44);
  *v2 = sub_21BE2771C();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E80, &qword_21BE423E0);
  sub_21BD00964(v2 + *(v3 + 44));
  v4 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E88, &qword_21BE423E8) + 36));
  v5 = *(sub_21BE2723C() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_21BE276AC();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E90, &qword_21BE423F0) + 36)] = 256;
  LOBYTE(v6) = sub_21BE27B7C();
  v13 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E98, &qword_21BE423F8) + 36);
  *v13 = v6;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v15 = sub_21BE2826C();
  v16 = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EA0, &qword_21BE42400);
  v18 = a1 + *(result + 36);
  *v18 = v15;
  *(v18 + 8) = v16;
  return result;
}

uint64_t sub_21BD01AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BD01B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BD01B94()
{
  result = qword_27CDB9F18;
  if (!qword_27CDB9F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9EA0, &qword_21BE42400);
    sub_21BB3B038(&qword_27CDB9F20, &qword_27CDB9F28, qword_21BE424C0);
    sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9F18);
  }

  return result;
}

unint64_t sub_21BD01CF0()
{
  result = qword_27CDB9FE8;
  if (!qword_27CDB9FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9F50, &qword_21BE42538);
    sub_21BD01DA8();
    sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9FE8);
  }

  return result;
}

unint64_t sub_21BD01DA8()
{
  result = qword_27CDB9FF0;
  if (!qword_27CDB9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9F40, &qword_21BE42528);
    sub_21BB3B038(&qword_27CDB9FF8, &qword_27CDB9F38, &qword_21BE42520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9FF0);
  }

  return result;
}

uint64_t sub_21BD01E60@<X0>(void *a1@<X8>)
{
  sub_21BD0A07C();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BD01EB0(uint64_t *a1)
{
  v2 = *a1;
  sub_21BD0A07C();

  return sub_21BE2756C();
}

uint64_t sub_21BD01F10()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 56);
  v6 = *(v0 + 48);
  v10 = v6;
  if (v11 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v10, &qword_27CDBA100, &unk_21BE42B48);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

void sub_21BD02078(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *&v3[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v3;
    sub_21BE26CAC();

    v7 = v19[0];
    if (!v19[0])
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = sub_21BE289CC();
    v11 = [v7 memberForAltDSID_];

    if (v11)
    {
      v12 = swift_allocObject();
      v13 = *(a1 + 16);
      *(v12 + 16) = *a1;
      *(v12 + 32) = v13;
      *(v12 + 48) = *(a1 + 32);
      *(v12 + 57) = *(a1 + 41);
      *(v12 + 80) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v19[8] = v14;
      sub_21BD0924C(a1, v19);
      sub_21BE283EC();
      v15 = v19[0];
      v16 = v19[1];
      v17 = sub_21BD09240;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v12 = 0;
    }

    *a2 = v15;
    a2[1] = v16;
    a2[2] = v17;
    a2[3] = v12;
  }

  else
  {
    v18 = *(a1 + 24);
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel);
    sub_21BE2726C();
    __break(1u);
  }
}

void sub_21BD02298(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = a1[2];
  if (!v6)
  {
    v43 = a1[3];
    type metadata accessor for FAFamilyLandingPageViewModel();
    v44 = &qword_27CDB68F0;
    v45 = type metadata accessor for FAFamilyLandingPageViewModel;
LABEL_25:
    sub_21BD0906C(v44, 255, v45);
    sub_21BE2726C();
    __break(1u);
    return;
  }

  v7 = v6;
  sub_21BD01F10();
  LOBYTE(v47) = 0;
  sub_21BE2858C();
  v8 = a1[4];
  if (!v8)
  {
    v46 = a1[5];
    type metadata accessor for LocationViewModel();
    v44 = &qword_27CDBDC20;
    v45 = type metadata accessor for LocationViewModel;
    goto LABEL_25;
  }

  v9 = *&v7[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs];

  v10 = v8;

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore();
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);

  *(a3 + 96) = sub_21BE270CC();
  *(a3 + 104) = v11;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BD0906C(&qword_27CDB5C40, 255, type metadata accessor for FamilyCircleStore);

  *(a3 + 112) = sub_21BE270CC();
  *(a3 + 120) = v12;
  swift_unknownObjectWeakInit();
  sub_21BE25FEC();
  sub_21BE25FDC();
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_21BE289CC();

  v15 = [v13 initWithSuiteName_];

  v16 = v15;
  if (!v15)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  *(a3 + 144) = v16;
  sub_21BE283EC();
  *(a3 + 184) = 0;
  *(a3 + 192) = v48;
  sub_21BE283EC();
  *(a3 + 200) = 0;
  *(a3 + 208) = v48;
  sub_21BE283EC();
  *(a3 + 216) = 0;
  *(a3 + 224) = v48;
  [objc_allocWithZone(type metadata accessor for FamilyMemberAccountDetailsViewModel()) init];
  sub_21BE283EC();
  *(a3 + 248) = v47;
  *(a3 + 256) = v48;
  sub_21BE283EC();
  *(a3 + 264) = v47;
  *(a3 + 272) = v48;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v17 = v49;
  *a3 = sub_21BE270CC();
  *(a3 + 8) = v18;
  *(a3 + 152) = a2;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel);
  v19 = v7;
  v20 = a2;
  *(a3 + 16) = sub_21BE270CC();
  *(a3 + 24) = v21;
  swift_unknownObjectWeakAssign();
  type metadata accessor for LocationViewModel();
  sub_21BD0906C(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
  v22 = v10;
  *(a3 + 32) = sub_21BE270CC();
  *(a3 + 40) = v23;
  *(a3 + 160) = v49;
  *(a3 + 168) = v50;
  *(a3 + 176) = v51;
  *(a3 + 136) = v9;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(a3 + 48) = sub_21BD09388;
  *(a3 + 56) = v24;
  *(a3 + 64) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  *(a3 + 72) = sub_21BD09390;
  *(a3 + 80) = v25;
  *(a3 + 88) = 0;
  v26 = *&v19[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v20;
  v28 = v19;
  v29 = v27;
  sub_21BE26CAC();

  v30 = v47;
  if (!v47)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277D08248]) &selRef_onComplete_onQueue_];
  }

  v31 = [v30 me];

  if (v31 && (v32 = [v31 altDSID], v31, v32))
  {
    v33 = sub_21BE28A0C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36 = [v29 altDSID];
  if (v36)
  {
    v37 = v36;
    v38 = sub_21BE28A0C();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xE000000000000000;
  }

  v41 = objc_allocWithZone(type metadata accessor for FamilyDependentPasswordResetController());
  v42 = sub_21BC0C5A4(v33, v35, v38, v40);

  swift_unknownObjectRelease();
  *(a3 + 232) = v42;
  *(a3 + 240) = 0;
}

uint64_t sub_21BD02A58()
{
  v1 = sub_21BE2757C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = v0[1];
  v10[0] = *v0;
  v10[1] = v6;
  v11[0] = v0[2];
  *(v11 + 9) = *(v0 + 41);
  sub_21BD02078(v10, &v9);
  v7 = v9;
  (*(v2 + 104))(v5, *MEMORY[0x277CDDDC0], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA0D0, &qword_21BE42A50);
  sub_21BD090B4();
  sub_21BE280AC();
  (*(v2 + 8))(v5, v1);
  return sub_21BD091E8(v7);
}

void sub_21BD02BD4(uint64_t a1@<X8>)
{
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + 152) isMe] && ((*(v4 + 104))(v7, *MEMORY[0x277D07F40], v3), v8 = MEMORY[0x21CF01150](v7), (*(v4 + 8))(v7, v3), (v8 & 1) != 0) && (sub_21BE2916C() & 1) != 0)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = [v10 bundleForClass_];
    v12 = sub_21BE2599C();
    v14 = v13;

    v15 = [v10 bundleForClass_];
    v16 = sub_21BE2599C();
    v18 = v17;

    v19 = 0x800000021BE5D520;
    v20 = 0xD000000000000029;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v19;
  *(a1 + 48) = 0;
}

uint64_t sub_21BD02E3C(void *a1)
{
  v2 = type metadata accessor for MemberDetailsAppleCashViewModel();
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = a1;
  v6 = sub_21BCC3AC8(v5, v8);

  return v6;
}

char *sub_21BD02EA4(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v15;
  if (!v15)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v5 = [v4 me];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = v15;
  if (!v15)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v7 = [objc_allocWithZone(FAAppleCardUtilities) init];
  v8 = type metadata accessor for MemberDetailsAppleCardViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = a1;
  v13 = sub_21BD09398(v12, v5, v7, v6, v11);

  return v13;
}

uint64_t sub_21BD03038()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_21BE26CAC();

  v4 = v9;
  if (!v9)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v5 = [v4 me];

  if (v5)
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v6 = sub_21BE2940C();

    v7 = v6 ^ 1;
  }

  else
  {

    v7 = 1;
  }

  return v7 & 1;
}

double sub_21BD03148@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_21BD03038();
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v7 = sub_21BE270CC();
  v9 = v8;
  v10 = a1;
  if ([v10 isMe])
  {
    LOBYTE(v36[0]) = 0;
    *&v30 = v10;
    *(&v30 + 1) = v7;
    *&v31 = v9;
    BYTE8(v31) = v6 & 1;
    v34[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA198, &qword_21BE42C50);
    sub_21BD09988();
    sub_21BD099DC();
    sub_21BE2784C();
  }

  else
  {
    v11 = [v10 contact];
    if (v11)
    {

      v12 = *(v2 + 224);
      LOBYTE(v30) = *(v2 + 216);
      *(&v30 + 1) = v12;
      v13 = v10;
      v14 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      sub_21BE2841C();
      v15 = v38;
      v16 = v39;
      LOBYTE(v30) = 0;
      *&v38 = v13;
      *(&v38 + 1) = v7;
      *&v39 = v14;
      WORD4(v39) = v6 & 1;
      *v40 = v13;
      *&v40[8] = v15;
      v40[24] = v16;
      v41[25] = 0;
      v17 = v13;
    }

    else
    {
      v18 = *(v2 + 192);
      LOBYTE(v30) = *(v2 + 184);
      *(&v30 + 1) = v18;
      v19 = v10;
      v29 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      sub_21BE2841C();
      v20 = v38;
      v28 = v39;
      v21 = *(v2 + 208);
      LOBYTE(v30) = *(v2 + 200);
      *(&v30 + 1) = v21;
      sub_21BE2841C();
      v22 = v38;
      v23 = v39;
      LOBYTE(v30) = 1;
      *&v38 = v19;
      *(&v38 + 1) = v7;
      *&v39 = v29;
      WORD4(v39) = v6 & 1;
      *v40 = v19;
      v40[8] = 0;
      *&v40[16] = v20;
      v41[0] = v28;
      *&v41[8] = v22;
      v41[24] = v23;
      v41[25] = 1;
      v24 = v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA1A8, &qword_21BE42C58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA1D0, &qword_21BE42C70);
    sub_21BD09A68();
    sub_21BD09C00();
    sub_21BE2784C();
    *v40 = v36[2];
    *&v40[16] = v36[3];
    *v41 = v37[0];
    *&v41[10] = *(v37 + 10);
    v38 = v36[0];
    v39 = v36[1];
    v35 = 1;
    v41[26] = 1;
    sub_21BBA3854(v36, &v30, &qword_27CDBA198, &qword_21BE42C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA198, &qword_21BE42C50);
    sub_21BD09988();
    sub_21BD099DC();
    sub_21BE2784C();

    sub_21BB3A4CC(v36, &qword_27CDBA198, &qword_21BE42C50);
    *v40 = v32;
    *&v40[16] = v33;
    *v41 = *v34;
    *&v41[11] = *&v34[11];
    v38 = v30;
    v39 = v31;
  }

  v25 = *&v40[16];
  a2[2] = *v40;
  a2[3] = v25;
  a2[4] = *v41;
  *(a2 + 75) = *&v41[11];
  result = *&v38;
  v27 = v39;
  *a2 = v38;
  a2[1] = v27;
  return result;
}

void sub_21BD0352C(uint64_t a1@<X8>)
{
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v26[0];
  if (!v26[0])
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v10 = [v9 me];

  v11 = 0uLL;
  if (v10)
  {
    v12 = *(v1 + 152);
    if ([v12 isChildAccount] && objc_msgSend(v10, sel_isOrganizer))
    {
      sub_21BD0393C(v26);
LABEL_21:
      v14 = v26[0];
      v16 = v26[1];
      v24 = v28;
      v25 = v27;
      v19 = v29;

      v20 = v24;
      v11 = v25;
      goto LABEL_29;
    }

    if (sub_21BE291EC() & 1) != 0 && [v10 isOrganizer] && ((*(v4 + 104))(v7, *MEMORY[0x277D07F40], v3), v13 = MEMORY[0x21CF01150](v7), (*(v4 + 8))(v7, v3), (v13))
    {
      v14 = sub_21BC1F420();
      v16 = v15;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v17 = v26[0];
      if (!v26[0])
      {
        v17 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      }

      v18 = sub_21BE2907C();

      if ((v18 & 1) != 0 && [v12 isOrganizer] && objc_msgSend(v12, sel_isMe))
      {
        sub_21BD03AF4(v26);
        goto LABEL_21;
      }

      if ([v12 isChildAccount] && objc_msgSend(v12, sel_isMe))
      {
        sub_21BD03CBC(v26);
        goto LABEL_21;
      }

      if ((sub_21BE291EC() & 1) == 0 || ([v12 isMe] & 1) == 0 || objc_msgSend(v12, sel_canRemoveSelf))
      {

        v14 = 0;
        v16 = 0;
LABEL_28:
        v19 = 0;
        v20 = 0uLL;
        v11 = 0uLL;
        goto LABEL_29;
      }

      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v14 = sub_21BE2599C();
      v16 = v23;
    }

    goto LABEL_28;
  }

  v14 = 0;
  v16 = 0;
  v19 = 0;
  v20 = 0uLL;
LABEL_29:
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v11;
  *(a1 + 32) = v20;
  *(a1 + 48) = v19;
}

void sub_21BD0393C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v5 = v18;
  if (!v18)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = [v5 childCutOffAge];

  if (v6)
  {
    v7 = sub_21BE28A0C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = sub_21BC1F08C(v3, v7, v9);
  v12 = v11;

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE5D4C0;
  *(a1 + 48) = 0;
}

void sub_21BD03AF4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v17;
  if (!v17)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  sub_21BC1E49C();
  v6 = v5;

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  v13 = [v8 bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE5D4C0;
  *(a1 + 48) = 0;
}

void sub_21BD03CBC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v17;
  if (!v17)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v5 = [v4 childCutOffAge];

  if (v5)
  {
    v6 = sub_21BE28A0C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = sub_21BC1F5A8(v6, v8);
  v11 = v10;

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE5D4C0;
  *(a1 + 48) = 0;
}

BOOL sub_21BD03E6C()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v13;
  if (!v13)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = [v2 me];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 isOrganizer];
  v5 = *(v0 + 152);
  if (v4)
  {
    v6 = *(v0 + 152);
    if (sub_21BE291FC())
    {
      goto LABEL_14;
    }
  }

  if ([v5 isParent])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v7 = v13;
    if (!v13)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v8 = sub_21BE2907C();

    if (v8)
    {
      goto LABEL_14;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v9 = v13;
    if (!v13)
    {
      v9 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v10 = sub_21BE2906C();

    if (v10)
    {
      goto LABEL_14;
    }
  }

  if ([v5 isChildAccount])
  {
LABEL_14:

    return 1;
  }

  else
  {
    v12 = [v5 memberType];

    return v12 == 1;
  }
}

uint64_t FamilyMemberDetails.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA000, &qword_21BE42670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v63 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA008, &qword_21BE42678);
  v64 = *(v74 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v74);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA010, &qword_21BE42680);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA018, &qword_21BE42688);
  v15 = *(v14 - 8);
  v66 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA020, &qword_21BE42690);
  v19 = *(v18 - 8);
  v68 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v67 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA028, &qword_21BE42698);
  v23 = *(v22 - 8);
  v70 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v69 = &v63 - v25;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA030, &qword_21BE426A0);
  v26 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - v27;
  v75 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA038, &unk_21BE426A8);
  sub_21BB3B038(&qword_27CDBA040, &qword_27CDBA038, &unk_21BE426A8);
  sub_21BE27D1C();
  v28 = *(v1 + 168);
  v29 = *(v1 + 176);
  v77 = *(v1 + 160);
  v78 = v28;
  v79 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](v80, v30);
  *(v5 + *(v2 + 36)) = (v80[0] & 1) == 0;
  sub_21BD0599C();
  sub_21BE27E3C();
  sub_21BB3A4CC(v5, &qword_27CDBA000, &qword_21BE42670);
  sub_21BE2869C();
  sub_21BE2725C();
  v31 = v13;
  (*(v64 + 32))(v13, v8, v74);
  v32 = &v13[*(v10 + 44)];
  v33 = v80[5];
  *(v32 + 4) = v80[4];
  *(v32 + 5) = v33;
  *(v32 + 6) = v80[6];
  v34 = v80[1];
  *v32 = v80[0];
  *(v32 + 1) = v34;
  v35 = v80[3];
  *(v32 + 2) = v80[2];
  *(v32 + 3) = v35;
  sub_21BD07A0C(v1, &v77);
  v36 = swift_allocObject();
  sub_21BD07A44(&v77, v36 + 16);
  type metadata accessor for NavigationManager();
  v74 = sub_21BD0906C(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager);
  v37 = sub_21BE26E9C();
  v39 = v38;
  v76 = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  LOBYTE(v2) = v77;
  v40 = v78;
  v41 = v31;
  v42 = v65;
  sub_21BBB7D84(v41, v65, &qword_27CDBA010, &qword_21BE42680);
  v43 = v42 + *(v66 + 44);
  *v43 = sub_21BD07A7C;
  *(v43 + 8) = v36;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39 & 1;
  *(v43 + 32) = v2;
  *(v43 + 40) = v40;
  sub_21BD07A0C(v1, &v77);
  v44 = swift_allocObject();
  sub_21BD07A44(&v77, v44 + 16);
  v45 = v42;
  v46 = v67;
  sub_21BBB7D84(v45, v67, &qword_27CDBA018, &qword_21BE42688);
  v47 = (v46 + *(v68 + 44));
  *v47 = sub_21BD07CE4;
  v47[1] = v44;
  v47[2] = 0;
  v47[3] = 0;
  sub_21BD07A0C(v1, &v77);
  v48 = swift_allocObject();
  sub_21BD07A44(&v77, v48 + 16);
  v49 = sub_21BE26E9C();
  v51 = v50;
  v76 = 0;
  sub_21BE283EC();
  LOBYTE(v36) = v77;
  v52 = v78;
  v53 = v69;
  sub_21BBB7D84(v46, v69, &qword_27CDBA020, &qword_21BE42690);
  v54 = v53 + *(v70 + 44);
  *v54 = sub_21BD086C8;
  *(v54 + 8) = v48;
  *(v54 + 16) = v49;
  *(v54 + 24) = v51 & 1;
  *(v54 + 32) = v36;
  *(v54 + 40) = v52;
  sub_21BD07A0C(v1, &v77);
  v55 = swift_allocObject();
  sub_21BD07A44(&v77, v55 + 16);
  v56 = sub_21BE26E9C();
  LOBYTE(v5) = v57;
  v76 = 0;
  sub_21BE283EC();
  LOBYTE(v48) = v77;
  v58 = v78;
  v59 = v53;
  v60 = v71;
  sub_21BBB7D84(v59, v71, &qword_27CDBA028, &qword_21BE42698);
  v61 = v60 + *(v72 + 36);
  *v61 = sub_21BD08988;
  *(v61 + 8) = v55;
  *(v61 + 16) = v56;
  *(v61 + 24) = v5 & 1;
  *(v61 + 32) = v48;
  *(v61 + 40) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA060, &qword_21BE426C8);
  sub_21BD089E0();
  sub_21BC354E4();
  sub_21BD08D5C();
  sub_21BE2807C();
  return sub_21BB3A4CC(v60, &qword_27CDBA030, &qword_21BE426A0);
}

uint64_t sub_21BD04880@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v124 = a2;
  v102 = type metadata accessor for DeleteMemberButtonView();
  v3 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v96 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA130, &qword_21BE42C00);
  v5 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = &v95 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA138, &qword_21BE42C08);
  v98 = *(v101 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v101);
  v97 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA140, &qword_21BE42C10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v123 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = &v95 - v13;
  v117 = sub_21BE26E1C();
  Strong = *(v117 - 8);
  v14 = *(Strong + 64);
  MEMORY[0x28223BE20](v117);
  v113 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA148, &qword_21BE42C18);
  v116 = *(v114 - 8);
  v16 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  v18 = &v95 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA150, &unk_21BE42C20);
  v120 = *(v19 - 8);
  v121 = v19;
  v20 = *(v120 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  v125 = a1;
  v112 = *(a1 + 152);
  sub_21BD03148(v112, v160);
  v25 = *(a1 + 272);
  v132 = *(a1 + 264);
  v133 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE2841C();
  v26 = v135;
  v27 = v136;
  v137 = v160[2];
  v138 = v160[3];
  v139 = v160[4];
  v140 = v160[5];
  v135 = v160[0];
  v136 = v160[1];
  v141 = xmmword_21BE358B0;
  v142 = v26;
  v143 = v27;
  sub_21BD02BD4(&v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA158, &qword_21BE42C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA160, &qword_21BE42C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA168, &qword_21BE42C40);
  sub_21BD09870();
  sub_21BB3B038(&qword_27CDBA1E0, &qword_27CDBA160, &qword_21BE42C38);
  sub_21BD09CE0();
  sub_21BE285FC();
  v28 = Strong;
  v29 = v113;
  v30 = v117;
  (*(Strong + 104))(v113, *MEMORY[0x277CDF350], v117);
  sub_21BD09D64();
  v118 = v24;
  v31 = v114;
  sub_21BE27FAC();
  (*(v28 + 8))(v29, v30);
  (*(v116 + 8))(v18, v31);
  v32 = *(a1 + 136);
  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = *(a1 + 168);
  v34 = *(a1 + 176);
  *&v135 = *(a1 + 160);
  *(&v135 + 1) = v33;
  LOBYTE(v136) = v34;
  v35 = v112;
  v114 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v109 = v133;
  v110 = v132;
  v108 = v134;
  v36 = *(a1 + 24);
  v37 = *(a1 + 40);
  v38 = *(a1 + 72);
  v39 = *(a1 + 80);
  v40 = *(a1 + 88);
  v41 = type metadata accessor for MemberDetailsAppleCardViewModel();
  v42 = sub_21BD0906C(&qword_27CDBA110, 255, type metadata accessor for MemberDetailsAppleCardViewModel);
  v105 = v36;
  v112 = v37;
  v116 = v42;
  v117 = v41;
  v113 = sub_21BE26EAC();
  v43 = *(a1 + 48);
  v44 = *(a1 + 56);
  v45 = *(a1 + 64);
  type metadata accessor for MemberDetailsAppleCashViewModel();
  sub_21BD0906C(&qword_27CDBA118, 255, type metadata accessor for MemberDetailsAppleCashViewModel);
  v107 = sub_21BE26EAC();
  v46 = [v35 dsid];
  if (!v46)
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v46 = sub_21BE293EC();
  }

  v47 = v35;
  v104 = [objc_allocWithZone(FAScreenTimeWrapper) initWithUserDSID_];

  v106 = *(*(a1 + 104) + qword_280BDCB88);
  v48 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v50 = qword_280BD76F0;
  v111 = v48;
  if (v50 != -1)
  {
    swift_once();
  }

  v51 = objc_allocWithZone(type metadata accessor for FamilyMemberAccountDetailsViewModel());

  v103 = [v51 init];
  v52 = v47;
  *&v135 = v47;
  *(&v135 + 1) = v114;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(&v136 + 1) = v110;
  *&v137 = v109;
  BYTE8(v137) = v108;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel);
  *&v138 = sub_21BE270CC();
  *(&v138 + 1) = v53;
  type metadata accessor for LocationViewModel();
  sub_21BD0906C(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
  *&v139 = sub_21BE270CC();
  *(&v139 + 1) = v54;
  *&v140 = sub_21BE270CC();
  *(&v140 + 1) = v55;
  *&v141 = sub_21BE270CC();
  *(&v141 + 1) = v56;
  *&v142 = KeyPath;
  BYTE8(v142) = 0;
  sub_21BB3A2A4(0, &qword_27CDB7EE8, off_2782F0D00);
  sub_21BB3CC48(&qword_27CDB7EE0, &qword_27CDB7EE8, off_2782F0D00);
  v143 = sub_21BE270CC();
  v144 = v57;
  type metadata accessor for ServicesStore();
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);
  v145 = sub_21BE270CC();
  v146 = v58;
  v147 = v106;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v148 = sub_21BE270CC();
  v149 = v59;
  v127 = v103;
  sub_21BE283EC();
  v150 = v132;
  v151 = v133;
  sub_21BD09E30(&v135, &v132);
  sub_21BD0352C(&v152);
  v60 = v153;
  v61 = v122;
  if (v153)
  {
    v62 = v152;
    v157 = v154;
    v158 = v155;
    v159 = v156;
    v63 = *(a1 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v64 = v127;
    if (!v127)
    {
      v64 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v65 = [v64 me];

    if (v65)
    {
      v127 = v62;
      v128 = v60;
      v129 = v157;
      v130 = v158;
      v131 = v159;
      MEMORY[0x28223BE20](v66);
      sub_21BD0906C(&qword_27CDBA218, 255, type metadata accessor for DeleteMemberButtonView);
      sub_21BC353D0();
      v67 = v97;
      sub_21BE2861C();
      v68 = v98;
      v69 = v101;
      (*(v98 + 16))(v100, v67, v101);
      swift_storeEnumTagMultiPayload();
      sub_21BD09F48();
      sub_21BE2784C();

      (*(v68 + 8))(v67, v69);
      goto LABEL_17;
    }

    sub_21BB3A4CC(&v152, &qword_27CDBA168, &qword_21BE42C40);
  }

  v70 = *(a1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v71 = v127;
  if (!v127)
  {
    v71 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v72 = [v71 me];

  if (!v72)
  {
    v82 = 1;
    goto LABEL_19;
  }

  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  v73 = v52;
  sub_21BE26CAC();

  v74 = v127;
  if (!v127)
  {
    v74 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v75 = sub_21BE2907C();

  v126 = 0;
  sub_21BE283EC();
  v76 = v128;
  v77 = v96;
  *v96 = v127;
  *(v77 + 8) = v76;
  swift_unknownObjectWeakInit();
  v78 = v102;
  v79 = *(v102 + 36);
  *(v77 + v79) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  v80 = v78[10];
  *(v77 + v80) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v81 = v78[12];
  *(v77 + v81) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *(v77 + 16) = v73;
  *(v77 + 24) = v72;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v77 + 40) = v75 & 1;
  type metadata accessor for RemoveMemberDeleteFamilyDataController();
  *(v77 + v78[11]) = swift_allocObject();
  sub_21BD09EE0(v77, v100, type metadata accessor for DeleteMemberButtonView);
  swift_storeEnumTagMultiPayload();
  sub_21BD09F48();
  sub_21BD0906C(&qword_27CDBA218, 255, type metadata accessor for DeleteMemberButtonView);
  sub_21BE2784C();
  sub_21BD0A014(v77, type metadata accessor for DeleteMemberButtonView);
LABEL_17:
  v82 = 0;
LABEL_19:
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA1F8, &qword_21BE42CA0);
  (*(*(v83 - 8) + 56))(v61, v82, 1, v83);
  v85 = v119;
  v84 = v120;
  v86 = *(v120 + 16);
  v87 = v118;
  v88 = v61;
  v89 = v121;
  v86(v119, v118, v121);
  sub_21BBA3854(&v132, &v127, &qword_27CDBA200, &qword_21BE42CA8);
  v90 = v123;
  sub_21BBA3854(v88, v123, &qword_27CDBA140, &qword_21BE42C10);
  v91 = v124;
  v86(v124, v85, v89);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA208, &qword_21BE42CB0);
  sub_21BBA3854(&v127, &v91[*(v92 + 48)], &qword_27CDBA200, &qword_21BE42CA8);
  sub_21BBA3854(v90, &v91[*(v92 + 64)], &qword_27CDBA140, &qword_21BE42C10);
  sub_21BB3A4CC(v88, &qword_27CDBA140, &qword_21BE42C10);
  sub_21BB3A4CC(&v132, &qword_27CDBA200, &qword_21BE42CA8);
  sub_21BD09E8C(&v135);
  v93 = *(v84 + 8);
  v93(v87, v89);
  sub_21BB3A4CC(v90, &qword_27CDBA140, &qword_21BE42C10);
  sub_21BB3A4CC(&v127, &qword_27CDBA200, &qword_21BE42CA8);
  return (v93)(v85, v89);
}

unint64_t sub_21BD0599C()
{
  result = qword_27CDBA048;
  if (!qword_27CDBA048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA000, &qword_21BE42670);
    sub_21BB3B038(&qword_27CDBA050, &qword_27CDBA058, &unk_21BE426B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA048);
  }

  return result;
}

uint64_t sub_21BD05A54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v70 = sub_21BE2757C();
  v68 = *(v70 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA220, &qword_21BE42D20);
  v71 = *(v69 - 8);
  v5 = v71[8];
  MEMORY[0x28223BE20](v69);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA228, &qword_21BE42D28);
  v9 = *(v8 - 8);
  v72 = v8;
  v73 = v9;
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA230, &qword_21BE42D30);
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v63 - v16;
  sub_21BD07A0C(a1, &v83);
  v17 = swift_allocObject();
  sub_21BD07A44(&v83, v17 + 16);
  v18 = a1;
  v65 = a1;
  sub_21BD07A0C(a1, &v83);
  v19 = swift_allocObject();
  sub_21BD07A44(&v83, v19 + 16);
  LOBYTE(v91[0]) = 0;
  sub_21BE283EC();
  LOBYTE(a1) = v80;
  v20 = v81;
  type metadata accessor for NavigationManager();
  sub_21BD0906C(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager);
  v21 = sub_21BE26E9C();
  v23 = v22 & 1;
  LOBYTE(v80) = v22 & 1;
  KeyPath = swift_getKeyPath();
  *&v83 = &unk_21BE42D40;
  *(&v83 + 1) = v17;
  *&v84 = sub_21BD0A24C;
  *(&v84 + 1) = v19;
  LOBYTE(v85) = a1;
  *(&v85 + 1) = v20;
  *&v86 = v21;
  BYTE8(v86) = v23;
  LOBYTE(v87) = 1;
  *(&v87 + 1) = KeyPath;
  LOBYTE(v88) = 0;
  v64 = *(v18 + 152);
  v80 = sub_21BE2917C();
  v81 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA238, &qword_21BE42D78);
  v27 = sub_21BD0A254();
  v28 = sub_21BB41FA4();
  v29 = MEMORY[0x277D837D0];
  sub_21BE27F9C();

  v91[2] = v85;
  v91[3] = v86;
  v91[4] = v87;
  v92 = v88;
  v91[0] = v83;
  v91[1] = v84;
  sub_21BB3A4CC(v91, &qword_27CDBA238, &qword_21BE42D78);
  v30 = v67;
  v31 = v68;
  v32 = v70;
  (*(v68 + 104))(v67, *MEMORY[0x277CDDDC0], v70);
  *&v83 = v26;
  *(&v83 + 1) = v29;
  *&v84 = v27;
  *(&v84 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v66;
  v35 = v69;
  sub_21BE280AC();
  (*(v31 + 8))(v30, v32);
  (v71[1])(v7, v35);
  v36 = v65;
  v79 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA268, &unk_21BE42D90);
  *&v83 = v35;
  *(&v83 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA270, &unk_21BE46120);
  v38 = sub_21BB3B038(&qword_27CDBA278, &qword_27CDBA270, &unk_21BE46120);
  *&v83 = v37;
  *(&v83 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v72;
  sub_21BE2817C();
  v73[1](v34, v39);
  if (sub_21BD03E6C())
  {
    v40 = *(v36 + 24);
    v41 = *(v36 + 8);
    v42 = *(v36 + 40);
    swift_unknownObjectWeakLoadStrong();
    v43 = *(v36 + 168);
    v44 = *(v36 + 176);
    *&v83 = *(v36 + 160);
    *(&v83 + 1) = v43;
    LOBYTE(v84) = v44;
    v71 = v41;
    v73 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v45 = v81;
    v72 = v80;
    v46 = v82;
    v47 = v64;
    v48 = [v64 isGuardian];
    v49 = *(v36 + 136);
    LOBYTE(v80) = 0;

    sub_21BE283EC();
    sub_21BBB541C(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakInit();
    v50 = [v47 dsid];
    if (!v50)
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v50 = sub_21BE293EC();
    }

    *&v84 = v50;
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel);
    v51 = v40;
    *(&v84 + 1) = sub_21BE270CC();
    *&v85 = v52;
    sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
    sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
    *(&v85 + 1) = sub_21BE270CC();
    *&v86 = v53;
    *(&v86 + 1) = v73;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    LOBYTE(v89) = v46;
    BYTE8(v89) = v48;
    v90 = 0;
    *&v88 = v72;
    *(&v88 + 1) = v45;
    *&v87 = v49;
    sub_21BD0A3A0(&v83, &v80);
    sub_21BD0A3A0(&v80, &v83);
    sub_21BBB7D84(&v83, &v80, &qword_27CDBA290, &qword_21BE42DB0);
    sub_21BBB7D84(&v80, &v83, &qword_27CDBA290, &qword_21BE42DB0);
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
  }

  v55 = v74;
  v54 = v75;
  v56 = *(v75 + 16);
  v57 = v78;
  v58 = v76;
  v56(v74, v78, v76);
  sub_21BBA3854(&v83, &v80, &qword_27CDBA280, &qword_21BE42DA0);
  v59 = v77;
  v56(v77, v55, v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA288, &qword_21BE42DA8);
  sub_21BBA3854(&v80, &v59[*(v60 + 48)], &qword_27CDBA280, &qword_21BE42DA0);
  sub_21BB3A4CC(&v83, &qword_27CDBA280, &qword_21BE42DA0);
  v61 = *(v54 + 8);
  v61(v57, v58);
  sub_21BB3A4CC(&v80, &qword_27CDBA280, &qword_21BE42DA0);
  return (v61)(v55, v58);
}

uint64_t sub_21BD063D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD06468, v4, v3);
}

uint64_t sub_21BD06468()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = [*(v2 + 152) altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE100000000000000;
    v5 = 45;
  }

  v8 = v0[2];
  *v8 = v5;
  v8[1] = v7;
  v9 = v0[1];

  return v9();
}

double sub_21BD06518@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21BE275DC();
  v21 = 0;
  sub_21BD06648(a1, &v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v30[7] = v19;
  sub_21BBA3854(&v22, &v11, &qword_27CDBA2A8, qword_21BE42DC0);
  sub_21BB3A4CC(v30, &qword_27CDBA2A8, qword_21BE42DC0);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v5 = *&v20[64];
  *(a2 + 97) = *&v20[80];
  v6 = *&v20[112];
  *(a2 + 113) = *&v20[96];
  *(a2 + 129) = v6;
  v7 = *v20;
  *(a2 + 33) = *&v20[16];
  result = *&v20[32];
  v9 = *&v20[48];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v21;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 144) = *&v20[127];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_21BD06648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  LOBYTE(v19[0]) = 1;
  sub_21BD067EC(a1, v15);
  *&v14[7] = v15[0];
  *&v14[55] = v16;
  *&v14[39] = v15[2];
  *&v14[23] = v15[1];
  v5 = v19[0];
  v17 = v4;
  v18[0] = v19[0];
  v6 = *&v14[16];
  *&v18[1] = *v14;
  *&v18[64] = *(&v16 + 1);
  v7 = *&v14[32];
  *&v18[49] = *&v14[48];
  *&v18[33] = *&v14[32];
  v8 = *v14;
  *&v18[17] = *&v14[16];
  *&v13[23] = *v18;
  *&v13[7] = v4;
  *&v13[71] = *&v18[48];
  *&v13[87] = *&v18[64];
  *&v13[55] = *&v18[32];
  *&v13[39] = *&v18[16];
  v9 = *v13;
  *(a2 + 49) = *&v13[16];
  *(a2 + 33) = v9;
  *(a2 + 112) = *&v13[79];
  v10 = *&v13[48];
  *(a2 + 97) = *&v13[64];
  *a2 = 8;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D869B8;
  *(a2 + 24) = &unk_282D869E8;
  *(a2 + 32) = 0;
  *(a2 + 81) = v10;
  *(a2 + 65) = *&v13[32];
  v19[0] = v4;
  v19[1] = 0;
  v20 = v5;
  v21 = v8;
  *&v24[15] = *&v14[63];
  *v24 = *&v14[48];
  v23 = v7;
  v22 = v6;

  sub_21BBA3854(&v17, &v12, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v19, &qword_27CDB9550, &qword_21BE3FAA0);
}

uint64_t sub_21BD067EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (![*(a1 + 152) isChildAccount])
  {
    goto LABEL_7;
  }

  v4 = *(a1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v5 = v38;
  if (!v38)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = [v5 me];

  if (v6 && (v7 = [v6 isGuardian], v6, v7))
  {
    String.rebrand.getter(0xD00000000000001CLL, 0x800000021BE5D480);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
  }

  else
  {
LABEL_7:
    String.rebrand.getter(0x44495F454C505041, 0xEE004C4542414C5FLL);
    type metadata accessor for ConfirmChildAgeViewModel();
    v10 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
  }

  v11 = v9;
  sub_21BE2599C();

  sub_21BB41FA4();
  v12 = sub_21BE27DBC();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v34 = v15;
  sub_21BD06B78(a1);
  sub_21BB41FA4();
  v16 = sub_21BE27DBC();
  v18 = v17;
  v20 = v19;
  sub_21BE27BEC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v16, v18, v20 & 1);

  sub_21BE2833C();
  v26 = sub_21BE27D4C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  *a2 = v37;
  *(a2 + 8) = v35;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  sub_21BBA4A38(v37, v35, v34 & 1);

  sub_21BBA4A38(v26, v28, v30 & 1);

  sub_21BBC7C7C(v26, v28, v30 & 1);

  sub_21BBC7C7C(v37, v35, v34 & 1);
}

uint64_t sub_21BD06B78(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  if (v3)
  {
    v4 = v3;
    if ([v2 demoAccountForAccount_])
    {
      v5 = *(a1 + 144);
      sub_21BE2600C();
      sub_21BE25FFC();
      v6 = sub_21BE289CC();

      v7 = [v5 stringForKey_];

      if (v7)
      {
        goto LABEL_12;
      }

      v11 = [*(a1 + 152) appleID];
      if (v11)
      {
        v7 = v11;
LABEL_12:
        v10 = sub_21BE28A0C();

        return v10;
      }

      return 0;
    }
  }

  v8 = [*(a1 + 152) appleID];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = sub_21BE28A0C();

  return v10;
}

uint64_t sub_21BD06CF0(uint64_t a1)
{
  v2 = sub_21BE278CC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA270, &unk_21BE46120);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_21BE278BC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA298, &qword_21BE42DB8);
  sub_21BD0A404();
  sub_21BE26EDC();
  v9 = sub_21BB3B038(&qword_27CDBA278, &qword_27CDBA270, &unk_21BE46120);
  MEMORY[0x21CF02AD0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

double sub_21BD06EA8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[19];
  sub_21BE2917C();
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  v10 = sub_21BE27D8C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_21BBC7C7C(v5, v7, v9 & 1);

  v19 = a1[33];
  v20 = a1[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE283FC();
  result = v18;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_21BD06FA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 152);
  swift_unknownObjectWeakLoadStrong();
  v7 = *(a1 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  sub_21BE26CAC();

  v9 = v17;
  if (!v17)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v10 = sub_21BE2907C();

  sub_21BE283EC();
  *a3 = v17;
  *(a3 + 8) = v18;
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for DeleteMemberButtonView();
  v12 = v11[9];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v14 = v11[12];
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *(a3 + 16) = v8;
  *(a3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v15 = a2;
  swift_unknownObjectRelease();
  *(a3 + 40) = v10 & 1;
  type metadata accessor for RemoveMemberDeleteFamilyDataController();
  result = swift_allocObject();
  *(a3 + v11[11]) = result;
  return result;
}

id sub_21BD071A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v83 = type metadata accessor for FamilyMemberAccountDetails();
  v5 = *(*(v83 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v83);
  v84 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v80 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA120, &qword_21BE42B78);
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v79 - v11;
  v12 = *a1;
  v88 = *(a1 + 8);
  v89 = v12;
  v82 = a2;
  v13 = a2[15];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v13;
  sub_21BE26CAC();

  v14 = v91;
  if (!v91)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v86 = v9;
  v15 = [v14 members];

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v16 = sub_21BE28C3C();

  if (v16 >> 62)
  {
LABEL_34:
    v17 = sub_21BE2951C();
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_35:

    v78 = 1;
    v76 = v86;
    v77 = v87;
    return (*(v85 + 56))(v77, v78, 1, v76);
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_5:
  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CF047C0](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = [v19 altDSID];
    if (v22)
    {
      break;
    }

LABEL_6:

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_35;
    }
  }

  v23 = v22;
  v24 = sub_21BE28A0C();
  v26 = v25;

  if (v24 != v89 || v26 != v88)
  {
    v28 = sub_21BE2995C();

    if (v28)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v29 = v91;
  if (!v91)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v30 = [v29 me];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v31 = v91;
  if (!v91)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v32 = v82;
  v33 = v82[32];
  v91 = v82[31];
  v92 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA128, &unk_21BE42B80);
  sub_21BE283FC();
  v89 = v90;
  v34 = objc_allocWithZone(MEMORY[0x277D08210]);
  v35 = v20;
  v36 = [v34 init];
  v37 = type metadata accessor for AgeRangeSharingViewModel();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v88 = sub_21BCBF078(v36, v35, v40);
  v41 = v32[30];
  v91 = v32[29];
  v92 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79F0, &qword_21BE38CA0);
  sub_21BE283FC();
  v42 = v90;
  KeyPath = swift_getKeyPath();
  v44 = v84;
  *v84 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v45 = v83;
  v46 = (v44 + *(v83 + 36));
  *v46 = 0;
  v46[1] = 0xE000000000000000;
  v47 = v44 + v45[11];
  LOBYTE(v90) = 0;
  v48 = v35;
  sub_21BE283EC();
  v49 = v92;
  *v47 = v91;
  *(v47 + 1) = v49;
  v50 = v45[13];
  *(v44 + v50) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v51 = v45[6];
  v82 = v30;
  *(v44 + v51) = v30;
  *(v44 + v45[7]) = v48;
  *(v44 + v45[8]) = v31;
  v52 = (v44 + v45[5]);
  type metadata accessor for FamilyMemberAccountDetailsViewModel();
  sub_21BD0906C(&qword_27CDBDBE0, 255, type metadata accessor for FamilyMemberAccountDetailsViewModel);
  v53 = v89;
  *v52 = sub_21BE270CC();
  v52[1] = v54;
  v55 = (v44 + v45[12]);
  v90 = v42;
  type metadata accessor for FamilyDependentPasswordResetController();
  v56 = v42;
  sub_21BE283EC();
  v57 = v92;
  *v55 = v91;
  v55[1] = v57;
  *(v44 + v45[10]) = v88;
  v58 = v44 + v45[14];
  LOBYTE(v90) = 0;
  sub_21BE283EC();
  v59 = v92;
  *v58 = v91;
  *(v58 + 1) = v59;
  if (![v48 isChildAccount])
  {
    goto LABEL_30;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v61 = result;
    v62 = [result hasLocalSecret];

    if (v62 && v82 && [v82 isGuardian])
    {
      v63 = v56;
      v64 = 0x800000021BE5D480;
      v65 = 0xD00000000000001CLL;
LABEL_31:
      String.rebrand.getter(v65, v64);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() bundleForClass_];
      v68 = sub_21BE2599C();
      v70 = v69;

      *v46 = v68;
      v46[1] = v70;
      v71 = v80;
      sub_21BC35600(v84, v80);
      v72 = v79;
      sub_21BD09EE0(v71, v79, type metadata accessor for FamilyMemberAccountDetails);
      v73 = sub_21BE27B7C();

      sub_21BD0A014(v71, type metadata accessor for FamilyMemberAccountDetails);
      v75 = v86;
      v74 = v87;
      *(v72 + *(v86 + 36)) = v73;
      sub_21BBB7D84(v72, v74, &qword_27CDBA120, &qword_21BE42B78);
      v76 = v75;
      v77 = v74;
      v78 = 0;
      return (*(v85 + 56))(v77, v78, 1, v76);
    }

LABEL_30:
    v63 = v56;
    v65 = 0x44495F454C505041;
    v64 = 0xEE004C4542414C5FLL;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD07A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v13[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000021BE428A0;

  v7 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v13, v7);

  v8 = sub_21BE28DAC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_21BD07A0C(a1, v13);
  sub_21BE28D7C();
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  sub_21BD07A44(v13, v10 + 32);
  sub_21BBA932C(0, 0, v5, &unk_21BE42B70, v10);
}

uint64_t sub_21BD07CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21BD07D84, v6, v5);
}

uint64_t sub_21BD07D84()
{
  v1 = *(v0[3] + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v0[2];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = [v2 me];

  if (v3)
  {
    if ([v3 isGuardian])
    {

LABEL_7:
      v7 = v0[3];
      v9 = *(v7 + 48);
      v8 = *(v7 + 56);
      v10 = *(v7 + 64);
      type metadata accessor for MemberDetailsAppleCashViewModel();
      sub_21BD0906C(&qword_27CDBA118, 255, type metadata accessor for MemberDetailsAppleCashViewModel);
      v0[7] = sub_21BE26EAC();
      v11 = swift_task_alloc();
      v0[8] = v11;
      *v11 = v0;
      v11[1] = sub_21BD08048;

      return sub_21BCC0A5C();
    }

    v4 = v0[3];
    sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
    v5 = *(v4 + 152);
    v6 = sub_21BE2940C();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v13 = v0[3];
  v15 = *(v13 + 72);
  v14 = *(v13 + 80);
  v16 = *(v13 + 88);
  type metadata accessor for MemberDetailsAppleCardViewModel();
  sub_21BD0906C(&qword_27CDBA110, 255, type metadata accessor for MemberDetailsAppleCardViewModel);
  v0[9] = sub_21BE26EAC();
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_21BD08290;

  return sub_21BC44050();
}

uint64_t sub_21BD08048()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BD0818C, v5, v4);
}

uint64_t sub_21BD0818C()
{
  v1 = v0[3];
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for MemberDetailsAppleCardViewModel();
  sub_21BD0906C(&qword_27CDBA110, 255, type metadata accessor for MemberDetailsAppleCardViewModel);
  v0[9] = sub_21BE26EAC();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_21BD08290;

  return sub_21BC44050();
}

uint64_t sub_21BD08290()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v5, v4);
}

double sub_21BD083D4@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = *(a1 + 152);
  v9 = *(a1 + 136);
  if (*(v9 + 16))
  {
    v10 = v8;
    v11 = sub_21BBB3108(0x41435F454C505041, 0xEA00000000004853);
    if (v12)
    {
      v13 = v11;
      v14 = *(v9 + 56);
      v15 = sub_21BE25B9C();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v7, v14 + *(v16 + 72) * v13, v15);
      (*(v16 + 56))(v7, 0, 1, v15);
    }

    else
    {
      v19 = sub_21BE25B9C();
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    }
  }

  else
  {
    v17 = sub_21BE25B9C();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = v8;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore();
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);

  *a2 = sub_21BE270CC();
  a2[1] = v20;
  a2[2] = v8;
  v21 = type metadata accessor for AppleCashView();
  sub_21BBB7D84(v7, a2 + *(v21 + 24), &unk_27CDB57F0, &qword_21BE328A0);
  v22 = *(v21 + 28);
  v24[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA108, &unk_21BE42B58);
  sub_21BE283EC();
  result = *&v25;
  *(a2 + v22) = v25;
  return result;
}

uint64_t sub_21BD086D0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = *(a1 + 152);
  v9 = *(a1 + 136);
  if (*(v9 + 16))
  {
    v10 = v8;
    v11 = sub_21BBB3108(0x425F4F545F4B5341, 0xEA00000000005955);
    if (v12)
    {
      v13 = v11;
      v14 = *(v9 + 56);
      v15 = sub_21BE25B9C();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v7, v14 + *(v16 + 72) * v13, v15);
      (*(v16 + 56))(v7, 0, 1, v15);
    }

    else
    {
      v19 = sub_21BE25B9C();
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    }
  }

  else
  {
    v17 = sub_21BE25B9C();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = v8;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore();
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);

  *a2 = sub_21BE270CC();
  a2[1] = v20;
  a2[2] = v8;
  v21 = type metadata accessor for AskToBuyMemberView();
  return sub_21BBB7D84(v7, a2 + *(v21 + 24), &unk_27CDB57F0, &qword_21BE328A0);
}

uint64_t sub_21BD08990@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21BE271CC();
  result = sub_21BE27B7C();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_21BD089E0()
{
  result = qword_27CDBA068;
  if (!qword_27CDBA068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA030, &qword_21BE426A0);
    sub_21BD08A98();
    sub_21BB3B038(&qword_27CDBA0B0, &qword_27CDBA0B8, &qword_21BE426E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA068);
  }

  return result;
}

unint64_t sub_21BD08A98()
{
  result = qword_27CDBA070;
  if (!qword_27CDBA070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA028, &qword_21BE42698);
    sub_21BD08B50();
    sub_21BB3B038(&qword_27CDBA0A0, &qword_27CDBA0A8, &qword_21BE426D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA070);
  }

  return result;
}

unint64_t sub_21BD08B50()
{
  result = qword_27CDBA078;
  if (!qword_27CDBA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA020, &qword_21BE42690);
    sub_21BD08BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA078);
  }

  return result;
}

unint64_t sub_21BD08BDC()
{
  result = qword_27CDBA080;
  if (!qword_27CDBA080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA018, &qword_21BE42688);
    sub_21BD08C94();
    sub_21BB3B038(&qword_27CDBA090, &qword_27CDBA098, &qword_21BE426D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA080);
  }

  return result;
}

unint64_t sub_21BD08C94()
{
  result = qword_27CDBA088;
  if (!qword_27CDBA088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA010, &qword_21BE42680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA000, &qword_21BE42670);
    sub_21BD0599C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA088);
  }

  return result;
}

unint64_t sub_21BD08D5C()
{
  result = qword_27CDBA0C0;
  if (!qword_27CDBA0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA060, &qword_21BE426C8);
    sub_21BCBECE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA0C0);
  }

  return result;
}

id sub_21BD08E08()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v3;
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BD08E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BD08EE4(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BD08FD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FAAppleCashPresenter();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BD09014(uint64_t a1, uint64_t a2)
{
  result = sub_21BD0906C(&qword_27CDBA0C8, a2, type metadata accessor for FAAppleCashPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BD0906C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD090B4()
{
  result = qword_27CDBA0D8;
  if (!qword_27CDBA0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA0D0, &qword_21BE42A50);
    sub_21BD09138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA0D8);
  }

  return result;
}

unint64_t sub_21BD09138()
{
  result = qword_27CDBA0E0;
  if (!qword_27CDBA0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA0E8, &qword_21BE42A58);
    sub_21BB3B038(&qword_27CDBA0F0, &qword_27CDBA0F8, &qword_21BE42A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA0E0);
  }

  return result;
}

uint64_t sub_21BD091E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21BD09234(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21BD09284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21BD09304(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

char *sub_21BD09398(void *a1, void *a2, void *a3, void *a4, char *a5)
{
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  type metadata accessor for AppleCardFamilyCache();
  swift_allocObject();
  *(a5 + 5) = sub_21BE206D4();
  v16 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardRow;
  LOBYTE(v44) = 0;
  sub_21BE26C6C();
  v17 = *(v12 + 32);
  v17(&a5[v16], v15, v11);
  v18 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__hasPendingCardInvite;
  LOBYTE(v44) = 0;
  sub_21BE26C6C();
  v17(&a5[v18], v15, v11);
  v19 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showShareAppleCardFlow;
  LOBYTE(v44) = 0;
  sub_21BE26C6C();
  v17(&a5[v19], v15, v11);
  v20 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardDetails;
  LOBYTE(v44) = 0;
  sub_21BE26C6C();
  v17(&a5[v20], v15, v11);
  v21 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__transactionLimitForMember;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_21BE26C6C();
  (*(v7 + 32))(&a5[v21], v10, v6);
  v22 = v40;
  v23 = v41;
  *(a5 + 2) = v40;
  *(a5 + 3) = v23;
  v25 = v42;
  v24 = v43;
  *(a5 + 4) = v42;
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle] = v24;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = v23;
  v28 = v22;
  v29 = v25;
  v30 = v24;
  v31 = [ObjCClassFromMetadata defaultCenter];
  [v31 addObserver:a5 selector:sel_serviceAccountDidChange name:*MEMORY[0x277D38358] object:0];

  v32 = [ObjCClassFromMetadata defaultCenter];
  v33 = qword_280BD6B10;

  if (v33 != -1)
  {
    swift_once();
  }

  [v32 addObserver:a5 selector:sel_serviceAccountDidChange name:qword_280BD6B18 object:{0, v40, v41, v42, v43}];

  v34 = *(a5 + 5);

  v35 = sub_21BE20E38(v28);
  v37 = v36;

  if (v37)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0;
  }

  if (!v37)
  {
    v37 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v38;
  v45 = v37;

  sub_21BE26CBC();
  return a5;
}

uint64_t sub_21BD097B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BD07CEC(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BD09870()
{
  result = qword_27CDBA170;
  if (!qword_27CDBA170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA158, &qword_21BE42C30);
    sub_21BD098FC();
    sub_21BC0ACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA170);
  }

  return result;
}

unint64_t sub_21BD098FC()
{
  result = qword_27CDBA178;
  if (!qword_27CDBA178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA180, &qword_21BE42C48);
    sub_21BD09988();
    sub_21BD099DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA178);
  }

  return result;
}

unint64_t sub_21BD09988()
{
  result = qword_27CDBA188;
  if (!qword_27CDBA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA188);
  }

  return result;
}

unint64_t sub_21BD099DC()
{
  result = qword_27CDBA190;
  if (!qword_27CDBA190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA198, &qword_21BE42C50);
    sub_21BD09A68();
    sub_21BD09C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA190);
  }

  return result;
}

unint64_t sub_21BD09A68()
{
  result = qword_27CDBA1A0;
  if (!qword_27CDBA1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA1A8, &qword_21BE42C58);
    sub_21BD09AF4();
    sub_21BD09BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1A0);
  }

  return result;
}

unint64_t sub_21BD09AF4()
{
  result = qword_27CDBA1B0;
  if (!qword_27CDBA1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA1B8, &unk_21BE42C60);
    sub_21BD09988();
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1B0);
  }

  return result;
}

unint64_t sub_21BD09BAC()
{
  result = qword_27CDBA1C0;
  if (!qword_27CDBA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1C0);
  }

  return result;
}

unint64_t sub_21BD09C00()
{
  result = qword_27CDBA1C8;
  if (!qword_27CDBA1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA1D0, &qword_21BE42C70);
    sub_21BD09AF4();
    sub_21BD09C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1C8);
  }

  return result;
}

unint64_t sub_21BD09C8C()
{
  result = qword_27CDBA1D8;
  if (!qword_27CDBA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1D8);
  }

  return result;
}

unint64_t sub_21BD09CE0()
{
  result = qword_27CDBA1E8;
  if (!qword_27CDBA1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA168, &qword_21BE42C40);
    sub_21BC353D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1E8);
  }

  return result;
}

unint64_t sub_21BD09D64()
{
  result = qword_27CDBA1F0;
  if (!qword_27CDBA1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA148, &qword_21BE42C18);
    sub_21BD09870();
    sub_21BB3B038(&qword_27CDBA1E0, &qword_27CDBA160, &qword_21BE42C38);
    sub_21BD09CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA1F0);
  }

  return result;
}

uint64_t sub_21BD09EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BD09F48()
{
  result = qword_27CDBA210;
  if (!qword_27CDBA210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA138, &qword_21BE42C08);
    sub_21BD0906C(&qword_27CDBA218, 255, type metadata accessor for DeleteMemberButtonView);
    sub_21BC353D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA210);
  }

  return result;
}

uint64_t sub_21BD0A014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BD0A07C()
{
  result = qword_27CDBCB70;
  if (!qword_27CDBCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCB70);
  }

  return result;
}

uint64_t sub_21BD0A0D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD063D0(a1, v1 + 16);
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_21BB47CE0();
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_21BB47CE0();
  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  MEMORY[0x21CF05D90](v0 + 144);
  v9 = *(v0 + 152);

  v10 = *(v0 + 176);

  v11 = *(v0 + 184);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 240);

  v15 = *(v0 + 256);

  v16 = *(v0 + 272);

  v17 = *(v0 + 288);

  return swift_deallocObject();
}

unint64_t sub_21BD0A254()
{
  result = qword_27CDBA240;
  if (!qword_27CDBA240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA238, &qword_21BE42D78);
    sub_21BD0A2E0();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA240);
  }

  return result;
}

unint64_t sub_21BD0A2E0()
{
  result = qword_27CDBA248;
  if (!qword_27CDBA248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA250, &qword_21BE42D80);
    sub_21BB3B038(&qword_27CDBA258, &qword_27CDBA260, &qword_21BE42D88);
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA248);
  }

  return result;
}

unint64_t sub_21BD0A404()
{
  result = qword_27CDBA2A0;
  if (!qword_27CDBA2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA298, &qword_21BE42DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA2A0);
  }

  return result;
}

uint64_t type metadata accessor for EmergencyContactView()
{
  result = qword_27CDBA2B0;
  if (!qword_27CDBA2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BD0A504()
{
  result = type metadata accessor for EmergencyContactDataItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_21BCED864();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BD0A5A4()
{
  v0 = sub_21BE289CC();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() redColor];
    v3 = [v1 imageWithRenderingMode_];
    [v1 size];
    v5 = v4;
    v7 = v6;
    [v1 scale];
    v9 = v8;
    v14.width = v5;
    v14.height = v7;
    UIGraphicsBeginImageContextWithOptions(v14, 0, v9);
    [v2 set];
    [v1 size];
    [v3 drawInRect_];
    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (v12)
    {
      return v12;
    }
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BD0A750()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EmergencyContactDataItem(0);
  sub_21BC1E1AC(v0 + *(v10 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21BC51500(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21BE32770;
    v13 = sub_21BC422F8();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_21BBBEFE8();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();

    v18 = [v17 bundleForClass_];
    sub_21BE2599C();

    v19 = sub_21BE289DC();

    (*(v6 + 8))(v9, v5);
    return v19;
  }
}

uint64_t sub_21BD0AA08@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EmergencyContactView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BD0B244(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyContactView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BD0B104(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BD0B168;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BD0AB70@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v52 = a3;
  v4 = type metadata accessor for EmergencyContactView();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass_];
    v10 = sub_21BE2599C();
    v48 = v11;
    v49 = v10;

    v12 = sub_21BD0A750();
    v47 = v13;
    v14 = [v8 bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    v18 = sub_21BD0A5A4();
    sub_21BD0B244(a2, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyContactView);
    v19 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_21BD0B104(v6, v21 + v19);
    v22 = v51;
    *(v21 + v20) = v51;
    v66 = type metadata accessor for EmergencyContactDataItem(0);
    v67 = sub_21BD0B1EC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
    sub_21BD0B244(a2, boxed_opaque_existential_1, type metadata accessor for EmergencyContactDataItem);
    v55 = v49;
    v56 = v48;
    v57 = v12;
    v58 = v47;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = sub_21BD0B624;
    v63 = v21;
    v64 = 0;
    v68 = 0;
    sub_21BBC7A18(&v55, v53);
    v54 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    v24 = v22;
    sub_21BE2784C();
    return sub_21BBC7A74(&v55);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v26 = swift_getObjCClassFromMetadata();
    v27 = objc_opt_self();
    v28 = [v27 bundleForClass_];
    v29 = sub_21BE2599C();
    v48 = v30;
    v49 = v29;

    v31 = [v27 bundleForClass_];
    v32 = sub_21BE2599C();
    v46 = v33;
    v47 = v32;

    v34 = sub_21BD0A5A4();
    sub_21BD0B244(a2, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyContactView);
    v35 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v36 = (v5 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_21BD0B104(v6, v37 + v35);
    v38 = v51;
    *(v37 + v36) = v51;
    v39 = v38;
    v40 = [v27 bundleForClass_];
    v41 = sub_21BE2599C();
    v43 = v42;

    v66 = type metadata accessor for EmergencyContactDataItem(0);
    v67 = sub_21BD0B1EC();
    v44 = __swift_allocate_boxed_opaque_existential_1(v65);
    sub_21BD0B244(a2, v44, type metadata accessor for EmergencyContactDataItem);
    v55 = v49;
    v56 = v48;
    v57 = v47;
    v58 = v46;
    v59 = v34;
    v60 = sub_21BD0B1E8;
    v61 = v37;
    v62 = v41;
    v63 = v43;
    v64 = 0;
    v68 = 0;
    sub_21BBC7968(&v55, v53);
    v54 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v55);
  }
}

uint64_t sub_21BD0B104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyContactView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD0B168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EmergencyContactView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BD0AB70(a1, v6, a2);
}

unint64_t sub_21BD0B1EC()
{
  result = qword_27CDBA2C0;
  if (!qword_27CDBA2C0)
  {
    type metadata accessor for EmergencyContactDataItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA2C0);
  }

  return result;
}

uint64_t sub_21BD0B244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = type metadata accessor for EmergencyContactView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = type metadata accessor for EmergencyContactDataItem(0);
  v6 = *(v5 + 28);
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v4 + *(v5 + 32));
  swift_unknownObjectRelease();
  v10 = *(v4 + *(v1 + 20));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_21BD0B4A0(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(v1 + *(type metadata accessor for EmergencyContactView() + 20));

    return [v8 presentMedicalIDViewController_];
  }

  else
  {
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "No nav controller when presenting emergency contact flow", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t FamilyMarqueeData.lightModePath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FamilyMarqueeData.darkModePath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t FamilyMarqueeData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21BE295EC();

  MEMORY[0x21CF03CA0](v1, v2);
  MEMORY[0x21CF03CA0](5972061, 0xE300000000000000);
  MEMORY[0x21CF03CA0](v3, v4);
  MEMORY[0x21CF03CA0](93, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t static FamilyMarqueeData.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_280BD84F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_280BD8508;
  v2 = qword_280BD8510;
  v3 = unk_280BD8518;
  *a1 = qword_280BD8500;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static FamilyMarqueeData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21BE2995C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21BE2995C();
    }
  }

  return result;
}

uint64_t sub_21BD0B86C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21BE2995C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21BE2995C();
    }
  }

  return result;
}

double sub_21BD0B910@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21BD0B998(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD0BA34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();
}

uint64_t sub_21BD0BAAC(__int128 *a1)
{
  v4 = *a1;
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t (*sub_21BD0BB34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCD59C;
}

uint64_t sub_21BD0BBD8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BD0BC50(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BD0BDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BD0BF10(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_280BD86D8;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCE114;
}

uint64_t sub_21BD0C080()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t static FamilyMarqueStore.shared.getter()
{
  if (qword_280BD86B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21BD0C150()
{
  v1 = qword_280BD86D8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_280BD86D0));

  v3 = *(v0 + qword_280BD86C0);
}

char *FamilyMarqueStore.deinit()
{
  v1 = qword_280BD86C0;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = qword_280BD86C8;
    v5 = v2 + 32;
    v6 = *&v0[v1];

    do
    {
      sub_21BB3DCD4(v5, v17);
      v7 = *&v0[v4];
      __swift_project_boxed_opaque_existential_1Tm(v17, v17[3]);
      v8 = v7;
      v9 = sub_21BE2994C();
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      [v8 na:v9 removeNotificationBlockObserver:?];

      swift_unknownObjectRelease();
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  v10 = *(v0 + 3);

  v11 = *(v0 + 4);

  v12 = *(v0 + 5);

  v13 = qword_280BD86D8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v0[qword_280BD86D0]);

  v15 = *&v0[v1];

  return v0;
}

uint64_t FamilyMarqueStore.__deallocating_deinit()
{
  FamilyMarqueStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD0C3D4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_21BE26A4C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD0C4C8, v7, v6);
}

uint64_t sub_21BD0C4C8()
{
  v36 = v0;
  v1 = v0;
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  sub_21BE2613C();

  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();

  v7 = os_log_type_enabled(v5, v6);
  v10 = v0 + 9;
  v9 = v0[9];
  v8 = v10[1];
  v11 = v1[8];
  if (v7)
  {
    v12 = v1[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_21BB3D81C(*(v12 + 16), *(v12 + 24), &v35);
    _os_log_impl(&dword_21BB35000, v5, v6, "%s load method called", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v11);
  v15 = (v1[7] + qword_280BD86D0);
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
  sub_21BE264AC();
  sub_21BE2647C();
  v17 = sub_21BE2604C();
  v19 = v18;

  v20 = v15[4];
  __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
  sub_21BE2646C();
  v21 = sub_21BE2604C();
  v23 = v22;

  if (v19)
  {
    v24 = sub_21BB41E7C(v17, v19);
    v26 = v25;

    if (v26)
    {
      if (!v23)
      {
        goto LABEL_9;
      }

LABEL_8:
      v27 = sub_21BB41E7C(v21, v23);
      v29 = v28;

      if (v29)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v24 = 0;
  v26 = 0xE000000000000000;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_9:

  v27 = 0;
  v29 = 0xE000000000000000;
LABEL_10:
  v34 = v1[10];
  v31 = v1[6];
  v30 = v1[7];
  swift_getKeyPath();
  swift_getKeyPath();
  v1[2] = v24;
  v1[3] = v26;
  v1[4] = v27;
  v1[5] = v29;

  sub_21BE26CBC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v32 = v1[1];

  return v32();
}

uint64_t sub_21BD0C7F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v39 = 7824750;
  v40 = 0xE300000000000000;
  sub_21BE2958C();
  if (*(a2 + 16) && (v9 = sub_21BBB31E8(&v41), (v10 & 1) != 0))
  {
    sub_21BB3DCD4(*(a2 + 56) + 32 * v9, &v45);
    sub_21BBB7238(&v41);
    if (swift_dynamicCast())
    {
      v11 = v39;
      v12 = v40;
      goto LABEL_8;
    }
  }

  else
  {
    sub_21BBB7238(&v41);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_8:
  v13 = sub_21BB41E7C(v11, v12);
  v15 = v14;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v16 = v43;
  v17 = v44;

  if (!v15 || (v18 = sub_21BB41E7C(v13, v15), v20 = v19, , !v20))
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = sub_21BB41E7C(v16, v17);
  v23 = v22;

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (!v23)
  {
    v23 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v18;
  v42 = v20;
  v43 = v24;
  v44 = v23;

  sub_21BE26CBC();
  sub_21BE2614C();

  v25 = sub_21BE26A2C();
  v26 = sub_21BE28FCC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v27 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v3;
    sub_21BE26CAC();

    v28 = v41;
    v29 = v42;
    v36 = v7;
    v30 = v4;
    v31 = v43;
    v32 = v44;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_21BE295EC();

    v45 = 0xD000000000000013;
    v46 = 0x800000021BE5D620;
    MEMORY[0x21CF03CA0](v28, v29);
    MEMORY[0x21CF03CA0](5972061, 0xE300000000000000);
    MEMORY[0x21CF03CA0](v31, v32);
    MEMORY[0x21CF03CA0](93, 0xE100000000000000);

    v33 = sub_21BB3D81C(v45, v46, &v39);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_21BB35000, v25, v26, "lightMode %s", v27, 0xCu);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x21CF05C50](v34, -1, -1);
    MEMORY[0x21CF05C50](v27, -1, -1);

    return (*(v30 + 8))(v36, v38);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BD0CC7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[3] = swift_getObjectType();
  v7[0] = a2;
  v5 = sub_21BE2890C();

  swift_unknownObjectRetain();
  v4(v7, v5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_21BD0CD28(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v40 = 7824750;
  v41 = 0xE300000000000000;
  sub_21BE2958C();
  if (!*(a2 + 16) || (v9 = sub_21BBB31E8(&v42), (v10 & 1) == 0))
  {
    sub_21BBB7238(&v42);
    goto LABEL_7;
  }

  sub_21BB3DCD4(*(a2 + 56) + 32 * v9, &v46);
  sub_21BBB7238(&v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_8;
  }

  v12 = v40;
  v11 = v41;
LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v13 = v42;
  v14 = v43;

  v15 = sub_21BB41E7C(v12, v11);
  v17 = v16;

  v18 = sub_21BB41E7C(v13, v14);
  v20 = v19;

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  if (!v17 || (v23 = sub_21BB41E7C(v15, v17), v25 = v24, , !v25))
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v45 = v25;

  sub_21BE26CBC();
  sub_21BE2614C();

  v26 = sub_21BE26A2C();
  v27 = sub_21BE28FCC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v28 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v3;
    sub_21BE26CAC();

    v29 = v42;
    v30 = v43;
    v37 = v7;
    v31 = v4;
    v32 = v44;
    v33 = v45;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_21BE295EC();

    v46 = 0xD000000000000013;
    v47 = 0x800000021BE5D620;
    MEMORY[0x21CF03CA0](v29, v30);
    MEMORY[0x21CF03CA0](5972061, 0xE300000000000000);
    MEMORY[0x21CF03CA0](v32, v33);
    MEMORY[0x21CF03CA0](93, 0xE100000000000000);

    v34 = sub_21BB3D81C(v46, v47, &v40);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_21BB35000, v26, v27, "darkMode %s", v28, 0xCu);
    v35 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x21CF05C50](v35, -1, -1);
    MEMORY[0x21CF05C50](v28, -1, -1);

    return (*(v31 + 8))(v37, v39);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BD0D1B4()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();
}

uint64_t sub_21BD0D230(__int128 *a1)
{
  v2 = *v1;
  v6 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t (*sub_21BD0D2BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 32) = swift_getKeyPath();
  *(v4 + 40) = swift_getKeyPath();
  *(v4 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

uint64_t sub_21BD0D364()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t dispatch thunk of FamilyMarqueStoreProtocol.doLoad()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FamilyMarqueStoreProtocol.doReload()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t sub_21BD0D7B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD0C3D4(a1, v1);
}

uint64_t FAAgeRangeController.requestAgeRange(with:viewController:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21BE26A4C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD0D928, 0, 0);
}

uint64_t sub_21BD0D928()
{
  v1 = v0[8];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "FamilyCircleUI requestAgeRange", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  v0[9] = sub_21BE28D7C();
  v0[10] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v0[11] = v9;
  v0[12] = v8;

  return MEMORY[0x2822009F8](sub_21BD0DA60, v9, v8);
}

uint64_t sub_21BD0DA60()
{
  v1 = v0[4].i64[1];
  v2 = v0[1].i64[1];
  v10 = v0[2];
  v3 = sub_21BE28D6C();
  v0[6].i64[1] = v3;
  v4 = swift_task_alloc();
  v0[7].i64[0] = v4;
  *(v4 + 16) = vextq_s8(v10, v10, 8uLL);
  *(v4 + 32) = v2;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7].i64[1] = v6;
  v7 = sub_21BB3A2A4(0, &qword_27CDBA2D0, 0x277D08220);
  *v6 = v0;
  v6[1] = sub_21BD0DBA8;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](&v0[1], v3, v8, 0xD000000000000051, 0x800000021BE5D6E0, sub_21BD0E648, v4, v7);
}

uint64_t sub_21BD0DBA8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_21BD0DD44;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_21BD0DCCC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BD0DCCC()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_21BD0DD44()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t FAAgeRangeController.requestAgeRange(with:bundleID:userAgeOverride:attestedAtOverrideInDays:viewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_21BE26A4C();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD0DE9C, 0, 0);
}

uint64_t sub_21BD0DE9C()
{
  v1 = v0[12];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "FamilyCircleUI requestAgeRange", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);
  v0[13] = sub_21BE28D7C();
  v0[14] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v0[15] = v9;
  v0[16] = v8;

  return MEMORY[0x2822009F8](sub_21BD0DFD4, v9, v8);
}

uint64_t sub_21BD0DFD4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  v10 = *(v0 + 64);
  v3 = sub_21BE28D6C();
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = vextq_s8(v10, v10, 8uLL);
  *(v4 + 32) = v2;
  *(v4 + 40) = v11;
  *(v4 + 56) = v12;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = sub_21BB3A2A4(0, &qword_27CDBA2D0, 0x277D08220);
  *v6 = v0;
  v6[1] = sub_21BD0E124;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v3, v8, 0xD000000000000051, 0x800000021BE5D6E0, sub_21BD105CC, v4, v7);
}

uint64_t sub_21BD0E124()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_21BD0E2C0;
  }

  else
  {
    v7 = v2[17];
    v8 = v2[18];

    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_21BD0E248;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BD0E248()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_21BD0E2C0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_21BD0E34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  (*(v12 + 16))(&v25 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  if (a6)
  {
    a6 = sub_21BE289CC();
  }

  v18 = objc_allocWithZone(MEMORY[0x277D08218]);
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v19 = sub_21BE28C1C();
  v20 = [v18 initWithRequestType:0 entryPoint:0 altDSID:0 bundleID:a6 ageGates:v19 userAgeOverride:v25 attestedAtOverrideInDays:a8];

  if (qword_27CDB4E38 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = sub_21BD104DC;
  *(v21 + 24) = v17;
  MEMORY[0x28223BE20](v21);
  v24 = v26;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21BD10568;
  *(v22 + 24) = v21;

  sub_21BBE4394(v20, sub_21BD105D0, (&v25 - 4), sub_21BD105C8, v22);
}

uint64_t sub_21BD0E64C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
    return sub_21BE28D1C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
    return sub_21BE28D2C();
  }
}

void sub_21BD0E6CC(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
    v5 = qword_27CDB4F38;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    if ((sub_21BE2940C() & 1) != 0 || [v6 code] == -4006)
    {
      type metadata accessor for AgeRangeError(0);
      sub_21BDCE614(MEMORY[0x277D84F90]);
      sub_21BD10570();
      sub_21BE25A6C();
      a3(v9, 1);

LABEL_15:
      return;
    }

    v8 = v6;
    a3(a1, 1);
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for AgeRangeError(0);
      sub_21BDCE614(MEMORY[0x277D84F90]);
      sub_21BD10570();
      sub_21BE25A6C();
      v6 = v9;
      a3(v9, 1);
      goto LABEL_15;
    }

    v8 = a2;
    a3(a2, 0);
  }
}

uint64_t FAAgeRangeController.setAgeRangeSharingGlobalState(entryPoint:viewController:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_21BE28D7C();
  v5[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_21BD0E97C, v7, v6);
}

uint64_t sub_21BD0E97C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v12 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = sub_21BE28D6C();
  *(v0 + 88) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v12;
  *(v6 + 48) = v3;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_21BD0EAAC;
  v9 = MEMORY[0x277D85700];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, v5, v9, 0xD000000000000041, 0x800000021BE5D740, sub_21BD100B0, v6, v10);
}

uint64_t sub_21BD0EAAC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_21BD0EC34;
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_21BD0EBD0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BD0EBD0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD0EC34()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_21BD0ECAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  (*(v11 + 16))(&v24 - v13, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = a4;
  if (a6)
  {
    v18 = sub_21BE289CC();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D08218]) initWithRequestType:1 entryPoint:a3 altDSID:v18 bundleID:0 ageGates:0 userAgeOverride:0 attestedAtOverrideInDays:0];

  if (qword_27CDB4E38 != -1)
  {
    v20 = swift_once();
  }

  MEMORY[0x28223BE20](v20);
  v23 = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21BD1043C;
  *(v21 + 24) = v16;

  sub_21BBE4394(v19, sub_21BD104CC, (&v24 - 4), sub_21BD104D4, v21);
}

uint64_t sub_21BD0EF40(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v12 = a1;
  v13 = a3;
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23[0] = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v13;
    v18[1] = a1;
    v19 = v13;
    v20 = v12;
    _os_log_impl(&dword_21BB35000, v14, v15, "returning from setAgeRangeSharingGlobalState, viewController is: %@, error: %@", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v18, -1, -1);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  if (a1)
  {
    v23[1] = v12;
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
    return sub_21BE28D1C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
    return sub_21BE28D2C();
  }
}

uint64_t sub_21BD0F170(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, const void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
  v17 = sub_21BE28DAC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE430F0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_21BE32A10;
  v19[5] = v18;
  v20 = a4;
  v21 = a5;
  v22 = a1;
  sub_21BDC4F90(0, 0, v14, &unk_21BE391F0, v19);
}

uint64_t sub_21BD0F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21BE28D7C();
  v5[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD0F3B0, v7, v6);
}

uint64_t sub_21BD0F3B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 32);
    v5 = sub_21BE28A0C();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 72) = v2;
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = v7;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_21BD0F4A4;
  v11 = *(v0 + 48);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  return FAAgeRangeController.setAgeRangeSharingGlobalState(entryPoint:viewController:altDSID:)(v13, v12, v5, v2);
}

uint64_t sub_21BD0F4A4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 24);
  v9 = *v1;

  v10 = *(v3 + 64);
  if (v2)
  {
    v11 = sub_21BE25A7C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 64), 0);
  }

  _Block_release(*(v4 + 64));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_21BD0F664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BD0F6E4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD0F758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD0F7CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

void (*sub_21BD0F83C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCDB70;
}

uint64_t sub_21BD0F8E0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BD0F958(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2E0, &qword_21BE43058);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BD0FADC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BD0FB50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2E0, &qword_21BE43058);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BD0FC88(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2E0, &qword_21BE43058);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCE114;
}

uint64_t AgeRangeGlobalSharedState.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_21BE26C6C();
  return v3;
}

uint64_t AgeRangeGlobalSharedState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v8[15] = 0;
  sub_21BE26C6C();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t AgeRangeGlobalSharedState.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AgeRangeGlobalSharedState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD1005C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AgeRangeGlobalSharedState();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AgeRangeGlobalSharedState()
{
  result = qword_27CDBA2E8;
  if (!qword_27CDBA2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD10114()
{
  sub_21BB3D064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21BD102A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD0F310(v2, v3, v4, v5, v6);
}

uint64_t sub_21BD10370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BDC4EA8(a1, v4, v5, v7);
}

uint64_t sub_21BD1043C(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_21BD0EF40(a1, a2, v6, v7);
}

uint64_t sub_21BD104DC(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108) - 8) + 80);

  return sub_21BD0E64C(a1, a2 & 1);
}

unint64_t sub_21BD10570()
{
  result = qword_27CDB5258;
  if (!qword_27CDB5258)
  {
    type metadata accessor for AgeRangeError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5258);
  }

  return result;
}

id sub_21BD105E4(void *a1)
{
  v1 = a1;
  v2 = [v1 altDSID];
  if (v2)
  {
    v3 = v2;
    sub_21BE28A0C();
  }

  else
  {
  }

  v4 = sub_21BE289CC();

  return v4;
}

uint64_t FAFamilyMember.accountID.getter()
{
  v1 = [v0 altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();

  return v3;
}

uint64_t type metadata accessor for CheckListLocationDestination()
{
  result = qword_27CDBA308;
  if (!qword_27CDBA308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD10768()
{
  sub_21BD10814();
  if (v0 <= 0x3F)
  {
    sub_21BCB04E8();
    if (v1 <= 0x3F)
    {
      sub_21BB40410();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BD10814()
{
  if (!qword_27CDBA318)
  {
    type metadata accessor for LocationViewModel();
    sub_21BD108A8(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
    v0 = sub_21BE2728C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBA318);
    }
  }
}

uint64_t sub_21BD108A8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_21BD1090C@<D0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  sub_21BD10C54();
  sub_21BD10CA8();

  v4 = a1;
  sub_21BE2784C();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 25) = v9;
  return result;
}

double sub_21BD109DC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[24];
  sub_21BD1090C(*(v1 + 2), &v10);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  return result;
}

uint64_t sub_21BD10A38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA330, &qword_21BE43240);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[6];
    if (v6)
    {
      sub_21BDFD940(v5, v6, 0, v16);
      v7 = v16[5];
      *(v4 + 4) = v16[4];
      *(v4 + 5) = v7;
      *(v4 + 12) = v17;
      v8 = v16[1];
      *v4 = v16[0];
      *(v4 + 1) = v8;
      v9 = v16[3];
      *(v4 + 2) = v16[2];
      *(v4 + 3) = v9;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA338, &qword_21BE43248);
      sub_21BD10CFC();
      sub_21BD10D60();
      return sub_21BE2784C();
    }
  }

  else
  {
    v11 = v0[5];
    v0 = type metadata accessor for LocationViewModel();
    sub_21BD108A8(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
    sub_21BE2726C();
    __break(1u);
  }

  v12 = v0[7];
  v13 = v5;
  sub_21BBDAF04();
  sub_21BD108A8(&qword_280BD8A20, sub_21BBDAF04);
  v14 = v13;
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

unint64_t sub_21BD10C54()
{
  result = qword_27CDBA320;
  if (!qword_27CDBA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA320);
  }

  return result;
}

unint64_t sub_21BD10CA8()
{
  result = qword_27CDBA328;
  if (!qword_27CDBA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA328);
  }

  return result;
}

unint64_t sub_21BD10CFC()
{
  result = qword_27CDBA340;
  if (!qword_27CDBA340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA338, &qword_21BE43248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA340);
  }

  return result;
}

unint64_t sub_21BD10D60()
{
  result = qword_27CDBDC00;
  if (!qword_27CDBDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDC00);
  }

  return result;
}

unint64_t sub_21BD10DB4()
{
  result = qword_27CDBA348;
  if (!qword_27CDBA348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA350, &qword_21BE43250);
    sub_21BD10E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA348);
  }

  return result;
}

unint64_t sub_21BD10E38()
{
  result = qword_27CDBA358;
  if (!qword_27CDBA358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA360, &qword_21BE43258);
    sub_21BD10C54();
    sub_21BD10CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA358);
  }

  return result;
}

unint64_t sub_21BD10EC4()
{
  result = qword_27CDBA368;
  if (!qword_27CDBA368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA370, &qword_21BE43260);
    sub_21BD10CFC();
    sub_21BD10D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA368);
  }

  return result;
}

uint64_t sub_21BD10F50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE28A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE28A3C();
  v7 = sub_21BE28A1C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = v9;
  }

  sub_21BDF6D70(v16);
  sub_21BBBEF94(v10, v11);
  v12 = sub_21BBB63EC(&unk_282D84F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA378, &qword_21BE43268);
  swift_arrayDestroy();
  v13 = sub_21BBB62CC(&unk_282D85038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA380, &unk_21BE43F30);
  swift_arrayDestroy();
  v15[3] = &type metadata for LegacyVerificationRules;
  v15[4] = &off_282D98F58;
  v15[0] = v12;
  v15[1] = v13;
  return sub_21BDF5AA8(v16, v15, a1);
}

uint64_t sub_21BD11124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE2754C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_21BBA3854(v2, &v17 - v11, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE26F5C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

char *sub_21BD11324()
{
  v1 = *(v0 + *(type metadata accessor for SharedFamilyGroceryIntroView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v18)
  {
    v2 = sub_21BE2905C();

    if (v2 >> 62)
    {
LABEL_23:
      v3 = sub_21BE2951C();
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = MEMORY[0x277D84F90];
        do
        {
          v6 = v4;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x21CF047C0](v6, v2);
            }

            else
            {
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v7 = *(v2 + 8 * v6 + 32);
            }

            v8 = v7;
            v4 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v9 = [v7 appleID];
            if (v9)
            {
              break;
            }

            ++v6;
            if (v4 == v3)
            {
              goto LABEL_25;
            }
          }

          v10 = v9;
          v11 = sub_21BE28A0C();
          v17 = v12;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_21BBBC990(0, *(v5 + 2) + 1, 1, v5);
          }

          v14 = *(v5 + 2);
          v13 = *(v5 + 3);
          if (v14 >= v13 >> 1)
          {
            v5 = sub_21BBBC990((v13 > 1), v14 + 1, 1, v5);
          }

          *(v5 + 2) = v14 + 1;
          v15 = &v5[16 * v14];
          *(v15 + 4) = v11;
          *(v15 + 5) = v17;
        }

        while (v4 != v3);
        goto LABEL_25;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_25:

    return v5;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21BD11530(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v8[0] = *(v3 - 1);
      v8[1] = v4;
      sub_21BD11604(v8, &v7);
      if (v7)
      {
        MEMORY[0x21CF03DB0]();
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21BE28C5C();
        }

        sub_21BE28C8C();
        v1 = v9;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v1;
}

void sub_21BD11604(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = sub_21BE289CC();
  v14 = [v13 cal_isPhoneNumber];

  if (v14)
  {
    sub_21BE261BC();

    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21BB3D81C(v12, v11, &v32);
      _os_log_impl(&dword_21BB35000, v15, v16, "%s is categorized as phone number", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x21CF05C50](v18, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    v19 = swift_allocObject();
    v30 = xmmword_21BE32770;
    *(v19 + 16) = xmmword_21BE32770;
    *(v19 + 32) = v12;
    *(v19 + 40) = v11;
    v20 = swift_allocObject();
    *(v20 + 16) = v30;
    *(v20 + 32) = v12;
    *(v20 + 40) = v11;
    v21 = objc_allocWithZone(MEMORY[0x277D445D8]);
    swift_bridgeObjectRetain_n();
    v22 = sub_21BE28C1C();
  }

  else
  {
    sub_21BE261BC();

    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_21BB3D81C(v12, v11, &v32);
      _os_log_impl(&dword_21BB35000, v23, v24, "%s is categorized as email", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21BE32770;
    *(v27 + 32) = v12;
    *(v27 + 40) = v11;
    v21 = objc_allocWithZone(MEMORY[0x277D445D8]);

    v22 = sub_21BE28C1C();
  }

  v28 = sub_21BE28C1C();

  v29 = [v21 initWithPhones:v22 emails:v28];

  *v31 = v29;
}

void sub_21BD11A28(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedFamilyGroceryIntroView();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v39 = *(v1 + *(v8 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA400, &qword_21BE433A0);
  sub_21BE283FC();
  v15 = v38;
  if (v38)
  {
    v16 = [v38 listID];
    v17 = sub_21BD11530(v36);
    sub_21BDF716C(v17);

    v18 = objc_allocWithZone(MEMORY[0x277D44628]);
    sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
    sub_21BC692B8();
    v19 = sub_21BE28E3C();

    v20 = [v18 initWithListID:v16 participants:v19];

    v21 = v2 + *(v8 + 36);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v39) = v22;
    *(&v39 + 1) = v23;
    LOBYTE(v38) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    v24 = sub_21BE28DAC();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    sub_21BD1613C(v2, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_21BE28D7C();
    v25 = v20;
    v26 = sub_21BE28D6C();
    v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v26;
    *(v29 + 24) = v30;
    sub_21BD161A0(v10, v29 + v27);
    *(v29 + v28) = v25;
    sub_21BBA932C(0, 0, v14, &unk_21BE43538, v29);
  }

  else
  {
    sub_21BE261BC();
    v31 = sub_21BE26A2C();
    v32 = sub_21BE28FDC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v39 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5E220, &v39);
      _os_log_impl(&dword_21BB35000, v31, v32, "%s shared grocery list is not present, this should not have happened", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x21CF05C50](v34, -1, -1);
      MEMORY[0x21CF05C50](v33, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BD11EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = sub_21BE26A4C();
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  v9 = sub_21BE26F5C();
  v5[31] = v9;
  v10 = *(v9 - 8);
  v5[32] = v10;
  v11 = *(v10 + 64) + 15;
  v5[33] = swift_task_alloc();
  sub_21BE28D7C();
  v5[34] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v5[35] = v13;
  v5[36] = v12;

  return MEMORY[0x2822009F8](sub_21BD12000, v13, v12);
}

uint64_t sub_21BD12000()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = type metadata accessor for SharedFamilyGroceryIntroView();
  v0[37] = v3;
  v4 = *(v2 + *(v3 + 28));
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_21BD1213C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4D8, &qword_21BE43540);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_36;
  v0[14] = v5;
  [v4 addParticipantsToSharedGroceryList:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD1213C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);
  if (v3)
  {
    v6 = sub_21BD123E0;
  }

  else
  {
    v6 = sub_21BD1226C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BD1226C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 208);

  sub_21BD11124(v2);
  sub_21BE26F4C();
  (*(v4 + 8))(v2, v3);
  v6 = (*(v0 + 208) + *(*(v0 + 296) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v0 + 176) = v7;
  *(v0 + 184) = v8;
  *(v0 + 313) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v9 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 240);
  [v9 postNotificationName:qword_27CDB7E88 object:0];

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21BD123E0()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);

  swift_willThrow();
  sub_21BE261BC();
  v8 = v1;
  sub_21BE295EC();
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  MEMORY[0x21CF03CA0](0xD00000000000001FLL, 0x800000021BE5E220);
  MEMORY[0x21CF03CA0](0xD000000000000049, 0x800000021BE5E260);
  *(v0 + 200) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE2977C();
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  sub_21BC51D50(v1);

  (*(v5 + 8))(v4, v6);
  sub_21BD1269C();
  v11 = v7 + *(v2 + 40);
  v12 = *(v11 + 8);
  *(v0 + 160) = *v11;
  *(v0 + 168) = v12;
  *(v0 + 312) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  v13 = (*(v0 + 208) + *(*(v0 + 296) + 36));
  v14 = *v13;
  v15 = *(v13 + 1);
  *(v0 + 176) = v14;
  *(v0 + 184) = v15;
  *(v0 + 313) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v16 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 264);
  v18 = *(v0 + 240);
  [v16 postNotificationName:qword_27CDB7E88 object:0];

  v19 = *(v0 + 8);

  return v19();
}

void sub_21BD1269C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedFamilyGroceryIntroView();
  v16 = *(v0 + *(v6 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA400, &qword_21BE433A0);
  sub_21BE283FC();
  v7 = v15;
  if (v15)
  {
    v8 = *(v0 + *(v6 + 28));
    *&v16 = 0;
    if ([v8 deleteSharedGroceryList:v15 error:&v16])
    {
      v9 = v16;
    }

    else
    {
      v10 = v16;
      v11 = sub_21BE25A8C();

      swift_willThrow();
      sub_21BE261BC();
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      v12 = v11;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0x694C6574656C6564, 0xEC00000029287473);
      MEMORY[0x21CF03CA0](0xD000000000000034, 0x800000021BE5E130);
      sub_21BC51D50(v11);

      (*(v2 + 8))(v5, v1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21BD128C4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v28 = sub_21BE2870C();
  v31 = *(v28 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE2874C();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedFamilyGroceryIntroView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_21BE2871C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
  v17 = sub_21BE2928C();
  (*(v13 + 8))(v16, v12);
  sub_21BD1613C(v25, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_21BD161A0(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_21BD16C00;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_55;
  v22 = _Block_copy(aBlock);

  sub_21BE2872C();
  v32 = MEMORY[0x277D84F90];
  sub_21BD165E4(&qword_280BD69E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  v23 = v28;
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v8, v4, v22);
  _Block_release(v22);

  (*(v31 + 8))(v4, v23);
  (*(v29 + 8))(v8, v30);
}

uint64_t sub_21BD12D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2870C();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE2874C();
  v22 = *(v10 - 8);
  v23 = v10;
  v11 = *(v22 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21BD13054(a1);
  v16 = v15;
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v21 = sub_21BE2925C();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16 & 1;
  aBlock[4] = sub_21BD16CB4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_61;
  v18 = _Block_copy(aBlock);

  sub_21BD16CE8(v14);

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BD165E4(&qword_280BD69E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  v19 = v21;
  MEMORY[0x21CF04410](0, v13, v9, v18);
  _Block_release(v18);

  sub_21BD16CA8(v14);
  (*(v24 + 8))(v9, v6);
  return (*(v22 + 8))(v13, v23);
}

id sub_21BD13054(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + *(type metadata accessor for SharedFamilyGroceryIntroView() + 28));
  v8[0] = 0;
  v2 = [v1 createSharedGroceryListWithError_];
  if (v2)
  {
    v3 = v8[0];
    result = v2;
  }

  else
  {
    v5 = v8[0];
    v6 = sub_21BE25A8C();

    swift_willThrow();
    result = v6;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BD13120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3C0, &qword_21BE43340);
  v32 = *(v30 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - v4;
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3C8, &qword_21BE43348);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3D0, &qword_21BE43350);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3D8, &qword_21BE43358);
  v8 = sub_21BB3B038(&qword_27CDBA3E0, &qword_27CDBA3D0, &qword_21BE43350);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  v11 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  v39 = v10;
  v40 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v9;
  v40 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = v13;
  swift_getOpaqueTypeConformance2();
  sub_21BE271BC();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_21BE2599C();
  v18 = v17;

  v37 = v16;
  v38 = v18;
  v19 = (v2 + *(type metadata accessor for SharedFamilyGroceryIntroView() + 40));
  v20 = *v19;
  v21 = *(v19 + 1);
  v35 = v20;
  v36 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDBA3E8, &qword_27CDBA3C0, &qword_21BE43340);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v22 = v30;
  v23 = v31;
  sub_21BE280FC();

  (*(v32 + 8))(v5, v22);
  v24 = sub_21BE2829C();
  KeyPath = swift_getKeyPath();
  v39 = v24;
  v26 = sub_21BE26F3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3F0, &qword_21BE43390);
  v28 = (v23 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = v26;
  return result;
}

uint64_t sub_21BD13594(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3D0, &qword_21BE43350);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  *v5 = sub_21BE2770C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3F8, &qword_21BE43398);
  sub_21BD13790(a1, &v5[*(v6 + 44)]);
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3D8, &qword_21BE43358);
  sub_21BB3B038(&qword_27CDBA3E0, &qword_27CDBA3D0, &qword_21BE43350);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  v9 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  v14 = v8;
  v15 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v7;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  return sub_21BB52920(v5);
}

uint64_t sub_21BD13790@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v176 = a2;
  v177 = a1;
  v192 = sub_21BE2837C();
  v191 = sub_21BE27BDC();
  KeyPath = swift_getKeyPath();
  v189 = sub_21BE2829C();
  if (qword_27CDB4E78 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDD41E8;
  v3 = sub_21BE2826C();
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v236[3] = *&v236[27];
  *&v236[11] = *&v236[35];
  *&v236[19] = v237;
  *&v243[0] = v3;
  WORD4(v243[0]) = 256;
  *(v243 + 10) = *v236;
  *(&v243[1] + 10) = *&v236[8];
  *(&v243[2] + 10) = *&v236[16];
  *(&v243[3] + 1) = *(&v237 + 1);
  *&v244 = sub_21BE2869C();
  *(&v244 + 1) = v4;
  v255 = v243[3];
  v256 = v244;
  v253 = v243[1];
  v254 = v243[2];
  v252 = v243[0];
  v245 = v3;
  v246 = 256;
  *&v249[14] = *(&v237 + 1);
  *v249 = *&v236[16];
  v248 = *&v236[8];
  v247 = *v236;
  v250 = v244;
  v251 = v4;
  sub_21BBA3854(v243, &v224, &qword_27CDBA408, &qword_21BE433D8);
  sub_21BB3A4CC(&v245, &qword_27CDBA408, &qword_21BE433D8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v187 = v9;
  v188 = v8;

  v10 = [v6 bundleForClass_];
  v11 = sub_21BE2599C();
  v185 = v12;
  v186 = v11;

  v13 = [v6 bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  *&v224 = v14;
  *(&v224 + 1) = v16;
  sub_21BB41FA4();
  v17 = sub_21BE27DBC();
  v19 = v18;
  LOBYTE(v16) = v20;
  *&v224 = sub_21BE2832C();
  v21 = sub_21BE27D5C();
  v23 = v22;
  v25 = v24;
  sub_21BBC7C7C(v17, v19, v16 & 1);

  sub_21BE27BFC();
  v26 = sub_21BE27D9C();
  v182 = v27;
  v183 = v26;
  LOBYTE(v19) = v28;
  v184 = v29;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  v180 = swift_getKeyPath();
  v179 = v19 & 1;
  LOBYTE(v224) = v19 & 1;
  v181 = sub_21BE27B6C();
  sub_21BE26E0C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA410, &qword_21BE43410);
  v175 = v161;
  v171 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = v161 - v39;
  v193 = type metadata accessor for SharedFamilyGroceryIntroView();
  v41 = v177;
  v224 = *&v177[*(v193 + 11)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA418, &qword_21BE43418);
  sub_21BE283FC();
  v42 = v194;
  v178 = v40;
  if (v194)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA420, &qword_21BE43420);
    v44 = *(v43 - 8);
    v45 = *(v44 + 64);
    MEMORY[0x28223BE20](v43);
    v47 = v161 - v46;
    sub_21BE2869C();
    sub_21BE26F2C();
    *&v224 = v42;
    *(&v224 + 1) = v238;
    LOBYTE(v225) = v239;
    v226 = v240;
    LOBYTE(v227[0]) = v241;
    *(v227 + 8) = v242;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4C8, &unk_21BE43520);
    sub_21BD16708();
    sub_21BE27F5C();

    sub_21BBB7D84(v47, v40, &qword_27CDBA420, &qword_21BE43420);
    (*(v44 + 56))(v40, 0, 1, v43);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA420, &qword_21BE43420);
    (*(*(v48 - 8) + 56))(v40, 1, 1, v48);
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA428, &qword_21BE43428);
  v174 = v161;
  v169 = *(v49 - 8);
  v170 = v49;
  v50 = *(v169 + 64);
  v51 = MEMORY[0x28223BE20](v49);
  v177 = v161 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v161;
  v168 = v52;
  MEMORY[0x28223BE20](v51);
  v167 = v161 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5090, &qword_21BE43430);
  v172 = v161;
  v55 = *(v54 - 8);
  v165 = (v54 - 8);
  v56 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54 - 8);
  v58 = v161 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA430, &qword_21BE43438);
  v166 = v161;
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = v161 - v62;
  v64 = *--v193;
  v65 = v64;
  v66 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v163 = v67;
  v164 = ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = (v161 - v164);
  sub_21BD1613C(v41, v161 - v164);
  v162 = *(v65 + 80);
  v69 = (v162 + 16) & ~v162;
  v70 = swift_allocObject();
  v71 = sub_21BD161A0(v68, v70 + v69);
  MEMORY[0x28223BE20](v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA438, &qword_21BE43440);
  sub_21BD1624C();
  sub_21BE2843C();
  v72 = &v63[*(v59 + 36)];
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v74 = *MEMORY[0x277CDF420];
  v75 = sub_21BE26E7C();
  (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
  *v72 = swift_getKeyPath();
  v76 = sub_21BE27A4C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v80 = v161 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE27A3C();
  sub_21BD16500();
  sub_21BD165E4(&qword_27CDBA490, MEMORY[0x277CDE400]);
  sub_21BE27ECC();
  (*(v77 + 8))(v80, v76);
  sub_21BB3A4CC(v63, &qword_27CDBA430, &qword_21BE43438);
  v81 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA498, &unk_21BE43498) + 36)];
  v82 = *(sub_21BE2723C() + 20);
  v83 = *MEMORY[0x277CE0118];
  v84 = sub_21BE276AC();
  (*(*(v84 - 8) + 104))(&v81[v82], v83, v84);
  __asm { FMOV            V0.2D, #14.0 }

  *v81 = _Q0;
  *&v81[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E90, &qword_21BE423F0) + 36)] = 256;
  LOBYTE(v83) = sub_21BE27B6C();
  sub_21BE26E0C();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v98 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4A0, &qword_21BE434A8) + 36)];
  *v98 = v83;
  *(v98 + 1) = v91;
  *(v98 + 2) = v93;
  *(v98 + 3) = v95;
  *(v98 + 4) = v97;
  v98[40] = 0;
  LOBYTE(v83) = sub_21BE27B9C();
  sub_21BE26E0C();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4A8, &qword_21BE434B0) + 36)];
  *v107 = v83;
  *(v107 + 1) = v100;
  *(v107 + 2) = v102;
  *(v107 + 3) = v104;
  *(v107 + 4) = v106;
  v107[40] = 0;
  v108 = v41 + *(v193 + 11);
  v109 = *v108;
  v110 = *(v108 + 8);
  LOBYTE(v224) = v109;
  *(&v224 + 1) = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  LOBYTE(v81) = v194;
  v111 = swift_getKeyPath();
  v112 = swift_allocObject();
  v166 = v161;
  *(v112 + 16) = v81;
  v113 = *(v165 + 11);
  v193 = v58;
  v114 = &v58[v113];
  *v114 = v111;
  v114[1] = sub_21BC0AE98;
  v114[2] = v112;
  MEMORY[0x28223BE20](v112);
  v115 = (v161 - v164);
  sub_21BD1613C(v41, v161 - v164);
  sub_21BE28D7C();
  v116 = sub_21BE28D6C();
  v117 = (v162 + 32) & ~v162;
  v118 = swift_allocObject();
  v119 = MEMORY[0x277D85700];
  *(v118 + 16) = v116;
  *(v118 + 24) = v119;
  sub_21BD161A0(v115, v118 + v117);
  v120 = sub_21BE28DAC();
  v165 = v161;
  v121 = *(v120 - 8);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = v161 - v123;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v163 = sub_21BE2715C();
    v164 = v161;
    v162 = *(v163 - 8);
    v125 = *(v162 + 64);
    MEMORY[0x28223BE20](v163);
    v127 = v161 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v224 = 0;
    *(&v224 + 1) = 0xE000000000000000;
    sub_21BE295EC();

    *&v224 = 0xD00000000000003ELL;
    *(&v224 + 1) = 0x800000021BE5E1E0;
    *&v194 = 153;
    v128 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v128);

    v161[1] = v161;
    MEMORY[0x28223BE20](v129);
    (*(v121 + 16))(v161 - v123, v161 - v123, v120);
    sub_21BE2714C();
    (*(v121 + 8))(v161 - v123, v120);
    v130 = v167;
    sub_21BB52B48(v193, v167);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5098, &qword_21BE31070);
    (*(v162 + 32))(v130 + *(v131 + 36), v127, v163);
  }

  else
  {
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A0, &qword_21BE31078);
    v130 = v167;
    v133 = (v167 + *(v132 + 36));
    v134 = sub_21BE2701C();
    (*(v121 + 32))(&v133[*(v134 + 20)], v124, v120);
    *v133 = &unk_21BE434F0;
    *(v133 + 1) = v118;
    sub_21BB52B48(v193, v130);
  }

  v135 = v169;
  v136 = v170;
  v137 = v177;
  v138 = (*(v169 + 32))(v177, v130, v170);
  v193 = v161;
  MEMORY[0x28223BE20](v138);
  v140 = v161 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_21BBA3854(v178, v140, &qword_27CDBA410, &qword_21BE43410);
  v171 = v161;
  MEMORY[0x28223BE20](v141);
  v143 = v161 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = *(v135 + 16);
  v168(v143, v137, v136);
  *&v194 = v192;
  *(&v194 + 1) = KeyPath;
  *&v195 = v191;
  *(&v195 + 1) = v189;
  v144 = v254;
  v145 = v255;
  v198 = v254;
  v199 = v255;
  v146 = v256;
  v200 = v256;
  v148 = v252;
  v147 = v253;
  v196 = v252;
  v197 = v253;
  *&v201 = v188;
  *(&v201 + 1) = v187;
  *&v202 = v186;
  *(&v202 + 1) = v185;
  v149 = v195;
  v150 = v176;
  *v176 = v194;
  v150[1] = v149;
  v152 = v201;
  v151 = v202;
  v150[6] = v146;
  v150[7] = v152;
  v150[4] = v144;
  v150[5] = v145;
  v150[2] = v148;
  v150[3] = v147;
  *&v203 = v183;
  *(&v203 + 1) = v182;
  LOBYTE(v204) = v179;
  *(&v204 + 1) = v232[0];
  DWORD1(v204) = *(v232 + 3);
  *(&v204 + 1) = v184;
  *&v205 = v180;
  WORD4(v205) = 1;
  BYTE10(v205) = 1;
  *(&v205 + 11) = v234;
  HIBYTE(v205) = v235;
  LOBYTE(v206) = v181;
  DWORD1(v206) = *&v233[3];
  *(&v206 + 1) = *v233;
  *(&v206 + 1) = v31;
  *&v207[0] = v33;
  *(&v207[0] + 1) = v35;
  *&v207[1] = v37;
  BYTE8(v207[1]) = 0;
  v153 = v203;
  v154 = v204;
  v150[8] = v151;
  v150[9] = v153;
  v155 = v205;
  v156 = v206;
  v157 = v207[0];
  *(v150 + 217) = *(v207 + 9);
  v150[12] = v156;
  v150[13] = v157;
  v150[10] = v154;
  v150[11] = v155;
  *(v150 + 30) = 0;
  *(v150 + 248) = 1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4B0, &qword_21BE43500);
  sub_21BBA3854(v140, v150 + *(v158 + 80), &qword_27CDBA410, &qword_21BE43410);
  v168(v150 + *(v158 + 96), v143, v136);
  sub_21BBA3854(&v194, &v224, &qword_27CDBA4B8, &qword_21BE43508);
  sub_21BBA3854(&v203, &v224, &qword_27CDBA4C0, &unk_21BE43510);
  v159 = *(v135 + 8);
  v159(v177, v136);
  sub_21BB3A4CC(v178, &qword_27CDBA410, &qword_21BE43410);
  v159(v143, v136);
  sub_21BB3A4CC(v140, &qword_27CDBA410, &qword_21BE43410);
  v208[0] = v183;
  v208[1] = v182;
  v209 = v179;
  *v210 = v232[0];
  *&v210[3] = *(v232 + 3);
  v211 = v184;
  v212 = v180;
  v213 = 1;
  v214 = 1;
  v215 = v234;
  v216 = v235;
  v217 = v181;
  *&v218[3] = *&v233[3];
  *v218 = *v233;
  v219 = v31;
  v220 = v33;
  v221 = v35;
  v222 = v37;
  v223 = 0;
  sub_21BB3A4CC(v208, &qword_27CDBA4C0, &unk_21BE43510);
  *&v224 = v192;
  *(&v224 + 1) = KeyPath;
  v225 = v191;
  v226 = v189;
  v227[2] = v254;
  v227[3] = v255;
  v227[4] = v256;
  v227[0] = v252;
  v227[1] = v253;
  v228 = v188;
  v229 = v187;
  v230 = v186;
  v231 = v185;
  return sub_21BB3A4CC(&v224, &qword_27CDBA4B8, &qword_21BE43508);
}

uint64_t sub_21BD14B84(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44);
  v6 = *v5;
  v7 = *(v5 + 8);
  v11[16] = v6;
  v12 = v7;
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BD1613C(a1, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_21BD161A0(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  sub_21BD128C4(sub_21BD16B80, v9);
}

uint64_t sub_21BD14CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4E0, &qword_21BE43548);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA460, &qword_21BE43450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA450, &qword_21BE43448);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = (a1 + *(type metadata accessor for SharedFamilyGroceryIntroView() + 36));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v54) = v18;
  *(&v54 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v53 == 1)
  {
    sub_21BE26EEC();
    v20 = sub_21BE2833C();
    KeyPath = swift_getKeyPath();
    v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA470, &qword_21BE43458) + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v23 = &v9[*(v6 + 36)];
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v25 = *MEMORY[0x277CDF440];
    v26 = sub_21BE26E7C();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    sub_21BE2869C();
    sub_21BE2725C();
    sub_21BBB7D84(v9, v14, &qword_27CDBA460, &qword_21BE43450);
    v27 = &v14[*(v10 + 36)];
    v28 = v59;
    *(v27 + 4) = v58;
    *(v27 + 5) = v28;
    *(v27 + 6) = v60;
    v29 = v55;
    *v27 = v54;
    *(v27 + 1) = v29;
    v30 = v57;
    *(v27 + 2) = v56;
    *(v27 + 3) = v30;
    sub_21BBB7D84(v14, v16, &qword_27CDBA450, &qword_21BE43448);
    sub_21BBA3854(v16, v5, &qword_27CDBA450, &qword_21BE43448);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BD162D8();
    sub_21BCA16C0();
    sub_21BE2784C();
    return sub_21BB3A4CC(v16, &qword_27CDBA450, &qword_21BE43448);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_21BE2599C();
    v36 = v35;

    *&v54 = v34;
    *(&v54 + 1) = v36;
    sub_21BB41FA4();
    v37 = sub_21BE27DBC();
    v39 = v38;
    LOBYTE(v36) = v40;
    v41 = sub_21BE27D8C();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_21BBC7C7C(v37, v39, v36 & 1);

    sub_21BE2869C();
    sub_21BE2725C();
    v53 = v45 & 1;
    *v5 = v41;
    *(v5 + 1) = v43;
    v5[16] = v45 & 1;
    *(v5 + 3) = v47;
    v48 = v59;
    *(v5 + 6) = v58;
    *(v5 + 7) = v48;
    *(v5 + 8) = v60;
    v49 = v55;
    *(v5 + 2) = v54;
    *(v5 + 3) = v49;
    v50 = v57;
    *(v5 + 4) = v56;
    *(v5 + 5) = v50;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BD162D8();
    sub_21BCA16C0();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BD15224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v4 = type metadata accessor for SharedFamilyGroceryIntroView();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  sub_21BE28D7C();
  v3[12] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD15320, v7, v6);
}

uint64_t sub_21BD15320()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  sub_21BD1613C(v5, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21BD161A0(v2, v8 + v7);
  sub_21BD1613C(v5, v2);
  v9 = swift_allocObject();
  sub_21BD161A0(v2, v9 + v7);
  v10 = type metadata accessor for MessageComposeViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients] = MEMORY[0x277D84F90];
  v12 = &v11[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onDoneSharing];
  *v12 = sub_21BD167E8;
  v12[1] = v8;
  v13 = &v11[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onCancel];
  *v13 = sub_21BD1684C;
  v13[1] = v9;
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  v14 = objc_msgSendSuper2((v0 + 16), sel_initWithNibName_bundle_, 0, 0);
  *(v0 + 32) = *(v5 + *(v6 + 44));
  *(v0 + 48) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA418, &qword_21BE43418);
  sub_21BE2840C();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BD154D4()
{
  v0 = sub_21BE26F5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD1269C();
  sub_21BD11124(v4);
  sub_21BE26F4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BD155A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_21BE278CC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_21BE2789C();
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  sub_21BE26EDC();
  v15 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  MEMORY[0x21CF02AD0](v9, v5, v15);
  (*(v6 + 8))(v9, v5);
  v18[6] = v5;
  v18[7] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF02AD0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21BD15864(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_21BD1613C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21BD161A0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21BB41FA4();
  return sub_21BE2845C();
}

uint64_t sub_21BD15A00(uint64_t a1)
{
  v19 = sub_21BE2754C();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_21BE26F5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBA3854(a1, v9, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_21BE26F4C();
  return (*(v11 + 8))(v14, v10);
}

double sub_21BD15C7C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SharedFamilyGroceryIntroView();
  *(a1 + v2[5]) = 0x4043000000000000;
  v3 = v2[6];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v4 = (a1 + v3);
  type metadata accessor for FamilyCircleStore(0);
  sub_21BD165E4(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);

  *v4 = sub_21BE270CC();
  v4[1] = v5;
  v6 = v2[7];
  *(a1 + v6) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v7 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA388, &qword_21BE432A8);
  sub_21BE283EC();
  *(a1 + v7) = v12;
  v8 = a1 + v2[9];
  sub_21BE283EC();
  *v8 = v12;
  *(v8 + 1) = *(&v12 + 1);
  v9 = a1 + v2[10];
  sub_21BE283EC();
  *v9 = v12;
  *(v9 + 1) = *(&v12 + 1);
  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA390, qword_21BE432B0);
  sub_21BE283EC();
  result = *&v12;
  *(a1 + v10) = v12;
  return result;
}

uint64_t type metadata accessor for SharedFamilyGroceryIntroView()
{
  result = qword_27CDBA398;
  if (!qword_27CDBA398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD15EFC()
{
  sub_21BB40410();
  if (v0 <= 0x3F)
  {
    sub_21BD16028();
    if (v1 <= 0x3F)
    {
      sub_21BB3A2A4(319, &qword_27CDBA3A8, 0x277D44850);
      if (v2 <= 0x3F)
      {
        sub_21BD160BC(319, &qword_27CDBA3B0, &qword_27CDBA388, &qword_21BE432A8);
        if (v3 <= 0x3F)
        {
          sub_21BB403C0();
          if (v4 <= 0x3F)
          {
            sub_21BD160BC(319, &qword_27CDBA3B8, &qword_27CDBA390, qword_21BE432B0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21BD16028()
{
  if (!qword_27CDB9970)
  {
    type metadata accessor for FamilyCircleStore(255);
    sub_21BD165E4(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB9970);
    }
  }
}

void sub_21BD160BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21BE2842C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21BD1613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedFamilyGroceryIntroView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD161A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedFamilyGroceryIntroView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD1624C()
{
  result = qword_27CDBA440;
  if (!qword_27CDBA440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA438, &qword_21BE43440);
    sub_21BD162D8();
    sub_21BCA16C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA440);
  }

  return result;
}

unint64_t sub_21BD162D8()
{
  result = qword_27CDBA448;
  if (!qword_27CDBA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA450, &qword_21BE43448);
    sub_21BD16364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA448);
  }

  return result;
}

unint64_t sub_21BD16364()
{
  result = qword_27CDBA458;
  if (!qword_27CDBA458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA460, &qword_21BE43450);
    sub_21BD1641C();
    sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA458);
  }

  return result;
}

unint64_t sub_21BD1641C()
{
  result = qword_27CDBA468;
  if (!qword_27CDBA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA470, &qword_21BE43458);
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA468);
  }

  return result;
}

unint64_t sub_21BD16500()
{
  result = qword_27CDBA478;
  if (!qword_27CDBA478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA430, &qword_21BE43438);
    sub_21BB3B038(&qword_27CDBA480, &qword_27CDBA488, &qword_21BE43490);
    sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA478);
  }

  return result;
}

uint64_t sub_21BD165E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD1662C()
{
  v2 = *(type metadata accessor for SharedFamilyGroceryIntroView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD15224(v4, v5, v0 + v3);
}

unint64_t sub_21BD16708()
{
  result = qword_27CDBA4D0;
  if (!qword_27CDBA4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA4C8, &unk_21BE43520);
    sub_21BD16794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA4D0);
  }

  return result;
}

unint64_t sub_21BD16794()
{
  result = qword_27CDBC980;
  if (!qword_27CDBC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC980);
  }

  return result;
}

void sub_21BD167E8(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedFamilyGroceryIntroView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_21BD11A28(a1);
}

uint64_t sub_21BD16864(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharedFamilyGroceryIntroView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BD168D8(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedFamilyGroceryIntroView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BD11EB0(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + v1[6] + 8);

  v8 = v4 + v1[8];
  v9 = *(v8 + 1);

  v10 = *(v4 + v1[9] + 8);

  v11 = *(v4 + v1[10] + 8);

  v12 = v4 + v1[11];

  v13 = *(v12 + 1);

  return swift_deallocObject();
}

uint64_t sub_21BD16B80(void *a1, char a2)
{
  v5 = *(type metadata accessor for SharedFamilyGroceryIntroView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BD5EDB8(a1, a2 & 1, v6);
}

uint64_t sub_21BD16C00()
{
  v1 = *(type metadata accessor for SharedFamilyGroceryIntroView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_21BD12D24(v0 + v2, v4, v5);
}

unint64_t sub_21BD16CF4()
{
  result = qword_27CDBA4E8;
  if (!qword_27CDBA4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3F0, &qword_21BE43390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3C0, &qword_21BE43340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    sub_21BB3B038(&qword_27CDBA3E8, &qword_27CDBA3C0, &qword_21BE43340);
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDB8CF8, &qword_27CDB8D00, &qword_21BE3DC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA4E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemberDetailsSiwaCell(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MemberDetailsSiwaCell(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BD17018@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA500, &unk_21BE436A8);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = (&v41 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820);
  v7 = *(*(v42 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v42);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA508, &unk_21BE436B8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v48 = sub_21BE2771C();
  v18 = 1;
  v63 = 1;
  sub_21BD17750(a1 & 1, &v52);
  v67 = *&v53[16];
  v68 = *&v53[32];
  v69 = *&v53[48];
  v70 = v53[64];
  v65 = v52;
  v66 = *v53;
  v72 = v53[64];
  v71[2] = *&v53[16];
  v71[3] = *&v53[32];
  v71[4] = *&v53[48];
  v71[0] = v52;
  v71[1] = *v53;
  sub_21BBA3854(&v65, v50, &qword_27CDB9FB8, &qword_21BE425A0);
  sub_21BB3A4CC(v71, &qword_27CDB9FB8, &qword_21BE425A0);
  *&v62[39] = v67;
  *&v62[55] = v68;
  *&v62[71] = v69;
  v62[87] = v70;
  *&v62[7] = v65;
  *&v62[23] = v66;
  v45 = v63;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v64[6] + 7) = *&v64[21];
  *(&v64[8] + 7) = *&v64[23];
  *(&v64[10] + 7) = *&v64[25];
  *(&v64[12] + 7) = *&v64[27];
  *(v64 + 7) = *&v64[15];
  *(&v64[2] + 7) = *&v64[17];
  *(&v64[4] + 7) = *&v64[19];
  if ((a1 & 0x100) != 0)
  {
    sub_21BE26EEC();
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v19 = &v11[*(v42 + 36)];
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v21 = *MEMORY[0x277CDF438];
    v22 = sub_21BE26E7C();
    (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
    *v19 = swift_getKeyPath();
    v23 = v44;
    sub_21BBA3854(v11, v44, &qword_27CDB5E00, &unk_21BE33820);
    v24 = v43;
    *v43 = 0;
    *(v24 + 8) = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA520, &qword_21BE43708);
    sub_21BBA3854(v23, v24 + *(v25 + 48), &qword_27CDB5E00, &unk_21BE33820);
    sub_21BB3A4CC(v11, &qword_27CDB5E00, &unk_21BE33820);
    sub_21BB3A4CC(v23, &qword_27CDB5E00, &unk_21BE33820);
    sub_21BD17B58(v24, v17);
    v18 = 0;
  }

  (*(v46 + 56))(v17, v18, 1, v47);
  v26 = v49;
  sub_21BBA3854(v17, v49, &qword_27CDBA508, &unk_21BE436B8);
  *a2 = 5;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D86A18;
  *(a2 + 24) = &unk_282D86A48;
  *(a2 + 32) = 0;
  v27 = v48;
  v50[0] = v48;
  v50[1] = 0;
  v28 = v45;
  LOBYTE(v51[0]) = v45;
  *(&v51[2] + 1) = *&v62[32];
  *(&v51[3] + 1) = *&v62[48];
  *(&v51[4] + 1) = *&v62[64];
  *(&v51[5] + 1) = *&v62[80];
  *(v51 + 1) = *v62;
  *(&v51[1] + 1) = *&v62[16];
  *(&v51[8] + 9) = *&v64[6];
  *(&v51[7] + 9) = *&v64[4];
  *(&v51[6] + 9) = *&v64[2];
  *(&v51[5] + 9) = *v64;
  *(&v51[12] + 1) = *(&v64[13] + 7);
  *(&v51[11] + 9) = *&v64[12];
  *(&v51[10] + 9) = *&v64[10];
  *(&v51[9] + 9) = *&v64[8];
  v29 = v48;
  *(a2 + 56) = v51[0];
  *(a2 + 40) = v29;
  v30 = v51[1];
  v31 = v51[2];
  v32 = v51[3];
  *(a2 + 120) = v51[4];
  *(a2 + 104) = v32;
  *(a2 + 88) = v31;
  *(a2 + 72) = v30;
  v33 = v51[5];
  v34 = v51[6];
  v35 = v51[7];
  *(a2 + 184) = v51[8];
  *(a2 + 168) = v35;
  *(a2 + 152) = v34;
  *(a2 + 136) = v33;
  v36 = v51[9];
  v37 = v51[10];
  v38 = v51[11];
  *(a2 + 248) = v51[12];
  *(a2 + 232) = v38;
  *(a2 + 216) = v37;
  *(a2 + 200) = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA510, &qword_21BE436C8);
  sub_21BBA3854(v26, a2 + *(v39 + 64), &qword_27CDBA508, &unk_21BE436B8);

  sub_21BBA3854(v50, &v52, &qword_27CDBA518, &qword_21BE436D0);
  sub_21BB3A4CC(v17, &qword_27CDBA508, &unk_21BE436B8);
  sub_21BB3A4CC(v26, &qword_27CDBA508, &unk_21BE436B8);
  v52 = v27;
  v53[0] = v28;
  *&v53[33] = *&v62[32];
  *&v53[49] = *&v62[48];
  *&v53[65] = *&v62[64];
  v54 = *&v62[80];
  *&v53[1] = *v62;
  *&v53[17] = *&v62[16];
  v58 = *&v64[6];
  v57 = *&v64[4];
  v56 = *&v64[2];
  v55 = *v64;
  *&v61[15] = *(&v64[13] + 7);
  *v61 = *&v64[12];
  v60 = *&v64[10];
  v59 = *&v64[8];
  sub_21BB3A4CC(&v52, &qword_27CDBA518, &qword_21BE436D0);
}