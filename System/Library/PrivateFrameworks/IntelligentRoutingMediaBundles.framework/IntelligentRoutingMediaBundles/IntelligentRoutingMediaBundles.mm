uint64_t sub_2554EC1C8()
{
  v93 = *MEMORY[0x277D85DE8];
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E78, &qword_2554F2A80) - 8) + 64);
  v1 = (MEMORY[0x28223BE20])();
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v76 - v4;
  v6 = sub_2554F21A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v11 = sub_2554F2218();
  v12 = [v10 initWithPath_];

  if (!v12)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_8:
    sub_2554F19B4(v5);
    goto LABEL_10;
  }

  v85 = v7;
  v13 = v12;
  v14 = sub_2554F2218();
  v15 = sub_2554F2218();
  v16 = [v13 URLForResource:v14 withExtension:v15];
  v81 = v13;

  if (v16)
  {
    sub_2554F2198();

    v17 = v85;
    (*(v85 + 56))(v3, 0, 1, v6);
  }

  else
  {
    v17 = v85;
    (*(v85 + 56))(v3, 1, 1, v6);
  }

  v18 = v86;
  sub_2554ECFC4(v3, v5);
  if ((*(v17 + 48))(v5, 1, v6) == 1)
  {

    goto LABEL_8;
  }

  (*(v17 + 32))(v18, v5, v6);
  v22 = sub_2554F21B8();
  v24 = v23;
  v25 = objc_opt_self();
  v26 = sub_2554F21C8();
  v89 = 0;
  v27 = [v25 propertyListWithData:v26 options:0 format:0 error:&v89];

  if (v27)
  {
    v77 = v22;
    v78 = v24;
    v83 = v6;
    v28 = v89;
    sub_2554F22D8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E80, &qword_2554F2A88);
    if (swift_dynamicCast())
    {
      v19 = v88;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    if (qword_2814510B0 != -1)
    {
      goto LABEL_62;
    }

    while (1)
    {
      v29 = qword_2814511C8;
      v30 = 0;
      if ((sub_2554F21D8() & 1) != 0 && v29)
      {
        v31 = sub_2554F2218();
        v32 = [v29 arrayForKey_];

        if (v32)
        {
          v33 = sub_2554F2278();

          v30 = sub_2554F1A1C(v33);
        }

        else
        {
          v30 = 0;
        }
      }

      v36 = v19[2];
      if (v36)
      {
        v37 = 0;
        v82 = (v19 + 4);
        v76 = v36 - 1;
        v84 = MEMORY[0x277D84F90];
        v79 = v19;
        v80 = v30;
LABEL_25:
        v38 = v37;
        while (v38 < v19[2])
        {
          v39 = *&v82[8 * v38];

          v41 = sub_2554ED034(v40, &v89);
          v42 = v90;
          if (v90)
          {
            v43 = v91;
            v44 = v92;
            if (!v30)
            {
              v87 = v89;

              goto LABEL_35;
            }

            v45 = v92;
            v87 = &v76;
            MEMORY[0x28223BE20](v41);
            v47 = v46;
            *(&v76 - 2) = &v89;

            v48 = sub_2554F1CC0(sub_2554F1D6C, (&v76 - 4), v30);

            if ((v48 & 1) == 0)
            {
              v87 = v47;
              v18 = v86;
              v44 = v45;
LABEL_35:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = sub_2554ED454(0, *(v84 + 2) + 1, 1, v84);
              }

              v50 = *(v84 + 2);
              v49 = *(v84 + 3);
              if (v50 >= v49 >> 1)
              {
                v84 = sub_2554ED454((v49 > 1), v50 + 1, 1, v84);
              }

              v37 = v38 + 1;
              v51 = v84;
              *(v84 + 2) = v50 + 1;
              v52 = &v51[32 * v50];
              *(v52 + 4) = v87;
              *(v52 + 5) = v42;
              v52[48] = v43 & 1;
              v52[49] = BYTE1(v43) & 1;
              v52[50] = BYTE2(v43) & 1;
              *(v52 + 7) = v44;
              v17 = v85;
              v19 = v79;
              v30 = v80;
              if (v76 == v38)
              {
LABEL_40:
                v53 = v84;
                goto LABEL_42;
              }

              goto LABEL_25;
            }

            v17 = v85;
            v18 = v86;
            v19 = v79;
            v30 = v80;
          }

          else
          {
          }

          if (v36 == ++v38)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
      }

      else
      {
        v53 = MEMORY[0x277D84F90];
LABEL_42:

        v82 = *(v53 + 2);
        if (!v82)
        {
          (*(v17 + 8))(v18, v83);

          sub_2554ED854(v77, v78);
          goto LABEL_10;
        }

        v18 = 0;
        v54 = v53 + 56;
        v19 = MEMORY[0x277D84F98];
        v84 = v53;
        while (v18 < *(v53 + 2))
        {
          v58 = *(v54 - 3);
          v57 = *(v54 - 2);
          LODWORD(v87) = *(v54 - 8);
          v17 = *(v54 - 7);
          v59 = *(v54 - 6);
          v60 = *v54;
          swift_bridgeObjectRetain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = v19;
          v62 = sub_2554ED2C8(v58, v57);
          v64 = v19[2];
          v65 = (v63 & 1) == 0;
          v66 = __OFADD__(v64, v65);
          v67 = v64 + v65;
          if (v66)
          {
            goto LABEL_60;
          }

          v68 = v63;
          if (v19[3] >= v67)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v75 = v62;
              sub_2554F0E48();
              v62 = v75;
            }
          }

          else
          {
            sub_2554ED564(v67, isUniquelyReferenced_nonNull_native);
            v62 = sub_2554ED2C8(v58, v57);
            if ((v68 & 1) != (v69 & 1))
            {
              result = sub_2554F23A8();
              __break(1u);
              return result;
            }
          }

          v70 = v87;
          v19 = v89;
          if (v68)
          {
            v55 = *(v89 + 7) + 32 * v62;
            v56 = *(v55 + 8);
            *v55 = v58;
            *(v55 + 8) = v57;
            *(v55 + 16) = v70;
            *(v55 + 17) = v17;
            *(v55 + 18) = v59;
            *(v55 + 24) = v60;
          }

          else
          {
            *(v89 + (v62 >> 6) + 8) |= 1 << v62;
            v71 = (v19[6] + 16 * v62);
            *v71 = v58;
            v71[1] = v57;
            v72 = v19[7] + 32 * v62;
            *v72 = v58;
            *(v72 + 8) = v57;
            *(v72 + 16) = v70;
            *(v72 + 17) = v17;
            *(v72 + 18) = v59;
            *(v72 + 24) = v60;
            v73 = v19[2];
            v66 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v66)
            {
              goto LABEL_61;
            }

            v19[2] = v74;
          }

          ++v18;
          v54 += 4;
          v53 = v84;
          if (v82 == v18)
          {
            (*(v85 + 8))(v86, v83);

            sub_2554ED854(v77, v78);

            goto LABEL_11;
          }
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      swift_once();
    }
  }

  v34 = v89;
  v35 = sub_2554F2188();

  swift_willThrow();
  sub_2554ED854(v22, v24);
  MEMORY[0x259C35DA0](v35);

  (*(v17 + 8))(v18, v6);
LABEL_10:
  v19 = 0;
LABEL_11:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_2554ECAF0()
{
  v1 = sub_2554EC1C8();
  if (!v1)
  {
    v1 = sub_2554F0FE4(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 184);
  *(v0 + 160) = v1;

  sub_2554EDA18(v3, (v0 + 16));
  v4 = *(v0 + 16);
  *(v0 + 192) = v4;
  *(v0 + 208) = *(v0 + 32);
  v5 = (v0 + 40);
  v6 = (v0 + 48);
  v7 = (v0 + 56);
  v8 = v4;
  while (1)
  {
    v9 = *v6;
    v10 = *v5;
    v11 = *v7;
    if (v8 < 0)
    {
      v17 = sub_2554F22F8();
      if (!v17)
      {
        break;
      }

      *(v0 + 176) = v17;
      sub_2554F112C();
      swift_dynamicCast();
      v16 = *(v0 + 168);
      v14 = v10;
      v15 = v9;
    }

    else
    {
      v12 = *v5;
      v13 = *v6;
      v14 = v10;
      if (!v9)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_19;
          }

          v13 = *(*(v0 + 200) + 8 * v14);
          ++v12;
          if (v13)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x282200490]();
      }

LABEL_9:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    }

    *(v0 + 224) = v14;
    *(v0 + 232) = v15;
    *(v0 + 216) = v16;
    if (!v16)
    {
      break;
    }

    *(v0 + 240) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_41;
    }

    if (0x8F5C28F5C28F5C29 * v11 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70)
    {
      sub_2554F2288();
      *(v0 + 248) = 0;
      v50 = *(MEMORY[0x277D857F8] + 4);
      v51 = swift_task_alloc();
      *(v0 + 256) = v51;
      *v51 = v0;
      v51[1] = sub_2554EEEE8;

      return MEMORY[0x282200490]();
    }

    v18 = [v16 identifier];
    v19 = *(v0 + 216);
    if (v18)
    {
      v26 = v18;
      v27 = sub_2554F2228();
      v29 = v28;

      *(v0 + 264) = v27;
      *(v0 + 272) = v29;
      v30 = v19;
      v31 = sub_2554EC1C8();
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = MEMORY[0x277D84F98];
      }

      if (*(v32 + 16) && (v33 = sub_2554ED2C8(v27, v29), (v34 & 1) != 0))
      {
        v35 = *(v32 + 56) + 32 * v33;
        v36 = *(v35 + 8);
        v52 = *v35;
        v37 = *(v35 + 16);
        v38 = *(v35 + 17);
        v39 = *(v35 + 18);
        v40 = *(v35 + 24);
        v41 = 256;
        if (!v38)
        {
          v41 = 0;
        }

        v42 = v41 | v37;
        v43 = 0x10000;
        if (!v39)
        {
          v43 = 0;
        }

        v44 = v42 | v43;
      }

      else
      {
        v52 = 0;
        v36 = 0;
        v44 = 0;
        v40 = 0;
      }

      *(v0 + 280) = v36;
      v45 = *(v0 + 216);

      v46 = sub_2554F1EA0(v27, v29);
      v48 = v47;
      *(v0 + 96) = v52;
      *(v0 + 288) = v47;
      *(v0 + 104) = v36;
      *(v0 + 112) = v44;
      *(v0 + 120) = v40;
      v49 = swift_task_alloc();
      *(v0 + 296) = v49;
      *v49 = v0;
      v49[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v27, v29, v45, (v0 + 96), v46, v48);
    }

    v8 = *(v0 + 192);
    v7 = (v0 + 240);
    v5 = (v0 + 224);
    v6 = (v0 + 232);
  }

  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
LABEL_19:
  v22 = *(v0 + 200);
  sub_2554EDA10();
  v23 = sub_2554ED8A8(*(v0 + 160));
  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_2554ECFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E78, &qword_2554F2A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2554ED034@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_2554ED2C8(0xD000000000000010, 0x80000002554F2E70), (v4 & 1) == 0) || (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (!*(v3 + 16))
  {
    v6 = 0;
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  result = sub_2554ED2C8(0xD000000000000019, 0x80000002554F2E90);
  if ((v5 & 1) != 0 && (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), result))
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  result = sub_2554ED2C8(0xD000000000000012, 0x80000002554F2EB0);
  if ((v7 & 1) != 0 && (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), result))
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(v3 + 16))
  {
    v9 = 0;
    goto LABEL_30;
  }

  result = sub_2554ED2C8(0xD000000000000015, 0x80000002554F2ED0);
  if ((v12 & 1) == 0 || (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), !result))
  {
LABEL_17:
    v9 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v9 = v16;
  if (!*(v3 + 16))
  {
    goto LABEL_30;
  }

LABEL_18:
  result = sub_2554ED2C8(0x707954616964656DLL, 0xE900000000000065);
  if (v10)
  {
    sub_2554ED340(*(v3 + 56) + 32 * result, v18);
    result = swift_dynamicCast();
    if (result)
    {
      if (v16 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (v16 == 2);
      }

      goto LABEL_31;
    }
  }

LABEL_30:
  v11 = 0;
LABEL_31:
  v13 = 256;
  if (!v8)
  {
    v13 = 0;
  }

  v14 = v13 | v6;
  v15 = 0x10000;
  if (!v9)
  {
    v15 = 0;
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v14 | v15;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_2554ED2C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2554F23F8();
  sub_2554F2248();
  v6 = sub_2554F2428();

  return sub_2554ED39C(a1, a2, v6);
}

uint64_t sub_2554ED340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2554ED39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2554F2388())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2554ED454(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E90, &qword_2554F2A98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2554ED564(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E30, &qword_2554F2978);
  v39 = a2;
  result = sub_2554F2368();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v27 = *(v26 + 8);
      v44 = *v26;
      v42 = *(v26 + 17);
      v43 = *(v26 + 16);
      v41 = *(v26 + 18);
      v40 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_2554F23F8();
      sub_2554F2248();
      result = sub_2554F2428();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v44;
      *(v18 + 8) = v27;
      *(v18 + 16) = v43;
      *(v18 + 17) = v42;
      *(v18 + 18) = v41;
      *(v18 + 24) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2554ED854(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2554ED8A8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_2554EDB04();
  result = MEMORY[0x259C35A00](v3, &type metadata for IRMBBundle, v4);
  v6 = 0;
  v24 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(a1 + 56) + ((v11 << 11) | (32 * v12));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 17);
    v17 = *(v13 + 18);
    v18 = *(v13 + 24);
    v19 = v1 & 0xFF000000 | *(v13 + 16);
    if (v16)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 | v20;
    if (v17)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = 0;
    }

    v1 = v21 | v22;

    sub_2554EDB58(v23, v14, v15, v1, v18);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v24;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2554EDA18@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2554F22E8();
    sub_2554F112C();
    sub_2554F13E8(&qword_27F7B7E40, sub_2554F112C);
    sub_2554F22B8();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

unint64_t sub_2554EDB04()
{
  result = qword_2814510A8;
  if (!qword_2814510A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814510A8);
  }

  return result;
}

uint64_t sub_2554EDB58(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v43 = a4 & 0x10000;
  v44 = a4 & 0x100;
  v11 = *v6;
  v12 = *(*v6 + 40);
  sub_2554F23F8();
  v46 = a2;
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  v45 = a4;
  sub_2554F2418();
  v42 = a5;
  MEMORY[0x259C35B60](a5);
  v13 = sub_2554F2428();
  v14 = v11 + 56;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  v40 = v6;
  v39 = a4 & 1;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v38 = v11;
    v18 = *(v11 + 48);
    v19 = v46;
    while (1)
    {
      v21 = v18 + 32 * v16;
      v22 = *(v21 + 16);
      v23 = *(v21 + 17);
      v24 = *(v21 + 24);
      v25 = (v43 != 0) ^ *(v21 + 18);
      if (*v21 == v19 && *(v21 + 8) == a3)
      {
        if ((v22 ^ v45 | (v44 != 0) ^ v23 | v25))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v20 = sub_2554F2388();
        v19 = v46;
        if ((v22 ^ v45) & 1 | ((v20 & 1) == 0) | (((v44 != 0) ^ v23) | v25) & 1)
        {
          goto LABEL_5;
        }
      }

      if (v24 == v42)
      {

        v31 = *(v38 + 48) + 32 * v16;
        v33 = *v31;
        v32 = *(v31 + 8);
        v34 = *(v31 + 16);
        v35 = *(v31 + 17);
        v36 = *(v31 + 18);
        v37 = *(v31 + 24);
        *a1 = v33;
        *(a1 + 8) = v32;
        *(a1 + 16) = v34;
        *(a1 + 17) = v35;
        *(a1 + 18) = v36;
        *(a1 + 24) = v37;

        return 0;
      }

LABEL_5:
      v16 = (v16 + 1) & v17;
      if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v19 = v46;
LABEL_14:
  v27 = *v40;
  v28 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v40;

  sub_2554EDE00(v28, a3, v45 & 0x10101, v42, v16, isUniquelyReferenced_nonNull_native);
  *v40 = v47;
  *a1 = v28;
  *(a1 + 8) = a3;
  *(a1 + 16) = v39;
  *(a1 + 17) = BYTE1(v44);
  *(a1 + 18) = BYTE2(v43);
  *(a1 + 24) = v42;
  return 1;
}

uint64_t sub_2554EDE00(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5, char a6)
{
  v8 = a2;
  v9 = result;
  v10 = a3 & 0x100;
  v11 = a3 & 0x10000;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  v33 = (a3 & 0x10000u) >> 16;
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    v36 = a3;
    v35 = result;
    if (a6)
    {
      sub_2554F06D4(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_2554F099C();
LABEL_20:
        LOBYTE(a3) = v36;
        v8 = a2;
        v9 = v35;
        goto LABEL_21;
      }

      sub_2554F0B18(v12 + 1);
    }

    v14 = *v6;
    v15 = *(*v6 + 40);
    sub_2554F23F8();
    sub_2554F2248();
    sub_2554F2418();
    sub_2554F2418();
    sub_2554F2418();
    MEMORY[0x259C35B60](a4);
    result = sub_2554F2428();
    v16 = v14 + 56;
    v17 = -1 << *(v14 + 32);
    a5 = result & ~v17;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v18 = ~v17;
      v19 = *(v14 + 48);
      a3 = v36;
      v8 = a2;
      v9 = v35;
      v34 = v11;
      while (1)
      {
        v20 = v19 + 32 * a5;
        result = *v20;
        v21 = *(v20 + 16);
        v22 = *(v20 + 17);
        v23 = *(v20 + 24);
        v24 = (v11 != 0) ^ *(v20 + 18);
        if (*v20 == v9 && *(v20 + 8) == v8)
        {
          if (((v21 ^ a3 | (v10 != 0) ^ v22 | v24) & 1) == 0)
          {
LABEL_10:
            if (v23 == a4)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v26 = v18;
          result = sub_2554F2388();
          v18 = v26;
          v9 = v35;
          v8 = a2;
          a3 = v36;
          v11 = v34;
          if (!((v21 ^ v36) & 1 | ((result & 1) == 0) | (((v10 != 0) ^ v22) | v24) & 1))
          {
            goto LABEL_10;
          }
        }

        a5 = (a5 + 1) & v18;
        if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v27 = *v32;
  *(*v32 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v28 = *(v27 + 48) + 32 * a5;
  *v28 = v9;
  *(v28 + 8) = v8;
  *(v28 + 16) = a3 & 1;
  *(v28 + 17) = BYTE1(v10);
  *(v28 + 18) = v33;
  *(v28 + 24) = a4;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_24:
    result = sub_2554F2398();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t IRMBBundle.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2554EE0D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2554EE118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2554EE180()
{
  v0 = sub_2554F2208();
  __swift_allocate_value_buffer(v0, qword_27F7B7EA0);
  __swift_project_value_buffer(v0, qword_27F7B7EA0);
  return sub_2554F21F8();
}

uint64_t static IRMBManager.query(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2554EE2AC;

  return static IRMBManager.query(_:priorBundle:)(a1, a2, a3, 0);
}

uint64_t sub_2554EE2AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static IRMBManager.query(_:priorBundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_2554EE3C4, 0, 0);
}

uint64_t sub_2554EE3C4()
{
  v1 = sub_2554EC1C8();
  if (!v1)
  {
    v1 = sub_2554F0FE4(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  if (*(v1 + 16) && (v3 = sub_2554ED2C8(*(v0 + 56), *(v0 + 64)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 32 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 17);
    v10 = *(v5 + 18);
    v11 = *(v5 + 24);
    v12 = 256;
    if (!v9)
    {
      v12 = 0;
    }

    v13 = v12 | v8;
    v14 = 0x10000;
    if (!v10)
    {
      v14 = 0;
    }

    v15 = v13 | v14;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v15 = 0;
    v11 = 0;
  }

  *(v0 + 80) = v6;
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = sub_2554F1EA0(v17, v16);
  v20 = v19;
  *(v0 + 16) = v7;
  *(v0 + 88) = v19;
  *(v0 + 24) = v6;
  *(v0 + 32) = v15;
  *(v0 + 40) = v11;
  v21 = swift_task_alloc();
  *(v0 + 96) = v21;
  *v21 = v0;
  v21[1] = sub_2554EE53C;
  v22 = *(v0 + 64);
  v23 = *(v0 + 72);
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);

  return sub_2554EE734(v24, v25, v22, v23, (v0 + 16), v18, v20);
}

uint64_t sub_2554EE53C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2554EE6D0;
  }

  else
  {
    v4 = sub_2554EE66C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2554EE66C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2554EE6D0()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_2554EE734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v8 = a5[1];
  *(v7 + 96) = *a5;
  *(v7 + 112) = v8;
  return MEMORY[0x2822009F8](sub_2554EE764, 0, 0);
}

uint64_t sub_2554EE764()
{
  v92 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [*(v0 + 72) identifier];
    if (!v2)
    {
LABEL_8:
      v13 = *(v0 + 64);
      v14 = *(v0 + 72);
      v15 = *(v0 + 56);
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_2554F2338();
      MEMORY[0x259C359B0](0xD000000000000027, 0x80000002554F2D20);
      MEMORY[0x259C359B0](v15, v13);
      MEMORY[0x259C359B0](0xD00000000000002BLL, 0x80000002554F2DA0);
      *(v0 + 16) = v14;
      v16 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E58, &qword_2554F2990);
      v17 = sub_2554F2238();
      MEMORY[0x259C359B0](v17);

LABEL_37:
      v59 = v87;
      v60 = v88;
      if (qword_27F7B7E10 != -1)
      {
        swift_once();
      }

      v61 = sub_2554F2208();
      __swift_project_value_buffer(v61, qword_27F7B7EA0);

      v62 = sub_2554F21E8();
      v63 = sub_2554F22C8();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v87 = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_2554EFF90(v59, v60, &v87);
        _os_log_impl(&dword_2554EB000, v62, v63, "%s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x259C35E60](v65, -1, -1);
        MEMORY[0x259C35E60](v64, -1, -1);
      }

      sub_2554F1468();
      swift_allocError();
      *v66 = v59;
      v66[1] = v60;
      swift_willThrow();
      v67 = *(v0 + 8);
      goto LABEL_54;
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = v2;
    v6 = sub_2554F2228();
    v8 = v7;

    if (v6 == v4 && v8 == v3)
    {
    }

    else
    {
      v10 = *(v0 + 56);
      v11 = *(v0 + 64);
      v12 = sub_2554F2388();

      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v18 = *(v0 + 104);
  if (v18)
  {
    if (*(v0 + 96) != *(v0 + 56) || v18 != *(v0 + 64))
    {
      v20 = *(v0 + 104);
      if ((sub_2554F2388() & 1) == 0)
      {
        v57 = *(v0 + 56);
        v56 = *(v0 + 64);
        v87 = 0;
        v88 = 0xE000000000000000;
        v76 = *(v0 + 112);
        v77 = *(v0 + 96);
        sub_2554F2338();
        MEMORY[0x259C359B0](0xD000000000000027, 0x80000002554F2D20);
        MEMORY[0x259C359B0](v57, v56);
        MEMORY[0x259C359B0](0xD00000000000002ELL, 0x80000002554F2D50);
        *(v0 + 16) = v77;
        *(v0 + 32) = v76;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E48, &qword_2554F2988);
        v58 = sub_2554F2238();
        MEMORY[0x259C359B0](v58);

        MEMORY[0x259C359B0](0xD00000000000001BLL, 0x80000002554F2D80);
        goto LABEL_37;
      }
    }
  }

  if (v1)
  {
    v21 = *(v0 + 72);
    v22 = [v21 identifier];
    if (v22)
    {
      v23 = *(v0 + 88);
      v24 = v22;
      v1 = sub_2554F2228();
      v26 = v25;

      v27 = [v21 bundleType];
      if (v23)
      {
        v28 = *(v0 + 80);
        if (v28 == 0x6D726F46676E6F4CLL && *(v0 + 88) == 0xED00006F69647541 || (v29 = *(v0 + 80), v30 = *(v0 + 88), (sub_2554F2388() & 1) != 0))
        {
          v27 = 1;
        }

        else if (v28 == 0x6D726F46676E6F4CLL && *(v0 + 88) == 0xED00006F65646956)
        {
          v27 = 2;
        }

        else
        {
          v75 = *(v0 + 80);
          if (sub_2554F2388())
          {
            v27 = 2;
          }
        }
      }

      v31 = 1;
      v32 = 257;
      v33 = *(v0 + 88);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v1 = 0;
  }

  v26 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v33 = *(v0 + 88);
  if (!v18)
  {
LABEL_24:
    if (v33)
    {
      v34 = sub_2554F2010(*(v0 + 80), v33);
      v36 = *(v0 + 56);
      v35 = *(v0 + 64);
      v37 = *(v0 + 48);
      if (v26)
      {

        *v37 = v36;
        *(v37 + 8) = v35;
        *(v37 + 16) = v32;
        *(v37 + 18) = v31;
      }

      else
      {
        *v37 = v36;
        *(v37 + 8) = v35;
        *(v37 + 16) = 257;
        *(v37 + 18) = 1;
      }

      *(v37 + 24) = v34;
      goto LABEL_52;
    }

    if (v26)
    {
      v71 = *(v0 + 48);
      *v71 = v1;
      *(v71 + 8) = v26;
      *(v71 + 16) = v32;
      *(v71 + 18) = v31;
      *(v71 + 24) = v27;
      goto LABEL_53;
    }

    v73 = *(v0 + 64);
    v74 = *(v0 + 48);
    *v74 = *(v0 + 56);
    *(v74 + 8) = v73;
    *(v74 + 16) = 0;
    *(v74 + 18) = 0;
    *(v74 + 24) = 0;
LABEL_52:

    goto LABEL_53;
  }

LABEL_29:
  if (v33)
  {
    v38 = sub_2554F2010(*(v0 + 80), v33);
    if (!v26)
    {
      v68 = *(v0 + 112);
      v69 = *(v0 + 64);
      v70 = *(v0 + 48);
      *v70 = *(v0 + 56);
      *(v70 + 8) = v69;
      *(v70 + 16) = v68 & 1;
      *(v70 + 17) = BYTE1(v68) & 1;
      *(v70 + 18) = BYTE2(v68) & 1;
      *(v70 + 24) = v38;
      goto LABEL_52;
    }

    v39 = *(v0 + 120);
    v40 = *(v0 + 112);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    v82 = v1;
    v83 = v26;
    v84 = v32;
    v85 = v31;
    v86 = v27;
    v87 = v41;
    v88 = v42;
    v89 = v40 & 0x101;
    v90 = BYTE2(v40) & 1;
    v91 = v39;
    sub_2554F156C(&v82, &v87, &v78);

    result = v79;
    if (v79)
    {
      v45 = *(v0 + 56);
      v44 = *(v0 + 64);
      v46 = *(v0 + 48);
      v47 = v80;

      *v46 = v45;
      *(v46 + 8) = v44;
      *(v46 + 16) = v47 & 1;
      *(v46 + 17) = BYTE1(v47) & 1;
      *(v46 + 18) = BYTE2(v47) & 1;
      *(v46 + 24) = v38;
      goto LABEL_52;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v49 = *(v0 + 112);
  v48 = *(v0 + 120);
  v51 = *(v0 + 96);
  v50 = *(v0 + 104);
  if (!v26)
  {
    v72 = *(v0 + 48);
    *v72 = v51;
    *(v72 + 8) = v50;
    *(v72 + 16) = v49 & 1;
    *(v72 + 17) = BYTE1(v49) & 1;
    *(v72 + 18) = BYTE2(v49) & 1;
    *(v72 + 24) = v48;
    goto LABEL_52;
  }

  v82 = v1;
  v83 = v26;
  v84 = v32;
  v85 = v31;
  v86 = v27;
  v87 = v51;
  v88 = v50;
  v89 = v49 & 0x101;
  v90 = BYTE2(v49) & 1;
  v91 = v48;
  sub_2554F156C(&v82, &v87, &v78);

  v52 = v79;
  if (!v79)
  {
    goto LABEL_61;
  }

  v53 = *(v0 + 48);
  v54 = v81;
  v55 = v80;
  *v53 = v78;
  *(v53 + 8) = v52;
  *(v53 + 16) = v55 & 1;
  *(v53 + 17) = BYTE1(v55) & 1;
  *(v53 + 18) = BYTE2(v55) & 1;
  *(v53 + 24) = v54;
LABEL_53:
  v67 = *(v0 + 8);
LABEL_54:

  return v67();
}

uint64_t sub_2554EEEE8()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2554EEFE4, 0, 0);
}

uint64_t sub_2554EEFE4()
{
  v51 = *(v0 + 248);
  v1 = *(v0 + 216);
  while (1)
  {
    v2 = [v1 identifier];
    v3 = *(v0 + 216);
    if (v2)
    {
      v25 = v2;
      v26 = sub_2554F2228();
      v28 = v27;

      *(v0 + 264) = v26;
      *(v0 + 272) = v28;
      v29 = v3;
      v30 = sub_2554EC1C8();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = MEMORY[0x277D84F98];
      }

      if (*(v31 + 16) && (v32 = sub_2554ED2C8(v26, v28), (v33 & 1) != 0))
      {
        v34 = *(v31 + 56) + 32 * v32;
        v35 = *(v34 + 8);
        v52 = *v34;
        v36 = *(v34 + 16);
        v37 = *(v34 + 17);
        v38 = *(v34 + 18);
        v39 = *(v34 + 24);
        v40 = 256;
        if (!v37)
        {
          v40 = 0;
        }

        v41 = v40 | v36;
        v42 = 0x10000;
        if (!v38)
        {
          v42 = 0;
        }

        v43 = v41 | v42;
      }

      else
      {
        v52 = 0;
        v35 = 0;
        v43 = 0;
        v39 = 0;
      }

      *(v0 + 280) = v35;
      v44 = *(v0 + 216);

      v45 = sub_2554F1EA0(v26, v28);
      v47 = v46;
      *(v0 + 96) = v52;
      *(v0 + 288) = v46;
      *(v0 + 104) = v35;
      *(v0 + 112) = v43;
      *(v0 + 120) = v39;
      v48 = swift_task_alloc();
      *(v0 + 296) = v48;
      *v48 = v0;
      v48[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v26, v28, v44, (v0 + 96), v45, v47);
    }

    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = *(v0 + 192);
    if (v7 < 0)
    {
      v12 = sub_2554F22F8();
      if (!v12)
      {
        break;
      }

      *(v0 + 176) = v12;
      sub_2554F112C();
      swift_dynamicCast();
      v1 = *(v0 + 168);
      v10 = v6;
      v11 = v4;
    }

    else
    {
      v8 = *(v0 + 224);
      v9 = *(v0 + 232);
      v10 = v8;
      if (!v4)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_20;
          }

          v9 = *(*(v0 + 200) + 8 * v10);
          ++v8;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x282200490]();
      }

LABEL_8:
      v11 = (v9 - 1) & v9;
      v1 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
    }

    *(v0 + 224) = v10;
    *(v0 + 232) = v11;
    *(v0 + 216) = v1;
    if (!v1)
    {
      break;
    }

    *(v0 + 240) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_41;
    }

    if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v5) <= 0xA3D70A3D70A3D70)
    {
      v13 = v1;
      sub_2554F2288();
      *(v0 + 248) = v51;
      if (v51)
      {
        v14 = *(v0 + 200);
        v15 = *(v0 + 208);
        v16 = *(v0 + 192);
        sub_2554EDA10();

        v17 = *(v0 + 160);

        v18 = *(v0 + 8);

        return v18();
      }

      v49 = *(MEMORY[0x277D857F8] + 4);
      v50 = swift_task_alloc();
      *(v0 + 256) = v50;
      *v50 = v0;
      v50[1] = sub_2554EEEE8;

      return MEMORY[0x282200490]();
    }
  }

  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
LABEL_20:
  v22 = *(v0 + 200);
  sub_2554EDA10();
  v23 = sub_2554ED8A8(*(v0 + 160));
  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_2554EF428()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);
    v5 = *(v2 + 272);

    v6 = sub_2554EFA34;
  }

  else
  {
    v7 = *(v2 + 288);

    v6 = sub_2554EF558;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2554EF558()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 216);
  v5 = *(v0 + 315);

  if (*(v0 + 81))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 80) | (v5 << 24) | v6;
  if (*(v0 + 82))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  sub_2554F0538(*(v0 + 64), *(v0 + 72), v7 | v8, *(v0 + 88), v3, v2, v0 + 128);

  v10 = *(v0 + 136);

  v61 = *(v0 + 304);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 224);
  *(v0 + 312) = v9;
  v14 = *(v0 + 192);
  if (v14 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v15 = v13;
  v16 = v12;
  v17 = v13;
  if (!v12)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((*(v0 + 208) + 64) >> 6))
      {
LABEL_23:
        v25 = *(v0 + 200);
        sub_2554EDA10();
        v26 = sub_2554ED8A8(*(v0 + 160));
        v27 = *(v0 + 8);

        return v27(v26);
      }

      v16 = *(*(v0 + 200) + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return MEMORY[0x282200490]();
  }

LABEL_12:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
  while (1)
  {
    *(v0 + 224) = v17;
    *(v0 + 232) = v18;
    *(v0 + 216) = v19;
    if (!v19)
    {
LABEL_22:
      v23 = *(v0 + 208);
      v24 = *(v0 + 192);
      goto LABEL_23;
    }

    *(v0 + 240) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_48;
    }

    if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v11) <= 0xA3D70A3D70A3D70)
    {
      break;
    }

    v21 = [v19 identifier];
    v22 = *(v0 + 216);
    if (v21)
    {
      v35 = v21;
      v36 = sub_2554F2228();
      v38 = v37;

      *(v0 + 264) = v36;
      *(v0 + 272) = v38;
      v39 = v22;
      v40 = sub_2554EC1C8();
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = MEMORY[0x277D84F98];
      }

      if (*(v41 + 16) && (v42 = sub_2554ED2C8(v36, v38), (v43 & 1) != 0))
      {
        v44 = *(v41 + 56) + 32 * v42;
        v45 = *(v44 + 8);
        v62 = *v44;
        v46 = *(v44 + 16);
        v47 = *(v44 + 17);
        v48 = *(v44 + 18);
        v60 = *(v44 + 24);
        v49 = 256;
        if (!v47)
        {
          v49 = 0;
        }

        v50 = v49 | v46;
        v51 = 0x10000;
        if (!v48)
        {
          v51 = 0;
        }

        v52 = v50 | v51;
      }

      else
      {
        v60 = 0;
        v62 = 0;
        v45 = 0;
        v52 = 0;
      }

      *(v0 + 280) = v45;
      v53 = *(v0 + 216);

      v54 = sub_2554F1EA0(v36, v38);
      v56 = v55;
      *(v0 + 96) = v62;
      *(v0 + 288) = v55;
      *(v0 + 104) = v45;
      *(v0 + 112) = v52;
      *(v0 + 120) = v60;
      v57 = swift_task_alloc();
      *(v0 + 296) = v57;
      *v57 = v0;
      v57[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v36, v38, v53, (v0 + 96), v54, v56);
    }

    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 224);
    v14 = *(v0 + 192);
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v20 = sub_2554F22F8();
    if (!v20)
    {
      goto LABEL_22;
    }

    *(v0 + 176) = v20;
    sub_2554F112C();
    swift_dynamicCast();
    v19 = *(v0 + 168);
    v17 = v13;
    v18 = v12;
  }

  v29 = v19;
  sub_2554F2288();
  *(v0 + 248) = v61;
  if (!v61)
  {
    v58 = *(MEMORY[0x277D857F8] + 4);
    v59 = swift_task_alloc();
    *(v0 + 256) = v59;
    *v59 = v0;
    v59[1] = sub_2554EEEE8;

    return MEMORY[0x282200490]();
  }

  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v32 = *(v0 + 192);
  sub_2554EDA10();

  v33 = *(v0 + 160);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2554EFA34()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 216);

  MEMORY[0x259C35DA0](v1);
  while (1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = *(v0 + 192);
    if (v7 < 0)
    {
      v13 = sub_2554F22F8();
      if (!v13)
      {
        break;
      }

      *(v0 + 176) = v13;
      sub_2554F112C();
      swift_dynamicCast();
      v12 = *(v0 + 168);
      v10 = v6;
      v11 = v4;
    }

    else
    {
      v8 = *(v0 + 224);
      v9 = *(v0 + 232);
      v10 = v8;
      if (!v4)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_17;
          }

          v9 = *(*(v0 + 200) + 8 * v10);
          ++v8;
          if (v9)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        return MEMORY[0x282200490]();
      }

LABEL_7:
      v11 = (v9 - 1) & v9;
      v12 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
    }

    *(v0 + 224) = v10;
    *(v0 + 232) = v11;
    *(v0 + 216) = v12;
    if (!v12)
    {
      break;
    }

    *(v0 + 240) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_39;
    }

    if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v5) <= 0xA3D70A3D70A3D70)
    {
      sub_2554F2288();
      *(v0 + 248) = 0;
      v47 = *(MEMORY[0x277D857F8] + 4);
      v48 = swift_task_alloc();
      *(v0 + 256) = v48;
      *v48 = v0;
      v48[1] = sub_2554EEEE8;

      return MEMORY[0x282200490]();
    }

    v14 = [v12 identifier];
    v15 = *(v0 + 216);
    if (v14)
    {
      v22 = v14;
      v23 = sub_2554F2228();
      v25 = v24;

      *(v0 + 264) = v23;
      *(v0 + 272) = v25;
      v26 = v15;
      v27 = sub_2554EC1C8();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = MEMORY[0x277D84F98];
      }

      if (*(v28 + 16) && (v29 = sub_2554ED2C8(v23, v25), (v30 & 1) != 0))
      {
        v31 = *(v28 + 56) + 32 * v29;
        v33 = *v31;
        v32 = *(v31 + 8);
        v34 = *(v31 + 16);
        v35 = *(v31 + 17);
        v36 = *(v31 + 18);
        v37 = *(v31 + 24);
        v38 = 256;
        if (!v35)
        {
          v38 = 0;
        }

        v39 = v38 | v34;
        v40 = 0x10000;
        if (!v36)
        {
          v40 = 0;
        }

        v41 = v39 | v40;
      }

      else
      {
        v33 = 0;
        v32 = 0;
        v41 = 0;
        v37 = 0;
      }

      *(v0 + 280) = v32;
      v42 = *(v0 + 216);

      v43 = sub_2554F1EA0(v23, v25);
      v45 = v44;
      *(v0 + 288) = v44;
      *(v0 + 96) = v33;
      *(v0 + 104) = v32;
      *(v0 + 112) = v41;
      *(v0 + 120) = v37;
      v46 = swift_task_alloc();
      *(v0 + 296) = v46;
      *v46 = v0;
      v46[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v23, v25, v42, (v0 + 96), v43, v45);
    }
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 192);
LABEL_17:
  v18 = *(v0 + 200);
  sub_2554EDA10();
  v19 = sub_2554ED8A8(*(v0 + 160));
  v20 = *(v0 + 8);

  return v20(v19);
}

void *sub_2554EFE94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2554EFEB0()
{
  v1 = *v0;
  sub_2554F23F8();
  MEMORY[0x259C35B60](v1);
  return sub_2554F2428();
}

uint64_t sub_2554EFF24()
{
  v1 = *v0;
  sub_2554F23F8();
  MEMORY[0x259C35B60](v1);
  return sub_2554F2428();
}

uint64_t sub_2554EFF90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2554F005C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2554ED340(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2554F005C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2554F0168(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2554F2348();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2554F0168(uint64_t a1, unint64_t a2)
{
  v4 = sub_2554F01B4(a1, a2);
  sub_2554F02E4(&unk_286769738);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2554F01B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2554F03D0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2554F2348();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2554F2268();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2554F03D0(v10, 0);
        result = sub_2554F2328();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2554F02E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2554F0444(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2554F03D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E60, &qword_2554F2998);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2554F0444(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E60, &qword_2554F2998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2554F0538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = v7;
  v15 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v7;
  v19 = sub_2554ED2C8(a5, a6);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  result = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v18;
  if (v17[3] >= result)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_2554F0E48();
    goto LABEL_6;
  }

  sub_2554ED564(result, isUniquelyReferenced_nonNull_native);
  result = sub_2554ED2C8(a5, a6);
  if ((v8 & 1) != (v23 & 1))
  {
    result = sub_2554F23A8();
    __break(1u);
    return result;
  }

  v19 = result;
LABEL_6:
  if (v8)
  {
    v24 = v17[7] + 32 * v19;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 17);
    v28 = *(v24 + 18);
    v29 = *(v24 + 24);
    *a7 = *v24;
    *(a7 + 8) = v25;
    *(a7 + 16) = v26;
    *(a7 + 17) = v27;
    *(a7 + 18) = v28;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    *(v24 + 17) = BYTE1(a3) & 1;
    *(v24 + 18) = BYTE2(a3) & 1;
    *(v24 + 24) = a4;
  }

  else
  {
    sub_2554F0DE0(v19, a5, a6, a1, a2, a3 & 0x10101, a4, v17);
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;

    v29 = 0;
  }

  *(a7 + 24) = v29;
  *v9 = v17;
  return result;
}

uint64_t sub_2554F06D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E38, &qword_2554F2980);
  v5 = sub_2554F2318();
  v6 = v5;
  if (*(v3 + 16))
  {
    v35 = v1;
    v7 = 0;
    v36 = (v3 + 56);
    v37 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v15 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v19 + 18);
      v25 = *(v19 + 24);
      v26 = *(v6 + 40);
      sub_2554F23F8();
      sub_2554F2248();
      sub_2554F2418();
      sub_2554F2418();
      sub_2554F2418();
      MEMORY[0x259C35B60](v25);
      result = sub_2554F2428();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 32 * v13;
      *v14 = v20;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
      *(v14 + 17) = v23;
      *(v14 + 18) = v24;
      *(v14 + 24) = v25;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_2554F099C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E38, &qword_2554F2980);
  v2 = *v0;
  v3 = sub_2554F2308();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        v24 = *(v18 + 24);
        v25 = *(v4 + 48) + v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v21;
        *(v25 + 17) = v22;
        *(v25 + 18) = v23;
        *(v25 + 24) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2554F0B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E38, &qword_2554F2980);
  result = sub_2554F2318();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v19 + 18);
      v25 = *(v19 + 24);
      v26 = *(v6 + 40);
      sub_2554F23F8();

      sub_2554F2248();
      sub_2554F2418();
      sub_2554F2418();
      sub_2554F2418();
      MEMORY[0x259C35B60](v25);
      result = sub_2554F2428();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v37 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 17) = v23;
      *(v15 + 18) = v24;
      *(v15 + 24) = v25;
      ++*(v37 + 16);
      v3 = v36;
      v11 = v38;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_28:
    *v2 = v34;
  }

  return result;
}

unint64_t sub_2554F0DE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6 & 1;
  *(v9 + 17) = BYTE1(a6) & 1;
  *(v9 + 18) = BYTE2(a6) & 1;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

void *sub_2554F0E48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E30, &qword_2554F2978);
  v2 = *v0;
  v3 = sub_2554F2358();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 17);
        v27 = *(v22 + 18);
        v28 = *(v22 + 24);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 17) = v26;
        *(v30 + 18) = v27;
        *(v30 + 24) = v28;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2554F0FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E30, &qword_2554F2978);
    v3 = sub_2554F2378();

    v4 = (a1 + 72);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *(v4 - 8);
      v10 = *(v4 - 7);
      v11 = *(v4 - 6);
      v12 = *v4;

      result = sub_2554ED2C8(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 32 * result;
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = v9;
      *(v16 + 17) = v10;
      *(v16 + 18) = v11;
      *(v16 + 24) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 6;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_2554F112C()
{
  result = qword_27F7B7E18;
  if (!qword_27F7B7E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7B7E18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IRMBManager(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IRMBManager(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2554F1274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2554F12BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for IRMediaBundleType()
{
  if (!qword_27F7B7E20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F7B7E20);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2554F13E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2554F1468()
{
  result = qword_27F7B7E50;
  if (!qword_27F7B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B7E50);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

double sub_2554F156C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v9 = a1[3];
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  if (*a1 == *a2 && v4 == *(a2 + 8) || (v13 = *a1, (sub_2554F2388() & 1) != 0))
  {
    v14 = 256;
    if ((v7 & v11) == 0)
    {
      v14 = 0;
    }

    v15 = 0x10000;
    if ((v8 & v12) == 0)
    {
      v15 = 0;
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v14 | v15 | v6 & v10;
    a3[3] = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t IRMBBundle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[3];
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  sub_2554F2418();
  return MEMORY[0x259C35B60](v6);
}

uint64_t IRMBBundle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[3];
  sub_2554F23F8();
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  sub_2554F2418();
  MEMORY[0x259C35B60](v6);
  return sub_2554F2428();
}

uint64_t sub_2554F1774()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[3];
  sub_2554F23F8();
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  sub_2554F2418();
  MEMORY[0x259C35B60](v6);
  return sub_2554F2428();
}

BOOL _s30IntelligentRoutingMediaBundles10IRMBBundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 24);
  v8 = *(a1 + 18) ^ *(a2 + 18);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (((v2 ^ v5 | v3 ^ v6 | v8) & 1) == 0)
    {
      return v4 == v7;
    }
  }

  else if (!((v2 ^ v5) & 1 | ((sub_2554F2388() & 1) == 0) | ((v3 ^ v6) | v8) & 1))
  {
    return v4 == v7;
  }

  return 0;
}

unint64_t sub_2554F18DC()
{
  result = qword_2814510A0;
  if (!qword_2814510A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814510A0);
  }

  return result;
}

void sub_2554F1930()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v1 = sub_2554F2218();

  v2 = [v0 initWithSuiteName_];

  qword_2814511C0 = v2;
}

uint64_t sub_2554F19B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E78, &qword_2554F2A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2554F1A1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2554F1B94(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2554ED340(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2554F1B94((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id sub_2554F1B30()
{
  if (qword_281451098 != -1)
  {
    swift_once();
  }

  v1 = qword_2814511C0;
  qword_2814511C8 = qword_2814511C0;

  return v1;
}

char *sub_2554F1B94(char *a1, int64_t a2, char a3)
{
  result = sub_2554F1BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2554F1BB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E88, &qword_2554F2A90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2554F1CC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2554F1D6C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2554F2388() & 1;
  }
}

id sub_2554F1DC4(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2554F2218();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2554F2188();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_2554F1EA0(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_2554F1DC4(a1, a2, 0);
  if (result)
  {
    v5 = result;
    v6 = [result infoDictionary];
    v7 = sub_2554F2218();
    sub_2554F20D4();
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      sub_2554F22D8();
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2554F2120(v12);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2554F2010(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x6D726F46676E6F4CLL && a2 == 0xED00006F69647541 || (sub_2554F2388() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6D726F46676E6F4CLL && a2 == 0xED00006F65646956 || (sub_2554F2388() & 1) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2554F20D4()
{
  result = qword_281451090;
  if (!qword_281451090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281451090);
  }

  return result;
}

uint64_t sub_2554F2120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E98, &qword_2554F2AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}