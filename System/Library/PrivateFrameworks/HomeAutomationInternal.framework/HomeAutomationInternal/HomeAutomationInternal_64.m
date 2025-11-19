uint64_t sub_252DE8858(uint64_t a1, uint64_t a2)
{
  if (qword_27F53F728 != -1)
  {
    swift_once();
  }

  if ((sub_252DB4F4C(a1, qword_27F575C38) & 1) == 0)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E9DF70);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000073, 0x8000000252E9DCB0);

    return a1;
  }

  return a2;
}

BOOL sub_252DE89C0(uint64_t a1)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0x726F727245204D48, 0xEF203A65646F6320);
  type metadata accessor for HMError(0);
  sub_252DE9E74();
  sub_252E32C04();
  type metadata accessor for Code(0);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000073, 0x8000000252E9DCB0);

  sub_252E32C04();
  return qword_2864A9D70 == a1;
}

uint64_t sub_252DE8B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F8C0 != -1)
    {
      v7 = a1;
      v8 = a2;
      swift_once();
      a1 = v7;
      a2 = v8;
    }

    v2 = off_27F546238;
    if (*(off_27F546238 + 2))
    {
      v3 = sub_252A44A10(a1, a2);
      if (v4)
      {
        return *(v2[7] + 8 * v3);
      }
    }
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000032, 0x8000000252E9DD70, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  return 0;
}

uint64_t sub_252DE8C4C(void *a1, uint64_t a2)
{
  v91 = a1;
  v2 = [*(a2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v5 = 0;
    v92 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_2529F7A80(0, *(v92 + 2) + 1, 1, v92);
      }

      v14 = *(v92 + 2);
      v13 = *(v92 + 3);
      if (v14 >= v13 >> 1)
      {
        v92 = sub_2529F7A80((v13 > 1), v14 + 1, 1, v92);
      }

      v15 = v92;
      *(v92 + 2) = v14 + 1;
      v16 = &v15[16 * v14];
      *(v16 + 4) = v10;
      *(v16 + 5) = v12;
      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_19:

  if (qword_27F53F8C8 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v17 = off_27F546240;

    v18 = &off_279711000;
    v19 = sub_2529A79C8([v91 attribute], v17);

    if (v19)
    {
      break;
    }

    v25 = 0;
LABEL_37:
    if ([v91 taskType] == 4)
    {
      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v35 = off_27F546248 + 64;
      v36 = 1 << *(off_27F546248 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(off_27F546248 + 8);
      v39 = (v36 + 63) >> 6;
      v89 = "nits is nil, returning .unknown";
      v90 = off_27F546248;

      v40 = 0;
      while (v38)
      {
LABEL_49:
        v42 = __clz(__rbit64(v38)) | (v40 << 6);
        v43 = (v90[6] + 16 * v42);
        v29 = *v43;
        v44 = v43[1];
        v45 = *(v90[7] + 8 * v42);

        if (v45 == [v91 attribute])
        {
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v46 = sub_252E36AD4();
          __swift_project_value_buffer(v46, qword_27F544CB8);
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_252E379F4();

          v93 = 0x20646E756F46;
          v94 = 0xE600000000000000;
          MEMORY[0x2530AD570](v29, v44);
          MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
          v47 = HomeAttributeType.description.getter([v91 attribute]);
          MEMORY[0x2530AD570](v47);

          sub_252CC3D90(v93, v94, 0xD000000000000073, v89 | 0x8000000000000000);

          v93 = v29;
          v94 = v44;
          MEMORY[0x28223BE20](v48);
          v87 = &v93;
          if (sub_2529ED970(sub_25296A724, v86, v92))
          {
            goto LABEL_95;
          }
        }

        v38 &= v38 - 1;
      }

      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {
          goto LABEL_91;
        }

        v38 = *&v35[8 * v41];
        ++v40;
        if (v38)
        {
          v40 = v41;
          goto LABEL_49;
        }
      }

LABEL_97:
      __break(1u);
    }

    else
    {
      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v49 = off_27F546258;
      v50 = off_27F546258 + 64;
      v51 = 1 << *(off_27F546258 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(off_27F546258 + 8);
      v54 = (v51 + 63) >> 6;
      v89 = "nits is nil, returning .unknown";

      v55 = 0;
      while (v53)
      {
LABEL_66:
        v57 = __clz(__rbit64(v53)) | (v55 << 6);
        v58 = (v49[6] + 16 * v57);
        v29 = *v58;
        v59 = v58[1];
        v60 = *(v49[7] + 8 * v57);

        if (v60 == [v91 attribute])
        {
          v90 = v25;
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v61 = sub_252E36AD4();
          __swift_project_value_buffer(v61, qword_27F544CB8);
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_252E379F4();

          v93 = 0x20646E756F46;
          v94 = 0xE600000000000000;
          MEMORY[0x2530AD570](v29, v59);
          MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
          v62 = HomeAttributeType.description.getter([v91 attribute]);
          MEMORY[0x2530AD570](v62);

          sub_252CC3D90(v93, v94, 0xD000000000000073, v89 | 0x8000000000000000);

          v93 = v29;
          v94 = v59;
          MEMORY[0x28223BE20](v63);
          v87 = &v93;
          v25 = v90;
          if (sub_2529ED970(sub_25296A69C, v86, v92))
          {
            goto LABEL_95;
          }

          v18 = &off_279711000;
        }

        v53 &= v53 - 1;
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          if (qword_27F53F8D0 != -1)
          {
            swift_once();
          }

          v64 = off_27F546248 + 64;
          v65 = 1 << *(off_27F546248 + 32);
          v66 = -1;
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          v67 = v66 & *(off_27F546248 + 8);
          v68 = (v65 + 63) >> 6;
          v90 = off_27F546248;

          v69 = 0;
          while (v67)
          {
LABEL_83:
            v71 = __clz(__rbit64(v67)) | (v69 << 6);
            v72 = (v90[6] + 16 * v71);
            v29 = *v72;
            v73 = v72[1];
            v74 = *(v90[7] + 8 * v71);

            if (v74 == [v91 v18[203]])
            {
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v75 = sub_252E36AD4();
              __swift_project_value_buffer(v75, qword_27F544CB8);
              v93 = 0;
              v94 = 0xE000000000000000;
              sub_252E379F4();

              v93 = 0x20646E756F46;
              v94 = 0xE600000000000000;
              MEMORY[0x2530AD570](v29, v73);
              MEMORY[0x2530AD570](0x7562697274746120, 0xEB00000000206574);
              v76 = HomeAttributeType.description.getter([v91 v18[203]]);
              MEMORY[0x2530AD570](v76);

              sub_252CC3D90(v93, v94, 0xD000000000000073, v89 | 0x8000000000000000);

              v93 = v29;
              v94 = v73;
              MEMORY[0x28223BE20](v77);
              v87 = &v93;
              v78 = sub_2529ED970(sub_25296A724, v86, v92);
              if (v78)
              {
                if (qword_27F53F8A8 != -1)
                {
                  v78 = swift_once();
                }

                v93 = v29;
                v94 = v73;
                MEMORY[0x28223BE20](v78);
                v87 = &v93;
                v18 = &off_279711000;
                if ((sub_2529ED970(sub_25296A724, v86, v79) & 1) == 0)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                v18 = &off_279711000;
              }
            }

            v67 &= v67 - 1;
          }

          while (1)
          {
            v70 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_99;
            }

            if (v70 >= v68)
            {
LABEL_91:

              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v80 = sub_252E36AD4();
              __swift_project_value_buffer(v80, qword_27F544CB8);
              v93 = 0;
              v94 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E9DFA0);
              v81 = [v91 description];
              v82 = sub_252E36F34();
              v84 = v83;

              MEMORY[0x2530AD570](v82, v84);

              MEMORY[0x2530AD570](0x6E7275746572202CLL, 0xEF6C696E20676E69);
              sub_252CC3D90(v93, v94, 0xD000000000000073, 0x8000000252E9DCB0);

              return 0;
            }

            v67 = *&v64[8 * v70];
            ++v69;
            if (v67)
            {
              v69 = v70;
              goto LABEL_83;
            }
          }
        }

        v53 = *&v50[8 * v56];
        ++v55;
        if (v53)
        {
          v55 = v56;
          goto LABEL_66;
        }
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  v20 = 1 << v17[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 8);
  v23 = (v20 + 63) >> 6;
  v88 = "nits is nil, returning .unknown";
  v89 = "c type found for user task ";

  v24 = 0;
  v25 = 0;
  while (1)
  {
    if (!v22)
    {
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v23)
        {

          goto LABEL_37;
        }

        v22 = *&v17[8 * v26 + 64];
        ++v24;
        if (v22)
        {
          v24 = v26;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_97;
    }

LABEL_30:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = (*(v17 + 6) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(*(v17 + 7) + 8 * v27);

    if (v31 == [v91 attribute])
    {
      break;
    }

LABEL_24:
    v22 &= v22 - 1;
  }

  v90 = v25;
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544CB8);
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000025, v89 | 0x8000000000000000);
  MEMORY[0x2530AD570](v29, v30);
  MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
  v33 = HomeAttributeType.description.getter([v91 attribute]);
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v93, v94, 0xD000000000000073, v88 | 0x8000000000000000);

  v93 = v29;
  v94 = v30;
  MEMORY[0x28223BE20](v34);
  v87 = &v93;
  v25 = v90;
  if ((sub_2529ED970(sub_25296A724, v86, v92) & 1) == 0)
  {
    v18 = &off_279711000;
    goto LABEL_24;
  }

LABEL_95:

  return v29;
}

uint64_t sub_252DE99A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F8E8 != -1)
    {
      v7 = a1;
      v8 = a2;
      swift_once();
      a1 = v7;
      a2 = v8;
    }

    v2 = off_27F546260;
    if (*(off_27F546260 + 2))
    {
      v3 = sub_252A44A10(a1, a2);
      if (v4)
      {
        return *(v2[7] + 8 * v3);
      }
    }
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544CB8);
    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9DC80, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  return 0;
}

uint64_t sub_252DE9AAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F8D0 != -1)
    {
      swift_once();
    }

    v4 = off_27F546248;
    if (*(off_27F546248 + 2))
    {
      v5 = sub_252A44A10(a1, a2);
      if (v6)
      {
        return *(v4[7] + 8 * v5);
      }
    }

    if (qword_27F53F8E0 != -1)
    {
      swift_once();
    }

    v4 = off_27F546258;
    if (*(off_27F546258 + 2))
    {
      v5 = sub_252A44A10(a1, a2);
      if (v7)
      {
        return *(v4[7] + 8 * v5);
      }
    }

    if (qword_27F53F8C8 != -1)
    {
      swift_once();
    }

    v4 = off_27F546240;
    if (*(off_27F546240 + 2))
    {
      v5 = sub_252A44A10(a1, a2);
      if (v8)
      {
        return *(v4[7] + 8 * v5);
      }
    }
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544CB8);
    sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E9DDB0, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  return 0;
}

uint64_t sub_252DE9C5C(uint64_t a1)
{
  if (qword_27F53F8D0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = 0;
  v3 = 1 << *(off_27F546248 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(off_27F546248 + 8);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = v8 | (v7 << 6);
    if (*(*(off_27F546248 + 7) + 8 * v9) == a1)
    {
      v10 = (*(off_27F546248 + 6) + 16 * v9);
      v12 = *v10;
      v11 = v10[1];

      return v12;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(off_27F546248 + v7 + 8);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544CB8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E9DD30);
  v15 = HomeAttributeType.description.getter(a1);
  MEMORY[0x2530AD570](v15);

  MEMORY[0x2530AD570](0x6E7275746572202CLL, 0xEF6C696E20676E69);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000073, 0x8000000252E9DCB0);

  return 0;
}

unint64_t sub_252DE9E74()
{
  result = qword_27F541F00;
  if (!qword_27F541F00)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541F00);
  }

  return result;
}

uint64_t sub_252DE9EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252DE9F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252DE9F9C()
{
  result = qword_27F5462B0;
  if (!qword_27F5462B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5462B0);
  }

  return result;
}

uint64_t sub_252DE9FF0(void *a1, unint64_t a2)
{
  v4 = sub_252E36324();
  v194 = *(v4 - 8);
  v195 = v4;
  v5 = *(v194 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v185 = v168 - v10;
  MEMORY[0x28223BE20](v9);
  v193 = v168 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v168 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v168 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (v168 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = v168 - v26;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x277D84F90];
  v28 = [a1 automatableTask];
  if (v28)
  {
    v29 = v28;
    v177 = a2;
    type metadata accessor for ControlAutomateHomeIntent();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v169 = v29;
      v184 = v22;
      v181 = v19;
      v182 = v16;
      v176 = v8;
      v170 = a1;
      v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      type metadata accessor for MutableHomeUserTask();
      swift_initStackObject();
      v32 = sub_252D6CA80(v31);
      swift_beginAccess();
      v33 = v32[4];
      if (v33 && v32[3] == 10)
      {
        v34 = *(v33 + 24);
        v35 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

        v36 = sub_252E36F04();
        v37 = [v35 initWithIdentifier:0 displayString:v36];

        v38 = v37;
        [v38 setBoolValue_];
        [v38 setType_];

        type metadata accessor for MutableAttributeValue();
        swift_allocObject();
        v39 = sub_252D6CC80(v38);

        v40 = v32[4];
        v32[4] = v39;
      }

      v41 = sub_252D6CB58();
      v42 = type metadata accessor for HomeAutomationEntityState.Builder(0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      v45 = swift_allocObject();
      v46 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute;
      v47 = v195;
      v49 = v194 + 56;
      v48 = *(v194 + 56);
      v48(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, 1, 1, v195);
      *(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_stateValue) = 0;
      v50 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType;
      v190 = v48;
      v191 = v49;
      v48(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, 1, 1, v47);
      v171 = v41;
      v51 = [v41 attribute];
      if (qword_27F53F2A8 != -1)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v52 = off_27F541CD8;
        v53 = MEMORY[0x277D84F90];
        if (*(off_27F541CD8 + 2) && (v54 = sub_252A488EC(v51), (v55 & 1) != 0))
        {
          LOBYTE(v197) = *(v52[7] + v54);
          AttributeSemantic.rawValue.getter();
          sub_252E362F4();
          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v190(v27, v56, 1, v195);
        swift_beginAccess();
        sub_252956BAC(v27, v45 + v46);
        swift_endAccess();
        sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
        v57 = [v171 value];
        if (v57)
        {
          v58 = v57;
          v59 = sub_252D0842C();
        }

        else
        {
          v59 = 0;
        }

        v61 = [v171 taskType];
        if (qword_27F53F298 != -1)
        {
          v167 = v61;
          swift_once();
          v61 = v167;
        }

        v62 = off_27F541CC8;
        if (*(off_27F541CC8 + 2) && (v63 = sub_252A488EC(v61), (v64 & 1) != 0))
        {
          v65 = (v62[7] + 16 * v63);
          v66 = *v65;
          v67 = v65[1];

          sub_252E37024();

          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        v168[1] = v32;
        v190(v25, v68, 1, v195);
        swift_beginAccess();
        sub_252956BAC(v25, v50 + v45);
        swift_endAccess();
        sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
        v69 = type metadata accessor for HomeAutomationEntityState(0);
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        v25 = swift_allocObject();
        v25[2] = 0;
        sub_252938414(v45 + v46, v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &qword_27F540298, &unk_252E3C270);
        *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v59;
        v183 = v25;
        sub_252938414(v50 + v45, v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, &qword_27F540298, &unk_252E3C270);
        swift_setDeallocating();
        sub_25293847C(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, &qword_27F540298, &unk_252E3C270);

        sub_25293847C(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, &qword_27F540298, &unk_252E3C270);
        v72 = *(*v45 + 48);
        v73 = *(*v45 + 52);
        swift_deallocClassInstance();
        v196 = v53;
        v51 = v177;
        if (v177 >> 62)
        {
          v25 = v177;
          v74 = sub_252E378C4();
          v51 = v25;
        }

        else
        {
          v74 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = v184;
        if (!v74)
        {
LABEL_83:

          *(inited + 16) = v53;
          v163 = *(v173 + 136);

          v60 = v163(v164);

          return v60;
        }

        v27 = 0;
        v180 = v51 & 0xC000000000000001;
        v175 = v51 & 0xFFFFFFFFFFFFFF8;
        v174 = v51 + 32;
        v75 = (v194 + 32);
        v179 = xmmword_252E3C130;
        v178 = v74;
        while (v180)
        {
          v51 = MEMORY[0x2530ADF00](v27, v177);
          v76 = v51;
          v77 = __OFADD__(v27++, 1);
          if (v77)
          {
            goto LABEL_85;
          }

LABEL_33:
          v78 = sub_252CD941C();
          v79 = sub_2529F7B8C(0, 1, 1, v53);
          v81 = *(v79 + 2);
          v80 = *(v79 + 3);
          if (v81 >= v80 >> 1)
          {
            v79 = sub_2529F7B8C((v80 > 1), v81 + 1, 1, v79);
          }

          *(v79 + 2) = v81 + 1;
          *&v79[8 * v81 + 32] = v78;
          v82 = sub_252CD94E0();
          v192 = v76;
          v186 = v27;
          if (v83)
          {
            v50 = v46;
            v189 = v79;
          }

          else
          {
            v85 = *(v79 + 2);
            v84 = *(v79 + 3);
            if (v85 >= v84 >> 1)
            {
              v162 = v82;
              v79 = sub_2529F7B8C((v84 > 1), v85 + 1, 1, v79);
              v82 = v162;
            }

            v50 = v46;
            *(v79 + 2) = v85 + 1;
            v189 = v79;
            *&v79[8 * v85 + 32] = v82;
          }

          v86 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
          v87 = *(v86 + 48);
          v88 = *(v86 + 52);
          v89 = swift_allocObject();
          v90 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
          LODWORD(v188) = 1;
          v91 = v195;
          v92 = v190;
          v190(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v195);
          v92(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v91);
          *(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
          v93 = MEMORY[0x277D84F90];
          *(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
          *(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
          v92(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v91);
          *(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v93;
          *(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v93;
          v94 = v192;
          v95 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v96 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          sub_252E37024();

          v92(v50, 0, 1, v91);
          swift_beginAccess();
          sub_252956BAC(v50, v89 + v90);
          swift_endAccess();
          sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);
          v97 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
          v98 = [*(v94 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
          v187 = v97;
          if (v98)
          {
            v99 = v98;
            v100 = type metadata accessor for Accessory();
            v101 = *(v100 + 48);
            v102 = *(v100 + 52);
            swift_allocObject();
            v103 = [*(sub_252D4CE7C(v99) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
            v104 = v185;
            v105 = v182;
            if (v103)
            {
              v106 = v103;
              v107 = type metadata accessor for Room();
              v108 = *(v107 + 48);
              v109 = *(v107 + 52);
              swift_allocObject();
              v110 = sub_2529A1E08(v106);

              v111 = *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v112 = *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              v113 = v181;
              sub_252E37024();
              v97 = v187;

              LODWORD(v188) = 0;
              goto LABEL_46;
            }

            LODWORD(v188) = 1;
          }

          else
          {
            v104 = v185;
            v105 = v182;
          }

          v113 = v181;
LABEL_46:
          v114 = 1;
          v190(v113, v188, 1, v195);
          sub_252AD6B04(v113);

          sub_25293847C(v113, &qword_27F540298, &unk_252E3C270);
          v115 = [*(v192 + v97) accessory];
          if (v115)
          {
            v116 = v115;
            v117 = type metadata accessor for Accessory();
            v118 = *(v117 + 48);
            v119 = *(v117 + 52);
            swift_allocObject();
            v120 = [*(sub_252D4CE7C(v116) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
            if (v120)
            {
              v121 = v120;
              v122 = type metadata accessor for Home();
              v123 = *(v122 + 48);
              v124 = *(v122 + 52);
              swift_allocObject();
              v125 = sub_2529E65BC(v121);

              v126 = *(v125 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v127 = *(v125 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              sub_252E37024();

              v114 = 0;
            }

            else
            {

              v114 = 1;
            }
          }

          v190(v105, v114, 1, v195);
          v128 = sub_252AD6E30(v105);

          v27 = &unk_252E3C270;
          sub_25293847C(v105, &qword_27F540298, &unk_252E3C270);
          v129 = sub_252CD941C();
          v130 = sub_252E25FC4(v129);
          static SemanticMapper.getSemanticKey(for:)(v130, v131 & 1, v50);
          v132 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
          swift_beginAccess();
          v188 = v128;
          sub_252956BAC(v50, v128 + v132);
          swift_endAccess();
          sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);
          v133 = v189;
          v134 = *(v189 + 2);
          if (v134)
          {
            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v50 = v133 + 32;
            v135 = off_27F541CD0;
            v136 = MEMORY[0x277D84F90];
            do
            {
              if (v135[2])
              {
                v137 = sub_252A488EC(*v50);
                if (v138)
                {
                  LOBYTE(v197) = *(v135[7] + v137);
                  AccessoryTypeSemantic.rawValue.getter();
                  sub_252E362F4();
                  v139 = *v75;
                  (*v75)(v193, v104, v195);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v136 = sub_2529F7F74(0, *(v136 + 2) + 1, 1, v136);
                  }

                  v27 = *(v136 + 2);
                  v140 = *(v136 + 3);
                  if (v27 >= v140 >> 1)
                  {
                    v136 = sub_2529F7F74(v140 > 1, v27 + 1, 1, v136);
                  }

                  *(v136 + 2) = v27 + 1;
                  v139(&v136[((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v27], v193, v195);
                }
              }

              ++v50;
              --v134;
            }

            while (v134);
          }

          else
          {
            v136 = MEMORY[0x277D84F90];
          }

          v45 = v188;
          v141 = *(v188 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types);
          *(v188 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v136;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v142 = swift_allocObject();
          *(v142 + 16) = v179;
          *(v142 + 32) = v183;
          v143 = *(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);
          *(v45 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v142;

          v32 = v192;
          v144 = [*(v192 + v187) accessory];
          if (v144)
          {
            v25 = v144;
            v145 = type metadata accessor for Accessory();
            v146 = *(v145 + 48);
            v147 = *(v145 + 52);
            swift_allocObject();
            sub_252D4CE7C(v25);
            v148 = sub_252D523AC();

            v50 = v176;
            v53 = MEMORY[0x277D84F90];
            if (v148 >> 62)
            {
              v46 = sub_252E378C4();
              if (!v46)
              {
LABEL_77:

                v150 = v53;
                v32 = v192;
                goto LABEL_78;
              }
            }

            else
            {
              v46 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v46)
              {
                goto LABEL_77;
              }
            }

            v197 = v53;
            v51 = sub_2529AA4E0(0, v46 & ~(v46 >> 63), 0);
            if (v46 < 0)
            {
              goto LABEL_86;
            }

            v149 = 0;
            v150 = v197;
            do
            {
              if ((v148 & 0xC000000000000001) != 0)
              {
                v151 = MEMORY[0x2530ADF00](v149, v148);
              }

              else
              {
                v151 = *(v148 + 8 * v149 + 32);
              }

              v152 = *(v151 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v153 = *(v151 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
              sub_252E37024();

              v197 = v150;
              v155 = *(v150 + 16);
              v154 = *(v150 + 24);
              if (v155 >= v154 >> 1)
              {
                sub_2529AA4E0(v154 > 1, v155 + 1, 1);
                v150 = v197;
              }

              ++v149;
              *(v150 + 16) = v155 + 1;
              (*(v194 + 32))(v150 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v155, v50, v195);
            }

            while (v46 != v149);

            v53 = MEMORY[0x277D84F90];
            v32 = v192;
            v45 = v188;
          }

          else
          {

            v53 = MEMORY[0x277D84F90];
            v150 = MEMORY[0x277D84F90];
          }

LABEL_78:
          sub_252AD6B10(v150);

          v156 = type metadata accessor for HomeAutomationEntityResponse(0);
          v157 = *(v156 + 48);
          v158 = *(v156 + 52);
          swift_allocObject();
          v25 = sub_2529605C0(v45);
          MEMORY[0x2530AD700]();
          v159 = v178;
          if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v161 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
            v45 = v188;
          }

          sub_252E372D4();

          v160 = v186 == v159;
          v27 = v186;
          v46 = v184;
          if (v160)
          {
            v53 = v196;
            goto LABEL_83;
          }
        }

        if (v27 >= *(v175 + 16))
        {
          goto LABEL_87;
        }

        v76 = *(v174 + 8 * v27);

        v77 = __OFADD__(v27++, 1);
        if (!v77)
        {
          goto LABEL_33;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        v166 = v51;
        swift_once();
        v51 = v166;
      }
    }
  }

  else
  {
  }

  v60 = (*(v173 + 136))(inited);

  return v60;
}

id sub_252DEB354(void *a1)
{
  v124 = a1;
  v126 = sub_252E32BA4();
  v123 = *(v126 - 8);
  v2 = *(v123 + 64);
  MEMORY[0x28223BE20](v126);
  v4 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E32FF4();
  v127 = *(v5 - 8);
  v6 = *(v127 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v112 - v11;
  v13 = sub_252E32E04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v112 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v125 = &v112 - v23;
  v24 = [v1 type];
  if (v24 == 1)
  {
    v120 = v14;
    v121 = v5;
    v118 = v4;
    v119 = v20;
    v125 = v13;
    v122 = v1;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v42 = sub_252E36AD4();
    __swift_project_value_buffer(v42, qword_27F544C40);
    sub_252CC3D90(0xD000000000000010, 0x8000000252E9E3A0, 0xD000000000000086, 0x8000000252E9E150);
    v43 = [v122 value];
    if (v43)
    {
      v44 = v43;
      v45 = v8;
      v46 = v12;
      type metadata accessor for TimeTriggerValue();
      if (swift_dynamicCastClass())
      {
        sub_252E32FC4();
        sub_252E32DF4();
        sub_252B93B3C(v8, v18, v12);
        v47 = v120;
        v48 = v120 + 8;
        v49 = v125;
        v117 = *(v120 + 8);
        v117(v18, v125);
        v50 = v45;
        v52 = v127 + 8;
        v51 = *(v127 + 8);
        v116 = v50;
        v51();
        if ((*(v47 + 48))(v46, 1, v49) != 1)
        {
          v113 = v51;
          v127 = v52;
          (*(v47 + 32))(v119, v46, v49);
          v73 = sub_252B680FC();
          swift_beginAccess();
          v74 = *(v73 + 16);
          v75 = *(v74 + 16);
          v114 = v48;
          v115 = v44;
          if (v75)
          {
            memcpy(v129, (v74 + 504 * v75 - 472), sizeof(v129));
            sub_2529353AC(v129, v128);

            v76 = v129[30];
            v77 = v129[31];

            sub_252935408(v129);
          }

          else
          {

            v76 = 0;
            v77 = 0;
          }

          sub_252DF24DC(v76, v77);

          v120 = sub_252E36F04();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_252E3C130;
          v79 = v116;
          sub_252E32FC4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
          v80 = sub_252E32FE4();
          v81 = *(v80 - 8);
          v82 = *(v81 + 72);
          v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_252E3C280;
          v85 = v84 + v83;
          v86 = *(v81 + 104);
          v86(v85, *MEMORY[0x277CC9968], v80);
          v86(v85 + v82, *MEMORY[0x277CC9980], v80);
          v86(v85 + 2 * v82, *MEMORY[0x277CC99A0], v80);
          sub_2529FE09C(v84);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v87 = v118;
          v88 = v119;
          sub_252E32F44();

          (v113)(v79, v121);
          v89 = objc_allocWithZone(MEMORY[0x277CD18A8]);
          v90 = sub_252E32B04();
          v91 = [v89 initWithFireDateComponents_];

          (*(v123 + 8))(v87, v126);
          *(v78 + 32) = v91;
          sub_252DF2648();
          v92 = sub_252E37254();

          v93 = [v122 recurrence];
          v94 = v120;
          v95 = [v124 newEventTriggerBuilderWithName:v120 events:v92 endEvents:0 recurrences:v93 predicate:0];

          v117(v88, v125);
          return v95;
        }

        sub_25293847C(v46, &qword_27F540F38, &unk_252E41490);
      }

      else
      {
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v42, qword_27F544CB8);
    v69 = 0xD00000000000003DLL;
    v70 = 0x8000000252E9E260;
    v71 = 433;
    goto LABEL_46;
  }

  if (v24 != 2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544CB8);
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_252E379F4();

    v129[0] = 0xD000000000000027;
    v129[1] = 0x8000000252E9E1E0;
    v54 = [v1 type];
    if (v54 == 1)
    {
      v55 = 0xE900000000000064;
      v56 = 0x65736142656D6974;
    }

    else if (v54 == 2)
    {
      v55 = 0xEA00000000006465;
      v56 = 0x736142746E657665;
    }

    else
    {
      v55 = 0xE700000000000000;
      v56 = 0x6E776F6E6B6E75;
    }

    MEMORY[0x2530AD570](v56, v55);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v129[0], v129[1], 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000017, 0x8000000252E9E380, 464);

    return 0;
  }

  v25 = [v1 value];
  if (!v25)
  {
LABEL_39:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v68 = sub_252E36AD4();
    __swift_project_value_buffer(v68, qword_27F544CB8);
    v69 = 0xD00000000000004DLL;
    v70 = 0x8000000252E9E2E0;
    v71 = 363;
LABEL_46:
    sub_252CC4050(v69, v70, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000017, 0x8000000252E9E380, v71);
    return 0;
  }

  v26 = v25;
  type metadata accessor for EventTriggerValue();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {

    goto LABEL_39;
  }

  v28 = v27;
  v122 = v1;
  if (qword_27F53F8F8 != -1)
  {
    swift_once();
  }

  v29 = qword_27F575DD8;
  v30 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event;
  v31 = v125;
  v32 = v126;
  if (*(qword_27F575DD8 + 16))
  {
    sub_252A488EC(*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event));
    if (v33)
    {
      if (*(v29 + 16))
      {
        v34 = sub_252A488EC(*(v28 + v30));
        if (v35)
        {
          v36 = *(*(v29 + 56) + 8 * v34);
          v37 = sub_252B680FC();
          swift_beginAccess();
          v38 = *(v37 + 16);
          v39 = *(v38 + 16);
          if (v39)
          {
            memcpy(v129, (v38 + 504 * v39 - 472), sizeof(v129));
            sub_2529353AC(v129, v128);

            v40 = v129[30];
            v41 = v129[31];

            sub_252935408(v129);
          }

          else
          {

            v40 = 0;
            v41 = 0;
          }

          sub_252DF24DC(v40, v41);

          v96 = sub_252E36F04();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_252E3C130;
          *(v97 + 32) = [objc_allocWithZone(MEMORY[0x277CD1D20]) initWithPresenceEventType:v36 presenceUserType:1];
          sub_252DF2648();
          v98 = sub_252E37254();

          v99 = [v122 recurrence];
          v100 = [v124 newEventTriggerBuilderWithName:v96 events:v98 endEvents:0 recurrences:v99 predicate:0];

          return v100;
        }
      }
    }
  }

  if (qword_27F53F8F0 != -1)
  {
    swift_once();
  }

  v57 = qword_27F575DD0;
  if (!*(qword_27F575DD0 + 16) || (sub_252A488EC(*(v28 + v30)), (v58 & 1) == 0) || !*(v57 + 16) || (v59 = sub_252A488EC(*(v28 + v30)), (v60 & 1) == 0))
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v67 = sub_252E36AD4();
    __swift_project_value_buffer(v67, qword_27F544CB8);
    sub_252CC4050(0xD000000000000041, 0x8000000252E9E330, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000017, 0x8000000252E9E380, 426);

    return 0;
  }

  v61 = *(*(v57 + 56) + 8 * v59);
  v62 = sub_252B680FC();
  swift_beginAccess();
  v63 = *(v62 + 16);
  v64 = *(v63 + 16);
  if (v64)
  {
    memcpy(v129, (v63 + 504 * v64 - 472), sizeof(v129));
    sub_2529353AC(v129, v128);

    v65 = v129[30];
    v66 = v129[31];

    sub_252935408(v129);
  }

  else
  {

    v65 = 0;
    v66 = 0;
  }

  sub_252DF24DC(v65, v66);

  v127 = sub_252E36F04();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_252E3C130;
  v102 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
  swift_beginAccess();
  sub_252938414(v28 + v102, v31, &qword_27F540F00, &unk_252E3FEC0);
  v103 = v123;
  v104 = (*(v123 + 48))(v31, 1, v32);
  v105 = v61;
  v106 = 0;
  if (v104 != 1)
  {
    v106 = sub_252E32B04();
    (*(v103 + 8))(v31, v32);
  }

  v107 = [objc_allocWithZone(MEMORY[0x277CD1E00]) initWithSignificantEvent:v105 offset:v106];

  *(v101 + 32) = v107;
  sub_252DF2648();
  v108 = sub_252E37254();

  v109 = [v122 recurrence];
  v110 = v127;
  v111 = [v124 newEventTriggerBuilderWithName:v127 events:v108 endEvents:0 recurrences:v109 predicate:0];

  return v111;
}

id sub_252DEC30C()
{
  v131 = sub_252E32BA4();
  v129 = *(v131 - 8);
  v1 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v3 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E32FF4();
  v132 = *(v4 - 8);
  v5 = *(v132 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v120 - v10;
  v12 = sub_252E32E04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v120 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v130 = &v120 - v22;
  v133 = v0;
  v23 = [v0 type];
  if (v23 == 1)
  {
    v127 = v13;
    v128 = v4;
    v126 = v19;
    v130 = v12;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v41 = sub_252E36AD4();
    __swift_project_value_buffer(v41, qword_27F544C40);
    sub_252CC3D90(0xD000000000000010, 0x8000000252E9E3A0, 0xD000000000000086, 0x8000000252E9E150);
    v42 = [v133 value];
    if (v42)
    {
      v43 = v42;
      type metadata accessor for TimeTriggerValue();
      if (swift_dynamicCastClass())
      {
        v123 = v3;
        v125 = v43;
        v44 = v7;
        sub_252E32FC4();
        sub_252E32DF4();
        sub_252B93B3C(v7, v17, v11);
        v45 = v11;
        v46 = v127;
        v47 = v127 + 8;
        v48 = v130;
        v124 = *(v127 + 8);
        v124(v17, v130);
        v49 = v132 + 8;
        v50 = *(v132 + 8);
        v50(v44, v128);
        if ((*(v46 + 48))(v45, 1, v48) != 1)
        {
          (*(v46 + 32))(v126, v45, v48);
          v71 = sub_252B680FC();
          swift_beginAccess();
          v72 = *(v71 + 16);
          v73 = *(v72 + 16);
          v132 = v49;
          v121 = v50;
          v122 = v47;
          if (v73)
          {
            memcpy(v135, (v72 + 504 * v73 - 472), sizeof(v135));
            sub_2529353AC(v135, v134);

            v74 = v135[30];
            v75 = v135[31];

            sub_252935408(v135);
          }

          else
          {

            v74 = 0;
            v75 = 0;
          }

          v120 = sub_252DF24DC(v74, v75);
          v127 = v76;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_252E3C130;
          sub_252E32FC4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
          v78 = sub_252E32FE4();
          v79 = *(v78 - 8);
          v80 = *(v79 + 72);
          v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_252E3C280;
          v83 = v82 + v81;
          v84 = v44;
          v85 = *(v79 + 104);
          v85(v83, *MEMORY[0x277CC9968], v78);
          v85(v83 + v80, *MEMORY[0x277CC9980], v78);
          v85(v83 + 2 * v80, *MEMORY[0x277CC99A0], v78);
          sub_2529FE09C(v82);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v86 = v123;
          v87 = v126;
          sub_252E32F44();

          v121(v84, v128);
          v88 = objc_allocWithZone(MEMORY[0x277CD18A8]);
          v89 = sub_252E32B04();
          v90 = [v88 initWithFireDateComponents_];

          (*(v129 + 8))(v86, v131);
          *(v77 + 32) = v90;
          v91 = [v133 recurrence];
          if (v91)
          {
            v92 = v91;
            v93 = sub_252E37264();
          }

          else
          {
            v93 = 0;
          }

          v94 = sub_252E36F04();

          sub_252DF2648();
          v95 = sub_252E37254();

          if (v93)
          {
            v96 = sub_252E37254();
          }

          else
          {
            v96 = 0;
          }

          v97 = [objc_allocWithZone(MEMORY[0x277CD19F8]) initWithName:v94 events:v95 endEvents:0 recurrences:v96 predicate:0];

          v124(v87, v130);
          return v97;
        }

        sub_25293847C(v45, &qword_27F540F38, &unk_252E41490);
      }

      else
      {
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v41, qword_27F544CB8);
    v67 = 0xD00000000000003DLL;
    v68 = 0x8000000252E9E260;
    v69 = 317;
    goto LABEL_46;
  }

  if (v23 != 2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544CB8);
    v135[0] = 0;
    v135[1] = 0xE000000000000000;
    sub_252E379F4();

    v135[0] = 0xD000000000000027;
    v135[1] = 0x8000000252E9E1E0;
    v52 = [v133 type];
    if (v52 == 1)
    {
      v53 = 0xE900000000000064;
      v54 = 0x65736142656D6974;
    }

    else if (v52 == 2)
    {
      v53 = 0xEA00000000006465;
      v54 = 0x736142746E657665;
    }

    else
    {
      v53 = 0xE700000000000000;
      v54 = 0x6E776F6E6B6E75;
    }

    MEMORY[0x2530AD570](v54, v53);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v135[0], v135[1], 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000010, 0x8000000252E9E3C0, 346);

    return 0;
  }

  v24 = [v133 value];
  if (!v24)
  {
LABEL_39:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v66 = sub_252E36AD4();
    __swift_project_value_buffer(v66, qword_27F544CB8);
    v67 = 0xD00000000000004DLL;
    v68 = 0x8000000252E9E2E0;
    v69 = 252;
LABEL_46:
    sub_252CC4050(v67, v68, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000010, 0x8000000252E9E3C0, v69);
    return 0;
  }

  v25 = v24;
  type metadata accessor for EventTriggerValue();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    goto LABEL_39;
  }

  v27 = v26;
  v28 = v131;
  if (qword_27F53F8F8 != -1)
  {
    swift_once();
  }

  v29 = qword_27F575DD8;
  v30 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event;
  v31 = v130;
  if (*(qword_27F575DD8 + 16))
  {
    sub_252A488EC(*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event));
    if (v32)
    {
      if (*(v29 + 16))
      {
        v33 = sub_252A488EC(*(v27 + v30));
        if (v34)
        {
          v35 = *(*(v29 + 56) + 8 * v33);
          v36 = sub_252B680FC();
          swift_beginAccess();
          v37 = *(v36 + 16);
          v38 = *(v37 + 16);
          if (v38)
          {
            memcpy(v135, (v37 + 504 * v38 - 472), sizeof(v135));
            sub_2529353AC(v135, v134);

            v39 = v135[30];
            v40 = v135[31];

            sub_252935408(v135);
          }

          else
          {

            v39 = 0;
            v40 = 0;
          }

          sub_252DF24DC(v39, v40);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_252E3C130;
          *(v98 + 32) = [objc_allocWithZone(MEMORY[0x277CD1D20]) initWithPresenceEventType:v35 presenceUserType:1];
          v99 = [v133 recurrence];
          if (v99)
          {
            v100 = v99;
            v101 = sub_252E37264();
          }

          else
          {
            v101 = 0;
          }

          v102 = sub_252E36F04();

          sub_252DF2648();
          v103 = sub_252E37254();

          if (v101)
          {
            v104 = sub_252E37254();
          }

          else
          {
            v104 = 0;
          }

          v105 = [objc_allocWithZone(MEMORY[0x277CD19F8]) initWithName:v102 events:v103 endEvents:0 recurrences:v104 predicate:0];

          return v105;
        }
      }
    }
  }

  if (qword_27F53F8F0 != -1)
  {
    swift_once();
  }

  v55 = qword_27F575DD0;
  if (!*(qword_27F575DD0 + 16) || (sub_252A488EC(*(v27 + v30)), (v56 & 1) == 0) || !*(v55 + 16) || (v57 = sub_252A488EC(*(v27 + v30)), (v58 & 1) == 0))
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v65 = sub_252E36AD4();
    __swift_project_value_buffer(v65, qword_27F544CB8);
    sub_252CC4050(0xD000000000000041, 0x8000000252E9E330, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000010, 0x8000000252E9E3C0, 310);

    return 0;
  }

  v59 = *(*(v55 + 56) + 8 * v57);
  v60 = sub_252B680FC();
  swift_beginAccess();
  v61 = *(v60 + 16);
  v62 = *(v61 + 16);
  if (v62)
  {
    memcpy(v135, (v61 + 504 * v62 - 472), sizeof(v135));
    sub_2529353AC(v135, v134);

    v63 = v135[30];
    v64 = v135[31];

    sub_252935408(v135);
  }

  else
  {

    v63 = 0;
    v64 = 0;
  }

  v132 = sub_252DF24DC(v63, v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_252E3C130;
  v107 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
  swift_beginAccess();
  sub_252938414(v27 + v107, v31, &qword_27F540F00, &unk_252E3FEC0);
  v108 = v129;
  v109 = (*(v129 + 48))(v31, 1, v28);
  v110 = v59;
  v111 = 0;
  if (v109 != 1)
  {
    v111 = sub_252E32B04();
    (*(v108 + 8))(v31, v28);
  }

  v112 = [objc_allocWithZone(MEMORY[0x277CD1E00]) initWithSignificantEvent:v110 offset:v111];

  *(v106 + 32) = v112;
  v113 = [v133 recurrence];
  if (v113)
  {
    v114 = v113;
    v115 = sub_252E37264();
  }

  else
  {
    v115 = 0;
  }

  v116 = sub_252E36F04();

  sub_252DF2648();
  v117 = sub_252E37254();

  if (v115)
  {
    v118 = sub_252E37254();
  }

  else
  {
    v118 = 0;
  }

  v119 = [objc_allocWithZone(MEMORY[0x277CD19F8]) initWithName:v116 events:v117 endEvents:0 recurrences:v118 predicate:0];

  return v119;
}

uint64_t sub_252DED39C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_252E32FF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v61 - v10;
  v12 = sub_252E32E04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v61 - v18;
  v20 = [v2 type];
  if (v20 == 1)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    v32 = __swift_project_value_buffer(v31, qword_27F544CB8);
    v61[0] = "TriggerRecurrenceWeekdays is ";
    v61[1] = v32;
    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9E230, 0xD000000000000086, 0x8000000252E9E150);
    v33 = [v2 value];
    if (v33)
    {
      v34 = v33;
      type metadata accessor for TimeTriggerValue();
      if (swift_dynamicCastClass())
      {
        sub_252E32FC4();
        sub_252E32DF4();
        sub_252B93B3C(v7, v17, v11);

        (*(v13 + 8))(v17, v12);
        (*(v4 + 8))(v7, v3);
        if ((*(v13 + 48))(v11, 1, v12) != 1)
        {
          v49 = *(v13 + 32);
          v49(v19, v11, v12);
          v50 = v62;
          v49(v62, v19, v12);
          v51 = type metadata accessor for TriggerEventType();
          swift_storeEnumTagMultiPayload();
          v52 = *(*(v51 - 8) + 56);
          v53 = v50;
          return v52(v53, 0, 1, v51);
        }

        sub_25293847C(v11, &qword_27F540F38, &unk_252E41490);
      }

      else
      {
      }
    }

    sub_252CC4050(0xD00000000000003DLL, 0x8000000252E9E260, 0xD000000000000086, v61[0] | 0x8000000000000000, 0xD000000000000014, 0x8000000252E9E210, 493);
    v48 = type metadata accessor for TriggerEventType();
    return (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
  }

  if (v20 != 2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544CB8);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_252E379F4();

    v63 = 0xD000000000000027;
    v64 = 0x8000000252E9E1E0;
    v36 = [v2 type];
    v37 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
    if (v36 == 2)
    {
      v38 = 0x736142746E657665;
      v37 = 0xEA00000000006465;
    }

    v39 = v36 == 1;
    if (v36 == 1)
    {
      v40 = 0x65736142656D6974;
    }

    else
    {
      v40 = v38;
    }

    if (v39)
    {
      v41 = 0xE900000000000064;
    }

    else
    {
      v41 = v37;
    }

    MEMORY[0x2530AD570](v40, v41);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v63, v64, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000014, 0x8000000252E9E210, 498);

    goto LABEL_37;
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544CB8);
  sub_252CC3D90(0xD000000000000030, 0x8000000252E9E2A0, 0xD000000000000086, 0x8000000252E9E150);
  v22 = [v2 value];
  if (!v22)
  {
LABEL_36:
    sub_252CC4050(0xD00000000000004DLL, 0x8000000252E9E2E0, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000014, 0x8000000252E9E210, 474);
    goto LABEL_37;
  }

  v23 = v22;
  type metadata accessor for EventTriggerValue();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    goto LABEL_36;
  }

  v25 = v24;
  if (qword_27F53F8F8 != -1)
  {
    swift_once();
  }

  v26 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event;
  if (*(qword_27F575DD8 + 16))
  {
    sub_252A488EC(*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event));
    if (v27)
    {
      v28 = sub_2529BBB48(*(v25 + v26));
      if (v28 != 2)
      {
        v54 = v28;

        v55 = v62;
        *v62 = v54 & 1;
        v56 = type metadata accessor for TriggerEventType();
        swift_storeEnumTagMultiPayload();
        v43 = *(*(v56 - 8) + 56);
        v45 = v55;
        v46 = 0;
        v44 = v56;
        goto LABEL_38;
      }
    }
  }

  if (qword_27F53F8F0 != -1)
  {
    swift_once();
  }

  if (*(qword_27F575DD0 + 16))
  {
    sub_252A488EC(*(v25 + v26));
    if (v29)
    {
      v30 = sub_2529BBB28(*(v25 + v26));
      if (v30 != 2)
      {
        v57 = v30;
        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0) + 48);
        v59 = v62;
        *v62 = v57 & 1;
        v60 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
        swift_beginAccess();
        sub_252938414(v25 + v60, &v59[v58], &qword_27F540F00, &unk_252E3FEC0);

        v51 = type metadata accessor for TriggerEventType();
        swift_storeEnumTagMultiPayload();
        v52 = *(*(v51 - 8) + 56);
        v53 = v59;
        return v52(v53, 0, 1, v51);
      }
    }
  }

  sub_252CC4050(0xD000000000000041, 0x8000000252E9E330, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000014, 0x8000000252E9E210, 486);

LABEL_37:
  v42 = type metadata accessor for TriggerEventType();
  v43 = *(*(v42 - 8) + 56);
  v44 = v42;
  v45 = v62;
  v46 = 1;
LABEL_38:

  return v43(v45, v46, 1, v44);
}

uint64_t sub_252DEDCB4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recurrence];
  if (v3)
  {
    v4 = v3;
    sub_252E32BA4();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  sub_252BD5CAC(v5, a1);
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CB8);
  sub_252E379F4();

  v7 = sub_252E35B04();
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E9E130, 0xD000000000000086, 0x8000000252E9E150);
}

uint64_t sub_252DEDE18()
{
  v31 = sub_252E32BA4();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v31);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E32FF4();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_252E32E04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v30 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  sub_252E32DC4();
  v19 = sub_252B94898();
  v20 = *(v13 + 8);
  v20(v18, v12);
  if (v19)
  {
    v21 = [v34 value];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for TimeTriggerValue();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {

        return v23 & 1;
      }

      v34 = v22;
      sub_252E32FC4();
      v24 = v31;
      (*(v0 + 16))(v3, v23 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v31);
      sub_252E32FA4();
      (*(v0 + 8))(v3, v24);
      v23 = v33;
      v25 = *(v32 + 8);
      v25(v7, v33);
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        v27 = v30;
        (*(v13 + 32))(v30, v11, v12);
        sub_252E32FC4();
        v28 = v23;
        LOBYTE(v23) = sub_252E32F14();

        v25(v7, v28);
        v20(v27, v12);
        return v23 & 1;
      }

      sub_25293847C(v11, &qword_27F540F38, &unk_252E41490);
    }
  }

  LOBYTE(v23) = 0;
  return v23 & 1;
}

uint64_t sub_252DEE1E8(void *a1, unint64_t a2)
{
  v163 = sub_252E36324();
  v161 = *(v163 - 8);
  v5 = *(v161 + 64);
  v6 = MEMORY[0x28223BE20](v163);
  v160 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v162 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v152 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v136 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v149 = &v136 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v136 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v136 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v136 - v23;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  inited = swift_initStackObject();
  v26 = MEMORY[0x277D84F90];
  *(inited + 16) = MEMORY[0x277D84F90];
  v27 = [a1 automatableTask];
  if (v27)
  {
    v28 = v27;
    v147 = v15;
    v151 = a2;
    type metadata accessor for ControlAutomateHomeIntent();
    v29 = swift_dynamicCastClass();
    v30 = v28;
    if (v29)
    {
      v31 = v29;
      v137 = v30;
      v139 = inited;
      v140 = v2;
      v138 = a1;
      v32 = type metadata accessor for HomeAutomationEntityState.Builder(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v35 = swift_allocObject();
      v36 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute;
      v37 = v161 + 56;
      v38 = *(v161 + 56);
      v39 = v163;
      v38(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, 1, 1, v163);
      *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_stateValue) = 0;
      v40 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType;
      v157 = v38;
      v158 = v37;
      v38(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, 1, 1, v39);
      v41 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
      v42 = [*(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) attribute];
      if (qword_27F53F2A8 != -1)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v43 = off_27F541CD8;
        if (*(off_27F541CD8 + 2) && (v44 = sub_252A488EC(v42), (v45 & 1) != 0))
        {
          v165 = *(v43[7] + v44);
          AttributeSemantic.rawValue.getter();
          sub_252E362F4();
          v46 = 0;
        }

        else
        {
          v46 = 1;
        }

        v157(v24, v46, 1, v163);
        swift_beginAccess();
        sub_252956BAC(v24, v36 + v35);
        swift_endAccess();
        sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
        v47 = [*&v41[v31] value];
        if (v47)
        {
          v48 = v47;
          v49 = sub_252D0842C();
        }

        else
        {
          v49 = 0;
        }

        v51 = *&v41[v31];

        v52 = [v51 taskType];
        if (qword_27F53F298 != -1)
        {
          v135 = v52;
          swift_once();
          v52 = v135;
        }

        v53 = off_27F541CC8;
        v54 = v151;
        if (*(off_27F541CC8 + 2) && (v55 = sub_252A488EC(v52), (v56 & 1) != 0))
        {
          v57 = (v53[7] + 16 * v55);
          v58 = *v57;
          v59 = v57[1];

          sub_252E37024();

          v60 = 0;
        }

        else
        {
          v60 = 1;
        }

        v157(v22, v60, 1, v163);
        swift_beginAccess();
        sub_252956BAC(v22, v35 + v40);
        swift_endAccess();
        sub_25293847C(v22, &qword_27F540298, &unk_252E3C270);
        v61 = type metadata accessor for HomeAutomationEntityState(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        sub_252938414(v36 + v35, v64 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &qword_27F540298, &unk_252E3C270);
        *(v64 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v49;
        v148 = v64;
        sub_252938414(v35 + v40, v64 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, &qword_27F540298, &unk_252E3C270);
        swift_setDeallocating();
        sub_25293847C(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, &qword_27F540298, &unk_252E3C270);

        sub_25293847C(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, &qword_27F540298, &unk_252E3C270);
        v65 = *(*v35 + 48);
        v66 = *(*v35 + 52);
        v42 = swift_deallocClassInstance();
        v164 = v26;
        if (v54 >> 62)
        {
          v42 = sub_252E378C4();
          v22 = v42;
        }

        else
        {
          v22 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v67 = v140;
        v24 = v139;
        v41 = MEMORY[0x277D84F90];
        if (!v22)
        {
LABEL_61:

          *(v24 + 2) = v41;
          v131 = *(v67 + 136);

          v50 = v131(v132);

          return v50;
        }

        v68 = 0;
        v146 = v54 & 0xC000000000000001;
        v142 = v54 & 0xFFFFFFFFFFFFFF8;
        v141 = v54 + 32;
        v143 = (v161 + 32);
        v144 = xmmword_252E3C130;
        v145 = v22;
        while (v146)
        {
          v42 = MEMORY[0x2530ADF00](v68, v54);
          v159 = v42;
          v69 = __OFADD__(v68, 1);
          v70 = v68 + 1;
          if (v69)
          {
            goto LABEL_63;
          }

LABEL_30:
          v155 = v70;
          v71 = *(*v159 + 256);
          v153 = *v159 + 256;
          v154 = v71;
          v72 = v71();
          v73 = sub_2529F7B8C(0, 1, 1, v41);
          v75 = *(v73 + 2);
          v74 = *(v73 + 3);
          if (v75 >= v74 >> 1)
          {
            v73 = sub_2529F7B8C((v74 > 1), v75 + 1, 1, v73);
          }

          *(v73 + 2) = v75 + 1;
          *&v73[8 * v75 + 32] = v72;
          v76 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
          v77 = *(v76 + 48);
          v78 = *(v76 + 52);
          v79 = swift_allocObject();
          v80 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
          v156 = 1;
          v81 = v163;
          v82 = v157;
          v157((v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName), 1, 1, v163);
          v82(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v81);
          *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
          *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v41;
          *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
          v82(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v81);
          *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v41;
          *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v41;
          v83 = v159;
          v84 = *&v159[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
          v85 = *&v159[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];

          v86 = v150;
          sub_252E37024();

          v82(v86, 0, 1, v81);
          swift_beginAccess();
          sub_252956BAC(v86, v79 + v80);
          swift_endAccess();
          sub_25293847C(v86, &qword_27F540298, &unk_252E3C270);
          v87 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
          v88 = [*&v83[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
          if (v88)
          {
            v89 = v88;
            v90 = type metadata accessor for Room();
            v91 = *(v90 + 48);
            v92 = *(v90 + 52);
            swift_allocObject();
            v93 = sub_2529A1E08(v89);
            v94 = *(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v95 = *(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            v96 = v149;
            sub_252E37024();

            v156 = 0;
          }

          else
          {
            v96 = v149;
          }

          v31 = v147;
          v97 = 1;
          v157(v96, v156, 1, v163);
          sub_252AD6B04(v96);

          sub_25293847C(v96, &qword_27F540298, &unk_252E3C270);
          v98 = [*&v159[v87] home];
          v36 = v143;
          if (v98)
          {
            v99 = v98;
            v100 = type metadata accessor for Home();
            v101 = *(v100 + 48);
            v102 = *(v100 + 52);
            swift_allocObject();
            v103 = sub_2529E65BC(v99);
            v104 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v105 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            sub_252E37024();

            v97 = 0;
          }

          v106 = 1;
          v157(v31, v97, 1, v163);
          v40 = sub_252AD6E30(v31);

          v107 = sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
          v108 = (v154)(v107);
          v109 = sub_252E25FC4(v108);
          v41 = MEMORY[0x277D84F90];
          if ((v110 & 1) == 0)
          {
            if (qword_27F53F2A0 != -1)
            {
              v130 = v109;
              swift_once();
              v109 = v130;
            }

            v111 = off_27F541CD0;
            if (*(off_27F541CD0 + 2))
            {
              v112 = sub_252A488EC(v109);
              if (v113)
              {
                v165 = *(v111[7] + v112);
                AccessoryTypeSemantic.rawValue.getter();
                sub_252E362F4();
                v106 = 0;
              }
            }
          }

          v114 = v152;
          v157(v152, v106, 1, v163);
          v115 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
          swift_beginAccess();
          sub_252956BAC(v114, v40 + v115);
          swift_endAccess();
          sub_25293847C(v114, &qword_27F540298, &unk_252E3C270);
          v26 = *(v73 + 2);
          if (v26)
          {
            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v116 = off_27F541CD0;
            v31 = 32;
            v24 = MEMORY[0x277D84F90];
            do
            {
              if (v116[2])
              {
                v117 = sub_252A488EC(*&v73[v31]);
                if (v118)
                {
                  v165 = *(v116[7] + v117);
                  AccessoryTypeSemantic.rawValue.getter();
                  v119 = v160;
                  sub_252E362F4();
                  v120 = *v36;
                  (*v36)(v162, v119, v163);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v24 = sub_2529F7F74(0, *(v24 + 2) + 1, 1, v24);
                  }

                  v122 = *(v24 + 2);
                  v121 = *(v24 + 3);
                  if (v122 >= v121 >> 1)
                  {
                    v24 = sub_2529F7F74(v121 > 1, v122 + 1, 1, v24);
                  }

                  *(v24 + 2) = v122 + 1;
                  v120(&v24[((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v122], v162, v163);
                }
              }

              v31 += 8;
              --v26;
            }

            while (v26);

            v54 = v151;
            v41 = MEMORY[0x277D84F90];
          }

          else
          {

            v24 = v41;
            v54 = v151;
          }

          v123 = *(v40 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types);
          *(v40 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v24;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v124 = swift_allocObject();
          *(v124 + 16) = v144;
          *(v124 + 32) = v148;
          v125 = *(v40 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);
          *(v40 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v124;

          v126 = type metadata accessor for HomeAutomationEntityResponse(0);
          v127 = *(v126 + 48);
          v128 = *(v126 + 52);
          swift_allocObject();
          v35 = sub_2529605C0(v40);
          MEMORY[0x2530AD700]();
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v129 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();

          v22 = v145;
          v68 = v155;
          if (v155 == v145)
          {
            v41 = v164;
            v67 = v140;
            v24 = v139;
            goto LABEL_61;
          }
        }

        if (v68 >= *(v142 + 16))
        {
          goto LABEL_64;
        }

        v159 = *(v141 + 8 * v68);

        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (!v69)
        {
          goto LABEL_30;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v134 = v42;
        swift_once();
        v42 = v134;
      }
    }
  }

  else
  {
  }

  v50 = (*(v2 + 136))(inited);

  return v50;
}

uint64_t sub_252DEF140()
{
  v1 = v0;
  v2 = sub_252E32BA4();
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v2);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E32FE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_252E32FF4();
  v93 = *(v89 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v89);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  v20 = sub_252E32E04();
  v21 = *(v20 - 8);
  v91 = v20;
  v92 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v79 - v27;
  MEMORY[0x28223BE20](v26);
  v90 = &v79 - v29;
  v30 = [v0 value];
  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = v30;
  v94 = v1;
  type metadata accessor for TimeTriggerValue();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

    v1 = v94;
LABEL_8:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v41 = sub_252E36AD4();
    __swift_project_value_buffer(v41, qword_27F544D60);
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_252E379F4();
    v42 = [v1 description];
    v43 = sub_252E36F34();
    v45 = v44;

    MEMORY[0x2530AD570](v43, v45);

    MEMORY[0x2530AD570](0xD00000000000004ELL, 0x8000000252E9E400);
    sub_252CC4050(v95, v96, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 652);

    return 3;
  }

  v33 = v32;
  if (*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval))
  {
    v34 = v31;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544D60);
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_252E379F4();
    v36 = [v94 description];
    v37 = sub_252E36F34();
    v39 = v38;

    MEMORY[0x2530AD570](v37, v39);

    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E9E550);
    sub_252CC4050(v95, v96, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 657);

    return 5;
  }

  v85 = v31;
  if (sub_252B93218())
  {
    v46 = [v94 recurrence];
    if (!v46)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v74 = sub_252E36AD4();
      __swift_project_value_buffer(v74, qword_27F544D60);
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_252E379F4();
      v75 = [v94 description];
      v76 = sub_252E36F34();
      v78 = v77;

      MEMORY[0x2530AD570](v76, v78);

      MEMORY[0x2530AD570](0xD000000000000051, 0x8000000252E9E4F0);
      sub_252CC4050(v95, v96, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 662);

      return 2;
    }
  }

  sub_252E32FC4();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9988], v5);
  sub_252E32DC4();
  sub_252E32FB4();
  v47 = v92;
  v48 = v28;
  v49 = v91;
  v83 = *(v92 + 8);
  v84 = v92 + 8;
  v83(v48, v91);
  v50 = v5;
  v51 = v47;
  (*(v6 + 8))(v9, v50);
  v52 = v93 + 8;
  v53 = v89;
  v82 = *(v93 + 8);
  v82(v12, v89);
  v81 = *(v51 + 48);
  if (v81(v19, 1, v49) == 1)
  {
    sub_25293847C(v19, &qword_27F540F38, &unk_252E41490);
    v54 = v94;
LABEL_16:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v55 = sub_252E36AD4();
    __swift_project_value_buffer(v55, qword_27F544D60);
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_252E379F4();
    v56 = [v54 description];
    v57 = sub_252E36F34();
    v59 = v58;

    MEMORY[0x2530AD570](v57, v59);

    MEMORY[0x2530AD570](0xD00000000000005BLL, 0x8000000252E9E470);
    sub_252CC4050(v95, v96, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 670);

    return 1;
  }

  v60 = *(v51 + 32);
  v92 = v51 + 32;
  v80 = v60;
  v60(v90, v19, v49);
  sub_252E32FC4();
  v61 = v86;
  v62 = v87;
  v63 = v33 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v64 = v88;
  (*(v87 + 16))(v86, v63, v88);
  v93 = v52;
  sub_252E32FA4();
  (*(v62 + 8))(v61, v64);
  v82(v12, v53);
  v65 = v49;
  if (v81(v17, 1, v49) == 1)
  {
    sub_25293847C(v17, &qword_27F540F38, &unk_252E41490);
    v54 = v94;
    v66 = v90;
    v67 = v83;
  }

  else
  {
    v80(v25, v17, v49);
    v66 = v90;
    v68 = sub_252E32D74();
    v67 = v83;
    v83(v25, v65);
    v54 = v94;
    if (v68)
    {
      v67(v66, v65);
      goto LABEL_16;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v69 = sub_252E36AD4();
  __swift_project_value_buffer(v69, qword_27F544D60);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_252E379F4();
  v70 = [v54 description];
  v71 = sub_252E36F34();
  v73 = v72;

  v95 = v71;
  v96 = v73;
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E9E4D0);
  sub_252CC3D90(v95, v96, 0xD000000000000086, 0x8000000252E9E150);

  v67(v66, v65);
  return 0;
}

uint64_t sub_252DEFCA4()
{
  v1 = v0;
  v2 = [v0 value];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for EventTriggerValue();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v0 recurrence];
      if (v6)
      {
        v7 = v6;
        sub_252E32BA4();
        v8 = sub_252E37264();

        v9 = *(v8 + 16);

        if (v9 <= 6)
        {
          if (qword_27F53F8F8 != -1)
          {
            swift_once();
          }

          if (*(qword_27F575DD8 + 16))
          {
            sub_252A488EC(*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event));
            if (v10)
            {
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v11 = sub_252E36AD4();
              __swift_project_value_buffer(v11, qword_27F544D60);
              sub_252CC3D90(0xD000000000000055, 0x8000000252E9E5C0, 0xD000000000000086, 0x8000000252E9E150);

              return 4;
            }
          }
        }
      }
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544D60);
  sub_252E379F4();
  v14 = [v1 description];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9E5A0);
  sub_252CC3D90(v15, v17, 0xD000000000000086, 0x8000000252E9E150);

  return 0;
}

uint64_t sub_252DEFF40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462D0, &qword_252E61808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  *(inited + 32) = 1;
  v1 = *MEMORY[0x277CD0FA8];
  *(inited + 40) = *MEMORY[0x277CD0FA8];
  *(inited + 48) = 2;
  v2 = *MEMORY[0x277CD0FB0];
  *(inited + 56) = *MEMORY[0x277CD0FB0];
  v3 = sub_252CC68E4(inited);
  swift_setDeallocating();
  v4 = v1;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462D8, &unk_252E61810);
  result = swift_arrayDestroy();
  qword_27F575DD0 = v3;
  return result;
}

unint64_t sub_252DF0014()
{
  result = sub_252CC68BC(&unk_2864A93C8);
  qword_27F575DD8 = result;
  return result;
}

uint64_t sub_252DF003C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 4 || a1 == 3)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_11:
      sub_252E37024();
      v3 = 0;
      goto LABEL_12;
    }

LABEL_15:
    result = sub_252E37DF4();
    __break(1u);
    return result;
  }

  v3 = 1;
LABEL_12:
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_252DF0184()
{
  result = sub_252E32B54();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  if ((v2 * 60) >> 64 != (60 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = 3600 * v2;
  if ((60 * v2 * 60) >> 64 != (3600 * v2) >> 63)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_252E32B64();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  v6 = 60 * v5;
  if ((v5 * 60) >> 64 != (60 * v5) >> 63)
  {
    goto LABEL_18;
  }

  result = sub_252E32B74();
  v8 = v3 + v6;
  if (__OFADD__(v3, v6))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = result;
  }

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_252DF0238()
{
  v0 = sub_2529FE74C(&unk_2864A8AD0);
  result = swift_arrayDestroy();
  qword_27F575DE0 = v0;
  return result;
}

uint64_t sub_252DF0284()
{
  v0 = sub_2529FE74C(&unk_2864A8B40);
  result = swift_arrayDestroy();
  qword_27F575DE8 = v0;
  return result;
}

uint64_t sub_252DF02D0()
{
  if (qword_27F53F900 != -1)
  {
    swift_once();
  }

  v0 = qword_27F575DE0;
  v1 = qword_27F53F908;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_2529F2320(v2, v0);
  qword_27F575DF0 = result;
  return result;
}

uint64_t AutomateHomeIntent.description.getter()
{
  v1 = v0;
  v2 = [v0 automatableTask];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  type metadata accessor for ControlAutomateHomeIntent();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v7 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v8 = v5;

  v9 = [v7 init];
  [v9 setUserTask_];
  type metadata accessor for HomeFilter();
  v10 = sub_252E37254();

  [v9 setFilters_];

  [v9 setTime_];
LABEL_6:
  sub_252E379F4();
  MEMORY[0x2530AD570](0x7274202020200A7BLL, 0xEF203A7265676769);
  v11 = [v1 trigger];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E9E000);
  [v9 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v13 = sub_252E36F94();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9E030);
  if (v9)
  {
    v14 = [v9 filters];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for HomeFilter();
      sub_252E37264();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](0x7D0A7D202020200ALL, 0xE800000000000000);

  return 0;
}

uint64_t TriggerType.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v1 = 0x736142746E657665;
  }

  if (a1 == 1)
  {
    return 0x65736142656D6974;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_252DF06F8()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v1 = 0x736142746E657665;
  }

  if (*v0 == 1)
  {
    return 0x65736142656D6974;
  }

  else
  {
    return v1;
  }
}

uint64_t TimeTriggerValue.description.getter()
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v1 = *(*(v66 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v66);
  v67 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = &v55 - v5;
  MEMORY[0x28223BE20](v4);
  v59 = &v55 - v6;
  v58 = sub_252E32E04();
  v72 = *(v58 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](v58);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v10;
  v11 = sub_252E32FF4();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E32BA4();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v21 = v16[2];
  v21(v19, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v15);
  sub_252DF0EF8();
  v71 = sub_252E37D94();
  v73 = v22;
  v23 = v16[1];
  v23(v19, v15);
  sub_252E32FC4();
  v24 = v16 + 1;
  v74 = v0;
  v63 = v20;
  v64 = v21;
  v25 = v0 + v20;
  v26 = v72;
  v60 = v16 + 2;
  v21(v19, v25, v15);
  v27 = v58;
  v28 = v59;
  v68 = v14;
  sub_252E32FA4();
  v62 = v23;
  v57 = v24;
  v23(v19, v15);
  v61 = *(v26 + 48);
  if (v61(v28, 1, v27) == 1)
  {
    sub_25293847C(v28, &qword_27F540F38, &unk_252E41490);
  }

  else
  {

    v29 = v55;
    (*(v26 + 32))(v55, v28, v27);
    v30 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v31 = sub_252E36F04();
    [v30 setDateFormat_];

    v32 = sub_252E32D64();
    v33 = v26;
    v34 = [v30 stringFromDate_];

    v71 = sub_252E36F34();
    v73 = v35;

    (*(v33 + 8))(v29, v27);
  }

  v36 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  v37 = v74;
  swift_beginAccess();
  sub_252938414(v37 + v36, v65, &qword_27F540F38, &unk_252E41490);
  v38 = sub_252E36F94();
  v40 = v39;
  v64(v19, v37 + v63, v15);
  v41 = v67;
  v42 = v68;
  sub_252E32FA4();
  v62(v19, v15);
  if (v61(v41, 1, v27) == 1)
  {
    sub_25293847C(v41, &qword_27F540F38, &unk_252E41490);
  }

  else
  {

    v43 = v72;
    v44 = v56;
    (*(v72 + 32))(v56, v41, v27);
    v45 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v46 = sub_252E36F04();
    [v45 setDateFormat_];

    v47 = sub_252E32D64();
    v48 = [v45 stringFromDate_];

    v38 = sub_252E36F34();
    v40 = v49;

    (*(v43 + 8))(v44, v27);
  }

  v50 = v73;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x726567676972740ALL, 0xEE00203A65746144);
  MEMORY[0x2530AD570](v71, v50);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9E050);
  MEMORY[0x2530AD570](v38, v40);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E9E070);
  if (*(v74 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval))
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (*(v74 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval))
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v51, v52);

  MEMORY[0x2530AD570](10, 0xE100000000000000);
  v53 = v75;
  (*(v69 + 8))(v42, v70);
  return v53;
}

unint64_t sub_252DF0EF8()
{
  result = qword_27F5462B8;
  if (!qword_27F5462B8)
  {
    sub_252E32BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5462B8);
  }

  return result;
}

uint64_t TriggerCondition.triggerNature.getter()
{
  v1 = v0;
  v41 = 0x6E776F6E6B6E75;
  v2 = sub_252E32BA4();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E32FF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = sub_252E32E04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v1 type];
  if (v20 == 1)
  {
    v37 = v6;
    v38 = v16;
    v39 = v7;
    v26 = [v1 value];
    if (v26)
    {
      v27 = v26;
      type metadata accessor for TimeTriggerValue();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        sub_252E32FC4();
        v30 = v40;
        (*(v40 + 16))(v5, v29 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v2);
        sub_252E32FA4();
        (*(v30 + 8))(v5, v2);
        v31 = *(v39 + 8);
        v32 = v37;
        v31(v10, v37);
        v33 = v38;
        if ((*(v38 + 48))(v14, 1, v15) == 1)
        {
          sub_25293847C(v14, &qword_27F540F38, &unk_252E41490);
        }

        else
        {
          (*(v33 + 32))(v19, v14, v15);
          sub_252E32FC4();
          v35 = sub_252E32F14();
          v31(v10, v32);
          (*(v33 + 8))(v19, v15);
          if (v35)
          {

            return 0xD000000000000019;
          }
        }

        return 0x65736142656D6974;
      }

      else
      {
      }
    }
  }

  else if (v20 == 2)
  {
    v21 = [v1 value];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for EventTriggerValue();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event);

        if (v24 > 2)
        {
          if (v24 == 3)
          {
            return 0x6F48657669727261;
          }

          if (v24 == 4)
          {
            return 0x6D6F48657661656CLL;
          }
        }

        else
        {
          if (v24 == 1)
          {
            return 0x657369726E7573;
          }

          if (v24 == 2)
          {
            return 0x7465736E7573;
          }
        }
      }

      else
      {
      }
    }
  }

  return v41;
}

id sub_252DF1448(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

unint64_t TriggerCondition.description.getter()
{
  v1 = 0xD000000000000019;
  v2 = [v0 type];
  if (v2 == 2)
  {
    sub_252E379F4();

    v11 = 0xD00000000000001BLL;
    v7 = [v0 value];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for EventTriggerValue();
      if (!swift_dynamicCastClass())
      {
      }
    }

    v5 = &unk_27F5462C0;
    v6 = &unk_252E617C8;
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    sub_252E379F4();

    v11 = 0xD00000000000001ALL;
    v3 = [v0 value];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for TimeTriggerValue();
      if (!swift_dynamicCastClass())
      {
      }
    }

    v5 = &unk_27F5462C8;
    v6 = &unk_252E617D0;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](125, 0xE100000000000000);
    return v11;
  }

  return v1;
}

unint64_t sub_252DF1674(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2530AED20](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2530AED20](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252DF1700(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v127 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v136 = v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v137 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v138 = v127 - v13;
  v14 = sub_252E32E04();
  v139 = *(v14 - 8);
  v140 = v14;
  v15 = *(v139 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v134 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v135 = v127 - v18;
  v147 = sub_252E32FF4();
  v19 = *(v147 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E32BA4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v127 - v28;
  v30 = type metadata accessor for HomeAutomationDialogTrigger.Builder(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_252A08364();
  if (!a1)
  {
    goto LABEL_53;
  }

  v141 = a1;
  v34 = [v141 recurrence];
  v145 = v22;
  v131 = v5;
  v130 = v23;
  v129 = v27;
  v133 = v34;
  if (!v34)
  {
    v43 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v132 = a1;
  v35 = v34;
  v36 = sub_252E37264();

  a1 = *(v36 + 16);
  if (!a1)
  {

    v43 = MEMORY[0x277D84F90];
    a1 = v132;
LABEL_21:
    v48 = v33;
    if (qword_27F53F498 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_22;
  }

  v128 = v33;
  v39 = *(v23 + 16);
  v37 = v23 + 16;
  v38 = v39;
  v40 = (*(v37 + 64) + 32) & ~*(v37 + 64);
  v127[1] = v36;
  v41 = v36 + v40;
  v148 = *(v37 + 56);
  v144 = (v19 + 8);
  v42 = (v37 - 8);
  v43 = MEMORY[0x277D84F90];
  v142 = v39;
  v143 = v37;
  v39(v29, v36 + v40, v22);
  while (1)
  {
    v44 = sub_252E32B84();
    if (v45)
    {
      (*v42)(v29, v22);
      goto LABEL_6;
    }

    v46 = v44;
    v47 = v146;
    sub_252E32FC4();
    v48 = sub_252E32F54();
    (*v144)(v47, v147);
    v49 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      break;
    }

    if ((v49 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v49 >= *(v48 + 16))
    {
      goto LABEL_56;
    }

    v50 = v48 + 16 * v49;
    v52 = *(v50 + 32);
    v51 = *(v50 + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_2529F7A80(0, *(v43 + 2) + 1, 1, v43);
    }

    v53 = v43;
    v54 = *(v43 + 2);
    v55 = v53;
    v56 = *(v53 + 3);
    if (v54 >= v56 >> 1)
    {
      v55 = sub_2529F7A80((v56 > 1), v54 + 1, 1, v55);
    }

    v22 = v145;
    (*v42)(v29, v145);
    *(v55 + 2) = v54 + 1;
    v57 = &v55[16 * v54];
    v43 = v55;
    *(v57 + 4) = v52;
    *(v57 + 5) = v51;
    v38 = v142;
LABEL_6:
    v41 += v148;
    if (!--a1)
    {

      a1 = v132;
      v33 = v128;
      goto LABEL_21;
    }

    v38(v29, v41, v22);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_22:
  v58 = sub_252E36AD4();
  __swift_project_value_buffer(v58, qword_27F544C70);
  v149 = 0;
  v150 = 0xE000000000000000;
  sub_252E379F4();

  v149 = 0xD000000000000010;
  v150 = 0x8000000252E9E3E0;

  v60 = MEMORY[0x2530AD730](v59, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v60);

  sub_252CC3D90(v149, v150, 0xD000000000000086, 0x8000000252E9E150);

  v61 = sub_252C75848(v43);

  if (qword_27F53F900 != -1)
  {
    swift_once();
  }

  v62 = sub_2529A9538(v61, qword_27F575DE0);

  if (v62)
  {
    v63 = 0;
    goto LABEL_33;
  }

  v65 = sub_252C75848(v64);

  if (qword_27F53F908 != -1)
  {
    swift_once();
  }

  v66 = sub_2529A9538(v65, qword_27F575DE8);

  if (v66)
  {
    v63 = 0;
    v67 = 1;
  }

  else
  {

    v69 = sub_252C75848(v68);

    if (qword_27F53F910 != -1)
    {
      swift_once();
    }

    v63 = sub_2529A9538(v69, qword_27F575DF0);

LABEL_33:
    v67 = 0;
  }

  v70 = [v141 value];
  if (!v70)
  {
LABEL_39:
    v83 = v141;
    v84 = [v141 value];
    if (!v84)
    {

      v33 = v48;
      goto LABEL_53;
    }

    v85 = v84;
    type metadata accessor for EventTriggerValue();
    v86 = swift_dynamicCastClass();
    if (!v86)
    {

      v33 = v48;
      goto LABEL_53;
    }

    v87 = v86;
    v148 = v85;
    v88 = v133 != 0;
    v89 = v136;
    sub_252DF003C(*(v86 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event), v136);
    v90 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
    swift_beginAccess();
    v91 = v48 + v90;
    v33 = v48;
    sub_252956BAC(v89, v91);
    swift_endAccess();
    sub_25293847C(v89, &qword_27F540298, &unk_252E3C270);
    *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = v88;
    *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = v62 & 1;
    *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = v67;
    *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = v63 & 1;
    v92 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    swift_beginAccess();
    v93 = v87 + v92;
    v94 = v137;
    sub_252938414(v93, v137, &qword_27F540F38, &unk_252E41490);
    v96 = v139;
    v95 = v140;
    if ((*(v139 + 48))(v94, 1, v140) == 1)
    {
      sub_25293847C(v94, &qword_27F540F38, &unk_252E41490);
      v97 = 0;
    }

    else
    {
      v103 = v134;
      (*(v96 + 32))(v134, v94, v95);
      v104 = sub_252E36214();
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      swift_allocObject();
      sub_252E36204();
      sub_252E32D94();
      sub_252E361F4();

      v97 = sub_252E361E4();

      (*(v96 + 8))(v103, v95);
    }

    v107 = *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence);
    *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = v97;

    v108 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    swift_beginAccess();
    v109 = v87 + v108;
    v110 = v131;
    sub_252938414(v109, v131, &qword_27F540F00, &unk_252E3FEC0);
    v111 = v130;
    v112 = v145;
    if ((*(v130 + 48))(v110, 1, v145) == 1)
    {

      sub_25293847C(v110, &qword_27F540F00, &unk_252E3FEC0);
      goto LABEL_53;
    }

    v113 = v129;
    (*(v111 + 32))(v129, v110, v112);
    v114 = sub_252E36274();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();
    sub_252E36264();
    v117 = sub_252DF0184();
    if ((v117 & 0x8000000000000000) == 0 || (v118 = __OFSUB__(0, v117), result = -v117, !v118))
    {
      sub_252E36254();

      v120 = sub_252E36244();

      v121 = *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset);
      *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset) = v120;

      v122 = sub_252DF0184();

      (*(v111 + 8))(v113, v112);
      *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast) = v122 < 0;
      goto LABEL_53;
    }

    __break(1u);
    return result;
  }

  v71 = v70;
  type metadata accessor for TimeTriggerValue();
  v72 = swift_dynamicCastClass();
  if (!v72)
  {

    goto LABEL_39;
  }

  v73 = v72;
  v74 = v133 != 0;
  v75 = sub_252B93750();
  v76 = *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time);
  *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time) = v75;

  *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = v74;
  v33 = v48;
  *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = v62 & 1;
  *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = v67;
  *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = v63 & 1;
  v77 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  swift_beginAccess();
  v78 = v73 + v77;
  v79 = v138;
  sub_252938414(v78, v138, &qword_27F540F38, &unk_252E41490);
  v81 = v139;
  v80 = v140;
  if ((*(v139 + 48))(v79, 1, v140) == 1)
  {

    sub_25293847C(v79, &qword_27F540F38, &unk_252E41490);
    v82 = 0;
  }

  else
  {
    v98 = v135;
    (*(v81 + 32))(v135, v79, v80);
    v99 = sub_252E36214();
    v100 = *(v99 + 48);
    v101 = *(v99 + 52);
    swift_allocObject();
    sub_252E36204();
    sub_252E32D94();
    sub_252E361F4();

    v82 = sub_252E361E4();

    (*(v81 + 8))(v98, v80);
  }

  v102 = *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence);
  *(v48 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = v82;

LABEL_53:
  v123 = type metadata accessor for HomeAutomationDialogTrigger(0);
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v126 = sub_252A09E4C(v33);

  return v126;
}

uint64_t sub_252DF24DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v13 = a1;
      v14 = a2;

      MEMORY[0x2530AD570](32, 0xE100000000000000);
      v12[1] = sub_252DF1674(0xAuLL);
      v10 = sub_252E37D94();
      MEMORY[0x2530AD570](v10);

      return v13;
    }

    else
    {
    }
  }

  else
  {
    sub_252E32E74();
    a1 = sub_252E32E24();
    (*(v5 + 8))(v8, v4);
  }

  return a1;
}

unint64_t sub_252DF2648()
{
  result = qword_27F542120;
  if (!qword_27F542120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F542120);
  }

  return result;
}

uint64_t sub_252DF2698@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      MEMORY[0x2530AD700](v8);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      if (v9 == i)
      {
        v10 = v14;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  sub_252A62028(v11, 0, a2, a3);

  sub_252C91044(v10, 1);

  return sub_252E33B94();
}

void *sub_252DF2820(uint64_t a1)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[2] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v6 = *(v5 + 23);

  v1[3] = v6;
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 136), (v1 + 4));

  v8 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v1[12] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[13] = &off_2864BA730;
  v1[9] = v8;
  v1[14] = a1;
  return v1;
}

uint64_t sub_252DF2910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v5 = sub_252E33C44();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DF29E0, 0, 0);
}

uint64_t sub_252DF29E0()
{
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v2 = sub_252E34034();
  v0[20] = v2;
  v3 = sub_252E34024();
  v0[21] = v3;
  v4 = [v2 disambiguationItems];
  v5 = sub_252E37264();

  v6 = sub_252A9E238(v5);

  if (v6)
  {
    v7 = sub_252A6EACC(v6);
    v0[22] = v7;

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D18);
    sub_252E379F4();

    v9 = type metadata accessor for HomeFilter();
    v10 = MEMORY[0x2530AD730](v7, v9);
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD000000000000098, 0x8000000252E9E670);

    v11 = sub_252A6D8E8(v7);
    v0[23] = v11;
    *(sub_252B680FC() + 72) = 1;

    v12 = sub_252B680FC();
    *(v12 + 104) = v11;
    *(v12 + 112) = 0;

    v13 = sub_252B680FC();
    v14 = *(v13 + 120);
    *(v13 + 120) = v7;

    v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v15 + 288), (v0 + 2));

    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    LOBYTE(v11) = (*(v17 + 120))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v11)
    {
      v18 = v0[15];
      v0[24] = *(v18 + 24);
      v0[25] = *(v18 + 112);
      sub_252CC3D90(0xD000000000000033, 0x8000000252E77450, 0xD000000000000096, 0x8000000252E76FA0);
      v28 = sub_252A71970;
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v20 = sub_252DF2F20;
    }

    else
    {
      v0[35] = *(v0[15] + 112);
      sub_252CC3D90(0xD000000000000028, 0x8000000252E77420, 0xD000000000000096, 0x8000000252E76FA0);
      v27 = sub_252A6F108(v7, 0);
      v0[36] = v27;
      v0[12] = v27;
      v28 = sub_252A71628;
      v19 = swift_task_alloc();
      v0[37] = v19;
      *v19 = v0;
      v20 = sub_252DF3680;
    }

    v19[1] = v20;

    return v28(v7);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D18);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000098, 0x8000000252E9E670, 0xD00000000000003ALL, 0x8000000252E773E0, 37);
    sub_2529515FC(0, 3, 0xD00000000000001ALL, 0x8000000252E9E710);
    type metadata accessor for HomeAutomationError();
    sub_252DF445C(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v22 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[18];
    v23 = v0[19];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_252DF2F20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v8 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[22];

    v6 = sub_252DF3350;
  }

  else
  {
    v6 = sub_252DF303C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252DF303C()
{
  v1 = *(v0 + 176);
  v29 = sub_252A6F5D8(v1, *(v0 + 168));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = swift_allocBox();
  v4 = v3;
  *(v0 + 232) = v2;
  v5 = sub_252BAFC18(v1);
  if (qword_27F53F2A0 != -1)
  {
    v25 = v5;
    swift_once();
    v5 = v25;
  }

  v6 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v7 = sub_252A488EC(v5), (v8 & 1) != 0))
  {
    v32 = *(v6[7] + v7);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);
  v30 = *(v0 + 152);
  v31 = *(v0 + 200);
  v26 = *(v0 + 120);
  v15 = sub_252E36324();
  (*(*(v15 - 8) + 56))(v4, v9, 1, v15);
  v16 = swift_allocObject();
  *(v0 + 240) = v16;
  v16[2] = v14;
  v16[3] = v2;
  v16[4] = v12;
  v16[5] = v11;
  v16[6] = v29;
  v16[7] = v10;
  v16[8] = v13;
  v17 = swift_allocObject();
  *(v0 + 248) = v17;
  v17[2] = v14;
  v17[3] = v2;
  v17[4] = v12;
  v17[5] = v11;
  v17[6] = v13;
  v18 = swift_allocObject();
  *(v0 + 256) = v18;
  v18[2] = &unk_252E475C8;
  v18[3] = v17;
  v18[4] = v29;
  v18[5] = v10;
  v27 = v26[7];
  v28 = v26[8];
  __swift_project_boxed_opaque_existential_1(v26 + 4, v27);
  swift_bridgeObjectRetain_n();
  v19 = v14;
  swift_retain_n();
  swift_retain_n();
  v20 = v19;

  sub_252DF2698(v12, v31, v30);

  v21 = swift_task_alloc();
  *(v0 + 264) = v21;
  *v21 = v0;
  v21[1] = sub_252DF33C8;
  v22 = *(v0 + 152);
  v23 = *(v0 + 104);

  return sub_252A1DBA0(v23, &unk_252E475C0, v16, &unk_252E475D0, v18, v22, v27, v28);
}

uint64_t sub_252DF3350()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252DF33C8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[17] + 8))(v2[19], v2[16]);
  if (v0)
  {
    v5 = sub_252DF35DC;
  }

  else
  {
    v5 = sub_252DF3530;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DF3530()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[20];
  v5 = v0[21];

  v8 = v0[18];
  v7 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252DF35DC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);

  v5 = *(v0 + 272);
  v6 = *(v0 + 160);

  v8 = *(v0 + 144);
  v7 = *(v0 + 152);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252DF3680(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = v4[36];
    v8 = v4[22];

    v9 = sub_252DF3A80;
  }

  else
  {
    v4[39] = a1;
    v9 = sub_252DF37BC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252DF37BC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  sub_25297BB38(*(v0 + 312));
  v7 = v5[7];
  v6 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v7);
  sub_252929E74((v5 + 9), v0 + 56);
  v8 = *(v0 + 96);
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  sub_252927BEC((v0 + 56), (v9 + 2));
  v9[7] = v8;
  v9[8] = v2;
  v9[9] = v3;

  sub_252DF2698(v10, v1, v4);

  v11 = swift_task_alloc();
  *(v0 + 328) = v11;
  *v11 = v0;
  v11[1] = sub_252DF3924;
  v12 = *(v0 + 144);
  v13 = *(v0 + 104);

  return sub_252BDCAFC(v13, &unk_252E475B0, v9, v12, v7, v6);
}

uint64_t sub_252DF3924()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v8 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[40];
    (*(v2[17] + 8))(v2[18], v2[16]);

    v5 = sub_252DF3B70;
  }

  else
  {
    v6 = v2[40];
    (*(v2[17] + 8))(v2[18], v2[16]);

    v5 = sub_252DF3AF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DF3A80()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 160);

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252DF3AF8()
{
  v1 = *(v0 + 160);

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252DF3B70()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 160);

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5();
}

void sub_252DF3C10()
{
  type metadata accessor for ControlHomeNeedsDisambiguationStrategy();

  JUMPOUT(0x2530A97C0);
}

uint64_t sub_252DF3C68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_252A9E7CC;

  return sub_252A9EC44(a2);
}

uint64_t sub_252DF3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252AA11D4(a1, a2, a3, a4);
}

uint64_t sub_252DF3DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252DF2910(a1, v8, a3);
}

uint64_t sub_252DF3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_252DF3F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_252DF4028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_252DF40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_252DF41B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_252DF41FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252DF42D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_252DF4404(uint64_t a1, uint64_t a2)
{
  result = sub_252DF445C(&qword_27F543888, a2, type metadata accessor for ControlHomeNeedsDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252DF445C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252DF44A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252DF44C8, 0, 0);
}

uint64_t sub_252DF44C8()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 16), (v0 + 2));

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v5 = sub_252DF4C18;
  }

  else
  {
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    if (sub_252E33884())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544D18);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v5 = sub_252DF4D2C;
    }

    else
    {
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      if (sub_252E338D4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v9 = sub_252E36AD4();
        __swift_project_value_buffer(v9, qword_27F544D18);
        sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
        v4 = swift_task_alloc();
        v0[15] = v4;
        *v4 = v0;
        v5 = sub_252DF4E40;
      }

      else
      {
        v10 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        if (sub_252E338C4())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v11 = sub_252E36AD4();
          __swift_project_value_buffer(v11, qword_27F544D18);
          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
          v4 = swift_task_alloc();
          v0[17] = v4;
          *v4 = v0;
          v5 = sub_252DF4F54;
        }

        else
        {
          v12 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          if (sub_252E338B4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v13 = sub_252E36AD4();
            __swift_project_value_buffer(v13, qword_27F544D18);
            sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
            v4 = swift_task_alloc();
            v0[19] = v4;
            *v4 = v0;
            v5 = sub_252DF5068;
          }

          else
          {
            v14 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
            if (sub_252E33894())
            {
              if (qword_27F53F4D0 != -1)
              {
                swift_once();
              }

              v15 = sub_252E36AD4();
              __swift_project_value_buffer(v15, qword_27F544D18);
              sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
              v4 = swift_task_alloc();
              v0[21] = v4;
              *v4 = v0;
              v5 = sub_252DF517C;
            }

            else
            {
              v16 = v0[6];
              __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
              if (sub_252E338E4())
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v17 = sub_252E36AD4();
                __swift_project_value_buffer(v17, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v0[23] = v4;
                *v4 = v0;
                v5 = sub_252DF5290;
              }

              else
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v18 = sub_252E36AD4();
                __swift_project_value_buffer(v18, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v0[25] = v4;
                *v4 = v0;
                v5 = sub_252DF53A4;
              }
            }
          }
        }
      }
    }
  }

  v4[1] = v5;
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[7];
  v22 = v0[8];

  return sub_252B9EB90(v21, v22, v19);
}

uint64_t sub_252DF4C18()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_252DF81B0;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF4D2C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_252DF81B4;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF4E40()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_252DF81B8;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF4F54()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_252DF81BC;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF5068()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_252DF81C0;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF517C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_252DF81C4;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF5290()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_252DF81C8;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF53A4()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_252DF81CC;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF54B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252DF54DC, 0, 0);
}

uint64_t sub_252DF54DC()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 16), (v0 + 2));

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v5 = sub_252DF5C5C;
LABEL_5:
    v4[1] = v5;
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[8];

    return sub_252C22E1C(v8, v9, v6);
  }

  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_252E33884())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D18);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v14 = sub_252BA2000;
  }

  else
  {
    v19 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    if (sub_252E338D4())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544D18);
      sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
      v4 = swift_task_alloc();
      v0[15] = v4;
      *v4 = v0;
      v5 = sub_252BA2114;
      goto LABEL_5;
    }

    v21 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    if (sub_252E338C4())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544D18);
      sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
      v13 = swift_task_alloc();
      v0[17] = v13;
      *v13 = v0;
      v14 = sub_252DF5DD4;
    }

    else
    {
      v23 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      if (sub_252E338B4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544D18);
        sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
        v13 = swift_task_alloc();
        v0[19] = v13;
        *v13 = v0;
        v14 = sub_252BA233C;
      }

      else
      {
        v25 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        if (sub_252E33894())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v26 = sub_252E36AD4();
          __swift_project_value_buffer(v26, qword_27F544D18);
          sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
          v13 = swift_task_alloc();
          v0[21] = v13;
          *v13 = v0;
          v14 = sub_252DF5EE8;
        }

        else
        {
          v27 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          if (sub_252E338E4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v28 = sub_252E36AD4();
            __swift_project_value_buffer(v28, qword_27F544D18);
            sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
            v13 = swift_task_alloc();
            v0[23] = v13;
            *v13 = v0;
            v14 = sub_252BA25C8;
          }

          else
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v29 = sub_252E36AD4();
            __swift_project_value_buffer(v29, qword_27F544D18);
            sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
            v13 = swift_task_alloc();
            v0[25] = v13;
            *v13 = v0;
            v14 = sub_252BA26DC;
          }
        }
      }
    }
  }

  v13[1] = v14;
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];

  return sub_252C1FF34(v17, v18, v15);
}

uint64_t sub_252DF5C5C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_252DF5D70;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF5D70()
{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252DF5DD4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_252BA29CC;
  }

  else
  {
    v3 = sub_252BA2564;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF5EE8()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_252BA2A94;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF5FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252DF6020, 0, 0);
}

uint64_t sub_252DF6020()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 16), (v0 + 2));

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v5 = sub_252DF4C18;
  }

  else
  {
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    if (sub_252E33884())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544D18);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v5 = sub_252DF4D2C;
    }

    else
    {
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      if (sub_252E338D4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v9 = sub_252E36AD4();
        __swift_project_value_buffer(v9, qword_27F544D18);
        sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
        v4 = swift_task_alloc();
        v0[15] = v4;
        *v4 = v0;
        v5 = sub_252DF4E40;
      }

      else
      {
        v10 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        if (sub_252E338C4())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v11 = sub_252E36AD4();
          __swift_project_value_buffer(v11, qword_27F544D18);
          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
          v4 = swift_task_alloc();
          v0[17] = v4;
          *v4 = v0;
          v5 = sub_252DF4F54;
        }

        else
        {
          v12 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          if (sub_252E338B4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v13 = sub_252E36AD4();
            __swift_project_value_buffer(v13, qword_27F544D18);
            sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
            v4 = swift_task_alloc();
            v0[19] = v4;
            *v4 = v0;
            v5 = sub_252DF5068;
          }

          else
          {
            v14 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
            if (sub_252E33894())
            {
              if (qword_27F53F4D0 != -1)
              {
                swift_once();
              }

              v15 = sub_252E36AD4();
              __swift_project_value_buffer(v15, qword_27F544D18);
              sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
              v4 = swift_task_alloc();
              v0[21] = v4;
              *v4 = v0;
              v5 = sub_252DF517C;
            }

            else
            {
              v16 = v0[6];
              __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
              if (sub_252E338E4())
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v17 = sub_252E36AD4();
                __swift_project_value_buffer(v17, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v0[23] = v4;
                *v4 = v0;
                v5 = sub_252DF5290;
              }

              else
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v18 = sub_252E36AD4();
                __swift_project_value_buffer(v18, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v0[25] = v4;
                *v4 = v0;
                v5 = sub_252DF53A4;
              }
            }
          }
        }
      }
    }
  }

  v4[1] = v5;
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[7];
  v22 = v0[8];

  return sub_252D80B10(v21, v22, v19);
}

uint64_t sub_252DF6770(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v4 = sub_252E34014();
  v3[68] = v4;
  v5 = *(v4 - 8);
  v3[69] = v5;
  v6 = *(v5 + 64) + 15;
  v3[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DF6838, 0, 0);
}

void sub_252DF6838()
{
  v97 = v0;
  v1 = v0[66];
  v2 = sub_252B4F670();
  v0[71] = v2;
  v93 = v0;
  v90 = v2;
  v91 = sub_252B4F854();
  v0[72] = v91;
  v3 = sub_252C285CC();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v3 & 0xC000000000000001;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_252E378C4();
  v7 = v4 & 0xC000000000000001;
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if (v7)
      {
        v11 = MEMORY[0x2530ADF00](v10, v4);
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v4 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v13 = [v11 entity];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 deviceTypes];

        if (v15)
        {
          break;
        }
      }

      ++v10;
      if (v8 == v6)
      {
        goto LABEL_24;
      }
    }

    v16 = sub_252E37264();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2529F8DD4(0, v9[2] + 1, 1, v9);
    }

    v18 = v9;
    v19 = v9[2];
    v20 = v18;
    v21 = v18[3];
    if (v19 >= v21 >> 1)
    {
      v20 = sub_2529F8DD4((v21 > 1), v19 + 1, 1, v20);
    }

    v20[2] = v19 + 1;
    v22 = &v20[v19];
    v9 = v20;
    v22[4] = v16;
  }

  while (v8 != v6);
LABEL_24:
  v23 = v9[2];
  v24 = MEMORY[0x277D84F90];
  v100 = v7;
  v92 = MEMORY[0x277D84F90];
  v95 = v23;
  if (v23)
  {
    v25 = 0;
    v94 = v9 + 4;
    while (v25 < v9[2])
    {
      v26 = v9;
      v27 = v4;
      v28 = v6;
      v29 = v5;
      v30 = v94[v25];
      v31 = *(v30 + 16);
      v32 = *(v24 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_91;
      }

      v34 = v94[v25];

      v35 = swift_isUniquelyReferenced_nonNull_native();
      if (!v35 || v33 > *(v24 + 3) >> 1)
      {
        if (v32 <= v33)
        {
          v36 = v32 + v31;
        }

        else
        {
          v36 = v32;
        }

        v24 = sub_2529F8104(v35, v36, 1, v24);
      }

      v5 = v29;
      v7 = v100;
      v6 = v28;
      if (*(v30 + 16))
      {
        v37 = *(v24 + 2);
        if ((*(v24 + 3) >> 1) - v37 < v31)
        {
          goto LABEL_93;
        }

        v4 = v27;
        memcpy(&v24[8 * v37 + 32], (v30 + 32), 8 * v31);

        if (v31)
        {
          v38 = *(v24 + 2);
          v39 = __OFADD__(v38, v31);
          v40 = v38 + v31;
          if (v39)
          {
            goto LABEL_94;
          }

          *(v24 + 2) = v40;
        }
      }

      else
      {

        v4 = v27;
        if (v31)
        {
          goto LABEL_92;
        }
      }

      ++v25;
      v9 = v26;
      if (v95 == v25)
      {
        goto LABEL_41;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  else
  {
LABEL_41:

    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v41 = swift_allocObject();
    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    *(v41 + 16) = MEMORY[0x277D84F90];
    __dst[0] = v43;
    while (v6 != v42)
    {
      if (v7)
      {
        v44 = MEMORY[0x2530ADF00](v42, v4);
      }

      else
      {
        if (v42 >= *(v5 + 16))
        {
          goto LABEL_89;
        }

        v44 = *(v4 + 8 * v42 + 32);
      }

      v45 = v44;
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v47 = sub_252DA124C(0);

      ++v42;
      if (v47)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v7 = v100;
        }

        sub_252E372D4();
        v92 = __dst[0];
        v42 = v46;
      }
    }

    type metadata accessor for HomeAutomationEntityResponses();
    v49 = swift_allocObject();
    v93[73] = v49;
    *(v49 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v100 = v49;
    *(v49 + 24) = v92;
    v50 = sub_252C759A0(&unk_2864AE2E0);
    v51 = v50;
    v52 = v50 + 56;
    v53 = -1;
    v54 = -1 << *(v50 + 32);
    if (-v54 < 64)
    {
      v53 = ~(-1 << -v54);
    }

    v55 = v53 & *(v50 + 56);
    v56 = (63 - v54) >> 6;

    v57 = 0;
    v58 = MEMORY[0x277D84F90];
    if (v55)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v59 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_88;
      }

      if (v59 >= v56)
      {
        break;
      }

      v55 = *(v52 + 8 * v59);
      ++v57;
      if (v55)
      {
        v57 = v59;
        do
        {
LABEL_59:
          v60 = *(*(v51 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v55)))));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_2529F8104(0, *(v58 + 2) + 1, 1, v58);
          }

          v62 = *(v58 + 2);
          v61 = *(v58 + 3);
          if (v62 >= v61 >> 1)
          {
            v58 = sub_2529F8104((v61 > 1), v62 + 1, 1, v58);
          }

          v55 &= v55 - 1;
          *(v58 + 2) = v62 + 1;
          *&v58[8 * v62 + 32] = v60;
        }

        while (v55);
      }
    }

    v63 = *(v24 + 2);
    if (v63)
    {
      v64 = 0;
      v65 = MEMORY[0x277D84F90];
      do
      {
        v66 = *(v58 + 2);
        v67 = 32;
        do
        {
          v68 = v66;
          if (v66-- == 0)
          {
            break;
          }

          v70 = *&v58[v67];
          v67 += 8;
        }

        while (v70 != *&v24[8 * v64 + 32]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_2529F9638(0, *(v65 + 2) + 1, 1, v65);
        }

        v72 = *(v65 + 2);
        v71 = *(v65 + 3);
        if (v72 >= v71 >> 1)
        {
          v65 = sub_2529F9638((v71 > 1), v72 + 1, 1, v65);
        }

        ++v64;
        *(v65 + 2) = v72 + 1;
        v65[v72 + 32] = v68 != 0;
      }

      while (v64 != v63);
    }

    else
    {

      v65 = MEMORY[0x277D84F90];
    }

    v73 = *(v65 + 2);
    v74 = v65 + 32;
    while (v73)
    {
      v75 = *v74++;
      --v73;
      if ((v75 & 1) == 0)
      {

        sub_25293DEE0((v93 + 2));
        type metadata accessor for FailureResponseHandler();
        swift_allocObject();
        memcpy(__dst, v93 + 2, 0x1F8uLL);
        v93[77] = sub_252BE97AC(__dst);
        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v76 = ControlHomeIntent.Builder.init()();
        v77 = (*(*v76 + 224))(v76);
        v93[78] = v77;

        v100 = sub_252DF5FFC;
        v78 = v90;
        v79 = swift_task_alloc();
        v93[79] = v79;
        *v79 = v93;
        v79[1] = sub_252DF7310;
        v80 = v93[65];
        v81 = v100;

        v81(v80, v77, v90);
        return;
      }
    }

    v82 = v93[70];
    v83 = v93[67];

    v84 = v83[6];
    v85 = v83[7];
    __swift_project_boxed_opaque_existential_1(v83 + 3, v84);
    v86 = swift_task_alloc();
    v93[74] = v86;
    v86[2] = v83;
    v86[3] = v91;
    v86[4] = v100;
    sub_252AD7CC4();
    v87 = swift_task_alloc();
    v93[75] = v87;
    *v87 = v93;
    v87[1] = sub_252DF7110;
    v88 = v93[70];
    v89 = v93[65];
    v99 = v85;

    sub_252BDB88C(v89, &unk_252E61A40, v86, v88, 0, 0, 0, v84);
  }
}

uint64_t sub_252DF7110()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *(*v1 + 560);
  v5 = *(*v1 + 552);
  v6 = *(*v1 + 544);
  v10 = *v1;
  *(*v1 + 608) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252DF74F0;
  }

  else
  {
    v8 = *(v2 + 592);

    v7 = sub_252DF7290;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252DF7290()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];

  v4 = v0[70];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252DF7310()
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 624);
  v4 = *(*v1 + 568);
  v7 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v5 = sub_252DF7584;
  }

  else
  {
    v5 = sub_252DF745C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DF745C()
{
  v1 = v0[77];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];

  v5 = v0[70];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252DF74F0()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];

  v5 = v0[76];
  v6 = v0[70];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252DF7584()
{
  v1 = v0[77];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];

  v5 = v0[80];
  v6 = v0[70];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252DF7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DF76B0, 0, 0);
}

uint64_t sub_252DF76B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);

  v7(v1, 1, 1, v6);
  v7(v1 + v2[10], 1, 1, v6);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  *(v1 + v2[9]) = 0;
  sub_252DF7AC8(v1, v4, v3);
  v8 = sub_252C04C14();
  v0[7] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_252DF7860;

  return v12(0xD00000000000002ALL, 0x8000000252E697D0, v8);
}

uint64_t sub_252DF7860(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252DF7A3C;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252DF79AC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252DF79AC()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_252DF8154(v0[6]);

  v3 = v0[1];
  v4 = v0[10];

  return v3(v4);
}

uint64_t sub_252DF7A3C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_252DF8154(v0[6]);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_252DF7AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-v11];
  v13 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  v14 = v13[8];
  v15 = *(a1 + v14);

  *(a1 + v14) = a2;
  v16 = v13[5];
  v17 = *(a1 + v16);
  swift_retain_n();

  *(a1 + v16) = a3;
  v18 = v13[7];
  v19 = *(a1 + v18);

  *(a1 + v18) = a3;
  v20 = sub_25294833C(1u, 0, 0);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v22 = [v20 dictionary];
  if (!v22)
  {

LABEL_7:
    v30 = sub_252E36324();
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    goto LABEL_8;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v36[0] = 0;
  v25 = [v24 dataWithPropertyList:v23 format:200 options:0 error:v36];
  v26 = v36[0];
  if (!v25)
  {
    v31 = v26;
    v32 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v27 = sub_252E32D34();
  v29 = v28;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v27, v29);
  v30 = sub_252E36324();
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
LABEL_8:
  sub_252956C98(v12, a1 + v13[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
  result = sub_252956C98(v10, a1);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_252DF7E18@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncFailedStateResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

uint64_t sub_252DF7E58(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252DF6770(a1, a2);
}

BOOL sub_252DF7F04()
{
  v0 = sub_252B4F670();
  v1 = sub_252C285CC();
  if (v1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = [v0 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    v6 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2 == v6)
    {
      goto LABEL_8;
    }
  }

  v7 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*&v0[v7] == 5)
  {
LABEL_8:

    return 1;
  }

  else
  {
    v9 = [v0 entityResponses];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for HomeEntityResponse();
      v11 = sub_252E37264();

      if (v11 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v12 == 0;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_252DF80AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252DF7618(v2, v3, v4);
}

uint64_t sub_252DF8154(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252DF81D0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v36 = v5;
  v37 = result;
  v34 = v1;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          goto LABEL_40;
        }

        v4 = *(v1 + 8 * v9);
        ++v7;
        if (v4)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

LABEL_10:
    v41 = v4;
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    v13 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_39;
    }

LABEL_14:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v13;
    if (result)
    {
      if (v14)
      {
        goto LABEL_21;
      }

      v17 = v8;
      v18 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v14)
      {
LABEL_21:
        sub_252E378C4();
        goto LABEL_22;
      }

      v18 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = *(v18 + 16);
LABEL_22:
    result = sub_252E37A54();
    v17 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v12;
    v38 = v17;
    if (v11)
    {
      v24 = v18;
      result = sub_252E378C4();
      v18 = v24;
      v22 = v12;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = (v41 - 1) & v41;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_43;
      }

      v25 = v18 + 8 * v20 + 32;
      v41 &= v41 - 1;
      v35 = v18;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
          v27 = sub_2529FBD80(v40, i, v22);
          v29 = *v28;
          (v27)(v40, 0);
          *(v25 + 8 * i) = v29;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeTargetMap();
        swift_arrayInitWithCopy();
      }

      v8 = v38;
      v5 = v36;
      result = v37;
      v1 = v34;
      v4 = v41;
      if (v39 >= 1)
      {
        v30 = *(v35 + 16);
        v31 = __OFADD__(v30, v39);
        v32 = v30 + v39;
        if (v31)
        {
          goto LABEL_44;
        }

        *(v35 + 16) = v32;
      }
    }

    else
    {

      v8 = v38;
      v5 = v36;
      result = v37;
      if (v39 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v33 = sub_252E378C4();
  v16 = v33 + v13;
  if (!__OFADD__(v33, v13))
  {
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v8;
}

uint64_t sub_252DF8544(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v38 = v1;
  v39 = result;
  v41 = v5;
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      break;
    }

LABEL_10:
    v11 = __clz(__rbit64(v4)) | (v7 << 6);
    v12 = result;
    v13 = (*(result + 48) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(result + 56) + 8 * v11);

    v17 = sub_252DF9FB4(v15, v14, v16);

    v18 = v17 >> 62;
    v46 = v17;
    if (v17 >> 62)
    {
      v19 = sub_252E378C4();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_252E378C4();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v19;
    v21 = __OFADD__(result, v19);
    v22 = result + v19;
    if (v21)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v20)
      {
        goto LABEL_22;
      }

      v23 = v9;
      v24 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v22 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v20)
      {
LABEL_22:
        sub_252E378C4();
        goto LABEL_23;
      }

      v24 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = *(v24 + 16);
LABEL_23:
    result = sub_252E37A54();
    v23 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    v43 = v23;
    if (v18)
    {
      v29 = v24;
      result = sub_252E378C4();
      v24 = v29;
      v28 = result;
    }

    else
    {
      v28 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v28)
    {
      if (((v27 >> 1) - v26) < v44)
      {
        goto LABEL_43;
      }

      v30 = v24 + 8 * v26 + 32;
      v42 = v4;
      v40 = v24;
      if (v18)
      {
        if (v28 < 1)
        {
          goto LABEL_45;
        }

        sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
        v31 = 0;
        v32 = v46;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
          v33 = sub_2529FBD80(v45, v31, v32);
          v35 = *v34;
          (v33)(v45, 0);
          *(v30 + 8 * v31++) = v35;
        }

        while (v28 != v31);
      }

      else
      {
        type metadata accessor for HomeAttributeTargetArea();
        swift_arrayInitWithCopy();
      }

      v8 = v43;
      v1 = v38;
      result = v39;
      v5 = v41;
      v4 = v42;
      if (v44 >= 1)
      {
        v36 = *(v40 + 16);
        v21 = __OFADD__(v36, v44);
        v37 = v36 + v44;
        if (v21)
        {
          goto LABEL_44;
        }

        *(v40 + 16) = v37;
      }
    }

    else
    {

      v8 = v43;
      v5 = v41;
      result = v12;
      if (v44 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_10;
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
  return result;
}

uint64_t sub_252DF88E4(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (isUniquelyReferenced_nonNull_native + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    v11[0] = v5;
    v11[1] = v4;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v10[2] = v11;

    if (sub_2529ED970(sub_25296A724, v10, v3))
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v3 + 16) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80((v6 > 1), v7 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

char *sub_252DF8A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v3 + 8 * v2++);
    v6 = *(v4 + 2);
    v7 = v6;
    v8 = 32;
    while (v7)
    {
      v9 = *&v4[v8];
      v8 += 8;
      --v7;
      if (v9 == v5)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2529F7D44(0, v6 + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_2529F7D44((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    *&v4[8 * v11 + 32] = v5;
LABEL_4:
    ;
  }

  while (v2 != v1);
  return v4;
}

char *sub_252DF8B58(uint64_t a1)
{
  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v27 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v28 = v11;
  v24 = a1 + v27;
  v12 = *(v10 + 56);
  v22 = (v10 + 16);
  v23 = (v10 - 8);
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v24 + v12 * v9++;
    v15 = v10;
    v28(v8, v14, v2);
    v16 = &v13[v27];
    v17 = *(v13 + 2) + 1;
    while (--v17)
    {
      sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48]);
      v16 += v12;
      if (sub_252E36EF4())
      {
        (*v23)(v8, v2);
        goto LABEL_4;
      }
    }

    v28(v26, v8, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2529F7F74(0, *(v13 + 2) + 1, 1, v13);
    }

    v19 = *(v13 + 2);
    v18 = *(v13 + 3);
    if (v19 >= v18 >> 1)
    {
      v13 = sub_2529F7F74(v18 > 1, v19 + 1, 1, v13);
    }

    (*v23)(v8, v2);
    *(v13 + 2) = v19 + 1;
    (*v22)(&v13[v27 + v19 * v12], v26, v2);
LABEL_4:
    v10 = v15;
  }

  while (v9 != v25);
  return v13;
}

uint64_t sub_252DF8F1C(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (isUniquelyReferenced_nonNull_native + 56);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 3);
    v4 = *(v2 - 2);
    v6 = *(v2 - 8);
    v7 = *(v2 - 1);
    v8 = *v2;
    v14[0] = v5;
    v14[1] = v4;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v13[2] = v14;

    if (sub_2529EDE80(sub_252E11304, v13, v3))
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F8360(0, *(v3 + 16) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F8360((v9 > 1), v10 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 32 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v4;
      *(v11 + 48) = v6;
      *(v11 + 52) = v7;
      *(v11 + 56) = v8;
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_252DF9108(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a1 + 32);
  v7 = MEMORY[0x277D84F90];
  do
  {
    v9 = *v6++;
    v8 = v9;
    if ((a2(v9, v7) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = a3(0, *(v7 + 16) + 1, 1, v7);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v7 = a3(v10 > 1, v11 + 1, 1, v7);
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + v11 + 32) = v8;
    }

    --v3;
  }

  while (v3);
  return v7;
}

uint64_t sub_252DF91F8(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = isUniquelyReferenced_nonNull_native + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 80);
    v33 = *(v2 + 96);
    v34 = v4;
    v6 = *(v2 + 112);
    v35 = *(v2 + 128);
    v7 = *(v2 + 48);
    v8 = *(v2 + 16);
    v29 = *(v2 + 32);
    v30 = v7;
    v9 = *(v2 + 48);
    v10 = *(v2 + 80);
    v31 = *(v2 + 64);
    v32 = v10;
    v11 = *(v2 + 16);
    v27 = *v2;
    v28 = v11;
    v25[6] = v33;
    v25[7] = v6;
    v25[8] = *(v2 + 128);
    v25[2] = v29;
    v25[3] = v9;
    v25[4] = v31;
    v25[5] = v5;
    v36 = *(v2 + 144);
    v26 = *(v2 + 144);
    v25[0] = v27;
    v25[1] = v8;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v23[2] = v25;
    sub_25297DE08(&v27, &v24);
    if (sub_2529EDD04(sub_252E11264, v23, v3))
    {
      isUniquelyReferenced_nonNull_native = sub_2529AEC80(&v27);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F84A8(0, *(v3 + 16) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F84A8((v12 > 1), v13 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 152 * v13;
      v15 = v28;
      *(v14 + 32) = v27;
      *(v14 + 48) = v15;
      v16 = v29;
      v17 = v30;
      v18 = v32;
      *(v14 + 96) = v31;
      *(v14 + 112) = v18;
      *(v14 + 64) = v16;
      *(v14 + 80) = v17;
      v19 = v33;
      v20 = v34;
      v21 = v35;
      *(v14 + 176) = v36;
      *(v14 + 144) = v20;
      *(v14 + 160) = v21;
      *(v14 + 128) = v19;
    }

    v2 += 152;
    --v1;
  }

  while (v1);
  return v3;
}

char *sub_252DF93D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    memcpy(v11, v2, sizeof(v11));
    v4 = memcpy(v10, v2, sizeof(v10));
    MEMORY[0x28223BE20](v4);
    v8[2] = v10;
    sub_2529353AC(v11, &v9);
    if (sub_2529EDA1C(sub_252E1119C, v8, v3))
    {
      sub_252935408(v11);
    }

    else
    {
      sub_2529353AC(v11, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2529F7FB0(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_2529F7FB0((v5 > 1), v6 + 1, 1, v3);
      }

      sub_252935408(v11);
      *(v3 + 2) = v6 + 1;
      memcpy(&v3[504 * v6 + 32], v11, 0x1F8uLL);
    }

    v2 += 504;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_252DF9598(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = result;
  v13 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v7 + 32);
      }

      MEMORY[0x28223BE20](v9);
      if (a3(a2))
      {
      }

      else
      {

        MEMORY[0x2530AD700](v11);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v8 = v13;
      }

      ++v7;
    }

    while (v6 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_252DF974C(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = *(v5 + 8 * v4++);
    v8 = *(v6 + 16);
    v9 = v8;
    v10 = 32;
    while (v9)
    {
      v11 = *(v6 + v10);
      v10 += 8;
      --v9;
      if (v11 == v7)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = a2(0, v8 + 1, 1, v6);
    }

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v6 = a2(v12 > 1, v13 + 1, 1, v6);
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v7;
LABEL_4:
    ;
  }

  while (v4 != v2);
  return v6;
}

char *sub_252DF9850(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v27 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v28 = v11;
  v24 = a1 + v27;
  v12 = *(v10 + 56);
  v22 = (v10 + 16);
  v23 = (v10 - 8);
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v24 + v12 * v9++;
    v15 = v10;
    v28(v8, v14, v2);
    v16 = &v13[v27];
    v17 = *(v13 + 2) + 1;
    while (--v17)
    {
      sub_252E11098(&qword_27F5463E8, MEMORY[0x277D5E4F0]);
      v16 += v12;
      if (sub_252E36EF4())
      {
        (*v23)(v8, v2);
        goto LABEL_4;
      }
    }

    v28(v26, v8, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2529F85CC(0, *(v13 + 2) + 1, 1, v13);
    }

    v19 = *(v13 + 2);
    v18 = *(v13 + 3);
    if (v19 >= v18 >> 1)
    {
      v13 = sub_2529F85CC(v18 > 1, v19 + 1, 1, v13);
    }

    (*v23)(v8, v2);
    *(v13 + 2) = v19 + 1;
    (*v22)(&v13[v27 + v19 * v12], v26, v2);
LABEL_4:
    v10 = v15;
  }

  while (v9 != v25);
  return v13;
}

unint64_t sub_252DF9B90(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = result;
  v13 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      MEMORY[0x28223BE20](v9);
      if (a3(a2))
      {
      }

      else
      {
        v11 = v10;
        MEMORY[0x2530AD700]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v8 = v13;
      }

      ++v7;
    }

    while (v6 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_252DF9D20()
{
  result = sub_2529FC018(&unk_2864A0F10);
  qword_27F575DF8 = result;
  return result;
}

unint64_t sub_252DF9D48()
{
  result = sub_252CC61B4(&unk_2864A44D0);
  qword_27F575E00 = result;
  return result;
}

id sub_252DF9D70(id *a1, void *a2, void *a3)
{
  v5 = *a1;
  [*a1 mapID];
  v7 = v6;
  result = [a2 mapID];
  if (v7 == v9)
  {
    result = [v5 name];
    if (result)
    {
      v10 = result;
      v11 = sub_252E36F34();
      v13 = v12;

      v14 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a3;
      v33 = *a3;
      *a3 = 0x8000000000000000;
      v18 = sub_252A44A10(v11, v13);
      v19 = v16[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
        goto LABEL_17;
      }

      v22 = v17;
      if (v16[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_252E04690(&qword_27F545030, &qword_252E5A3B0);
          v16 = v33;
        }
      }

      else
      {
        sub_252E0216C(v21, isUniquelyReferenced_nonNull_native, &qword_27F545030, &qword_252E5A3B0);
        v16 = v33;
        v23 = sub_252A44A10(v11, v13);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_19;
        }

        v18 = v23;
      }

      v25 = *a3;
      *a3 = v16;

      v26 = *a3;
      if (v22)
      {

        goto LABEL_13;
      }

      v26[(v18 >> 6) + 8] |= 1 << v18;
      v27 = (v26[6] + 16 * v18);
      *v27 = v11;
      v27[1] = v13;
      *(v26[7] + 8 * v18) = MEMORY[0x277D84F90];
      v28 = v26[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (!v29)
      {
        v26[2] = v30;
LABEL_13:
        v31 = (v26[7] + 8 * v18);
        v32 = a2;
        MEMORY[0x2530AD700]();
        if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_252E372D4();
        }

LABEL_17:
        sub_252E372A4();
        return sub_252E372D4();
      }

      __break(1u);
LABEL_19:
      result = sub_252E37E24();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_252DF9FB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, a3);
        }

        else
        {
          v7 = *(a3 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetArea());
        v10 = sub_252E36F04();
        v11 = [v9 initWithIdentifier:0 displayString:v10];

        v12 = v11;
        v13 = sub_252E36F04();
        [v12 setName_];

        [v12 setAreaID_];
        [v12 setMapID_];

        sub_252E37A94();
        v14 = *(v15 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v4 != v6);
      return v15;
    }
  }

  return result;
}

uint64_t sub_252DFA164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v29 = a2;
  v6 = *a1;
  v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v11 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v6 = sub_252AC0F68(v6);

      v12 = v6 ? v6 : v11;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v33 = v11;
    if (v12 >> 62)
    {
      break;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_10:
    v27 = a3;
    v28 = v13;
    v14 = 0;
    v30 = v12 & 0xFFFFFFFFFFFFFF8;
    v31 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v31)
      {
        v15 = MEMORY[0x2530ADF00](v14, v12);
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v7 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = [v15 name];
      if (v17)
      {
        v18 = v17;
        a3 = v4;
        v19 = sub_252E36F34();
        v21 = v20;

        v32[0] = v19;
        v32[1] = v21;
        MEMORY[0x28223BE20](v22);
        v26[2] = v32;
        v6 = sub_2529ED970(sub_25296A724, v26, v29);
        v4 = a3;

        if (v6)
        {
          v6 = &v33;
          sub_252E37A94();
          v23 = *(v33 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v13 = v28;
      }

      else
      {
      }

      ++v14;
      if (v7 == v13)
      {
        v24 = v33;
        a3 = v27;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v13 = sub_252E378C4();
  if (v13)
  {
    goto LABEL_10;
  }

LABEL_28:
  v24 = MEMORY[0x277D84F90];
LABEL_29:

  *a3 = v24;
  return result;
}

void *sub_252DFA3E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_252DFA48C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A8, &qword_252E40970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_252DFA500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_252DFA57C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 504);
  return result;
}

void *sub_252DFA62C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_252DFA6B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_252DFA73C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541718, &qword_252E409D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

uint64_t sub_252DFA7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name;
  v19 = *(v15 + 56);
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &v24 - v16);
  sub_252956C1C(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_252956C1C(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48]);
      v21 = sub_252E36EF4();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
LABEL_6:
    sub_25293847C(v17, &qword_27F540758, &unk_252E4D160);
    v21 = 0;
    return v21 & 1;
  }

  sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_252DFAAC8(uint64_t a1, uint64_t a2)
{
  if ((sub_252E32E54() & 1) == 0 || *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4() & 1;
  }
}

void *sub_252DFAB78(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_252DFAC78(a1, a2, sub_252DFB098, sub_252DFB098);
}

void *sub_252DFABF8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_252DFAC78(a1, a2, sub_252DFB6DC, sub_252DFB6DC);
}

void *sub_252DFAC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_252DFB000(v16, v10, a2, a1, a4);

    MEMORY[0x2530AED00](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *sub_252DFAE54(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_252DFAC78(a1, a2, sub_252DFBAB8, sub_252DFBAB8);
}

void *sub_252DFAED4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_252DFAC78(a1, a2, sub_252DFBEDC, sub_252DFBEDC);
}

void *sub_252DFAF54(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_252DFAC78(a1, a2, sub_252DFDF44, sub_252DFDF44);
}

void *sub_252DFB000(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_252DFB098(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v53 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_32;
  }

  v54 = 0;
  v6 = 0;
  v49 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v61 = a3 + 56;
  v51 = v10;
  while (1)
  {
LABEL_8:
    if (v9)
    {
      v11 = __clz(__rbit64(v9));
      v55 = (v9 - 1) & v9;
    }

    else
    {
      v12 = v6;
      do
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_64;
        }

        if (v6 >= v10)
        {
LABEL_62:

          return sub_252C53048(v53, a2, v54, v5);
        }

        v13 = *(v49 + 8 * v6);
        ++v12;
      }

      while (!v13);
      v11 = __clz(__rbit64(v13));
      v55 = (v13 - 1) & v13;
    }

    v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    v15 = *(v5 + 40);
    sub_252E37EC4();
    sub_252E32E84();
    sub_252E11098(&qword_27F540680, MEMORY[0x277CC95F0]);

    sub_252E36E94();
    v59 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v17 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v57 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    sub_252E37044();

    v18 = sub_252E37F14();
    v19 = -1 << *(v5 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v61 + 8 * (v20 >> 6))) != 0)
    {
      break;
    }

LABEL_7:
    v4 = a4;
    v10 = v51;
    v9 = v55;
  }

  v23 = ~v19;
  while (1)
  {
    v24 = *(*(a3 + 48) + 8 * v20);

    if ((sub_252E32E54() & 1) != 0 && *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v14 + v59))
    {
      break;
    }

LABEL_18:
    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if ((*(v61 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {

      v5 = a3;
      goto LABEL_7;
    }
  }

  if (*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) != *v57 || *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) != v57[1])
  {
    v26 = sub_252E37DB4();

    if (v26)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_29:

  v10 = v51;
  v53[v21] |= v22;
  v9 = v55;
  v27 = __OFADD__(v54++, 1);
  v5 = a3;
  v4 = a4;
  if (!v27)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_32:
  v28 = 0;
  v52 = v5 + 56;
  v29 = 1 << *(v5 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v5 + 56);
  v32 = (v29 + 63) >> 6;
  v62 = v4 + 56;
  v54 = 0;
  v56 = v32;
LABEL_38:
  while (2)
  {
    if (v31)
    {
      v33 = __clz(__rbit64(v31));
      v60 = (v31 - 1) & v31;
LABEL_45:
      v58 = v33 | (v28 << 6);
      v36 = *(*(v5 + 48) + 8 * v58);
      v37 = *(v4 + 40);
      sub_252E37EC4();
      sub_252E32E84();
      sub_252E11098(&qword_27F540680, MEMORY[0x277CC95F0]);

      sub_252E36E94();
      v38 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
      MEMORY[0x2530AE390](*(v36 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v39 = (v36 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v41 = *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v40 = *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      sub_252E37044();
      v4 = a4;

      v42 = sub_252E37F14();
      v43 = -1 << *(a4 + 32);
      v44 = v42 & ~v43;
      if (((*(v62 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {

        v5 = a3;
LABEL_37:
        v31 = v60;
        continue;
      }

      v45 = ~v43;
      while (1)
      {
        v46 = *(*(v4 + 48) + 8 * v44);

        if ((sub_252E32E54() & 1) != 0 && *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v36 + v38))
        {
          if (*(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v39 && *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v39[1])
          {

LABEL_59:

            v32 = v56;
            *(v53 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
            v27 = __OFADD__(v54++, 1);
            v5 = a3;
            v31 = v60;
            if (v27)
            {
              __break(1u);
              goto LABEL_62;
            }

            goto LABEL_38;
          }

          v48 = sub_252E37DB4();

          if (v48)
          {
            v4 = a4;
            goto LABEL_59;
          }
        }

        else
        {
        }

        v44 = (v44 + 1) & v45;
        v4 = a4;
        if (((*(v62 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {

          v5 = a3;
          v32 = v56;
          goto LABEL_37;
        }
      }
    }

    break;
  }

  v34 = v28;
  while (1)
  {
    v28 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v28 >= v32)
    {
      goto LABEL_62;
    }

    v35 = *(v52 + 8 * v28);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v60 = (v35 - 1) & v35;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_252DFB6DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_252E37EC4();

      sub_252E37044();
      v27 = sub_252E37F14();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_252C532DC(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_252E37EC4();

      sub_252E37044();
      v41 = sub_252E37F14();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_252E37DB4() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252DFBAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v55 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_31;
  }

  v58 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a3 + 56;
  v52 = v11;
  v53 = a4 + 56;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v13 = __clz(__rbit64(v10));
      v56 = (v10 - 1) & v10;
    }

    else
    {
      v14 = v6;
      do
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_62;
        }

        if (v6 >= v11)
        {
LABEL_60:

          return sub_252C53528(v55, a2, v58, v5);
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v56 = (v15 - 1) & v15;
    }

    v16 = (*(v4 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v5 + 40);
    sub_252E37EC4();
    sub_252E37EE4();
    if (v17)
    {

      sub_252E37044();
    }

    result = sub_252E37F14();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v12 + 8 * (v21 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v5 = a3;
    v4 = a4;
    v11 = v52;
    v7 = v53;
    v10 = v56;
  }

  v24 = ~v20;
  v25 = *(v5 + 48);
  while (1)
  {
    v26 = (v25 + 16 * v21);
    v27 = v26[1];
    if (!v27)
    {
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    if (v17)
    {
      if (*v26 == v18 && v27 == v17)
      {
        break;
      }

      result = sub_252E37DB4();
      if (result)
      {
        break;
      }
    }

LABEL_19:
    v21 = (v21 + 1) & v24;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if ((*(v12 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_28:
  v7 = v53;
  v55[v22] |= v23;
  v4 = a4;
  v29 = __OFADD__(v58++, 1);
  v5 = a3;
  v11 = v52;
  v10 = v56;
  if (!v29)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_31:
  v58 = 0;
  v30 = 0;
  v31 = v5 + 56;
  v32 = 1 << *(v5 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v5 + 56);
  v35 = (v32 + 63) >> 6;
  v36 = v4 + 56;
LABEL_36:
  while (2)
  {
    if (v34)
    {
      v37 = __clz(__rbit64(v34));
      v57 = (v34 - 1) & v34;
LABEL_43:
      v54 = v37 | (v30 << 6);
      v40 = (*(v5 + 48) + 16 * v54);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(v4 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v41)
      {

        sub_252E37044();
      }

      result = sub_252E37F14();
      v44 = -1 << *(v4 + 32);
      v45 = result & ~v44;
      if (((*(v36 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
LABEL_35:

        v5 = a3;
        v4 = a4;
        v34 = v57;
        continue;
      }

      v46 = ~v44;
      v47 = *(v4 + 48);
      while (1)
      {
        v48 = (v47 + 16 * v45);
        v49 = v48[1];
        if (v49)
        {
          if (v41)
          {
            v50 = *v48 == v42 && v49 == v41;
            if (v50 || (result = sub_252E37DB4(), (result & 1) != 0))
            {

LABEL_57:
              *(v55 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
              v4 = a4;
              v29 = __OFADD__(v58++, 1);
              v5 = a3;
              v34 = v57;
              if (v29)
              {
                __break(1u);
                goto LABEL_60;
              }

              goto LABEL_36;
            }
          }
        }

        else if (!v41)
        {
          goto LABEL_57;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v36 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    break;
  }

  v38 = v30;
  while (1)
  {
    v30 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_60;
    }

    v39 = *(v31 + 8 * v30);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v57 = (v39 - 1) & v39;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_252DFBEDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v232 = a2;
  v233 = a1;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v6 = *(*(v268 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v268);
  v247 = &v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v228 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v228 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v228 - v15;
  v17 = sub_252E36324();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v231 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v248 = &v228 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v240 = (&v228 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v254 = &v228 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v229 = &v228 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v230 = &v228 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v228 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v237 = &v228 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v250 = &v228 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v257 = &v228 - v40;
  MEMORY[0x28223BE20](v39);
  v228 = &v228 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v45 = MEMORY[0x28223BE20](v44);
  v239 = &v228 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v48 = MEMORY[0x28223BE20](v47);
  v246 = &v228 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v51 = MEMORY[0x28223BE20](v50);
  v262 = &v228 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v238 = &v228 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v245 = &v228 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v228 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v236 = (&v228 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v243 = &v228 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v242 = &v228 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v249 = &v228 - v67;
  MEMORY[0x28223BE20](v66);
  v69 = MEMORY[0x28223BE20](&v228 - v68);
  v234 = &v228 - v70;
  result = MEMORY[0x28223BE20](v69);
  v241 = &v228 - v75;
  v76 = *(a3 + 16);
  v77 = *(a4 + 16);
  v78 = (v18 + 48);
  v265 = (v18 + 8);
  v79 = (v18 + 32);
  v80 = a3;
  v81 = v77 >= v76;
  v258 = a3;
  v252 = a4;
  v260 = v79;
  v261 = v78;
  v270 = v17;
  v82 = &v267;
  if (v81)
  {
    goto LABEL_71;
  }

  v235 = 0;
  v83 = 0;
  v72 = a4 + 56;
  v84 = 1 << *(a4 + 32);
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  else
  {
    v85 = -1;
  }

  v73 = v85 & *(a4 + 56);
  v86 = (v84 + 63) >> 6;
  v264 = a3 + 56;
  v251 = v14;
  v253 = v16;
  v244 = v34;
  v248 = v59;
  v256 = result;
  v239 = a4 + 56;
  v238 = v86;
  while (1)
  {
LABEL_7:
    if (v73)
    {
      v87 = __clz(__rbit64(v73));
      v245 = ((v73 - 1) & v73);
    }

    else
    {
      v88 = v83;
      do
      {
        v83 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_142;
        }

        if (v83 >= v86)
        {
LABEL_140:

          return sub_252C53768(v233, v232, v235, v80);
        }

        v89 = *(v72 + 8 * v83);
        ++v88;
      }

      while (!v89);
      v87 = __clz(__rbit64(v89));
      v245 = ((v89 - 1) & v89);
    }

    v246 = v83;
    v90 = *(*(a4 + 48) + 8 * (v87 | (v83 << 6)));
    v91 = v80;
    v92 = *(v80 + 40);
    sub_252E37EC4();
    v263 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    v93 = v241;
    sub_252956C1C(&v90[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute], v241);
    v266 = *v78;
    v94 = v266(v93, 1, v270);
    v259 = v90;

    if (v94 == 1)
    {
      sub_25293847C(v93, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*v265)(v93, v270);
      sub_252E37EE4();
      sub_252E37044();
    }

    v254 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v95 = *&v259[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue];
    if (v95)
    {
      sub_252E37EE4();
      v96 = v234;
      sub_252956C1C(v95 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v234);
      if (v266(v96, 1, v270) == 1)
      {
        sub_25293847C(v96, &qword_27F540298, &unk_252E3C270);
        v11 = v259;
        if (*(v95 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {
          v97 = *(v95 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

          HomeAutomationAbstractMeasurement.hash(into:)();
        }

        else
        {
          v100 = *(v95 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
          sub_252E37EE4();
        }
      }

      else
      {
        v98 = v228;
        v99 = v270;
        (*v260)(v228, v96, v270);
        sub_252E36304();
        sub_252E37044();

        (*v265)(v98, v99);
        v11 = v259;
      }
    }

    else
    {
      sub_252E37EE4();
      v11 = v259;
    }

    v101 = sub_252E37F14();
    v80 = v91;
    v102 = -1 << *(v91 + 32);
    v103 = v101 & ~v102;
    v104 = v103 >> 6;
    v105 = 1 << v103;
    if (((1 << v103) & *(v264 + 8 * (v103 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    a4 = v252;
    v83 = v246;
    v72 = v239;
    v86 = v238;
    v73 = v245;
  }

  v262 = ~v102;
  v247 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
  while (1)
  {
    v107 = *(v268 + 48);
    v267 = *(*(v80 + 48) + 8 * v103);
    sub_252956C1C(v267 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v16);
    sub_252956C1C(v11 + v263, &v16[v107]);
    v108 = v266;
    if (v266(v16, 1, v270) != 1)
    {
      break;
    }

    if (v108(&v16[v107], 1, v270) == 1)
    {
      v109 = v267;

      sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
      goto LABEL_34;
    }

LABEL_27:
    v106 = v80;
    sub_25293847C(v16, &qword_27F540758, &unk_252E4D160);
LABEL_28:
    v103 = (v103 + 1) & v262;
    v104 = v103 >> 6;
    v105 = 1 << v103;
    v80 = v106;
    if ((*(v264 + 8 * (v103 >> 6)) & (1 << v103)) == 0)
    {
      goto LABEL_6;
    }
  }

  v110 = v256;
  sub_252956C1C(v16, v256);
  if (v108(&v16[v107], 1, v270) == 1)
  {
    (*v265)(v110, v270);
    v11 = v259;
    goto LABEL_27;
  }

  v111 = &v16[v107];
  v112 = v257;
  v113 = v270;
  (*v260)(v257, v111, v270);
  sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48]);
  v255 = v105;
  v114 = v104;
  v115 = v267;

  v116 = sub_252E36EF4();
  v117 = *v265;
  (*v265)(v112, v113);
  v117(v110, v113);
  v109 = v115;
  v104 = v114;
  v105 = v255;
  v16 = v253;
  sub_25293847C(v253, &qword_27F540298, &unk_252E3C270);
  v11 = v259;
  if ((v116 & 1) == 0)
  {

    v78 = v261;
    v106 = v258;
    goto LABEL_28;
  }

LABEL_34:
  v118 = *(v109 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
  v119 = *&v254[v11];
  if (!v118)
  {
    v106 = v258;
    v78 = v261;
    if (!v119)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  if (!v119)
  {
    goto LABEL_44;
  }

  v255 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
  v120 = v249;
  sub_252956C1C(v118 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v249);
  v121 = v261;
  if (v266(v120, 1, v270) != 1)
  {
    v125 = v120;
    v126 = v270;
    v255 = *v260;
    (v255)(v250, v125, v270);
    v127 = v119 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
    v128 = v242;
    sub_252956C1C(v127, v242);
    v129 = v266(v128, 1, v126);
    v106 = v258;
    v78 = v121;
    if (v129 == 1)
    {
      (*v265)(v250, v270);
      sub_25293847C(v128, &qword_27F540298, &unk_252E3C270);

      goto LABEL_28;
    }

    v132 = v128;
    v133 = v237;
    (v255)(v237, v132, v270);
    LODWORD(v240) = sub_252E362E4();
    v255 = *v265;
    v134 = v133;
    v135 = v270;
    (v255)(v134, v270);
    (v255)(v250, v135);
    v109 = v267;
    if (v240)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  sub_25293847C(v120, &qword_27F540298, &unk_252E3C270);
  v122 = v243;
  sub_252956C1C(v119 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v243);
  if (v266(v122, 1, v270) != 1)
  {
    v130 = v270;
    v240 = *v260;
    v240(v244, v122, v270);
    v131 = v236;
    sub_252956C1C(v118 + v255, v236);
    v78 = v121;
    if (v266(v131, 1, v130) == 1)
    {

      (*v265)(v244, v270);
      sub_25293847C(v131, &qword_27F540298, &unk_252E3C270);

      v106 = v258;
      v11 = v259;
      goto LABEL_28;
    }

    v146 = v230;
    v147 = v270;
    v240(v230, v131, v270);
    LODWORD(v255) = sub_252E362E4();

    v148 = *v265;
    (*v265)(v146, v147);
    v148(v244, v147);
    v106 = v258;
    v11 = v259;
    v109 = v267;
LABEL_60:
    if (v255)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  sub_25293847C(v122, &qword_27F540298, &unk_252E3C270);
  v123 = *(v119 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (*(v118 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
  {
    v106 = v258;
    v11 = v259;
    v109 = v267;
    if (!v123)
    {

      v78 = v261;
      goto LABEL_28;
    }

    v124 = *(v118 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    v240 = v123;
    LODWORD(v255) = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v124, v123);

    v78 = v261;
    goto LABEL_60;
  }

  v11 = v259;
  v109 = v267;
  if (v123)
  {

LABEL_44:

    v106 = v258;
    v78 = v261;
    goto LABEL_28;
  }

  v149 = *(v118 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
  v150 = *(v119 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

  v140 = v149 == v150;
  v106 = v258;
  v78 = v261;
  if (!v140)
  {
LABEL_42:

    goto LABEL_28;
  }

LABEL_50:
  v136 = *(v268 + 48);
  v137 = v251;
  sub_252956C1C(v109 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v251);
  v267 = v136;
  sub_252956C1C(v11 + v247, v137 + v136);
  v138 = v266;
  if (v266(v137, 1, v270) == 1)
  {

    v139 = v251;
    v140 = v138(&v251[v267], 1, v270) == 1;
    v141 = v139;
    if (v140)
    {

      result = sub_25293847C(v139, &qword_27F540298, &unk_252E3C270);
      v16 = v253;
      goto LABEL_68;
    }

    goto LABEL_56;
  }

  sub_252956C1C(v251, v248);
  if (v138(&v251[v267], 1, v270) == 1)
  {

    (*v265)(v248, v270);
    v141 = v251;
LABEL_56:
    sub_25293847C(v141, &qword_27F540758, &unk_252E4D160);
    v16 = v253;
    goto LABEL_28;
  }

  v142 = v257;
  v143 = v270;
  (*v260)(v257, &v251[v267], v270);
  sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48]);
  LODWORD(v267) = sub_252E36EF4();

  v144 = *v265;
  v145 = v142;
  v78 = v261;
  (*v265)(v145, v143);
  v144(v248, v143);
  v11 = v259;
  sub_25293847C(v251, &qword_27F540298, &unk_252E3C270);
  v16 = v253;
  if ((v267 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_68:
  v233[v104] |= v105;
  v151 = __OFADD__(v235++, 1);
  a4 = v252;
  v80 = v106;
  v83 = v246;
  v72 = v239;
  v86 = v238;
  v82 = &v269;
  v73 = v245;
  if (!v151)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_71:
  *(v82 - 32) = 0;
  v152 = 0;
  v153 = v80 + 56;
  v154 = 1 << *(v80 + 32);
  if (v154 < 64)
  {
    v155 = ~(-1 << v154);
  }

  else
  {
    v155 = -1;
  }

  v156 = v155 & *(v80 + 56);
  v157 = (v154 + 63) >> 6;
  v158 = (a4 + 56);
  v241 = v72;
  v244 = v73;
  v253 = v74;
  v159 = v245;
  v243 = v80 + 56;
  v242 = v157;
  v259 = (a4 + 56);
  while (2)
  {
    if (v156)
    {
      v160 = __clz(__rbit64(v156));
      v249 = (v156 - 1) & v156;
LABEL_83:
      v250 = v152;
      v163 = v160 | (v152 << 6);
      v164 = *(v80 + 48);
      v237 = v163;
      v165 = *(v164 + 8 * v163);
      v166 = *(a4 + 40);
      sub_252E37EC4();
      v167 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
      sub_252956C1C(v165 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v159);
      v266 = *v78;
      v168 = v266(v159, 1, v270);
      v267 = v165;

      if (v168 == 1)
      {
        sub_25293847C(v159, &qword_27F540298, &unk_252E3C270);
        sub_252E37EE4();
      }

      else
      {
        sub_252E36304();
        (*v265)(v159, v270);
        sub_252E37EE4();
        v158 = v259;
        sub_252E37044();
      }

      v255 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
      v169 = *(v267 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v169)
      {
        goto LABEL_93;
      }

      sub_252E37EE4();
      v170 = v238;
      sub_252956C1C(v169 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v238);
      if (v266(v170, 1, v270) == 1)
      {
        sub_25293847C(v170, &qword_27F540298, &unk_252E3C270);
        if (*(v169 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {
          v171 = *(v169 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

          HomeAutomationAbstractMeasurement.hash(into:)();

          goto LABEL_94;
        }

        v174 = *(v169 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
LABEL_93:
        sub_252E37EE4();
      }

      else
      {
        v172 = v229;
        v173 = v270;
        (*v260)(v229, v170, v270);
        sub_252E36304();
        sub_252E37044();

        (*v265)(v172, v173);
      }

LABEL_94:
      v175 = sub_252E37F14();
      v176 = -1 << *(a4 + 32);
      v177 = v175 & ~v176;
      if (((*&v158[(v177 >> 3) & 0xFFFFFFFFFFFFFF8] >> v177) & 1) == 0)
      {
LABEL_75:

        v80 = v258;
        v159 = v245;
        v152 = v250;
        v153 = v243;
        v157 = v242;
        v156 = v249;
        continue;
      }

      v264 = ~v176;
      v251 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      v256 = v167;
LABEL_99:
      v178 = a4;
      v179 = *(*(a4 + 48) + 8 * v177);
      v180 = *(v268 + 48);
      sub_252956C1C(v179 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v11);
      sub_252956C1C(v267 + v167, v11 + v180);
      v181 = v266;
      if (v266(v11, 1, v270) == 1)
      {
        v182 = v181(v11 + v180, 1, v270);
        a4 = v178;
        if (v182 == 1)
        {

          sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
          goto LABEL_104;
        }

LABEL_97:
        sub_25293847C(v11, &qword_27F540758, &unk_252E4D160);
        goto LABEL_98;
      }

      v263 = v177;
      v183 = v179;
      v184 = v158;
      v185 = v167;
      v186 = v262;
      sub_252956C1C(v11, v262);
      if (v181(v11 + v180, 1, v270) == 1)
      {
        (*v265)(v186, v270);
        a4 = v178;
        v167 = v185;
        v158 = v184;
        v177 = v263;
        goto LABEL_97;
      }

      v187 = v257;
      v188 = v270;
      (*v260)(v257, v11 + v180, v270);
      sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48]);
      v179 = v183;

      v189 = sub_252E36EF4();
      v190 = *v265;
      v191 = v187;
      v78 = v261;
      (*v265)(v191, v188);
      v190(v262, v188);
      v167 = v256;
      a4 = v178;
      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
      v177 = v263;
      if ((v189 & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_104:
      v192 = *(v179 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      v193 = *(v267 + v255);
      if (v192)
      {
        if (!v193)
        {
          goto LABEL_113;
        }

        v194 = v270;
        v263 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
        v195 = v253;
        sub_252956C1C(v192 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v253);
        v196 = v266;
        if (v266(v195, 1, v194) == 1)
        {

          sub_25293847C(v195, &qword_27F540298, &unk_252E3C270);
          v197 = v244;
          sub_252956C1C(v193 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v244);
          if (v196(v197, 1, v194) == 1)
          {
            sub_25293847C(v197, &qword_27F540298, &unk_252E3C270);
            v198 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
            v199 = *(v193 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
            if (!v198)
            {
              a4 = v252;
              v78 = v261;
              v167 = v256;
              if (v199)
              {
              }

              else
              {
                v226 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
                v227 = *(v193 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

                v140 = v226 == v227;
                v78 = v261;
                if (v140)
                {
                  goto LABEL_121;
                }
              }

              goto LABEL_113;
            }

            v78 = v261;
            v167 = v256;
            if (v199)
            {
              v200 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

              v201 = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v198, v199);

              a4 = v252;
              if (v201)
              {
                goto LABEL_121;
              }

LABEL_113:
            }

            else
            {

              a4 = v252;
            }

            v158 = v259;
            goto LABEL_98;
          }

          v236 = *v260;
          (v236)(v248, v197, v194);
          v205 = v192 + v263;
          v206 = v239;
          sub_252956C1C(v205, v239);
          if (v196(v206, 1, v194) != 1)
          {
            v222 = v231;
            v223 = v270;
            (v236)(v231, v206, v270);
            v224 = sub_252E362E4();

            v225 = *v265;
            (*v265)(v222, v223);
            v225(v248, v223);
            a4 = v252;
            v167 = v256;
            if (v224)
            {
              goto LABEL_121;
            }

            goto LABEL_113;
          }

          (*v265)(v248, v270);
          v204 = v206;
LABEL_119:
          sub_25293847C(v204, &qword_27F540298, &unk_252E3C270);

          a4 = v252;
          v158 = v259;
          v167 = v256;
          goto LABEL_98;
        }

        v263 = *v260;
        (v263)(v254, v195, v194);
        v202 = v193 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
        v203 = v246;
        sub_252956C1C(v202, v246);
        if (v196(v203, 1, v194) == 1)
        {
          (*v265)(v254, v270);
          v204 = v203;
          goto LABEL_119;
        }

        v207 = v240;
        v208 = v270;
        (v263)(v240, v203, v270);
        v209 = v254;
        LODWORD(v263) = sub_252E362E4();
        v210 = *v265;
        (*v265)(v207, v208);
        v210(v209, v208);
        a4 = v252;
        v167 = v256;
        if ((v263 & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if (v193)
      {
        goto LABEL_113;
      }

LABEL_121:
      v211 = *(v268 + 48);
      v212 = v247;
      sub_252956C1C(v179 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v247);
      sub_252956C1C(&v251[v267], v212 + v211);
      v213 = v266;
      if (v266(v212, 1, v270) == 1)
      {

        v214 = v213(v212 + v211, 1, v270);
        v158 = v259;
        if (v214 == 1)
        {

          result = sub_25293847C(v212, &qword_27F540298, &unk_252E3C270);
          a4 = v252;
          goto LABEL_137;
        }
      }

      else
      {
        v215 = v241;
        sub_252956C1C(v212, v241);
        if (v213(v212 + v211, 1, v270) != 1)
        {
          v216 = v257;
          v217 = v270;
          (*v260)(v257, v212 + v211, v270);
          sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48]);
          v218 = sub_252E36EF4();

          v219 = *v265;
          v220 = v216;
          v78 = v261;
          (*v265)(v220, v217);
          v221 = v217;
          v167 = v256;
          v219(v215, v221);
          sub_25293847C(v212, &qword_27F540298, &unk_252E3C270);
          a4 = v252;
          v158 = v259;
          if (v218)
          {

LABEL_137:
            *(v233 + ((v237 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v237;
            v151 = __OFADD__(v235++, 1);
            v80 = v258;
            v159 = v245;
            v152 = v250;
            v153 = v243;
            v157 = v242;
            v156 = v249;
            if (v151)
            {
              __break(1u);
              goto LABEL_140;
            }

            continue;
          }

          goto LABEL_98;
        }

        (*v265)(v215, v270);
        v158 = v259;
      }

      sub_25293847C(v212, &qword_27F540758, &unk_252E4D160);
      a4 = v252;
LABEL_98:
      v177 = (v177 + 1) & v264;
      if (((*&v158[(v177 >> 3) & 0xFFFFFFFFFFFFFF8] >> v177) & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_99;
    }

    break;
  }

  v161 = v152;
  while (1)
  {
    v152 = v161 + 1;
    if (__OFADD__(v161, 1))
    {
      break;
    }

    if (v152 >= v157)
    {
      goto LABEL_140;
    }

    v162 = *(v153 + 8 * v152);
    ++v161;
    if (v162)
    {
      v160 = __clz(__rbit64(v162));
      v249 = (v162 - 1) & v162;
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}