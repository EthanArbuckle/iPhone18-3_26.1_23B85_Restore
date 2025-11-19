unint64_t sub_24ADB4214()
{
  result = qword_27EFA9208;
  if (!qword_27EFA9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9208);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FindMyCore9ItemModelV5OwnerO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_24ADB42E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_24ADB432C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24ADB43D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADB441C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24ADB44EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_24ADB4548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemEntity.PayloadV1.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemEntity.PayloadV1.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADB4714()
{
  result = qword_27EFA9220;
  if (!qword_27EFA9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9220);
  }

  return result;
}

unint64_t sub_24ADB4768()
{
  result = qword_27EFA9228;
  if (!qword_27EFA9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9228);
  }

  return result;
}

unint64_t sub_24ADB47C0()
{
  result = qword_27EFA9230;
  if (!qword_27EFA9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9230);
  }

  return result;
}

unint64_t sub_24ADB4818()
{
  result = qword_27EFA9238;
  if (!qword_27EFA9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9238);
  }

  return result;
}

unint64_t sub_24ADB4870()
{
  result = qword_27EFA9240;
  if (!qword_27EFA9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9240);
  }

  return result;
}

unint64_t sub_24ADB48C4()
{
  result = qword_27EFA9248;
  if (!qword_27EFA9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9248);
  }

  return result;
}

unint64_t sub_24ADB491C()
{
  result = qword_27EFA9250;
  if (!qword_27EFA9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9250);
  }

  return result;
}

unint64_t sub_24ADB4974()
{
  result = qword_27EFA9258;
  if (!qword_27EFA9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9258);
  }

  return result;
}

unint64_t sub_24ADB49CC()
{
  result = qword_27EFA9260;
  if (!qword_27EFA9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9260);
  }

  return result;
}

unint64_t sub_24ADB4A24()
{
  result = qword_27EFA9268;
  if (!qword_27EFA9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9268);
  }

  return result;
}

unint64_t sub_24ADB4A7C()
{
  result = qword_27EFA9270;
  if (!qword_27EFA9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9270);
  }

  return result;
}

unint64_t sub_24ADB4AD4()
{
  result = qword_27EFA9278;
  if (!qword_27EFA9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9278);
  }

  return result;
}

unint64_t sub_24ADB4B2C()
{
  result = qword_27EFA9280;
  if (!qword_27EFA9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9280);
  }

  return result;
}

uint64_t sub_24ADB4B80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ADB4BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24ADB4BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6475427466656CLL && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6475427468676972 && a2 == 0xE800000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024AE12E00 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4364694C65736163 && a2 == 0xED00006465736F6CLL || (sub_24AE097C8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024AE12E30 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024AE12E50 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24ADB4ED4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9570, &qword_24AE0D250);
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9578, &qword_24AE0D258);
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9580, &qword_24AE0D260);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9588, &qword_24AE0D268);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v84 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9590, &qword_24AE0D270);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v78 = &v59 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9598, &qword_24AE0D278);
  v67 = *(v66 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v83 = &v59 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95A0, &qword_24AE0D280);
  v65 = *(v64 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v79 = &v59 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95A8, &qword_24AE0D288);
  v63 = *(v62 - 8);
  v22 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95B0, &qword_24AE0D290);
  v61 = *(v25 - 8);
  v26 = *(v61 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v59 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95B8, &qword_24AE0D298);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v59 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_24ADB8788();
  v36 = v85;
  sub_24AE09878();
  if (v36)
  {
    goto LABEL_10;
  }

  v59 = v25;
  v38 = v83;
  v37 = v84;
  v60 = v30;
  v85 = v29;
  v39 = v33;
  v40 = sub_24AE096F8();
  if (*(v40 + 16) != 1 || (v41 = *(v40 + 32), v41 == 9))
  {
    v47 = sub_24AE09558();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0) + 48);
    *v49 = &type metadata for ItemEntity.PayloadV1.ImageDefinition.Variant;
    v51 = v85;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v60 + 8))(v33, v51);
    swift_unknownObjectRelease();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v86);
    return 0;
  }

  if (*(v40 + 32) <= 3u)
  {
    if (*(v40 + 32) > 1u)
    {
      v44 = *(v40 + 32);
      if (v41 == 2)
      {
        v89 = 2;
        sub_24ADB89D4();
        v54 = v79;
        v55 = v85;
        sub_24AE09678();
        (*(v65 + 8))(v54, v64);
      }

      else
      {
        v90 = 3;
        sub_24ADB8980();
        v55 = v85;
        sub_24AE09678();
        (*(v67 + 8))(v38, v66);
      }

      (*(v60 + 8))(v33, v55);
    }

    else
    {
      v44 = *(v40 + 32);
      if (*(v40 + 32))
      {
        v88 = 1;
        sub_24ADB8A28();
        v56 = v24;
        v57 = v85;
        sub_24AE09678();
        (*(v63 + 8))(v56, v62);
        (*(v60 + 8))(v33, v57);
      }

      else
      {
        v87 = 0;
        sub_24ADB8A7C();
        v53 = v85;
        sub_24AE09678();
        (*(v61 + 8))(v28, v59);
        (*(v60 + 8))(v39, v53);
      }
    }

    goto LABEL_26;
  }

  v42 = v85;
  if (*(v40 + 32) <= 5u)
  {
    v44 = *(v40 + 32);
    v43 = v60;
    if (v41 == 4)
    {
      v91 = 4;
      sub_24ADB892C();
      v37 = v78;
      sub_24AE09678();
      v45 = v68;
      v46 = v69;
    }

    else
    {
      v92 = 5;
      sub_24ADB88D8();
      sub_24AE09678();
      v46 = v70;
      v45 = v71;
    }

    goto LABEL_24;
  }

  v43 = v60;
  if (v41 == 6)
  {
    v44 = *(v40 + 32);
    v93 = 6;
    sub_24ADB8884();
    v37 = v80;
    sub_24AE09678();
    v46 = v72;
    v45 = v73;
    goto LABEL_24;
  }

  v44 = *(v40 + 32);
  if (v41 == 7)
  {
    v94 = 7;
    sub_24ADB8830();
    v37 = v81;
    sub_24AE09678();
    v46 = v74;
    v45 = v75;
LABEL_24:
    (*(v46 + 8))(v37, v45);
    goto LABEL_25;
  }

  v95 = 8;
  sub_24ADB87DC();
  v58 = v82;
  sub_24AE09678();
  (*(v76 + 8))(v58, v77);
LABEL_25:
  (*(v43 + 8))(v39, v42);
LABEL_26:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v86);
  return v44;
}

uint64_t sub_24ADB5A28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461436567616D69 && a2 == 0xED000079726F6765 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6567616D69 && a2 == 0xEA00000000006C65 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F436567616D69 && a2 == 0xEA0000000000726FLL || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261566567616D69 && a2 == 0xEC000000746E6169)
  {

    return 4;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24ADB5BEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9360, &qword_24AE0C6A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB7448();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = sub_24AE09698();
  v31 = v12;
  LOBYTE(v37[0]) = 1;
  v13 = sub_24AE09698();
  v30 = v14;
  v27 = v13;
  LOBYTE(v37[0]) = 2;
  v26 = sub_24AE09698();
  v29 = v15;
  LOBYTE(v37[0]) = 3;
  v25 = sub_24AE09698();
  v28 = v16;
  v40 = 4;
  sub_24ADB78E0();
  sub_24AE096B8();
  (*(v6 + 8))(v9, v5);
  v39 = v41;
  v18 = v30;
  v17 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v19 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v26;
  *(&v34 + 1) = v29;
  v21 = v28;
  *&v35 = v25;
  *(&v35 + 1) = v28;
  v36 = v41;
  sub_24ADB39D8(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v19;
  v37[3] = v18;
  v37[4] = v26;
  v37[5] = v20;
  v37[6] = v25;
  v37[7] = v21;
  v38 = v39;
  result = sub_24ADB3A64(v37);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

uint64_t sub_24ADB5FB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646575657571 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ADB61A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9370, &qword_24AE0C6A8);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v46[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9378, &qword_24AE0C6B0);
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v46[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9380, &qword_24AE0C6B8);
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v46[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9388, &qword_24AE0C6C0);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v46[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9390, &qword_24AE0C6C8);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9398, &qword_24AE0C6D0);
  v49 = *(v20 - 8);
  v21 = *(v49 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v46[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A0, &qword_24AE0C6D8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v46[-v27];
  v29 = a1[3];
  v30 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24ADB74F0();
  v31 = v64;
  sub_24AE09878();
  if (v31)
  {
    goto LABEL_9;
  }

  v48 = v20;
  v32 = v19;
  v34 = v62;
  v33 = v63;
  v64 = v25;
  v35 = sub_24AE096F8();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 6))
  {
    v38 = sub_24AE09558();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0) + 48);
    *v40 = &type metadata for ItemEntity.PayloadV1.PlaySoundState;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v64 + 8))(v28, v24);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v65);
    return 0;
  }

  v47 = *(v35 + 32);
  if (v36 > 2)
  {
    if (v36 != 3)
    {
      v37 = v64;
      if (v36 == 4)
      {
        v70 = 4;
        sub_24ADB7598();
        v43 = v60;
        sub_24AE09678();
        (*(v57 + 8))(v43, v56);
      }

      else
      {
        v71 = 5;
        sub_24ADB7544();
        v45 = v61;
        sub_24AE09678();
        (*(v58 + 8))(v45, v59);
      }

      goto LABEL_17;
    }

    v69 = 3;
    sub_24ADB75EC();
    sub_24AE09678();
    v44 = v64;
    (*(v55 + 8))(v33, v54);
    (*(v44 + 8))(v28, v24);
  }

  else
  {
    if (v36)
    {
      if (v36 == 1)
      {
        v67 = 1;
        sub_24ADB7694();
        sub_24AE09678();
        v37 = v64;
        (*(v50 + 8))(v32, v51);
      }

      else
      {
        v68 = 2;
        sub_24ADB7640();
        sub_24AE09678();
        v37 = v64;
        (*(v52 + 8))(v34, v53);
      }

LABEL_17:
      (*(v37 + 8))(v28, v24);
      goto LABEL_18;
    }

    v66 = 0;
    sub_24ADB76E8();
    sub_24AE09678();
    (*(v49 + 8))(v23, v48);
    (*(v64 + 8))(v28, v24);
  }

LABEL_18:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v65);
  return v47;
}

uint64_t sub_24ADB69AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AE12E70 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AE12E90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24ADB6B18(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93B0, &qword_24AE0C6E8);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93B8, &qword_24AE0C6F0);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93C0, &qword_24AE0C6F8);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93C8, &qword_24AE0C700);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93D0, &qword_24AE0C708);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24ADB773C();
  v26 = v56;
  sub_24AE09878();
  if (v26)
  {
    goto LABEL_16;
  }

  v45 = v15;
  v46 = v23;
  v28 = v54;
  v27 = v55;
  v56 = v20;
  v29 = sub_24AE096F8();
  v30 = *(v29 + 16);
  if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = sub_24AE09558();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0) + 48);
    *v35 = &type metadata for ItemEntity.PayloadV1.LostModeState;
    v37 = v46;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v56 + 8))(v37, v19);
    swift_unknownObjectRelease();
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v57);
    return 0;
  }

  v58 = *(v29 + 32);
  if (v31 > 1)
  {
    v39 = v56;
    if (v31 == 2)
    {
      v61 = 2;
      sub_24ADB77E4();
      v40 = v28;
      v41 = v46;
      sub_24AE09678();
      (*(v51 + 8))(v40, v50);
      (*(v39 + 8))(v41, v19);
    }

    else
    {
      v62 = 3;
      sub_24ADB7790();
      v42 = v46;
      sub_24AE09678();
      (*(v53 + 8))(v27, v52);
      (*(v39 + 8))(v42, v19);
    }
  }

  else
  {
    if (v31)
    {
      v60 = 1;
      sub_24ADB7838();
      v38 = v46;
      sub_24AE09678();
      (*(v49 + 8))(v14, v48);
    }

    else
    {
      v59 = 0;
      sub_24ADB788C();
      v38 = v46;
      sub_24AE09678();
      (*(v47 + 8))(v18, v45);
    }

    (*(v56 + 8))(v38, v19);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v57);
  return v58;
}

uint64_t sub_24ADB7190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574497369 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6665446567616D69 && a2 == 0xEF6E6F6974696E69 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726574746162 && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E756F5379616C70 && a2 == 0xEE00657461745364 || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xED00006574617453 || (sub_24AE097C8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AE13170 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_24ADB7448()
{
  result = qword_27EFA9290;
  if (!qword_27EFA9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9290);
  }

  return result;
}

unint64_t sub_24ADB749C()
{
  result = qword_27EFA9298;
  if (!qword_27EFA9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9298);
  }

  return result;
}

unint64_t sub_24ADB74F0()
{
  result = qword_27EFA92D8;
  if (!qword_27EFA92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92D8);
  }

  return result;
}

unint64_t sub_24ADB7544()
{
  result = qword_27EFA92E0;
  if (!qword_27EFA92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92E0);
  }

  return result;
}

unint64_t sub_24ADB7598()
{
  result = qword_27EFA92E8;
  if (!qword_27EFA92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92E8);
  }

  return result;
}

unint64_t sub_24ADB75EC()
{
  result = qword_27EFA92F0;
  if (!qword_27EFA92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92F0);
  }

  return result;
}

unint64_t sub_24ADB7640()
{
  result = qword_27EFA92F8;
  if (!qword_27EFA92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92F8);
  }

  return result;
}

unint64_t sub_24ADB7694()
{
  result = qword_27EFA9300;
  if (!qword_27EFA9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9300);
  }

  return result;
}

unint64_t sub_24ADB76E8()
{
  result = qword_27EFA9308;
  if (!qword_27EFA9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9308);
  }

  return result;
}

unint64_t sub_24ADB773C()
{
  result = qword_27EFA9338;
  if (!qword_27EFA9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9338);
  }

  return result;
}

unint64_t sub_24ADB7790()
{
  result = qword_27EFA9340;
  if (!qword_27EFA9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9340);
  }

  return result;
}

unint64_t sub_24ADB77E4()
{
  result = qword_27EFA9348;
  if (!qword_27EFA9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9348);
  }

  return result;
}

unint64_t sub_24ADB7838()
{
  result = qword_27EFA9350;
  if (!qword_27EFA9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9350);
  }

  return result;
}

unint64_t sub_24ADB788C()
{
  result = qword_27EFA9358;
  if (!qword_27EFA9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9358);
  }

  return result;
}

unint64_t sub_24ADB78E0()
{
  result = qword_27EFA9368;
  if (!qword_27EFA9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9368);
  }

  return result;
}

unint64_t sub_24ADB7934()
{
  result = qword_27EFA93D8;
  if (!qword_27EFA93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93D8);
  }

  return result;
}

uint64_t sub_24ADB7988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    sub_24AE08288();
    sub_24AE08288();
  }

  return sub_24AE08288();
}

uint64_t _s13LostModeStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13LostModeStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14PlaySoundStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14PlaySoundStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADB7D3C()
{
  result = qword_27EFA93E0;
  if (!qword_27EFA93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93E0);
  }

  return result;
}

unint64_t sub_24ADB7D94()
{
  result = qword_27EFA93E8;
  if (!qword_27EFA93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93E8);
  }

  return result;
}

unint64_t sub_24ADB7DEC()
{
  result = qword_27EFA93F0;
  if (!qword_27EFA93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93F0);
  }

  return result;
}

unint64_t sub_24ADB7E44()
{
  result = qword_27EFA93F8;
  if (!qword_27EFA93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93F8);
  }

  return result;
}

unint64_t sub_24ADB7E9C()
{
  result = qword_27EFA9400;
  if (!qword_27EFA9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9400);
  }

  return result;
}

unint64_t sub_24ADB7EF4()
{
  result = qword_27EFA9408;
  if (!qword_27EFA9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9408);
  }

  return result;
}

unint64_t sub_24ADB7F4C()
{
  result = qword_27EFA9410;
  if (!qword_27EFA9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9410);
  }

  return result;
}

unint64_t sub_24ADB7FA4()
{
  result = qword_27EFA9418;
  if (!qword_27EFA9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9418);
  }

  return result;
}

unint64_t sub_24ADB7FFC()
{
  result = qword_27EFA9420;
  if (!qword_27EFA9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9420);
  }

  return result;
}

unint64_t sub_24ADB8054()
{
  result = qword_27EFA9428;
  if (!qword_27EFA9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9428);
  }

  return result;
}

unint64_t sub_24ADB80AC()
{
  result = qword_27EFA9430;
  if (!qword_27EFA9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9430);
  }

  return result;
}

unint64_t sub_24ADB8104()
{
  result = qword_27EFA9438;
  if (!qword_27EFA9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9438);
  }

  return result;
}

unint64_t sub_24ADB815C()
{
  result = qword_27EFA9440;
  if (!qword_27EFA9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9440);
  }

  return result;
}

unint64_t sub_24ADB81B4()
{
  result = qword_27EFA9448;
  if (!qword_27EFA9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9448);
  }

  return result;
}

unint64_t sub_24ADB820C()
{
  result = qword_27EFA9450;
  if (!qword_27EFA9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9450);
  }

  return result;
}

unint64_t sub_24ADB8264()
{
  result = qword_27EFA9458;
  if (!qword_27EFA9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9458);
  }

  return result;
}

unint64_t sub_24ADB82BC()
{
  result = qword_27EFA9460;
  if (!qword_27EFA9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9460);
  }

  return result;
}

unint64_t sub_24ADB8314()
{
  result = qword_27EFA9468;
  if (!qword_27EFA9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9468);
  }

  return result;
}

unint64_t sub_24ADB836C()
{
  result = qword_27EFA9470;
  if (!qword_27EFA9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9470);
  }

  return result;
}

unint64_t sub_24ADB83C4()
{
  result = qword_27EFA9478;
  if (!qword_27EFA9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9478);
  }

  return result;
}

unint64_t sub_24ADB841C()
{
  result = qword_27EFA9480;
  if (!qword_27EFA9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9480);
  }

  return result;
}

unint64_t sub_24ADB8474()
{
  result = qword_27EFA9488;
  if (!qword_27EFA9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9488);
  }

  return result;
}

unint64_t sub_24ADB84CC()
{
  result = qword_27EFA9490;
  if (!qword_27EFA9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9490);
  }

  return result;
}

unint64_t sub_24ADB8524()
{
  result = qword_27EFA9498;
  if (!qword_27EFA9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9498);
  }

  return result;
}

unint64_t sub_24ADB857C()
{
  result = qword_27EFA94A0;
  if (!qword_27EFA94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94A0);
  }

  return result;
}

unint64_t sub_24ADB85D4()
{
  result = qword_27EFA94A8;
  if (!qword_27EFA94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94A8);
  }

  return result;
}

unint64_t sub_24ADB862C()
{
  result = qword_27EFA94B0;
  if (!qword_27EFA94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94B0);
  }

  return result;
}

unint64_t sub_24ADB8684()
{
  result = qword_27EFA94B8;
  if (!qword_27EFA94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94B8);
  }

  return result;
}

unint64_t sub_24ADB86DC()
{
  result = qword_27EFA94C0;
  if (!qword_27EFA94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94C0);
  }

  return result;
}

unint64_t sub_24ADB8734()
{
  result = qword_27EFA94C8;
  if (!qword_27EFA94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94C8);
  }

  return result;
}

unint64_t sub_24ADB8788()
{
  result = qword_27EFA9520;
  if (!qword_27EFA9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9520);
  }

  return result;
}

unint64_t sub_24ADB87DC()
{
  result = qword_27EFA9528;
  if (!qword_27EFA9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9528);
  }

  return result;
}

unint64_t sub_24ADB8830()
{
  result = qword_27EFA9530;
  if (!qword_27EFA9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9530);
  }

  return result;
}

unint64_t sub_24ADB8884()
{
  result = qword_27EFA9538;
  if (!qword_27EFA9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9538);
  }

  return result;
}

unint64_t sub_24ADB88D8()
{
  result = qword_27EFA9540;
  if (!qword_27EFA9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9540);
  }

  return result;
}

unint64_t sub_24ADB892C()
{
  result = qword_27EFA9548;
  if (!qword_27EFA9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9548);
  }

  return result;
}

unint64_t sub_24ADB8980()
{
  result = qword_27EFA9550;
  if (!qword_27EFA9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9550);
  }

  return result;
}

unint64_t sub_24ADB89D4()
{
  result = qword_27EFA9558;
  if (!qword_27EFA9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9558);
  }

  return result;
}

unint64_t sub_24ADB8A28()
{
  result = qword_27EFA9560;
  if (!qword_27EFA9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9560);
  }

  return result;
}

unint64_t sub_24ADB8A7C()
{
  result = qword_27EFA9568;
  if (!qword_27EFA9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9568);
  }

  return result;
}

uint64_t _s11ServerImageV7VariantOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ServerImageV7VariantOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADB8CB4()
{
  result = qword_27EFA95C0;
  if (!qword_27EFA95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95C0);
  }

  return result;
}

unint64_t sub_24ADB8D0C()
{
  result = qword_27EFA95C8;
  if (!qword_27EFA95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95C8);
  }

  return result;
}

unint64_t sub_24ADB8D64()
{
  result = qword_27EFA95D0;
  if (!qword_27EFA95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95D0);
  }

  return result;
}

unint64_t sub_24ADB8DBC()
{
  result = qword_27EFA95D8;
  if (!qword_27EFA95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95D8);
  }

  return result;
}

unint64_t sub_24ADB8E14()
{
  result = qword_27EFA95E0;
  if (!qword_27EFA95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95E0);
  }

  return result;
}

unint64_t sub_24ADB8E6C()
{
  result = qword_27EFA95E8;
  if (!qword_27EFA95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95E8);
  }

  return result;
}

unint64_t sub_24ADB8EC4()
{
  result = qword_27EFA95F0;
  if (!qword_27EFA95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95F0);
  }

  return result;
}

unint64_t sub_24ADB8F1C()
{
  result = qword_27EFA95F8;
  if (!qword_27EFA95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95F8);
  }

  return result;
}

unint64_t sub_24ADB8F74()
{
  result = qword_27EFA9600;
  if (!qword_27EFA9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9600);
  }

  return result;
}

unint64_t sub_24ADB8FCC()
{
  result = qword_27EFA9608;
  if (!qword_27EFA9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9608);
  }

  return result;
}

unint64_t sub_24ADB9024()
{
  result = qword_27EFA9610;
  if (!qword_27EFA9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9610);
  }

  return result;
}

unint64_t sub_24ADB907C()
{
  result = qword_27EFA9618;
  if (!qword_27EFA9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9618);
  }

  return result;
}

unint64_t sub_24ADB90D4()
{
  result = qword_27EFA9620;
  if (!qword_27EFA9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9620);
  }

  return result;
}

unint64_t sub_24ADB912C()
{
  result = qword_27EFA9628;
  if (!qword_27EFA9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9628);
  }

  return result;
}

unint64_t sub_24ADB9184()
{
  result = qword_27EFA9630;
  if (!qword_27EFA9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9630);
  }

  return result;
}

unint64_t sub_24ADB91DC()
{
  result = qword_27EFA9638;
  if (!qword_27EFA9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9638);
  }

  return result;
}

unint64_t sub_24ADB9234()
{
  result = qword_27EFA9640;
  if (!qword_27EFA9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9640);
  }

  return result;
}

unint64_t sub_24ADB928C()
{
  result = qword_27EFA9648;
  if (!qword_27EFA9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9648);
  }

  return result;
}

unint64_t sub_24ADB92E4()
{
  result = qword_27EFA9650;
  if (!qword_27EFA9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9650);
  }

  return result;
}

unint64_t sub_24ADB933C()
{
  result = qword_27EFA9658;
  if (!qword_27EFA9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9658);
  }

  return result;
}

unint64_t sub_24ADB9394()
{
  result = qword_27EFA9660;
  if (!qword_27EFA9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9660);
  }

  return result;
}

uint64_t sub_24ADB9494(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PersonModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v23 = *(a1 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21 = a2;
    v22 = a1;
    while (v13 < *(a1 + 16))
    {
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      sub_24ADC3D4C(a1 + v15 + v16 * v13, v12, type metadata accessor for PersonModel);
      v17 = sub_24ADBD338(v12, a2);
      if (v2)
      {
        sub_24ADC3DB4(v12, type metadata accessor for PersonModel);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_24ADC3C30(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24ADFB2A0(0, *(v14 + 16) + 1, 1);
          v14 = v25;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24ADFB2A0(v19 > 1, v20 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_24ADC3C30(v24, v14 + v15 + v20 * v16);
        a2 = v21;
        a1 = v22;
      }

      else
      {
        result = sub_24ADC3DB4(v12, type metadata accessor for PersonModel);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

__n128 ItemEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *(type metadata accessor for ItemEntityQuery() + 20);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for ItemEntityQuery()
{
  result = qword_27EFA96A0;
  if (!qword_27EFA96A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemEntityQuery.customDefaultResult()(uint64_t a1)
{
  *(v2 + 1072) = v1;
  *(v2 + 1064) = a1;
  return MEMORY[0x2822009F8](sub_24ADB9824, 0, 0);
}

uint64_t sub_24ADB9824()
{
  v10 = v0;
  v1 = *(v0 + 1072);
  *(v0 + 612) = *(type metadata accessor for ItemEntityQuery() + 20);
  v2 = sub_24AE08DE8();
  v3 = sub_24AE09408();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v9);
    _os_log_impl(&dword_24AD89000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  *(v0 + 1056) = 0;
  v6 = swift_task_alloc();
  *(v0 + 1080) = v6;
  *v6 = v0;
  v6[1] = sub_24ADB99AC;
  v7 = *(v0 + 1072);

  return sub_24ADB9F44((v0 + 1056));
}

uint64_t sub_24ADB99AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1080);
  v7 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v5 = sub_24ADB9D38;
  }

  else
  {
    v5 = sub_24ADB9AC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ADB9AC4()
{
  v47 = v0;
  if (qword_27EFA87B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFAA480;
  v2 = qword_27EFA87C0;
  sub_24AE08288();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1088);
  v4 = qword_27EFAA488;
  LOBYTE(v38) = 2;
  v5 = MEMORY[0x277D84F90];
  *&v35 = MEMORY[0x277D84F90];
  *(&v35 + 1) = MEMORY[0x277D84F90];
  *&v36 = MEMORY[0x277D84F90];
  sub_24AE08288();
  *(&v36 + 1) = sub_24ADC2F7C(v5);
  *&v37 = v1;
  *(&v37 + 1) = v4;
  *(&v38 + 1) = 0;
  *&v39 = 0xE000000000000000;
  sub_24ADBBEB0(v3);

  v6 = v38;
  *(v0 + 1016) = v37;
  *(v0 + 1032) = v6;
  *(v0 + 1048) = v39;
  v7 = v36;
  *(v0 + 984) = v35;
  *(v0 + 1000) = v7;
  v8 = *(v0 + 1000);
  v9 = *(v0 + 1064);
  if (*(v8 + 16))
  {
    v10 = *(v8 + 32);
    v11 = *(v8 + 48);
    v12 = *(v8 + 80);
    *(v0 + 464) = *(v8 + 64);
    *(v0 + 480) = v12;
    *(v0 + 432) = v10;
    *(v0 + 448) = v11;
    v13 = *(v8 + 96);
    v14 = *(v8 + 112);
    v15 = *(v8 + 144);
    *(v0 + 528) = *(v8 + 128);
    *(v0 + 544) = v15;
    *(v0 + 496) = v13;
    *(v0 + 512) = v14;
    v16 = *(v8 + 160);
    v17 = *(v8 + 176);
    v18 = *(v8 + 192);
    *(v0 + 608) = *(v8 + 208);
    *(v0 + 576) = v17;
    *(v0 + 592) = v18;
    *(v0 + 560) = v16;
    v19 = *(v8 + 176);
    v43 = *(v8 + 160);
    v44 = v19;
    v45 = *(v8 + 192);
    v46 = *(v8 + 208);
    v20 = *(v8 + 112);
    v39 = *(v8 + 96);
    v40 = v20;
    v21 = *(v8 + 144);
    v41 = *(v8 + 128);
    v42 = v21;
    v22 = *(v8 + 48);
    v35 = *(v8 + 32);
    v36 = v22;
    v23 = *(v8 + 80);
    v37 = *(v8 + 64);
    v38 = v23;
    sub_24ADAF1D4(v0 + 432, v0 + 616);
    sub_24ADAF1D4(v0 + 432, v0 + 800);
    ItemEntity.init(model:)(&v35, v9);
    sub_24AD92BE4(v0 + 984, &qword_27EFA9670, &qword_24AE0DA98);
    sub_24ADAFAD4(v0 + 432);
    nullsub_1(v9);
  }

  else
  {
    sub_24AD92BE4(v0 + 984, &qword_27EFA9670, &qword_24AE0DA98);
    sub_24ADBA644((v0 + 224));
    *v9 = *(v0 + 224);
    v24 = *(v0 + 240);
    v25 = *(v0 + 256);
    v26 = *(v0 + 288);
    v9[3] = *(v0 + 272);
    v9[4] = v26;
    v9[1] = v24;
    v9[2] = v25;
    v27 = *(v0 + 304);
    v28 = *(v0 + 320);
    v29 = *(v0 + 352);
    v9[7] = *(v0 + 336);
    v9[8] = v29;
    v9[5] = v27;
    v9[6] = v28;
    v30 = *(v0 + 368);
    v31 = *(v0 + 384);
    v32 = *(v0 + 416);
    v9[11] = *(v0 + 400);
    v9[12] = v32;
    v9[9] = v30;
    v9[10] = v31;
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24ADB9D38()
{
  v27 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 612);
  v3 = *(v0 + 1072);
  v4 = v1;
  v5 = sub_24AE08DE8();
  v6 = sub_24AE093F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1096);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v26);
    *(v9 + 12) = 2114;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AD89000, v5, v6, "%s - error: %{public}@", v9, 0x16u);
    sub_24AD92BE4(v10, &qword_27EFA9668, &qword_24AE0DA90);
    MEMORY[0x24C231F80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C231F80](v11, -1, -1);
    MEMORY[0x24C231F80](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 1064);
  sub_24ADBA644((v0 + 16));
  *v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  v16 = *(v0 + 48);
  v17 = *(v0 + 80);
  v14[3] = *(v0 + 64);
  v14[4] = v17;
  v14[1] = v15;
  v14[2] = v16;
  v18 = *(v0 + 96);
  v19 = *(v0 + 112);
  v20 = *(v0 + 144);
  v14[7] = *(v0 + 128);
  v14[8] = v20;
  v14[5] = v18;
  v14[6] = v19;
  v21 = *(v0 + 160);
  v22 = *(v0 + 176);
  v23 = *(v0 + 208);
  v14[11] = *(v0 + 192);
  v14[12] = v23;
  v14[9] = v21;
  v14[10] = v22;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24ADB9F44(uint64_t *a1)
{
  v2[4] = v1;
  v4 = sub_24AE08388();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[7] = v7;
  v2[8] = v8;

  return MEMORY[0x2822009F8](sub_24ADBA00C, 0, 0);
}

uint64_t sub_24ADBA00C()
{
  v21 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(type metadata accessor for ItemEntityQuery() + 20);
  sub_24AE08288();
  v3 = sub_24AE08DE8();
  v4 = sub_24AE09408();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v20);
    *(v6 + 12) = 2080;
    *(v0 + 24) = v5;
    sub_24AE08288();
    v8 = sub_24AE08FF8();
    v10 = sub_24AD9F840(v8, v9, &v20);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s - will call fetchWithOptions: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v7, -1, -1);
    MEMORY[0x24C231F80](v6, -1, -1);
  }

  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  v14 = *v12;
  v13 = v12[1];
  *(v0 + 16) = *(v0 + 64);
  sub_24ADC4058(&qword_27EFA9678, type metadata accessor for ItemEntityQuery);
  sub_24AE084C8();
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_24ADBA2C0;
  v17 = *(v0 + 56);

  return v19(v0 + 16, v17);
}

uint64_t sub_24ADBA2C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v10 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_24ADBA5E0;
  }

  else
  {
    v8 = sub_24ADBA434;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24ADBA434()
{
  v17 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  v3 = *(v0 + 32);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v16);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x24C231100](v6, &type metadata for ItemModel);
    v11 = sub_24AD9F840(v9, v10, &v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - did receive fetchWithOptions: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v12 = *(v0 + 56);

  v13 = *(v0 + 8);
  v14 = *(v0 + 80);

  return v13(v14);
}

uint64_t sub_24ADBA5E0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

double sub_24ADBA644(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t ItemEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 392) = a1;
  *(v2 + 400) = v1;
  return MEMORY[0x2822009F8](sub_24ADBA688, 0, 0);
}

uint64_t sub_24ADBA688()
{
  v19 = v0;
  v1 = v0[49];
  v2 = v0[50];
  v3 = *(type metadata accessor for ItemEntityQuery() + 20);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[49];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v18);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C231100](v6, &type metadata for ItemModel.UniqueIdentifier);
    v11 = sub_24AD9F840(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - ids: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v12 = v0[49];
  v13 = sub_24AE08288();
  v14 = sub_24ADAE0E8(v13);

  v0[48] = v14;
  v15 = swift_task_alloc();
  v0[51] = v15;
  *v15 = v0;
  v15[1] = sub_24ADBA890;
  v16 = v0[50];

  return sub_24ADB9F44(v0 + 48);
}

uint64_t sub_24ADBA890(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v8 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  v5 = v3[48];

  if (v1)
  {
    v6 = sub_24ADBAB98;
  }

  else
  {
    v6 = sub_24ADBA9AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADBA9AC()
{
  v40 = v0;
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_24ADFB1C4(0, v2, 0);
    v3 = v36;
    v4 = v1 + 32;
    for (i = v2 - 1; ; --i)
    {
      v6 = *v4;
      v7 = *(v4 + 16);
      v8 = *(v4 + 48);
      *(v0 + 48) = *(v4 + 32);
      *(v0 + 64) = v8;
      *(v0 + 16) = v6;
      *(v0 + 32) = v7;
      v9 = *(v4 + 64);
      v10 = *(v4 + 80);
      v11 = *(v4 + 112);
      *(v0 + 112) = *(v4 + 96);
      *(v0 + 128) = v11;
      *(v0 + 80) = v9;
      *(v0 + 96) = v10;
      v12 = *(v4 + 128);
      v13 = *(v4 + 144);
      v14 = *(v4 + 160);
      *(v0 + 192) = *(v4 + 176);
      *(v0 + 160) = v13;
      *(v0 + 176) = v14;
      *(v0 + 144) = v12;
      v15 = *(v4 + 144);
      v38[8] = *(v4 + 128);
      v38[9] = v15;
      v38[10] = *(v4 + 160);
      v39 = *(v4 + 176);
      v16 = *(v4 + 80);
      v38[4] = *(v4 + 64);
      v38[5] = v16;
      v17 = *(v4 + 112);
      v38[6] = *(v4 + 96);
      v38[7] = v17;
      v18 = *(v4 + 16);
      v38[0] = *v4;
      v38[1] = v18;
      v19 = *(v4 + 48);
      v38[2] = *(v4 + 32);
      v38[3] = v19;
      sub_24ADAF1D4(v0 + 16, v0 + 200);
      ItemEntity.init(model:)(v38, v37);
      v21 = *(v36 + 16);
      v20 = *(v36 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24ADFB1C4((v20 > 1), v21 + 1, 1);
      }

      *(v36 + 16) = v21 + 1;
      v22 = (v36 + 208 * v21);
      v22[2] = v37[0];
      v23 = v37[1];
      v24 = v37[2];
      v25 = v37[4];
      v22[5] = v37[3];
      v22[6] = v25;
      v22[3] = v23;
      v22[4] = v24;
      v26 = v37[5];
      v27 = v37[6];
      v28 = v37[8];
      v22[9] = v37[7];
      v22[10] = v28;
      v22[7] = v26;
      v22[8] = v27;
      v29 = v37[9];
      v30 = v37[10];
      v31 = v37[12];
      v22[13] = v37[11];
      v22[14] = v31;
      v22[11] = v29;
      v22[12] = v30;
      if (!i)
      {
        break;
      }

      v4 += 184;
    }

    v32 = *(v0 + 416);
  }

  else
  {
    v33 = *(v0 + 416);

    v3 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 8);

  return v34(v3);
}

uint64_t ItemEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_24ADBABD4, 0, 0);
}

uint64_t sub_24ADBABD4()
{
  v14 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = *(type metadata accessor for ItemEntityQuery() + 20);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AD9F840(0xD000000000000013, 0x800000024AE13240, &v13);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24AD9F840(v7, v6, &v13);
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - string: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v9, -1, -1);
    MEMORY[0x24C231F80](v8, -1, -1);
  }

  v0[5] = 0;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_24ADBADA0;
  v11 = v0[9];

  return sub_24ADB9F44(v0 + 5);
}

uint64_t sub_24ADBADA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[10];
  v8 = *v2;
  v4[11] = v1;

  if (v1)
  {
    v6 = sub_24ADBAFDC;
  }

  else
  {
    v6 = sub_24ADBAEBC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADBAEBC()
{
  v13 = v0;
  if (qword_27EFA87B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = qword_27EFAA480;
  sub_24AE08288();
  v6 = sub_24ADAE244(&unk_285E2F568);
  v10 = 2;
  v9[0] = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = sub_24ADC2F7C(MEMORY[0x277D84F90]);
  v9[4] = v5;
  v9[5] = v6;
  v11 = v3;
  v12 = v2;
  sub_24AE08288();
  sub_24ADBBEB0(v1);

  sub_24ADBAFF4(v9, v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_24ADBAFF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31[8] = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9738, &qword_24AE0DD48);
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v35 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  v13 = a1[1];
  v31[7] = *a1;
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[8];
  v19 = sub_24AE08718();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = *(v13 + 16);
  if (v20)
  {
    v31[0] = v18;
    v31[1] = v17;
    v31[2] = v16;
    v31[3] = v15;
    v31[4] = v14;
    v31[6] = v12;
    v41 = MEMORY[0x277D84F90];
    sub_24ADFB1E4(0, v20, 0);
    v21 = v41;
    v33 = v3 + 32;
    v34 = v3;
    v31[5] = v13;
    v22 = (v13 + 56);
    v32 = v6;
    do
    {
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v26 = *(v22 - 1);
      v25 = *v22;
      v38 = v23;
      v39 = v24;
      v40 = v26;
      sub_24ADC3E34(v23);
      sub_24AE08288();
      v27 = ItemModel.Section.title.getter(v35);
      v37 = v31;
      MEMORY[0x28223BE20](v27);
      v31[-4] = v23;
      v31[-3] = v24;
      v31[-2] = v26;
      v31[-1] = v25;
      sub_24ADB411C();
      sub_24AE08458();
      sub_24ADC3E58(v23);

      v41 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24ADFB1E4(v28 > 1, v29 + 1, 1);
        v21 = v41;
      }

      *(v21 + 16) = v29 + 1;
      (*(v34 + 32))(v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, v32, v36);
      v22 += 4;
      --v20;
    }

    while (v20);
  }

  sub_24ADB411C();
  return sub_24AE08468();
}

uint64_t ItemEntityQuery.allEntities()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24ADBB3E0, 0, 0);
}

uint64_t sub_24ADBB3E0()
{
  v11 = v0;
  v1 = v0[7];
  v2 = v1 + *(type metadata accessor for ItemEntityQuery() + 20);
  v3 = sub_24AE08DE8();
  v4 = sub_24AE09408();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AD9F840(0x7469746E456C6C61, 0xED00002928736569, &v10);
    _os_log_impl(&dword_24AD89000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C231F80](v6, -1, -1);
    MEMORY[0x24C231F80](v5, -1, -1);
  }

  v0[5] = 0;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_24ADBB56C;
  v8 = v0[7];

  return sub_24ADB9F44(v0 + 5);
}

uint64_t sub_24ADBB56C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[8];
  v8 = *v2;
  v4[9] = v1;

  if (v1)
  {
    v6 = sub_24ADBB798;
  }

  else
  {
    v6 = sub_24ADBB688;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADBB688()
{
  v11 = v0;
  if (qword_27EFA87B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[6];
  v3 = qword_27EFAA480;
  sub_24AE08288();
  v4 = sub_24ADAE244(&unk_285E2F590);
  v8 = 2;
  v7[0] = MEMORY[0x277D84F90];
  v7[1] = MEMORY[0x277D84F90];
  v7[2] = MEMORY[0x277D84F90];
  v7[3] = sub_24ADC2F7C(MEMORY[0x277D84F90]);
  v7[4] = v3;
  v7[5] = v4;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_24ADBBEB0(v1);

  sub_24ADBAFF4(v7, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24ADBB7B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD8E628;

  return ItemEntityQuery.allEntities()(a1);
}

uint64_t sub_24ADBB8A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return ItemEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADBB93C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA250] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_24ADC4058(&qword_27EFA96B0, type metadata accessor for ItemEntityQuery);
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return MEMORY[0x28210C0E8](a1, a2, v7);
}

uint64_t sub_24ADBBA20(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_24ADC4058(&qword_27EFA91C0, type metadata accessor for ItemEntityQuery);
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_24ADBBB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9740, &qword_24AE0DD50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = a4 + 32;
    v40 = (v6 + 8);
    v41 = v6 + 16;
    v13 = MEMORY[0x277D84F90];
    v14 = v10;
    v39 = xmmword_24AE0A280;
    v15 = v8;
    v42 = v6;
    do
    {
      v43 = v11;
      v16 = *(v12 + 144);
      v17 = *(v12 + 112);
      v64 = *(v12 + 128);
      v65 = v16;
      v18 = *(v12 + 144);
      v66 = *(v12 + 160);
      v19 = *(v12 + 80);
      v20 = *(v12 + 48);
      v60 = *(v12 + 64);
      v61 = v19;
      v21 = *(v12 + 80);
      v22 = *(v12 + 112);
      v62 = *(v12 + 96);
      v63 = v22;
      v23 = *(v12 + 16);
      v57[0] = *v12;
      v57[1] = v23;
      v24 = *(v12 + 48);
      v26 = *v12;
      v25 = *(v12 + 16);
      v58 = *(v12 + 32);
      v59 = v24;
      v77 = v64;
      v78 = v18;
      v79 = *(v12 + 160);
      v73 = v60;
      v74 = v21;
      v75 = v62;
      v76 = v17;
      v69 = v26;
      v70 = v25;
      v67 = *(v12 + 176);
      LOWORD(v80) = *(v12 + 176);
      v71 = v58;
      v72 = v20;
      sub_24ADAF1D4(v57, v68);
      ItemEntity.init(model:)(&v69, v68);
      v54 = v68[10];
      v55 = v68[11];
      v56 = v68[12];
      v50 = v68[6];
      v51 = v68[7];
      v52 = v68[8];
      v53 = v68[9];
      v46 = v68[2];
      v47 = v68[3];
      v48 = v68[4];
      v49 = v68[5];
      v44 = v68[0];
      v45 = v68[1];
      sub_24ADB411C();
      sub_24AE082A8();
      v79 = v54;
      v80 = v55;
      v81 = v56;
      v75 = v50;
      v76 = v51;
      v77 = v52;
      v78 = v53;
      v71 = v46;
      v72 = v47;
      v73 = v48;
      v74 = v49;
      v69 = v44;
      v70 = v45;
      sub_24ADC3E70(&v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9748, &qword_24AE0DD58);
      v27 = *(v6 + 72);
      v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v29 = swift_allocObject();
      v30 = v13;
      *(v29 + 16) = v39;
      v31 = v14;
      (*(v6 + 16))(v29 + v28, v14, v15);
      v32 = sub_24AE08288();
      v33 = v30;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_24ADAB0E0(0, v30[2] + 1, 1, v30);
      }

      v35 = v33[2];
      v34 = v33[3];
      v36 = v33;
      if (v35 >= v34 >> 1)
      {
        v36 = sub_24ADAB0E0((v34 > 1), v35 + 1, 1, v33);
      }

      v14 = v31;
      (*v40)(v31, v15);
      v36[2] = v35 + 1;
      v13 = v36;
      v36[v35 + 4] = v32;
      v12 += 184;
      v6 = v42;
      v11 = v43 - 1;
    }

    while (v43 != 1);
  }

  sub_24ADB411C();
  sub_24AE08278();

  v37 = sub_24AE08288();

  return v37;
}

uint64_t sub_24ADBBEB0(uint64_t a1)
{
  v124 = a1;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9750, &qword_24AE12010);
  v2 = *(v129 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v129);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v122 - v7;
  v125 = v1;
  v9 = 0;
  v10 = sub_24ADC39D0(&unk_285E2F448, v1, sub_24ADFB194);
  v11 = *(v10 + 16);
  if (v11)
  {
    v123 = 0;
    *&v134 = MEMORY[0x277D84F90];
    v12 = v10;
    sub_24ADFB154(0, v11, 0);
    v13 = v12;
    v14 = 0;
    v127 = v12;
    v128 = v2;
    v15 = (v2 + 32);
    v16 = v134;
    v126 = v11;
    while (1)
    {
      if (v14 >= v13[2])
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        sub_24AE097E8();
        __break(1u);
        goto LABEL_65;
      }

      v130 = v16;
      v17 = *(v13 + v14 + 32);
      MEMORY[0x28223BE20](v13);
      *(&v122 - 2) = &type metadata for ItemModel.Sort;
      *(&v122 - 1) = sub_24ADC3EC4();
      swift_getKeyPath();
      if (v17 <= 1)
      {
        v18 = v129;
      }

      else
      {
        v18 = v129;
        if (v17 != 2)
        {
          swift_getKeyPath();
          if (v17 == 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9790, &qword_24AE0DDC8);
            sub_24AE09648();

            sub_24ADC3FB4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9758, &qword_24AE0DD88);
            sub_24AE09648();

            sub_24ADC3F18();
          }

          goto LABEL_12;
        }
      }

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A0, &qword_24AE0DDF8);
      sub_24AE09648();

LABEL_12:
      sub_24AE086A8();
      v19 = *v15;
      v20 = v6;
      (*v15)(v8, v6, v18);

      v16 = v130;
      *&v134 = v130;
      v21 = v18;
      v23 = v130[2];
      v22 = v130[3];
      v12 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        sub_24ADFB154(v22 > 1, v23 + 1, 1);
        v16 = v134;
      }

      ++v14;
      v16[2] = v12;
      v19(v16 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v23, v8, v21);
      v13 = v127;
      v6 = v20;
      if (v126 == v14)
      {

        v9 = v123;
        v24 = v16;
        goto LABEL_17;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_17:
  v25 = sub_24AE08288();
  v26 = v125;
  v27 = sub_24ADC3394(v25, v125);

  v28 = sub_24ADC35A4(v27, v26);
  v130 = v9;

  *&v134 = v28;
  *&v132[0] = v24;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9768, &qword_24AE0DD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9770, &qword_24AE0DD98);
  sub_24AD9B548(&qword_27EFA9778, &qword_27EFA9768, &qword_24AE0DD90);
  sub_24AD9B548(&qword_27EFA9780, &qword_27EFA9770, &qword_24AE0DD98);
  sub_24AD9B548(&qword_27EFA9788, &qword_27EFA9750, &qword_24AE12010);
  v29 = sub_24AE09128();

  v30 = sub_24AE08288();
  v12 = v130;
  v31 = sub_24ADC2204(v30, v26);
  v129 = v29;

  v130 = v31;
  v32 = v31[2];
  if (v32)
  {
    v33 = v12;
    v34 = sub_24ADBD4E4(v31[2], 0);
    v128 = sub_24ADC1B70(&v134, v34 + 4, v32, v130);
    v12 = v136;
    swift_bridgeObjectRetain_n();
    sub_24ADC3C28();
    if (v128 != v32)
    {
      goto LABEL_63;
    }

    v12 = v33;
  }

  else
  {
    sub_24AE08288();
    v34 = MEMORY[0x277D84F90];
  }

  *&v134 = v34;
  sub_24ADBF8F4(&v134, sub_24ADC2008, &type metadata for ItemModel.Section, sub_24ADBFEF8, sub_24ADBFAA0);
  if (v12)
  {
LABEL_65:

    __break(1u);
    return result;
  }

  v35 = v134;
  v36 = *(v134 + 16);
  if (!v36)
  {
    v39 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v37 = 0;
  v38 = v134 + 48;
  v39 = MEMORY[0x277D84F90];
  v127 = *(v134 + 16);
  do
  {
    v128 = v39;
    v12 = (v36 - v37);
    v40 = (v38 + 24 * v37);
    while (1)
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_59;
      }

      if (!v130[2])
      {
        goto LABEL_26;
      }

      v41 = *(v40 - 2);
      v42 = *(v40 - 1);
      v43 = *v40;
      sub_24ADC3E34(v41);
      v44 = sub_24ADD6C14(v41, v42, v43);
      if (v45)
      {
        break;
      }

      sub_24ADC3E58(v41);
LABEL_26:
      v41 = 0x1FFFFFFFELL;
LABEL_27:
      sub_24ADC3F6C(v41);
      v40 += 3;
      ++v37;
      v12 = (v12 - 1);
      if (!v12)
      {
        v39 = v128;
        goto LABEL_42;
      }
    }

    v46 = v35;
    v47 = v38;
    v48 = *(v130[7] + 8 * v44);
    sub_24AE08288();
    if (v41 >> 1 == 0xFFFFFFFF)
    {
      v38 = v47;
      v35 = v46;
      goto LABEL_27;
    }

    v49 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_24ADAAD80(0, v49[2] + 1, 1, v49);
    }

    v50 = v49;
    v51 = v49[2];
    v52 = v50;
    v53 = v50[3];
    v54 = v51 + 1;
    if (v51 >= v53 >> 1)
    {
      v128 = v51 + 1;
      v57 = sub_24ADAAD80((v53 > 1), v51 + 1, 1, v50);
      v54 = v128;
      v55 = v48;
      v52 = v57;
    }

    else
    {
      v55 = v48;
    }

    v38 = v47;
    ++v37;
    v52[2] = v54;
    v56 = &v52[4 * v51];
    v39 = v52;
    v56[4] = v41;
    v56[5] = v42;
    v56[6] = v43;
    v56[7] = v55;
    v36 = v127;
    v35 = v46;
  }

  while (v12 != 1);
LABEL_42:

  v58 = v124;
  v12 = v125;
  v59 = *v125;
  sub_24AE08288();

  *v12 = v58;
  v60 = v12[1];

  v12[1] = v39;
  v61 = v12[2];
  v62 = v129;
  sub_24AE08288();

  v12[2] = v62;
  v63 = sub_24ADC2F7C(MEMORY[0x277D84F90]);
  v64 = *(v62 + 16);
  if (v64)
  {
    v65 = 0;
    v66 = v62 + 32;
    while (1)
    {
      if (v65 >= *(v62 + 16))
      {
        goto LABEL_60;
      }

      v86 = *v66;
      v87 = *(v66 + 16);
      v88 = *(v66 + 48);
      v136 = *(v66 + 32);
      v137 = v88;
      v134 = v86;
      v135 = v87;
      v89 = *(v66 + 64);
      v90 = *(v66 + 80);
      v91 = *(v66 + 112);
      v140 = *(v66 + 96);
      v141 = v91;
      v138 = v89;
      v139 = v90;
      v92 = *(v66 + 128);
      v93 = *(v66 + 144);
      v94 = *(v66 + 160);
      v145 = *(v66 + 176);
      v143 = v93;
      v144 = v94;
      v142 = v92;
      v12 = *(&v134 + 1);
      v95 = v134;
      sub_24ADAF1D4(&v134, v132);
      sub_24ADAF1D4(&v134, v132);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v63;
      v97 = sub_24ADD6B54(v95, v12);
      v99 = v63[2];
      v100 = (v98 & 1) == 0;
      v101 = __OFADD__(v99, v100);
      v102 = v99 + v100;
      if (v101)
      {
        goto LABEL_61;
      }

      v103 = v98;
      if (v63[3] < v102)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_52;
      }

      v118 = v97;
      sub_24ADBF6F4();
      v97 = v118;
      if (v103)
      {
LABEL_44:
        v63 = v131;
        v67 = v131[7] + 184 * v97;
        v68 = *(v67 + 48);
        v70 = *v67;
        v69 = *(v67 + 16);
        v132[2] = *(v67 + 32);
        v132[3] = v68;
        v132[0] = v70;
        v132[1] = v69;
        v71 = *(v67 + 112);
        v73 = *(v67 + 64);
        v72 = *(v67 + 80);
        v132[6] = *(v67 + 96);
        v132[7] = v71;
        v132[4] = v73;
        v132[5] = v72;
        v75 = *(v67 + 144);
        v74 = *(v67 + 160);
        v76 = *(v67 + 128);
        v133 = *(v67 + 176);
        v132[9] = v75;
        v132[10] = v74;
        v132[8] = v76;
        v77 = v134;
        v78 = v135;
        v79 = v137;
        *(v67 + 32) = v136;
        *(v67 + 48) = v79;
        *v67 = v77;
        *(v67 + 16) = v78;
        v80 = v138;
        v81 = v139;
        v82 = v141;
        *(v67 + 96) = v140;
        *(v67 + 112) = v82;
        *(v67 + 64) = v80;
        *(v67 + 80) = v81;
        v83 = v142;
        v84 = v143;
        v85 = v144;
        *(v67 + 176) = v145;
        *(v67 + 144) = v84;
        *(v67 + 160) = v85;
        *(v67 + 128) = v83;
        sub_24ADAFAD4(v132);
        sub_24ADAFAD4(&v134);
        goto LABEL_45;
      }

LABEL_53:
      v63 = v131;
      v131[(v97 >> 6) + 8] |= 1 << v97;
      v105 = (v63[6] + 16 * v97);
      *v105 = v95;
      v105[1] = v12;
      v106 = v63[7] + 184 * v97;
      v107 = v145;
      v109 = v143;
      v108 = v144;
      *(v106 + 128) = v142;
      *(v106 + 144) = v109;
      *(v106 + 160) = v108;
      *(v106 + 176) = v107;
      v111 = v140;
      v110 = v141;
      v112 = v139;
      *(v106 + 64) = v138;
      *(v106 + 80) = v112;
      *(v106 + 96) = v111;
      *(v106 + 112) = v110;
      v114 = v136;
      v113 = v137;
      v115 = v135;
      *v106 = v134;
      *(v106 + 16) = v115;
      *(v106 + 32) = v114;
      *(v106 + 48) = v113;
      sub_24AE08288();
      sub_24ADAFAD4(&v134);
      v116 = v63[2];
      v101 = __OFADD__(v116, 1);
      v117 = v116 + 1;
      if (v101)
      {
        goto LABEL_62;
      }

      v63[2] = v117;
LABEL_45:
      ++v65;
      v66 += 184;
      v62 = v129;
      if (v64 == v65)
      {
        goto LABEL_57;
      }
    }

    sub_24ADBE4C4(v102, isUniquelyReferenced_nonNull_native);
    v97 = sub_24ADD6B54(v95, v12);
    if ((v103 & 1) != (v104 & 1))
    {
      goto LABEL_64;
    }

LABEL_52:
    if (v103)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_57:

  v119 = v125;
  v120 = v125[3];

  v119[3] = v63;
  return result;
}

uint64_t sub_24ADBC970(uint64_t a1)
{
  v85 = a1;
  v2 = type metadata accessor for PersonModel();
  v90 = *(v2 - 8);
  v3 = *(v90 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v93 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = (&v83 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96B8, &qword_24AE11FD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  v86 = v1;
  v15 = 0;
  v16 = sub_24ADC39D0(&unk_285E2F608, v1, sub_24ADFB324);
  v17 = *(v16 + 16);
  if (v17)
  {
    v84 = 0;
    v91 = v7;
    v94[0] = MEMORY[0x277D84F90];
    v18 = v16;
    sub_24ADFB2E4(0, v17, 0);
    v19 = v18;
    v20 = 0;
    v88 = v18;
    v89 = v8;
    v21 = (v8 + 32);
    v22 = v94[0];
    v87 = v17;
    while (v20 < *(v19 + 16))
    {
      v23 = *(v19 + v20 + 32);
      MEMORY[0x28223BE20](v19);
      *(&v83 - 2) = &type metadata for PersonModel.Sort;
      *(&v83 - 1) = sub_24ADC3B80();
      swift_getKeyPath();
      if (v23 > 1)
      {
        swift_getKeyPath();
        if (v23 == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9700, &qword_24AE0DCC8);
          sub_24AE09648();

          sub_24ADC3CF8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96C8, &qword_24AE0DC88);
          sub_24AE09648();

          sub_24ADC3BD4();
        }
      }

      else
      {
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9710, &qword_24AE0DCF8);
        sub_24AE09648();
      }

      sub_24AE086A8();
      v24 = *v21;
      v25 = v12;
      v26 = v12;
      v27 = v91;
      (*v21)(v14, v26, v91);

      v94[0] = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      v15 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        sub_24ADFB2E4(v28 > 1, v29 + 1, 1);
        v22 = v94[0];
      }

      ++v20;
      *(v22 + 16) = v15;
      v24(v22 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v29, v14, v27);
      v19 = v88;
      v12 = v25;
      if (v87 == v20)
      {

        v15 = v84;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_14:
  v30 = sub_24AE08288();
  v31 = v86;
  v32 = sub_24ADB9494(v30, v86);
  v33 = sub_24ADC3794(v32, v31);
  v91 = v15;

  v94[0] = v33;
  v94[5] = v22;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96D8, &qword_24AE0DC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96E0, &qword_24AE0DC98);
  sub_24AD9B548(&qword_27EFA96E8, &qword_27EFA96D8, &qword_24AE0DC90);
  sub_24AD9B548(&qword_27EFA96F0, &qword_27EFA96E0, &qword_24AE0DC98);
  sub_24AD9B548(&qword_27EFA96F8, &qword_27EFA96B8, &qword_24AE11FD0);
  v34 = sub_24AE09128();

  v35 = sub_24AE08288();
  v15 = v91;
  v36 = sub_24ADC2824(v35, v31);

  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v15;
    v39 = sub_24ADBD670(*(v36 + 16), 0);
    v91 = sub_24ADC1F0C(v94, v39 + 32, v37, v36);
    v15 = v94[4];
    swift_bridgeObjectRetain_n();
    sub_24ADC3C28();
    if (v91 != v37)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      sub_24AE097E8();
      __break(1u);
      goto LABEL_56;
    }

    v15 = v38;
  }

  else
  {
    sub_24AE08288();
    v39 = MEMORY[0x277D84F90];
  }

  v94[0] = v39;
  sub_24ADBF8F4(v94, sub_24ADC201C, &type metadata for PersonModel.Section, sub_24ADC0A88, sub_24ADBFE00);
  if (!v15)
  {

    v40 = v94[0];
    v41 = *(v94[0] + 16);
    if (v41)
    {
      v42 = v94[0] + 32;
      v43 = (v41 - 1);
      v15 = MEMORY[0x277D84F90];
      v44 = 0;
      while (v44 < *(v40 + 16))
      {
        if (*(v36 + 16) && (v45 = *(v44 + v42), v46 = sub_24ADD6D1C(v45), (v47 & 1) != 0) && (v48 = *(*(v36 + 56) + 8 * v46), sub_24AE08288(), v48))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_24ADAB22C(0, v15[2] + 1, 1, v15);
          }

          v51 = v15[2];
          v50 = v15[3];
          v52 = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            v89 = v51 + 1;
            v54 = sub_24ADAB22C((v50 > 1), v51 + 1, 1, v15);
            v52 = v89;
            v15 = v54;
          }

          v15[2] = v52;
          v53 = &v15[2 * v51];
          *(v53 + 32) = v45;
          v53[5] = v48;
          v43 = v91;
          if (v91 == v44)
          {
            goto LABEL_33;
          }

          v44 = (v44 + 1);
        }

        else
        {
          v44 = (v44 + 1);

          if (v41 == v44)
          {
            goto LABEL_33;
          }
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_33:

    v56 = v85;
    v55 = v86;
    v57 = *v86;
    sub_24AE08288();

    *v55 = v56;
    v58 = v55[1];

    v55[1] = v15;
    v59 = v55[2];
    sub_24AE08288();

    v55[2] = v34;
    v60 = sub_24ADC2030(MEMORY[0x277D84F90]);
    v61 = *(v34 + 16);
    if (!v61)
    {
LABEL_48:

      v80 = v86;
      v81 = v86[3];

      v80[3] = v60;
      return result;
    }

    v62 = 0;
    v63 = v34 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    while (1)
    {
      if (v62 >= *(v34 + 16))
      {
        goto LABEL_51;
      }

      v64 = *(v90 + 72);
      v65 = v92;
      sub_24ADC3D4C(v63 + v64 * v62, v92, type metadata accessor for PersonModel);
      v15 = *v65;
      v66 = v65[1];
      sub_24ADC3D4C(v65, v93, type metadata accessor for PersonModel);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v60;
      v68 = sub_24ADD69C8(v15, v66);
      v70 = v60[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_52;
      }

      v74 = v69;
      if (v60[3] < v73)
      {
        break;
      }

      if (v67)
      {
        goto LABEL_43;
      }

      v79 = v68;
      sub_24ADBF2F0();
      v68 = v79;
      v60 = v94[0];
      if (v74)
      {
LABEL_35:
        sub_24ADC3C94(v93, v60[7] + v68 * v64);
        goto LABEL_36;
      }

LABEL_44:
      v60[(v68 >> 6) + 8] |= 1 << v68;
      v76 = (v60[6] + 16 * v68);
      *v76 = v15;
      v76[1] = v66;
      sub_24ADC3C30(v93, v60[7] + v68 * v64);
      v77 = v60[2];
      v72 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v72)
      {
        goto LABEL_53;
      }

      v60[2] = v78;
      sub_24AE08288();
LABEL_36:
      ++v62;
      sub_24ADC3DB4(v92, type metadata accessor for PersonModel);
      if (v61 == v62)
      {
        goto LABEL_48;
      }
    }

    sub_24ADBD6E4(v73, v67);
    v68 = sub_24ADD69C8(v15, v66);
    if ((v74 & 1) != (v75 & 1))
    {
      goto LABEL_55;
    }

LABEL_43:
    v60 = v94[0];
    if (v74)
    {
      goto LABEL_35;
    }

    goto LABEL_44;
  }

LABEL_56:

  __break(1u);
  return result;
}

uint64_t sub_24ADBD338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(a2 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v22 = *(a1 + 64);
    v25 = *(a1 + 72);
    v20 = *(a2 + 56);
    v21 = *(a2 + 64);
    sub_24ADA16A8();
    sub_24AE08288();
    v19 = sub_24AE09468();
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v27 = *(a1 + 40);
    v9 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    *(inited + 48) = v7;
    *(inited + 56) = v27;
    *(inited + 64) = v8;
    v23 = inited;
    sub_24AE08288();
    sub_24AE08288();
    v11 = sub_24AE08288();
    result = sub_24ADFC258(v11);
    v13 = v23;
    v14 = (v23 + 40);
    v15 = -*(v23 + 16);
    v16 = -1;
    while (1)
    {
      if (v15 + v16 == -1)
      {
        v18 = v19;
        goto LABEL_11;
      }

      if (++v16 >= *(v13 + 16))
      {
        break;
      }

      v17 = v14 + 5;
      v24 = *(v14 - 1);
      v26 = *v14;
      result = sub_24AE09468();
      v14 = v17;
      if (result)
      {
        v18 = 1;
LABEL_11:

        return v18 & 1;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = 1;
    return v18 & 1;
  }

  return result;
}

void *sub_24ADBD4E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97B0, &qword_24AE0DE78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_24ADBD574(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9058, &qword_24AE0B980);
  v4 = *(type metadata accessor for PersonModel() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24ADBD670(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9720, &qword_24AE0DD30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24ADBD6E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PersonModel();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
  v44 = a2;
  result = sub_24AE09618();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24ADC3C30(v31, v45);
      }

      else
      {
        sub_24ADC3D4C(v31, v45, type metadata accessor for PersonModel);
        sub_24AE08288();
      }

      v32 = *(v12 + 40);
      sub_24AE09838();
      v46 = 0x3A3156444953;
      v47 = 0xE600000000000000;
      MEMORY[0x24C230FB0](v28, v29);
      sub_24AE09048();

      result = sub_24AE09868();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24ADC3C30(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24ADBDA64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97E8, &qword_24AE0DEA8);
  v33 = a2;
  result = sub_24AE09618();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
        sub_24AE08288();
        sub_24AE08288();
      }

      v23 = *(v8 + 40);
      sub_24AE09838();
      sub_24AE09858();
      if (v22)
      {
        sub_24AE08288();
        sub_24AE09048();
      }

      result = sub_24AE09868();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_24ADBDD3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97D8, &qword_24AE0DE98);
  v43 = a2;
  result = sub_24AE09618();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v26 = *(v5 + 56) + (v22 << 7);
      if (v43)
      {
        v53 = *(v26 + 8);
        v54 = *(v26 + 9);
        v44 = *(v26 + 16);
        v45 = *(v26 + 32);
        v46 = *(v26 + 48);
        v47 = *(v26 + 64);
        v48 = *(v26 + 80);
        v49 = *(v26 + 96);
        v51 = *(v26 + 112);
        v52 = *v26;
        v50 = *(v26 + 120);
      }

      else
      {
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *v26;
        v57 = *(v26 + 16);
        v58 = v28;
        v56 = v29;
        v30 = *(v26 + 112);
        v32 = *(v26 + 64);
        v31 = *(v26 + 80);
        v62 = *(v26 + 96);
        v63 = v30;
        v60 = v32;
        v61 = v31;
        v59 = v27;
        v53 = BYTE8(v56);
        v54 = BYTE9(v56);
        v51 = v30;
        v52 = v56;
        v50 = *(&v30 + 1);
        v48 = v31;
        v49 = v62;
        v46 = v27;
        v47 = v32;
        v44 = v57;
        v45 = v28;
        sub_24AE08288();
        sub_24ADAE7A8(&v56, v55);
      }

      v33 = *(v8 + 40);
      sub_24AE09838();
      v55[0] = 0x3A3156444953;
      v55[1] = 0xE600000000000000;
      MEMORY[0x24C230FB0](v24, v25);
      sub_24AE09048();

      result = sub_24AE09868();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 7);
      *v18 = v52;
      *(v18 + 8) = v53;
      *(v18 + 9) = v54;
      *(v18 + 16) = v44;
      *(v18 + 32) = v45;
      *(v18 + 48) = v46;
      *(v18 + 64) = v47;
      *(v18 + 80) = v48;
      *(v18 + 96) = v49;
      *(v18 + 112) = v51;
      *(v18 + 120) = v50;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24ADBE0E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24AE089B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97C8, &qword_24AE0DE90);
  v43 = a2;
  result = sub_24AE09618();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        sub_24AE08288();
      }

      v29 = *(v14 + 40);
      sub_24ADC4058(&qword_27EFA97D0, MEMORY[0x277D08FF0]);
      result = sub_24AE08EA8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24ADBE4C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A8, &qword_24AE0DE70);
  v46 = a2;
  result = sub_24AE09618();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
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
      v26 = *(v5 + 56) + 184 * v22;
      if (v46)
      {
        v50 = *v26;
        v51 = *(v26 + 16);
        v47 = *(v26 + 8);
        v48 = *(v26 + 24);
        v55 = *(v26 + 32);
        v56 = *(v26 + 48);
        v52 = *(v26 + 72);
        v49 = *(v26 + 80);
        v61 = *(v26 + 104);
        v59 = *(v26 + 88);
        v57 = *(v26 + 128);
        v58 = *(v26 + 120);
        v53 = *(v26 + 136);
        v54 = *(v26 + 64);
        v60 = *(v26 + 144);
        v62 = *(v26 + 145);
        v63 = *(v26 + 152);
        v64 = *(v26 + 160);
        v65 = *(v26 + 176);
        v66 = *(v26 + 177);
      }

      else
      {
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *v26;
        v69 = *(v26 + 16);
        v70 = v28;
        v68 = v29;
        v30 = *(v26 + 112);
        v32 = *(v26 + 64);
        v31 = *(v26 + 80);
        *&v73[16] = *(v26 + 96);
        *&v73[32] = v30;
        v72 = v32;
        *v73 = v31;
        v34 = *(v26 + 144);
        v33 = *(v26 + 160);
        v35 = *(v26 + 128);
        v77 = *(v26 + 176);
        v75 = v34;
        v76 = v33;
        v74 = v35;
        v71 = v27;
        v66 = HIBYTE(v77);
        v65 = v77;
        v64 = v33;
        v63 = *(&v34 + 1);
        v62 = BYTE1(v34);
        v60 = v34;
        v61 = *&v73[24];
        v59 = *&v73[8];
        v57 = v35;
        v58 = *&v73[40];
        v55 = v70;
        v56 = v27;
        v53 = *(&v35 + 1);
        v54 = v32;
        v49 = v73[0];
        v51 = v69;
        v52 = *(&v32 + 1);
        v47 = *(&v68 + 1);
        v50 = v68;
        v48 = *(&v69 + 1);
        sub_24AE08288();
        sub_24ADAF1D4(&v68, v67);
      }

      v36 = *(v8 + 40);
      sub_24AE09838();
      v67[0] = 0x3A315644494142;
      v67[1] = 0xE700000000000000;
      MEMORY[0x24C230FB0](v24, v25);
      sub_24AE09048();

      result = sub_24AE09868();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 184 * v16;
      *v18 = v50;
      *(v18 + 8) = v47;
      *(v18 + 16) = v51;
      *(v18 + 24) = v48;
      *(v18 + 32) = v55;
      *(v18 + 48) = v56;
      *(v18 + 64) = v54;
      *(v18 + 72) = v52;
      *(v18 + 80) = v49;
      *(v18 + 104) = v61;
      *(v18 + 88) = v59;
      *(v18 + 120) = v58;
      *(v18 + 128) = v57;
      *(v18 + 136) = v53;
      *(v18 + 144) = v60;
      *(v18 + 145) = v62;
      *(v18 + 152) = v63;
      *(v18 + 160) = v64;
      *(v18 + 176) = v65;
      *(v18 + 177) = v66;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v46 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24ADBE980(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97B8, &qword_24AE0DE80);
  v45 = a2;
  result = sub_24AE09618();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v9 >= v14)
          {
            break;
          }

          v20 = v10[v9];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v13 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((v45 & 1) == 0)
        {

          v3 = v43;
          goto LABEL_49;
        }

        v42 = 1 << *(v5 + 32);
        v3 = v43;
        if (v42 >= 64)
        {
          bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v42;
        }

        *(v5 + 16) = 0;
        goto LABEL_48;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v45 & 1) == 0)
      {
        v28 = v23[1];
        v29 = v23[2];
        sub_24ADC3E34(*v23);
        sub_24AE08288();
      }

      v30 = *(v8 + 40);
      sub_24AE09838();
      v31 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        break;
      }

      if (!v31)
      {
        v32 = 1;
        goto LABEL_24;
      }

      MEMORY[0x24C231780](2);
      MEMORY[0x24C231780](v24 & 1);
      sub_24AE09048();
LABEL_27:
      result = sub_24AE09868();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_51:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v44;
    }

    if (v31 == 2)
    {
      v32 = 3;
LABEL_24:
      MEMORY[0x24C231780](v32);
      v33 = v24 & 1;
    }

    else if (v24 == 0xC000000000000000 && (v26 | v25) == 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = 4;
    }

    MEMORY[0x24C231780](v33);
    goto LABEL_27;
  }

LABEL_48:

LABEL_49:
  *v3 = v8;
  return result;
}

uint64_t sub_24ADBECCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9728, &qword_24AE0DD38);
  v33 = a2;
  result = sub_24AE09618();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        sub_24AE08288();
      }

      v23 = *(v8 + 40);
      sub_24AE09838();
      MEMORY[0x24C231780](v21);
      result = sub_24AE09868();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24ADBEF5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24ADD69C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24ADBF2F0();
      goto LABEL_7;
    }

    sub_24ADBD6E4(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_24ADD69C8(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24AE097E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PersonModel() - 8) + 72) * v12;

    return sub_24ADC3C94(a1, v20);
  }

LABEL_13:
  sub_24ADBF258(v12, a2, a3, a1, v18);

  return sub_24AE08288();
}

uint64_t sub_24ADBF0C0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24ADD69C8(a2, a3);
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
      sub_24ADBDD3C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24ADD69C8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24AE097E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24ADBF534();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 7);

    return sub_24ADC40A0(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 7));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v26[2] = a1[2];
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = a1[4];
  v31 = a1[5];
  v32 = a1[7];
  v26[6] = a1[6];
  v26[7] = v32;
  v26[4] = v30;
  v26[5] = v31;
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;

  return sub_24AE08288();
}

uint64_t sub_24ADBF258(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PersonModel();
  result = sub_24ADC3C30(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_24ADBF2F0()
{
  v1 = v0;
  v2 = type metadata accessor for PersonModel();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
  v5 = *v0;
  v6 = sub_24AE09608();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24ADC3D4C(*(v5 + 56) + v27, v31, type metadata accessor for PersonModel);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24ADC3C30(v26, *(v28 + 56) + v27);
        result = sub_24AE08288();
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

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24ADBF534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97D8, &qword_24AE0DE98);
  v2 = *v0;
  v3 = sub_24AE09608();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 7;
        v23 = *(v19 + v17 + 112);
        v25 = *(v19 + v17 + 64);
        v24 = *(v19 + v17 + 80);
        v44 = *(v19 + v17 + 96);
        v45 = v23;
        v42 = v25;
        v43 = v24;
        v27 = *(v19 + v17);
        v26 = *(v19 + v17 + 16);
        v28 = *(v19 + v17 + 48);
        v40 = *(v19 + v17 + 32);
        v41 = v28;
        v38 = v27;
        v39 = v26;
        v29 = (*(v4 + 48) + v18);
        *v29 = v22;
        v29[1] = v21;
        v30 = (*(v4 + 56) + v17);
        v31 = v38;
        v32 = v39;
        v33 = v41;
        v30[2] = v40;
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = v42;
        v35 = v43;
        v36 = v45;
        v30[6] = v44;
        v30[7] = v36;
        v30[4] = v34;
        v30[5] = v35;
        sub_24AE08288();
        result = sub_24ADAE7A8(&v38, &v37);
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

void *sub_24ADBF6F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A8, &qword_24AE0DE70);
  v2 = *v0;
  v3 = sub_24AE09608();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_24ADAF1D4(&v43, v42))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 184;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 112);
      v24 = *(v21 + 64);
      v23 = *(v21 + 80);
      v49 = *(v21 + 96);
      v50 = v22;
      v47 = v24;
      v48 = v23;
      v26 = *(v21 + 144);
      v25 = *(v21 + 160);
      v27 = *(v21 + 128);
      v54 = *(v21 + 176);
      v52 = v26;
      v53 = v25;
      v51 = v27;
      v29 = *v21;
      v28 = *(v21 + 16);
      v30 = *(v21 + 48);
      v45 = *(v21 + 32);
      v46 = v30;
      v43 = v29;
      v44 = v28;
      v31 = (*(v4 + 48) + v17);
      *v31 = v20;
      v31[1] = v19;
      v32 = *(v4 + 56) + v16;
      v33 = v43;
      v34 = v44;
      v35 = v46;
      *(v32 + 32) = v45;
      *(v32 + 48) = v35;
      *v32 = v33;
      *(v32 + 16) = v34;
      v36 = v47;
      v37 = v48;
      v38 = v50;
      *(v32 + 96) = v49;
      *(v32 + 112) = v38;
      *(v32 + 64) = v36;
      *(v32 + 80) = v37;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      *(v32 + 176) = v54;
      *(v32 + 144) = v40;
      *(v32 + 160) = v41;
      *(v32 + 128) = v39;
      sub_24AE08288();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t sub_24ADBF8F4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_24ADBF990(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_24ADBF990(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_24AE09778();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_24AE09208();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

unint64_t sub_24ADBFAA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = (*a4 + 24 * a3);
    v5 = result - a3;
LABEL_5:
    v26 = v4;
    v27 = a3;
    v6 = (v28 + 24 * a3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v25 = v5;
    while (1)
    {
      v10 = *(v4 - 3);
      v11 = v8 >> 62;
      v32 = *(v4 - 2);
      v29 = *(v4 - 1);
      if ((v8 >> 62) <= 1)
      {
        break;
      }

      if (v11 == 2)
      {
        if (v8)
        {
          v12 = 49;
        }

        else
        {
          v12 = 48;
        }

        v13 = 51;
LABEL_17:
        v30 = v13;
        sub_24ADC3E34(v10);
        MEMORY[0x24C230FB0](v12, 0xE100000000000000);
        goto LABEL_22;
      }

      if (v8 != 0xC000000000000000 || v9 | v7)
      {
        sub_24ADC3E34(v10);
        v15 = 52;
      }

      else
      {
        sub_24ADC3E34(v10);
        v15 = 48;
      }

LABEL_23:
      v16 = v10 >> 62;
      if ((v10 >> 62) <= 1)
      {
        if (!v16)
        {
          if (v10)
          {
            v17 = 49;
          }

          else
          {
            v17 = 48;
          }

          v18 = 49;
          goto LABEL_34;
        }

        if (v10)
        {
          v19 = 49;
        }

        else
        {
          v19 = 48;
        }

        v31 = 50;
        MEMORY[0x24C230FB0](v19, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](v32, v29);

LABEL_39:
        if (v15 == v31)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if (v16 == 2)
      {
        if (v10)
        {
          v17 = 49;
        }

        else
        {
          v17 = 48;
        }

        v18 = 51;
LABEL_34:
        v31 = v18;
        MEMORY[0x24C230FB0](v17, 0xE100000000000000);
        goto LABEL_39;
      }

      if (v29 | v32)
      {
        v20 = 0;
      }

      else
      {
        v20 = v10 == 0xC000000000000000;
      }

      if (v20)
      {
        v21 = 48;
      }

      else
      {
        v21 = 52;
      }

      if (v15 == v21)
      {
LABEL_51:

        sub_24ADC3E58(v10);
        result = sub_24ADC3E58(v8);
LABEL_4:
        a3 = v27 + 1;
        v4 = v26 + 3;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_52:
      v22 = sub_24AE097C8();

      sub_24ADC3E58(v10);
      result = sub_24ADC3E58(v8);
      if ((v22 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v8 = *v4;
      v7 = v4[1];
      v9 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v7;
      *(v4 - 1) = v9;
      *(v4 - 3) = v8;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    if (!v11)
    {
      if (v8)
      {
        v12 = 49;
      }

      else
      {
        v12 = 48;
      }

      v13 = 49;
      goto LABEL_17;
    }

    if (v8)
    {
      v14 = 49;
    }

    else
    {
      v14 = 48;
    }

    v30 = 50;
    sub_24ADC3E34(v10);
    sub_24ADC3E34(v8);
    MEMORY[0x24C230FB0](v14, 0xE100000000000000);
    sub_24AE08288();
    MEMORY[0x24C230FB0](v7, v9);

LABEL_22:
    v15 = v30;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_24ADBFE00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_6:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      if (v9 == *(v11 - 1))
      {
        result = swift_bridgeObjectRelease_n();
LABEL_5:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_24AE097C8();
      result = swift_bridgeObjectRelease_n();
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ADBFEF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v126 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_186:
    v4 = *v126;
    if (!*v126)
    {
      goto LABEL_224;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_188:
      v118 = *(v10 + 2);
      if (v118 >= 2)
      {
        while (*v7)
        {
          v119 = *&v10[16 * v118];
          v120 = *&v10[16 * v118 + 24];
          sub_24ADC10AC((*v7 + 24 * v119), (*v7 + 24 * *&v10[16 * v118 + 16]), *v7 + 24 * v120, v4);
          if (v6)
          {
          }

          if (v120 < v119)
          {
            goto LABEL_211;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_24ADC1B5C(v10);
          }

          if (v118 - 2 >= *(v10 + 2))
          {
            goto LABEL_212;
          }

          v121 = &v10[16 * v118];
          *v121 = v119;
          *(v121 + 1) = v120;
          result = sub_24ADC1AD0(v118 - 1);
          v118 = *(v10 + 2);
          if (v118 <= 1)
          {
          }
        }

        goto LABEL_222;
      }
    }

LABEL_218:
    result = sub_24ADC1B5C(v10);
    v10 = result;
    goto LABEL_188;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (2)
  {
    v11 = v9 + 1;
    v128 = v9;
    if (v9 + 1 >= v8)
    {
      goto LABEL_71;
    }

    v132 = v8;
    v123 = v10;
    v124 = v6;
    v12 = (*v7 + 24 * v11);
    v4 = *v12;
    v13 = v12[1];
    v14 = v12[2];
    v15 = (*v7 + 24 * v9);
    v16 = *v15;
    v140 = *v7;
    v141 = v15[1];
    v142 = v15[2];
    sub_24ADC3E34(v4);
    sub_24ADC3E34(v16);
    v17 = ItemModel.Section.sortOrder.getter();
    v19 = v18;
    if (v17 == ItemModel.Section.sortOrder.getter() && v19 == v20)
    {
      v136 = 0;
    }

    else
    {
      v136 = sub_24AE097C8();
    }

    sub_24ADC3E58(v16);
    result = sub_24ADC3E58(v4);
    v21 = 0;
    v7 = a3;
    v22 = v9 + 2;
    v6 = (v140 + 24 * v9 + 32);
    v130 = 24 * v9;
    v23 = 24 * v9;
    do
    {
      v11 = v22;
      v10 = v21;
      v26 = v23;
      if (v22 >= v132)
      {
        break;
      }

      v134 = v22;
      v28 = v6[3];
      v27 = v6[4];
      v29 = *(v6 - 1);
      v30 = v6[2];
      v31 = v30 >> 62;
      *&v138 = v6[1];
      *(&v138 + 1) = *v6;
      if ((v30 >> 62) <= 1)
      {
        if (!v31)
        {
          if (v30)
          {
            v32 = 49;
          }

          else
          {
            v32 = 48;
          }

          v33 = 49;
          goto LABEL_24;
        }

        if (v30)
        {
          v34 = 49;
        }

        else
        {
          v34 = 48;
        }

        v143 = 50;
        sub_24ADC3E34(v29);
        sub_24ADC3E34(v30);
        MEMORY[0x24C230FB0](v34, 0xE100000000000000);
        sub_24AE08288();
        v7 = a3;
        MEMORY[0x24C230FB0](v28, v27);

LABEL_29:
        v35 = v143;
        v4 = 0xE100000000000000;
        goto LABEL_30;
      }

      if (v31 == 2)
      {
        if (v30)
        {
          v32 = 49;
        }

        else
        {
          v32 = 48;
        }

        v33 = 51;
LABEL_24:
        v143 = v33;
        sub_24ADC3E34(v29);
        MEMORY[0x24C230FB0](v32, 0xE100000000000000);
        goto LABEL_29;
      }

      if (v30 == 0xC000000000000000 && (v27 | v28) == 0)
      {
        sub_24ADC3E34(v29);
        v4 = 0xE100000000000000;
        v35 = 48;
      }

      else
      {
        sub_24ADC3E34(v29);
        v4 = 0xE100000000000000;
        v35 = 52;
      }

LABEL_30:
      v36 = v29 >> 62;
      if ((v29 >> 62) <= 1)
      {
        if (!v36)
        {
          if (v29)
          {
            v37 = 49;
          }

          else
          {
            v37 = 48;
          }

          v38 = 49;
          goto LABEL_41;
        }

        if (v29)
        {
          v40 = 49;
        }

        else
        {
          v40 = 48;
        }

        v144 = 50;
        MEMORY[0x24C230FB0](v40, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](*(&v138 + 1), v138);
        v7 = a3;

LABEL_51:
        if (v35 == v144)
        {
          goto LABEL_60;
        }

        goto LABEL_10;
      }

      if (v36 == 2)
      {
        if (v29)
        {
          v37 = 49;
        }

        else
        {
          v37 = 48;
        }

        v38 = 51;
LABEL_41:
        v144 = v38;
        MEMORY[0x24C230FB0](v37, 0xE100000000000000);
        goto LABEL_51;
      }

      if (v138 == 0 && v29 == 0xC000000000000000)
      {
        v42 = 48;
      }

      else
      {
        v42 = 52;
      }

      if (v35 == v42)
      {
LABEL_60:
        v24 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v24 = sub_24AE097C8();
LABEL_11:

      sub_24ADC3E58(v29);
      result = sub_24ADC3E58(v30);
      v25 = v136 ^ v24;
      v11 = v134;
      v22 = v134 + 1;
      v6 += 3;
      v21 = v10 + 1;
      v23 = v26 + 24;
    }

    while ((v25 & 1) == 0);
    if (v136)
    {
      if (v11 < v128)
      {
        goto LABEL_215;
      }

      if (v128 < v11)
      {
        v43 = 0;
        v44 = v130;
        do
        {
          if ((v128 + v43) != &v10[v128 + 1])
          {
            v45 = *v7;
            if (!*v7)
            {
              goto LABEL_221;
            }

            v46 = (v45 + v44);
            v47 = v45 + v26;
            v48 = *(v46 + 2);
            v49 = *v46;
            v50 = *(v47 + 40);
            *v46 = *(v47 + 24);
            *(v46 + 2) = v50;
            *(v47 + 24) = v49;
            *(v47 + 40) = v48;
          }

          --v10;
          ++v43;
          v26 -= 24;
          v44 += 24;
        }

        while (v43 + v128 < &v10[v128 + 2]);
      }
    }

    v10 = v123;
    v6 = v124;
LABEL_71:
    v51 = v7[1];
    if (v11 >= v51)
    {
      goto LABEL_135;
    }

    if (__OFSUB__(v11, v128))
    {
      goto LABEL_214;
    }

    if (v11 - v128 >= a4)
    {
LABEL_135:
      if (v11 < v128)
      {
        goto LABEL_213;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24ADAAEB4(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v73 = *(v10 + 3);
      v74 = v4 + 1;
      if (v4 >= v73 >> 1)
      {
        result = sub_24ADAAEB4((v73 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v74;
      v75 = &v10[16 * v4];
      *(v75 + 4) = v128;
      *(v75 + 5) = v11;
      v76 = *v126;
      if (!*v126)
      {
        goto LABEL_223;
      }

      v9 = v11;
      if (!v4)
      {
LABEL_3:
        v8 = v7[1];
        if (v9 >= v8)
        {
          goto LABEL_186;
        }

        continue;
      }

      while (1)
      {
        v77 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v78 = *(v10 + 4);
          v79 = *(v10 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_155:
          if (v81)
          {
            goto LABEL_202;
          }

          v94 = &v10[16 * v74];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_205;
          }

          v100 = &v10[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_208;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_209;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v74 - 2;
            }

            goto LABEL_176;
          }

          goto LABEL_169;
        }

        v104 = &v10[16 * v74];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_169:
        if (v99)
        {
          goto LABEL_204;
        }

        v107 = &v10[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_207;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_176:
        v4 = v77 - 1;
        if (v77 - 1 >= v74)
        {
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (!*v7)
        {
          goto LABEL_220;
        }

        v115 = *&v10[16 * v4 + 32];
        v116 = *&v10[16 * v77 + 40];
        sub_24ADC10AC((*v7 + 24 * v115), (*v7 + 24 * *&v10[16 * v77 + 32]), *v7 + 24 * v116, v76);
        if (v6)
        {
        }

        if (v116 < v115)
        {
          goto LABEL_198;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24ADC1B5C(v10);
        }

        if (v4 >= *(v10 + 2))
        {
          goto LABEL_199;
        }

        v117 = &v10[16 * v4];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        result = sub_24ADC1AD0(v77);
        v74 = *(v10 + 2);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v10[16 * v74 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_200;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_201;
      }

      v89 = &v10[16 * v74];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_203;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_206;
      }

      if (v93 >= v85)
      {
        v111 = &v10[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_210;
        }

        if (v80 < v114)
        {
          v77 = v74 - 2;
        }

        goto LABEL_176;
      }

      goto LABEL_155;
    }

    break;
  }

  v52 = v128 + a4;
  if (__OFADD__(v128, a4))
  {
    goto LABEL_216;
  }

  if (v52 >= v51)
  {
    v52 = v7[1];
  }

  if (v52 < v128)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  if (v11 == v52)
  {
    goto LABEL_135;
  }

  v125 = v6;
  v137 = *v7;
  v53 = (*v7 + 24 * v11);
  v54 = v128 - v11;
  v127 = v52;
  while (2)
  {
    v133 = v53;
    v135 = v11;
    v55 = (v137 + 24 * v11);
    v57 = *v55;
    v56 = v55[1];
    v58 = v55[2];
    v131 = v54;
LABEL_82:
    v59 = *(v53 - 3);
    v60 = v57 >> 62;
    *&v139 = *(v53 - 1);
    *(&v139 + 1) = *(v53 - 2);
    if ((v57 >> 62) > 1)
    {
      if (v60 == 2)
      {
        if (v57)
        {
          v61 = 49;
        }

        else
        {
          v61 = 48;
        }

        v62 = 51;
LABEL_93:
        v145 = v62;
        sub_24ADC3E34(v59);
        MEMORY[0x24C230FB0](v61, 0xE100000000000000);
        goto LABEL_98;
      }

      if (v57 != 0xC000000000000000 || v58 | v56)
      {
        sub_24ADC3E34(v59);
        v4 = 0xE100000000000000;
        v64 = 52;
      }

      else
      {
        sub_24ADC3E34(v59);
        v4 = 0xE100000000000000;
        v64 = 48;
      }
    }

    else
    {
      if (!v60)
      {
        if (v57)
        {
          v61 = 49;
        }

        else
        {
          v61 = 48;
        }

        v62 = 49;
        goto LABEL_93;
      }

      if (v57)
      {
        v63 = 49;
      }

      else
      {
        v63 = 48;
      }

      v145 = 50;
      sub_24ADC3E34(v59);
      sub_24ADC3E34(v57);
      MEMORY[0x24C230FB0](v63, 0xE100000000000000);
      sub_24AE08288();
      MEMORY[0x24C230FB0](v56, v58);

LABEL_98:
      v64 = v145;
      v4 = 0xE100000000000000;
    }

    v65 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v65 == 2)
      {
        if (v59)
        {
          v66 = 49;
        }

        else
        {
          v66 = 48;
        }

        v67 = 51;
LABEL_110:
        v146 = v67;
        MEMORY[0x24C230FB0](v66, 0xE100000000000000);
        goto LABEL_118;
      }

      if (v139 == 0 && v59 == 0xC000000000000000)
      {
        v70 = 48;
      }

      else
      {
        v70 = 52;
      }

      if (v64 == v70)
      {
LABEL_127:

        sub_24ADC3E58(v59);
        sub_24ADC3E58(v57);
LABEL_80:
        v11 = v135 + 1;
        v53 = v133 + 3;
        v54 = v131 - 1;
        if (v135 + 1 == v127)
        {
          v11 = v127;
          v6 = v125;
          v7 = a3;
          goto LABEL_135;
        }

        continue;
      }
    }

    else
    {
      if (!v65)
      {
        if (v59)
        {
          v66 = 49;
        }

        else
        {
          v66 = 48;
        }

        v67 = 49;
        goto LABEL_110;
      }

      if (v59)
      {
        v68 = 49;
      }

      else
      {
        v68 = 48;
      }

      v146 = 50;
      MEMORY[0x24C230FB0](v68, 0xE100000000000000);
      sub_24AE08288();
      MEMORY[0x24C230FB0](*(&v139 + 1), v139);

LABEL_118:
      if (v64 == v146)
      {
        goto LABEL_127;
      }
    }

    break;
  }

  v71 = sub_24AE097C8();

  sub_24ADC3E58(v59);
  result = sub_24ADC3E58(v57);
  if ((v71 & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v137)
  {
    v57 = *v53;
    v56 = v53[1];
    v58 = v53[2];
    *v53 = *(v53 - 3);
    v53[2] = *(v53 - 1);
    *(v53 - 2) = v56;
    *(v53 - 1) = v58;
    *(v53 - 3) = v57;
    v53 -= 3;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

uint64_t sub_24ADC0A88(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v79 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_98:
    v5 = *v79;
    if (!*v79)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_100:
      v72 = *(v9 + 2);
      if (v72 >= 2)
      {
        while (*a3)
        {
          v73 = *&v9[16 * v72];
          v74 = *&v9[16 * v72 + 24];
          sub_24ADC1850((*a3 + v73), (*a3 + *&v9[16 * v72 + 16]), *a3 + v74, v5);
          if (v6)
          {
          }

          if (v74 < v73)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24ADC1B5C(v9);
          }

          if (v72 - 2 >= *(v9 + 2))
          {
            goto LABEL_124;
          }

          v75 = &v9[16 * v72];
          *v75 = v73;
          *(v75 + 1) = v74;
          result = sub_24ADC1AD0(v72 - 1);
          v72 = *(v9 + 2);
          if (v72 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_24ADC1B5C(v9);
    v9 = result;
    goto LABEL_100;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v5 = *a3;
      if (*(*a3 + v8) == *(*a3 + v10))
      {
        v11 = 0;
      }

      else
      {
        v11 = sub_24AE097C8();
      }

      result = swift_bridgeObjectRelease_n();
      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        do
        {
          if (*(v5 + v8) == *(v5 + v8 - 1))
          {
            result = swift_bridgeObjectRelease_n();
            if (v11)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v12 = sub_24AE097C8();
            result = swift_bridgeObjectRelease_n();
            if ((v11 ^ v12))
            {
              goto LABEL_16;
            }
          }

          ++v8;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_16:
      if (v11)
      {
LABEL_17:
        if (v8 < v10)
        {
          goto LABEL_127;
        }

        if (v10 < v8)
        {
          v13 = v8 - 1;
          v14 = v10;
          do
          {
            if (v14 != v13)
            {
              v17 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v15 = *(v17 + v14);
              *(v17 + v14) = *(v17 + v13);
              *(v17 + v13) = v15;
            }
          }

          while (++v14 < v13--);
        }
      }
    }

    v18 = a3[1];
    if (v8 >= v18)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_126;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_47;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_128;
    }

    v77 = v6;
    if (v10 + a4 >= v18)
    {
      v6 = a3[1];
    }

    else
    {
      v6 = v10 + a4;
    }

    if (v6 < v10)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v8 == v6)
    {
      goto LABEL_46;
    }

    v19 = *a3;
    v20 = (*a3 + v8);
    v76 = v10;
    v21 = v10 - v8;
LABEL_38:
    v22 = *(v19 + v8);
    v23 = v21;
    v5 = v20;
LABEL_39:
    if (v22 != *(v5 - 1))
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_37:
    ++v8;
    ++v20;
    --v21;
    if (v8 != v6)
    {
      goto LABEL_38;
    }

    v8 = v6;
    v10 = v76;
LABEL_46:
    v6 = v77;
LABEL_47:
    if (v8 < v10)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24ADAAEB4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_24ADAAEB4((v26 > 1), v27 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v28;
    v29 = &v9[16 * v27];
    *(v29 + 4) = v10;
    *(v29 + 5) = v8;
    v30 = *v79;
    if (!*v79)
    {
      goto LABEL_135;
    }

    if (v27)
    {
      while (2)
      {
        v31 = v28 - 1;
        if (v28 >= 4)
        {
          v36 = &v9[16 * v28 + 32];
          v37 = *(v36 - 64);
          v38 = *(v36 - 56);
          v42 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          if (v42)
          {
            goto LABEL_112;
          }

          v41 = *(v36 - 48);
          v40 = *(v36 - 40);
          v42 = __OFSUB__(v40, v41);
          v34 = v40 - v41;
          v35 = v42;
          if (v42)
          {
            goto LABEL_113;
          }

          v43 = &v9[16 * v28];
          v45 = *v43;
          v44 = *(v43 + 1);
          v42 = __OFSUB__(v44, v45);
          v46 = v44 - v45;
          if (v42)
          {
            goto LABEL_115;
          }

          v42 = __OFADD__(v34, v46);
          v47 = v34 + v46;
          if (v42)
          {
            goto LABEL_118;
          }

          if (v47 >= v39)
          {
            v65 = &v9[16 * v31 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v42 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v42)
            {
              goto LABEL_122;
            }

            if (v34 < v68)
            {
              v31 = v28 - 2;
            }
          }

          else
          {
LABEL_67:
            if (v35)
            {
              goto LABEL_114;
            }

            v48 = &v9[16 * v28];
            v50 = *v48;
            v49 = *(v48 + 1);
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_117;
            }

            v54 = &v9[16 * v31 + 32];
            v56 = *v54;
            v55 = *(v54 + 1);
            v42 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v42)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v52, v57))
            {
              goto LABEL_121;
            }

            if (v52 + v57 < v34)
            {
              goto LABEL_81;
            }

            if (v34 < v57)
            {
              v31 = v28 - 2;
            }
          }
        }

        else
        {
          if (v28 == 3)
          {
            v32 = *(v9 + 4);
            v33 = *(v9 + 5);
            v42 = __OFSUB__(v33, v32);
            v34 = v33 - v32;
            v35 = v42;
            goto LABEL_67;
          }

          v58 = &v9[16 * v28];
          v60 = *v58;
          v59 = *(v58 + 1);
          v42 = __OFSUB__(v59, v60);
          v52 = v59 - v60;
          v53 = v42;
LABEL_81:
          if (v53)
          {
            goto LABEL_116;
          }

          v61 = &v9[16 * v31];
          v63 = *(v61 + 4);
          v62 = *(v61 + 5);
          v42 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v42)
          {
            goto LABEL_119;
          }

          if (v64 < v52)
          {
            break;
          }
        }

        v5 = v31 - 1;
        if (v31 - 1 >= v28)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v69 = *&v9[16 * v5 + 32];
        v70 = *&v9[16 * v31 + 40];
        sub_24ADC1850((*a3 + v69), (*a3 + *&v9[16 * v31 + 32]), *a3 + v70, v30);
        if (v6)
        {
        }

        if (v70 < v69)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24ADC1B5C(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_111;
        }

        v71 = &v9[16 * v5];
        *(v71 + 4) = v69;
        *(v71 + 5) = v70;
        result = sub_24ADC1AD0(v31);
        v28 = *(v9 + 2);
        if (v28 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_98;
    }
  }

  v24 = sub_24AE097C8();
  result = swift_bridgeObjectRelease_n();
  if ((v24 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v19)
  {
    v22 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v22;
    if (__CFADD__(v23++, 1))
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

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
  return result;
}

uint64_t sub_24ADC10AC(unint64_t *__src, unint64_t *__dst, unint64_t a3, unint64_t *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[3 * v10] <= a4)
    {
      v36 = a4;
      memmove(a4, __dst, 24 * v10);
      a4 = v36;
    }

    v72 = &a4[3 * v10];
    v11 = a4;
    if (v9 < 24 || v5 <= v6)
    {
      goto LABEL_133;
    }

    v63 = v6;
    v60 = a4;
LABEL_71:
    v59 = v5 - 3;
    v37 = v4 - 24;
    v38 = v72;
    while (1)
    {
      v40 = *(v38 - 3);
      v39 = *(v38 - 2);
      v38 -= 24;
      v41 = *(v5 - 3);
      v42 = v40 >> 62;
      *(&v64 + 1) = *(v5 - 2);
      v67 = v37;
      v61 = *(v38 + 2);
      *&v64 = *(v5 - 1);
      if ((v40 >> 62) <= 1)
      {
        break;
      }

      if (v42 == 2)
      {
        if (v40)
        {
          v43 = 49;
        }

        else
        {
          v43 = 48;
        }

        v44 = 51;
LABEL_84:
        v70 = v44;
        sub_24ADC3E34(v41);
        MEMORY[0x24C230FB0](v43, 0xE100000000000000);
        goto LABEL_89;
      }

      if (v40 == 0xC000000000000000 && (*(v38 + 2) | v39) == 0)
      {
        sub_24ADC3E34(v41);
        v46 = 48;
      }

      else
      {
        sub_24ADC3E34(v41);
        v46 = 52;
      }

LABEL_90:
      v47 = v41 >> 62;
      if ((v41 >> 62) <= 1)
      {
        if (!v47)
        {
          if (v41)
          {
            v48 = 49;
          }

          else
          {
            v48 = 48;
          }

          v49 = 49;
          goto LABEL_101;
        }

        if (v41)
        {
          v51 = 49;
        }

        else
        {
          v51 = 48;
        }

        v71 = 50;
        MEMORY[0x24C230FB0](v51, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](*(&v64 + 1), v64);
        v6 = v63;

LABEL_111:
        if (v46 != v71)
        {
          goto LABEL_121;
        }

        goto LABEL_120;
      }

      if (v47 == 2)
      {
        if (v41)
        {
          v48 = 49;
        }

        else
        {
          v48 = 48;
        }

        v49 = 51;
LABEL_101:
        v71 = v49;
        MEMORY[0x24C230FB0](v48, 0xE100000000000000);
        goto LABEL_111;
      }

      if (v64 == 0 && v41 == 0xC000000000000000)
      {
        v53 = 48;
      }

      else
      {
        v53 = 52;
      }

      if (v46 != v53)
      {
LABEL_121:
        v54 = sub_24AE097C8();
        goto LABEL_122;
      }

LABEL_120:
      v54 = 0;
LABEL_122:

      sub_24ADC3E58(v41);
      sub_24ADC3E58(v40);
      if (v54)
      {
        v4 = v67;
        if ((v67 + 24) != v5)
        {
          v56 = *v59;
          *(v67 + 16) = *(v5 - 1);
          *v67 = v56;
        }

        if (v72 <= v11 || (v5 -= 3, v59 <= v6))
        {
          v5 = v59;
          goto LABEL_133;
        }

        goto LABEL_71;
      }

      if ((v67 + 24) != v72)
      {
        v55 = *v38;
        *(v67 + 16) = *(v38 + 2);
        *v67 = v55;
      }

      v37 = v67 - 24;
      v72 = v38;
      if (v38 <= v11)
      {
        v72 = v38;
        goto LABEL_133;
      }
    }

    if (!v42)
    {
      if (v40)
      {
        v43 = 49;
      }

      else
      {
        v43 = 48;
      }

      v44 = 49;
      goto LABEL_84;
    }

    if (v40)
    {
      v45 = 49;
    }

    else
    {
      v45 = 48;
    }

    v70 = 50;
    sub_24ADC3E34(v41);
    sub_24ADC3E34(v40);
    MEMORY[0x24C230FB0](v45, 0xE100000000000000);
    sub_24AE08288();
    v11 = v60;
    MEMORY[0x24C230FB0](v39, v61);

LABEL_89:
    v46 = v70;
    goto LABEL_90;
  }

  v11 = a4;
  if (a4 != __src || &__src[3 * v8] <= a4)
  {
    memmove(a4, __src, 24 * v8);
  }

  v72 = &v11[3 * v8];
  if (v7 >= 24 && v5 < v4)
  {
    v66 = v4;
    while (1)
    {
      v62 = v6;
      v13 = *v5;
      v12 = v5[1];
      v65 = v5;
      v14 = v5[2];
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      v18 = v13 >> 62;
      if ((v13 >> 62) <= 1)
      {
        break;
      }

      if (v18 == 2)
      {
        if (v13)
        {
          v19 = 49;
        }

        else
        {
          v19 = 48;
        }

        v20 = 51;
LABEL_19:
        v68 = v20;
        sub_24ADC3E34(v15);
        MEMORY[0x24C230FB0](v19, 0xE100000000000000);
        goto LABEL_24;
      }

      if (v13 == 0xC000000000000000 && (v14 | v12) == 0)
      {
        sub_24ADC3E34(v15);
        v22 = 48;
      }

      else
      {
        sub_24ADC3E34(v15);
        v22 = 52;
      }

LABEL_25:
      v23 = v15 >> 62;
      v24 = v11;
      if ((v15 >> 62) <= 1)
      {
        if (!v23)
        {
          if (v15)
          {
            v25 = 49;
          }

          else
          {
            v25 = 48;
          }

          v26 = 49;
          goto LABEL_36;
        }

        if (v15)
        {
          v28 = 49;
        }

        else
        {
          v28 = 48;
        }

        v69 = 50;
        MEMORY[0x24C230FB0](v28, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](v16, v17);

LABEL_46:
        if (v22 == v69)
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v23 == 2)
      {
        if (v15)
        {
          v25 = 49;
        }

        else
        {
          v25 = 48;
        }

        v26 = 51;
LABEL_36:
        v69 = v26;
        MEMORY[0x24C230FB0](v25, 0xE100000000000000);
        goto LABEL_46;
      }

      if (v17 | v16)
      {
        v29 = 0;
      }

      else
      {
        v29 = v15 == 0xC000000000000000;
      }

      if (v29)
      {
        v30 = 48;
      }

      else
      {
        v30 = 52;
      }

      if (v22 == v30)
      {
LABEL_55:

        sub_24ADC3E58(v15);
        sub_24ADC3E58(v13);
        v31 = v66;
LABEL_59:
        v33 = v24;
        v11 = v24 + 3;
        v34 = v62;
        v5 = v65;
        if (v62 == v24)
        {
          goto LABEL_61;
        }

LABEL_60:
        v35 = *v33;
        v34[2] = v33[2];
        *v34 = v35;
        goto LABEL_61;
      }

LABEL_56:
      v32 = sub_24AE097C8();

      sub_24ADC3E58(v15);
      sub_24ADC3E58(v13);
      v31 = v66;
      if ((v32 & 1) == 0)
      {
        goto LABEL_59;
      }

      v33 = v65;
      v5 = v65 + 3;
      v34 = v62;
      v11 = v24;
      if (v62 != v65)
      {
        goto LABEL_60;
      }

LABEL_61:
      v6 = v34 + 3;
      if (v11 >= v72 || v5 >= v31)
      {
        goto LABEL_131;
      }
    }

    if (!v18)
    {
      if (v13)
      {
        v19 = 49;
      }

      else
      {
        v19 = 48;
      }

      v20 = 49;
      goto LABEL_19;
    }

    if (v13)
    {
      v21 = 49;
    }

    else
    {
      v21 = 48;
    }

    v68 = 50;
    sub_24ADC3E34(v15);
    sub_24ADC3E34(v13);
    MEMORY[0x24C230FB0](v21, 0xE100000000000000);
    sub_24AE08288();
    MEMORY[0x24C230FB0](v12, v14);

LABEL_24:
    v22 = v68;
    goto LABEL_25;
  }

LABEL_131:
  v5 = v6;
LABEL_133:
  v57 = (v72 - v11) / 24;
  if (v5 != v11 || v5 >= &v11[3 * v57])
  {
    memmove(v5, v11, 24 * v57);
  }

  return 1;
}

uint64_t sub_24ADC1850(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v6 == *v4)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v11 = sub_24AE097C8();
          swift_bridgeObjectRelease_n();
          if (v11)
          {
            v12 = v6 + 1;
            v13 = v6;
            if (v7 >= v6 && v7 < v12)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

        v14 = v4 + 1;
        v13 = v4;
        v12 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        *v7 = *v13;
LABEL_18:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_46;
    }

LABEL_45:
    if (v6 >= v10)
    {
      goto LABEL_46;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_44:
    if (v6 != v4)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  do
  {
    v15 = v6 - 1;
    --v5;
    v16 = v10;
    while (1)
    {
      v17 = *--v16;
      if (v17 == *v15)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_33;
      }

      v18 = sub_24AE097C8();
      swift_bridgeObjectRelease_n();
      if (v18)
      {
        break;
      }

LABEL_33:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v16;
      }

      --v5;
      v10 = v16;
      if (v16 <= v4)
      {
        v10 = v16;
        goto LABEL_44;
      }
    }

    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = *v15;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v15 > v7);
  v6 = v15;
  if (v15 == v4)
  {
    goto LABEL_45;
  }

LABEL_46:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_24ADC1AD0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ADC1B5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_24ADC1B70(void *result, unint64_t *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = *v18;
      v11[1] = v20;
      v11[2] = v21;
      if (v14 == v10)
      {
        sub_24ADC3E34(v19);
        goto LABEL_24;
      }

      v11 += 3;
      sub_24ADC3E34(v19);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24ADC1CD0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PersonModel();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_24ADC3D4C(v26 + v27 * (v25 | (v20 << 6)), v12, type metadata accessor for PersonModel);
      sub_24ADC3C30(v12, v15);
      sub_24ADC3C30(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24ADC1F0C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_24ADC2030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9730, &qword_24AE0DD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
    v8 = sub_24AE09628();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AD92B7C(v10, v6, &qword_27EFA9730, &qword_24AE0DD40);
      result = sub_24ADD69C8(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for PersonModel();
      result = sub_24ADC3C30(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t sub_24ADC2204(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F98];
  v88 = MEMORY[0x277D84F98];
  v73 = *(a1 + 16);
  if (!v73)
  {
    return v2;
  }

  v3 = 0;
  v72 = a1 + 32;
  while (1)
  {
    v14 = (v72 + 184 * v3);
    v15 = v14[9];
    v84 = v14[8];
    v85 = v15;
    v86 = v14[10];
    v87 = *(v14 + 88);
    v16 = v14[5];
    v80 = v14[4];
    v81 = v16;
    v17 = v14[7];
    v82 = v14[6];
    v83 = v17;
    v18 = v14[1];
    v76 = *v14;
    v77 = v18;
    v19 = v14[3];
    v78 = v14[2];
    v79 = v19;
    v20 = *(a2 + 32);
    v21 = v82;
    v22 = BYTE1(v85);
    v89 = v3;
    if (v82)
    {
      v23 = *(&v81 + 1);
      v24 = v83;
      v25 = v84;
      if (BYTE1(v85))
      {
        if (!*(v20 + 16))
        {
          goto LABEL_12;
        }

        v71 = *(&v81 + 1);
        v26 = *(v20 + 40);
        sub_24AE09838();
        MEMORY[0x24C231780](2);
        v27 = sub_24AE09868();
        v23 = v71;
        v28 = -1 << *(v20 + 32);
        v29 = v27 & ~v28;
        if (((*(v20 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
LABEL_12:
          sub_24ADAF1D4(&v76, v75);
          sub_24AE08288();
          sub_24ADC4008(v23, v21);

LABEL_26:

          v41 = 0;
          v42 = 0;
          v22 = 0xC000000000000001;
          goto LABEL_27;
        }

        v30 = ~v28;
        while (*(*(v20 + 48) + v29) != 2)
        {
          v29 = (v29 + 1) & v30;
          if (((*(v20 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v42 = *(&v25 + 1);
        v41 = v25;
        if (!*(&v25 + 1))
        {
          sub_24AE08288();
          v42 = *(&v24 + 1);
          v41 = v24;
        }

        sub_24ADAF1D4(&v76, v75);
        sub_24ADC4008(v71, v21);

        v22 = 0x4000000000000001;
      }

      else
      {
        sub_24ADAF1D4(&v76, v75);
        sub_24AE08288();
        sub_24ADC4008(v23, v21);

        if (!*(v20 + 16))
        {
          goto LABEL_26;
        }

        v36 = *(v20 + 40);
        sub_24AE09838();
        MEMORY[0x24C231780](3);
        v37 = sub_24AE09868();
        v38 = -1 << *(v20 + 32);
        v39 = v37 & ~v38;
        if (((*(v20 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
LABEL_24:

          goto LABEL_25;
        }

        v40 = ~v38;
        while (*(*(v20 + 48) + v39) != 3)
        {
          v39 = (v39 + 1) & v40;
          if (((*(v20 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v41 = 0;
        v42 = 0;
        v22 = 0x8000000000000000;
      }
    }

    else
    {
      if (!*(v20 + 16) || (v31 = *(v20 + 40), sub_24AE09838(), MEMORY[0x24C231780](1), v32 = sub_24AE09868(), v33 = -1 << *(v20 + 32), v34 = v32 & ~v33, ((*(v20 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0))
      {
LABEL_18:
        sub_24ADAF1D4(&v76, v75);
LABEL_25:
        v41 = 0;
        v42 = 0;
        v22 = 0xC000000000000001;
        goto LABEL_27;
      }

      v35 = ~v33;
      while (*(*(v20 + 48) + v34) != 1)
      {
        v34 = (v34 + 1) & v35;
        if (((*(v20 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_24ADAF1D4(&v76, v75);
      v41 = 0;
      v42 = 0;
    }

LABEL_27:
    v44 = sub_24ADD6C14(v22, v41, v42);
    v45 = v2[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      break;
    }

    v48 = v43;
    if (v2[3] < v47)
    {
      sub_24ADBE980(v47, 1);
      v2 = v88;
      v49 = sub_24ADD6C14(v22, v41, v42);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_46;
      }

      v44 = v49;
    }

    if (v48)
    {
      sub_24ADC3E58(v22);
      v51 = v2[7];
      v52 = *(v51 + 8 * v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v51 + 8 * v44) = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_24ADAAFB8(0, *(v52 + 2) + 1, 1, v52);
        *(v51 + 8 * v44) = v52;
      }

      v55 = *(v52 + 2);
      v54 = *(v52 + 3);
      if (v55 >= v54 >> 1)
      {
        v52 = sub_24ADAAFB8((v54 > 1), v55 + 1, 1, v52);
        *(v51 + 8 * v44) = v52;
      }

      *(v52 + 2) = v55 + 1;
      v4 = &v52[184 * v55];
      v5 = v76;
      v6 = v77;
      v7 = v79;
      *(v4 + 4) = v78;
      *(v4 + 5) = v7;
      *(v4 + 2) = v5;
      *(v4 + 3) = v6;
      v8 = v80;
      v9 = v81;
      v10 = v83;
      *(v4 + 8) = v82;
      *(v4 + 9) = v10;
      *(v4 + 6) = v8;
      *(v4 + 7) = v9;
      v11 = v84;
      v12 = v85;
      v13 = v86;
      *(v4 + 104) = v87;
      *(v4 + 11) = v12;
      *(v4 + 12) = v13;
      *(v4 + 10) = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A0, &qword_24AE0B9C0);
      v56 = swift_allocObject();
      v57 = v84;
      v58 = v86;
      *(v56 + 176) = v85;
      *(v56 + 192) = v58;
      v59 = v80;
      v60 = v82;
      v61 = v83;
      *(v56 + 112) = v81;
      *(v56 + 128) = v60;
      *(v56 + 144) = v61;
      *(v56 + 160) = v57;
      v62 = v76;
      v63 = v77;
      *(v56 + 16) = xmmword_24AE0A280;
      *(v56 + 32) = v62;
      v64 = v78;
      v65 = v79;
      *(v56 + 48) = v63;
      *(v56 + 64) = v64;
      *(v56 + 208) = v87;
      *(v56 + 80) = v65;
      *(v56 + 96) = v59;
      v2[(v44 >> 6) + 8] |= 1 << v44;
      v66 = (v2[6] + 24 * v44);
      *v66 = v22;
      v66[1] = v41;
      v66[2] = v42;
      *(v2[7] + 8 * v44) = v56;
      v67 = v2[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_45;
      }

      v2[2] = v69;
    }

    v3 = v89 + 1;
    if (v89 + 1 == v73)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_24AE097E8();
  __break(1u);
  return result;
}