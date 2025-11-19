uint64_t sub_2546ACC1C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(a4 + 48) + v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + v17);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        swift_unknownObjectRetain();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      result = swift_unknownObjectRetain();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2546ACDA4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2546ACF78(uint64_t a1)
{

  return MEMORY[0x2821FE398](a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

__n128 sub_2546ACF98(__n128 *a1)
{
  result = *(v2 - 144);
  a1[1] = result;
  a1[3].n128_u64[1] = v1;
  return result;
}

__n128 sub_2546ACFB0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(v4 - 192);
  a1[1] = result;
  a1[3].n128_u64[1] = v2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_2546ACFDC()
{

  return swift_allocObject();
}

uint64_t sub_2546AD00C()
{

  return swift_allocObject();
}

__n128 sub_2546AD028(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

uint64_t sub_2546AD034()
{

  return swift_arrayInitWithCopy();
}

void sub_2546AD054(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

__n128 sub_2546AD064(__n128 *a1)
{
  result = *(v1 - 144);
  a1[1] = result;
  return result;
}

uint64_t sub_2546AD0C8()
{

  return swift_allocObject();
}

uint64_t FeatureRegistry.__allocating_init()()
{
  v1 = sub_2546B5354();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Paths.featureManagerBaseDirectory()();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  FeatureRegistry.init(with:)(v4);
  return v7;
}

uint64_t FeatureRegistry.feature(for:)@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16) && (v4 = sub_2546B01B4(), v6 = sub_2546A5044(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(v3 + 56) + 32 * v6;
    v9 = *(v8 + 8);
    *a1 = *v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = *(v8 + 16);

    swift_unknownObjectRetain();
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t FeatureRegistry.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FeatureRegistry.init(with:)(a1);
  return v5;
}

char *FeatureRegistry.init(with:)(uint64_t a1)
{
  sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
  sub_2546B01B4();
  *(v1 + 2) = sub_2546B54A4();
  type metadata accessor for Transformer();
  sub_2546B01B4();
  *(v1 + 3) = sub_2546B54A4();
  sub_2546B01B4();
  *(v1 + 4) = sub_2546B54A4();
  v3 = OBJC_IVAR____TtC28HumanUnderstandingFoundation15FeatureRegistry_baseDir;
  v4 = sub_2546B5354();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v6 = sub_2546AD430();
  v7 = *(v1 + 2);
  *(v1 + 2) = v6;

  v8 = sub_2546AD860(v6);

  v9 = *(v1 + 3);
  *(v1 + 3) = v8;

  v10 = *(v1 + 2);

  sub_2546AE50C(v11, v8);
  v13 = v12;

  (*(v5 + 8))(a1, v4);
  swift_beginAccess();
  v14 = *(v1 + 4);
  *(v1 + 4) = v13;

  return v1;
}

uint64_t sub_2546AD430()
{
  if (qword_27F60F4C8 != -1)
  {
LABEL_50:
    swift_once();
  }

  v0 = 0;
  v34 = qword_27F60FCF8;
  v35 = *(qword_27F60FCF8 + 16);
  v33 = qword_27F60FCF8 + 32;
  v1 = MEMORY[0x277D84F90];
  while (v0 != v35)
  {
    if (v0 >= *(v34 + 16))
    {
      goto LABEL_46;
    }

    v40 = *(v33 + 16 * v0);
    v2 = [swift_unknownObjectRetain() featureNames];
    v3 = sub_2546B55D4();

    v4 = *(v3 + 16);
    if (v4)
    {
      v36 = v1;
      v44 = MEMORY[0x277D84F90];
      sub_2546B1680(0, v4, 0);
      v7 = sub_2546B1CF0(v3);
      v8 = 0;
      v43 = v3 + 56;
      v37 = v3 + 64;
      v38 = v4;
      v39 = v3;
      if ((v7 & 0x8000000000000000) == 0)
      {
        while (v7 < 1 << *(v3 + 32))
        {
          v9 = v7 >> 6;
          if ((*(v43 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
          {
            goto LABEL_41;
          }

          if (*(v3 + 36) != v5)
          {
            goto LABEL_42;
          }

          v42 = v6;
          v41 = v5;
          v10 = (*(v3 + 48) + 16 * v7);
          v12 = *v10;
          v11 = v10[1];
          v14 = *(v44 + 16);
          v13 = *(v44 + 24);
          swift_unknownObjectRetain();

          if (v14 >= v13 >> 1)
          {
            result = sub_2546B1680(v13 > 1, v14 + 1, 1);
          }

          *(v44 + 16) = v14 + 1;
          v16 = v44 + 32 * v14;
          *(v16 + 32) = v12;
          *(v16 + 40) = v11;
          *(v16 + 48) = v40;
          if (v42)
          {
            __break(1u);
            return result;
          }

          v3 = v39;
          v17 = 1 << *(v39 + 32);
          if (v7 >= v17)
          {
            goto LABEL_43;
          }

          v18 = *(v43 + 8 * v9);
          if ((v18 & (1 << v7)) == 0)
          {
            goto LABEL_44;
          }

          if (*(v39 + 36) != v41)
          {
            goto LABEL_45;
          }

          v19 = v18 & (-2 << (v7 & 0x3F));
          if (v19)
          {
            v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = v9 << 6;
            v21 = v9 + 1;
            v22 = (v37 + 8 * v9);
            while (v21 < (v17 + 63) >> 6)
            {
              v24 = *v22++;
              v23 = v24;
              v20 += 64;
              ++v21;
              if (v24)
              {
                sub_2546B0128(v7, v41, 0);
                v17 = __clz(__rbit64(v23)) + v20;
                goto LABEL_23;
              }
            }

            sub_2546B0128(v7, v41, 0);
          }

LABEL_23:
          if (++v8 == v38)
          {
            swift_unknownObjectRelease();

            v25 = v44;
            v1 = v36;
            goto LABEL_28;
          }

          v6 = 0;
          v5 = *(v39 + 36);
          v7 = v17;
          if (v17 < 0)
          {
            break;
          }
        }
      }

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
      goto LABEL_50;
    }

    swift_unknownObjectRelease();

    v25 = MEMORY[0x277D84F90];
LABEL_28:
    v26 = *(v25 + 16);
    v27 = *(v1 + 16);
    if (__OFADD__(v27, v26))
    {
      goto LABEL_47;
    }

    v28 = v25;
    if (!swift_isUniquelyReferenced_nonNull_native() || v27 + v26 > *(v1 + 24) >> 1)
    {
      sub_2546A88B4();
      v1 = v29;
    }

    ++v0;
    if (*(v28 + 16))
    {
      if ((*(v1 + 24) >> 1) - *(v1 + 16) < v26)
      {
        goto LABEL_48;
      }

      sub_2546A2DF4(&qword_27F60F718, &qword_2546B65B0);
      swift_arrayInitWithCopy();

      if (v26)
      {
        v30 = *(v1 + 16);
        v31 = __OFADD__(v30, v26);
        v32 = v30 + v26;
        if (v31)
        {
          goto LABEL_49;
        }

        *(v1 + 16) = v32;
      }
    }

    else
    {

      if (v26)
      {
        __break(1u);
        return sub_2546AE7E0(v1, &qword_27F60F7B8, &qword_2546B65B8, sub_2546AF70C);
      }
    }
  }

  return sub_2546AE7E0(v1, &qword_27F60F7B8, &qword_2546B65B8, sub_2546AF70C);
}

uint64_t sub_2546AD860(uint64_t a1)
{
  v138 = a1;
  v144[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2546B5354();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  isUniquelyReferenced_nonNull_native = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v121 = &v120 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v132 = &v120 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v125 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v120 - v18;
  v122 = type metadata accessor for Transformer();
  v20 = sub_2546B54A4();
  v134 = v4[2];
  v135 = v4 + 2;
  v134(v17, v1 + OBJC_IVAR____TtC28HumanUnderstandingFoundation15FeatureRegistry_baseDir, v3);
  sub_2546B5324();
  v133 = v4;
  v136 = v4[1];
  v137 = v4 + 1;
  v136(v17, v3);
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_2546B5304();
  v144[0] = 0;
  v23 = [v21 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:1 error:v144];

  v24 = v144[0];
  v25 = &off_2546B6000;
  if (!v23)
  {
    v101 = v144[0];
    v2 = sub_2546B52D4();

    swift_willThrow();
    if (qword_27F60F4C0 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v26 = sub_2546B5574();
  v27 = v24;

  v131 = *(v26 + 16);
  if (v131)
  {
    v130 = sub_2546A1AC4(0, &qword_27F60F7A0, 0x277CBFF20);
    v28 = 0;
    v142 = 0;
    v129 = v26 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    *&v29 = 136315394;
    v120 = v29;
    isUniquelyReferenced_nonNull_native = v125;
    v124 = v3;
    v123 = v19;
    v128 = v26;
    while (v28 < *(v26 + 16))
    {
      v30 = v134;
      v31 = v133[9];
      v140 = v28;
      v134(isUniquelyReferenced_nonNull_native, v129 + v31 * v28, v3);
      v32 = v132;
      v33 = sub_2546B01B4();
      v30(v33);
      v34 = v32;
      v35 = v142;
      v36 = sub_2546AE894(v34);
      if (!v35)
      {
        v142 = 0;
        v139 = v36;
        v38 = [v36 modelDescription];
        v39 = [v38 inputDescriptionsByName];

        v127 = sub_2546A1AC4(0, &qword_27F60F6E8, 0x277CBFEE0);
        v40 = sub_2546B5494();

        v3 = 0;
        v42 = v40 + 64;
        v41 = *(v40 + 64);
        v141 = v40;
        v43 = *(v40 + 32);
        sub_2546B0134();
        v2 = v45 & v44;
        v25 = ((v46 + 63) >> 6);
        v19 = MEMORY[0x277D84F90];
        if ((v45 & v44) == 0)
        {
          goto LABEL_8;
        }

        do
        {
LABEL_12:
          sub_2546B01F0(__clz(__rbit64(v2)));
          v50 = *v48;
          v49 = v48[1];
          v51 = v138;
          v52 = *(v138 + 16);

          if (!v52 || (v53 = sub_2546A5044(v50, v49), (v54 & 1) == 0))
          {
            if (qword_27F60F4C0 != -1)
            {
              sub_2546B0150();
              swift_once();
            }

            v88 = sub_2546B53D4();
            sub_2546A1C48(v88, qword_27F60FCE0);
            v89 = v121;
            isUniquelyReferenced_nonNull_native = v125;
            v3 = v124;
            v134(v121, v125, v124);

            v90 = sub_2546B53B4();
            v2 = sub_2546B5604();

            if (os_log_type_enabled(v90, v2))
            {
              v25 = swift_slowAlloc();
              *&v143 = swift_slowAlloc();
              v144[0] = v143;
              *v25 = v120;
              sub_2546B00D0();
              v127 = v90;
              v91 = sub_2546B5804();
              v93 = v92;
              sub_2546B01C0();
              v94();
              v95 = sub_2546A4A68(v91, v93, v144);

              *(v25 + 1) = v95;
              *(v25 + 6) = 2080;
              v96 = sub_2546A4A68(v50, v49, v144);

              *(v25 + 14) = v96;
              v97 = v127;
              _os_log_impl(&dword_2546A0000, v127, v2, "Could not find corresponding Signal for Transformer: %s with input: %s", v25, 0x16u);
              swift_arrayDestroy();
              sub_2546B0274();
              sub_2546B0274();

              sub_2546B01C0();
              v98();
            }

            else
            {

              v99 = v136;
              v136(v89, v3);
              v99(isUniquelyReferenced_nonNull_native, v3);
            }

LABEL_42:
            v19 = v123;
            goto LABEL_43;
          }

          isUniquelyReferenced_nonNull_native = v53;

          v143 = *(*(v51 + 56) + 16 * isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = *(v19 + 2);
            sub_2546B018C();
            sub_2546A8A8C();
            v19 = v57;
          }

          v55 = *(v19 + 2);
          if (v55 >= *(v19 + 3) >> 1)
          {
            sub_2546A8A8C();
            v19 = v58;
          }

          v2 &= v2 - 1;
          *(v19 + 2) = v55 + 1;
          *&v19[16 * v55 + 32] = v143;
        }

        while (v2);
        while (1)
        {
LABEL_8:
          v47 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v47 >= v25)
          {
            break;
          }

          v2 = *(v42 + 8 * v47);
          ++v3;
          if (v2)
          {
            v3 = v47;
            goto LABEL_12;
          }
        }

        swift_allocObject();
        v59 = v139;
        v2 = sub_2546B4130(v59, v19);
        v126 = v59;
        v60 = [v59 modelDescription];
        v61 = [v60 outputDescriptionsByName];

        v62 = sub_2546B5494();
        v3 = 0;
        v63 = *(v62 + 64);
        *&v143 = v62;
        v64 = *(v62 + 32);
        sub_2546B0134();
        v68 = v67 & v66;
        v19 = ((v69 + 63) >> 6);
        v139 = v65;
        v141 = v2;
        if ((v67 & v66) != 0)
        {
          goto LABEL_25;
        }

LABEL_21:
        while (1)
        {
          v70 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v70 >= v19)
          {
            isUniquelyReferenced_nonNull_native = v125;
            v3 = v124;
            sub_2546B01C0();
            v87();

            goto LABEL_42;
          }

          v68 = *(v65 + v70);
          ++v3;
          if (v68)
          {
            v3 = v70;
LABEL_25:
            while (1)
            {
              sub_2546B01F0(__clz(__rbit64(v68)));
              v25 = *v71;
              v72 = *(v71 + 8);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v144[0] = v20;
              v73 = sub_2546A5044(v25, v72);
              v75 = v20[2];
              v76 = (v74 & 1) == 0;
              v20 = (v75 + v76);
              if (__OFADD__(v75, v76))
              {
                goto LABEL_52;
              }

              v77 = v73;
              v78 = v74;
              sub_2546A2DF4(&qword_27F60F7A8, &unk_2546B6598);
              if (sub_2546B5764())
              {
                v79 = sub_2546A5044(v25, v72);
                if ((v78 & 1) != (v80 & 1))
                {
                  result = sub_2546B5834();
                  __break(1u);
                  return result;
                }

                v77 = v79;
              }

              if (v78)
              {

                v20 = v144[0];
                v81 = *(v144[0] + 7);
                v82 = *(v81 + 8 * v77);
                v2 = v141;
                *(v81 + 8 * v77) = v141;
              }

              else
              {
                v20 = v144[0];
                *(v144[0] + (v77 >> 6) + 8) |= 1 << v77;
                v83 = (v20[6] + 16 * v77);
                *v83 = v25;
                v83[1] = v72;
                v2 = v141;
                *(v20[7] + 8 * v77) = v141;
                v84 = v20[2];
                v85 = __OFADD__(v84, 1);
                v86 = v84 + 1;
                if (v85)
                {
                  goto LABEL_54;
                }

                v20[2] = v86;
              }

              v68 &= v68 - 1;
              v65 = v139;
              if (!v68)
              {
                goto LABEL_21;
              }
            }
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

      sub_2546B01C0();
      v37();

      v142 = 0;
LABEL_43:
      v28 = v140 + 1;
      v26 = v128;
      if (v140 + 1 == v131)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_2546B0150();
    swift_once();
LABEL_46:
    v102 = sub_2546B53D4();
    sub_2546A1C48(v102, qword_27F60FCE0);
    v134(isUniquelyReferenced_nonNull_native, v19, v3);
    v103 = v2;
    v104 = sub_2546B53B4();
    v105 = v19;
    v106 = sub_2546B5604();

    if (os_log_type_enabled(v104, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v123 = v105;
      v124 = v3;
      v144[0] = v108;
      *v107 = *(v25 + 162);
      sub_2546B00D0();
      v109 = sub_2546B5804();
      v111 = v110;
      v112 = v136;
      v136(isUniquelyReferenced_nonNull_native, v3);
      v113 = sub_2546A4A68(v109, v111, v144);

      *(v107 + 4) = v113;
      *(v107 + 12) = 2080;
      swift_getErrorValue();
      v114 = sub_2546B5844();
      v116 = sub_2546A4A68(v114, v115, v144);

      *(v107 + 14) = v116;
      _os_log_impl(&dword_2546A0000, v104, v106, "Could not enumerate files in directory: %s with error: %s", v107, 0x16u);
      swift_arrayDestroy();
      sub_2546B0274();
      sub_2546B0274();

      v112(v123, v124);
    }

    else
    {

      v117 = v136;
      v136(isUniquelyReferenced_nonNull_native, v3);
      v117(v105, v3);
    }

    goto LABEL_49;
  }

LABEL_44:

  sub_2546B01C0();
  v100();
LABEL_49:
  v118 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2546AE50C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  sub_2546A1CA0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      do
      {
LABEL_6:
        v13 = __clz(__rbit64(v7)) | (v10 << 6);
        v14 = (*(a2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(a2 + 56) + 8 * v13);
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v11 + 16);
          sub_2546B018C();
          sub_2546A8B70();
          v11 = v21;
        }

        v18 = *(v11 + 16);
        if (v18 >= *(v11 + 24) >> 1)
        {
          sub_2546B01CC();
          v11 = v22;
        }

        v7 &= v7 - 1;
        *(v11 + 16) = v18 + 1;
        v19 = (v11 + 48 * v18);
        v19[4] = v15;
        v19[5] = v16;
        v19[6] = v15;
        v19[7] = v16;
        v19[8] = v17;
        v19[9] = &protocol witness table for Transformer;
      }

      while (v7);
    }
  }

  v48 = sub_2546B0164(v23, &qword_27F60F788, &qword_2546B6588);
  v24 = *(a1 + 64);
  v25 = *(a1 + 32);
  sub_2546A1CA0();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  if (v28)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {

      v47 = sub_2546B0164(v46, &qword_27F60F788, &qword_2546B6588);
      sub_2546AE9EC(v47, v48);
      return;
    }

    v28 = *(a1 + 64 + 8 * v33);
    ++v31;
    if (v28)
    {
      v31 = v33;
      do
      {
LABEL_17:
        v34 = (v31 << 10) | (16 * __clz(__rbit64(v28)));
        v35 = (*(a1 + 48) + v34);
        v37 = *v35;
        v36 = v35[1];
        v38 = (*(a1 + 56) + v34);
        v39 = *v38;
        v40 = *(v38[1] + 8);
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v51 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = *(v32 + 16);
          sub_2546B018C();
          sub_2546A8B70();
          v32 = v44;
        }

        v41 = *(v32 + 16);
        if (v41 >= *(v32 + 24) >> 1)
        {
          sub_2546B01CC();
          v32 = v45;
        }

        v28 &= v28 - 1;
        *(v32 + 16) = v41 + 1;
        v42 = (v32 + 48 * v41);
        v42[4] = v37;
        v42[5] = v36;
        v42[6] = v37;
        v42[7] = v36;
        v42[8] = v39;
        v42[9] = v51;
      }

      while (v28);
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t FeatureRegistry.featureNames.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return sub_2546A6B94(v2);
}

uint64_t sub_2546AE7E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(a2, a3);
    v5 = sub_2546B57D4();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

id sub_2546AE894(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2546B5304();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_2546B5354();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_2546B52D4();

    swift_willThrow();
    v9 = sub_2546B5354();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2546AE9EC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2546AFA00(a1, sub_2546B0098, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

char *FeatureRegistry.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC28HumanUnderstandingFoundation15FeatureRegistry_baseDir;
  v5 = sub_2546B5354();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t FeatureRegistry.__deallocating_deinit()
{
  FeatureRegistry.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FeatureRegistry()
{
  result = qword_27F60F770;
  if (!qword_27F60F770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2546AEB94()
{
  result = sub_2546B5354();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2546AEC64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2546A2DF4(&qword_27F60F6A0, &qword_2546B65D0);
  v44 = a2;
  v7 = sub_2546B57C4();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v43 = v3;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  sub_2546B0134();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v7 + 8;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v16)
      {
        break;
      }

      v20 = v10[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_11;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_32;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      sub_2546B0254(v42);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(v5 + 56) + 32 * v21);
    if (v44)
    {
      v26 = v25[1];
      v45 = *v25;
      v46 = v26;
    }

    else
    {
      sub_2546A49D0(v25, &v45);
    }

    v27 = v7[5];
    sub_2546B5864();
    sub_2546B5524();
    v28 = sub_2546B5884();
    sub_2546B019C(v28);
    if (((v31 << v30) & ~v17[v29]) == 0)
    {
      break;
    }

    sub_2546B0240();
LABEL_23:
    sub_2546B0204();
    *(v17 + v36) |= v37;
    v39 = (v7[6] + 16 * v38);
    *v39 = v23;
    v39[1] = v24;
    v40 = (v7[7] + 32 * v38);
    v41 = v46;
    *v40 = v45;
    v40[1] = v41;
    ++v7[2];
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  sub_2546B022C();
  while (++v32 != v34 || (v33 & 1) == 0)
  {
    v35 = v32 == v34;
    if (v32 == v34)
    {
      v32 = 0;
    }

    v33 |= v35;
    if (v17[v32] != -1)
    {
      sub_2546B0218();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_2546AEEB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2546A2DF4(&qword_27F60F7B8, &qword_2546B65B8);
  v35 = a2;
  result = sub_2546B57C4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_2546A51D0(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v36 = *(*(v5 + 56) + 16 * v19);
    if ((v35 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    v23 = *(v8 + 40);
    sub_2546B5864();
    sub_2546B5524();
    result = sub_2546B5884();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v8 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v8 + 56) + 16 * v27) = v36;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_2546AF160(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2546A2DF4(&qword_27F60F7B0, &qword_2546B65A8);
  v43 = a2;
  v7 = sub_2546B57C4();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v41 = v3;
  v42 = v5;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  sub_2546B0134();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v7 + 8;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v16)
      {
        break;
      }

      v20 = v10[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_11;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_31;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      sub_2546B0254(v40);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v5 + 56) + 8 * v21);
    if ((v43 & 1) == 0)
    {
      v26 = v22[1];

      swift_unknownObjectRetain();
    }

    v27 = v7[5];
    sub_2546B5864();
    sub_2546B5524();
    v28 = sub_2546B5884();
    sub_2546B019C(v28);
    if (((v31 << v30) & ~v17[v29]) == 0)
    {
      break;
    }

    sub_2546B0240();
LABEL_22:
    sub_2546B0204();
    *(v17 + v36) |= v37;
    v39 = (v7[6] + 16 * v38);
    *v39 = v23;
    v39[1] = v24;
    *(v7[7] + 8 * v38) = v25;
    ++v7[2];
    v5 = v42;
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  sub_2546B022C();
  while (++v32 != v34 || (v33 & 1) == 0)
  {
    v35 = v32 == v34;
    if (v32 == v34)
    {
      v32 = 0;
    }

    v33 |= v35;
    if (v17[v32] != -1)
    {
      sub_2546B0218();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_2546AF3A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2546A2DF4(&qword_27F60F788, &qword_2546B6588);
  v39 = a2;
  result = sub_2546B57C4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_2546A51D0(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v5 + 56) + 32 * v19;
    v24 = *(v23 + 8);
    v40 = *v23;
    v41 = *(v23 + 16);
    if ((v39 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    v25 = *(v8 + 40);
    sub_2546B5864();
    sub_2546B5524();
    result = sub_2546B5884();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = *(v8 + 56) + 32 * v29;
    *v35 = v40;
    *(v35 + 8) = v24;
    *(v35 + 16) = v41;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2546AF670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2546A49D0(a4, a1);

  return a2;
}

uint64_t sub_2546AF6B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;

  swift_unknownObjectRetain();
  return a2;
}

void sub_2546AF70C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2546B5834();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v28 = *i;
    v8 = *a3;

    swift_unknownObjectRetain();
    v10 = sub_2546A5044(v7, v6);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v14 = v9;
    if (v8[3] < v13)
    {
      break;
    }

    if (a2)
    {
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2546A2DF4(&qword_27F60F7C0, &unk_2546B65C0);
      sub_2546B5774();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 16 * v10) = v28;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_2546AEEB4(v13, a2 & 1);
  v15 = *a3;
  v16 = sub_2546A5044(v7, v6);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v10 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_2546A2DF4(&qword_27F60F790, &qword_2546B6590);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    return;
  }

LABEL_22:
  sub_2546B56D4();
  MEMORY[0x259C16190](0xD00000000000001BLL, 0x80000002546B76C0);
  sub_2546B5754();
  MEMORY[0x259C16190](39, 0xE100000000000000);
  sub_2546B5794();
  __break(1u);
}

uint64_t sub_2546AFA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v63 = a5;
  sub_2546B005C(a1, a2, a3, v62);
  v5 = v62[1];
  v6 = v62[3];
  v7 = v62[4];
  v49 = v62[5];
  v50 = v62[0];
  v8 = (v62[2] + 64) >> 6;

  v47 = v8;
  v48 = v5;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v50 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v50 + 56) + 32 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v55[0] = v15;
    v55[1] = v14;
    v55[2] = v17;
    v55[3] = v18;
    v56 = *(v16 + 16);

    swift_unknownObjectRetain();
    v49(&v57, v55);
    swift_unknownObjectRelease();

    v19 = v58;
    if (!v58)
    {
LABEL_19:
      sub_2546A1D98();
    }

    v20 = v57;
    v22 = v59;
    v21 = v60;
    v52 = v61;
    v23 = *v63;
    v25 = sub_2546A5044(v57, v58);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_21;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_2546A2DF4(&qword_27F60F780, &qword_2546B6580);
        sub_2546B5774();
      }
    }

    else
    {
      v30 = v63;
      sub_2546AF3A0(v28, a4 & 1);
      v31 = *v30;
      v32 = sub_2546A5044(v20, v19);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_23;
      }

      v25 = v32;
    }

    v51 = (v9 - 1) & v9;
    v34 = *v63;
    if (v29)
    {
      v35 = v34[7] + 32 * v25;
      v37 = *v35;
      v36 = *(v35 + 8);

      v54 = *(v35 + 16);
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();

      v38 = (v34[7] + 32 * v25);
      v40 = v38[1];
      v39 = v38[2];
      *v38 = v37;
      v38[1] = v36;
      *(v38 + 1) = v54;
      swift_unknownObjectRelease();
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v41 = (v34[6] + 16 * v25);
      *v41 = v20;
      v41[1] = v19;
      v42 = v34[7] + 32 * v25;
      *v42 = v22;
      *(v42 + 8) = v21;
      *(v42 + 16) = v52;
      v43 = v34[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_22;
      }

      v34[2] = v45;
    }

    a4 = 1;
    v6 = v10;
    v8 = v47;
    v5 = v48;
    v7 = v51;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

void sub_2546AFD38(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 3)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_2546B5834();
      __break(1u);
      goto LABEL_23;
    }

    v32 = *i;
    v7 = *(i - 2);
    v6 = *(i - 1);
    v9 = *(i - 4);
    v8 = *(i - 3);

    swift_unknownObjectRetain();
    if (!v8)
    {
      goto LABEL_17;
    }

    v30 = v6;
    v10 = *a3;
    v12 = sub_2546A5044(v9, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_2546A2DF4(&qword_27F60F780, &qword_2546B6580);
      sub_2546B5774();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v20[7] + 32 * v12;
    *v22 = v7;
    *(v22 + 8) = v30;
    *(v22 + 16) = v32;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v20[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_2546AF3A0(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_2546A5044(v9, v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_2546A2DF4(&qword_27F60F790, &qword_2546B6590);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  sub_2546B56D4();
  MEMORY[0x259C16190](0xD00000000000001BLL, 0x80000002546B76C0);
  sub_2546B5754();
  MEMORY[0x259C16190](39, 0xE100000000000000);
  sub_2546B5794();
  __break(1u);
}

uint64_t sub_2546B005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_2546B0098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2546AF6B0(a2 + 2, *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2546B00D0()
{
  result = qword_27F60F798;
  if (!qword_27F60F798)
  {
    sub_2546B5354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F798);
  }

  return result;
}

uint64_t sub_2546B0128(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2546B0164(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2546AE7E0(v3, a2, a3, sub_2546AFD38);
}

void sub_2546B01CC()
{

  sub_2546A8B70();
}

uint64_t sub_2546B0254@<X0>(uint64_t a1@<X8>)
{

  return sub_2546A51D0(0, (a1 + 63) >> 6, v1);
}

void sub_2546B0274()
{

  JUMPOUT(0x259C16A90);
}

uint64_t *sub_2546B02A4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2546B0354(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2546B53D4();
  sub_2546B02A4(v3, a2);
  sub_2546A1C48(v3, a2);
  return sub_2546B53C4();
}

uint64_t MLFeatureProvider.toDict()()
{
  v1 = [v0 featureNames];
  v2 = sub_2546B55D4();

  v13 = sub_2546B54A4();
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; i = v8)
  {
    v8 = i;
LABEL_8:
    v9 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = v9[1];
    v12[0] = *v9;
    v12[1] = v10;

    sub_2546B0570(&v13, v12, v0);
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v13;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2546B0570(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_2546B54B4();
  v8 = [a3 featureValueForName_];

  if (v8 && (v9 = MLFeatureValue.toString()(), v8, v9.value._object))
  {
    v10 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    result = sub_2546B3980(v9.value._countAndFlagsBits, v9.value._object, v5, v6);
    *a1 = v12;
  }

  else
  {
    sub_2546B37C4(v5, v6);
  }

  return result;
}

Swift::String __swiftcall MLFeatureProvider.toJSONString()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2546B54F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = objc_opt_self();
  MLFeatureProvider.toDict()();
  v3 = sub_2546B5484();

  v19[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:v19];

  v5 = v19[0];
  if (!v4)
  {
    v13 = v5;
    v14 = sub_2546B52D4();

    swift_willThrow();
LABEL_6:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_7;
  }

  v6 = sub_2546B5364();
  v8 = v7;

  sub_2546B54E4();
  v9 = sub_2546B54D4();
  if (!v10)
  {
    sub_2546B07F8(v6, v8);
    goto LABEL_6;
  }

  v11 = v9;
  v12 = v10;
  sub_2546B07F8(v6, v8);
LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
  v16 = v11;
  v17 = v12;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_2546B07F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::String_optional __swiftcall MLFeatureValue.toString()()
{
  v1 = v0;
  v2 = [v0 type];
  v3 = 0;
  v4 = 0;
  switch(v2)
  {
    case 1uLL:
      [v1 int64Value];
      v5 = sub_2546B5804();
      goto LABEL_5;
    case 2uLL:
      [v1 doubleValue];
      v5 = sub_2546B55B4();
LABEL_5:
      v3 = v5;
      v4 = v6;
      goto LABEL_9;
    case 3uLL:
      v7 = [v1 stringValue];
      v8 = sub_2546B54C4();
      goto LABEL_8;
    case 5uLL:
      v10 = [v1 multiArrayValue];
      if (v10)
      {
        v7 = v10;
        v8 = sub_2546B0980();
LABEL_8:
        v3 = v8;
        v4 = v9;
      }

      else
      {
        v3 = 0;
        v4 = 0;
      }

LABEL_9:
      v11 = v3;
      v12 = v4;
      result.value._object = v12;
      result.value._countAndFlagsBits = v11;
      return result;
    default:
      goto LABEL_9;
  }
}

uint64_t sub_2546B0980()
{
  v1 = sub_2546A2DF4(&qword_27F60F7C8, &qword_2546B65D8);
  v2 = sub_2546A324C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v37 - v7;
  v9 = sub_2546A2DF4(&qword_27F60F7D0, &qword_2546B65E0);
  v10 = sub_2546A324C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v37 - v15;
  v17 = sub_2546A2DF4(&qword_27F60F7D8, &qword_2546B65E8);
  v18 = sub_2546A324C(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v37 - v23;
  v25 = [v0 dataType];
  if (v25 == 65568)
  {
    v34 = v0;
    v27 = MEMORY[0x277D83A90];
    sub_2546B53E4();
    sub_2546B0CD0(&qword_27F60F7E8, &qword_27F60F7D0, &qword_2546B65E0);
    v28 = sub_2546B53F4();
    (*(v12 + 8))(v16, v9);
LABEL_7:
    v32 = v28;
    v33 = v27;
    goto LABEL_8;
  }

  if (v25 != 65600)
  {
    if (v25 != 131104)
    {
      return 0;
    }

    v26 = v0;
    v27 = MEMORY[0x277D849A8];
    sub_2546B53E4();
    sub_2546B0CD0(&qword_27F60F7F0, &qword_27F60F7D8, &qword_2546B65E8);
    v28 = sub_2546B53F4();
    (*(v20 + 8))(v24, v17);
    goto LABEL_7;
  }

  v29 = v0;
  v30 = MEMORY[0x277D839F8];
  sub_2546B53E4();
  sub_2546B0CD0(&qword_27F60F7E0, &qword_27F60F7C8, &qword_2546B65D8);
  v31 = sub_2546B53F4();
  (*(v4 + 8))(v8, v1);
  v32 = v31;
  v33 = v30;
LABEL_8:
  v35 = MEMORY[0x259C161E0](v32, v33);

  return v35;
}

uint64_t sub_2546B0CD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2546A2E3C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2546B0D24(uint64_t a1)
{
  v36 = *v1;
  v4 = 0;
  v41 = a1 & 0xC000000000000001;
  v42 = sub_2546A4A40();
  v38 = a1;
  v39 = a1 + 32;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v42)
    {

      *(v37 + 16) = sub_2546B1190(v5);
      return v37;
    }

    if (v41)
    {
      v2 = MEMORY[0x259C16340](v4, v38);
    }

    else
    {
      if (v4 >= *(v40 + 16))
      {
        goto LABEL_50;
      }

      v2 = *(v39 + 8 * v4);
      swift_unknownObjectRetain();
    }

    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      break;
    }

    v7 = [v2 featureNames];
    v8 = sub_2546B55D4();

    v9 = *(v8 + 16);
    if (v9)
    {
      v43 = v5;
      v44 = v4;
      v52 = MEMORY[0x277D84F90];
      sub_2546B16A0(0, v9, 0);
      v10 = v52;
      v13 = sub_2546B1CF0(v8);
      v14 = 0;
      v15 = v8 + 56;
      v45 = v8 + 64;
      v46 = v9;
      v47 = v8;
      v48 = v8 + 56;
      if ((v13 & 0x8000000000000000) == 0)
      {
        while (v13 < 1 << *(v8 + 32))
        {
          v16 = v13 >> 6;
          if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
          {
            goto LABEL_44;
          }

          if (*(v8 + 36) != v11)
          {
            goto LABEL_45;
          }

          v51 = v12;
          v49 = v14;
          v50 = v11;
          v17 = (*(v8 + 48) + 16 * v13);
          v19 = *v17;
          v18 = v17[1];
          v20 = v52[2];
          v21 = v52[3];

          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            sub_2546B16A0(v21 > 1, v20 + 1, 1);
          }

          v52[2] = v20 + 1;
          v22 = &v52[3 * v20];
          v22[4] = v19;
          v22[5] = v18;
          v22[6] = v2;
          v15 = v48;
          if (v51)
          {
            goto LABEL_55;
          }

          v8 = v47;
          v23 = 1 << *(v47 + 32);
          if (v13 >= v23)
          {
            goto LABEL_46;
          }

          v24 = *(v48 + 8 * v16);
          if ((v24 & (1 << v13)) == 0)
          {
            goto LABEL_47;
          }

          if (*(v47 + 36) != v50)
          {
            goto LABEL_48;
          }

          v25 = v24 & (-2 << (v13 & 0x3F));
          if (v25)
          {
            v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v16 << 6;
            v27 = v16 + 1;
            v28 = (v45 + 8 * v16);
            while (v27 < (v23 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_2546B0128(v13, v50, 0);
                v23 = __clz(__rbit64(v29)) + v26;
                goto LABEL_25;
              }
            }

            sub_2546B0128(v13, v50, 0);
          }

LABEL_25:
          v14 = v49 + 1;
          if (v49 + 1 == v46)
          {
            swift_unknownObjectRelease();

            v5 = v43;
            v4 = v44;
            goto LABEL_30;
          }

          v12 = 0;
          v11 = *(v47 + 36);
          v13 = v23;
          if (v23 < 0)
          {
            break;
          }
        }
      }

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
      break;
    }

    swift_unknownObjectRelease();

    v10 = MEMORY[0x277D84F90];
LABEL_30:
    v31 = v10[2];
    v2 = *(v5 + 16);
    if (__OFADD__(v2, v31))
    {
      goto LABEL_51;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v2 + v31 > *(v5 + 24) >> 1)
    {
      sub_2546A8998();
      v5 = v32;
    }

    if (v10[2])
    {
      if ((*(v5 + 24) >> 1) - *(v5 + 16) < v31)
      {
        goto LABEL_53;
      }

      v2 = v10;
      sub_2546A2DF4(&qword_27F60F708, &unk_2546B6630);
      swift_arrayInitWithCopy();

      if (v31)
      {
        v33 = *(v5 + 16);
        v6 = __OFADD__(v33, v31);
        v34 = v33 + v31;
        if (v6)
        {
          goto LABEL_54;
        }

        *(v5 + 16) = v34;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_52;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_2546B1190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(&qword_27F60F7B0, &qword_2546B65A8);
    v3 = sub_2546B57D4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2546B14A4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t MultiFeatureProvider.featureNames.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return sub_2546A6B94(v2);
}

MLFeatureValue_optional __swiftcall MultiFeatureProvider.featureValue(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2546A5044(countAndFlagsBits, object), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    swift_unknownObjectRetain();
    v8 = sub_2546B54B4();
    v9 = [v7 featureValueForName_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    v9 = 0;
  }

  v11 = v9;
  result.value.super.isa = v11;
  result.is_nil = v10;
  return result;
}

uint64_t MultiFeatureProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MultiFeatureProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2546B14A4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    swift_unknownObjectRetain();
    v11 = sub_2546A5044(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        sub_2546A2DF4(&qword_27F60F7F8, &unk_2546B6640);
        sub_2546B5774();
      }
    }

    else
    {
      sub_2546AF160(v14, a2 & 1);
      v16 = *a3;
      v17 = sub_2546A5044(v7, v6);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {
      v20 = *(v19[7] + 8 * v11);
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      v21 = v19[7];
      v22 = *(v21 + 8 * v11);
      *(v21 + 8 * v11) = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      v23 = (v19[6] + 16 * v11);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v11) = v8;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

uint64_t sub_2546B1680(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2546B1788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2546B16A0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2546B1898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2546B16C0()
{
  sub_2546AD088();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_2546A1CDC();
  if (v6 == v7)
  {
LABEL_7:
    sub_2546AD054(v5);
    if (v2)
    {
      sub_2546A2DF4(&qword_27F60F6D8, &unk_2546B6660);
      v8 = swift_allocObject();
      sub_2546AD0AC(v8);
      sub_2546B1D60(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_2546B1D30();
        sub_2546A8E50(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_2546AD07C();
  if (!v6)
  {
    sub_2546ACFCC();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2546B1788(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2546A2DF4(&qword_27F60F710, &unk_2546B6650);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2546ACF64((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2546A2DF4(&qword_27F60F718, &qword_2546B65B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2546B1898(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2546A2DF4(&qword_27F60F700, &qword_2546B64D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2546A8E70((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2546A2DF4(&qword_27F60F708, &unk_2546B6630);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2546B19B0()
{
  sub_2546AD088();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_2546A1CDC();
  if (v7 == v8)
  {
LABEL_7:
    sub_2546AD054(v6);
    if (v3)
    {
      sub_2546A2DF4(&qword_27F60F730, &qword_2546B64E8);
      v9 = swift_allocObject();
      sub_2546AD0AC(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 48);
      if (v1)
      {
LABEL_9:
        v11 = sub_2546B1D30();
        sub_2546A8E98(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_2546A2DF4(&qword_27F60F738, &unk_2546B6670);
    sub_2546B1D40();
    goto LABEL_12;
  }

  sub_2546AD07C();
  if (!v7)
  {
    sub_2546ACFCC();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2546B1A88()
{
  sub_2546AD088();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_2546A1CDC();
  if (v7 == v8)
  {
LABEL_7:
    sub_2546AD054(v6);
    if (v3)
    {
      sub_2546A2DF4(&qword_27F60F740, &qword_2546B64F0);
      v9 = swift_allocObject();
      sub_2546AD0AC(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 24);
      if (v1)
      {
LABEL_9:
        v11 = sub_2546B1D30();
        sub_2546A8E70(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_2546A2DF4(&qword_27F60F748, &unk_2546B6680);
    sub_2546B1D40();
    goto LABEL_12;
  }

  sub_2546AD07C();
  if (!v7)
  {
    sub_2546ACFCC();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2546B1B60()
{
  sub_2546AD088();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_2546A1CDC();
  if (v6 == v7)
  {
LABEL_7:
    sub_2546AD054(v5);
    if (v2)
    {
      sub_2546A2DF4(&qword_27F60F750, &qword_2546B64F8);
      v8 = swift_allocObject();
      sub_2546AD0AC(v8);
      sub_2546B1D60(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_2546B1D30();
        sub_2546ACF64(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_2546A2DF4(&qword_27F60F758, &unk_2546B6690);
    sub_2546B1D40();
    goto LABEL_12;
  }

  sub_2546AD07C();
  if (!v6)
  {
    sub_2546ACFCC();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2546B1C28()
{
  sub_2546AD088();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_2546A1CDC();
  if (v6 == v7)
  {
LABEL_7:
    sub_2546AD054(v5);
    if (v2)
    {
      sub_2546A2DF4(&qword_27F60F6E0, &qword_2546B64C0);
      v8 = swift_allocObject();
      sub_2546AD0AC(v8);
      sub_2546B1D60(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_2546B1D30();
        sub_2546A8E50(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
    sub_2546B1D40();
    goto LABEL_12;
  }

  sub_2546AD07C();
  if (!v6)
  {
    sub_2546ACFCC();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2546B1CF0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2546B5694();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2546B1D40()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2546B1D70(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6F74616C756D6973;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7473655474696E75;
    }

    else
    {
      v5 = 0x656369766564;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x6F74616C756D6973;
    v6 = 0xE900000000000072;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7473655474696E75;
    }

    else
    {
      v3 = 0x656369766564;
    }

    if (a2 == 1)
    {
      v2 = 0xE900000000000073;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2546B5814();
  }

  return v8 & 1;
}

uint64_t sub_2546B1E70(unsigned __int8 a1)
{
  sub_2546B5864();
  MEMORY[0x259C164D0](a1);
  return sub_2546B5884();
}

uint64_t sub_2546B1EC4()
{
  sub_2546B5524();
}

uint64_t sub_2546B1F74(uint64_t a1, unsigned __int8 a2)
{
  sub_2546B5864();
  MEMORY[0x259C164D0](a2);
  return sub_2546B5884();
}

uint64_t sub_2546B1FB8()
{
  sub_2546B5864();
  sub_2546B5524();

  return sub_2546B5884();
}

HumanUnderstandingFoundation::Paths::Environment_optional __swiftcall Paths.Environment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2546B57E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paths.Environment.rawValue.getter()
{
  v1 = 0x7473655474696E75;
  if (*v0 != 1)
  {
    v1 = 0x656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F74616C756D6973;
  }
}

uint64_t sub_2546B2168@<X0>(uint64_t *a1@<X8>)
{
  result = Paths.Environment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Paths.baseDirectory(with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2546B53A4();
  v5 = sub_2546A324C(v4);
  v37 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_2546A3260();
  v11 = v10 - v9;
  v12 = sub_2546B5354();
  v13 = sub_2546A324C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v37 - v28;
  v30 = *a1;
  v38 = a2;
  sub_2546B2A50(a2, 1, 1, v12);
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = NSTemporaryDirectory();
      sub_2546B54C4();

      sub_2546B52E4();

      sub_2546B5394();
      sub_2546B5384();
      (*(v37 + 8))(v11, v4);
      sub_2546B5324();
    }

    else
    {
      v33 = [objc_opt_self() defaultManager];
      v34 = [v33 URLsForDirectory:5 inDomains:1];

      v35 = sub_2546B5574();
      sub_2546B25C0(v35, v27);

      if (sub_2546B2A78(v27, 1, v12) == 1)
      {
        sub_2546B2AA0(v27);
        result = sub_2546B5794();
        __break(1u);
        return result;
      }

      (*(v15 + 32))(v20, v27, v12);
      sub_2546B5314();
      v22 = v20;
    }
  }

  else
  {
    result = getenv("SIMULATOR_SHARED_RESOURCES_DIRECTORY");
    if (!result)
    {
      return result;
    }

    sub_2546B5544();
    sub_2546B52E4();

    sub_2546B5324();
  }

  (*(v15 + 8))(v22, v12);
  v36 = v38;
  sub_2546B2AA0(v38);
  sub_2546B2A50(v29, 0, 1, v12);
  return sub_2546B2B08(v29, v36);
}

uint64_t sub_2546B25C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2546B5354();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_2546B2A50(a2, v7, 1, v6);
}

uint64_t sub_2546B2668()
{
  v0 = sub_2546B5354();
  sub_2546B02A4(v0, qword_281369678);
  v1 = sub_2546A1C48(v0, qword_281369678);
  return sub_2546B26B4(v1);
}

uint64_t sub_2546B26B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v12 = 2;
  static Paths.baseDirectory(with:)(&v12, &v11[-v7]);
  sub_2546B31CC(v8, v6);
  v9 = sub_2546B5354();
  result = sub_2546B2A78(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2546B2AA0(v8);
    return (*(*(v9 - 8) + 32))(a1, v6, v9);
  }

  return result;
}

uint64_t static Paths.baseDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281369670 != -1)
  {
    sub_2546B323C();
  }

  v2 = sub_2546B5354();
  v3 = sub_2546A1C48(v2, qword_281369678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static Paths.baseDirectory(with:createIfNeeded:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_281369670 != -1)
  {
    sub_2546B323C();
  }

  v4 = sub_2546B5354();
  sub_2546A1C48(v4, qword_281369678);
  sub_2546B5324();
  if (a3)
  {

    sub_2546B2918();
  }
}

void sub_2546B2918()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_2546B5344();
  v1 = sub_2546B54B4();

  v9[0] = 0;
  v2 = [v0 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_2546B52D4();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_2546B2AA0(uint64_t a1)
{
  v2 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2546B2B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static Paths.topDirectory()()
{
  if (qword_281369670 != -1)
  {
    sub_2546B323C();
  }

  v0 = sub_2546B5354();
  sub_2546A1C48(v0, qword_281369678);
  sub_2546B5324();

  sub_2546B2918();
}

uint64_t sub_2546B2C2C()
{
  v0 = sub_2546B5354();
  v1 = sub_2546A324C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2546A3260();
  v8 = v7 - v6;
  if (qword_281369670 != -1)
  {
    sub_2546B323C();
  }

  sub_2546A1C48(v0, qword_281369678);
  sub_2546B5324();
  sub_2546B2918();
  sub_2546B5324();
  sub_2546B2918();
  return (*(v3 + 8))(v8, v0);
}

uint64_t static Paths.humanUnderstandingEvidenceBaseDirectory()()
{
  v0 = sub_2546B5354();
  v1 = sub_2546A324C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2546A3260();
  v8 = v7 - v6;
  if (qword_281369670 != -1)
  {
    sub_2546B323C();
  }

  sub_2546A1C48(v0, qword_281369678);
  sub_2546B5324();
  sub_2546B2918();
  sub_2546B5324();
  sub_2546B2918();
  return (*(v3 + 8))(v8, v0);
}

unint64_t sub_2546B2EAC()
{
  result = qword_27F60F808;
  if (!qword_27F60F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F808);
  }

  return result;
}

unint64_t sub_2546B2F04()
{
  result = qword_27F60F810;
  if (!qword_27F60F810)
  {
    sub_2546A2E3C(&qword_27F60F818, &qword_2546B6748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Paths(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Paths(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Paths.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Paths.Environment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2546B31CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2546B323C()
{

  return swift_once();
}

uint64_t sub_2546B3270(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t BackfillableSignal.allFeatures(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 featureNames];
  v8 = sub_2546B55D4();

  sub_2546B34B0();
  v9 = sub_2546B54A4();
  v14[2] = a2;
  v14[3] = a3;
  v15 = v3;
  v16 = a1;
  v10 = sub_2546B3270(v9, sub_2546B35B4, v14, v8);

  sub_2546A4338(v10);
  v12 = v11;

  return v12;
}

unint64_t sub_2546B34B0()
{
  result = qword_27F60F688;
  if (!qword_27F60F688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60F688);
  }

  return result;
}

void sub_2546B34F4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = (*(a6 + 16))(*a2, v8, a4, a5, a6);
  if (v9)
  {
    v10 = v9;
    v11 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_2546B3AD4(v10, v7, v8);
    *a1 = v12;
  }

  else
  {
  }
}

void BackfillableSignal.allFeatures(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = BackfillableSignal.allFeatures(for:)(a1, a2, a3);
  sub_2546A2DF4(&qword_27F60F820, qword_2546B67C0);
  v4 = sub_2546B57B4();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v3 + 64;
  v10 = v8 & *(v3 + 64);
  v11 = (v7 + 63) >> 6;
  v28 = v4 + 64;
  v29 = v3;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = (*(v29 + 48) + 16 * v15);
      v17 = v16[1];
      v30 = *v16;
      v18 = *(*(v29 + 56) + 8 * v15);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v20 = MLFeatureValue.toString()();
      if (!v20.value._object)
      {
        goto LABEL_14;
      }

      countAndFlagsBits = v20.value._countAndFlagsBits;
      object = v20.value._object;

LABEL_15:
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v23 = (v5[6] + 16 * v15);
      *v23 = v30;
      v23[1] = v17;
      v24 = (v5[7] + 16 * v15);
      *v24 = countAndFlagsBits;
      v24[1] = object;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      v5[2] = v27;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v19 = 0;
LABEL_14:

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_15;
  }

LABEL_5:
  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      return;
    }

    v14 = *(v9 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_2546B37C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2546A5044(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v9 = *(*v3 + 24);
  sub_2546A2DF4(qword_27F60F830, &unk_2546B6810);
  sub_2546B5764();
  v10 = *(*(v15 + 48) + 16 * v7 + 8);

  v11 = (*(v15 + 56) + 16 * v7);
  v12 = *v11;
  v13 = v11[1];
  sub_2546B5784();
  *v3 = v15;
  return v12;
}

uint64_t sub_2546B38A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2546A5044(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  sub_2546A2DF4(&qword_27F60F828, &qword_2546B6808);
  sub_2546B5764();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  sub_2546B34B0();
  sub_2546B5784();
  *v3 = v13;
  return v11;
}

uint64_t sub_2546B3980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2546A5044(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  sub_2546A2DF4(qword_27F60F830, &unk_2546B6810);
  if ((sub_2546B5764() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_2546A5044(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_2546B5834();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_2546B3C10(v13, a3, a4, a1, a2, v18);
  }
}

void sub_2546B3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2546A5044(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_2546A2DF4(&qword_27F60F828, &qword_2546B6808);
  if ((sub_2546B5764() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_2546A5044(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2546B5834();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_2546B3C5C(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_2546B3C10(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_2546B3C5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t TimestampedItem.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F60FD00;
  v4 = sub_2546B5374();
  v5 = sub_2546B4120(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t TimestampedItem.__allocating_init(timestamp:value:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  TimestampedItem.init(timestamp:value:)(a1, a2);
  return v7;
}

uint64_t *TimestampedItem.init(timestamp:value:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = qword_27F60FD00;
  v7 = sub_2546B5374();
  sub_2546B4120(v7);
  (*(v8 + 32))(v2 + v6, a1);
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 96), a2);
  return v2;
}

uint64_t *TimestampedItem.deinit()
{
  v1 = *v0;
  v2 = qword_27F60FD00;
  v3 = sub_2546B5374();
  sub_2546B4120(v3);
  (*(v4 + 8))(v0 + v2);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t TimestampedItem.__deallocating_deinit()
{
  TimestampedItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2546B3FDC(uint64_t a1)
{
  result = sub_2546B5374();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2546B4130(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  v5 = a1;
  v6 = sub_2546B41AC(a2);

  type metadata accessor for MultiFeatureProvider();
  swift_allocObject();
  v7 = sub_2546B0D24(v6);

  *(v3 + 24) = v7;
  return v3;
}

uint64_t sub_2546B41AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_2546B5724();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
      sub_2546A2DF4(&qword_27F60F8B8, &unk_2546B68E0);
      swift_dynamicCast();
      sub_2546B5704();
      v6 = *(v7 + 16);
      sub_2546B5734();
      sub_2546B5744();
      sub_2546B5714();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t Transformer.featureNames.getter()
{
  v1 = [*(v0 + 16) modelDescription];
  v2 = [v1 outputDescriptionsByName];

  sub_2546AC8B0();
  v3 = sub_2546B5494();

  return sub_2546A6B94(v3);
}

MLFeatureValue_optional __swiftcall Transformer.featureValue(for:)(Swift::String a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v14[0] = 0;
  v4 = [v2 predictionFromFeatures:v3 error:v14];
  if (v4)
  {
    v5 = v4;
    v6 = v14[0];
    v7 = sub_2546B54B4();
    v8 = [v5 featureValueForName_];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v14[0];
    v11 = sub_2546B52D4();

    swift_willThrow();
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  v13 = v8;
  result.value.super.isa = v13;
  result.is_nil = v9;
  return result;
}

uint64_t Transformer.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Transformer.__deallocating_deinit()
{
  Transformer.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2546B45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0xD00000000000001DLL;
  v11 = 0x80000002546B7970;
  MEMORY[0x259C16190]();
  v6 = *MEMORY[0x277D86238];
  v7 = swift_allocObject();
  v7[2] = 0xD00000000000001DLL;
  v7[3] = 0x80000002546B7970;
  v7[4] = a3;
  v7[5] = a4;
  v14 = sub_2546B50A0;
  v15 = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2546B4A58;
  v13 = &unk_2866840C8;
  v8 = _Block_copy(&v10);

  v9 = sub_2546B5514();

  xpc_activity_register((v9 + 32), v6, v8);

  _Block_release(v8);
}

void sub_2546B4718(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  if (xpc_activity_get_state(a1) == 2 && xpc_activity_should_defer(a1))
  {
    if (!xpc_activity_set_state(a1, 3))
    {
      if (qword_27F60F4B8 != -1)
      {
        swift_once();
      }

      v8 = sub_2546B53D4();
      sub_2546A1C48(v8, qword_27F60FCC8);
      v9 = sub_2546B55F4();

      oslog = sub_2546B53B4();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_2546A4A68(a2, a3, &v19);
        _os_log_impl(&dword_2546A0000, oslog, v9, "%s should defer before task start, but failed to set state to XPC_ACTIVITY_STATE_DEFER", v10, 0xCu);
        sub_2546A55B8(v11);
        MEMORY[0x259C16A90](v11, -1, -1);
        MEMORY[0x259C16A90](v10, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_27F60F4B8 != -1)
    {
      swift_once();
    }

    v12 = sub_2546B53D4();
    sub_2546A1C48(v12, qword_27F60FCC8);
    v13 = sub_2546B5614();

    v14 = sub_2546B53B4();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2546A4A68(a2, a3, &v19);
      _os_log_impl(&dword_2546A0000, v14, v13, "%s started running XPC Activity task block", v15, 0xCu);
      sub_2546A55B8(v16);
      MEMORY[0x259C16A90](v16, -1, -1);
      MEMORY[0x259C16A90](v15, -1, -1);
    }

    type metadata accessor for XPCActivity();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = 0;

    swift_unknownObjectRetain();
    a4(v17);
  }
}

uint64_t sub_2546B4A58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall XPCActivity.deferIfNecessary()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  should_defer = xpc_activity_should_defer(v2);
  if (should_defer && xpc_activity_set_state(v2, 3))
  {
    if (qword_27F60F4B8 != -1)
    {
      sub_2546B50B4();
    }

    v4 = sub_2546B53D4();
    sub_2546A1C48(v4, qword_27F60FCC8);
    v5 = sub_2546B55F4();

    v6 = sub_2546B53B4();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2546A4A68(*(v1 + 24), *(v1 + 32), &v15);
      _os_log_impl(&dword_2546A0000, v6, v5, "%s XPC Activity should defer, but failed to set state to XPC_ACTIVITY_STATE_DEFER", v7, 0xCu);
      sub_2546A55B8(v8);
      sub_2546B0274();
      sub_2546B0274();
    }
  }

  if (qword_27F60F4B8 != -1)
  {
    sub_2546B50B4();
  }

  v9 = sub_2546B53D4();
  sub_2546A1C48(v9, qword_27F60FCC8);
  v10 = sub_2546B5614();

  v11 = sub_2546B53B4();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2546A4A68(*(v1 + 24), *(v1 + 32), &v15);
    *(v12 + 12) = 1024;
    *(v12 + 14) = should_defer;
    _os_log_impl(&dword_2546A0000, v11, v10, "%s XPC Activity deferIfNecessary returned %{BOOL}d", v12, 0x12u);
    sub_2546A55B8(v13);
    sub_2546B0274();
    sub_2546B0274();
  }

  return should_defer;
}

void XPCActivity.register(deferralBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v9[4] = sub_2546B5018;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2546B4A58;
  v9[3] = &unk_286684060;
  v7 = _Block_copy(v9);

  v8 = xpc_activity_add_eligibility_changed_handler();
  _Block_release(v7);
  *(v2 + 40) = v8;
}

uint64_t sub_2546B4E0C(_xpc_activity_s *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    if (qword_27F60F4B8 != -1)
    {
      swift_once();
    }

    v6 = sub_2546B53D4();
    sub_2546A1C48(v6, qword_27F60FCC8);
    v7 = sub_2546B5614();

    v8 = sub_2546B53B4();

    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2546A4A68(*(a2 + 24), *(a2 + 32), &v11);
      _os_log_impl(&dword_2546A0000, v8, v7, "%s XPC Activity registered deferral block will be invoked", v9, 0xCu);
      sub_2546A55B8(v10);
      MEMORY[0x259C16A90](v10, -1, -1);
      MEMORY[0x259C16A90](v9, -1, -1);
    }

    return a3();
  }

  return result;
}

uint64_t XPCActivity.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{
  XPCActivity.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2546B5024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2546B50B4()
{

  return swift_once();
}

void sub_2546B5244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2546B525C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2546B5274(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}