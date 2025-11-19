uint64_t sub_1ABE26FD8()
{
  sub_1ABAE28EC();
  v0 = sub_1ABF248E4();
  v1 = v0;
  v26 = *(v0 + 16);
  if (!v26)
  {
    goto LABEL_43;
  }

  v2 = 0;
  v3 = (v0 + 56);
  v4 = 0.0;
  while (v2 < *(v1 + 16))
  {
    v5 = *(v3 - 3);
    v6 = *(v3 - 2);
    v8 = *(v3 - 1);
    v7 = *v3;
    swift_bridgeObjectRetain_n();
    sub_1ABAABD80();
    if (__OFSUB__(sub_1ABF24834(), 1))
    {
      goto LABEL_46;
    }

    v9 = sub_1ABF24814();
    if (v10)
    {
      v11 = v6;
    }

    else
    {
      v11 = v9;
    }

    if (v5 >> 14 > v11 >> 14)
    {
      goto LABEL_47;
    }

    v27 = v3;
    sub_1ABAABD80();
    sub_1ABF24854();

    v12 = sub_1ABF24354();
    v13 = v12;
    if (v14)
    {

      return v13;
    }

    if (v5 >> 14 == v6 >> 14)
    {

      goto LABEL_43;
    }

    v15 = *&v12;
    sub_1ABA7FD4C();
    sub_1ABF24804();
    sub_1ABA7FD4C();
    v16 = sub_1ABF24844();
    v18 = v17;

    if (v16 == 100 && v18 == 0xE100000000000000)
    {

      v20 = v27;
    }

    else
    {
      v20 = v27;
      if ((sub_1ABA8F8B8() & 1) == 0)
      {
        v21 = v16 == 104 && v18 == 0xE100000000000000;
        if (v21 || (sub_1ABA8F8B8() & 1) != 0)
        {

          v15 = v15 * 3600.0;
        }

        else
        {
          v22 = v16 == 109 && v18 == 0xE100000000000000;
          if (v22 || (sub_1ABA8F8B8() & 1) != 0)
          {

            v15 = v15 * 60.0;
          }

          else if (v16 == 115 && v18 == 0xE100000000000000)
          {
          }

          else
          {
            v24 = sub_1ABA8F8B8();

            if ((v24 & 1) == 0)
            {
              goto LABEL_43;
            }
          }
        }

        goto LABEL_19;
      }
    }

    v15 = v15 * 86400.0;
LABEL_19:
    ++v2;
    v4 = v4 + v15;
    v3 = v20 + 4;
    if (v26 == v2)
    {

      return *&v4;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_43:

  return 0;
}

id sub_1ABE272C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1ABF23BD4();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1ABE2747C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (((2 * v1) & 0x38) != 0)
  {
    return 64 - ((2 * v1) & 0x38 | (v1 >> 5));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABE274A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1ABE274E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABE27554()
{
  result = qword_1EB4DA9B0;
  if (!qword_1EB4DA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA9B0);
  }

  return result;
}

void sub_1ABE275A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1ABF23BD4();

  [a3 setDateFormat_];
}

uint64_t sub_1ABE27668(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1ABE27694()
{
  v1 = *(v0 - 184);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

void sub_1ABE276C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_1ABE24C74(1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t PartOfDay.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      v2 = 1852993357;
      goto LABEL_6;
    case 2:
      result = 0x6F6F6E7265746641;
      break;
    case 3:
      v2 = 1852143173;
LABEL_6:
      result = v2 | 0x676E6900000000;
      break;
    case 4:
      result = 0x746867694ELL;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatform::PartOfDay __swiftcall PartOfDay.init(hour:)(Swift::Int hour)
{
  if ((hour - 17) < 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if ((hour - 12) >= 5)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if ((hour - 6) >= 6)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  *v1 = v4;
  return hour;
}

IntelligencePlatform::PartOfDay_optional __swiftcall PartOfDay.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1ABE277C0()
{
  result = qword_1EB4DA9C0;
  if (!qword_1EB4DA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA9C0);
  }

  return result;
}

uint64_t sub_1ABE2781C@<X0>(uint64_t *a1@<X8>)
{
  result = PartOfDay.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PartOfDay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t static Paths.createBaseDirectory()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v36[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1ABF21C24();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_1ABF21CF4();
  v14 = sub_1ABA7BB64(v13);
  v35 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 URLsForDirectory:5 inDomains:1];

  v23 = sub_1ABF240D4();
  sub_1ABB2BC5C(v23);

  if (sub_1ABA7E1E0(v12, 1, v13) == 1)
  {
    sub_1ABE27F70(v12);
    sub_1ABE27FD8();
    swift_allocError();
    result = swift_willThrow();
  }

  else
  {
    (*(v35 + 32))(v19, v12, v13);
    v36[0] = 0xD000000000000014;
    v36[1] = 0x80000001ABF688F0;
    (*(v4 + 104))(v8, *MEMORY[0x1E6968F58], v1);
    sub_1ABAE28EC();
    v25 = v34;
    sub_1ABF21CE4();
    (*(v4 + 8))(v8, v1);
    v26 = [v20 defaultManager];
    v27 = sub_1ABF21C54();
    v36[0] = 0;
    v28 = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v36];

    if (v28)
    {
      v29 = *(v35 + 8);
      v30 = v36[0];
    }

    else
    {
      v31 = v36[0];
      sub_1ABF21BE4();

      swift_willThrow();
      v29 = *(v35 + 8);
      v29(v25, v13);
    }

    result = (v29)(v19, v13);
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABE27F70(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABE27FD8()
{
  result = qword_1EB4DA9D8;
  if (!qword_1EB4DA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA9D8);
  }

  return result;
}

uint64_t sub_1ABE2802C()
{
  v0 = sub_1ABF21CF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABE27924(v4);
  v5 = sub_1ABF21C34();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EB4DA9C8 = v5;
  unk_1EB4DA9D0 = v7;
  return result;
}

uint64_t static Paths.baseDirectory.getter()
{
  if (qword_1EB4D03F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB4DA9C8;

  return v0;
}

uint64_t sub_1ABE28174()
{
  v0 = sub_1ABF21CF4();
  sub_1ABB9009C(v0, qword_1ED870E48);
  v1 = sub_1ABA7AA24(v0, qword_1ED870E48);
  return sub_1ABE27924(v1);
}

_BYTE *sub_1ABE281D0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE282A0()
{
  result = qword_1EB4DA9E0[0];
  if (!qword_1EB4DA9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DA9E0);
  }

  return result;
}

uint64_t sub_1ABE282F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v3 = sub_1ABF241F4();
    if (v6 <= 0x3F)
    {
      v3 = sub_1ABF247E4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1ABE283D8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = 7;
  if (!v10)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
LABEL_32:
    if (v7 == v13)
    {

      return sub_1ABA7E1E0(a1, v7, v5);
    }

    v24 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) == 0)
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    if (v10 >= 2)
    {
      v26 = sub_1ABA7E1E0((v24 + v15 + 8) & ~v15, v10, result);
      if (v26 >= 2)
      {
        return v26 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v17 = ((v16 + *(*(result - 8) + 64) + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v13 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    case 2:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_28:
      v23 = v22 - 1;
      if (v18)
      {
        v23 = 0;
        LODWORD(v18) = *a1;
      }

      result = v13 + (v18 | v23) + 1;
      break;
    default:
      goto LABEL_32;
  }

  return result;
}

void sub_1ABE28638(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((v18 + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    if (((v18 + ((v17 + ((v16 + 7) & 0xFFFFFFF8) + 8) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = a3 - v15 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 <= v15)
  {
    switch(v11)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v9 == v15)
        {
          v24 = a1;
          v25 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v26 = ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *v26 = v27;
            return;
          }

          if (v13 < 2)
          {
            return;
          }

          v24 = (v26 + v17 + 8) & ~v17;
          v25 = (a2 + 1);
        }

        sub_1ABA7B9B4(v24, v25, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if (v19)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v15;
    }

    if (v19)
    {
      v23 = ~v15 + a2;
      bzero(a1, v19);
      *a1 = v23;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v19) = v22;
        break;
      case 2:
        *(a1 + v19) = v22;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *(a1 + v19) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABE288F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *(a1 + 24);
  v28[1] = *(a1 + 16);
  v28[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_1ABF247E4();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v29 = *(a1 + 36);
  v14 = *(v2 + v29);
  *&v34 = v14;
  sub_1ABF241F4();
  swift_getWitnessTable();
  sub_1ABF24544();
  if (sub_1ABA7E1E0(v13, 1, AssociatedTypeWitness) == 1)
  {
    v16 = v30;
    v15 = v31;
    result = (*(v7 + 8))(v13, v30);
    v18 = *(a1 + 44);
    v19 = *(v2 + v18);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      *(v2 + v18) = v21;
      sub_1ABF24864();
      v22 = *(a1 + 40);
      (*(v7 + 40))(v2 + v22, v10, v16);
      return (*(v7 + 16))(v15, v2 + v22, v16);
    }
  }

  else
  {
    v23 = *(AssociatedTypeWitness - 8);
    (*(v23 + 32))(v31, v13, AssociatedTypeWitness);
    *&v32 = v14;

    sub_1ABF24594();
    v32 = v34;
    v33 = v35;
    sub_1ABF24904();
    swift_getWitnessTable();
    v24 = sub_1ABF24214();

    v25 = v30;
    *(v2 + v29) = v24;
    v26 = *(a1 + 40);
    (*(v7 + 8))(v2 + v26, v25);
    v27 = v31;
    (*(v23 + 16))(v3 + v26, v31, AssociatedTypeWitness);
    sub_1ABA7B9B4(v3 + v26, 0, 1, AssociatedTypeWitness);
    return sub_1ABA7B9B4(v27, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t RecordCursor.peekable.getter()
{
  v1 = (*v0 + *MEMORY[0x1E699FDE0]);
  v2 = *v1;
  v3 = v1[1];
  type metadata accessor for PeekableRecordCursor();

  return PeekableRecordCursor.__allocating_init(_:)(v4);
}

uint64_t PeekableRecordCursor.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PeekableRecordCursor.init(_:)(a1);
  return v5;
}

char *PeekableRecordCursor.init(_:)(uint64_t a1)
{
  v4 = v1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  sub_1ABA7F418();
  v8 = sub_1ABF247E4();
  v9 = sub_1ABA7D958(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v19 - v14;
  sub_1ABA7B9B4(&v4[*(v6 + 104)], 1, 1, v7);
  *(v4 + 2) = a1;
  v16 = *(v6 + 88);
  sub_1ABA7F418();
  sub_1ABF222C4();

  sub_1ABA8FA50();
  swift_getWitnessTable();
  sub_1ABF22444();

  if (v2)
  {
  }

  else
  {
    v17 = *(*v4 + 104);
    swift_beginAccess();
    (*(v11 + 40))(&v4[v17], v15, v3);
    swift_endAccess();
  }

  return v4;
}

uint64_t PeekableRecordCursor.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  sub_1ABA7F418();
  v7 = sub_1ABF247E4();
  v8 = sub_1ABA7D958(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v20[-v13];
  v15 = *(v5 + 104);
  swift_beginAccess();
  (*(v10 + 16))(a1, &v1[v15], v2);
  v16 = *(v1 + 2);
  v17 = *(v5 + 88);
  sub_1ABA7F418();
  sub_1ABF222C4();
  sub_1ABA8FA50();
  swift_getWitnessTable();
  v18 = v21;
  sub_1ABF22444();
  if (v18)
  {
    return (*(v10 + 8))(a1, v2);
  }

  swift_beginAccess();
  (*(v10 + 40))(&v3[v15], v14, v2);
  return swift_endAccess();
}

uint64_t PeekableRecordCursor.peek()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1ABF247E4();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

char *PeekableRecordCursor.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = sub_1ABF247E4();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t PeekableRecordCursor.__deallocating_deinit()
{
  PeekableRecordCursor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE29224(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1ABF247E4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ABE29318(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubgraphColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE294A0()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABE294FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABE294A0();
  *a2 = result;
  return result;
}

unint64_t sub_1ABE2952C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABE29318(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABE29558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE29840();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABE295A4(uint64_t a1)
{
  v2 = sub_1ABE29894();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1ABE295F0(uint64_t a1)
{
  v2 = sub_1ABE29794();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABE2963C(uint64_t a1)
{
  v2 = sub_1ABE29794();

  return MEMORY[0x1EEE09A88](a1, v2);
}

unint64_t sub_1ABE2968C()
{
  result = qword_1EB4DAA70;
  if (!qword_1EB4DAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA70);
  }

  return result;
}

unint64_t sub_1ABE296E4()
{
  result = qword_1EB4DAA78;
  if (!qword_1EB4DAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA78);
  }

  return result;
}

unint64_t sub_1ABE2973C()
{
  result = qword_1EB4DAA80;
  if (!qword_1EB4DAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA80);
  }

  return result;
}

unint64_t sub_1ABE29794()
{
  result = qword_1EB4DAA88;
  if (!qword_1EB4DAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA88);
  }

  return result;
}

unint64_t sub_1ABE297EC()
{
  result = qword_1EB4DAA90;
  if (!qword_1EB4DAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA90);
  }

  return result;
}

unint64_t sub_1ABE29840()
{
  result = qword_1EB4DAA98;
  if (!qword_1EB4DAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA98);
  }

  return result;
}

unint64_t sub_1ABE29894()
{
  result = qword_1EB4DAAA0;
  if (!qword_1EB4DAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAA0);
  }

  return result;
}

IntelligencePlatform::PersonalKnowledgeToolResultAttributeSemanticType_optional __swiftcall PersonalKnowledgeToolResultAttributeSemanticType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalKnowledgeToolResultAttributeSemanticType.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x746E657665;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6D614E7473726966;
      break;
    case 5:
      result = 0x656D614E7473616CLL;
      break;
    case 6:
      result = 0x7961646874726962;
      break;
    case 7:
      result = 0x6D754E656E6F6870;
      break;
    case 8:
      result = 0x6464416C69616D65;
      break;
    case 9:
      result = sub_1ABA7CFCC(0x616C6572u);
      break;
    case 0xA:
      result = 0x746361746E6F63;
      break;
    case 0xB:
      result = sub_1ABA7CFCC(0x61636F6Cu);
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x7473657265746E69;
      break;
    case 0xE:
      result = 0x7461447472617473;
      break;
    case 0xF:
      result = 0x65746144646E65;
      break;
    case 0x10:
      result = sub_1ABA7CFCC(0x61727564u);
      break;
    case 0x11:
      result = 0x69746E6565726373;
      break;
    case 0x12:
      result = 0x6765746143707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE29B6C@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeToolResultAttributeSemanticType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatform::PersonalKnowledgeToolResultAttributeDataType_optional __swiftcall PersonalKnowledgeToolResultAttributeDataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalKnowledgeToolResultAttributeDataType.rawValue.getter()
{
  result = 0x676E69727473;
  switch(*v0)
  {
    case 1:
      result = 0x72656765746E69;
      break;
    case 2:
      result = 0x656C62756F64;
      break;
    case 3:
      result = sub_1ABA7CFCC(0x61727564u);
      break;
    case 4:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE29C9C@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeToolResultAttributeDataType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalKnowledgeToolResultAttributeError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABE29D74()
{
  result = qword_1EB4DAAB0;
  if (!qword_1EB4DAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAB0);
  }

  return result;
}

unint64_t sub_1ABE29DCC()
{
  result = qword_1EB4DAAB8;
  if (!qword_1EB4DAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAB8);
  }

  return result;
}

unint64_t sub_1ABE29E24()
{
  result = qword_1EB4DAAC0;
  if (!qword_1EB4DAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeSemanticType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeSemanticType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeDataType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalKnowledgeToolResultAttribute(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE2A2EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA7F920();
    v4 = v21;
    v5 = (v1 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(v19, v5, sizeof(v19));
      sub_1ABDE4398(__dst, v18);
      sub_1ABAD219C(&qword_1EB4D14A8, &qword_1ABF33630);
      swift_dynamicCast();
      sub_1ABA93994();
      if (v15)
      {
        v6 = sub_1ABADEA0C((v14 > 1), v2, 1);
        v4 = v21;
      }

      sub_1ABA7EB84(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18[0]);
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1ABE2A3F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA7F920();
    v4 = v21;
    v5 = (v1 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(v19, v5, sizeof(v19));
      sub_1ABDE45C4(__dst, v18);
      sub_1ABAD219C(&qword_1EB4D14A8, &qword_1ABF33630);
      swift_dynamicCast();
      sub_1ABA93994();
      if (v15)
      {
        v6 = sub_1ABADEA0C((v14 > 1), v2, 1);
        v4 = v21;
      }

      sub_1ABA7EB84(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18[0]);
      v5 += 96;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1ABE2A504(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC4C(0, v1, 0);
    v4 = (a1 + 48);
    v2 = v15;
    do
    {
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;

      sub_1ABAD219C(&qword_1EB4D1330, &unk_1ABF69190);
      sub_1ABAD219C(&qword_1EB4D1300, &qword_1ABF33488);
      swift_dynamicCast();
      v5 = v13;
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1ABADEC4C((v6 > 1), v7 + 1, 1);
        v5 = v13;
      }

      *(v15 + 16) = v7 + 1;
      v8 = v15 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v14;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PersonalKnowledgeToolExecution.execute(kgqString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[197] = v4;
  v5[196] = a4;
  v5[195] = a3;
  v5[194] = a2;
  v5[193] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABE2A6A0, 0, 0);
}

uint64_t sub_1ABE2A6A0()
{
  v10 = v0;
  v1 = v0[196];
  v2 = v0[195];
  static ParserV2.parse(kgq:)(&v9);
  v3 = v0[197];
  v4 = v9;
  v5 = *v3;
  v0[198] = *v3;
  sub_1ABA93E64((v3 + 1), (v0 + 156));
  v0[162] = MEMORY[0x1E69E7CC0];
  v0[155] = v5;
  v0[161] = v4;
  v6 = v5;
  v7 = swift_task_alloc();
  v0[199] = v7;
  *v7 = v0;
  v7[1] = sub_1ABE2A8B8;

  return sub_1ABD73544();
}

uint64_t sub_1ABE2A8B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1592);
  v6 = *v2;
  *(*v2 + 1600) = v1;

  if (v1)
  {
    v7 = sub_1ABE2B480;
  }

  else
  {
    *(v4 + 1608) = a1;
    v7 = sub_1ABE2A9E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ABE2A9E0()
{
  v81 = v0;
  v1 = sub_1ABE2A504(*(v0 + 1608));

  if (qword_1EB4D03A8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v2 = sub_1ABF237F4();
    sub_1ABA7AA24(v2, qword_1EB4D6190);
    v3 = sub_1ABF237D4();
    v4 = sub_1ABF24654();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v80[0] = v6;
      *v5 = 136315138;

      v7 = sub_1ABAD219C(&qword_1EB4D1300, &qword_1ABF33488);
      v8 = MEMORY[0x1AC5A9750](v1, v7);
      v10 = v9;

      v11 = sub_1ABADD6D8(v8, v10, v80);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1ABA78000, v3, v4, "kgq to vop: %s", v5, 0xCu);
      sub_1ABA84B54(v6);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    sub_1ABE2B728(v0 + 1240);
    v12 = *(v1 + 16);
    v72 = v1;
    if (!v12)
    {
      break;
    }

    v13 = (v0 + 1304);

    v14 = 0;
    v15 = 0;
    v71 = v12 - 1;
    v16 = (v1 + 48);
    v17 = 1;
    v18 = MEMORY[0x1E69E7CC0];
    v1 = MEMORY[0x1E69E7CC0];
    while (v15 < v12)
    {
      v74 = v15;
      v75 = v18;
      v77 = *(v16 - 2);
      v73 = v16;
      v19 = *v16;
      v80[0] = *(v16 - 1);

      v76 = v19;

      VOPBuilder.toString.getter();
      v22 = v20;
      v23 = v21;
      if (v17)
      {
      }

      else
      {
        *(v0 + 1400) = v20;
        *(v0 + 1408) = v21;
        *(v0 + 1416) = 0;
        *(v0 + 1424) = 0xE000000000000000;

        sub_1ABA81104();
        sub_1ABF23B14();
        *(v0 + 1528) = v14;
        v24 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v24);

        v25 = *(v0 + 1424);
        *(v0 + 1432) = *(v0 + 1416);
        *(v0 + 1440) = v25;
        sub_1ABAE28EC();
        v26 = sub_1ABF248D4();

        if (v26)
        {
          *(v0 + 1448) = v22;
          *(v0 + 1456) = v23;
          *(v0 + 1464) = 0;
          *(v0 + 1472) = 0xE000000000000000;
          sub_1ABA81104();
          sub_1ABF23B14();
          *(v0 + 1536) = v14;
          v27 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v27);

          v28 = *(v0 + 1472);
          *(v0 + 1480) = *(v0 + 1464);
          *(v0 + 1488) = v28;
          v29 = sub_1ABE2B5E4(v75);
          v31 = v30;

          *(v0 + 1496) = v29;
          *(v0 + 1504) = v31;
          v22 = sub_1ABF248B4();
          v33 = v32;

          v23 = v33;
        }

        else
        {
        }

        v13 = (v0 + 1304);
      }

      v34 = *(v0 + 1584);
      *__src = 0;
      *&__src[8] = 0;
      *&__src[16] = v22;
      *&__src[24] = v23;
      memset(&__src[32], 0, 24);
      *&__src[56] = 257;
      KnosisServer.executeKGQ(request:)();
      v35 = *&__src[16];
      *v13 = *__src;
      v13[1] = v35;
      v13[2] = *&__src[32];
      *(v13 + 42) = *&__src[42];
      sub_1ABB2F6BC(v13);
      memcpy((v0 + 568), v80, 0xA8uLL);
      memcpy(__dst, v80, sizeof(__dst));
      sub_1ABD974FC(v0 + 568, v0 + 736);
      v36 = sub_1ABF237D4();
      v37 = sub_1ABF24654();
      sub_1ABB2F710(v0 + 568);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v38 = 136315394;
        *(v0 + 1384) = 0;
        *(v0 + 1392) = 0xE000000000000000;
        sub_1ABA81104();
        sub_1ABF23B14();
        *(v0 + 1520) = v77;
        v39 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v39);

        v40 = sub_1ABADD6D8(*(v0 + 1384), *(v0 + 1392), v80);

        *(v38 + 4) = v40;
        *(v38 + 12) = 2080;
        sub_1ABD922F8();
        v43 = sub_1ABADD6D8(v41, v42, v80);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_1ABA78000, v36, v37, "execution result for %s: %s", v38, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      sub_1ABD974FC(v0 + 568, v0 + 904);
      v44 = sub_1ABF237D4();
      v45 = sub_1ABF24654();
      sub_1ABB2F710(v0 + 568);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v46 = 136315394;
        *(v0 + 1368) = 0;
        v47 = 0xE000000000000000;
        *(v0 + 1376) = 0xE000000000000000;
        sub_1ABA81104();
        sub_1ABF23B14();
        *(v0 + 1512) = v77;
        v48 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v48);

        v49 = sub_1ABADD6D8(*(v0 + 1368), *(v0 + 1376), v80);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2080;
        if (*(v0 + 720))
        {
          v50 = *(v0 + 728);
          v51 = *(v0 + 712);
          sub_1ABD924EC();
          v47 = v53;
        }

        else
        {
          v52 = 0;
        }

        v54 = sub_1ABADD6D8(v52, v47, v80);

        *(v46 + 14) = v54;
        _os_log_impl(&dword_1ABA78000, v44, v45, "execution debug for %s: %s", v46, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }

      switch(*(v0 + 608))
      {
        case 1:
        case 2:
        case 3:
          v55 = sub_1ABF25054();

          if ((v55 & 1) == 0)
          {
            goto LABEL_31;
          }

          break;
        default:

          break;
      }

      if (!*(*(v0 + 600) + 16))
      {
LABEL_31:
        v61 = *(v0 + 1552);
        v62 = *(v0 + 1544);

        memcpy(v62, (v0 + 568), 0xA8uLL);
        sub_1ABB2BB90(v76, v61);

        goto LABEL_40;
      }

      sub_1ABD974FC(v0 + 568, v0 + 1072);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = *(v1 + 16);
        sub_1ABADC8CC();
        v1 = v59;
      }

      v56 = *(v1 + 16);
      if (v56 >= *(v1 + 24) >> 1)
      {
        sub_1ABADC8CC();
        v1 = v60;
      }

      memcpy(__src, __dst, sizeof(__src));
      *(v1 + 16) = v56 + 1;
      v57 = (v1 + 184 * v56);
      v14 = v77;
      v57[4] = v77;
      memcpy(v57 + 5, __src, 0xA8uLL);
      v57[26] = v76;
      memcpy(v80, (v0 + 568), 0xA8uLL);
      v18 = KnosisResult.answerIds.getter();

      sub_1ABB2F710(v0 + 568);
      if (v71 == v74)
      {

        goto LABEL_34;
      }

      v17 = 0;
      v12 = *(v72 + 16);
      v16 = v73 + 3;
      v15 = v74 + 1;
    }

    __break(1u);
LABEL_45:
    sub_1ABA8FA68();
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v63 = *(v1 + 16);
  if (v63)
  {
    memcpy((v0 + 16), (v1 + 184 * v63 - 152), 0xB8uLL);
    sub_1ABE2B77C(v0 + 16, v0 + 200);

    v64 = *(v0 + 192);
    sub_1ABE2B77C(v0 + 16, v0 + 384);
    sub_1ABB2F710(v0 + 24);
    if (*(v64 + 16))
    {
      v65 = *(v64 + 32);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v65 = 1280;
    }

    v68 = *(v0 + 1552);
    v69 = *(v0 + 1544);

    memcpy(v69, (v0 + 24), 0xA8uLL);
    *v68 = v65;
LABEL_40:
    sub_1ABA7BBE0();
  }

  else
  {

    sub_1ABE2B7EC();
    swift_allocError();
    *v66 = 1;
    swift_willThrow();

    sub_1ABA7BBE0();
  }

  return v67();
}

uint64_t sub_1ABE2B480()
{
  sub_1ABE2B728(v0 + 1240);
  v1 = *(v0 + 1600);
  if (qword_1EB4D03A8 != -1)
  {
    sub_1ABA8FA68();
  }

  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1EB4D6190);
  v3 = v1;
  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24664();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_1ABA8ED0C(&dword_1ABA78000, v10, v11, "kgq v2 parsing error: %@");
    sub_1ABB24B18(v7);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  swift_willThrow();

  sub_1ABA7BBE0();

  return v12();
}

uint64_t sub_1ABE2B5E4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v1 = sub_1ABF23B54();
  MEMORY[0x1AC5A9410](v1);

  MEMORY[0x1AC5A9410](23847, 0xE200000000000000);
  return 10075;
}

uint64_t PersonalKnowledgeToolError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABE2B77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D12F0, &unk_1ABF69050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE2B7EC()
{
  result = qword_1EB4DAAC8;
  if (!qword_1EB4DAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAC8);
  }

  return result;
}

unint64_t sub_1ABE2B844()
{
  result = qword_1EB4DAAD0;
  if (!qword_1EB4DAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t PersonEntityCard.summaryInfos.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryInfos.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTime.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTime.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocations.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeWithLocations.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t PersonEntityCard.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.name.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t PersonEntityCard.currentUser.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.currentUser.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t PersonEntityCard.relationship.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.relationship.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeActivities.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeActivities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeSpantext.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeSpantext.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsActivities.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsActivities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsSpantext.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsSpantext.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsLocations.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsLocations.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsLocNames.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return sub_1ABA7D000();
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsLocNames.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t sub_1ABE2BFB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x497972616D6D7573 && a2 == 0xEC000000736F666ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x417972616D6D7573 && a2 == 0xEE00656D69546C6CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001ABF92B80 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x55746E6572727563 && a2 == 0xEB00000000726573;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001ABF91C60 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000016 && 0x80000001ABF91C80 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000025 && 0x80000001ABF92BA0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000023 && 0x80000001ABF92BD0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000024 && 0x80000001ABF92C00 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000023 && 0x80000001ABF92C30 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE2C3A4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x497972616D6D7573;
      break;
    case 2:
      result = 0x417972616D6D7573;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x55746E6572727563;
      break;
    case 6:
      result = 0x6E6F6974616C6572;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE2C54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE2BFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE2C574(uint64_t a1)
{
  v2 = sub_1ABE2C978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2C5B0(uint64_t a1)
{
  v2 = sub_1ABE2C978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonEntityCard.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DAAE0, &qword_1ABF691A0);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v36 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v36[21] = v1[2];
  v36[22] = v11;
  v14 = v1[5];
  v36[19] = v1[4];
  v36[20] = v13;
  v15 = v1[6];
  v16 = v1[7];
  v36[17] = v14;
  v36[18] = v15;
  v17 = v1[8];
  v18 = v1[9];
  v36[15] = v16;
  v36[16] = v17;
  v19 = v1[10];
  v20 = v1[11];
  v36[13] = v18;
  v36[14] = v19;
  v21 = v1[12];
  v22 = v1[13];
  v36[11] = v20;
  v36[12] = v21;
  v23 = v1[15];
  v36[9] = v1[14];
  v36[10] = v22;
  v24 = v1[17];
  v36[7] = v1[16];
  v36[8] = v23;
  v25 = v1[19];
  v36[5] = v1[18];
  v36[6] = v24;
  v36[4] = v25;
  v26 = v1[21];
  v36[3] = v1[20];
  v36[2] = v26;
  v27 = v1[23];
  v36[1] = v1[22];
  v28 = v1[24];
  v30 = a1[3];
  v29 = a1[4];
  v31 = a1;
  v33 = v32;
  sub_1ABA93E20(v31, v30);
  sub_1ABE2C978();
  sub_1ABF252E4();
  v50 = 0;
  v34 = v37;
  sub_1ABF24FA4();
  if (!v34)
  {
    v37 = v28;
    v49 = 1;
    sub_1ABA7C740();
    v48 = 2;
    sub_1ABA7C740();
    v47 = 3;
    sub_1ABA7C740();
    v46 = 4;
    sub_1ABA7C740();
    v45 = 5;
    sub_1ABA7C740();
    v44 = 6;
    sub_1ABA7C740();
    v43 = 7;
    sub_1ABA7C740();
    v42 = 8;
    sub_1ABA7C740();
    v41 = 9;
    sub_1ABA7C740();
    v40 = 10;
    sub_1ABF24ED4();
    v39 = 11;
    sub_1ABF24ED4();
    v38 = 12;
    sub_1ABF24ED4();
  }

  return (*(v6 + 8))(v10, v33);
}

unint64_t sub_1ABE2C978()
{
  result = qword_1EB4DAAE8;
  if (!qword_1EB4DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAE8);
  }

  return result;
}

uint64_t PersonEntityCard.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DAAF0, &qword_1ABF691A8);
  v6 = sub_1ABA7BB64(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  v52 = a1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE2C978();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA7DF24();
    sub_1ABA8ED2C();
    sub_1ABA84B54(a1);
  }

  else
  {
    LOBYTE(v57[0]) = 0;
    v10 = sub_1ABF24E84();
    sub_1ABA8FA88(1);
    v11 = sub_1ABF24DB4();
    v51 = v12;
    sub_1ABA8FA88(2);
    v13 = sub_1ABF24DB4();
    v50 = v14;
    sub_1ABA8FA88(3);
    v48 = sub_1ABF24DB4();
    v49 = v15;
    sub_1ABA8FA88(4);
    v47 = sub_1ABF24DB4();
    v17 = v16;
    sub_1ABA8FA88(5);
    v45 = sub_1ABF24DB4();
    v46 = v11;
    v19 = v18;
    sub_1ABA8FA88(6);
    v43 = sub_1ABF24DB4();
    v44 = v10;
    v21 = v20;
    sub_1ABA8FA88(7);
    v40 = sub_1ABF24DB4();
    v42 = v22;
    sub_1ABA8FA88(8);
    v39 = sub_1ABF24DB4();
    v41 = v23;
    v38 = a2;
    sub_1ABA8FA88(9);
    v24 = sub_1ABF24DB4();
    v55 = v25;
    v26 = v24;
    sub_1ABA8FA88(10);
    v37 = sub_1ABF24DB4();
    v54 = v27;
    sub_1ABA8FA88(11);
    v36 = sub_1ABF24DB4();
    v53 = v28;
    v58 = 12;
    v29 = sub_1ABF24DB4();
    v35 = v30;
    v31 = v29;
    v32 = sub_1ABA7F948();
    v33(v32);
    v56[0] = v44;
    v56[1] = v46;
    v56[2] = v51;
    v56[3] = v13;
    v56[4] = v50;
    v56[5] = v48;
    v56[6] = v49;
    v56[7] = v47;
    v56[8] = v17;
    v56[9] = v45;
    v56[10] = v19;
    v56[11] = v43;
    v56[12] = v21;
    v56[13] = v40;
    v56[14] = v42;
    v56[15] = v39;
    v56[16] = v41;
    v56[17] = v26;
    v56[18] = v55;
    v56[19] = v37;
    v56[20] = v54;
    v56[21] = v36;
    v56[22] = v53;
    v56[23] = v31;
    v56[24] = v35;
    memcpy(v38, v56, 0xC8uLL);
    sub_1ABE2CF68(v56, v57);
    sub_1ABA84B54(v52);
    v57[0] = v44;
    v57[1] = v46;
    v57[2] = v51;
    v57[3] = v13;
    v57[4] = v50;
    v57[5] = v48;
    v57[6] = v49;
    v57[7] = v47;
    v57[8] = v17;
    v57[9] = v45;
    v57[10] = v19;
    v57[11] = v43;
    v57[12] = v21;
    v57[13] = v40;
    v57[14] = v42;
    v57[15] = v39;
    v57[16] = v41;
    v57[17] = v26;
    v57[18] = v55;
    v57[19] = v37;
    v57[20] = v54;
    v57[21] = v36;
    v57[22] = v53;
    v57[23] = v31;
    v57[24] = v35;
    return sub_1ABE2CFA0(v57);
  }
}

uint64_t sub_1ABE2D000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE2E044();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE2D068()
{
  sub_1ABE2DFF0();

  return sub_1ABF22804();
}

uint64_t sub_1ABE2D15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE2DF9C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ViewService.personEntityCardsView.getter(void *a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v17[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1ABE2D338(v6, v13, v14, a1);
    }
  }

  else
  {
    v15 = v17[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1ABE2D338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0x80000001ABF92C80;
    v10 = 0xD000000000000016;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t ViewService.PersonEntityCardsView.getEntityCard(personId:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  swift_getObjectType();
  return sub_1ABF22464();
}

void *sub_1ABE2D484@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24[1] = a1;
  v24[0] = a4;
  v6 = sub_1ABAD219C(&qword_1EB4DAB48, &qword_1ABF695B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DAB50, &unk_1ABF695C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v17 = *(a2 + 8);
  v16 = *(a2 + 16);

  sub_1ABF22D04();
  v27[0] = a3;
  LOBYTE(v27[1]) = 0;
  sub_1ABF22C84();
  sub_1ABAB47C4(&qword_1EB4DAB58, &qword_1EB4DAB48, &qword_1ABF695B8);
  sub_1ABE2E098();
  v18 = v24[2];
  sub_1ABF22244();
  if (v18)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    memcpy(v27, v28, sizeof(v27));
    if (sub_1ABE06C14(v27) != 1)
    {
      (*(v12 + 8))(v15, v11);
      return memcpy(v24[0], v27, 0xC8uLL);
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1ABF24AB4();

    v25 = 0xD00000000000001FLL;
    v26 = 0x80000001ABF92C60;
    v29 = a3;
    v19 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v19);

    v20 = v25;
    v21 = v26;
    sub_1ABB93C20();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    swift_willThrow();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t ViewService.PersonEntityCardsView.getEntityCards(personIds:)()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 4);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DAAF8, &qword_1ABF691B0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ABE2D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a1;
  v21 = a4;
  v22 = sub_1ABAD219C(&qword_1EB4DAB48, &qword_1ABF695B8);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DAB50, &unk_1ABF695C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);

  sub_1ABF22D04();
  v26[6] = a3;
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v25);
  sub_1ABF22D24();
  v26[3] = sub_1ABF22424();
  v26[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v26);
  sub_1ABAD219C(&qword_1EB4DA6D8, &qword_1ABF672A8);
  sub_1ABAB47C4(&qword_1EB4DA6E0, &qword_1EB4DA6D8, &qword_1ABF672A8);
  sub_1ABF23EE4();
  sub_1ABA84B54(v25);
  sub_1ABF22CA4();
  sub_1ABA84B54(v26);
  sub_1ABAB47C4(&qword_1EB4DAB58, &qword_1EB4DAB48, &qword_1ABF695B8);
  sub_1ABE2E098();
  v17 = v22;
  v18 = v24;
  v19 = sub_1ABF22234();
  (*(v6 + 8))(v9, v17);
  result = (*(v11 + 8))(v14, v10);
  if (!v18)
  {
    *v21 = v19;
  }

  return result;
}

unint64_t sub_1ABE2DBB4()
{
  result = qword_1EB4DAB00;
  if (!qword_1EB4DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB00);
  }

  return result;
}

unint64_t sub_1ABE2DC0C()
{
  result = qword_1EB4DAB08;
  if (!qword_1EB4DAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB08);
  }

  return result;
}

unint64_t sub_1ABE2DC64()
{
  result = qword_1EB4DAB10;
  if (!qword_1EB4DAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB10);
  }

  return result;
}

uint64_t sub_1ABE2DCC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE2DD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonEntityCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE2DE98()
{
  result = qword_1EB4DAB18;
  if (!qword_1EB4DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB18);
  }

  return result;
}

unint64_t sub_1ABE2DEF0()
{
  result = qword_1EB4DAB20;
  if (!qword_1EB4DAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB20);
  }

  return result;
}

unint64_t sub_1ABE2DF48()
{
  result = qword_1EB4DAB28;
  if (!qword_1EB4DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB28);
  }

  return result;
}

unint64_t sub_1ABE2DF9C()
{
  result = qword_1EB4DAB30;
  if (!qword_1EB4DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB30);
  }

  return result;
}

unint64_t sub_1ABE2DFF0()
{
  result = qword_1EB4DAB38;
  if (!qword_1EB4DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB38);
  }

  return result;
}

unint64_t sub_1ABE2E044()
{
  result = qword_1EB4DAB40;
  if (!qword_1EB4DAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB40);
  }

  return result;
}

unint64_t sub_1ABE2E098()
{
  result = qword_1EB4DAB60;
  if (!qword_1EB4DAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB60);
  }

  return result;
}

IntelligencePlatform::PersonMatcherInferenceInterface::Input __swiftcall PersonMatcherInferenceInterface.Input.init(string:charList:)(Swift::String string, Swift::String charList)
{
  *v2 = string;
  v2[1] = charList;
  result.charList = charList;
  result.string = string;
  return result;
}

uint64_t sub_1ABE2E114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694C72616863 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE2E1D8(char a1)
{
  if (a1)
  {
    return 0x7473694C72616863;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1ABE2E214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE2E114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE2E23C(uint64_t a1)
{
  v2 = sub_1ABE2E410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2E278(uint64_t a1)
{
  v2 = sub_1ABE2E410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonMatcherInferenceInterface.Input.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DAB68, &qword_1ABF695D0);
  sub_1ABA7BB64(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE2E410();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABF24F34();
  }

  (*(v16 + 8))(v10, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE2E410()
{
  result = qword_1EB4DAB70;
  if (!qword_1EB4DAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB70);
  }

  return result;
}

void PersonMatcherInferenceInterface.Input.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DAB78, &unk_1ABF695D8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = v2[3];
  v12 = v2[4];
  sub_1ABA80908(v2);
  sub_1ABE2E410();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v13 = sub_1ABF24E14();
    v15 = v14;
    v16 = sub_1ABF24E14();
    v18 = v17;
    v19 = *(v7 + 8);
    v22 = v16;
    v20 = sub_1ABA8C53C();
    v21(v20);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v22;
    v4[3] = v18;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t PersonMatcherInferenceInterface.Output.embedding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1ABE2E6CC(uint64_t a1)
{
  v2 = sub_1ABE2E8AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2E708(uint64_t a1)
{
  v2 = sub_1ABE2E8AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonMatcherInferenceInterface.Output.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DAB80, &qword_1ABF695E8);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE2E8AC();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABE2EB90(&qword_1EB4DA4A8);
  sub_1ABF24F84();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1ABE2E8AC()
{
  result = qword_1EB4DAB88;
  if (!qword_1EB4DAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB88);
  }

  return result;
}

void PersonMatcherInferenceInterface.Output.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v24 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BB64(v5);
  v25 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v23 - v10;
  v11 = sub_1ABAD219C(&qword_1EB4DAB90, &qword_1ABF695F0);
  sub_1ABA7BB64(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7E358();
  v17 = type metadata accessor for PersonMatcherInferenceInterface.Output();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE2E8AC();
  sub_1ABF252C4();
  if (!v0)
  {
    v22 = v25;
    sub_1ABE2EB90(&qword_1EB4DA4B8);
    sub_1ABF24E64();
    (*(v13 + 8))(v1, v11);
    (*(v22 + 32))(v20, v26, v5);
    sub_1ABE2EBFC(v20, v24);
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t type metadata accessor for PersonMatcherInferenceInterface.Output()
{
  result = qword_1EB4CEB88;
  if (!qword_1EB4CEB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABE2EB90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1AA8, &qword_1ABF661A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABE2EBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonMatcherInferenceInterface.Output();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE2EC98(uint64_t a1)
{
  v2 = sub_1ABE2EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2ECD4(uint64_t a1)
{
  v2 = sub_1ABE2EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE2ED10(uint64_t a1)
{
  v2 = sub_1ABE2EF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2ED4C(uint64_t a1)
{
  v2 = sub_1ABE2EF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonMatcherInferenceInterface.Errors.InitError.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DAB98, &qword_1ABF695F8);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABAD219C(&qword_1EB4DABA0, &qword_1ABF69600);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v1[3];
  v13 = v1[4];
  sub_1ABA80908(v1);
  sub_1ABE2EEF4();
  sub_1ABA8E46C();
  sub_1ABE2EF48();
  sub_1ABAA5A1C();
  v14 = sub_1ABA7F7CC();
  v15(v14);
  v16 = *(v8 + 8);
  v17 = sub_1ABA8C53C();
  v18(v17);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE2EEF4()
{
  result = qword_1EB4DABA8;
  if (!qword_1EB4DABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABA8);
  }

  return result;
}

unint64_t sub_1ABE2EF48()
{
  result = qword_1EB4DABB0;
  if (!qword_1EB4DABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABB0);
  }

  return result;
}

void PersonMatcherInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DABB8, &qword_1ABF69608);
  sub_1ABA7BB64(v4);
  v39 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DABC0, &unk_1ABF69610);
  sub_1ABA7BB64(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E358();
  v15 = v3[3];
  v16 = v3[4];
  sub_1ABA80908(v3);
  sub_1ABE2EEF4();
  sub_1ABA90AC4();
  if (v0)
  {
    goto LABEL_10;
  }

  v37[1] = v10;
  v38 = v3;
  v17 = sub_1ABF24EA4();
  v18 = sub_1ABAD4EA4(v17, 0);
  if (v20 == v19 >> 1)
  {
    v39 = v18;
LABEL_9:
    v28 = sub_1ABF24B44();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v30 = &type metadata for PersonMatcherInferenceInterface.Errors.InitError;
    sub_1ABF24DA4();
    sub_1ABA81B6C();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_1ABA7F7CC();
    v33(v32);
    v3 = v38;
LABEL_10:
    v36 = v3;
    goto LABEL_11;
  }

  sub_1ABA94CE0();
  if (v22 == v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_1ABA8E438(v21);
  sub_1ABAD4E90(v24);
  sub_1ABA97D50();
  v25 = v16 == v15 >> 1;
  v26 = v38;
  v27 = v39;
  if (!v25)
  {
    v39 = v1;
    goto LABEL_9;
  }

  sub_1ABE2EF48();
  sub_1ABA83BC4();
  swift_unknownObjectRelease();
  (*(v27 + 8))(v16, v4);
  v34 = sub_1ABA81020();
  v35(v34);
  v36 = v26;
LABEL_11:
  sub_1ABA84B54(v36);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE2F2B8(uint64_t a1)
{
  v2 = sub_1ABE2F874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2F2F4(uint64_t a1)
{
  v2 = sub_1ABE2F874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE2F330(uint64_t a1)
{
  v2 = sub_1ABE2F8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2F36C(uint64_t a1)
{
  v2 = sub_1ABE2F8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonMatcherInferenceInterface.Errors.RunError.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DABC8, &qword_1ABF69620);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABAD219C(&qword_1EB4DABD0, &qword_1ABF69628);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v1[3];
  v13 = v1[4];
  sub_1ABA80908(v1);
  sub_1ABE2F874();
  sub_1ABA8E46C();
  sub_1ABE2F8C8();
  sub_1ABAA5A1C();
  v14 = sub_1ABA7F7CC();
  v15(v14);
  v16 = *(v8 + 8);
  v17 = sub_1ABA8C53C();
  v18(v17);
  sub_1ABA7BC90();
}

void PersonMatcherInferenceInterface.Errors.RunError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DABE8, &qword_1ABF69630);
  sub_1ABA7BB64(v4);
  v39 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DABF0, &qword_1ABF69638);
  sub_1ABA7BB64(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E358();
  v15 = v3[3];
  v16 = v3[4];
  sub_1ABA80908(v3);
  sub_1ABE2F874();
  sub_1ABA90AC4();
  if (v0)
  {
    goto LABEL_10;
  }

  v37[1] = v10;
  v38 = v3;
  v17 = sub_1ABF24EA4();
  v18 = sub_1ABAD4EA4(v17, 0);
  if (v20 == v19 >> 1)
  {
    v39 = v18;
LABEL_9:
    v28 = sub_1ABF24B44();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v30 = &type metadata for PersonMatcherInferenceInterface.Errors.RunError;
    sub_1ABF24DA4();
    sub_1ABA81B6C();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_1ABA7F7CC();
    v33(v32);
    v3 = v38;
LABEL_10:
    v36 = v3;
    goto LABEL_11;
  }

  sub_1ABA94CE0();
  if (v22 == v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_1ABA8E438(v21);
  sub_1ABAD4E90(v24);
  sub_1ABA97D50();
  v25 = v16 == v15 >> 1;
  v26 = v38;
  v27 = v39;
  if (!v25)
  {
    v39 = v1;
    goto LABEL_9;
  }

  sub_1ABE2F8C8();
  sub_1ABA83BC4();
  swift_unknownObjectRelease();
  (*(v27 + 8))(v16, v4);
  v34 = sub_1ABA81020();
  v35(v34);
  v36 = v26;
LABEL_11:
  sub_1ABA84B54(v36);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE2F874()
{
  result = qword_1EB4DABD8;
  if (!qword_1EB4DABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABD8);
  }

  return result;
}

unint64_t sub_1ABE2F8C8()
{
  result = qword_1EB4DABE0;
  if (!qword_1EB4DABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABE0);
  }

  return result;
}

unint64_t sub_1ABE2F920()
{
  result = qword_1EB4DABF8;
  if (!qword_1EB4DABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABF8);
  }

  return result;
}

unint64_t sub_1ABE2F978()
{
  result = qword_1EB4DAC00;
  if (!qword_1EB4DAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC00);
  }

  return result;
}

unint64_t sub_1ABE2F9D0()
{
  result = qword_1EB4DAC08;
  if (!qword_1EB4DAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC08);
  }

  return result;
}

unint64_t sub_1ABE2FA28()
{
  result = qword_1EB4DAC10;
  if (!qword_1EB4DAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC10);
  }

  return result;
}

unint64_t sub_1ABE2FA80()
{
  result = qword_1EB4DAC18;
  if (!qword_1EB4DAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC18);
  }

  return result;
}

_BYTE *sub_1ABE2FB7C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonMatcherInferenceInterface.Input.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE2FD08()
{
  result = qword_1EB4DAC20;
  if (!qword_1EB4DAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC20);
  }

  return result;
}

unint64_t sub_1ABE2FD60()
{
  result = qword_1EB4DAC28;
  if (!qword_1EB4DAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC28);
  }

  return result;
}

unint64_t sub_1ABE2FDB8()
{
  result = qword_1EB4DAC30;
  if (!qword_1EB4DAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC30);
  }

  return result;
}

unint64_t sub_1ABE2FE10()
{
  result = qword_1EB4DAC38;
  if (!qword_1EB4DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC38);
  }

  return result;
}

unint64_t sub_1ABE2FE68()
{
  result = qword_1EB4DAC40;
  if (!qword_1EB4DAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC40);
  }

  return result;
}

unint64_t sub_1ABE2FEC0()
{
  result = qword_1EB4DAC48;
  if (!qword_1EB4DAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC48);
  }

  return result;
}

unint64_t sub_1ABE2FF18()
{
  result = qword_1EB4DAC50;
  if (!qword_1EB4DAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC50);
  }

  return result;
}

unint64_t sub_1ABE2FF70()
{
  result = qword_1EB4DAC58;
  if (!qword_1EB4DAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC58);
  }

  return result;
}

unint64_t sub_1ABE2FFC8()
{
  result = qword_1EB4DAC60;
  if (!qword_1EB4DAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC60);
  }

  return result;
}

unint64_t sub_1ABE30020()
{
  result = qword_1EB4DAC68;
  if (!qword_1EB4DAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC68);
  }

  return result;
}

unint64_t sub_1ABE30078()
{
  result = qword_1EB4DAC70;
  if (!qword_1EB4DAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC70);
  }

  return result;
}

unint64_t sub_1ABE300D0()
{
  result = qword_1EB4DAC78;
  if (!qword_1EB4DAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC78);
  }

  return result;
}

unint64_t sub_1ABE30128()
{
  result = qword_1EB4DAC80;
  if (!qword_1EB4DAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC80);
  }

  return result;
}

unint64_t sub_1ABE30180()
{
  result = qword_1EB4DAC88;
  if (!qword_1EB4DAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC88);
  }

  return result;
}

unint64_t sub_1ABE301D8()
{
  result = qword_1EB4DAC90;
  if (!qword_1EB4DAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC90);
  }

  return result;
}

unint64_t sub_1ABE30230()
{
  result = qword_1EB4DAC98;
  if (!qword_1EB4DAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC98);
  }

  return result;
}

uint64_t sub_1ABE302B4(uint64_t a1)
{
  v2 = sub_1ABE30458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE302F0(uint64_t a1)
{
  v2 = sub_1ABE30458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonMatcherInferenceServiceDefinition.ConfigParameters.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DACA0, &qword_1ABF69F50);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE30458();
  sub_1ABF252E4();
  sub_1ABF24F34();
  v12 = *(v6 + 8);
  v13 = sub_1ABA805B4();
  return v14(v13);
}

unint64_t sub_1ABE30458()
{
  result = qword_1EB4DACA8;
  if (!qword_1EB4DACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACA8);
  }

  return result;
}

uint64_t PersonMatcherInferenceServiceDefinition.ConfigParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DACB0, &qword_1ABF69F58);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE30458();
  sub_1ABF252C4();
  if (!v2)
  {
    v12 = sub_1ABF24E14();
    v14 = v13;
    v15 = *(v8 + 8);
    v16 = sub_1ABA805B4();
    v17(v16);
    *a2 = v12;
    a2[1] = v14;
  }

  return sub_1ABA84B54(a1);
}

void PersonMatcherInferenceServiceDefinition.Runner.cost.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t sub_1ABE30650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1ABE3069C, 0, 0);
}

uint64_t sub_1ABE3069C()
{
  sub_1ABA7BC04();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  v4 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

  v5 = [v4 init];
  v0[7] = v5;
  [v5 setComputeUnits_];
  [v5 setAllowBackgroundGPUCompute_];
  v6 = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1ABE307EC;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1ABC20104(v10, v8, 0x614D6E6F73726570, 0xED00007265686374, v5);
}

uint64_t sub_1ABE307EC()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = v2[8];
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v9 + 72) = v8;
  *(v9 + 80) = v0;

  v10 = v2[7];
  v11 = v2[3];
  if (v0)
  {

    v12 = sub_1ABE021DC;
  }

  else
  {

    v12 = sub_1ABE30944;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1ABE30944()
{
  v1 = v0[9];
  if (!v1)
  {
    v3 = v0[7];
    sub_1ABE2F9D0();
    swift_allocError();
    swift_willThrow();

    v4 = v0[6];
    v5 = v0[4];
    v6 = *(v0[5] + 136);

    swift_defaultActor_destroy();

    sub_1ABA83C0C();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[5];
  *(v2 + 144) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABE02160, v2, 0);
}

uint64_t PersonMatcherInferenceServiceDefinition.Runner.run(input:context:)()
{
  sub_1ABA7BC04();
  v3 = v2;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  v5 = *(*(sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0) - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v6 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  *(v1 + 128) = v6;
  v7 = *(v6 - 8);
  *(v1 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *v3;
  *(v1 + 160) = v9;
  *(v1 + 168) = v10;
  *(v1 + 176) = *(v3 + 1);
  *(v1 + 192) = v3[3];

  return MEMORY[0x1EEE6DFA0](sub_1ABE30B98, v0, 0);
}

uint64_t sub_1ABE30B98()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[16];
  String.oneHotEncoding(charList:)(v0[23], v0[24], v3);
  if (sub_1ABA7E1E0(v3, 1, v4) == 1)
  {
    sub_1ABBE0A90(v0[15]);
    sub_1ABE2FA28();
    swift_allocError();
    swift_willThrow();
    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[18];
    v23 = v0[14];
    v22 = v0[15];

    sub_1ABA7BBE0();

    return v24();
  }

  else
  {
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[15];
    v10 = *(v8 + 32);
    v0[25] = v10;
    v0[26] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v6, v9, v7);
    sub_1ABAD219C(&qword_1EB4DACB8, &qword_1ABF69F68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 32) = 0x315F7475706E69;
    *(inited + 40) = 0xE700000000000000;
    v12 = sub_1ABE315E8();
    (*(v8 + 16))(v5, v6, v7);
    sub_1ABA8FA9C();
    sub_1ABAB47C4(v13, v14, v15);
    v16 = sub_1ABF24634();
    *(inited + 72) = v12;
    *(inited + 48) = v16;
    sub_1ABF239C4();
    v17 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v18 = sub_1ABDF9974();
    v0[27] = v18;
    v26 = *(v0[13] + 144);
    v27 = v18;
    v28 = swift_task_alloc();
    v0[28] = v28;
    *v28 = v0;
    v28[1] = sub_1ABE30E78;

    return sub_1ABDF7E7C(v27);
  }
}

uint64_t sub_1ABE30E78()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = v2[28];
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v9 + 232) = v8;
  *(v9 + 240) = v0;

  v10 = v2[27];
  v11 = v2[13];

  if (v0)
  {
    v12 = sub_1ABE311F8;
  }

  else
  {
    v12 = sub_1ABE30FBC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1ABE30FBC()
{
  v1 = v0[29];
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];

  v4 = v0[16];
  v5 = v0[14];
  if (!v3)
  {
    sub_1ABA7B9B4(v0[14], 1, 1, v0[16]);
    goto LABEL_7;
  }

  v6 = v0[14];
  sub_1ABF24694();

  if (sub_1ABA7E1E0(v5, 1, v4) == 1)
  {
LABEL_7:
    sub_1ABBE0A90(v0[14]);
    return sub_1ABF24CD4();
  }

  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];
  v10 = v0[25];
  v11 = v0[19];
  v12 = v0[18];
  v13 = v0[16];
  v14 = v0[14];
  v15 = v0[12];
  (*(v0[17] + 8))(v0[20], v13);
  swift_unknownObjectRelease();

  v10(v12, v14, v13);
  v10(v15, v12, v13);
  v16 = v15 + *(sub_1ABAD219C(&qword_1EB4DACC0, &unk_1ABF69F70) + 28);
  *v16 = 0;
  *(v16 + 8) = 1;

  sub_1ABA7BBE0();

  return v17();
}

uint64_t sub_1ABE311F8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 240);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  sub_1ABA7BBE0();

  return v10();
}

uint64_t String.oneHotEncoding(charList:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  v6 = sub_1ABA7BB64(v5);
  v35 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - v10;
  LODWORD(v49) = 0;
  v42 = sub_1ABAD219C(&qword_1EB4D1378, &qword_1ABF33500);
  v12 = swift_allocObject();
  v41 = xmmword_1ABF3BFC0;
  *(v12 + 16) = xmmword_1ABF3BFC0;
  *(v12 + 32) = 1;
  *(v12 + 40) = sub_1ABF23D44();
  sub_1ABA805B4();
  *(v12 + 48) = sub_1ABF23D44();
  sub_1ABA8FA9C();
  sub_1ABAB47C4(v13, &qword_1EB4D1AA8, &qword_1ABF661A0);
  v43 = v11;
  v14 = v5;
  sub_1ABF23854();
  v15 = sub_1ABF23C84();
  v17 = 0;
  v18 = 0;
  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v49 = v15;
  v50 = v16;
  v51 = 0;
  v52 = v19;
  v20 = HIBYTE(a2) & 0xF;
  v38 = a1;
  v39 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v37 = v20;
LABEL_6:
  result = sub_1ABF23DE4();
  if (!v22)
  {

    if (v18)
    {
      v33 = v36;
      (*(v35 + 32))(v36, v43, v14);
      v34 = 0;
    }

    else
    {
      (*(v35 + 8))(v43, v14);
      v34 = 1;
      v33 = v36;
    }

    return sub_1ABA7B9B4(v33, v34, 1, v14);
  }

  if (__OFADD__(v17, 1))
  {
    goto LABEL_26;
  }

  v23 = result;
  v24 = v22;
  v40 = v17 + 1;
  v45 = v38;
  v46 = v39;
  v47 = 0;
  v48 = v37;

  for (i = 0; ; ++i)
  {
    result = sub_1ABF23DE4();
    if (!v26)
    {

      v17 = v40;
      goto LABEL_6;
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v27 = result;
    v28 = v26;
    v29 = objc_autoreleasePoolPush();
    if (v23 == v27 && v24 == v28)
    {

LABEL_18:
      v32 = swift_allocObject();
      *(v32 + 16) = v41;
      *(v32 + 32) = 0;
      *(v32 + 40) = v17;
      *(v32 + 48) = i;
      v44 = 1065353216;
      sub_1ABF23844();
      v18 = 1;
      goto LABEL_19;
    }

    v31 = sub_1ABF25054();

    if (v31)
    {
      goto LABEL_18;
    }

LABEL_19:
    objc_autoreleasePoolPop(v29);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1ABE315E8()
{
  result = qword_1EB4DA268;
  if (!qword_1EB4DA268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4DA268);
  }

  return result;
}

uint64_t PersonMatcherInferenceServiceDefinition.Runner.deinit()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonMatcherInferenceServiceDefinition.Runner.__deallocating_deinit()
{
  PersonMatcherInferenceServiceDefinition.Runner.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABE316D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABE3177C;

  return PersonMatcherInferenceServiceDefinition.Runner.run(input:context:)();
}

uint64_t sub_1ABE3177C()
{
  sub_1ABA7BBF8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1ABA7D4E0();
  *v3 = v2;

  sub_1ABA7BBE0();

  return v4();
}

uint64_t static PersonMatcherInferenceServiceDefinition.buildRunner(config:context:)()
{
  sub_1ABA7BBF8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v0[2] = v4;
  v0[3] = v2;
  v0[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABE318D4, 0, 0);
}

uint64_t sub_1ABE318D4()
{
  sub_1ABA7BC04();
  v1 = v0[2];
  type metadata accessor for PersonMatcherInferenceServiceDefinition.Runner();
  swift_allocObject();

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1ABE31998;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_1ABE30650(v4, v3, v5);
}

uint64_t sub_1ABE31998()
{
  sub_1ABA7BBF8();
  v3 = v2;
  v4 = *(*v1 + 40);
  v5 = *v1;
  sub_1ABA7D4E0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_1ABE31AB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABE31B50;

  return static PersonMatcherInferenceServiceDefinition.buildRunner(config:context:)();
}

uint64_t sub_1ABE31B50()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v1;
  sub_1ABA7D4E0();
  *v9 = v8;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v10 = *(v8 + 8);

  return v10();
}

unint64_t sub_1ABE31C78(uint64_t a1)
{
  *(a1 + 8) = sub_1ABE31CA8();
  result = sub_1ABE31CFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE31CA8()
{
  result = qword_1EB4DACC8;
  if (!qword_1EB4DACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACC8);
  }

  return result;
}

unint64_t sub_1ABE31CFC()
{
  result = qword_1EB4DACD0;
  if (!qword_1EB4DACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACD0);
  }

  return result;
}

unint64_t sub_1ABE31D50(uint64_t a1)
{
  result = sub_1ABE31D78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE31D78()
{
  result = qword_1EB4DACD8;
  if (!qword_1EB4DACD8)
  {
    type metadata accessor for PersonMatcherInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACD8);
  }

  return result;
}

unint64_t sub_1ABE31E14()
{
  result = qword_1EB4DACE8;
  if (!qword_1EB4DACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACE8);
  }

  return result;
}

unint64_t sub_1ABE31E6C()
{
  result = qword_1EB4DACF0;
  if (!qword_1EB4DACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACF0);
  }

  return result;
}

_BYTE *sub_1ABE31EF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE31FA4()
{
  result = qword_1EB4DACF8;
  if (!qword_1EB4DACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACF8);
  }

  return result;
}

unint64_t sub_1ABE31FFC()
{
  result = qword_1EB4DAD00;
  if (!qword_1EB4DAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD00);
  }

  return result;
}

unint64_t sub_1ABE32054()
{
  result = qword_1EB4DAD08;
  if (!qword_1EB4DAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD08);
  }

  return result;
}

uint64_t sub_1ABE320AC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A32C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE3401C(v6);
  *a1 = v2;
  return result;
}

uint64_t PersonRankingServiceError.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000034;
  }

  result = sub_1ABF250D4();
  __break(1u);
  return result;
}

uint64_t sub_1ABE321A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1ABE321F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = PersonRankingServiceError.init(rawValue:)();
  *a2 = 0;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1ABE3222C(uint64_t a1)
{
  v2 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1ABE32268(uint64_t a1)
{
  v2 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1ABE322E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id PersonRankingService.__allocating_init(config:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20IntelligencePlatform20PersonRankingService_config] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonRankingService.init(config:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform20PersonRankingService_config] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonRankingService();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1ABE32418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696D696C6E75 && a2 == 0xE900000000000064;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE324E8(char a1)
{
  if (a1)
  {
    return 7368564;
  }

  else
  {
    return 0x6574696D696C6E75;
  }
}

uint64_t sub_1ABE32524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE32418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE3254C(uint64_t a1)
{
  v2 = sub_1ABE32980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE32588(uint64_t a1)
{
  v2 = sub_1ABE32980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE325C4(uint64_t a1)
{
  v2 = sub_1ABE329D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE32600(uint64_t a1)
{
  v2 = sub_1ABE329D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE3263C(uint64_t a1)
{
  v2 = sub_1ABE32A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE32678(uint64_t a1)
{
  v2 = sub_1ABE32A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonRankingService.RankingMode.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DAD18, &qword_1ABF6A250);
  v4 = sub_1ABA7BB64(v3);
  v35 = v5;
  v36 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v34 = v31 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4DAD20, &qword_1ABF6A258);
  v11 = sub_1ABA7BB64(v10);
  v32 = v12;
  v33 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4DAD28, &qword_1ABF6A260);
  sub_1ABA7BB64(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v31 - v24;
  v31[1] = *v1;
  v26 = *(v1 + 8);
  v27 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE32980();
  sub_1ABF252E4();
  if (v26 == 1)
  {
    v37 = 0;
    sub_1ABE32A28();
    sub_1ABF24EC4();
    (*(v32 + 8))(v17, v33);
  }

  else
  {
    v38 = 1;
    sub_1ABE329D4();
    v29 = v34;
    sub_1ABF24EC4();
    v30 = v36;
    sub_1ABF24F74();
    (*(v35 + 8))(v29, v30);
  }

  return (*(v20 + 8))(v25, v18);
}

unint64_t sub_1ABE32980()
{
  result = qword_1EB4DAD30;
  if (!qword_1EB4DAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD30);
  }

  return result;
}

unint64_t sub_1ABE329D4()
{
  result = qword_1EB4DAD38;
  if (!qword_1EB4DAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD38);
  }

  return result;
}

unint64_t sub_1ABE32A28()
{
  result = qword_1EB4DAD40;
  if (!qword_1EB4DAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD40);
  }

  return result;
}

uint64_t PersonRankingService.RankingMode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v61 = sub_1ABAD219C(&qword_1EB4DAD48, &qword_1ABF6A268);
  sub_1ABA7BB64(v61);
  v59 = v3;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4DAD50, &qword_1ABF6A270);
  sub_1ABA7BB64(v9);
  v57 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4DAD58, &qword_1ABF6A278);
  sub_1ABA7BB64(v16);
  v60 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE32980();
  v24 = v62;
  sub_1ABF252C4();
  if (v24)
  {
    goto LABEL_9;
  }

  v54 = v9;
  v55 = v15;
  v56 = a1;
  v25 = v61;
  v62 = v22;
  v26 = sub_1ABF24EA4();
  result = sub_1ABAD4EA4(v26, 0);
  if (v29 == v30 >> 1)
  {
LABEL_8:
    v40 = sub_1ABF24B44();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v42 = &type metadata for PersonRankingService.RankingMode;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = sub_1ABA7F958();
    v45(v44, v16);
    a1 = v56;
LABEL_9:
    v46 = a1;
    return sub_1ABA84B54(v46);
  }

  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_1ABAD4E90(v29 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    v36 = v33 == v35 >> 1;
    v37 = v59;
    if (v36)
    {
      v63 = v31;
      if (v31)
      {
        v65 = 1;
        sub_1ABE329D4();
        v38 = v8;
        sub_1ABA939A8();
        v39 = v58;
        v48 = sub_1ABF24E54();
        v49 = v60;
        v52 = v48;
        swift_unknownObjectRelease();
        (*(v37 + 8))(v38, v25);
        (*(v49 + 8))(v62, v16);
      }

      else
      {
        v64 = 0;
        sub_1ABE32A28();
        v47 = v55;
        sub_1ABA939A8();
        v39 = v58;
        swift_unknownObjectRelease();
        (*(v57 + 8))(v47, v54);
        v50 = sub_1ABA7F958();
        v51(v50, v16);
        v52 = 0;
      }

      *v39 = v52;
      *(v39 + 8) = v63 ^ 1;
      v46 = v56;
      return sub_1ABA84B54(v46);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE32FB8(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  return sub_1ABE330AC(&v2);
}

uint64_t sub_1ABE330AC(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  LOBYTE(__src[0]) = 1;
  v5 = type metadata accessor for ViewService();
  v6 = static ViewService.clientService.getter(v5);
  type metadata accessor for EntityResolutionRankingService();
  swift_allocObject();
  EntityResolutionRankingService.init(config:viewService:)(__src, v6);
  if (v1)
  {
    return v2;
  }

  sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityClass_records)
  {
    v8 = inited;
    HIDWORD(v56) = v4;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v63);
    v9 = v64;
    v10 = v65;
    v11 = v66;
    *(v8 + 32) = v63;
    *(v8 + 48) = v9;
    *(v8 + 56) = v10;
    *(v8 + 64) = v11;
    sub_1ABA8DEF4(v8, v12, v13, v14, v15, v16, v17, v18, v54, v55, v56, v3, SBYTE4(v3));
    v20 = v19;
    sub_1ABB3E374(0, 0, 0, 0, 16711680);
    v67 = 1;
    __src[0] = v20;
    memset(&__src[1], 0, 34);
    BYTE2(__src[5]) = -1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 2;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    memcpy(__dst, __src, 0x49uLL);
    sub_1ABBC84B4(0, __dst, &v61);
    v21 = v61;
    sub_1ABB668FC();
    v22 = sub_1ABF239C4();
    v23 = sub_1ABAAB7C8(v21);
    v24 = 0;
    v58 = v21 & 0xC000000000000001;
    v59 = v21;
    v57 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23 == v24)
      {

        sub_1ABE3367C(v22);

        v39 = sub_1ABA81124();
        v2 = sub_1ABE33C90(v39, v40);
        sub_1ABB3E408(__src);

        return v2;
      }

      if (v58)
      {
        v25 = MEMORY[0x1AC5AA170](v24, v59);
      }

      else
      {
        if (v24 >= *(v57 + 16))
        {
          goto LABEL_27;
        }

        v25 = *(v59 + 8 * v24 + 32);
      }

      if (__OFADD__(v24, 1))
      {
        break;
      }

      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v22;
      v28 = sub_1ABAF81A8();
      v30 = v22[2];
      v31 = (v29 & 1) == 0;
      v22 = (v30 + v31);
      if (__OFADD__(v30, v31))
      {
        goto LABEL_28;
      }

      v32 = v28;
      v33 = v29;
      sub_1ABAD219C(&qword_1EB4D5700, &qword_1ABF4AD08);
      if (sub_1ABF24C64())
      {
        v34 = sub_1ABAF81A8();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_31;
        }

        v32 = v34;
      }

      v22 = __dst[0];
      if (v33)
      {
        *(*(__dst[0] + 56) + 8 * v32) = v27;
      }

      else
      {
        *(__dst[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(v22[6] + 8 * v32) = v26;
        *(v22[7] + 8 * v32) = v27;

        v36 = v22[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_29;
        }

        v22[2] = v38;
      }

      ++v24;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    swift_once();
    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1EB4CE7C8);
    v42 = v22;
    v43 = sub_1ABF237D4();
    v44 = sub_1ABF24684();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v22;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v45;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_1ABA78000, v43, v44, "Error in fetching ranked entities: %@", v46, 0xCu);
      sub_1ABB24B18(v47);
      MEMORY[0x1AC5AB8B0](v47, -1, -1);
      v50 = v46;
      v22 = v45;
      MEMORY[0x1AC5AB8B0](v50, -1, -1);
    }

    sub_1ABB668FC();
    v2 = sub_1ABF239C4();
    sub_1ABE3367C(v2);

    if (v23)
    {

      sub_1ABB3E408(__src);
    }

    else
    {
      v51 = sub_1ABA81124();
      v2 = sub_1ABE33C90(v51, v52);
      sub_1ABB3E408(__src);
    }

    return v2;
  }

  __break(1u);
LABEL_31:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE3367C(uint64_t a1)
{
  v4 = type metadata accessor for ViewService();
  v5 = static ViewService.clientService.getter(v4);
  ViewService.entityImportanceSignalsView.getter(v28);

  if (!v1)
  {
    v25 = a1;
    v30[0] = v28[0];
    v30[1] = v28[1];
    v31 = v29;
    *&v28[0] = MEMORY[0x1E69E7CC0];
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    sub_1ABAD219C(&qword_1EB4D3BB8, &qword_1ABF3F758);
    sub_1ABF22464();

    v8 = *(v27 + 16);
    if (v8)
    {
      v9 = (v27 + 56);
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *(v9 - 16);
        v11 = *(v9 - 15);
        v12 = *(v9 - 14);
        v13 = *(v9 - 1);
        v14 = *v9;
        v15 = 0.0;
        v26 = *(v9 - 3);
        if (*(v25 + 16))
        {
          v16 = sub_1ABAF81A8();
          if (v17)
          {
            v15 = *(*(v25 + 56) + 8 * v16);
          }
        }

        v18 = sub_1ABE3390C(v10, v11, v12, v13, v14, v15);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v2 + 16);
          sub_1ABADC9A8();
          v2 = v23;
        }

        v19 = *(v2 + 16);
        v20 = v26;
        if (v19 >= *(v2 + 24) >> 1)
        {
          sub_1ABADC9A8();
          v2 = v24;
          v20 = v26;
        }

        v9 += 4;
        *(v2 + 16) = v19 + 1;
        v21 = v2 + 16 * v19;
        *(v21 + 32) = v20;
        *(v21 + 40) = v18;
        --v8;
      }

      while (v8);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABE35058(v30);
  }

  return v2;
}

double sub_1ABE3390C(char a1, char a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *(v6 + OBJC_IVAR____TtC20IntelligencePlatform20PersonRankingService_config);
  [v13 isFavoriteMultiplier];
  v14 = 1;
  if (v15 != 0.0 && (a1 & 1) != 0)
  {
    [v13 isFavoriteMultiplier];
    a6 = v16 + a6;
    v14 = 2;
  }

  [v13 emergencyContactMultiplier];
  if (v17 != 0.0 && (a2 & 1) != 0)
  {
    [v13 emergencyContactMultiplier];
    a6 = a6 + v18;
    ++v14;
  }

  [v13 iCloudFamilyMemberMultiplier];
  if (v19 != 0.0 && (a3 & 1) != 0)
  {
    [v13 iCloudFamilyMemberMultiplier];
    a6 = a6 + v20;
    ++v14;
  }

  [v13 relationshipTagMultiplier];
  if (v21 != 0.0 && a5 != 0)
  {
    v27 = a4;
    v28 = a5;
    v25 = 0x726170646E617267;
    v26 = 0xEB00000000746E65;
    sub_1ABAE28EC();
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x72656E74726170;
    v26 = 0xE700000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0xD000000000000010;
    v26 = 0x80000001ABF92E80;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x646E65697266;
    v26 = 0xE600000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x746E65726170;
    v26 = 0xE600000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x796C696D6166;
    v26 = 0xE600000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x646C696863;
    v26 = 0xE500000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x676E696C626973;
    v26 = 0xE700000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x726574736973;
    v26 = 0xE600000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x726568746F7262;
    v26 = 0xE700000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x726568746F6DLL;
    v26 = 0xE600000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 0x726568746166;
    v26 = 0xE600000000000000;
    if (sub_1ABA8FAB4())
    {
      goto LABEL_28;
    }

    v27 = a4;
    v28 = a5;
    v25 = 7237491;
    v26 = 0xE300000000000000;
    if (sub_1ABA8FAB4() & 1) != 0 || (v27 = a4, v28 = a5, v25 = 0x7265746867756164, v26 = 0xE800000000000000, (sub_1ABA8FAB4()))
    {
LABEL_28:
      [v13 relationshipTagMultiplier];
      a6 = a6 + v23;
      ++v14;
    }
  }

  return a6 / v14;
}

uint64_t sub_1ABE33C90(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v33[0] = a1;

  sub_1ABE320AC(v33);
  v5 = v2;
  if (v2)
  {

    __break(1u);
    return result;
  }

  v6 = v33[0];
  v7 = *(v33[0] + 16);
  if (v7)
  {
    v32 = v3;
    v34 = 0;
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDFFC(0, v7, 0);
    v8 = v33[0];
    v9 = *(v33[0] + 16);
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      v33[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1ABADDFFC((v12 > 1), v9 + 1, 1);
        v8 = v33[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 8 * v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v7;
    }

    while (v7);

    v5 = v34;
    v3 = v32;
    if (v4)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      goto LABEL_19;
    }
  }

  v13 = sub_1ABD52C40(v3, v8);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ((v18 & 1) == 0)
  {
LABEL_11:
    sub_1ABB63444(v13, v15, v17, v19);
    v8 = v20;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_1ABF25094();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v19 >> 1, v17))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v22 != (v19 >> 1) - v17)
  {
LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

LABEL_19:
  v23 = type metadata accessor for ViewService();
  v24 = static ViewService.clientService.getter(v23);
  v25 = v24;
  v26 = ViewService.siriPersonView.getter();
  if (v5)
  {
  }

  else
  {
    v27 = v26;
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();

    v29 = sub_1ABAE6998(v28);
    v33[0] = v27;
    v33[1] = v29;
    SiriPersonView.fetchValues(entityIdentifier:)(v8);
    v25 = v31;
  }

  return v25;
}

id PersonRankingService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonRankingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonRankingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABE3401C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4DADD0, qword_1ABF6A7B0);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE34190(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABE34120(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABE34120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABE34190(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (*(v33 - 1) >= v31)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = v8[2];
        sub_1ABAD8820();
        v8 = v80;
      }

      v36 = v8[2];
      v37 = v36 + 1;
      if (v36 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v81;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_56:
            if (v46)
            {
              goto LABEL_96;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_99;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_104;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v37 < 2)
          {
            goto LABEL_98;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_71:
          if (v61)
          {
            goto LABEL_101;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_103;
          }

          if (v68 < v60)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1ABE347A0((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v75 < v73)
          {
            goto LABEL_91;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_92;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_93;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_85;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_94;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_95;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_97;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_100;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_105;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1ABE34674(&v87, *a1, a3);
LABEL_89:
}

uint64_t sub_1ABE34674(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABE347A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABE347A0(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1ABAE3050(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1ABAE3050(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v15 = v6 - 2;
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t sub_1ABE34928()
{
  result = qword_1EB4DAD60;
  if (!qword_1EB4DAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD60);
  }

  return result;
}

unint64_t sub_1ABE34980()
{
  result = qword_1EB4DAD68;
  if (!qword_1EB4DAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD68);
  }

  return result;
}

unint64_t sub_1ABE349DC()
{
  result = qword_1EB4DAD70;
  if (!qword_1EB4DAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD70);
  }

  return result;
}

unint64_t sub_1ABE34A38()
{
  result = qword_1EB4DAD78;
  if (!qword_1EB4DAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonRankingService.RankingMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonRankingService.RankingMode.TopCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE34D04()
{
  result = qword_1EB4DAD80;
  if (!qword_1EB4DAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD80);
  }

  return result;
}

unint64_t sub_1ABE34D5C()
{
  result = qword_1EB4DAD88;
  if (!qword_1EB4DAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD88);
  }

  return result;
}

unint64_t sub_1ABE34DB4()
{
  result = qword_1EB4DAD90;
  if (!qword_1EB4DAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD90);
  }

  return result;
}

unint64_t sub_1ABE34E0C()
{
  result = qword_1EB4DAD98;
  if (!qword_1EB4DAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD98);
  }

  return result;
}

unint64_t sub_1ABE34E64()
{
  result = qword_1EB4DADA0;
  if (!qword_1EB4DADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADA0);
  }

  return result;
}

unint64_t sub_1ABE34EBC()
{
  result = qword_1EB4DADA8;
  if (!qword_1EB4DADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADA8);
  }

  return result;
}

unint64_t sub_1ABE34F14()
{
  result = qword_1EB4DADB0;
  if (!qword_1EB4DADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADB0);
  }

  return result;
}

unint64_t sub_1ABE34F6C()
{
  result = qword_1EB4DADB8;
  if (!qword_1EB4DADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADB8);
  }

  return result;
}

unint64_t sub_1ABE34FC0()
{
  result = qword_1EB4DADC0;
  if (!qword_1EB4DADC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4DADC0);
  }

  return result;
}

unint64_t sub_1ABE35004()
{
  result = qword_1EB4DADC8;
  if (!qword_1EB4DADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADC8);
  }

  return result;
}

uint64_t sub_1ABE350AC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4CEDE0);
  sub_1ABA7AA24(v0, qword_1EB4CEDE0);
  return sub_1ABF22CE4();
}

uint64_t PHPersonIdentifierMapView.identifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v8 = v3[1];
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1ABB2C7F4();
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DA820, &qword_1ABF3A5C8);
  sub_1ABF22464();

  if (!v4)
  {
    sub_1ABB2B94C(v12, a3);
  }

  return result;
}

uint64_t sub_1ABE3527C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v39 = a1;
  v33 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  if (qword_1EB4CEDD8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v9 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v9, qword_1EB4CEDE0);
  v46 = a2;
  v41[3] = sub_1ABF22D14();
  v41[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v41);
  v35 = "familyandfriends";
  sub_1ABF22D24();
  v44 = sub_1ABF22424();
  v45 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v42);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABF23EE4();
  sub_1ABA84B54(v41);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v42);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v10 = v40;
  a2 = v8;
  v11 = sub_1ABF22294();
  v12 = v10;
  v13 = *(v5 + 8);
  v5 += 8;
  result = v13(v8, v4);
  if (!v10)
  {
    v15 = sub_1ABAAB7C8(v11);
    v8 = 0;
    v38 = v11 & 0xC000000000000001;
    v39 = v15;
    v16 = MEMORY[0x1E69E7CC8];
    v37 = v11 & 0xFFFFFFFFFFFFFF8;
    v4 = v11;
    v34 = v11;
    while (1)
    {
      if (v39 == v8)
      {

        *v33 = v16;
        return result;
      }

      if (v38)
      {
        MEMORY[0x1AC5AA170](v8, v4);
      }

      else
      {
        if (v8 >= *(v37 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(v4 + 8 * v8 + 32);
      }

      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB32E40();
      if (v12)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      sub_1ABB370C4(&v42);
      v40 = 0;
      if (v43)
      {
        v5 = sub_1ABA94FC8(v20, v21);
        a2 = v22;

        if (a2)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v41[0] = v16;
          v23 = v16[3];
          sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
          a2 = v41;
          v4 = v34;
          sub_1ABF24C64();
          v16 = v41[0];
          v24 = *(*(v41[0] + 48) + 16 * v5 + 8);

          sub_1ABF24C84();
        }
      }

      else
      {
        v36 = v42;
        swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v16;
        a2 = v16;
        v25 = sub_1ABA94FC8(v20, v21);
        if (__OFADD__(v16[2], (v26 & 1) == 0))
        {
          goto LABEL_29;
        }

        v4 = v25;
        v5 = v26;
        sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
        a2 = v41;
        if (sub_1ABF24C64())
        {
          a2 = v41[0];
          v27 = sub_1ABA94FC8(v20, v21);
          if ((v5 & 1) != (v28 & 1))
          {
            goto LABEL_33;
          }

          v4 = v27;
        }

        if (v5)
        {

          v16 = v41[0];
          *(*(v41[0] + 56) + 8 * v4) = v36;
        }

        else
        {
          v16 = v41[0];
          *(v41[0] + 8 * (v4 >> 6) + 64) |= 1 << v4;
          v29 = (v16[6] + 16 * v4);
          *v29 = v20;
          v29[1] = v21;
          *(v16[7] + 8 * v4) = v36;

          v30 = v16[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_30;
          }

          v16[2] = v32;
        }

        v4 = v34;
      }

      v12 = v40;
      ++v8;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t PHPersonIdentifierMapView.phPersonIdentifier(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v3;
  sub_1ABB2C288();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DA830, qword_1ABF67A78);
  v7 = v4;
  sub_1ABF22464();

  if (!v2)
  {
    v7 = sub_1ABB2BBF4(v9);
  }

  return v7;
}

uint64_t sub_1ABE3593C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v43 = a1;
  v37 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  isUniquelyReferenced_nonNull_native = *(v4 - 8);
  v6 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  if (qword_1EB4CEDD8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v9 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v9, qword_1EB4CEDE0);
  v46[6] = a2;
  v45[3] = sub_1ABF22D14();
  v45[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v45);
  sub_1ABF22D24();
  v46[3] = sub_1ABF22424();
  v46[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v46);
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v45);
  sub_1ABF22CA4();
  sub_1ABA84B54(v46);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v10 = v44;
  a2 = v8;
  v11 = sub_1ABF22294();
  v12 = *(isUniquelyReferenced_nonNull_native + 8);
  isUniquelyReferenced_nonNull_native += 8;
  v13 = v4;
  v4 = v10;
  result = v12(v8, v13);
  if (!v10)
  {
    v15 = sub_1ABAAB7C8(v11);
    v8 = 0;
    v41 = v11 & 0xC000000000000001;
    v42 = v15;
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    v16 = MEMORY[0x1E69E7CC8];
    v38 = v11;
    v39 = "familyandfriends";
    while (1)
    {
      if (v42 == v8)
      {

        *v37 = v16;
        return result;
      }

      if (v41)
      {
        MEMORY[0x1AC5AA170](v8, v11);
      }

      else
      {
        if (v8 >= *(v40 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(v11 + 8 * v8 + 32);
      }

      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB33F2C();
      if (v4)
      {
        break;
      }

      v18 = v46[0];
      v19 = sub_1ABB36D74();
      if (v20)
      {
        v21 = v20;
        v43 = v8;
        v44 = 0;
        v8 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = v16;
        a2 = v16;
        v22 = sub_1ABAF81A8();
        if (__OFADD__(v16[2], (v23 & 1) == 0))
        {
          goto LABEL_29;
        }

        v24 = v22;
        v4 = v23;
        sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
        a2 = v45;
        if (sub_1ABF24C64())
        {
          a2 = v45[0];
          v25 = sub_1ABAF81A8();
          if ((v4 & 1) != (v26 & 1))
          {
            goto LABEL_33;
          }

          v24 = v25;
        }

        v16 = v45[0];
        if (v4)
        {
          v27 = (*(v45[0] + 56) + 16 * v24);
          a2 = v27[1];
          *v27 = v8;
          v27[1] = v21;
        }

        else
        {
          *(v45[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
          *(v16[6] + 8 * v24) = v18;
          v33 = (v16[7] + 16 * v24);
          *v33 = v8;
          v33[1] = v21;

          v34 = v16[2];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v35)
          {
            goto LABEL_30;
          }

          v16[2] = v36;
        }

        v8 = v43;
        v4 = v44;
        v11 = v38;
      }

      else
      {
        a2 = v16;
        v28 = sub_1ABAF81A8();
        if (v29)
        {
          v30 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45[0] = v16;
          v31 = v16[3];
          sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
          a2 = v45;
          v11 = v38;
          sub_1ABF24C64();
          v16 = v45[0];
          v32 = *(*(v45[0] + 56) + 16 * v30 + 8);

          sub_1ABB668FC();
          sub_1ABF24C84();
        }
      }

      ++v8;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

double PriorityQueue.init(usingComparator:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;

  Heap.init(usingComparator:)(a1, a2, &v8);
  v6 = v9;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v6;
  return result;
}

void PriorityQueue.push(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for Heap();

  Heap.append(_:)();
}

uint64_t PriorityQueue.peek()(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1ABA7DF3C(a1);
  sub_1ABF241F4();
  swift_getWitnessTable();
  return sub_1ABF24544();
}

void PriorityQueue.pop()(uint64_t a1)
{
  sub_1ABA7DF3C(a1);
  type metadata accessor for Heap();

  Heap.removeRoot()();
}

uint64_t static PriorityQueue<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v14 = a1[1];
  v15 = *a1;
  v13 = a1[2];
  v9 = type metadata accessor for PriorityQueue();
  v10 = PriorityQueue.count.getter(v9);
  if (v10 == PriorityQueue.count.getter(v9))
  {
    sub_1ABA8FAD8();
    swift_getWitnessTable();
    v11 = sub_1ABF24004();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t PriorityQueue.count.getter(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_1ABA7DF3C(a1);
  v2 = type metadata accessor for Heap();
  return j___s20IntelligencePlatform4HeapV19underestimatedCountSivg(v2);
}

uint64_t sub_1ABE361B4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static PriorityQueue<A>.== infix(_:_:)(a1, a2);
}

void PriorityQueue.Iterator.next()(uint64_t a1)
{
  sub_1ABA7DF3C(a1);
  v1 = type metadata accessor for PriorityQueue();

  PriorityQueue.pop()(v1);
}

uint64_t PriorityQueue.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  return sub_1ABE36260(v5);
}

uint64_t sub_1ABE36260(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1ABE36270@<X0>(void *a1@<X8>)
{
  PriorityQueue.makeIterator()(a1);
  v3 = v1[1];
  v2 = v1[2];
  v5 = v1[3];
  v4 = v1[4];

  return sub_1ABAC9398(v5);
}

uint64_t PriorityQueue.description.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF92EC0);
  PriorityQueue.count.getter(a1);
  v8 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v8);

  MEMORY[0x1AC5A9410](2112041, 0xE300000000000000);

  sub_1ABE36260(v5);
  v9 = *(a1 + 16);
  sub_1ABA8FAD8();
  swift_getWitnessTable();
  sub_1ABF24214();
  sub_1ABF241F4();
  swift_getWitnessTable();
  sub_1ABF25034();

  return 0;
}

uint64_t sub_1ABE36468()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABE364A4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABE364BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABE36518()
{
  *&__src[0] = 7370352;
  *(&__src[0] + 1) = 0xE300000000000000;
  *&__src[1] = &unk_1F208E698;
  *(&__src[1] + 1) = 111;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000002FLL;
  *(&__src[3] + 1) = 0x80000001ABF92F00;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE365E4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  if (!*(a6 + 32))
  {
    goto LABEL_41;
  }

  v10 = *(a6 + 32);

  v11 = sub_1ABAE305C(112, 0xE100000000000000);

  if (!v11)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v12 = *(v11 + 16);

  v13 = sub_1ABE8AE5C(v12);
  if (!*(v13 + 16))
  {

LABEL_12:
    if (qword_1ED86E458 != -1)
    {
      sub_1ABA8F02C();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED86E460);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24664();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1ABA78000, v21, v22, "Pvp operator has empty predicates", v23, 2u);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }

    goto LABEL_40;
  }

  v14 = a2 + *(type metadata accessor for QueryContext() + 32);
  v15 = *(v14 + 88);
  v16 = *(v14 + 104);
  if (v15 >> 1 == 0xFFFFFFFF && (v16 & 0x1E) == 0)
  {
    v81 = 0;
    v24 = MEMORY[0x1E69E7CD0];
    v80 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(a6 + 32) && (v25 = sub_1ABAE305C(111, 0xE100000000000000)) != 0)
    {
      v26 = v25;
      swift_endAccess();
      swift_beginAccess();
      v27 = *(v26 + 16);
    }

    else
    {
      swift_endAccess();
      v27 = MEMORY[0x1E69E7CC0];
    }

    v28 = *(v27 + 16);
    v53 = v13;
    if (v28)
    {
      v29 = (v27 + 40);
      while (1)
      {
        v31 = *(v29 - 1);
        v30 = *v29;

        if (sub_1ABF23E64())
        {
          if (!v80)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v32 = v81;
          if (!v81)
          {
            v32 = v24;
          }

          v81 = v32;
        }

        sub_1ABB1840C(__dst, v31, v30);
LABEL_29:

        v29 += 2;
        if (!--v28)
        {

          v33 = v81;
          v34 = v80;
          goto LABEL_34;
        }
      }
    }

    v33 = 0;
    v34 = MEMORY[0x1E69E7CD0];
LABEL_34:
    sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1ABF34060;
    *(v35 + 32) = v33;
    *(v35 + 40) = v34;
    v36 = sub_1ABE9059C(v35);
    swift_setDeallocating();

    sub_1ABB4DB48();
    if (v36)
    {

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA8F02C();
      }

      v38 = sub_1ABF237F4();
      sub_1ABA7AA24(v38, qword_1ED86E460);
      v21 = sub_1ABF237D4();
      v39 = sub_1ABF24664();
      if (os_log_type_enabled(v21, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1ABA78000, v21, v39, "Pvp operator has empty terms for O arg", v40, 2u);
        MEMORY[0x1AC5AB8B0](v40, -1, -1);
      }

LABEL_40:

LABEL_41:
      v19 = 0;
      *(a1 + 10) = 0;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      *(a1 + 88) = xmmword_1ABF34940;
      a1[104] = 0;
      return v19 & 1;
    }

    LOBYTE(v71[0]) = 0;
    v71[1] = 0;
    LOBYTE(v72) = 0;
    v73 = v53;
    LOBYTE(v74) = 0;
    v75 = v33;
    LOBYTE(v76) = 0;
    v77 = 0;
    LOBYTE(v78) = 0;
    v79 = 0;
    v42 = v71[0];
    v43 = v72;
    v44 = v74;
    v45 = v76;
    v46 = 0uLL;
    v47 = v78;
    if (v34)
    {
      if (*(v34 + 16))
      {
        if (v33)
        {
          LOBYTE(v62[0]) = 0;
          v62[1] = 0;
          LOBYTE(v63) = 0;
          v64 = v53;
          LOBYTE(v65) = 0;
          v66 = 0;
          LOBYTE(v67) = 0;
          v68 = v34;
          LOBYTE(v69) = 0;
          v70 = 0;
          __src[0] = v71[0];
          *&__src[1] = v72;
          *(&__src[1] + 1) = v53;
          *&__src[2] = v74;
          *(&__src[2] + 1) = v33;
          __src[3] = v76;
          __src[4] = v78;
          *(&__src[5] + 1) = 0;
          BYTE8(__src[6]) = 32;
          v56[0] = v62[0];
          v56[1] = 0;
          v56[2] = v63;
          v56[3] = v53;
          v56[4] = v65;
          v56[5] = 0;
          v56[6] = v67;
          v56[7] = v34;
          v56[8] = v69;
          v56[9] = 0;
          v56[11] = 0;
          LOBYTE(v56[13]) = 32;
          v55 = 1;
          IndexQuery.TriplesIndexQuery.combine(query:combineType:)(v56, &v55, __dst);

          sub_1ABB420A4(v62);
          sub_1ABB420A4(v71);

          v42 = __dst[0];
          v48 = __dst[1];
          v43 = __dst[2];
          v49 = __dst[3];
          v44 = __dst[4];
          v33 = __dst[5];
          v45 = __dst[6];
          v34 = __dst[7];
          v47 = __dst[8];
          v37 = v60;
          v50 = v59 & 1;
          v51 = v61 & 0xE1;
          v46 = *&__dst[9];
        }

        else
        {

          v49 = v53;

          sub_1ABB420A4(v71);
          v46 = 0uLL;
          v42 = 0;
          v48 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v47 = 0;
          v50 = 0;
          v51 = 32;
        }

        goto LABEL_50;
      }

      v52 = v71[0];

      v46 = 0uLL;
      v42 = v52;
      v48 = 0;
      v34 = 0;
    }

    else
    {
      v48 = 0;
    }

    v50 = 0;
    v51 = 32;
    v49 = v53;
LABEL_50:
    *a1 = v42;
    *(a1 + 1) = v48;
    *(a1 + 2) = v43;
    *(a1 + 3) = v49;
    *(a1 + 4) = v44;
    *(a1 + 5) = v33;
    *(a1 + 6) = v45;
    *(a1 + 7) = v34;
    *(a1 + 8) = v47;
    *(a1 + 72) = v46;
    *(a1 + 11) = v50;
    *(a1 + 12) = v37;
    v19 = 1;
    a1[104] = v51;
    return v19 & 1;
  }

  v18 = *(v14 + 96);
  memcpy(__dst, v14, sizeof(__dst));
  v59 = v15;
  v60 = v18;
  v61 = v16;
  memset(__src, 0, 24);
  *(&__src[1] + 1) = v13;
  *(&__src[5] + 1) = 0;
  memset(&__src[2], 0, 48);
  BYTE8(__src[6]) = 32;
  LOBYTE(v71[0]) = 0;
  sub_1ABE3A1C8();
  memcpy(v56, __src, 0x69uLL);
  sub_1ABAE4B6C(v56);
  if (!v6)
  {
    memcpy(a1, v54, 0x69uLL);
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t sub_1ABE36CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ABE713BC();
  v5 = sub_1ABE713BC();
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v29 = v5;
  v30 = v4;
  v8 = (a3 + 32);
  v9 = v6 - 1;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = memcpy(__dst, v8, 0x58uLL);
    v11 = __dst[6];
    if (__dst[7])
    {
      v12 = __dst[7];
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    if (__dst[9])
    {
      v13 = __dst[8];
    }

    else
    {
      v13 = 0;
    }

    if (__dst[9])
    {
      v14 = __dst[9];
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v33[0] = v11;
    v33[1] = v12;
    MEMORY[0x1EEE9AC00](v10);
    v28 = v33;
    sub_1ABB242A4(__dst, v32);

    v15 = sub_1ABB2F764(sub_1ABB342A0, v27, v30);

    if (!v15)
    {
      sub_1ABB24250(__dst);

      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (!*(v29 + 16))
    {
      break;
    }

    v32[0] = v13;
    v32[1] = v14;
    MEMORY[0x1EEE9AC00](v16);
    v28 = v32;
    v18 = sub_1ABB2F764(sub_1ABC7A930, v27, v17);

    if (v18)
    {
      goto LABEL_20;
    }

    sub_1ABB24250(__dst);
    if (!v9)
    {
      goto LABEL_27;
    }

LABEL_25:
    --v9;
    v8 += 88;
  }

LABEL_20:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v19 = v31;
  }

  else
  {
    v21 = *(v31 + 16);
    sub_1ABAD8758();
    v19 = v22;
  }

  v20 = *(v19 + 16);
  if (v20 >= *(v19 + 24) >> 1)
  {
    sub_1ABAD8758();
    v19 = v23;
  }

  *(v19 + 16) = v20 + 1;
  v31 = v19;
  memcpy((v19 + 88 * v20 + 32), __dst, 0x58uLL);
  if (v9)
  {
    goto LABEL_25;
  }

LABEL_27:

  v7 = MEMORY[0x1E69E7CC0];
  v24 = v31;
LABEL_29:
  type metadata accessor for ResultGraph();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1ABF239C4();
  *(v25 + 24) = v7;
  LOBYTE(__dst[0]) = 0;
  sub_1ABE489A8(v24, __dst);
  return v24;
}

uint64_t sub_1ABE3701C()
{
  *&__src[0] = 1952802673;
  *(&__src[0] + 1) = 0xE400000000000000;
  *&__src[1] = &unk_1F208E6D8;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000002BLL;
  *(&__src[3] + 1) = 0x80000001ABF92F50;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

void sub_1ABE370E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = (a3 + 64);
    while (1)
    {
      v6 = v5[6];
      v7 = *(v6 + 16);
      v8 = *(v4 + 16);
      if (__OFADD__(v8, v7))
      {
        break;
      }

      v9 = *(v5 - 3);
      v10 = v4;
      v11 = v5[3];
      v13 = *v5;
      v12 = v5[1];
      v21 = v5[5];
      v22 = v3;

      swift_bridgeObjectRetain_n();
      v4 = v10;

      if (!swift_isUniquelyReferenced_nonNull_native() || (v14 = *(v10 + 24) >> 1, v14 < v8 + v7))
      {
        sub_1ABAD8758();
        v4 = v15;
        v14 = *(v15 + 24) >> 1;
      }

      if (*(v6 + 16))
      {
        if (v14 - *(v4 + 16) < v7)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v16 = *(v4 + 16);
          v17 = __OFADD__(v16, v7);
          v18 = v16 + v7;
          if (v17)
          {
            goto LABEL_18;
          }

          *(v4 + 16) = v18;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_16;
        }
      }

      v5 += 11;
      v3 = v22 - 1;
      if (v22 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    type metadata accessor for ResultGraph();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E7CC0];
    *(v19 + 16) = sub_1ABF239C4();
    *(v19 + 24) = v20;
    v23 = 2;
    sub_1ABE489A8(v4, &v23);
  }
}

uint64_t sub_1ABE37324()
{
  v0 = sub_1ABE3701C();
  memcpy(v2, (v0 + 16), sizeof(v2));
  *(v0 + 16) = 0x746567706F727071;
  *(v0 + 24) = 0xE800000000000000;
  *(v0 + 32) = &unk_1F208E708;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000041;
  *(v0 + 72) = 0x80000001ABF92FB0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

void sub_1ABE373DC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  switch(*(a1 + 64))
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      *a2 = *(a1 + 64);
      break;
    case 2:
      sub_1ABAF2860();
      swift_allocError();
      *v2 = 0xD000000000000028;
      *(v2 + 8) = 0x80000001ABF93000;
      *(v2 + 16) = 2;
      swift_willThrow();
      break;
    default:
      *a2 = 6;
      break;
  }
}

uint64_t sub_1ABE37488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) != 0)
  {
    swift_beginAccess();
    if (*(a6 + 32) && (v10 = sub_1ABAE305C(115, 0xE100000000000000)) != 0)
    {
      v11 = v10;
      swift_endAccess();
      swift_beginAccess();
      v12 = *(v11 + 16);
    }

    else
    {
      swift_endAccess();
      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = sub_1ABE8AE5C(v12);
    swift_beginAccess();
    if (*(a6 + 32) && (v14 = sub_1ABAE305C(112, 0xE100000000000000)) != 0)
    {
      v15 = v14;
      swift_endAccess();
      swift_beginAccess();
      v16 = *(v15 + 16);
    }

    else
    {
      swift_endAccess();
      v16 = MEMORY[0x1E69E7CC0];
    }

    v17 = sub_1ABE8AE5C(v16);
    sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1ABF34060;
    *(v18 + 32) = v13;
    *(v18 + 40) = v17;
    v19 = sub_1ABE9059C(v18);
    swift_setDeallocating();

    sub_1ABB4DB48();
    if ((v19 & 1) == 0)
    {
      v25 = a2 + *(type metadata accessor for QueryContext() + 32);
      v27 = *(v25 + 88);
      v28 = *(v25 + 104);
      v29 = 32;
      if (v27 >> 1 != 0xFFFFFFFF || (*(v25 + 104) & 0x1E) != 0)
      {
        v36 = *(v25 + 96);
        memcpy(__dst, v25, sizeof(__dst));
        v41 = v27;
        v42 = v36;
        v43 = v28;
        memset(__src, 0, 56);
        *(&__src[3] + 1) = v13;
        *&__src[4] = 0;
        *(&__src[4] + 1) = v17;
        *(&__src[5] + 1) = 0;
        BYTE8(__src[6]) = 32;
        v38[111] = 1;
        sub_1ABE3A1C8();
        if (v6)
        {
          memcpy(v38, __src, 0x69uLL);
          sub_1ABAE4B6C(v38);
          return v24 & 1;
        }

        memcpy(v38, __src, 0x69uLL);
        sub_1ABAE4B6C(v38);
        v32 = v44;
        v33 = v45;
        v34 = v46;
        v30 = v47;
        v13 = v48;
        v31 = v49;
        v26 = v50;
        v35 = v51;
        v29 = v52;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        *&v26 = v17;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
      }

      *a1 = v32;
      *(a1 + 16) = v33;
      *(a1 + 32) = v34;
      *(a1 + 48) = v30;
      *(a1 + 56) = v13;
      *(a1 + 64) = v31;
      *(a1 + 72) = v26;
      *(a1 + 88) = v35;
      v24 = 1;
      *(a1 + 104) = v29;
      return v24 & 1;
    }

    if (qword_1ED86E458 != -1)
    {
      swift_once();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED86E460);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24664();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1ABA78000, v21, v22, "Qpropget operator has all empty terms", v23, 2u);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }
  }

  v24 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v24 & 1;
}

uint64_t sub_1ABE37880()
{
  *&__src[0] = 0x7463656C657371;
  *(&__src[0] + 1) = 0xE700000000000000;
  *&__src[1] = &unk_1F208E748;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000002ELL;
  *(&__src[3] + 1) = 0x80000001ABF93060;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABA925A4(v4, &qword_1EB4D1B10, &unk_1ABF33FA0);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE37964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  if (sub_1ABE37A38(*a5))
  {
    return 0;
  }

  result = swift_beginAccess();
  if (*(v5 + 32))
  {
    v7 = sub_1ABA8FAF0();
    v9 = sub_1ABAE305C(v7, v8);
    if (v9)
    {
      v10 = v9;
      swift_endAccess();
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v10 + 24))
      {
        v11 = *(v10 + 24);

        sub_1ABE37B6C(v12, 1);
      }
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE37A38(uint64_t a1)
{
  switch(*(a1 + 64))
  {
    case 2:

      v1 = 0;
      return v1 & 1;
    case 4:
      sub_1ABA7EB34();
      goto LABEL_6;
    case 5:
      sub_1ABA7C6F4();
      goto LABEL_6;
    case 7:
      sub_1ABA81BF4();
      goto LABEL_6;
    default:
LABEL_6:
      sub_1ABA8BE94();
      v2 = sub_1ABF25054();

      v1 = v2 ^ 1;
      return v1 & 1;
  }
}

uint64_t sub_1ABE37B6C(uint64_t a1, uint64_t a2)
{
  if (a2 > 24)
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000049, 0x80000001ABF93130);
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);

    MEMORY[0x1AC5A9410](v16, v15);

    sub_1ABAF2860();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0xE000000000000000;
    *(v17 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    *(a1 + 64) = 2;
    result = swift_beginAccess();
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = 1 << *(v5 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
        result = swift_beginAccess();
        if (*(v13 + 24))
        {

          sub_1ABE37B6C(v14, a2 + 1);
          if (v2)
          {
          }
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
        }

        v8 = *(v5 + 64 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1ABE37D7C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((sub_1ABE37A38(v1) & 1) == 0)
  {
    v17 = *(type metadata accessor for QueryContext() + 32);
    memcpy(v118, (v8 + v17), 0x69uLL);
    memcpy(v10, (v8 + v17), 0x69uLL);
    sub_1ABB52954(v118, __dst);
    goto LABEL_18;
  }

  sub_1ABA8FAF0();
  v11 = sub_1ABE719F4();
  if (v11)
  {
    v12 = v11;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v13 = *(v12 + 24);

    if (v13)
    {
      v116 = v13;
      sub_1ABA90B20();
      sub_1ABE1AB8C(v14, v15, v16);
      if (v0)
      {

        goto LABEL_18;
      }

      v80 = v10;
      v22 = v114;
      v86 = v13;
      v23 = v4;
      v24 = v115;
      sub_1ABA93E20(v113, v114);
      v82 = *(v24 + 64);

      v64 = v24;
      v78 = v6;
      v25 = v23;
      v82(v118, v8, v12, v6, v23, v86, v2, v22, v64);

      memcpy(__dst, v118, 0x69uLL);
      v26 = __dst[3];
      v27 = __dst[13];
      if (__dst[11] >> 1 == 0xFFFFFFFFLL && (__dst[13] & 0x1E) == 0)
      {

        memcpy(v80, __dst, 0x69uLL);
        sub_1ABA84B54(v113);
        goto LABEL_18;
      }

      v28 = v80;
      if ((__dst[13] & 0x10) != 0)
      {
        v29 = __dst[2];
        v81 = __dst[8];
        v83 = __dst[9];
        v76 = __dst[7];
        v119 = __dst[12];
        v85 = __dst[11];
        v75 = __dst[6];
        v30 = __dst[5];
        v79 = __dst[10];
        v31 = __dst[4];
        v32 = __dst[1];
        v33 = __dst[0];
        sub_1ABF24AB4();
        v110[0] = 0;
        v110[1] = 0xE000000000000000;
        MEMORY[0x1AC5A9410](0xD00000000000002ALL, 0x80000001ABF930E0);
        __src[0] = v33;
        __src[1] = v32;
        __src[2] = v29;
        __src[3] = v26;
        __src[4] = v31;
        __src[5] = v30;
        __src[6] = v75;
        __src[7] = v76;
        __src[8] = v81;
        __src[9] = v83;
        __src[10] = v79;
        __src[11] = v85;
        __src[12] = v119;
        LOBYTE(__src[13]) = v27;
        sub_1ABF24C54();
        sub_1ABA925A4(__dst, &qword_1EB4D3430, &unk_1ABF6B740);
        sub_1ABAF2860();
        swift_allocError();
        *v34 = 0;
        *(v34 + 8) = 0xE000000000000000;
        *(v34 + 16) = 2;
        swift_willThrow();

        sub_1ABA84B54(v113);
        goto LABEL_18;
      }

      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      __src[4] = __dst[4];
      __src[5] = __dst[5];
      __src[6] = __dst[6];
      __src[7] = __dst[7];
      __src[8] = __dst[8];
      __src[9] = __dst[9];
      __src[10] = __dst[10];
      __src[11] = __dst[11];
      __src[12] = __dst[12];
      LOBYTE(__src[13]) = __dst[13];
      sub_1ABE386F0();
      memcpy(v110, __src, 0x69uLL);
      sub_1ABE10E28(v110);
      v35 = sub_1ABE38C7C(v2, *(v8 + 8));
      if (*(v35 + 16))
      {
        sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1ABF34060;
        memcpy((v36 + 32), v111, 0x69uLL);
        v37 = sub_1ABE8AE5C(v35);
        v38 = 0;
        *(v36 + 144) = 0;
        *(v36 + 152) = v37;
        *(v36 + 248) = 32;
        *(v36 + 232) = 0;
        *(v36 + 160) = 0u;
        *(v36 + 176) = 0u;
        *(v36 + 192) = 0u;
        *(v36 + 208) = 0u;
        *&v39 = 0;
        v84 = 0u;
        *&v109[0] = 0;
        *(&v109[0] + 1) = v36;
        *(&v109[5] + 1) = 0;
        *(&v39 + 1) = v36;
        v77 = v39;
        BYTE8(v109[6]) = 0;
      }

      else
      {

        memcpy(v109, v111, 0x69uLL);
        v74 = v109[1];
        v77 = v109[0];
        v70 = v109[2];
        v71 = v109[3];
        v69 = v109[4];
        v73 = *&v109[6];
        v38 = BYTE8(v109[6]) & 0xE1;
        *&v40 = *&v109[5];
        *(&v40 + 1) = BYTE8(v109[5]) & 1;
        v84 = v40;
      }

      sub_1ABA90400();
      v41 = sub_1ABE719F4();
      if (v41)
      {
        v42 = v41;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v43 = *(v42 + 24);

        if (v43)
        {
          v108 = v43;
          v44 = *(v43 + 80);
          if (v44 == 2 || (v44 & 1) == 0)
          {
            HIDWORD(v68) = v38;
            sub_1ABA90B20();
            sub_1ABE1AB8C(v45, v46, v47);
            v48 = v106;
            v67 = v43;
            v49 = v107;
            sub_1ABA93E20(v105, v106);
            v65 = v49;
            (*(v49 + 64))(v104, v8, v42, v78, v25, v67, v2, v48);
            memcpy(v103, v104, 0x69uLL);
            v50 = v103[11];
            v51 = v103[12];
            v52 = v103[13];
            if (v103[11] >> 1 != 0xFFFFFFFFLL || (v103[13] & 0x1E) != 0)
            {
              v53 = v106;
              v54 = v107;
              sub_1ABA93E20(v105, v106);
              v55 = (*(v54 + 88))(&v102, v8, v67, v2, v53, v54);
              if (v102 && v102 != 1)
              {
                sub_1ABA7DF48(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68, v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, *(&v74 + 1), v77, *(&v77 + 1), v78, v80, v84);
                v63 = 4;
              }

              else
              {
                sub_1ABA7DF48(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68, v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, *(&v74 + 1), v77, *(&v77 + 1), v78, v80, v84);
                v63 = 1;
              }

              v92 = v63;
              memcpy(v88, v104, sizeof(v88));
              v89 = v50;
              v90 = v51;
              v91 = v52;
              sub_1ABE39F20();
              memcpy(v87, v93, 0x69uLL);
              sub_1ABAE4B6C(v87);

              sub_1ABA925A4(v103, &qword_1EB4D3430, &unk_1ABF6B740);
              v74 = v95;
              v77 = v94;
              v70 = v96;
              v71 = v97;
              v84 = v99;
              v69 = v98;
              v73 = v100;
              BYTE4(v68) = v101;
            }

            else
            {
            }

            sub_1ABA84B54(v105);
            LOBYTE(v38) = BYTE4(v68);
            v28 = v80;
            goto LABEL_28;
          }
        }
      }

LABEL_28:
      *v28 = v77;
      v28[1] = v74;
      v28[2] = v70;
      v28[3] = v71;
      v28[4] = v69;
      v28[5] = v84;
      *(v28 + 12) = v73;
      *(v28 + 104) = v38;
      sub_1ABA84B54(v113);
      goto LABEL_18;
    }
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v18 = sub_1ABF237F4();
  sub_1ABA7AA24(v18, qword_1ED86E460);
  v19 = sub_1ABF237D4();
  v20 = sub_1ABF24664();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1ABA78000, v19, v20, "Qselect operator has empty filter node", v21, 2u);
    MEMORY[0x1AC5AB8B0](v21, -1, -1);
  }

  *(v10 + 10) = 0;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  *(v10 + 88) = xmmword_1ABF34940;
  *(v10 + 104) = 0;
LABEL_18:
  sub_1ABA7BC90();
}

void sub_1ABE386F0()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = memcpy(v156, v1, 0x69uLL);
  v13 = v156[1];
  v14 = LOBYTE(v156[3]);
  v15 = v156[4];
  v16 = v156[5];
  switch(LOBYTE(v156[13]) >> 5)
  {
    case 1:
      v51 = v156[2];
      v52 = *(&v156[3] + 5) | (HIBYTE(v156[3]) << 16);
      v53 = (*(&v156[5] + 1) << 8) | ((*(&v156[5] + 5) | (HIBYTE(v156[5]) << 16)) << 40) | LOBYTE(v156[5]);
      v54 = *(&v156[3] + 1) << 8;
      *v4 = v156[0] & 1;
      *(v4 + 8) = v13;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v15 & 1;
      *(v4 + 40) = v53;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 64) = v51 & 1;
      *(v4 + 72) = v54 | (v52 << 40) | v14;
      *(v4 + 88) = 0;
      v27 = 32;
      goto LABEL_14;
    case 2:
      LOBYTE(__dst[0]) = 1;
      v25 = v156[6];
      v26 = (*(&v156[4] + 1) << 8) | ((*(&v156[4] + 5) | (HIBYTE(v156[4]) << 16)) << 40) | LOBYTE(v156[4]);
      *v4 = v156[0] & 1;
      *(v4 + 8) = v13;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = v16 & 1;
      *(v4 + 48) = v25;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = v14 & 1;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = v26;
      v27 = 65;
LABEL_14:
      *(v4 + 104) = v27;

      goto LABEL_45;
    case 3:
    case 4:
      v17 = memcpy(v4, v2, 0x69uLL);
      sub_1ABA83C94(v17, v18, v19, v20, v21, v22, v23, v24, v105, v115, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __dst[0]);
      goto LABEL_45;
    case 5:
      if (LOBYTE(v156[0]) == 1)
      {
        v55 = 4;
      }

      else
      {
        v55 = LOBYTE(v156[0]);
      }

      v56 = *(v156[1] + 16);
      v57 = MEMORY[0x1E69E7CC0];
      if (!v56)
      {
        goto LABEL_39;
      }

      sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v55, v4, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __dst[0]);
      v154 = v57;
      sub_1ABADDDDC(0, v56, 0);
      v58 = 0;
      v59 = (v13 + 32);
      while (2)
      {
        if (v58 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        memcpy(__dst, v59, 0x69uLL);
        memcpy(v139, v59, 0x69uLL);
        v60 = sub_1ABE10DCC(__dst, &v125);
        sub_1ABA81140(v60, v61, v62, v63, v64, v65, v66, v67, v109, v119, v125, v126, v127, v128, v129, v130);
        if (v0)
        {
          sub_1ABE10E28(v156);
          sub_1ABE10E28(__dst);
        }

        else
        {
          v68 = sub_1ABE10E28(__dst);
          sub_1ABA8ED3C(v68, v69, v70, v71, v72, v73, v74, v75, v110, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140);
          v154 = v57;
          v77 = *(v57 + 16);
          v76 = *(v57 + 24);
          if (v77 >= v76 >> 1)
          {
            v78 = sub_1ABA7BBEC(v76);
            sub_1ABADDDDC(v78, v77 + 1, 1);
            v57 = v154;
          }

          *(v57 + 16) = v77 + 1;
          sub_1ABA7EBA4(v57 + 112 * v77, v111, v121, v125);
          if (v56 - 1 != v58)
          {
            v59 += 112;
            ++v58;
            continue;
          }

          sub_1ABE10E28(v156);
          v55 = v109;
          v4 = v119;
LABEL_39:
          *v4 = v55;
          *(v4 + 8) = v57;
          *(v4 + 88) = 0;
          *(v4 + 104) = -96;
        }

        goto LABEL_45;
      }

    case 6:
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF93110);
      memcpy(__dst, v156, 0x69uLL);
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x757320746F6E2027, 0xEF646574726F7070);
      sub_1ABAF2860();
      swift_allocError();
      *v79 = 0;
      *(v79 + 8) = 0xE000000000000000;
      *(v79 + 16) = 1;
      swift_willThrow();
      goto LABEL_45;
    default:
      v28 = *(v156[1] + 16);
      if ((v156[0] & 1) == 0)
      {
        if (v28)
        {
          sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v105, v4, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __dst[0]);
          v154 = MEMORY[0x1E69E7CC0];
          sub_1ABA9A6D0();
          v80 = 0;
          v81 = 32;
          v82 = v154;
          while (1)
          {
            if (v80 >= *(v13 + 16))
            {
              goto LABEL_48;
            }

            sub_1ABA97D70(__dst);
            sub_1ABA97D70(v139);
            v83 = sub_1ABE10DCC(__dst, &v125);
            sub_1ABA81140(v83, v84, v85, v86, v87, v88, v89, v90, v112, v122, v125, v126, v127, v128, v129, v130);
            if (v0)
            {
              break;
            }

            v91 = v13;
            v92 = v28;
            v93 = sub_1ABE10E28(__dst);
            sub_1ABA8ED3C(v93, v94, v95, v96, v97, v98, v99, v100, v113, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140);
            v154 = v82;
            v102 = *(v82 + 16);
            v101 = *(v82 + 24);
            if (v102 >= v101 >> 1)
            {
              v104 = sub_1ABA7BBEC(v101);
              sub_1ABADDDDC(v104, v102 + 1, 1);
              v82 = v154;
            }

            ++v80;
            *(v82 + 16) = v102 + 1;
            sub_1ABA7EBA4(v82 + 112 * v102, v114, v124, v125);
            v81 += 112;
            v28 = v92;
            v103 = v92 == v80;
            v13 = v91;
            if (v103)
            {
              v4 = v122;
              goto LABEL_43;
            }
          }

LABEL_36:
          sub_1ABE10E28(__dst);
        }

        else
        {
          sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v105, v115, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __dst[0]);
          v82 = MEMORY[0x1E69E7CC0];
LABEL_43:
          *v4 = 4;
          *(v4 + 8) = v82;
          *(v4 + 88) = 0;
          *(v4 + 104) = -96;
        }

        goto LABEL_45;
      }

      v29 = MEMORY[0x1E69E7CC0];
      if (!v28)
      {
        goto LABEL_42;
      }

      sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v105, v4, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __dst[0]);
      v154 = v29;
      sub_1ABA9A6D0();
      v30 = 0;
      v31 = 32;
      while (v30 < *(v13 + 16))
      {
        sub_1ABA97D70(__dst);
        sub_1ABA97D70(v139);
        v32 = sub_1ABE10DCC(__dst, &v125);
        sub_1ABA81140(v32, v33, v34, v35, v36, v37, v38, v39, v106, v116, v125, v126, v127, v128, v129, v130);
        if (v0)
        {
          goto LABEL_36;
        }

        v40 = sub_1ABE10E28(__dst);
        sub_1ABA8ED3C(v40, v41, v42, v43, v44, v45, v46, v47, v107, v117, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140);
        v154 = v29;
        v49 = *(v29 + 16);
        v48 = *(v29 + 24);
        if (v49 >= v48 >> 1)
        {
          v50 = sub_1ABA7BBEC(v48);
          sub_1ABADDDDC(v50, v49 + 1, 1);
          v29 = v154;
        }

        *(v29 + 16) = v49 + 1;
        sub_1ABA7EBA4(v29 + 112 * v49, v108, v118, v125);
        if (v28 - 1 == v30)
        {
          sub_1ABE10E28(v156);
          v4 = v116;
LABEL_42:
          *v4 = 1;
          *(v4 + 8) = v29;
          *(v4 + 88) = 0;
          *(v4 + 104) = 0;
LABEL_45:
          sub_1ABA7BC90();
          return;
        }

        v31 += 112;
        ++v30;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
  }
}