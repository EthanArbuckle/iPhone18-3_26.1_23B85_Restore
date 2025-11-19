void *sub_247F19B68(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void **, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_247F198F4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_247F19BF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_247F23DEC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v13;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED28, &unk_247F25CF0);
  result = sub_247F2426C();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v44 = v9 + 4;
  v45 = v9 + 2;
  v18 = result + 64;
  v43 = a4;
  v46 = v9;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = a4[7];
    v24 = *(a4[6] + 8 * v22);
    v25 = v9;
    v50 = v9[9];
    v26 = v23 + v50 * v22;
    v27 = v9[2];
    v28 = v47;
    v27(v47, v26, v8);
    v29 = v28;
    v30 = v8;
    v49 = v25[4];
    v49(v51, v29, v8);
    v31 = *(v15 + 40);
    v32 = v24;
    result = sub_247F2414C();
    v33 = -1 << *(v15 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v8 = v30;
      v9 = v46;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v18 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v8 = v30;
    v9 = v46;
LABEL_26:
    *(v18 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    *(*(v15 + 48) + 8 * v36) = v32;
    result = (v49)(*(v15 + 56) + v36 * v50, v51, v8);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43;
    v16 = v48;
    if (!a3)
    {
      return v15;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v48 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_247F19F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED20, &qword_247F25D00);
    v3 = sub_247F2426C();
    v4 = a1 + 32;

    while (1)
    {
      sub_247F1A89C(v4, &v13, &qword_27EE7EE68, &unk_247F25BA0);
      v5 = v13;
      v6 = v14;
      result = sub_247F0B354(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247F0C710(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_247F1A088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EED0, &qword_247F25BB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED28, &unk_247F25CF0);
    v8 = sub_247F2426C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_247F1A89C(v10, v6, &qword_27EE7EED0, &qword_247F25BB8);
      v12 = *v6;
      result = sub_247F0B2CC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_247F23DEC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_247F1A270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247F1A310()
{
  result = qword_27EE7EEE8;
  if (!qword_27EE7EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EEE8);
  }

  return result;
}

unint64_t sub_247F1A364()
{
  result = qword_27EE7EEF8;
  if (!qword_27EE7EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EEF8);
  }

  return result;
}

void *sub_247F1A3B8(void *a1)
{
  v54 = [a1 style];
  v2 = [a1 identifier];
  v53 = sub_247F23F3C();
  v63 = v3;

  v4 = [a1 clientID];
  v52 = sub_247F23F3C();
  v62 = v5;

  v6 = [a1 schedule];
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v7 = sub_247F23EAC();

  v8 = [a1 title];
  v51 = sub_247F23F3C();
  v61 = v9;

  v10 = [a1 message];
  v50 = sub_247F23F3C();
  v59 = v11;

  v12 = [a1 notificationTitle];
  if (v12)
  {
    v13 = v12;
    v49 = sub_247F23F3C();
    v60 = v14;
  }

  else
  {
    v49 = 0;
    v60 = 0;
  }

  v15 = [a1 notificationMessage];
  if (v15)
  {
    v16 = v15;
    v48 = sub_247F23F3C();
    v58 = v17;
  }

  else
  {
    v48 = 0;
    v58 = 0;
  }

  v18 = [a1 actionTitle];
  v47 = sub_247F23F3C();
  v57 = v19;

  v20 = [a1 actionURLString];
  v46 = sub_247F23F3C();
  v56 = v21;

  v22 = [a1 dismissTitle];
  if (v22)
  {
    v23 = v22;
    v45 = sub_247F23F3C();
    v55 = v24;
  }

  else
  {
    v45 = 0;
    v55 = 0;
  }

  v25 = [a1 dismissURLString];
  if (v25)
  {
    v26 = v25;
    v44 = sub_247F23F3C();
    v28 = v27;
  }

  else
  {
    v44 = 0;
    v28 = 0;
  }

  v29 = [a1 deadlineURLString];
  v30 = sub_247F23F3C();
  v32 = v31;

  v33 = [a1 lastNagString];
  if (v33)
  {
    v34 = v33;
    v35 = sub_247F23F3C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  type metadata accessor for DMCCodableNagItem();
  v38 = swift_allocObject();
  v39 = Dictionary<>.DMCNagScheduleString.getter(v7);
  v41 = v40;

  if (v41)
  {
    v38[2] = v54;
    v38[3] = v53;
    v38[4] = v63;
    v38[5] = v52;
    v38[6] = v62;
    v38[7] = v39;
    v38[8] = v41;
    v38[9] = v51;
    v38[10] = v61;
    v38[11] = v50;
    v38[12] = v59;
    v38[13] = v49;
    v38[14] = v60;
    v38[15] = v48;
    v38[16] = v58;
    v38[17] = v47;
    v38[18] = v57;
    v38[19] = v46;
    v38[20] = v56;
    v38[21] = v45;
    v38[22] = v55;
    v38[23] = v44;
    v38[24] = v28;
    v38[25] = v30;
    v38[26] = v32;
    v38[27] = v35;
    v38[28] = v37;
  }

  else
  {

    sub_247F115A4();
    swift_allocError();
    *v42 = 5;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v38;
}

unint64_t sub_247F1A848()
{
  result = qword_27EE7EF18;
  if (!qword_27EE7EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF18);
  }

  return result;
}

uint64_t sub_247F1A89C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for DMCCodableNagItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DMCCodableNagItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247F1AA74()
{
  result = qword_27EE7EF48;
  if (!qword_27EE7EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF48);
  }

  return result;
}

unint64_t sub_247F1AACC()
{
  result = qword_27EE7EF50;
  if (!qword_27EE7EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF50);
  }

  return result;
}

unint64_t sub_247F1AB24()
{
  result = qword_27EE7EF58;
  if (!qword_27EE7EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF58);
  }

  return result;
}

uint64_t sub_247F1AB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_247F2430C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_247F2430C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEE00676E69727453 || (sub_247F2430C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000247F274A0 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000247F274C0 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74 || (sub_247F2430C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52556E6F69746361 && a2 == 0xEF676E697274534CLL || (sub_247F2430C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x547373696D736964 && a2 == 0xEC000000656C7469 || (sub_247F2430C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000247F27500 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000247F279B0 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5367614E7473616CLL && a2 == 0xED0000676E697274)
  {

    return 13;
  }

  else
  {
    v6 = sub_247F2430C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_247F1B00C(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v94[1] = *MEMORY[0x277D85DE8];
  v3 = sub_247F23D3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v85 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = v78 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v78 - v10;
  v93 = MEMORY[0x277D84F90];
  v88 = objc_opt_self();
  v12 = [v88 defaultManager];
  v13 = sub_247F23CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFC0, &qword_247F25EC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_247F25650;
  v15 = *MEMORY[0x277CBE868];
  *(v14 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v16 = v15;
  v17 = sub_247F2402C();

  v94[0] = 0;
  v18 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v17 options:0 error:v94];

  v19 = v94[0];
  if (v18)
  {
    v20 = sub_247F2403C();
    v21 = v19;

    v23 = *(v20 + 16);
    if (v23)
    {
      v24 = v3;
      v26 = v4 + 16;
      v25 = *(v4 + 16);
      v90 = 0;
      v91 = v25;
      v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v78[1] = v20;
      v28 = v20 + v27;
      v29 = *(v4 + 72);
      v86 = (v4 + 8);
      v87 = v29;
      *&v22 = 136315394;
      v79 = v22;
      v30 = v85;
      v31 = v80;
      v84 = v24;
      v91(v80, v20 + v27, v24);
      while (1)
      {
        v92[0] = 0;
        v33 = [v88 defaultManager];
        sub_247F23D0C();
        v34 = sub_247F23EFC();

        v35 = [v33 fileExistsAtPath:v34 isDirectory:v92];

        if (!v35)
        {
          goto LABEL_11;
        }

        if (v92[0] == 1)
        {
          v36 = sub_247F1B00C(v31, v81);
          sub_247F1B8E0(v36);
          (*v86)(v31, v24);
        }

        else
        {
LABEL_11:
          v89 = v23;
          v37 = v90;
          v38 = sub_247F23D4C();
          if (v37)
          {
            v90 = 0;
            if (qword_27EE7EC00 != -1)
            {
              swift_once();
            }

            v43 = sub_247F23E1C();
            __swift_project_value_buffer(v43, qword_27EE7F098);
            v91(v30, v31, v24);
            v44 = v37;
            v45 = sub_247F23DFC();
            v46 = v31;
            v47 = sub_247F2409C();

            if (os_log_type_enabled(v45, v47))
            {
              v48 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v94[0] = v49;
              *v48 = v79;
              v50 = sub_247F23D0C();
              v51 = v26;
              v53 = v52;
              v83 = *v86;
              v83(v85, v84);
              v54 = sub_247F082C8(v50, v53, v94);
              v26 = v51;
              v30 = v85;

              *(v48 + 4) = v54;
              *(v48 + 12) = 2112;
              v55 = v37;
              v56 = _swift_stdlib_bridgeErrorToNSError();
              *(v48 + 14) = v56;
              v57 = v82;
              *v82 = v56;
              _os_log_impl(&dword_247F03000, v45, v47, "DMCFileManager failed to decode item at '%s' with error: %@", v48, 0x16u);
              sub_247F0C720(v57, &qword_27EE7EC10, &qword_247F251F0);
              MEMORY[0x24C1BF4F0](v57, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v49);
              v58 = v49;
              v24 = v84;
              MEMORY[0x24C1BF4F0](v58, -1, -1);
              MEMORY[0x24C1BF4F0](v48, -1, -1);

              v31 = v80;
              v83(v80, v24);
            }

            else
            {

              v32 = *v86;
              (*v86)(v30, v24);
              v32(v46, v24);
              v31 = v46;
            }
          }

          else
          {
            v40 = v38;
            v41 = v39;
            type metadata accessor for DMCCodableNagItem();
            sub_247F2045C(&qword_27EE7EF70, type metadata accessor for DMCCodableNagItem);
            v42 = sub_247F23C1C();
            v90 = 0;
            MEMORY[0x24C1BEB30](v42);
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v59 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_247F2404C();
            }

            sub_247F2406C();
            sub_247F1FD14(v40, v41);
            (*v86)(v31, v24);
          }

          v23 = v89;
        }

        v28 += v87;
        if (!--v23)
        {
          break;
        }

        v91(v31, v28, v24);
      }
    }

    result = v93;
  }

  else
  {
    v60 = v94[0];
    v61 = sub_247F23C9C();

    swift_willThrow();
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v62 = sub_247F23E1C();
    __swift_project_value_buffer(v62, qword_27EE7F098);
    (*(v4 + 16))(v11, a1, v3);
    v63 = v61;
    v64 = sub_247F23DFC();
    v65 = sub_247F2409C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v84 = v3;
      v67 = v66;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v94[0] = v69;
      *v67 = 136315394;
      v70 = sub_247F23D0C();
      v72 = v71;
      (*(v4 + 8))(v11, v84);
      v73 = sub_247F082C8(v70, v72, v94);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2112;
      v74 = v61;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v75;
      *v68 = v75;
      _os_log_impl(&dword_247F03000, v64, v65, "DMCFileManager failed to get contents of directory '%s' with error: %@", v67, 0x16u);
      sub_247F0C720(v68, &qword_27EE7EC10, &qword_247F251F0);
      MEMORY[0x24C1BF4F0](v68, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x24C1BF4F0](v69, -1, -1);
      MEMORY[0x24C1BF4F0](v67, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v11, v3);
    }

    result = MEMORY[0x277D84F90];
  }

  v77 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247F1B8E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_247F2423C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_247F2423C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_247F223A8();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_247F1F828(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t DMCNagScheduler.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id DMCNagScheduler.init(taskName:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_247F23EFC();

  v6 = [v4 initWithTaskName:v5 delegate:a3];

  swift_unknownObjectRelease();
  return v6;
}

char *DMCNagScheduler.init(taskName:delegate:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___DMCNagScheduler_backgroundTask] = 0;
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v6 = sub_247F23E1C();
  __swift_project_value_buffer(v6, qword_27EE7F098);

  v7 = sub_247F23DFC();
  v8 = sub_247F240AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_247F082C8(a1, a2, &v18);
    _os_log_impl(&dword_247F03000, v7, v8, "DMCNagScheduler init with task name: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1BF4F0](v10, -1, -1);
    MEMORY[0x24C1BF4F0](v9, -1, -1);
  }

  v19.receiver = v3;
  v19.super_class = DMCNagScheduler;
  v11 = objc_msgSendSuper2(&v19, sel_init);
  v12 = objc_allocWithZone(DMCBackgroundTask);
  v13 = v11;
  v14 = sub_247F23EFC();

  v15 = [v12 initWithName:v14 queue:0];

  v16 = *&v13[OBJC_IVAR___DMCNagScheduler_backgroundTask];
  *&v13[OBJC_IVAR___DMCNagScheduler_backgroundTask] = v15;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v13;
}

id DMCNagScheduler.startNaggingItem(_:)(void *a1)
{
  v2 = v1;
  v21[1] = *MEMORY[0x277D85DE8];
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v4 = sub_247F23E1C();
  __swift_project_value_buffer(v4, qword_27EE7F098);
  v5 = a1;
  v6 = sub_247F23DFC();
  v7 = sub_247F240AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v8 = 136315138;
    v9 = [v5 properties];
    v10 = sub_247F23EAC();

    v11 = Dictionary<>.DMCDictionaryString(separator:)(10, 0xE100000000000000, v10);
    v12 = v2;
    v14 = v13;

    v15 = sub_247F082C8(v11, v14, v21);
    v2 = v12;

    *(v8 + 4) = v15;
    _os_log_impl(&dword_247F03000, v6, v7, "DMCNagScheduler start nagging item: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C1BF4F0](v20, -1, -1);
    MEMORY[0x24C1BF4F0](v8, -1, -1);
  }

  v21[0] = 0;
  if ([v2 nag:v5 error:v21])
  {
    v16 = v21[0];
    result = [v2 evaluateNags];
  }

  else
  {
    v18 = v21[0];
    sub_247F23C9C();

    result = swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall DMCNagScheduler.stopNaggingItem(withID:clientID:)(Swift::String withID, Swift::String clientID)
{
  v3 = v2;
  object = clientID._object;
  countAndFlagsBits = clientID._countAndFlagsBits;
  v6 = withID._object;
  v7 = withID._countAndFlagsBits;
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v8 = sub_247F23E1C();
  __swift_project_value_buffer(v8, qword_27EE7F098);

  v9 = sub_247F23DFC();
  v10 = sub_247F240AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_247F082C8(v7, v6, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_247F082C8(countAndFlagsBits, object, &v15);
    _os_log_impl(&dword_247F03000, v9, v10, "DMCNagScheduler stop nagging item: %s/%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BF4F0](v12, -1, -1);
    MEMORY[0x24C1BF4F0](v11, -1, -1);
  }

  sub_247F1F9A8(v7, v6, countAndFlagsBits, object);
  v13 = sub_247F23EFC();
  v14 = sub_247F23EFC();
  [v3 deleteNagItemWithId:v13 clientID:v14];
}

char *DMCNagScheduler.nagItems()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_247F23D3C();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247F23C3C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v39 = sub_247F23C2C();
  v16 = [v0 delegate];
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      v18 = [v17 readEncodedNagItems];
      swift_unknownObjectRelease();
      v19 = sub_247F2403C();

      v7 = MEMORY[0x277D84F90];
      v40 = MEMORY[0x277D84F90];
      v38 = *(v19 + 16);
      if (v38)
      {
        v20 = 0;
        v8 = (v19 + 40);
        while (1)
        {
          if (v20 >= *(v19 + 16))
          {
            goto LABEL_36;
          }

          v21 = *(v8 - 1);
          v3 = *v8;
          type metadata accessor for DMCCodableNagItem();
          sub_247F1FCC0(v21, v3);
          sub_247F2045C(&qword_27EE7EF70, type metadata accessor for DMCCodableNagItem);
          sub_247F23C1C();
          if (v2)
          {
            break;
          }

          sub_247F16E8C();
          v2 = 0;
          sub_247F1FD14(v21, v3);

          MEMORY[0x24C1BEB30](v22);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_247F2404C();
          }

          ++v20;
          sub_247F2406C();
          v7 = v40;
          v8 += 2;
          if (v38 == v20)
          {
            goto LABEL_31;
          }
        }

        sub_247F1FD14(v21, v3);
      }

      else
      {
LABEL_31:
      }

      return v7;
    }

    swift_unknownObjectRelease();
  }

  v24 = DMCNagItemsDirectory();
  if (v24)
  {
    v25 = v24;
    sub_247F23F3C();

    sub_247F23D1C();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v36 = v9;
      (*(v9 + 32))(v12, v7, v8);
      v35 = v12;
      v27 = sub_247F1B00C(v12, v39);
      v3 = v27;
      v40 = MEMORY[0x277D84F90];
      if (v27 >> 62)
      {
        goto LABEL_37;
      }

      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v8;
      if (!v28)
      {
LABEL_38:
        v7 = MEMORY[0x277D84F90];
LABEL_39:

        (*(v36 + 8))(v35, v37);
        return v7;
      }

LABEL_19:
      v29 = 0;
      v38 = v3 & 0xC000000000000001;
      v8 = (v3 & 0xFFFFFFFFFFFFFF8);
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v38)
        {
          MEMORY[0x24C1BED10](v29, v3);
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v29 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v30 = *(v3 + 8 * v29 + 32);

          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v28 = sub_247F2423C();
            v37 = v8;
            if (!v28)
            {
              goto LABEL_38;
            }

            goto LABEL_19;
          }
        }

        sub_247F16E8C();
        if (v2)
        {
          (*(v36 + 8))(v35, v37);

          goto LABEL_16;
        }

        MEMORY[0x24C1BEB30](v32);
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_247F2404C();
        }

        sub_247F2406C();
        v7 = v40;
        ++v29;
        if (v31 == v28)
        {
          goto LABEL_39;
        }
      }
    }

    sub_247F0C720(v7, &qword_27EE7ED30, &qword_247F25660);
  }

  sub_247F115A4();
  swift_allocError();
  *v26 = 3;
  swift_willThrow();
LABEL_16:

  return v7;
}

id sub_247F1C9E8(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = sub_247F23F3C();
  v6 = v5;

  v7 = [a1 clientID];
  v8 = sub_247F23F3C();
  v10 = v9;

  sub_247F1F9A8(v4, v6, v8, v10);

  v21[0] = 0;
  v11 = [a1 followUpAndReturnError_];
  v12 = v21[0];
  if (!v11 || (v13 = v11, v21[0] = 0, v14 = v12, v15 = [v13 presentAndReturnError_], v13, !v15))
  {
    v18 = v21[0];
    sub_247F23C9C();

LABEL_6:
    result = swift_willThrow();
    goto LABEL_7;
  }

  v16 = v21[0];
  [a1 didNag];
  v21[0] = 0;
  if (![v1 saveNagItem:a1 error:v21])
  {
    v20 = v21[0];
    sub_247F23C9C();

    goto LABEL_6;
  }

  result = v21[0];
LABEL_7:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_247F1CBD0(void *a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v8 = sub_247F23DEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v12 = sub_247F23E1C();
  __swift_project_value_buffer(v12, qword_27EE7F098);
  v13 = a1;
  v14 = sub_247F23DFC();
  v15 = sub_247F240AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v51 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v13;
    *v18 = a1;
    v19 = v13;
    _os_log_impl(&dword_247F03000, v14, v15, "DMCNagScheduler evaluating nags with background task: %{public}@", v17, 0xCu);
    sub_247F0C720(v18, &qword_27EE7EC10, &qword_247F251F0);
    MEMORY[0x24C1BF4F0](v18, -1, -1);
    v20 = v17;
    v2 = v1;
    v7 = v51;
    MEMORY[0x24C1BF4F0](v20, -1, -1);
  }

  aBlock[0] = 0;
  v21 = [v2 nagItemsWithError_];
  v22 = aBlock[0];
  if (v21)
  {
    v23 = v21;
    type metadata accessor for DMCNagItem(0);
    v24 = sub_247F2403C();
    v25 = v22;
  }

  else
  {
    v26 = aBlock[0];
    v27 = sub_247F23C9C();

    swift_willThrow();
    v28 = v27;
    v29 = sub_247F23DFC();
    v30 = sub_247F2409C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = v27;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_247F03000, v29, v30, "DMCNagScheduler failed to read nag items with error: %{public}@", v31, 0xCu);
      sub_247F0C720(v32, &qword_27EE7EC10, &qword_247F251F0);
      MEMORY[0x24C1BF4F0](v32, -1, -1);
      MEMORY[0x24C1BF4F0](v31, -1, -1);
    }

    else
    {
    }

    v24 = MEMORY[0x277D84F90];
  }

  v35 = v52;
  if (v24 >> 62)
  {
    v36 = sub_247F2423C();
    if (v36)
    {
      goto LABEL_13;
    }

LABEL_23:

    [v13 setCompleted];
    v38 = [v2 backgroundTask];
    [v38 cancel];
    goto LABEL_24;
  }

  v36 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_23;
  }

LABEL_13:
  type metadata accessor for DMCNagItem(0);
  v37 = sub_247F2402C();

  v38 = [v2 nextNagForItems_];

  [v13 setCompleted];
  v39 = [v38 date];
  sub_247F23F3C();

  String.DMCDate.getter(v7);

  v40 = *(v9 + 48);
  if (v40(v7, 1, v8) == 1)
  {
    sub_247F23DDC();
    if (v40(v7, 1, v8) != 1)
    {
      sub_247F0C720(v7, &qword_27EE7EC68, &unk_247F25BC0);
    }
  }

  else
  {
    (*(v9 + 32))(v35, v7, v8);
  }

  sub_247F23DBC();
  v42 = v41;
  (*(v9 + 8))(v35, v8);
  v43 = [v38 nearDeadline];
  v44 = [v2 backgroundTask];
  if (v44)
  {
    v45 = v44;
    if (v43)
    {
      v46 = 3;
    }

    else
    {
      v46 = 0;
    }

    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_247F2054C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247F05A04;
    aBlock[3] = &block_descriptor_0;
    v48 = _Block_copy(aBlock);

    [v45 submitRequestWithInterval:v46 tolerance:v48 requirements:v42 completion:{fmin(v42, 300.0)}];

    _Block_release(v48);
    v38 = v45;
  }

LABEL_24:

  v49 = *MEMORY[0x277D85DE8];
  return v36 != 0;
}

void sub_247F1D284(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong evaluateNagsWithBackgroundTask_];
  }
}

id sub_247F1D33C(unint64_t a1)
{
  v2 = v1;
  v144[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = &v120 - v9;
  v10 = sub_247F23DEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v131 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v130 = &v120 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v120 - v17;
  MEMORY[0x28223BE20](v19);
  v125 = &v120 - v20;
  MEMORY[0x28223BE20](v21);
  v124 = &v120 - v22;
  MEMORY[0x28223BE20](v23);
  v127 = &v120 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v120 - v26;
  MEMORY[0x28223BE20](v28);
  v123 = &v120 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v120 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  sub_247F23DDC();
  sub_247F23D7C();
  v36 = *(v11 + 8);
  v133 = v32;
  v142 = v36;
  v143 = v11 + 8;
  v36(v32, v10);
  v139 = a1;
  if (a1 >> 62)
  {
    v38 = sub_247F2423C();
    v138 = v35;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v138 = v35;
    if (v38)
    {
LABEL_3:
      if (v38 < 1)
      {
        __break(1u);
      }

      v39 = 0;
      v134 = (v11 + 56);
      v135 = v139 & 0xC000000000000001;
      v128 = v7;
      v129 = (v11 + 48);
      v40 = 0;
      v41 = (v11 + 32);
      v126 = (v11 + 16);
      *&v37 = 138543362;
      v120 = v37;
      *&v37 = 138412546;
      v121 = v37;
      v42 = 0x278EED000;
      v132 = v18;
      v140 = v27;
      v122 = v2;
      v136 = v38;
      while (1)
      {
        v141 = v40;
        if (v135)
        {
          v47 = MEMORY[0x24C1BED10](v39, v139);
        }

        else
        {
          v47 = *(v139 + 8 * v39 + 32);
        }

        v48 = v47;
        v49 = [v2 delegate];
        if (!v49)
        {
          goto LABEL_15;
        }

        v50 = v49;
        if (([v49 respondsToSelector_] & 1) == 0)
        {
          break;
        }

        v51 = [v50 *(v42 + 2416)];
        swift_unknownObjectRelease();
        if (v51)
        {
          v52 = v128;
          sub_247F23DCC();

          v53 = 0;
          v54 = v137;
        }

        else
        {
          v53 = 1;
          v54 = v137;
          v52 = v128;
        }

        (*v134)(v52, v53, 1, v10);
        sub_247F204A4(v52, v54);
        if ((*v129)(v54, 1, v10) == 1)
        {
          goto LABEL_16;
        }

        v86 = v123;
        (*v41)(v123, v54, v10);
        v87 = sub_247F23D8C();
        [v48 setDeadline_];

        v142(v86, v10);
        v55 = 1;
LABEL_17:
        v56 = [v48 nextNag];
        if (v56)
        {
          v57 = v56;
          sub_247F23DCC();

          if ((v55 & 1) != 0 || (v58 = v133, sub_247F23DDC(), sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578]), v59 = sub_247F23EEC(), v142(v58, v10), (v59 & 1) == 0))
          {
            v144[0] = 0;
            if ([v2 nag:v48 error:v144])
            {
              v60 = v144[0];
            }

            else
            {
              v72 = v144[0];
              v73 = sub_247F23C9C();

              swift_willThrow();
              if (qword_27EE7EC00 != -1)
              {
                swift_once();
              }

              v74 = sub_247F23E1C();
              __swift_project_value_buffer(v74, qword_27EE7F098);
              v75 = v48;
              v76 = v73;
              v77 = sub_247F23DFC();
              v78 = sub_247F2409C();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                *v79 = v121;
                *(v79 + 4) = v75;
                *v80 = v75;
                *(v79 + 12) = 2114;
                v81 = v75;
                v82 = v73;
                v83 = _swift_stdlib_bridgeErrorToNSError();
                *(v79 + 14) = v83;
                v80[1] = v83;
                _os_log_impl(&dword_247F03000, v77, v78, "DMCNagScheduler failed to nag %@ with error: %{public}@", v79, 0x16u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC10, &qword_247F251F0);
                swift_arrayDestroy();
                v84 = v80;
                v2 = v122;
                MEMORY[0x24C1BF4F0](v84, -1, -1);
                v85 = v79;
                v18 = v132;
                MEMORY[0x24C1BF4F0](v85, -1, -1);
              }

              else
              {
              }

              v27 = v140;
            }

            v88 = [v48 nextNag];
            if (!v88)
            {
              if (qword_27EE7EC00 != -1)
              {
                swift_once();
              }

              v94 = sub_247F23E1C();
              __swift_project_value_buffer(v94, qword_27EE7F098);
              v95 = v48;
              v96 = sub_247F23DFC();
              v97 = sub_247F2409C();

              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                *v98 = v120;
                *(v98 + 4) = v95;
                *v99 = v95;
                v100 = v95;
                _os_log_impl(&dword_247F03000, v96, v97, "DMCNagScheduler encountered item missing nag at deadline: %{public}@", v98, 0xCu);
                sub_247F0C720(v99, &qword_27EE7EC10, &qword_247F251F0);
                v101 = v99;
                v27 = v140;
                MEMORY[0x24C1BF4F0](v101, -1, -1);
                MEMORY[0x24C1BF4F0](v98, -1, -1);
              }

              v102 = [v2 launchDeadlineActionFor_];
              v103 = v125;
              sub_247F23DCC();

              sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578]);
              v104 = v138;
              v105 = sub_247F23EEC();

              v106 = v27;
              v107 = v142;
              v142(v106, v10);
              if (v105)
              {
                v108 = v104;
              }

              else
              {
                v108 = v103;
              }

              if (v105)
              {
                v109 = v103;
              }

              else
              {
                v109 = v104;
              }

              v107(v108, v10);
              v27 = v140;
              v110 = *v41;
              v111 = v124;
              (*v41)(v124, v109, v10);
              v110(v104, v111, v10);
              v40 = 1;
              goto LABEL_6;
            }

            v89 = v127;
            v90 = v88;
            sub_247F23DCC();

            v142(v27, v10);
            (*v41)(v27, v89, v10);
          }

          sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578]);
          v91 = v27;
          v92 = v138;
          if (sub_247F23EEC())
          {
            v142(v92, v10);
            (*v126)(v18, v91, v10);
            (*v41)(v92, v18, v10);
          }

          else
          {
            v93 = *v41;
            (*v41)(v18, v92, v10);
            v93(v92, v18, v10);
          }

          if (v141)
          {
            v27 = v140;
            v142(v140, v10);

            v40 = 1;
          }

          else
          {
            v43 = [v48 deadline];
            v44 = v133;
            sub_247F23DCC();

            v27 = v140;
            LODWORD(v43) = sub_247F23EEC();

            v45 = v44;
            v46 = v142;
            v142(v45, v10);
            v46(v27, v10);
            v40 = v43 ^ 1;
          }
        }

        else
        {
          v61 = [v2 launchDeadlineActionFor_];
          v62 = v131;
          sub_247F23DCC();

          sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578]);
          v63 = v138;
          v64 = sub_247F23EEC();
          v65 = (v64 & 1) == 0;
          if (v64)
          {
            v66 = v63;
          }

          else
          {
            v66 = v62;
          }

          if (v65)
          {
            v67 = v63;
          }

          else
          {
            v67 = v62;
          }

          v142(v66, v10);
          v68 = *v41;
          v69 = v130;
          (*v41)(v130, v67, v10);
          v68(v63, v69, v10);
          if (v55)
          {
            v144[0] = 0;
            v70 = [v2 saveNagItem:v48 error:v144];
            v18 = v132;
            if (v70)
            {
              v71 = v144[0];
            }

            else
            {
              v112 = v144[0];
              v113 = sub_247F23C9C();

              swift_willThrow();
            }

            v40 = 1;
          }

          else
          {

            v40 = 1;
            v18 = v132;
          }

          v27 = v140;
        }

LABEL_6:
        ++v39;
        v42 = 0x278EED000uLL;
        if (v136 == v39)
        {
          goto LABEL_64;
        }
      }

      swift_unknownObjectRelease();
LABEL_15:
      v54 = v137;
      (*v134)(v137, 1, 1, v10);
LABEL_16:
      sub_247F0C720(v54, &qword_27EE7EC68, &unk_247F25BC0);
      v55 = 0;
      goto LABEL_17;
    }
  }

  LOBYTE(v40) = 0;
LABEL_64:
  v114 = objc_allocWithZone(DMCNextNag);
  v115 = v138;
  v116 = sub_247F23D8C();
  v117 = [v114 initWithDate:v116 nearDeadline:v40 & 1];

  v142(v115, v10);
  v118 = *MEMORY[0x277D85DE8];
  return v117;
}

uint64_t sub_247F1E138(void *a1)
{
  v2 = v1;
  v4 = sub_247F23DEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 delegate];
  if (v10)
  {
    v11 = v10;
    if ([v10 respondsToSelector_])
    {
      v12 = [v11 handleDeadlineActionForNagItem_];
      swift_unknownObjectRelease();
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v13 = sub_247F23E1C();
  __swift_project_value_buffer(v13, qword_27EE7F098);
  v14 = a1;
  v15 = sub_247F23DFC();
  v16 = sub_247F240AC();

  v17 = 0x278EED000uLL;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v47 = v9;
    v19 = v18;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v19 = 136315394;
    v20 = [v14 deadlineURLString];
    v44 = v15;
    v21 = v20;
    v22 = sub_247F23F3C();
    HIDWORD(v43) = v16;
    v23 = v5;
    v24 = v22;
    v25 = v4;
    v27 = v26;

    v28 = v24;
    v5 = v23;
    v29 = sub_247F082C8(v28, v27, &v48);
    v4 = v25;
    v17 = 0x278EED000;

    *(v19 + 4) = v29;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    v30 = v45;
    *v45 = v14;
    v31 = v14;
    v32 = v44;
    _os_log_impl(&dword_247F03000, v44, BYTE4(v43), "DMCNagScheduler launching deadline URL '%s' for nag: %@", v19, 0x16u);
    sub_247F0C720(v30, &qword_27EE7EC10, &qword_247F251F0);
    MEMORY[0x24C1BF4F0](v30, -1, -1);
    v33 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x24C1BF4F0](v33, -1, -1);
    v34 = v19;
    v9 = v47;
    MEMORY[0x24C1BF4F0](v34, -1, -1);
  }

  else
  {
  }

  v35 = [v14 *(v17 + 2152)];
  if (!v35)
  {
    sub_247F23F3C();
    v35 = sub_247F23EFC();
  }

  [v2 launchDeadlineURLString_];

LABEL_14:
  DMCSendNagDeadlineNotification();
  v36 = [a1 shortestInterval];
  v37 = [v36 integerValue];

  v38 = sub_247F1152C(v37);
  if (v39)
  {
    v40 = 6;
  }

  else
  {
    v40 = v38;
  }

  sub_247F23DDC();
  if (v40 >= 0xB)
  {
    v48 = v40;
    result = sub_247F2433C();
    __break(1u);
  }

  else
  {
    v41 = qword_247F25ED0[v40];
    sub_247F23D7C();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void *sub_247F1E64C(void *a1)
{
  v4 = sub_247F23D3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  result = sub_247F1A3B8(a1);
  if (!v2)
  {
    v13 = result;
    v14 = [v1 delegate];
    if (v14)
    {
      v15 = v14;
      if ([v14 respondsToSelector_])
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFA0, &qword_247F25EB8);
        v35 = v16;
        v36 = sub_247F203C0(&qword_27EE7EFA8, &qword_27EE7EF70);
        v37 = sub_247F203C0(&qword_27EE7EFB0, &qword_27EE7EFB8);
        v34[0] = v13;
        v17 = sub_247F23C7C();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();

        sub_247F23C6C();
        sub_247F23C4C();
        __swift_project_boxed_opaque_existential_1(v34, v16);
        v30 = sub_247F23C5C();
        v32 = v31;

        __swift_destroy_boxed_opaque_existential_0(v34);
        v33 = sub_247F23D5C();
        [v15 &selRef:a1 setUserInfo:v33];

        sub_247F1FD14(v30, v32);

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v20 = [a1 iOSFilesystemURL];
    if (v20)
    {
      v21 = v20;
      sub_247F23CFC();

      (*(v5 + 32))(v11, v8, v4);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFA0, &qword_247F25EB8);
      v35 = v22;
      v36 = sub_247F203C0(&qword_27EE7EFA8, &qword_27EE7EF70);
      v37 = sub_247F203C0(&qword_27EE7EFB0, &qword_27EE7EFB8);
      v34[0] = v13;
      v23 = sub_247F23C7C();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      sub_247F23C6C();
      sub_247F23C4C();
      __swift_project_boxed_opaque_existential_1(v34, v22);
      v27 = sub_247F23C5C();
      v29 = v28;

      sub_247F0C864();
      sub_247F23D6C();
      (*(v5 + 8))(v11, v4);
      sub_247F1FD14(v27, v29);
      return __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
      sub_247F115A4();
      swift_allocError();
      *v26 = 3;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_247F1EB30(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

void sub_247F1EBD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29[-v11];
  v13 = sub_247F23D3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v29[-v18];
  v20 = [v4 delegate];
  if (v20)
  {
    v21 = v20;
    if ([v20 respondsToSelector_])
    {
      v22 = sub_247F23EFC();
      v30 = sub_247F23EFC();
      [v21 deleteNagItemWithID:v22 clientID:v30];
      swift_unknownObjectRelease();

      v23 = v30;

      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for DMCNagItem(0);
  sub_247F16464(a1, a2, a3, a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_247F0C720(v12, &qword_27EE7ED30, &qword_247F25660);
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v24 = sub_247F23E1C();
    __swift_project_value_buffer(v24, qword_27EE7F098);

    v25 = sub_247F23DFC();
    v26 = sub_247F2409C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_247F082C8(a3, a4, &v31);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_247F082C8(a1, a2, &v31);
      _os_log_impl(&dword_247F03000, v25, v26, "DMCNagScheduler failed to delete nag item at invalid URL for nag: %s/%s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BF4F0](v28, -1, -1);
      MEMORY[0x24C1BF4F0](v27, -1, -1);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    sub_247F0CA18(v19);
    (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_247F1F234(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_247F23F3C();
  v9 = v8;
  v10 = sub_247F23F3C();
  v12 = v11;
  v13 = a1;
  a5(v7, v9, v10, v12);
}

uint64_t DMCNextNag.date.getter()
{
  v1 = *(v0 + OBJC_IVAR___DMCNextNag_date);
  v2 = *(v0 + OBJC_IVAR___DMCNextNag_date + 8);

  return v1;
}

id DMCNextNag.init(date:nearDeadline:)(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_247F23D8C();
  v6 = [v4 initWithDate:v5 nearDeadline:a2 & 1];

  v7 = sub_247F23DEC();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_247F23EFC();
  [v6 setDateFormat_];

  v8 = sub_247F23D8C();
  v9 = [v6 stringFromDate_];

  v10 = sub_247F23F3C();
  v12 = v11;

  v13 = &v3[OBJC_IVAR___DMCNextNag_date];
  *v13 = v10;
  v13[1] = v12;
  v3[OBJC_IVAR___DMCNextNag_nearDeadline] = a2;
  v17.receiver = v3;
  v17.super_class = DMCNextNag;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_247F23DEC();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

uint64_t (*sub_247F1F7A0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1BED10](a2, a3);
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
    *v3 = v5;
    return sub_247F1F820;
  }

  __break(1u);
  return result;
}

uint64_t sub_247F1F828(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_247F2423C();
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
      result = sub_247F2423C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_247F20594();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFC8, &qword_247F25EC8);
            v9 = sub_247F1F7A0(v13, i, a3);
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
        type metadata accessor for DMCCodableNagItem();
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

void sub_247F1F9A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v9 = sub_247F23EFC();
  v10 = sub_247F23EFC();
  v26[0] = 0;
  LODWORD(v8) = [v8 clearWithID:v9 clientID:v10 error:v26];

  v11 = v26[0];
  if (v8)
  {
    v12 = *MEMORY[0x277D85DE8];

    v13 = v11;
  }

  else
  {
    v14 = v26[0];
    v15 = sub_247F23C9C();

    swift_willThrow();
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v16 = sub_247F23E1C();
    __swift_project_value_buffer(v16, qword_27EE7F098);

    v17 = v15;
    v18 = sub_247F23DFC();
    v19 = sub_247F2409C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v20 = 136315650;
      *(v20 + 4) = sub_247F082C8(a3, a4, v26);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_247F082C8(a1, a2, v26);
      *(v20 + 22) = 2112;
      v23 = v15;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v24;
      *v21 = v24;
      _os_log_impl(&dword_247F03000, v18, v19, "DMCNagScheduler failed to clear follow up for nag: %s/%s with error: %@", v20, 0x20u);
      sub_247F0C720(v21, &qword_27EE7EC10, &qword_247F251F0);
      MEMORY[0x24C1BF4F0](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1BF4F0](v22, -1, -1);
      MEMORY[0x24C1BF4F0](v20, -1, -1);
    }

    else
    {
    }

    v25 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_247F1FCC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247F1FD14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_247F1FD74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_247F1FDEC(uint64_t a1, unint64_t a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44[-v6];
  v8 = sub_247F23D3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_247F23D1C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_247F0C720(v7, &qword_27EE7ED30, &qword_247F25660);
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v13 = sub_247F23E1C();
    __swift_project_value_buffer(v13, qword_27EE7F098);

    v14 = sub_247F23DFC();
    v15 = sub_247F2409C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_247F082C8(a1, a2, v45);
      _os_log_impl(&dword_247F03000, v14, v15, "DMCNagScheduler failed to convert deadline URL string to URL: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1BF4F0](v17, -1, -1);
      MEMORY[0x24C1BF4F0](v16, -1, -1);
    }

LABEL_16:
    v43 = *MEMORY[0x277D85DE8];
    return;
  }

  (*(v9 + 32))(v12, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE50, &qword_247F25B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247F25E90;
  v19 = *MEMORY[0x277D0AC70];
  *(inited + 32) = sub_247F23F3C();
  v20 = MEMORY[0x277D839B0];
  *(inited + 40) = v21;
  *(inited + 72) = v20;
  *(inited + 48) = 1;
  v22 = *MEMORY[0x277D0AC58];
  *(inited + 80) = sub_247F23F3C();
  *(inited + 88) = v23;
  *(inited + 120) = v20;
  *(inited + 96) = 1;
  v24 = *MEMORY[0x277D0AC28];
  *(inited + 128) = sub_247F23F3C();
  *(inited + 136) = v25;
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = 0xD000000000000030;
  *(inited + 152) = 0x8000000247F27C40;
  sub_247F19F58(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE68, &unk_247F25BA0);
  swift_arrayDestroy();
  v26 = [objc_opt_self() defaultWorkspace];
  if (v26)
  {
    v27 = v26;
    v28 = sub_247F23CDC();
    v29 = sub_247F23E9C();

    v45[0] = 0;
    v30 = [v27 openSensitiveURL:v28 withOptions:v29 error:v45];

    if (v30)
    {
      v31 = *(v9 + 8);
      v32 = v45[0];
      v31(v12, v8);
    }

    else
    {
      v33 = v45[0];
      v34 = sub_247F23C9C();

      swift_willThrow();
      if (qword_27EE7EC00 != -1)
      {
        swift_once();
      }

      v35 = sub_247F23E1C();
      __swift_project_value_buffer(v35, qword_27EE7F098);
      v36 = v34;
      v37 = sub_247F23DFC();
      v38 = sub_247F2409C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v34;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_247F03000, v37, v38, "DMCNagScheduler failed to launch URL with error: %@", v39, 0xCu);
        sub_247F0C720(v40, &qword_27EE7EC10, &qword_247F251F0);
        MEMORY[0x24C1BF4F0](v40, -1, -1);
        MEMORY[0x24C1BF4F0](v39, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
    }

    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_247F203C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE7EFA0, &qword_247F25EB8);
    sub_247F2045C(a2, type metadata accessor for DMCCodableNagItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247F2045C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247F204A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247F20514()
{
  MEMORY[0x24C1BF540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_247F20594()
{
  result = qword_27EE7EFD0;
  if (!qword_27EE7EFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE7EFC8, &qword_247F25EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EFD0);
  }

  return result;
}

uint64_t sub_247F20600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F090, &unk_247F25F40);
    v2 = sub_247F2426C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_247F08AD8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_247F0C710(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_247F0C710(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_247F0C710(v32, v33);
    v17 = *(v2 + 40);
    result = sub_247F2419C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_247F0C710(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_247F20940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_247F23F3C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

uint64_t sub_247F20B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t DMCSystemAlert.description.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_247F241EC();
  v3 = [v0 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_247F23F3C();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x24C1BEAC0](v5, v2);

  MEMORY[0x24C1BEAC0](2108704, 0xE300000000000000);
  v7 = [v1 message];
  if (v7)
  {
    v8 = v7;
    v9 = sub_247F23F3C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v9, v11);

  MEMORY[0x24C1BEAC0](23328, 0xE200000000000000);
  v12 = [v1 defaultButtonText];
  if (v12)
  {
    v13 = v12;
    v14 = sub_247F23F3C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v14, v16);

  MEMORY[0x24C1BEAC0](5972061, 0xE300000000000000);
  v17 = [v1 alternateButtonText];
  if (v17)
  {
    v18 = v17;
    v19 = sub_247F23F3C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v19, v21);

  MEMORY[0x24C1BEAC0](5972061, 0xE300000000000000);
  v22 = [v1 otherButtonText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_247F23F3C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v24, v26);

  MEMORY[0x24C1BEAC0](93, 0xE100000000000000);
  return 0;
}

uint64_t DMCSystemAlert.notificationParametersOutFlags(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_247F19F58(MEMORY[0x277D84F90]);
  v4 = DMCSBUserNotificationDontDismissOnUnlock();
  v5 = MEMORY[0x277D839B0];
  if (v4)
  {
    v6 = v4;
    v7 = sub_247F23F3C();
    v9 = v8;

    v79 = v5;
    LOBYTE(v78) = 1;
    sub_247F0C710(&v78, v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247F0BB40(v77, v7, v9, isUniquelyReferenced_nonNull_native);
  }

  v11 = [v2 title];
  v12 = MEMORY[0x277D837D0];
  if (v11)
  {
    v13 = v11;
    v14 = sub_247F23F3C();
    v16 = v15;

    result = *MEMORY[0x277CBF188];
    if (!*MEMORY[0x277CBF188])
    {
      __break(1u);
      goto LABEL_32;
    }

    v18 = sub_247F23F3C();
    v20 = v19;
    v79 = v12;
    *&v78 = v14;
    *(&v78 + 1) = v16;
    sub_247F0C710(&v78, v77);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_247F0BB40(v77, v18, v20, v21);
  }

  v22 = [v2 message];
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  v24 = sub_247F23F3C();
  v26 = v25;

  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = sub_247F23F3C();
  v29 = v28;
  v79 = v12;
  *&v78 = v24;
  *(&v78 + 1) = v26;
  sub_247F0C710(&v78, v77);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v27, v29, v30);

LABEL_9:
  v31 = [v2 defaultButtonText];
  if (!v31)
  {
    goto LABEL_12;
  }

  v32 = v31;
  v33 = sub_247F23F3C();
  v35 = v34;

  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = sub_247F23F3C();
  v38 = v37;
  v79 = v12;
  *&v78 = v33;
  *(&v78 + 1) = v35;
  sub_247F0C710(&v78, v77);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v36, v38, v39);

LABEL_12:
  v40 = [v2 alternateButtonText];
  if (!v40)
  {
    goto LABEL_15;
  }

  v41 = v40;
  v42 = sub_247F23F3C();
  v44 = v43;

  result = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v45 = sub_247F23F3C();
  v47 = v46;
  v79 = v12;
  *&v78 = v42;
  *(&v78 + 1) = v44;
  sub_247F0C710(&v78, v77);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v45, v47, v48);

LABEL_15:
  v49 = [v2 otherButtonText];
  if (!v49)
  {
    goto LABEL_18;
  }

  v50 = v49;
  v51 = sub_247F23F3C();
  v53 = v52;

  result = *MEMORY[0x277CBF218];
  if (!*MEMORY[0x277CBF218])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v54 = sub_247F23F3C();
  v56 = v55;
  v79 = v12;
  *&v78 = v51;
  *(&v78 + 1) = v53;
  sub_247F0C710(&v78, v77);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v54, v56, v57);

LABEL_18:
  v58 = [v2 destructive];
  v59 = MEMORY[0x277D839B0];
  if (v58)
  {
    v79 = MEMORY[0x277D83B88];
    *&v78 = 1;
    sub_247F0C710(&v78, v77);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_247F0BB40(v77, 0xD000000000000032, 0x8000000247F27C80, v60);
  }

  if (![v2 displayOnLockScreen])
  {
    goto LABEL_23;
  }

  result = *MEMORY[0x277CBF1B0];
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v61 = sub_247F23F3C();
  v63 = v62;
  v79 = v59;
  LOBYTE(v78) = 1;
  sub_247F0C710(&v78, v77);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v61, v63, v64);

LABEL_23:
  if ([v2 dismissOnLock])
  {
    v65 = DMCSBUserNotificationDismissOnLock();
    if (v65)
    {
      v66 = v65;
      v67 = sub_247F23F3C();
      v69 = v68;

      v79 = v59;
      LOBYTE(v78) = 1;
      sub_247F0C710(&v78, v77);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      sub_247F0BB40(v77, v67, v69, v70);
    }
  }

  *v76 = 0;
  v71 = [v2 defaultButtonText];
  if (v71)
  {

    v72 = [v2 alternateButtonText];
    if (v72)
    {

      v73 = [v2 otherButtonText];
      if (v73)
      {

        *v76 |= 0x20uLL;
      }
    }
  }

  v74 = sub_247F20600(v3);

  return v74;
}

id DMCSystemAlert.init()()
{
  v1 = (v0 + OBJC_IVAR___DMCSystemAlert_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___DMCSystemAlert_message);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___DMCSystemAlert_defaultButtonText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___DMCSystemAlert_alternateButtonText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___DMCSystemAlert_otherButtonText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_destructive) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_displayOnLockScreen) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_dismissOnLock) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_dismissAfterTimeInterval) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_notification) = 0;
  v6 = (v0 + OBJC_IVAR___DMCSystemAlert_completionBlock);
  *v6 = 0;
  v6[1] = 0;
  v8.super_class = DMCSystemAlert;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_247F216DC()
{
  v10 = sub_247F240DC();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247F240BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_247F23E5C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_247F08408(0, &qword_27EE7F070, 0x277D85C78);
  sub_247F23E4C();
  v11 = MEMORY[0x277D84F90];
  sub_247F238B8(&qword_27EE7F078, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F080, &qword_247F25F38);
  sub_247F23900(&qword_27EE7F088, &qword_27EE7F080, &qword_247F25F38);
  sub_247F2416C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_247F2410C();
  qword_27EE7EFE0 = result;
  return result;
}

uint64_t static DMCSystemAlertManager.display(_:)(void *a1)
{
  v3 = sub_247F23E2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247F23E5C();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE7EBF0 != -1)
  {
    swift_once();
  }

  v16[1] = qword_27EE7EFE0;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_247F22484;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247F23968;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  sub_247F23E4C();
  v18 = MEMORY[0x277D84F90];
  sub_247F238B8(&qword_27EE7F048, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F050, &qword_247F25F30);
  sub_247F23900(&qword_27EE7F058, &qword_27EE7F050, &qword_247F25F30);
  sub_247F2416C();
  MEMORY[0x24C1BEC10](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_247F21C3C(uint64_t a1, void *a2)
{
  if (qword_27EE7EBF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = a2;
  MEMORY[0x24C1BEB30]();
  if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_247F2404C();
  }

  sub_247F2406C();
  swift_endAccess();
  sub_247F226A0();
}

uint64_t sub_247F21D10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_247F21DAC(void *a1, __CFUserNotification *a2)
{
  if (qword_27EE7EC08 != -1)
  {
    swift_once();
  }

  v4 = sub_247F23E1C();
  __swift_project_value_buffer(v4, qword_27EE7F0B0);
  v5 = a1;
  v6 = sub_247F23DFC();
  v7 = sub_247F240AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_247F03000, v6, v7, "DMCSystemAlertManager auto-dismissing alert: %@", v8, 0xCu);
    sub_247F08114(v9);
    MEMORY[0x24C1BF4F0](v9, -1, -1);
    MEMORY[0x24C1BF4F0](v8, -1, -1);
  }

  return CFUserNotificationCancel(a2);
}

void sub_247F21F68(uint64_t a1)
{
  v27 = a1;
  v1 = sub_247F23E2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247F23E5C();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247F23E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_27EE7EFD8;
  qword_27EE7EFD8 = 0;
  if (v17)
  {
    v13 = [v17 completionBlock];
    if (v13)
    {
      v18 = v13;
      v19 = swift_allocObject();
      v26 = v2;
      v20 = v19;
      *(v19 + 16) = v18;
      sub_247F08408(0, &qword_27EE7F070, 0x277D85C78);
      (*(v11 + 104))(v16, *MEMORY[0x277D851C8], v10);
      v25 = sub_247F2411C();
      (*(v11 + 8))(v16, v10);
      v21 = swift_allocObject();
      v21[2] = sub_247F08E80;
      v21[3] = v20;
      v21[4] = v27;
      aBlock[4] = sub_247F23888;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_247F23968;
      aBlock[3] = &block_descriptor_35;
      v22 = _Block_copy(aBlock);

      sub_247F23E4C();
      v29 = MEMORY[0x277D84F90];
      sub_247F238B8(&qword_27EE7F048, MEMORY[0x277D85198]);
      v27 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F050, &qword_247F25F30);
      sub_247F23900(&qword_27EE7F058, &qword_27EE7F050, &qword_247F25F30);
      sub_247F2416C();
      v23 = v25;
      MEMORY[0x24C1BEC10](0, v9, v5, v22);
      _Block_release(v22);

      (*(v26 + 8))(v5, v1);
      (*(v28 + 8))(v9, v27);
    }
  }

  sub_247F226A0(v13, v14);
}

uint64_t sub_247F223AC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_247F2423C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_247F2420C();
  *v1 = result;
  return result;
}

uint64_t sub_247F2244C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247F224CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DMCSystemAlert(a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_247F2423C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_247F2423C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_247F225C8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_247F2423C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_247F2423C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_247F223AC(result);

  return sub_247F224CC(v4, v2, 0);
}

void sub_247F226A0()
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v0 = sub_247F23E2C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247F23E5C();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247F23E7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  if (qword_27EE7EFD8)
  {
    goto LABEL_2;
  }

  v87 = v14;
  v88 = v15;
  if (qword_27EE7EBF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = off_27EE7EFE8;
  if (!(off_27EE7EFE8 >> 62))
  {
    if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_2:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!sub_247F2423C())
  {
    goto LABEL_2;
  }

LABEL_7:
  v85 = v1;
  v86 = v0;
  v83 = v4;
  v84 = v5;
  v82 = v6;
  if ((v19 & 0xC000000000000001) != 0)
  {

    v47 = MEMORY[0x24C1BED10](0, v19);

    v20 = v47;
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v20 = *(v19 + 32);
  }

  v92 = 0;
  v89 = v20;
  v21 = [v20 notificationParametersOutFlags_];
  sub_247F23EAC();

  error = 0;
  v22 = *MEMORY[0x277CBECE8];
  v23 = v92;
  v24 = sub_247F23E9C();
  v25 = CFUserNotificationCreate(v22, 0.0, v23, &error, v24);

  if (!v25)
  {

    if (qword_27EE7EC08 != -1)
    {
      swift_once();
    }

    v31 = sub_247F23E1C();
    __swift_project_value_buffer(v31, qword_27EE7F0B0);
    v32 = v89;
    v33 = sub_247F23DFC();
    v34 = sub_247F2409C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412546;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 1024;
      swift_beginAccess();
      *(v35 + 14) = error;
      v37 = v32;
      _os_log_impl(&dword_247F03000, v33, v34, "DMCSystemAlertManager failed to create alert (%@) with error: %d", v35, 0x12u);
      sub_247F08114(v36);
      MEMORY[0x24C1BF4F0](v36, -1, -1);
      MEMORY[0x24C1BF4F0](v35, -1, -1);
      v32 = v33;
      v33 = v37;
    }

    goto LABEL_2;
  }

  v5 = v25;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v5, sub_247F21DA4, 0);
  if (!RunLoopSource)
  {

    v28 = v89;
    if (qword_27EE7EC08 == -1)
    {
LABEL_26:
      v38 = sub_247F23E1C();
      __swift_project_value_buffer(v38, qword_27EE7F0B0);
      v39 = v28;
      v40 = sub_247F23DFC();
      v41 = sub_247F2409C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v5;
        v44 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v44 = v39;
        v45 = v39;
        _os_log_impl(&dword_247F03000, v40, v41, "DMCSystemAlertManager failed to create run loop source for alert: %@", v42, 0xCu);
        sub_247F08114(v44);
        v46 = v44;
        v5 = v43;
        MEMORY[0x24C1BF4F0](v46, -1, -1);
        MEMORY[0x24C1BF4F0](v42, -1, -1);
        v39 = v40;
        v40 = v45;
      }

      goto LABEL_2;
    }

LABEL_57:
    swift_once();
    goto LABEL_26;
  }

  v1 = RunLoopSource;
  if (!(off_27EE7EFE8 >> 62))
  {
    if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_34:
    v48 = v1;

    if (qword_27EE7EC08 != -1)
    {
      swift_once();
    }

    v49 = sub_247F23E1C();
    __swift_project_value_buffer(v49, qword_27EE7F0B0);
    v50 = sub_247F23DFC();
    v51 = sub_247F2409C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_247F03000, v50, v51, "DMCSystemAlertManager alert queue is unexpectedly empty", v52, 2u);
      MEMORY[0x24C1BF4F0](v52, -1, -1);
    }

    v1 = v48;
    goto LABEL_47;
  }

LABEL_33:
  if (!sub_247F2423C())
  {
    goto LABEL_34;
  }

LABEL_14:
  swift_beginAccess();
  v27 = off_27EE7EFE8;
  v28 = (off_27EE7EFE8 >> 62);
  if (!(off_27EE7EFE8 >> 62))
  {
    if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

  if (sub_247F2423C())
  {
    if (sub_247F2423C())
    {
LABEL_16:
      if ((v27 & 0xC000000000000001) == 0)
      {
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v27 + 32);
          if (!v28)
          {
LABEL_19:
            v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
            if (!v30)
            {
              __break(1u);
            }

            sub_247F225C8(0, 1);
            swift_endAccess();

LABEL_47:
            v53 = qword_27EE7EFD8;
            qword_27EE7EFD8 = v89;
            v54 = v89;

            [v54 setNotification_];
            v55 = CFRunLoopGetMain();
            v56 = *MEMORY[0x277CBF048];
            v81 = v1;
            CFRunLoopAddSource(v55, v1, v56);

            if (qword_27EE7EC08 != -1)
            {
              swift_once();
            }

            v57 = sub_247F23E1C();
            __swift_project_value_buffer(v57, qword_27EE7F0B0);
            v58 = v54;
            v59 = sub_247F23DFC();
            v60 = sub_247F240AC();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v61 = 138412290;
              *(v61 + 4) = v58;
              *v62 = v89;
              v63 = v58;
              _os_log_impl(&dword_247F03000, v59, v60, "DMCSystemAlertManager displaying alert: %@", v61, 0xCu);
              sub_247F08114(v62);
              MEMORY[0x24C1BF4F0](v62, -1, -1);
              MEMORY[0x24C1BF4F0](v61, -1, -1);
            }

            [v58 dismissAfterTimeInterval];
            if (v64 <= 0.0)
            {
            }

            else
            {
              v65 = v58;
              v66 = sub_247F23DFC();
              v67 = sub_247F240AC();

              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                v69 = swift_slowAlloc();
                *v68 = 138412546;
                *(v68 + 4) = v65;
                *v69 = v89;
                *(v68 + 12) = 2048;
                [v65 dismissAfterTimeInterval];
                *(v68 + 14) = v70;
                _os_log_impl(&dword_247F03000, v66, v67, "DMCSystemAlertManager auto-dismissing alert (%@) in %f seconds", v68, 0x16u);
                sub_247F08114(v69);
                MEMORY[0x24C1BF4F0](v69, -1, -1);
                MEMORY[0x24C1BF4F0](v68, -1, -1);
              }

              sub_247F08408(0, &qword_27EE7F070, 0x277D85C78);
              v80 = sub_247F240EC();
              sub_247F23E6C();
              [v65 dismissAfterTimeInterval];
              sub_247F23E8C();
              v71 = *(v88 + 8);
              v88 += 8;
              v89 = v71;
              (v71)(v12, v87);
              v72 = swift_allocObject();
              *(v72 + 16) = v65;
              *(v72 + 24) = v5;
              aBlock[4] = sub_247F23370;
              aBlock[5] = v72;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_247F23968;
              aBlock[3] = &block_descriptor_16;
              v73 = _Block_copy(aBlock);
              v74 = v5;
              v75 = v65;

              v76 = v90;
              sub_247F23E4C();
              aBlock[0] = MEMORY[0x277D84F90];
              sub_247F238B8(&qword_27EE7F048, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F050, &qword_247F25F30);
              sub_247F23900(&qword_27EE7F058, &qword_27EE7F050, &qword_247F25F30);
              v77 = v83;
              v78 = v86;
              sub_247F2416C();
              v79 = v80;
              MEMORY[0x24C1BEBE0](v17, v76, v77, v73);
              _Block_release(v73);

              (v85[1])(v77, v78);
              (*(v82 + 8))(v76, v84);
              (v89)(v17, v87);
            }

            goto LABEL_2;
          }

LABEL_44:
          v30 = sub_247F2423C();
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_43:
      v29 = MEMORY[0x24C1BED10](0, v27);
      if (!v28)
      {
        goto LABEL_19;
      }

      goto LABEL_44;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_247F23330()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247F23378(unint64_t result)
{
  if (result >= 4)
  {
    v1 = result;
    if (qword_27EE7EC08 != -1)
    {
      swift_once();
    }

    v2 = sub_247F23E1C();
    __swift_project_value_buffer(v2, qword_27EE7F0B0);
    v3 = sub_247F23DFC();
    v4 = sub_247F2409C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_247F03000, v3, v4, "DMCSystemAlertManager encountered unknown response flags: %lu", v5, 0xCu);
      MEMORY[0x24C1BF4F0](v5, -1, -1);
    }

    return 4;
  }

  return result;
}

uint64_t sub_247F23470(unint64_t a1)
{
  v1 = sub_247F23378(a1);
  if (qword_27EE7EC08 != -1)
  {
    swift_once();
  }

  v2 = sub_247F23E1C();
  __swift_project_value_buffer(v2, qword_27EE7F0B0);
  v3 = sub_247F23DFC();
  v4 = sub_247F2409C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    if (v1 <= 1)
    {
      if (!v1)
      {
        v7 = 0x8000000247F27F60;
        v8 = 0xD000000000000011;
        goto LABEL_16;
      }

      if (v1 == 1)
      {
        v7 = 0x8000000247F27F40;
        v8 = 0xD000000000000015;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v1)
      {
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000247F27F20;
          goto LABEL_16;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x6C65636E6163;
          goto LABEL_16;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
LABEL_16:
          v9 = sub_247F082C8(v8, v7, v15);

          *(v5 + 4) = v9;
          _os_log_impl(&dword_247F03000, v3, v4, "DMCSystemAlertManager dismissed alert with response: %s", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v6);
          MEMORY[0x24C1BF4F0](v6, -1, -1);
          MEMORY[0x24C1BF4F0](v5, -1, -1);
          goto LABEL_17;
      }
    }

    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

LABEL_17:

  if (qword_27EE7EBF0 != -1)
  {
    swift_once();
  }

  v10 = qword_27EE7EFE0;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_247F237D8;
  *(v12 + 24) = v11;
  v15[4] = sub_247F237F0;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_247F22380;
  v15[3] = &block_descriptor_25;
  v13 = _Block_copy(v15);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247F237F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247F23818()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247F23850()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247F238B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247F23900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247F23A04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_247F23E1C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_247F23E0C();
}

uint64_t sub_247F23AA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_247F23E1C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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