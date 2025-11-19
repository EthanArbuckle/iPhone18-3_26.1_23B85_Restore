id sub_19765B554(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = sub_19774EF20();
  v7 = [a4 shouldExecuteActionOnApplicationWithBundleIdentifier:v6 allowSuspended:a3 & 1];

  return v7;
}

uint64_t sub_19765B664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19765B7CC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_19774EF50();

  return v4;
}

uint64_t sub_19765B82C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_19768F2A8() & 1;
}

uint64_t sub_19765B850()
{
  sub_19774EF50();
  sub_19774EFF0();
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

unint64_t sub_19765BC24()
{
  result = qword_1EAF3F668;
  if (!qword_1EAF3F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3F668);
  }

  return result;
}

uint64_t sub_19765BD08(uint64_t a1, id *a2)
{
  v3 = sub_19774EF40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19765BD88(uint64_t a1, id *a2)
{
  result = sub_19774EF30();
  *a2 = 0;
  return result;
}

uint64_t sub_19765BE00()
{
  sub_19774EF50();
  v0 = sub_19774EF20();

  return v0;
}

uint64_t sub_19765BE38()
{
  v0 = sub_19774EF50();
  v1 = MEMORY[0x19A8E4CA0](v0);

  return v1;
}

void sub_19765BE84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_19765BEFC()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

void static LSApplicationRecord.dynamicOptionsWithAppsImplementing(framework:matching:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19775A750;
  v10 = sub_19765C210(a1, a2, a3, a4);
  if (v4)
  {
    *(v9 + 16) = 0;
  }

  else
  {
    v11 = v10;
    v20 = v9;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = MEMORY[0x1E69E7CC0];
    v12 = sub_197652138(v10);
    v13 = 0;
    while (1)
    {
      if (v12 == v13)
      {

        v18 = objc_allocWithZone(LNDynamicOptionsSection);
        *(v20 + 32) = sub_19765D1C8(v21, 0);
        v19 = objc_allocWithZone(LNDynamicOptionsResult);
        sub_19765D24C(v20, 0, 0);
        return;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8E5210](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = sub_19765C2D8();

      ++v13;
      if (v17)
      {
        MEMORY[0x19A8E4D30]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19774F140();
        }

        sub_19774F170();
        v21 = v22;
        v13 = v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_19765C210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = a1;
  v9[3] = &v10;
  v9[4] = a2;
  v9[5] = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  sub_19765C814(a4, sub_19765D5C0, v9, sub_19765D5E0, v7);

  return v10;
}

char *sub_19765C2D8()
{
  v2 = v0;
  v3 = sub_19774EA20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19774EF10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = sub_19765D460(v2);
  if (!v17)
  {
    return 0;
  }

  v27 = v4;
  v29 = v3;
  v28[3] = MEMORY[0x1E69E6158];
  v28[0] = v16;
  v28[1] = v17;
  v26 = [objc_opt_self() applicationValueType];
  sub_19774EF00();
  sub_19774EEF0();
  v18 = [v2 localizedName];
  sub_19774EF50();

  sub_19774EEE0();

  sub_19774EEF0();
  (*(v9 + 32))(v13, v15, v8);
  sub_19774EA10();
  v19 = v7;
  v20 = sub_19765D070();
  if (v1)
  {
    (*(v27 + 8))(v7, v29);

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v21 = v20;
    sub_197648238(0, &qword_1EAF3F710, 0x1E69AC7A8);
    (*(v27 + 8))(v7, v29);
    v22 = sub_19765D160(v21, 0, 0);
    v23 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    v24 = sub_19767726C(v28, v26, v22);
    v19 = [objc_allocWithZone(LNDynamicOption) initWithValue:v24 indentationLevel:0];
  }

  return v19;
}

id sub_19765C608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_19774EAD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23[-v15];
  if (a3)
  {
    sub_19774EA90();
    (*(v9 + 32))(v16, v12, v8);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, 1, v8);
  if (a4)
  {
    v18 = sub_19774EF50();
    a4 = v19;
  }

  else
  {
    v18 = 0;
  }

  swift_getObjCClassMetadata();
  static LSApplicationRecord.dynamicOptionsWithAppsImplementing(framework:matching:options:)(v16, v18, a4, a5);
  v21 = v20;
  sub_19765D558(v16);

  return v21;
}

void sub_19765C814(uint64_t a1, void (*a2)(id, void *), uint64_t a3, void *a4, uint64_t a5)
{
  v8 = [objc_opt_self() enumeratorWithOptions_];
  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19765C988;
    aBlock[3] = &block_descriptor;
    a4 = _Block_copy(aBlock);
  }

  [v8 setFilter_];
  _Block_release(a4);
  LOBYTE(aBlock[0]) = 0;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 nextObject];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    a2(v10, aBlock);

    LODWORD(v11) = LOBYTE(aBlock[0]);
    objc_autoreleasePoolPop(v9);
    if (v11 == 1)
    {
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_8:
}

uint64_t sub_19765C988(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_19765C9E0(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v54 = a2;
  v60[6] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v49 - v12;
  v14 = sub_19774EAD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v49 - v20;
  sub_19765D63C(a3, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_19765D558(v13);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A750;
    *(inited + 32) = a1;
    v44 = a1;
    result = sub_19765D308(inited);
    if (a6)
    {
      result = sub_19765D460(v44);
      if (v45)
      {
        if (result == v55 && v45 == a6)
        {
        }

        else
        {
          v47 = sub_19774F7E0();

          if ((v47 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        *v54 = 1;
      }
    }

    goto LABEL_25;
  }

  (*(v15 + 32))(v21, v13, v14);
  v60[0] = 0;
  v22 = [a1 ln:v60 linkedFrameworksWithError:?];
  v23 = v60[0];
  if (!v22)
  {
    v39 = v60[0];
    sub_19774E9F0();

    swift_willThrow();
    result = (*(v15 + 8))(v21, v14);
    goto LABEL_25;
  }

  v24 = v22;
  v51 = v21;
  v52 = a1;
  v53 = v15;
  v59 = v14;
  v25 = sub_19774F120();
  v26 = v23;

  v60[0] = MEMORY[0x1E69E7CC0];
  v27 = *(v25 + 16);
  if (v27)
  {
    v49[1] = a4;
    v50 = a6;
    v28 = sub_19774ECD0();
    v57 = *(v53 + 16);
    v58 = v28;
    v29 = *(v53 + 80);
    v49[0] = v25;
    v30 = v25 + ((v29 + 32) & ~v29);
    v31 = *(v53 + 72);
    v32 = (v53 + 8);
    v56 = MEMORY[0x1E69E7CC0];
    v33 = v59;
    do
    {
      v57(v19, v30, v33);
      v34 = sub_19774ECA0();
      v35 = (*v32)(v19, v33);
      if (v34)
      {
        MEMORY[0x19A8E4D30](v35);
        if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19774F140();
        }

        sub_19774F170();
        v56 = v60[0];
      }

      v30 += v31;
      --v27;
      v33 = v59;
    }

    while (v27);

    v37 = v56;
    a6 = v50;
    v38 = v53;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
    v38 = v53;
  }

  MEMORY[0x1EEE9AC00](v36);
  v41 = v51;
  v49[-2] = v51;
  v42 = sub_197689DCC(sub_19765D6AC, &v49[-4], v37);

  result = (*(v38 + 8))(v41, v59);
  a1 = v52;
  if (v42)
  {
    goto LABEL_15;
  }

LABEL_25:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19765CE78(uint64_t *a1)
{
  v2 = sub_19774EAD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_19774ECC0();
  LOBYTE(v7) = sub_19774EA70();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

BOOL sub_19765CF68(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = sub_19765D460(a1);
  if (!v7)
  {
LABEL_8:
    v10 = [a1 localizedName];
    sub_19774EF50();

    sub_19765D5E8();
    v11 = sub_19774F450();

    return v11 == 0;
  }

  if (v6 == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_19774F7E0();

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

uint64_t sub_19765D070()
{
  sub_19774EA00();
  sub_197648238(0, &qword_1EAF3F718, 0x1E696B100);
  if (swift_dynamicCast())
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

    return v0;
  }

  else
  {
    result = sub_19774F710();
    __break(1u);
  }

  return result;
}

id sub_19765D160(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:a1 subtitle:a2 image:a3];

  return v6;
}

id sub_19765D1C8(uint64_t a1, void *a2)
{
  sub_197648238(0, &qword_1EAF3F708, off_1E74AF430);
  v4 = sub_19774F110();

  v5 = [v2 initWithOptions:v4 title:a2];

  return v5;
}

id sub_19765D24C(uint64_t a1, char a2, void *a3)
{
  sub_197648238(0, &qword_1EAF3F700, off_1E74AF448);
  v6 = sub_19774F110();

  v7 = sub_19774F110();

  v8 = [v3 initWithSections:v6 usesIndexedCollation:a2 & 1 promptLabel:a3 dependentParameterIdentifiers:v7];

  return v8;
}

uint64_t sub_19765D308(unint64_t a1)
{
  v3 = sub_197652138(a1);
  v4 = sub_197652138(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_19765D3B4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_19765D6CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_19765D3B4(uint64_t a1)
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
    sub_19774F500();
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
  result = sub_19774F5F0();
  *v1 = result;
  return result;
}

uint64_t sub_19765D460(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_19774EF50();

  return v3;
}

void (*sub_19765D4C4(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_19765D454(a3);
  sub_19765BEF0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x19A8E5210](a2, a3);
  }

  *a1 = v7;
  return sub_19765D550;
}

uint64_t sub_19765D558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19765D5E8()
{
  result = qword_1EAF3F720;
  if (!qword_1EAF3F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3F720);
  }

  return result;
}

uint64_t sub_19765D63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19765D6CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_19774F500();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_197652138(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_197648238(0, &qword_1EAF3F728, 0x1E69635F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_19765D840();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F730, &unk_19775A770);
          v9 = sub_19765D4C4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_19765D840()
{
  result = qword_1EAF3F738;
  if (!qword_1EAF3F738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF3F730, &unk_19775A770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3F738);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19765D940()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_19765D9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v5 = sub_19765F094();
  return sub_197649708(a3, 0xE800000000000000, v4, v5);
}

void sub_19765DA40()
{
  OUTLINED_FUNCTION_8();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v49 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v33 - v9;
  if (qword_1ED696F20 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  memcpy(v45, &unk_1EAF3F308, sizeof(v45));
  if (qword_1ED696F28 != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_5(&qword_1EAF3F3B8);
  v42[0] = v6;
  v42[1] = v4;
  v39 = v11;
  v40 = v10;
  v38 = v12;
  v13 = sub_1976B7FC0();
  v15 = v14;
  v17 = v16;
  memcpy(v41, v45, sizeof(v41));
  sub_1976BB434(v13, v15, v17, &unk_1F0BBACF0, &off_1F0BBAB00, v18, v19, v20, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7]);

  memcpy(v48, v42, sizeof(v48));
  v46 = v43;
  v47 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19775A780;
  if (qword_1EAF3EE80 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v41[0] = qword_1EAF3EE88;
  *&v41[1] = unk_1EAF3EE90;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v23 = sub_19765F094();
  sub_1976C78F8(v22, v23, (v21 + 32));

  v42[3] = &unk_1F0BBACF0;
  v42[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v24 = swift_allocObject();
  v42[0] = v24;
  memcpy((v24 + 16), v48, 0x88uLL);
  *(v24 + 152) = v21;
  v25 = v47;
  *(v24 + 160) = v46;
  *(v24 + 176) = v25;
  sub_19764C978(v42);
  __swift_destroy_boxed_opaque_existential_0(v42);
  if (!v0)
  {
    LOBYTE(v41[0]) = 0;
    while (1)
    {
      sub_19764EA8C();
      if (!v26)
      {
        break;
      }

      if (v41[0])
      {

        break;
      }

      v27 = objc_autoreleasePoolPush();
      sub_19765272C();
      v28 = v42[1];
      if (qword_1ED696F18 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      OUTLINED_FUNCTION_5(&qword_1EAF3F2F0);
      sub_19765272C();
      v34 = v28;

      sub_19765F0F8();
      v29 = v37;
      v30 = sub_19774EAD0();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
      v31 = sub_19774F320();
      sub_19765D558(v29);

      v35(v31, v41);

      objc_autoreleasePoolPop(v27);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
}

uint64_t sub_19765DF30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v7 - v2;
  if (qword_1ED696F28 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v4 = v7[2];
  if (qword_1ED696F18 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  sub_19765F0F8();
  v5 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_19774F320();
  sub_19765D558(v3);

  return v4;
}

void sub_19765E114()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v59 - v7;
  v9 = sub_19766E2D0(v4, v2);
  if (v0)
  {
LABEL_23:
    OUTLINED_FUNCTION_9();
  }

  else
  {
    v13 = v9;
    v64 = v11;
    v65 = v12;
    v14 = v10;
    v63 = v8;
    if (qword_1ED696F20 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    memcpy(v68, &unk_1EAF3F308, sizeof(v68));
    sub_1976BEF98();
    v67[3] = &unk_1F0BBACF0;
    v67[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v67[0] = swift_allocObject();
    memcpy((v67[0] + 16), v73, 0xB0uLL);
    sub_1976BB388();
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_4_0();
    sub_1976C7FD0();
    v67[0] = v13;
    v67[1] = v14;
    v15 = sub_1976B7FC0();
    v17 = v16;
    v19 = v18;

    memcpy(v66, v69, sizeof(v66));
    sub_1976BB434(v15, v17, v19, &unk_1F0BBACF0, &off_1F0BBAB00, v20, v21, v22, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v66[12], v66[13], v66[14], v66[15], v66[16], v66[17], v66[18], v66[19], v66[20], v66[21], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8]);

    memcpy(v70, v69, sizeof(v70));
    sub_19764BBBC(v70);
    OUTLINED_FUNCTION_4_0();
    sub_1976C7FD0();
    v69[0] = v64;
    v69[1] = v65;
    v23 = sub_1976B7FC0();
    v25 = v24;
    v27 = v26;

    memcpy(v66, v67, sizeof(v66));
    sub_1976BB434(v23, v25, v27, &unk_1F0BBACF0, &off_1F0BBAB00, v28, v29, v30, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v66[12], v66[13], v66[14], v66[15], v66[16], v66[17], v66[18], v66[19], v66[20], v66[21], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8]);

    memcpy(v71, v67, sizeof(v71));
    sub_19764BBBC(v71);
    memcpy(v72, v69, sizeof(v72));
    v69[3] = &unk_1F0BBACF0;
    v69[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v69[0] = swift_allocObject();
    memcpy((v69[0] + 16), v72, 0xB0uLL);
    v31 = sub_19764C978(v69);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v32 = sub_19765F0F8();
    v33 = MEMORY[0x1E69E6158];
    v64 = v32;
    v62 = sub_19774EE40();
    for (i = LNOpenURLRequest.info; ; i = (LNOpenURLRequest + 32))
    {
      while (1)
      {
        sub_19764EA8C();
        if (!v35)
        {

          goto LABEL_23;
        }

        v36 = i[485];

        if (v36 != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        OUTLINED_FUNCTION_7();
        if (!v36)
        {
          break;
        }
      }

      v65 = v69[0];
      v74 = v69[1];
      if (qword_1ED696F18 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      OUTLINED_FUNCTION_5(&qword_1EAF3F2F0);
      OUTLINED_FUNCTION_7();
      v37 = v31;
      v38 = v33;

      v39 = sub_19774EAD0();
      v40 = v63;
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v39);
      v41 = sub_19774F320();
      sub_19765D558(v40);

      v61 = v41;
      v42 = v62;
      HIDWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v42;
      v43 = sub_19764EA74(v65, v74);
      v44 = *(v42 + 16);
      LODWORD(v62) = v45;
      if (__OFADD__(v44, (v45 & 1) == 0))
      {
        break;
      }

      v46 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F748, &qword_19775A790);
      if (sub_19774F6F0())
      {
        v47 = sub_19764EA74(v65, v74);
        v49 = v62;
        if ((v62 & 1) != (v48 & 1))
        {
          goto LABEL_27;
        }

        v50 = v47;
        v33 = v38;
        v31 = v37;
      }

      else
      {
        v50 = v46;
        v33 = v38;
        v31 = v37;
        v49 = v62;
      }

      if (v49)
      {

        v62 = v69[0];
        v51 = *(v69[0] + 56);
        v65 = *(v51 + 8 * v50);
        v52 = v61;
        *(v51 + 8 * v50) = v61;
      }

      else
      {
        v53 = v69[0];
        *(v69[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
        v54 = (v53[6] + 16 * v50);
        *v54 = v65;
        v54[1] = v74;
        v55 = v61;
        *(v53[7] + 8 * v50) = v61;

        v56 = v53[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_26;
        }

        v62 = v53;
        v53[2] = v58;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_19774F8A0();
    __break(1u);
  }
}

uint64_t sub_19765E82C(void *a1)
{
  v3 = sub_19764C978(a1);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);

    sub_1976BF5D8();
    v2 = v5;
  }

  return v2;
}

void sub_19765E938()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_1ED696F20 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  memcpy(__dst, &unk_1EAF3F308, sizeof(__dst));
  if (qword_1ED696F28 != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF3F3B8);
  __src[0] = v8;
  __src[1] = v6;
  v9 = sub_1976B7FC0();
  v11 = v10;
  v13 = v12;
  if (qword_1EAF3EE80 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF3EE88);
  __src[0] = v4;
  v14 = sub_1976B7FC0();
  v17 = sub_1976B9D9C(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v27, __dst, sizeof(v27));
  sub_1976BB434(v17, v19, v21, &unk_1F0BBACF0, &off_1F0BBAB00, v22, v23, v24, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v4, v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v30, __src, sizeof(v30));
  __src[3] = &unk_1F0BBACF0;
  __src[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v30, 0xB0uLL);
  v25 = sub_1976C0920(__src);
  __swift_destroy_boxed_opaque_existential_0(__src);
  if (!v0 && v25)
  {
    sub_19765DF30();
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_19765EBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_197660250(a1, a2, a3, a4, 0x7365697469746E65, 0xE800000000000000, 0xD000000000000010, 0x80000001977604F0, 0x656D614E65707974, 0xE800000000000000, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000197760510);
  if (!v5)
  {
    if (v7)
    {
      sub_19765E938();
      a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return a5;
}

void sub_19765ECE4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  if (qword_1ED696F20 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  memcpy(__dst, &unk_1EAF3F308, sizeof(__dst));
  memcpy(v25, &unk_1EAF3F308, sizeof(v25));
  if (qword_1EAF3EE80 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  memcpy(v24, __dst, sizeof(v24));
  sub_197649968(qword_1EAF3EE88, unk_1EAF3EE90, qword_1EAF3EE98, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v5, v6, v21, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v24[4] = &off_1F0BBB748;
  v24[0] = v8;
  v24[1] = v10;
  v24[2] = v12;
  sub_19764B838(v24, MEMORY[0x1E69E7CC0], &unk_1F0BBACF0, &off_1F0BBAAE8);
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (v2)
  {
    memcpy(v25, __src, sizeof(v25));
    if (qword_1ED696F28 != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    OUTLINED_FUNCTION_5(&qword_1EAF3F3B8);
    v24[0] = v4;
    v24[1] = v2;
    v13 = sub_1976B7FC0();
    v15 = v14;
    v17 = v16;
    memcpy(v23, v25, sizeof(v23));
    sub_1976BB434(v13, v15, v17, &unk_1F0BBACF0, &off_1F0BBAB00, v18, v19, v20, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]);

    sub_19764BBBC(v25);
    memcpy(__src, v24, sizeof(__src));
  }

  v25[3] = &unk_1F0BBACF0;
  v25[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v25[0] = swift_allocObject();
  memcpy((v25[0] + 16), __src, 0xB0uLL);
  sub_19764C978(v25);
  __swift_destroy_boxed_opaque_existential_0(v25);
  if (!v0)
  {
    sub_1976BF5D8();
  }

  OUTLINED_FUNCTION_9();
}

void sub_19765EFD0(void *a1@<X8>)
{
  if (qword_1EAF3EE80 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (v1)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_19765F094()
{
  result = qword_1ED697130[0];
  if (!qword_1ED697130[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF3F740, &unk_19775A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED697130);
  }

  return result;
}

unint64_t sub_19765F0F8()
{
  result = qword_1ED696EF0;
  if (!qword_1ED696EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696EF0);
  }

  return result;
}

uint64_t sub_19765F148@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

uint64_t sub_19765F180(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19765F1C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19765F238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_19774ED60();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = *a3;
  if (*a3)
  {
    sub_19774F020();
    result = *MEMORY[0x1E69AC200];
    if (*MEMORY[0x1E69AC200])
    {
      sub_19774F020();
      return sub_19774ED50();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19765F3C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_19765F428()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0xD000000000000010, 0x8000000197760560, v0, v1);
}

uint64_t sub_19765F48C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0x7470697263736564, 0xEB000000006E6F69, v0, v1);
}

uint64_t sub_19765F4F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF3EE00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43A20, sizeof(__dst));
  if (qword_1ED697000 != -1)
  {
    swift_once();
  }

  memcpy(__src, &unk_1EAF43D20, sizeof(__src));
  v1 = memcpy(v139, __dst, 0xB0uLL);
  if (qword_1EAF3EE18 != -1)
  {
    v1 = swift_once();
  }

  v9 = qword_1EAF43AE8;
  v10 = unk_1EAF43AF0;
  v11 = qword_1EAF43AF8;
  OUTLINED_FUNCTION_0_2(v1, v2, v3, v4, v5, v6, v7, v8, v70, v80, v89, a1, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11], v130[12], v130[13], v130[14], v130[15], v130[16], v130[17], v130[18], v130[19], v130[20], v130[21], v131, v132, v133, v134, v135, v136[0]);
  sub_197649968(v9, v10, v11, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v12, v13, v71, v10, v9, v99, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v130[3] = v20;
  v130[4] = &off_1F0BBB748;
  v130[0] = v15;
  v130[1] = v17;
  v130[2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v21 = swift_allocObject();
  v29 = v21;
  *(v21 + 16) = xmmword_19775A7E0;
  if (qword_1EAF3EE10 != -1)
  {
    v21 = swift_once();
  }

  v30 = qword_1EAF43AD0;
  v31 = *algn_1EAF43AD8;
  v32 = qword_1EAF43AE0;
  OUTLINED_FUNCTION_0_2(v21, v22, v23, v24, v25, v26, v27, v28, v72, v81, v90, v100, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11], v130[12], v130[13], v130[14], v130[15], v130[16], v130[17], v130[18], v130[19], v130[20], v130[21], v131, v132, v133, v134, v135, v136[0]);
  sub_197649968(v30, v31, v32, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v33, v34, v73, v82, v91, v101, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);
  v29[7] = v20;
  v29[8] = &off_1F0BBB748;
  v29[4] = v35;
  v29[5] = v36;
  v29[6] = v37;
  if (qword_1EAF3EE28 != -1)
  {
    v35 = swift_once();
  }

  v44 = qword_1EAF43B00;
  v43 = *algn_1EAF43B08;
  v45 = qword_1EAF43B10;
  OUTLINED_FUNCTION_0_2(v35, v36, v37, v38, v39, v40, v41, v42, v74, v83, v92, v102, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11], v130[12], v130[13], v130[14], v130[15], v130[16], v130[17], v130[18], v130[19], v130[20], v130[21], v131, v132, v133, v134, v135, v136[0]);
  sub_197649968(v44, v43, v45, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v46, v47, v75, v84, v93, v103, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);
  v29[12] = v20;
  v29[13] = &off_1F0BBB748;
  v29[9] = v48;
  v29[10] = v49;
  v29[11] = v50;
  if (qword_1ED697018 != -1)
  {
    swift_once();
  }

  memcpy(v136, __src, sizeof(v136));
  sub_197649968(qword_1EAF43DE8, unk_1EAF43DF0, qword_1EAF43DF8, &unk_1F0BBACF0, MEMORY[0x1E69E6530], &off_1F0BBAB00, v51, v52, v76, v85, v94, v104, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v29[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v29[18] = &off_1F0BBB748;
  v29[14] = v54;
  v29[15] = v56;
  v29[16] = v58;
  sub_19764B838(v130, v29, &unk_1F0BBACF0, &off_1F0BBAAE8);
  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(v130);
  memcpy(v139, v136, 0xB0uLL);
  v134 = &unk_1F0BBACF0;
  v135 = &off_1F0BBAB00;
  v131 = swift_allocObject();
  memcpy((v131 + 16), __src, 0xB0uLL);
  memcpy(v130, __dst, sizeof(v130));
  sub_19764DFC8(__src, &v108);
  sub_197649968(v95, v86, v11, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v59, v60, v77, v86, v95, v105, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);
  if (qword_1ED697008 != -1)
  {
    swift_once();
  }

  memcpy(v130, __src, sizeof(v130));
  sub_197649968(qword_1EAF43DD0, *algn_1EAF43DD8, qword_1EAF43DE0, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v61, v62, v78, v87, v96, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);
  v79 = MEMORY[0x1E69E6180];
  v63 = sub_19764BCB8();
  v65 = v64;
  v67 = v66;

  v107[3] = &unk_1F0BBACF0;
  v107[4] = &off_1F0BBAB00;
  *v107 = swift_allocObject();
  memcpy(v130, v139, sizeof(v130));
  sub_19764C46C(1, &v131, v63, v65, v67, &unk_1F0BBACF0, &off_1F0BBAB00, v68, v79, v88, v97, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7], v130[8], v130[9], v130[10], v130[11]);

  sub_19764BBBC(v139);
  return __swift_destroy_boxed_opaque_existential_0(&v131);
}

uint64_t sub_19765FA68(void *a1)
{
  v3 = sub_19764C978(a1);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);

    sub_1976BF5D8();
    v2 = v5;
  }

  return v2;
}

uint64_t sub_19765FB74()
{
  if (qword_1EAF3EE18 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (qword_1EAF3EE28 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  sub_19765FD18();
  sub_19774F3B0();

  return v1;
}

uint64_t sub_19765FCE0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

unint64_t sub_19765FD18()
{
  result = qword_1EAF3EDD8;
  if (!qword_1EAF3EDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF3EDD8);
  }

  return result;
}

uint64_t type metadata accessor for LNActionRecord()
{
  result = qword_1EAF3F3F0;
  if (!qword_1EAF3F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19765FDE0()
{
  sub_19765FE84();
  if (v0 <= 0x3F)
  {
    sub_197648238(319, &qword_1ED696FD0, 0x1E69AC678);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19765FE84()
{
  if (!qword_1EAF3F408)
  {
    sub_19774EAD0();
    v0 = sub_19774F420();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF3F408);
    }
  }
}

void sub_19765FEDC(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_19774F500();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_19764AD60(0, v2 & ~(v2 >> 63), 0);
    v39 = v45;
    v42 = sub_197665B4C(v1);
    v43 = v3;
    v44 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v42;
        v8 = v44;
        v38 = v43;
        v9 = v1;
        sub_197665BC8(v42, v43, v44, v1, &qword_1ED696D90);
        v11 = v10;
        v40 = 0x273D65756C6176;
        v41 = 0xE700000000000000;
        v12 = [v10 identifier];
        v13 = sub_19774EF50();
        v15 = v14;

        MEMORY[0x19A8E4C40](v13, v15);

        MEMORY[0x19A8E4C40](39, 0xE100000000000000);

        v16 = v40;
        v17 = v41;
        v18 = v39;
        v45 = v39;
        v20 = *(v39 + 16);
        v19 = *(v39 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_19764AD60((v19 > 1), v20 + 1, 1);
          v18 = v45;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v17;
        v39 = v18;
        if (v37)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (sub_19774F4D0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v26 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F788, &qword_19775A8F8);
          v27 = sub_19774F200();
          sub_19774F550();
          v27(&v40, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v22 = 1 << *(v9 + 32);
          if (v7 >= v22)
          {
            goto LABEL_32;
          }

          v23 = v7 >> 6;
          v24 = *(v35 + 8 * (v7 >> 6));
          if (((v24 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v38)
          {
            goto LABEL_34;
          }

          v25 = v24 & (-2 << (v7 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v26 = v36;
          }

          else
          {
            v28 = v23 << 6;
            v29 = v23 + 1;
            v30 = (v34 + 8 * v23);
            v26 = v36;
            while (v29 < (v22 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_197665BA8(v7, v38, 0);
                v22 = __clz(__rbit64(v31)) + v28;
                goto LABEL_27;
              }
            }

            sub_197665BA8(v7, v38, 0);
          }

LABEL_27:
          v33 = *(v9 + 36);
          v42 = v22;
          v43 = v33;
          v44 = 0;
        }

        if (v5 == v26)
        {
          sub_197665BA8(v42, v43, v44);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_197660250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_19774F5B0();
  MEMORY[0x19A8E4C40](0x200A5443454C4553, 0xEB00000000202020);
  MEMORY[0x19A8E4C40](a9, a10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x19A8E4C40](a5, a6);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x19A8E4C40](a5, a6);
  MEMORY[0x19A8E4C40](46, 0xE100000000000000);
  v17 = OUTLINED_FUNCTION_37();
  MEMORY[0x19A8E4C40](v17);
  MEMORY[0x19A8E4C40](0x2E2427202CLL, 0xE500000000000000);
  MEMORY[0x19A8E4C40](a13, a14);
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x19A8E4C40](0xD000000000000029);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A780;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F0BBA858;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  sub_1976C2F2C();
  if (v23[16])
  {

    swift_setDeallocating();
    return sub_1976A5780();
  }

  swift_setDeallocating();
  sub_1976A5780();
  sub_19764EA8C();
  if (!v20)
  {
    goto LABEL_9;
  }

  if (*(v20 + 16) != 1)
  {

LABEL_9:

    return 0;
  }

  sub_19766567C(v20 + 32, v23, &unk_1EAF3FEB0, &unk_19775A8C0);

  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      return v22;
    }
  }

  else
  {
    sub_197665DE0(v23, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  return 0;
}

void sub_19766051C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v34 - v12 + 48;
  v14 = type metadata accessor for LNActionRecord();
  v15 = *(v14 + 20);
  v16 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v9 + v15, 1, 1, v16);
  *v9 = v7;
  v9[1] = v5;

  sub_1976656D8(v3, v9 + v15);
  v17 = [v1 effectiveBundleIdentifiers];
  v18 = [v17 array];

  v19 = sub_19774F120();
  v20 = *(v19 + 16);

  if (v20)
  {
  }

  else
  {
    v21 = OUTLINED_FUNCTION_8_1();
    sub_19766567C(v21, v22, v23, v24);
    v25 = objc_allocWithZone(MEMORY[0x1E69AC7B0]);

    v26 = sub_197663CC8(0, v7, v5, v13);
    v34[3] = sub_197648238(0, &qword_1EAF3F220, 0x1E69AC7B0);
    v34[0] = v26;
    v27 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v28 = sub_197663DA8(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF10, &qword_19775E130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A780;
    *(inited + 32) = v7;
    *(inited + 40) = v5;
    *(inited + 48) = sub_19774F300();
    *(inited + 56) = v30;
    sub_19774EE40();
    v31 = sub_19774EE20();

    v32 = [v1 metadataByAddingEffectiveBundleIdentifiers:v28 mangledTypeNameByBundleIdentifier:v31];

    v1 = v32;
  }

  sub_197665DE0(v3, &qword_1EAF3FCE0, &unk_19775A220);
  *(v9 + *(v14 + 24)) = v1;
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976607C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = (a7 + 56);
  v10 = v7;
  if (v7)
  {
    while (1)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v14 = *(v9 - 3);
      v13 = *(v9 - 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
      result = swift_initStackObject();
      *(result + 32) = v14;
      *(result + 16) = xmmword_19775A850;
      *(result + 40) = v13;
      *(result + 48) = v11;
      *(result + 56) = v12;
      v16 = *(v8 + 16);
      v17 = v16 + 2;
      if (__OFADD__(v16, 2))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v18 = *(v8 + 24) >> 1, v18 < v17))
      {
        if (v16 <= v17)
        {
          v19 = v16 + 2;
        }

        else
        {
          v19 = v16;
        }

        result = sub_19764EF3C(result, v19, 1, v8);
        v8 = result;
        v18 = *(result + 24) >> 1;
      }

      if (v18 - *(v8 + 16) < 2)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, 2);
      v22 = v20 + 2;
      if (v21)
      {
        goto LABEL_20;
      }

      *(v8 + 16) = v22;
      v9 += 4;
      if (!--v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_12:
    if (v7)
    {
      v35 = MEMORY[0x1E69E7CC0];
      sub_19764AD60(0, v7, 0);
      v23 = *(v35 + 16);
      v24 = 16 * v23;
      do
      {
        v25 = *(v35 + 24);
        v26 = v23 + 1;
        if (v23 >= v25 >> 1)
        {
          sub_19764AD60((v25 > 1), v23 + 1, 1);
        }

        *(v35 + 16) = v26;
        v27 = v35 + v24;
        *(v27 + 32) = 0x293F202C3F28;
        *(v27 + 40) = 0xE600000000000000;
        v24 += 16;
        v23 = v26;
        --v7;
      }

      while (v7);
    }

    sub_19774F5B0();

    MEMORY[0x19A8E4C40](a1, a2);
    MEMORY[0x19A8E4C40](8236, 0xE200000000000000);
    MEMORY[0x19A8E4C40](a4, a5);
    MEMORY[0x19A8E4C40](0x2028204E49202920, 0xEF205345554C4156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
    sub_19764B5C8(&qword_1ED6972C8, &unk_1EAF3FF30, &unk_19775A950);
    v28 = sub_19774EEB0();
    v30 = v29;

    MEMORY[0x19A8E4C40](v28, v30);

    MEMORY[0x19A8E4C40](10528, 0xE200000000000000);
    sub_197660AF0(v8);

    return 8232;
  }

  return result;
}

uint64_t sub_197660AF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1976A5958(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
      swift_dynamicCast();
      v6 = *(v14 + 16);
      v5 = *(v14 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1976A5958((v5 > 1), v6 + 1, 1);
      }

      *(v14 + 16) = v6 + 1;
      v7 = v14 + 40 * v6;
      *(v7 + 64) = v13;
      *(v7 + 32) = v11;
      *(v7 + 48) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_197660C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1976A59D8(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7C0, &qword_19775A938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7C8, &unk_19775A940);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1976A59D8((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_197660D94()
{
  v0 = OUTLINED_FUNCTION_34_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_2_2();
  v4 = sub_19764B5C8(v3, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v2, v4);
}

uint64_t sub_197660E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  OUTLINED_FUNCTION_2_2();
  v8 = sub_19764B5C8(v7, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(a3, a4, v6, v8);
}

void sub_197660EEC()
{
  OUTLINED_FUNCTION_42();
  v102 = v0;
  if (qword_1ED696FE0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43C28, sizeof(__dst));
  if (qword_1ED697000 != -1)
  {
    swift_once();
  }

  memcpy(v142, &unk_1EAF43D20, sizeof(v142));
  memcpy(v143, __dst, 0xB0uLL);
  if (qword_1ED696FE8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v1 = unk_1EAF43CE0;
  v2 = qword_1EAF43CE8;
  memcpy(__src, __dst, sizeof(__src));
  v92 = qword_1EAF43CD8;
  v3 = OUTLINED_FUNCTION_16();
  sub_197649968(v3, v4, v5, v6, v7, v8, v9, v10, v72, v82, v92, v102, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v134[3] = v17;
  v134[4] = &off_1F0BBB748;
  v134[0] = v12;
  v134[1] = v14;
  v134[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  OUTLINED_FUNCTION_6_0();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_19775A860;
  if (qword_1ED696FF0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v19 = OUTLINED_FUNCTION_23(&qword_1EAF43CF0, v73, v83, v93, v103, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11], v134[12], v134[13], v134[14], v134[15], v134[16], v134[17], v134[18], v134[19], v134[20], v134[21], v135, v136, v137, v138, v139, __src[0]);
  OUTLINED_FUNCTION_41(v19, v20, v21, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v22, v23, v74, v84, v94, v104, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  *(v18 + 56) = v17;
  *(v18 + 64) = &off_1F0BBB748;
  *(v18 + 32) = v24;
  *(v18 + 40) = v25;
  *(v18 + 48) = v26;
  if (qword_1ED696FD8 != -1)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_23(&qword_1EAF43C10, v75, v85, v95, v105, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11], v134[12], v134[13], v134[14], v134[15], v134[16], v134[17], v134[18], v134[19], v134[20], v134[21], v135, v136, v137, v138, v139, __src[0]);
  OUTLINED_FUNCTION_41(v27, v28, v29, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v30, v31, v76, v86, v96, v106, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  *(v18 + 96) = v17;
  *(v18 + 104) = &off_1F0BBB748;
  *(v18 + 72) = v32;
  *(v18 + 80) = v33;
  *(v18 + 88) = v34;
  if (qword_1ED697018 != -1)
  {
    swift_once();
  }

  v35 = qword_1EAF43DF8;
  OUTLINED_FUNCTION_46_2(__src);
  v36 = OUTLINED_FUNCTION_37();
  sub_197649968(v36, v37, v35, &unk_1F0BBACF0, v38, &off_1F0BBAB00, v39, v40, v77, v87, v97, v107, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  *(v18 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  *(v18 + 144) = &off_1F0BBB748;
  *(v18 + 112) = v42;
  *(v18 + 120) = v44;
  *(v18 + 128) = v46;
  if (qword_1EAF3F400 != -1)
  {
    swift_once();
  }

  v47 = qword_1EAF43D08;
  v48 = unk_1EAF43D10;
  v49 = qword_1EAF43D18;
  OUTLINED_FUNCTION_46_2(__src);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F778, &qword_19775A8D8);
  sub_197649968(v47, v48, v49, &unk_1F0BBACF0, v50, &off_1F0BBAB00, v51, v52, v78, v88, v98, v108, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  *(v18 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  *(v18 + 184) = &off_1F0BBB748;
  *(v18 + 152) = v54;
  *(v18 + 160) = v56;
  *(v18 + 168) = v58;
  sub_19764B838(v134, v18, &unk_1F0BBACF0, &off_1F0BBAAE8);
  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(v134);
  memcpy(v143, __src, 0xB0uLL);
  v138 = &unk_1F0BBACF0;
  v139 = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v135 = swift_allocObject();
  OUTLINED_FUNCTION_46_2((v135 + 16));
  memcpy(v134, __dst, sizeof(v134));
  sub_19764DFC8(v142, &v112);
  sub_197649968(v99, v1, v2, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v59, v60, v79, v89, v99, v109, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  if (qword_1ED697008 != -1)
  {
    swift_once();
  }

  v61 = qword_1EAF43DD0;
  v62 = *algn_1EAF43DD8;
  v63 = qword_1EAF43DE0;
  OUTLINED_FUNCTION_46_2(v134);
  sub_197649968(v61, v62, v63, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v64, v65, v80, v90, v100, v110, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v81 = MEMORY[0x1E69E6180];
  v66 = sub_19764BCB8();
  v68 = v67;
  v70 = v69;

  v111[3] = &unk_1F0BBACF0;
  v111[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  *v111 = swift_allocObject();
  memcpy(v134, v143, sizeof(v134));
  sub_19764C46C(1, &v135, v66, v68, v70, &unk_1F0BBACF0, &off_1F0BBAB00, v71, v81, v91, v101, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);

  sub_19764BBBC(v143);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_197661498@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ED696FE0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43C28, sizeof(__dst));
  memcpy(v12, &unk_1EAF43C28, sizeof(v12));
  if (qword_1ED696FF0 != -1)
  {
    swift_once();
  }

  memcpy(v11, __dst, sizeof(v11));
  sub_197649968(qword_1EAF43CF0, *algn_1EAF43CF8, qword_1EAF43D00, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v2, v3, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v11[4] = &off_1F0BBB748;
  v11[0] = v5;
  v11[1] = v7;
  v11[2] = v9;
  a1[3] = &unk_1F0BBACF0;
  a1[4] = &off_1F0BBAB00;
  *a1 = swift_allocObject();
  sub_19764B838(v11, MEMORY[0x1E69E7CC0], &unk_1F0BBACF0, &off_1F0BBAAE8);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_197661630(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t *), uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v43 = a4;
  v52[5] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF50, &unk_19775A920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v41 - v10;
  v12 = type metadata accessor for LNActionRecord();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = a5;
  sub_197660EEC();
  v18 = v50;
  v19 = v51;
  __swift_project_boxed_opaque_existential_0Tm(v49, v50);
  if (qword_1ED696FE8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF43CD8);
  v46[0] = a1;
  v46[1] = a2;
  v20 = sub_1976B7FC0();
  v22 = v21;
  v24 = v23;
  v47 = v18;
  v48 = v19;
  __swift_allocate_boxed_opaque_existential_1(v46);
  sub_1976C2388(v20, v22, v24, v18, v19);

  v25 = v47;
  v26 = v48;
  v41[1] = __swift_project_boxed_opaque_existential_0Tm(v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_19775A780;
  if (qword_1ED696FF0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v44 = qword_1EAF43CF0;
  v45 = *algn_1EAF43CF8;
  v28 = OUTLINED_FUNCTION_34_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_2_2();
  v32 = sub_19764B5C8(v31, &qword_1EAF3F740, &unk_19775A7F0);
  sub_1976C78F8(v30, v32, (v27 + 32));
  v52[3] = v25;
  v52[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_1976BB76C(v27, v25, v26);

  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v49);
  v33 = v41[2];
  sub_19764C978(v52);
  if (!v33)
  {
    v35 = v34;
    LOBYTE(v49[0]) = 0;
    while (1)
    {
      sub_19764EA8C();
      v37 = v36;
      if (!v36)
      {
        break;
      }

      if (v49[0])
      {

        break;
      }

      v38 = objc_autoreleasePoolPush();
      sub_197661A40(v35, v37, v11);

      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        sub_197665DE0(v11, &qword_1EAF3FF50, &unk_19775A920);
      }

      else
      {
        sub_197664118(v11, v17);
        v42(*&v17[*(v12 + 24)], v49);
        sub_1976640BC(v17);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  result = __swift_destroy_boxed_opaque_existential_0(v52);
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_197661A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  if (qword_1ED697018 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (qword_1ED696FE8 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v17 = v24;
  v16 = v25;
  if (qword_1EAF3F400 != -1)
  {
    swift_once();
  }

  sub_19764B088(qword_1EAF43D08, unk_1EAF43D10, a1, a2, MEMORY[0x1E69E6158], &off_1ED697020, &v24);
  v23[1] = v17;
  v23[2] = v16;
  if (v25)
  {

    sub_19774EA50();
    swift_bridgeObjectRelease_n();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v15, v18, 1, v19);
  v20 = objc_autoreleasePoolPush();
  if (qword_1ED696FD8 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v23[0] = v20;
  sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  sub_19774F310();
  sub_197665DE0(v13, &qword_1EAF3FCE0, &unk_19775A220);

  objc_autoreleasePoolPop(v23[0]);
  sub_19766567C(v15, v10, &qword_1EAF3FCE0, &unk_19775A220);
  sub_19766051C();
  sub_197665DE0(v15, &qword_1EAF3FCE0, &unk_19775A220);
  v21 = type metadata accessor for LNActionRecord();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v21);
}

uint64_t sub_197661E7C(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF50, &unk_19775A920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for LNActionRecord();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_19766E2D0(a1, a2);
  if (v2)
  {
    return v3;
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v49 = v15;
  v50 = v10;
  sub_197660EEC();
  v25 = v53;
  v24 = v54;
  v56 = __swift_project_boxed_opaque_existential_0Tm(v52, v53);
  v51 = "yBundleIdentifier";
  v55[3] = v25;
  v55[4] = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  sub_19766E500(v20, v21, v22, v23, boxed_opaque_existential_1, v25, v24);

  __swift_destroy_boxed_opaque_existential_0(v52);
  sub_19764C978(v55);
  sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
  v3 = sub_19774EE40();
  v27 = v50;
  while (1)
  {
    while (1)
    {
      sub_19764EA8C();
      v29 = v28;
      if (!v28)
      {

        __swift_destroy_boxed_opaque_existential_0(v55);
        return v3;
      }

      sub_197661A40(v30, v29, v9);

      if (__swift_getEnumTagSinglePayload(v9, 1, v27) != 1)
      {
        break;
      }

      sub_197665DE0(v9, &qword_1EAF3FF50, &unk_19775A920);
    }

    v31 = v49;
    sub_197664118(v9, v49);
    v32 = *(v31 + 8);
    v56 = *v31;
    v48 = *(v31 + *(v27 + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v32;
    v52[0] = v3;
    v46 = sub_19764EA74(v56, v32);
    if (__OFADD__(v3[2], (v33 & 1) == 0))
    {
      break;
    }

    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEF0, &qword_19775E110);
    if (sub_19774F6F0())
    {
      v35 = sub_19764EA74(v56, v51);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_20;
      }

      v37 = v35;
    }

    else
    {
      v37 = v46;
    }

    v3 = v52[0];
    if (v34)
    {
      v38 = *(v52[0] + 56);
      v39 = *(v38 + 8 * v37);
      *(v38 + 8 * v37) = v48;
    }

    else
    {
      *(v52[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v40 = (v3[6] + 16 * v37);
      v41 = v51;
      *v40 = v56;
      v40[1] = v41;
      *(v3[7] + 8 * v37) = v48;
      v42 = v3[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v3[2] = v44;
    }

    sub_1976640BC(v49);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_197662474(void *a1)
{
  sub_19764C978(a1);
  if (!v1)
  {
    type metadata accessor for LNActionRecord();

    sub_1976BF5D8();
    v2 = v4;
  }

  return v2;
}

uint64_t sub_197662540(uint64_t a1, uint64_t a2)
{
  v6 = sub_197661498(v31);
  if (a2)
  {
    v11 = v31[3];
    v3 = v31[4];
    OUTLINED_FUNCTION_44(v6, v7, v8, v9, v10);
    if (qword_1ED696FE8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    OUTLINED_FUNCTION_5(&qword_1EAF43CD8);
    *&v27 = a1;
    *(&v27 + 1) = a2;
    v12 = sub_1976B7FC0();
    v14 = v13;
    v16 = v15;
    v29 = v11;
    v30 = v3;
    __swift_allocate_boxed_opaque_existential_1(&v27);
    sub_1976C2388(v12, v14, v16, v11, v3);

    v17 = __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_45(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31[0]);
  }

  sub_19764C978(v31);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_1976BF5D8();
    v3 = v26;
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  return v3;
}

void sub_1976626F4(void *a1@<X8>)
{
  if (qword_1ED696FF0 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (v1)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
}

void *sub_1976627B8(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!sub_19774F500())
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v2 = sub_197652138(v1);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_12:
    if (qword_1ED696FF0 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    if (qword_1ED696FE8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v20 = OUTLINED_FUNCTION_16();
    sub_1976607C0(v20, v21, v22, v23, v24, v25, v3);

    sub_197660EEC();
    v26 = v35;
    v27 = v36;
    __swift_project_boxed_opaque_existential_0Tm(v34, v35);
    v33[3] = v26;
    v33[4] = v27;
    __swift_allocate_boxed_opaque_existential_1(v33);
    v28 = OUTLINED_FUNCTION_16();
    sub_1976C2388(v28, v29, v30, v26, v27);

    v31 = sub_197662474(v33);
    __swift_destroy_boxed_opaque_existential_0(v33);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return v31;
  }

  v4 = v2;
  v34[0] = MEMORY[0x1E69E7CC0];
  result = sub_1976A5978(0, v2 & ~(v2 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v3 = v34[0];
    v32 = v1 & 0xC000000000000001;
    v37 = v1;
    do
    {
      if (v32)
      {
        v7 = MEMORY[0x19A8E5210](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 actionIdentifier];
      v10 = sub_19774EF50();
      v12 = v11;

      v13 = [v8 bundleIdentifier];
      v14 = sub_19774EF50();
      v16 = v15;

      v34[0] = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1976A5978((v17 > 1), v18 + 1, 1);
        v3 = v34[0];
      }

      ++v6;
      *(v3 + 16) = v18 + 1;
      v19 = (v3 + 32 * v18);
      v19[4] = v10;
      v19[5] = v12;
      v19[6] = v14;
      v19[7] = v16;
      v1 = v37;
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_197662A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  result = sub_197660250(a1, a2, a3, a4, 0x736E6F69746361, 0xE700000000000000, a6, a7, 0x696669746E656469, 0xEA00000000007265, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000023, 0x8000000197760600);
  if (!v8)
  {
    if (v14)
    {
      v15 = sub_1976622A8(a1, a2, result, v14, a5);

      sub_197692CC0(v15, a8);
    }

    else
    {
      v16 = type metadata accessor for LNActionRecord();
      return __swift_storeEnumTagSinglePayload(a8, 1, 1, v16);
    }
  }

  return result;
}

void sub_197662D68()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v54 = type metadata accessor for LNActionRecord();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v54);
  v51 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - v10;
  v12 = 0;
  v13 = *(v1 + 16);
  v57 = v5 & 0xC000000000000001;
  v14 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 < 0)
  {
    v14 = v5;
  }

  v61 = v14;
  v52 = MEMORY[0x1E69E7CC0];
  v50[4] = v3;
  v50[5] = v1;
  v50[2] = v50 - v10;
  v50[3] = v6;
  v50[1] = v13;
LABEL_4:
  for (i = v12; i != v13; i = v17)
  {
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = i + 1;
    v55 = *(v6 + 72);
    v56 = v16;
    sub_197664058(v1 + v16 + v55 * i, v11);
    switch(v3)
    {
      case 2:
        v58 = v17;
        v34 = [OUTLINED_FUNCTION_17_0() systemProtocols];
        v6 = sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
        v35 = sub_19774F120();

        sub_197652138(v35);
        OUTLINED_FUNCTION_6_2();
        v11 = 0;
        v17 = v57;
        v53 = v34;
        while (v11 != v34)
        {
          if (v1)
          {
            v36 = MEMORY[0x19A8E5210](v11, v50[0]);
          }

          else
          {
            if (v11 >= *(v60 + 16))
            {
              goto LABEL_57;
            }

            v36 = *(v59 + 8 * v11);
          }

          v13 = v36;
          v21 = __OFADD__(v11++, 1);
          if (v21)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

          if (v17)
          {
            v37 = v36;
            v3 = sub_19774F540();

            if (v3)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v38 = v1;
            if (*(v5 + 16))
            {
              v39 = *(v5 + 40);
              sub_19774F3F0();
              v40 = *(v5 + 32);
              OUTLINED_FUNCTION_3_1();
              v1 = ~v42;
              while (1)
              {
                OUTLINED_FUNCTION_21_1(v41);
                if ((v43 & 1) == 0)
                {
                  break;
                }

                v3 = **(v5 + 48);
                v44 = sub_19774F400();

                v41 = 1;
                if (v44)
                {

                  goto LABEL_47;
                }
              }
            }

            v17 = v57;
            v1 = v38;
            v34 = v53;
          }
        }

LABEL_43:

LABEL_44:

        OUTLINED_FUNCTION_32();
        break;
      case 1:
        v30 = [OUTLINED_FUNCTION_17_0() systemProtocols];
        sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
        v31 = sub_19774F120();

        sub_19766372C(v31);
        sub_19766399C(v32, v5);
        LOBYTE(v31) = v33;

        if (v31)
        {
          goto LABEL_48;
        }

        break;
      case 0:
        v58 = v17;
        v18 = [OUTLINED_FUNCTION_17_0() systemProtocols];
        v6 = sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
        v19 = sub_19774F120();

        sub_197652138(v19);
        OUTLINED_FUNCTION_6_2();
        v11 = 0;
        v17 = v57;
        v53 = v18;
        while (v11 != v18)
        {
          if (v1)
          {
            v20 = MEMORY[0x19A8E5210](v11, v50[0]);
          }

          else
          {
            if (v11 >= *(v60 + 16))
            {
              goto LABEL_56;
            }

            v20 = *(v59 + 8 * v11);
          }

          v13 = v20;
          v21 = __OFADD__(v11++, 1);
          if (v21)
          {
            goto LABEL_55;
          }

          if (v17)
          {
            v22 = v20;
            v13 = sub_19774F540();

            if (v13)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v23 = v1;
            if (*(v5 + 16))
            {
              v24 = *(v5 + 40);
              sub_19774F3F0();
              v25 = *(v5 + 32);
              OUTLINED_FUNCTION_3_1();
              v1 = ~v27;
              while (1)
              {
                OUTLINED_FUNCTION_21_1(v26);
                if ((v28 & 1) == 0)
                {
                  break;
                }

                v3 = **(v5 + 48);
                v29 = sub_19774F400();

                v26 = 1;
                if (v29)
                {

                  goto LABEL_44;
                }
              }
            }

            v17 = v57;
            v1 = v23;
            v18 = v53;
          }
        }

LABEL_46:

LABEL_47:

        OUTLINED_FUNCTION_32();
LABEL_48:
        sub_197664118(v11, v51);
        v45 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v45;
        v62 = v45;
        v58 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1976A5998(0, *(v45 + 16) + 1, 1);
          v47 = v62;
        }

        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1976A5998(v48 > 1, v49 + 1, 1);
          v47 = v62;
        }

        *(v47 + 16) = v49 + 1;
        v52 = v47;
        sub_197664118(v51, v47 + v56 + v49 * v55);
        v12 = v58;
        goto LABEL_4;
    }

    sub_1976640BC(v11);
  }

  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976632E8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_19774F500();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_197663308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  sub_19765FEDC(v33);
  a14 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
  sub_19764B5C8(&qword_1ED6972C8, &unk_1EAF3FF30, &unk_19775A950);
  v35 = sub_19774EEB0();
  v37 = v36;

  a14 = 0;
  a15 = 0xE000000000000000;
  sub_19774F5B0();
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x19A8E4C40]();
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x19A8E4C40](0xD000000000000010);
  MEMORY[0x19A8E4C40](8236, 0xE200000000000000);
  MEMORY[0x19A8E4C40](0x696669746E656469, 0xEA00000000007265);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x19A8E4C40](0x736E6F69746361, 0xE700000000000000);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x19A8E4C40](0x736E6F69746361, 0xE700000000000000);
  MEMORY[0x19A8E4C40](46, 0xE100000000000000);
  MEMORY[0x19A8E4C40](0x617461646174656DLL, 0xE800000000000000);
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x19A8E4C40]();
  MEMORY[0x19A8E4C40](v35, v37);

  a20 = MEMORY[0x1E69E7CC0];
  sub_1976C2F2C();

  if (v30)
  {
LABEL_18:
    OUTLINED_FUNCTION_39();
    return;
  }

  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      sub_19764EA8C();
      v39 = v38;
      if (!v38)
      {
        sub_1976627B8(v41);

        goto LABEL_18;
      }

      if (*(v38 + 16) == 2)
      {
        sub_19766567C(v38 + 32, &a14, &unk_1EAF3FEB0, &unk_19775A8C0);
        if (!a17)
        {
          goto LABEL_12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
        if (swift_dynamicCast())
        {
          break;
        }
      }

LABEL_10:
    }

    if (*(v39 + 16) < 2uLL)
    {
      break;
    }

    sub_19766567C(v39 + 72, &a14, &unk_1EAF3FEB0, &unk_19775A8C0);

    if (a17)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v40 = objc_allocWithZone(MEMORY[0x1E69AC858]);
      OUTLINED_FUNCTION_34_0();
      sub_197663E14();
      MEMORY[0x19A8E4D30]();
      if (*((a20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19774F140();
      }

      sub_19774F170();
      v41 = a20;
    }

    else
    {
LABEL_12:

      sub_197665DE0(&a14, &unk_1EAF3FEB0, &unk_19775A8C0);
    }
  }

  __break(1u);
}

void sub_19766372C(uint64_t a1)
{
  v2 = sub_197652138(a1);
  v3 = sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  v4 = sub_197665D90(&qword_1ED696D40, &qword_1ED696D90, 0x1E69ACA48);
  v8[1] = MEMORY[0x19A8E4E20](v2, v3, v4);
  v5 = sub_197652138(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8E5210](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_197664518(v8, v7, &qword_1ED696D90, 0x1E69ACA48, &qword_1EAF3F770, &qword_19775A8D0);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_197663870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v26 = sub_197652138(v24);
  v27 = sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
  v28 = sub_197665D90(&qword_1EAF3F7A0, &unk_1ED696D80, 0x1E69AC858);
  a10 = MEMORY[0x19A8E4E20](v26, v27, v28);
  v29 = sub_197652138(v25);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {

      OUTLINED_FUNCTION_18();
      return;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x19A8E5210](i, v25);
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v31 = *(v25 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_197664518(&a9, v31, &unk_1ED696D80, 0x1E69AC858, &qword_1EAF3F798, &qword_19775A908);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_19766399C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_19774F500();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_19774F500();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return;
  }

  if (v4)
  {

    sub_19774F4C0();
    sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
    sub_197665D90(&qword_1ED696D40, &qword_1ED696D90, 0x1E69ACA48);
    v6 = a1 & 0xC000000000000001;
    sub_19774F210();
    v2 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);

    v10 = 0;
  }

  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  v27 = v6;
  v15 = (v9 + 64) >> 6;
  v29 = v2;
  v28 = v8;
LABEL_15:
  while (v2 < 0)
  {
    if (!sub_19774F530())
    {
LABEL_34:
      sub_197651EE4();
      return;
    }

    swift_dynamicCast();
    v20 = v11;
    v18 = v31;
    v30 = v20;
    if (!v6)
    {
LABEL_26:
      if (*(a1 + 16))
      {
        v21 = *(a1 + 40);
        v22 = sub_19774F3F0();
        v23 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v24 = v22 & v23;
          if (((*(a1 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = *(*(a1 + 48) + 8 * v24);
          v26 = sub_19774F400();

          v22 = v24 + 1;
          if (v26)
          {

            v8 = v28;
            v2 = v29;
            v6 = v27;
            v11 = v30;
            goto LABEL_15;
          }
        }
      }

LABEL_32:
      sub_197651EE4();
      return;
    }

LABEL_22:
    v19 = sub_19774F540();

    v11 = v30;
    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v16 = v11;
  if (v11)
  {
LABEL_21:
    v30 = (v16 - 1) & v16;
    v31 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v31;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_34;
    }

    v16 = *(v8 + 8 * v10);
    ++v17;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

id sub_197663CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_19774EF20();

  v9 = sub_19774EAD0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v9) != 1)
  {
    v10 = sub_19774EA60();
    (*(*(v9 - 8) + 8))(a4, v9);
  }

  v11 = [v5 initWithType:a1 bundleIdentifier:v8 url:v10];

  return v11;
}

id sub_197663DA8(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v3 = [v1 initWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_197663E14()
{
  v1 = sub_19774EF20();

  v2 = sub_19774EF20();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

void sub_197663E9C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_12(v8);
    if (v5)
    {
      v11 = sub_197677A50();
      v12 = *(v11 + 52);
      v13 = (*(v11 + 48) + 7) & 0x1FFFFFFF8;
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v4;
      v14[3] = 2 * ((v15 - 32) / 8);
      if (a1)
      {
LABEL_9:
        v16 = OUTLINED_FUNCTION_11();
        sub_1976599A4(v16, v17, v18);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v14 + 4, (a4 + 32), 8 * v4);
    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_13_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_197663F70(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_12(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7A8, &unk_19775A910);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 48);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_11();
        sub_1976A5930(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_13_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_197664058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1976640BC(uint64_t a1)
{
  v2 = type metadata accessor for LNActionRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197664118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19766417C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_19775A870;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1976643D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_19774F930();
  sub_19774EFF0();
  sub_19774F950();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_3_1();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_19774F7E0() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_197665130(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_197664518(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_19774F510();

    if (v17)
    {

      sub_197648238(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_19774F500();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_19766496C(v15, result + 1, a5, a6, a3, a4);
        if (*(v27 + 24) <= *(v27 + 16))
        {
          sub_197664DA8();
        }

        v28 = v16;
        sub_197664F38(v28, v27);

        *v11 = v27;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_197648238(0, a3, a4);
    v19 = *(v14 + 40);
    sub_19774F3F0();
    v20 = *(v14 + 32);
    OUTLINED_FUNCTION_3_1();
    v23 = ~v22;
    while (1)
    {
      v24 = v21 & v23;
      if (((*(v14 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
      {
        v29 = *v11;
        swift_isUniquelyReferenced_nonNull_native();
        v35 = *v11;
        v30 = a2;
        sub_197665298();
        *v11 = v35;
        *a1 = v30;
        return 1;
      }

      v25 = *(*(v14 + 48) + 8 * v24);
      v26 = sub_19774F400();

      if (v26)
      {
        break;
      }

      v21 = v24 + 1;
    }

    v31 = *(*(v14 + 48) + 8 * v24);
    *a1 = v31;
    v32 = v31;
    return 0;
  }

  return result;
}

uint64_t sub_197664770(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7B8, &qword_19775A930);
    v2 = sub_19774F580();
    v15 = v2;
    sub_19774F4C0();
    while (1)
    {
      if (!sub_19774F530())
      {

        return v2;
      }

      sub_19774E960();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_197664DA8();
      }

      v2 = v15;
      v3 = *(v15 + 40);
      result = sub_19774F3F0();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_19766496C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_19774F580();
    v21 = v8;
    sub_19774F4C0();
    while (1)
    {
      if (!sub_19774F530())
      {

        return v8;
      }

      sub_197648238(0, a5, a6);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        sub_197664DA8();
      }

      v8 = v21;
      v9 = *(v21 + 40);
      result = sub_19774F3F0();
      v11 = v21 + 56;
      v12 = -1 << *(v21 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v21 + 48) + 8 * v15) = v20;
      ++*(v21 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_197664B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F790, &qword_19775A900);
  result = sub_19774F570();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_19766417C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_19774F930();
    sub_19774EFF0();
    result = sub_19774F950();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_197664DA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_0(v2, v3, v4);
  OUTLINED_FUNCTION_8_1();
  v5 = sub_19774F570();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    OUTLINED_FUNCTION_43();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_10();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    v28 = *(v1 + 32);
    OUTLINED_FUNCTION_35();
    if (v29 >= 64)
    {
      sub_19766417C(0, (v29 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_3_1();
      *v8 = v30;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_31();
LABEL_12:
    v18 = *(*(v1 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = *(v6 + 40);
    v20 = sub_19774F3F0() & ~(-1 << *(v6 + 32));
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_30();
LABEL_21:
    OUTLINED_FUNCTION_36();
    *(v13 + v25) |= v26;
    OUTLINED_FUNCTION_22(v27);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_29();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (*(v13 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_38();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_197664F38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_19774F3F0();
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_3_1();
  result = sub_19774F4A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_197664FB8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_197664DA8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1976659C0();
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_19774F3F0();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_19774E960();
        v16 = *(*(v12 + 48) + 8 * a2);
        v17 = sub_19774F400();

        if (v17)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_197665550(&qword_1EAF3F7B8, &qword_19775A930);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_19774F890();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_197665130(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_197664B4C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_19766578C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_19774F930();
      sub_19774EFF0();
      result = sub_19774F950();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_19774F7E0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1976653E4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_19774F890();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_197665298()
{
  OUTLINED_FUNCTION_19();
  v5 = v4;
  v7 = v6;
  v8 = *(*v0 + 16);
  v9 = *(*v0 + 24);
  if (v9 <= v8 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_197664DA8();
      goto LABEL_8;
    }

    if (v9 <= v8)
    {
      sub_1976659C0();
LABEL_8:
      v10 = *v0;
      v11 = *(*v0 + 40);
      sub_19774F3F0();
      v12 = *(v10 + 32);
      OUTLINED_FUNCTION_3_1();
      v15 = ~v14;
      while (1)
      {
        v5 = v13 & v15;
        if (((*(v10 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v15)) & 1) == 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_27_0();
        v16 = *(*(v10 + 48) + 8 * v5);
        v17 = sub_19774F400();

        if (v17)
        {
          goto LABEL_15;
        }

        v13 = v5 + 1;
      }
    }

    sub_197665550(v2, v3);
  }

LABEL_12:
  v18 = *v0;
  *(*v0 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  *(*(v18 + 48) + 8 * v5) = v7;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_15:
    sub_19774F890();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
    OUTLINED_FUNCTION_18();
  }
}

void *sub_1976653E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F790, &qword_19775A900);
  v2 = *v0;
  v3 = sub_19774F560();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void sub_197665550(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19774F560();
  if (*(v4 + 16))
  {
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_35();
    v9 = (v8 + 63) >> 6;
    if (v5 != v4 || v7 >= v4 + 56 + 8 * v9)
    {
      memmove(v7, (v4 + 56), 8 * v9);
    }

    v11 = 0;
    *(v5 + 16) = *(v4 + 16);
    v12 = *(v4 + 32);
    OUTLINED_FUNCTION_35();
    v14 = *(v4 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_31();
LABEL_17:
        v22 = v18 | (v11 << 6);
        v23 = *(*(v4 + 48) + 8 * v22);
        *(*(v5 + 48) + 8 * v22) = v23;
        v24 = v23;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        goto LABEL_19;
      }

      ++v19;
      if (*(v4 + 56 + 8 * v11))
      {
        OUTLINED_FUNCTION_10();
        v16 = v21 & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v5;
  }
}

uint64_t sub_19766567C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_34_0();
  v9(v8);
  return a2;
}

uint64_t sub_1976656D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19766578C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F790, &qword_19775A900);
  result = sub_19774F570();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
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
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_19774F930();

        sub_19774EFF0();
        result = sub_19774F950();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1976659C0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9_0(v2, v3, v4);
  OUTLINED_FUNCTION_8_1();
  v5 = sub_19774F570();
  v6 = v5;
  if (*(v1 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v6 + 40);
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v18 = sub_19774F3F0() & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_30();
LABEL_21:
        OUTLINED_FUNCTION_36();
        *(v12 + v23) |= v24;
        OUTLINED_FUNCTION_22(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_29();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_38();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_10();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    OUTLINED_FUNCTION_18();
  }
}

uint64_t sub_197665B4C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_19774F4B0();
  }

  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  result = sub_19774F480();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_197665BA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_197665BC8(uint64_t a1, int a2, char a3, uint64_t a4, void *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v9 = OUTLINED_FUNCTION_8_1();
      v36 = MEMORY[0x19A8E5150](v9);
      v10 = OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_15(v10, v11, v12, v10, v13, v14, v15, v16, v36, v37);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_8_1();
    if (sub_19774F4E0() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_8_1();
      v17 = sub_19774F4F0();
      OUTLINED_FUNCTION_15(v17, v18, v19, v20, v21, v22, v23, v24, v17, v37);
      swift_dynamicCast();
      a5 = v38;
      v25 = *(a4 + 40);
      sub_19774F3F0();
      v26 = *(a4 + 32);
      OUTLINED_FUNCTION_3_1();
      v29 = ~v28;
      while (1)
      {
        v8 = v27 & v29;
        if (((*(a4 + 56 + (((v27 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v29)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v30 = *(*(a4 + 48) + 8 * v8);
        v31 = sub_19774F400();

        if (v31)
        {
          goto LABEL_15;
        }

        v27 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || (v32 = *(a4 + 32), OUTLINED_FUNCTION_35(), v33 <= v8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v34 = *(*(a4 + 48) + 8 * v8);

  v35 = v34;
}

uint64_t sub_197665D90(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_197648238(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197665DE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_32()
{
  v2 = *(v0 - 192);
  v1 = *(v0 - 184);
  v4 = *(v0 - 208);
  v3 = *(v0 - 200);
  v5 = *(v0 - 216);
  v6 = *(v0 - 120);
}

void *OUTLINED_FUNCTION_46_2(void *a1)
{

  return memcpy(a1, &STACK[0x308], 0xB0uLL);
}

uint64_t sub_197665ED8()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = sub_19774EF50();

  MEMORY[0x19A8E4C40](95, 0xE100000000000000);

  v4 = [v1 actionIdentifier];
  v5 = sub_19774EF50();
  v7 = v6;

  MEMORY[0x19A8E4C40](v5, v7);

  return v3;
}

uint64_t sub_197666018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000019, 0x8000000197760650, v0, v1);
}

uint64_t sub_1976660B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_197666150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000019, 0x8000000197760630, v0, v1);
}

uint64_t sub_1976661EC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EAF3F430 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43E30, sizeof(__dst));
  memcpy(v29, &unk_1EAF43E30, sizeof(v29));
  if (qword_1EAF3F440 != -1)
  {
    swift_once();
  }

  memcpy(v23, __dst, sizeof(v23));
  sub_197649968(qword_1EAF43EF8, unk_1EAF43F00, qword_1EAF43F08, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v2, v3, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v27 = v10;
  v28 = &off_1F0BBB748;
  v24 = v5;
  v25 = v7;
  v26 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19775A850;
  if (qword_1EAF3F438 != -1)
  {
    swift_once();
  }

  memcpy(v23, __dst, sizeof(v23));
  sub_197649968(qword_1EAF43EE0, *algn_1EAF43EE8, qword_1EAF43EF0, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v12, v13, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  *(v11 + 56) = v10;
  *(v11 + 64) = &off_1F0BBB748;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
  if (qword_1EAF3F448 != -1)
  {
    swift_once();
  }

  memcpy(v23, __dst, sizeof(v23));
  sub_197649968(qword_1EAF43F10, *algn_1EAF43F18, qword_1EAF43F20, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v17, v18, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  *(v11 + 96) = v10;
  *(v11 + 104) = &off_1F0BBB748;
  *(v11 + 72) = v19;
  *(v11 + 80) = v20;
  *(v11 + 88) = v21;
  a1[3] = &unk_1F0BBACF0;
  a1[4] = &off_1F0BBAB00;
  *a1 = swift_allocObject();
  sub_19764B838(&v24, v11, &unk_1F0BBACF0, &off_1F0BBAAE8);
  swift_setDeallocating();
  sub_19764F1B0();
  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

char *sub_1976664D4(uint64_t a1)
{
  sub_1976661EC(v35);
  sub_19764E1F4(v35, v32);
  v27 = v34;
  v28 = v33;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v36 = a1;
  v2 = sub_197652138(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    *&v29 = MEMORY[0x1E69E7CC0];
    result = sub_19764AD60(0, v2 & ~(v2 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v3 = v29;
    v7 = v36 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v8 = MEMORY[0x19A8E5210](v6, v36);
      }

      else
      {
        v8 = *(v36 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = sub_197665ED8();
      v12 = v11;

      *&v29 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_19764AD60((v13 > 1), v14 + 1, 1);
        v3 = v29;
      }

      ++v6;
      *(v3 + 16) = v14 + 1;
      v15 = v3 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v6);
  }

  *&v29 = v3;
  if (qword_1EAF3F438 != -1)
  {
    swift_once();
  }

  v16 = qword_1EAF43EE0;
  v17 = *algn_1EAF43EE8;
  v18 = qword_1EAF43EF0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
  v20 = sub_19764B5C8(&qword_1EAF3F7D0, &unk_1EAF3FF30, &unk_19775A950);
  v21 = sub_1976CEAB0(v16, v17, v18, v19, v20, &off_1ED697020);
  v23 = v22;
  v25 = v24;

  v30 = v28;
  v31 = v27;
  __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_1976C2388(v21, v23, v25, v28, v27);

  __swift_destroy_boxed_opaque_existential_0(v35);
  sub_19764C774(&v29, v35);
  __swift_destroy_boxed_opaque_existential_0(v32);
  v26 = sub_197666774(v35);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v26;
}

uint64_t sub_197666774(void *a1)
{
  v3 = sub_19764C978(a1);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);

    sub_1976BF5D8();
    v2 = v5;
  }

  return v2;
}

id sub_197666880()
{
  if (qword_1EAF3F440 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (qword_1EAF3F448 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  sub_197666B24();
  v0 = sub_19774F3C0();

  v1 = [v0 phraseMetadata];
  v2 = [v1 actionIdentifier];

  sub_19774EF50();
  v3 = objc_allocWithZone(MEMORY[0x1E69AC6E8]);
  return sub_197666A60();
}

id sub_197666A60()
{
  v1 = sub_19774EF20();

  v2 = sub_19774EF20();

  v3 = [v0 initWithBundleIdentifier:v1 actionIdentifier:v2];

  return v3;
}

uint64_t sub_197666AF0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

unint64_t sub_197666B24()
{
  result = qword_1EAF3F7D8;
  if (!qword_1EAF3F7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF3F7D8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_197666B74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197666BB4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_197666C54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_197666D28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  OUTLINED_FUNCTION_12_0();
  v3 = sub_1976496B4(v0, v1, v2);
  return OUTLINED_FUNCTION_9_1(v3);
}

uint64_t sub_197666E10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  OUTLINED_FUNCTION_12_0();
  v3 = sub_1976496B4(v0, v1, v2);
  return OUTLINED_FUNCTION_9_1(v3);
}

void sub_197666E7C()
{
  OUTLINED_FUNCTION_8();
  v43 = v0;
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v52 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  if (qword_1ED696E90 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  v39 = v10;
  memcpy(v48, &unk_1EAF3EEE8, sizeof(v48));
  if (qword_1ED696E98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_5(&qword_1EAF3EF98);
  v45[0] = v6;
  v45[1] = v4;
  v41 = v12;
  v42 = v11;
  v40 = v13;
  v14 = sub_1976B7FC0();
  v16 = v15;
  v18 = v17;
  memcpy(v44, v48, sizeof(v44));
  sub_1976BB434(v14, v16, v18, &unk_1F0BBACF0, &off_1F0BBAB00, v19, v20, v21, v36, v37, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12], v44[13], v44[14], v44[15], v44[16], v44[17], v44[18], v44[19], v44[20], v44[21], v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7]);

  memcpy(v51, v45, sizeof(v51));
  v49 = v46;
  v50 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_19775A780;
  if (qword_1EAF3ED70 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v44[0] = qword_1EAF3ED78;
  *&v44[1] = unk_1EAF3ED80;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v24 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  sub_1976C78F8(v23, v24, (v22 + 32));

  v45[3] = &unk_1F0BBACF0;
  v45[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v25 = swift_allocObject();
  v45[0] = v25;
  memcpy((v25 + 16), v51, 0x88uLL);
  *(v25 + 152) = v22;
  v26 = v50;
  *(v25 + 160) = v49;
  *(v25 + 176) = v26;
  v27 = v43;
  v28 = sub_19764C978(v45);
  __swift_destroy_boxed_opaque_existential_0(v45);
  if (!v27)
  {
    LOBYTE(v44[0]) = 0;
    v43 = v28;
    while (1)
    {
      sub_19764EA8C();
      if (!v29)
      {
        break;
      }

      if (v44[0])
      {

        break;
      }

      v30 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_7_1();
      sub_19765272C();
      v31 = v45[1];
      if (qword_1ED696E88 != -1)
      {
        OUTLINED_FUNCTION_2_3();
        swift_once();
      }

      OUTLINED_FUNCTION_5(&qword_1EAF3EED0);
      sub_19765272C();
      v36 = v31;

      sub_197668968();
      v32 = sub_19774EAD0();
      v33 = v39;
      __swift_storeEnumTagSinglePayload(v39, 1, 1, v32);
      v34 = sub_19774F2F0();
      sub_19765D558(v33);

      v37(v34, v44);

      objc_autoreleasePoolPop(v30);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
}

uint64_t sub_197667384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v7 - v2;
  if (qword_1ED696E98 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v4 = v7[2];
  if (qword_1ED696E88 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  sub_197668968();
  v5 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_19774F2F0();
  sub_19765D558(v3);

  return v4;
}

void sub_197667568()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v59 - v7;
  v9 = sub_19766E2D0(v4, v2);
  if (v0)
  {
LABEL_23:
    OUTLINED_FUNCTION_9();
  }

  else
  {
    v13 = v9;
    v64 = v11;
    v65 = v12;
    v14 = v10;
    v63 = v8;
    if (qword_1ED696E90 != -1)
    {
      OUTLINED_FUNCTION_1_3();
    }

    memcpy(v68, &unk_1EAF3EEE8, sizeof(v68));
    sub_1976BEF98();
    v67[3] = &unk_1F0BBACF0;
    v67[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v67[0] = swift_allocObject();
    memcpy((v67[0] + 16), v73, 0xB0uLL);
    sub_1976BB388();
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_4_0();
    sub_1976C7FD0();
    v67[0] = v13;
    v67[1] = v14;
    v15 = sub_1976B7FC0();
    v17 = v16;
    v19 = v18;

    memcpy(v66, v69, sizeof(v66));
    sub_1976BB434(v15, v17, v19, &unk_1F0BBACF0, &off_1F0BBAB00, v20, v21, v22, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v66[12], v66[13], v66[14], v66[15], v66[16], v66[17], v66[18], v66[19], v66[20], v66[21], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8]);

    memcpy(v70, v69, sizeof(v70));
    sub_19764BBBC(v70);
    OUTLINED_FUNCTION_4_0();
    sub_1976C7FD0();
    v69[0] = v64;
    v69[1] = v65;
    v23 = sub_1976B7FC0();
    v25 = v24;
    v27 = v26;

    memcpy(v66, v67, sizeof(v66));
    sub_1976BB434(v23, v25, v27, &unk_1F0BBACF0, &off_1F0BBAB00, v28, v29, v30, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v66[12], v66[13], v66[14], v66[15], v66[16], v66[17], v66[18], v66[19], v66[20], v66[21], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8]);

    memcpy(v71, v67, sizeof(v71));
    sub_19764BBBC(v71);
    memcpy(v72, v69, sizeof(v72));
    v69[3] = &unk_1F0BBACF0;
    v69[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v69[0] = swift_allocObject();
    memcpy((v69[0] + 16), v72, 0xB0uLL);
    v31 = sub_19764C978(v69);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v32 = sub_197668968();
    v33 = MEMORY[0x1E69E6158];
    v64 = v32;
    v62 = sub_19774EE40();
    for (i = LNOpenURLRequest.info; ; i = (LNOpenURLRequest + 32))
    {
      while (1)
      {
        sub_19764EA8C();
        if (!v35)
        {

          goto LABEL_23;
        }

        v36 = i[467];

        if (v36 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        OUTLINED_FUNCTION_7();
        if (!v36)
        {
          break;
        }
      }

      v65 = v69[0];
      v74 = v69[1];
      if (qword_1ED696E88 != -1)
      {
        OUTLINED_FUNCTION_2_3();
        swift_once();
      }

      OUTLINED_FUNCTION_5(&qword_1EAF3EED0);
      OUTLINED_FUNCTION_7();
      v37 = v31;
      v38 = v33;

      v39 = sub_19774EAD0();
      v40 = v63;
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v39);
      v41 = sub_19774F2F0();
      sub_19765D558(v40);

      v61 = v41;
      v42 = v62;
      HIDWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v42;
      v43 = sub_19764EA74(v65, v74);
      v44 = *(v42 + 16);
      LODWORD(v62) = v45;
      if (__OFADD__(v44, (v45 & 1) == 0))
      {
        break;
      }

      v46 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F810, &qword_19775A9B8);
      if (sub_19774F6F0())
      {
        v47 = sub_19764EA74(v65, v74);
        v49 = v62;
        if ((v62 & 1) != (v48 & 1))
        {
          goto LABEL_27;
        }

        v50 = v47;
        v33 = v38;
        v31 = v37;
      }

      else
      {
        v50 = v46;
        v33 = v38;
        v31 = v37;
        v49 = v62;
      }

      if (v49)
      {

        v62 = v69[0];
        v51 = *(v69[0] + 56);
        v65 = *(v51 + 8 * v50);
        v52 = v61;
        *(v51 + 8 * v50) = v61;
      }

      else
      {
        v53 = v69[0];
        *(v69[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
        v54 = (v53[6] + 16 * v50);
        *v54 = v65;
        v54[1] = v74;
        v55 = v61;
        *(v53[7] + 8 * v50) = v61;

        v56 = v53[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_26;
        }

        v62 = v53;
        v53[2] = v58;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_19774F8A0();
    __break(1u);
  }
}

void sub_197667C80()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_1ED696E90 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  memcpy(v33, &unk_1EAF3EEE8, 0xB0uLL);
  if (v6)
  {
    sub_19764DFC8(v33, v31);
    if (qword_1ED696E98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    OUTLINED_FUNCTION_5(&qword_1EAF3EF98);
    v31[0] = v8;
    v31[1] = v6;
    sub_1976B7FC0();
    memcpy(v30, v33, sizeof(v30));
    v9 = OUTLINED_FUNCTION_7_1();
    sub_1976BB434(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14]);

    sub_19764BBBC(v33);
    v17 = v31;
  }

  else
  {
    sub_19764DFC8(v33, v31);
    v17 = v33;
  }

  memcpy(v32, v17, sizeof(v32));
  if (v2)
  {
    if (qword_1EAF3F450 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5(qword_1EAF3F7E0);
    v30[0] = v4;
    v30[1] = v2;
    v18 = sub_1976B7FC0();
    v20 = v19;
    v22 = v21;
    memcpy(v29, v32, sizeof(v29));
    sub_1976BB434(v18, v20, v22, &unk_1F0BBACF0, &off_1F0BBAB00, v23, v24, v25, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14]);

    sub_19764BBBC(v32);
    v26 = v30;
  }

  else
  {
    v26 = v32;
  }

  memcpy(v31, v26, sizeof(v31));
  v30[3] = &unk_1F0BBACF0;
  v30[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v30[0] = swift_allocObject();
  memcpy((v30[0] + 16), v31, 0xB0uLL);
  sub_19764C978(v30);
  v27 = __swift_destroy_boxed_opaque_existential_0(v30);
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v27);

    sub_1976BF5D8();
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_197667FD8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_197668010()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_1ED696E90 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  memcpy(__dst, &unk_1EAF3EEE8, sizeof(__dst));
  if (qword_1ED696E98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF3EF98);
  __src[0] = v8;
  __src[1] = v6;
  v9 = sub_1976B7FC0();
  v11 = v10;
  v13 = v12;
  if (qword_1EAF3ED70 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF3ED78);
  __src[0] = v4;
  __src[1] = v2;
  v14 = sub_1976B7FC0();
  sub_1976B9D9C(v9, v11, v13, v14, v15, v16);

  memcpy(v25, __dst, sizeof(v25));
  v17 = OUTLINED_FUNCTION_7_1();
  sub_1976BB434(v17, v18, v19, &unk_1F0BBACF0, &off_1F0BBAB00, v20, v21, v22, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v28, __src, sizeof(v28));
  __src[3] = &unk_1F0BBACF0;
  __src[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v28, 0xB0uLL);
  v23 = sub_1976C0920(__src);
  __swift_destroy_boxed_opaque_existential_0(__src);
  if (!v0 && v23)
  {
    sub_197667384();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9();
}

void sub_197668288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197660250(a1, a2, a3, a4, 0x73656972657571, 0xE700000000000000, 0xD000000000000010, 0x80000001977604F0, 0x6564497972657571, 0xEF7265696669746ELL, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000197760510);
  if (!v4 && v5)
  {
    sub_197668010();
  }

  OUTLINED_FUNCTION_12_0();
}

void sub_1976683BC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  i = v6;
  v61 = v8;
  if (qword_1ED696E90 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    memcpy(v60, &unk_1EAF3EEE8, 0xB0uLL);
    if (i)
    {
      sub_19764DFC8(v60, v58);
      v9 = i;
      v10 = sub_19774F280();
      if (v1)
      {

        memcpy(v59, v60, sizeof(v59));
        v1 = 0;
      }

      else
      {
        v12 = v10;
        v13 = v11;
        v14 = v3;
        memcpy(v56, v60, sizeof(v56));
        if (qword_1EAF3ED98 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_5(qword_1EAF3EDA0);
        v58[0] = v12;
        v58[1] = v13;
        v15 = sub_19764FAF0();
        v17 = v16;
        v19 = v18;

        sub_1976BB434(v15, v17, v19, &unk_1F0BBACF0, &off_1F0BBAB00, v20, v21, v22, v51, v52, v53, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17], v55[18], v55[19], v55[20], v55[21], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12]);

        memcpy(v58, v56, sizeof(v58));
        sub_19764BBBC(v58);
        memcpy(v59, v57, sizeof(v59));
        v3 = v14;
      }
    }

    else
    {
      sub_19764DFC8(v60, v58);
      memcpy(v59, v60, sizeof(v59));
    }

    if (v5)
    {
      v23 = v5;
      v24 = sub_19774F280();
      if (v1)
      {

        memcpy(v58, v59, sizeof(v58));
        v1 = 0;
      }

      else
      {
        v26 = v24;
        v27 = v25;
        v28 = v3;
        memcpy(v55, v59, sizeof(v55));
        if (qword_1EAF3F460 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_5(qword_1EAF3F7F8);
        v57[0] = v26;
        v57[1] = v27;
        v29 = sub_19764FAF0();
        v31 = v30;
        v33 = v32;

        sub_1976BB434(v29, v31, v33, &unk_1F0BBACF0, &off_1F0BBAB00, v34, v35, v36, v51, v52, v53, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17], v55[18], v55[19], v55[20], v55[21], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12]);

        memcpy(v57, v55, sizeof(v57));
        sub_19764BBBC(v57);
        memcpy(v58, v56, sizeof(v58));
        v3 = v28;
      }
    }

    else
    {
      memcpy(v58, v59, sizeof(v58));
    }

    v57[3] = &unk_1F0BBACF0;
    v57[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v57[0] = swift_allocObject();
    memcpy((v57[0] + 16), v58, 0xB0uLL);
    sub_19764C978(v57);
    v37 = __swift_destroy_boxed_opaque_existential_0(v57);
    if (v1)
    {
      break;
    }

    MEMORY[0x1EEE9AC00](v37);

    sub_1976BF5D8();
    v5 = v38;

    v39 = 0;
    v40 = v5[2];
    v41 = v5 + 6;
    v52 = (v5 + 6);
    v53 = MEMORY[0x1E69E7CC0];
LABEL_19:
    for (i = &v41[3 * v39]; ; i += 3)
    {
      if (v40 == v39)
      {

        goto LABEL_18;
      }

      if (v39 >= v5[2])
      {
        break;
      }

      v42 = *(i - 2);
      v3 = *(i - 1);
      v43 = *i;

      v44 = v43;
      if ((v61 & ~[v44 capabilities]) == 0)
      {
        v45 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57[0] = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1976A59B8(0, *(v53 + 16) + 1, 1);
          v45 = v57[0];
        }

        v41 = v5 + 6;
        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v54 = v48 + 1;
          v51 = *(v45 + 16);
          sub_1976A59B8((v47 > 1), v48 + 1, 1);
          v41 = v5 + 6;
          v49 = v54;
          v48 = v51;
          v45 = v57[0];
        }

        ++v39;
        *(v45 + 16) = v49;
        v53 = v45;
        v50 = (v45 + 24 * v48);
        v50[4] = v42;
        v50[5] = v3;
        v50[6] = v44;
        goto LABEL_19;
      }

      ++v39;
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_1_3();
  }

LABEL_18:
  OUTLINED_FUNCTION_9();
}

unint64_t sub_197668968()
{
  result = qword_1ED696E48;
  if (!qword_1ED696E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696E48);
  }

  return result;
}

uint64_t sub_1976689AC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

void sub_197668A30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = v5;
  v16[4] = sub_197669AB8;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1976A7FD0;
  v16[3] = &block_descriptor_21;
  v12 = _Block_copy(v16);

  v13 = a2;

  v14 = a3;
  v15 = v5;

  [v15 getConnectionInterfaceWithOptions:0 completionHandler:v12];
  _Block_release(v12);
}

void sub_197668B50(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8)
{
  v16 = sub_19774EBF0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (a2)
    {
      v31 = a2;
    }

    else
    {
      v31 = LNConnectionErrorWithCode(1003);
    }

    v37 = a2;
    a3(0, v31);
    v38 = v31;
    goto LABEL_41;
  }

  v75 = a1;
  *&v76 = a7;
  v71 = v19;
  v72 = a8;
  v73 = a3;
  v74 = a4;
  swift_unknownObjectRetain();
  v77 = a5;
  v20 = [a5 isTransient];
  v21 = sub_197652138(a6);
  v22 = 0;
  v23 = a6 & 0xC000000000000001;
  while (1)
  {
    v24 = v22;
    if (v21 == v22)
    {
LABEL_11:
      v28 = v77;
      v29 = [v77 transferableContentTypes];
      if (v29)
      {

        v30 = v76;
        if (v21 != v24)
        {
          goto LABEL_37;
        }

LABEL_19:
        [v30 auditToken];
        if (LNAuditTokenIsValid(&v80))
        {
          v36 = v30;
        }

        else
        {
          v39 = [objc_opt_self() processInfo];
          [v39 if_auditToken];
          v76 = v80;
          v70 = v81;

          v80 = v76;
          v81 = v70;
          v36 = [v30 configurationWithAuditToken_];
        }

        v40 = v36;
        if (v20)
        {
          v41 = v71;
          sub_19774EBE0();
          v42 = v75;
          swift_unknownObjectRetain();
          v43 = v72;
          v44 = [v72 queue];
          v45 = swift_allocObject();
          *(v45 + 16) = "appintent:export transferable entities";
          *(v45 + 24) = 38;
          *(v45 + 32) = 2;
          *(v45 + 40) = &dword_19763D000;
          objc_allocWithZone(type metadata accessor for LNExportTransientEntitiesOperation());

          v46 = v40;

          v48 = sub_197669340(v41, v42, 1, v44, sub_197669C04, v45, a6, v46, v73, v47);
        }

        else
        {
          v49 = [objc_allocWithZone(LNQueryRequestOptions) init];
          [v49 setExportConfiguration_];
          v50 = sub_19765B49C(a6);
          v51 = MEMORY[0x1E69E7CC0];
          if (v50)
          {
            v52 = v50;
            *&v80 = MEMORY[0x1E69E7CC0];
            sub_19774F680();
            if (v52 < 0)
            {
              goto LABEL_46;
            }

            v53 = 0;
            do
            {
              if (v23)
              {
                v54 = MEMORY[0x19A8E5210](v53, a6);
              }

              else
              {
                v54 = *(a6 + 8 * v53 + 32);
              }

              v55 = v54;
              ++v53;
              v56 = [v54 identifier];

              sub_19774F650();
              v57 = *(v80 + 16);
              sub_19774F690();
              sub_19774F6A0();
              sub_19774F660();
            }

            while (v52 != v53);
            v51 = v80;
          }

          sub_197648238(0, &qword_1EAF3F8B8, off_1E74AF380);
          v80 = v51;
          v81 = 0uLL;
          v78[1] = 0;
          v78[2] = 0;
          v78[0] = v77;
          v79 = 0;
          v58 = v77;
          v59 = v49;
          v60 = LNConfigurableQueryRequest.init(query:target:options:)(&v80, v78, v59);
          v61 = v75;
          swift_unknownObjectRetain();
          v62 = v72;
          v63 = [v72 queue];
          v64 = swift_allocObject();
          v65 = v74;
          *(v64 + 16) = v73;
          *(v64 + 24) = v65;
          v66 = objc_allocWithZone(LNPerformConfigurableQueryConnectionOperation);

          v43 = v62;
          v48 = sub_197669AC8(v61, v60, v63, sub_197669BFC, v64);
        }

        [v43 enqueueConnectionOperation_];

        swift_unknownObjectRelease();
        return;
      }

      v32 = [v28 systemProtocolMetadata];
      type metadata accessor for LNSystemEntityProtocolIdentifier(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F8A8, &qword_19775AA38);
      sub_197669BA4();
      v33 = sub_19774EE30();

      v30 = v76;
      if (*(v33 + 16))
      {
        sub_19768F350(*MEMORY[0x1E69AC2B8]);
        v35 = v34;

        if (v21 == v24 && (v35 & 1) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

LABEL_37:
      if (a2)
      {
        v67 = a2;
      }

      else
      {
        v67 = LNConnectionErrorWithCode(1007);
      }

      v68 = v73;
      v69 = a2;
      v68(0, v67);
      swift_unknownObjectRelease();
      v38 = v67;
LABEL_41:

      return;
    }

    if (v23)
    {
      v25 = MEMORY[0x19A8E5210](v22, a6);
    }

    else
    {
      if (v22 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v25 = *(a6 + 8 * v22 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v27 = [v25 isTransient];

    v22 = v24 + 1;
    if (v20 != v27)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_1976691B4(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = [v4 value];
    a3();
  }

  else
  {
    a3();
  }
}

id sub_197669340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = &v11[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_completionHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v11[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_entities] = a7;
  *&v11[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_exportConfiguration] = a8;
  *v17 = a9;
  *(v17 + 1) = a10;
  v18 = a8;

  v19 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_30;
  v20 = _Block_copy(aBlock);

  v25.receiver = v11;
  v25.super_class = type metadata accessor for LNExportTransientEntitiesOperation();
  v21 = objc_msgSendSuper2(&v25, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v19, a2, a3, a4, v20);
  _Block_release(v20);

  swift_unknownObjectRelease();

  v22 = sub_19774EBF0();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v21;
}

void sub_1976694EC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LNExportTransientEntitiesOperation();
  objc_msgSendSuper2(&v10, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_entities];
  sub_197648238(0, &qword_1EAF3ECB0, 0x1E69AC7C8);

  v3 = sub_19774F110();

  v4 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_exportConfiguration];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v9[4] = sub_197669A8C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_197645E24;
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);
  v7 = v4;
  v8 = v0;

  [v1 exportTransientEntities:v3 withConfiguration:v7 completionHandler:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

void sub_1976696B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_completionHandler];
  if (v6)
  {
    v8 = v5[1];

    v6(a1, a2);
    sub_19764781C(v6);
    v9 = *v5;
    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_19764781C(v9);
  }

  if (a2)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LNExportTransientEntitiesOperation();
  objc_msgSendSuper2(&v12, sel_finishWithError_, v11);
}

void sub_197669780(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation_completionHandler];
  if (v5)
  {
    v6 = v4[1];

    v5(0, a1);
    sub_19764781C(v5);
    v7 = *v4;
    v8 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v7);
  }

  if (a1)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for LNExportTransientEntitiesOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

id sub_1976699C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNExportTransientEntitiesOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_197669AC8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_197645E24;
  v12[3] = &block_descriptor_33;
  v9 = _Block_copy(v12);
  v10 = [v5 initWithConnectionInterface:a1 query:a2 queue:a3 completionHandler:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);

  return v10;
}

unint64_t sub_197669BA4()
{
  result = qword_1EAF3F680;
  if (!qword_1EAF3F680)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3F680);
  }

  return result;
}

id static LNEntitlementsValidator.hasEntitlement<A>(_:equalTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_19774EF20();
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  (*(v8 + 32))(v13 + v12, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  aBlock[4] = sub_19766A018;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19766A054;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  v15 = [ObjCClassFromMetadata validateEntitlement:v11 forCurrentTaskWithValidator:v14];
  _Block_release(v14);

  return v15;
}

uint64_t sub_197669E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19774F420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17[-v9];
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19766A160(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F8C0, &qword_19775AA48);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a3);
    (*(v11 + 32))(v14, v10, a3);
    v15 = sub_19774EED0();
    (*(v11 + 8))(v14, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a3);
    (*(v6 + 8))(v10, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_19766A054(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a2;
    sub_19766A150(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  v5 = v4(v9);

  sub_19766A0E8(v9);
  return v5 & 1;
}

uint64_t sub_19766A0E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F8C0, &qword_19775AA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_19766A150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_19766A160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F8C0, &qword_19775AA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String_optional __swiftcall LNPropertyMetadata.spotlightAttributeKeyAsMDItemKey()()
{
  v1 = sub_19766A248(v0);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = static SpotlightKeyPathMapper.decode(_:)(v1);

  if (!v4)
  {
    v3 = 0;
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v3 = static SpotlightKeyPathMapper.mdItemKey(for:)();
  v6 = v5;

LABEL_6:
  v7 = v3;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_19766A248(void *a1)
{
  v1 = [a1 spotlightAttributeKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_19774EF50();

  return v3;
}

void sub_19766A2AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v7[5] = a1;
  v11[4] = sub_19766AD3C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1976A7FD0;
  v11[3] = &block_descriptor_18;
  v8 = _Block_copy(v11);

  v9 = v3;
  v10 = a1;

  [v9 getConnectionInterfaceWithOptions:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_19766A3AC(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5, void *a6)
{
  v12 = sub_19774EBF0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v16 = [a5 queue];
    v17 = swift_allocObject();
    *(v17 + 16) = "appintent:stage context";
    *(v17 + 24) = 23;
    *(v17 + 32) = 2;
    *(v17 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNStageContextOperation());
    v18 = a6;

    v19 = sub_19766A690(v15, a1, 1, v16, sub_197669C04, v17, v18, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    a3(0, a2);
  }
}

void sub_19766A5F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_19766ACF0();
    v5 = sub_19774F110();
  }

  if (a2)
  {
    v6 = sub_19774E9E0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_19766A690(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = &v10[OBJC_IVAR____TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation_completionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[OBJC_IVAR____TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation_request] = a7;
  *v16 = a8;
  *(v16 + 1) = a9;
  v17 = a7;

  v18 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_24;
  v19 = _Block_copy(aBlock);

  v24.receiver = v10;
  v24.super_class = type metadata accessor for LNStageContextOperation();
  v20 = objc_msgSendSuper2(&v24, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v18, a2, a3, a4, v19);
  _Block_release(v19);

  swift_unknownObjectRelease();

  v21 = sub_19774EBF0();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

void sub_19766A830()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LNStageContextOperation();
  objc_msgSendSuper2(&v8, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation_request];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_19766ACE8;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_19766AA30;
  v7[3] = &block_descriptor_2;
  v4 = _Block_copy(v7);
  v5 = v2;
  v6 = v0;

  [v1 stageContextWithRequest:v5 completionHandler:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_19766A968(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = &a3[OBJC_IVAR____TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation_completionHandler];
  v6 = *&a3[OBJC_IVAR____TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation_completionHandler];
  if (v6)
  {
    v8 = v5[1];

    v6(a1, a2);
    sub_19764781C(v6);
    v9 = *v5;
    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_19764781C(v9);
  }

  if (a2)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = a3;
  v12.super_class = type metadata accessor for LNStageContextOperation();
  objc_msgSendSuper2(&v12, sel_finishWithError_, v11);
}

uint64_t sub_19766AA30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_19766ACF0();
    v4 = sub_19774F120();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_19766AC3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNStageContextOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19766ACF0()
{
  result = qword_1EAF3F8E8;
  if (!qword_1EAF3F8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF3F8E8);
  }

  return result;
}

uint64_t LNTranscriptActionRecord.asBMAppIntentInvocation()()
{
  OUTLINED_FUNCTION_9_2();
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F8, &qword_19775AA70) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_19766AE20()
{
  OUTLINED_FUNCTION_18_0();
  v1 = [*(v0 + 72) predictions];
  sub_197648238(0, &qword_1EAF3ED58, 0x1E69AC690);
  v2 = sub_19774F120();
  *(v0 + 96) = v2;

  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  v4 = sub_197652138(v2);
  *(v0 + 104) = v4;
  *(v0 + 112) = v3;
  if (v4)
  {
    v5 = *(v0 + 96);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8E5210](0);
    }

    else
    {
      OUTLINED_FUNCTION_24_0(v4, v5);
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = *(v6 + 32);
    }

    *(v0 + 176) = v8;
    *(v0 + 184) = 1;
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_11_0(v9);

    sub_19766B980();
  }

  else
  {
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);

    *(v0 + 16) = sub_19765D460(v13);
    *(v0 + 24) = v14;
    *(v0 + 208) = [v13 source];
    v15 = [v13 executionUUID];
    sub_19774EBC0();

    v16 = sub_19774EBF0();
    OUTLINED_FUNCTION_22_0(v11, v17, v18, v16);
    v19 = [v13 executionDate];
    sub_19774EB50();

    v20 = sub_19774EB80();
    OUTLINED_FUNCTION_22_0(v12, v21, v22, v20);
    *(v0 + 120) = [v13 action];
    v23 = swift_task_alloc();
    *(v0 + 128) = v23;
    *v23 = v0;
    OUTLINED_FUNCTION_11_0(v23);

    sub_19766BBF4();
  }
}

uint64_t sub_19766B078()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *(v1 + 32) = v0;
  *(v1 + 40) = v3;
  v5 = *(v4 + 128);
  v6 = *(v4 + 120);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19766B170()
{
  OUTLINED_FUNCTION_9_2();
  *(v0 + 136) = [*(v0 + 72) resolvedAction];
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_11_0(v2);

  return sub_19766BBF4();
}

uint64_t sub_19766B210()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *(v1 + 48) = v0;
  *(v1 + 56) = v3;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19766B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_17_1();
  v13 = [*(v12 + 72) actionOutput];
  *(v12 + 152) = v13;
  if (v13)
  {
    v14 = swift_task_alloc();
    *(v12 + 160) = v14;
    *v14 = v12;
    OUTLINED_FUNCTION_11_0(v14);
    OUTLINED_FUNCTION_10_0();

    return LNActionOutput.asBMActionOutput.getter();
  }

  else
  {
    v17 = *(v12 + 56);
    v18 = *(v12 + 40);
    v19 = *(v12 + 16);
    v20 = *(v12 + 24);
    v21 = *(v12 + 112);
    v23 = *(v12 + 80);
    v22 = *(v12 + 88);
    v24 = sub_19766BBE0(*(v12 + 208));
    v25 = objc_allocWithZone(MEMORY[0x1E698EAA0]);
    sub_19766DA38(v19, v20, v24, v22, v23, v18, v17, 0);

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_10_0();

    return v28(v26, v27, v28, v29, v30, v31, v32, v33, v21, a10, a11, a12);
  }
}

uint64_t sub_19766B458()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *(v3 + 152);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 168) = v8;

  v10 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19766B554()
{
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = sub_19766BBE0(*(v0 + 208));
  v10 = objc_allocWithZone(MEMORY[0x1E698EAA0]);
  sub_19766DA38(v4, v5, v9, v7, v8, v3, v2, v1);
  OUTLINED_FUNCTION_23_0();

  v11 = OUTLINED_FUNCTION_7_2();

  return v12(v11);
}

uint64_t sub_19766B630()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 192);
  *v2 = *v0;
  *(v1 + 200) = v5;

  v6 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_19766B718()
{
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x19A8E4D30](*(v0 + 200));
  OUTLINED_FUNCTION_20(*(v0 + 64));
  if (v1)
  {
    sub_19774F140();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  OUTLINED_FUNCTION_21_0();
  sub_19774F170();

  v5 = *(v0 + 184);
  *(v0 + 112) = *(v0 + 64);
  if (v5 == *(v0 + 104))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    *(v0 + 16) = sub_19765D460(v9);
    *(v0 + 24) = v10;
    *(v0 + 208) = [v9 source];
    v11 = [v9 executionUUID];
    sub_19774EBC0();

    v12 = sub_19774EBF0();
    OUTLINED_FUNCTION_22_0(v7, v13, v14, v12);
    v15 = [v9 executionDate];
    sub_19774EB50();

    v16 = sub_19774EB80();
    OUTLINED_FUNCTION_22_0(v8, v17, v18, v16);
    *(v0 + 120) = [v9 action];
    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_11_0(v19);

    sub_19766BBF4();
    return;
  }

  v20 = *(v0 + 96);
  if ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x19A8E5210](v5);
  }

  else
  {
    OUTLINED_FUNCTION_24_0(v4, v20);
    if (v5 >= v22)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v23 = *(v21 + 8 * v5 + 32);
  }

  *(v0 + 176) = v23;
  *(v0 + 184) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_11_0(v24);

  sub_19766B980();
}

uint64_t sub_19766B994()
{
  OUTLINED_FUNCTION_9_2();
  v1 = v0[2];
  v2 = [v1 parameterIdentifiers];
  v0[3] = sub_19774F120();

  v0[4] = [v1 displayRepresentation];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_11_0(v3);

  return sub_197673D54();
}

uint64_t sub_19766BA6C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19766BB68()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x1E698EAC8]);
  sub_19766E02C(v2, v1);
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_19766BBE0(__int16 a1)
{
  if (((a1 - 1) & 0xFFF8) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 - 1) + 1;
  }
}

void sub_19766BC08()
{
  OUTLINED_FUNCTION_18_0();
  v1 = [*(v0 + 24) parameters];
  sub_197648238(0, &qword_1ED696EE0, 0x1E69AC948);
  v2 = sub_19774F120();
  *(v0 + 32) = v2;

  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = sub_197652138(v2);
  *(v0 + 40) = v3;
  v4 = *(v0 + 32);
  if (v3)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8E5210](0);
    }

    else
    {
      OUTLINED_FUNCTION_24_0(v3, v4);
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = *(v5 + 32);
    }

    *(v0 + 48) = v7;
    *(v0 + 56) = 1;
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_11_0(v8);

    sub_19766D270();
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    v11 = [v9 identifier];
    sub_19774EF50();

    objc_allocWithZone(MEMORY[0x1E698EAA8]);
    v12 = OUTLINED_FUNCTION_21_0();
    sub_19766DC00(v12, v13);
    OUTLINED_FUNCTION_13();

    v14();
  }
}

uint64_t sub_19766BDC0()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_19766BEA8()
{
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x19A8E4D30](*(v0 + 72));
  OUTLINED_FUNCTION_20(*(v0 + 16));
  if (v1)
  {
    sub_19774F140();
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  OUTLINED_FUNCTION_21_0();
  sub_19774F170();

  v5 = *(v0 + 56);
  if (v5 == *(v0 + 40))
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);

    v9 = [v7 identifier];
    v10 = sub_19774EF50();
    v12 = v11;

    objc_allocWithZone(MEMORY[0x1E698EAA8]);
    sub_19766DC00(v10, v12);
    OUTLINED_FUNCTION_13();

    v13();
    return;
  }

  v14 = *(v0 + 32);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x19A8E5210](*(v0 + 56));
  }

  else
  {
    OUTLINED_FUNCTION_24_0(v4, v14);
    if (v5 >= v16)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v17 = *(v15 + 8 * v5 + 32);
  }

  *(v0 + 48) = v17;
  *(v0 + 56) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = swift_task_alloc();
  *(v0 + 64) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_11_0(v18);

  sub_19766D270();
}

uint64_t LNActionOutput.asBMActionOutput.getter()
{
  OUTLINED_FUNCTION_9_2();
  *(v1 + 24) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F8, &qword_19775AA70) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19766C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_17_1();
  v13 = sub_19766E098(*(v12 + 24));
  *(v12 + 40) = v13;
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    *(v12 + 16) = MEMORY[0x1E69E7CC0];
    v15 = sub_197652138(v13);
    *(v12 + 48) = v15;
    v16 = *(v12 + 40);
    if (v15)
    {
      v17 = v16 & 0xC000000000000001;
      sub_19765BEF0(0, (v16 & 0xC000000000000001) == 0, v16);
      v18 = *(v12 + 40);
      if (v17)
      {
        v19 = MEMORY[0x19A8E5210](0, v18);
      }

      else
      {
        v19 = *(v18 + 32);
      }

      *(v12 + 56) = v19;
      *(v12 + 64) = 1;
      v20 = swift_task_alloc();
      *(v12 + 72) = v20;
      *v20 = v12;
      OUTLINED_FUNCTION_15_0();
      goto LABEL_9;
    }

    v23 = *(v12 + 40);
  }

  *(v12 + 88) = v14;
  v24 = *(v12 + 24);
  v25 = *(v12 + 32);
  v26 = [v24 identifier];
  sub_19774EBC0();

  v27 = sub_19774EBF0();
  OUTLINED_FUNCTION_22_0(v25, v28, v29, v27);
  v30 = [v24 showOutputAction];
  *(v12 + 96) = v30;
  if (v30)
  {
    v31 = swift_task_alloc();
    *(v12 + 104) = v31;
    *v31 = v12;
    OUTLINED_FUNCTION_14_0();
LABEL_9:
    *(v21 + 8) = v22;
    OUTLINED_FUNCTION_10_0();

    return sub_19766BBF4();
  }

  *(v12 + 120) = 0;
  v34 = [OUTLINED_FUNCTION_16_0(objc_msgSend(*(v12 + 24) showOutputActionHint))];
  if (v34)
  {
    v35 = v34;
    v36 = sub_19766D52C();
  }

  else
  {
    v36 = 0;
  }

  *(v12 + 128) = v36;
  v37 = [*(v12 + 24) value];
  *(v12 + 136) = v37;
  if (v37)
  {
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_25_0(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_2_4(v39);
    OUTLINED_FUNCTION_10_0();

    return LNValue.asBMValue.getter();
  }

  else
  {
    *(v12 + 160) = 0;
    v42 = [*(v12 + 24) nextAction];
    *(v12 + 168) = v42;
    if (v42)
    {
      v43 = swift_task_alloc();
      v44 = OUTLINED_FUNCTION_26_0(v43);
      *v44 = v45;
      OUTLINED_FUNCTION_0_5();
      goto LABEL_9;
    }

    if ([*(v12 + 24) confirmationActionName])
    {
      OUTLINED_FUNCTION_27_1();
    }

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v46 = objc_allocWithZone(MEMORY[0x1E698EAB0]);
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_10_0();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }
}

uint64_t sub_19766C42C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_19766C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_17_1();
  MEMORY[0x19A8E4D30](*(v12 + 80));
  OUTLINED_FUNCTION_20(*(v12 + 16));
  if (v13)
  {
    sub_19774F140();
  }

  v14 = *(v12 + 80);
  v15 = *(v12 + 56);
  OUTLINED_FUNCTION_21_0();
  sub_19774F170();

  v16 = *(v12 + 64);
  if (v16 != *(v12 + 48))
  {
    v29 = *(v12 + 40);
    v30 = v29 & 0xC000000000000001;
    sub_19765BEF0(*(v12 + 64), (v29 & 0xC000000000000001) == 0, v29);
    v31 = *(v12 + 40);
    if (v30)
    {
      result = MEMORY[0x19A8E5210](v16, v31);
    }

    else
    {
      result = *(v31 + 8 * v16 + 32);
    }

    *(v12 + 56) = result;
    *(v12 + 64) = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    v33 = swift_task_alloc();
    *(v12 + 72) = v33;
    *v33 = v12;
    v34 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_11_0(v34);
    goto LABEL_11;
  }

  v17 = *(v12 + 16);
  v18 = *(v12 + 40);

  *(v12 + 88) = v17;
  v19 = *(v12 + 24);
  v20 = *(v12 + 32);
  v21 = [v19 identifier];
  sub_19774EBC0();

  v22 = sub_19774EBF0();
  OUTLINED_FUNCTION_22_0(v20, v23, v24, v22);
  v25 = [v19 showOutputAction];
  *(v12 + 96) = v25;
  if (v25)
  {
    v26 = swift_task_alloc();
    *(v12 + 104) = v26;
    *v26 = v12;
    OUTLINED_FUNCTION_14_0();
LABEL_6:
    *(v27 + 8) = v28;
LABEL_11:
    OUTLINED_FUNCTION_10_0();

    return sub_19766BBF4();
  }

  *(v12 + 120) = 0;
  v36 = [OUTLINED_FUNCTION_16_0(objc_msgSend(*(v12 + 24) showOutputActionHint))];
  if (v36)
  {
    v37 = v36;
    v38 = sub_19766D52C();
  }

  else
  {
    v38 = 0;
  }

  *(v12 + 128) = v38;
  v39 = [*(v12 + 24) value];
  *(v12 + 136) = v39;
  if (v39)
  {
    v40 = swift_task_alloc();
    v41 = OUTLINED_FUNCTION_25_0(v40);
    *v41 = v42;
    OUTLINED_FUNCTION_2_4(v41);
    OUTLINED_FUNCTION_10_0();

    return LNValue.asBMValue.getter();
  }

  else
  {
    *(v12 + 160) = 0;
    v44 = [*(v12 + 24) nextAction];
    *(v12 + 168) = v44;
    if (v44)
    {
      v45 = swift_task_alloc();
      v46 = OUTLINED_FUNCTION_26_0(v45);
      *v46 = v47;
      OUTLINED_FUNCTION_0_5();
      goto LABEL_6;
    }

    if ([*(v12 + 24) confirmationActionName])
    {
      OUTLINED_FUNCTION_27_1();
    }

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v48 = objc_allocWithZone(MEMORY[0x1E698EAB0]);
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_10_0();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
  }
}

uint64_t sub_19766C898()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 112) = v8;

  v10 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19766C994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_17_1();
  *(v12 + 120) = *(v12 + 112);
  v13 = [OUTLINED_FUNCTION_16_0(objc_msgSend(*(v12 + 24) showOutputActionHint))];
  if (v13)
  {
    v14 = v13;
    v15 = sub_19766D52C();
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 128) = v15;
  v16 = [*(v12 + 24) value];
  *(v12 + 136) = v16;
  if (v16)
  {
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_25_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_2_4(v18);
    OUTLINED_FUNCTION_10_0();

    return LNValue.asBMValue.getter();
  }

  else
  {
    *(v12 + 160) = 0;
    v22 = [*(v12 + 24) nextAction];
    *(v12 + 168) = v22;
    if (v22)
    {
      v23 = swift_task_alloc();
      v24 = OUTLINED_FUNCTION_26_0(v23);
      *v24 = v25;
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_11_0(v26);
      OUTLINED_FUNCTION_10_0();

      return sub_19766BBF4();
    }

    else
    {
      if ([*(v12 + 24) confirmationActionName])
      {
        OUTLINED_FUNCTION_27_1();
      }

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v28 = objc_allocWithZone(MEMORY[0x1E698EAB0]);
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_10_0();

      return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_19766CB98()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 144);
  v5 = *(v3 + 136);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 152) = v8;

  v10 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19766CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_17_1();
  *(v13 + 160) = *(v13 + 152);
  v14 = [*(v13 + 24) nextAction];
  *(v13 + 168) = v14;
  if (v14)
  {
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_26_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_11_0(v18);
    OUTLINED_FUNCTION_10_0();

    return sub_19766BBF4();
  }

  else
  {
    if ([*(v13 + 24) confirmationActionName])
    {
      OUTLINED_FUNCTION_27_1();
    }

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v21 = objc_allocWithZone(MEMORY[0x1E698EAB0]);
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_10_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }
}

uint64_t sub_19766CDDC()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 176);
  v5 = *(v3 + 168);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 184) = v8;

  v10 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19766CED8()
{
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 184);
  v2 = [*(v0 + 24) confirmationActionName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_19766D6F4();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 192);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 88);
  v10 = *(v0 + 32);
  v11 = [*(v0 + 24) shouldShowPrompt];
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v13 = objc_allocWithZone(MEMORY[0x1E698EAB0]);
  sub_19766DD10(v10, v8, v6, v7, v5, v1, v4, v12);

  v14 = OUTLINED_FUNCTION_7_2();

  return v15(v14);
}

uint64_t sub_19766D08C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_19766D134;

  return LNTranscriptActionRecord.asBMAppIntentInvocation()();
}

uint64_t sub_19766D134()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  OUTLINED_FUNCTION_12_1();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  (v5)[2](v5, v2);
  _Block_release(v5);

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_19766D284()
{
  OUTLINED_FUNCTION_9_2();
  v1 = v0[4];
  v2 = [v1 identifier];
  v0[2] = sub_19774EF50();
  v0[3] = v3;

  v4 = [v1 value];
  v0[5] = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_11_0(v5);

    return LNValue.asBMValue.getter();
  }

  else
  {
    v8 = v0[2];
    v7 = v0[3];
    objc_allocWithZone(MEMORY[0x1E698EAE0]);
    sub_19766DCA0(v8, v7, 0);
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_19766D3B0()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 56) = v8;

  v10 = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19766D4AC()
{
  OUTLINED_FUNCTION_18_0();
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[3];
  v4 = objc_allocWithZone(MEMORY[0x1E698EAE0]);
  v5 = OUTLINED_FUNCTION_21_0();
  sub_19766DCA0(v5, v6, v1);
  OUTLINED_FUNCTION_13();

  return v7();
}

id sub_19766D52C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 localeIdentifier];
    v5 = sub_19774EF50();
    v7 = v6;

    v8 = [v2 fullString];
    v9 = [v8 localizedKey];

    v10 = sub_19774EF50();
    v12 = v11;

    v13 = [v2 supportingString];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 localizedKey];

      v14 = sub_19774EF50();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v24 = objc_allocWithZone(MEMORY[0x1E698EAC0]);
    v25 = sub_19766DE68(v5, v7, v10, v12, v14, v17);

    return v25;
  }

  else
  {
    v18 = [v0 localeIdentifier];
    v19 = sub_19774EF50();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x1E698EAC0]);
    return sub_19766DE68(v19, v21, 0, 0, 0, 0);
  }
}

id sub_19766D6F4()
{
  v1 = v0;
  v2 = [v0 type];
  v3 = [v0 destructive];
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v4 = [v1 acceptLabel];
  if (v4)
  {
    v5 = v4;
    v30 = sub_197673B28();
  }

  else
  {
    v30 = 0;
  }

  v6 = [v1 acceptAlternatives];
  sub_197648238(0, &qword_1ED696EC8, 0x1E69AC9E8);
  v7 = sub_19774F120();

  v8 = sub_197652138(v7);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v8;
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_19774F680();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v12 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x19A8E5210](v12, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      sub_197673B28();

      sub_19774F650();
      v15 = *(v32 + 16);
      sub_19774F690();
      sub_19774F6A0();
      sub_19774F660();
    }

    while (v10 != v12);

    v16 = v32;
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = [v1 denyLabel];
  if (v17)
  {
    v18 = v17;
    v19 = sub_197673B28();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v1 denyAlternatives];
  v21 = sub_19774F120();

  v22 = sub_197652138(v21);
  if (!v22)
  {
LABEL_23:

    v28 = sub_19766DA2C(v2);
    v29 = objc_allocWithZone(MEMORY[0x1E698EAB8]);
    return sub_19766DF44(v28, v31, v30, v16, v19);
  }

  v23 = v22;
  result = sub_19774F680();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x19A8E5210](v24, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      sub_197673B28();

      sub_19774F650();
      v27 = *(v9 + 16);
      sub_19774F690();
      sub_19774F6A0();
      sub_19774F660();
    }

    while (v23 != v24);
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_19766DA2C(unint64_t a1)
{
  if (a1 < 0x22)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_19766DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (a2)
  {
    v14 = sub_19774EF20();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_19774EBF0();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v15) != 1)
  {
    v16 = sub_19774EBB0();
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  v17 = sub_19774EB80();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v17) != 1)
  {
    v18 = sub_19774EB30();
    (*(*(v17 - 8) + 8))(a5, v17);
  }

  sub_197648238(0, &qword_1EAF3ECC0, 0x1E698EAC8);
  v19 = sub_19774F110();

  v20 = [v22 initWithBundleID:v14 source:a3 executionUUID:v16 executionDate:v18 action:a6 resolvedAction:a7 actionOutput:a8 predictions:v19];

  return v20;
}

id sub_19766DC00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_19774EF20();
  }

  else
  {
    v3 = 0;
  }

  sub_197648238(0, &qword_1EAF3EDC8, 0x1E698EAE0);
  v4 = sub_19774F110();

  v5 = [v2 initWithIdentifier:v3 parameters:v4];

  return v5;
}

id sub_19766DCA0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19774EF20();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_19766DD10(uint64_t a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = sub_19774EBF0();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v15) != 1)
  {
    v16 = sub_19774EBB0();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  sub_197648238(0, qword_1EAF3ECD0, 0x1E698EAA8);
  v17 = sub_19774F110();

  v18 = [v21 initWithIdentifier:v16 showOutputAction:a2 showOutputActionHint:a3 dialog:a4 value:a5 nextAction:a6 confirmationActionName:a7 showPrompt:a8 suggestedFollowUpActions:v17];

  return v18;
}

id sub_19766DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_19774EF20();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_19774EF20();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = sub_19774EF20();

LABEL_8:
  v12 = [v6 initWithLocaleIdentifier:v9 fullString:v10 supportingString:v11];

  return v12;
}

id sub_19766DF44(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  sub_197648238(0, &qword_1EAF3EDC0, 0x1E698EAE8);
  v11 = sub_19774F110();

  v12 = sub_19774F110();

  v13 = [v6 initWithType:a1 destructive:a2 acceptLabel:a3 acceptAlternatives:v11 denyLabel:a5 denyAlternatives:v12];

  return v13;
}

id sub_19766E02C(uint64_t a1, void *a2)
{
  v4 = sub_19774F110();

  v5 = [v2 initWithParameterIdentifiers:v4 displayRepresentation:a2];

  return v5;
}

uint64_t sub_19766E098(void *a1)
{
  v1 = [a1 suggestedFollowUpActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_197648238(0, &qword_1EAF3F900, 0x1E69AC640);
  v3 = sub_19774F120();

  return v3;
}

uint64_t sub_19766E108()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19766E1B0;

  return sub_19766D08C(v2, v3);
}

uint64_t sub_19766E1B0()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void OUTLINED_FUNCTION_20(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_19766E2D0(uint64_t a1, unint64_t a2)
{
  v22 = 46;
  v21[2] = &v22;

  v7 = sub_19766E890(0x7FFFFFFFFFFFFFFFLL, 1, sub_19766EC58, v21, a1, a2, v6);
  if (v7[2] != 2)
  {

    sub_19774EF50();
    v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_1_5();
    swift_willThrow();
    return v3;
  }

  sub_19774ED00();
  result = sub_19774ECF0();
  if (v2)
  {

    return v3;
  }

  if (v7[2])
  {
    v11 = v7[4];
    v10 = v7[5];
    v12 = v7[6];
    v13 = v7[7];

    v3 = MEMORY[0x19A8E4C10](v11, v10, v12, v13);

    if (v7[2] >= 2uLL)
    {
      v14 = v7[8];
      v15 = v7[9];
      v16 = v7[10];
      v17 = v7[11];

      MEMORY[0x19A8E4C10](v14, v15, v16, v17);

      sub_19774ECE0();
      v19 = v18;

      if (!v19)
      {

        sub_19774EF50();
        v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        OUTLINED_FUNCTION_1_5();
        swift_willThrow();
      }

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19766E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v28 = a3;
  v26 = a2;
  v25 = a1;
  v30 = a5;
  v27 = *(a6 - 8);
  v7 = *(v27 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;

  sub_1976BEF98();
  v33 = &unk_1F0BBACF0;
  v34 = &off_1F0BBAB00;
  v31 = swift_allocObject();
  memcpy((v31 + 16), __src, 0xB0uLL);
  sub_1976BB388();
  __swift_destroy_boxed_opaque_existential_0(&v31);
  OUTLINED_FUNCTION_4_0();
  sub_1976C7FD0();
  v31 = v25;
  v32 = v26;
  v13 = sub_1976B7FC0();
  v15 = v14;
  v17 = v16;

  sub_1976C2388(v13, v15, v17, a6, a7);

  v18 = *(v27 + 8);
  v18(v10, a6);
  OUTLINED_FUNCTION_4_0();
  sub_1976C7FD0();
  v31 = v28;
  v32 = v29;
  v19 = sub_1976B7FC0();
  v21 = v20;
  v23 = v22;

  sub_1976C2388(v19, v21, v23, a6, a7);

  return (v18)(v12, a6);
}

uint64_t sub_19766E84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_19774F7E0() & 1;
  }
}

uint64_t sub_19766E890@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_19774F0B0();
    v11 = v31;
    v12 = v32;
    v13 = v33;

    sub_197651638(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = v34;
    v9 = *(v34 + 16);
    a7 = *(v34 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v38 = (v14 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v14;
    }

LABEL_41:
    sub_197651638(a7 > 1, v10, 1, v14);
    v14 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v48 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = sub_19774F090();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_19774F000();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = sub_19774F0B0();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_197651638(0, *(v48 + 16) + 1, 1, v48);
      v48 = v29;
    }

    v13 = *(v48 + 16);
    v27 = *(v48 + 24);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      sub_197651638(v27 > 1, v13 + 1, 1, v48);
      v48 = v30;
    }

    *(v48 + 16) = v12;
    v28 = (v48 + 32 * v13);
    v28[4] = v47;
    v28[5] = v43;
    v28[6] = v42;
    v28[7] = v41;
LABEL_20:
    v17 = sub_19774F000();
    if ((v23 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_19774F0B0();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v14 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      sub_197651638(0, *(v14 + 16) + 1, 1, v14);
      v14 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19766ECD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F910, &qword_19775AAC8);
  v1 = sub_19764B5C8(&qword_1EAF3F0A0, &unk_1EAF3F910, &qword_19775AAC8);
  return sub_197649708(0xD000000000000016, 0x8000000197760AB0, v0, v1);
}

uint64_t sub_19766ED6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_19766EE08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000012, 0x8000000197760A90, v0, v1);
}

uint64_t sub_19766EEC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x8000000197760A70, v0, v1);
}

uint64_t sub_19766EF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v5 = sub_19764B5C8(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0x79747265706F7270, a3, v4, v5);
}

uint64_t sub_19766F010()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  v1 = sub_19764B5C8(&qword_1ED696FF8, &qword_1EAF3F780, &unk_19775A8E0);
  return sub_197649708(0xD000000000000016, 0x8000000197760A50, v0, v1);
}

uint64_t sub_19766F0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  v1 = sub_19764B5C8(&qword_1ED696FF8, &qword_1EAF3F780, &unk_19775A8E0);
  return sub_197649708(0xD000000000000020, 0x8000000197760A20, v0, v1);
}

uint64_t sub_19766F148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_19774EBF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  if (qword_1ED696E10 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (qword_1ED696DF8 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v18 = v45;
  v43 = v44;
  if (qword_1ED696DE0 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v41 = v44;
  v42 = v45;
  if (qword_1ED696E08 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v39 = v44;
  v40 = v45;
  if (qword_1ED696DF0 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v37 = v44;
  v38 = v45;
  if (qword_1ED696DA8 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v35 = v44;
  v36 = v45;
  if (qword_1ED696DD0 != -1)
  {
    swift_once();
  }

  sub_19764B088(qword_1EAF3F190, *algn_1EAF3F198, a1, a2, MEMORY[0x1E69E6158], &off_1ED697020, &v44);
  v33 = v44;
  v34 = v45;
  if (qword_1ED696DC8 != -1)
  {
    swift_once();
  }

  sub_19764B088(qword_1EAF3F178, unk_1EAF3F180, a1, a2, MEMORY[0x1E69E6158], &off_1ED697020, &v44);
  v31 = v44;
  v32 = v45;
  (*(v11 + 16))(v15, v17, v10);
  v39 = sub_197648238(0, &qword_1ED696EC8, 0x1E69AC9E8);
  v40 = sub_19774F3D0();
  sub_197648238(0, &qword_1ED696EE0, 0x1E69AC948);
  v20 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
  v35 = sub_19774F270();
  v21 = v32;
  sub_19765D558(v9);

  if (v34)
  {
    v22 = sub_19774F3D0();
  }

  else
  {
    v22 = 0;
  }

  v23 = v40;
  (*(v11 + 8))(v17, v10);
  (*(v11 + 32))(a3, v15, v10);
  v24 = type metadata accessor for LNAppShortcutParameterRecord();
  v25 = (a3 + v24[5]);
  *v25 = v43;
  v25[1] = v18;
  v26 = (a3 + v24[6]);
  v27 = v42;
  *v26 = v41;
  v26[1] = v27;
  *(a3 + v24[7]) = v23;
  v28 = (a3 + v24[8]);
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  *(a3 + v24[9]) = v35;
  *(a3 + v24[10]) = v22;
  v30 = (a3 + v24[11]);
  *v30 = v31;
  v30[1] = v21;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v24);
}

uint64_t sub_19766F900(uint64_t a1)
{
  if (qword_1ED696DB8 != -1)
  {
    swift_once();
  }

  memcpy(v22, &unk_1EAF3F0C8, sizeof(v22));
  v21[0] = a1;
  if (qword_1ED696E10 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAF3F208;
  v4 = unk_1EAF3F210;
  v5 = qword_1EAF3F218;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F908, &qword_19775AAB0);
  v7 = sub_19764B5C8(&unk_1ED696D98, &qword_1EAF3F908, &qword_19775AAB0);
  v8 = sub_1976CEAB0(v3, v4, v5, v6, v7, &off_1EE5A30A0);
  v10 = v9;
  v12 = v11;
  memcpy(v20, v22, sizeof(v20));
  sub_1976BB434(v8, v10, v12, &unk_1F0BBACF0, &off_1F0BBAB00, v13, v14, v15, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15], v20[16], v20[17], v20[18], v20[19], v20[20], v20[21], v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14]);

  memcpy(v23, v21, sizeof(v23));
  v21[3] = &unk_1F0BBACF0;
  v21[4] = &off_1F0BBAB00;
  v21[0] = swift_allocObject();
  memcpy((v21[0] + 16), v23, 0xB0uLL);
  sub_19764C978(v21);
  v16 = __swift_destroy_boxed_opaque_existential_0(v21);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE70, &unk_19775AAB8);
    sub_1976BF5D8();
    v10 = v18;
  }

  return v10;
}

uint64_t sub_19766FBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE70, &unk_19775AAB8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  a3(a1, a2);
  v15 = type metadata accessor for LNAppShortcutParameterRecord();
  v16 = 1;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_19766FD9C(v14, v12);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v15);
    sub_19766FE00(v12, a4);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v16, 1, v8);
}

uint64_t type metadata accessor for LNAppShortcutParameterRecord()
{
  result = qword_1ED696E18;
  if (!qword_1ED696E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19766FD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19766FE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE70, &unk_19775AAB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_19766FE98()
{
  sub_19774EBF0();
  if (v0 <= 0x3F)
  {
    sub_197648238(319, &qword_1ED696EC8, 0x1E69AC9E8);
    if (v1 <= 0x3F)
    {
      sub_197648238(319, &qword_1ED696EE0, 0x1E69AC948);
      if (v2 <= 0x3F)
      {
        sub_19766FF94();
        if (v3 <= 0x3F)
        {
          sub_19766FFFC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19766FF94()
{
  if (!qword_1EAF3F090)
  {
    sub_197648238(255, &qword_1ED696EC8, 0x1E69AC9E8);
    v0 = sub_19774F420();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF3F090);
    }
  }
}

void sub_19766FFFC()
{
  if (!qword_1EAF3F098)
  {
    v0 = sub_19774F420();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF3F098);
    }
  }
}

void sub_19767004C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v7[5] = a1;
  v11[4] = sub_197670A14;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1976A7FD0;
  v11[3] = &block_descriptor_18_0;
  v8 = _Block_copy(v11);

  v9 = v3;
  v10 = a1;

  [v9 getConnectionInterfaceWithOptions:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_19767014C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6)
{
  v12 = sub_19774EBF0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v16 = [a5 queue];
    v17 = swift_allocObject();
    *(v17 + 16) = "appintent:link undo managers";
    *(v17 + 24) = 28;
    *(v17 + 32) = 2;
    *(v17 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNLinkUndoManagersConnectionOperation());
    v18 = a6;

    v19 = sub_197670390(v15, a1, 2, v16, sub_197669C04, v17, v18, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    a3(a2);
  }
}

id sub_197670390(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = &v10[OBJC_IVAR____TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation_completionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[OBJC_IVAR____TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation_reference] = a7;
  *v16 = a8;
  *(v16 + 1) = a9;
  v17 = a7;

  v18 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_24_0;
  v19 = _Block_copy(aBlock);

  v24.receiver = v10;
  v24.super_class = type metadata accessor for LNLinkUndoManagersConnectionOperation();
  v20 = objc_msgSendSuper2(&v24, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v18, a2, a3, a4, v19);
  _Block_release(v19);

  swift_unknownObjectRelease();

  v21 = sub_19774EBF0();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

void sub_197670530()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LNLinkUndoManagersConnectionOperation();
  objc_msgSendSuper2(&v8, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation_reference];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_197670A04;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_19767BB84;
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);
  v5 = v2;
  v6 = v0;

  [v1 linkAppUndoManager:v5 completionHandler:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_197670668(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_19774E9E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [a2 finishWithError_];
}

void sub_197670714(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation_completionHandler];
  if (v5)
  {
    v6 = v4[1];

    v5(a1);
    sub_19764781C(v5);
    v7 = *v4;
    v8 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v7);
  }

  if (a1)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for LNLinkUndoManagersConnectionOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

id sub_197670958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNLinkUndoManagersConnectionOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_197670A88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_197670AEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0x72506D6574737973, 0xEE006C6F636F746FLL, v0, v1);
}

uint64_t sub_197670B58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0xD000000000000010, 0x8000000197760C10, v0, v1);
}

uint64_t sub_197670BBC(uint64_t a1, uint64_t a2)
{
  if (qword_1EAF3F470 != -1)
  {
    swift_once();
  }

  memcpy(v35, &unk_1EAF43F28, 0xB0uLL);
  if (a2)
  {
    sub_19764DFC8(v35, &v19);
    if (qword_1EAF3F478 != -1)
    {
      swift_once();
    }

    v19 = a1;
    v20 = a2;
    v6 = sub_1976B7FC0();
    v3 = v7;
    v9 = v8;
    memcpy(v18, v35, sizeof(v18));
    sub_1976BB434(v6, v3, v9, &unk_1F0BBACF0, &off_1F0BBAB00, v10, v11, v12, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17], v18[18], v18[19], v18[20], v18[21], v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);

    sub_19764BBBC(v35);
    v13 = &v19;
  }

  else
  {
    sub_19764DFC8(v35, &v19);
    v13 = v35;
  }

  memcpy(v34, v13, sizeof(v34));
  v22 = &unk_1F0BBACF0;
  v23 = &off_1F0BBAB00;
  v19 = swift_allocObject();
  memcpy((v19 + 16), v34, 0xB0uLL);
  sub_19764C978(&v19);
  v14 = __swift_destroy_boxed_opaque_existential_0(&v19);
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](v14);

    sub_1976BF5D8();
    v3 = v16;
  }

  return v3;
}

double sub_197670E6C@<D0>(_OWORD *a1@<X8>)
{
  sub_197670EB4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_197670EB4(void *a1@<X8>)
{
  if (qword_1EAF3F478 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (qword_1EAF3F480 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  if (qword_1EAF3F488 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v3;
}

double sub_197671078@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
    result = *&v9;
    a1[2] = v9;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1976710D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197671118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_197671174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v6;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  v17[2] = v14;
  v17[3] = &block_descriptor_57;
  v15 = _Block_copy(v17);

  v16 = v6;

  [v16 getConnectionInterfaceWithOptions:0 completionHandler:v15];
  _Block_release(v15);
}

void sub_197671270(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = sub_19774EBF0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v30 - v23;
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v31 = [a5 queue];
    v25 = a7;
    v26 = swift_allocObject();
    *(v26 + 16) = "appintent:fetch enum url";
    *(v26 + 24) = 24;
    *(v26 + 32) = 2;
    *(v26 + 40) = &dword_19763D000;
    v27 = objc_allocWithZone(type metadata accessor for LNFetchEnumURLOperation());
    v30 = a5;

    v28 = sub_197671990(v20, a1, 1, v31, sub_197672964, v26, a6, v25, a8, a9, a3, a4);
    [v30 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v29);
    a3(v24, a2);
    sub_19765D558(v24);
  }
}

void sub_19767159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  v13[2] = v10;
  v13[3] = &block_descriptor_42;
  v11 = _Block_copy(v13);

  v12 = v4;

  [v12 getConnectionInterfaceWithOptions:0 completionHandler:v11];
  _Block_release(v11);
}

void sub_19767167C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_19774EBF0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v18 = [a5 queue];
    v19 = swift_allocObject();
    *(v19 + 16) = "appintent:fetch enum urls";
    *(v19 + 24) = 25;
    *(v19 + 32) = 2;
    *(v19 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNFetchEnumURLsOperation());

    v20 = sub_197672084(v17, a1, 1, v18, sub_197669C04, v19, a6, a7, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    a3(0, a2);
  }
}

void sub_1976718E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_19774EAD0();
    v5 = sub_19774EE20();
  }

  if (a2)
  {
    v6 = sub_19774E9E0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_197671990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v20 = &v13[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_completionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v13[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_enumIdentifier];
  *v21 = a7;
  *(v21 + 1) = a8;
  v22 = &v13[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_caseIdentifier];
  *v22 = a9;
  *(v22 + 1) = a10;
  *v20 = a11;
  *(v20 + 1) = a12;

  v23 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_64;
  v24 = _Block_copy(aBlock);

  v28.receiver = v13;
  v28.super_class = type metadata accessor for LNFetchEnumURLOperation();
  v25 = objc_msgSendSuper2(&v28, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v23, a2, a3, a4, v24);
  _Block_release(v24);

  swift_unknownObjectRelease();

  v26 = sub_19774EBF0();
  (*(*(v26 - 8) + 8))(a1, v26);
  return v25;
}

void sub_197671B3C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for LNFetchEnumURLOperation();
  objc_msgSendSuper2(&v12, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_enumIdentifier];
  v3 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_enumIdentifier + 8];

  v4 = sub_19774EF20();

  v5 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_caseIdentifier];
  v6 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_caseIdentifier + 8];

  v7 = sub_19774EF20();

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v11[4] = sub_1976728BC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1976A81FC;
  v11[3] = &block_descriptor_33_0;
  v9 = _Block_copy(v11);
  v10 = v0;

  [v1 fetchURLForEnumWithIdentifier:v4 caseIdentifier:v7 completionHandler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

void sub_197671D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_completionHandler];
  if (v6)
  {
    v8 = v5[1];

    v6(a1, a2);
    sub_19764781C(v6);
    v9 = *v5;
    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_19764781C(v9);
  }

  if (a2)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LNFetchEnumURLOperation();
  objc_msgSendSuper2(&v12, sel_finishWithError_, v11);
}

void sub_197671DD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = &v1[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_completionHandler];
  v9 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_83709CDB751C9A1520D54649973F712123LNFetchEnumURLOperation_completionHandler];
  if (v9)
  {
    v10 = v8[1];
    v11 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);

    v9(v7, a1);
    sub_19764781C(v9);
    sub_19765D558(v7);
    v12 = *v8;
    v13 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    sub_19764781C(v12);
  }

  if (a1)
  {
    v14 = sub_19774E9E0();
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for LNFetchEnumURLOperation();
  v16.receiver = v2;
  v16.super_class = v15;
  objc_msgSendSuper2(&v16, sel_finishWithError_, v14);
}