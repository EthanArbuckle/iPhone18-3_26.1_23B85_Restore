unint64_t sub_1C4D36AA0()
{
  result = qword_1EC0C6568;
  if (!qword_1EC0C6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6568);
  }

  return result;
}

uint64_t sub_1C4D36AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D36B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4D36B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D36BF0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C6580, &qword_1C4F6E420);
    sub_1C442D97C();
    sub_1C4D36AF4(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4D36C7C()
{
  result = qword_1EC0C65D8;
  if (!qword_1EC0C65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C65D8);
  }

  return result;
}

uint64_t sub_1C4D36CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for VirtualInteractionContact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VirtualInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D36EFC()
{
  result = qword_1EC0C6638;
  if (!qword_1EC0C6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6638);
  }

  return result;
}

unint64_t sub_1C4D36F54()
{
  result = qword_1EC0C6640;
  if (!qword_1EC0C6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6640);
  }

  return result;
}

unint64_t sub_1C4D36FAC()
{
  result = qword_1EC0C6648;
  if (!qword_1EC0C6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6648);
  }

  return result;
}

unint64_t sub_1C4D37004()
{
  result = qword_1EC0C6650;
  if (!qword_1EC0C6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6650);
  }

  return result;
}

unint64_t sub_1C4D3705C()
{
  result = qword_1EC0C6658;
  if (!qword_1EC0C6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6658);
  }

  return result;
}

unint64_t sub_1C4D370B4()
{
  result = qword_1EC0C6660;
  if (!qword_1EC0C6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6660);
  }

  return result;
}

void sub_1C4D37108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v5 = sub_1C486C288(v2);
    v6 = 0;
    v7 = v2 + 56;
    v25 = v2 + 64;
    v26 = v1;
    v27 = v2 + 56;
    v28 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v30 = v4;
        v29 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v12 = sub_1C4F00FF8();
        v14 = v13;
        v15 = *(v31 + 16);
        if (v15 >= *(v31 + 24) >> 1)
        {
          sub_1C44CD9C0();
        }

        *(v31 + 16) = v15 + 1;
        v16 = v31 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
        if (v30)
        {
          goto LABEL_29;
        }

        v7 = v27;
        v2 = v28;
        v17 = 1 << *(v28 + 32);
        if (v5 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v27 + 8 * v8);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v28 + 36) != v29)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v22 = (v25 + 8 * v8);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C45E8E98(v5);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1C45E8E98(v5);
        }

LABEL_19:
        if (++v6 == v26)
        {
          return;
        }

        v4 = 0;
        v3 = *(v28 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C4D37344(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      swift_unknownObjectRetain();
      v4(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C4D37408()
{
  sub_1C43FE96C();
  v2 = v1;
  v27 = v3;
  v29 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v29);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + 56;
  v11 = *(v2 + 56);
  v13 = *(v2 + 32);
  sub_1C43FD030();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v26 = v6 + 16;
  v28 = v6 + 8;
  v30 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
      v21 = v29;
LABEL_7:
      (*(v6 + 16))(v10, *(v30 + 48) + *(v6 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v21);
      v27(v10);
      if (v0)
      {
        break;
      }

      v16 &= v16 - 1;
      v22 = sub_1C441E8EC();
      v23(v22);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_3;
      }
    }

    v24 = sub_1C441E8EC();
    v25(v24);
LABEL_11:

    sub_1C43FBC80();
  }

  else
  {
LABEL_3:
    v21 = v29;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        goto LABEL_11;
      }

      v16 = *(v12 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C4D375BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8);
    --v5;
  }

  while (!v3);
  return result;
}

void sub_1C4D37878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1C4EFF0C8();
  sub_1C440EAC8();
  sub_1C4C5192C(v6, v7);
  sub_1C4404C28();
  if (sub_1C4F010B8())
  {
    v8 = a3(0);
    v9 = v8[5];
    sub_1C4EFEEF8();
    sub_1C4417B84();
    sub_1C4C5192C(v10, v11);
    sub_1C4404960();
    if ((sub_1C4F010B8() & 1) == 0)
    {
LABEL_19:
      sub_1C4404960();
      sub_1C440A528();

      sub_1C4EFE9A8();
      return;
    }

    v12 = v8[8];
    v13 = *(a1 + v12);
    v14 = *(a1 + v12 + 8);
    v15 = (a2 + v12);
    v16 = v13 == *v15 && v14 == v15[1];
    if (v16 || (sub_1C441BEC4(), (sub_1C4F02938() & 1) != 0))
    {
      v17 = v8[6];
      sub_1C4EFF8A8();
      sub_1C4403B6C();
      sub_1C4C5192C(v18, v19);
      sub_1C4404960();
      if (sub_1C4F010B8())
      {
        v20 = v8[7];
        sub_1C4404960();
        if (sub_1C4F010B8())
        {
          v21 = *(a1 + v8[9]);
          sub_1C441EC18();
          MEMORY[0x1C6941830](v21);
          v22 = sub_1C4F02B68();
          v23 = *(a2 + v8[9]);
          sub_1C441EC18();
          MEMORY[0x1C6941830](v23);
          if (v22 == sub_1C4F02B68())
          {
            v24 = (a1 + v8[11]);
            v25 = *v24;
            v26 = v24[1];
            sub_1C441EC18();
            sub_1C4F01298();
            v27 = sub_1C4F02B68();
            v28 = (a2 + v8[11]);
            v29 = *v28;
            v30 = v28[1];
            sub_1C441EC18();
            sub_1C4F01298();
            if (v27 == sub_1C4F02B68())
            {
              sub_1C4435658(v8[12]);
              if (v16)
              {
                sub_1C4435658(v8[10]);
              }
            }
          }

          sub_1C440A528();
          return;
        }

        goto LABEL_19;
      }

      sub_1C4404960();
      sub_1C440A528();

      sub_1C4EFF868();
    }

    else
    {
      sub_1C441BEC4();
      sub_1C440A528();

      sub_1C4F02938();
    }
  }

  else
  {
    sub_1C4404C28();
    sub_1C440A528();

    sub_1C4EFF078();
  }
}

uint64_t sub_1C4D37BF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37C24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37C58(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37F74(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37C8C()
{
  sub_1C4440160();
  v1 = 0xE700000000000000;
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v4 = sub_1C44076F0();
      break;
    case 3:
      v4 = sub_1C43FC708();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v3)
  {
    case 1:
      v6 = 0xE400000000000000;
      v0 = 1819047270;
      break;
    case 2:
      sub_1C4417600();
      break;
    case 3:
      sub_1C440AFE0();
      break;
    default:
      break;
  }

  if (v4 == v0 && v1 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1C4F02938();
  }

  return v8 & 1;
}

uint64_t sub_1C4D37DA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37DD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37E18(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37F74(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37E80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37EB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37EE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37F1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_1C4F02938();
  }
}

void sub_1C4D37F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Source();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v62 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v62 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v62 - v17);
  sub_1C4EFF0C8();
  sub_1C440EAC8();
  sub_1C4C5192C(v19, v20);
  sub_1C4404C28();
  if (sub_1C4F010B8())
  {
    v65 = v13;
    v21 = a3(0);
    v22 = *(v21 + 20);
    sub_1C4EFEEF8();
    sub_1C4417B84();
    sub_1C4C5192C(v23, v24);
    sub_1C442E734();
    if ((sub_1C4F010B8() & 1) == 0)
    {
LABEL_23:
      sub_1C442E734();
      sub_1C43FE9F0();

      sub_1C4EFE9A8();
      return;
    }

    v63 = v10;
    v64 = v21;
    v25 = *(v21 + 32);
    v26 = *(a1 + v25);
    v27 = *(a1 + v25 + 8);
    v28 = (a2 + v25);
    v29 = v26 == *v28 && v27 == v28[1];
    if (v29 || (sub_1C43FF938(), (sub_1C4F02938() & 1) != 0))
    {
      v30 = v64;
      v31 = *(v64 + 24);
      sub_1C4EFF8A8();
      sub_1C4403B6C();
      sub_1C4C5192C(v32, v33);
      sub_1C442E734();
      if (sub_1C4F010B8())
      {
        v34 = *(v30 + 28);
        sub_1C442E734();
        if (sub_1C4F010B8())
        {
          v35 = *(v30 + 36);
          sub_1C44310D4(a1 + v35, v18, type metadata accessor for Source);
          v36 = *(v30 + 36);
          sub_1C44310D4(a2 + v36, v16, type metadata accessor for Source);
          if (*v18 == *v16 && v18[1] == v16[1])
          {
            sub_1C44541BC(v16, type metadata accessor for Source);
            sub_1C44541BC(v18, type metadata accessor for Source);
          }

          else
          {
            v38 = sub_1C4F02938();
            sub_1C44541BC(v16, type metadata accessor for Source);
            sub_1C44541BC(v18, type metadata accessor for Source);
            if ((v38 & 1) == 0)
            {
              v39 = a1 + v35;
              v40 = v65;
              sub_1C44310D4(v39, v65, type metadata accessor for Source);
              v41 = v63;
              sub_1C44310D4(a2 + v36, v63, type metadata accessor for Source);
              if (*v40 != *v41 || v40[1] != v41[1])
              {
                sub_1C4F02938();
              }

              sub_1C44541BC(v41, type metadata accessor for Source);
              sub_1C44541BC(v40, type metadata accessor for Source);
LABEL_57:
              sub_1C43FE9F0();
              return;
            }
          }

          v47 = v64;
          v48 = *(v64 + 40);
          v49 = *(a1 + v48);
          v50 = *(a1 + v48 + 8);
          v51 = (a2 + v48);
          v52 = v49 == *v51 && v50 == v51[1];
          if (v52 || (sub_1C43FF938(), (sub_1C4F02938() & 1) != 0))
          {
            v53 = *(v47 + 48);
            v54 = *(a2 + v53);
            v55 = *(a1 + v53);
            if (sub_1C4684BDC())
            {
              sub_1C4435658(*(v47 + 44));
            }

            else
            {
              sub_1C4440160();
              v57 = *(a2 + v53);
              v58 = 0xE700000000000000;
              v59 = v56;
              switch(*(a1 + v53))
              {
                case 1:
                  v58 = 0xE400000000000000;
                  v59 = 1819047270;
                  break;
                case 2:
                  v59 = sub_1C44076F0();
                  break;
                case 3:
                  v59 = sub_1C43FC708();
                  break;
                default:
                  break;
              }

              v60 = 0xE700000000000000;
              switch(v57)
              {
                case 1:
                  v60 = 0xE400000000000000;
                  v56 = 1819047270;
                  break;
                case 2:
                  sub_1C4417600();
                  break;
                case 3:
                  sub_1C440AFE0();
                  break;
                default:
                  break;
              }

              if (v59 != v56 || v58 != v60)
              {
                sub_1C4F02938();
              }
            }
          }

          else
          {
            sub_1C43FF938();
            sub_1C4F02938();
          }

          goto LABEL_57;
        }

        goto LABEL_23;
      }

      sub_1C442E734();
      sub_1C43FE9F0();

      sub_1C4EFF868();
    }

    else
    {
      sub_1C43FF938();
      sub_1C43FE9F0();

      sub_1C4F02938();
    }
  }

  else
  {
    sub_1C4404C28();
    sub_1C43FE9F0();

    sub_1C4EFF078();
  }
}

uint64_t sub_1C4D38500()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);

  sub_1C47D32A0();
  v3 = v2;

  return v3;
}

void sub_1C4D38590(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
  v19 = a2 + 40;
  v20 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v5 + 16 * v3); ; i += 2)
  {
    if (v4 == v3)
    {
      sub_1C4BA06BC(v20);
      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

    v9 = *(i - 1);
    v8 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C459ACF4(a1, v9, v8);
    if (v2)
    {

      return;
    }

    v11 = v10;
    if (v10)
    {
      v12 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v20 + 16);
        sub_1C458F6A8();
        v12 = v17;
      }

      v13 = *(v12 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1C458F6A8();
        v14 = v13 + 1;
        v12 = v18;
      }

      *(v12 + 16) = v14;
      v20 = v12;
      v15 = (v12 + 24 * v13);
      v15[4] = v9;
      v15[5] = v8;
      v15[6] = v11;
      v3 = v7;
      v5 = v19;
      goto LABEL_2;
    }

    ++v3;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t VisionKeyValueStore.fetchNameEntities(for:)()
{
  v1 = *(v0 + 32);
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Bool __swiftcall VisualEntity.greaterThan(_:)(IntelligencePlatformCore::VisualEntity *a1)
{
  association = a1->association;
  v3 = *(v1 + 48);
  if (association < v3)
  {
    return 1;
  }

  return a1->confidence < *(v1 + 52) && v3 == association;
}

uint64_t VisionKeyValueStore.fetchRelationshipEntities(for:)()
{
  v1 = *(v0 + 40);
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t VisionKeyValueStore.fetchEntityIdentifiers(for:)()
{
  v1 = *(v0 + 24);
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  VisionKeyValueStore.autonamingFeedbackDecision(identifier:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(a1, a2, a3, a4, a5);
  if (v6)
  {
    result = VisionKeyValueStore.fetchEntityIdentifiers(for:)();
    v8 = result;
    v9 = 0;
    HIDWORD(v53) = 0;
    v10 = 0;
    v11 = result + 56;
    v12 = 1 << *(result + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(result + 56);
    v15 = (v12 + 63) >> 6;
    v54 = a3 + 56;
LABEL_6:
    while (v14)
    {
LABEL_11:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = *(v8 + 48) + 56 * (v17 | (v10 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 48);
      v22 = *(a3 + 16);
      if (v21 == 6)
      {
        if (v22)
        {
          LODWORD(v53) = v9;
          v37 = *(a3 + 40);
          sub_1C4F02AF8();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01298();
          v38 = sub_1C4F02B68();
          v46 = ~(-1 << *(a3 + 32));
          while (1)
          {
            sub_1C4426294(v38, v39, v40, v41, v42, v43, v44, v45, v52, v53, v54);
            if ((v47 & 1) == 0)
            {
              break;
            }

            sub_1C4415178();
            if (!v35 || v48 != v19)
            {
              sub_1C44129CC();
              v50 = sub_1C4F02938();
              v38 = 0;
              if ((v50 & 1) == 0)
              {
                continue;
              }
            }

            HIDWORD(v53) = 1;
            v9 = v53;
            goto LABEL_6;
          }
        }

        goto LABEL_35;
      }

      if (v22)
      {
        LODWORD(v53) = v9;
        v23 = *(a3 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v24 = sub_1C4F02B68();
        v32 = ~(-1 << *(a3 + 32));
        while (1)
        {
          sub_1C4426294(v24, v25, v26, v27, v28, v29, v30, v31, v52, v53, v54);
          if ((v33 & 1) == 0)
          {
            break;
          }

          sub_1C4415178();
          v35 = v35 && v34 == v19;
          if (!v35)
          {
            sub_1C44129CC();
            v36 = sub_1C4F02938();
            v24 = 0;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          v9 = 1;
          goto LABEL_31;
        }

        v9 = v53;
LABEL_31:
      }
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        v51 = BYTE4(v53) | v9;
        return v51 & 1;
      }

      v14 = *(v11 + 8 * v16);
      ++v10;
      if (v14)
      {
        v10 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    v51 = 0;
    return v51 & 1;
  }

  return result;
}

void sub_1C4D38AF8()
{
  *&xmmword_1EC0C6670 = 0;
  *(&xmmword_1EC0C6670 + 1) = 0xE000000000000000;
  qword_1EC0C6680 = 0;
  unk_1EC0C6688 = 0xE000000000000000;
  *&xmmword_1EC0C6690 = 0;
  *(&xmmword_1EC0C6690 + 1) = 0xE000000000000000;
  LOBYTE(qword_1EC0C66A0) = 0;
  HIDWORD(qword_1EC0C66A0) = 0;
}

uint64_t static VisualEntity.AbsoluteMin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7190 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EC0C6680;
  v7[0] = xmmword_1EC0C6670;
  v7[1] = *&qword_1EC0C6680;
  v3 = xmmword_1EC0C6690;
  v7[2] = xmmword_1EC0C6690;
  v4 = qword_1EC0C66A0;
  v8 = qword_1EC0C66A0;
  *a1 = xmmword_1EC0C6670;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1C461B90C(v7, v6);
}

BOOL static VisualEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v14 = *(a2 + 52);
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v15 = v2 == v8 && v4 == v9;
  if (!v15 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v10 && v5 == v11)
  {
    if (v6 == v12)
    {
      return v7 == v14;
    }

    return 0;
  }

  v17 = sub_1C4F02938();
  result = 0;
  if ((v17 & 1) != 0 && v6 == v12)
  {
    return v7 == v14;
  }

  return result;
}

uint64_t sub_1C4D38CB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746169636F737361 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C4D38E6C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x746169636F737361;
      break;
    case 4:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D38F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D38CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D38F64(uint64_t a1)
{
  v2 = sub_1C4D3C11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D38FA0(uint64_t a1)
{
  v2 = sub_1C4D3C11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualEntity.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C66A8, &qword_1C4F6E660);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v24 = v1[3];
  v25 = v13;
  v14 = v1[4];
  v22 = v1[5];
  v23 = v14;
  v21 = *(v1 + 48);
  v15 = *(v1 + 13);
  v16 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3C11C();
  sub_1C4F02BF8();
  v32 = 0;
  v17 = v26;
  sub_1C4F02798();
  if (!v17)
  {
    v18 = v21;
    v31 = 1;
    sub_1C43FBF44();
    sub_1C4F02798();
    v30 = 2;
    sub_1C43FBF44();
    sub_1C4F02798();
    v29 = v18;
    v28 = 3;
    sub_1C4D3C170();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v27 = 4;
    sub_1C43FBF44();
    sub_1C4F027C8();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t VisualEntity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 13);
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F01298();
  MEMORY[0x1C69417F0](v7);
  return sub_1C4F02B38();
}

uint64_t VisualEntity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 13);
  sub_1C441EC18();
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F01298();
  MEMORY[0x1C69417F0](v7);
  sub_1C4F02B38();
  return sub_1C4F02B68();
}

uint64_t VisualEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C66B0, &qword_1C4F6E668);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3C11C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  sub_1C43FF6BC();
  v10 = sub_1C4F02678();
  v25 = v11;
  sub_1C43FF6BC();
  v12 = sub_1C4F02678();
  v24 = v13;
  v22 = v12;
  LOBYTE(v30[0]) = 2;
  v21 = sub_1C4F02678();
  v23 = v14;
  LOBYTE(v26) = 3;
  sub_1C4D3C1C4();
  sub_1C4F026C8();
  v33 = 4;
  sub_1C43FF6BC();
  sub_1C4F026A8();
  v16 = v15;
  v17 = sub_1C43FD158();
  v18(v17);
  *&v26 = v10;
  *(&v26 + 1) = v25;
  *&v27 = v22;
  *(&v27 + 1) = v24;
  *&v28 = v21;
  *(&v28 + 1) = v23;
  LOBYTE(v29) = 2;
  HIDWORD(v29) = v16;
  v19 = v27;
  *a2 = v26;
  *(a2 + 16) = v19;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  sub_1C461B90C(&v26, v30);
  sub_1C440962C(a1);
  v30[0] = v10;
  v30[1] = v25;
  v30[2] = v22;
  v30[3] = v24;
  v30[4] = v21;
  v30[5] = v23;
  v31 = 2;
  v32 = v16;
  return sub_1C4851A34(v30);
}

uint64_t sub_1C4D39664()
{
  sub_1C4F02AF8();
  VisualEntity.hash(into:)();
  return sub_1C4F02B68();
}

uint64_t sub_1C4D396B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C4FC7570 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEF686374614D7265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4FC7590 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C4FC75B0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C4FC75D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F486C61756E616DLL && a2 == 0xED000074694B656DLL;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x68506C61756E616DLL && a2 == 0xEC000000736F746FLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D39908(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6F486C61756E616DLL;
      break;
    case 6:
      result = 0x68506C61756E616DLL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C4D399F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D39A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D396B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D39A74(uint64_t a1)
{
  v2 = sub_1C4D3C218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39AB0(uint64_t a1)
{
  v2 = sub_1C4D3C218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39AEC(uint64_t a1)
{
  v2 = sub_1C4D3C314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39B28(uint64_t a1)
{
  v2 = sub_1C4D3C314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39B64(uint64_t a1)
{
  v2 = sub_1C4D3C368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39BA0(uint64_t a1)
{
  v2 = sub_1C4D3C368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39BDC(uint64_t a1)
{
  v2 = sub_1C4D3C3BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39C18(uint64_t a1)
{
  v2 = sub_1C4D3C3BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39C54(uint64_t a1)
{
  v2 = sub_1C4D3C410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39C90(uint64_t a1)
{
  v2 = sub_1C4D3C410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39CCC(uint64_t a1)
{
  v2 = sub_1C4D3C464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39D08(uint64_t a1)
{
  v2 = sub_1C4D3C464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39D44(uint64_t a1)
{
  v2 = sub_1C4D3C2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39D80(uint64_t a1)
{
  v2 = sub_1C4D3C2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39DBC(uint64_t a1)
{
  v2 = sub_1C4D3C26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39DF8(uint64_t a1)
{
  v2 = sub_1C4D3C26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssociationType.encode(to:)()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C66B8, &qword_1C4F6E670);
  v5 = sub_1C43FCDF8(v4);
  v84 = v6;
  v85 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v83 = v10;
  v11 = sub_1C456902C(&qword_1EC0C66C0, &qword_1C4F6E678);
  v12 = sub_1C43FCDF8(v11);
  v81 = v13;
  v82 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v80 = v17;
  v18 = sub_1C456902C(&qword_1EC0C66C8, &qword_1C4F6E680);
  v19 = sub_1C43FCDF8(v18);
  v78 = v20;
  v79 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v77 = v24;
  v25 = sub_1C456902C(&qword_1EC0C66D0, &qword_1C4F6E688);
  v26 = sub_1C43FCDF8(v25);
  v75 = v27;
  v76 = v26;
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  v74 = v31;
  v32 = sub_1C456902C(&qword_1EC0C66D8, &qword_1C4F6E690);
  v33 = sub_1C43FCDF8(v32);
  v72 = v34;
  v73 = v33;
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v71 = v38;
  v39 = sub_1C456902C(&qword_1EC0C66E0, &qword_1C4F6E698);
  v40 = sub_1C43FCDF8(v39);
  v69 = v41;
  v70 = v40;
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v67 - v45;
  v47 = sub_1C456902C(&qword_1EC0C66E8, &qword_1C4F6E6A0);
  sub_1C43FCDF8(v47);
  v68 = v48;
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v67 - v52;
  v86 = sub_1C456902C(&qword_1EC0C66F0, &qword_1C4F6E6A8);
  sub_1C43FCDF8(v86);
  v55 = v54;
  v57 = *(v56 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v67 - v59;
  v61 = *v1;
  v62 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4D3C218();
  sub_1C4F02BF8();
  v63 = (v55 + 8);
  switch(v61)
  {
    case 1:
      sub_1C4D3C410();
      sub_1C440B860();
      v66 = v69;
      v65 = v70;
      goto LABEL_9;
    case 2:
      sub_1C4D3C3BC();
      v46 = v71;
      sub_1C440B860();
      v66 = v72;
      v65 = v73;
      goto LABEL_9;
    case 3:
      sub_1C4D3C368();
      v46 = v74;
      sub_1C440B860();
      v66 = v75;
      v65 = v76;
      goto LABEL_9;
    case 4:
      sub_1C4D3C314();
      v46 = v77;
      sub_1C440B860();
      v66 = v78;
      v65 = v79;
      goto LABEL_9;
    case 5:
      sub_1C4D3C2C0();
      v46 = v80;
      sub_1C440B860();
      v66 = v81;
      v65 = v82;
      goto LABEL_9;
    case 6:
      sub_1C4D3C26C();
      v46 = v83;
      sub_1C440B860();
      v66 = v84;
      v65 = v85;
LABEL_9:
      (*(v66 + 8))(v46, v65);
      (*v63)(v60, v47);
      break;
    default:
      sub_1C4D3C464();
      v64 = v86;
      sub_1C4F02718();
      (*(v68 + 8))(v53, v47);
      (*v63)(v60, v64);
      break;
  }

  sub_1C43FBC80();
}

uint64_t AssociationType.hashValue.getter()
{
  v1 = *v0;
  sub_1C441EC18();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

void AssociationType.init(from:)()
{
  sub_1C43FE96C();
  v111 = v0;
  v2 = v1;
  v106 = v3;
  v4 = sub_1C456902C(&qword_1EC0C6728, &qword_1C4F6E6B0);
  v102 = sub_1C43FCDF8(v4);
  v103 = v5;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v109 = v9;
  v10 = sub_1C456902C(&qword_1EC0C6730, &qword_1C4F6E6B8);
  v100 = sub_1C43FCDF8(v10);
  v101 = v11;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v108 = v15;
  v94 = sub_1C456902C(&qword_1EC0C6738, &qword_1C4F6E6C0);
  sub_1C43FCDF8(v94);
  v99 = v16;
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v105 = v20;
  v21 = sub_1C456902C(&qword_1EC0C6740, &qword_1C4F6E6C8);
  v22 = sub_1C43FCDF8(v21);
  v97 = v23;
  v98 = v22;
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v104 = v27;
  v28 = sub_1C456902C(&qword_1EC0C6748, &qword_1C4F6E6D0);
  v29 = sub_1C43FCDF8(v28);
  v95 = v30;
  v96 = v29;
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBC74();
  v107 = v34;
  v35 = sub_1C456902C(&qword_1EC0C6750, &qword_1C4F6E6D8);
  v36 = sub_1C43FCDF8(v35);
  v92 = v37;
  v93 = v36;
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v86 - v41;
  v43 = sub_1C456902C(&qword_1EC0C6758, &qword_1C4F6E6E0);
  sub_1C43FCDF8(v43);
  v91 = v44;
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v86 - v48;
  v50 = sub_1C456902C(&qword_1EC0C6760, &unk_1C4F6E6E8);
  sub_1C43FCDF8(v50);
  v52 = v51;
  v54 = *(v53 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v86 - v56;
  v58 = v2[3];
  v59 = v2[4];
  v110 = v2;
  sub_1C4409678(v2, v58);
  sub_1C4D3C218();
  v60 = v111;
  sub_1C4F02BC8();
  if (v60)
  {
    goto LABEL_8;
  }

  v89 = v49;
  v88 = v43;
  v90 = v42;
  v62 = v107;
  v61 = v108;
  v63 = v109;
  v111 = v50;
  v64 = sub_1C4F026E8();
  sub_1C4570934(v64, 0);
  if (v66 == v67 >> 1)
  {
LABEL_7:
    v76 = v57;
    v77 = sub_1C4F022E8();
    swift_allocError();
    v79 = v78;
    v80 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v79 = &type metadata for AssociationType;
    v81 = v111;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x1E69E6AF8], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v76, v81);
LABEL_8:
    sub_1C440962C(v110);
LABEL_9:
    sub_1C43FBC80();
    return;
  }

  v86[1] = 0;
  if (v66 < (v67 >> 1))
  {
    v87 = *(v65 + v66);
    sub_1C4570928(v66 + 1);
    v69 = v68;
    v71 = v70;
    swift_unknownObjectRelease();
    if (v69 == v71 >> 1)
    {
      v72 = v52;
      v73 = v106;
      v74 = v111;
      switch(v87)
      {
        case 1:
          sub_1C4D3C410();
          v63 = v90;
          sub_1C44013FC();
          swift_unknownObjectRelease();
          v84 = v92;
          v83 = v93;
          goto LABEL_16;
        case 2:
          sub_1C4D3C3BC();
          sub_1C44013FC();
          swift_unknownObjectRelease();
          (*(v95 + 8))(v62, v96);
          break;
        case 3:
          sub_1C4D3C368();
          v63 = v104;
          sub_1C44013FC();
          swift_unknownObjectRelease();
          v84 = v97;
          v83 = v98;
          goto LABEL_16;
        case 4:
          sub_1C4D3C314();
          v82 = v105;
          sub_1C44013FC();
          swift_unknownObjectRelease();
          (*(v99 + 8))(v82, v94);
          break;
        case 5:
          sub_1C4D3C2C0();
          sub_1C44013FC();
          swift_unknownObjectRelease();
          (*(v101 + 8))(v61, v100);
          break;
        case 6:
          sub_1C4D3C26C();
          sub_1C44013FC();
          swift_unknownObjectRelease();
          v83 = v102;
          v84 = v103;
LABEL_16:
          (*(v84 + 8))(v63, v83);
          break;
        default:
          sub_1C4D3C464();
          v75 = v89;
          sub_1C44013FC();
          swift_unknownObjectRelease();
          (*(v91 + 8))(v75, v88);
          break;
      }

      (*(v72 + 8))(v57, v74);
      v85 = v110;
      *v73 = v87;
      sub_1C440962C(v85);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void VisionKeyValueStore.init(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  a10 = *v20;
  v27 = type metadata accessor for Configuration();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &a9 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &a9 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &a9 - v38;
  v40 = sub_1C440824C();
  sub_1C44310D4(v40, v39, v41);
  v42 = type metadata accessor for KeyValueStore();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = KeyValueStore.init(config:domain:)(v39, 0xD00000000000001BLL, 0x80000001C4FC7460);
  if (v21)
  {
    sub_1C44093A8();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24[2] = v45;
    v46 = sub_1C440824C();
    sub_1C44310D4(v46, v37, v47);
    sub_1C4433A20();
    v24[3] = KeyValueStore.init(config:domain:)(v37, 0xD00000000000001BLL, 0x80000001C4FC7460);
    v48 = sub_1C440824C();
    sub_1C44310D4(v48, v34, v49);
    sub_1C4433A20();
    v24[4] = KeyValueStore.init(config:domain:)(v34, 0xD000000000000019, 0x80000001C4FC7460);
    sub_1C44310D4(v26, v31, type metadata accessor for Configuration);
    sub_1C4433A20();
    v50 = KeyValueStore.init(config:domain:)(v31, 0xD000000000000021, 0x80000001C4FC7460);
    sub_1C44541BC(v26, type metadata accessor for Configuration);
    v24[5] = v50;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D3AFBC(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v6 = a3[1];
  v54 = *a3;
  v55 = v6;
  v56 = a3[2];
  v57 = *(a3 + 6);
  v46 = MEMORY[0x1E69E7CD0];
  sub_1C461B90C(&v54, &v42);
  result = sub_1C44D01BC();
  if (v4)
  {
    return sub_1C4851A34(&v54);
  }

  v8 = result;
  if (!result)
  {
    goto LABEL_39;
  }

  if (!*(result + 16))
  {

LABEL_39:
    v13 = *(&v57 + 1);
    v27 = v57;
    v29 = *(&v56 + 1);
    v28 = v56;
    v31 = *(&v55 + 1);
    v30 = v55;
    v33 = *(&v54 + 1);
    v32 = v54;
LABEL_40:
    v47[0] = v32;
    v47[1] = v33;
    v47[2] = v30;
    v47[3] = v31;
    v47[4] = v28;
    v47[5] = v29;
    v48 = v27;
    v49 = v13;
    sub_1C483B90C(&v42, v47);
    sub_1C4851A34(&v42);
    sub_1C495C180();
  }

  v58 = a4;
  v9 = 0;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 56);
  v13 = *(&v57 + 1);
  v14 = v57;
  v38 = *(&v56 + 1);
  v39 = v56;
  v36 = *(&v55 + 1);
  v37 = v55;
  v34 = *(&v54 + 1);
  v35 = v54;
  v15 = (v10 + 63) >> 6;
LABEL_8:
  v59 = v14;
  while (v12)
  {
LABEL_14:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(v8 + 48) + 56 * (v17 | (v9 << 6));
    v19 = *(v18 + 48);
    v20 = *(v18 + 32);
    v21 = *v18;
    v51 = *(v18 + 16);
    v52 = v20;
    v50 = v21;
    v53 = v19;
    if (v58)
    {
      if (v58 == 1)
      {
        if (v35 == v50 && v34 == *(&v50 + 1))
        {
          goto LABEL_31;
        }
      }

      else if (v39 == v52 && v38 == *(&v52 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (v37 == v51 && v36 == *(&v51 + 1))
    {
      goto LABEL_31;
    }

    result = sub_1C4F02938();
    v14 = v59;
    if (result)
    {
LABEL_31:
      v25 = v53;
      v26 = *(&v53 + 1);
      if (v14 < v53)
      {
        goto LABEL_36;
      }

      if (v53 == v14 && v13 < *(&v53 + 1))
      {
        v25 = v14;
LABEL_36:
        *&v42 = v35;
        *(&v42 + 1) = v34;
        *&v43 = v37;
        *(&v43 + 1) = v36;
        *&v44 = v39;
        *(&v44 + 1) = v38;
        LOBYTE(v45) = v14;
        *(&v45 + 1) = v13;
        sub_1C461B90C(&v50, v40);
        result = sub_1C4851A34(&v42);
        v38 = *(&v52 + 1);
        v39 = v52;
        v36 = *(&v51 + 1);
        v37 = v51;
        v14 = v25;
        v13 = v26;
        v34 = *(&v50 + 1);
        v35 = v50;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1C461B90C(&v50, &v42);
      sub_1C483B90C(v40, &v50);
      v42 = v40[0];
      v43 = v40[1];
      v44 = v40[2];
      v45 = v41;
      result = sub_1C4851A34(&v42);
      v14 = v59;
    }
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      v27 = v59;
      v29 = v38;
      v28 = v39;
      v31 = v36;
      v30 = v37;
      v33 = v34;
      v32 = v35;
      goto LABEL_40;
    }

    v12 = *(v8 + 56 + 8 * v16);
    ++v9;
    if (v12)
    {
      v9 = v16;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.fetchAll(domain:)(Swift::String domain)
{
  object = domain._object;
  countAndFlagsBits = domain._countAndFlagsBits;
  v4 = domain._countAndFlagsBits == 0xD000000000000019 && 0x80000001C4FC74A0 == domain._object;
  if (v4 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0))
  {
    v5 = v1[4];
  }

  else
  {
    v9 = countAndFlagsBits == 0xD00000000000001BLL && 0x80000001C4FC7480 == object;
    if (v9 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0))
    {
      v10 = v1[3];
    }

    else
    {
      v11 = countAndFlagsBits == 0xD00000000000001BLL && 0x80000001C4FC7460 == object;
      if (v11 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0))
      {
        v12 = v1[2];
      }

      else
      {
        if (countAndFlagsBits != 0xD000000000000021 || 0x80000001C4FC74C0 != object)
        {
          sub_1C44129CC();
          if ((sub_1C4F02938() & 1) == 0)
          {
            v6 = 0;
            goto LABEL_8;
          }
        }

        v14 = v1[5];
      }
    }
  }

  KeyValueStore.keys()();
  v6 = sub_1C4D38500();

LABEL_8:
  v8 = v6;
  result.value._rawValue = v8;
  result.is_nil = v7;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.delete(entityIdentifier:name:relationship:visualIdentifier:)(Swift::String_optional entityIdentifier, Swift::String_optional name, Swift::String_optional relationship, Swift::String visualIdentifier)
{
  object = visualIdentifier._object;
  countAndFlagsBits = visualIdentifier._countAndFlagsBits;
  v9 = relationship.value._object;
  v10 = relationship.value._countAndFlagsBits;
  v11 = name.value._object;
  v12 = name.value._countAndFlagsBits;
  if (entityIdentifier.value._object)
  {
    v13 = entityIdentifier.value._object;
    sub_1C44062DC();
    if (v14)
    {
      sub_1C4D3B568(v6, v13, countAndFlagsBits, object, 1, v4[2]);
      if (v5)
      {
        return;
      }

      sub_1C4D3B568(countAndFlagsBits, object, v6, v13, 1, v4[3]);
    }
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (sub_1C4D3B568(countAndFlagsBits, object, v12, v11, 0, v4[4]), !v5))
  {
LABEL_10:
    if (v9)
    {
      v16 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v16 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_1C4D3B568(countAndFlagsBits, object, v10, v9, 2, v4[5]);
      }
    }
  }
}

uint64_t sub_1C4D3B568(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5, uint64_t a6)
{
  LODWORD(v8) = a5;
  v46 = *MEMORY[0x1E69E9840];
  result = sub_1C44D01BC();
  if (!v6)
  {
    v14 = result;
    if (result)
    {
      v15 = a4;
      v41[1] = a6;
      v41[2] = v41;
      v16 = MEMORY[0x1EEE9AC00](result);
      v17 = v38;
      v38[16] = v8;
      v39 = a3;
      v40 = a4;
      v18 = *(v14 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      v41[3] = a1;
      v41[4] = a2;
      if ((v18 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        LODWORD(v45) = v8;
        v41[0] = v38;
        MEMORY[0x1EEE9AC00](v16);
        v44 = v21;
        v42 = &v38[-((v20 + 15) & 0x3FFFFFFFFFFFFFF0)];
        sub_1C4501018(0, v21, v42);
        v43 = 0;
        v20 = 0;
        v22 = 1 << *(v14 + 32);
        v23 = -1;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        v8 = v23 & *(v14 + 56);
        v24 = (v22 + 63) >> 6;
        v17 = v15;
        while (v8)
        {
          v25 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
LABEL_14:
          v28 = v25 | (v20 << 6);
          v29 = (*(v14 + 48) + 56 * v28);
          if (v45)
          {
            if (v45 == 1)
            {
              v30 = *v29;
              v31 = v29[1];
            }

            else
            {
              v30 = v29[4];
              v31 = v29[5];
            }
          }

          else
          {
            v30 = v29[2];
            v31 = v29[3];
          }

          if (v30 != a3 || v31 != v17)
          {
            v33 = sub_1C4F02938();
            v17 = v15;
            if ((v33 & 1) == 0)
            {
              *&v42[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
              if (__OFADD__(v43++, 1))
              {
                __break(1u);
LABEL_27:
                sub_1C4A8E4C4(v42, v19, v43, v14);
                goto LABEL_28;
              }
            }
          }
        }

        v26 = v20;
        v19 = v44;
        while (1)
        {
          v20 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v20 >= v24)
          {
            goto LABEL_27;
          }

          v27 = *(v14 + 56 + 8 * v20);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v8 = (v27 - 1) & v27;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_31:
        v45 = v17;
        v36 = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v37 = swift_slowAlloc();
      sub_1C4D3C524(v37, v36, v14, sub_1C4D3D094);

      MEMORY[0x1C6942830](v37, -1, -1);
LABEL_28:
      sub_1C495C180();
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.clearAll()()
{
  v1 = v0;
  v2 = v0[2];
  KeyValueStore.clear()();
  if (!v3)
  {
    v4 = v1[3];
    KeyValueStore.clear()();
    if (!v5)
    {
      v6 = v1[4];
      KeyValueStore.clear()();
      if (!v7)
      {
        v8 = v1[5];
        KeyValueStore.clear()();
      }
    }
  }
}

uint64_t sub_1C4D3B904(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = *a1;
      v4 = a1[1];
    }

    else
    {
      v5 = a1[4];
      v4 = a1[5];
    }
  }

  else
  {
    v5 = a1[2];
    v4 = a1[3];
  }

  if (v5 == a3 && v4 == a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1C4F02938() ^ 1;
  }

  return v7 & 1;
}

void VisionKeyValueStore.deleteAssociations(for:associatedIdentifiers:associatedNames:)(int a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  oslog = a2;
  v6 = a3 + 56;
  v5 = *(a3 + 56);
  v7 = *(a3 + 32);
  sub_1C43FD030();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = (*(a3 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v17 = *v15;
      v16 = v15[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445013C(v17, v16, 0, 0, v18, v19, v20, v21, v43, v44, oslog);
      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v12)
    {
      break;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v22 = v44;
  v24 = v44 + 56;
  v23 = *(v44 + 56);
  v25 = *(v44 + 32);
  sub_1C43FD030();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = 0;
  if (!v28)
  {
    goto LABEL_10;
  }

  do
  {
    v32 = v31;
LABEL_13:
    v33 = (*(v22 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v28)))));
    v34 = *v33;
    v35 = v33[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445013C(0, 0, v34, v35, v36, v37, v38, v39, v43, v44, oslog);
    v28 &= v28 - 1;

    v31 = v32;
  }

  while (v28);
LABEL_10:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      return;
    }

    v28 = *(v24 + 8 * v32);
    ++v31;
    if (v28)
    {
      goto LABEL_13;
    }
  }

LABEL_24:
  __break(1u);
  swift_once();
  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDE2DE10);
  osloga = sub_1C4F00968();
  v41 = sub_1C4F01CD8();
  if (os_log_type_enabled(osloga, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1C43F8000, osloga, v41, "Error in VisionKeyValueStore: couldn't delete entries.", v42, 2u);
    MEMORY[0x1C6942830](v42, -1, -1);
  }
}

void VisionKeyValueStore.autonamingFeedbackDecision(identifier:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4D37108(a4);
  sub_1C4499940(v10, v11, v12, v13, v14, v15, v16, v17, v61, v63, v65, v66, v68, v70, v72, v74, v76, v78, v80, v81, v83, v85);
  v19 = v18;
  v77 = sub_1C4428DA0(a5);
  if (!v77)
  {
LABEL_52:

    return;
  }

  v64 = a4;
  v20 = 0;
  v79 = a5 & 0xC000000000000001;
  v67 = a5 + 32;
  v69 = a5 & 0xFFFFFFFFFFFFFF8;
  v75 = a3 + 56;
  v82 = a3;
  v21 = a5;
  v71 = a1;
  v73 = a2;
  v62 = a5;
  while (1)
  {
    if (v79)
    {
      v22 = MEMORY[0x1C6940F90](v20, v21);
    }

    else
    {
      if (v20 >= *(v69 + 16))
      {
        goto LABEL_56;
      }

      v22 = *(v67 + 8 * v20);
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_55;
    }

    v84 = v22;
    v24 = [v22 localIdentifier];
    v25 = sub_1C4F01138();
    v27 = v26;

    if (v25 == a1 && v27 == a2)
    {
      break;
    }

    v29 = sub_1C4F02938();

    if (v29)
    {
      goto LABEL_15;
    }

LABEL_13:

LABEL_51:
    if (v20 == v77)
    {
      goto LABEL_52;
    }
  }

LABEL_15:
  v30 = [v84 userFeedbackProperties];
  v31 = [v30 autonamingUserFeedbacks];

  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = [v31 array];

  v33 = sub_1C4F01678();
  v34 = *(v33 + 16);
  if (!v34)
  {

    a1 = v71;
    a2 = v73;
    goto LABEL_51;
  }

  v35 = 0;
  v36 = v33 + 32;
  v37 = &selRef_localizedName;
  while (2)
  {
    if (v35 < *(v33 + 16))
    {
      sub_1C442B870(v36 + 32 * v35, v86);
      sub_1C4D3C618();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_45;
      }

      v38 = v87;
      v39 = sub_1C4D3C5B4(v87);
      if (v40)
      {
        v41 = v39;
        v42 = v40;
        if ([v38 v37[202]] == 1)
        {
          v43 = sub_1C4F00FF8();
          v45 = v44;

          if (*(v19 + 16))
          {
            v46 = *(v19 + 40);
            sub_1C4F02AF8();
            sub_1C4F01298();
            v47 = sub_1C4F02B68();
            v48 = ~(-1 << *(v19 + 32));
            while (1)
            {
              v49 = v47 & v48;
              if (((*(v19 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
              {
                goto LABEL_48;
              }

              v50 = (*(v19 + 48) + 16 * v49);
              if (*v50 != v43 || v50[1] != v45)
              {
                v52 = sub_1C4F02938();
                v47 = v49 + 1;
                if ((v52 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_53;
            }
          }

          a3 = v82;
LABEL_44:
          v36 = v33 + 32;
LABEL_45:
          if (++v35 == v34)
          {

            a1 = v71;
            a2 = v73;
            v21 = v62;
            goto LABEL_51;
          }

          continue;
        }

        v53 = [v38 v37[202]];
        if ((v53 & 0x8000000000000000) == 0 && v53 == 2 && *(a3 + 16))
        {
          v54 = *(a3 + 40);
          sub_1C4F02AF8();
          sub_1C4F01298();
          v55 = sub_1C4F02B68();
          v56 = ~(-1 << *(a3 + 32));
          while (1)
          {
            v57 = v55 & v56;
            if (((*(v75 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
            {
              break;
            }

            v58 = (*(v82 + 48) + 16 * v57);
            if (*v58 != v41 || v42 != v58[1])
            {
              v60 = sub_1C4F02938();
              v55 = v57 + 1;
              if ((v60 & 1) == 0)
              {
                continue;
              }
            }

LABEL_53:

            VisionKeyValueStore.deleteAssociations(for:associatedIdentifiers:associatedNames:)(v71, v73, v82, v64);
            return;
          }

LABEL_48:

          a3 = v82;
          v37 = &selRef_localizedName;
          goto LABEL_44;
        }
      }

      goto LABEL_44;
    }

    break;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

unint64_t sub_1C4D3C11C()
{
  result = qword_1EDDF8290;
  if (!qword_1EDDF8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8290);
  }

  return result;
}

unint64_t sub_1C4D3C170()
{
  result = qword_1EDDE81F0;
  if (!qword_1EDDE81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE81F0);
  }

  return result;
}

unint64_t sub_1C4D3C1C4()
{
  result = qword_1EDDF68D8;
  if (!qword_1EDDF68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68D8);
  }

  return result;
}

unint64_t sub_1C4D3C218()
{
  result = qword_1EDDF6968;
  if (!qword_1EDDF6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6968);
  }

  return result;
}

unint64_t sub_1C4D3C26C()
{
  result = qword_1EC0C66F8;
  if (!qword_1EC0C66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C66F8);
  }

  return result;
}

unint64_t sub_1C4D3C2C0()
{
  result = qword_1EC0C6700;
  if (!qword_1EC0C6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6700);
  }

  return result;
}

unint64_t sub_1C4D3C314()
{
  result = qword_1EC0C6708;
  if (!qword_1EC0C6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6708);
  }

  return result;
}

unint64_t sub_1C4D3C368()
{
  result = qword_1EC0C6710;
  if (!qword_1EC0C6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6710);
  }

  return result;
}

unint64_t sub_1C4D3C3BC()
{
  result = qword_1EC0C6718;
  if (!qword_1EC0C6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6718);
  }

  return result;
}

unint64_t sub_1C4D3C410()
{
  result = qword_1EC0C6720;
  if (!qword_1EC0C6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6720);
  }

  return result;
}

unint64_t sub_1C4D3C464()
{
  result = qword_1EDDF68F0;
  if (!qword_1EDDF68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68F0);
  }

  return result;
}

void *VisionKeyValueStore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t VisionKeyValueStore.__deallocating_deinit()
{
  VisionKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

void *sub_1C4D3C524(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A8D4E8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4D3C5B4(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C4D3C618()
{
  result = qword_1EC0C5028;
  if (!qword_1EC0C5028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C5028);
  }

  return result;
}

unint64_t sub_1C4D3C660()
{
  result = qword_1EDDF8278;
  if (!qword_1EDDF8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8278);
  }

  return result;
}

unint64_t sub_1C4D3C6B4()
{
  result = qword_1EC0C6768;
  if (!qword_1EC0C6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6768);
  }

  return result;
}

_BYTE *sub_1C4D3C78C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D3C9B8()
{
  result = qword_1EC0C6770;
  if (!qword_1EC0C6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6770);
  }

  return result;
}

unint64_t sub_1C4D3CA10()
{
  result = qword_1EC0C6778;
  if (!qword_1EC0C6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6778);
  }

  return result;
}

unint64_t sub_1C4D3CA68()
{
  result = qword_1EDDF68E0;
  if (!qword_1EDDF68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68E0);
  }

  return result;
}

unint64_t sub_1C4D3CAC0()
{
  result = qword_1EDDF68E8;
  if (!qword_1EDDF68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68E8);
  }

  return result;
}

unint64_t sub_1C4D3CB18()
{
  result = qword_1EDDF6928;
  if (!qword_1EDDF6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6928);
  }

  return result;
}

unint64_t sub_1C4D3CB70()
{
  result = qword_1EDDF6930;
  if (!qword_1EDDF6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6930);
  }

  return result;
}

unint64_t sub_1C4D3CBC8()
{
  result = qword_1EDDF68F8;
  if (!qword_1EDDF68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68F8);
  }

  return result;
}

unint64_t sub_1C4D3CC20()
{
  result = qword_1EDDF6900;
  if (!qword_1EDDF6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6900);
  }

  return result;
}

unint64_t sub_1C4D3CC78()
{
  result = qword_1EDDF6918;
  if (!qword_1EDDF6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6918);
  }

  return result;
}

unint64_t sub_1C4D3CCD0()
{
  result = qword_1EDDF6920;
  if (!qword_1EDDF6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6920);
  }

  return result;
}

unint64_t sub_1C4D3CD28()
{
  result = qword_1EDDF6908;
  if (!qword_1EDDF6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6908);
  }

  return result;
}

unint64_t sub_1C4D3CD80()
{
  result = qword_1EDDF6910;
  if (!qword_1EDDF6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6910);
  }

  return result;
}

unint64_t sub_1C4D3CDD8()
{
  result = qword_1EDDF6938;
  if (!qword_1EDDF6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6938);
  }

  return result;
}

unint64_t sub_1C4D3CE30()
{
  result = qword_1EDDF6940;
  if (!qword_1EDDF6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6940);
  }

  return result;
}

unint64_t sub_1C4D3CE88()
{
  result = qword_1EDDF6948;
  if (!qword_1EDDF6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6948);
  }

  return result;
}

unint64_t sub_1C4D3CEE0()
{
  result = qword_1EDDF6950;
  if (!qword_1EDDF6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6950);
  }

  return result;
}

unint64_t sub_1C4D3CF38()
{
  result = qword_1EDDF6958;
  if (!qword_1EDDF6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6958);
  }

  return result;
}

unint64_t sub_1C4D3CF90()
{
  result = qword_1EDDF6960;
  if (!qword_1EDDF6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6960);
  }

  return result;
}

unint64_t sub_1C4D3CFE8()
{
  result = qword_1EDDF8280;
  if (!qword_1EDDF8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8280);
  }

  return result;
}

unint64_t sub_1C4D3D040()
{
  result = qword_1EDDF8288;
  if (!qword_1EDDF8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8288);
  }

  return result;
}

void sub_1C4D3D0B8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4D38590(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t VisionSignal.visualId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t VisionSignal.confidence.setter(float a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t VisionSignal.__allocating_init(visualId:confidence:)(uint64_t a1, uint64_t a2, float a3)
{
  sub_1C4401420();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t VisionSignal.init(visualId:confidence:)(uint64_t a1, uint64_t a2, float a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t static VisionSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t sub_1C4D3D29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6175736976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4D3D36C(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x64496C6175736976;
  }
}

uint64_t sub_1C4D3D3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D3D29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D3D3D8(uint64_t a1)
{
  v2 = sub_1C4D3D60C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D3D414(uint64_t a1)
{
  v2 = sub_1C4D3D60C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisionSignal.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t VisionSignal.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_1C4401420();

  return swift_deallocClassInstance();
}

uint64_t VisionSignal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C6780, &qword_1C4F6F0F0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3D60C();
  sub_1C4F02BF8();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v18[8] = 0;
  sub_1C4F02798();
  if (!v2)
  {
    swift_beginAccess();
    v16 = *(v3 + 32);
    v18[7] = 1;
    sub_1C4F027C8();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1C4D3D60C()
{
  result = qword_1EC0C6788;
  if (!qword_1EC0C6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6788);
  }

  return result;
}

uint64_t VisionSignal.__allocating_init(from:)(uint64_t *a1)
{
  sub_1C4401420();
  v2 = swift_allocObject();
  VisionSignal.init(from:)(a1);
  return v2;
}

uint64_t *VisionSignal.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = sub_1C456902C(&qword_1EC0C6790, &unk_1C4F6F0F8);
  v6 = sub_1C43FCDF8(v5);
  v18 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - v10;
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3D60C();
  sub_1C4F02BC8();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v18;
    v20 = 0;
    v1[2] = sub_1C4F02678();
    v1[3] = v14;
    v19 = 1;
    sub_1C4F026A8();
    v16 = v15;
    (*(v13 + 8))(v11, v5);
    *(v1 + 8) = v16;
  }

  sub_1C440962C(a1);
  return v1;
}

uint64_t sub_1C4D3D898@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = VisionSignal.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Source.visionSignals(from:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v104 = a2;
  v107[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C4EF9D38();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Source();
  v13 = *&(*(v12 - 1))->cb;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  v19 = sub_1C4F00558();
  v20 = sub_1C43FCDF8(v19);
  v102 = v21;
  v103 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = MEMORY[0x1E69E7CC0];
  sub_1C449ED64(v2, v18);
  if (qword_1EDDFED28 != -1)
  {
LABEL_83:
    swift_once();
  }

  v25 = sub_1C442B738(v12, &unk_1EDDFD088);
  v26 = sub_1C44209D0(v25);
  v28 = *v18;
  v29 = *(v18 + 8);
  v30 = v26 == *v18 && v27 == v29;
  if (v30 || (sub_1C440B884() & 1) != 0)
  {
    sub_1C448D818(v18);
    sub_1C4F00548();
  }

  else
  {
    if (qword_1EDDFD0D0 != -1)
    {
      swift_once();
    }

    v31 = sub_1C442B738(v12, qword_1EDDFD0D8);
    v33 = sub_1C44209D0(v31) == v28 && v32 == v29;
    if (v33 || (sub_1C440B884() & 1) != 0)
    {
      goto LABEL_26;
    }

    if (qword_1EDDFD130 != -1)
    {
      swift_once();
    }

    v34 = sub_1C442B738(v12, qword_1EDDFD138);
    if (sub_1C44209D0(v34) == v28 && v35 == v29)
    {
LABEL_26:
      sub_1C448D818(v18);
    }

    else
    {
      v37 = sub_1C440B884();
      sub_1C448D818(v18);
      if ((v37 & 1) == 0)
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C43FE9B4();
        }

        v38 = sub_1C4F00978();
        sub_1C442B738(v38, qword_1EDE2DE10);
        sub_1C449ED64(v3, v15);
        v39 = sub_1C4F00968();
        v40 = sub_1C4F01CF8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v107[0] = v42;
          *v41 = 136315138;
          v43 = *v15;
          v44 = *(v15 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C448D818(v15);
          v45 = sub_1C441D828(v43, v44, v107);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_1C43F8000, v39, v40, "Invalid source type for vision signal extraction: %s", v41, 0xCu);
          sub_1C440962C(v42);
          MEMORY[0x1C6942830](v42, -1, -1);
          MEMORY[0x1C6942830](v41, -1, -1);
        }

        else
        {

          sub_1C448D818(v15);
        }

        goto LABEL_55;
      }
    }

    sub_1C4F00538();
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E69AE370]) init];
  ObjCClassFromObject = swift_getObjCClassFromObject();

  v48 = [objc_allocWithZone(ObjCClassFromObject) init];
  v49 = [objc_opt_self() service];
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C4F0FCC0;
  *(v50 + 32) = v48;
  sub_1C4461BB8(0, &qword_1EDDDBB48, 0x1E69AE3B8);
  v3 = v48;
  v51 = sub_1C4F01658();

  v52 = sub_1C4EF9A38();
  v53 = sub_1C4F00528();
  sub_1C4EF9058();
  sub_1C4EF9CF8();
  v18 = v54;
  (*(v7 + 8))(v11, v4);
  v55 = sub_1C4F01108();

  v107[0] = 0;
  v104 = v49;
  v56 = [v49 performRequests:v51 onImageData:v52 withUniformTypeIdentifier:v53 andIdentifier:v55 error:v107];

  if (v56)
  {
    v57 = v107[0];
    v11 = 0;
    v58 = v105;
  }

  else
  {
    v59 = v107[0];
    v60 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v61 = sub_1C4F00978();
    sub_1C442B738(v61, qword_1EDE2DE10);
    v62 = sub_1C4F00968();
    v63 = sub_1C4F01CD8();
    v64 = os_log_type_enabled(v62, v63);
    v58 = v105;
    if (v64)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1C43F8000, v62, v63, "Error getting visual identifier from image", v65, 2u);
      MEMORY[0x1C6942830](v65, -1, -1);
    }

    v11 = 0;
  }

  v66 = sub_1C4D3E3F0(v3);
  if (!v66)
  {
    sub_1C442D994();
    v79(v58);
LABEL_54:

LABEL_55:
    v81 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v67 = v66;
  if (!sub_1C4428DA0())
  {
    sub_1C442D994();
    v80(v58);

    goto LABEL_54;
  }

  sub_1C4431590(0, (v67 & 0xC000000000000001) == 0);
  if ((v67 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x1C6940F90](0, v67);
  }

  else
  {
    v68 = *(v67 + 32);
  }

  v69 = v68;

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {

    sub_1C442D994();
    v86(v58);
    goto LABEL_55;
  }

  v71 = v70;
  v101 = v69;
  v72 = [v70 resultItems];
  sub_1C4461BB8(0, &unk_1EC0B9960, 0x1E69AE380);
  sub_1C4F01678();

  v73 = sub_1C4428DA0();

  if (!v73)
  {
    sub_1C442D994();
    v87(v105);
LABEL_63:

    goto LABEL_55;
  }

  v74 = [v71 resultItems];
  v15 = sub_1C4F01678();

  v107[0] = MEMORY[0x1E69E7CC0];
  v75 = sub_1C4428DA0();
  v76 = 0;
  v4 = (v15 & 0xC000000000000001);
  v7 = v15 & 0xFFFFFFFFFFFFFF8;
  v12 = &off_1E81F1000;
  while (v75 != v76)
  {
    if (v4)
    {
      v77 = MEMORY[0x1C6940F90](v76, v15);
    }

    else
    {
      if (v76 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v77 = *(v15 + 8 * v76 + 32);
    }

    v11 = v77;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    [v77 confidence];
    if (v78 >= 0.5)
    {
      sub_1C4F02318();
      v18 = *(v107[0] + 2);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v76;
  }

  v15 = v107[0];
  if (!sub_1C4428DA0())
  {
    sub_1C442D994();
    v88(v105);

    goto LABEL_63;
  }

  v84 = sub_1C4428DA0();
  if (v84 < 2)
  {
    v7 = v15 & 0xC000000000000001;
    sub_1C4431590(0, (v15 & 0xC000000000000001) == 0);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x1C6940F90](0, v15);
    }

    else
    {
      v89 = *(v15 + 32);
    }

    v90 = v89;
    [v89 confidence];
    v85 = v91;
  }

  else
  {
    v85 = 1.0 / v84;
    v7 = v15 & 0xC000000000000001;
  }

  v11 = sub_1C4428DA0();
  v18 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  v4 = &off_1E81F1000;
  while (v11 != v18)
  {
    if (v7)
    {
      v92 = MEMORY[0x1C6940F90](v18, v15);
    }

    else
    {
      if (v18 >= *(v15 + 16))
      {
        goto LABEL_82;
      }

      v92 = *(v15 + 8 * v18 + 32);
    }

    v93 = v92;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_81;
    }

    v94 = [v92 personIdentifier];
    v95 = sub_1C4F01138();
    v97 = v96;

    type metadata accessor for VisionSignal();
    v98 = swift_allocObject();
    *(v98 + 16) = v95;
    *(v98 + 24) = v97;
    *(v98 + 32) = v85;
    MEMORY[0x1C6940330]();
    v12 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v81 = v106;

    ++v18;
  }

  sub_1C442D994();
  v99(v105);
LABEL_56:
  v82 = *MEMORY[0x1E69E9840];
  return v81;
}

uint64_t sub_1C4D3E3F0(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1C4461BB8(0, &unk_1EDDDB840, 0x1E69AE3C0);
  v3 = sub_1C4F01678();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for VisionSignal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D3E5C0()
{
  result = qword_1EC0C6798;
  if (!qword_1EC0C6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6798);
  }

  return result;
}

unint64_t sub_1C4D3E618()
{
  result = qword_1EC0C67A0;
  if (!qword_1EC0C67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67A0);
  }

  return result;
}

unint64_t sub_1C4D3E670()
{
  result = qword_1EC0C67A8;
  if (!qword_1EC0C67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67A8);
  }

  return result;
}

uint64_t sub_1C4D3E6C4()
{
  if (qword_1EC0B7120 != -1)
  {
    swift_once();
  }

  qword_1EC0C67B0 = qword_1EC0C3888;
  unk_1EC0C67B8 = *&qword_1EC0C3890;
  qword_1EC0C67C8 = qword_1EC0C38A0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static VisitedLocation.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7198 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C67C8;
  *a1 = qword_1EC0C67B0;
  *(a1 + 8) = unk_1EC0C67B8;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t VisitedLocation.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t VisitedLocation.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4D3EC6C(uint64_t a1)
{
  v2 = sub_1C4D3F1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D3ECA8(uint64_t a1)
{
  v2 = sub_1C4D3F1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisitedLocation.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C67D0, &unk_1C4F6F2E8);
  v5 = sub_1C43FFC58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v18[2] = v1[3];
  v19 = v14;
  v18[1] = v1[4];
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3F1F0();
  sub_1C4F02BF8();
  v24 = 0;
  v16 = v20;
  sub_1C4F02798();
  if (!v16)
  {
    v21 = v19;
    v23 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
    v22 = 2;
    sub_1C4F02738();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t VisitedLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C67E0, &qword_1C4F6F2F8);
  v7 = sub_1C43FFC58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v23 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3F1F0();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v29 = 0;
  v15 = sub_1C4F02678();
  v25 = v16;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v28 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v24 = v26;
  v27 = 2;
  v17 = sub_1C4F02618();
  v19 = v18;
  v20 = v17;
  (*(v9 + 8))(v13, v3);
  v21 = v25;
  *a2 = v15;
  a2[1] = v21;
  a2[2] = v24;
  a2[3] = v20;
  a2[4] = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4D3F1F0()
{
  result = qword_1EC0C67D8;
  if (!qword_1EC0C67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67D8);
  }

  return result;
}

unint64_t sub_1C4D3F244(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D3F274();
  result = sub_1C4D3F2C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D3F274()
{
  result = qword_1EC0C67E8;
  if (!qword_1EC0C67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67E8);
  }

  return result;
}

unint64_t sub_1C4D3F2C8()
{
  result = qword_1EC0C67F0;
  if (!qword_1EC0C67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisitedLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D3F40C()
{
  result = qword_1EC0C67F8;
  if (!qword_1EC0C67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67F8);
  }

  return result;
}

unint64_t sub_1C4D3F464()
{
  result = qword_1EC0C6800;
  if (!qword_1EC0C6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6800);
  }

  return result;
}

unint64_t sub_1C4D3F4BC()
{
  result = qword_1EC0C6808;
  if (!qword_1EC0C6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6808);
  }

  return result;
}

void sub_1C4D3F510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v5 = sub_1C486C288(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 56 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v13 >= v12 >> 1)
        {
          sub_1C44CD9C0();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C440951C(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t VisualIdentifierBlockingFunction.init(_:predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  a4[2] = result;
  return result;
}

uint64_t sub_1C4D3F768(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 128) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D3F894, 0, 0);
}

uint64_t sub_1C4D3F894()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D3FC58(&qword_1EDDDC7A8, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
        v4 = sub_1C4422F90((v0 + 16));
        v5 = v3[5];
        sub_1C4419288();
        sub_1C4471750(v2, v6 + v7, v8);
        v9 = qword_1EDDFD1F0;
        v10 = 2;
        v11 = v4;
      }

      else
      {
        v12 = *(v0 + 96);
        v3 = type metadata accessor for WalletClassicOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D3FC58(&qword_1EDDDDBF0, type metadata accessor for WalletClassicOrderSourceIngestor);
        v11 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v12, v11, v13);
        v4 = (v11 + v3[5]);
        v9 = qword_1EDDFD1F0;
        v10 = 1;
      }

      if (v9 != -1)
      {
        sub_1C440EAE0();
      }

      v14 = *(v0 + 160);
      v15 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD1F8);
      sub_1C44068F0();
      sub_1C4471750(v16, v4, v17);
      *(v11 + v3[6]) = v10;
      v18 = v11 + v3[7];
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v15, v14, v19);
      if (qword_1EDDFD1F0 != -1)
      {
        sub_1C440EAE0();
      }

      v20 = *(v0 + 185);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      v24 = *(v0 + 96);
      v25 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD1F8);
      *(v0 + 168) = v25;
      sub_1C4471750(v25, v21, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v25, v23, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v24, v22, v26);
      *(v0 + 184) = v20;
      v27 = swift_task_alloc();
      *(v0 + 176) = v27;
      *v27 = v0;
      v27[1] = sub_1C4657140;
      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletClassicOrderEventPhase()
{
  result = qword_1EDDDFAF8;
  if (!qword_1EDDDFAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D3FC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D3FCA0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v53 = sub_1C4EFA018();
  v7 = sub_1C43FCDF8(v53);
  v50 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v49 = v11;
  sub_1C43FBE44();
  v52 = sub_1C4EF9BC8();
  v12 = sub_1C43FCDF8(v52);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C4EF9BA8();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = sub_1C4EF9B88();
  v30 = sub_1C43FCDF8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v37 = v36 - v35;
  v38 = sub_1C4EF9B98();
  v39 = sub_1C43FCDF8(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  (*(v44 + 104))(v43 - v42, *MEMORY[0x1E6969360]);
  v45 = v29;
  v46 = v53;
  (*(v32 + 104))(v37, *MEMORY[0x1E6969358], v45);
  (*(v23 + 104))(v28, *MEMORY[0x1E6969370], v20);
  (*(v14 + 104))(v19, *MEMORY[0x1E6969380], v52);
  sub_1C4EF9FE8();
  result = sub_1C44157D4(v6, 1, v46);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v50 + 32))(v49, v6, v46);
    return sub_1C4EF9BB8();
  }

  return result;
}

void sub_1C4D40014(uint64_t a1)
{
  v3 = 0;
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  v6 = *(a1 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v12 = v3;
LABEL_7:
      sub_1C441F124(v12);
      sub_1C44869B4(&v13, v1, v2);

      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }
}

void sub_1C4D400DC(uint64_t a1)
{
  v3 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v12 = v3;
LABEL_7:
      sub_1C441F124(v12);
      sub_1C44869B4(&v13, v1, v2);

      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1C4D401A4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(&v7, v6, v5);

    v4 += 2;
  }
}

void sub_1C4D4024C(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1C483A4A0(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1C4D40318(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 48);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = *(v4 - 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C483BD28();

    v4 += 3;
  }
}

uint64_t sub_1C4D403C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      sub_1C483D91C(v5, v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t (*BMWalletPaymentsCommerceClassicOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4))(uint64_t a1)
{
  v518 = a4;
  v5 = sub_1C456902C(&qword_1EC0C6810, &qword_1C4F6F5B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v10 = sub_1C43FD2C8(v9);
  v544 = type metadata accessor for WalletClassicOrderStructs.OrderTransactionRelationshipType(v10);
  v11 = sub_1C43FCDF8(v544);
  v543 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v17 = sub_1C43FD2C8(v16);
  v18 = type metadata accessor for WalletClassicOrderStructs.Transaction(v17);
  v19 = sub_1C440DBC4(v18, &v579);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  sub_1C43FCE30(v22);
  v23 = sub_1C456902C(&qword_1EC0C6818, &qword_1C4F6F5B8);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  sub_1C43FCE30(v27);
  v28 = sub_1C456902C(&qword_1EC0C6820, &qword_1C4F6F5C0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v33 = sub_1C43FD2C8(v32);
  v34 = type metadata accessor for WalletClassicOrderStructs.OrderPaymentRelationshipType(v33);
  v35 = sub_1C440DBC4(v34, v545);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  sub_1C43FCE30(v38);
  v39 = sub_1C456902C(&qword_1EC0C6828, &qword_1C4F7D270);
  sub_1C43FBD18(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v44 = sub_1C43FD2C8(v43);
  v45 = type metadata accessor for WalletClassicOrderStructs.QuantityRelationshipType(v44);
  v46 = sub_1C440DBC4(v45, &v577);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v51 = sub_1C43FD2C8(v50);
  v52 = type metadata accessor for WalletClassicOrderStructs.Payment(v51);
  v53 = sub_1C440DBC4(v52, &v543);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD2D8();
  sub_1C43FCE30(v56);
  v57 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v57);
  v59 = *(v58 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBC74();
  v555 = v61;
  v62 = sub_1C456902C(&qword_1EC0C6830, &qword_1C4F6F5C8);
  sub_1C43FBD18(v62);
  v64 = *(v63 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBC74();
  v570 = v66;
  v67 = sub_1C43FBE44();
  v68 = type metadata accessor for WalletClassicOrderStructs.OrderShipmentFullFillmentRelationshipType(v67);
  v69 = sub_1C43FCDF8(v68);
  v563 = v70;
  i = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBFDC();
  v571 = v73;
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FD230();
  v572 = v75;
  v76 = sub_1C43FBE44();
  v567 = type metadata accessor for WalletClassicOrderStructs.ShipmentFullFillmentInfo(v76);
  v77 = sub_1C43FBCE0(v567);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FD2D8();
  v568 = v80;
  v81 = sub_1C456902C(&qword_1EC0C6838, &qword_1C4F6F5D0);
  sub_1C43FBD18(v81);
  v83 = *(v82 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBC74();
  sub_1C43FCE30(v85);
  v86 = sub_1C456902C(&qword_1EC0C6840, &qword_1C4F6F5D8);
  sub_1C43FBD18(v86);
  v88 = *(v87 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C43FBC74();
  v91 = sub_1C43FD2C8(v90);
  v92 = type metadata accessor for WalletClassicOrderStructs.EntityOrganizationRelationshipType(v91);
  v93 = sub_1C440DBC4(v92, &v554);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FD2D8();
  v97 = sub_1C43FD2C8(v96);
  v98 = type metadata accessor for WalletClassicOrderStructs.Organization(v97);
  v99 = sub_1C440DBC4(v98, &v551);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  sub_1C43FD2D8();
  sub_1C43FCE30(v102);
  v103 = sub_1C456902C(&qword_1EC0C6848, &unk_1C4F6F5E0);
  sub_1C43FBD18(v103);
  v105 = *(v104 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FBC74();
  v557 = v107;
  sub_1C43FBE44();
  v556 = sub_1C4EF9648();
  v108 = sub_1C43FCDF8(v556);
  v541 = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v112);
  v540 = sub_1C4EF9F88();
  v113 = sub_1C43FCDF8(v540);
  v538 = v114;
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v117);
  v533 = sub_1C4EF9BD8();
  v118 = sub_1C43FCDF8(v533);
  v532 = v119;
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  sub_1C43FD2D8();
  v123 = sub_1C43FD2C8(v122);
  v124 = type metadata accessor for WalletClassicOrderStructs.DateRelationshipType(v123);
  v125 = sub_1C440DBC4(v124, &v567);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  sub_1C43FBCC4();
  v130 = v129 - v128;
  v559 = sub_1C4EF9CD8();
  v131 = sub_1C43FCDF8(v559);
  v535 = v132;
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FD230();
  v137 = sub_1C43FD2C8(v136);
  v548 = type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType(v137);
  v138 = sub_1C43FCDF8(v548);
  v558 = v139;
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v138);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v142);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v143);
  sub_1C43FD230();
  v145 = sub_1C43FD2C8(v144);
  v561 = type metadata accessor for WalletClassicOrderStructs.WalletOrder(v145);
  v146 = sub_1C43FBCE0(v561);
  v148 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v146);
  sub_1C43FBCC4();
  v151 = v150 - v149;
  HIDWORD(v508) = *a3;
  v575 = MEMORY[0x1E69E7CD0];
  sub_1C4F019E8();
  if (qword_1EDDE92B0 != -1)
  {
    swift_once();
  }

  v152 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v152, &qword_1EDE2CFD8);
  String.base64EncodedSHA(withPrefix:)();
  v154 = v153;
  v156 = v155;

  sub_1C4F019E8();
  v158 = v157;
  String.base64EncodedSHA(withPrefix:)();
  v160 = v159;
  v162 = v161;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v163 = v566;
  sub_1C4E7D15C(v160, v162, v164, v165, v166, v167, v168, v169, v491, v493, v494, v496, v498, v500, v502, v504, v506, v508, v510, v512);
  v560 = v163;
  if (!v163)
  {
    v562 = v151;
    v529 = v160;
    v542 = v162;
    v505 = v152;
    v503 = v154;
    v527 = v156;
    v170 = sub_1C465B638(v569, &selRef_orderNumber);
    if (v171)
    {
      v172 = sub_1C4D42C34(v170, v171);
      v174 = v173;

      v175 = (v562 + v561[9]);
      v176 = v175[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v175 = v172;
      v175[1] = v174;
      sub_1C44869B4(&v573, v172, v174);
    }

    sub_1C4EFEEF8();
    v177 = v549;
    sub_1C43FCF64();
    v565 = v178;
    sub_1C440BAA8(v179, v180, v181, v178);
    v182 = v548;
    v183 = v177 + v548[5];
    sub_1C4EFD258();
    v184 = v182[6];
    v185 = v570;
    v186 = v567;
    if (qword_1EDDFD1F0 != -1)
    {
LABEL_82:
      sub_1C440EAE0();
    }

    v187 = type metadata accessor for Source();
    sub_1C442B738(v187, &qword_1EDDFD1F8);
    sub_1C441AAE4();
    v566 = v188;
    sub_1C448D140(v188, v177 + v184);
    v189 = v177 + v182[7];
    sub_1C4EFE558();
    v190 = v182[9];
    v191 = (v177 + v182[8]);
    sub_1C4EFE658();
    v192 = v182[10];
    v193 = v177 + v182[11];
    sub_1C4EFEBF8();
    v194 = (v177 + v182[12]);
    *(v177 + v192) = xmmword_1C4F6F590;
    v195 = v569;
    *v191 = sub_1C465B638(v569, &selRef_orderIdentifier);
    v191[1] = v196;
    *v194 = sub_1C465B638(v195, &selRef_orderTypeIdentifier);
    v194[1] = v197;
    v198 = sub_1C456902C(&qword_1EC0C0358, &qword_1C4F3E6F0);
    v199 = (*(v558 + 80) + 32) & ~*(v558 + 80);
    v499 = *(v558 + 72);
    v495 = *(v558 + 80);
    v497 = v198;
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_1C4F0D130;
    sub_1C4403B84();
    v501 = v199;
    sub_1C448D140(v177, v201 + v199);
    v507 = v561[14];
    v202 = v562;
    v203 = *(v562 + v507);

    *(v202 + v507) = v200;
    sub_1C4E8FEF0();
    v204 = [v195 orderDate];
    if (v204)
    {
      v205 = v204;
      sub_1C4EF9C78();

      (*(v535 + 32))(v534, v530, v559);
      sub_1C43FCF64();
      sub_1C440BAA8(v206, v207, v208, v565);
      v209 = v130 + v536[5];
      sub_1C4EFD168();
      v210 = v536[6];
      sub_1C441AAE4();
      sub_1C448D140(v566, v130 + v211);
      v212 = v130 + v536[7];
      sub_1C4EFE658();
      v213 = v536[8];
      v214 = v130 + v536[9];
      sub_1C4EFEEE8();
      v215 = v536[11];
      v558 = v130 + v536[10];
      sub_1C4EFE7B8();
      sub_1C44036C8(v536[12]);
      v216 = v130 + v536[13];
      sub_1C4EFECE8();
      sub_1C44036C8(v536[14]);
      v217 = v130 + v536[15];
      sub_1C4EFE668();
      sub_1C44036C8(v536[16]);
      v218 = v130 + v536[17];
      sub_1C4EFE698();
      sub_1C44036C8(v536[18]);
      v219 = v130 + v536[19];
      sub_1C4EFEA38();
      v220 = (v130 + v536[20]);
      *(v130 + v213) = xmmword_1C4F6F5A0;
      sub_1C4D3FCA0(v531);
      sub_1C4EF9B48();
      sub_1C440D158();
      (*(v532 + 8))(v531, v533);
      v573 = v213;
      v574 = v534;
      *v220 = sub_1C4F01438();
      v220[1] = v221;
      v195 = v537;
      sub_1C4EF9F58();
      if (qword_1EDDE6518 != -1)
      {
        swift_once();
      }

      sub_1C4EF9EA8();
      sub_1C44CDAD4();
      sub_1C440D158();
      (*(v541 + 8))(v539, v556);
      (*(v538 + 8))(v537, v540);
      v222 = v558;
      *v558 = v213;
      *(v222 + 8) = v539;
      v223 = v557;
      sub_1C448D140(v130, v557);
      v224 = sub_1C43FC024();
      sub_1C440BAA8(v224, v225, v226, v536);
      sub_1C4E7DA64(v223);
      (*(v535 + 8))(v534, v559);
      sub_1C4D42998(v130, type metadata accessor for WalletClassicOrderStructs.DateRelationshipType);
      v186 = v567;
    }

    v227 = [v569 merchant];
    if (v227)
    {
      v228 = sub_1C4D42928(v227);
      v130 = v560;
      if (v229)
      {
        v230 = v228;
        v158 = v229;
        String.base64EncodedSHA(withPrefix:)();
        sub_1C4E7DB54();
        if (v130)
        {

          sub_1C445015C();
          goto LABEL_21;
        }

        v195 = v520;
        v232 = (v528 + *(v520 + 36));
        v233 = v232[1];

        *v232 = v230;
        v232[1] = v158;
        sub_1C43FCF64();
        sub_1C440BAA8(v234, v235, v236, v565);
        v237 = v522 + v523[5];
        sub_1C4EFD348();
        v238 = v523[6];
        sub_1C441AAE4();
        sub_1C448D140(v566, v522 + v239);
        v240 = v523[7];
        sub_1C43FCF64();
        sub_1C440BAA8(v241, v242, v243, v520);
        sub_1C448D140(v528, v521);
        sub_1C43FBD94();
        sub_1C440BAA8(v244, v245, v246, v520);
        sub_1C4E7DBD0(v521);
        sub_1C448D140(v522, v519);
        sub_1C43FBD94();
        sub_1C440BAA8(v247, v248, v249, v523);
        sub_1C4E7DCE0(v519);
        sub_1C4D42998(v522, type metadata accessor for WalletClassicOrderStructs.EntityOrganizationRelationshipType);
        sub_1C4D42998(v528, type metadata accessor for WalletClassicOrderStructs.Organization);
      }

      v231 = v568;
    }

    else
    {
      v130 = v560;
      v231 = v568;
    }

    String.base64EncodedSHA(withPrefix:)();
    v573 = v529;
    v574 = v542;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A310();

    sub_1C4E7DDD0(v573, v574);
    if (v130)
    {
      v158 = v575;

      sub_1C445015C();
LABEL_21:

LABEL_22:
      sub_1C441D000();
      sub_1C44209E0();
      v251 = v562;
      goto LABEL_23;
    }

    v253 = [v569 shippingFulfillments];
    sub_1C4461BB8(0, &qword_1EC0C6850, 0x1E698F028);
    v254 = sub_1C4F01678();

    v559 = v254;
    v255 = sub_1C4428DA0();
    v560 = 0;
    if (v255)
    {
      if (v255 < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v256 = 0;
      v557 = (v231 + *(v186 + 52));
      v556 = v559 & 0xC000000000000001;
      v257 = MEMORY[0x1E69E7CC0];
      v558 = v255;
      do
      {
        if (v556)
        {
          v258 = MEMORY[0x1C6940F90](v256, v559);
        }

        else
        {
          v258 = *(v559 + 8 * v256 + 32);
        }

        v259 = v258;
        v260 = sub_1C465B638(v258, &selRef_carrierName);
        v262 = v261;
        v263 = v557;
        v264 = v557[1];

        *v263 = v260;
        v263[1] = v262;
        sub_1C465B638(v259, &selRef_trackingNumber);
        v265 = v567;
        if (v266)
        {
          v267 = sub_1C4D42DD8();
          v269 = v268;

          v270 = (v568 + *(v265 + 44));
          v271 = v270[1];
          swift_bridgeObjectRetain_n();

          *v270 = v267;
          v270[1] = v269;
          v272 = (v562 + v561[11]);
          v273 = v272[1];

          *v272 = v267;
          v272[1] = v269;
          v274 = v267;
          v231 = v568;
          v275 = v269;
          v185 = v570;
          sub_1C44869B4(&v573, v274, v275);
        }

        v276 = v185;
        v277 = v231;
        v278 = v572;
        sub_1C43FCF64();
        v279 = v565;
        sub_1C440BAA8(v280, v281, v282, v565);
        v283 = i;
        v284 = v278 + *(i + 20);
        sub_1C4EFD398();
        v285 = *(v283 + 24);
        sub_1C441AAE4();
        sub_1C448D140(v566, v278 + v286);
        v287 = v278 + *(v283 + 28);
        v231 = v277;
        sub_1C43FCF64();
        sub_1C440BAA8(v288, v289, v290, v265);
        sub_1C448D140(v277, v276);
        sub_1C43FBD94();
        sub_1C440BAA8(v291, v292, v293, v265);
        sub_1C4D427F4(v276, v287);
        if (sub_1C44157D4(v287, 1, v265))
        {
          sub_1C4D42864(v276);
          v185 = v276;
        }

        else
        {
          v294 = v555;
          sub_1C4EFEB78();
          sub_1C4D42864(v570);
          sub_1C43FBD94();
          sub_1C440BAA8(v295, v296, v297, v279);
          v298 = v294;
          v231 = v277;
          v185 = v570;
          sub_1C449A970(v298, v287 + *(v265 + 20));
        }

        sub_1C448D140(v572, v571);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v301 = *(v257 + 16);
          v302 = sub_1C43FCEC0();
          sub_1C458C5D4(v302, v303, v304, v257);
          v257 = v305;
        }

        v300 = *(v257 + 16);
        v299 = *(v257 + 24);
        if (v300 >= v299 >> 1)
        {
          v306 = sub_1C43FFD98(v299);
          sub_1C458C5D4(v306, v307, v308, v257);
          v257 = v309;
        }

        ++v256;

        *(v257 + 16) = v300 + 1;
        sub_1C4D428CC(v571, v257 + ((*(v563 + 80) + 32) & ~*(v563 + 80)) + v563[9] * v300);
        sub_1C4D42998(v572, type metadata accessor for WalletClassicOrderStructs.OrderShipmentFullFillmentRelationshipType);
      }

      while (v558 != v256);
    }

    else
    {
      v257 = MEMORY[0x1E69E7CC0];
    }

    v310 = v231;
    if (*(v257 + 16))
    {
      v311 = v562;
      v312 = v561[15];
      v313 = *(v562 + v312);

      *(v311 + v312) = v257;
      sub_1C4E900EC();
    }

    else
    {

      v311 = v562;
    }

    v195 = v526;
    v314 = [v569 payment];
    v130 = v560;
    if (v314)
    {
      v315 = v314;
      String.base64EncodedSHA(withPrefix:)();
      v573 = v529;
      v574 = v542;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440A310();

      sub_1C4E7E6A4(v573, v574, v316, v317, v318, v319, v320, v321, v492, *(&v492 + 1), v495, v497, v499, v501, v503, v505, v507, v509, v511, v513);
      if (v130)
      {
        v158 = v575;

        sub_1C445015C();

        sub_1C442D9C4();
        sub_1C4D42998(v310, v322);
        sub_1C441D000();
        sub_1C44209E0();
        v251 = v311;
LABEL_23:
        sub_1C4D42998(v251, v250);
        return v158;
      }

      sub_1C43FCF64();
      v323 = v565;
      sub_1C440BAA8(v324, v325, v326, v565);
      v327 = v546;
      v328 = v517 + v546[5];
      sub_1C4EFD208();
      v329 = v327[6];
      sub_1C441AAE4();
      v572 = v330;
      sub_1C448D140(v566, v517 + v331);
      v332 = v517 + v327[7];
      sub_1C4EFEE08();
      v333 = v327[9];
      v334 = (v517 + v327[8]);
      sub_1C4EFEC18();
      v335 = (v517 + v327[10]);
      *v334 = sub_1C465B638(v315, &selRef_totalAmount);
      v334[1] = v336;
      *v335 = sub_1C465B638(v315, &selRef_totalCurrencyCode);
      v335[1] = v337;
      sub_1C4430454();
      v338 = v547;
      sub_1C448D140(v517, v547);
      sub_1C43FBD94();
      sub_1C440BAA8(v339, v340, v341, v327);
      sub_1C4E7EF38(v338);
      v342 = [v315 paymentMethods];
      v343 = sub_1C4F01678();

      v573 = v343;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      sub_1C4415DCC();
      v344 = sub_1C4F01048();
      v346 = v345;

      v347 = (v526 + *(v511 + 44));
      v348 = v347[1];

      *v347 = v344;
      v347[1] = v346;
      v182 = v323;
      sub_1C43FCF64();
      sub_1C440BAA8(v349, v350, v351, v323);
      v352 = v516 + v514[5];
      sub_1C4EFD2A8();
      sub_1C448D140(v566, v516 + v514[6]);
      v353 = v516 + v514[7];
      sub_1C4EFE558();
      sub_1C4410754(v514[8]);
      v354 = v516 + v514[9];
      sub_1C4EFE658();
      sub_1C4410754(v514[10]);
      v355 = v514[11];
      sub_1C43FCF64();
      sub_1C440BAA8(v356, v357, v358, v511);
      sub_1C441C62C(v526, &v544);
      v359 = sub_1C43FC024();
      sub_1C440BAA8(v359, v360, v361, v511);
      sub_1C4E7F028(v323);
      sub_1C441C62C(v516, &v546);
      v362 = sub_1C43FC024();
      sub_1C440BAA8(v362, v363, v364, v514);
      sub_1C4E7F138(v323);
      v563 = v315;
      v365 = [v315 transactions];
      sub_1C4461BB8(0, &qword_1EC0C6858, 0x1E698F030);
      v366 = sub_1C4F01678();

      v570 = sub_1C4428DA0();
      v195 = 0;
      v567 = v366 & 0xC000000000000001;
      v231 = MEMORY[0x1E69E7CC0];
      v185 = v554;
      v186 = v527;
      for (i = v366; ; v366 = i)
      {
        v177 = v542;
        if (v570 == v195)
        {
          break;
        }

        v184 = v567;
        sub_1C4431590(v195, v567 == 0);
        if (v184)
        {
          v367 = MEMORY[0x1C6940F90](v195, v366);
        }

        else
        {
          v367 = *(v366 + 8 * v195 + 32);
        }

        v368 = v367;
        if (__OFADD__(v195, 1))
        {
          __break(1u);
          goto LABEL_82;
        }

        v572 = v195;
        sub_1C465B638(v367, &selRef_applePayTransactionIdentifier);

        String.base64EncodedSHA(withPrefix:)();
        v573 = v529;
        v574 = v542;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440A310();

        sub_1C4E7F228(v573, v574, v369, v370, v371, v372, v373, v374, v492, *(&v492 + 1), v495, v497, v499, v501, v503, v505, v507, v509, v511, v513);
        if (v130)
        {

          sub_1C4417B9C();
          v158 = v575;

          sub_1C43FE234();
          sub_1C4D42998(v517, v443);
          sub_1C4435668();
          sub_1C4D42998(v526, v444);
          sub_1C442D9C4();
          sub_1C4D42998(v568, v445);
          goto LABEL_22;
        }

        v571 = v231;
        v560 = 0;
        v375 = v550;
        sub_1C43FCF64();
        sub_1C440BAA8(v376, v377, v378, v379);
        v380 = v546;
        v381 = v375 + v546[5];
        sub_1C4EFD208();
        v382 = v380[6];
        sub_1C441AAE4();
        sub_1C448D140(v566, v375 + v383);
        v384 = v375 + v380[7];
        sub_1C4EFEE08();
        v385 = v380[9];
        v386 = (v375 + v380[8]);
        sub_1C4EFEC18();
        v387 = (v375 + v380[10]);
        *v386 = sub_1C465B638(v368, &selRef_amount);
        v386[1] = v388;
        *v387 = sub_1C465B638(v368, &selRef_currencyCode);
        v387[1] = v389;
        v390 = sub_1C465B638(v368, &selRef_amount);
        v392 = v391;
        v393 = sub_1C465B638(v368, &selRef_currencyCode);
        v395 = sub_1C4D42F2C(v390, v392, v393, v394);

        sub_1C4D400DC(v395);
        sub_1C4430454();
        sub_1C441C62C(v375, &v578);
        v396 = sub_1C43FC024();
        sub_1C440BAA8(v396, v397, v398, v380);
        sub_1C4E7FB98(v395);
        sub_1C465B638(v368, &selRef_applePayTransactionIdentifier);
        sub_1C440D158();
        v399 = (v185 + *(v551 + 36));
        v400 = v399[1];

        *v399 = v395;
        v399[1] = v185;
        v401 = [v368 paymentMethod];
        if (v401)
        {
          v402 = sub_1C4D42928(v401);
          v404 = v403;
        }

        else
        {
          v402 = 0;
          v404 = 0;
        }

        v405 = v572;
        v406 = v551;
        v407 = v554;
        v408 = (v554 + *(v551 + 52));
        v409 = v408[1];

        *v408 = v402;
        v408[1] = v404;
        v410 = v552;
        sub_1C43FCF64();
        v182 = v565;
        sub_1C440BAA8(v411, v412, v413, v565);
        v414 = v544;
        v415 = v410 + v544[5];
        sub_1C4EFD328();
        v416 = v414[6];
        sub_1C441AAE4();
        sub_1C448D140(v566, v410 + v417);
        v418 = v410 + v414[7];
        sub_1C4EFE558();
        sub_1C4410754(v414[8]);
        v419 = v410 + v414[9];
        sub_1C4EFE658();
        sub_1C4410754(v414[10]);
        v420 = v414[11];
        sub_1C43FCF64();
        sub_1C440BAA8(v421, v422, v423, v406);
        sub_1C441C62C(v407, &v576);
        v424 = sub_1C43FC024();
        sub_1C440BAA8(v424, v425, v426, v406);
        sub_1C4E7FC88(v414);
        sub_1C448D140(v410, v553);
        v231 = v571;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = v560;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v431 = *(v231 + 16);
          v432 = sub_1C43FCEC0();
          sub_1C458C614(v432, v433, v434, v231);
          v231 = v435;
        }

        v186 = v527;
        v429 = *(v231 + 16);
        v428 = *(v231 + 24);
        v185 = v554;
        if (v429 >= v428 >> 1)
        {
          v436 = sub_1C43FFD98(v428);
          sub_1C458C614(v436, v437, v438, v231);
          v231 = v439;
        }

        sub_1C4D42998(v552, type metadata accessor for WalletClassicOrderStructs.OrderTransactionRelationshipType);
        *(v231 + 16) = v429 + 1;
        sub_1C4D428CC(v553, v231 + ((*(v543 + 80) + 32) & ~*(v543 + 80)) + *(v543 + 72) * v429);
        sub_1C43FE234();
        sub_1C4D42998(v550, v430);
        sub_1C4D42998(v185, type metadata accessor for WalletClassicOrderStructs.Transaction);
        v195 = v405 + 1;
      }

      if (*(v231 + 16))
      {
        v440 = v562;
        v441 = v561[16];
        v442 = *(v562 + v441);

        *(v440 + v441) = v231;
        sub_1C4E902E8();

        sub_1C4417B9C();
      }

      else
      {
        sub_1C4417B9C();
      }

      sub_1C441E900();
      sub_1C43FE234();
      sub_1C4D42998(v517, v446);
      sub_1C4435668();
      sub_1C4D42998(v526, v447);
    }

    else
    {

      sub_1C441E900();
      v182 = v565;
    }

    sub_1C43FCF64();
    sub_1C440BAA8(v448, v449, v450, v182);
    v451 = v548;
    v452 = v231 + v548[5];
    sub_1C4EFD258();
    v453 = v451[6];
    sub_1C441AAE4();
    sub_1C448D140(v566, v231 + v454);
    v455 = v231 + v451[7];
    sub_1C4EFE558();
    v456 = v451[9];
    v185 = (v231 + v451[8]);
    sub_1C4EFE658();
    v457 = v451[11];
    v458 = (v231 + v451[10]);
    sub_1C4EFEBF8();
    v459 = (v231 + v451[12]);
    *v459 = 0;
    v459[1] = 0;
    *v458 = 0xD000000000000014;
    v458[1] = 0x80000001C4F860D0;
    sub_1C44EC90C(v575, v460, v461, v462, v463, v464, v465, v466, v492, *(&v492 + 1), v495, v497, v499, v501, v503, v505, v507, v509, v511, v513, v514, v515, v516, v517, v518, v519);
    v573 = v467;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4415DCC();
    sub_1C4F01048();

    if (qword_1EDDE92E8 == -1)
    {
LABEL_71:
      sub_1C442B738(v195, qword_1EDE2D008);
      String.base64EncodedSHA(withPrefix:)();
      v469 = v468;
      v471 = v470;

      *v185 = v469;
      v185[1] = v471;
      v472 = v562;
      v473 = *(v562 + v507);
      if (v473)
      {
        sub_1C4403B84();
        sub_1C448D140(v231, v524);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v474 = v473;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v485 = *(v473 + 16);
          v486 = sub_1C43FCEC0();
          sub_1C458C594(v486, v487, v488, v473);
          v474 = v489;
        }

        v476 = *(v474 + 16);
        v475 = *(v474 + 24);
        if (v476 >= v475 >> 1)
        {
          sub_1C458C594(v475 > 1, v476 + 1, 1, v474);
          v474 = v490;
        }

        *(v474 + 16) = v476 + 1;
        sub_1C4D428CC(v524, v474 + v501 + v476 * v499);

        v472 = v562;
        *(v562 + v507) = v474;
        v477 = v568;
        v231 = v525;
      }

      else
      {
        v478 = swift_allocObject();
        *(v478 + 16) = v492;
        sub_1C4403B84();
        sub_1C448D140(v231, v479 + v501);
        *(v472 + v507) = v478;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v477 = v568;
      }

      sub_1C4E8FEF0();
      v480 = *(*(v518 + *(type metadata accessor for PhaseStores() + 48)) + 16);

      sub_1C448E5DC();
      if (!v130)
      {

        LOBYTE(v573) = BYTE4(v509);
        sub_1C4E7FD98();
        v158 = v482;

        sub_1C4D42998(v231, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
        sub_1C442D9C4();
        sub_1C4D42998(v477, v483);
        sub_1C4D42998(v549, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
        sub_1C44209E0();
        sub_1C4D42998(v472, v484);
        return v158;
      }

      sub_1C445015C();

      v158 = type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType;
      sub_1C4D42998(v231, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
      sub_1C442D9C4();
      sub_1C4D42998(v477, v481);
      sub_1C4D42998(v549, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
      sub_1C44209E0();
      v251 = v472;
      goto LABEL_23;
    }

LABEL_84:
    swift_once();
    goto LABEL_71;
  }

  return v158;
}

void sub_1C4D4252C()
{
  sub_1C467D6F8();
  v1 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
  v2 = *(v0 + *(v1 + 24));
  if (qword_1EDDFD1F0 != -1)
  {
    sub_1C440EAE0();
  }

  v3 = type metadata accessor for Source();
  sub_1C442B738(v3, &qword_1EDDFD1F8);
  v4 = *(v1 + 20);
  sub_1C4D45F00();
}

uint64_t sub_1C4D425E4()
{
  sub_1C4D4252C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D42680(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C43FCBF4();
  return sub_1C448D140(v1 + v3, v4);
}

void sub_1C4D426AC()
{
  v1 = *(v0 + *(type metadata accessor for WalletClassicOrderSourceIngestor(0) + 24));
  if (qword_1EDDFD1F0 != -1)
  {
    sub_1C440EAE0();
  }

  v2 = type metadata accessor for Source();
  sub_1C442B738(v2, &qword_1EDDFD1F8);
  sub_1C4D449BC();
}

uint64_t sub_1C4D4272C()
{
  sub_1C4D426AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D427A4(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C441AAE4();
  return sub_1C448D140(v1 + v3, v4);
}

uint64_t sub_1C4D427F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C6830, &qword_1C4F6F5C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D42864(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C6830, &qword_1C4F6F5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4D428CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4D42928(void *a1)
{
  v2 = [a1 localizedDisplayName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4D42998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D42A80(uint64_t a1)
{
  result = sub_1C4D42B30(qword_1EDDDDBF8, type metadata accessor for WalletClassicOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42AD8(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDDBE0, type metadata accessor for WalletClassicOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D42B78(uint64_t a1)
{
  result = sub_1C4D42B30(qword_1EDDDC7B0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42BD0(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDC798, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9488();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  v19 = objc_autoreleasePoolPush();
  sub_1C4EF9428();
  sub_1C4EF9418();
  sub_1C4EF9458();
  v20 = *(v7 + 8);
  v20(v12, v4);
  v20(v15, v4);
  v23[0] = a1;
  v23[1] = a2;
  sub_1C4415EA8();
  sub_1C4F01FF8();
  v21 = sub_1C4F00FF8();

  v20(v18, v4);
  objc_autoreleasePoolPop(v19);
  return v21;
}

uint64_t sub_1C4D42DD8()
{
  v1 = sub_1C4EF9488();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A89C();
  v7 = objc_autoreleasePoolPush();
  sub_1C4EF9418();
  sub_1C4415EA8();
  sub_1C4F01FB8();
  (*(v4 + 8))(v0, v1);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  v8 = sub_1C4F00FF8();

  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t sub_1C4D42F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E7CD0];
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C49F2108(a1, a2);
    if (v10)
    {
      return MEMORY[0x1E69E7CD0];
    }

    else
    {
      v11 = v9;
      sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
      v12 = swift_allocObject();
      v13 = MEMORY[0x1E69E63B0];
      *(v12 + 16) = xmmword_1C4F0D130;
      v14 = MEMORY[0x1E69E6438];
      *(v12 + 56) = v13;
      *(v12 + 64) = v14;
      *(v12 + 32) = v11;
      v15 = sub_1C4F01168();
      v17 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(&v19, v15, v17);

      v19 = v15;
      v20 = v17;
      MEMORY[0x1C6940010](44, 0xE100000000000000);
      if (a4)
      {
        v18 = a4;
      }

      else
      {
        a3 = 0;
        v18 = 0xE000000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](a3, v18);

      sub_1C44869B4(&v19, v19, v20);

      return v21;
    }
  }

  return result;
}

double sub_1C4D4308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C4D4400C(a3, a4, v18);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C4F01108();

  v20 = [v18 dateFromString_];

  if (v20)
  {
    sub_1C4EF9C78();

    (*(v9 + 32))(v17, v14, v6);
    sub_1C4EF9C58();
    v22 = v21;

    (*(v9 + 8))(v17, v6);
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C4F0D130;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 32) = 0xD000000000000025;
    *(v23 + 40) = 0x80000001C4FC76D0;
    sub_1C4F02AC8();

    return 0.0;
  }

  return v22;
}

uint64_t sub_1C4D432C8(uint64_t a1)
{
  v46 = a1;
  v1 = sub_1C4EF9F68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v39 - v20;
  v21 = sub_1C4EF9F88();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A48], v1);
  sub_1C4EF9CC8();
  sub_1C4EF9F28();
  v43 = v13;
  v42 = *(v13 + 8);
  v42(v18, v12);
  (*(v2 + 8))(v5, v1);
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    (*(v22 + 8))(v25, v21);
    v26 = v11;
LABEL_5:
    sub_1C44686E4(v26);
    goto LABEL_6;
  }

  v27 = v25;
  v40 = v21;
  v28 = v44;
  v29 = *(v43 + 32);
  v29(v44, v11, v12);
  v30 = v45;
  sub_1C4467FE0(v46, v45);
  if (sub_1C44157D4(v30, 1, v12) == 1)
  {
    v42(v28, v12);
    (*(v22 + 8))(v27, v40);
    v26 = v30;
    goto LABEL_5;
  }

  v33 = v41;
  v29(v41, v30, v12);
  sub_1C4575ED0();
  v34 = sub_1C4F01068();
  v35 = v40;
  if ((v34 & 1) == 0)
  {
    sub_1C4EF9CC8();
    v37 = sub_1C4F01068();
    v38 = v42;
    v42(v18, v12);
    v38(v33, v12);
    v38(v28, v12);
    (*(v22 + 8))(v27, v35);
    v31 = v37 ^ 1;
    return v31 & 1;
  }

  v36 = v42;
  v42(v33, v12);
  v36(v28, v12);
  (*(v22 + 8))(v27, v35);
LABEL_6:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1C4D43794(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  sub_1C4D4E630(result);
  if (v2)
  {

    result = sub_1C4D4E630(v1);
    if (!v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v4 = result;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v1 shippingInformation];
  if (!v8)
  {
    return v7;
  }

  sub_1C4D4E624(v8);
  if (!v9)
  {
    return v7;
  }

  result = [v1 shippingInformation];
  if (!result)
  {
    goto LABEL_21;
  }

  result = sub_1C4D4E624(result);
  if (!v10)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = v10;

  if (v7)
  {
    return 1;
  }

  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  return v13 != 0;
}

uint64_t *BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = v3;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = *a3;
  objc_opt_self();
  v16 = sub_1C4413D58();
  if (v16)
  {
    v17 = v16;
    sub_1C442D9DC();
    switch(v15)
    {
      case 2:
        v25 = v5;

        goto LABEL_8;
      case 3:
        sub_1C44133C0();
        break;
      default:
        break;
    }

    v26 = sub_1C4F02938();
    v27 = v5;

    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (sub_1C4D43794(v17))
    {
LABEL_9:
      BYTE4(v61) = v15;
      v28 = sub_1C440828C();
      BMWalletPaymentsCommerceOrderEmail.ingestEvent(startTime:endTime:pipelineType:stores:)(v28, v29, v30, v31, v32, v33, v34, v35, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v20 = v36;
LABEL_10:

      return v20;
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v37 = sub_1C4F00978();
    sub_1C442B738(v37, qword_1EDE2DE10);
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CC8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1C43F8000, v38, v39, "Skipping invalid wallet email order: missing both orderNumber and trackingNumber", v40, 2u);
      MEMORY[0x1C6942830](v40, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  objc_opt_self();
  if (sub_1C4413D58())
  {
    BYTE5(v61) = v15;
    v18 = sub_1C440828C();
    v20 = v19;
    v24 = BMWalletPaymentsCommerceClassicOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(v18, v21, v22, v23);
  }

  else
  {
    objc_opt_self();
    if (!sub_1C4413D58())
    {
      objc_opt_self();
      v60 = sub_1C4413D58();
      if (v60)
      {
        sub_1C442D9DC();
        switch(v15)
        {
          case 2:
            v47 = v5;

            goto LABEL_27;
          case 3:
            sub_1C44133C0();
            break;
          default:
            break;
        }

        HIDWORD(v59) = sub_1C4F02938();
        v48 = v5;

        if ((v59 & 0x100000000) != 0)
        {
LABEL_27:
          v49 = [v60 transactionDate];
          if (v49)
          {
            v50 = v49;
            sub_1C4EF9C78();

            v51 = sub_1C4EF9CD8();
            v52 = 0;
          }

          else
          {
            v51 = sub_1C4EF9CD8();
            v52 = 1;
          }

          sub_1C440BAA8(v11, v52, 1, v51);
          sub_1C45B69E4(v11, v14);
          v53 = sub_1C4D432C8(v14);
          sub_1C44686E4(v14);
          if ((v53 & 1) == 0)
          {

            return MEMORY[0x1E69E7CC0];
          }
        }

        HIBYTE(v61) = v15;
        v5 = v5;
        v54 = sub_1C440828C();
        v20 = BMWalletPaymentsCommerceTransaction.ingestEvent(startTime:endTime:pipelineType:stores:)(v54, v55, v56, v57);

        goto LABEL_10;
      }

      return MEMORY[0x1E69E7CC0];
    }

    BYTE6(v61) = v15;
    v41 = sub_1C440828C();
    v20 = v42;
    v24 = BMWalletPaymentsCommerceTrackedOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(v41, v43, v44, v45);
  }

  if (!v4)
  {
    return v24;
  }

  return v20;
}

uint64_t sub_1C4D43CFC(uint64_t a1, char a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v11 = type metadata accessor for Pipeline.StatusStore();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A89C();
  sub_1C44098F0(a1, v5);
  *(v5 + *(v12 + 28)) = a2;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v5);
  sub_1C442D9DC();
  switch(a2)
  {
    case 1:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v14 = sub_1C4F02938();

  if (v14)
  {
LABEL_5:
    v16 = *a3;
    v15 = a3[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v23 = *a3;
    v24 = a3[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x61746C6544, 0xE500000000000000);
  }

  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v18 = sub_1C4F01108();

  *(inited + 48) = v18;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  v19 = sub_1C4F01108();

  *(inited + 72) = v19;
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  sub_1C440F1BC();
  swift_beginAccess();
  v20 = *a4;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  sub_1C440F1BC();
  swift_beginAccess();
  v21 = *a5;
  sub_1C440F1BC();
  swift_beginAccess();
  result = v21 - *a4;
  if (__OFSUB__(v21, *a4))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4468200();
    sub_1C4F00F28();
    sub_1C440F1BC();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4D4400C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  [a3 setDateFormat_];
}

uint64_t sub_1C4D44064(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 128) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D44190, 0, 0);
}

uint64_t sub_1C4D44190()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D44554(&qword_1EDDDCE88, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
        v4 = sub_1C4422F90((v0 + 16));
        v5 = v3[5];
        sub_1C4419288();
        sub_1C4471750(v2, v6 + v7, v8);
        v9 = qword_1EDDFD288;
        v10 = 2;
        v11 = v4;
      }

      else
      {
        v12 = *(v0 + 96);
        v3 = type metadata accessor for WalletEmailOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D44554(&qword_1EDDDEDB8, type metadata accessor for WalletEmailOrderSourceIngestor);
        v11 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v12, v11, v13);
        v4 = (v11 + v3[5]);
        v9 = qword_1EDDFD288;
        v10 = 1;
      }

      if (v9 != -1)
      {
        sub_1C440B8A0();
      }

      v14 = *(v0 + 160);
      v15 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD290);
      sub_1C44068F0();
      sub_1C4471750(v16, v4, v17);
      *(v11 + v3[6]) = v10;
      v18 = v11 + v3[7];
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v15, v14, v19);
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0();
      }

      v20 = *(v0 + 185);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      v24 = *(v0 + 96);
      v25 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD290);
      *(v0 + 168) = v25;
      sub_1C4471750(v25, v21, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v25, v23, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v24, v22, v26);
      *(v0 + 184) = v20;
      v27 = swift_task_alloc();
      *(v0 + 176) = v27;
      *v27 = v0;
      v27[1] = sub_1C4657140;
      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletEmailOrderEventPhase()
{
  result = qword_1EDDE0CA0;
  if (!qword_1EDDE0CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D44554(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4D4459C()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletEmailOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C4647508();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletEmailOrderSourceIngestor);
    sub_1C4640684();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D449BC()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletClassicOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464888C();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletClassicOrderSourceIngestor);
    sub_1C46405BC();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D44DDC()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTrackedOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C4648D84();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTrackedOrderSourceIngestor);
    sub_1C464049C();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

uint64_t sub_1C4D451FC(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v73 = a5;
  v72 = a4;
  v74 = a3;
  v7 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60[0] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = v60 - v11;
  v12 = swift_allocObject();
  v71 = v12;
  *(v12 + 16) = 0;
  v64 = (v12 + 16);
  v13 = swift_allocObject();
  v70 = v13;
  *(v13 + 16) = 0;
  v14 = v13 + 16;
  v15 = swift_allocObject();
  v69 = v15;
  *(v15 + 16) = 0;
  v63 = (v15 + 16);
  if (a2)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *&a1;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v61 = (v19 + 16);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v68 = v19;
  v66 = v14;
  v20 = sub_1C4F00978();
  v60[1] = sub_1C442B738(v20, qword_1EDE2DE10);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v21, v22, "Ingesting orders using time stamp: %f", v23, 0xCu);
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = (v24 + 16);
  v26 = type metadata accessor for PhaseStores();
  v27 = *(v73 + *(v26 + 24));
  MEMORY[0x1EEE9AC00](v26);
  *&v60[-12] = v16;
  v28 = v72;
  v60[-11] = v67;
  v60[-10] = v28;
  v29 = v71;
  v60[-9] = v24;
  v60[-8] = v29;
  v30 = v69;
  v60[-7] = v17;
  v60[-6] = v30;
  LOBYTE(v60[-5]) = v74;
  v31 = v70;
  v60[-4] = v32;
  v60[-3] = v31;
  v60[-2] = v68;
  v33 = v65;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4D4E9D4, &v60[-14]);
  if (v33)
  {

LABEL_12:
    v37 = v66;
    goto LABEL_13;
  }

  v65 = v24;
  swift_beginAccess();
  v34 = *v25;
  if (*v25)
  {
    v35 = *v25;
    swift_willThrow();
    v36 = v34;

    goto LABEL_12;
  }

  swift_beginAccess();
  v39 = *v18;
  v37 = v66;
  if (!*v18)
  {
    v43 = v62;
    v44 = v67;
LABEL_20:
    v45 = v61;
    swift_beginAccess();
    if ((*v45 & 1) == 0)
    {
      swift_beginAccess();
      v51 = *(v69 + 16);
      sub_1C4649758();

      sub_1C4D43CFC(v73, v74, v72, v37, v64);
    }

    sub_1C448D19C(v44, v43);
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CD8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v77 = v67;
      *v48 = 136315394;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_1C4F02248();

      v75 = 0x6E696C657069503CLL;
      v76 = 0xEF203A6570795465;
      v49 = 0xE700000000000000;
      v50 = 0x6E776F6E6B6E75;
      switch(v74)
      {
        case 1:
          v49 = 0xE400000000000000;
          v50 = 1819047270;
          break;
        case 2:
          v49 = 0xE500000000000000;
          v50 = 0x61746C6564;
          break;
        case 3:
          v49 = 0xEA0000000000676ELL;
          v50 = 0x69686374614D6F74;
          break;
        default:
          break;
      }

      MEMORY[0x1C6940010](v50, v49);

      MEMORY[0x1C6940010](62, 0xE100000000000000);
      v52 = sub_1C441D828(v75, v76, &v77);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v53 = v60[0];
      sub_1C448D19C(v43, v60[0]);
      sub_1C4D4E63C(v43, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
      v54 = sub_1C464037C();
      v56 = v55;
      sub_1C4D4E63C(v53, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
      v57 = sub_1C441D828(v54, v56, &v77);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s", v48, 0x16u);
      v58 = v67;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v58, -1, -1);
      MEMORY[0x1C6942830](v48, -1, -1);
    }

    else
    {
      sub_1C4D4E63C(v43, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
    }

    sub_1C465B58C();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();

LABEL_13:
    sub_1C4D43CFC(v73, v74, v72, v37, v64);
  }

  v40 = v63;
  swift_beginAccess();
  v41 = *v40;
  v78[0] = v74;
  v42 = v39;
  BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(0, 1, v78);
  sub_1C4B46D4C();

  result = swift_beginAccess();
  if (!__OFADD__(*v37, 1))
  {
    ++*v37;
    v43 = v62;
    v44 = v67;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_1C4D45AE0()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTransactionOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464A118();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTransactionOrderSourceIngestor);
    sub_1C464032C();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D45F00()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464A610();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
    sub_1C4640304();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D46320()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464AAF0();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
    sub_1C46401E4();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D46740()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v14, v53);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441D02C(v16, v17, v18, v19, v20, v21, v22, v23, v54);
  v24 = sub_1C440CE00();
  v25 = sub_1C44262B0(v24);
  v26 = sub_1C44062F4(v25);
  sub_1C4413D70(v26);
  sub_1C43FBDBC();
  v27 = swift_allocObject();
  sub_1C440C134(v27);
  v28 = sub_1C440F54C();
  sub_1C442C158(v28);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v29 = sub_1C4415DE0();
  v30 = sub_1C443F87C(v29, qword_1EDE2DE10);
  v31 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v31))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v32, v33, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v34 = swift_allocObject();
  v35 = sub_1C4433F24(v34);
  v36 = sub_1C43FCC0C(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440829C();
  sub_1C44026A4(v37, v38);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v39 = *v3;
  if (*v3)
  {
    v40 = *v3;
    swift_willThrow();
    v41 = v39;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464AFD0();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  sub_1C442AA64();
  v42 = sub_1C4485DE8();
  v43 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v43))
  {
    sub_1C440F274();
    v44 = sub_1C444AE50();
    sub_1C443F438(v44);
    sub_1C4426FDC(4.8151e-34);

    v45 = sub_1C442D9F0();
    switch(v46)
    {
      case 1:
        v45 = sub_1C447F3F0();
        break;
      case 2:
        v45 = sub_1C44255E0();
        break;
      case 3:
        v45 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v45, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
    sub_1C46401BC();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v49, v50, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v47 = sub_1C447FB28();
    sub_1C4D4E63C(v47, v48);
  }

  sub_1C465B58C();
  v51 = sub_1C43FFB2C();
  sub_1C44225B8(v51, v52);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void BMWalletPaymentsCommerceOrderEmail.ingestEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  v1219 = v20;
  v1220 = v21;
  v1190 = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C6860, &unk_1C4F6F810);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  v32 = sub_1C43FD2C8(v31);
  v1154 = type metadata accessor for WalletEmailOrderStructs.OrderTransactionRelationshipType(v32);
  v33 = sub_1C43FCDF8(v1154);
  v1155 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  v38 = sub_1C43FD2C8(v37);
  v39 = type metadata accessor for WalletEmailOrderStructs.Transaction(v38);
  v40 = sub_1C440DBC4(v39, &v1184);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  sub_1C43FCE30(v43);
  v44 = sub_1C456902C(&qword_1EC0C6868, &qword_1C4F7E550);
  sub_1C43FBD18(v44);
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  sub_1C43FCE30(v48);
  v49 = sub_1C456902C(&qword_1EC0C6870, &unk_1C4F6F820);
  sub_1C43FBD18(v49);
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBC74();
  v54 = sub_1C43FD2C8(v53);
  v55 = type metadata accessor for WalletEmailOrderStructs.OrderPaymentRelationshipType(v54);
  v56 = sub_1C440DBC4(v55, &v1187);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD2D8();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&qword_1EC0C6878, &qword_1C4F7E750);
  sub_1C43FBD18(v60);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBC74();
  v65 = sub_1C43FD2C8(v64);
  v66 = type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType(v65);
  v67 = sub_1C440DBC4(v66, v1189);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FD230();
  v72 = sub_1C43FD2C8(v71);
  v73 = type metadata accessor for WalletEmailOrderStructs.Payment(v72);
  v74 = sub_1C440DBC4(v73, &v1185);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FD2D8();
  sub_1C43FCE30(v77);
  v78 = sub_1C456902C(&qword_1EC0C6880, &qword_1C4F6F830);
  sub_1C43FBD18(v78);
  v80 = *(v79 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBC74();
  v83 = sub_1C43FD2C8(v82);
  v1166 = type metadata accessor for WalletEmailOrderStructs.OrderShipmentFullFillmentRelationshipType(v83);
  v84 = sub_1C43FCDF8(v1166);
  v1167 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FD2D8();
  sub_1C43FCE30(v88);
  v89 = sub_1C456902C(&qword_1EC0C6888, &qword_1C4F6F838);
  sub_1C43FBD18(v89);
  v91 = *(v90 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FBC74();
  v94 = sub_1C43FD2C8(v93);
  v95 = type metadata accessor for WalletEmailOrderStructs.ShipmentPersonRelationshipType(v94);
  v96 = sub_1C440DBC4(v95, &v1181);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FD2D8();
  sub_1C43FCE30(v99);
  v100 = sub_1C456902C(&qword_1EC0C6890, &qword_1C4F6F840);
  sub_1C43FBD18(v100);
  v102 = *(v101 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v103);
  sub_1C43FBC74();
  v105 = sub_1C43FD2C8(v104);
  v106 = type metadata accessor for WalletEmailOrderStructs.ShipmentFullFillmentEmailRelationshipType(v105);
  v107 = sub_1C440DBC4(v106, &v1199);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  sub_1C43FD2D8();
  v111 = sub_1C43FD2C8(v110);
  v112 = type metadata accessor for WalletEmailOrderStructs.ShipmentFullFillmentInfo(v111);
  v113 = sub_1C440DBC4(v112, &v1202);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FD2D8();
  sub_1C43FCE30(v116);
  v117 = sub_1C456902C(&qword_1EC0C6898, &qword_1C4F6F848);
  sub_1C43FBD18(v117);
  v119 = *(v118 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v120);
  sub_1C43FBC74();
  sub_1C43FCE30(v121);
  v122 = sub_1C456902C(&qword_1EC0C68A0, &unk_1C4F6F850);
  sub_1C43FBD18(v122);
  v124 = *(v123 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v125);
  sub_1C43FBC74();
  v127 = sub_1C43FD2C8(v126);
  v128 = type metadata accessor for WalletEmailOrderStructs.OrderPersonRelationshipType(v127);
  v129 = sub_1C440DBC4(v128, &v1211);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  sub_1C43FD2D8();
  v133 = sub_1C43FD2C8(v132);
  v134 = type metadata accessor for WalletEmailOrderStructs.Person(v133);
  v135 = sub_1C440DBC4(v134, &a10);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v138);
  sub_1C43FD230();
  sub_1C43FCE30(v139);
  v140 = sub_1C456902C(&qword_1EC0C68A8, &unk_1C4F7E540);
  sub_1C43FBD18(v140);
  v142 = *(v141 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v143);
  sub_1C43FBC74();
  v145 = sub_1C43FD2C8(v144);
  v146 = type metadata accessor for WalletEmailOrderStructs.EntityOrganizationRelationshipType(v145);
  v147 = sub_1C440DBC4(v146, &v1208);
  v149 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v147);
  sub_1C43FD2D8();
  sub_1C43FCE30(v150);
  v151 = sub_1C456902C(&qword_1EC0C68B0, &unk_1C4F6F860);
  sub_1C43FBD18(v151);
  v153 = *(v152 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v154);
  sub_1C43FBC74();
  v156 = sub_1C43FD2C8(v155);
  v1187 = type metadata accessor for WalletEmailOrderStructs.OrderEmailRelationshipType(v156);
  v157 = sub_1C43FCDF8(v1187);
  v1188 = v158;
  v160 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v157);
  sub_1C43FD2D8();
  v162 = sub_1C43FD2C8(v161);
  v1196 = type metadata accessor for WalletEmailOrderStructs.IdentifierRelationshipType(v162);
  v163 = sub_1C43FCDF8(v1196);
  v1193[0] = v164;
  v166 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v168 = &v1145 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v169);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v170);
  sub_1C43FD230();
  sub_1C43FCE30(v171);
  v172 = sub_1C456902C(&qword_1EC0C68B8, &qword_1C4F7E620);
  sub_1C43FBD18(v172);
  v174 = *(v173 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v175);
  sub_1C43FBC74();
  v1205 = v176;
  v177 = sub_1C456902C(&qword_1EC0C68C0, &qword_1C4F6F870);
  sub_1C43FBD18(v177);
  v179 = *(v178 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v180);
  sub_1C43FBC74();
  v182 = sub_1C43FD2C8(v181);
  v183 = type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType(v182);
  v184 = sub_1C440DBC4(v183, &a13);
  v186 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v184);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v187);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v188);
  sub_1C43FD230();
  v190 = sub_1C43FD2C8(v189);
  v1203 = type metadata accessor for WalletEmailOrderStructs.Organization(v190);
  v191 = sub_1C43FBCE0(v1203);
  v193 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v191);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v194);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v195);
  sub_1C43FD230();
  v1206 = v196;
  v197 = sub_1C43FBE44();
  v1204 = type metadata accessor for WalletEmailOrderStructs.Email(v197);
  v198 = sub_1C43FBCE0(v1204);
  v200 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v198);
  sub_1C43FD2D8();
  v202 = v201;
  v203 = sub_1C456902C(&qword_1EC0C68C8, &qword_1C4F6F878);
  sub_1C43FBD18(v203);
  v205 = *(v204 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v206);
  sub_1C43FBC74();
  v1215 = v207;
  sub_1C43FBE44();
  v208 = sub_1C4EF9648();
  v209 = sub_1C43FCDF8(v208);
  v1213 = v210;
  v1214 = v209;
  v212 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v209);
  sub_1C43FD2D8();
  v1210 = v213;
  sub_1C43FBE44();
  v1211 = sub_1C4EF9F88();
  v214 = sub_1C43FCDF8(v1211);
  v1209 = v215;
  v217 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v214);
  sub_1C43FD2D8();
  v1208 = v218;
  sub_1C43FBE44();
  v1217 = sub_1C4EF9CD8();
  v219 = sub_1C43FCDF8(v1217);
  v1212 = v220;
  v222 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v219);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v223);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v224);
  v226 = &v1145 - v225;
  v1216 = type metadata accessor for WalletEmailOrderStructs.DateRelationshipType(0);
  v227 = sub_1C43FCDF8(v1216);
  v1169 = v228;
  v230 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v227);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v231);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v232);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v233);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v234);
  sub_1C43FD230();
  v1207 = v235;
  v236 = sub_1C43FBE44();
  v1218 = type metadata accessor for WalletEmailOrderStructs.WalletOrder(v236);
  v237 = sub_1C43FBCE0(v1218);
  v239 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v241 = (&v1145 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1172 = *v26;
  v1223 = MEMORY[0x1E69E7CD0];
  sub_1C4F019E8();
  if (qword_1EDDE92E8 != -1)
  {
    sub_1C4440B14();
    swift_once();
  }

  v242 = type metadata accessor for SourceIdPrefix();
  v243 = sub_1C442B738(v242, qword_1EDE2D008);
  String.base64EncodedSHA(withPrefix:)();
  v245 = v244;
  v247 = v246;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v248 = v1220;
  sub_1C4E95950(v245, v247, v249, v250, v251, v252, v253, v254, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
  if (!v248)
  {
    v1152 = v243;
    v1151 = v245;
    v1153 = v247;
    v1150 = v168;
    v1220 = v241;
    v255 = v1219;
    v256 = sub_1C465B638(v1219, &selRef_orderNumber);
    v258 = v202;
    v1201 = v202;
    if (v257)
    {
      v259 = sub_1C4D42C34(v256, v257);
      v247 = v260;

      v261 = (v1220 + v1218[13]);
      v262 = v261[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v261 = v259;
      v261[1] = v247;
      sub_1C44A18C8();
      sub_1C44869B4(v263, v264, v265);
    }

    v266 = sub_1C465B638(v255, &selRef_orderDate);
    if (v267)
    {
      v268 = v266;
      v269 = v267;
      sub_1C4EFEEF8();
      v270 = v1207;
      sub_1C43FCF64();
      sub_1C440BAA8(v271, v272, v273, v274);
      v258 = v1216;
      v275 = v270 + *(v1216 + 20);
      sub_1C4EFD168();
      v276 = *(v258 + 6);
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0();
      }

      v277 = type metadata accessor for Source();
      sub_1C442B738(v277, &qword_1EDDFD290);
      sub_1C441AAFC();
      sub_1C448D19C(v278, v270 + v276);
      v279 = v270 + *(v258 + 7);
      sub_1C4EFE658();
      v280 = *(v258 + 8);
      v281 = v270 + *(v258 + 9);
      sub_1C4EFEEE8();
      v282 = *(v258 + 11);
      v247 = (v270 + *(v258 + 10));
      sub_1C4EFE7B8();
      sub_1C43FC4E8(*(v258 + 12));
      v283 = v270 + *(v258 + 13);
      sub_1C4EFECE8();
      sub_1C43FC4E8(*(v258 + 14));
      v284 = v270 + *(v258 + 15);
      sub_1C4EFE668();
      sub_1C43FC4E8(*(v258 + 16));
      v285 = v270 + *(v258 + 17);
      sub_1C4EFE698();
      sub_1C43FC4E8(*(v258 + 18));
      v286 = v270 + *(v258 + 19);
      sub_1C4EFEA38();
      v287 = v270;
      v288 = (v270 + *(v258 + 20));
      *(v287 + v280) = xmmword_1C4F6F5A0;
      sub_1C4D4308C(v268, v269, 0x2D4D4D2D79797979, 0xEA00000000006464);
      sub_1C4EF9C48();
      *v288 = v268;
      v288[1] = v269;
      v289 = v1208;
      sub_1C4EF9F58();
      if (qword_1EDDE6518 != -1)
      {
        swift_once();
      }

      v290 = v1210;
      sub_1C4EF9EA8();
      sub_1C44CDAD4();
      sub_1C44106D4();
      (*(v1213 + 8))(v290, v1214);
      (*(v1209 + 8))(v289, v1211);
      *v247 = v290;
      *(v247 + 1) = v269;
      sub_1C4441A4C();
      sub_1C448D19C(v287, v1215);
      v291 = sub_1C43FD680();
      v294 = sub_1C441400C(v291, v292, v293, v258);
      sub_1C4E96298(v294);
      (*(v1212 + 8))(v226, v1217);
      sub_1C448E128();
      sub_1C4D4E63C(v287, v295);
      sub_1C44A18C8();
      v255 = v1219;
    }

    sub_1C4480884();
    v297 = *(v296 - 256);
    v1221 = v298;
    v1222 = v297;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x6C69616D652DLL, 0xE600000000000000);
    v299 = v1222;
    sub_1C444944C(v1176);
    String.base64EncodedSHA(withPrefix:)();

    v300 = sub_1C4404BB0();
    sub_1C4E96388(v300, v301, v302, v303, v304, v305, v306, v307, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
    v308 = 0;
    v309 = [v255 emailMetadata];
    v310 = &off_1E81F1000;
    if (v309)
    {
      v311 = v309;
      v1221 = 0;
      v1222 = 0xE000000000000000;
      v312 = sub_1C465B638(v309, &selRef_replyToEmailAddress);
      v314 = sub_1C441C460(v312, v313);
      if (v316)
      {
        v317 = 0xE000000000000000;
      }

      else
      {
        v317 = v315;
      }

      MEMORY[0x1C6940010](v314, v317);

      v318 = sub_1C465B638(v311, &selRef_replyToDisplayName);
      v320 = sub_1C441C460(v318, v319);
      if (v316)
      {
        v322 = 0xE000000000000000;
      }

      else
      {
        v322 = v321;
      }

      MEMORY[0x1C6940010](v320, v322);

      String.base64EncodedSHA(withPrefix:)();
      sub_1C441D790();
      v323 = sub_1C44C132C();
      MEMORY[0x1C6940010](v323, 0xE000000000000000);

      String.base64EncodedSHA(withPrefix:)();
      v325 = v324;

      v326 = sub_1C4404BB0();
      sub_1C4E96DDC(v326, v327, v328, v329, v330, v331, v332, v333, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
      v1148 = v311;
      sub_1C449DB98();
      sub_1C4EFEEF8();
      v352 = v1200;
      sub_1C43FCF64();
      v1146 = v353;
      sub_1C440BAA8(v354, v355, v356, v353);
      v357 = v1198;
      v358 = v352 + v1198[5];
      sub_1C4EFD1D8();
      v359 = v357[6];
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0();
      }

      v360 = type metadata accessor for Source();
      sub_1C442B738(v360, &qword_1EDDFD290);
      sub_1C441AAFC();
      v1147 = v361;
      sub_1C448D19C(v361, v352 + v359);
      v362 = v352 + v357[7];
      sub_1C4EFE518();
      v363 = v357[9];
      v364 = (v352 + v357[8]);
      sub_1C4EFE4E8();
      sub_1C4418154(v357[10]);
      v365 = v352 + v357[11];
      sub_1C4EFE478();
      sub_1C4418154(v357[12]);
      v366 = v352 + v357[13];
      sub_1C4EFE318();
      sub_1C4418154(v357[14]);
      v367 = v352 + v357[15];
      sub_1C4EFEB08();
      sub_1C4418154(v357[16]);
      v368 = v352 + v357[17];
      sub_1C4EFE5A8();
      sub_1C4418154(v357[18]);
      v369 = v352 + v357[19];
      sub_1C4EFEDE8();
      sub_1C4418154(v357[20]);
      v370 = v352 + v357[21];
      sub_1C4EFE8D8();
      sub_1C4418154(v357[22]);
      v371 = v352 + v357[23];
      sub_1C4EFE378();
      sub_1C4418154(v357[24]);
      v372 = v352 + v357[25];
      sub_1C4EFECD8();
      sub_1C4418154(v357[26]);
      v373 = v352 + v357[27];
      sub_1C4EFE888();
      sub_1C4418154(v357[28]);
      v374 = sub_1C443E47C(&v1173);
      *v364 = sub_1C465B638(v374, v375);
      v364[1] = v376;
      sub_1C465B638(v258, &selRef_replyToDisplayName);
      sub_1C43FC1CC();
      v377 = v1203;
      v378 = v1206;
      v379 = (v1206 + *(v1203 + 36));
      v380 = v379[1];

      *v379 = v364;
      v379[1] = v325;
      sub_1C4411518();
      sub_1C443EFF0(v352, &a18);
      v381 = sub_1C43FD680();
      v384 = sub_1C441400C(v381, v382, v383, v357);
      sub_1C4E974FC(v384);
      sub_1C4440174();
      v385 = v1205;
      sub_1C448D19C(v378, v1205);
      sub_1C43FBD94();
      sub_1C440BAA8(v386, v387, v388, v377);
      sub_1C44B905C();
      sub_1C4E975EC(v389);
      v1221 = 0;
      v1222 = 0xE000000000000000;
      v390 = sub_1C465B638(v258, &selRef_fromEmailAddress);
      v392 = sub_1C441C460(v390, v391);
      if (v316)
      {
        v394 = 0xE000000000000000;
      }

      else
      {
        v394 = v393;
      }

      MEMORY[0x1C6940010](v392, v394);

      v395 = sub_1C465B638(v258, &selRef_fromDisplayName);
      v397 = sub_1C441C460(v395, v396);
      if (v316)
      {
        v399 = 0xE000000000000000;
      }

      else
      {
        v399 = v398;
      }

      MEMORY[0x1C6940010](v397, v399);

      v400 = v1222;
      String.base64EncodedSHA(withPrefix:)();
      sub_1C441D790();
      v401 = sub_1C44C132C();
      MEMORY[0x1C6940010](v401, 0xE000000000000000);

      v402 = v1199;
      sub_1C445BE38();
      sub_1C4E96DDC(v403, v404, v405, v406, v407, v408, v409, v410, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
      sub_1C449DB98();
      sub_1C444944C(&v1224);
      sub_1C43FCF64();
      sub_1C440BAA8(v411, v412, v413, v1146);
      v414 = v247 + v357[5];
      sub_1C4EFD1D8();
      v415 = v357[6];
      sub_1C441AAFC();
      sub_1C448D19C(v1147, v247 + v416);
      v417 = v247 + v357[7];
      sub_1C4EFE518();
      v418 = v357[9];
      v419 = v402;
      v420 = (v247 + v357[8]);
      sub_1C4EFE4E8();
      sub_1C442A790(v357[10]);
      v421 = v247 + v357[11];
      sub_1C4EFE478();
      sub_1C442A790(v357[12]);
      v422 = v247 + v357[13];
      sub_1C4EFE318();
      sub_1C442A790(v357[14]);
      v423 = v247 + v357[15];
      sub_1C4EFEB08();
      sub_1C442A790(v357[16]);
      v424 = v247 + v357[17];
      sub_1C4EFE5A8();
      sub_1C442A790(v357[18]);
      v425 = v247 + v357[19];
      sub_1C4EFEDE8();
      sub_1C442A790(v357[20]);
      v426 = v247 + v357[21];
      sub_1C4EFE8D8();
      sub_1C442A790(v357[22]);
      v427 = v247 + v357[23];
      sub_1C4EFE378();
      sub_1C442A790(v357[24]);
      v428 = v247 + v357[25];
      sub_1C4EFECD8();
      sub_1C442A790(v357[26]);
      v429 = v247 + v357[27];
      sub_1C4EFE888();
      sub_1C442A790(v357[28]);
      *v420 = sub_1C465B638(v258, &selRef_fromEmailAddress);
      v420[1] = v430;
      sub_1C465B638(v258, &selRef_fromDisplayName);
      sub_1C43FC1CC();
      v431 = v1203;
      v432 = (v419 + *(v1203 + 36));
      v433 = v432[1];

      *v432 = v420;
      v432[1] = v400;
      sub_1C4411518();
      sub_1C443EFF0(v247, &a18);
      v434 = sub_1C43FD680();
      v437 = sub_1C441400C(v434, v435, v436, v357);
      v438 = v419;
      sub_1C4E974FC(v437);
      sub_1C4440174();
      sub_1C448D19C(v419, v385);
      sub_1C43FBD94();
      sub_1C440BAA8(v439, v440, v441, v431);
      sub_1C44B905C();
      sub_1C4E976E8(v442);
      v443 = sub_1C465B638(v258, &selRef_toEmailAddress);
      v445 = v444;
      v446 = v1204;
      v447 = (v419 + v1204[19]);
      v448 = v447[1];

      *v447 = v443;
      v447[1] = v445;
      v449 = sub_1C465B638(v258, &selRef_toDisplayName);
      v451 = v450;
      v452 = (v419 + v446[21]);
      v453 = v452[1];

      *v452 = v449;
      v452[1] = v451;
      v454 = [v258 dateSent];
      v455 = v1219;
      if (v454)
      {
        v456 = v454;
        v457 = v1176[1];
        sub_1C4EF9C78();

        v458 = v1212;
        v459 = v1177;
        (*(v1212 + 32))(v1177, v457, v1217);
        v452 = v1207;
        sub_1C43FCF64();
        sub_1C440BAA8(v460, v461, v462, v1146);
        v463 = v1216;
        v464 = v452 + *(v1216 + 20);
        sub_1C4EFD168();
        v465 = v463[6];
        sub_1C441AAFC();
        sub_1C448D19C(v1147, v452 + v466);
        v467 = v452 + v463[7];
        sub_1C4EFE658();
        v468 = v463[8];
        v469 = v452 + v463[9];
        sub_1C4EFEEE8();
        v470 = v463[11];
        v471 = (v452 + v463[10]);
        sub_1C4EFE7B8();
        sub_1C44262E0(v463[12]);
        v472 = v452 + v463[13];
        sub_1C4EFECE8();
        sub_1C44262E0(v463[14]);
        v473 = v452 + v463[15];
        sub_1C4EFE668();
        sub_1C44262E0(v463[16]);
        v474 = v452 + v463[17];
        sub_1C4EFE698();
        sub_1C44262E0(v463[18]);
        v475 = v452 + v463[19];
        sub_1C4EFEA38();
        v451 = (v452 + v463[20]);
        *(v452 + v468) = xmmword_1C4F6F7E0;
        sub_1C4EF9AD8();
        *v451 = sub_1C4F019E8();
        v451[1] = v476;
        v477 = v1208;
        sub_1C4EF9F58();
        if (qword_1EDDF4920 != -1)
        {
          swift_once();
        }

        v478 = v1210;
        sub_1C4EF9EA8();
        sub_1C44CDAD4();
        sub_1C43FC1CC();
        (*(v1213 + 8))(v478, v1214);
        (*(v1209 + 8))(v477, v1211);
        *v471 = v478;
        v471[1] = v451;
        sub_1C4441A4C();
        v438 = v1215;
        sub_1C448D19C(v452, v1215);
        v479 = sub_1C43FD680();
        sub_1C441400C(v479, v480, v481, v463);
        sub_1C44B905C();
        sub_1C4E977E4(v482);
        (*(v458 + 8))(v459, v1217);
        sub_1C448E128();
        sub_1C4D4E63C(v452, v483);
        v258 = v1148;
        v455 = v1219;
      }

      sub_1C465B638(v258, &selRef_messageID);
      sub_1C43FC1CC();
      v484 = v1204;
      sub_1C44EB91C(v1204[9]);
      *v452 = v438;
      v452[1] = v451;
      sub_1C465B638(v258, &selRef_subject);
      sub_1C43FC1CC();
      sub_1C44EB91C(v484[11]);
      *v452 = v438;
      v452[1] = v451;
      v485 = sub_1C465B638(v258, &selRef_senderDomain);
      v487 = v486;
      v488 = (v1201 + v484[13]);
      v489 = v488[1];

      *v488 = v485;
      v488[1] = v487;
      sub_1C465B638(v258, &selRef_senderDomain);
      sub_1C43FC1CC();
      v490 = (v1220 + v1218[17]);
      v491 = v490[1];

      *v490 = &selRef_senderDomain;
      v490[1] = v485;
      LODWORD(v1221) = sub_1C44257F8();
      v492 = MEMORY[0x1E69E72F0];
      v493 = MEMORY[0x1E69E7340];
      sub_1C4404BB0();
      sub_1C4F02858();
      sub_1C4416328();
      sub_1C4466DE8(v484[17]);
      *v455 = &v1221;
      v455[1] = v488;
      sub_1C465B638(v1219, &selRef_orderNumber);
      sub_1C4416328();
      sub_1C4466DE8(v484[23]);
      *v455 = &v1221;
      v455[1] = v488;
      v255 = v1219;
      v494 = v1201;
      LODWORD(v1221) = [v1219 orderContentType];
      sub_1C4404BB0();
      sub_1C4F02858();
      sub_1C43FC1CC();
      v258 = v494;
      sub_1C44EB91C(v484[29]);
      *v493 = &v1221;
      v493[1] = v492;
      v495 = [v255 shippingInformation];
      if (v495)
      {
        sub_1C45C28F0(v495, &selRef_trackingNumber);
        if (v496)
        {
          sub_1C43FC1CC();
          v497 = (v494 + v1204[25]);
          v498 = v497[1];

          *v497 = &v1221;
          v497[1] = v492;
        }
      }

      v499 = [v255 merchant];
      v500 = v1186;
      if (v499)
      {
        sub_1C45C28F0(v499, &selRef_displayName);
        if (v501)
        {
          sub_1C43FC1CC();
          v502 = (v494 + v1204[27]);
          v503 = v502[1];

          *v502 = &v1221;
          v502[1] = v492;
        }
      }

      sub_1C465B638(v255, &selRef_spotlightUniqueIdentifier);
      v504 = v1146;
      if (v505)
      {
        sub_1C43FC1CC();
        sub_1C43FCF64();
        sub_1C440BAA8(v506, v507, v508, v504);
        v258 = v255;
        v509 = v1196;
        v510 = v500 + v1196[5];
        sub_1C4EFD258();
        v511 = v509[6];
        sub_1C441AAFC();
        v513 = v1147;
        sub_1C448D19C(v1147, v500 + v512);
        v514 = v500 + v509[7];
        sub_1C4EFE558();
        v515 = v509[9];
        v516 = (v500 + v509[8]);
        sub_1C4EFE658();
        v517 = (v500 + v509[10]);
        *v517 = 0xD000000000000019;
        v517[1] = 0x80000001C4FC77C0;
        *v516 = &v1221;
        v516[1] = v492;
        sub_1C465B638(v258, &selRef_spotlightDomainIdentifier);
        if (v518)
        {
          sub_1C43FC1CC();
          v519 = v1171;
          sub_1C43FCF64();
          sub_1C440BAA8(v520, v521, v522, v504);
          v523 = v519 + v509[5];
          sub_1C4EFD258();
          v524 = v509[6];
          sub_1C441AAFC();
          sub_1C448D19C(v513, v519 + v525);
          v526 = v519 + v509[7];
          sub_1C4EFE558();
          v527 = v509[9];
          v528 = (v519 + v509[8]);
          sub_1C4EFE658();
          v529 = (v519 + v509[10]);
          *v529 = 0xD000000000000019;
          v529[1] = 0x80000001C4FC77E0;
          *v528 = &v1221;
          v528[1] = v492;
          sub_1C456902C(&qword_1EC0C0328, &qword_1C4F3E6C0);
          sub_1C44417B0(&v1223);
          v532 = v531 & ~v530;
          v258 = swift_allocObject();
          *(v258 + 1) = xmmword_1C4F0CE60;
          v533 = v258 + v532;
          sub_1C448D19C(v500, v533);
          sub_1C448D19C(v519, v528 + v533);
          v492 = v1204[33];
          sub_1C44B905C();
          v534 = *(&v1221 + v492);

          *(&v1221 + v492) = v258;
          sub_1C4EA24A8();
          sub_1C43FE24C();
          sub_1C4D4E63C(v519, v535);
        }

        sub_1C43FE24C();
        sub_1C4D4E63C(v500, v536);
        sub_1C44A18C8();
        v255 = v1219;
      }

      v334 = &xmmword_1EDDFD000;
      v537 = v1189[0];
      sub_1C43FCF64();
      sub_1C440BAA8(v538, v539, v540, v504);
      v541 = v1187;
      v542 = v537 + v1187[5];
      sub_1C4EFD268();
      v543 = v541[6];
      sub_1C441AAFC();
      sub_1C448D19C(v1147, v537 + v544);
      v545 = v537 + v541[7];
      sub_1C4EFE658();
      v546 = (v537 + v541[8]);
      *v546 = 0;
      v546[1] = 0;
      v547 = v541[9];
      sub_1C43FCF64();
      v548 = v1204;
      sub_1C440BAA8(v549, v550, v551, v1204);
      sub_1C442AD2C();
      sub_1C442A79C(v258, &v1222);
      sub_1C43FBD94();
      sub_1C440BAA8(v552, v553, v554, v548);
      sub_1C4E978D4(v541);
      LODWORD(v1221) = sub_1C44257F8();
      sub_1C4D4E694();
      sub_1C4F02068();
      sub_1C43FC1CC();
      v555 = v546[1];

      *v546 = &v1221;
      v546[1] = v492;
      sub_1C456902C(&qword_1EC0C0330, &qword_1C4F3E6C8);
      sub_1C44693E4(&v1216);
      v558 = v557 & ~v556;
      v559 = swift_allocObject();
      *(v559 + 16) = xmmword_1C4F0D130;
      sub_1C448D19C(v537, v559 + v558);
      v560 = v1218[22];
      v561 = v1220;
      v562 = *(v1220 + v560);

      *(v561 + v560) = v559;
      sub_1C4EB5A20();

      sub_1C4D4E63C(v537, type metadata accessor for WalletEmailOrderStructs.OrderEmailRelationshipType);
      v299 = type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType;
      sub_1C4D4E63C(v1193[1], type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType);
      sub_1C4D4E63C(v1199, type metadata accessor for WalletEmailOrderStructs.Organization);
      v563 = sub_1C4458588();
      sub_1C4D4E63C(v563, type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType);
      sub_1C4D4E63C(v1206, type metadata accessor for WalletEmailOrderStructs.Organization);
      v308 = v1149;
      v310 = &off_1E81F1000;
    }

    else
    {
      v334 = &xmmword_1EDDFD000;
    }

    v335 = [v255 v310[20]];
    v336 = v1205;
    if (v335)
    {
      v337 = sub_1C45C28F0(v335, &selRef_displayName);
      if (v338)
      {
        v339 = v337;
        v340 = v338;
        String.base64EncodedSHA(withPrefix:)();
        v341 = v1194;
        sub_1C4E96DDC(v342, v343, v344, v345, v346, v347, v348, v349, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
        if (v308)
        {

          sub_1C44209F8();
          v351 = v258;
LABEL_75:
          sub_1C4D4E63C(v351, v350);
          sub_1C4403B9C();
          v717 = v1220;
LABEL_76:
          sub_1C4D4E63C(v717, v716);
          goto LABEL_77;
        }

        sub_1C449DB98();
        v564 = v1203;
        sub_1C44EB91C(*(v1203 + 36));
        MEMORY[0] = v339;
        MEMORY[8] = v340;
        sub_1C4EFEEF8();
        v565 = v1180;
        sub_1C43FCF64();
        sub_1C440BAA8(v566, v567, v568, v569);
        sub_1C445884C(&v1208);
        sub_1C4EFD348();
        v570 = *(v339 + 24);
        if (*(v334 + 81) != -1)
        {
          sub_1C440B8A0();
        }

        v571 = type metadata accessor for Source();
        sub_1C442B738(v571, &qword_1EDDFD290);
        sub_1C441AAFC();
        sub_1C448D19C(v572, v565 + v570);
        v573 = *(v339 + 28);
        sub_1C43FCF64();
        sub_1C440BAA8(v574, v575, v576, v564);
        sub_1C4440174();
        sub_1C448D19C(v341, v336);
        sub_1C43FBD94();
        sub_1C440BAA8(v577, v578, v579, v564);
        sub_1C4E979D0(v336);
        sub_1C443EFF0(v565, &v1209);
        v580 = sub_1C43FD680();
        v583 = sub_1C441400C(v580, v581, v582, v339);
        v299 = v1220;
        sub_1C4E97AC8(v583);
        sub_1C4D4E63C(v565, type metadata accessor for WalletEmailOrderStructs.EntityOrganizationRelationshipType);
        sub_1C44147C0();
        sub_1C4D4E63C(v341, v584);
        v308 = v1149;
      }
    }

    sub_1C449DB98();
    v585 = [v255 customer];
    if (v585)
    {
      v586 = v585;
      sub_1C465B638(v585, &selRef_fullName);
      sub_1C44106D4();
      v587 = sub_1C465B638(v586, &selRef_emailAddress);
      v589 = v588;
      v590 = sub_1C465B638(v586, &selRef_phoneNumber);
      v258 = v591;
      sub_1C4D4E224(v299, v308, v587, v589, v590, v591);
      sub_1C4416328();

      v592 = v1202;
      sub_1C445BE38();
      sub_1C4E97BB8(v593, v594, v595, v596, v597, v598, v599, v600, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
      sub_1C449DB98();
      sub_1C465B638(v586, &selRef_fullName);
      sub_1C44106D4();
      v602 = (v592 + *(v1195 + 60));
      v603 = v602[1];

      *v602 = v299;
      v602[1] = 0;
      v604 = [v586 billingAddress];
      if (v604)
      {
        v605 = v604;
        sub_1C4EFEEF8();
        v606 = v1178;
        sub_1C43FCF64();
        sub_1C440BAA8(v607, v608, v609, v610);
        v611 = v1198;
        v612 = v606 + v1198[5];
        sub_1C4EFD1D8();
        v613 = v611[6];
        if (qword_1EDDFD288 != -1)
        {
          sub_1C440B8A0();
        }

        v614 = type metadata accessor for Source();
        sub_1C442B738(v614, &qword_1EDDFD290);
        sub_1C441AAFC();
        sub_1C448D19C(v615, v606 + v613);
        v616 = v606 + v611[7];
        sub_1C4EFE518();
        v617 = v611[9];
        v1217 = (v606 + v611[8]);
        sub_1C4EFE4E8();
        sub_1C4401738(v611[10]);
        v618 = v606 + v611[11];
        sub_1C4EFE478();
        v619 = v611[13];
        v1215 = (v606 + v611[12]);
        sub_1C4EFE318();
        sub_1C4401738(v611[14]);
        v620 = v606 + v611[15];
        sub_1C4EFEB08();
        sub_1C4401738(v611[16]);
        v621 = v606 + v611[17];
        sub_1C4EFE5A8();
        v622 = v611[19];
        v258 = (v606 + v611[18]);
        sub_1C4EFEDE8();
        v623 = v611[21];
        v624 = (v606 + v611[20]);
        sub_1C4EFE8D8();
        v625 = v611[23];
        v626 = (v606 + v611[22]);
        sub_1C4EFE378();
        v627 = v611[25];
        v628 = (v606 + v611[24]);
        sub_1C4EFECD8();
        v629 = v611[27];
        v602 = (v606 + v611[26]);
        sub_1C4EFE888();
        v1214 = (v606 + v611[28]);
        *v258 = sub_1C465B638(v605, &selRef_street);
        v258[1] = v630;
        *v624 = sub_1C465B638(v605, &selRef_city);
        v624[1] = v631;
        *v626 = sub_1C465B638(v605, &selRef_state);
        v626[1] = v632;
        *v628 = sub_1C465B638(v605, &selRef_postalCode);
        v628[1] = v633;
        *v602 = sub_1C465B638(v605, &selRef_country);
        v602[1] = v634;
        v635 = sub_1C465B638(v586, &selRef_phoneNumber);
        v636 = v1215;
        *v1215 = v635;
        v636[1] = v637;
        v638 = sub_1C465B638(v586, &selRef_emailAddress);
        v639 = v1217;
        *v1217 = v638;
        v639[1] = v640;
        v641 = sub_1C465B638(v605, &selRef_rawAddress);
        v642 = v1214;
        *v1214 = v641;
        v642[1] = v643;
        sub_1C4411518();
        sub_1C443EFF0(v606, &a18);
        v644 = sub_1C43FD680();
        v647 = sub_1C441400C(v644, v645, v646, v611);
        sub_1C4E98308(v647);

        sub_1C44165F8();
        sub_1C4D4E63C(v606, v648);
      }

      sub_1C4EFEEF8();
      sub_1C444944C(&v1212);
      sub_1C43FCF64();
      sub_1C440BAA8(v649, v650, v651, v652);
      v653 = v1183;
      v654 = v602 + *(v1183 + 20);
      sub_1C4EFD288();
      v655 = *(v653 + 24);
      v601 = &xmmword_1EDDFD000;
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0();
      }

      v656 = type metadata accessor for Source();
      sub_1C442B738(v656, &qword_1EDDFD290);
      sub_1C441AAFC();
      sub_1C448D19C(v657, v602 + v655);
      v658 = *(v653 + 28);
      sub_1C43FCF64();
      v659 = v1195;
      sub_1C440BAA8(v660, v661, v662, v1195);
      sub_1C441B5F8();
      v663 = sub_1C443E47C(&a17);
      sub_1C443EFF0(v663, &v1218);
      v664 = sub_1C43FD680();
      v667 = sub_1C441400C(v664, v665, v666, v659);
      sub_1C4E983F8(v667);
      sub_1C443EFF0(v602, &v1213);
      v668 = sub_1C43FD680();
      v671 = sub_1C441400C(v668, v669, v670, v653);
      sub_1C4E984F0(v671);

      sub_1C4D4E63C(v602, type metadata accessor for WalletEmailOrderStructs.OrderPersonRelationshipType);
      sub_1C442F7F4();
      sub_1C4D4E63C(v258, v672);
      sub_1C44A18C8();
      v255 = v1219;
    }

    else
    {
      v601 = v334;
    }

    v673 = v1151;
    v674 = [v255 shippingInformation];
    if (v674)
    {
      v675 = v674;
      sub_1C465B638(v674, &selRef_trackingNumber);
      if (v676)
      {
        v677 = sub_1C4D42DD8();
        v679 = v678;

        v680 = (v1220 + v1218[15]);
        v681 = v680[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *v680 = v677;
        v680[1] = v679;
        v673 = v1151;
        sub_1C44A18C8();
        v682 = v679;
        v255 = v1219;
        sub_1C44869B4(v683, v684, v682);
      }

      else
      {
      }
    }

    v685 = v258;
    if (sub_1C44257F8() - 5 > 1)
    {
      v701 = v601;
      v702 = v1149;
    }

    else
    {
      v686 = &selRef_localizedName;
      sub_1C44BBCF4();
      String.base64EncodedSHA(withPrefix:)();
      v688 = v687;
      v690 = v689;
      v691 = v1153;
      v1221 = v673;
      v1222 = v1153;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v692 = sub_1C44C132C();
      MEMORY[0x1C6940010](v692, v690);

      sub_1C445BE38();
      sub_1C4E985E0(v693, v694, v695, v696, v697, v698, v699, v700, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
      if (v688)
      {

LABEL_74:

        sub_1C44209F8();
        v351 = v685;
        goto LABEL_75;
      }

      v720 = [v255 shippingInformation];
      sub_1C449DB98();
      if (v721)
      {
        v722 = v721;
        sub_1C4EFEEF8();
        v723 = v1191[0];
        sub_1C43FCF64();
        v1215 = v724;
        sub_1C440BAA8(v725, v726, v727, v724);
        v728 = v1216;
        v729 = v723 + *(v1216 + 20);
        sub_1C4EFD168();
        v730 = v728[6];
        if (qword_1EDDFD288 != -1)
        {
          sub_1C440B8A0();
        }

        v731 = type metadata accessor for Source();
        sub_1C442B738(v731, &qword_1EDDFD290);
        sub_1C4416944();
        v1214 = v732;
        sub_1C448D19C(v732, v723 + v730);
        v733 = v723 + v728[7];
        sub_1C4EFE658();
        v734 = v728[8];
        v735 = v723 + v728[9];
        sub_1C4EFEEE8();
        sub_1C4401738(v728[10]);
        v736 = v723 + v728[11];
        sub_1C4EFE7B8();
        v737 = v728[13];
        v738 = (v723 + v728[12]);
        sub_1C4EFECE8();
        sub_1C4401738(v728[14]);
        v739 = v723 + v728[15];
        sub_1C4EFE668();
        sub_1C4401738(v728[16]);
        v740 = v723 + v728[17];
        sub_1C4EFE698();
        v741 = v728[19];
        v742 = (v723 + v728[18]);
        sub_1C4EFEA38();
        v743 = (v1191[0] + v728[20]);
        *(v1191[0] + v734) = xmmword_1C4F6F7F0;
        *v742 = sub_1C4424A44();
        v742[1] = v744;
        *v743 = sub_1C4424A44();
        v743[1] = v745;
        *v738 = sub_1C465B638(v722, &selRef_shippingTime);
        v738[1] = v746;
        sub_1C443E47C(&v1210);
        sub_1C43FCF64();
        v747 = v1215;
        sub_1C440BAA8(v748, v749, v750, v1215);
        v751 = v738 + v728[5];
        sub_1C4EFD168();
        sub_1C449AF60();
        v752 = v738 + v728[7];
        sub_1C4EFE658();
        v753 = v728[9];
        v754 = (v738 + v728[8]);
        sub_1C4EFEEE8();
        sub_1C43FC4DC(v728[10]);
        v755 = v738 + v728[11];
        sub_1C4EFE7B8();
        v756 = v728[13];
        v757 = (v738 + v728[12]);
        sub_1C4EFECE8();
        sub_1C43FC4DC(v728[14]);
        v758 = v738 + v728[15];
        sub_1C4EFE668();
        sub_1C43FC4DC(v728[16]);
        v759 = v738 + v728[17];
        sub_1C4EFE698();
        v760 = v728[19];
        v761 = (v738 + v728[18]);
        sub_1C4EFEA38();
        v762 = (v738 + v728[20]);
        *v754 = 0xD000000000000012;
        v754[1] = 0x80000001C4FC7780;
        *v761 = sub_1C4424A44();
        v761[1] = v763;
        *v762 = sub_1C4424A44();
        v762[1] = v764;
        *v757 = sub_1C465B638(v722, &selRef_estimatedDeliveryStartTime);
        v757[1] = v765;
        v1217 = v722;
        v766 = v1176[0];
        sub_1C43FCF64();
        sub_1C440BAA8(v767, v768, v769, v747);
        v770 = v766 + v728[5];
        sub_1C4EFD168();
        sub_1C448D19C(v1214, v766 + v728[6]);
        v771 = v766 + v728[7];
        sub_1C4EFE658();
        v772 = v728[9];
        v773 = (v766 + v728[8]);
        sub_1C4EFEEE8();
        v774 = (v766 + v728[10]);
        *v774 = 0;
        v774[1] = 0;
        v775 = v766 + v728[11];
        sub_1C4EFE7B8();
        v776 = (v766 + v728[12]);
        *v776 = 0;
        v776[1] = 0;
        v777 = v766 + v728[13];
        sub_1C4EFECE8();
        v778 = (v766 + v728[14]);
        *v778 = 0;
        v778[1] = 0;
        v779 = v766 + v728[15];
        sub_1C4EFE668();
        v780 = v728[17];
        v691 = (v766 + v728[16]);
        sub_1C4EFE698();
        v781 = v728[19];
        v782 = (v766 + v728[18]);
        sub_1C4EFEA38();
        v783 = (v766 + v728[20]);
        *v773 = 0xD000000000000010;
        v773[1] = 0x80000001C4FC77A0;
        *v782 = sub_1C465B638(v1217, &selRef_estimatedDeliveryEndDate);
        v782[1] = v784;
        *v783 = sub_1C465B638(v1217, &selRef_estimatedDeliveryEndDate);
        v783[1] = v785;
        v786 = v1191[0];
        *v691 = sub_1C465B638(v1217, &selRef_estimatedDeliveryEndTime);
        v691[1] = v787;
        sub_1C443E47C(&v1195);
        sub_1C43FCF64();
        sub_1C440BAA8(v788, v789, v790, v747);
        v791 = v691 + v728[5];
        sub_1C4EFD168();
        sub_1C449AF60();
        v792 = v691 + v728[7];
        sub_1C4EFE658();
        v793 = v728[8];
        v794 = v691 + v728[9];
        sub_1C4EFEEE8();
        sub_1C43FC4DC(v728[10]);
        v795 = v691 + v728[11];
        sub_1C4EFE7B8();
        sub_1C43FC4DC(v728[12]);
        v796 = v691 + v728[13];
        sub_1C4EFECE8();
        sub_1C43FC4DC(v728[14]);
        v797 = v691 + v728[15];
        sub_1C4EFE668();
        v798 = v728[17];
        v799 = (v691 + v728[16]);
        sub_1C4EFE698();
        v800 = v728[19];
        v801 = (v691 + v728[18]);
        sub_1C4EFEA38();
        v802 = (v691 + v728[20]);
        *(v691 + v793) = xmmword_1C4F6F800;
        *v801 = sub_1C465B638(v1217, &selRef_deliveryDate);
        v801[1] = v803;
        *v802 = sub_1C465B638(v1217, &selRef_deliveryDate);
        v802[1] = v804;
        *v799 = sub_1C465B638(v1217, &selRef_deliveryTime);
        v799[1] = v805;
        sub_1C456902C(&qword_1EC0C0338, &qword_1C4F3E6D0);
        sub_1C44417B0(&v1194);
        v808 = v807 & ~v806;
        v809 = swift_allocObject();
        *(v809 + 16) = xmmword_1C4F0D480;
        v810 = v809 + v808;
        v811 = type metadata accessor for WalletEmailOrderStructs.DateRelationshipType;
        sub_1C448D19C(v786, v810);
        sub_1C448D19C(v1182, v801 + v810);
        v812 = v766;
        v813 = v1217;
        sub_1C448D19C(v812, v810 + 2 * v801);
        sub_1C448D19C(v691, v810 + 3 * v801);
        v814 = v1175;
        v815 = v1175[17];
        v816 = v1197;
        v817 = *(v1197 + v815);

        *(v816 + v815) = v809;
        v818 = v816;
        sub_1C4EA8FC4();
        sub_1C465B638(v813, &selRef_carrierName);
        sub_1C440D158();
        sub_1C44EB91C(v814[13]);
        *type metadata accessor for WalletEmailOrderStructs.DateRelationshipType = v809;
        loc_1C4E941C8 = v816;
        v819 = (v1220 + v1218[15]);
        v820 = v819[1];
        if (v820)
        {
          v818 = *v819;
          v811 = (v816 + v814[11]);
          v821 = *(v811 + 1);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          *v811 = v818;
          *(v811 + 1) = v820;
        }

        sub_1C465B638(v813, &selRef_shippingMethod);
        sub_1C440D158();
        sub_1C44EB91C(v814[15]);
        *v811 = v820;
        *(v811 + 1) = v818;
        LODWORD(v1221) = [v813 status];
        sub_1C4F02858();
        sub_1C440D158();

        v690 = v816 + v814[9];
        v822 = *(v690 + 8);

        *v690 = v820;
        *(v690 + 8) = &v1221;
        v686 = type metadata accessor for WalletEmailOrderStructs.DateRelationshipType;
        sub_1C4D4E63C(v691, type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        sub_1C4D4E63C(v1176[0], type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        sub_1C4D4E63C(v1182, type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        sub_1C4D4E63C(v786, type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        v255 = v1219;
      }

      sub_1C4EFEEF8();
      sub_1C443E47C(&v1221);
      sub_1C43FCF64();
      v1217 = v823;
      sub_1C440BAA8(v824, v825, v826, v823);
      sub_1C445884C(&v1199);
      sub_1C4EFD3A8();
      v827 = *(v690 + 24);
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0();
      }

      v828 = type metadata accessor for Source();
      sub_1C442B738(v828, &qword_1EDDFD290);
      sub_1C441AAFC();
      v830 = v829;
      sub_1C448D19C(v829, v691 + v827);
      v831 = v691 + *(v690 + 28);
      sub_1C4EFE558();
      v832 = (v691 + *(v690 + 32));
      *v832 = 0;
      v832[1] = 0;
      v833 = v691 + *(v690 + 36);
      sub_1C4EFE658();
      v834 = (v691 + *(v690 + 40));
      *v834 = 0;
      v834[1] = 0;
      v835 = *(v690 + 44);
      sub_1C43FCF64();
      v836 = v1204;
      sub_1C440BAA8(v837, v838, v839, v1204);
      sub_1C442AD2C();
      v840 = sub_1C443E47C(&a16);
      sub_1C442A79C(v840, &v1222);
      sub_1C43FBD94();
      sub_1C440BAA8(v841, v842, v843, v836);
      sub_1C4E98DEC(v686);
      v844 = (v691 + v836[9]);
      v845 = v1191[1];
      v846 = v844[1];
      v847 = v832[1];
      *v832 = *v844;
      v832[1] = v846;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      LODWORD(v1221) = [v255 emailType];
      sub_1C4D4E694();
      sub_1C4F02068();
      sub_1C44106D4();
      v848 = v834[1];

      *v834 = &v1221;
      v834[1] = v832;
      sub_1C442A79C(v845, &v1200);
      sub_1C43FBD94();
      sub_1C440BAA8(v849, v850, v851, v690);
      v852 = v1197;
      sub_1C4E98EE8(v686);
      v853 = [v255 shippingRecipient];
      if (v853)
      {
        v854 = v853;
        v1221 = 0;
        v1222 = 0xE000000000000000;
        v855 = sub_1C465B638(v853, &selRef_fullName);
        v857 = sub_1C441C460(v855, v856);
        if (v316)
        {
          v859 = 0xE000000000000000;
        }

        else
        {
          v859 = v858;
        }

        MEMORY[0x1C6940010](v857, v859);

        v860 = sub_1C465B638(v854, &selRef_emailAddress);
        v862 = sub_1C441C460(v860, v861);
        if (v316)
        {
          v864 = 0xE000000000000000;
        }

        else
        {
          v864 = v863;
        }

        MEMORY[0x1C6940010](v862, v864);

        v865 = sub_1C465B638(v854, &selRef_phoneNumber);
        v867 = sub_1C441C460(v865, v866);
        if (v316)
        {
          v869 = 0xE000000000000000;
        }

        else
        {
          v869 = v868;
        }

        MEMORY[0x1C6940010](v867, v869);

        v870 = v1222;
        sub_1C44BBCF4();
        String.base64EncodedSHA(withPrefix:)();
        v872 = v871;

        v873 = v1170;
        sub_1C445BE38();
        sub_1C4E97BB8(v874, v875, v876, v877, v878, v879, v880, v881, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
        v1149 = v847;
        if (v847)
        {
          sub_1C4416BE0();

          sub_1C4440E74();
          sub_1C44143B8();
          sub_1C4D4E63C(v1197, v882);
          sub_1C44209F8();
          v883 = sub_1C43FFF1C();
          sub_1C4D4E63C(v883, v884);
          sub_1C4403B9C();
          v717 = v1220;
          goto LABEL_76;
        }

        sub_1C465B638(v854, &selRef_fullName);
        sub_1C4416328();
        v996 = (v873 + *(v1195 + 60));
        v997 = v996[1];

        *v996 = v870;
        v996[1] = v872;
        v998 = [v854 address];
        if (v998)
        {
          v999 = v998;
          v1000 = v1178;
          sub_1C43FCF64();
          sub_1C440BAA8(v1001, v1002, v1003, v1217);
          sub_1C445884C(&a13);
          sub_1C4EFD1D8();
          v1004 = v873[6];
          sub_1C441AAFC();
          sub_1C448D19C(v830, v1000 + v1005);
          v1006 = v1000 + v873[7];
          sub_1C4EFE518();
          v1007 = v873[9];
          v1215 = (v1000 + v873[8]);
          sub_1C4EFE4E8();
          sub_1C4401738(v873[10]);
          v1008 = v1000 + v873[11];
          sub_1C4EFE478();
          v1009 = v873[13];
          v1214 = (v1000 + v873[12]);
          sub_1C4EFE318();
          sub_1C4401738(v873[14]);
          v1010 = v1000 + v873[15];
          sub_1C4EFEB08();
          sub_1C4401738(v873[16]);
          v1011 = v1000 + v873[17];
          sub_1C4EFE5A8();
          v1012 = v873[19];
          v1013 = (v1000 + v873[18]);
          sub_1C4EFEDE8();
          v1014 = v873[20];
          v1015 = v873[21];
          v1216 = v830;
          v1016 = (v1000 + v1014);
          sub_1C4EFE8D8();
          v1017 = v873[23];
          v1018 = (v1000 + v873[22]);
          sub_1C4EFE378();
          v1019 = v873[25];
          v1020 = (v1000 + v873[24]);
          sub_1C4EFECD8();
          v1021 = v873[27];
          v1022 = (v1000 + v873[26]);
          sub_1C4EFE888();
          v1213 = v1000 + v873[28];
          *v1013 = sub_1C465B638(v999, &selRef_street);
          v1013[1] = v1023;
          *v1016 = sub_1C465B638(v999, &selRef_city);
          v1016[1] = v1024;
          v830 = v1216;
          *v1018 = sub_1C465B638(v999, &selRef_state);
          v1018[1] = v1025;
          *v1020 = sub_1C465B638(v999, &selRef_postalCode);
          v1020[1] = v1026;
          *v1022 = sub_1C465B638(v999, &selRef_country);
          v1022[1] = v1027;
          v1028 = sub_1C465B638(v854, &selRef_phoneNumber);
          v1029 = v1214;
          *v1214 = v1028;
          v1029[1] = v1030;
          v1031 = sub_1C465B638(v854, &selRef_emailAddress);
          v1032 = v1215;
          *v1215 = v1031;
          v1032[1] = v1033;
          v1034 = sub_1C465B638(v999, &selRef_rawAddress);
          v1035 = v1213;
          *v1213 = v1034;
          *(v1035 + 8) = v1036;
          sub_1C4411518();
          sub_1C443EFF0(v1000, &a18);
          v1037 = sub_1C43FD680();
          v1038 = v873;
          v873 = v1170;
          v1041 = sub_1C441400C(v1037, v1039, v1040, v1038);
          sub_1C4E98308(v1041);

          sub_1C44165F8();
          sub_1C4D4E63C(v1000, v1042);
        }

        v1043 = v1159;
        sub_1C43FCF64();
        sub_1C440BAA8(v1044, v1045, v1046, v1217);
        v1047 = v1158;
        v1048 = v1043 + *(v1158 + 20);
        sub_1C4EFD308();
        v1049 = *(v1047 + 24);
        sub_1C441AAFC();
        sub_1C448D19C(v830, v1043 + v1050);
        v1051 = *(v1047 + 28);
        sub_1C43FCF64();
        v1052 = v1195;
        sub_1C440BAA8(v1053, v1054, v1055, v1195);
        sub_1C441B5F8();
        sub_1C443EFF0(v873, &v1218);
        v1056 = sub_1C43FD680();
        v1059 = sub_1C441400C(v1056, v1057, v1058, v1052);
        sub_1C4E98FD8(v1059);
        sub_1C443EFF0(v1043, &v1182);
        v1060 = sub_1C43FD680();
        v1063 = sub_1C441400C(v1060, v1061, v1062, v1047);
        v852 = v1197;
        sub_1C4E990D0(v1063);

        v1064 = sub_1C447FB28();
        sub_1C4D4E63C(v1064, v1065);
        sub_1C442F7F4();
        sub_1C4D4E63C(v873, v1066);
        v255 = v1219;
      }

      v1067 = v1168;
      sub_1C43FCF64();
      sub_1C440BAA8(v1068, v1069, v1070, v1217);
      v1071 = v1166;
      v1072 = v1067 + *(v1166 + 20);
      sub_1C4EFD398();
      v1073 = *(v1071 + 24);
      sub_1C441AAFC();
      sub_1C448D19C(v830, v1067 + v1074);
      v1075 = *(v1071 + 28);
      sub_1C43FCF64();
      v1076 = v1175;
      sub_1C440BAA8(v1077, v1078, v1079, v1175);
      sub_1C442A79C(v852, v1193);
      sub_1C43FBD94();
      sub_1C440BAA8(v1080, v1081, v1082, v1076);
      sub_1C4E991C0(v1071);
      sub_1C456902C(&qword_1EC0C0340, &qword_1C4F3E6D8);
      sub_1C44693E4(&v1192);
      v1085 = v1084 & ~v1083;
      v1086 = swift_allocObject();
      *(v1086 + 16) = xmmword_1C4F0D130;
      sub_1C448D19C(v1067, v1086 + v1085);
      v1087 = v1218[18];
      v1088 = v1220;
      v1089 = *(v1220 + v1087);

      *(v1088 + v1087) = v1086;
      sub_1C4EB5668();
      sub_1C4D4E63C(v1067, type metadata accessor for WalletEmailOrderStructs.OrderShipmentFullFillmentRelationshipType);
      sub_1C4440E74();
      sub_1C44143B8();
      sub_1C4D4E63C(v852, v1090);
      v685 = v1201;
      v702 = v1149;
      v673 = v1151;
      v701 = 0x1EDDFD000;
    }

    v703 = sub_1C44257F8();
    v704 = v1196;
    if (v703 == 1)
    {
      v705 = [v255 paymentInformation];
      if (v705)
      {
        v706 = v705;
        sub_1C44BBCF4();
        String.base64EncodedSHA(withPrefix:)();
        v708 = v707;
        v1221 = v673;
        v1222 = v1153;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v709 = sub_1C44C132C();
        MEMORY[0x1C6940010](v709, v708);

        sub_1C4E992B8(v1221, v1222, v710, v711, v712, v713, v714, v715, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
        if (v702)
        {

          goto LABEL_74;
        }

        sub_1C449DB98();
        v925 = sub_1C4EFEEF8();
        v926 = v1174;
        sub_1C43FCF64();
        sub_1C440BAA8(v927, v928, v929, v925);
        sub_1C445884C(v1189);
        sub_1C4EFD208();
        v930 = v708[6];
        if (*(v701 + 648) != -1)
        {
          sub_1C440B8A0();
        }

        v931 = type metadata accessor for Source();
        v932 = sub_1C442B738(v931, &qword_1EDDFD290);
        sub_1C4416944();
        sub_1C448D19C(v933, v926 + v930);
        v934 = v926 + v708[7];
        sub_1C4EFEE08();
        v935 = v708[9];
        v936 = (v926 + v708[8]);
        sub_1C4EFEC18();
        v937 = (v926 + v708[10]);
        v938 = sub_1C465B638(v706, &selRef_totalAmount);
        v940 = v939;
        *v936 = v938;
        v936[1] = v939;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v941 = sub_1C465B638(v706, &selRef_totalCurrencyCode);
        v943 = v942;
        *v937 = v941;
        v937[1] = v942;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v944 = sub_1C4D42F2C(v938, v940, v941, v943);

        sub_1C4D400DC(v944);
        sub_1C4422C34();
        sub_1C443EFF0(v1174, &v1190);
        v945 = sub_1C43FD680();
        v948 = sub_1C441400C(v945, v946, v947, v708);
        v949 = v1179;
        sub_1C4E999D8(v948);
        sub_1C443E47C(v1191);
        sub_1C43FCF64();
        sub_1C440BAA8(v950, v951, v952, v925);
        v1217 = v925;
        v953 = v1164;
        v954 = v943 + v1164[5];
        sub_1C4EFD2A8();
        v955 = v943 + v953[6];
        v1219 = v932;
        sub_1C448D19C(v932, v955);
        v956 = v943 + v953[7];
        sub_1C4EFE558();
        sub_1C43FC4DC(v953[8]);
        v957 = v943 + v953[9];
        sub_1C4EFE658();
        sub_1C43FC4DC(v953[10]);
        v958 = v953[11];
        sub_1C43FCF64();
        v959 = v1163;
        sub_1C440BAA8(v960, v961, v962, v1163);
        sub_1C443EFF0(v949, &v1186);
        v963 = sub_1C43FD680();
        v966 = sub_1C441400C(v963, v964, v965, v959);
        sub_1C4E99AC8(v966);
        sub_1C443EFF0(v943, &v1188);
        v967 = sub_1C43FD680();
        v970 = sub_1C441400C(v967, v968, v969, v953);
        v971 = v1220;
        sub_1C4E99BC4(v970);
        sub_1C44BBCF4();
        String.base64EncodedSHA(withPrefix:)();
        v973 = v972;
        v975 = v974;
        sub_1C4480884();
        v977 = *(v976 - 256);
        v1221 = v978;
        v1222 = v977;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v979 = sub_1C44C132C();
        MEMORY[0x1C6940010](v979, v975);

        v980 = v1165;
        sub_1C445BE38();
        sub_1C4E99CB4(v981, v982, v983, v984, v985, v986, v987, v988, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
        v1149 = v973;
        if (v973)
        {

          sub_1C447CCC4();
          v989 = sub_1C447FB28();
          sub_1C4D4E63C(v989, v990);

          sub_1C4D4E63C(v1174, type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType);
          sub_1C44209F8();
          v991 = sub_1C43FFF1C();
          sub_1C4D4E63C(v991, v992);
          sub_1C4403B9C();
          v717 = v971;
          goto LABEL_76;
        }

        v1091 = v1161;
        sub_1C43FCF64();
        v1092 = v1217;
        sub_1C440BAA8(v1093, v1094, v1095, v1217);
        v1096 = v1091 + v708[5];
        sub_1C4EFD208();
        v1097 = v708[6];
        sub_1C441AAFC();
        v1099 = v1219;
        sub_1C448D19C(v1219, v1091 + v1098);
        v1100 = v1091 + v708[7];
        sub_1C4EFEE08();
        v1101 = v708[9];
        v1102 = (v1091 + v708[8]);
        sub_1C4EFEC18();
        v1103 = (v1091 + v708[10]);
        *v1102 = sub_1C465B638(v706, &selRef_totalAmount);
        v1102[1] = v1104;
        *v1103 = sub_1C465B638(v706, &selRef_totalCurrencyCode);
        v1103[1] = v1105;
        sub_1C4422C34();
        sub_1C443EFF0(v1091, &v1190);
        v1106 = sub_1C43FD680();
        v1109 = sub_1C441400C(v1106, v1107, v1108, v708);
        v1110 = v980;
        sub_1C4E9A5D0(v1109);
        v1111 = [v706 paymentMethod];
        v1112 = v1092;
        v1113 = v980;
        if (v1111)
        {
          sub_1C45C28F0(v1111, &selRef_lastFourDigits);
          sub_1C4416328();
        }

        else
        {
          v1110 = 0;
          v1103 = 0;
        }

        v1114 = (v980 + *(v1162 + 60));
        v1115 = v1114[1];

        *v1114 = v1110;
        v1114[1] = v1103;
        v1116 = [v706 paymentMethod];
        if (v1116)
        {
          sub_1C45C28F0(v1116, &selRef_displayName);
          sub_1C4416328();
        }

        else
        {
          v1110 = 0;
          v1103 = 0;
        }

        v1117 = v1162;
        v1118 = (v1113 + *(v1162 + 52));
        v1119 = v1118[1];

        *v1118 = v1110;
        v1118[1] = v1103;
        sub_1C444944C(&v1180);
        sub_1C43FCF64();
        sub_1C440BAA8(v1120, v1121, v1122, v1112);
        sub_1C445884C(&v1177);
        sub_1C4EFD328();
        v1123 = v1112[6];
        sub_1C441AAFC();
        sub_1C448D19C(v1099, v1103 + v1124);
        v1125 = v1103 + v1112[7];
        sub_1C4EFE558();
        v1126 = v1112[9];
        v1127 = (v1103 + v1112[8]);
        sub_1C4EFE658();
        sub_1C442A790(v1112[10]);
        v1128 = v1112[11];
        sub_1C43FCF64();
        sub_1C440BAA8(v1129, v1130, v1131, v1117);
        sub_1C4480884();
        v1133 = *(v1132 - 256);
        *v1127 = v1134;
        v1127[1] = v1133;
        sub_1C443EFF0(v1113, &v1179);
        v1135 = sub_1C43FD680();
        sub_1C440BAA8(v1135, v1136, v1137, v1117);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4E9A6C0(v1127);
        sub_1C456902C(&qword_1EC0C0348, &qword_1C4F3E6E0);
        sub_1C44693E4(&v1178);
        v1140 = v1139 & ~v1138;
        v1141 = swift_allocObject();
        *(v1141 + 16) = xmmword_1C4F0D130;
        sub_1C448D19C(v1103, v1141 + v1140);
        v1142 = v1218[20];
        v1143 = v1220;
        v1144 = *(v1220 + v1142);

        *(v1143 + v1142) = v1141;
        sub_1C4EB5844();

        sub_1C447CCC4();
        sub_1C4D4E63C(v1179, type metadata accessor for WalletEmailOrderStructs.Payment);
        sub_1C4D4E63C(v1103, type metadata accessor for WalletEmailOrderStructs.OrderTransactionRelationshipType);
        sub_1C4D4E63C(v1161, type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType);
        sub_1C4D4E63C(v1113, type metadata accessor for WalletEmailOrderStructs.Transaction);
        sub_1C4D4E63C(v1174, type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType);
        v718 = v1190;
        v702 = v1149;
        v719 = v1150;
        v704 = v1196;
      }

      else
      {
        v719 = v1150;
        v718 = v1190;
      }
    }

    else
    {
      v718 = v1190;
      v719 = v1150;
    }

    sub_1C4EFEEF8();
    sub_1C43FCF64();
    sub_1C440BAA8(v885, v886, v887, v888);
    v889 = v719 + v704[5];
    sub_1C4EFD258();
    v890 = v704[6];
    if (qword_1EDDFD288 != -1)
    {
      sub_1C440B8A0();
    }

    v891 = type metadata accessor for Source();
    sub_1C442B738(v891, &qword_1EDDFD290);
    sub_1C441AAFC();
    sub_1C448D19C(v892, v719 + v890);
    v893 = v719 + v704[7];
    sub_1C4EFE558();
    v894 = v704[9];
    v895 = (v719 + v704[8]);
    sub_1C4EFE658();
    v896 = (v719 + v704[10]);
    *v896 = 0xD000000000000014;
    v896[1] = 0x80000001C4F860D0;
    sub_1C44EC90C(v1223, v897, v898, v899, v900, v901, v902, v903, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156, v1157, v1158, v1159, v1160, v1161, v1162);
    v1221 = v904;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
    sub_1C4416328();

    sub_1C44BBCF4();
    String.base64EncodedSHA(withPrefix:)();
    v906 = v905;
    v908 = v907;

    *v895 = v906;
    v895[1] = v908;
    sub_1C456902C(&qword_1EC0C0328, &qword_1C4F3E6C0);
    sub_1C44693E4(&v1223);
    v911 = v910 & ~v909;
    v912 = swift_allocObject();
    *(v912 + 16) = xmmword_1C4F0D130;
    sub_1C448D19C(v719, v912 + v911);
    v913 = v1218[24];
    v914 = v1220;
    v915 = *(v1220 + v913);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *(v914 + v913) = v912;
    sub_1C4EB5BFC();
    v916 = *(*(v718 + *(type metadata accessor for PhaseStores() + 48)) + 16);

    sub_1C448E5DC();
    if (!v702)
    {

      LOBYTE(v1221) = v1172;
      sub_1C4E9A7BC(v1151, v1153, &v1221, v919, v920, v921, v922, v923, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1155, v1156);
      sub_1C44B905C();

      sub_1C43FE24C();
      sub_1C4D4E63C(v1150, v993);
      sub_1C44209F8();
      sub_1C4D4E63C(v914, v994);
      sub_1C4403B9C();
      sub_1C4D4E63C(v914, v995);
      goto LABEL_77;
    }

    sub_1C43FE24C();
    sub_1C4D4E63C(v719, v917);
    sub_1C44209F8();
    v918 = sub_1C43FFF1C();
    sub_1C4D4E63C(v918, v924);
    sub_1C4403B9C();
    v717 = v914;
    goto LABEL_76;
  }

LABEL_77:
  sub_1C44109F8();
}