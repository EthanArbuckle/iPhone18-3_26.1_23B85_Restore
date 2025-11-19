uint64_t sub_24A00E450(unint64_t a1)
{
  v103[7] = *MEMORY[0x277D85DE8];
  if (qword_2810DA9A0 != -1)
  {
    goto LABEL_146;
  }

  while (1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = COERCE_DOUBLE(sub_24A020C40(MEMORY[0x277D84F90]));
    v4 = COERCE_DOUBLE(sub_24A020D3C(v2));
    v93 = *(a1 + 16);
    if (!v93)
    {
      break;
    }

    v5 = 0;
    v89 = a1 + 32;
    v96 = vdupq_n_s64(0x4059000000000000uLL);
    while (1)
    {
      v6 = v89 + 24 * v5;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      *&v101 = *v6;
      *(&v101 + 1) = v7;
      v102 = v8;
      *&v91 = v101;
      *(&v91 + 1) = v7;
      v92 = v8;
      sub_249FE4E60(v101, v7, v8);
      v9 = sub_24A0013F4(&v101, 2u);
      if (v9 >> 62)
      {
        a1 = v9;
        v11 = sub_24A021A98();
        v9 = a1;
        if (!v11)
        {
LABEL_12:

          a1 = 0;
          goto LABEL_13;
        }
      }

      else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C20C690](0);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v10 = *(v9 + 32);
      }

      a1 = v10;

LABEL_13:
      v103[4] = a1;
      v101 = v91;
      v102 = v92;
      v12 = sub_24A0013F4(&v101, 0);
      if (v12 >> 62)
      {
        a1 = v12;
        v15 = sub_24A021A98();
        v12 = a1;
        if (!v15)
        {
LABEL_20:

          v14 = 0;
          goto LABEL_21;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        a1 = v12;
        v13 = MEMORY[0x24C20C690](0);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        a1 = v12;
        v13 = *(v12 + 32);
      }

      v14 = v13;

LABEL_21:
      v103[5] = v14;
      v101 = v91;
      v102 = v92;
      v16 = sub_24A0013F4(&v101, 1u);
      if (v16 >> 62)
      {
        a1 = v16;
        v19 = sub_24A021A98();
        v16 = a1;
        if (!v19)
        {
LABEL_28:

          v18 = 0;
          goto LABEL_29;
        }
      }

      else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C20C690](0);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

LABEL_29:
      v20 = 0;
      v21 = v5 + 1;
      v103[6] = v18;
      a1 = MEMORY[0x277D84F90];
      *&v101 = MEMORY[0x277D84F90];
LABEL_30:
      v22 = 3;
      if (v20 > 3)
      {
        v22 = v20;
      }

      while (v20 != 3)
      {
        if (v22 == v20)
        {
          __break(1u);
          goto LABEL_125;
        }

        v23 = v103[v20++ + 4];
        if (v23)
        {
          v24 = v23;
          MEMORY[0x24C20C470]();
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24A021808();
          }

          sub_24A021828();
          a1 = v101;
          goto LABEL_30;
        }
      }

      v90 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2E750);
      swift_arrayDestroy();
      *&v101 = MEMORY[0x277D84F90];
      v100 = MEMORY[0x277D84FA0];
      if (a1 >> 62)
      {
        break;
      }

      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_60:
      v95 = MEMORY[0x277D84F90];
LABEL_61:

      v40 = v95;
      if (v95 >> 62)
      {
        v41 = sub_24A021A98();
        if (!v41)
        {
          goto LABEL_4;
        }

LABEL_63:
        v42 = 0;
        v94 = v41;
        while (2)
        {
          if ((v95 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x24C20C690](v42, v40);
          }

          else
          {
            if (v42 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_136;
            }

            v43 = *(v40 + 8 * v42 + 32);
          }

          v44 = v43;
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_129;
          }

          v98 = 0.0;
          v99 = 0.0;
          v97 = 0.0;
          [v43 getHue:&v99 saturation:&v97 brightness:&v98 alpha:0];
          v46.f64[0] = v98;
          v46.f64[1] = v97;
          v47 = vmulq_f64(vrndaq_f64(vmulq_f64(v46, v96)), xmmword_24A0276A0);
          v48 = round(v99 * 100.0) + v47.f64[0] + v47.f64[1];
          if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_130;
          }

          if (v48 <= -9.22337204e18)
          {
            goto LABEL_131;
          }

          if (v48 >= 9.22337204e18)
          {
            goto LABEL_132;
          }

          a1 = v48;
          if (*(*&v3 + 16))
          {
            sub_24A004B1C(v48);
            if (v49)
            {
              v50 = *(*&v4 + 16);
              if (v50)
              {
                v51 = sub_24A004B1C(a1);
                if (v52)
                {
                  v50 = *(*(*&v4 + 56) + 8 * v51);
                }

                else
                {
                  v50 = 0;
                }
              }

              v76 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                goto LABEL_139;
              }

              if (v50 + 0x4000000000000001 < 0)
              {
                goto LABEL_140;
              }

              if (v93 <= 2 * v76)
              {
                sub_249FE4EC4(v91, *(&v91 + 1), v92);

                return v44;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v99 = v4;
              v78 = sub_24A004B1C(a1);
              v80 = *(*&v4 + 16);
              v81 = (v79 & 1) == 0;
              v29 = __OFADD__(v80, v81);
              v82 = v80 + v81;
              if (v29)
              {
                goto LABEL_141;
              }

              v83 = v79;
              if (*(*&v4 + 24) >= v82)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v87 = v78;
                  sub_249FFAF10();
                  v78 = v87;
                }
              }

              else
              {
                sub_249FF9F1C(v82, isUniquelyReferenced_nonNull_native);
                v78 = sub_24A004B1C(a1);
                if ((v83 & 1) != (v84 & 1))
                {
LABEL_147:
                  result = sub_24A021C88();
                  __break(1u);
                  return result;
                }
              }

              v40 = v95;
              v4 = v99;
              if (v83)
              {
                *(*(*&v99 + 56) + 8 * v78) = v76;
LABEL_65:

LABEL_66:
                ++v42;
                if (v45 == v94)
                {
                  goto LABEL_4;
                }

                continue;
              }

              *(*&v99 + 8 * (v78 >> 6) + 64) |= 1 << v78;
              *(*(*&v4 + 48) + 8 * v78) = a1;
              *(*(*&v4 + 56) + 8 * v78) = v76;

              v85 = *(*&v4 + 16);
              v29 = __OFADD__(v85, 1);
              v75 = v85 + 1;
              if (v29)
              {
                goto LABEL_142;
              }

LABEL_111:
              *(*&v4 + 16) = v75;
              goto LABEL_66;
            }
          }

          break;
        }

        v44 = v44;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v3;
        v55 = sub_24A004B1C(a1);
        v56 = *(*&v3 + 16);
        v57 = (v54 & 1) == 0;
        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          goto LABEL_133;
        }

        v59 = v54;
        if (*(*&v3 + 24) >= v58)
        {
          if (v53)
          {
            v3 = v99;
            if ((v54 & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          else
          {
            sub_249FFADB4();
            v3 = v99;
            if ((v59 & 1) == 0)
            {
              goto LABEL_84;
            }
          }
        }

        else
        {
          sub_249FF9CB4(v58, v53);
          v60 = sub_24A004B1C(a1);
          if ((v59 & 1) != (v61 & 1))
          {
            goto LABEL_147;
          }

          v55 = v60;
          v3 = v99;
          if ((v59 & 1) == 0)
          {
LABEL_84:
            *(*&v3 + 8 * (v55 >> 6) + 64) |= 1 << v55;
            *(*(*&v3 + 48) + 8 * v55) = a1;
            *(*(*&v3 + 56) + 8 * v55) = v44;
            v62 = *(*&v3 + 16);
            v29 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v29)
            {
              goto LABEL_137;
            }

            *(*&v3 + 16) = v63;
LABEL_89:
            v66 = swift_isUniquelyReferenced_nonNull_native();
            v99 = v4;
            v67 = sub_24A004B1C(a1);
            v69 = *(*&v4 + 16);
            v70 = (v68 & 1) == 0;
            v29 = __OFADD__(v69, v70);
            v71 = v69 + v70;
            v40 = v95;
            if (v29)
            {
              goto LABEL_134;
            }

            v72 = v68;
            if (*(*&v4 + 24) >= v71)
            {
              if (v66)
              {
                goto LABEL_94;
              }

              v86 = v67;
              sub_249FFAF10();
              v67 = v86;
              v4 = v99;
              if ((v72 & 1) == 0)
              {
LABEL_95:
                *(*&v4 + 8 * (v67 >> 6) + 64) |= 1 << v67;
                *(*(*&v4 + 48) + 8 * v67) = a1;
                *(*(*&v4 + 56) + 8 * v67) = 1;

                v74 = *(*&v4 + 16);
                v29 = __OFADD__(v74, 1);
                v75 = v74 + 1;
                if (v29)
                {
                  goto LABEL_138;
                }

                goto LABEL_111;
              }
            }

            else
            {
              sub_249FF9F1C(v71, v66);
              v67 = sub_24A004B1C(a1);
              if ((v72 & 1) != (v73 & 1))
              {
                goto LABEL_147;
              }

LABEL_94:
              v4 = v99;
              if ((v72 & 1) == 0)
              {
                goto LABEL_95;
              }
            }

            *(*(*&v4 + 56) + 8 * v67) = 1;
            goto LABEL_65;
          }
        }

        v64 = *(*&v3 + 56);
        v65 = *(v64 + 8 * v55);
        *(v64 + 8 * v55) = v44;

        goto LABEL_89;
      }

      v41 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_63;
      }

LABEL_4:
      sub_249FE4EC4(v91, *(&v91 + 1), v92);

      v5 = v90;
      if (v90 == v93)
      {
        goto LABEL_121;
      }
    }

    v25 = sub_24A021A98();
    if (!v25)
    {
      goto LABEL_60;
    }

LABEL_40:
    v26 = 0;
    v95 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x24C20C690](v26, a1);
      }

      else
      {
        if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v27 = *(a1 + 32 + 8 * v26);
      }

      v28 = v27;
      v29 = __OFADD__(v26++, 1);
      if (v29)
      {
        break;
      }

      v98 = 0.0;
      v99 = 0.0;
      v97 = 0.0;
      [v27 getHue:&v99 saturation:&v97 brightness:&v98 alpha:0];
      v30.f64[0] = v98;
      v30.f64[1] = v97;
      v31 = vmulq_f64(vrndaq_f64(vmulq_f64(v30, v96)), xmmword_24A0276A0);
      v32 = round(v99 * 100.0) + v31.f64[0] + v31.f64[1];
      if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_126;
      }

      if (v32 <= -9.22337204e18)
      {
        goto LABEL_127;
      }

      if (v32 >= 9.22337204e18)
      {
        goto LABEL_128;
      }

      v33 = v32;
      v34 = v100;
      if (*(v100 + 16) && (v35 = sub_24A021CA8(), v36 = -1 << *(v34 + 32), v37 = v35 & ~v36, ((*(v34 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        while (*(*(v34 + 48) + 8 * v37) != v33)
        {
          v37 = (v37 + 1) & v38;
          if (((*(v34 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        if (v26 == v25)
        {
          goto LABEL_61;
        }
      }

      else
      {
LABEL_55:
        v39 = v28;
        MEMORY[0x24C20C470]();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A021808();
        }

        sub_24A021828();
        v95 = v101;
        sub_24A001A90(&v99, v33);

        if (v26 == v25)
        {
          goto LABEL_61;
        }
      }
    }

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
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
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
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    swift_once();
  }

LABEL_121:

  return 0;
}

uint64_t _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(unint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (qword_2810DA9A0 != -1)
  {
    swift_once();
  }

  v2 = qword_2810DDD28;
  v3 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_dominantColors;
  swift_beginAccess();
  if (!*(*(v2 + v3) + 16))
  {
    goto LABEL_16;
  }

  v5 = sub_24A00DCCC(v4);

  if (*(v5 + 16) == 1)
  {
    sub_24A00CDDC(v5, &aBlock);

    v6 = v23;
    if (v23 != 255)
    {
      v7 = aBlock;
      LOBYTE(v23) = v23 & 1;
      v8 = sub_24A00DD78(&aBlock);
      if (!v8)
      {
        if (qword_27EF2DE50 != -1)
        {
          swift_once();
        }

        v8 = qword_27EF30990;
      }

      v9 = v8;
      sub_24A00F38C(v7, *(&v7 + 1), v6);
      return v9;
    }
  }

  else
  {
  }

  if (sub_24A00DEF4(a1))
  {
    result = sub_24A00E450(a1);
    if (result)
    {
      return result;
    }

LABEL_16:
    type metadata accessor for ImageUtil();
    v11 = sub_24A00D2E4(a1);
    v12 = [objc_allocWithZone(EMP_TSDImageColorAnalyzer) initWithImage_];
    v24 = sub_24A00DBAC;
    v25 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_24A001854;
    *(&v23 + 1) = &block_descriptor_8;
    v13 = _Block_copy(&aBlock);
    [v12 filterInterestingColorsUsingBlock_];
    _Block_release(v13);
    v14 = [v12 interestingColors];
    v15 = [v14 firstObject];

    if (v15)
    {
      sub_24A021948();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    aBlock = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_249FECDC0(0, &qword_2810D9B48);
      if (swift_dynamicCast())
      {
        v18 = v19;
LABEL_29:

        return v18;
      }
    }

    else
    {
      sub_249FECCF8(&aBlock, &qword_27EF2E440);
    }

    if (qword_27EF2DE50 != -1)
    {
      swift_once();
    }

    v18 = qword_27EF30990;
    goto LABEL_29;
  }

  if (qword_27EF2DE50 != -1)
  {
    swift_once();
  }

  v16 = qword_27EF30990;
  v17 = qword_27EF30990;
  return v16;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A00F38C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_249FE4EC4(result, a2, a3 & 1);
  }

  return result;
}

id sub_24A00F3B8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E738);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A0246F0;
    v10 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v11 = objc_opt_self();
    sub_249FE4E60(v2, v1, 0);
    v12 = v10;
    *(inited + 40) = [v11 systemFontOfSize_];
    v13 = sub_24A020E18(inited);
    swift_setDeallocating();
    sub_249FECCF8(inited + 32, &qword_27EF2E740);
    v14 = sub_24A021658();
    sub_24A00CEE4(v13);
    type metadata accessor for Key(0);
    sub_249FEA2C4();
    v15 = sub_24A021608();

    [v14 sizeWithAttributes_];
    v17 = v16;
    v19 = v18;

    v20 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v21 = swift_allocObject();
    v21[2] = 0.0;
    v21[3] = 0.0;
    v21[4] = v17;
    v21[5] = v19;
    *(v21 + 6) = v2;
    *(v21 + 7) = v1;
    *(v21 + 8) = v13;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24A00F734;
    *(v22 + 24) = v21;
    v24[4] = sub_24A00F7AC;
    v24[5] = v22;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_249FEA0AC;
    v24[3] = &block_descriptor_17;
    v23 = _Block_copy(v24);

    v6 = [v20 imageWithActions_];

    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
      return result;
    }

    return v6;
  }

  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_24A021468();
  v5 = [v3 initWithData_];

  if (v5)
  {
    v6 = [v5 imageByPreparingThumbnailOfSize_];

    if (v6)
    {
      return v6;
    }
  }

  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v7 init];
}

unint64_t sub_24A00F748()
{
  result = qword_2810DA9D0;
  if (!qword_2810DA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9D0);
  }

  return result;
}

uint64_t sub_24A00F7B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_24A00FA58()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField);
  }

  else
  {
    if (_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0())
    {
      ObjCClassFromMetadata = MEMORY[0x277D75C40];
    }

    else
    {
      type metadata accessor for NoKeyboardTextView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    v5 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_24A00FAE0()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC;
  v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC);
  }

  else
  {
    v4 = [objc_opt_self() createKeyboardViewController];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_24A00FBAC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A00FC18(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_249FF514C;
}

id EmojiEditingInputViewController.init(emoji:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_navBar;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75780]) init];
  sub_24A021528();
  *&v1[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField] = 0;
  v4 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emojiCountLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emoji] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmojiEditingInputViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t type metadata accessor for EmojiEditingInputViewController()
{
  result = qword_27EF2E808;
  if (!qword_27EF2E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24A00FE78()
{
  v0 = objc_opt_self();
  [v0 releaseSharedInstance];

  return [v0 purgeImageCache];
}

double sub_24A00FECC(uint64_t a1)
{
  v3 = _s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0();
  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v3)
  {
    result = 88.0;
    if (v5 != 1)
    {
      return 22.0;
    }
  }

  else
  {
    if (v5 == 1)
    {
      a1 = 4;
    }

    [objc_opt_self() keyboardSizeForOrientation_];
    return v7 + 44.0 + 22.0;
  }

  return result;
}

void sub_24A00FF80()
{
  v169.receiver = v0;
  v169.super_class = type metadata accessor for EmojiEditingInputViewController();
  objc_msgSendSuper2(&v169, sel_viewDidLoad);
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v5 = v4;
  v168 = v3;
  [v4 addSubview_];

  v6 = [v0 navigationItem];
  [v6 em:1 setBackgroundHidden:?];
  v7 = *&v0[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emojiCountLabel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setTextAlignment_];
  v166 = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v6 setLeftBarButtonItem_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E208);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A0276E0;
  v10 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v11 = v0;
  *(v9 + 32) = [v10 initWithBarButtonSystemItem:24 target:v11 action:sel_didTapCloseButton];
  v12 = [v11 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  v167 = v13;
  if (v13 == 1)
  {
    v14 = sub_24A021658();
    v15 = [objc_opt_self() systemImageNamed_];

    v16 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v15 style:0 target:v11 action:sel_didTapDeleteButton];
    v17 = [objc_opt_self() labelColor];
    [v16 setTintColor_];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A0276E0;
    *(inited + 32) = v16;
    sub_24A0113E0(inited, sub_249FF3CC8, sub_24A013304);
  }

  else
  {
  }

  sub_249FECDC0(0, &qword_27EF2E780);
  v19 = sub_24A0217C8();
  [v6 setRightBarButtonItems_];

  v20 = *&v11[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_navBar];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A0276E0;
  *(v21 + 32) = v6;
  sub_249FECDC0(0, &qword_27EF2E788);
  v165 = v6;
  v22 = sub_24A0217C8();

  [v20 setItems:v22 animated:0];

  v23 = [v11 view];
  if (!v23)
  {
    goto LABEL_62;
  }

  v24 = v23;
  [v23 addSubview_];

  v25 = sub_24A00FA58();
  v26 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emoji;

  v28 = Array<A>.attributedText.getter(v27);

  [v25 setAttributedText_];

  v29 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField;
  v30 = *&v11[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField];
  v31 = objc_opt_self();
  v32 = *MEMORY[0x277D76918];
  v33 = v30;
  v34 = [v31 preferredFontDescriptorWithTextStyle_];
  v35 = [objc_opt_self() fontWithDescriptor:v34 size:32.0];

  [v33 setFont_];
  v36 = *&v11[v29];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  [v38 setBackgroundColor_];

  [*&v11[v29] setTextAlignment_];
  [*&v11[v29] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v11[v29] setKeyboardType_];
  [*&v11[v29] setDelegate_];
  if (_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0())
  {
    [*&v11[v29] setForceDisableDictation_];
    if (v167 != 1)
    {
      [*&v11[v29] setKeyboardAppearance_];
    }
  }

  if (_s11EmojiPoster8FeaturesV14genmojiEnabledSbvgZ_0())
  {
    [*&v11[v29] setSupportsAdaptiveImageGlyph_];
  }

  v40 = [v11 view];
  if (!v40)
  {
    goto LABEL_63;
  }

  v41 = v40;
  [v40 addSubview_];

  if ((_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0() & 1) == 0)
  {
    v42 = [v11 view];
    if (!v42)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v43 = v42;
    v44 = sub_24A00FAE0();
    v45 = [v44 view];

    if (!v45)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    [v43 addSubview_];

    v46 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC;
    [v11 addChildViewController_];
    v47 = [*&v11[v46] view];
    if (!v47)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v48 = v47;
    [v47 setTranslatesAutoresizingMaskIntoConstraints_];

    [*&v11[v46] didMoveToParentViewController_];
    [*&v11[v46] setTextInputView_];
    v49 = [*&v11[v46] view];
    if (!v49)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v50 = v49;
    [v49 sizeToFit];
  }

  sub_24A011D4C(*(*&v11[v26] + 16));
  v51 = [*&v11[v29] font];
  if (v51)
  {
    v52 = v51;
    [v51 lineHeight];
    v54 = v53;

    v55 = v54 + 8.0;
  }

  else
  {
    v55 = 44.0;
  }

  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_24A0276F0;
  v57 = [v11 view];
  if (!v57)
  {
    goto LABEL_64;
  }

  v58 = v57;
  v59 = [v57 leadingAnchor];

  v60 = [v168 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v56 + 32) = v61;
  v62 = [v11 view];
  if (!v62)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = [v168 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v56 + 40) = v66;
  v67 = [v11 view];
  if (!v67)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v68 = v67;
  v69 = [v67 topAnchor];

  v70 = [v168 topAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v56 + 48) = v71;
  v72 = [v11 view];
  if (!v72)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v73 = v72;
  v74 = [v72 bottomAnchor];

  v75 = [v168 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v56 + 56) = v76;
  v77 = [v11 view];
  if (!v77)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v78 = v77;
  v79 = [v77 topAnchor];

  v80 = [v20 topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:-16.0];

  *(v56 + 64) = v81;
  v82 = [v20 heightAnchor];
  v83 = [v82 constraintEqualToConstant_];

  *(v56 + 72) = v83;
  v84 = [*&v11[v29] heightAnchor];
  v85 = [v84 constraintEqualToConstant_];

  *(v56 + 80) = v85;
  v86 = [v20 leadingAnchor];
  v87 = [v11 view];
  if (!v87)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v88 = v87;
  v89 = [v87 leadingAnchor];

  v90 = [v86 constraintEqualToAnchor_];
  *(v56 + 88) = v90;
  v91 = [v20 trailingAnchor];
  v92 = [v11 view];
  if (!v92)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v93 = v92;
  v94 = [v92 trailingAnchor];

  v95 = [v91 constraintEqualToAnchor_];
  *(v56 + 96) = v95;
  v96 = [v166 widthAnchor];
  v97 = [v96 constraintEqualToConstant_];

  *(v56 + 104) = v97;
  v98 = [*&v11[v29] leadingAnchor];
  v99 = [v11 view];
  if (!v99)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v100 = v99;
  v101 = [v99 leadingAnchor];

  v102 = [v98 constraintEqualToAnchor:v101 constant:60.0];
  *(v56 + 112) = v102;
  v103 = [*&v11[v29] &selRef_setShouldUpdateLayoutAutomatically_ + 4];
  v104 = [v11 view];
  if (!v104)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v105 = v104;
  v106 = [v104 &selRef_setShouldUpdateLayoutAutomatically_ + 4];

  v107 = -60.0;
  if (v167 == 1)
  {
    v107 = -110.0;
  }

  v108 = [v103 constraintEqualToAnchor:v106 constant:v107];

  *(v56 + 120) = v108;
  if (_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0())
  {
    if (v167 == 1)
    {
      v109 = swift_initStackObject();
      *(v109 + 16) = xmmword_24A0276E0;
      v110 = [v11 &selRef_textViewDidEndEditing_];
      v111 = v168;
      if (!v110)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v112 = v110;
      v113 = (v109 + 32);
      goto LABEL_46;
    }

    v109 = swift_initStackObject();
    *(v109 + 16) = xmmword_24A027710;
    v144 = [*&v11[v29] bottomAnchor];
    v145 = [v11 &selRef_textViewDidEndEditing_];
    v111 = v168;
    if (!v145)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v146 = v145;
    v147 = [v145 keyboardLayoutGuide];

    v148 = [v147 topAnchor];
    v149 = [v144 constraintEqualToAnchor_];

    *(v109 + 32) = v149;
    v150 = [v11 &selRef_textViewDidEndEditing_];
    if (!v150)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v112 = v150;
    v113 = (v109 + 40);
    v143 = -10.0;
    goto LABEL_52;
  }

  v114 = swift_initStackObject();
  *(v114 + 16) = xmmword_24A027700;
  v115 = sub_24A00FAE0();
  v116 = [v115 &selRef_textViewDidEndEditing_];

  if (!v116)
  {
    goto LABEL_77;
  }

  v117 = [v116 topAnchor];

  v118 = [*&v11[v29] bottomAnchor];
  v119 = [v117 constraintEqualToAnchor_];

  *(v114 + 32) = v119;
  v120 = [v11 &selRef_textViewDidEndEditing_];
  if (!v120)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v121 = v120;
  v122 = [v120 leadingAnchor];

  v123 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC;
  v124 = [*&v11[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC] &selRef_textViewDidEndEditing_];
  if (!v124)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v125 = v124;
  v126 = [v124 leadingAnchor];

  v127 = [v122 constraintEqualToAnchor_];
  *(v114 + 40) = v127;
  v128 = [v11 &selRef_textViewDidEndEditing_];
  if (!v128)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v129 = v128;
  v130 = [v128 trailingAnchor];

  v131 = [*&v11[v123] &selRef_textViewDidEndEditing_];
  if (!v131)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v132 = v131;
  v133 = [v131 trailingAnchor];

  v134 = [v130 constraintEqualToAnchor_];
  *(v114 + 48) = v134;
  sub_24A0113E0(v114, sub_249FF3CC8, sub_24A013150);
  if (v167 == 1)
  {
    v109 = swift_initStackObject();
    *(v109 + 16) = xmmword_24A027710;
    v135 = [v11 &selRef_textViewDidEndEditing_];
    v111 = v168;
    if (!v135)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v136 = v135;
    v137 = [v135 bottomAnchor];

    v138 = [*&v11[v123] &selRef_textViewDidEndEditing_];
    if (!v138)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v139 = v138;
    v140 = [v138 bottomAnchor];

    v141 = [v137 constraintEqualToAnchor:v140 constant:20.0];
    *(v109 + 32) = v141;
    v142 = [v11 &selRef_textViewDidEndEditing_];
    if (!v142)
    {
LABEL_90:
      __break(1u);
      return;
    }

    v112 = v142;
    v113 = (v109 + 40);
LABEL_46:
    v143 = -35.0;
    goto LABEL_52;
  }

  v109 = swift_initStackObject();
  *(v109 + 16) = xmmword_24A0276E0;
  v151 = [v11 &selRef_textViewDidEndEditing_];
  v111 = v168;
  if (!v151)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v112 = v151;
  v113 = (v109 + 32);
  v143 = -10.0;
LABEL_52:
  v152 = [v112 topAnchor];

  v153 = [*&v11[v29] topAnchor];
  v154 = [v152 constraintEqualToAnchor:v153 constant:v143];

  *v113 = v154;
  sub_24A0113E0(v109, sub_249FF3CC8, sub_24A013150);
  v155 = objc_opt_self();
  sub_249FECDC0(0, &qword_2810D9B80);
  v156 = sub_24A0217C8();
  [v155 activateConstraints_];

  if ((_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0() & 1) == 0)
  {
    v157 = [v11 &selRef_textViewDidEndEditing_];
    if (v157)
    {
      v158 = v157;
      v159 = sub_24A00FAE0();
      v160 = [v159 &selRef_textViewDidEndEditing_];

      if (v160)
      {

        [v158 bringSubviewToFront_];

        goto LABEL_57;
      }

      goto LABEL_83;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_57:
  v161 = &v11[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v162 = *(v161 + 1);
    ObjectType = swift_getObjectType();
    v164 = sub_24A00FECC(1);
    (*(v162 + 8))(ObjectType, v162, v164);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24A0113E0(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_24A021A98();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_24A021A98();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24A011528(char a1)
{
  v2 = v1;
  v4 = sub_24A0215A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A0215C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EmojiEditingInputViewController();
  v22.receiver = v2;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, sel_viewWillAppear_, a1 & 1);
  result = _s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0();
  if ((result & 1) == 0)
  {
    sub_249FECDC0(0, &unk_27EF2E5C0);
    v20 = sub_24A0218D8();
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    aBlock[4] = sub_24A0134CC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A00F7B0;
    aBlock[3] = &block_descriptor_9;
    v15 = _Block_copy(aBlock);
    v19 = v8;
    v16 = v15;
    v17 = v2;

    sub_24A0215B8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A0134EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5D0);
    sub_249FDE640(&qword_27EF2E7A0, &qword_27EF2E5D0);
    sub_24A021958();
    v18 = v20;
    MEMORY[0x24C20C5A0](0, v11, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v19);
  }

  return result;
}

uint64_t sub_24A011818(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = sub_24A00FECC(1);
    (*(v3 + 8))(ObjectType, v3, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A011908(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for EmojiEditingInputViewController();
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a1 & 1);
  if ((_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [v5 isKeyWindow];

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 window];

      [v9 makeKeyAndVisible];
LABEL_7:
      v10 = sub_24A00FA58();
      [v10 becomeFirstResponder];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24A011A80()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for EmojiEditingInputViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  result = _s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0();
  if (result)
  {
    v2 = &v0[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      v5 = sub_24A00FECC(1);
      (*(v3 + 8))(ObjectType, v3, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24A011C20(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emoji) = a1;

  v3 = sub_24A00FA58();
  v4 = Array<A>.attributedText.getter(a1);
  [v3 setAttributedText_];

  v5 = *(v1 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField);
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76918];
  v8 = v5;
  v9 = [v6 preferredFontDescriptorWithTextStyle_];
  v10 = [objc_opt_self() fontWithDescriptor:v9 size:32.0];

  [v8 setFont_];
}

void sub_24A011D4C(uint64_t a1)
{
  type metadata accessor for BackgroundViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_24A021418();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E148);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24A024720;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 6;
  sub_24A021668();

  v8 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v9 = sub_24A021658();

  v14 = [v8 initWithString_];

  v10 = *MEMORY[0x277D740C0];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  [v14 addAttribute:v10 value:v12 range:{0, 1}];

  v13 = [v11 grayColor];
  [v14 addAttribute:v10 value:v13 range:{1, 2}];

  [*(v1 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emojiCountLabel) setAttributedText_];
}

void sub_24A011FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_249FF7AE4(a1, v13);
  if (v13[3])
  {
    sub_249FECDC0(0, &qword_27EF2E820);
    if (swift_dynamicCast())
    {
      v7 = [v12 imageContent];
      v8 = sub_24A021478();
      v10 = v9;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13[0] = *a5;
      *a5 = 0x8000000000000000;
      sub_24A018BA0(v8, v10, 1, a2, isUniquelyReferenced_nonNull_native);
      *a5 = v13[0];
    }
  }

  else
  {
    sub_249FF7B54(v13);
  }
}

uint64_t sub_24A0120A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_249FF7BBC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_249FF7B54(v13);
}

void sub_24A0122E8()
{
  v1 = sub_24A00FA58();
  v16 = [v1 attributedText];

  if (v16)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    if ([v2 length] >= 1)
    {
      v3 = [v2 mutableString];
      v4 = [v2 length];
      if (__OFSUB__(v4, 1))
      {
        __break(1u);
        return;
      }

      v5 = [v3 rangeOfComposedCharacterSequenceAtIndex_];
      v7 = v6;

      [v2 deleteCharactersInRange_];
      v8 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField;
      [*(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField) setAttributedText_];
      v9 = *(v0 + v8);
      v10 = objc_opt_self();
      v11 = *MEMORY[0x277D76918];
      v12 = v9;
      v13 = [v10 preferredFontDescriptorWithTextStyle_];
      v14 = [objc_opt_self() fontWithDescriptor:v13 size:32.0];

      [v12 setFont_];
      v15 = *(v0 + v8);
      sub_24A013650();

      v2 = v15;
    }
  }
}

id EmojiEditingInputViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_24A01261C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24A012720(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A0134B8(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = sub_24A021C18();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 11;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          v13 = v11 - 3;
          v14 = *(v11 - 3);
          if (v14 >= *(v11 - 7))
          {
            break;
          }

          v16 = *(v11 - 7);
          v15 = *(v11 - 5);
          *(v11 - 32) = *v11;
          v11 -= 4;
          v17 = *(v11 + 1);
          *v13 = v16;
          v13[1] = v15;
          *(v11 - 3) = v14;
          *(v11 - 1) = v17;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 4;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E140);
      v7 = sub_24A021818();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_24A012884(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24A012884(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24A013034(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_24A012E38((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_117;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_118;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_119;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 4);
        ++v16;
        v14 += 4;
        if ((((v10 < v13) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 32 * v7 - 32;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v24 = (v23 + v11);
            v25 = (v23 + v18);
            v26 = *(v23 + v11);
            v27 = *(v23 + v11 + 16);
            v28 = *(v23 + v11 + 24);
            if (v11 != v18 || v24 >= v25 + 2)
            {
              v21 = v25[1];
              *v24 = *v25;
              v24[1] = v21;
            }

            v22 = v23 + v18;
            *v22 = v26;
            *(v22 + 16) = v27;
            *(v22 + 24) = v28;
          }

          ++v20;
          v18 -= 32;
          v11 += 32;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_249FFF310(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_249FFF310((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_60:
          if (v47)
          {
            goto LABEL_107;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_109;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_114;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v41 < 2)
        {
          goto LABEL_115;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_75:
        if (v65)
        {
          goto LABEL_111;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_24A012E38((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_104;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_105;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_106;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_108;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_110;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 + 24;
  v31 = v9 - v7;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 24);
    v35 = *(v33 - 24);
    if (v35 >= *(v33 - 56))
    {
LABEL_32:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v37 = *(v33 - 56);
    v36 = *(v33 - 40);
    *(v33 - 32) = *v33;
    v33 -= 32;
    v38 = *(v33 + 16);
    *v34 = v37;
    v34[1] = v36;
    *(v33 - 24) = v35;
    *(v33 - 16) = v38;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_24A012E38(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = v5 + 32;
      v23 = *(v21 - 4);
      v21 -= 32;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v25 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v25;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v15)
      {
        v24 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v24;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v26 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t (*sub_24A013048(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C20C690](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24A014304;
  }

  __break(1u);
  return result;
}

void (*sub_24A0130C8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C20C690](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24A013148;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A013150(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A021A98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24A021A98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_249FDE640(&unk_27EF2E840, &qword_27EF2E838);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E838);
            v9 = sub_24A013048(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_249FECDC0(0, &qword_2810D9B80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A013304(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A021A98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24A021A98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_249FDE640(&qword_27EF2E830, &qword_27EF2E828);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E828);
            v9 = sub_24A0130C8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_249FECDC0(0, &qword_27EF2E780);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A0134EC()
{
  result = qword_27EF2E790;
  if (!qword_27EF2E790)
  {
    sub_24A0215A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E790);
  }

  return result;
}

void sub_24A013544()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_navBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75780]) init];
  sub_24A021528();
  *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField) = 0;
  v2 = OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emojiCountLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___keyboardVC) = 0;
  *(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A021A88();
  __break(1u);
}

uint64_t sub_24A013650()
{
  v67 = sub_24A02103C(MEMORY[0x277D84F90]);
  v1 = sub_24A00FA58();
  v2 = [v1 attributedText];

  if (v2)
  {
    v3 = *MEMORY[0x277D74058];
    v4 = [v2 length];
    v5 = swift_allocObject();
    *(v5 + 16) = &v67;
    v6 = swift_allocObject();
    v64 = sub_24A0142D0;
    v6[2] = sub_24A0142D0;
    v6[3] = v5;
    aBlock[4] = sub_24A0142D8;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A0120A8;
    aBlock[3] = &block_descriptor_22;
    v7 = _Block_copy(aBlock);

    [v2 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0, v7}];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v64 = 0;
LABEL_5:
  v9 = [*(v0 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController____lazy_storage___textField) text];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24A021698();

    v12 = String.emojiDictionary()();

    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v65 = v12;

    v18 = 0;
    while (1)
    {
      if (!v16)
      {
        while (1)
        {
          v23 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v23 >= v17)
          {

            goto LABEL_27;
          }

          v16 = *(v13 + 8 * v23);
          ++v18;
          if (v16)
          {
            v18 = v23;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        sub_24A021C88();
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_16:
      v24 = (v18 << 10) | (16 * __clz(__rbit64(v16)));
      v25 = *(*(v65 + 48) + v24);
      v26 = *(v65 + 56) + v24;
      v11 = *v26;
      v27 = *(v26 + 8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v67;
      aBlock[0] = v67;
      v67 = 0x8000000000000000;
      v30 = sub_24A004B1C(v25);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_47;
      }

      v36 = v31;
      if (v29[3] < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v42 = v30;
      sub_249FFB1C4();
      v30 = v42;
      v38 = aBlock[0];
      if (v36)
      {
LABEL_9:
        v19 = v38[7] + 24 * v30;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *v19 = v11;
        *(v19 + 8) = v27;
        *(v19 + 16) = 0;
        sub_249FE4EC4(v20, v21, v22);
        goto LABEL_10;
      }

LABEL_22:
      v38[(v30 >> 6) + 8] |= 1 << v30;
      *(v38[6] + 8 * v30) = v25;
      v39 = v38[7] + 24 * v30;
      *v39 = v11;
      *(v39 + 8) = v27;
      *(v39 + 16) = 0;
      v40 = v38[2];
      v34 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v34)
      {
        goto LABEL_48;
      }

      v38[2] = v41;
LABEL_10:
      v16 &= v16 - 1;
      v67 = v38;
    }

    sub_249FFA3F0(v35, isUniquelyReferenced_nonNull_native);
    v30 = sub_24A004B1C(v25);
    if ((v36 & 1) != (v37 & 1))
    {
      goto LABEL_50;
    }

LABEL_21:
    v38 = aBlock[0];
    if (v36)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_27:
  v43 = v67;
  v44 = v67[2];
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v11 = sub_24A0018AC(v67[2], 0);
    v46 = sub_24A005C1C(aBlock, v11 + 32, v44, v43);
    swift_bridgeObjectRetain_n();
    sub_24A0062F0();
    if (v46 != v44)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v11;
  sub_24A012720(aBlock);
  v47 = aBlock[0];
  v48 = aBlock[0][2];
  if (v48 >= 6)
  {
    v49 = 6;
  }

  else
  {
    v49 = aBlock[0][2];
  }

  if (v48)
  {
    aBlock[0] = v45;
    sub_249FDCC00(0, v49, 0);
    v50 = aBlock[0];
    v51 = (v47 + 7);
    do
    {
      v52 = *(v51 - 2);
      v53 = *(v51 - 1);
      v54 = *v51;
      sub_249FE4E60(v52, v53, *v51);
      aBlock[0] = v50;
      v56 = v50[2];
      v55 = v50[3];
      if (v56 >= v55 >> 1)
      {
        sub_249FDCC00((v55 > 1), v56 + 1, 1);
        v50 = aBlock[0];
      }

      v50[2] = v56 + 1;
      v57 = &v50[3 * v56];
      v57[4] = v52;
      v57[5] = v53;
      *(v57 + 48) = v54;
      v51 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  *(v63 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_emoji) = v50;

  v58 = v50[2];
  sub_24A011D4C(v58);
  v59 = v63 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (v58)
    {
      v60 = *(v59 + 8);
      ObjectType = swift_getObjectType();
      (*(v60 + 16))(v50, ObjectType, v60);
    }

    swift_unknownObjectRelease();
  }

  return sub_249FF6C8C(v64);
}

BOOL sub_24A013C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A00FA58();
  v5 = [v4 text];

  if (v5)
  {
    sub_24A021698();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = sub_24A021658();

  v8 = [v6 initWithString_];

  v9 = sub_24A021658();
  v10 = [v8 stringByReplacingCharactersInRange:a1 withString:{a2, v9}];

  v11 = sub_24A021698();
  v13 = v12;

  v35[0] = v11;
  v35[1] = v13;
  sub_24A021798();
  String.emojiString()();

  v14 = String.emojiArray()();

  v15 = *(v14 + 16);

  v16 = sub_24A021518();
  v17 = sub_24A021878();

  v18 = os_log_type_enabled(v16, v17);
  if (v15 > 6)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = 136315394;
      v30 = MEMORY[0x24C20C4B0](v14, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_249FF336C(v30, v32, v35);

      *(v19 + 4) = v33;
      *(v19 + 12) = 2048;
      *(v19 + 14) = 6;
      v25 = "emojiArray %s has greater than %ld emoji, not updating input";
      v26 = v17;
      v27 = v16;
      v28 = v19;
      v29 = 22;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v35[0] = v20;
  *v19 = 136315138;
  v21 = MEMORY[0x24C20C4B0](v14, MEMORY[0x277D837D0]);
  v23 = v22;

  v24 = sub_249FF336C(v21, v23, v35);

  *(v19 + 4) = v24;
  v25 = "Updating input with emojiArray %s";
  v26 = v17;
  v27 = v16;
  v28 = v19;
  v29 = 12;
LABEL_8:
  _os_log_impl(&dword_249FC9000, v27, v26, v25, v28, v29);
  __swift_destroy_boxed_opaque_existential_1(v20);
  MEMORY[0x24C20D580](v20, -1, -1);
  MEMORY[0x24C20D580](v19, -1, -1);
LABEL_10:

  return v15 < 7;
}

uint64_t sub_24A014028()
{
  result = sub_24A021538();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A01430C(double a1, double a2)
{
  sub_249FF7BCC((v2 + 32));
  *(v2 + 40) = 0x4075E00000000000;
  *(v2 + 48) = xmmword_24A027820;
  *(v2 + 64) = 1;
  *(v2 + 72) = xmmword_24A027830;
  *(v2 + 88) = xmmword_24A027840;
  *(v2 + 104) = xmmword_24A027850;
  *(v2 + 120) = xmmword_24A027860;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double sub_24A014390()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 56);
  }

  sub_249FF7BCC(&v2);
  result = dbl_24A027968[v2];
  *(v0 + 56) = result;
  *(v0 + 64) = 0;
  return result;
}

void sub_24A0143DC(uint64_t a1, double a2, double a3)
{
  v7 = sub_24A014390();
  sub_24A014844(-0.29);
  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 == 3)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = a1;
  v11 = *(v3 + 56);
  v31 = a3;
  v12 = (a1 / 399.0 * v7 + 0.0) / v11 + 0.0;
  v13 = *(v8 + 32);
  v14 = *(v8 + 36);
  v15 = *(v8 + 40);
  v16 = *(v8 + 44);

  v17 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v18) = v13;
  LODWORD(v19) = v14;
  LODWORD(v20) = v15;
  LODWORD(v21) = v16;
  v22 = [v17 initWithControlPoints__:v18 :{v19, v20, v21}];
  *&v23 = v12;
  [v22 _solveForInput_];
  v25 = v24;

  v26 = (v10 / 400.0 * 60.0 + 0.0) * v31 + (1.0 - a2) * (v10 / 400.0 * 30.0 + 0.0) + v11 * v25 + 0.0;
  v27 = 2.0;
  if (!*(v3 + 32))
  {
    v27 = 3.0;
  }

  v28 = *(v3 + 16) * 0.5;
  v29 = v28 + v26 / v27;
  if (v10 * -29.135 != 0.0)
  {
    v30 = atan2(*(v3 + 24) * 0.5 - *(v3 + 24) * 0.5, v29 - v28);
    __sincos_stret(fabs(v10 * -29.135) * 0.0174532925 + v30);
  }
}

void sub_24A0145D0(uint64_t a1)
{
  sub_24A014844(-0.15);
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 == 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v2 + 32);
  v5 = *(v2 + 36);
  v6 = *(v2 + 40);
  v7 = *(v2 + 44);

  v8 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v9) = v4;
  LODWORD(v10) = v5;
  LODWORD(v11) = v6;
  LODWORD(v12) = v7;
  v13 = [v8 initWithControlPoints__:v9 :{v10, v11, v12}];
  *&v14 = (a1 / 399.0 * 0.83 + -0.07) / 0.76 + 0.0;
  [v13 _solveForInput_];

  if (__OFSUB__(399, a1))
  {
LABEL_11:
    __break(1u);
  }
}

float sub_24A014844(double a1)
{
  if (a1 != 0.0)
  {
    if (a1 <= 1.0)
    {
      v1 = a1;
    }

    else
    {
      v1 = 1.0;
    }

    v2 = 1.0 / (v1 + v1);
    v3 = a1 > -1.0;
    v4 = -0.5;
    if (v3)
    {
      v4 = v2;
    }

    v5 = v4 + 0.5;
    v6 = 0.5 - v4;
    v7 = 0.0 - (0.5 - v4);
    v8 = 1.0 - (v4 + 0.5);
    v9 = 1.0 - (0.5 - v4);
    v10 = (0.0 - v5) * (0.0 - v5) + v7 * v7;
    v11 = v7 * v9 + (0.0 - v5) * v8 + v10;
    v12 = (sqrt((v10 + v10) * v11) - v11) * 4.0 / 3.0 / ((0.0 - v5) * v9 - v7 * v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E8B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24A024700;
    *&a1 = v5 + 0.0 - v5 - v7 * v12;
    v14 = v6 + v7 + (0.0 - v5) * v12;
    *(v13 + 32) = LODWORD(a1);
    *(v13 + 36) = v14;
    *&a1 = v5 + v8 + v9 * v12;
    v15 = v6 + v9 - v8 * v12;
    *(v13 + 40) = LODWORD(a1);
    *(v13 + 44) = v15;
  }

  return *&a1;
}

uint64_t sub_24A014994()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for BackgroundSuggestionsProvider();
    swift_allocObject();
    v1 = sub_24A019E38();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t ConfigurationProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t ConfigurationProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

double sub_24A014A3C@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.501960784 green:0.776470588 blue:0.631372549 alpha:1.0];
  EmojiPosterBackgroundColor.init(_:)(v6);

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  result = 0.0;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 106) = v4;
  v8 = MEMORY[0x277D84F90];
  *(a3 + 107) = v5;
  *(a3 + 112) = v8;
  *(a3 + 120) = &unk_285D260F8;
  *(a3 + 128) = 0;
  return result;
}

double sub_24A014B10@<D0>(uint64_t a1@<X8>)
{
  v2 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26160);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if (v2)
  {
    EmojiPosterBackgroundColor.init(_:)(v2);
    v3 = 0uLL;
    v4 = v7;
    v5 = v8;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  *(a1 + 56) = v3;
  *(a1 + 72) = v3;
  *(a1 + 88) = v3;
  *&result = 257;
  *(a1 + 104) = 257;
  *(a1 + 112) = MEMORY[0x277D84F90];
  *(a1 + 120) = &unk_285D26160;
  *(a1 + 128) = 0;
  return result;
}

void sub_24A014BA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A0279E0;
  if (qword_2810DA7A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2810DDD10;
  v2 = sub_24A021658();
  v3 = objc_opt_self();
  v4 = [v3 colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v4)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  EmojiPosterBackgroundColor.init(_:)(v4);
  v5 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26198);
  v7 = v98;
  v6 = v99;
  if (v5)
  {
    EmojiPosterBackgroundColor.init(_:)(v5);
    v7 = v96;
    v6 = v97;
  }

  *(v0 + 32) = xmmword_24A0279F0;
  *(v0 + 48) = 0;
  *(v0 + 56) = v7;
  *(v0 + 72) = v6;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 257;
  v8 = MEMORY[0x277D84F90];
  *(v0 + 144) = MEMORY[0x277D84F90];
  *(v0 + 152) = &unk_285D26198;
  *(v0 + 160) = 0;
  v9 = v1;
  v10 = sub_24A021658();
  v11 = [v3 colorNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  if (!v11)
  {
    goto LABEL_41;
  }

  EmojiPosterBackgroundColor.init(_:)(v11);
  v12 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26248);
  v13 = v96;
  v14 = v97;
  if (v12)
  {
    EmojiPosterBackgroundColor.init(_:)(v12);
    v13 = v94;
    v14 = v95;
  }

  *(v0 + 168) = xmmword_24A027A00;
  *(v0 + 184) = 0;
  *(v0 + 192) = v13;
  *(v0 + 208) = v14;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 33554689;
  *(v0 + 280) = v8;
  *(v0 + 288) = &unk_285D26248;
  *(v0 + 296) = 0;
  v15 = v9;
  v16 = sub_24A021658();
  v17 = [v3 colorNamed:v16 inBundle:v15 compatibleWithTraitCollection:0];

  if (!v17)
  {
    goto LABEL_42;
  }

  EmojiPosterBackgroundColor.init(_:)(v17);
  v18 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D262E0);
  v20 = v94;
  v19 = v95;
  if (v18)
  {
    EmojiPosterBackgroundColor.init(_:)(v18);
    v20 = v92;
    v19 = v93;
  }

  *(v0 + 304) = xmmword_24A027A10;
  *(v0 + 320) = 0;
  *(v0 + 328) = v20;
  *(v0 + 344) = v19;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 257;
  *(v0 + 416) = v8;
  *(v0 + 424) = &unk_285D262E0;
  *(v0 + 432) = 0;
  v21 = v15;
  v22 = sub_24A021658();
  v23 = [v3 colorNamed:v22 inBundle:v21 compatibleWithTraitCollection:0];

  if (!v23)
  {
    goto LABEL_43;
  }

  EmojiPosterBackgroundColor.init(_:)(v23);
  v24 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26348);
  v26 = v92;
  v25 = v93;
  if (v24)
  {
    EmojiPosterBackgroundColor.init(_:)(v24);
    v26 = v90;
    v25 = v91;
  }

  *(v0 + 440) = 0x7963697073;
  *(v0 + 448) = 0xE500000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = v26;
  *(v0 + 480) = v25;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0u;
  *(v0 + 544) = 33554689;
  *(v0 + 552) = v8;
  *(v0 + 560) = &unk_285D26348;
  *(v0 + 568) = 0;
  v27 = v21;
  v28 = sub_24A021658();
  v29 = [v3 colorNamed:v28 inBundle:v27 compatibleWithTraitCollection:0];

  if (!v29)
  {
    goto LABEL_44;
  }

  EmojiPosterBackgroundColor.init(_:)(v29);
  v30 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D263B0);
  v32 = v90;
  v31 = v91;
  if (v30)
  {
    EmojiPosterBackgroundColor.init(_:)(v30);
    v32 = v88;
    v31 = v89;
  }

  *(v0 + 576) = xmmword_24A027A20;
  *(v0 + 592) = 0;
  *(v0 + 600) = v32;
  *(v0 + 616) = v31;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 16908545;
  *(v0 + 688) = v8;
  *(v0 + 696) = &unk_285D263B0;
  *(v0 + 704) = 0;
  v33 = v27;
  v34 = sub_24A021658();
  v35 = [v3 colorNamed:v34 inBundle:v33 compatibleWithTraitCollection:0];

  if (!v35)
  {
    goto LABEL_45;
  }

  EmojiPosterBackgroundColor.init(_:)(v35);
  v36 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26400);
  v38 = v88;
  v37 = v89;
  if (v36)
  {
    EmojiPosterBackgroundColor.init(_:)(v36);
    v38 = v86;
    v37 = v87;
  }

  *(v0 + 712) = 0xD000000000000010;
  *(v0 + 720) = 0x800000024A02A670;
  *(v0 + 728) = 0;
  *(v0 + 736) = v38;
  *(v0 + 752) = v37;
  *(v0 + 768) = 0u;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 33554689;
  *(v0 + 824) = v8;
  *(v0 + 832) = &unk_285D26400;
  *(v0 + 840) = 0;
  v39 = v33;
  v40 = sub_24A021658();
  v41 = [v3 colorNamed:v40 inBundle:v39 compatibleWithTraitCollection:0];

  if (!v41)
  {
    goto LABEL_46;
  }

  EmojiPosterBackgroundColor.init(_:)(v41);
  v42 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D264B0);
  v44 = v86;
  v43 = v87;
  if (v42)
  {
    EmojiPosterBackgroundColor.init(_:)(v42);
    v44 = v84;
    v43 = v85;
  }

  *(v0 + 848) = xmmword_24A027A30;
  *(v0 + 864) = 0;
  *(v0 + 872) = v44;
  *(v0 + 888) = v43;
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0u;
  *(v0 + 952) = 33554689;
  *(v0 + 960) = v8;
  *(v0 + 968) = &unk_285D264B0;
  *(v0 + 976) = 0;
  v45 = v39;
  v46 = sub_24A021658();
  v47 = [v3 colorNamed:v46 inBundle:v45 compatibleWithTraitCollection:0];

  if (!v47)
  {
    goto LABEL_47;
  }

  EmojiPosterBackgroundColor.init(_:)(v47);
  v48 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26530);
  v50 = v84;
  v49 = v85;
  if (v48)
  {
    EmojiPosterBackgroundColor.init(_:)(v48);
    v50 = v82;
    v49 = v83;
  }

  *(v0 + 984) = 1685024614;
  *(v0 + 992) = 0xE400000000000000;
  *(v0 + 1000) = 0;
  *(v0 + 1008) = v50;
  *(v0 + 1024) = v49;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0u;
  *(v0 + 1088) = 33554689;
  *(v0 + 1096) = v8;
  *(v0 + 1104) = &unk_285D26530;
  *(v0 + 1112) = 0;
  v51 = v45;
  v52 = sub_24A021658();
  v53 = [v3 colorNamed:v52 inBundle:v51 compatibleWithTraitCollection:0];

  if (!v53)
  {
    goto LABEL_48;
  }

  EmojiPosterBackgroundColor.init(_:)(v53);
  v54 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26598);
  v56 = v82;
  v55 = v83;
  if (v54)
  {
    EmojiPosterBackgroundColor.init(_:)(v54);
    v56 = v80;
    v55 = v81;
  }

  *(v0 + 1120) = xmmword_24A027A40;
  *(v0 + 1136) = 0;
  *(v0 + 1144) = v56;
  *(v0 + 1160) = v55;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = 0u;
  *(v0 + 1208) = 0u;
  *(v0 + 1224) = 33554689;
  *(v0 + 1232) = v8;
  *(v0 + 1240) = &unk_285D26598;
  *(v0 + 1248) = 0;
  v57 = v51;
  v58 = sub_24A021658();
  v59 = [v3 colorNamed:v58 inBundle:v57 compatibleWithTraitCollection:0];

  if (!v59)
  {
    goto LABEL_49;
  }

  EmojiPosterBackgroundColor.init(_:)(v59);
  v60 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26600);
  v62 = v80;
  v61 = v81;
  if (v60)
  {
    EmojiPosterBackgroundColor.init(_:)(v60);
    v62 = v78;
    v61 = v79;
  }

  strcpy((v0 + 1256), "officeSupplies");
  *(v0 + 1271) = -18;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v62;
  *(v0 + 1296) = v61;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 0u;
  *(v0 + 1344) = 0u;
  *(v0 + 1360) = 33554689;
  *(v0 + 1368) = v8;
  *(v0 + 1376) = &unk_285D26600;
  *(v0 + 1384) = 0;
  v63 = v57;
  v64 = sub_24A021658();
  v65 = [v3 colorNamed:v64 inBundle:v63 compatibleWithTraitCollection:0];

  if (!v65)
  {
    goto LABEL_50;
  }

  EmojiPosterBackgroundColor.init(_:)(v65);
  v66 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D26680);
  v67 = v78;
  v68 = v79;
  if (v66)
  {
    EmojiPosterBackgroundColor.init(_:)(v66);
    v67 = v76;
    v68 = v77;
  }

  *(v0 + 1392) = xmmword_24A027A50;
  *(v0 + 1408) = 0;
  *(v0 + 1416) = v67;
  *(v0 + 1432) = v68;
  *(v0 + 1448) = 0u;
  *(v0 + 1464) = 0u;
  *(v0 + 1480) = 0u;
  *(v0 + 1496) = 16777473;
  *(v0 + 1504) = v8;
  *(v0 + 1512) = &unk_285D26680;
  *(v0 + 1520) = 0;
  v69 = sub_24A021658();
  v70 = [v3 colorNamed:v69 inBundle:v63 compatibleWithTraitCollection:0];

  if (!v70)
  {
    goto LABEL_51;
  }

  EmojiPosterBackgroundColor.init(_:)(v70);
  v71 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(&unk_285D266E8);
  v72 = v76;
  v73 = v77;
  if (v71)
  {
    EmojiPosterBackgroundColor.init(_:)(v71);
    v72 = v74;
    v73 = v75;
  }

  *(v0 + 1528) = 0x6563617073;
  *(v0 + 1536) = 0xE500000000000000;
  *(v0 + 1544) = 0;
  *(v0 + 1552) = v72;
  *(v0 + 1568) = v73;
  *(v0 + 1584) = 0u;
  *(v0 + 1600) = 0u;
  *(v0 + 1616) = 0u;
  *(v0 + 1632) = 257;
  *(v0 + 1640) = v8;
  *(v0 + 1648) = &unk_285D266E8;
  *(v0 + 1656) = 0;
}

double sub_24A0155F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E8B8);
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_24A027A60;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = xmmword_24A027A70;
  *(v0 + 72) = xmmword_24A027A80;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 136) = 0;
  *(v0 + 144) = v2;
  *(v0 + 152) = &unk_285D26768;
  *(v0 + 160) = 0;
  *(v0 + 168) = 5;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0;
  *(v0 + 200) = xmmword_24A027A90;
  *(v0 + 216) = xmmword_24A027AA0;
  *(v0 + 280) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 288) = v2;
  *(v0 + 296) = &unk_285D26800;
  *(v0 + 304) = 0;
  *(v0 + 312) = 7;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0x3FBE1E1E1E1E1E1ELL;
  *(v0 + 352) = xmmword_24A027AB0;
  *(v0 + 368) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 432) = v2;
  *(v0 + 440) = &unk_285D26880;
  *(v0 + 448) = 0;
  *(v0 + 456) = 2;
  *(v0 + 480) = 0;
  *(v0 + 464) = 0u;
  *(v0 + 488) = 0x3FEB9B9B9B9B9B9CLL;
  *(v0 + 496) = xmmword_24A027AC0;
  *(v0 + 512) = 0x3FF0000000000000;
  *(v0 + 568) = 0;
  *(v0 + 576) = v2;
  *(v0 + 584) = &unk_285D268D0;
  *(v0 + 592) = 0;
  *(v0 + 600) = 4;
  *(v0 + 624) = 0;
  *(v0 + 608) = 0u;
  *(v0 + 632) = 0x3FEE5E5E5E5E5E5ELL;
  *(v0 + 640) = xmmword_24A027AD0;
  *(v0 + 656) = 0x3FF0000000000000;
  *(v0 + 712) = 0;
  *(v0 + 720) = v2;
  *(v0 + 728) = &unk_285D26938;
  *(v0 + 736) = 0;
  *(v0 + 744) = 6;
  *(v0 + 768) = 0;
  *(v0 + 752) = 0u;
  *(v0 + 776) = 0x3FEB5B5B5B5B5B5BLL;
  *(v0 + 784) = xmmword_24A027AE0;
  *(v0 + 800) = 0x3FF0000000000000;
  *(v0 + 872) = &unk_285D269A0;
  *(v0 + 888) = 8;
  *(v0 + 920) = 0x3FE9393939393939;
  *(v0 + 928) = xmmword_24A027AF0;
  *(v0 + 1016) = &unk_285D26A08;
  *(v0 + 1032) = 9;
  *(v0 + 1064) = 0x3FCA9A9A9A9A9A9BLL;
  *(v0 + 859) = 2;
  *(v0 + 864) = v2;
  *(v0 + 880) = 0;
  *(v0 + 912) = 0;
  *(v0 + 896) = 0u;
  *(v0 + 944) = 0x3FF0000000000000;
  *(v0 + 1088) = 0x3FF0000000000000;
  *(v0 + 1000) = 0;
  *(v0 + 1008) = v2;
  *(v0 + 1024) = 0;
  *(v0 + 1056) = 0;
  *(v0 + 1040) = 0u;
  *(v0 + 1072) = xmmword_24A027B00;
  *(v0 + 1147) = 2;
  *(v0 + 1152) = v2;
  *(v0 + 1160) = &unk_285D26A70;
  *(v0 + 1168) = 0;
  *(v0 + 1176) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 855) = 0;
  *(v0 + 824) = 0u;
  *(v0 + 840) = 0u;
  *(v0 + 808) = 0u;
  *(v0 + 968) = 0u;
  *(v0 + 984) = 0u;
  *(v0 + 952) = 0u;
  *(v0 + 1143) = 0;
  *(v0 + 1112) = 0u;
  *(v0 + 1128) = 0u;
  *(v0 + 1096) = 0u;
  return result;
}

char *sub_24A0158E8(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_24A014994();
  *&v102[0] = v1;
  *(&v102[0] + 1) = v2;
  v93 = v3;
  LOBYTE(v102[1]) = v3;
  sub_24A01A390(v102);
  v5 = v4;

  v6 = v5;
  v7 = *(v5 + 16);
  v8 = &unk_24A024000;
  v9 = MEMORY[0x277D84F90];
  v91 = v1;
  v89 = v2;
  if (!v7)
  {

    if (!*(v9 + 2))
    {
      goto LABEL_23;
    }

    return v9;
  }

  v86 = v7 - 1;
  v10 = 32;
  v11 = v3;
  for (i = v6; ; v6 = i)
  {
    v70 = v10;
    v12 = (v6 + v10);
    v13 = v12[1];
    v102[0] = *v12;
    v102[1] = v13;
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    *(&v102[4] + 10) = *(v12 + 74);
    v102[3] = v15;
    v102[4] = v16;
    v102[2] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E150);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24A0246F0;
    *(v17 + 32) = v1;
    *(v17 + 40) = v2;
    *(v17 + 48) = v11;
    v18 = BYTE9(v102[5]);
    if (BYTE9(v102[5]) == 1)
    {
      sub_249FDDE00(v102, v101);
      sub_249FDDE00(v102, v101);
      sub_249FE4E60(v1, v2, v11);
      v19 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(v17);
      if (v19)
      {
        v82 = v102[0];
        *&v101[0] = 0;
        v96 = 0;
        v97 = 0;
        v95 = 0;
        v20 = v19;
        [v19 getRed:v101 green:&v97 blue:&v96 alpha:&v95];

        *&v21 = *&v101[0];
        *&v22 = v96;
        *(&v21 + 1) = v97;
        *(&v22 + 1) = v95;
        v76 = v22;
        v79 = v21;
        v71 = *(&v102[2] + 8);
        v73 = *(&v102[3] + 8);
        v23 = 1;
        v24 = 1;
        v26 = *(&v102[4] + 1);
        v25 = *&v102[5];
        goto LABEL_8;
      }
    }

    else
    {
      sub_249FDDE00(v102, v101);
      sub_249FDDE00(v102, v101);
      sub_249FE4E60(v1, v2, v11);
    }

    v82 = v102[0];
    v100[0] = *(v102 + 1);
    *(v100 + 3) = DWORD1(v102[0]);
    v76 = *(&v102[1] + 8);
    v79 = *(v102 + 8);
    v71 = *(&v102[2] + 8);
    v73 = *(&v102[3] + 8);
    v26 = *(&v102[4] + 1);
    v25 = *&v102[5];
    v23 = BYTE8(v102[5]);
    v24 = BYTE9(v102[5]);
LABEL_8:
    v99[0] = v100[0];
    *(v99 + 3) = *(v100 + 3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_249FFF530(0, *(v9 + 2) + 1, 1, v9);
    }

    v28 = *(v9 + 2);
    v27 = *(v9 + 3);
    if (v28 >= v27 >> 1)
    {
      v9 = sub_249FFF530((v27 > 1), v28 + 1, 1, v9);
    }

    *(v9 + 2) = v28 + 1;
    v29 = &v9[136 * v28];
    *(v29 + 4) = 0;
    *(v29 + 5) = 0;
    v29[48] = v82;
    v30 = v99[0];
    *(v29 + 13) = *(v99 + 3);
    *(v29 + 49) = v30;
    *(v29 + 72) = v76;
    *(v29 + 56) = v79;
    *(v29 + 104) = v73;
    *(v29 + 88) = v71;
    *(v29 + 15) = v26;
    *(v29 + 16) = v25;
    v29[136] = v23;
    v29[137] = v24;
    *(v29 + 69) = 258;
    v31 = MEMORY[0x277D84F90];
    *(v29 + 18) = MEMORY[0x277D84F90];
    *(v29 + 19) = v17;
    v29[160] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24A0246F0;
    *(v32 + 32) = v91;
    *(v32 + 40) = v89;
    *(v32 + 48) = v93;
    sub_249FE4E60(v91, v89, v93);
    if (v18 && (v33 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(v32)) != 0)
    {
      v34 = v102[0];
      *&v101[0] = 0;
      v96 = 0;
      v97 = 0;
      v95 = 0;
      v35 = v33;
      [v33 getRed:v101 green:&v97 blue:&v96 alpha:&v95];

      *&v36 = *&v101[0];
      *&v37 = v96;
      *(&v36 + 1) = v97;
      *(&v37 + 1) = v95;
      v38 = *(&v102[3] + 8);
      v39 = *(&v102[2] + 8);
      v40 = 1;
      v41 = 1;
      v42 = *(&v102[4] + 1);
      v43 = *&v102[5];
    }

    else
    {
      v34 = v102[0];
      v98[0] = *(v102 + 1);
      *(v98 + 3) = DWORD1(v102[0]);
      v36 = *(v102 + 8);
      v37 = *(&v102[1] + 8);
      v38 = *(&v102[3] + 8);
      v39 = *(&v102[2] + 8);
      v42 = *(&v102[4] + 1);
      v43 = *&v102[5];
      v40 = BYTE8(v102[5]);
      v41 = BYTE9(v102[5]);
    }

    LODWORD(v101[0]) = v98[0];
    *(v101 + 3) = *(v98 + 3);
    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    if (v45 >= v44 >> 1)
    {
      v80 = v37;
      v83 = v36;
      v74 = v39;
      v77 = v38;
      v48 = sub_249FFF530((v44 > 1), v45 + 1, 1, v9);
      v39 = v74;
      v38 = v77;
      v37 = v80;
      v36 = v83;
      v9 = v48;
    }

    *(v9 + 2) = v45 + 1;
    v46 = &v9[136 * v45];
    *(v46 + 4) = 0;
    *(v46 + 5) = 0;
    v46[48] = v34;
    v47 = v101[0];
    *(v46 + 13) = *(v101 + 3);
    *(v46 + 49) = v47;
    *(v46 + 56) = v36;
    *(v46 + 72) = v37;
    *(v46 + 104) = v38;
    *(v46 + 88) = v39;
    *(v46 + 15) = v42;
    *(v46 + 16) = v43;
    v46[136] = v40;
    v46[137] = v41;
    *(v46 + 69) = 256;
    *(v46 + 18) = v31;
    *(v46 + 19) = v32;
    v46[160] = 0;
    if (!v86)
    {
      break;
    }

    --v86;
    v10 = v70 + 96;
    v1 = v91;
    v2 = v89;
    v11 = v93;
  }

  v1 = v91;
  v2 = v89;
  v8 = &unk_24A024000;
  if (!*(v9 + 2))
  {
LABEL_23:
    v88 = [objc_opt_self() grayColor];
    EmojiPosterBackgroundColor.init(_:)(v88);
    LOBYTE(v102[0]) = 0;
    *(v102 + 8) = v101[0];
    *(&v102[1] + 8) = v101[1];
    memset(&v102[2] + 8, 0, 50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E150);
    v49 = swift_allocObject();
    v84 = v8[111];
    *(v49 + 16) = v84;
    *(v49 + 32) = v1;
    *(v49 + 40) = v2;
    *(v49 + 48) = v93;
    sub_249FE4E60(v1, v2, v93);
    sub_249FDDE00(v102, v101);
    v50 = v102[0];
    LODWORD(v101[0]) = *(v102 + 1);
    *(v101 + 3) = DWORD1(v102[0]);
    v78 = *(&v102[1] + 8);
    v81 = *(v102 + 8);
    v72 = *(&v102[3] + 8);
    v75 = *(&v102[2] + 8);
    v51 = *(&v102[4] + 1);
    v52 = *&v102[5];
    v53 = BYTE8(v102[5]);
    v54 = BYTE9(v102[5]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_249FFF530(0, *(v9 + 2) + 1, 1, v9);
    }

    v56 = *(v9 + 2);
    v55 = *(v9 + 3);
    if (v56 >= v55 >> 1)
    {
      v9 = sub_249FFF530((v55 > 1), v56 + 1, 1, v9);
    }

    *(v9 + 2) = v56 + 1;
    v57 = &v9[136 * v56];
    *(v57 + 4) = 0;
    *(v57 + 5) = 0;
    v57[48] = v50;
    v58 = v101[0];
    *(v57 + 13) = *(v101 + 3);
    *(v57 + 49) = v58;
    *(v57 + 72) = v78;
    *(v57 + 56) = v81;
    *(v57 + 104) = v72;
    *(v57 + 88) = v75;
    *(v57 + 15) = v51;
    *(v57 + 16) = v52;
    v57[136] = v53;
    v57[137] = v54;
    *(v57 + 69) = 258;
    v59 = MEMORY[0x277D84F90];
    *(v57 + 18) = MEMORY[0x277D84F90];
    *(v57 + 19) = v49;
    v57[160] = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v84;
    *(v60 + 32) = v91;
    *(v60 + 40) = v89;
    *(v60 + 48) = v93;
    sub_249FE4E60(v91, v89, v93);
    v61 = v102[0];
    LODWORD(v97) = *(v102 + 1);
    *(&v97 + 3) = DWORD1(v102[0]);
    v92 = *(&v102[1] + 8);
    v94 = *(v102 + 8);
    v90 = *(&v102[2] + 8);
    v63 = *(v9 + 2);
    v62 = *(v9 + 3);
    v85 = *(&v102[4] + 8);
    v87 = *(&v102[3] + 8);
    v64 = BYTE8(v102[5]);
    v65 = BYTE9(v102[5]);
    if (v63 >= v62 >> 1)
    {
      v9 = sub_249FFF530((v62 > 1), v63 + 1, 1, v9);
    }

    *(v9 + 2) = v63 + 1;
    v66 = &v9[136 * v63];
    *(v66 + 4) = 0;
    *(v66 + 5) = 0;
    v66[48] = v61;
    v67 = v97;
    *(v66 + 13) = *(&v97 + 3);
    *(v66 + 49) = v67;
    *(v66 + 56) = v94;
    *(v66 + 72) = v92;
    *(v66 + 88) = v90;
    *(v66 + 104) = v87;
    *(v66 + 120) = v85;
    v66[136] = v64;
    v66[137] = v65;
    *(v66 + 69) = 256;
    *(v66 + 18) = v59;
    *(v66 + 19) = v60;
    v66[160] = 0;
  }

  return v9;
}

uint64_t sub_24A0160DC()
{
  v3 = *(v0 + 24);
  if (!v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D07308]) initWithMachName_];
    v5 = *(v0 + 24);
    *(v0 + 24) = v4;

    v3 = *(v0 + 24);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v6 = v3;
  [v6 readEmojiDefaults];
  v7 = [v6 recentEmojis];
  v8 = sub_24A0166A0();
  v9 = sub_24A0217E8();

  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_52;
  }

  v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 <= 0xF)
  {
LABEL_5:
    if ((v9 & 0xC000000000000001) != 0)
    {

      if (v2)
      {
        v11 = 0;
        do
        {
          v12 = v11 + 1;
          sub_24A0219C8();
          v11 = v12;
        }

        while (v2 != v12);
      }
    }

    else
    {
    }

    if (v10)
    {
      v8 = sub_24A021AA8();
      v1 = v14;
      v13 = v15;
      v2 = v16;

      if ((v2 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      v8 = v9 & 0xFFFFFFFFFFFFFF8;
      v1 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = (2 * v2) | 1;
      if ((v2 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_24A021C68();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(v18 + 16);

    if (__OFSUB__(v2 >> 1, v13))
    {
LABEL_67:
      __break(1u);
    }

    else if (v19 == (v2 >> 1) - v13)
    {
      v9 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v9)
      {
        goto LABEL_23;
      }

      v9 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }

    swift_unknownObjectRelease_n();
LABEL_15:
    sub_24A0165BC(v8, v1, v13, v2);
    v9 = v17;
LABEL_22:
    swift_unknownObjectRelease();
  }

LABEL_23:
  while (2)
  {
    if (v9 >> 62)
    {
      goto LABEL_62;
    }

    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v6;
    if (!v13)
    {
LABEL_63:
      v8 = MEMORY[0x277D84F90];
LABEL_64:

      return v8;
    }

LABEL_25:
    if (v13 < 1)
    {
      __break(1u);
      goto LABEL_67;
    }

    v1 = 0;
    v37 = v9 & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37)
      {
        v20 = MEMORY[0x24C20C690](v1, v9);
      }

      else
      {
        v20 = *(v9 + 8 * v1 + 32);
      }

      v6 = v20;
      v21 = [v20 string];
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = v9;
      v23 = v21;
      v24 = sub_24A021698();
      v26 = v25;

      v38[0] = v24;
      v38[1] = v26;
      v39 = 0;
      v9 = sub_24A0158E8(v38);
      sub_249FE4EC4(v24, v26, 0);
      v27 = *(v9 + 16);
      v10 = *(v8 + 16);
      v2 = v10 + v27;
      if (__OFADD__(v10, v27))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v29 = *(v8 + 24) >> 1, v29 >= v2))
      {
        if (*(v9 + 16))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v10 <= v2)
        {
          v30 = v10 + v27;
        }

        else
        {
          v30 = v10;
        }

        v8 = sub_249FFF530(isUniquelyReferenced_nonNull_native, v30, 1, v8);
        v29 = *(v8 + 24) >> 1;
        if (*(v9 + 16))
        {
LABEL_42:
          if (v29 - *(v8 + 16) < v27)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v27)
          {
            v31 = *(v8 + 16);
            v32 = __OFADD__(v31, v27);
            v33 = v31 + v27;
            if (v32)
            {
              goto LABEL_51;
            }

            v9 = v22;
            *(v8 + 16) = v33;
          }

          else
          {
            v9 = v22;
          }

          goto LABEL_28;
        }
      }

      v9 = v22;
      if (v27)
      {
        goto LABEL_49;
      }

LABEL_28:
      ++v1;

      if (v13 == v1)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    if (sub_24A021A98() > 15)
    {
      continue;
    }

    break;
  }

  v1 = sub_24A021A98();
  result = sub_24A021A98();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v1 >= 0xF)
    {
      v35 = 15;
    }

    else
    {
      v35 = v1;
    }

    if (v1 >= 0)
    {
      v2 = v35;
    }

    else
    {
      v2 = 15;
    }

    if (sub_24A021A98() >= v2)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_62:
    v13 = sub_24A021A98();
    v36 = v6;
    if (!v13)
    {
      goto LABEL_63;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t ConfigurationProvider.deinit()
{

  return v0;
}

uint64_t ConfigurationProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_24A0165BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_24A0166A0();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E208);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_24A0166A0()
{
  result = qword_27EF2E8C0;
  if (!qword_27EF2E8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2E8C0);
  }

  return result;
}

uint64_t sub_24A016814()
{
  sub_24A0219B8();
  MEMORY[0x24C20C3F0](0x3A7865646E69, 0xE600000000000000);
  v0 = sub_24A021C28();
  MEMORY[0x24C20C3F0](v0);

  MEMORY[0x24C20C3F0](0x707954657A697320, 0xEA00000000003A65);
  sub_24A021A78();
  return 0;
}

uint64_t sub_24A016908()
{
  sub_24A0219B8();
  MEMORY[0x24C20C3F0](0x3A657A6973, 0xE500000000000000);
  type metadata accessor for CGSize(0);
  sub_24A021A78();
  MEMORY[0x24C20C3F0](0x6F697469736F7020, 0xEA00000000003A6ELL);
  type metadata accessor for CGPoint(0);
  sub_24A021A78();
  MEMORY[0x24C20C3F0](0xD000000000000011, 0x800000024A02A7B0);
  sub_24A021A78();
  return 0;
}

id sub_24A016A38()
{
  type metadata accessor for GridLayoutProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2810D9C98 = result;
  return result;
}

uint64_t sub_24A016A8C()
{
  if (qword_2810D9C90 != -1)
  {
    swift_once();
  }

  v0 = qword_2810D9C98;
  type metadata accessor for EmojiPatternParser();
  swift_allocObject();
  result = sub_249FFB814(0xD000000000000013, 0x800000024A02A7D0, v0);
  qword_2810DA2C8 = result;
  return result;
}

uint64_t sub_24A016B2C()
{
  if (qword_2810D9C90 != -1)
  {
    swift_once();
  }

  v0 = qword_2810D9C98;
  type metadata accessor for EmojiPatternParser();
  swift_allocObject();
  result = sub_249FFB814(0xD000000000000014, 0x800000024A02A7F0, v0);
  qword_2810DA270 = result;
  return result;
}

uint64_t sub_24A016BCC()
{
  if (qword_2810D9C90 != -1)
  {
    swift_once();
  }

  v0 = qword_2810D9C98;
  type metadata accessor for EmojiPatternParser();
  swift_allocObject();
  result = sub_249FFB814(0xD000000000000013, 0x800000024A02A810, v0);
  qword_2810DA2D8 = result;
  return result;
}

void sub_24A016C88()
{
  sub_24A016C6C();
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      if (qword_2810DA268 == -1)
      {
        return;
      }
    }

    else if (qword_2810DA2D0 == -1)
    {
      return;
    }

LABEL_8:
    swift_once();
    return;
  }

  if (qword_2810DA2C0 != -1)
  {
    goto LABEL_8;
  }
}

void sub_24A016DD4()
{
  sub_24A016C6C();
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      if (qword_2810DA268 == -1)
      {
        return;
      }
    }

    else if (qword_2810DA2D0 == -1)
    {
      return;
    }

LABEL_8:
    swift_once();
    return;
  }

  if (qword_2810DA2C0 != -1)
  {
    goto LABEL_8;
  }
}

void sub_24A016F54(uint64_t a1@<X8>)
{
  sub_24A016C88();
  v4 = v3;
  sub_24A016DD4();
  if (!*(v1 + 32))
  {
    if (qword_2810DA2C0 != -1)
    {
      v14 = v5;
      swift_once();
      v5 = v14;
    }

    v6 = &qword_2810DA2C8;
    goto LABEL_11;
  }

  if (*(v1 + 32) != 1)
  {
    if (qword_2810DA2D0 != -1)
    {
      v15 = v5;
      swift_once();
      v5 = v15;
    }

    v6 = &qword_2810DA2D8;
    goto LABEL_11;
  }

  if (qword_2810DA268 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = &qword_2810DA270;
LABEL_11:
    v7 = *v6;
    v8 = *(v7 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_oddRowSymbolCount);
    v9 = *(v7 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_evenRowSymbolCount);
    if (v8 == v9)
    {
      break;
    }

    v10 = __OFADD__(v8, v9);
    v8 += v9;
    if (!v10)
    {
      break;
    }

    __break(1u);
LABEL_26:
    v13 = v5;
    swift_once();
    v5 = v13;
  }

  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      if (qword_2810DA268 != -1)
      {
        v16 = v5;
        swift_once();
        v5 = v16;
      }

      v11 = &qword_2810DA270;
    }

    else
    {
      if (qword_2810DA2D0 != -1)
      {
        v18 = v5;
        swift_once();
        v5 = v18;
      }

      v11 = &qword_2810DA2D8;
    }
  }

  else
  {
    if (qword_2810DA2C0 != -1)
    {
      v17 = v5;
      swift_once();
      v5 = v17;
    }

    v11 = &qword_2810DA2C8;
  }

  v12 = *(*v11 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_numberOfRows);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
}

char *sub_24A0171A0()
{
  sub_24A016F54(v57);
  if (__OFSUB__(v58, v58 & 1))
  {
    goto LABEL_124;
  }

  v1 = (v59 - (v59 & 1));
  if (__OFSUB__(v59, v59 & 1))
  {
    goto LABEL_125;
  }

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v2 = v57[0];
  v54 = v57[1];
  v4 = 0.5;
  if (*(v0 + 32))
  {
    v3 = (v5 - v57[0] * (v58 - (v58 & 1))) * 0.5;
  }

  else
  {
    v3 = (v5 - v57[0] * (v58 - (v58 & 1))) * 0.5 - v57[0];
  }

  if (!*(v0 + 32))
  {
    if (qword_2810DA2C0 != -1)
    {
      swift_once();
    }

    v7 = &qword_2810DA2C8;
    goto LABEL_16;
  }

  if (*(v0 + 32) != 1)
  {
    if (qword_2810DA2D0 != -1)
    {
      swift_once();
    }

    v7 = &qword_2810DA2D8;
    goto LABEL_16;
  }

  if (qword_2810DA268 != -1)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v7 = &qword_2810DA270;
LABEL_16:
    v8 = *v7;
    v9 = OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_patterns;
    swift_beginAccess();
    v10 = *(v0 + 40);
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_126;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_127;
    }

    if (v12 >= *(*(v8 + v9) + 16))
    {
      goto LABEL_128;
    }

    v55 = sub_24A017B3C();

    if (*(v0 + 32))
    {
      if (*(v0 + 32) == 1)
      {
        if (qword_2810DA268 != -1)
        {
          swift_once();
        }

        v13 = &qword_2810DA270;
      }

      else
      {
        if (qword_2810DA2D0 != -1)
        {
          swift_once();
        }

        v13 = &qword_2810DA2D8;
      }
    }

    else
    {
      if (qword_2810DA2C0 != -1)
      {
        swift_once();
      }

      v13 = &qword_2810DA2C8;
    }

    v14 = *(*v13 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_numberOfRows);
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_129;
    }

    if (((v14 - 1) & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_130:
    __break(1u);
LABEL_131:
    swift_once();
  }

  v56 = 0;
  v15 = 0;
  v4 = (v6 - v54 * v1) * v4;
  v16 = *(v0 + 32);
  v53 = v60;
  v1 = MEMORY[0x277D84F90];
  v51 = v14 - 1;
  if (v6 < v5)
  {
    v5 = v6;
  }

  while (2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = &qword_2810DA270;
        if (qword_2810DA268 != -1)
        {
          swift_once();
          v17 = &qword_2810DA270;
        }
      }

      else
      {
        v17 = &qword_2810DA2D8;
        if (qword_2810DA2D0 != -1)
        {
          swift_once();
          v17 = &qword_2810DA2D8;
        }
      }
    }

    else
    {
      v17 = &qword_2810DA2C8;
      if (qword_2810DA2C0 != -1)
      {
        swift_once();
        v17 = &qword_2810DA2C8;
      }
    }

    v18 = *v17;
    v19 = &OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_evenRowSymbolCount;
    if (v15)
    {
      v19 = &OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_oddRowSymbolCount;
    }

    v20 = *(v18 + *v19);
    v21 = v20 - 1;
    if (__OFSUB__(v20, 1))
    {
      goto LABEL_121;
    }

    if (v21 < 0)
    {
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
      goto LABEL_130;
    }

    v52 = v15;
    if (v56 >= *(v55 + 2))
    {
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v22 = 0;
    v23 = v15;
    v24 = &v55[16 * v56 + 40];
    while (1)
    {
      v25 = *(v24 - 8);
      v26 = *v24;
      v27 = *(v0 + 32);
      v28 = *(v0 + 48);
      if ((v25 & 1) == 0)
      {
        if (!*(v0 + 32))
        {
          if (*(v0 + 48) <= 1u)
          {
            if (!*(v0 + 48))
            {
              v30 = 3.0;
              v31 = 393.0;
              v32 = 85.0;
              goto LABEL_85;
            }

            v29 = 0x4054000000000000;
            goto LABEL_81;
          }

          if (v28 == 2)
          {
            v33 = 0x4051800000000000;
            goto LABEL_77;
          }

          v34 = 0x4052400000000000;
LABEL_83:
          v32 = *&v34;
          v30 = 2.0;
          v35 = 0x408F400000000000;
          goto LABEL_84;
        }

        if (v27 != 1)
        {
          if (*(v0 + 48) <= 1u)
          {
            if (!*(v0 + 48))
            {
LABEL_71:
              v30 = 3.0;
              v31 = 393.0;
              v32 = 275.0;
              goto LABEL_85;
            }

            goto LABEL_68;
          }

          goto LABEL_72;
        }

        if (*(v0 + 48) > 1u)
        {
          goto LABEL_61;
        }

LABEL_56:
        if (!*(v0 + 48))
        {
          goto LABEL_60;
        }

        v29 = 0x4065400000000000;
LABEL_81:
        v32 = *&v29;
        v30 = 2.0;
        v35 = 0x4087400000000000;
        goto LABEL_84;
      }

      if (!*(v0 + 32))
      {
        if (*(v0 + 48) > 1u)
        {
          goto LABEL_61;
        }

        if (!*(v0 + 48))
        {
LABEL_60:
          v30 = 3.0;
          v31 = 393.0;
          v32 = 180.0;
          goto LABEL_85;
        }

        v29 = 0x4065800000000000;
        goto LABEL_81;
      }

      if (v27 != 1)
      {
        if (*(v0 + 48) <= 1u)
        {
          if (!*(v0 + 48))
          {
            goto LABEL_71;
          }

LABEL_68:
          v29 = 0x406AE00000000000;
          goto LABEL_81;
        }

LABEL_72:
        if (v28 == 2)
        {
          v33 = 0x4066800000000000;
          goto LABEL_77;
        }

        v34 = 0x4067C00000000000;
        goto LABEL_83;
      }

      if (*(v0 + 48) <= 1u)
      {
        goto LABEL_56;
      }

LABEL_61:
      if (v28 != 2)
      {
        v34 = 0x4064400000000000;
        goto LABEL_83;
      }

      v33 = 0x4062C00000000000;
LABEL_77:
      v32 = *&v33;
      v30 = 2.0;
      v35 = 0x4089A00000000000;
LABEL_84:
      v31 = *&v35;
LABEL_85:
      v36 = v32 / v30;
      if (v16)
      {
        if (v16 == 1)
        {
          v37 = &qword_2810DA270;
          if (qword_2810DA268 != -1)
          {
            swift_once();
            v37 = &qword_2810DA270;
          }
        }

        else
        {
          v37 = &qword_2810DA2D8;
          if (qword_2810DA2D0 != -1)
          {
            swift_once();
            v37 = &qword_2810DA2D8;
          }
        }
      }

      else
      {
        v37 = &qword_2810DA2C8;
        if (qword_2810DA2C0 != -1)
        {
          swift_once();
          v37 = &qword_2810DA2C8;
        }
      }

      v38 = *v37;
      v39 = *(v38 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_evenRowSymbolCount);
      v40 = *(v38 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_oddRowSymbolCount);
      v41 = v22;
      if (v39 != v40)
      {
        if (((v52 & 1) == 0) != v40 >= v39)
        {
          if (v22 + 0x4000000000000000 < 0)
          {
            goto LABEL_120;
          }

          v41 = 2 * v22;
        }

        else
        {
          if (v22 + 0x4000000000000000 < 0)
          {
            goto LABEL_119;
          }

          v41 = (2 * v22) | 1;
        }
      }

      v6 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v53)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v1 = sub_249FFEFD4(0, *(v1 + 2) + 1, 1, v1);
        }

        v44 = *(v1 + 2);
        v43 = *(v1 + 3);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v1 = sub_249FFEFD4((v43 > 1), v44 + 1, 1, v1);
        }

        v46 = v23;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v1 = sub_249FFEFD4(0, *(v1 + 2) + 1, 1, v1);
        }

        v44 = *(v1 + 2);
        v47 = *(v1 + 3);
        v45 = v44 + 1;
        if (v44 >= v47 >> 1)
        {
          v1 = sub_249FFEFD4((v47 > 1), v44 + 1, 1, v1);
        }

        v46 = v6;
        v6 = v23;
      }

      v48 = v36 * (v5 / v31);
      *(v1 + 2) = v45;
      v49 = &v1[48 * v44];
      *(v49 + 4) = v48;
      *(v49 + 5) = v48;
      *(v49 + 6) = v3 + v2 * v46;
      *(v49 + 7) = v4 + v54 * v6;
      v49[64] = v25;
      *(v49 + 9) = v26;
      if (v21 == v22)
      {
        break;
      }

      v24 += 16;
      ++v22;
      if (v56 + v22 >= *(v55 + 2))
      {
        goto LABEL_118;
      }
    }

    if (v52 != v51)
    {
      v56 += v22 + 1;
      v15 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_123;
      }

      continue;
    }

    break;
  }

  return v1;
}

uint64_t sub_24A017A3C()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_24A017A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A017ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

char *sub_24A017B3C()
{

  v0 = sub_24A021748();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = MEMORY[0x277D84F90];
    do
    {
      if (v2 == 97 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 0;
        v6 = 0;
      }

      else if (v2 == 65 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v6 = 0;
        v5 = 1;
      }

      else if (v2 == 98 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 0;
        v6 = 1;
      }

      else if (v2 == 66 && v3 == 0xE100000000000000)
      {

        v5 = 1;
        v6 = 1;
      }

      else if (sub_24A021C38())
      {

        v6 = 1;
        v5 = 1;
      }

      else if (v2 == 99 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 0;
        v6 = 2;
      }

      else if (v2 == 67 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 1;
        v6 = 2;
      }

      else if (v2 == 100 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 0;
        v6 = 3;
      }

      else if (v2 == 68 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 1;
        v6 = 3;
      }

      else if (v2 == 101 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 0;
        v6 = 4;
      }

      else if (v2 == 69 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 1;
        v6 = 4;
      }

      else if (v2 == 102 && v3 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
      {

        v5 = 0;
        v6 = 5;
      }

      else if (v2 == 70 && v3 == 0xE100000000000000)
      {

        v5 = 1;
        v6 = 5;
      }

      else
      {
        v5 = sub_24A021C38();

        if (v5)
        {
          v6 = 5;
        }

        else
        {
          v6 = 0;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_249FFEED0(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_249FFEED0((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      v9 = &v4[16 * v8];
      v9[32] = v5 & 1;
      *(v9 + 5) = v6;
      v2 = sub_24A021748();
      v3 = v10;
    }

    while (v10);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for GridLayoutEmojiProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridLayoutEmojiProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24A018024()
{
  result = qword_27EF2E8C8;
  if (!qword_27EF2E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E8C8);
  }

  return result;
}

double UIColor.luminance.getter()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  v4[0] = 0;
  v2 = 0.0;
  [v0 getHue:v4 saturation:&v3 brightness:&v2 alpha:0];
  return v2 + v2 * v3 * -0.5;
}

Swift::String __swiftcall String.emojiString()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v1 = sub_24A021658();
  v2 = [v0 initWithString_];

  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = v2;
  [v4 length];
  v11[4] = sub_24A018710;
  v11[5] = v3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A018718;
  v11[3] = &block_descriptor_10;
  v5 = _Block_copy(v11);

  CEMEnumerateEmojiTokensInStringWithBlock();

  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  v8 = v6;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t String.emojiDictionary()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v1 = sub_24A021658();
  v2 = [v0 initWithString_];

  v3 = swift_allocObject();
  *(v3 + 16) = sub_24A020F10(MEMORY[0x277D84F90]);
  v4 = v2;
  [v4 length];
  v8[4] = sub_24A018EE8;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A018718;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);

  CEMEnumerateEmojiTokensInStringWithBlock();

  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v3 + 16);

  return v6;
}

uint64_t String.emojiArray()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v1 = sub_24A021658();
  v2 = [v0 initWithString_];

  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  v4 = v2;
  [v4 length];
  v8[4] = sub_24A018EF0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A018718;
  v8[3] = &block_descriptor_12;
  v5 = _Block_copy(v8);

  CEMEnumerateEmojiTokensInStringWithBlock();

  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v3 + 16);

  return v6;
}

Swift::Bool __swiftcall String.isSingleEmoji()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v1 = sub_24A021658();
  v2 = [v0 initWithString_];

  LODWORD(v1) = CEMStringIsSingleEmoji();
  return v1 != 0;
}

void sub_24A018624()
{
  String = CEMEmojiTokenGetString();
  if (String)
  {
    v5 = String;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v1 = v5;
      v2 = sub_24A0216D8();
      v4 = v3;
      swift_beginAccess();
      MEMORY[0x24C20C3F0](v2, v4);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A018718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A0187A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String = CEMEmojiTokenGetString();
  if (String)
  {
    v16 = String;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = v16;
      v8 = sub_24A0216D8();
      v10 = v9;
      swift_beginAccess();
      v11 = *(a5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_249FFECB8(0, *(v11 + 2) + 1, 1, v11);
        *(a5 + 16) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_249FFECB8((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = v8;
      *(v15 + 5) = v10;
      *(a5 + 16) = v11;
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24A018900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String = CEMEmojiTokenGetString();
  if (String)
  {
    v14 = String;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = v14;
      v10 = sub_24A0216D8();
      v12 = v11;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(a5 + 16);
      *(a5 + 16) = 0x8000000000000000;
      sub_24A018D20(v10, v12, a2, a3, isUniquelyReferenced_nonNull_native);
      *(a5 + 16) = v15;
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A018A24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A004A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249FF9A0C(v16, a4 & 1);
      v11 = sub_24A004A10(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24A021C88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249FFAC44();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_24A018BA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_24A004B1C(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_249FFA3F0(v18, a5 & 1);
      result = sub_24A004B1C(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_24A021C88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_249FFB1C4();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v28 = v23[7] + 24 * result;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3 & 1;
    v29 = v23[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v23[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3 & 1;

  return sub_249FE4EC4(v25, v26, v27);
}

unint64_t sub_24A018D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_24A004B60(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_249FFA690(v18, a5 & 1);
      result = sub_24A004B60(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        type metadata accessor for _NSRange(0);
        result = sub_24A021C88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_249FFB338();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v25 = (v23[6] + 16 * result);
    *v25 = a3;
    v25[1] = a4;
    v26 = (v23[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 16 * result);
  *v24 = a1;
  v24[1] = a2;
}

unint64_t sub_24A018E94(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void sub_24A018F08(uint64_t a1)
{
  if (*(v1 + 16) && *(v1 + 16) == 1)
  {
    v2 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      v3 = v2;
      pow(v2, 3.0);
      pow(v3, 4.0);
      pow(v3, 5.0);
    }
  }
}

id sub_24A019030()
{
  type metadata accessor for EmojiColorPalette();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2810DDD10 = result;
  return result;
}

id static EmojiColorPalette.backgroundPalette(suggestedColor:)(uint64_t a1)
{
  v2 = sub_24A019720(1);
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:

    v8 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    if (a1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v4 = sub_24A021A98();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  sub_24A021A48();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C20C690](v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [objc_allocWithZone(MEMORY[0x277D3ED40]) initWithColor_];

    sub_24A021A28();
    sub_24A021A58();
    sub_24A021A68();
    sub_24A021A38();
  }

  while (v4 != v5);

  v8 = v17;
  if (!a1)
  {
LABEL_13:
    v9 = [objc_opt_self() whiteColor];
    [objc_allocWithZone(MEMORY[0x277D3ED40]) initWithColor_];

    MEMORY[0x24C20C470]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_14:
      sub_24A021828();
      v8 = v17;
      goto LABEL_15;
    }

LABEL_23:
    sub_24A021808();
    goto LABEL_14;
  }

LABEL_15:
  if (v8 >> 62)
  {
    v14 = v8;
    v15 = sub_24A021A98();
    v8 = v14;
    if (v15 >= 1)
    {
      goto LABEL_17;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_17:
    sub_24A019380(v8);

    v10 = objc_allocWithZone(MEMORY[0x277D3ECD0]);
    v11 = sub_24A0217C8();

    v12 = [v10 initWithColors:v11 localizedName:0 showsColorWell:0];

    return v12;
  }

  v16 = [objc_opt_self() extendedPalette];

  return v16;
}

char *sub_24A019380(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24A021A98();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_249FDCC60(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C20C690](i, a1);
        sub_24A019DEC();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_249FDCC60((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_249FF7BBC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24A019DEC();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_249FDCC60((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_249FF7BBC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static EmojiColorPalette.titlePalette()()
{
  v0 = sub_24A019720(0);
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    sub_24A019380(v7);

    v8 = objc_allocWithZone(MEMORY[0x277D3ECD0]);
    v9 = sub_24A0217C8();

    v10 = [v8 initWithColors:v9 localizedName:0 showsColorWell:0];

    return v10;
  }

  v2 = sub_24A021A98();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v11 = MEMORY[0x277D84F90];
  result = sub_24A021A48();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C20C690](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      [objc_allocWithZone(MEMORY[0x277D3ED40]) initWithColor_];

      sub_24A021A28();
      sub_24A021A58();
      sub_24A021A68();
      sub_24A021A38();
    }

    while (v2 != v4);

    v7 = v11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A019720(char a1)
{
  LOBYTE(v1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E8D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A027E20;
  if (qword_2810DA7A0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v3 = qword_2810DDD10;
  v4 = sub_24A021658();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 32) = v6;
  v7 = sub_24A021658();
  v8 = [v5 colorNamed:v7 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 40) = v8;
  v9 = sub_24A021658();
  v10 = [v5 colorNamed:v9 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 48) = v10;
  v11 = sub_24A021658();
  v12 = [v5 colorNamed:v11 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 56) = v12;
  v13 = sub_24A021658();
  v14 = [v5 colorNamed:v13 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 64) = v14;
  v15 = sub_24A021658();
  v16 = [v5 colorNamed:v15 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 72) = v16;
  v17 = sub_24A021658();
  v18 = [v5 colorNamed:v17 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 80) = v18;
  v19 = sub_24A021658();
  v20 = [v5 colorNamed:v19 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 88) = v20;
  v21 = sub_24A021658();
  v22 = [v5 colorNamed:v21 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 96) = v22;
  v23 = sub_24A021658();
  v24 = [v5 colorNamed:v23 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 104) = v24;
  v25 = sub_24A021658();
  v26 = [v5 colorNamed:v25 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 112) = v26;
  v27 = sub_24A021658();
  v28 = [v5 colorNamed:v27 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 120) = v28;
  v29 = sub_24A021658();
  v30 = [v5 colorNamed:v29 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 128) = v30;
  v31 = sub_24A021658();
  v32 = [v5 colorNamed:v31 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 136) = v32;
  v33 = sub_24A021658();
  v34 = [v5 colorNamed:v33 inBundle:v3 compatibleWithTraitCollection:0];

  *(v2 + 144) = v34;
  if (v1)
  {
    v35 = v3;
    v36 = sub_24A021658();
    v37 = [v5 colorNamed:v36 inBundle:v35 compatibleWithTraitCollection:0];

    MEMORY[0x24C20C470]();
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      sub_24A021808();
    }

    sub_24A021828();
  }

  v38 = 0;
  v1 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v39 = *(v2 + 16);
  while (v39 != v38)
  {
    if (v38 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v40 = *(v2 + 8 * v38++ + 32);
    if (v40)
    {
      v41 = v40;
      MEMORY[0x24C20C470]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();
      v1 = v43;
    }
  }

  return v1;
}

unint64_t sub_24A019DEC()
{
  result = qword_27EF2E8D0;
  if (!qword_27EF2E8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2E8D0);
  }

  return result;
}

uint64_t sub_24A019E38()
{
  v59 = *MEMORY[0x277D85DE8];
  type metadata accessor for BackgroundSuggestionsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_24A021658();
  v4 = sub_24A021658();
  v5 = [v2 pathForResource:v3 ofType:v4];

  if (!v5 || (v6 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init], v7 = objc_msgSend(v6, sel_contentsAtPath_, v5), v6, v5, !v7))
  {
    *(v0 + 16) = sub_24A02115C(MEMORY[0x277D84F90]);
    return v0;
  }

  v8 = sub_24A021478();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_24A021468();
  v57 = 0;
  v13 = [v11 propertyListWithData:v12 options:0 format:0 error:&v57];

  v14 = v57;
  if (v13)
  {
    sub_24A021948();
    sub_249FE4ED4(v8, v10);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E8F0);
    swift_dynamicCast();
    *(v0 + 16) = v57;
    return v0;
  }

  v16 = v14;
  v17 = sub_24A021428();

  swift_willThrow();
  v18 = sub_24A021468();
  v57 = 0;
  v19 = [v11 propertyListWithData:v18 options:0 format:0 error:&v57];

  v20 = v57;
  if (v19)
  {
    v51 = v10;
    sub_24A021948();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E8E8);
    swift_dynamicCast();
    v21 = v57;
    v22 = sub_24A02115C(MEMORY[0x277D84F90]);
    v23 = v21 + 64;
    v24 = 1 << v21[32];
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v21 + 8);
    v27 = (v24 + 63) >> 6;
    v56 = v21;

    v28 = 0;
    v54 = v8;
    v55 = v0;
    v52 = v21 + 64;
    for (i = v17; ; v17 = i)
    {
      if (!v26)
      {
        while (1)
        {
          v29 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v29 >= v27)
          {

            sub_249FE4ED4(v8, v51);

            *(v0 + 16) = v22;
            return v0;
          }

          v26 = *&v23[8 * v29];
          ++v28;
          if (v26)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      v29 = v28;
LABEL_18:
      v30 = __clz(__rbit64(v26)) | (v29 << 6);
      v31 = (*(v56 + 6) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(*(v56 + 7) + 8 * v30);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v22;
      v36 = sub_24A004BE0(v33, v32, 0);
      v38 = v22[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_30;
      }

      v42 = v37;
      if (v22[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = v36;
          sub_249FFB4A0();
          v36 = v47;
        }
      }

      else
      {
        sub_249FFA94C(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_24A004BE0(v33, v32, 0);
        if ((v42 & 1) != (v43 & 1))
        {
          result = sub_24A021C88();
          __break(1u);
          return result;
        }
      }

      v26 &= v26 - 1;
      v22 = v58;
      if (v42)
      {
        *(v58[7] + 8 * v36) = v34;
      }

      else
      {
        v58[(v36 >> 6) + 8] |= 1 << v36;
        v44 = v22[6] + 24 * v36;
        *v44 = v33;
        *(v44 + 8) = v32;
        *(v44 + 16) = 0;
        *(v22[7] + 8 * v36) = v34;
        v45 = v22[2];
        v40 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v40)
        {
          goto LABEL_31;
        }

        v22[2] = v46;
      }

      v28 = v29;
      v8 = v54;
      v0 = v55;
      v23 = v52;
    }
  }

  v48 = v20;
  v49 = sub_24A021428();

  swift_willThrow();
  v50 = sub_24A02115C(MEMORY[0x277D84F90]);
  sub_249FE4ED4(v8, v10);

  *(v0 + 16) = v50;
  return v0;
}

void sub_24A01A390(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return;
  }

  v3 = *(a1 + 16);
  v5 = *a1;
  v4 = *(a1 + 8);

  v6 = sub_24A004BE0(v5, v4, v3);
  if ((v7 & 1) == 0 || (v8 = *(*(v2 + 56) + 8 * v6), , , (v9 = *(v8 + 16)) == 0))
  {

    return;
  }

  v10 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 8)
  {
    v12 = *(v8 + i);
    if (!*(v12 + 16))
    {
      goto LABEL_6;
    }

    v13 = sub_24A004A10(0x656C797473, 0xE500000000000000);
    if (v14)
    {
      v48 = *(*(v12 + 56) + 8 * v13);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_5:

LABEL_6:
    if (!--v9)
    {

      return;
    }
  }

  v15 = *(&v47[0] + 1);
  if (!*(v12 + 16) || (v16 = *&v47[0], v17 = sub_24A004A10(0x726F6C6F63, 0xE500000000000000), (v18 & 1) == 0))
  {

    goto LABEL_5;
  }

  v19 = *(*(v12 + 56) + 8 * v17);
  swift_unknownObjectRetain();

  *&v47[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E8E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = v48;
  if (v16 == 0x64696C6F73 && v15 == 0xE500000000000000 || (sub_24A021C38() & 1) != 0)
  {

    v21 = 0;
  }

  else if (v16 == 0x72477261656E696CLL && v15 == 0xEE00746E65696461 || (sub_24A021C38() & 1) != 0)
  {

    v21 = 1;
  }

  else if (v16 == 0x72476C6169646172 && v15 == 0xEE00746E65696461 || (sub_24A021C38() & 1) != 0)
  {

    v21 = 2;
  }

  else if (v16 == 0x6D6F6F6C62 && v15 == 0xE500000000000000 || (sub_24A021C38() & 1) != 0)
  {

    v21 = 3;
  }

  else if (v16 == 0x657474656E676976 && v15 == 0xE800000000000000)
  {

    v21 = 4;
  }

  else
  {
    v39 = sub_24A021C38();

    if (v39)
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }
  }

  LOBYTE(v48) = v21;
  sub_24A01A99C(&v48, v47);
  v45 = v47[1];
  v46 = v47[0];
  v44 = v47[2];
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) == 3)
    {
      goto LABEL_19;
    }

LABEL_52:

    v37 = 0.0;
    v33 = 1.0;
    v34 = 1.0;
    v38 = 1.0;
LABEL_53:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_249FFF414(0, *(v10 + 2) + 1, 1, v10);
    }

    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    if (v41 >= v40 >> 1)
    {
      v10 = sub_249FFF414((v40 > 1), v41 + 1, 1, v10);
    }

    *(v10 + 2) = v41 + 1;
    v42 = &v10[96 * v41];
    v42[32] = v21;
    v43 = *(v47 + 3);
    *(v42 + 33) = v47[0];
    *(v42 + 9) = v43;
    *(v42 + 5) = v33;
    *(v42 + 6) = v34;
    *(v42 + 7) = v38;
    *(v42 + 8) = v37;
    *(v42 + 72) = v46;
    *(v42 + 88) = v45;
    *(v42 + 104) = v44;
    *(v42 + 60) = 0;
    goto LABEL_6;
  }

  if (sub_24A021A98() != 3)
  {
    goto LABEL_52;
  }

LABEL_19:
  v22 = v20 & 0xC000000000000001;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x24C20C690](0, v20);
    goto LABEL_22;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v20 + 32);
LABEL_22:
    v24 = v23;
    [v23 doubleValue];
    v26 = v25;

    if (v22)
    {
      v27 = MEMORY[0x24C20C690](1, v20);
    }

    else
    {
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_64;
      }

      v27 = *(v20 + 40);
    }

    v28 = v27;
    [v27 doubleValue];
    v30 = v29;

    if (v22)
    {
      v31 = MEMORY[0x24C20C690](2, v20);
    }

    else
    {
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_65;
      }

      v31 = *(v20 + 48);
    }

    v32 = v31;
    v33 = v26 / 255.0;
    v34 = v30 / 255.0;

    [v32 doubleValue];
    v36 = v35;

    v37 = 1.0;
    v38 = v36 / 255.0;
    goto LABEL_53;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_24A01A99C(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!*a1)
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
    v4 = swift_allocObject();
    __asm { FMOV            V1.2D, #1.0 }

    *(v4 + 16) = xmmword_24A024720;
    *(v4 + 32) = _Q1;
    *(v4 + 48) = _Q1;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0x3FF0000000000000;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
    v10 = &unk_285D26AC0;
  }

  else if (v3 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
    v4 = swift_allocObject();
    __asm { FMOV            V1.2D, #1.0 }

    *(v4 + 16) = xmmword_24A024720;
    *(v4 + 32) = _Q1;
    *(v4 + 48) = _Q1;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0x3FF0000000000000;
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
    v10 = &unk_285D26AF0;
  }

  else
  {
    if (v3 != 3)
    {
      static GradientProperties.vignetteProperties()(v14);
      v12 = v16;
      *a2 = v14[0];
      *(a2 + 8) = v15;
      *(a2 + 24) = v12;
      *(a2 + 32) = v17;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
    v4 = swift_allocObject();
    __asm { FMOV            V1.2D, #1.0 }

    *(v4 + 16) = xmmword_24A024720;
    *(v4 + 32) = _Q1;
    *(v4 + 48) = xmmword_24A024730;
    *(v4 + 64) = _Q1;
    *(v4 + 80) = xmmword_24A024740;
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
    v10 = &unk_285D25A38;
  }

  *(a2 + 32) = v4;
  *(a2 + 40) = v10;
}

uint64_t sub_24A01AB30()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_24A01AB8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_24A01AC00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji;
  swift_beginAccess();
  *&v1[v3] = a1;

  [v1 removeAllChildren];
  v4 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures;
  swift_beginAccess();
  *&v1[v4] = MEMORY[0x277D84F90];

  if (*(*&v1[v3] + 16))
  {
    sub_24A01B3F0();
    sub_24A01B590();
    sub_24A01B8D4(1);
  }
}

void (*sub_24A01ACB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24A01AD3C;
}

void sub_24A01AD3C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    [v4 removeAllChildren];
    v6 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures;
    swift_beginAccess();
    *&v4[v6] = MEMORY[0x277D84F90];

    if (*(*&v4[v5] + 16))
    {
      sub_24A01B3F0();
      sub_24A01B590();
      sub_24A01B8D4(1);
    }
  }

  free(v3);
}

double sub_24A01ADEC()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_sizeVariant;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = qword_24A027F00[v2];
  v4 = qword_24A027F18[v2];
  *(v0 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_itemSize) = v3;
  *(v0 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_minItemSize) = v3;
  *(v0 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_maxItemSize) = v4;
  sub_24A01B8D4(1);
  return result;
}

id sub_24A01AE74(void *a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji] = &unk_285D26B20;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_reverseTransition] = 0;
  v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_sizeVariant] = 1;
  v3 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiRenderer;
  type metadata accessor for EmojiRenderer();
  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  v5 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v4 + 24) = v5;
  [v5 setCountLimit_];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_itemSize] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_minItemSize] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_maxItemSize] = 0x4059000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_spacingFactor] = 0x3FD3333333333333;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_minSpacingFactor] = 0x3FD3333333333333;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_maxSpacingFactor] = 0x3FD999999999999ALL;
  v6 = &v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfRows];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfItemsInRow];
  *v7 = 0;
  v7[8] = 1;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_unlockProgress] = 0x3FF0000000000000;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for OffsetGridScene();
  v8 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 clearColor];
    [v10 setBackgroundColor_];

    a1 = v11;
  }

  return v8;
}

id sub_24A01B0A0(double a1, double a2)
{
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji] = &unk_285D26B58;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_reverseTransition] = 0;
  v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_sizeVariant] = 1;
  v5 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiRenderer;
  type metadata accessor for EmojiRenderer();
  v6 = swift_allocObject();
  *(v6 + 16) = 10;
  v7 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v6 + 24) = v7;
  [v7 setCountLimit_];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_itemSize] = 0x4054000000000000;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_minItemSize] = 0x4054000000000000;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_maxItemSize] = 0x4059000000000000;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_spacingFactor] = 0x3FD3333333333333;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_minSpacingFactor] = 0x3FD3333333333333;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_maxSpacingFactor] = 0x3FD999999999999ALL;
  v8 = &v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfRows];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfItemsInRow];
  *v9 = 0;
  v9[8] = 1;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_wakeProgress] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_unlockProgress] = 0x3FF0000000000000;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for OffsetGridScene();
  v10 = objc_msgSendSuper2(&v15, sel_initWithSize_, a1, a2);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  return v12;
}

id sub_24A01B2C4(uint64_t a1)
{
  [v1 removeAllChildren];
  v3 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures;
  swift_beginAccess();
  *&v1[v3] = MEMORY[0x277D84F90];

  v4 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji;
  swift_beginAccess();
  if (*(*&v1[v4] + 16))
  {
    sub_24A01B3F0();
    sub_24A01B590();
    sub_24A01B8D4(1);
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for OffsetGridScene();
  return objc_msgSendSuper2(&v6, sel_didMoveToView_, a1);
}

uint64_t sub_24A01B3F0()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji;
  result = swift_beginAccess();
  v15 = v0;
  v3 = *(v0 + v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures;
    v14 = v5;

    v7 = (v3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v16[0] = v8;
      v16[1] = v9;
      v17 = v10;
      sub_249FE4E60(v8, v9, v10);
      v11 = sub_249FE9AD4(v16);
      v12 = [v14 textureWithImage_];
      swift_beginAccess();
      v13 = v12;
      MEMORY[0x24C20C470]();
      if (*((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();
      swift_endAccess();

      sub_249FE4EC4(v8, v9, v10);
      v7 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_24A01B590()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      Height = CGRectGetHeight(v36);

      v6 = *&v0[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_itemSize];
      if (Height > v6)
      {
        v7 = v6 + v6 * *&v0[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_spacingFactor];
        v8 = 1;
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v6 = v7 + v6;
          ++v8;
          if (Height <= v6)
          {
            v10 = v9 | 1;
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

LABEL_10:
    v11 = &v0[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfRows];
    *v11 = v10;
    v34 = v11;
    v11[8] = 0;
    v12 = [v0 view];
    v33 = v2;
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      Width = CGRectGetWidth(v37);

      v15 = *&v0[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_itemSize];
      if (Width > v15)
      {
        v16 = v15 + v15 * *&v0[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_spacingFactor];
        v17 = 1;
        while (1)
        {
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v15 = v16 + v15;
          ++v17;
          if (Width <= v15)
          {
            v19 = v18 | 1;
            goto LABEL_18;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

LABEL_18:
    v20 = &v0[OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfItemsInRow];
    *v20 = v19;
    v20[8] = 0;
    v21 = v34;
    if (v34[8])
    {
LABEL_39:
      __break(1u);
      return;
    }

    v22 = 0;
    v23 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji;
    v24 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures;
    while (v22 < *v21)
    {
      v35 = v22;
      swift_beginAccess();
      swift_beginAccess();
      if (v20[8])
      {
        goto LABEL_38;
      }

      v25 = 0;
      while (v25 < *v20)
      {
        v26 = *(*&v0[v23] + 16);
        if (!v26)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v27 = (v25 + 1) % v26;
        v28 = *&v0[v24];
        if ((v28 & 0xC000000000000001) != 0)
        {

          v29 = MEMORY[0x24C20C690](v27, v28);
        }

        else
        {
          if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v29 = *(v28 + 8 * v27 + 32);
        }

        v30 = [objc_allocWithZone(MEMORY[0x277CDCF78]) initWithTexture_];

        v31 = v30;
        v32 = sub_24A021658();
        [v31 setName_];

        [v0 addChild_];
        ++v25;
        if (v20[8])
        {
          goto LABEL_38;
        }
      }

      v21 = v34;
      v22 = v35 + 1;
      if (v34[8])
      {
        goto LABEL_39;
      }
    }
  }
}

void sub_24A01B8D4(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = sub_24A021658();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = a1;
  v9[4] = sub_24A01C344;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A01AB8C;
  v9[3] = &block_descriptor_11;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 enumerateChildNodesWithName:v5 usingBlock:v7];
  _Block_release(v7);
}

void sub_24A01BA38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    swift_beginAccess();
    v13 = a1;
    sub_24A01BBD8();
    [v12 setPosition_];
    if (a6)
    {
      [v12 scaleToSize_];
    }

    swift_beginAccess();
    v14 = (a3 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfItemsInRow);
    if (*(a3 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfItemsInRow + 8))
    {
      goto LABEL_15;
    }

    v15 = *(a4 + 16);
    v16 = *v14;

    if (__OFSUB__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      if (v15 != v16 - 1)
      {
        swift_beginAccess();
        v21 = *(a4 + 16);
        v18 = __OFADD__(v21, 1);
        v20 = v21 + 1;
        if (!v18)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      swift_beginAccess();
      v17 = *(a5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(a5 + 16) = v19;
        swift_beginAccess();
        v20 = 0;
LABEL_10:
        *(a4 + 16) = v20;
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_24A01BBD8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    if (*(v0 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfRows + 8))
    {
      __break(1u);
    }

    else
    {
      [v2 bounds];
      if ((*(v0 + OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_numberOfItemsInRow + 8) & 1) == 0)
      {
        [v2 bounds];

        return;
      }
    }

    __break(1u);
  }
}

id sub_24A01BDB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffsetGridScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_24A01BED8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24A01ACB4(v2);
  return sub_249FE4784;
}

uint64_t sub_24A01BF4C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_sizeVariant;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

double sub_24A01BFA4(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_sizeVariant;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_24A01ADEC();
}

double (*sub_24A01BFFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_24A01C064;
}

double sub_24A01C064(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24A01ADEC();
  }

  return result;
}

double sub_24A01C098()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_24A01C0EC(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_24A01C154;
}

double sub_24A01C158()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_24A01C1AC(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  *(v6 + v7) = a1;
  sub_24A01B8D4(1);
}

uint64_t (*sub_24A01C204(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_24A01C36C;
}

void sub_24A01C26C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24A01B8D4(1);
  }
}

void sub_24A01C2A4()
{
  v1 = *v0;
  [v1 removeAllChildren];
  v2 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emojiTextures;
  swift_beginAccess();
  *&v1[v2] = MEMORY[0x277D84F90];

  v3 = OBJC_IVAR____TtC11EmojiPoster15OffsetGridScene_emoji;
  swift_beginAccess();
  if (*(*&v1[v3] + 16))
  {
    sub_24A01B3F0();
    sub_24A01B590();
    sub_24A01B8D4(1);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A01C370@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *(v15 + 10) = *(v3 + 74);
  v14[3] = v6;
  v15[0] = v7;
  v14[2] = v5;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  *(a2 + 74) = *(v3 + 74);
  a2[3] = v10;
  a2[4] = v11;
  a2[2] = v9;
  return sub_249FDDE00(v14, v13);
}

id sub_24A01C418(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v19 = a1[3];
  v20[0] = v3;
  *(v20 + 10) = *(a1 + 74);
  v4 = a1[1];
  v16 = *a1;
  v5 = (*a2 + OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration);
  v17 = v4;
  v18 = v2;
  swift_beginAccess();
  v6 = v5[1];
  v21[0] = *v5;
  v21[1] = v6;
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  *(v22 + 10) = *(v5 + 74);
  v21[3] = v8;
  v22[0] = v9;
  v21[2] = v7;
  v11 = v19;
  v10 = v20[0];
  v12 = v18;
  *(v5 + 74) = *(v20 + 10);
  v5[3] = v11;
  v5[4] = v10;
  v5[2] = v12;
  v13 = v17;
  *v5 = v16;
  v5[1] = v13;
  sub_249FDDE00(&v16, v15);
  sub_249FDDE80(v21);
  return sub_24A01CC18();
}

uint64_t sub_24A01C4E8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v12 = v3[3];
  v5 = v12;
  v13[0] = v6;
  *(v13 + 10) = *(v3 + 74);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  v11[2] = v4;
  *(a1 + 74) = *(v13 + 10);
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_249FDDE00(v11, v10);
}

id sub_24A01C578(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration);
  swift_beginAccess();
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 10) = *(v3 + 74);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  *(v3 + 74) = *(a1 + 74);
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  sub_249FDDE80(v9);
  return sub_24A01CC18();
}

uint64_t (*sub_24A01C614(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A01D40C;
}

double sub_24A01C678()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_24A01C6C8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A01C72C;
}

double sub_24A01C730()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_unlockProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_24A01C780(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = a2;
  return sub_24A01CC18();
}

uint64_t (*sub_24A01C7D0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A01D40C;
}

id sub_24A01C834(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24A01CC18();
  }

  return result;
}

id sub_24A01C870()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for BackgroundViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer;
  v2 = *&v0[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer];
  result = [v0 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame_];
    v13 = *&v0[v1];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 blackColor];
    v17 = [v16 CGColor];

    [v15 setBackgroundColor_];
    [*&v0[v1] setOpacity_];
    result = [v0 view];
    if (result)
    {
      v18 = result;
      v19 = [result layer];

      [v19 addSublayer_];
      return sub_24A01CC18();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_24A01CA6C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BackgroundViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_24A01CC18()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = &v0[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration];
    swift_beginAccess();
    v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v3[1] green:v3[2] blue:v3[3] alpha:v3[4]];
    [v2 setBackgroundColor_];

    v5 = OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_wakeProgress;
    swift_beginAccess();
    v6 = (1.0 - *&v0[v5]) * 0.2 + 0.0;
    *&v6 = v6;
    return [*&v0[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer] setOpacity_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BackgroundViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BackgroundViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_usesDimmingLayer] = 1;
  v6 = &v3[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration];
  v7 = [objc_opt_self() lightGrayColor];
  EmojiPosterBackgroundColor.init(_:)(v7);
  v8 = v13[2];
  *(v6 + 8) = v13[1];
  *v6 = 0;
  *(v6 + 24) = v8;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 44) = 0;
  *&v3[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundIndex] = 0;
  v9 = OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v3[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_wakeProgress] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_unlockProgress] = 0x3FF0000000000000;
  if (a2)
  {
    v10 = sub_24A021658();
  }

  else
  {
    v10 = 0;
  }

  v13[0].receiver = v3;
  v13[0].super_class = type metadata accessor for BackgroundViewController();
  v11 = [(objc_super *)v13 initWithNibName:v10 bundle:a3];

  return v11;
}

id BackgroundViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BackgroundViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_usesDimmingLayer] = 1;
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundConfiguration];
  v4 = [objc_opt_self() lightGrayColor];
  EmojiPosterBackgroundColor.init(_:)(v4);
  v5 = v9[2];
  *(v3 + 8) = v9[1];
  *v3 = 0;
  *(v3 + 24) = v5;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 44) = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_backgroundIndex] = 0;
  v6 = OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_unlockProgress] = 0x3FF0000000000000;
  v9[0].receiver = v1;
  v9[0].super_class = type metadata accessor for BackgroundViewController();
  v7 = [(objc_super *)v9 initWithCoder:a1];

  if (v7)
  {
  }

  return v7;
}

id BackgroundViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_set_3Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  return sub_24A01CC18();
}

void sub_24A01D410()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for EmojiGreyscaleReplicatorViewController();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = sub_24A01DD08();
  v5 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emojiLayer];
  v6 = [v4 CGImage];
  [v5 setContents_];

  [v4 size];
  [v5 frame];
  [v5 setFrame_];
  v7 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_horizontalReplicatorLayer];
  [v7 addSublayer_];
  v8 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_verticalReplicatorLayer];
  [v8 addSublayer_];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 layer];

  [v11 addSublayer_];
  v12 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_secondaryEmojiLayer];
  v13 = [v4 CGImage];
  [v12 setContents_];

  [v4 size];
  [v12 frame];
  [v12 setFrame_];
  v14 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetHorizontalReplicatorLayer];
  [v14 addSublayer_];
  v15 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetVerticalReplicatorLayer];
  [v15 addSublayer_];
  v16 = [v0 view];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 layer];

    [v18 addSublayer_];
    sub_24A01D758();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_24A01D758()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scale;
  v2 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scale];
  v3 = v2 * 100.0;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  v5 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emojiLayer];
  [v5 frame];
  [v5 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_secondaryEmojiLayer];
  [v6 frame];
  [v6 setFrame_];
  v7 = [v0 view];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;

  v11 = ceil(v10 / v3);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = [v0 view];
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;

  v17 = ceil(v16 / v3);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = [v0 view];
  if (!v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v19;
  v78 = v4;
  [v19 bounds];
  v22 = v21;

  v23 = [v0 view];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  v25 = v2 * 0.2 + 1.65;
  v26 = v12 | 1;
  v79 = v3 * v25;
  v27 = v22 * 0.5 - (v3 * ((v12 | 1) / 2 + 1) - v3 * 0.5 + (v3 * v25 - v3) * (((v12 | 1) / 2 + 1) + -1.0));
  [v23 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = *&v0[v1];
  v77 = v27;
  v37 = v27 - (v36 + v36) / 0.098;
  v81.origin.x = v29 + v37;
  v81.size.width = v33 - v37;
  v38 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_verticalReplicatorLayer];
  v39 = v36 / 0.098;
  v40 = v36 / 0.049;
  v81.origin.y = v31;
  v81.size.height = v35;
  v82 = CGRectInset(v81, v39, v40);
  [v38 setFrame_];
  v41 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_horizontalReplicatorLayer];
  v83.size.width = v3 * (v25 * (v26 + -1.0) + v26);
  v42 = *&v0[v1];
  v43 = v42 / 0.098;
  v44 = v42 / 0.049;
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.height = v3;
  v84 = CGRectInset(v83, v43, v44);
  [v41 setFrame_];
  [v41 setInstanceCount_];
  CATransform3DMakeTranslation(&v80, v3 * v25, 0.0, 0.0);
  [v41 setInstanceTransform_];
  [v38 setInstanceCount_];
  CATransform3DMakeTranslation(&v80, 0.0, v3 * v25, 0.0);
  [v38 setInstanceTransform_];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v45;
  [v45 bounds];
  v75 = v48;
  v76 = v47;
  v50 = v49;
  v52 = v51;

  v53 = [v0 view];
  if (v53)
  {
    v54 = v53;
    v55 = v3 * (v25 * 0.5);
    v56 = v52 - v55;
    [v53 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v65 = *&v0[v1];
    v66 = v77 - (v65 + v65) / 0.098;
    v67 = v62 - v66;
    v85.origin.x = v58 + v66 - v55;
    v85.size.width = v55 + v67;
    v68 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetHorizontalReplicatorLayer];
    v69 = v65 / 0.098;
    v70 = v65 / 0.049;
    v85.origin.y = v60;
    v85.size.height = v64;
    v86 = CGRectInset(v85, v69, v70);
    [v68 setFrame_];
    v71 = *&v0[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetVerticalReplicatorLayer];
    v72 = *&v0[v1];
    v73 = v72 / 0.098;
    v74 = v72 / 0.049;
    v87.size.width = v75;
    v87.origin.x = v76;
    v87.origin.y = v55 + v50;
    v87.size.height = v56;
    v88 = CGRectInset(v87, v73, v74);
    [v71 setFrame_];
    [v68 setInstanceCount_];
    CATransform3DMakeTranslation(&v80, v79, 0.0, 0.0);
    [v68 setInstanceTransform_];
    [v71 setInstanceCount_];
    CATransform3DMakeTranslation(&v80, 0.0, v79, 0.0);
    [v71 setInstanceTransform_];
    [v78 commit];
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_24A01DD08()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v1 setOpaque_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v1 format:{100.0, 100.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A01EA1C;
  *(v4 + 24) = v3;
  v25 = sub_249FF0340;
  v26 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_249FEA0AC;
  v24 = &block_descriptor_12;
  v5 = _Block_copy(&aBlock);
  v6 = v0;

  v7 = [v2 imageWithActions_];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v2;
    v11 = [objc_opt_self() grayColor];
    v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v1 format:{100.0, 100.0}];
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = v6;
    *(v13 + 40) = vdupq_n_s64(0x4059000000000000uLL);
    *(v13 + 56) = v7;
    *(v13 + 64) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_24A01EA3C;
    *(v14 + 24) = v13;
    v25 = sub_24A00F7AC;
    v26 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_249FEA0AC;
    v24 = &block_descriptor_19;
    v15 = _Block_copy(&aBlock);
    v16 = v6;
    v17 = v7;
    v18 = v11;

    v19 = [v12 imageWithActions_];

    _Block_release(v15);
    v20 = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

void sub_24A01E080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A0246F0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  *(inited + 64) = sub_249FEA210();
  *(inited + 40) = v4;
  sub_24A020404(inited);
  swift_setDeallocating();
  sub_249FEA25C(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_24A021658();
  type metadata accessor for Key(0);
  sub_249FEA2C4();
  v7 = sub_24A021608();

  v8 = [v5 initWithString:v6 attributes:v7];

  [v8 size];
  [v8 drawInRect_];
}

void sub_24A01E22C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7, void *a8)
{
  c = [a1 CGContext];
  CGContextTranslateCTM(c, 0.0, 100.0);
  CGContextScaleCTM(c, 1.0, -1.0);
  v14 = [a7 CGImage];
  if (v14)
  {
    v15 = v14;
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGContextClipToMask(c, v18, v14);

    [a8 setFill];
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGContextFillRect(c, v19);
    CGContextTranslateCTM(c, 0.0, -100.0);
    CGContextScaleCTM(c, 1.0, -1.0);
  }

  else
  {
    __break(1u);
  }
}

void sub_24A01E354(void *a1)
{
  v3 = [a1 state];
  if (v3 <= 2 && (v3 == 1 || v3 == 2))
  {
    [a1 scale];
    *(v1 + OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scale) = v4;

    sub_24A01D758();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scaleDelta) = 0x3FF0000000000000;
  }
}

id EmojiGreyscaleReplicatorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiGreyscaleReplicatorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emoji];
  *v6 = 3113983984;
  *(v6 + 1) = 0xA400000000000000;
  *&v3[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emojiSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v3[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_spacingFactor] = 0x3FFA666666666666;
  *&v3[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scale] = 0x3FEF5C28F5C28F5CLL;
  *&v3[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scaleDelta] = 0x3FF0000000000000;
  v7 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emojiLayer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v8 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_secondaryEmojiLayer;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v9 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_horizontalReplicatorLayer;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v10 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetHorizontalReplicatorLayer;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v11 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_verticalReplicatorLayer;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v12 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetVerticalReplicatorLayer;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  if (a2)
  {
    v13 = sub_24A021658();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for EmojiGreyscaleReplicatorViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id EmojiGreyscaleReplicatorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiGreyscaleReplicatorViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emoji];
  *v3 = 3113983984;
  *(v3 + 1) = 0xA400000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emojiSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v1[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_spacingFactor] = 0x3FFA666666666666;
  *&v1[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scale] = 0x3FEF5C28F5C28F5CLL;
  *&v1[OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_scaleDelta] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_emojiLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v5 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_secondaryEmojiLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_horizontalReplicatorLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v7 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetHorizontalReplicatorLayer;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v8 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_verticalReplicatorLayer;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v9 = OBJC_IVAR____TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController_offsetVerticalReplicatorLayer;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EmojiGreyscaleReplicatorViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id EmojiGreyscaleReplicatorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiGreyscaleReplicatorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24A01EA8C()
{
  v1 = 2.0;
  if (!*(v0 + 16))
  {
    v1 = 3.0;
  }

  return dbl_24A028010[*(v0 + 16)] / v1 * (*(v0 + 24) / dbl_24A028050[*(v0 + 16)]);
}

double sub_24A01EACC()
{
  v1 = 2.0;
  if (!*(v0 + 16))
  {
    v1 = 3.0;
  }

  return dbl_24A028030[*(v0 + 16)] / v1 * (*(v0 + 24) / dbl_24A028050[*(v0 + 16)]);
}

id Array<A>.attributedText.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;
      if (*v4)
      {
        v5 = objc_allocWithZone(MEMORY[0x277D74208]);
        sub_249FE4E70(v10, v11);
        v6 = sub_24A021468();
        v7 = [v5 initWithImageContent_];

        type metadata accessor for Key(0);
        sub_249FEA2C4();
        v8 = sub_24A021608();
        v9 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v7 attributes:v8];
      }

      else
      {
        v13 = objc_allocWithZone(MEMORY[0x277CCA898]);

        v8 = sub_24A021658();
        v9 = [v13 initWithString_];
      }

      [v2 appendAttributedString_];
      sub_249FE4EC4(v10, v11, v12);

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_24A01ECC0(uint64_t a1)
{
  v2 = sub_24A020560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A01ECFC(uint64_t a1)
{
  v2 = sub_24A020560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A01ED38()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_24A01ED74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v6 || (sub_24A021C38() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A02AB40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A021C38();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A01EE54(uint64_t a1)
{
  v2 = sub_24A02050C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A01EE90(uint64_t a1)
{
  v2 = sub_24A02050C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A01EECC()
{
  sub_24A021CB8();
  MEMORY[0x24C20C980](0);
  return sub_24A021CE8();
}

uint64_t sub_24A01EF10()
{
  sub_24A021CB8();
  MEMORY[0x24C20C980](0);
  return sub_24A021CE8();
}

uint64_t sub_24A01EF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A021C38();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A01EFD0(uint64_t a1)
{
  v2 = sub_24A020608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A01F00C(uint64_t a1)
{
  v2 = sub_24A020608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Emoji.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E9F8);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2EA00);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2EA08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v25 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A02050C();
  sub_24A021D28();
  if (v13)
  {
    LOBYTE(v26) = 1;
    sub_24A020560();
    v14 = v21;
    sub_24A021B98();
    v26 = v24;
    v27 = v25;
    sub_24A0205B4();
    v15 = v23;
    sub_24A021C08();
    (*(v22 + 8))(v14, v15);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_24A020608();
    sub_24A021B98();
    v16 = v20;
    sub_24A021BC8();
    (*(v19 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Emoji.hash(into:)()
{
  if (*(v0 + 16))
  {
    MEMORY[0x24C20C980](1);

    return sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);

    return sub_24A021708();
  }
}

uint64_t Emoji.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24A021CB8();
  if (v1)
  {
    MEMORY[0x24C20C980](1);
    sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);
    sub_24A021708();
  }

  return sub_24A021CE8();
}

uint64_t Emoji.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2EA20);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v32[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2EA28);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2EA30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32[-v10];
  v12 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24A02050C();
  v13 = v39;
  sub_24A021D08();
  if (!v13)
  {
    v34 = v5;
    v39 = v9;
    v14 = v38;
    v15 = v11;
    v16 = sub_24A021B88();
    v17 = (2 * *(v16 + 16)) | 1;
    v42 = v16;
    v43 = v16 + 32;
    v44 = 0;
    v45 = v17;
    v18 = sub_249FD6554();
    v19 = v8;
    if (v18 == 2 || v44 != v45 >> 1)
    {
      v24 = sub_24A021A08();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE98);
      *v26 = &type metadata for Emoji;
      sub_24A021B08();
      sub_24A0219F8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v18;
      v20 = v39;
      if (v18)
      {
        LOBYTE(v40) = 1;
        sub_24A020560();
        sub_24A021AF8();
        sub_24A02065C();
        v21 = v35;
        sub_24A021B78();
        (*(v37 + 8))(v4, v21);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        v22 = v40;
        v23 = v41;
      }

      else
      {
        LOBYTE(v40) = 0;
        sub_24A020608();
        v28 = v7;
        sub_24A021AF8();
        v29 = v19;
        v30 = v34;
        v22 = sub_24A021B38();
        v23 = v31;
        (*(v36 + 8))(v28, v30);
        (*(v39 + 8))(v15, v29);
        swift_unknownObjectRelease();
      }

      *v14 = v22;
      *(v14 + 8) = v23;
      *(v14 + 16) = v33 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_24A01F9CC()
{
  v1 = *(v0 + 16);
  sub_24A021CB8();
  if (v1)
  {
    MEMORY[0x24C20C980](1);
    sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);
    sub_24A021708();
  }

  return sub_24A021CE8();
}

uint64_t sub_24A01FA54()
{
  if (*(v0 + 16))
  {
    MEMORY[0x24C20C980](1);

    return sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);

    return sub_24A021708();
  }
}

uint64_t sub_24A01FAE8()
{
  v1 = *(v0 + 16);
  sub_24A021CB8();
  if (v1)
  {
    MEMORY[0x24C20C980](1);
    sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);
    sub_24A021708();
  }

  return sub_24A021CE8();
}

uint64_t sub_24A01FB6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24A0213E8();
    if (v10)
    {
      v11 = sub_24A021408();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24A0213F8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24A0213E8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24A021408();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24A0213F8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24A01FD9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24A01FF2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_249FE4ED4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_24A01FB6C(v13, a3, a4, &v12);
  v10 = v4;
  sub_249FE4ED4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_24A01FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24A0213E8();
  v11 = result;
  if (result)
  {
    result = sub_24A021408();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24A0213F8();
  sub_24A01FB6C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24A01FFE4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_249FE4E70(a3, a4);
          return sub_24A01FD9C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s11EmojiPoster0A0O2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_249FE4E60(*a2, *(a2 + 8), 1);
      sub_249FE4E60(v3, v2, 1);
      v8 = sub_24A01FFE4(v3, v2, v6, v5);
      sub_249FE4EC4(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_249FE4EC4(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    sub_249FE4E60(*a2, *(a2 + 8), v7);
    sub_249FE4E60(v3, v2, v4);
    sub_249FE4EC4(v3, v2, v4);
    sub_249FE4EC4(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = sub_24A021C38();
    sub_249FE4E60(v6, v5, 0);
    sub_249FE4E60(v3, v2, 0);
    sub_249FE4EC4(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  sub_249FE4E60(v13, v2, 0);
  sub_249FE4E60(v3, v2, 0);
  sub_249FE4EC4(v3, v2, 0);
  sub_249FE4EC4(v3, v2, 0);
  return 1;
}

unint64_t sub_24A020308(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_24A021AD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_24A004A10(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A020404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E748);
    v3 = sub_24A021AD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A021280(v4, &v11);
      v5 = v11;
      result = sub_24A004A88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_249FF7BBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A02050C()
{
  result = qword_2810DAA10;
  if (!qword_2810DAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DAA10);
  }

  return result;
}

unint64_t sub_24A020560()
{
  result = qword_27EF2EA10;
  if (!qword_27EF2EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2EA10);
  }

  return result;
}

unint64_t sub_24A0205B4()
{
  result = qword_27EF2EA18;
  if (!qword_27EF2EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2EA18);
  }

  return result;
}

unint64_t sub_24A020608()
{
  result = qword_2810DA9E8;
  if (!qword_2810DA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9E8);
  }

  return result;
}

unint64_t sub_24A02065C()
{
  result = qword_27EF2EA38;
  if (!qword_27EF2EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2EA38);
  }

  return result;
}

unint64_t sub_24A0206B4()
{
  result = qword_2810DA9C8;
  if (!qword_2810DA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A020744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A02078C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_24A02092C()
{
  result = qword_27EF2EA40;
  if (!qword_27EF2EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2EA40);
  }

  return result;
}

unint64_t sub_24A020984()
{
  result = qword_27EF2EA48;
  if (!qword_27EF2EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2EA48);
  }

  return result;
}

unint64_t sub_24A0209DC()
{
  result = qword_27EF2EA50;
  if (!qword_27EF2EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2EA50);
  }

  return result;
}

unint64_t sub_24A020A34()
{
  result = qword_2810DA9F8;
  if (!qword_2810DA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9F8);
  }

  return result;
}

unint64_t sub_24A020A8C()
{
  result = qword_2810DA9F0;
  if (!qword_2810DA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9F0);
  }

  return result;
}

unint64_t sub_24A020AE4()
{
  result = qword_2810DA9D8;
  if (!qword_2810DA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9D8);
  }

  return result;
}

unint64_t sub_24A020B3C()
{
  result = qword_2810DA9E0;
  if (!qword_2810DA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9E0);
  }

  return result;
}

unint64_t sub_24A020B94()
{
  result = qword_2810DAA00;
  if (!qword_2810DAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DAA00);
  }

  return result;
}

unint64_t sub_24A020BEC()
{
  result = qword_2810DAA08;
  if (!qword_2810DAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DAA08);
  }

  return result;
}

unint64_t sub_24A020C40(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4C8);
  v3 = sub_24A021AD8();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_24A004B1C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_24A004B1C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24A020D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4D0);
    v3 = sub_24A021AD8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24A004B1C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A020E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2EA58);
    v3 = sub_24A021AD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24A004A88(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_24A020F10(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4B8);
  v3 = sub_24A021AD8();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_24A004B60(v4, v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = v4;
    v14[1] = v5;
    v15 = (v3[7] + v13);
    *v15 = v7;
    v15[1] = result;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v7 = *(v12 - 1);
    v20 = *v12;

    v10 = sub_24A004B60(v4, v5);
    v12 = v19;
    result = v20;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24A02103C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4C0);
  v3 = sub_24A021AD8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_24A004B1C(v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v11 = v3[7] + 24 * result;
    *v11 = v4;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7 & 1;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    sub_249FE4E60(v4, v6, v7 & 1);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v10 - 3);
    v4 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_24A004B1C(v5);
    v10 += 32;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24A02115C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4B0);
    v3 = sub_24A021AD8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_249FE4E60(v5, v6, v7);

      result = sub_24A004BE0(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A021280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}