__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252A81A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x48 && *(a1 + 33))
  {
    return (*a1 + 72);
  }

  v3 = ((*(a1 + 32) >> 2) & 0xFFFFFFBF | (((*(a1 + 32) >> 1) & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x47)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_252A81AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x47)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 72;
    *(result + 8) = 0;
    if (a3 >= 0x48)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x48)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 & 0x40) != 0) - 2 * a2);
    }
  }

  return result;
}

unint64_t sub_252A81B70()
{
  result = qword_27F542328;
  if (!qword_27F542328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542328);
  }

  return result;
}

unint64_t sub_252A81BC8()
{
  result = qword_27F542330;
  if (!qword_27F542330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542330);
  }

  return result;
}

unint64_t sub_252A81C50()
{
  result = qword_27F542348;
  if (!qword_27F542348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542348);
  }

  return result;
}

unint64_t sub_252A81CA8()
{
  result = qword_27F542350;
  if (!qword_27F542350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542350);
  }

  return result;
}

unint64_t sub_252A81D00()
{
  result = qword_27F542358;
  if (!qword_27F542358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542358);
  }

  return result;
}

unint64_t sub_252A81D58()
{
  result = qword_27F542360;
  if (!qword_27F542360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542360);
  }

  return result;
}

unint64_t sub_252A81DB0()
{
  result = qword_27F542368;
  if (!qword_27F542368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542368);
  }

  return result;
}

unint64_t sub_252A81E08()
{
  result = qword_27F542370;
  if (!qword_27F542370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542370);
  }

  return result;
}

unint64_t sub_252A81E60()
{
  result = qword_27F542378;
  if (!qword_27F542378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542378);
  }

  return result;
}

unint64_t sub_252A81EE8()
{
  result = qword_27F542388;
  if (!qword_27F542388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542388);
  }

  return result;
}

unint64_t sub_252A81F40()
{
  result = qword_27F542390;
  if (!qword_27F542390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542390);
  }

  return result;
}

unint64_t sub_252A81F98()
{
  result = qword_27F542398;
  if (!qword_27F542398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542398);
  }

  return result;
}

unint64_t sub_252A81FF0()
{
  result = qword_27F5423A0;
  if (!qword_27F5423A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423A0);
  }

  return result;
}

unint64_t sub_252A82048()
{
  result = qword_27F5423A8;
  if (!qword_27F5423A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423A8);
  }

  return result;
}

unint64_t sub_252A820A0()
{
  result = qword_27F5423B0;
  if (!qword_27F5423B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423B0);
  }

  return result;
}

unint64_t sub_252A82128()
{
  result = qword_27F5423C8;
  if (!qword_27F5423C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423C8);
  }

  return result;
}

unint64_t sub_252A82180()
{
  result = qword_27F5423D0;
  if (!qword_27F5423D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423D0);
  }

  return result;
}

unint64_t sub_252A821D8()
{
  result = qword_27F5423D8;
  if (!qword_27F5423D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423D8);
  }

  return result;
}

unint64_t sub_252A82230()
{
  result = qword_27F5423E0;
  if (!qword_27F5423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423E0);
  }

  return result;
}

unint64_t sub_252A82288()
{
  result = qword_27F5423E8;
  if (!qword_27F5423E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423E8);
  }

  return result;
}

unint64_t sub_252A822DC()
{
  result = qword_27F5423F0;
  if (!qword_27F5423F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423F0);
  }

  return result;
}

unint64_t sub_252A82334()
{
  result = qword_27F5423F8;
  if (!qword_27F5423F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5423F8);
  }

  return result;
}

unint64_t sub_252A8238C()
{
  result = qword_27F542400;
  if (!qword_27F542400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542400);
  }

  return result;
}

unint64_t sub_252A82414()
{
  result = qword_27F542418;
  if (!qword_27F542418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542418);
  }

  return result;
}

unint64_t sub_252A8246C()
{
  result = qword_27F542420;
  if (!qword_27F542420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542420);
  }

  return result;
}

unint64_t sub_252A824C4()
{
  result = qword_27F542428;
  if (!qword_27F542428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542428);
  }

  return result;
}

unint64_t sub_252A8251C()
{
  result = qword_27F542430;
  if (!qword_27F542430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542430);
  }

  return result;
}

unint64_t sub_252A82574()
{
  result = qword_27F542438;
  if (!qword_27F542438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542438);
  }

  return result;
}

unint64_t sub_252A825CC()
{
  result = qword_27F542440;
  if (!qword_27F542440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542440);
  }

  return result;
}

unint64_t sub_252A82624()
{
  result = qword_27F542448;
  if (!qword_27F542448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542448);
  }

  return result;
}

unint64_t sub_252A8267C()
{
  result = qword_27F542450;
  if (!qword_27F542450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542450);
  }

  return result;
}

unint64_t sub_252A826D4()
{
  result = qword_27F542458;
  if (!qword_27F542458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542458);
  }

  return result;
}

unint64_t sub_252A8272C()
{
  result = qword_27F542460;
  if (!qword_27F542460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542460);
  }

  return result;
}

unint64_t sub_252A82780()
{
  result = qword_27F542468;
  if (!qword_27F542468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542468);
  }

  return result;
}

unint64_t sub_252A827D4()
{
  result = qword_27F542470;
  if (!qword_27F542470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542470);
  }

  return result;
}

unint64_t sub_252A82828()
{
  result = qword_27F542478;
  if (!qword_27F542478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542478);
  }

  return result;
}

uint64_t sub_252A8287C(uint64_t a1, uint64_t a2)
{
  sub_252947DBC();
  v4 = sub_252E377D4();
  v5 = v4;
  v6 = v4[2];
  if (v6 == 2)
  {
    if (sub_252C5C010(v4[4], v4[5], v4[6], v4[7], 0x7475626972747441, 0xE900000000000065))
    {
      v7 = v5[8];
      v8 = v5[9];
      v9 = v5[10];
      v10 = v5[11];

      MEMORY[0x2530AD4C0](v7, v8, v9, v10);

      v11 = sub_252A8150C();
      if (v11 != 60)
      {
        v17 = v11;

        return v17;
      }
    }

    v6 = v5[2];
  }

  if (v6 < 2)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_17;
  }

  v12 = v5[8];
  v13 = v5[9];
  v15 = v5[10];
  v14 = v5[11];

  if (sub_252C5C010(v12, v13, v15, v14, 0x74736F6D72656874, 0xEE0065646F4D7461) & 1) != 0 || (v5 = 0xD000000000000016, (sub_252C5C010(v12, v13, v15, v14, 0xD000000000000016, 0x8000000252E75FF0)) || (sub_252C5C010(v12, v13, v15, v14, 0xD000000000000016, 0x8000000252E76010))
  {

    return 56;
  }

  if (sub_252C5C010(v12, v13, v15, v14, 0xD00000000000001ALL, 0x8000000252E651D0) & 1) != 0 || (sub_252C5C010(v12, v13, v15, v14, 0xD000000000000022, 0x8000000252E76030))
  {

LABEL_14:

    return 51;
  }

  v18 = sub_252C5C010(v12, v13, v15, v14, 0xD000000000000022, 0x8000000252E76060);

  if (v18)
  {
    goto LABEL_14;
  }

  if (qword_27F53F568 != -1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544EE0);
  sub_252E379F4();

  MEMORY[0x2530AD570](a1, a2);

  sub_252CC4050(v5 + 1, 0x8000000252E75E90, v5 + 98, 0x8000000252E75DE0, v5 - 1, 0x8000000252E76090, 121);

  return 60;
}

uint64_t sub_252A82BF8()
{
  v0 = sub_252E37B74();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A82C44@<X0>(uint64_t a1@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  v2 = sub_252E364C4();
  v4 = sub_252A8287C(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  switch(v4)
  {
    case 0:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      if (v33)
      {
        v10 = -2;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_180;
    case 1:
      sub_252A8472C();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 4;
      goto LABEL_170;
    case 2:
      sub_252A846D8();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 6;
      if (v32 == 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 8;
      goto LABEL_170;
    case 3:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 12;
      goto LABEL_177;
    case 4:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 16;
      goto LABEL_177;
    case 5:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 20;
      goto LABEL_170;
    case 6:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 24;
      goto LABEL_177;
    case 7:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 28;
      goto LABEL_177;
    case 8:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 32;
      goto LABEL_170;
    case 9:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 36;
      goto LABEL_177;
    case 10:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 40;
      goto LABEL_177;
    case 12:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 44;
      goto LABEL_170;
    case 13:
      sub_252A84410();
      sub_252E365A4();
      if ((v33 & 1) == 0)
      {
        v9 = v32;
        result = sub_252E365A4();
        if ((v33 & 1) == 0)
        {
          v7 = 0;
          v8 = 0;
          v6 = v32;
          v10 = 48;
          goto LABEL_180;
        }
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544EE0);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E75FC0);
      sub_252E365B4();
      sub_252E37AE4();
      v15 = v32;
      v16 = v33;
      v17 = 416;
      goto LABEL_195;
    case 14:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 52;
      goto LABEL_170;
    case 15:
      sub_252A84684();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 3;
      if (v32 == 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 56;
      goto LABEL_170;
    case 16:
      sub_252A8450C();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 5;
      if (v32 == 5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 60;
      goto LABEL_170;
    case 17:
      sub_252A844B8();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 4;
      if (v32 == 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 72;
      goto LABEL_170;
    case 18:
      sub_252A84630();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 6;
      if (v32 == 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 96;
      goto LABEL_170;
    case 19:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 76;
      goto LABEL_177;
    case 20:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 68;
      goto LABEL_177;
    case 21:
      sub_252A84464();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 5;
      if (v32 == 5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 80;
      goto LABEL_170;
    case 22:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 84;
      goto LABEL_177;
    case 23:
      sub_252A822DC();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 6;
      if (v32 == 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 88;
      goto LABEL_170;
    case 26:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 92;
      goto LABEL_170;
    case 27:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 108;
      goto LABEL_170;
    case 29:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 112;
      goto LABEL_177;
    case 30:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 116;
      goto LABEL_170;
    case 31:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 120;
      goto LABEL_170;
    case 32:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = 124;
      goto LABEL_177;
    case 33:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = 0x80;
      goto LABEL_170;
    case 34:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = -124;
      goto LABEL_170;
    case 35:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -120;
      goto LABEL_177;
    case 36:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -116;
      goto LABEL_177;
    case 37:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -112;
      goto LABEL_177;
    case 38:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = -108;
      goto LABEL_170;
    case 39:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -104;
      goto LABEL_177;
    case 40:
      sub_252A845DC();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = -100;
      goto LABEL_170;
    case 41:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -96;
      goto LABEL_177;
    case 42:
      sub_252A65570();
      sub_252A84410();
      sub_252E365A4();
      v9 = v32;
      if (v32 != 16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0);
        sub_252A655C4();
        sub_252E365A4();
        v6 = v32;
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
          sub_252A84560();
          sub_252E365A4();
          v7 = v32;
          result = sub_252E365A4();
          v8 = v32;
          v10 = v33 | 0xA4;
          goto LABEL_180;
        }
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v23 = sub_252E36AD4();
      __swift_project_value_buffer(v23, qword_27F544EE0);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E75F40);
      sub_252E365B4();
      sub_252E37AE4();
      v15 = v32;
      v16 = v33;
      v17 = 491;
      goto LABEL_195;
    case 43:
      sub_252A6551C();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 3;
      if (v32 == 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -88;
      goto LABEL_170;
    case 46:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -80;
      goto LABEL_177;
    case 47:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = -84;
      goto LABEL_170;
    case 48:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -76;
      goto LABEL_177;
    case 49:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v32 & 1;
      v11 = v32 == 2;
      v10 = -72;
      goto LABEL_170;
    case 50:
      sub_252A8450C();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 5;
      if (v32 == 5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -68;
      goto LABEL_170;
    case 51:
      sub_252A84630();
      sub_252A84410();
      sub_252E365A4();
      v9 = v32;
      sub_252E365A4();
      v29 = v32;
      v27 = v33;
      sub_252E365A4();
      v6 = v32;
      v20 = v33;
      result = sub_252E365A4();
      if (v20 & 1) != 0 || (v33)
      {
        if (v9 != 6)
        {
          v7 = 0;
          v8 = 0;
          v18 = v27 == 0;
          if (v27)
          {
            v6 = 0;
          }

          else
          {
            v6 = v29;
          }

          v10 = 100;
          v21 = 96;
          goto LABEL_178;
        }
      }

      else if (v9 != 6)
      {
        v8 = 0;
        v7 = v32;
        v10 = 104;
        goto LABEL_180;
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544EE0);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000004BLL, 0x8000000252E75F70);
      sub_252E365B4();
      sub_252E37AE4();
      v15 = v32;
      v16 = v33;
      v17 = 456;
      goto LABEL_195;
    case 52:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -64;
      goto LABEL_177;
    case 53:
      sub_252A844B8();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 4;
      if (v32 == 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -60;
      goto LABEL_170;
    case 54:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -56;
      goto LABEL_177;
    case 55:
      sub_252A84464();
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v11 = v32 == 5;
      if (v32 == 5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -52;
LABEL_170:
      if (v11)
      {
        v10 = -2;
      }

      goto LABEL_180;
    case 56:
      sub_252A822DC();
      sub_252A84410();
      sub_252E365A4();
      v9 = v32;
      sub_252E365A4();
      v28 = v32;
      v26 = v33;
      sub_252E365A4();
      v6 = v32;
      v12 = v33;
      result = sub_252E365A4();
      if (v12 & 1) != 0 || (v33)
      {
        if (v9 != 6)
        {
          v7 = 0;
          v8 = 0;
          v18 = v26 == 0;
          if (v26)
          {
            v6 = 0;
          }

          else
          {
            v6 = v28;
          }

          v10 = -44;
          v21 = -48;
LABEL_178:
          if (!v18)
          {
            v10 = v21;
          }

          goto LABEL_180;
        }
      }

      else if (v9 != 6)
      {
        v8 = 0;
        v7 = v32;
        v10 = -40;
        goto LABEL_180;
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544EE0);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E75F00);
      sub_252E365B4();
      sub_252E37AE4();
      v15 = v32;
      v16 = v33;
      v17 = 532;
LABEL_195:
      sub_252CC4050(v15, v16, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000010, 0x8000000252E6F060, v17);
LABEL_196:

      v9 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v10 = -2;
LABEL_180:
      *a1 = v9;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 32) = v10;
      return result;
    case 57:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -36;
      goto LABEL_177;
    case 58:
      result = sub_252E36594();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = v33 == 0;
      if (v33)
      {
        v9 = 0;
      }

      else
      {
        v9 = v32;
      }

      v10 = -32;
LABEL_177:
      v21 = -2;
      goto LABEL_178;
    case 60:
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544EE0);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      v30 = v32;
      v31 = v33;
      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E74FD0);
      sub_252E36584();
      __swift_project_boxed_opaque_existential_1(&v32, v34);
      v14 = sub_252E364C4();
      MEMORY[0x2530AD570](v14);

      __swift_destroy_boxed_opaque_existential_1(&v32);
      v15 = v30;
      v16 = v31;
      v17 = 375;
      goto LABEL_195;
    default:
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544EE0);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E750A0);
      sub_252E37AE4();
      sub_252CC4050(v32, v33, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000010, 0x8000000252E6F060, 540);
      goto LABEL_196;
  }
}

unint64_t sub_252A84410()
{
  result = qword_27F542480;
  if (!qword_27F542480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542480);
  }

  return result;
}

unint64_t sub_252A84464()
{
  result = qword_27F542488;
  if (!qword_27F542488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542488);
  }

  return result;
}

unint64_t sub_252A844B8()
{
  result = qword_27F542490;
  if (!qword_27F542490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542490);
  }

  return result;
}

unint64_t sub_252A8450C()
{
  result = qword_27F542498;
  if (!qword_27F542498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542498);
  }

  return result;
}

unint64_t sub_252A84560()
{
  result = qword_27F5424A0;
  if (!qword_27F5424A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5416D8, &qword_252E40998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424A0);
  }

  return result;
}

unint64_t sub_252A845DC()
{
  result = qword_27F5424A8;
  if (!qword_27F5424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424A8);
  }

  return result;
}

unint64_t sub_252A84630()
{
  result = qword_27F5424B0;
  if (!qword_27F5424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424B0);
  }

  return result;
}

unint64_t sub_252A84684()
{
  result = qword_27F5424B8;
  if (!qword_27F5424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424B8);
  }

  return result;
}

unint64_t sub_252A846D8()
{
  result = qword_27F5424C0;
  if (!qword_27F5424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424C0);
  }

  return result;
}

unint64_t sub_252A8472C()
{
  result = qword_27F5424C8;
  if (!qword_27F5424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424C8);
  }

  return result;
}

uint64_t sub_252A847B8()
{
  v0 = sub_252E37B74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A84804()
{
  v0 = sub_252E37B74();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A84850()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A8489C()
{
  v0 = sub_252E37B74();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A848E8()
{
  v0 = sub_252E37B74();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A84934()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A84980()
{
  v0 = sub_252E37B74();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A849CC()
{
  v0 = sub_252E37B74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252A84A18()
{
  result = qword_27F5424D0;
  if (!qword_27F5424D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424D0);
  }

  return result;
}

unint64_t sub_252A84A6C()
{
  result = qword_27F5424D8;
  if (!qword_27F5424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424D8);
  }

  return result;
}

unint64_t sub_252A84B54()
{
  result = qword_27F5424E0;
  if (!qword_27F5424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424E0);
  }

  return result;
}

unint64_t sub_252A84BDC()
{
  result = qword_27F5424F8;
  if (!qword_27F5424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5424F8);
  }

  return result;
}

unint64_t sub_252A84C34()
{
  result = qword_27F542500;
  if (!qword_27F542500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542500);
  }

  return result;
}

unint64_t sub_252A84C8C()
{
  result = qword_27F542508;
  if (!qword_27F542508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542508);
  }

  return result;
}

unint64_t sub_252A84CE4()
{
  result = qword_27F542510;
  if (!qword_27F542510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542510);
  }

  return result;
}

unint64_t sub_252A84D3C()
{
  result = qword_27F542518;
  if (!qword_27F542518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542518);
  }

  return result;
}

unint64_t sub_252A84D94()
{
  result = qword_27F542520;
  if (!qword_27F542520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542520);
  }

  return result;
}

unint64_t sub_252A84E1C()
{
  result = qword_27F542538;
  if (!qword_27F542538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542538);
  }

  return result;
}

unint64_t sub_252A84E74()
{
  result = qword_27F542540;
  if (!qword_27F542540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542540);
  }

  return result;
}

unint64_t sub_252A84ECC()
{
  result = qword_27F542548;
  if (!qword_27F542548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542548);
  }

  return result;
}

unint64_t sub_252A84F24()
{
  result = qword_27F542550;
  if (!qword_27F542550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542550);
  }

  return result;
}

unint64_t sub_252A84F7C()
{
  result = qword_27F542558;
  if (!qword_27F542558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542558);
  }

  return result;
}

unint64_t sub_252A84FD4()
{
  result = qword_27F542560;
  if (!qword_27F542560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542560);
  }

  return result;
}

unint64_t sub_252A8505C()
{
  result = qword_27F542578;
  if (!qword_27F542578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542578);
  }

  return result;
}

unint64_t sub_252A850B4()
{
  result = qword_27F542580;
  if (!qword_27F542580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542580);
  }

  return result;
}

unint64_t sub_252A8510C()
{
  result = qword_27F542588;
  if (!qword_27F542588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542588);
  }

  return result;
}

unint64_t sub_252A85164()
{
  result = qword_27F542590;
  if (!qword_27F542590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542590);
  }

  return result;
}

unint64_t sub_252A851BC()
{
  result = qword_27F542598;
  if (!qword_27F542598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542598);
  }

  return result;
}

unint64_t sub_252A85214()
{
  result = qword_27F5425A0;
  if (!qword_27F5425A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425A0);
  }

  return result;
}

unint64_t sub_252A8529C()
{
  result = qword_27F5425B8;
  if (!qword_27F5425B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425B8);
  }

  return result;
}

unint64_t sub_252A852F4()
{
  result = qword_27F5425C0;
  if (!qword_27F5425C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425C0);
  }

  return result;
}

unint64_t sub_252A8534C()
{
  result = qword_27F5425C8;
  if (!qword_27F5425C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425C8);
  }

  return result;
}

unint64_t sub_252A853A4()
{
  result = qword_27F5425D0;
  if (!qword_27F5425D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425D0);
  }

  return result;
}

unint64_t sub_252A853FC()
{
  result = qword_27F5425D8;
  if (!qword_27F5425D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425D8);
  }

  return result;
}

unint64_t sub_252A85454()
{
  result = qword_27F5425E0;
  if (!qword_27F5425E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425E0);
  }

  return result;
}

unint64_t sub_252A854DC()
{
  result = qword_27F5425F8;
  if (!qword_27F5425F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5425F8);
  }

  return result;
}

unint64_t sub_252A85534()
{
  result = qword_27F542600;
  if (!qword_27F542600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542600);
  }

  return result;
}

unint64_t sub_252A8558C()
{
  result = qword_27F542608;
  if (!qword_27F542608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542608);
  }

  return result;
}

unint64_t sub_252A855E4()
{
  result = qword_27F542610;
  if (!qword_27F542610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542610);
  }

  return result;
}

unint64_t sub_252A8563C()
{
  result = qword_27F542618;
  if (!qword_27F542618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542618);
  }

  return result;
}

unint64_t sub_252A85694()
{
  result = qword_27F542620;
  if (!qword_27F542620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542620);
  }

  return result;
}

unint64_t sub_252A8571C()
{
  result = qword_27F542638;
  if (!qword_27F542638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542638);
  }

  return result;
}

unint64_t sub_252A85774()
{
  result = qword_27F542640;
  if (!qword_27F542640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542640);
  }

  return result;
}

unint64_t sub_252A857CC()
{
  result = qword_27F542648;
  if (!qword_27F542648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542648);
  }

  return result;
}

unint64_t sub_252A85824()
{
  result = qword_27F542650;
  if (!qword_27F542650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542650);
  }

  return result;
}

unint64_t sub_252A8587C()
{
  result = qword_27F542658;
  if (!qword_27F542658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542658);
  }

  return result;
}

unint64_t sub_252A858D4()
{
  result = qword_27F542660;
  if (!qword_27F542660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542660);
  }

  return result;
}

unint64_t sub_252A8595C()
{
  result = qword_27F542678;
  if (!qword_27F542678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542678);
  }

  return result;
}

unint64_t sub_252A859B4()
{
  result = qword_27F542680;
  if (!qword_27F542680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542680);
  }

  return result;
}

unint64_t sub_252A85A0C()
{
  result = qword_27F542688;
  if (!qword_27F542688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542688);
  }

  return result;
}

unint64_t sub_252A85A64()
{
  result = qword_27F542690;
  if (!qword_27F542690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542690);
  }

  return result;
}

unint64_t sub_252A85ABC()
{
  result = qword_27F542698;
  if (!qword_27F542698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542698);
  }

  return result;
}

unint64_t sub_252A85B14()
{
  result = qword_27F5426A0;
  if (!qword_27F5426A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426A0);
  }

  return result;
}

unint64_t sub_252A85B9C()
{
  result = qword_27F5426B8;
  if (!qword_27F5426B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426B8);
  }

  return result;
}

unint64_t sub_252A85BF4()
{
  result = qword_27F5426C0;
  if (!qword_27F5426C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426C0);
  }

  return result;
}

unint64_t sub_252A85C4C()
{
  result = qword_27F5426C8;
  if (!qword_27F5426C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426C8);
  }

  return result;
}

unint64_t sub_252A85CA4()
{
  result = qword_27F5426D0;
  if (!qword_27F5426D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426D0);
  }

  return result;
}

unint64_t sub_252A85CFC()
{
  result = qword_27F5426D8;
  if (!qword_27F5426D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426D8);
  }

  return result;
}

unint64_t sub_252A85D54()
{
  result = qword_27F5426E0;
  if (!qword_27F5426E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426E0);
  }

  return result;
}

unint64_t sub_252A85DAC()
{
  result = qword_27F5426E8;
  if (!qword_27F5426E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426E8);
  }

  return result;
}

unint64_t sub_252A85E04()
{
  result = qword_27F5426F0;
  if (!qword_27F5426F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426F0);
  }

  return result;
}

unint64_t sub_252A85E5C()
{
  result = qword_27F5426F8;
  if (!qword_27F5426F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5426F8);
  }

  return result;
}

unint64_t sub_252A85EB4()
{
  result = qword_27F542700;
  if (!qword_27F542700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542700);
  }

  return result;
}

unint64_t sub_252A85F0C()
{
  result = qword_27F542708;
  if (!qword_27F542708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542708);
  }

  return result;
}

unint64_t sub_252A85F64()
{
  result = qword_27F542710;
  if (!qword_27F542710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542710);
  }

  return result;
}

unint64_t sub_252A85FBC()
{
  result = qword_27F542718;
  if (!qword_27F542718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542718);
  }

  return result;
}

unint64_t sub_252A86014()
{
  result = qword_27F542720;
  if (!qword_27F542720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542720);
  }

  return result;
}

unint64_t sub_252A86068()
{
  result = qword_27F542728;
  if (!qword_27F542728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542728);
  }

  return result;
}

unint64_t sub_252A860BC()
{
  result = qword_27F542730;
  if (!qword_27F542730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542730);
  }

  return result;
}

unint64_t sub_252A86110()
{
  result = qword_27F542738;
  if (!qword_27F542738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542738);
  }

  return result;
}

unint64_t sub_252A86164()
{
  result = qword_27F542740;
  if (!qword_27F542740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542740);
  }

  return result;
}

unint64_t sub_252A861B8()
{
  result = qword_27F542748;
  if (!qword_27F542748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542748);
  }

  return result;
}

unint64_t sub_252A8620C()
{
  result = qword_27F542750;
  if (!qword_27F542750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542750);
  }

  return result;
}

unint64_t sub_252A86260()
{
  result = qword_27F542758;
  if (!qword_27F542758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542758);
  }

  return result;
}

unint64_t sub_252A862B4()
{
  result = qword_27F542760;
  if (!qword_27F542760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542760);
  }

  return result;
}

uint64_t sub_252A86308()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A86354()
{
  v0 = sub_252E37B74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t INHomeAttributeType.toCustom()(unint64_t result)
{
  if (result >= 0x43)
  {
    return 0;
  }

  return result;
}

uint64_t Array<A>.toCustom()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2529AA360(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    v5 = *(v11 + 16);
    do
    {
      v6 = *v4++;
      v7 = INHomeAttributeType.toCustom()(v6);
      v8 = *(v11 + 24);
      if (v5 >= v8 >> 1)
      {
        v9 = v7;
        sub_2529AA360((v8 > 1), v5 + 1, 1);
        v7 = v9;
      }

      *(v11 + 16) = v5 + 1;
      *(v11 + 8 * v5++ + 32) = v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_252A864D4()
{
  v1 = [v0 taskType];
  v2 = INHomeAttributeType.toCustom()([v0 attribute]);
  v3 = [v0 value];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252A0A354();
  }

  else
  {
    v5 = 0;
  }

  if (v1 >= 7)
  {
    v1 = 0;
  }

  v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v7 = v5;
  v8 = sub_252E36F04();
  v9 = [v6 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  return v10;
}

void *sub_252A86604(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[7] = a1;
  sub_252A907DC(a1);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v7 = *(v6 + 23);

  v3[8] = v7;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 136), v11);

  sub_252927BEC(v11, (v3 + 2));
  v3[9] = a2;

  sub_252B680FC();
  v9 = sub_252B631FC();

  sub_252A8B32C(a1);

  v3[10] = v9;
  return v3;
}

uint64_t sub_252A8670C()
{
  v1 = v0[14];
  v2 = *(v1 + 56);
  v0[15] = v2;
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      if (qword_27F53F490 != -1)
      {
        swift_once();
        v1 = v0[14];
      }

      v8 = sub_252E36AD4();
      __swift_project_value_buffer(v8, qword_27F544C58);
      sub_252CC3D90(0xD000000000000023, 0x8000000252E76810, 0xD000000000000093, 0x8000000252E76340);
      v9 = *(v1 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
      v10 = swift_allocObject();
      *(v10 + 32) = 0x656C62616E457369;
      *(v10 + 40) = 0xEF74736575716552;
      *(v10 + 72) = MEMORY[0x277D839B0];
      v11 = MEMORY[0x277D55C70];
      *(v10 + 48) = v2 & 1;
      v12 = v11[1];
      v20 = (v11 + *v11);
      v0[20] = v10;
      *(v10 + 16) = xmmword_252E3C290;
      v13 = swift_task_alloc();
      v0[21] = v13;
      *v13 = v0;
      v13[1] = sub_252A86CF8;

      return v20(0xD00000000000002DLL, 0x8000000252E76840, v10);
    }

    else
    {
      v16 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
      v17 = swift_task_alloc();
      v0[18] = v17;
      *v17 = v0;
      v17[1] = sub_252A86BDC;
      v18 = v0[14];

      return sub_252A89088(v16);
    }
  }

  else
  {
    if (v3)
    {
      v4 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v15 = sub_252A86AC0;
    }

    else
    {
      v4 = v2;
      if (sub_252C4BEB8())
      {
        v5 = swift_task_alloc();
        v0[23] = v5;
        *v5 = v0;
        v5[1] = sub_252A86F1C;
        v6 = v0[14];

        return sub_252A89D0C(v4);
      }

      v14 = swift_task_alloc();
      v0[25] = v14;
      *v14 = v0;
      v15 = sub_252A870A0;
    }

    v14[1] = v15;
    v19 = v0[14];

    return sub_252A875E0(v4);
  }
}

uint64_t sub_252A86AC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v8 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v6 = sub_252A8728C;
  }

  else
  {
    v6 = sub_252A86EB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A86BDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[18];
  v8 = *v2;
  v4[19] = v1;

  if (v1)
  {
    v6 = sub_252A873B8;
  }

  else
  {
    v6 = sub_252A87224;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A86CF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252A86E50, 0, 0);
  }

  else
  {
    v7 = *(v4 + 160);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252A86E50()
{
  v1 = v0[20];

  v2 = v0[22];
  v3 = v0[1];

  return v3();
}

uint64_t sub_252A86EB4()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A86F1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[23];
  v8 = *v2;
  v4[24] = v1;

  if (v1)
  {
    v6 = sub_252A872F0;
  }

  else
  {
    v6 = sub_252A87038;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A87038()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A870A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[25];
  v8 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v6 = sub_252A87354;
  }

  else
  {
    v6 = sub_252A871BC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A871BC()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[12];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A87224()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[6];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A8728C()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_252A872F0()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[24];
  v2 = v0[1];

  return v2();
}

uint64_t sub_252A87354()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[26];
  v2 = v0[1];

  return v2();
}

uint64_t sub_252A873B8()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

void sub_252A8741C(void *a1@<X8>)
{
  if (!v1[11])
  {
    v2 = v1[7];
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 == 2)
      {
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        return;
      }

      v2 &= 0x3FFFFFFFFFFFFFFFuLL;
      v4 = a1;
    }

    else
    {
      v4 = a1;
      if (v3)
      {
        v5 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_9:
        sub_252A874E0(v5, &v13);
        v6 = v14;
        v7 = v1[11];
        v8 = v1[12];
        v9 = v1[13];
        *(v1 + 11) = v13;
        v1[13] = v6;
        sub_252A8B35C(v7, v8);
        a1 = v4;
        goto LABEL_10;
      }
    }

    v5 = v2;
    goto LABEL_9;
  }

LABEL_10:
  v10 = v1[11];
  v11 = v1[12];
  v12 = v1[13];
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;

  sub_252A90FE4(v10, v11);
}

void *sub_252A874E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 filters];
  if (!v4)
  {
    goto LABEL_10;
  }

  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    v4 = 0;
    goto LABEL_10;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x2530ADF00](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v4 = v7;

LABEL_10:
    type metadata accessor for IconsManager();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[4] = v3;
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_252A875E0(uint64_t a1)
{
  v2[264] = v1;
  v2[263] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[265] = swift_task_alloc();
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v2[270] = swift_task_alloc();
  v2[271] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A876C8, 0, 0);
}

uint64_t sub_252A876C8()
{
  v89 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = v0[264];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E767C0, 0xD000000000000093, 0x8000000252E76340);
  sub_252A8741C(__dst);
  v3 = __dst[0];
  v4 = __dst[1];
  v0[272] = __dst[0];
  v0[273] = v4;
  v5 = __dst[2];
  v0[274] = __dst[2];
  v6 = sub_252B680FC();
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 504 * v8 - 472);
    memcpy(v0 + 128, v9, 0x1F8uLL);
    memmove(v0 + 65, v9, 0x1F8uLL);
    GEOLocationCoordinate2DMake(v0 + 65);
    sub_2529353AC((v0 + 128), (v0 + 191));

    memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0((v0 + 2));
  }

  v10 = v0[264];
  v11 = v0[263];
  memcpy(__dst, v0 + 2, 0x1F8uLL);
  v12 = v11;
  v87 = sub_252953488(v11, __dst, 0);
  v0[275] = v87;

  v86 = *(v10 + 64);
  v13 = v0[271];
  if (v3)
  {
    v14 = v0[270];
    __dst[0] = v3;
    __dst[1] = v4;
    __dst[2] = v5;
    sub_252A88574(v13);
    __dst[0] = v3;
    __dst[1] = v4;
    __dst[2] = v5;
    sub_252A88744(v14);
    v15 = sub_252E36324();
    v16 = *(v15 - 8);
    v82 = *(v16 + 48);
    v17 = v82(v14, 1, v15);
    v18 = v0[270];
    v79 = v4;
    if (v17 == 1)
    {
      sub_25293847C(v18, &qword_27F540298, &unk_252E3C270);
      v80 = 0;
    }

    else
    {
      v76 = v0[270];
      v77 = v3;
      v23 = v16;
      v24 = v0[269];
      (*(v23 + 16))(v24, v18, v15);
      v25 = *(v23 + 56);
      v25(v24, 0, 1, v15);
      v26 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      v30 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v25(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v15);
      swift_beginAccess();
      sub_2529D032C(v24, v29 + v30, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      v31 = v24;
      v16 = v23;
      v3 = v77;
      sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
      v32 = type metadata accessor for HomeAutomationHomeLocation(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v80 = v35;
      sub_252938414(v29 + v30, v35 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
      swift_setDeallocating();
      v4 = v79;
      sub_25293847C(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      v36 = *(*v29 + 48);
      v37 = *(*v29 + 52);
      swift_deallocClassInstance();
      (*(v16 + 8))(v76, v15);
    }

    v38 = v0[268];
    __dst[0] = v3;
    __dst[1] = v4;
    __dst[2] = v5;
    sub_252A88B84(v38);
    if (v82(v38, 1, v15) == 1)
    {
      sub_25293847C(v0[268], &qword_27F540298, &unk_252E3C270);
      v78 = 0;
    }

    else
    {
      v39 = v0[269];
      v84 = v0[268];
      (*(v16 + 16))(v39);
      v40 = *(v16 + 56);
      v40(v39, 0, 1, v15);
      v41 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      v44 = swift_allocObject();
      v45 = v16;
      v46 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v40(v44 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v15);
      swift_beginAccess();
      sub_2529D032C(v39, v44 + v46, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      sub_25293847C(v39, &qword_27F540298, &unk_252E3C270);
      v47 = type metadata accessor for HomeAutomationHomeLocation(0);
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      v78 = v50;
      sub_252938414(v44 + v46, v50 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
      swift_setDeallocating();
      sub_25293847C(v44 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      v51 = *(*v44 + 48);
      v52 = *(*v44 + 52);
      v4 = v79;
      swift_deallocClassInstance();
      (*(v45 + 8))(v84, v15);
    }

    v53 = v0[267];
    __dst[0] = v3;
    __dst[1] = v4;
    __dst[2] = v5;
    v54 = v4;

    v55 = v3;
    v83 = sub_252A88D8C();

    __dst[0] = v55;
    __dst[1] = v4;
    __dst[2] = v5;
    sub_252A8CA20(v53);
    v22 = v80;
    v21 = v78;
  }

  else
  {
    v19 = v0[267];
    v15 = sub_252E36324();
    v20 = *(*(v15 - 8) + 56);
    v20(v13, 1, 1, v15);
    v20(v19, 1, 1, v15);
    v21 = 0;
    v22 = 0;
    v83 = MEMORY[0x277D84F90];
  }

  v0[277] = v22;
  v0[276] = v21;
  v56 = v0[271];
  v57 = v0[266];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v58 = swift_allocObject();
  v0[278] = v58;
  *(v58 + 16) = xmmword_252E3F1F0;
  *(v58 + 32) = 0xD000000000000013;
  *(v58 + 40) = 0x8000000252E76480;
  sub_252938414(v56, v57, &qword_27F540298, &unk_252E3C270);
  sub_252E36324();
  v59 = *(v15 - 8);
  v81 = *(v59 + 48);
  v60 = v81(v57, 1, v15);
  v61 = v0[266];
  if (v60 == 1)
  {
    sub_25293847C(v0[266], &qword_27F540298, &unk_252E3C270);
    *(v58 + 48) = 0u;
    *(v58 + 64) = 0u;
  }

  else
  {
    *(v58 + 72) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v58 + 48));
    (*(v59 + 32))(boxed_opaque_existential_0, v61, v15);
  }

  strcpy((v58 + 80), "candidateName");
  *(v58 + 94) = -4864;
  if (v22)
  {
    v63 = type metadata accessor for HomeAutomationHomeLocation(0);
    v64 = v22;
  }

  else
  {
    v64 = 0;
    v63 = 0;
    *(v58 + 104) = 0;
    *(v58 + 112) = 0;
  }

  *(v58 + 96) = v64;
  *(v58 + 120) = v63;
  *(v58 + 128) = 0x656D614E656D6F68;
  *(v58 + 136) = 0xE800000000000000;
  if (v21)
  {
    v65 = type metadata accessor for HomeAutomationHomeLocation(0);
    v66 = v21;
  }

  else
  {
    v66 = 0;
    v65 = 0;
    *(v58 + 152) = 0;
    *(v58 + 160) = 0;
  }

  v67 = v0[267];
  v68 = v0[265];
  *(v58 + 144) = v66;
  *(v58 + 168) = v65;
  *(v58 + 176) = 0xD000000000000011;
  *(v58 + 184) = 0x8000000252E764A0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v58 + 192) = v83;
  *(v58 + 216) = v69;
  *(v58 + 224) = 0xD000000000000010;
  *(v58 + 232) = 0x8000000252E764C0;
  sub_252938414(v67, v68, &qword_27F540298, &unk_252E3C270);
  v70 = v81(v68, 1, v15);
  v71 = v0[265];
  if (v70 == 1)
  {

    sub_25293847C(v71, &qword_27F540298, &unk_252E3C270);
    *(v58 + 240) = 0u;
    *(v58 + 256) = 0u;
  }

  else
  {
    *(v58 + 264) = v15;
    v72 = __swift_allocate_boxed_opaque_existential_0((v58 + 240));
    (*(v59 + 32))(v72, v71, v15);
  }

  strcpy((v58 + 272), "intentContext");
  *(v58 + 286) = -4864;
  *(v58 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v58 + 288) = v87;
  v73 = *(MEMORY[0x277D55C70] + 4);
  v85 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v74 = swift_task_alloc();
  v0[279] = v74;
  *v74 = v0;
  v74[1] = sub_252A8817C;

  return v85(0xD00000000000001CLL, 0x8000000252E767F0, v58);
}

uint64_t sub_252A8817C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2232);
  v6 = *v2;
  v4[280] = v1;

  v7 = v4[278];
  if (v1)
  {

    v8 = sub_252A88424;
  }

  else
  {
    v9 = v4[277];
    v10 = v4[276];
    v11 = v4[275];
    v12 = v4[271];
    v13 = v4[267];

    v4[281] = a1;

    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
    v8 = sub_252A88328;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252A88328()
{
  v1 = v0[275];
  v2 = v0[274];
  v3 = v0[273];
  v4 = v0[272];
  v5 = v0[271];
  v6 = v0[270];
  v7 = v0[269];
  v8 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v14 = v0[265];

  sub_252A8B35C(v4, v3);

  v11 = v0[1];
  v12 = v0[281];

  return v11(v12);
}

uint64_t sub_252A88424()
{
  v1 = v0[277];
  v2 = v0[276];
  v3 = v0[275];
  v4 = v0[274];
  v5 = v0[273];
  v6 = v0[272];
  v7 = v0[271];
  v8 = v0[270];
  v13 = v0[269];
  v14 = v0[268];
  v9 = v0[267];
  v15 = v0[266];
  v16 = v0[265];

  sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
  sub_252A8B35C(v6, v5);

  v10 = v0[1];
  v11 = v0[280];

  return v10();
}

uint64_t sub_252A88574@<X0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  v7 = *(v1 + 2);
  sub_252A8C8BC();
  sub_252E37024();

  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_252A88744@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36AD4();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[2];
  v36 = v3;
  v37 = v4;
  v20 = *(v4 + 56);
  v20(a1, 1, 1, v3);
  sub_252B680FC();
  LOBYTE(v3) = sub_252B63638();

  if (v3)
  {
    v41 = v17;
    v42 = v18;
    v43 = v19;
    sub_252A8CA20(v16);
    sub_252A909F4(v16, a1, &qword_27F540298, &unk_252E3C270);
    v22 = v39;
    v21 = v40;
    v24 = v37;
    v23 = v38;
    v25 = v36;
  }

  else
  {
    if (v18)
    {
      v41 = v17;
      v42 = v18;
      v43 = v19;
      v26 = sub_252A8C8BC();
      sub_252A218E0(v26, v14);
      v22 = v39;
      v21 = v40;
      v24 = v37;
      v23 = v38;
      v25 = v36;
    }

    else
    {
      v25 = v36;
      v20(v14, 1, 1, v36);
      v22 = v39;
      v21 = v40;
      v24 = v37;
      v23 = v38;
    }

    sub_252A909F4(v14, a1, &qword_27F540298, &unk_252E3C270);
  }

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v21, qword_27F544C58);
  (*(v22 + 16))(v23, v27, v21);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();

  v41 = 0xD00000000000001CLL;
  v42 = 0x8000000252E76530;
  v28 = 0;
  v29 = 0;
  if (!(*(v24 + 48))(a1, 1, v25))
  {
    v30 = v35;
    (*(v24 + 16))(v35, a1, v25);
    v28 = sub_252E36304();
    v29 = v31;
    (*(v24 + 8))(v30, v25);
  }

  v44 = v28;
  v45 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v32 = sub_252E36F94();
  MEMORY[0x2530AD570](v32);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v41, v42, 0xD000000000000093, 0x8000000252E76340);

  return (*(v22 + 8))(v23, v21);
}

uint64_t sub_252A88B84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *(v1 + 8);
  if (v10)
  {
    v11 = sub_252E36324();
    v12 = *(*(v11 - 8) + 56);
    v13 = 1;
    v12(v9, 1, 1, v11);
    v14 = [v10 homeName];
    if (v14)
    {
      v15 = v14;
      sub_252E36F34();

      sub_252E37024();

      v13 = 0;
    }

    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    v12(v7, v13, 1, v11);
    sub_2529439A0(v7, v9);
    return sub_2529439A0(v9, a1);
  }

  else
  {
    v17 = sub_252E36324();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

char *sub_252A88D8C()
{
  v1 = sub_252E36324();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = [*v0 filters];
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v29 = v9 & 0xC000000000000001;
    v12 = (v27 + 32);
    v13 = MEMORY[0x277D84F90];
    v24 = v9;
    v25 = i;
    while (1)
    {
      if (v29)
      {
        v14 = MEMORY[0x2530ADF00](v11, v9);
      }

      else
      {
        if (v11 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = [v14 homeEntityName];
      if (v17)
      {
        v18 = v17;
        sub_252E36F34();

        v19 = v26;
        sub_252E37024();

        v20 = *v12;
        (*v12)(v6, v19, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, *(v13 + 2) + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          v13 = sub_2529F7F74(v21 > 1, v22 + 1, 1, v13);
        }

        *(v13 + 2) = v22 + 1;
        v20(&v13[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22], v6, v1);
        v9 = v24;
        i = v25;
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_23:

  return v13;
}

uint64_t sub_252A89088(uint64_t a1)
{
  *(v2 + 2096) = v1;
  *(v2 + 2088) = a1;
  return MEMORY[0x2822009F8](sub_252A890AC, 0, 0);
}

uint64_t sub_252A890AC()
{
  v88 = v0;
  if (qword_27F53F490 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v1 = *(v0 + 2088);
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544C58);
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E76750, 0xD000000000000093, 0x8000000252E76340);
    v3 = sub_252A90A5C(v1);
    v4 = v3;
    __dst[0] = MEMORY[0x277D84F90];
    v5 = v3 >> 62 ? sub_252E378C4() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = MEMORY[0x277D84F90];
    v86 = v0;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    v0 = v4 & 0xFFFFFFFFFFFFFF8;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](v7, v4);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_72;
      }

LABEL_11:
      v11 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v12 = [*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v13 = sub_252E36F34();
      v15 = v14;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v16 = off_27F546230;
      if (*(off_27F546230 + 2) && (v17 = sub_252A44A10(v13, v15), (v18 & 1) != 0))
      {
        v19 = *(v16[7] + 8 * v17);

        if (v19 == 3)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v20 = [*(v9 + v11) serviceType];
      v21 = sub_252E36F34();
      v23 = v22;

      if (!v16[2] || (v24 = sub_252A44A10(v21, v23), (v25 & 1) == 0))
      {

LABEL_23:

        goto LABEL_7;
      }

      v26 = *(v16[7] + 8 * v24);

      if (v26 != 29)
      {
        goto LABEL_23;
      }

LABEL_6:
      sub_252E37A94();
      v8 = *(__dst[0] + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_7:
      ++v7;
      if (v10 == v5)
      {
        v0 = v86;
        v6 = __dst[0];
        goto LABEL_28;
      }
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    v9 = *(v4 + 8 * v7 + 32);

    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

LABEL_28:
  v27 = *(v0 + 2088);

  v28 = [v27 userTask];
  if (v28 && (v29 = v28, v30 = [v28 value], v29, v30))
  {
    [v30 doubleValue];
    v32 = v31;

    v33 = 0;
    v34 = v32;
  }

  else
  {
    v34 = 0.0;
    v33 = 1;
  }

  v35 = *(v0 + 2088);
  v36 = MEMORY[0x277D84F90];
  *(v0 + 2072) = MEMORY[0x277D84F90];
  *(v0 + 2080) = v36;
  v37 = sub_252C6E240(v35);
  v38 = v37;
  if ((v33 & 1) == 0 && v37 == 2)
  {
    v33 = 0;
    v34 = round((v34 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  sub_252E379F4();

  __dst[0] = 0xD00000000000001ALL;
  __dst[1] = 0x8000000252E76780;
  *(v0 + 2056) = v34;
  *(v0 + 2064) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
  v39 = sub_252E36F94();
  MEMORY[0x2530AD570](v39);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000093, 0x8000000252E76340);

  v40 = v6;
  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_252E378C4();
    v40 = v6;
  }

  else
  {
    result = *(v6 + 16);
  }

  if (result)
  {
    if (result >= 1)
    {
      v42 = 0;
      v80 = (v0 + 2072);
      v85 = (v0 + 2080);
      v81 = v40 & 0xC000000000000001;
      v82 = result;
      v78 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D84F90];
      v83 = v38;
      v84 = v40;
      while (1)
      {
        if (v81)
        {
          v43 = MEMORY[0x2530ADF00](v42);
        }

        else
        {
          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = *(v0 + 2088);
        type metadata accessor for ServiceTemperatureThresholdHandler();
        swift_allocObject();

        v45 = v44;
        v46 = v34;
        v47 = v33;
        v48 = sub_252A90C4C(v45, v43, *&v34, v33);

        v49 = *(v48 + 80);
        v50 = *(v48 + 88);
        v51 = *(v48 + 96);
        v52 = *(v48 + 104);
        v53 = *(v48 + 48);
        v54 = *(v48 + 56);
        v55 = *(v48 + 64);
        v56 = *(v48 + 72);
        v57 = sub_252C6E240(v45);
        v58 = v85;
        if (v57 != 2)
        {
          goto LABEL_53;
        }

        if (v50)
        {
          if (v52)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v49 = round((v49 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
          if (v52)
          {
LABEL_49:
            if ((v54 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_50;
          }
        }

        v51 = round((v51 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
        if ((v54 & 1) == 0)
        {
LABEL_62:
          v53 = round((v53 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
          if (v56)
          {
            goto LABEL_52;
          }

LABEL_51:
          v55 = round((v55 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
          goto LABEL_52;
        }

LABEL_50:
        if ((v56 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_52:
        *(v48 + 80) = v49;
        *(v48 + 88) = v50;
        *(v48 + 96) = v51;
        *(v48 + 104) = v52;
        *(v48 + 48) = v53;
        *(v48 + 56) = v54;
        *(v48 + 64) = v55;
        *(v48 + 72) = v56;
LABEL_53:
        type metadata accessor for TargetTemperatureConfirmationResponse();
        swift_allocObject();
        sub_252A90D3C(v43, v48, v83, 0);

        v59 = sub_252A8BA2C();
        v61 = v60;

        if (v59 && v61)
        {

          MEMORY[0x2530AD700](v62);
          if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v64 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
            v58 = v85;
          }

          sub_252E372D4();
          v79 = *v58;

          MEMORY[0x2530AD700](v63);
          if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v78 = *v80;
        }

        else
        {
        }

        ++v42;
        v0 = v86;
        v40 = v84;
        v33 = v47;
        v34 = v46;
        if (v82 == v42)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
    v79 = MEMORY[0x277D84F90];
LABEL_66:

    v65 = sub_252B680FC();
    swift_beginAccess();
    v66 = *(v65 + 16);
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = (v66 + 504 * v67 - 472);
      memcpy((v0 + 1024), v68, 0x1F8uLL);
      memmove((v0 + 520), v68, 0x1F8uLL);
      GEOLocationCoordinate2DMake(v0 + 520);
      sub_2529353AC(v0 + 1024, v0 + 1528);

      memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
    }

    else
    {

      sub_25293DEE0(v0 + 16);
    }

    v69 = MEMORY[0x277D84F90];
    v70 = *(v0 + 2096);
    v71 = *(v0 + 2088);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    v72 = v71;
    v73 = sub_252953488(v71, __dst, 0);
    *(v0 + 2104) = v73;

    sub_252A90E4C(v78);
    v74 = *(v70 + 64);
    type metadata accessor for HomeAutomationAbstractMeasurements.Builder();
    *(swift_allocObject() + 16) = v69;
    type metadata accessor for HomeAutomationAbstractMeasurements();
    v75 = swift_allocObject();
    *(v0 + 2112) = v75;
    *(v75 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v75 + 24) = v78;
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = v69;
    type metadata accessor for HomeAutomationEntityResponses();
    v76 = swift_allocObject();
    *(v0 + 2120) = v76;
    *(v76 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v76 + 24) = v79;

    v77 = swift_task_alloc();
    *(v0 + 2128) = v77;
    *v77 = v0;
    v77[1] = sub_252A89ADC;

    return sub_252D27674(v73, v75, v76);
  }

  return result;
}

uint64_t sub_252A89ADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2128);
  v6 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v7 = sub_252A89C8C;
  }

  else
  {
    v8 = v4[265];
    v9 = v4[264];
    v10 = v4[263];

    v4[268] = a1;
    v7 = sub_252A89C24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252A89C24()
{
  v1 = v0[263];

  v2 = v0[1];
  v3 = v0[268];

  return v2(v3);
}

uint64_t sub_252A89C8C()
{
  v1 = v0[265];
  v2 = v0[264];
  v3 = v0[263];

  v4 = v0[1];
  v5 = v0[267];

  return v4();
}

uint64_t sub_252A89D0C(uint64_t a1)
{
  v2[261] = v1;
  v2[260] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[262] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A89DAC, 0, 0);
}

uint64_t sub_252A89DAC()
{
  v35 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E766F0, 0xD000000000000093, 0x8000000252E76340);
  v2 = sub_252B680FC();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 504 * v4 - 472);
    memcpy((v0 + 1024), v5, 0x1F8uLL);
    memmove((v0 + 520), v5, 0x1F8uLL);
    GEOLocationCoordinate2DMake(v0 + 520);
    sub_2529353AC(v0 + 1024, v0 + 1528);

    memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v0 + 16);
  }

  v6 = *(v0 + 2080);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v7 = v6;
  v8 = sub_252953488(v6, __dst, 0);
  *(v0 + 2104) = v8;

  type metadata accessor for HomeAutomationEntityResponses();
  v9 = MEMORY[0x277D84F90];
  sub_25299DDFC(MEMORY[0x277D84F90]);
  if (sub_252C4D664(5))
  {
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_252E3C130;
    v10 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v15 = sub_252E36324();
    v16 = *(*(v15 - 8) + 56);
    v17 = 1;
    v16(v13 + v14, 1, 1, v15);
    v16(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v15);
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v9;
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v16(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v15);
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v9;
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v9;
    sub_252C4E214();
    if (v18)
    {
      v19 = *(v0 + 2096);
      sub_252E37024();

      v17 = 0;
    }

    v20 = *(v0 + 2096);
    v16(v20, v17, 1, v15);
    swift_beginAccess();
    sub_2529D032C(v20, v13 + v14, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
    v21 = type metadata accessor for HomeAutomationEntityResponse(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_2529605C0(v13);
    swift_setDeallocating();
    v25 = *sub_25295E9E4();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_deallocClassInstance();
    *(v33 + 32) = v24;

    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v28 + 24) = v33;
  }

  else
  {
    v29 = sub_252A90A5C(*(v0 + 2080));
    v28 = sub_25299DDFC(v29);
  }

  *(v0 + 2112) = v28;
  v30 = *(*(v0 + 2088) + 64);

  v31 = swift_task_alloc();
  *(v0 + 2120) = v31;
  *v31 = v0;
  v31[1] = sub_252A8A2C4;

  return sub_252D2BD34(v8, v28);
}

uint64_t sub_252A8A2C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2120);
  v6 = *(*v2 + 2112);
  v7 = *(*v2 + 2104);
  v8 = *v2;
  *(*v2 + 2128) = v1;

  if (v1)
  {
    v9 = sub_252A8A4AC;
  }

  else
  {
    *(v4 + 2136) = a1;
    v9 = sub_252A8A42C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252A8A42C()
{
  v1 = v0[264];
  v2 = v0[263];
  v3 = v0[262];

  v4 = v0[1];
  v5 = v0[267];

  return v4(v5);
}

uint64_t sub_252A8A4AC()
{
  v1 = v0[264];
  v2 = v0[263];
  v3 = v0[262];

  v4 = v0[1];
  v5 = v0[266];

  return v4();
}

uint64_t sub_252A8A528(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252A8A548, 0, 0);
}

uint64_t sub_252A8A548()
{
  v1 = v0[3];
  v2 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v3 = v1[9];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_252A8A644;
  v5 = v0[2];
  v6 = v0[3];

  return sub_252A1E544(v5, &unk_252E46558, v6, &unk_252E46560, 0, v3, 1, v2);
}

uint64_t sub_252A8A644()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252A8A778, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_252A8A790()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2529C8CCC;

  return sub_252A866EC();
}

uint64_t sub_252A8A820(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_252E36324();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_252E36AB4();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A8A980, 0, 0);
}

uint64_t sub_252A8A980()
{
  v1 = v0[19];
  v2 = type metadata accessor for IconConfiguration();
  v0[20] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[21] = v4;
  v0[22] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v5 = v0[17];
  v6 = qword_27F544FD0;
  v0[23] = qword_27F544FD0;
  v7 = v6;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  v0[24] = v8;
  __swift_project_value_buffer(v8, qword_27F544EB0);
  v9 = sub_252E36AC4();
  v10 = sub_252E374C4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_252917000, v9, v10, "Building confirmation snippet model", v11, 2u);
    MEMORY[0x2530AED00](v11, -1, -1);
  }

  v0[25] = sub_252D15950(0);
  v0[26] = sub_252D15950(1);
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[27] = *(v12 + 23);

  sub_252B680FC();
  v13 = sub_252B631FC();
  v0[28] = v13;

  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_252A8AC08;

  return sub_252D260EC(v13);
}

uint64_t sub_252A8AC08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *(*v2 + 224);
  v8 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v6 = sub_252A8B1A4;
  }

  else
  {
    v6 = sub_252A8AD3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A8AD3C()
{
  v1 = *(v0 + 240);
  v41 = *(v0 + 200);
  v43 = *(v0 + 208);
  v37 = *(v0 + 168);
  v39 = *(v0 + 176);
  v31 = *(v0 + 152);
  v2 = *(v0 + 144);
  v33 = v2;
  v35 = *(v0 + 160);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(v0 + 256) = 0;
  sub_252E36374();
  sub_252E37024();

  v30 = sub_252E36304();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v3, v6);
  *(v0 + 257) = 1;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v29 = v11;
  v9(v3, v6);
  sub_252938414(v31, v2, &qword_27F541B50, &unk_252E47970);
  v12 = type metadata accessor for ConfirmationSnippetModel();
  v13 = v12[11];
  v37(&v5[v13], 1, 1, v35);
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v14 = v12[7];
  *(v0 + 40) = v30;
  *(v0 + 48) = v8;
  v15 = v41;
  v16 = v43;
  sub_252E330C4();
  v17 = v12[8];
  *(v0 + 56) = v10;
  *(v0 + 64) = v29;
  sub_252E330C4();
  v18 = v12[9];
  sub_252A75B60();
  v19 = v15;
  sub_252E33054();
  v20 = &v5[v12[10]];
  sub_252E33054();

  v5[v12[12]] = 0;
  sub_252A909F4(v33, &v5[v13], &qword_27F541B50, &unk_252E47970);
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 208);
  v32 = *(v0 + 240);
  v34 = *(v0 + 216);
  v22 = *(v0 + 200);
  v40 = *(v0 + 152);
  v42 = *(v0 + 144);
  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v36 = *(v0 + 184);
  v38 = *(v0 + 120);
  v44 = *(v0 + 112);
  v25 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 192), qword_27F544C58);
  sub_252E379F4();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E76410);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 72), *(v0 + 80), 0xD000000000000072, 0x8000000252E72680);

  sub_252E375C4();
  sub_252E36A74();
  (*(v24 + 8))(v23, v38);
  sub_25293847C(v40, &qword_27F541B50, &unk_252E47970);
  v26 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_252A8B1A4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v10 = v0[15];

  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v10);
  sub_25293847C(v6, &qword_27F541B50, &unk_252E47970);

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t BaseConfirmationHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_252A8B32C(*(v0 + 56));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);
  sub_252A8B35C(*(v0 + 88), *(v0 + 96));
  return v0;
}

void sub_252A8B32C(unint64_t a1)
{
  v1 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v1 != 2)
    {
    }
  }

  else
  {
    if (v1)
    {
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
    }
  }
}

void sub_252A8B35C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_252A8B3F0()
{
  v1 = *(v0 + 24);
  v2 = sub_252BAC3A4();
  if (*(v2 + 2) && (v3 = *(v2 + 4), , v4 = sub_252BAC3B8(), *(v4 + 2)))
  {
    v5 = *(v4 + 4);

    if ((*(v0 + 40) & 1) == 0)
    {
      v7 = *(v0 + 32);
      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      v8 = sub_252E36AD4();
      __swift_project_value_buffer(v8, qword_27F544C58);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E76690);
      v9 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v10 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v11 = v9[1];

      MEMORY[0x2530AD570](v10, v11);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E766C0);
      v12 = *v9;
      v13 = v9[1];

      MEMORY[0x2530AD570](v12, v13);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

      *(v0 + 43) = v7 < v3;
      *(v0 + 44) = v5 < v7;
      *(v0 + 80) = v3;
      *(v0 + 88) = 0;
      *(v0 + 96) = v5;
      *(v0 + 104) = 0;
    }
  }

  else
  {
  }

  return result;
}

void sub_252A8B6A8()
{
  v1 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD000000000000016, 0x8000000252E76630, 0xD000000000000093, 0x8000000252E76340);
  *(v0 + 105) = 1;
  v3 = *(v0 + 16);
  v4 = [v3 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 value];

    if (v6)
    {
      v7 = [v6 rangeValue];

      if (v7)
      {
        [v7 lowerValue];
        v27 = v8;
        [v7 upperValue];
        v28 = v9;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E76650);
        sub_252E37374();
        sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E76670);
        sub_252E37374();
        sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

        v10 = sub_252C6E240(v3);
        v11.f64[0] = v28;
        v11.f64[1] = v27;
        if (v10 == 2)
        {
          v12 = vaddq_f64(v11, vdupq_n_s64(0xC040000000000000));
          __asm { FMOV            V1.2D, #5.0 }

          v18 = vmulq_f64(v12, _Q1);
          __asm { FMOV            V1.2D, #9.0 }

          v20 = vdivq_f64(v18, _Q1);
          v21 = vdupq_n_s64(0x4059000000000000uLL);
          v29 = vdivq_f64(vrndaq_f64(vmulq_f64(v20, v21)), v21);
        }

        else
        {
          v29 = v11;
        }

        v22 = *(v1 + 24);
        v23 = sub_252BAC3CC();
        if (*(v23 + 2) && (v24 = *(v23 + 4), , v25 = sub_252BAC3E0(), *(v25 + 2)))
        {
          v26 = *(v25 + 4);

          *(v1 + 41) = v29.f64[1] < v24;
          *(v1 + 42) = v26 < v29.f64[0];
          *(v1 + 48) = v24;
          *(v1 + 56) = 0;
          *(v1 + 64) = v26;
          *(v1 + 72) = 0;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_252A8B9C8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_252A8BA2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = &v38 - v3;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  v40 = __swift_project_value_buffer(v4, qword_27F544C58);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E76550);
  v5 = v0[24];
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v0[24])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v6, v7);

  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E76590);
  v8 = v0[25];
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v0[25])
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E765D0);
  v11 = v0[26];
  if (v11)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v0[26])
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v12, v13);

  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E76600);
  v39 = v0;
  v14 = v0[27];
  if (v0[27])
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v0[27])
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v15, v16);

  sub_252CC3D90(v41, v42, 0xD000000000000093, 0x8000000252E76340);

  if ((v5 & 1) != 0 || (v8 & 1) != 0 || (v11 & 1) != 0 || (result = 0, v14))
  {
    v18 = v39;
    v19 = *(v39 + 2);
    v21 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v20 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v22 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v27 = sub_252E36324();
    v28 = *(*(v27 - 8) + 56);
    v28(v25 + v26, 1, 1, v27);
    v28(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v27);
    *(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    v29 = MEMORY[0x277D84F90];
    *(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
    *(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v28(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v27);
    *(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v29;
    *(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v29;
    v30 = v18;

    v31 = v38;
    sub_252E37024();

    v28(v31, 0, 1, v27);
    swift_beginAccess();
    sub_2529D032C(v31, v25 + v26, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
    v32 = sub_252CD941C();
    v33 = sub_252AD6F94(v32);

    v34 = type metadata accessor for HomeAutomationEntityResponse(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = sub_2529605C0(v33);

    if (v30[105] == 1)
    {
      sub_252A8C33C();
    }

    else
    {
      sub_252A8BEB8();
    }

    return v37;
  }

  return result;
}

uint64_t *sub_252A8BEB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v40 = *(v0 + 24);
  v11 = 64;
  if (v40)
  {
    v11 = 48;
  }

  v12 = 72;
  if (v40)
  {
    v12 = 56;
  }

  v13 = *(v0 + v12);
  v14 = *(v0 + v11);
  v15 = sub_252B680FC();
  v16 = *(v0 + 16);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  type metadata accessor for TemperatureConfirmationEntity();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = v18;
  *(v19 + 40) = v14;
  *(v19 + 48) = v13;
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  *(v19 + 72) = 0;
  *(v19 + 80) = 1;
  swift_beginAccess();

  MEMORY[0x2530AD700](v20);
  if (*((*(v15 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*(v15 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  v21 = type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_252D857C4();
  *(v24 + 16) = v14;
  *(v24 + 24) = v13;
  if (v18)
  {
    v25 = 1;
  }

  else
  {
    sub_252E37024();

    v25 = 0;
  }

  v26 = sub_252E36324();
  v27 = *(*(v26 - 8) + 56);
  v27(v10, v25, 1, v26);
  sub_2529439A0(v10, v8);
  v28 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252A909F4(v8, v24 + v28, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = v40;
  *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = *(v1 + 25);
  v29 = *(v1 + 56);
  v30 = v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
  *v30 = *(v1 + 48);
  *(v30 + 8) = v29;
  v31 = *(v1 + 72);
  v32 = v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
  *v32 = *(v1 + 64);
  *(v32 + 8) = v31;
  sub_252E37024();
  v27(v8, 0, 1, v26);
  v33 = v41;
  sub_2529439A0(v8, v41);
  v34 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252A909F4(v33, v24 + v34, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  v35 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  return sub_252D859B8(v24);
}

uint64_t *sub_252A8C33C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v39 = v38 - v7;
  MEMORY[0x28223BE20](v6);
  v41 = v38 - v8;
  v9 = sub_252B680FC();
  v10 = *(v0 + 16);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v15 = *(v1 + 96);
  v16 = *(v1 + 104);
  type metadata accessor for TemperatureConfirmationEntity();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  v38[1] = v11;
  v40 = v12;
  *(v17 + 32) = v12;
  *(v17 + 40) = 0;
  v18 = 1;
  *(v17 + 48) = 1;
  v43 = v13;
  *(v17 + 56) = v13;
  v42 = v14;
  *(v17 + 64) = v14;
  v45 = v15;
  *(v17 + 72) = v15;
  v19 = v16;
  *(v17 + 80) = v16;
  *(v17 + 81) = 1;
  swift_beginAccess();

  MEMORY[0x2530AD700](v20);
  if (*((*(v9 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38[0] = *((*(v9 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  v21 = type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_252D857C4();
  *(v24 + 16) = 0;
  *(v24 + 24) = 1;
  v25 = v41;
  if ((v40 & 1) == 0)
  {
    sub_252E37024();

    v18 = 0;
  }

  v26 = sub_252E36324();
  v27 = *(*(v26 - 8) + 56);
  v27(v25, v18, 1, v26);
  v28 = v39;
  sub_2529439A0(v25, v39);
  v29 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252A909F4(v28, v24 + v29, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = *(v1 + 26);
  *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = *(v1 + 27);
  v30 = v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
  *v30 = v43;
  *(v30 + 8) = v42;
  v31 = v24 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
  *v31 = v45;
  *(v31 + 8) = v19;
  sub_252E37024();
  v27(v28, 0, 1, v26);
  v32 = v44;
  sub_2529439A0(v28, v44);
  v33 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252A909F4(v32, v24 + v33, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  v34 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  return sub_252D859B8(v24);
}

uint64_t sub_252A8C7C8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_252A8C824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252A8C86C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_252A8C8BC()
{
  v1 = *(v0 + 8);
  if (!v1 || (v2 = [*(v0 + 8) entityType], v2 != 5) && (sub_252B680FC(), v3 = sub_252B63638(), , (v3 & 1) == 0) && v2 != 1)
  {
    v2 = sub_252A6D5D4(v1);
  }

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C58);
  sub_252E379F4();

  v5 = sub_252BEBD04(v2);
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000024, 0x8000000252E76310, 0xD000000000000093, 0x8000000252E76340);

  return v2;
}

uint64_t sub_252A8CA20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 deviceType];
  if (qword_27F53F2A0 != -1)
  {
    v12 = v4;
    swift_once();
    v4 = v12;
  }

  v5 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v6 = sub_252A488EC(v4), (v7 & 1) != 0))
  {
    v13 = *(v5[7] + v6);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v8 = 0;
  }

  else
  {
LABEL_7:
    v8 = 1;
  }

  v9 = sub_252E36324();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t sub_252A8CB2C(uint64_t a1)
{
  *(v2 + 2448) = a1;
  v3 = sub_252E36324();
  *(v2 + 2456) = v3;
  v4 = *(v3 - 8);
  *(v2 + 2464) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 2472) = swift_task_alloc();
  v6 = sub_252E36AB4();
  *(v2 + 2480) = v6;
  v7 = *(v6 - 8);
  *(v2 + 2488) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 2496) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970) - 8) + 64) + 15;
  *(v2 + 2504) = swift_task_alloc();
  *(v2 + 2512) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90) - 8) + 64) + 15;
  *(v2 + 2520) = swift_task_alloc();
  v11 = type metadata accessor for IconConfiguration();
  *(v2 + 2528) = v11;
  v12 = *(v11 - 8);
  *(v2 + 2536) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 2544) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v2 + 2552) = swift_task_alloc();
  *(v2 + 2560) = swift_task_alloc();
  *(v2 + 2568) = swift_task_alloc();
  *(v2 + 2576) = swift_task_alloc();
  *(v2 + 2584) = swift_task_alloc();
  *(v2 + 2592) = swift_task_alloc();
  *(v2 + 2600) = swift_task_alloc();
  *(v2 + 2608) = swift_task_alloc();
  *(v2 + 2616) = swift_task_alloc();
  *(v2 + 2624) = *v1;
  *(v2 + 2640) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_252A8CDC8, 0, 0);
}

uint64_t sub_252A8CDC8()
{
  v103 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2624);
  v2 = sub_252E36AD4();
  *(v0 + 2648) = v2;
  *(v0 + 2656) = __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD000000000000024, 0x8000000252E76450, 0xD000000000000093, 0x8000000252E76340);
  v3 = v1;
  v4 = sub_252B680FC();
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 504 * v6 - 472);
    memcpy((v0 + 1024), v7, 0x1F8uLL);
    memmove((v0 + 520), v7, 0x1F8uLL);
    GEOLocationCoordinate2DMake(v0 + 520);
    sub_2529353AC(v0 + 1024, v0 + 1528);

    memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v0 + 16);
  }

  v8 = *(v0 + 2640);
  v9 = *(v0 + 2632);
  v10 = *(v0 + 2624);
  v11 = *(v0 + 2616);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v101 = sub_252953488(v10, __dst, 0);
  *(v0 + 2664) = v101;

  *&__dst[0] = v10;
  *(&__dst[0] + 1) = v9;
  *&__dst[1] = v8;
  v12 = sub_252A88D8C();
  *&__dst[0] = v10;
  *(&__dst[0] + 1) = v9;
  *&__dst[1] = v8;
  sub_252A8CA20(v11);
  v13 = *(sub_252B680FC() + 77);

  v99 = v12;
  if (v13 == 1 && !*(v12 + 2))
  {
    v84 = *(v0 + 2608);
    v85 = *(v0 + 2464);
    v86 = *(v0 + 2456);
    sub_252938414(*(v0 + 2616), v84, &qword_27F540298, &unk_252E3C270);
    v87 = (*(v85 + 48))(v84, 1, v86);
    v88 = *(v0 + 2624);
    v89 = *(v0 + 2608);
    if (v87 != 1)
    {

      sub_25293847C(v89, &qword_27F540298, &unk_252E3C270);
      goto LABEL_9;
    }

    sub_25293847C(*(v0 + 2608), &qword_27F540298, &unk_252E3C270);
    type metadata accessor for ServiceCollectionDecorator();
    swift_allocObject();
    v90 = *(sub_252B7DA9C(v88) + 16);

    if (v90 >> 62)
    {
      result = sub_252E378C4();
      v91 = result;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v91)
      {
LABEL_33:
        if ((v90 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](0, v90);
        }

        else
        {
          if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v92 = *(v90 + 32);
        }

        v93 = sub_252CD941C();

        goto LABEL_40;
      }
    }

    v93 = 0;
LABEL_40:
    v94 = v91 == 0;
    v95 = *(v0 + 2616);
    v96 = *(v0 + 2600);
    static SemanticMapper.getSemanticKey(for:)(v93, v94, v96);
    sub_252A909F4(v96, v95, &qword_27F540298, &unk_252E3C270);
    goto LABEL_9;
  }

LABEL_9:
  v14 = *(v0 + 2640);
  v15 = *(v0 + 2632);
  v16 = *(v0 + 2624);
  v17 = *(v0 + 2592);
  v18 = *(v0 + 2584);
  v19 = *(v0 + 2464);
  v20 = *(v0 + 2456);
  v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  *(v0 + 2672) = *(v21 + 23);

  *(v0 + 2216) = v16;
  *(v0 + 2224) = v15;
  *(v0 + 2232) = v14;
  sub_252A88574(v17);
  *&__dst[0] = v16;
  *(&__dst[0] + 1) = v15;
  *&__dst[1] = v14;
  sub_252A88744(v18);
  v22 = *(v19 + 48);
  v23 = v22(v18, 1, v20);
  v24 = *(v0 + 2584);
  if (v23 == 1)
  {
    sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    v25 = 0;
  }

  else
  {
    v26 = *(v0 + 2576);
    v27 = *(v0 + 2464);
    v28 = *(v0 + 2456);
    (*(v27 + 16))(v26, v24, v28);
    v29 = *(v27 + 56);
    v29(v26, 0, 1, v28);
    v30 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    v34 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v29(v33 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v28);
    swift_beginAccess();
    sub_2529D032C(v26, v33 + v34, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v26, &qword_27F540298, &unk_252E3C270);
    v35 = type metadata accessor for HomeAutomationHomeLocation(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    sub_252938414(v33 + v34, v25 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
    swift_setDeallocating();
    sub_25293847C(v33 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    v38 = *(*v33 + 48);
    v39 = *(*v33 + 52);
    swift_deallocClassInstance();
    (*(v27 + 8))(v24, v28);
  }

  *(v0 + 2680) = v25;
  v40 = *(v0 + 2640);
  v41 = *(v0 + 2568);
  v42 = *(v0 + 2456);
  __dst[0] = *(v0 + 2624);
  *&__dst[1] = v40;
  sub_252A88B84(v41);
  if (v22(v41, 1, v42) == 1)
  {
    sub_25293847C(*(v0 + 2568), &qword_27F540298, &unk_252E3C270);
    v43 = 0;
  }

  else
  {
    v44 = *(v0 + 2576);
    v97 = *(v0 + 2568);
    v98 = v22;
    v45 = *(v0 + 2464);
    v46 = *(v0 + 2456);
    (*(v45 + 16))(v44);
    v47 = *(v45 + 56);
    v47(v44, 0, 1, v46);
    v48 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    v52 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v47(v51 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v46);
    swift_beginAccess();
    sub_2529D032C(v44, v51 + v52, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
    v53 = type metadata accessor for HomeAutomationHomeLocation(0);
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    sub_252938414(v51 + v52, v43 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
    swift_setDeallocating();
    sub_25293847C(v51 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    v56 = *(*v51 + 48);
    v57 = *(*v51 + 52);
    swift_deallocClassInstance();
    (*(v45 + 8))(v97, v46);
    v22 = v98;
  }

  *(v0 + 2688) = v43;
  v58 = *(v0 + 2592);
  v59 = *(v0 + 2560);
  v60 = *(v0 + 2456);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v61 = swift_allocObject();
  *(v0 + 2696) = v61;
  *(v61 + 16) = xmmword_252E3F1F0;
  *(v61 + 32) = 0xD000000000000013;
  *(v61 + 40) = 0x8000000252E76480;
  sub_252938414(v58, v59, &qword_27F540298, &unk_252E3C270);
  v62 = v22(v59, 1, v60);
  v63 = *(v0 + 2560);
  if (v62 == 1)
  {
    sub_25293847C(*(v0 + 2560), &qword_27F540298, &unk_252E3C270);
    *(v61 + 48) = 0u;
    *(v61 + 64) = 0u;
  }

  else
  {
    v64 = *(v0 + 2464);
    v65 = *(v0 + 2456);
    *(v61 + 72) = v65;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v61 + 48));
    (*(v64 + 32))(boxed_opaque_existential_0, v63, v65);
  }

  strcpy((v61 + 80), "candidateName");
  *(v61 + 94) = -4864;
  if (v25)
  {
    v67 = type metadata accessor for HomeAutomationHomeLocation(0);
    v68 = v25;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    *(v61 + 104) = 0;
    *(v61 + 112) = 0;
  }

  *(v61 + 96) = v68;
  *(v61 + 120) = v67;
  *(v61 + 128) = 0x656D614E656D6F68;
  *(v61 + 136) = 0xE800000000000000;
  if (v43)
  {
    v69 = type metadata accessor for HomeAutomationHomeLocation(0);
    v70 = v43;
  }

  else
  {
    v70 = 0;
    v69 = 0;
    *(v61 + 152) = 0;
    *(v61 + 160) = 0;
  }

  v71 = *(v0 + 2616);
  v72 = *(v0 + 2552);
  v73 = *(v0 + 2456);
  *(v61 + 144) = v70;
  *(v61 + 168) = v69;
  *(v61 + 176) = 0xD000000000000011;
  *(v61 + 184) = 0x8000000252E764A0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v61 + 192) = v99;
  *(v61 + 216) = v74;
  *(v61 + 224) = 0xD000000000000010;
  *(v61 + 232) = 0x8000000252E764C0;
  sub_252938414(v71, v72, &qword_27F540298, &unk_252E3C270);
  v75 = v22(v72, 1, v73);
  v76 = *(v0 + 2552);
  if (v75 == 1)
  {

    sub_25293847C(v76, &qword_27F540298, &unk_252E3C270);
    *(v61 + 240) = 0u;
    *(v61 + 256) = 0u;
  }

  else
  {
    v77 = *(v0 + 2464);
    v78 = *(v0 + 2456);
    *(v61 + 264) = v78;
    v79 = __swift_allocate_boxed_opaque_existential_0((v61 + 240));
    (*(v77 + 32))(v79, v76, v78);
  }

  strcpy((v61 + 272), "intentContext");
  *(v61 + 286) = -4864;
  *(v61 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v61 + 288) = v101;
  v80 = *(MEMORY[0x277D55C68] + 4);
  v100 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v81 = swift_task_alloc();
  *(v0 + 2704) = v81;
  v82 = sub_252A909A0();
  *v81 = v0;
  v81[1] = sub_252A8D940;

  return v100(0xD000000000000021, 0x8000000252E764E0, v61, &type metadata for HomeAutomationCATsSimple.ConfirmationLabelsDialogIds, v82);
}

uint64_t sub_252A8D940(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2704);
  v13 = *v2;
  v3[339] = a1;
  v3[340] = v1;

  v5 = v3[337];
  if (v1)
  {

    v6 = sub_252A8E49C;
  }

  else
  {
    v7 = v3[336];
    v8 = v3[335];
    v9 = v3[334];
    v10 = v3[333];
    v11 = v3[324];

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    v6 = sub_252A8DAC4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A8DAC4()
{
  v71 = v0;
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2656);
  v3 = *(v0 + 2640);
  v64 = *(v0 + 2624);
  v67 = *(v0 + 2632);
  *(v0 + 2849) = 0;
  v4 = sub_252E36374();
  v6 = v5;
  *(v0 + 2728) = v4;
  *(v0 + 2736) = v5;
  *(v0 + 2846) = 1;
  *(v0 + 2744) = sub_252E36374();
  *(v0 + 2752) = v7;
  sub_252E379F4();

  MEMORY[0x2530AD570](v4, v6);

  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E76510, 0xD000000000000093, 0x8000000252E76340);

  v70[0] = v64;
  v70[1] = v67;
  v70[2] = v3;
  sub_252B6E8E4(v70, v0 + 2032);
  v8 = *(v0 + 2040);
  if (v8)
  {
    v9 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v9 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v58 = *(v0 + 2032);
      v59 = *(v0 + 2072);
      v57 = *(v0 + 2080);
      v10 = *(v0 + 2544);
      v68 = *(v0 + 2536);
      v11 = *(v0 + 2528);
      v12 = *(v0 + 2520);
      v56 = v12;
      v65 = *(v0 + 2512);
      v49 = type metadata accessor for DirectInvocationConfig();
      v50 = *(*(v49 - 8) + 56);
      v50(v12, 1, 1, v49);
      v54 = v11[5];
      *(v0 + 2320) = 0;
      *(v0 + 2328) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      sub_252E330C4();
      v52 = v11[6];
      *(v0 + 2841) = 0;
      sub_252E330C4();
      v61 = v11[9];
      *(v0 + 2840) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
      sub_252E330C4();
      v13 = v11[10];
      *(v0 + 2256) = 0;
      *(v0 + 2264) = 0;
      sub_252E330C4();
      v55 = v11[11];
      *(v0 + 2432) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
      sub_252E330C4();
      v51 = v11[12];
      *(v0 + 2272) = 0;
      *(v0 + 2280) = 0;
      sub_252E330C4();
      v53 = v11[13];
      *(v0 + 2288) = 0;
      *(v0 + 2296) = 0;
      sub_252E330C4();
      v14 = v11[14];
      v50(v10 + v14, 1, 1, v49);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
      v16 = *(*(v15 - 8) + 8);
      v16(v10 + v13, v15);
      *(v0 + 2416) = 0;
      *(v0 + 2424) = 0;
      sub_252E330C4();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
      (*(*(v17 - 8) + 8))(v10 + v52, v17);
      *(v0 + 2842) = 0;
      sub_252E330C4();
      sub_2529D032C(v56, v10 + v14, &qword_27F540068, &qword_252E3BC90);
      *(v0 + 2304) = v58;
      *(v0 + 2312) = v8;
      sub_252E330C4();
      v16(v10 + v54, v15);
      *(v0 + 2240) = v59;
      *(v0 + 2248) = v57;
      sub_252E330C4();
      v16(v10 + v51, v15);
      *(v0 + 2336) = 0;
      *(v0 + 2344) = 0;
      sub_252E330C4();
      v16(v10 + v53, v15);
      *(v0 + 2352) = 0;
      *(v0 + 2360) = 0;
      sub_252E330C4();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
      (*(*(v18 - 8) + 8))(v10 + v55, v18);
      *(v0 + 2440) = 0;
      sub_252E330C4();
      v19 = v11[7];
      *(v0 + 2843) = 2;
      sub_252E330C4();
      v20 = v11[8];
      *(v0 + 2844) = 2;
      sub_252E330C4();
      *(v0 + 2845) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
      sub_252E330F4();
      sub_25293847C(v0 + 2032, &qword_27F541B80, &unk_252E4E7B0);
      sub_25293847C(v56, &qword_27F540068, &qword_252E3BC90);
      sub_25292F398(v10, v65);
      v21 = *(v68 + 56);
      *(v0 + 2760) = v21;
      *(v0 + 2768) = (v68 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v21(v65, 0, 1, v11);
      if (qword_27F53F648 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 2496);
      v23 = qword_27F544FD0;
      *(v0 + 2776) = qword_27F544FD0;
      v24 = v23;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 2648), qword_27F544EB0);
      v25 = sub_252E36AC4();
      v26 = sub_252E374C4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_252917000, v25, v26, "Building confirmation snippet model", v27, 2u);
        MEMORY[0x2530AED00](v27, -1, -1);
      }

      *(v0 + 2784) = sub_252D15950(0);
      *(v0 + 2792) = sub_252D15950(1);
      v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      swift_beginAccess();
      *(v0 + 2800) = *(v28 + 23);

      sub_252B680FC();
      v29 = sub_252B631FC();
      *(v0 + 2808) = v29;

      v30 = swift_task_alloc();
      *(v0 + 2816) = v30;
      *v30 = v0;
      v30[1] = sub_252A8E644;

      return sub_252D260EC(v29);
    }

    v34 = *(v0 + 2712);
    v35 = *(v0 + 2664);
    sub_25293847C(*(v0 + 2616), &qword_27F540298, &unk_252E3C270);

    sub_25293847C(v0 + 2032, &qword_27F541B80, &unk_252E4E7B0);
  }

  else
  {
    v32 = *(v0 + 2712);
    v33 = *(v0 + 2664);
    sub_25293847C(*(v0 + 2616), &qword_27F540298, &unk_252E3C270);
  }

  v36 = *(v0 + 2448);
  v37 = type metadata accessor for ConfirmationSnippetModel();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = *(v0 + 2616);
  v39 = *(v0 + 2608);
  v40 = *(v0 + 2600);
  v41 = *(v0 + 2592);
  v42 = *(v0 + 2584);
  v43 = *(v0 + 2576);
  v44 = *(v0 + 2568);
  v45 = *(v0 + 2560);
  v46 = *(v0 + 2552);
  v47 = *(v0 + 2544);
  v60 = *(v0 + 2520);
  v62 = *(v0 + 2512);
  v63 = *(v0 + 2504);
  v66 = *(v0 + 2496);
  v69 = *(v0 + 2472);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_252A8E49C()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[334];
  v4 = v0[333];
  v5 = v0[327];
  v6 = v0[324];

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  v7 = v0[327];
  v8 = v0[326];
  v9 = v0[325];
  v10 = v0[324];
  v11 = v0[323];
  v12 = v0[322];
  v13 = v0[321];
  v14 = v0[320];
  v15 = v0[319];
  v16 = v0[318];
  v19 = v0[315];
  v20 = v0[314];
  v21 = v0[313];
  v22 = v0[312];
  v23 = v0[309];
  v24 = v0[340];

  v17 = v0[1];

  return v17();
}

uint64_t sub_252A8E644(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2816);
  v6 = *v2;
  v4[353] = v1;

  v7 = v4[351];
  if (v1)
  {

    v8 = sub_252A8ECCC;
  }

  else
  {
    v4[354] = a1;

    v8 = sub_252A8E78C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252A8E78C()
{
  v1 = *(v0 + 2832);
  v47 = *(v0 + 2800);
  v41 = *(v0 + 2784);
  v42 = *(v0 + 2792);
  v51 = *(v0 + 2776);
  v39 = *(v0 + 2760);
  v40 = *(v0 + 2768);
  v43 = *(v0 + 2744);
  v44 = *(v0 + 2752);
  v60 = *(v0 + 2736);
  v38 = *(v0 + 2728);
  v52 = *(v0 + 2712);
  v54 = *(v0 + 2664);
  v46 = *(v0 + 2656);
  v56 = *(v0 + 2544);
  v58 = *(v0 + 2616);
  v2 = *(v0 + 2512);
  v45 = v2;
  v3 = *(v0 + 2504);
  v37 = *(v0 + 2528);
  v48 = *(v0 + 2496);
  v49 = *(v0 + 2488);
  v50 = *(v0 + 2480);
  v4 = *(v0 + 2472);
  v5 = *(v0 + 2464);
  v6 = *(v0 + 2456);
  v7 = *(v0 + 2448);
  *(v0 + 2847) = 0;
  sub_252E36374();
  sub_252E37024();

  v8 = sub_252E36304();
  v35 = v9;
  v36 = v8;
  v10 = *(v5 + 8);
  v10(v4, v6);
  *(v0 + 2848) = 1;
  sub_252E36374();
  sub_252E37024();

  v11 = sub_252E36304();
  v13 = v12;
  v10(v4, v6);
  sub_252938414(v2, v3, &qword_27F541B50, &unk_252E47970);
  v14 = type metadata accessor for ConfirmationSnippetModel();
  v15 = v14[11];
  v39(&v7[v15], 1, 1, v37);
  *v7 = v38;
  *(v7 + 1) = v60;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v16 = v14[7];
  *(v0 + 2368) = v36;
  *(v0 + 2376) = v35;

  v17 = v41;
  v18 = v42;
  sub_252E330C4();
  v19 = v14[8];
  *(v0 + 2384) = v11;
  *(v0 + 2392) = v13;
  sub_252E330C4();
  v20 = v14[9];
  sub_252A75B60();
  v21 = v17;
  sub_252E33054();
  v22 = &v7[v14[10]];
  sub_252E33054();

  v7[v14[12]] = 0;
  sub_252A909F4(v3, &v7[v15], &qword_27F541B50, &unk_252E47970);
  *(v7 + 4) = v43;
  *(v7 + 5) = v44;

  sub_252E379F4();
  *(v0 + 2400) = 0;
  *(v0 + 2408) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E76410);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 2400), *(v0 + 2408), 0xD000000000000072, 0x8000000252E72680);

  sub_252E375C4();
  sub_252E36A74();
  (*(v49 + 8))(v48, v50);
  sub_25293847C(v45, &qword_27F541B50, &unk_252E47970);

  sub_25292F3FC(v56);
  sub_25293847C(v58, &qword_27F540298, &unk_252E3C270);
  (*(*(v14 - 1) + 56))(v7, 0, 1, v14);
  v23 = *(v0 + 2616);
  v24 = *(v0 + 2608);
  v25 = *(v0 + 2600);
  v26 = *(v0 + 2592);
  v27 = *(v0 + 2584);
  v28 = *(v0 + 2576);
  v29 = *(v0 + 2568);
  v30 = *(v0 + 2560);
  v31 = *(v0 + 2552);
  v32 = *(v0 + 2544);
  v53 = *(v0 + 2520);
  v55 = *(v0 + 2512);
  v57 = *(v0 + 2504);
  v59 = *(v0 + 2496);
  v61 = *(v0 + 2472);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_252A8ECCC()
{
  v1 = v0[350];
  v2 = v0[349];
  v3 = v0[348];
  v4 = v0[347];
  v5 = v0[344];
  v6 = v0[342];
  v25 = v0[339];
  v27 = v0[333];
  v29 = v0[318];
  v31 = v0[327];
  v7 = v0[314];
  v8 = v0[312];
  v9 = v0[311];
  v10 = v0[310];

  sub_252E375C4();
  sub_252E36A74();
  (*(v9 + 8))(v8, v10);
  sub_25293847C(v7, &qword_27F541B50, &unk_252E47970);

  sub_25292F3FC(v29);
  sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
  v11 = v0[327];
  v12 = v0[326];
  v13 = v0[325];
  v14 = v0[324];
  v15 = v0[323];
  v16 = v0[322];
  v17 = v0[321];
  v18 = v0[320];
  v19 = v0[319];
  v20 = v0[318];
  v23 = v0[315];
  v24 = v0[314];
  v26 = v0[313];
  v28 = v0[312];
  v30 = v0[309];
  v32 = v0[353];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252A8EF10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252A8EF30, 0, 0);
}

uint64_t sub_252A8EF30()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC7784(0xD000000000000028, 0x8000000252E763E0, 0, 0xD000000000000093, 0x8000000252E76340);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_252A8F044;
  v3 = *(v0 + 24);

  return sub_252A866EC();
}

uint64_t sub_252A8F044(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252A8F178, 0, 0);
  }
}

uint64_t sub_252A8F178()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = v2[9];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_252A8F294;
  v7 = v0[2];
  v8 = v0[3];

  return sub_252A1E544(v7, &unk_252E46510, v4, &unk_252E46520, v8, v5, 0, v3);
}

uint64_t sub_252A8F294()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_252A8F414;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_252A8F3B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A8F3B0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A8F414()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A8F480(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_252E36324();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542768, &qword_252E46530) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for ConfirmationSnippetModel();
  v2[28] = v11;
  v12 = *(v11 - 8);
  v2[29] = v12;
  v13 = *(v12 + 64) + 15;
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A8F674, 0, 0);
}

uint64_t sub_252A8F674()
{
  v1 = v0[18];
  sub_252A8741C(v0 + 2);
  v2 = v0[2];
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v0[8] = v2;
    v0[9] = v4;
    v0[10] = v3;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_252A8F9C4;
    v6 = v0[27];

    return sub_252A8CB2C(v6);
  }

  else
  {
    (*(v0[29] + 56))(v0[27], 1, 1, v0[28]);
    v8 = v0[26];
    sub_25293847C(v0[27], &qword_27F542768, &qword_252E46530);
    v9 = type metadata accessor for IconConfiguration();
    v0[33] = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v0[34] = v11;
    v0[35] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v8, 1, 1, v9);
    if (qword_27F53F648 != -1)
    {
      swift_once();
    }

    v12 = v0[24];
    v13 = qword_27F544FD0;
    v0[36] = qword_27F544FD0;
    v14 = v13;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    v0[37] = v15;
    __swift_project_value_buffer(v15, qword_27F544EB0);
    v16 = sub_252E36AC4();
    v17 = sub_252E374C4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_252917000, v16, v17, "Building confirmation snippet model", v18, 2u);
      MEMORY[0x2530AED00](v18, -1, -1);
    }

    v0[38] = sub_252D15950(0);
    v0[39] = sub_252D15950(1);
    v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    swift_beginAccess();
    v0[40] = *(v19 + 23);

    sub_252B680FC();
    v20 = sub_252B631FC();
    v0[41] = v20;

    v21 = swift_task_alloc();
    v0[42] = v21;
    *v21 = v0;
    v21[1] = sub_252A8FFB0;

    return sub_252D260EC(v20);
  }
}

uint64_t sub_252A8F9C4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(v2 + 256) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 80);

  if (v0)
  {
    v7 = sub_252A906AC;
  }

  else
  {
    v7 = sub_252A8FB1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252A8FB1C()
{
  v1 = v0[27];
  if ((*(v0[29] + 48))(v1, 1, v0[28]) == 1)
  {
    v2 = v0[26];
    sub_25293847C(v1, &qword_27F542768, &qword_252E46530);
    v3 = type metadata accessor for IconConfiguration();
    v0[33] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[34] = v5;
    v0[35] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    if (qword_27F53F648 != -1)
    {
      swift_once();
    }

    v6 = v0[24];
    v7 = qword_27F544FD0;
    v0[36] = qword_27F544FD0;
    v8 = v7;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    v0[37] = v9;
    __swift_project_value_buffer(v9, qword_27F544EB0);
    v10 = sub_252E36AC4();
    v11 = sub_252E374C4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_252917000, v10, v11, "Building confirmation snippet model", v12, 2u);
      MEMORY[0x2530AED00](v12, -1, -1);
    }

    v0[38] = sub_252D15950(0);
    v0[39] = sub_252D15950(1);
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    swift_beginAccess();
    v0[40] = *(v13 + 23);

    sub_252B680FC();
    v14 = sub_252B631FC();
    v0[41] = v14;

    v15 = swift_task_alloc();
    v0[42] = v15;
    *v15 = v0;
    v15[1] = sub_252A8FFB0;

    return sub_252D260EC(v14);
  }

  else
  {
    sub_252A9093C(v1, v0[30]);
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v17 = v0[30];
    v18 = v0[17];
    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544C58);
    sub_252E379F4();

    v20 = ConfirmationSnippetModel.description.getter();
    MEMORY[0x2530AD570](v20);

    sub_252CC7784(0xD00000000000001FLL, 0x8000000252E76430, 0, 0xD000000000000093, 0x8000000252E76340);

    sub_252A9093C(v17, v18);
    v21 = type metadata accessor for HomeAutomationSnippetModels();
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    v22 = v0[30];
    v23 = v0[26];
    v24 = v0[27];
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[21];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_252A8FFB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 328);
  v8 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v6 = sub_252A9055C;
  }

  else
  {
    v6 = sub_252A900E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A900E4()
{
  v1 = *(v0 + 344);
  v47 = *(v0 + 304);
  v49 = *(v0 + 312);
  v43 = *(v0 + 272);
  v45 = *(v0 + 280);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v39 = *(v0 + 208);
  v40 = v3;
  v41 = *(v0 + 264);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  *(v0 + 360) = 0;
  sub_252E36374();
  sub_252E37024();

  v8 = sub_252E36304();
  v37 = v9;
  v38 = v8;
  v10 = *(v5 + 8);
  v10(v4, v6);
  *(v0 + 361) = 1;
  sub_252E36374();
  sub_252E37024();

  v11 = sub_252E36304();
  v36 = v12;
  v10(v4, v6);
  sub_252938414(v39, v3, &qword_27F541B50, &unk_252E47970);
  v13 = v2[11];
  v43(&v7[v13], 1, 1, v41);
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v14 = v2[7];
  *(v0 + 88) = v38;
  *(v0 + 96) = v37;
  v15 = v47;
  v16 = v49;
  sub_252E330C4();
  v17 = v2[8];
  *(v0 + 104) = v11;
  *(v0 + 112) = v36;
  sub_252E330C4();
  v18 = v2[9];
  sub_252A75B60();
  v19 = v15;
  sub_252E33054();
  v20 = &v7[v2[10]];
  sub_252E33054();

  v7[v2[12]] = 0;
  sub_252A909F4(v40, &v7[v13], &qword_27F541B50, &unk_252E47970);
  *(v7 + 4) = 0;
  *(v7 + 5) = 0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 312);
  v42 = *(v0 + 344);
  v44 = *(v0 + 320);
  v22 = *(v0 + 304);
  v23 = *(v0 + 224);
  v50 = *(v0 + 208);
  v25 = *(v0 + 184);
  v24 = *(v0 + 192);
  v46 = *(v0 + 288);
  v48 = *(v0 + 176);
  v26 = *(v0 + 136);
  __swift_project_value_buffer(*(v0 + 296), qword_27F544C58);
  sub_252E379F4();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E76410);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 120), *(v0 + 128), 0xD000000000000072, 0x8000000252E72680);

  sub_252E375C4();
  sub_252E36A74();
  (*(v25 + 8))(v24, v48);
  sub_25293847C(v50, &qword_27F541B50, &unk_252E47970);
  v27 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  v28 = *(v0 + 240);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 168);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_252A9055C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];

  sub_252E375C4();
  sub_252E36A74();
  (*(v7 + 8))(v6, v8);
  sub_25293847C(v5, &qword_27F541B50, &unk_252E47970);
  v9 = v0[44];
  v10 = v0[30];
  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252A906AC()
{
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t _s22HomeAutomationInternal23BaseConfirmationHandlerCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_252A8B32C(*(v0 + 56));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);
  sub_252A8B35C(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t sub_252A907DC(unint64_t result)
{
  v1 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v1 != 2)
    {
      return (result & 0x3FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v1)
    {
      result &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    return result;
  }

  return result;
}

uint64_t sub_252A9080C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252A908A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A8F480(a1, v1);
}

uint64_t sub_252A9093C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A909A0()
{
  result = qword_27F542770;
  if (!qword_27F542770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542770);
  }

  return result;
}

uint64_t sub_252A909F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *sub_252A90A5C(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 userTask];
  v7 = HomeStore.services(matching:supporting:)(v5, v6);
  v9 = v8;

  if (v9)
  {
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C58);
    sub_252E379F4();

    swift_getErrorValue();
    v11 = sub_252E37E54();
    MEMORY[0x2530AD570](v11);

    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E76720, 0xD000000000000093, 0x8000000252E76340, 0x7365636976726573, 0xEE00293A726F6628, 173);

    sub_252929F10(v7, 1);
    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_252A90C4C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = 0;
  *(v4 + 41) = 0;
  *(v4 + 56) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  v5 = a1;

  v6 = [v5 userTask];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 value];

    if (v8)
    {
      if ([v8 type] == 2)
      {
        sub_252A8B3F0();
      }

      else if ([v8 type] == 6)
      {
        sub_252A8B6A8();
      }
    }
  }

  return v4;
}

uint64_t sub_252A90D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = *(a2 + 43);
  *(v4 + 25) = *(a2 + 44);
  *(v4 + 26) = *(a2 + 41);
  *(v4 + 27) = *(a2 + 42);
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  v5 = *(a2 + 88);
  *(v4 + 48) = *(a2 + 80);
  *(v4 + 56) = v5;
  v6 = *(a2 + 104);
  *(v4 + 64) = *(a2 + 96);
  *(v4 + 72) = v6;
  v7 = *(a2 + 56);
  *(v4 + 80) = *(a2 + 48);
  *(v4 + 88) = v7;
  v8 = *(a2 + 72);
  *(v4 + 96) = *(a2 + 64);
  *(v4 + 104) = v8;
  *(v4 + 105) = *(a2 + 105);
  return v4;
}

uint64_t sub_252A90DBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25294B7BC;

  return sub_252A8A790();
}

unint64_t sub_252A90E4C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_252E378C4();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      ++v3;
      v5 = sub_252E36AD4();
      __swift_project_value_buffer(v5, qword_27F544C58);
      sub_252E379F4();

      v6 = HomeAutomationAbstractMeasurement.description.getter();
      MEMORY[0x2530AD570](v6);

      sub_252CC3D90(0xD000000000000016, 0x8000000252E767A0, 0xD000000000000093, 0x8000000252E76340);
    }

    while (v2 != v3);
  }

  return result;
}

id sub_252A90FE4(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

uint64_t sub_252A9103C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252A921B8(a1);
}

uint64_t sub_252A9126C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252A91340;

  return sub_252A921B8(v6);
}

uint64_t sub_252A91340()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  type metadata accessor for ShowHomeFiltersResolutionResult();
  v5 = sub_252E37254();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_252A914C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2529C9ED8;

  return sub_252A92608();
}

uint64_t sub_252A916EC(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_252A91798;

  return sub_252A92608();
}

uint64_t sub_252A91798(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_252A918C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9ED8;

  return sub_252A92910(a1);
}

id sub_252A9196C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (qword_27F53F580 != -1)
  {
    v24 = a1;
    swift_once();
    a1 = v24;
  }

  v9 = qword_27F544F08;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  v36 = 1;
  *&v40 = 0;
  BYTE8(v40) = 1;
  v41 = 0uLL;
  *&v42 = 0;
  *(&v42 + 1) = a1;
  *v43 = a2;
  memset(&v43[8], 0, 40);
  LOBYTE(v44) = 1;
  *(&v44 + 1) = 0;
  v45 = 0uLL;
  LOWORD(v46) = 513;
  *(&v46 + 1) = 0;
  v47 = 0uLL;
  v48 = 1;
  GEOLocationCoordinate2DMake(&v40);
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v29 = *&v43[16];
  v30 = *&v43[32];
  v31 = v44;
  v32 = v45;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  v28 = *v43;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v9, a4, "HandleIntent", 12, 2, &v25);
  v49[8] = v33;
  v49[9] = v34;
  v50 = v35;
  v49[4] = v29;
  v49[5] = v30;
  v49[6] = v31;
  v49[7] = v32;
  v49[0] = v25;
  v49[1] = v26;
  v49[2] = v27;
  v49[3] = v28;
  sub_25293847C(v49, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v10 = sub_252E36804();
  v12 = v11;

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v14 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v14, &unk_27F541F10, &unk_252E42870);
  }

  v15 = [objc_opt_self() sharedAnalytics];
  if (v15)
  {
    v16 = v15;

    sub_252CC1408(v17);

    v18 = sub_252E36E24();

    [v16 logEventWithType:6506 context:v18];
  }

  else
  {
  }

  v19 = sub_252DB7C84()[5];

  v20 = sub_252DB5924();

  result = sub_252C5C61C(a5);
  v22 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v20))
  {
    [result setCommandDuration_];
LABEL_12:
    sub_252DB7C84();
    sub_252DB7138(v22);

    sub_252DB7C84();
    sub_252DB649C(0, 0, 1);

    v23 = a3;

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_252A91EA4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252A91F78;

  return sub_252A92910(v6);
}

uint64_t sub_252A91F78(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

id ShowHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowHomeIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShowHomeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252A921D8()
{
  if (qword_27F53F488 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_27F544C40);
    sub_252CC3D90(0xD000000000000024, 0x8000000252E76A50, 0xD000000000000078, 0x8000000252E76950);
    v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v2 + 16), v0 + 16);

    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    if (sub_252E338D4())
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v4 + 16), v0 + 56);

      v5 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      if (sub_252E338B4())
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      }

      else
      {
        v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v6 + 16), v0 + 96);

        v7 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v8 = sub_252E33894();
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        if ((v8 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_24:
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1, qword_27F544C70);
          sub_252CC4050(0xD000000000000046, 0x8000000252E76A80, 0xD000000000000078, 0x8000000252E76950, 0xD000000000000014, 0x8000000252E76AD0, 39);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_252E3C130;
          type metadata accessor for ShowHomeFiltersResolutionResult();
          *(v20 + 32) = sub_252E20FF8(1);
          goto LABEL_33;
        }
      }

      v9 = sub_25297A2A8();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v10 = [*(v0 + 136) filters];
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v12 = v10;
      type metadata accessor for HomeFilter();
      v13 = sub_252E37264();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v23 = v11;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_13:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      type metadata accessor for ShowHomeFiltersResolutionResult();
      sub_252E2B004(v17);

      MEMORY[0x2530AD700]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v15;
      if (v18 == v14)
      {
        v20 = v23;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v14 = sub_252E378C4();
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_31:
  v20 = MEMORY[0x277D84F90];
LABEL_32:

LABEL_33:
  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_252A92624()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C70);
  sub_252CC3D90(0xD000000000000036, 0x8000000252E76A10, 0xD000000000000078, 0x8000000252E76950);
  v2 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v3 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 1;
  [v2 setUserActivity_];
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_252A92760(void *a1)
{
  type metadata accessor for ShowCameraViaHomeAppHandleDelegate();
  v2 = type metadata accessor for ShowCameraOnTVHandleDelegate();
  v3 = type metadata accessor for ShowEntityHandleDelegate();
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E769F0, 0xD000000000000078, 0x8000000252E76950);
  v5 = &off_2864B2B80;
  if (off_2864B2B90(a1))
  {
    return (v5[3])();
  }

  v5 = &off_2864BEF70;
  if (off_2864BEF80(a1, v2, &off_2864BEF70))
  {
    return (v5[3])();
  }

  v5 = &off_2864B8B58;
  if (off_2864B8B68(a1, v3, &off_2864B8B58))
  {
    return (v5[3])();
  }

  type metadata accessor for ShowHomeIntentDefaultHandleDelegate();
  return swift_allocObject();
}

uint64_t sub_252A92910(uint64_t a1)
{
  v1[26] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407D0, &qword_252E3DCD8) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v3 = sub_252E36AD4();
  v1[28] = v3;
  v4 = *(v3 - 8);
  v1[29] = v4;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();
  v6 = sub_252E32E04();
  v1[31] = v6;
  v7 = *(v6 - 8);
  v1[32] = v7;
  v8 = *(v7 + 64) + 15;
  v1[33] = swift_task_alloc();
  v9 = sub_252E36AB4();
  v1[34] = v9;
  v10 = *(v9 - 8);
  v1[35] = v10;
  v11 = *(v10 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A92ACC, 0, 0);
}

uint64_t sub_252A92ACC()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v7 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v3;
    *(inited + 56) = v5;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6505 context:v11];
  }

  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v14 = *(v0 + 248);
  v15 = sub_252DB7C84()[5];

  sub_252E32DF4();
  sub_252E32D44();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v18 < 9.22337204e18)
  {
    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    v21 = *(v0 + 272);
    v22 = *(v0 + 280);
    *(v15 + 16) = v18;

    (*(v22 + 16))(v20, v19, v21);
    if (qword_2814B09D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_11:
  v24 = *(v0 + 232);
  v23 = *(v0 + 240);
  v25 = *(v0 + 224);
  v26 = *(v0 + 208);
  v27 = __swift_project_value_buffer(v25, qword_2814B09D8);
  (*(v24 + 16))(v23, v27, v25);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E76920);
  v28 = [v26 filters];
  if (v28)
  {
    v29 = v28;
    type metadata accessor for HomeFilter();
    v30 = sub_252E37264();
  }

  else
  {
    v30 = 0;
  }

  v32 = *(v0 + 232);
  v31 = *(v0 + 240);
  v33 = *(v0 + 224);
  v34 = *(v0 + 208);
  *(v0 + 184) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v35 = sub_252E36F94();
  MEMORY[0x2530AD570](v35);

  MEMORY[0x2530AD570](0x617220656D69540ALL, 0xED00000A3A65676ELL);
  *(v0 + 192) = [v34 dateTimeRange];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
  v36 = sub_252E36F94();
  MEMORY[0x2530AD570](v36);

  sub_252CC4A5C(0, 0xE000000000000000, 1, 0xD000000000000078, 0x8000000252E76950);

  (*(v32 + 8))(v31, v33);
  v37 = [v34 filters];
  if (v37 && ((v38 = v37, type metadata accessor for HomeFilter(), v39 = sub_252E37264(), v38, v39 >> 62) ? (v40 = sub_252E378C4()) : (v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v40))
  {
    v41 = sub_252A92760(*(v0 + 208));
    v43 = v42;
    *(v0 + 304) = v41;
    *(v0 + 168) = swift_getObjectType();
    *(v0 + 176) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542780, &unk_252E46660);
    v44 = sub_252E36F94();
    v46 = v45;
    *(v0 + 312) = v44;
    *(v0 + 320) = v45;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    *(v0 + 328) = __swift_project_value_buffer(*(v0 + 224), qword_27F544C70);
    sub_252E379F4();

    MEMORY[0x2530AD570](v44, v46);
    sub_252CC4A5C(0xD000000000000011, 0x8000000252E73E80, 1, 0xD000000000000078, 0x8000000252E76950);

    ObjectType = swift_getObjectType();
    v48 = *(v43 + 8);
    v65 = (v48 + *v48);
    v49 = v48[1];
    v50 = swift_task_alloc();
    *(v0 + 336) = v50;
    *v50 = v0;
    v50[1] = sub_252A9335C;
    v51 = *(v0 + 208);

    return v65(v51, ObjectType, v43);
  }

  else
  {
    v53 = *(v0 + 288);
    v54 = *(v0 + 208);
    v55 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v56 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v55[v56] = 5;
    [v55 setUserActivity_];
    v57 = sub_252A9196C(0x4964696C61766E49, 0xED0000746E65746ELL, v55, v53, v54);

    v58 = *(v0 + 296);
    v59 = *(v0 + 272);
    v60 = *(v0 + 264);
    v61 = *(v0 + 240);
    v62 = *(v0 + 216);
    v63 = *(*(v0 + 280) + 8);
    v63(*(v0 + 288), v59);
    v63(v58, v59);

    v64 = *(v0 + 8);

    return v64(v57);
  }
}

uint64_t sub_252A9335C(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_252A9345C, 0, 0);
}

uint64_t sub_252A9345C()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v24 = v0[38];
  v22 = v0[39];
  v23 = v0[36];
  v4 = v0[26];
  v5 = v0[27];
  sub_252E379F4();

  v6 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v0[25] = *&v1[v6];
  v7 = sub_252E36F94();
  MEMORY[0x2530AD570](v7);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E769D0, 0xD000000000000078, 0x8000000252E76950);

  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5407F0, &qword_252E3DE18);
  v10 = v5 + *(v9 + 28);
  sub_252E32DF4();
  *v5 = v4;
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v11 = OBJC_IVAR____TtC22HomeAutomationInternal18ApplicationContext_showHomeIntentTimed;
  swift_beginAccess();
  v12 = v4;
  sub_252A93E1C(v5, &v8[v11]);
  swift_endAccess();

  v13 = sub_252A9196C(v22, v2, v1, v23, v12);

  swift_unknownObjectRelease();
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[30];
  v18 = v0[27];
  v19 = *(v0[35] + 8);
  v19(v0[36], v15);
  v19(v14, v15);

  v20 = v0[1];

  return v20(v13);
}

uint64_t dispatch thunk of ShowHomeIntentHandler.resolveFilters(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25296BC70;

  return v8(a1);
}

uint64_t dispatch thunk of ShowHomeIntentHandler.confirm(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2529C9ED8;

  return v8(a1);
}

uint64_t dispatch thunk of ShowHomeIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2529C9ED8;

  return v8(a1);
}

uint64_t sub_252A93AAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252A91EA4(v2, v3, v4);
}

uint64_t sub_252A93B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25294B954;

  return sub_252CD44B8(a1, v4, v5, v7);
}

uint64_t sub_252A93C2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252A916EC(v2, v3);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252A93D28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25293B808;

  return sub_252A9126C(v2, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252A93E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407D0, &qword_252E3DCD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A93EB8()
{
  type metadata accessor for TelevisionHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252A93EE8(void *a1)
{
  result = [a1 entityResponses];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_77;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v60 = MEMORY[0x277D84F90];
      v6 = v3 & 0xC000000000000001;
      v52 = v3;
      v53 = i;
      v56 = v3 + 32;
      v57 = v3 & 0xFFFFFFFFFFFFFF8;
      v3 = &off_279711000;
      v55 = v6;
      do
      {
        if (v6)
        {
          v7 = MEMORY[0x2530ADF00](v5, v52);
        }

        else
        {
          if (v5 >= *(v57 + 16))
          {
            goto LABEL_72;
          }

          v7 = *(v56 + 8 * v5);
        }

        v8 = v7;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v10 = [v7 *(v3 + 1768)];
        if (!v10)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v23 = sub_252E36AD4();
          __swift_project_value_buffer(v23, qword_27F544D60);
          sub_252E379F4();

          v24 = [v8 description];
          v25 = sub_252E36F34();
          v27 = v26;

          MEMORY[0x2530AD570](v25, v27);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

LABEL_26:
          v16 = MEMORY[0x277D84F90];
          v28 = *(MEMORY[0x277D84F90] + 16);
          if (!v28)
          {
            goto LABEL_5;
          }

          goto LABEL_30;
        }

        v11 = v10;
        v12 = [v10 deviceTypes];
        if (!v12)
        {

          goto LABEL_26;
        }

        v13 = v12;
        v14 = sub_252E37264();

        v15 = *(v14 + 16);
        if (v15)
        {
          v59 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v15, 0);
          v16 = v59;
          v17 = 32;
          do
          {
            v18 = sub_252E25FC4(*(v14 + v17));
            if (v19)
            {
              v20 = 0;
            }

            else
            {
              v20 = v18;
            }

            v22 = *(v59 + 16);
            v21 = *(v59 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_2529AA420((v21 > 1), v22 + 1, 1);
            }

            *(v59 + 16) = v22 + 1;
            *(v59 + 8 * v22 + 32) = v20;
            v17 += 8;
            --v15;
          }

          while (v15);

          v3 = 0x279711000;
          i = v53;
        }

        else
        {

          v16 = MEMORY[0x277D84F90];
        }

        v6 = v55;
        v28 = *(v16 + 16);
        if (!v28)
        {
LABEL_5:

          continue;
        }

LABEL_30:
        v29 = 32;
        while (v28)
        {
          v30 = *(v16 + v29);
          v29 += 8;
          --v28;
          if (v30 == 41)
          {

            sub_252E37A94();
            v31 = *(v60 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_6;
          }
        }

LABEL_6:
        ;
      }

      while (v5 != i);

      v32 = v60;
      if (v60 < 0 || (v60 & 0x4000000000000000) != 0)
      {
        v54 = sub_252E378C4();
        if (v54)
        {
          goto LABEL_39;
        }

        goto LABEL_69;
      }

      v54 = *(v60 + 16);
      if (!v54)
      {
        goto LABEL_69;
      }

LABEL_39:
      v33 = 0;
LABEL_41:
      if ((v60 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2530ADF00](v33, v32);
LABEL_44:
        v35 = v34;
        v9 = __OFADD__(v33++, 1);
        if (!v9)
        {
          v36 = [v34 taskResponses];
          if (v36)
          {
            v37 = v36;
            type metadata accessor for HomeUserTaskResponse();
            v38 = sub_252E37264();

            v39 = [v35 *(v3 + 1768)];
            if (v39)
            {

              if (v38 >> 62)
              {
                v40 = sub_252E378C4();
                if (v40)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v40)
                {
LABEL_49:
                  v58 = v35;
                  v41 = 0;
                  v3 = v38 & 0xC000000000000001;
                  while (1)
                  {
                    if (v3)
                    {
                      v42 = MEMORY[0x2530ADF00](v41, v38);
                    }

                    else
                    {
                      if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_74;
                      }

                      v42 = *(v38 + 32 + 8 * v41);
                    }

                    v43 = v42;
                    v9 = __OFADD__(v41++, 1);
                    if (v9)
                    {
                      goto LABEL_73;
                    }

                    if (qword_27F53F728 != -1)
                    {
                      swift_once();
                    }

                    v44 = qword_27F575C38;
                    v45 = [v43 taskOutcome];
                    if (*(v44 + 16))
                    {
                      v46 = v45;
                      v47 = *(v44 + 40);
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v46);
                      v48 = sub_252E37F14();
                      v49 = -1 << *(v44 + 32);
                      v50 = v48 & ~v49;
                      if ((*(v44 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
                      {
                        v51 = ~v49;
                        while (*(*(v44 + 48) + 8 * v50) != v46)
                        {
                          v50 = (v50 + 1) & v51;
                          if (((*(v44 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
                          {
                            goto LABEL_50;
                          }
                        }

                        v32 = v60;
                        v3 = &off_279711000;
                        if (v33 == v54)
                        {

                          return 1;
                        }

                        goto LABEL_41;
                      }
                    }

LABEL_50:

                    if (v41 == v40)
                    {

                      return 0;
                    }
                  }
                }
              }
            }
          }

          else
          {
          }

LABEL_69:

          return 0;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v33 < *(v32 + 16))
      {
        v34 = *(v60 + 32 + 8 * v33);
        goto LABEL_44;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      ;
    }

    return 0;
  }

  return result;
}

uint64_t sub_252A94570(void *a1)
{
  result = [a1 entityResponses];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v49 = v3;
    if (v3 >> 62)
    {
      goto LABEL_64;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        v6 = v49 & 0xC000000000000001;
        v7 = v49 & 0xFFFFFFFFFFFFFF8;
        v48 = v4;
        while (1)
        {
          if (v6)
          {
            v8 = MEMORY[0x2530ADF00](v5, v49);
          }

          else
          {
            if (v5 >= *(v7 + 16))
            {
              goto LABEL_61;
            }

            v8 = *(v49 + 32 + 8 * v5);
          }

          v9 = v8;
          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v11 = [v8 entity];
          if (v11)
          {
            break;
          }

          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v24 = sub_252E36AD4();
          __swift_project_value_buffer(v24, qword_27F544D60);
          sub_252E379F4();

          v25 = [v9 description];
          v26 = sub_252E36F34();
          v28 = v27;

          MEMORY[0x2530AD570](v26, v28);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

LABEL_26:
          v17 = MEMORY[0x277D84F90];
          v29 = *(MEMORY[0x277D84F90] + 16);
          if (v29)
          {
            goto LABEL_27;
          }

LABEL_51:

LABEL_52:

LABEL_6:
          if (v5 == v4)
          {
            goto LABEL_65;
          }
        }

        v12 = v11;
        v13 = [v11 deviceTypes];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = sub_252E37264();

        v16 = *(v15 + 16);
        if (v16)
        {
          v50 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v16, 0);
          v17 = v50;
          v18 = 32;
          do
          {
            v19 = sub_252E25FC4(*(v15 + v18));
            if (v20)
            {
              v21 = 0;
            }

            else
            {
              v21 = v19;
            }

            v23 = *(v50 + 16);
            v22 = *(v50 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_2529AA420((v22 > 1), v23 + 1, 1);
            }

            *(v50 + 16) = v23 + 1;
            *(v50 + 8 * v23 + 32) = v21;
            v18 += 8;
            --v16;
          }

          while (v16);

          v4 = v48;
          v6 = v49 & 0xC000000000000001;
        }

        else
        {

          v17 = MEMORY[0x277D84F90];
        }

        v7 = v49 & 0xFFFFFFFFFFFFFF8;
        v29 = *(v17 + 16);
        if (!v29)
        {
          goto LABEL_51;
        }

LABEL_27:
        v30 = 32;
        do
        {
          if (!v29)
          {

            goto LABEL_6;
          }

          v31 = *(v17 + v30);
          v30 += 8;
          --v29;
        }

        while (v31 != 36);

        v32 = [v9 taskResponses];
        if (!v32)
        {
          goto LABEL_52;
        }

        v33 = v32;
        type metadata accessor for HomeUserTaskResponse();
        v34 = sub_252E37264();

        v35 = [v9 entity];
        if (!v35)
        {

          v6 = v49 & 0xC000000000000001;
          goto LABEL_6;
        }

        if (!(v34 >> 62))
        {
          v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_34;
          }

          goto LABEL_57;
        }

        v36 = sub_252E378C4();
        if (!v36)
        {
LABEL_57:

LABEL_58:
          v4 = v48;
          v6 = v49 & 0xC000000000000001;
          v7 = v49 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_6;
        }

LABEL_34:
        v37 = 0;
        while (1)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2530ADF00](v37, v34);
          }

          else
          {
            if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_62;
            }

            v38 = *(v34 + 32 + 8 * v37);
          }

          v39 = v38;
          v10 = __OFADD__(v37++, 1);
          if (v10)
          {
            break;
          }

          if (qword_27F53F730 != -1)
          {
            swift_once();
          }

          v40 = qword_27F575C40;
          v41 = [v39 taskOutcome];
          if (*(v40 + 16))
          {
            v42 = v41;
            v43 = *(v40 + 40);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v42);
            v44 = sub_252E37F14();
            v45 = -1 << *(v40 + 32);
            v46 = v44 & ~v45;
            if ((*(v40 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
            {
              v47 = ~v45;
              while (*(*(v40 + 48) + 8 * v46) != v42)
              {
                v46 = (v46 + 1) & v47;
                if (((*(v40 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              return 1;
            }
          }

LABEL_35:

          if (v37 == v36)
          {

            goto LABEL_58;
          }
        }

LABEL_63:
        __break(1u);
LABEL_64:
        v4 = sub_252E378C4();
        if (!v4)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_26;
    }

LABEL_65:

    return 0;
  }

  return result;
}

void sub_252A94B20(void *a1, void (*a2)(void))
{
  v4 = [a1 userTask];
  if (!v4)
  {
LABEL_131:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v123 = sub_252E36AD4();
    __swift_project_value_buffer(v123, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007ELL, 0x8000000252E76B90, 0xD000000000000021, 0x8000000252E68B10, 44);
    v23 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v124 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v23[v124] = 5;
    [v23 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v125 = sub_252E37254();
    [v23 setEntityResponses_];

    (a2)(v23);
    goto LABEL_134;
  }

  v5 = v4;
  v6 = [a1 filters];
  if (!v6)
  {

    goto LABEL_131;
  }

  v7 = v6;
  v142 = a2;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v140 = a1;
  v141 = v5;
  if (v8 >> 62)
  {
    goto LABEL_129;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_130:

    goto LABEL_131;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      v9 = sub_252E378C4();
      if (!v9)
      {
        goto LABEL_130;
      }

      goto LABEL_5;
    }

    v14 = [v11 isExcludeFilter];
    sub_252956D08();
    v15 = sub_252E37674();
    v16 = v15;
    if (!v14)
    {
      break;
    }

    v17 = sub_252E37694();

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_130;
    }
  }

LABEL_17:
  type metadata accessor for HomeStore();
  v18 = static HomeStore.shared.getter();
  v19 = HomeStore.accessories(matching:supporting:)(v8, 0);
  v21 = v20;

  if (v21)
  {
    sub_252929F10(v19, 1);

    if (qword_27F53F498 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_138;
  }

  type metadata accessor for MutableMatterHomeFilter();
  swift_initStackObject();
  v26 = v12;
  v27 = sub_2529D0A90(v26);
  v133 = v26;

  *(v27 + 72) = 41;
  v28 = sub_2529D0538();
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v29.n128_f64[0] = HomeFilter.Builder.init()();
  v31 = (*(*v30 + 624))(41, v29);

  v32 = (*(*v31 + 728))(1);

  v34 = (*(*v32 + 760))(v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_252E3C130;
  v137 = v35;
  *(v35 + 32) = v28;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_252E3C130;
  v135 = v36;
  *(v36 + 32) = v141;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v34;
  v132 = v28;
  v38 = v141;
  v131 = v34;
  sub_25297A8D8(inited);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_252E3C130;
  *(v39 + 32) = v38;
  v141 = v8;
  v134 = v39;
  if (v19 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v139 = v38;
  if (!v12)
  {
LABEL_52:
    sub_252929F10(v19, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_252E3C290;
    *(v68 + 32) = v137;
    v69 = v68 + 32;
    *(v68 + 40) = v135;
    v12 = sub_252B4D7EC(v68, 0, 1);
    v71 = v70;
    swift_setDeallocating();
    sub_252A965B0(v69);
    if (v71)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  v40 = 0;
  v41 = v19 & 0xC000000000000001;
  while (!v41)
  {
    if (v40 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      swift_once();
LABEL_19:
      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544C70);
      sub_252CC4050(0xD000000000000031, 0x8000000252E76C10, 0xD00000000000007ELL, 0x8000000252E76B90, 0xD000000000000021, 0x8000000252E68B10, 49);
      v23 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v24 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v23[v24] = 102;
      [v23 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v25 = sub_252E37254();
      [v23 setEntityResponses_];

      (v142)(v23);
LABEL_134:

      return;
    }

    v42 = *(v19 + 32 + 8 * v40);

    v43 = __OFADD__(v40++, 1);
    if (v43)
    {
      goto LABEL_48;
    }

LABEL_29:
    v44 = (*v42 + 256);
    v45 = *v44;
    if ((*v44)() == 41)
    {
      goto LABEL_25;
    }

    v46 = (*(*v42 + 272))();
    v47 = v46;
    if (!*(v46 + 16) || (v48 = *(v46 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](41), v49 = sub_252E37F14(), v50 = -1 << *(v47 + 32), v51 = v49 & ~v50, ((*(v47 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0))
    {
LABEL_35:

      v54 = (v45)(v53);
      if (v54 == 38)
      {
        v56 = &unk_2864A1B10;
LABEL_39:
        v55 = sub_2529FC004(v56);
      }

      else
      {
        v55 = MEMORY[0x277D84FA0];
        if (v54 == 41)
        {
          v56 = &unk_2864A1B38;
          goto LABEL_39;
        }
      }

      if (!*(v55 + 16))
      {
        goto LABEL_49;
      }

      v57 = *(v55 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](41);
      v58 = sub_252E37F14();
      v59 = -1 << *(v55 + 32);
      v60 = v58 & ~v59;
      if (((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
      {
        goto LABEL_49;
      }

      v61 = ~v59;
      while (*(*(v55 + 48) + 8 * v60) != 41)
      {
        v60 = (v60 + 1) & v61;
        if (((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_24;
    }

    v52 = ~v50;
    while (*(*(v47 + 48) + 8 * v51) != 41)
    {
      v51 = (v51 + 1) & v52;
      if (((*(v47 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_24:

    v41 = v19 & 0xC000000000000001;
LABEL_25:

    if (v40 == v12)
    {
      goto LABEL_52;
    }
  }

  v42 = MEMORY[0x2530ADF00](v40, v19);
  v43 = __OFADD__(v40++, 1);
  if (!v43)
  {
    goto LABEL_29;
  }

LABEL_48:
  __break(1u);
LABEL_49:

  sub_252929F10(v19, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_252E3C3C0;
  *(v62 + 32) = v137;
  *(v62 + 40) = v135;
  *(v62 + 48) = v8;
  *(v62 + 56) = v134;
  v12 = sub_252B4D7EC(v62, 0, 1);
  v64 = v63;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
  swift_arrayDestroy();
  if ((v64 & 1) == 0)
  {
LABEL_53:
    v72 = v12;
    v73 = a2;
    if ((sub_252A93EE8(v72) & 1) == 0 || (sub_252A94570(v72) & 1) == 0)
    {
      (a2)(v72);

      sub_252927D3C(v12);
      v67 = v12;
      goto LABEL_114;
    }

    type metadata accessor for MutableControlHomeIntentResponse();
    swift_initStackObject();
    v74 = v72;
    v129 = sub_252D6D96C(v74);
    v130 = v12;
    sub_252927D3C(v12);
    v75 = [v74 entityResponses];
    v76 = MEMORY[0x277D84F90];
    if (v75)
    {
      v77 = v75;
      type metadata accessor for HomeEntityResponse();
      v78 = sub_252E37264();

      v143 = v76;
      v128 = v78;
      if (v78 >> 62)
      {
        a2 = sub_252E378C4();
        if (a2)
        {
          goto LABEL_58;
        }
      }

      else
      {
        a2 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
LABEL_58:
          v79 = 0;
          v141 = (v78 & 0xC000000000000001);
          v140 = (v78 & 0xFFFFFFFFFFFFFF8);
          v136 = a2;
          v138 = v78 + 32;
          while (1)
          {
LABEL_59:
            if (v141)
            {
              v80 = MEMORY[0x2530ADF00](v79, v128);
            }

            else
            {
              if (v79 >= v140[2])
              {
                goto LABEL_137;
              }

              v80 = *(v138 + 8 * v79);
            }

            v81 = v80;
            v43 = __OFADD__(v79++, 1);
            if (v43)
            {
              goto LABEL_136;
            }

            v82 = [v80 entity];
            if (!v82)
            {
              break;
            }

            v83 = v82;
            v84 = [v82 deviceTypes];
            if (!v84)
            {

              goto LABEL_82;
            }

            v85 = v84;
            v12 = sub_252E37264();

            v86 = v12[2];
            if (!v86)
            {

              goto LABEL_81;
            }

            sub_2529AA420(0, v86, 0);
            v87 = v76;
            v88 = 4;
            do
            {
              v89 = sub_252E25FC4(v12[v88]);
              if (v90)
              {
                v91 = 0;
              }

              else
              {
                v91 = v89;
              }

              v93 = *(v76 + 16);
              v92 = *(v76 + 24);
              if (v93 >= v92 >> 1)
              {
                sub_2529AA420((v92 > 1), v93 + 1, 1);
              }

              *(v76 + 16) = v93 + 1;
              *(v76 + 8 * v93 + 32) = v91;
              ++v88;
              --v86;
            }

            while (v86);

            v76 = MEMORY[0x277D84F90];
            a2 = v136;
            v98 = *(v87 + 16);
            if (v98)
            {
LABEL_83:
              v99 = 32;
              while (v98)
              {
                v100 = *(v87 + v99);
                v99 += 8;
                --v98;
                if (v100 == 36)
                {

                  v101 = [v81 taskResponses];
                  if (!v101)
                  {
                    goto LABEL_92;
                  }

                  v102 = v101;
                  type metadata accessor for HomeUserTaskResponse();
                  v103 = sub_252E37264();

                  v104 = [v81 entity];
                  if (!v104)
                  {
                    break;
                  }

                  if (v103 >> 62)
                  {
                    v105 = sub_252E378C4();
                    if (!v105)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v105 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!v105)
                    {
                      break;
                    }
                  }

                  v106 = 0;
                  while (1)
                  {
                    if ((v103 & 0xC000000000000001) != 0)
                    {
                      v108 = MEMORY[0x2530ADF00](v106, v103);
                    }

                    else
                    {
                      if (v106 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_141;
                      }

                      v108 = *(v103 + 32 + 8 * v106);
                    }

                    v109 = v108;
                    v43 = __OFADD__(v106++, 1);
                    if (v43)
                    {
                      __break(1u);
LABEL_141:
                      __break(1u);
                      goto LABEL_142;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v110 = qword_27F575C40;
                    v111 = [v109 taskOutcome];
                    if (*(v110 + 16))
                    {
                      v12 = v111;
                      v112 = *(v110 + 40);
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v12);
                      v113 = sub_252E37F14();
                      v114 = -1 << *(v110 + 32);
                      v115 = v113 & ~v114;
                      if ((*(v110 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115))
                      {
                        break;
                      }
                    }

LABEL_94:

                    v76 = MEMORY[0x277D84F90];
                    a2 = v136;
                    if (v106 == v105)
                    {
                      goto LABEL_91;
                    }
                  }

                  v116 = ~v114;
                  while (*(*(v110 + 48) + 8 * v115) != v12)
                  {
                    v115 = (v115 + 1) & v116;
                    if (((*(v110 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                    {
                      goto LABEL_94;
                    }
                  }

                  v76 = MEMORY[0x277D84F90];
                  a2 = v136;
                  if (v79 != v136)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_116;
                }
              }
            }

LABEL_91:

LABEL_92:
            sub_252E37A94();
            v107 = *(v143 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            if (v79 == a2)
            {
LABEL_116:
              v76 = v143;
              v73 = v142;
              goto LABEL_117;
            }
          }

          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v94 = sub_252E36AD4();
          __swift_project_value_buffer(v94, qword_27F544D60);
          sub_252E379F4();

          v95 = [v81 description];
          v12 = sub_252E36F34();
          v97 = v96;

          MEMORY[0x2530AD570](v12, v97);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
LABEL_81:

LABEL_82:
          v87 = v76;
          v98 = *(v76 + 16);
          if (v98)
          {
            goto LABEL_83;
          }

          goto LABEL_91;
        }
      }

LABEL_117:
    }

    if (v76 >> 62)
    {
      v117 = sub_252E378C4();
      if (v117)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v117 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v117)
      {
LABEL_120:
        v144 = MEMORY[0x277D84F90];
        sub_252E37AB4();
        if (v117 < 0)
        {
          __break(1u);
          return;
        }

        v118 = 0;
        do
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v119 = MEMORY[0x2530ADF00](v118, v76);
          }

          else
          {
            v119 = *(v76 + 8 * v118 + 32);
          }

          v120 = v119;
          ++v118;
          type metadata accessor for MutableHomeEntityResponse();
          swift_allocObject();
          sub_252D6D668(v120);

          sub_252E37A94();
          v121 = *(v144 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v117 != v118);

        v122 = v144;
LABEL_145:
        v126 = *(v129 + 24);
        *(v129 + 24) = v122;

        v127 = sub_252D6BB10();
        v73();

        sub_252927D3C(v130);
        sub_252927D3C(v130);

        goto LABEL_115;
      }
    }

    v122 = MEMORY[0x277D84F90];
    goto LABEL_145;
  }

LABEL_50:
  if (qword_27F53F498 != -1)
  {
LABEL_142:
    swift_once();
  }

  v65 = sub_252E36AD4();
  __swift_project_value_buffer(v65, qword_27F544C70);
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E76B90, 0xD000000000000021, 0x8000000252E68B10, 77);

  v66 = parse(error:with:)(v12, v140);
  a2();

  v67 = v12;
LABEL_114:
  sub_252927D3C(v67);
LABEL_115:
}

uint64_t sub_252A95E14(void *a1)
{
  v1 = a1;
  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = v5[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v6 != 2 && (v6 & 1) == 0 || (v7 = &off_279711000, (v8 = [v1 filters]) == 0))
  {

    return 0;
  }

  v9 = v8;
  type metadata accessor for HomeFilter();
  v10 = sub_252E37264();

  v11 = [v1 userTask];
  v12 = HomeStore.accessories(matching:supporting:)(v10, v11);
  v14 = v13;

  if (v14)
  {
    v15 = v12;
    v16 = 1;
LABEL_74:
    sub_252929F10(v15, v16);
    return 0;
  }

  v17 = [v1 filters];
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = v17;
  v19 = sub_252E37264();

  if (v19 >> 62)
  {
    goto LABEL_40;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2530ADF00](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v20 = *(v19 + 32);
  }

  v18 = v20;

  v21 = [v1 v7[192]];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  v23 = sub_252E37264();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_19;
  }

LABEL_78:
  v24 = sub_252E378C4();
LABEL_19:

  if (v24 != 1 || [v18 deviceType] != 36 && objc_msgSend(v18, sel_outerDeviceType) != 36)
  {
LABEL_34:

    goto LABEL_42;
  }

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v26 = *(*v25 + 752);
  v1 = v18;
  v27 = v26(v18);

  v28 = (*(*v27 + 624))(41);

  v30 = (*(*v28 + 760))(v29);

  v19 = static HomeStore.shared.getter();
  v31 = sub_2529D9D50();

  v7 = (v31 & 0xFFFFFFFFFFFFFF8);
  if (v31 >> 62)
  {
    v18 = sub_252E378C4();
  }

  else
  {
    v18 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  do
  {
    if (v18 == v32)
    {

LABEL_41:

LABEL_42:
      if (v12 >> 62)
      {
        goto LABEL_72;
      }

      v36 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
LABEL_73:
        v15 = v12;
        v16 = 0;
        goto LABEL_74;
      }

LABEL_44:
      v37 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x2530ADF00](v37, v12);
          v39 = __OFADD__(v37++, 1);
          if (v39)
          {
LABEL_68:
            __break(1u);
LABEL_69:
            sub_252929F10(v12, 0);

            return 1;
          }
        }

        else
        {
          if (v37 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_72:
            v36 = sub_252E378C4();
            if (!v36)
            {
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          v38 = *(v12 + 32 + 8 * v37);

          v39 = __OFADD__(v37++, 1);
          if (v39)
          {
            goto LABEL_68;
          }
        }

        v40 = (*v38 + 256);
        v41 = *v40;
        if ((*v40)() == 41)
        {
          sub_252929F10(v12, 0);

          return 1;
        }

        v42 = (*(*v38 + 272))();
        v43 = v42;
        if (*(v42 + 16))
        {
          v44 = *(v42 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v45 = sub_252E37F14();
          v46 = -1 << *(v43 + 32);
          v47 = v45 & ~v46;
          if ((*(v43 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (*(*(v43 + 48) + 8 * v47) != 41)
            {
              v47 = (v47 + 1) & v48;
              if (((*(v43 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_69;
          }
        }

LABEL_55:

        v50 = (v41)(v49);
        if (v50 == 38)
        {
          break;
        }

        v51 = MEMORY[0x277D84FA0];
        if (v50 == 41)
        {
          v52 = &unk_2864AB0D0;
LABEL_59:
          v51 = sub_2529FC004(v52);
        }

        if (*(v51 + 16))
        {
          v53 = *(v51 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v54 = sub_252E37F14();
          v55 = -1 << *(v51 + 32);
          v56 = v54 & ~v55;
          if ((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
          {
            v57 = ~v55;
            while (*(*(v51 + 48) + 8 * v56) != 41)
            {
              v56 = (v56 + 1) & v57;
              if (((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_69;
          }
        }

LABEL_45:

        if (v37 == v36)
        {
          goto LABEL_73;
        }
      }

      v52 = &unk_2864AB0A8;
      goto LABEL_59;
    }

    if ((v31 & 0xC000000000000001) == 0)
    {
      if (v32 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v31 + 8 * v32 + 32);

        if (__OFADD__(v32, 1))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_40:
      if (!sub_252E378C4())
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    v19 = MEMORY[0x2530ADF00](v32, v31);
    if (__OFADD__(v32, 1))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_29:
    v33 = sub_252D50D28(v30);

    ++v32;
  }

  while ((v33 & 1) == 0);

  sub_252929F10(v12, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544C70);
  sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E76B50, 0xD00000000000007ELL, 0x8000000252E76B90);

  return 1;
}

uint64_t sub_252A965B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceEntity()
{
  result = qword_27F5427D8;
  if (!qword_27F5427D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252A966BC()
{
  v1 = v0;
  v2 = sub_252BF8258(v0);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_2864A7F60;
  }

  sub_252E36424();
  __swift_project_boxed_opaque_existential_1(&v24, v26);
  v4 = sub_252E364D4();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v8 = v7;
  v9 = *(v0 + qword_27F5427A8);

  sub_252E36744();

  v10 = (*(*v8 + 376))(v24, v25);

  v11 = (*(*v10 + 384))(7);

  v12 = (*(*v11 + 392))(v4, v6);

  v13 = (*(*v12 + 400))(v3);

  v14 = (*(*v13 + 408))(0);

  v15 = *(v1 + qword_27F5427C0);

  sub_252E36744();

  v16 = (*(*v14 + 416))(v24, v25);

  v17 = *(v1 + qword_27F5427B8);

  sub_252E36744();

  v18 = (*(*v16 + 424))(v24, v25);

  v19 = (*(*v18 + 432))(0, 0);

  v20 = (*(*v19 + 440))(0);

  v22 = (*(*v20 + 448))(v21);

  return v22;
}

uint64_t sub_252A96AFC()
{
  v1 = v0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_252E379F4();
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  v2 = *v0;
  v3 = sub_252E37FB4();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E76CC0);
  sub_252E36424();
  __swift_project_boxed_opaque_existential_1(&v22, v24);
  v4 = sub_252E364D4();
  MEMORY[0x2530AD570](v4);

  __swift_destroy_boxed_opaque_existential_1(&v22);
  MEMORY[0x2530AD570](0x6D616E202020200ALL, 0xEB00000000203A65);
  v5 = *(v0 + qword_27F5427A8);

  sub_252E36744();

  if (v23)
  {
    v6 = v22;
  }

  else
  {
    v6 = 0x29656E6F6E28;
  }

  if (v23)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v6, v7);

  MEMORY[0x2530AD570](0x7974202020200A2CLL, 0xEC000000203A6570);
  v8 = *(v1 + qword_27F5427B0);

  sub_252E36744();

  if ((~v22 & 0xC0C0) != 0)
  {
    v9 = sub_252A97594(v22);
    v10 = v11;
  }

  else
  {
    v9 = 0x29656E6F6E28;
    v10 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](0x6D6F68202020200ALL, 0xEF203A656D614E65);
  v12 = *(v1 + qword_27F5427B8);

  sub_252E36744();

  if (v23)
  {
    v13 = v22;
  }

  else
  {
    v13 = 0x29656E6F6E28;
  }

  if (v23)
  {
    v14 = v23;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v13, v14);

  MEMORY[0x2530AD570](0x6F6F72202020200ALL, 0xEF203A656D614E6DLL);
  v15 = *(v1 + qword_27F5427C0);

  sub_252E36744();

  if (v23)
  {
    v16 = v22;
  }

  else
  {
    v16 = 0x29656E6F6E28;
  }

  if (v23)
  {
    v17 = v23;
  }

  else
  {
    v17 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E76CE0);
  v18 = *(v1 + qword_27F5427D0);

  sub_252E36744();

  if (v23)
  {
    v19 = v22;
  }

  else
  {
    v19 = 0x29656E6F6E28;
  }

  if (v23)
  {
    v20 = v23;
  }

  else
  {
    v20 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v19, v20);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return v25;
}