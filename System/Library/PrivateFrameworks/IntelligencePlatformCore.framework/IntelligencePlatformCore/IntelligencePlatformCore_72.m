uint64_t sub_1C4A7E77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
  v28 = a1;
  v11 = sub_1C4F00FD8();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_1C440BAA8(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1C44D7248(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
    v15 = sub_1C4F010B8();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849888();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1C4A7FD18();
  v16 = 0;
  *v18 = v29;
  return sub_1C440BAA8(v17, v16, 1, v4);
}

uint64_t sub_1C4A7EA34(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1C4F02AE8();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849A24();
    v12 = v14;
  }

  v9 = *(*(v12 + 48) + 8 * v8);
  sub_1C4A7FFD8(v8);
  *v2 = v14;
  return v9;
}

uint64_t sub_1C4A7EB20(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1C4F00BC8();
    v7 = *(v2 + 40);
    sub_1C44110E8();
    sub_1C44D7248(v8, v9);
    sub_1C4F00FD8();
    v10 = *(v2 + 32);
    sub_1C43FC41C();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v2 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        break;
      }

      v20 = *(*(v2 + 48) + 8 * v14);
      sub_1C44110E8();
      sub_1C44D7248(&qword_1EC0C24C8, v15);
      if (sub_1C4F010B8())
      {
        v16 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v1;
        v21 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C484A5E8();
          v18 = v21;
        }

        v6 = *(*(v18 + 48) + 8 * v14);
        sub_1C4A80130(v14);
        *v1 = v21;
        return v6;
      }

      v11 = v14 + 1;
    }

    return 0;
  }

  if (v2 < 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v5 = sub_1C4F02158();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1C4A7F6D4(v4, a1);

  return v6;
}

void sub_1C4A7ECE4()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for EventTriple(v3);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440B054();
  v10 = sub_1C4410508();
  EventTriple.hash(into:)(v10);
  v11 = sub_1C4F02B68();
  sub_1C442D0E4(v11);
  if ((v13 & 1) == 0)
  {
LABEL_35:
    v26 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v12);
  while (1)
  {
    sub_1C440E64C();
    v15 = sub_1C442BDFC(v14);
    sub_1C4471A3C(v15, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v16);
      sub_1C4403598();
      sub_1C43FDC64();
      sub_1C44135E8();
      v17 = v17 && v7 == v31;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090();
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C4425ED4();
    sub_1C442000C();
    if ((v25 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v7 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  sub_1C44135E8();
  if (!v17 || v7 != v31)
  {
    sub_1C43FF090();
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v21 = v17 && v19 == v20;
  if (!v21 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4425ED4();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v29 & 1) == 0)
  {
    sub_1C484AB78();
    v28 = v31[0];
  }

  v30 = sub_1C4433678(*(v28 + 48));
  sub_1C4418B4C(v30, type metadata accessor for EventTriple, type metadata accessor for EventTriple, type metadata accessor for EventTriple);
  v26 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v26, v27, 1, v4);
  sub_1C43FE9F0();
}

void sub_1C4A7EF60()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for GraphTriple(v3);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440B054();
  v10 = sub_1C4410508();
  GraphTriple.hash(into:)(v10);
  v11 = sub_1C4F02B68();
  sub_1C442D0E4(v11);
  if ((v13 & 1) == 0)
  {
LABEL_35:
    v26 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v12);
  while (1)
  {
    sub_1C440E64C();
    v15 = sub_1C442BDFC(v14);
    sub_1C4471A3C(v15, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v16);
      sub_1C4403598();
      sub_1C43FDC64();
      sub_1C44135E8();
      v17 = v17 && v7 == v31;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090();
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C4435250();
    sub_1C442000C();
    if ((v25 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v7 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  sub_1C44135E8();
  if (!v17 || v7 != v31)
  {
    sub_1C43FF090();
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v21 = v17 && v19 == v20;
  if (!v21 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4435250();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v29 & 1) == 0)
  {
    sub_1C484ACA0();
    v28 = v31[0];
  }

  v30 = sub_1C4433678(*(v28 + 48));
  sub_1C4418B4C(v30, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
  v26 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v26, v27, 1, v4);
  sub_1C43FE9F0();
}

void sub_1C4A7F1DC()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for ConstructionEventTriple(v3);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440B054();
  v10 = sub_1C4410508();
  ConstructionEventTriple.hash(into:)(v10);
  v11 = sub_1C4F02B68();
  sub_1C442D0E4(v11);
  if ((v13 & 1) == 0)
  {
LABEL_35:
    v26 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v12);
  while (1)
  {
    sub_1C440E64C();
    v15 = sub_1C442BDFC(v14);
    sub_1C4471A3C(v15, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v16);
      sub_1C4403598();
      sub_1C43FDC64();
      sub_1C44135E8();
      v17 = v17 && v7 == v31;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090();
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C43FC73C();
    sub_1C442000C();
    if ((v25 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v7 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  sub_1C44135E8();
  if (!v17 || v7 != v31)
  {
    sub_1C43FF090();
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v21 = v17 && v19 == v20;
  if (!v21 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C43FC73C();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v29 & 1) == 0)
  {
    sub_1C484ADC8();
    v28 = v31[0];
  }

  v30 = sub_1C4433678(*(v28 + 48));
  sub_1C4418B4C(v30, type metadata accessor for ConstructionEventTriple, type metadata accessor for ConstructionEventTriple, type metadata accessor for ConstructionEventTriple);
  v26 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v26, v27, 1, v4);
  sub_1C43FE9F0();
}

void sub_1C4A7F458()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for ConstructionGraphTriple(v3);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440B054();
  v10 = sub_1C4410508();
  ConstructionGraphTriple.hash(into:)(v10);
  v11 = sub_1C4F02B68();
  sub_1C442D0E4(v11);
  if ((v13 & 1) == 0)
  {
LABEL_35:
    v26 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v12);
  while (1)
  {
    sub_1C440E64C();
    v15 = sub_1C442BDFC(v14);
    sub_1C4471A3C(v15, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v16);
      sub_1C4403598();
      sub_1C43FDC64();
      sub_1C44135E8();
      v17 = v17 && v7 == v31;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090();
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C4430004();
    sub_1C442000C();
    if ((v25 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v7 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  sub_1C44135E8();
  if (!v17 || v7 != v31)
  {
    sub_1C43FF090();
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v21 = v17 && v19 == v20;
  if (!v21 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4430004();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v29 & 1) == 0)
  {
    sub_1C484AEF0();
    v28 = v31[0];
  }

  v30 = sub_1C4433678(*(v28 + 48));
  sub_1C4418B4C(v30, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
  v26 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v26, v27, 1, v4);
  sub_1C43FE9F0();
}

uint64_t sub_1C4A7F6D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  v4 = sub_1C4F02128();
  v5 = swift_unknownObjectRetain();
  sub_1C483DC4C(v5, v4, v6, v7, v8, v9, v10, v11, v20, v21, a2);
  v13 = v12;
  v22 = v12;
  v14 = *(v12 + 40);
  sub_1C4F00BC8();
  sub_1C44D7248(&qword_1EC0BDF28, MEMORY[0x1E695BF10]);

  v15 = sub_1C4F00FD8();
  v16 = ~(-1 << *(v13 + 32));
  while (1)
  {
    v17 = v15 & v16;
    if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
    {
      break;
    }

    v24 = *(*(v13 + 48) + 8 * v17);
    sub_1C44D7248(&qword_1EC0C24C8, MEMORY[0x1E695BF10]);
    if (sub_1C4F010B8())
    {

      v18 = *(*(v22 + 48) + 8 * v17);
      sub_1C4A80130(v17);
      if (sub_1C4F010B8())
      {
        *v2 = v22;
        return v18;
      }

      __break(1u);
      break;
    }

    v15 = v17 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4A7F8A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v15 = sub_1C4F02B68();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C4A7FA60(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_1C4F02AF8();
        sub_1C4F01298();

        v13 = sub_1C4F02B68() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + v2);
            v18 = (v16 + v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C4A7FD18()
{
  sub_1C43FBD3C();
  v49 = v1;
  v50 = v2;
  v48 = v3;
  v5 = v4;
  v7 = v6(0);
  sub_1C43FCDF8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = *v0;
  v16 = *v0 + 56;
  sub_1C4409F88();
  v19 = (v5 + 1) & ~v18;
  if (((1 << v19) & *(v16 + 8 * (v19 >> 6))) != 0)
  {
    v20 = ~v18;

    v21 = sub_1C4F020E8();
    if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) != 0)
    {
      v46 = (v21 + 1) & v20;
      v45 = *(v9 + 16);
      v51 = *(v9 + 72);
      v47 = v9 + 16;
      v22 = (v9 + 8);
      v23 = v15;
      v24 = v20;
      while (1)
      {
        v25 = v16;
        v26 = v51 * v19;
        v27 = v24;
        v45(v14, *(v23 + 48) + v51 * v19, v7);
        v28 = v23;
        v29 = *(v23 + 40);
        sub_1C44D7248(v48, v49);
        v30 = sub_1C4F00FD8();
        (*v22)(v14, v7);
        v24 = v27;
        v31 = v30 & v27;
        if (v5 >= v46)
        {
          if (v31 < v46 || v5 < v31)
          {
LABEL_20:
            v23 = v28;
            goto LABEL_24;
          }
        }

        else if (v31 < v46 && v5 < v31)
        {
          goto LABEL_20;
        }

        v23 = v28;
        v33 = *(v28 + 48);
        v34 = v51 * v5;
        v35 = v33 + v51 * v5;
        v36 = v33 + v26 + v51;
        if (v51 * v5 < v26 || v35 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v24 = v27;
          v5 = v19;
          goto LABEL_24;
        }

        v5 = v19;
        if (v34 != v26)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v19 = (v19 + 1) & v24;
        v16 = v25;
        if (((*(v25 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v23 = v15;
LABEL_28:
    sub_1C4425350();
    *(v16 + v39) &= v40 - 1;
  }

  else
  {
    *(v16 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (v17 << v5) - 1;
    v23 = v15;
  }

  v41 = *(v23 + 16);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v43;
    ++*(v23 + 36);
    sub_1C43FE9F0();
  }
}

void sub_1C4A7FFD8(int64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 56;
  sub_1C4409F88();
  v8 = (v7 + 1) & ~v6;
  if (((1 << v8) & *(v4 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v6;

    v10 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v11 = (v10 + 1) & v9;
      do
      {
        v12 = v3[5];
        v13 = v3[6];
        v14 = (v13 + 8 * v8);
        v15 = *v14;
        v16 = sub_1C4F02AE8() & v9;
        if (a1 >= v11)
        {
          if (v16 >= v11 && a1 >= v16)
          {
LABEL_15:
            v19 = (v13 + 8 * a1);
            if (a1 != v8 || v19 >= v14 + 1)
            {
              *v19 = *v14;
              a1 = v8;
            }
          }
        }

        else if (v16 >= v11 || a1 >= v16)
        {
          goto LABEL_15;
        }

        v8 = (v8 + 1) & v9;
        sub_1C444FEE4();
      }

      while ((v21 & 1) != 0);
    }

    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (v5 << a1) - 1;
  }

  v22 = v3[2];
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    sub_1C4426CE8(v24);
  }
}

unint64_t sub_1C4A80130(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_1C4F00BC8();
      sub_1C44D7248(&qword_1EC0BDF28, MEMORY[0x1E695BF10]);
      do
      {
        v11 = *(v3 + 40);
        v22 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1C4F00FD8() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C4A80310(int64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v52 = a3;
  v53 = a4;
  v6 = a2(0);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = *v4;
  v15 = *v4 + 56;
  sub_1C4409F88();
  v18 = (a1 + 1) & ~v17;
  if (((1 << v18) & *(v15 + 8 * (v18 >> 6))) != 0)
  {
    v19 = ~v17;

    v20 = sub_1C4F020E8();
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) != 0)
    {
      v49 = (v20 + 1) & v19;
      v50 = v14;
      v54 = *(v8 + 72);
      v21 = v19;
      v51 = v15;
      do
      {
        v22 = v54 * v18;
        sub_1C4471A3C(v14[6] + v54 * v18, v13);
        v23 = v14[5];
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        sub_1C4F00FE8();
        v24 = v6[5];
        sub_1C4EFEEF8();
        sub_1C441A188();
        sub_1C44D7248(&qword_1EDDFCCB8, v25);
        sub_1C4F00FE8();
        v26 = v6[6];
        sub_1C4EFF8A8();
        sub_1C44D7248(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        sub_1C4F00FE8();
        v27 = &v13[v6[7]];
        sub_1C4F00FE8();
        v28 = &v13[v6[8]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v13[v6[9]]);
        sub_1C440C544(v6[10]);
        v31 = &v13[v6[11]];
        v32 = *v31;
        v33 = *(v31 + 1);
        sub_1C4F01298();
        sub_1C440C544(v6[12]);
        v34 = sub_1C4F02B68();
        sub_1C4485564(v13, v53);
        v35 = v34 & v21;
        if (a1 >= v49)
        {
          if (v35 < v49 || a1 < v35)
          {
LABEL_20:
            v14 = v50;
            v15 = v51;
            goto LABEL_24;
          }
        }

        else if (v35 < v49 && a1 < v35)
        {
          goto LABEL_20;
        }

        v14 = v50;
        v15 = v51;
        v37 = v50[6];
        v38 = v54 * a1;
        v39 = v37 + v54 * a1;
        v40 = v37 + v22 + v54;
        if (v54 * a1 < v22 || v39 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v18;
          goto LABEL_24;
        }

        a1 = v18;
        if (v38 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v18 = (v18 + 1) & v21;
      }

      while (((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
    }

    sub_1C4425350();
    *(v15 + v43) &= v44 - 1;
  }

  else
  {
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (v16 << a1) - 1;
  }

  v45 = v14[2];
  v46 = __OFSUB__(v45, 1);
  v47 = v45 - 1;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    sub_1C4426CE8(v47);
  }
}

uint64_t sub_1C4A806CC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1C4A7E190(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A807FC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1C4A7EA34(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A808F4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4A7E078(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A80A20(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t))
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&qword_1EC0C24B8, &qword_1C4F4A8A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - v9;
  v11 = sub_1C4EFDAF8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v70 - v19;
  if (!*(a2 + 2))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_44;
  }

  v76 = v8;
  v71 = 0;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v80 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v77 = (63 - v22) >> 6;
  v79 = (v18 + 32);
  v87 = (a2 + 56);
  v84 = v18;
  v90 = v18 + 16;
  v91 = (v18 + 8);
  v81 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = 0;
  v78 = a1 + 56;
  v73 = v10;
LABEL_6:
  v26 = v24;
  v27 = v25;
  v88 = v25;
  if (v24)
  {
LABEL_12:
    a1 = (v26 - 1) & v26;
    v30 = v81;
    v84[2](v10, *(v81 + 48) + v84[9] * (__clz(__rbit64(v26)) | (v27 << 6)), v11);
    v31 = 0;
    v28 = v10;
    v29 = v27;
LABEL_13:
    sub_1C440BAA8(v28, v31, 1, v11);
    v92 = v30;
    v93 = v21;
    v94 = v80;
    v95 = v29;
    v96 = a1;
    if (sub_1C44157D4(v28, 1, v11) == 1)
    {
      goto LABEL_46;
    }

    v75 = *v79;
    v75(v86, v28, v11);
    v32 = *(a2 + 5);
    v74 = sub_1C44D7248(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
    v33 = sub_1C4F00FD8();
    v85 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v21 = v33 & v85;
      if (((1 << (v33 & v85)) & v87[(v33 & v85) >> 6]) == 0)
      {
        (*v91)(v86, v11);
        v25 = v29;
        v24 = a1;
        v21 = v78;
        v10 = v73;
        goto LABEL_6;
      }

      v82 = 1 << v21;
      v83 = v21 >> 6;
      v27 = a2;
      v34 = *(a2 + 6);
      v35 = v84;
      v88 = v84[9];
      v36 = v84[2];
      (v36)(v17, v34 + v88 * v21, v11);
      v37 = sub_1C44D7248(&qword_1EC0B85A8, MEMORY[0x1E69A94B0]);
      v38 = sub_1C4F010B8();
      a2 = v35[1];
      (a2)(v17, v11);
      if (v38)
      {
        break;
      }

      v33 = v21 + 1;
      a2 = v27;
    }

    v84 = v36;
    v85 = v37;
    v39 = (a2)(v86, v11);
    v40 = *(v27 + 32);
    v72 = ((1 << v40) + 63) >> 6;
    v24 = 8 * v72;
    if ((v40 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v86 = a2;
      v73 = &v70;
      MEMORY[0x1EEE9AC00](v39);
      v41 = &v70 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v41, v87, v24);
      v42 = *&v41[8 * v83] & ~v82;
      v43 = *(v27 + 16);
      v82 = v41;
      *&v41[8 * v83] = v42;
      v44 = v43 - 1;
      v28 = v76;
      v45 = v78;
      v46 = v77;
      v47 = v81;
      a2 = v27;
      v48 = v84;
      while (1)
      {
        v83 = v44;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v49 = v29;
LABEL_29:
        v50 = __clz(__rbit64(a1));
        v51 = (a1 - 1) & a1;
        (v48)(v28, *(v47 + 48) + (v50 | (v49 << 6)) * v88, v11);
        v52 = 0;
LABEL_30:
        sub_1C440BAA8(v28, v52, 1, v11);
        v92 = v47;
        v93 = v45;
        v94 = v80;
        v95 = v29;
        v96 = v51;
        if (sub_1C44157D4(v28, 1, v11) == 1)
        {
          sub_1C4420C3C(v28, &qword_1EC0C24B8, &qword_1C4F4A8A8);
          sub_1C4A8DAC0();
          a2 = v64;
          goto LABEL_42;
        }

        v84 = v51;
        v53 = v48;
        v75(v89, v28, v11);
        v54 = *(a2 + 5);
        v55 = sub_1C4F00FD8();
        v56 = a2;
        v57 = ~(-1 << *(a2 + 32));
        do
        {
          v58 = v55 & v57;
          v59 = (v55 & v57) >> 6;
          v60 = 1 << (v55 & v57);
          if ((v60 & v87[v59]) == 0)
          {
            (v86)(v89, v11);
            a2 = v56;
            v47 = v81;
            v28 = v76;
            v45 = v78;
            v46 = v77;
            v48 = v53;
            a1 = v84;
            goto LABEL_23;
          }

          (v53)(v17, *(v56 + 6) + v58 * v88, v11);
          v61 = sub_1C4F010B8();
          (v86)(v17, v11);
          v55 = v58 + 1;
        }

        while ((v61 & 1) == 0);
        (v86)(v89, v11);
        v62 = *(v82 + 8 * v59);
        *(v82 + 8 * v59) = v62 & ~v60;
        v63 = (v62 & v60) == 0;
        a2 = v56;
        v47 = v81;
        v28 = v76;
        v45 = v78;
        v46 = v77;
        v48 = v53;
        a1 = v84;
        if (v63)
        {
          goto LABEL_23;
        }

        v44 = v83 - 1;
        if (__OFSUB__(v83, 1))
        {
          __break(1u);
        }

        if (v83 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v49 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v49 >= v46)
        {
          v51 = 0;
          v52 = 1;
          goto LABEL_30;
        }

        a1 = *(v45 + 8 * v49);
        ++v29;
        if (a1)
        {
          v29 = v49;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_1C4420C3C(v28, &qword_1EC0C24B8, &qword_1C4F4A8A8);
LABEL_42:
      sub_1C449BB0C();
LABEL_44:
      v65 = *MEMORY[0x1E69E9840];
      return a2;
    }
  }

  else
  {
    v28 = v10;
    v29 = v25;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v77)
      {
        a1 = 0;
        v31 = 1;
        v30 = v81;
        goto LABEL_13;
      }

      v26 = *(v21 + 8 * v27);
      ++v29;
      if (v26)
      {
        v10 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v67 = swift_slowAlloc();
  v68 = v71;
  v69 = sub_1C4A84D34(v67, v72, v87, v72, v27, v21, &v92);
  if (!v68)
  {
    a2 = v69;

    MEMORY[0x1C6942830](v67, -1, -1);
    goto LABEL_42;
  }

  result = MEMORY[0x1C6942830](v67, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C4A81334(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v74 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1;
    v54 = 0;
    v8 = *(a1 + 56);
    v62 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v59 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v60 = (63 - v9) >> 6;
    v64 = 0x80000001C4F85600;
    v65 = 0x80000001C4F86760;
    v63 = 0x80000001C4F86740;
    v67 = (a2 + 56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = 0;
    do
    {
LABEL_6:
      if (!v11)
      {
        v13 = v12;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_80;
          }

          if (v14 >= v60)
          {
            goto LABEL_77;
          }

          v11 = *(v62 + 8 * v14);
          ++v13;
          if (v11)
          {
            v12 = v14;
            break;
          }
        }
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v7 + 48) + (v15 | (v12 << 6)));
      v16 = *(v6 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();

      v17 = sub_1C4F02B68();
      v18 = -1 << *(v6 + 32);
      v2 = v17 & ~v18;
      v4 = v2 >> 6;
      v5 = 1 << v2;
    }

    while (((1 << v2) & v67[v2 >> 6]) == 0);
    v61 = v7;
    v19 = ~v18;
    v3 = v3;
    v66 = v6;
    while (1)
    {
      v20 = 0xE800000000000000;
      v21 = 0x4449656C646E7562;
      switch(*(*(v6 + 48) + v2))
      {
        case 1:
          v21 = 0xD000000000000011;
          v20 = v63;
          break;
        case 2:
          v21 = 0x456E6F6973736573;
          v20 = 0xEC000000746E6576;
          break;
        case 3:
          v21 = 0xD000000000000016;
          v20 = v64;
          break;
        case 4:
          v21 = 0xD000000000000016;
          v20 = v65;
          break;
        case 5:
          v21 = 0x7463617265746E69;
          v20 = 0xEF657079546E6F69;
          break;
        case 6:
          v21 = 0x646576726573626FLL;
          v20 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      v22 = 0xE800000000000000;
      v23 = 0x4449656C646E7562;
      switch(v3)
      {
        case 1:
          v23 = 0xD000000000000011;
          v22 = v63;
          break;
        case 2:
          v23 = 0x456E6F6973736573;
          v22 = 0xEC000000746E6576;
          break;
        case 3:
          v23 = 0xD000000000000016;
          v22 = v64;
          break;
        case 4:
          v23 = 0xD000000000000016;
          v22 = v65;
          break;
        case 5:
          v23 = 0x7463617265746E69;
          v22 = 0xEF657079546E6F69;
          break;
        case 6:
          v23 = 0x646576726573626FLL;
          v22 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      if (v21 == v23 && v20 == v22)
      {
        v71 = v59;
        v72 = v12;
        v73 = v11;
        v7 = v61;
        v69 = v61;
        v70 = v62;

        goto LABEL_39;
      }

      v25 = sub_1C4F02938();

      if (v25)
      {
        break;
      }

      v2 = (v2 + 1) & v19;
      v4 = v2 >> 6;
      v6 = v66;
      v5 = 1 << v2;
      if ((v67[v2 >> 6] & (1 << v2)) == 0)
      {
        v7 = v61;
        goto LABEL_6;
      }
    }

    v71 = v59;
    v72 = v12;
    v73 = v11;
    v7 = v61;
    v69 = v61;
    v70 = v62;
LABEL_39:
    v6 = v66;
    v27 = *(v66 + 32);
    v55 = ((1 << v27) + 63) >> 6;
    v3 = 8 * v55;
    if ((v27 & 0x3Fu) > 0xD)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v56 = &v53;
      MEMORY[0x1EEE9AC00](v26);
      v2 = &v53 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v2, v67, v3);
      v28 = *(v2 + 8 * v4) & ~v5;
      v29 = *(v6 + 16);
      v58 = v2;
      *(v2 + 8 * v4) = v28;
      v30 = v29 - 1;
LABEL_41:
      v57 = v30;
LABEL_42:
      while (v11)
      {
LABEL_48:
        v32 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v33 = *(*(v7 + 48) + (v32 | (v12 << 6)));
        v34 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();

        v2 = &v68;
        v35 = sub_1C4F02B68();
        v36 = -1 << *(v6 + 32);
        v37 = v35 & ~v36;
        v4 = v37 >> 6;
        v5 = 1 << v37;
        if (((1 << v37) & v67[v37 >> 6]) != 0)
        {
          v38 = ~v36;
          v2 = v33;
          while (1)
          {
            v39 = 0xE800000000000000;
            v40 = 0x4449656C646E7562;
            switch(*(*(v6 + 48) + v37))
            {
              case 1:
                v40 = 0xD000000000000011;
                v39 = v63;
                break;
              case 2:
                v40 = 0x456E6F6973736573;
                v39 = 0xEC000000746E6576;
                break;
              case 3:
                v40 = 0xD000000000000016;
                v39 = v64;
                break;
              case 4:
                v40 = 0xD000000000000016;
                v39 = v65;
                break;
              case 5:
                v40 = 0x7463617265746E69;
                v39 = 0xEF657079546E6F69;
                break;
              case 6:
                v40 = 0x646576726573626FLL;
                v39 = 0xEB00000000656741;
                break;
              default:
                break;
            }

            v41 = 0xE800000000000000;
            v42 = 0x4449656C646E7562;
            switch(v2)
            {
              case 1uLL:
                v42 = 0xD000000000000011;
                v41 = v63;
                break;
              case 2uLL:
                v42 = 0x456E6F6973736573;
                v41 = 0xEC000000746E6576;
                break;
              case 3uLL:
                v42 = 0xD000000000000016;
                v41 = v64;
                break;
              case 4uLL:
                v42 = 0xD000000000000016;
                v41 = v65;
                break;
              case 5uLL:
                v42 = 0x7463617265746E69;
                v41 = 0xEF657079546E6F69;
                break;
              case 6uLL:
                v42 = 0x646576726573626FLL;
                v41 = 0xEB00000000656741;
                break;
              default:
                break;
            }

            if (v40 == v42 && v39 == v41)
            {
              break;
            }

            v44 = sub_1C4F02938();

            if (v44)
            {
              goto LABEL_72;
            }

            v37 = (v37 + 1) & v38;
            v4 = v37 >> 6;
            v6 = v66;
            v5 = 1 << v37;
            if ((v67[v37 >> 6] & (1 << v37)) == 0)
            {
              v7 = v61;
              goto LABEL_42;
            }
          }

LABEL_72:
          v45 = *(v58 + 8 * v4);
          *(v58 + 8 * v4) = v45 & ~v5;
          v6 = v66;
          v7 = v61;
          if ((v45 & v5) != 0)
          {
            v30 = v57 - 1;
            if (__OFSUB__(v57, 1))
            {
              __break(1u);
            }

            if (v57 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_77;
            }

            goto LABEL_41;
          }
        }
      }

      v3 = v62;
      while (1)
      {
        v31 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v31 >= v60)
        {
          sub_1C4A8DCA8(v58, v55, v57, v6);
          v6 = v46;
          goto LABEL_77;
        }

        v11 = *(v62 + 8 * v31);
        ++v12;
        if (v11)
        {
          v12 = v31;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v49 = swift_slowAlloc();
    v50 = v54;
    v51 = sub_1C4A84DBC(v49, v55, v67, v55, v6, v2, &v69);
    if (!v50)
    {
      v52 = v51;

      MEMORY[0x1C6942830](v49, -1, -1);
      v59 = v71;
      v6 = v52;
LABEL_77:
      sub_1C449BB0C();
      goto LABEL_78;
    }

    result = MEMORY[0x1C6942830](v49, -1, -1);
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CD0];
LABEL_78:
    v47 = *MEMORY[0x1E69E9840];
    return v6;
  }

  return result;
}

void sub_1C4A81DF0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v102 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v78 - v9;
  v11 = sub_1C4EFEEF8();
  v12 = sub_1C43FCDF8(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v97 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v78 - v21;
  if (!*(v1 + 2))
  {

    goto LABEL_43;
  }

  v84 = v8;
  v79 = 0;
  v23 = v3 + 56;
  v22 = *(v3 + 56);
  v24 = -1 << *(v3 + 32);
  v88 = ~v24;
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v22;
  v85 = (63 - v24) >> 6;
  v87 = (v20 + 32);
  v95 = (v1 + 56);
  v92 = v20;
  v98 = v20 + 16;
  v99 = (v20 + 8);
  v89 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = 0;
  v86 = v3 + 56;
  v81 = v10;
LABEL_6:
  v28 = v26;
  v29 = v27;
  v96 = v27;
  if (v26)
  {
LABEL_12:
    v3 = (v28 - 1) & v28;
    v32 = v89;
    v92[2](v10, *(v89 + 48) + v92[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v11);
    v33 = 0;
    v30 = v10;
    v31 = v29;
LABEL_13:
    sub_1C440BAA8(v30, v33, 1, v11);
    v100 = v32;
    v101 = v23;
    sub_1C440BE90();
    if (v34)
    {
      goto LABEL_45;
    }

    v83 = *v87;
    v83(v94, v30, v11);
    v35 = *(v1 + 5);
    sub_1C441A188();
    v82 = sub_1C44D7248(&qword_1EDDFCCB8, v36);
    sub_1C4F00FD8();
    v37 = *(v1 + 32);
    sub_1C43FC41C();
    v93 = ~v39;
    while (1)
    {
      v23 = v38 & v93;
      if (((1 << (v38 & v93)) & v95[(v38 & v93) >> 6]) == 0)
      {
        (*v99)(v94, v11);
        v27 = v31;
        v26 = v3;
        v23 = v86;
        v10 = v81;
        goto LABEL_6;
      }

      v90 = 1 << v23;
      v91 = v23 >> 6;
      v29 = v1;
      v40 = *(v1 + 6);
      v41 = v92;
      v96 = v92[9];
      v42 = v92[2];
      (v42)(v19, v40 + v96 * v23, v11);
      sub_1C441A188();
      v44 = sub_1C44D7248(&qword_1EDDFCCB0, v43);
      v45 = sub_1C4F010B8();
      v1 = v41[1];
      (v1)(v19, v11);
      if (v45)
      {
        break;
      }

      v38 = v23 + 1;
      v1 = v29;
    }

    v92 = v42;
    v93 = v44;
    v46 = (v1)(v94, v11);
    v47 = *(v29 + 32);
    v80 = ((1 << v47) + 63) >> 6;
    v26 = 8 * v80;
    if ((v47 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v94 = v1;
      v81 = &v78;
      MEMORY[0x1EEE9AC00](v46);
      v48 = &v78 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v48, v95, v26);
      v49 = *&v48[8 * v91] & ~v90;
      v50 = *(v29 + 16);
      v90 = v48;
      *&v48[8 * v91] = v49;
      v51 = v50 - 1;
      v30 = v84;
      v52 = v86;
      v53 = v85;
      v54 = v89;
      v55 = v29;
      v56 = v92;
      while (1)
      {
        v91 = v51;
LABEL_23:
        if (!v3)
        {
          break;
        }

LABEL_28:
        sub_1C441BBA8();
        (v56)(v30, *(v54 + 48) + v58 * v96, v11);
        v59 = 0;
LABEL_29:
        sub_1C440BAA8(v30, v59, 1, v11);
        v100 = v54;
        v101 = v52;
        sub_1C440BE90();
        if (v34)
        {
          sub_1C4420C3C(v30, &qword_1EC0B9A08, &unk_1C4F107B0);
          sub_1C4A8E0F4();
          goto LABEL_41;
        }

        v92 = v3;
        v60 = v56;
        v83(v97, v30, v11);
        v61 = *(v55 + 40);
        sub_1C4F00FD8();
        v62 = v55;
        v63 = *(v55 + 32);
        sub_1C43FC41C();
        v66 = ~v65;
        do
        {
          v67 = v64 & v66;
          v68 = (v64 & v66) >> 6;
          v69 = 1 << (v64 & v66);
          if ((v69 & v95[v68]) == 0)
          {
            sub_1C4414E00();
            v74();
            v55 = v62;
            v54 = v89;
            v30 = v84;
            v52 = v86;
            v53 = v85;
            v56 = v60;
            v3 = v92;
            goto LABEL_23;
          }

          (v60)(v19, *(v62 + 48) + v67 * v96, v11);
          v70 = sub_1C4F010B8();
          sub_1C4414E00();
          v71();
          v64 = v67 + 1;
        }

        while ((v70 & 1) == 0);
        sub_1C4414E00();
        v72();
        v73 = *(v90 + 8 * v68);
        *(v90 + 8 * v68) = v73 & ~v69;
        v34 = (v73 & v69) == 0;
        v55 = v62;
        v54 = v89;
        v30 = v84;
        v52 = v86;
        v53 = v85;
        v56 = v60;
        v3 = v92;
        if (v34)
        {
          goto LABEL_23;
        }

        v51 = v91 - 1;
        if (__OFSUB__(v91, 1))
        {
          __break(1u);
        }

        if (v91 == 1)
        {

          goto LABEL_41;
        }
      }

      while (1)
      {
        v57 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v57 >= v53)
        {
          v3 = 0;
          v59 = 1;
          goto LABEL_29;
        }

        v3 = *(v52 + 8 * v57);
        ++v31;
        if (v3)
        {
          v31 = v57;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_45:
      sub_1C4420C3C(v30, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_41:
      sub_1C449BB0C();
LABEL_43:
      v75 = *MEMORY[0x1E69E9840];
      sub_1C43FE9F0();
      return;
    }
  }

  else
  {
    v30 = v10;
    v31 = v27;
    while (1)
    {
      v29 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v29 >= v85)
      {
        v3 = 0;
        v33 = 1;
        v32 = v89;
        goto LABEL_13;
      }

      v28 = *(v23 + 8 * v29);
      ++v31;
      if (v28)
      {
        v10 = v30;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v76 = swift_slowAlloc();
  v77 = v79;
  sub_1C4A84E44(v76, v80, v95, v80, v29, v23, &v100);
  if (!v77)
  {

    MEMORY[0x1C6942830](v76, -1, -1);
    goto LABEL_41;
  }

  MEMORY[0x1C6942830](v76, -1, -1);
  __break(1u);
}

uint64_t sub_1C4A82660(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t))
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - v9;
  v11 = sub_1C4EFF0C8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v70 - v19;
  if (!*(a2 + 2))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_44;
  }

  v76 = v8;
  v71 = 0;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v80 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v77 = (63 - v22) >> 6;
  v79 = (v18 + 32);
  v87 = (a2 + 56);
  v84 = v18;
  v90 = v18 + 16;
  v91 = (v18 + 8);
  v81 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = 0;
  v78 = a1 + 56;
  v73 = v10;
LABEL_6:
  v26 = v24;
  v27 = v25;
  v88 = v25;
  if (v24)
  {
LABEL_12:
    a1 = (v26 - 1) & v26;
    v30 = v81;
    v84[2](v10, *(v81 + 48) + v84[9] * (__clz(__rbit64(v26)) | (v27 << 6)), v11);
    v31 = 0;
    v28 = v10;
    v29 = v27;
LABEL_13:
    sub_1C440BAA8(v28, v31, 1, v11);
    v92 = v30;
    v93 = v21;
    v94 = v80;
    v95 = v29;
    v96 = a1;
    if (sub_1C44157D4(v28, 1, v11) == 1)
    {
      goto LABEL_46;
    }

    v75 = *v79;
    v75(v86, v28, v11);
    v32 = *(a2 + 5);
    v74 = sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
    v33 = sub_1C4F00FD8();
    v85 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v21 = v33 & v85;
      if (((1 << (v33 & v85)) & v87[(v33 & v85) >> 6]) == 0)
      {
        (*v91)(v86, v11);
        v25 = v29;
        v24 = a1;
        v21 = v78;
        v10 = v73;
        goto LABEL_6;
      }

      v82 = 1 << v21;
      v83 = v21 >> 6;
      v27 = a2;
      v34 = *(a2 + 6);
      v35 = v84;
      v88 = v84[9];
      v36 = v84[2];
      (v36)(v17, v34 + v88 * v21, v11);
      v37 = sub_1C44D7248(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
      v38 = sub_1C4F010B8();
      a2 = v35[1];
      (a2)(v17, v11);
      if (v38)
      {
        break;
      }

      v33 = v21 + 1;
      a2 = v27;
    }

    v84 = v36;
    v85 = v37;
    v39 = (a2)(v86, v11);
    v40 = *(v27 + 32);
    v72 = ((1 << v40) + 63) >> 6;
    v24 = 8 * v72;
    if ((v40 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v86 = a2;
      v73 = &v70;
      MEMORY[0x1EEE9AC00](v39);
      v41 = &v70 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v41, v87, v24);
      v42 = *&v41[8 * v83] & ~v82;
      v43 = *(v27 + 16);
      v82 = v41;
      *&v41[8 * v83] = v42;
      v44 = v43 - 1;
      v28 = v76;
      v45 = v78;
      v46 = v77;
      v47 = v81;
      a2 = v27;
      v48 = v84;
      while (1)
      {
        v83 = v44;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v49 = v29;
LABEL_29:
        v50 = __clz(__rbit64(a1));
        v51 = (a1 - 1) & a1;
        (v48)(v28, *(v47 + 48) + (v50 | (v49 << 6)) * v88, v11);
        v52 = 0;
LABEL_30:
        sub_1C440BAA8(v28, v52, 1, v11);
        v92 = v47;
        v93 = v45;
        v94 = v80;
        v95 = v29;
        v96 = v51;
        if (sub_1C44157D4(v28, 1, v11) == 1)
        {
          sub_1C4420C3C(v28, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C4A8E2DC();
          a2 = v64;
          goto LABEL_42;
        }

        v84 = v51;
        v53 = v48;
        v75(v89, v28, v11);
        v54 = *(a2 + 5);
        v55 = sub_1C4F00FD8();
        v56 = a2;
        v57 = ~(-1 << *(a2 + 32));
        do
        {
          v58 = v55 & v57;
          v59 = (v55 & v57) >> 6;
          v60 = 1 << (v55 & v57);
          if ((v60 & v87[v59]) == 0)
          {
            (v86)(v89, v11);
            a2 = v56;
            v47 = v81;
            v28 = v76;
            v45 = v78;
            v46 = v77;
            v48 = v53;
            a1 = v84;
            goto LABEL_23;
          }

          (v53)(v17, *(v56 + 6) + v58 * v88, v11);
          v61 = sub_1C4F010B8();
          (v86)(v17, v11);
          v55 = v58 + 1;
        }

        while ((v61 & 1) == 0);
        (v86)(v89, v11);
        v62 = *(v82 + 8 * v59);
        *(v82 + 8 * v59) = v62 & ~v60;
        v63 = (v62 & v60) == 0;
        a2 = v56;
        v47 = v81;
        v28 = v76;
        v45 = v78;
        v46 = v77;
        v48 = v53;
        a1 = v84;
        if (v63)
        {
          goto LABEL_23;
        }

        v44 = v83 - 1;
        if (__OFSUB__(v83, 1))
        {
          __break(1u);
        }

        if (v83 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v49 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v49 >= v46)
        {
          v51 = 0;
          v52 = 1;
          goto LABEL_30;
        }

        a1 = *(v45 + 8 * v49);
        ++v29;
        if (a1)
        {
          v29 = v49;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_1C4420C3C(v28, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_42:
      sub_1C449BB0C();
LABEL_44:
      v65 = *MEMORY[0x1E69E9840];
      return a2;
    }
  }

  else
  {
    v28 = v10;
    v29 = v25;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v77)
      {
        a1 = 0;
        v31 = 1;
        v30 = v81;
        goto LABEL_13;
      }

      v26 = *(v21 + 8 * v27);
      ++v29;
      if (v26)
      {
        v10 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v67 = swift_slowAlloc();
  v68 = v71;
  v69 = sub_1C4A84ECC(v67, v72, v87, v72, v27, v21, &v92);
  if (!v68)
  {
    a2 = v69;

    MEMORY[0x1C6942830](v67, -1, -1);
    goto LABEL_42;
  }

  result = MEMORY[0x1C6942830](v67, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C4A82F74(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v50 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x1E69E7CD0];
LABEL_36:
    v35 = *MEMORY[0x1E69E9840];
    return v3;
  }

  v41[0] = 0;
  v4 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v43 = ~v8;
  v44 = a1 + 56;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 56;
  v13 = 1;
  v45 = a1;
  if ((v9 & v5) == 0)
  {
LABEL_7:
    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      ++v15;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_35:
    sub_1C449BB0C();
    goto LABEL_36;
  }

LABEL_6:
  v14 = v4;
LABEL_11:
  v16 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
  v17 = *(v3 + 40);
  v18 = sub_1C4F02AE8();
  v19 = -1 << *(v3 + 32);
  v20 = ~v19;
  while (1)
  {
    v4 = v18 & v20;
    v6 = (v18 & v20) >> 6;
    v7 = 1 << (v18 & v20);
    if ((v7 & *(v12 + 8 * v6)) == 0)
    {
      v4 = v14;
      v6 = v44;
      a1 = v45;
      v7 = -1;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (*(*(v3 + 48) + 8 * v4) == v2)
    {
      break;
    }

    v18 = v4 + 1;
  }

  v47 = v43;
  v48 = v14;
  v49 = v10;
  v46[0] = v45;
  v46[1] = v44;
  v13 = (63 - v19) >> 6;
  v2 = 8 * v13;
  v21 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v13 > 0x80)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v41[1] = v13;
    v41[2] = v41;
    MEMORY[0x1EEE9AC00](v21);
    v13 = v41 - v22;
    memcpy(v41 - v22, (v3 + 56), v2);
    v23 = *(v3 + 16);
    *(v13 + 8 * v6) &= ~v7;
    v24 = v23 - 1;
    v4 = 1;
    v7 = v44;
    v6 = v45;
LABEL_19:
    v42 = v24;
LABEL_20:
    while (v10)
    {
LABEL_25:
      v26 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v26)));
      v27 = *(v3 + 40);
      v28 = sub_1C4F02AE8();
      v29 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v30 = v28 & v29;
        v31 = (v28 & v29) >> 6;
        v32 = 1 << (v28 & v29);
        if ((v32 & *(v12 + 8 * v31)) == 0)
        {
          break;
        }

        v28 = v30 + 1;
        if (*(*(v3 + 48) + 8 * v30) == v2)
        {
          v33 = *(v13 + 8 * v31);
          *(v13 + 8 * v31) = v33 & ~v32;
          if ((v33 & v32) == 0)
          {
            goto LABEL_20;
          }

          v24 = v42 - 1;
          if (__OFSUB__(v42, 1))
          {
            __break(1u);
          }

          if (v42 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_35;
          }

          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v11)
      {
        sub_1C4A8E738();
        v3 = v34;
        goto LABEL_35;
      }

      v10 = *(v7 + 8 * v25);
      ++v14;
      if (v10)
      {
        v14 = v25;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = v41[0];
  v39 = sub_1C4A84F54(v37, v13, (v3 + 56), v13, v3, v4, v46);
  if (!v38)
  {
    v40 = v39;

    MEMORY[0x1C6942830](v37, -1, -1);
    v43 = v47;
    v3 = v40;
    goto LABEL_35;
  }

  result = MEMORY[0x1C6942830](v37, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C4A83360(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v21 = sub_1C4F02B68();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_1C4F02938() & 1) != 0)
          {
            v57 = v51;
            v58 = v16;
            v59 = v11;
            v3 = v54;
            v12 = v55;
            v56[0] = v55;
            v56[1] = v54;

            v26 = *(v5 + 32);
            v48 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v48;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v49 = &v47;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v52 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v53;
              while (1)
              {
                v50 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_1C4F02AF8();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4F01298();
                v36 = sub_1C4F02B68();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v54;
                    v12 = v55;
                    v30 = v53;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_1C4F02938();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = *(v52 + 8 * v7);
                *(v52 + 8 * v7) = v41 & ~v8;
                v3 = v54;
                v12 = v55;
                v30 = v53;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v50 - 1;
                if (__OFSUB__(v50, 1))
                {
                  __break(1u);
                }

                if (v50 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  sub_1C4A8D90C(v52, v48, v50, v5);
                  v5 = v42;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_1C4A84FDC(v45, v48, (v5 + 56), v48, v5, v7, v56);

            MEMORY[0x1C6942830](v45, -1, -1);
            v51 = v57;
            v5 = v46;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v54;
        v14 = v55;
        v12 = v53;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1C449BB0C();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1C4A83838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v9 = sub_1C456902C(&qword_1EC0C24B8, &qword_1C4F4A8A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_1C4EFDAF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v40 - v19;
  v20 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v21 = v20 - 1;
  v42 = a1;
  v43 = (v14 + 32);
  v47 = a3 + 56;
  v48 = v14 + 16;
  v49 = (v14 + 8);
  v50 = a3;
  v44 = v12;
  v45 = a5;
  while (1)
  {
    v41 = v21;
LABEL_3:
    v23 = *a5;
    v22 = a5[1];
    v24 = a5[2];
    v25 = a5[3];
    v26 = a5[4];
    v46 = v24;
    if (!v26)
    {
      break;
    }

    v27 = v25;
LABEL_9:
    v28 = (v26 - 1) & v26;
    (*(v14 + 16))(v12, *(v23 + 48) + *(v14 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v13);
    v29 = 0;
LABEL_10:
    sub_1C440BAA8(v12, v29, 1, v13);
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v46;
    a5[3] = v25;
    a5[4] = v28;
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C4420C3C(v12, &qword_1EC0C24B8, &qword_1C4F4A8A8);

      sub_1C4A8DAC0();
      return;
    }

    (*v43)(v51, v12, v13);
    v30 = v50;
    v31 = *(v50 + 40);
    sub_1C44D7248(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
    v32 = sub_1C4F00FD8();
    v33 = ~(-1 << *(v30 + 32));
    do
    {
      v34 = v32 & v33;
      v35 = (v32 & v33) >> 6;
      v36 = 1 << (v32 & v33);
      if ((v36 & *(v47 + 8 * v35)) == 0)
      {
        (*v49)(v51, v13);
        v12 = v44;
        a5 = v45;
        goto LABEL_3;
      }

      (*(v14 + 16))(v18, *(v50 + 48) + *(v14 + 72) * v34, v13);
      sub_1C44D7248(&qword_1EC0B85A8, MEMORY[0x1E69A94B0]);
      v37 = sub_1C4F010B8();
      v38 = *(v14 + 8);
      v38(v18, v13);
      v32 = v34 + 1;
    }

    while ((v37 & 1) == 0);
    v38(v51, v13);
    v39 = *(v42 + 8 * v35);
    *(v42 + 8 * v35) = v39 & ~v36;
    v12 = v44;
    a5 = v45;
    if ((v39 & v36) == 0)
    {
      goto LABEL_3;
    }

    v21 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      goto LABEL_23;
    }

    if (v41 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= ((v24 + 64) >> 6))
    {
      v28 = 0;
      v29 = 1;
      goto LABEL_10;
    }

    v26 = *(v22 + 8 * v27);
    ++v25;
    if (v26)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C4A83C88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v6;
    while (1)
    {
LABEL_3:
      v7 = a5[3];
      v8 = a5[4];
      if (!v8)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v7;
            a5[4] = 0;

            sub_1C4A8DCA8(a1, a2, v27, a3);
            return;
          }

          v8 = *(a5[1] + 8 * v9);
          ++v7;
          if (v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v9 = a5[3];
LABEL_8:
      v10 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      v11 = *(a3 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();

      v12 = sub_1C4F02B68();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v30 + 8 * (v14 >> 6))) != 0)
      {
        v17 = ~v13;
        v18 = v10;
        while (1)
        {
          v19 = 0xE800000000000000;
          v20 = 0x4449656C646E7562;
          switch(*(*(a3 + 48) + v14))
          {
            case 1:
              v20 = 0xD000000000000011;
              v19 = 0x80000001C4F86740;
              break;
            case 2:
              v20 = 0x456E6F6973736573;
              v19 = 0xEC000000746E6576;
              break;
            case 3:
              v20 = 0xD000000000000016;
              v19 = 0x80000001C4F85600;
              break;
            case 4:
              v20 = 0xD000000000000016;
              v19 = 0x80000001C4F86760;
              break;
            case 5:
              v20 = 0x7463617265746E69;
              v19 = 0xEF657079546E6F69;
              break;
            case 6:
              v20 = 0x646576726573626FLL;
              v19 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          v21 = 0xE800000000000000;
          v22 = 0x4449656C646E7562;
          switch(v18)
          {
            case 1:
              v22 = 0xD000000000000011;
              v21 = 0x80000001C4F86740;
              break;
            case 2:
              v22 = 0x456E6F6973736573;
              v21 = 0xEC000000746E6576;
              break;
            case 3:
              v22 = 0xD000000000000016;
              v21 = 0x80000001C4F85600;
              break;
            case 4:
              v22 = 0xD000000000000016;
              v21 = 0x80000001C4F86760;
              break;
            case 5:
              v22 = 0x7463617265746E69;
              v21 = 0xEF657079546E6F69;
              break;
            case 6:
              v22 = 0x646576726573626FLL;
              v21 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          if (v20 == v22 && v19 == v21)
          {
            break;
          }

          v24 = sub_1C4F02938();

          if (v24)
          {
            goto LABEL_32;
          }

          v14 = (v14 + 1) & v17;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if ((*(v30 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_32:
        v25 = *(a1 + 8 * v15);
        *(a1 + 8 * v15) = v25 & ~v16;
        if ((v25 & v16) != 0)
        {
          break;
        }
      }
    }

    v6 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_38:
      __break(1u);
      return;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1C4A8412C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_1C4EFEEF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v40 - v19;
  v20 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v21 = v20 - 1;
  v42 = a1;
  v43 = (v14 + 32);
  v47 = a3 + 56;
  v48 = v14 + 16;
  v49 = (v14 + 8);
  v50 = a3;
  v44 = v12;
  v45 = a5;
  while (1)
  {
    v41 = v21;
LABEL_3:
    v23 = *a5;
    v22 = a5[1];
    v24 = a5[2];
    v25 = a5[3];
    v26 = a5[4];
    v46 = v24;
    if (!v26)
    {
      break;
    }

    v27 = v25;
LABEL_9:
    v28 = (v26 - 1) & v26;
    (*(v14 + 16))(v12, *(v23 + 48) + *(v14 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v13);
    v29 = 0;
LABEL_10:
    sub_1C440BAA8(v12, v29, 1, v13);
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v46;
    a5[3] = v25;
    a5[4] = v28;
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C4420C3C(v12, &qword_1EC0B9A08, &unk_1C4F107B0);

      sub_1C4A8E0F4();
      return;
    }

    (*v43)(v51, v12, v13);
    v30 = v50;
    v31 = *(v50 + 40);
    sub_1C44D7248(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
    v32 = sub_1C4F00FD8();
    v33 = ~(-1 << *(v30 + 32));
    do
    {
      v34 = v32 & v33;
      v35 = (v32 & v33) >> 6;
      v36 = 1 << (v32 & v33);
      if ((v36 & *(v47 + 8 * v35)) == 0)
      {
        (*v49)(v51, v13);
        v12 = v44;
        a5 = v45;
        goto LABEL_3;
      }

      (*(v14 + 16))(v18, *(v50 + 48) + *(v14 + 72) * v34, v13);
      sub_1C44D7248(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
      v37 = sub_1C4F010B8();
      v38 = *(v14 + 8);
      v38(v18, v13);
      v32 = v34 + 1;
    }

    while ((v37 & 1) == 0);
    v38(v51, v13);
    v39 = *(v42 + 8 * v35);
    *(v42 + 8 * v35) = v39 & ~v36;
    v12 = v44;
    a5 = v45;
    if ((v39 & v36) == 0)
    {
      goto LABEL_3;
    }

    v21 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      goto LABEL_23;
    }

    if (v41 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= ((v24 + 64) >> 6))
    {
      v28 = 0;
      v29 = 1;
      goto LABEL_10;
    }

    v26 = *(v22 + 8 * v27);
    ++v25;
    if (v26)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C4A8457C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v40 - v19;
  v20 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v21 = v20 - 1;
  v42 = a1;
  v43 = (v14 + 32);
  v47 = a3 + 56;
  v48 = v14 + 16;
  v49 = (v14 + 8);
  v50 = a3;
  v44 = v12;
  v45 = a5;
  while (1)
  {
    v41 = v21;
LABEL_3:
    v23 = *a5;
    v22 = a5[1];
    v24 = a5[2];
    v25 = a5[3];
    v26 = a5[4];
    v46 = v24;
    if (!v26)
    {
      break;
    }

    v27 = v25;
LABEL_9:
    v28 = (v26 - 1) & v26;
    (*(v14 + 16))(v12, *(v23 + 48) + *(v14 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v13);
    v29 = 0;
LABEL_10:
    sub_1C440BAA8(v12, v29, 1, v13);
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v46;
    a5[3] = v25;
    a5[4] = v28;
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C4420C3C(v12, &unk_1EC0BA0E0, &qword_1C4F105A0);

      sub_1C4A8E2DC();
      return;
    }

    (*v43)(v51, v12, v13);
    v30 = v50;
    v31 = *(v50 + 40);
    sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
    v32 = sub_1C4F00FD8();
    v33 = ~(-1 << *(v30 + 32));
    do
    {
      v34 = v32 & v33;
      v35 = (v32 & v33) >> 6;
      v36 = 1 << (v32 & v33);
      if ((v36 & *(v47 + 8 * v35)) == 0)
      {
        (*v49)(v51, v13);
        v12 = v44;
        a5 = v45;
        goto LABEL_3;
      }

      (*(v14 + 16))(v18, *(v50 + 48) + *(v14 + 72) * v34, v13);
      sub_1C44D7248(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
      v37 = sub_1C4F010B8();
      v38 = *(v14 + 8);
      v38(v18, v13);
      v32 = v34 + 1;
    }

    while ((v37 & 1) == 0);
    v38(v51, v13);
    v39 = *(v42 + 8 * v35);
    *(v42 + 8 * v35) = v39 & ~v36;
    v12 = v44;
    a5 = v45;
    if ((v39 & v36) == 0)
    {
      goto LABEL_3;
    }

    v21 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      goto LABEL_23;
    }

    if (v41 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= ((v24 + 64) >> 6))
    {
      v28 = 0;
      v29 = 1;
      goto LABEL_10;
    }

    v26 = *(v22 + 8 * v27);
    ++v25;
    if (v26)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C4A849CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    v15 = *(a3 + 40);
    v16 = sub_1C4F02AE8();
    v17 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v10 + 8 * v19)) == 0)
      {
        break;
      }

      v16 = v18 + 1;
      if (*(*(a3 + 48) + 8 * v18) == v14)
      {
        v21 = *(a1 + 8 * v19);
        *(a1 + 8 * v19) = v21 & ~v20;
        if ((v21 & v20) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      sub_1C4A8E738();
      return;
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C4A84B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v17 = sub_1C4F02B68();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_1C4F02938();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = *(a1 + 8 * v20);
    *(a1 + 8 * v20) = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_1C4A8D90C(a1, a2, v27, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1C4A84D34(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A83838(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84DBC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A83C88(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84E44(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A8412C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84ECC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A8457C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84F54(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A849CC(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84FDC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A84B48(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

_BYTE *storeEnumTagSinglePayload for WalletPassStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4A85140@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-1] - v9;
  sub_1C4A480D4(a1, &v14[-1] - v9);
  sub_1C442E860(v2 + 16, v14);
  v11 = *(v2 + 104);

  result = sub_1C4A85F74(v10, v14, v11);
  *a2 = result;
  a2[1] = 0;
  return result;
}

unint64_t sub_1C4A851F8(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_1C4A85208(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1C4A852C8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4A85208(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4A853A8()
{
  result = qword_1EC0C24D0;
  if (!qword_1EC0C24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24D0);
  }

  return result;
}

uint64_t sub_1C4A85418()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x615074656C6C6177;
  *(inited + 40) = 0xEF656C7974537373;
  v2 = type metadata accessor for WalletPassContent();
  if (*(v0 + *(v2 + 28)) == 10)
  {
    v3 = 9;
  }

  else
  {
    v3 = *(v0 + *(v2 + 28));
  }

  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  v4 = sub_1C4F00F28();
  v5 = *(v0 + *(v2 + 20));
  if (v5 != 3)
  {
    sub_1C4A3B8F8(v5 == 1);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  return v4;
}

uint64_t sub_1C4A8556C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for WalletPassContent();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440777C();
  sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v14, v15, v16, v17);
  v18 = a1[3];
  v19 = a1[4];
  sub_1C4409678(a1, v18);
  (*(v19 + 8))(v18, v19);
  sub_1C45AD734(v10, v2);
  sub_1C4400A78();
  v21 = *(v20 + 32);
  v22 = sub_1C4426CFC();
  v24 = v23(v22);
  if (v24 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (!v24)
  {
    v25 = 0;
  }

  *(v2 + v12[7]) = v25;
  sub_1C4400A78();
  v27 = *(v26 + 56);
  v28 = sub_1C4426CFC();
  v30 = v29(v28);
  v31 = (v2 + v12[8]);
  *v31 = v30;
  v31[1] = v32;
  sub_1C4400A78();
  v34 = *(v33 + 64);
  v35 = sub_1C4426CFC();
  v37 = v36(v35);
  *(v2 + v12[9]) = sub_1C4A851F8(v37);
  sub_1C45AD61C(v2, a2);
  sub_1C440962C(a1);
  return sub_1C4A86248(v2);
}

uint64_t sub_1C4A8571C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6176656C6572 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795473736170 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C4FAEAE0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C79745373736170 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4A85888(char a1)
{
  result = 0x746E6176656C6572;
  switch(a1)
  {
    case 1:
      result = 0x6570795473736170;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6C79745373736170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A8591C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2518, &unk_1C4F4AC60);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A86CF0();
  sub_1C4F02BF8();
  v19[15] = 0;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v2)
  {
    v14 = type metadata accessor for WalletPassContent();
    v19[14] = *(v3 + v14[5]);
    v19[13] = 1;
    sub_1C4A86DEC();
    sub_1C4402150();
    sub_1C4F02778();
    v15 = (v3 + v14[6]);
    v16 = *v15;
    v17 = v15[1];
    v19[12] = 2;
    sub_1C4402150();
    sub_1C4F02798();
    v19[11] = *(v3 + v14[7]);
    v19[10] = 3;
    sub_1C4A86E40();
    sub_1C4402150();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4A85B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  v11 = sub_1C456902C(&qword_1EC0C24F8, &qword_1C4F4AC58);
  v12 = sub_1C43FCDF8(v11);
  v30[1] = v13;
  v30[2] = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v31 = type metadata accessor for WalletPassContent();
  v17 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C440777C();
  v18 = sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v18);
  v22 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A86CF0();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
    return sub_1C4423A0C(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v37 = 0;
    sub_1C4498DE4(&unk_1EDDFCD60);
    sub_1C44035B8();
    sub_1C4F02658();
    sub_1C45AD734(v10, v3);
    v35 = 1;
    sub_1C4A86D44();
    sub_1C44035B8();
    sub_1C4F02658();
    v23 = v31;
    *(v3 + *(v31 + 20)) = v36;
    v34 = 2;
    sub_1C44035B8();
    v24 = sub_1C4F02678();
    v25 = (v3 + *(v23 + 24));
    *v25 = v24;
    v25[1] = v26;
    v32 = 3;
    sub_1C4A86D98();
    sub_1C44035B8();
    sub_1C4F02658();
    v27 = sub_1C4420030();
    v28(v27);
    *(v3 + *(v23 + 28)) = v33;
    sub_1C45AD61C(v3, v30[0]);
    sub_1C440962C(a1);
    return sub_1C4A86248(v3);
  }
}

uint64_t sub_1C4A85EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A8571C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A85EC8(uint64_t a1)
{
  v2 = sub_1C4A86CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A85F04(uint64_t a1)
{
  v2 = sub_1C4A86CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A85F74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25[-v15];
  if (!a3)
  {
    type metadata accessor for ActivityModelDataSource();
    v17 = *(v9 + 16);
    v17(v16, a1, v6);
    v18 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    v17(v14, a1 + *(v18 + 36), v6);
    sub_1C442E860(a2, v28);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v19 = sub_1C4F01108();
    v20 = sub_1C44C1028(v19);

    sub_1C4574C14(v16, v14, 0, v28, v26, v20);
  }

  v21 = a1 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);

  v22 = sub_1C4573EC0();
  MEMORY[0x1EEE9AC00](v22);
  *&v25[-16] = a1;
  *&v25[-8] = v21;
  v23 = sub_1C49BF8F4();

  sub_1C440962C(a2);
  sub_1C4423A0C(a1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  return v23;
}

uint64_t type metadata accessor for WalletPassContent()
{
  result = qword_1EDDE5EF8;
  if (!qword_1EDDE5EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A86248(uint64_t a1)
{
  v2 = type metadata accessor for WalletPassContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4A862A4()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A86394, 0, 0);
}

void sub_1C4A86394()
{
  v1 = v0[13];
  v2 = v1[1];
  if (v2 >= *(*v1 + 16))
  {
    v12 = v0[12];
    sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
    sub_1C43FCF64();
    sub_1C440BAA8(v13, v14, v15, v16);
  }

  else
  {
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    v3 = v0[15];
    sub_1C442E860(*v1 + 40 * v2 + 32, (v0 + 2));
    v1[1] = v2 + 1;
    v5 = v0[5];
    v6 = v0[6];
    sub_1C4409678(v0 + 2, v5);
    (*(v6 + 8))(v5, v6);
    if (sub_1C44157D4(v4, 1, v3) == 1)
    {
      v7 = v0[12];
      sub_1C4423A0C(v0[14], &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
      sub_1C43FCF64();
    }

    else
    {
      v18 = v0[16];
      v17 = v0[17];
      v19 = v0[15];
      v20 = v0[12];
      (*(v18 + 32))(v17, v0[14], v19);
      v21 = *(v18 + 16);
      v21(v20, v17, v19);
      v22 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
      v21(v20 + *(v22 + 28), v17, v19);
      sub_1C442E860((v0 + 2), (v0 + 7));
      sub_1C4A8556C(v0 + 7, v20 + *(v22 + 32));
      (*(v18 + 8))(v17, v19);
      v8 = v20;
      v9 = 0;
      v10 = 1;
      v11 = v22;
    }

    sub_1C440BAA8(v8, v9, v10, v11);
    sub_1C440962C(v0 + 2);
  }

  v23 = v0[17];
  v24 = v0[14];

  v25 = v0[1];

  v25();
}

uint64_t sub_1C4A86600@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1C4A865D8();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t sub_1C4A86648()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A866DC;

  return sub_1C4A862A4();
}

uint64_t sub_1C4A866DC()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1C4A867D0()
{
  result = qword_1EC0C24D8;
  if (!qword_1EC0C24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24D8);
  }

  return result;
}

void sub_1C4A86868()
{
  sub_1C45C2C2C();
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDE82A0);
    if (v1 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDE7328);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WalletPassType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A86A18()
{
  result = qword_1EDDDE960;
  if (!qword_1EDDDE960)
  {
    sub_1C4572308(&qword_1EC0C24E0, &unk_1C4F4AA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE960);
  }

  return result;
}

uint64_t sub_1C4A86A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A86B48;

  return (sub_1C4982AF0)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A86B48()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1C4A86C44()
{
  result = qword_1EC0C24E8;
  if (!qword_1EC0C24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24E8);
  }

  return result;
}

unint64_t sub_1C4A86C9C()
{
  result = qword_1EC0C24F0;
  if (!qword_1EC0C24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24F0);
  }

  return result;
}

unint64_t sub_1C4A86CF0()
{
  result = qword_1EC0C2500;
  if (!qword_1EC0C2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2500);
  }

  return result;
}

unint64_t sub_1C4A86D44()
{
  result = qword_1EC0C2508;
  if (!qword_1EC0C2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2508);
  }

  return result;
}

unint64_t sub_1C4A86D98()
{
  result = qword_1EC0C2510;
  if (!qword_1EC0C2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2510);
  }

  return result;
}

unint64_t sub_1C4A86DEC()
{
  result = qword_1EC0C2520;
  if (!qword_1EC0C2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2520);
  }

  return result;
}

unint64_t sub_1C4A86E40()
{
  result = qword_1EC0C2528;
  if (!qword_1EC0C2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2528);
  }

  return result;
}

unint64_t sub_1C4A86E94()
{
  result = qword_1EC0C2530;
  if (!qword_1EC0C2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2530);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WalletPassContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A86FC8()
{
  result = qword_1EC0C2538;
  if (!qword_1EC0C2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2538);
  }

  return result;
}

unint64_t sub_1C4A87020()
{
  result = qword_1EC0C2540;
  if (!qword_1EC0C2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2540);
  }

  return result;
}

unint64_t sub_1C4A87078()
{
  result = qword_1EC0C2548;
  if (!qword_1EC0C2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2548);
  }

  return result;
}

uint64_t sub_1C4A870F0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 relevantDate];
  if (v3)
  {
    v4 = v3;
    sub_1C4EF9C78();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a1, v5, 1, v6);
}

uint64_t sub_1C4A871C8()
{
  v1 = [v0 passTypeIdentifier];
  v2 = sub_1C4F01138();

  return v2;
}

id sub_1C4A87278()
{
  v1 = [v0 secureElementPass];

  return v1;
}

uint64_t sub_1C4A872B0()
{
  v1 = [v0 passes];
  sub_1C4461BB8(0, &qword_1EDDDB868, 0x1E69B8A20);
  sub_1C4F01678();

  sub_1C48114B8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4A87350()
{
  sub_1C440962C((v0 + 16));
  sub_1C440962C((v0 + 56));

  v1 = *(v0 + 104);

  return v0;
}

uint64_t sub_1C4A87388()
{
  sub_1C4A87350();

  return swift_deallocClassInstance();
}

id sub_1C4A873E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a5;
  v16[4] = a6;
  v11 = sub_1C4422F90(v16);
  (*(*(a5 - 8) + 32))(v11, a1, a5);
  v15[3] = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  v15[4] = &off_1F43F7318;
  v15[0] = a2;
  sub_1C442E860(v16, a4 + 16);
  sub_1C442E860(v15, a4 + 56);
  v12 = objc_allocWithZone(MEMORY[0x1E69B88E0]);
  result = [v12 init];
  if (result)
  {
    v14 = result;
    sub_1C440962C(v16);
    sub_1C440962C(v15);
    *(a4 + 96) = v14;
    *(a4 + 104) = a3;
    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PassthroughMatcher.init(stores:source:entityClass:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_1C4471EF8(a2, a5);
  v9 = type metadata accessor for PassthroughMatcher();
  *(a5 + v9[5]) = v8;
  sub_1C4471EF8(a1, a5 + v9[6]);
  v10 = v9[7];
  v11 = sub_1C4EFD548();
  sub_1C43FBCE0(v11);
  v13 = *(v12 + 32);

  return v13(a5 + v10, a3);
}

uint64_t PassthroughMatcher.entityClass.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PassthroughMatcher() + 28);
  v4 = sub_1C4EFD548();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1C4A87674(uint64_t a1)
{
  result = sub_1C4A876FC(&qword_1EDDF4ED0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A876B8(uint64_t a1)
{
  result = sub_1C4A876FC(&qword_1EDDF4EE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A876FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassthroughMatcher();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A87768()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A8780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4A87830, 0, 0);
}

uint64_t sub_1C4A87830()
{
  v22 = v0;
  v1 = v0[19];
  v20 = MEMORY[0x1E69E7CD0];
  v2 = sub_1C4428DA0();
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6940F90](i, v0[19]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v21 = v4;
    sub_1C4A87D84(&v20, &v21);
  }

  i = v20;
  if (qword_1EDDFECB0 == -1)
  {
    goto LABEL_10;
  }

LABEL_18:
  swift_once();
LABEL_10:
  v6 = sub_1C4F00978();
  v0[23] = sub_1C442B738(v6, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(i + 16);

    sub_1C44065F4(&dword_1C43F8000, v10, v11, "Number of pass identifiers = %ld");
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  v15 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
  v0[24] = v15;
  sub_1C4A881D8(i, v15);

  v16 = sub_1C4EF9BF8();
  [v15 setStartDate_];

  v17 = sub_1C4EF9BF8();
  [v15 setEndDate_];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C4A87B90;
  v18 = swift_continuation_init();
  v0[17] = sub_1C456902C(&qword_1EC0C2550, &unk_1C4F4AF90);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C4A87FAC;
  v0[13] = &unk_1F43F7350;
  v0[14] = v18;
  [v12 transactionsForRequest:v15 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C4A87B90()
{
  v4 = *v0;
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C4A87C68, 0, 0);
}

uint64_t sub_1C4A87C68()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 184);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 192);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = sub_1C4428DA0();

      sub_1C44065F4(&dword_1C43F8000, v8, v9, "Number of transactions = %ld");
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v3 = *(v0 + 192);
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_1C4A87D84(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = [v4 transitProperties];
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_1C43F8000, v5, v6, "Pass information = %@", v7, 0xCu);
      sub_1C45B4B90(v8);
      MEMORY[0x1C6942830](v8, -1, -1);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    result = sub_1C4A88284(v4);
    if (!result)
    {
      return result;
    }

    v2 = result;
    v11 = 0;
    v12 = result + 56;
    v13 = 1 << *(result + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(result + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = v11;
LABEL_13:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = (v2[6] + ((v17 << 10) | (16 * v18)));
      v21 = *v19;
      v20 = v19[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(&v22, v21, v20);
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

uint64_t sub_1C4A87FAC(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1C4A88240();
    v4 = sub_1C4F01678();
  }

  else
  {
    v4 = 0;
  }

  return sub_1C4A88014(v3, v4);
}

uint64_t sub_1C4A88034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C4A880E4;

  return sub_1C4A8780C(a1, a2, a3);
}

uint64_t sub_1C4A880E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

void sub_1C4A881D8(uint64_t a1, void *a2)
{
  v3 = sub_1C4F01AA8();
  [a2 setTransactionSourceIdentifiers_];
}

unint64_t sub_1C4A88240()
{
  result = qword_1EC0C2558;
  if (!qword_1EC0C2558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C2558);
  }

  return result;
}

uint64_t sub_1C4A88284(void *a1)
{
  v1 = [a1 deviceTransactionSourceIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01AB8();

  return v3;
}

void sub_1C4A8832C()
{
  sub_1C45F6D88();
  if (v0 <= 0x3F)
  {
    sub_1C4A8840C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivityModelDataSource();
      if (v2 <= 0x3F)
      {
        sub_1C4A88474();
        if (v3 <= 0x3F)
        {
          sub_1C4A884D8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4A8840C()
{
  if (!qword_1EC0C2570)
  {
    sub_1C4461BB8(255, &qword_1EC0C2558, 0x1E69B8EA8);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2570);
    }
  }
}

void sub_1C4A88474()
{
  if (!qword_1EC0C2578)
  {
    sub_1C4572308(&qword_1EC0C2580, qword_1C4F4AFC0);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2578);
    }
  }
}

void sub_1C4A884D8()
{
  if (!qword_1EC0C2588)
  {
    type metadata accessor for GEOPOICategory(255);
    v0 = sub_1C4F00FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2588);
    }
  }
}

uint64_t sub_1C4A88540@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v39 = v8;
  v40 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v38 - v13;
  v14 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  sub_1C445FFF0(a1, &v38 - v18, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C442E860(v3 + 16, v46);
  v20 = *(v3 + 96);
  v21 = type metadata accessor for TransactionsAsyncSequence(0);
  *(a3 + v21[5]) = MEMORY[0x1E69E7CC0];
  v22 = v21[8];
  type metadata accessor for GEOPOICategory(0);

  *(a3 + v22) = sub_1C4F00F28();
  *(a3 + v21[9]) = 0;
  *(a3 + v21[10]) = 0;
  sub_1C445FFF0(v19, a3, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = &off_1E81F1000;
  v24 = v20;
  if (!v20)
  {
    v38 = type metadata accessor for ActivityModelDataSource();
    v25 = v40;
    v26 = *(v39 + 16);
    v26(v42, v19, v40);
    v27 = v41;
    v28 = v25;
    v23 = &off_1E81F1000;
    v26(v41, &v19[*(v14 + 36)], v28);
    sub_1C445FFF0(v46, v45, &unk_1EC0B84C8, &qword_1C4F0CE10);
    v29 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v44[3] = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
    v44[4] = &off_1F43F7318;
    v44[0] = v29;
    v30 = sub_1C4F01108();
    LODWORD(v29) = sub_1C44C1028(v30);

    v24 = sub_1C4574C14(v42, v27, 0, v45, v44, v29);
  }

  *(a3 + v21[6]) = v24;
  v31 = v43;
  *(a3 + v21[11]) = v43 & 1;
  if (v31)
  {
    v32 = objc_allocWithZone(MEMORY[0x1E69A2208]);

    v33 = [v32 v23[18]];

    if (v33)
    {
      v34 = sub_1C4461BB8(0, &qword_1EDDF0570, 0x1E69A2208);
      v35 = &off_1F43EDB88;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
  }

  sub_1C4420C3C(v46, &unk_1EC0B84C8, &qword_1C4F0CE10);
  result = sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v37 = (a3 + v21[7]);
  *v37 = v33;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = v34;
  v37[4] = v35;
  return result;
}

void sub_1C4A888EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for TransactionContent(0);
  v16 = (a4 + v15[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a4 + v15[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v15[7];
  *(a4 + v18) = 2;
  v19 = v15[8];
  *(a4 + v19) = 2;
  v20 = (a4 + v15[9]);
  *v20 = 0;
  v20[1] = 0;
  v53 = v20;
  v54 = v19;
  v21 = [a1 transactionDate];
  if (!v21)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  sub_1C4EF9C78();

  (*(v9 + 32))(a4, v14, v6);
  v23 = sub_1C4435278();
  if (!v23)
  {
LABEL_20:

    v51 = a2;
    v50 = a3;
LABEL_23:
    v52 = (a4 + v15[10]);
    *v52 = v51;
    v52[1] = v50;
    return;
  }

  v24 = sub_1C4435278();
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v24;
  [v24 category];

  v26 = PKMerchantCategoryToString();
  if (v26)
  {
    v27 = v26;
    v28 = sub_1C4F01138();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *v16 = v28;
  v16[1] = v30;
  v31 = sub_1C4435278();
  if (!v31)
  {
    goto LABEL_26;
  }

  *v17 = sub_1C4A8AC6C(v31);
  v17[1] = v32;
  v33 = sub_1C4435278();
  if (!v33)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = v33;
  v35 = [v33 mapsMerchant];

  if (v35)
  {
  }

  *(a4 + v18) = v35 != 0;
  v36 = sub_1C4435278();
  if (!v36)
  {
    goto LABEL_28;
  }

  v37 = v36;
  v38 = [v36 mapsBrand];

  if (v38)
  {
  }

  *(a4 + v54) = v38 != 0;
  v39 = sub_1C4435278();
  if (!v39)
  {
    goto LABEL_29;
  }

  v40 = v39;
  v41 = [v39 mapsMerchant];

  if (!v41)
  {
    goto LABEL_20;
  }

  v42 = sub_1C4435278();
  if (!v42)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v43 = v42;
  v44 = [v42 mapsMerchant];

  if (v44)
  {
    [v44 category];

    v45 = PKMerchantCategoryToString();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1C4F01138();
      v49 = v48;
    }

    else
    {

      v47 = 0;
      v49 = 0;
    }

    v51 = a2;
    v50 = a3;
    *v53 = v47;
    v53[1] = v49;
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1C4A88C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xEF657461446E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C4FAEBB0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C4FAEBD0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001C4FAEBF0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x80000001C4FAEC10 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C4FAEC30 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6765746143696F70 && a2 == 0xEB0000000079726FLL)
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

unint64_t sub_1C4A88E88(char a1)
{
  result = 0x746361736E617274;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6765746143696F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A88F80(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C25C8, &qword_1C4F4B128);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A8AE40();
  sub_1C4F02BF8();
  v20[15] = 0;
  sub_1C4EF9CD8();
  sub_1C440B088();
  sub_1C4498F90(v14, v15);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v2)
  {
    v16 = type metadata accessor for TransactionContent(0);
    sub_1C4404338(v16[5]);
    v20[14] = 1;
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4404338(v16[6]);
    v20[13] = 2;
    sub_1C4402150();
    sub_1C4F02738();
    v17 = *(v3 + v16[7]);
    v20[12] = 3;
    sub_1C4402150();
    sub_1C4F02748();
    v18 = *(v3 + v16[8]);
    v20[11] = 4;
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4404338(v16[9]);
    v20[10] = 5;
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4404338(v16[10]);
    v20[9] = 6;
    sub_1C4402150();
    sub_1C4F02738();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4A891E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v43 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v41 = sub_1C456902C(&qword_1EC0C25B8, &qword_1C4F4B120);
  v12 = sub_1C43FCDF8(v41);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = type metadata accessor for TransactionContent(0);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v42 = v20 - v19;
  v21 = a1[4];
  v44 = a1;
  sub_1C4409678(a1, a1[3]);
  sub_1C4A8AE40();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C440B088();
    sub_1C4498F90(v22, v23);
    sub_1C4F026C8();
    (*(v43 + 32))(v42, v11, v4);
    sub_1C4400A9C();
    v24 = sub_1C4F02618();
    v25 = (v42 + v15[5]);
    *v25 = v24;
    v25[1] = v26;
    sub_1C4400A9C();
    v27 = sub_1C4F02618();
    v28 = (v42 + v15[6]);
    *v28 = v27;
    v28[1] = v29;
    sub_1C4400A9C();
    *(v42 + v15[7]) = sub_1C4F02628();
    sub_1C4400A9C();
    *(v42 + v15[8]) = sub_1C4F02628();
    sub_1C4400A9C();
    v30 = sub_1C4F02618();
    v31 = (v42 + v15[9]);
    *v31 = v30;
    v31[1] = v32;
    sub_1C4400A9C();
    v33 = sub_1C4F02618();
    v34 = sub_1C44135F8();
    v36 = v35;
    v37(v34, v41);
    v38 = (v42 + v15[10]);
    *v38 = v33;
    v38[1] = v36;
    sub_1C4A8AE94(v42, a2, type metadata accessor for TransactionContent);
    sub_1C440962C(v44);
    return sub_1C4A8AEF4(v42, type metadata accessor for TransactionContent);
  }
}

uint64_t sub_1C4A89674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A88C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A8969C(uint64_t a1)
{
  v2 = sub_1C4A8AE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A896D8(uint64_t a1)
{
  v2 = sub_1C4A8AE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A89784()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1C4EF9CD8();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1C4A89844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  v13 = *(v12 + 32);
  v14 = type metadata accessor for TransactionsAsyncSequence(0);
  *(v12 + 72) = v14;
  v15 = v14[10];
  *(v12 + 112) = v15;
  if (*(v13 + v15))
  {
    v16 = *(v13 + v14[9]);
    v17 = *(v13 + v14[5]);
    if (v17 >> 62)
    {
      v18 = sub_1C4405C30();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16 < v18)
    {
      sub_1C4431590(v16, (v17 & 0xC000000000000001) == 0);
      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6940F90](v16, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v16 + 32);
      }

      sub_1C440D6FC();
      v21 = [v20 merchant];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 mapsMerchant];

        if (v23)
        {
          v24 = *(v12 + 72);
          v25 = *(v12 + 32);
          v26 = [v23 identifier];

          *(v12 + 16) = v26;
          v27 = sub_1C4F02858();
          v29 = sub_1C442BE08(v27, v28);

          if (v29)
          {
            v22 = sub_1C4F01138();
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      result = sub_1C442E494();
      if (result)
      {
        v41 = result;
        v42 = *(v12 + 64);
        sub_1C4EF9C78();

        result = sub_1C442E494();
        if (result)
        {
          sub_1C4417634();

          v43 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
          sub_1C4400AAC(v43);
          v44 = sub_1C440E660();
          (v22)(v44);
          v45 = sub_1C44035C4();
          (v22)(v45);
          v37 = sub_1C440F9F8();
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v36 = *(v12 + 24);
    sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
    v37 = sub_1C43FDC84();
LABEL_20:
    sub_1C440BAA8(v37, v38, v39, v40);
    v47 = *(v12 + 56);
    v46 = *(v12 + 64);

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
  }

  v30 = *(v13 + v14[6]);
  v31 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  v32 = swift_task_alloc();
  *(v12 + 80) = v32;
  *v32 = v12;
  v32[1] = sub_1C4A89B28;
  v33 = *(v12 + 32);
  sub_1C43FEA3C();

  return sub_1C45755C0();
}

uint64_t sub_1C4A89B28()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1C4A89C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  v13 = v12[11];
  v14 = v12[9];
  v15 = v12[4];
  v16 = *(v14 + 20);
  v17 = *(v15 + v16);

  *(v15 + v16) = v13;
  if (*(v15 + *(v14 + 44)) == 1)
  {
    v18 = swift_task_alloc();
    v12[12] = v18;
    *v18 = v12;
    v18[1] = sub_1C4A89F00;
    v19 = v12[11];
    v20 = v12[4];
    sub_1C43FEA3C();

    return sub_1C4A8A210();
  }

  type metadata accessor for GEOPOICategory(0);
  v23 = sub_1C4F00F28();
  sub_1C441CCB8();
  sub_1C4412290();
  if (v24)
  {
    v25 = sub_1C4405C30();
  }

  else
  {
    v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 < v25)
  {
    sub_1C4431590(v23, (v14 & 0xC000000000000001) == 0);
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](v23, v14);
    }

    else
    {
      v26 = *(v14 + 8 * v23 + 32);
    }

    sub_1C440D6FC();
    v28 = [v27 merchant];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 mapsMerchant];

      if (v30)
      {
        v31 = v12[9];
        v32 = v12[4];
        v33 = [v30 identifier];

        v12[2] = v33;
        v34 = sub_1C4F02858();
        v36 = sub_1C442BE08(v34, v35);

        if (v36)
        {
          v29 = sub_1C4F01138();
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    result = sub_1C442E494();
    if (result)
    {
      v42 = result;
      v43 = v12[8];
      sub_1C4EF9C78();

      result = sub_1C442E494();
      if (result)
      {
        sub_1C4417634();

        v44 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
        sub_1C4400AAC(v44);
        v45 = sub_1C440E660();
        (v29)(v45);
        v46 = sub_1C44035C4();
        (v29)(v46);
        v38 = sub_1C440F9F8();
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v37 = v12[3];
  sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
  v38 = sub_1C43FDC84();
LABEL_20:
  sub_1C440BAA8(v38, v39, v40, v41);
  v48 = v12[7];
  v47 = v12[8];

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_1C4A89F00()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1C4A89FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  v14 = v13[13];
  sub_1C441CCB8();
  sub_1C4412290();
  if (v15)
  {
    v16 = sub_1C4405C30();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 < v16)
  {
    sub_1C4431590(v14, (v12 & 0xC000000000000001) == 0);
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](v14, v12);
    }

    else
    {
      v17 = *(v12 + 8 * v14 + 32);
    }

    sub_1C440D6FC();
    v19 = [v18 merchant];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 mapsMerchant];

      if (v21)
      {
        v22 = v13[9];
        v23 = v13[4];
        v24 = [v21 identifier];

        v13[2] = v24;
        v25 = sub_1C4F02858();
        v27 = sub_1C442BE08(v25, v26);

        if (v27)
        {
          v20 = sub_1C4F01138();
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    result = sub_1C442E494();
    if (result)
    {
      v34 = result;
      v35 = v13[8];
      sub_1C4EF9C78();

      result = sub_1C442E494();
      if (result)
      {
        sub_1C4417634();

        v36 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
        sub_1C4400AAC(v36);
        v37 = sub_1C440E660();
        (v20)(v37);
        v38 = sub_1C44035C4();
        (v20)(v38);
        v29 = sub_1C440F9F8();
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v28 = v13[3];
  sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
  v29 = sub_1C43FDC84();
LABEL_16:
  sub_1C440BAA8(v29, v30, v31, v32);
  v40 = v13[7];
  v39 = v13[8];

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1C4A8A210()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C4F00978();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4A8A2C4()
{
  v1 = *(v0 + 104);
  v2 = type metadata accessor for TransactionsAsyncSequence(0);
  sub_1C445FFF0(v1 + *(v2 + 28), v0 + 56, &qword_1EC0C2598, &unk_1C4F4B0A0);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 96);
    sub_1C441D670((v0 + 56), v0 + 16);
    result = sub_1C4428DA0();
    if (result)
    {
      v5 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      v7 = *(v0 + 96);
      v8 = v7 & 0xC000000000000001;
      v35 = v7 + 32;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v8)
        {
          v10 = MEMORY[0x1C6940F90](v6, *(v0 + 96));
        }

        else
        {
          v10 = *(v35 + 8 * v6);
        }

        v11 = v10;
        v12 = [v10 merchant];
        if (v12 && (v13 = v12, v14 = [v12 mapsMerchant], v13, v14))
        {
          v15 = [v14 identifier];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v9 + 16);
            sub_1C458A7C8();
            v9 = v18;
          }

          v16 = *(v9 + 16);
          if (v16 >= *(v9 + 24) >> 1)
          {
            sub_1C458A7C8();
            v9 = v19;
          }

          *(v9 + 16) = v16 + 1;
          *(v9 + 8 * v16 + 32) = v15;
        }

        else
        {
        }

        ++v6;
      }

      while (v5 != v6);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 136) = v9;
    v30 = *(v0 + 40);
    v31 = *(v0 + 48);
    sub_1C4409678((v0 + 16), v30);
    v32 = *(v31 + 16);
    v36 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_1C4A8A6B4;

    return v36(v9, v30, v31);
  }

  else
  {
    v20 = *(v0 + 128);
    sub_1C4420C3C(v0 + 56, &qword_1EC0C2598, &unk_1C4F4B0A0);
    sub_1C4F00198();
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "geoMapService is nil", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }

    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v26 = *(v0 + 112);

    (*(v25 + 8))(v24, v26);
    type metadata accessor for GEOPOICategory(0);
    v27 = sub_1C4F00F28();
    v28 = *(v0 + 128);

    v29 = *(v0 + 8);

    return v29(v27);
  }
}

uint64_t sub_1C4A8A6B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 152) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4A8A79C()
{
  sub_1C43FBCD4();
  v1 = v0[19];
  v2 = v0[17];
  if (!v1)
  {
    type metadata accessor for GEOPOICategory(0);
    v1 = sub_1C4F00F28();
  }

  sub_1C440962C(v0 + 2);
  v3 = v0[16];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1C4A8A8AC()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A8A940;

  return sub_1C4A89784();
}

uint64_t sub_1C4A8A940()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v5 = *v0;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4A8AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A8AAF8;

  return (sub_1C4982824)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A8AAF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 24);
  v5 = *v0;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4A8AC6C(void *a1)
{
  v2 = [a1 detailedCategory];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A8AD04()
{
  v0 = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEA48);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

unint64_t sub_1C4A8ADDC()
{
  result = qword_1EC0C25B0;
  if (!qword_1EC0C25B0)
  {
    sub_1C4572308(&qword_1EC0BFE70, &unk_1C4F3DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25B0);
  }

  return result;
}

unint64_t sub_1C4A8AE40()
{
  result = qword_1EC0C25C0;
  if (!qword_1EC0C25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25C0);
  }

  return result;
}

uint64_t sub_1C4A8AE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4A8AEF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TransactionContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A8B02C()
{
  result = qword_1EC0C25D0;
  if (!qword_1EC0C25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25D0);
  }

  return result;
}

unint64_t sub_1C4A8B084()
{
  result = qword_1EC0C25D8;
  if (!qword_1EC0C25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25D8);
  }

  return result;
}

unint64_t sub_1C4A8B0DC()
{
  result = qword_1EC0C25E0;
  if (!qword_1EC0C25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25E0);
  }

  return result;
}

uint64_t *sub_1C4A8B130()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t sub_1C4A8B160()
{
  sub_1C4A8B130();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A8B1E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4A8CB78(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1C4415EA8();
  if (sub_1C4F02048())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1C4F013F8();
  }

  return v1 & 1;
}

uint64_t sub_1C4A8CC14(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1C4415EA8();
  if (sub_1C4F02048())
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1C4F013F8() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1C4A8CCB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_1C479B3C8(sub_1C4A8ED60);
  if (v9)
  {
    v10 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config);
    v11 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4EFF048();
    v14 = v13;
    v15 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    v16 = sub_1C4673B1C(v10, v11, 0xD000000000000011, 0x80000001C4FAECD0, v12, v14);
    v17 = [objc_opt_self() featureValueWithInt64_];
    sub_1C4589070();
    v18 = *(*a3 + 16);
    sub_1C4589A64();
    v19 = *a3;
    *(v19 + 16) = v18 + 1;
    v20 = v19 + 16 * v18;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
  }

  MEMORY[0x1EEE9AC00](v9);
  sub_1C479B3C8(sub_1C4A34330);
  if (v21)
  {
    v22 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config);
    v23 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C4EFF048();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    v28 = sub_1C4673B1C(v22, v23, 0x6B726F57656D6173, 0xEF6C69616D457942, v24, v26);
    v29 = [objc_opt_self() featureValueWithInt64_];
    sub_1C4589070();
    v30 = *(*a6 + 16);
    sub_1C4589A64();
    v31 = *a6;
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = v28;
    *(v32 + 40) = v29;
  }

  return 1;
}

void *sub_1C4A8CF30()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_store);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4A8CFB8()
{
  sub_1C4A8CF30();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleEmailSignal()
{
  result = qword_1EC0C25F0;
  if (!qword_1EC0C25F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A8D064()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4A8D118()
{
  sub_1C4A8B394();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4A8D1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = a4(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1C4A8D90C(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C4A8D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v26 = 0;
  v4 = 0;
  v6 = a3 + 56;
  v5 = *(a3 + 56);
  v7 = *(a3 + 32);
  sub_1C43FD030();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_9:
    v16 = *(a3 + 48) + 24 * (v13 | (v4 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v30[0] = v18;
    v30[1] = v17;
    v31 = *(v16 + 16);
    v19 = v31;
    sub_1C45E8718(v18, v17, v31);
    v20 = v32;
    v21 = a4(v30);
    sub_1C45E872C(v18, v17, v19);
    v32 = v20;
    if (v20)
    {
      return;
    }

    v10 = v29;
    if (v21)
    {
      sub_1C4404D48();
      sub_1C43FC660(v22);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C4A8DF38(a1, a2, v26, a3);
        return;
      }
    }
  }

  v14 = v4;
  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= v12)
    {
      goto LABEL_14;
    }

    ++v14;
    if (*(v6 + 8 * v4))
    {
      sub_1C4413608();
      v29 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C4A8D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v50 = a4;
  v36 = a2;
  v37 = a1;
  v38 = 0;
  v6 = 0;
  v8 = a3 + 56;
  v7 = *(a3 + 56);
  v9 = *(a3 + 32);
  sub_1C43FD030();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v19 = *(a3 + 48) + 56 * (v15 | (v6 << 6));
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v22 = *v19;
    v49 = *(v19 + 48);
    v48[1] = v21;
    v48[2] = v20;
    v48[0] = v22;
    v23 = *(v19 + 16);
    v44 = *v19;
    v45 = v23;
    v46 = *(v19 + 32);
    v47 = *(v19 + 48);
    sub_1C461B90C(v48, &v39);
    v24 = v50(&v44);
    if (v4)
    {
      sub_1C441BBC0(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      return;
    }

    v32 = v24;
    sub_1C441BBC0(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (v32)
    {
      sub_1C4404D48();
      sub_1C43FC660(v33);
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C4A8E4C4(v37, v36, v38, a3);
        return;
      }
    }
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v14)
    {
      goto LABEL_14;
    }

    ++v16;
    if (*(v8 + 8 * v6))
    {
      sub_1C43FCF1C();
      v12 = v18 & v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C4A8D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v27 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8(v27);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v25 = v8;
  v26 = v9;
  v10 = 0;
  v11 = *(a3 + 56);
  v24 = 0;
  v12 = *(a3 + 32);
  sub_1C43FD030();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v29 = (v15 - 1) & v15;
LABEL_9:
    (*(v26 + 16))(v25, *(a3 + 48) + *(v26 + 72) * (v18 | (v10 << 6)), v27);
    v21 = a4(v25);
    (*(v26 + 8))(v25, v27);
    if (v30)
    {
      return;
    }

    v15 = v29;
    if (v21)
    {
      sub_1C4404D48();
      sub_1C43FC660(v22);
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C44FEBCC();
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_14;
    }

    ++v19;
    if (*(a3 + 56 + 8 * v10))
    {
      sub_1C4413608();
      v29 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1C4A8D87C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    sub_1C4A8D1F4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C4A8D90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
      sub_1C4416310();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v6 + 56;
      v35 = v7;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v18 = (*(v7 + 48) + 16 * (v13 | (v11 << 6)));
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v6 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        sub_1C4F02B68();
        v22 = *(v6 + 32);
        sub_1C4411990();
        v24 = *(v12 + 8 * v23);
        sub_1C4405760();
        if (v25)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v25)
            {
              if (v28)
              {
                goto LABEL_29;
              }
            }

            if (v27 == v29)
            {
              v27 = 0;
            }

            if (*(v12 + 8 * v27) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_26;
            }
          }
        }

        sub_1C43FFC04();
LABEL_26:
        v30 = *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8));
        sub_1C4426D0C();
        *(v12 + v31) = v32;
        v34 = (*(v6 + 48) + 16 * v33);
        *v34 = v19;
        v34[1] = v20;
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        v7 = v35;
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        sub_1C4424F24();
        if (v15)
        {
          sub_1C43FCF1C();
          v10 = v17 & v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C4A8DAC0()
{
  sub_1C43FBD3C();
  sub_1C440D70C();
  v26 = sub_1C4EFDAF8();
  v5 = sub_1C43FCDF8(v26);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4435C48(v8);
  if (!v0)
  {
LABEL_28:

LABEL_29:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v9)
  {
    goto LABEL_29;
  }

  sub_1C456902C(&qword_1EC0BDE88, &qword_1C4F322D0);
  sub_1C4416310();
  sub_1C4418B64();
  if (v10 == v11)
  {
    v12 = *v2;
  }

  sub_1C4408EE0();
  while (v13)
  {
    sub_1C440AAD0();
LABEL_16:
    v16 = sub_1C4407798();
    v17(v16);
    v18 = *(v3 + 40);
    sub_1C4A8ED18(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
    v19 = sub_1C4409F98();
    sub_1C442D128(v19, *(v3 + 32));
    if (v9)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v9)
        {
          if (v22)
          {
            goto LABEL_31;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_1C443002C(v21);
        if (!v9)
        {
          sub_1C43FCF98();
          goto LABEL_26;
        }
      }
    }

    sub_1C43FFC04();
LABEL_26:
    v24 = sub_1C441A1A0(v20);
    v25(v24);
    sub_1C4433698();
    if (v11)
    {
      goto LABEL_32;
    }

    sub_1C444B224();
  }

  v14 = v4;
  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= v1)
    {
      goto LABEL_28;
    }

    sub_1C4424F24();
    if (v15)
    {
      sub_1C4413608();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C4A8DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C443FED0();
    if (!v9)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340);
      sub_1C4416310();
      sub_1C44258C8();
      if (v10 != v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *v6;
      }

      v13 = 0;
      v14 = v7 + 56;
      while (v12)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_16:
        v19 = *(*(a4 + 48) + (v15 | (v13 << 6)));
        v20 = *(v7 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();

        sub_1C4F02B68();
        v21 = *(v7 + 32);
        sub_1C4411990();
        v23 = *(v14 + 8 * v22);
        sub_1C4405760();
        if (v9)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v9)
            {
              if (v25)
              {
                goto LABEL_30;
              }
            }

            if (v24 == v26)
            {
              v24 = 0;
            }

            if (*(v14 + 8 * v24) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_26;
            }
          }
        }

        sub_1C43FFC04();
LABEL_26:
        sub_1C44064EC();
        sub_1C440CD14();
        *(v28 + v27) = v19;
        sub_1C440A4C0();
        if (v11)
        {
          goto LABEL_31;
        }

        if (!v4)
        {
          goto LABEL_5;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v5)
        {
          goto LABEL_5;
        }

        ++v16;
        if (v6[v13])
        {
          sub_1C43FCF1C();
          v12 = v18 & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C4A8DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0C2600, &qword_1C4F4B338);
      sub_1C4416310();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v6 + 56;
      v33 = v7;
      while (v10)
      {
        sub_1C440AAD0();
        v34 = v15;
LABEL_16:
        v18 = *(v7 + 48) + (v13 | (v11 << 6)) * v14;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C45E8718(v19, v20, v21);
        sub_1C494F908();
        sub_1C4F02B68();
        v23 = *(v6 + 32);
        sub_1C4411990();
        v25 = *(v12 + 8 * v24);
        sub_1C4405760();
        if (v26)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v26)
            {
              if (v28)
              {
                goto LABEL_29;
              }
            }

            if (v27 == v29)
            {
              v27 = 0;
            }

            if (*(v12 + 8 * v27) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_26;
            }
          }
        }

        sub_1C43FFC04();
LABEL_26:
        sub_1C44064EC();
        sub_1C440CD14();
        v32 = v31 + 24 * v30;
        *v32 = v19;
        *(v32 + 8) = v20;
        *(v32 + 16) = v21;
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        v7 = v33;
        v10 = v34;
      }

      v16 = v11;
      while (1)
      {
        v11 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v16;
        if (v5[v11])
        {
          sub_1C4413608();
          v34 = v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C4A8E0F4()
{
  sub_1C43FBD3C();
  sub_1C440D70C();
  v26 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v26);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4435C48(v8);
  if (!v0)
  {
LABEL_28:

LABEL_29:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v9)
  {
    goto LABEL_29;
  }

  sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0);
  sub_1C4416310();
  sub_1C4418B64();
  if (v10 == v11)
  {
    v12 = *v2;
  }

  sub_1C4408EE0();
  while (v13)
  {
    sub_1C440AAD0();
LABEL_16:
    v16 = sub_1C4407798();
    v17(v16);
    v18 = *(v3 + 40);
    sub_1C4A8ED18(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
    v19 = sub_1C4409F98();
    sub_1C442D128(v19, *(v3 + 32));
    if (v9)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v9)
        {
          if (v22)
          {
            goto LABEL_31;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_1C443002C(v21);
        if (!v9)
        {
          sub_1C43FCF98();
          goto LABEL_26;
        }
      }
    }

    sub_1C43FFC04();
LABEL_26:
    v24 = sub_1C441A1A0(v20);
    v25(v24);
    sub_1C4433698();
    if (v11)
    {
      goto LABEL_32;
    }

    sub_1C444B224();
  }

  v14 = v4;
  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= v1)
    {
      goto LABEL_28;
    }

    sub_1C4424F24();
    if (v15)
    {
      sub_1C4413608();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C4A8E2DC()
{
  sub_1C43FBD3C();
  sub_1C440D70C();
  v26 = sub_1C4EFF0C8();
  v5 = sub_1C43FCDF8(v26);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4435C48(v8);
  if (!v0)
  {
LABEL_28:

LABEL_29:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v9)
  {
    goto LABEL_29;
  }

  sub_1C456902C(&qword_1EC0BDDE8, "(M\n");
  sub_1C4416310();
  sub_1C4418B64();
  if (v10 == v11)
  {
    v12 = *v2;
  }

  sub_1C4408EE0();
  while (v13)
  {
    sub_1C440AAD0();
LABEL_16:
    v16 = sub_1C4407798();
    v17(v16);
    v18 = *(v3 + 40);
    sub_1C4A8ED18(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
    v19 = sub_1C4409F98();
    sub_1C442D128(v19, *(v3 + 32));
    if (v9)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v9)
        {
          if (v22)
          {
            goto LABEL_31;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_1C443002C(v21);
        if (!v9)
        {
          sub_1C43FCF98();
          goto LABEL_26;
        }
      }
    }

    sub_1C43FFC04();
LABEL_26:
    v24 = sub_1C441A1A0(v20);
    v25(v24);
    sub_1C4433698();
    if (v11)
    {
      goto LABEL_32;
    }

    sub_1C444B224();
  }

  v14 = v4;
  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= v1)
    {
      goto LABEL_28;
    }

    sub_1C4424F24();
    if (v15)
    {
      sub_1C4413608();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C4A8E4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C443FED0();
    if (!v8)
    {
      v9 = v7;
      v10 = v6;
      sub_1C456902C(&qword_1EC0BDFA8, &qword_1C4F323A0);
      v11 = sub_1C4416310();
      v12 = v11;
      if (v9 < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v10;
      }

      v14 = 0;
      v15 = v11 + 56;
      v44 = v10;
      v45 = v9;
      v46 = a4;
      v43 = v11;
      if (v13)
      {
        while (1)
        {
          sub_1C440AAD0();
          v47 = v18;
LABEL_16:
          v21 = *(a4 + 48) + (v16 | (v14 << 6)) * v17;
          v23 = *v21;
          v22 = *(v21 + 16);
          v24 = *(v21 + 32);
          v52 = *(v21 + 48);
          v50 = v22;
          v51 = v24;
          v49 = v23;
          v25 = *(v12 + 40);
          sub_1C4F02AF8();
          v26 = v52;
          sub_1C461B90C(&v49, v48);
          sub_1C4F01298();
          sub_1C4F01298();
          sub_1C4F01298();
          MEMORY[0x1C69417F0](v26);
          sub_1C4F02B38();
          sub_1C4F02B68();
          v12 = v43;
          v27 = *(v43 + 32);
          sub_1C4411990();
          v29 = *(v15 + 8 * v28);
          sub_1C4405760();
          if (v8)
          {
            break;
          }

          sub_1C43FFC04();
          v9 = v45;
          a4 = v46;
          v10 = v44;
LABEL_26:
          v34 = *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8));
          sub_1C4426D0C();
          *(v15 + v35) = v36;
          v38 = *(v43 + 48) + 56 * v37;
          v39 = v49;
          v40 = v50;
          v41 = v51;
          *(v38 + 48) = v52;
          *(v38 + 16) = v40;
          *(v38 + 32) = v41;
          *v38 = v39;
          sub_1C4460324();
          if (v42)
          {
            goto LABEL_33;
          }

          if (!v4)
          {
LABEL_30:

            return;
          }

          if (!v47)
          {
            goto LABEL_11;
          }
        }

        sub_1C43FFBF0();
        v9 = v45;
        a4 = v46;
        v10 = v44;
        while (1)
        {
          sub_1C4410160();
          if (v8)
          {
            if (v32)
            {
              break;
            }
          }

          if (v31 == v33)
          {
            v31 = 0;
          }

          if (*(v15 + 8 * v31) != -1)
          {
            sub_1C43FCF98();
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_11:
        v19 = v14;
        while (1)
        {
          v14 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v14 >= v9)
          {
            goto LABEL_30;
          }

          ++v19;
          if (v10[v14])
          {
            sub_1C4413608();
            v47 = v20;
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_1C4A8E738()
{
  sub_1C43FBD3C();
  v4 = v3;
  if (!v5)
  {
LABEL_5:

    goto LABEL_6;
  }

  sub_1C443FED0();
  if (v6)
  {
LABEL_6:
    sub_1C43FE9F0();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0BDE20, &qword_1C4F4B330);
  v7 = sub_1C4416310();
  v8 = v7;
  if (v1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v2;
  }

  v10 = 0;
  v11 = v7 + 56;
  while (v9)
  {
    sub_1C43FFB74();
LABEL_16:
    v16 = *(*(v4 + 48) + 8 * (v12 | (v10 << 6)));
    v17 = *(v8 + 40);
    v18 = sub_1C4F02AE8() & ~(-1 << *(v8 + 32));
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v6)
        {
          if (v20)
          {
            goto LABEL_30;
          }
        }

        if (v19 == v21)
        {
          v19 = 0;
        }

        if (*(v11 + 8 * v19) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_26;
        }
      }
    }

    sub_1C43FFC04();
LABEL_26:
    sub_1C44064EC();
    *(v11 + v22) |= v23;
    *(*(v8 + 48) + 8 * v24) = v16;
    sub_1C4460324();
    if (v25)
    {
      goto LABEL_31;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v1)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v2[v10])
    {
      sub_1C43FCF1C();
      v9 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C4A8E8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  sub_1C440D70C();
  v27 = type metadata accessor for OntologyTriple();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v20)
  {
LABEL_18:

LABEL_19:
    sub_1C43FE9F0();
    return;
  }

  if (*(v26 + 16) == v20)
  {
    goto LABEL_19;
  }

  sub_1C456902C(&qword_1EC0BDE90, &unk_1C4F322D8);
  sub_1C4416310();
  if (v21 < 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = *v22;
  }

  v33 = 0;
  while (v32)
  {
    sub_1C4401DF0();
LABEL_16:
    sub_1C449EFA8(*(v26 + 48) + *(v28 + 72) * (v34 | (v33 << 6)), v31, type metadata accessor for OntologyTriple);
    sub_1C4843D58();
    if (__OFSUB__(v20--, 1))
    {
      goto LABEL_21;
    }

    if (!v20)
    {
      goto LABEL_18;
    }
  }

  v35 = v33;
  while (1)
  {
    v33 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v33 >= v21)
    {
      goto LABEL_18;
    }

    ++v35;
    if (v22[v33])
    {
      sub_1C43FCF1C();
      v32 = v37 & v36;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1C4A8EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0BDEF8, &unk_1C4F32340);
      sub_1C4416310();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v6 + 56;
      if (v10)
      {
        while (1)
        {
          sub_1C440AAD0();
          v37 = v14;
LABEL_15:
          v18 = (*(a4 + 48) + ((v13 | (v11 << 6)) << 6));
          v20 = *v18;
          v19 = v18[1];
          v21 = v18[3];
          v41 = v18[2];
          v42 = v21;
          v39 = v20;
          v40 = v19;
          v22 = *(v6 + 40);
          sub_1C4F02AF8();
          if (*(&v41 + 1))
          {
            sub_1C4851520(&v39, v38);
            sub_1C4F01298();
          }

          else
          {
            sub_1C4851520(&v39, v38);
          }

          sub_1C4F01298();
          v23 = sub_1C4F02B68();
          sub_1C442D128(v23, *(v6 + 32));
          if (v24)
          {
            break;
          }

          sub_1C43FFC04();
LABEL_28:
          v29 = *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8));
          sub_1C4426D0C();
          *(v12 + v30) = v31;
          v33 = (*(v6 + 48) + (v32 << 6));
          v34 = v39;
          v35 = v40;
          v36 = v42;
          v33[2] = v41;
          v33[3] = v36;
          *v33 = v34;
          v33[1] = v35;
          sub_1C440A4C0();
          if (v9)
          {
            goto LABEL_34;
          }

          if (!v37)
          {
            goto LABEL_10;
          }
        }

        sub_1C43FFBF0();
        while (1)
        {
          sub_1C4410160();
          if (v24)
          {
            if (v27)
            {
              break;
            }
          }

          if (v26 == v28)
          {
            v26 = 0;
          }

          sub_1C443002C(v26);
          if (!v24)
          {
            sub_1C43FCF98();
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_10:
        v15 = v11;
        while (1)
        {
          v11 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v11 >= v4)
          {

            return;
          }

          sub_1C4424F24();
          if (v16)
          {
            sub_1C4413608();
            v37 = v17;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_1C4A8ECB4()
{
  result = qword_1EC0B9150;
  if (!qword_1EC0B9150)
  {
    sub_1C4572308(&qword_1EC0B8A30, &unk_1C4F0DE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9150);
  }

  return result;
}

uint64_t sub_1C4A8ED18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4A8ED7C(uint64_t a1)
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
        v9 = (*(v2 + 48) + (v5 << 6));
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

float sub_1C4A8EFB4()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = sub_1C440A9B8();
  sub_1C456902C(v0, v1);
  sub_1C4401CBC(&qword_1EC0C2620, &qword_1EC0B84F0, &unk_1C4F0CF50);
  sub_1C43FBEF8();
  v2 = *(sub_1C4F009A8() + 16);

  __C = NAN;
  sub_1C43FBEF8();
  v3 = sub_1C4F009A8();
  sub_1C43FBEF8();
  v4 = sub_1C4F009A8();
  vDSP_dotpr((v3 + 32), 1, (v4 + 32), 1, &__C, v2);

  sub_1C43FBEF8();
  v5 = sub_1C4F009A8();
  sub_1C4422B6C(v5, v6, v7, v8, v9, v10, v11, v12, v24);
  v13 = *&v25;

  sub_1C43FBEF8();
  v14 = sub_1C4F009A8();
  sub_1C4422B6C(v14, v15, v16, v17, v18, v19, v20, v21, v25);

  v22 = *MEMORY[0x1E69E9840];
  return __C / ((sqrtf(v13) * sqrtf(v26)) + 0.00000011921);
}

uint64_t sub_1C4A8F138(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0C0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4A949E4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4A8F1A4(uint64_t a1)
{
  v4 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A8F138(&v4);
  v2 = v4;
  if (v1)
  {
  }

  return v2;
}

uint64_t sub_1C4A8F1F4()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4A8F240(char a1)
{
  result = 0x5F746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 0x656C646E6168;
      goto LABEL_7;
    case 3:
      v3 = 0x6E6F69736976;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D5F000000000000;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E5F676E6F727473;
      break;
    case 7:
      result = 0x6C696D69735F6C6DLL;
      break;
    case 8:
      result = 0x6D616E5F6B616577;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A8F3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4A8F1F4();
  *a2 = result;
  return result;
}

uint64_t sub_1C4A8F3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A8F240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4A8F4B4()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x206E6F736165523CLL, 0xED00003A65707974);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x3A6174614420, 0xE600000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0 = sub_1C4404084();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

double sub_1C4A8F5B4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1C4F00FF8();
  v8 = v7;
  v78 = v6;
  v79 = v7;
  *(&v74 + 1) = 0xE100000000000000;
  v9 = sub_1C4415EA8();
  sub_1C4400AD4(v9, MEMORY[0x1E69E6158], v10, v11, v12, v13, v14, v15, v63, v66, v67, v68, v69, v70, v71, v72, v73, 64);
  v16 = sub_1C4F01FC8();
  if (v16[2] != 2)
  {
    if (qword_1EDDFD028 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if (!v16[2])
  {
    goto LABEL_23;
  }

  v17 = v16[4];
  a2 = v16[5];
  v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  while (1)
  {
    v78 = v17;
    v79 = a2;
    a1 = 0xE100000000000000;
    *(&v74 + 1) = 0xE100000000000000;
    sub_1C4400AD4(v18, MEMORY[0x1E69E6158], v19, v20, v21, v22, v23, v24, v64, v66, v67, v68, v69, v70, v71, v72, v73, 43);
    v31 = sub_1C4F02048();
    if (v31)
    {
      v78 = v17;
      v79 = a2;
      *(&v74 + 1) = 0xE100000000000000;
      sub_1C4400AD4(v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v36, v37, v64, v66, v67, v68, v69, v70, v71, v72, v73, 43);
      v38 = sub_1C4F01FC8();
      sub_1C44341C0(v38);
      if (v39)
      {
        goto LABEL_18;
      }
    }

    v78 = v17;
    v79 = a2;
    a1 = 0xE200000000000000;
    *(&v74 + 1) = 0xE200000000000000;
    sub_1C4400AD4(v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v36, v37, v64, v66, v67, v68, v69, v70, v71, v72, v73, 45);
    v40 = sub_1C4F02048();
    if (v40)
    {
      v78 = v17;
      v79 = a2;
      *(&v74 + 1) = 0xE200000000000000;
      sub_1C4400AD4(v40, MEMORY[0x1E69E6158], v41, v42, v43, v44, v45, v46, v64, v66, v67, v68, v69, v70, v71, v72, v73, 45);
      v47 = sub_1C4F01FC8();
      sub_1C44341C0(v47);
      if (v39)
      {
        goto LABEL_18;
      }
    }

    v78 = v17;
    v79 = a2;
    a1 = 0xE100000000000000;
    *(&v74 + 1) = 0xE100000000000000;
    sub_1C4400AD4(v40, MEMORY[0x1E69E6158], v41, v42, v43, v44, v45, v46, v64, v66, v67, v68, v69, v70, v71, v72, v73, 46);
    v48 = sub_1C4F02048();
    if ((v48 & 1) == 0)
    {
      goto LABEL_20;
    }

    v78 = v17;
    v79 = a2;
    *(&v74 + 1) = 0xE100000000000000;
    sub_1C4400AD4(v48, MEMORY[0x1E69E6158], v49, v50, v51, v52, v53, v54, v65, v66, v67, v68, v69, v70, v71, v72, v73, 46);
    v55 = sub_1C4F01FC8();
    sub_1C44341C0(v55);
    if (!v39)
    {
      break;
    }

LABEL_18:
    v57 = *(a1 + 32);
    v56 = *(a1 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v16[2] >= 2uLL)
    {
      v59 = v16[6];
      v58 = v16[7];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_21;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1C4419274();
    swift_once();
LABEL_5:
    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();

    if (os_log_type_enabled(v26, v27))
    {
      v64 = v6;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78 = v29;
      *v28 = 136380675;
      v30 = sub_1C441D828(a1, a2, &v78);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Invalid Email: %{private}s does not contain single '@'. Treating as empty.", v28, 0xCu);
      sub_1C440962C(v29);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v6 = v64;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v17 = 0;
    a2 = 0xE000000000000000;
  }

LABEL_20:

  v57 = 0;
  v56 = 0;
  v59 = 0;
  v58 = 0;
LABEL_21:
  *&v74 = v6;
  *(&v74 + 1) = v8;
  *&v75 = v17;
  *(&v75 + 1) = a2;
  *&v76 = v57;
  *(&v76 + 1) = v56;
  *&v77 = v59;
  *(&v77 + 1) = v58;
  v78 = v6;
  v79 = v8;
  v80 = v17;
  v81 = a2;
  v82 = v57;
  v83 = v56;
  v84 = v59;
  v85 = v58;
  sub_1C4851520(&v74, &v66);
  sub_1C485157C(&v78);
  v60 = v75;
  *a3 = v74;
  a3[1] = v60;
  result = *&v76;
  v62 = v77;
  a3[2] = v76;
  a3[3] = v62;
  return result;
}

uint64_t sub_1C4A8F91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v411 = a3;
  v412 = a2;
  v419 = a1;
  v5 = sub_1C4EF9CD8();
  v409 = *(v5 - 8);
  v410 = v5;
  v6 = *(v409 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v408 = &v373 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = sub_1C4EFD548();
  v458 = *(v416 - 8);
  v8 = *(v458 + 64);
  MEMORY[0x1EEE9AC00](v416);
  v415 = &v373 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EFF0C8();
  v417 = *(v10 - 8);
  v418 = v10;
  v11 = *(v417 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v414 = &v373 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v413 = &v373 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v407 = &v373 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v404 = &v373 - v18;
  v19 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v405 = &v373 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v406 = &v373 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v373 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v373 - v28;
  v30 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v373 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v373 - v35;
  v37 = type metadata accessor for EntityTriple(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v373 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C44D8A74();
  if (v4)
  {
    return result;
  }

  v398 = v34;
  v399 = v29;
  v400 = v40;
  v401 = v27;
  v403 = v3;
  sub_1C44D0BD8(v419, v36);
  if (sub_1C44157D4(v36, 1, v37) == 1)
  {
    sub_1C4420C3C(v36, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
LABEL_268:
      swift_once();
    }

    v42 = sub_1C4F00978();
    sub_1C442B738(v42, qword_1EDE2DE10);
    v43 = sub_1C4F00968();
    v44 = sub_1C4F01CD8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C43F8000, v43, v44, "People Matcher: skipping entityTriples are empty", v45, 2u);
      MEMORY[0x1C6942830](v45, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v46 = 0;
    return swift_willThrow();
  }

  v47 = v400;
  sub_1C4A948D8(v36, v400);
  v48 = *(v47 + *(v37 + 40) + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44F40EC();
  sub_1C44DA574(v49, &v444);
  v392 = v48;
  v394 = 0;

  v50 = v444;
  v52 = v445;
  v51 = v446;
  v53 = v448;
  v419 = v447;
  v54 = v450;
  v397 = v449;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v391 = v50.n128_i64[1];
  v55 = v53;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v390 = v51;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v393 = v50.n128_u64[0];
  v56 = sub_1C44E1D98(v50.n128_i64[0]);
  v57 = MEMORY[0x1E69E7CC8];
  v395 = v52;
  v396 = v37;
  v402 = v56;
  v58 = v412;
  if (v412)
  {
    v59 = v54;
    v60 = v398;
    sub_1C44D0BD8(v412, v398);
    v61 = sub_1C44157D4(v60, 1, v37);
    v62 = v418;
    v63 = v458;
    if (v61 != 1)
    {
      v64 = v399;
      (*(v417 + 16))(v399, v60, v418);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447EA28(v60, type metadata accessor for EntityTriple);
      sub_1C440BAA8(v64, 0, 1, v62);
      v443 = MEMORY[0x1E69E7CC8];
      v54 = v59;
LABEL_14:
      v65 = v401;
      sub_1C44DDE2C();
      if (sub_1C44157D4(v65, 1, v62) == 1)
      {

        sub_1C4420C3C(v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_16;
      }

      v412 = v55;
      v104 = v417;
      v105 = v62;
      v106 = v404;
      (*(v417 + 32))(v404, v65, v105);
      sub_1C44F40EC();
      v107 = v394;
      sub_1C44DA574(v108, &v451);
      v394 = v107;
      if (v107)
      {

        sub_1C44DEEB4(&v444);

        swift_bridgeObjectRelease_n();

        (*(v104 + 8))(v106, v105);
        sub_1C4420C3C(v399, &unk_1EC0BA0E0, &qword_1C4F105A0);

        return sub_1C447EA28(v400, type metadata accessor for EntityTriple);
      }

      v135 = v451;
      v137 = v452;
      v136 = v453;
      v138 = v455;
      v383 = v454;
      v384 = v456;
      v386 = v457;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v389 = v135.n128_u64[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v401 = v136;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DEEB4(&v451);
      v388 = v135.n128_u64[0];
      v139 = sub_1C44E1D98(v135.n128_i64[0]);
      v398 = v137;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v387 = v139;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF048();
      v380 = v140;
      strcpy(&v438, "isCurrentUser");
      HIWORD(v438) = -4864;
      *&v439 = 1702195828;
      *(&v439 + 1) = 0xE400000000000000;
      v441 = 0;
      v440 = 0uLL;
      v442 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v438);
      if (v412)
      {
        if (v419 == 1702195828 && v412 == 0xE400000000000000)
        {
          LODWORD(v385) = 1;
        }

        else
        {
          LODWORD(v385) = sub_1C4F02938();
        }
      }

      else
      {
        LODWORD(v385) = 0;
      }

      *&v433 = 0xD000000000000014;
      *(&v433 + 1) = 0x80000001C4F8BE80;
      *&v434 = 1702195828;
      *(&v434 + 1) = 0xE400000000000000;
      v436 = 0;
      v435 = 0uLL;
      v437 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v433);
      if (v54)
      {
        if (v397 == 1702195828 && v54 == 0xE400000000000000)
        {
          LODWORD(v382) = 1;
        }

        else
        {
          LODWORD(v382) = sub_1C4F02938();
        }
      }

      else
      {
        LODWORD(v382) = 0;
      }

      strcpy(v431, "isCurrentUser");
      HIWORD(v431[1]) = -4864;
      v431[2] = 1702195828;
      v431[3] = 0xE400000000000000;
      memset(&v431[4], 0, 24);
      v432 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v431);
      if (v138)
      {
        if (v383 == 1702195828 && v138 == 0xE400000000000000)
        {
          v158 = 1;
        }

        else
        {
          v158 = sub_1C4F02938();
        }
      }

      else
      {
        v158 = 0;
      }

      v429[0] = 0xD000000000000014;
      v429[1] = 0x80000001C4F8BE80;
      v429[2] = 1702195828;
      v429[3] = 0xE400000000000000;
      memset(&v429[4], 0, 24);
      v430 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v429);
      v159 = v388;
      v375 = 0xD000000000000014;
      if (v386)
      {
        LODWORD(v397) = v158;
        if (v384 != 1702195828 || v386 != 0xE400000000000000)
        {
          v161 = sub_1C4F02938();

          v162 = v398;
          v163 = v395;
          if (v385)
          {
            v164 = v397 | ~v161;
            v165 = v400;
            if (v164)
            {
              v166 = v397 ^ 1;
LABEL_127:
              v384 = v166;
              goto LABEL_128;
            }

            goto LABEL_123;
          }

          if ((v397 & 1) == 0)
          {
            v168 = v382 & v161;
            v165 = v400;
            if ((v168 & 1) == 0)
            {
              goto LABEL_126;
            }

            goto LABEL_123;
          }

LABEL_122:
          v165 = v400;
          if ((v382 & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_123;
        }

        v162 = v398;
        v163 = v395;
        if ((v385 & 1) == 0)
        {
          goto LABEL_122;
        }

        v165 = v400;
        if ((v397 & 1) == 0)
        {
LABEL_123:
          if (*(v163 + 16) && *(v162 + 16))
          {
            v169 = sub_1C4A935F4(v163, v162);
            sub_1C47023EC(v170, v171, v172);
            LODWORD(v397) = v169;
            v166 = v169 ^ 1u;
            goto LABEL_127;
          }

LABEL_126:
          LODWORD(v397) = 0;
          v166 = 1;
          goto LABEL_127;
        }

        v384 = 0;
        LODWORD(v397) = 1;
      }

      else
      {

        v165 = v400;
        if ((v385 & 1) == 0)
        {
          v167 = v158 & v382;
          v162 = v398;
          v163 = v395;
          if ((v167 & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_123;
        }

        LODWORD(v397) = v158;
        v384 = (v158 ^ 1u);
      }

LABEL_128:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v173 = v393;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v173 + 16) && *(v159 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v174 = v390;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v175 = v393;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v176 = sub_1C4A954A4(v159, v175, sub_1C4A69E28, sub_1C4A69E28);
        HIDWORD(v376) = v176[2] != 0;
        *&v425 = v176;
        sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4415EA8();
        v385 = sub_1C4F01568();
        v379 = v177;
        v165 = v400;

        v178 = v174;

        v179 = v391;

        v66 = v402;

        v386 = 1;
      }

      else
      {

        v178 = v390;

        v179 = v391;

        v66 = v402;

        HIDWORD(v376) = 0;
        v385 = 0;
        v386 = 0;
        v379 = 1;
      }

      v384 = (v384 & 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v180 = v398;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v181 = v389;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v179 + 16) && *(v181 + 2) || *(v178 + 16) && *(v401 + 2))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v182 = sub_1C4A954A4(v389, v179, sub_1C4A69E28, sub_1C4A69E28);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v383 = sub_1C4A954A4(v401, v178, sub_1C4A6AD48, sub_1C4A6AD48);
        v183 = v394;
        sub_1C4A8ED7C(v383);
        v394 = v183;
        sub_1C4499940(v184, v185, v186, v187, v188, v189, v190, v191, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
        v193 = v192;

        sub_1C44999E0(v193, v182);
        *&v425 = v194;
        sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4415EA8();
        v66 = v402;
        v382 = sub_1C4F01568();
        v196 = v195;

        v197 = v182[2];

        if (v197)
        {

          v198 = 1;
        }

        else
        {
          v200 = *(v383 + 16);

          v198 = v200 != 0;
        }

        v383 = v198;
        v165 = v400;
        v381 = 2;
        v199 = v398;
      }

      else
      {

        v382 = 0;
        v383 = 0;
        v381 = 0;
        v196 = 2;
        v199 = v180;
      }

      v201 = v397;
      v397 = sub_1C4A92C90(v66, v387);
      v377 = v202;
      v378 = v203;
      v205 = v204;
      if (v412)
      {
        if (v201)
        {

          sub_1C4A95670(v383, v381, v382, v196);
          sub_1C47023EC(v386, v385, v379);
          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v206 = swift_allocObject();
          sub_1C466323C(v206, 1);
          strcpy(v207, "isCurrentUser");
          *(v207 + 7) = -4864;
          v208 = v412;
          *(v207 + 2) = v419;
          *(v207 + 3) = v208;
          v209 = sub_1C4F00F28();
          v386 = 0;
          v210 = 0;
          v443 = v209;
          v211 = &xmmword_1EDDFD000;
LABEL_159:
          v212 = v384;
LABEL_160:
          if (v212 == 1)
          {
            goto LABEL_162;
          }

          goto LABEL_161;
        }

        sub_1C47023EC(0, 0, v384);
      }

      else
      {
        sub_1C47023EC(0, 0, v384);
      }

      v210 = v385;
      if (HIDWORD(v376))
      {

        sub_1C4A95670(v383, v381, v382, v196);
        v212 = v379;
LABEL_148:
        v211 = &xmmword_1EDDFD000;
        goto LABEL_160;
      }

      sub_1C47023EC(v386, v385, v379);
      v213 = *(v395 + 16);

      if (v213)
      {
        v214 = *(v199 + 16);

        if (v214)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v374 = v196;
          if (v205 == 2)
          {
            v215 = 0;
            LODWORD(v412) = (v196 != 2) & v383;
            v216 = (v196 == 2) | v383;
          }

          else if (v397)
          {
            v215 = (v196 != 2) & v383;
            LODWORD(v412) = 1;
            v216 = 1;
          }

          else
          {
            v215 = 0;
            v262 = v196 != 2;
            v216 = v262 & v383;
            LODWORD(v412) = v262 & v383;
          }

          v263 = sub_1C4A933E4(v395);
          v210 = v265;
          v212 = v266;
          if (v263 & 1) != 0 && (v216)
          {
            v386 = v264;

            sub_1C4A95670(v383, v381, v382, v374);
            v66 = v402;
            goto LABEL_148;
          }

          LODWORD(v386) = v215;
          v419 = v205;
          sub_1C47023EC(v264, v265, v266);
          v267 = sub_1C4A935F4(v395, v199);
          v269 = v268;
          v271 = v270;
          v273 = v272;

          if (v267 & v412)
          {
            *&v425 = sub_1C4B400F8(8);
            *(&v425 + 1) = v274;
            if (v273 < 2)
            {

              v271 = 0;
              v273 = 0xE000000000000000;
            }

            v66 = v402;
            v275 = v374;
            MEMORY[0x1C6940010](v271, v273);

            MEMORY[0x1C6940010](44, 0xE100000000000000);
            v276 = v381;
            if (v275 >= 3)
            {
              v347 = v382;
              sub_1C4A9568C(v381, v382, v275);
              v277 = v347;
              v278 = v275;
            }

            else
            {

              v277 = 0;
              v278 = 0xE000000000000000;
            }

            v205 = v419;
            MEMORY[0x1C6940010](v277, v278);

            MEMORY[0x1C6940010](44, 0xE100000000000000);
            if (v205 >= 3)
            {
              v350 = v378;
              sub_1C4A9568C(v377, v378, v205);
              v348 = v350;
              v349 = v205;
            }

            else
            {

              v348 = 0;
              v349 = 0xE000000000000000;
            }

            MEMORY[0x1C6940010](v348, v349);

            sub_1C4A95670(v383, v276, v382, v275);
            v212 = *(&v425 + 1);
            v210 = v425;
            v386 = 9;
            goto LABEL_148;
          }

          sub_1C47023EC(v269, v271, v273);
          v62 = v418;
          if (v386)
          {
            *&v425 = sub_1C4B400F8(5);
            *(&v425 + 1) = v279;
            v280 = v374;
            v205 = v419;
            if (v374 >= 3)
            {
              v351 = v382;
              sub_1C4A9568C(v381, v382, v374);
              v281 = v351;
            }

            else
            {

              v281 = 0;
              v280 = 0xE000000000000000;
            }

            MEMORY[0x1C6940010](v281, v280);

            MEMORY[0x1C6940010](44, 0xE100000000000000);
            v352 = v381;
            if (v205 >= 3)
            {
              v355 = v378;
              sub_1C4A9568C(v377, v378, v205);
              v353 = v355;
              v354 = v205;
            }

            else
            {

              v353 = 0;
              v354 = 0xE000000000000000;
            }

            v66 = v402;
            MEMORY[0x1C6940010](v353, v354);

            v212 = *(&v425 + 1);
            v356 = v425;
            v357 = sub_1C4F012A8();
            sub_1C4A95670(v383, v352, v382, v374);
            if (v357 < 2)
            {

              v212 = 0;
              v210 = 0;
              v386 = 5;
LABEL_161:
              v229 = v386;
              sub_1C4A8F4B4();
              sub_1C47023EC(v229, v210, v212);
              v230 = v443;
              swift_isUniquelyReferenced_nonNull_native();
              *&v425 = v230;
              v211 = &xmmword_1EDDFD000;
              sub_1C44E737C();
              v443 = v425;
LABEL_162:
              v231 = (v403 + *(type metadata accessor for PeopleMatcher() + 20));
              if (*(v211 + 21) != -1)
              {
                swift_once();
              }

              v232 = type metadata accessor for Source();
              v233 = sub_1C442B738(v232, qword_1EDDFD0B0);
              v234 = *v233;
              v235 = v233[1];
              v236 = *v231 == *v233 && v231[1] == v235;
              if (v236 || (v237 = *v233, v238 = v233[1], (sub_1C4F02938() & 1) != 0))
              {
                if (*(v66 + 16))
                {
                  v412 = v234;
                  v419 = v205;
                  sub_1C45A323C(0, 1, v66);
                  v240 = *(v66 + 32);
                  v239 = *(v66 + 48);
                  v428 = *(v66 + 80);
                  v425 = v240;
                  v241 = *(v66 + 64);
                  v426 = v239;
                  v427 = v241;
                  sub_1C461B90C(&v425, &v421);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v242 = v443;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v421 = v242;
                  sub_1C44E737C();
                  v243 = v421;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v421 = v243;
                  sub_1C44E737C();
                  v443 = v421;
                  v247 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                  if (v247)
                  {
                    v234 = v412;
                  }

                  else
                  {
                    v248 = v398;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v249 = *(v248 + 16);

                    v234 = v412;
                    if (!v249)
                    {
                      v250 = *(v403 + *(type metadata accessor for PhaseStores() + 32));
                      v251 = VisionKeyValueStore.fetchNameEntities(for:)();
                      v252 = sub_1C482FE08(v251);
                      v253 = v394;
                      v254 = sub_1C4A8F1A4(v252);
                      v394 = v253;

                      v255 = *(v254 + 16);
                      if (v255)
                      {
                        v256 = v255 - 1;
                        for (i = 32; ; i += 56)
                        {
                          v259 = *(v254 + i + 16);
                          v258 = *(v254 + i + 32);
                          v260 = *(v254 + i);
                          v424 = *(v254 + i + 48);
                          v422 = v259;
                          v423 = v258;
                          v421 = v260;
                          v261 = HIBYTE(*(&v259 + 1)) & 0xFLL;
                          if ((*(&v259 + 1) & 0x2000000000000000) == 0)
                          {
                            v261 = v259 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v261)
                          {
                            break;
                          }

                          if (!v256)
                          {
                            goto LABEL_209;
                          }

                          --v256;
                        }

                        sub_1C461B90C(&v421, v420);

                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v282 = v443;
                        swift_isUniquelyReferenced_nonNull_native();
                        v420[0] = v282;
                        sub_1C44E737C();
                        sub_1C4851A34(&v421);
                        v443 = v420[0];
                      }

                      else
                      {
LABEL_209:
                      }
                    }
                  }

                  v283 = *(v403 + *(type metadata accessor for PhaseStores() + 32));
                  v284 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
                  sub_1C4851A34(&v425);
                  v285 = sub_1C482FE08(v284);
                  v286 = v394;
                  v287 = sub_1C4A8F1A4(v285);
                  v394 = v286;

                  v288 = *(v287 + 16);
                  if (!v288)
                  {

                    v66 = v402;
                    goto LABEL_220;
                  }

                  v289 = v288 - 1;
                  v290 = 32;
                  v66 = v402;
                  while (1)
                  {
                    v291 = *(v287 + v290);
                    v292 = *(v287 + v290 + 48);
                    v293 = *(v287 + v290 + 32);
                    v422 = *(v287 + v290 + 16);
                    v423 = v293;
                    v424 = v292;
                    v421 = v291;
                    v294 = HIBYTE(*(&v293 + 1)) & 0xFLL;
                    if ((*(&v293 + 1) & 0x2000000000000000) == 0)
                    {
                      v294 = v293 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v294)
                    {
                      sub_1C461B90C(&v421, v420);

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      v295 = v443;
                      swift_isUniquelyReferenced_nonNull_native();
                      v420[0] = v295;
                      sub_1C44E737C();
                      v296 = v420[0];
                      v443 = v420[0];
                      sub_1C4F01A78();
                      sub_1C4851A34(&v421);
                      swift_isUniquelyReferenced_nonNull_native();
                      v420[0] = v296;
                      v234 = v412;
                      sub_1C44E737C();
                      v443 = v420[0];
                      goto LABEL_220;
                    }

                    if (!v289)
                    {
                      break;
                    }

                    --v289;
                    v290 += 56;
                  }

LABEL_220:
                  v205 = v419;
                }
              }

              if (v205 == 2 || (v297 = v397, sub_1C4A95670(v397, v377, v378, v205), (v297 & 1) == 0))
              {

                swift_bridgeObjectRelease_n();
                (*(v417 + 8))(v404, v418);
              }

              else
              {
                v298 = sub_1C4A92FE0(v387, v66);

                if (*(v298 + 16))
                {
                  sub_1C45A323C(0, 1, v298);
                  v299 = *(v298 + 48);
                  v425 = *(v298 + 32);
                  v300 = *(v298 + 64);
                  v426 = v299;
                  v427 = v300;
                  v428 = *(v298 + 80);
                  sub_1C461B90C(&v425, &v421);

                  v301 = v425;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v302 = v443;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v421 = v302;
                  v419 = v301;
                  sub_1C44E737C();
                  v303 = v421;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v421 = v303;
                  sub_1C44E737C();
                  v443 = v421;
                  v330 = &v400[*(v396 + 9)];
                  v331 = *v330 == v234 && *(v330 + 1) == v235;
                  if (!v331 && (sub_1C4F02938() & 1) == 0)
                  {
                    (*(v417 + 8))(v404, v418);

                    sub_1C4851A34(&v425);
                    v63 = v458;
                    goto LABEL_227;
                  }

                  v332 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                  v333 = v418;
                  if (v332)
                  {
                  }

                  else
                  {

                    v334 = *(v398 + 2);

                    if (v334)
                    {
LABEL_280:
                      v63 = v458;
                      v359 = *(v403 + *(type metadata accessor for PhaseStores() + 32));
                      v360 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
                      sub_1C4851A34(&v425);
                      v361 = sub_1C482FE08(v360);
                      v362 = v394;
                      v363 = sub_1C4A8F1A4(v361);
                      v394 = v362;

                      v364 = *(v363 + 16);
                      if (v364)
                      {
                        v365 = v364 - 1;
                        for (j = 32; ; j += 56)
                        {
                          v367 = *(v363 + j);
                          v368 = *(v363 + j + 48);
                          v369 = *(v363 + j + 32);
                          v422 = *(v363 + j + 16);
                          v423 = v369;
                          v424 = v368;
                          v421 = v367;
                          v370 = HIBYTE(*(&v369 + 1)) & 0xFLL;
                          if ((*(&v369 + 1) & 0x2000000000000000) == 0)
                          {
                            v370 = v369 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v370)
                          {
                            break;
                          }

                          if (!v365)
                          {
                            goto LABEL_287;
                          }

                          --v365;
                        }

                        sub_1C461B90C(&v421, v420);

                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v371 = v443;
                        swift_isUniquelyReferenced_nonNull_native();
                        v420[0] = v371;
                        sub_1C44E737C();
                        v372 = v420[0];
                        v443 = v420[0];
                        sub_1C4F01A78();
                        sub_1C4851A34(&v421);
                        swift_isUniquelyReferenced_nonNull_native();
                        v420[0] = v372;
                        sub_1C44E737C();
                        v443 = v420[0];
                        (*(v417 + 8))(v404, v333);
                      }

                      else
                      {
LABEL_287:
                        (*(v417 + 8))(v404, v333);
                      }

LABEL_227:
                      v134 = 1.0;
                      goto LABEL_228;
                    }

                    v335 = *(v403 + *(type metadata accessor for PhaseStores() + 32));
                    v336 = VisionKeyValueStore.fetchNameEntities(for:)();
                    v337 = sub_1C482FE08(v336);
                    v338 = v394;
                    v339 = sub_1C4A8F1A4(v337);
                    v394 = v338;

                    v340 = *(v339 + 16);
                    if (v340)
                    {
                      v341 = v340 - 1;
                      for (k = 32; ; k += 56)
                      {
                        v344 = *(v339 + k + 16);
                        v343 = *(v339 + k + 32);
                        v345 = *(v339 + k);
                        v424 = *(v339 + k + 48);
                        v422 = v344;
                        v423 = v343;
                        v421 = v345;
                        v346 = HIBYTE(*(&v344 + 1)) & 0xFLL;
                        if ((*(&v344 + 1) & 0x2000000000000000) == 0)
                        {
                          v346 = v344 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v346)
                        {
                          sub_1C461B90C(&v421, v420);

                          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          v358 = v443;
                          swift_isUniquelyReferenced_nonNull_native();
                          v420[0] = v358;
                          sub_1C44E737C();
                          sub_1C4851A34(&v421);
                          v443 = v420[0];
                          goto LABEL_279;
                        }

                        if (!v341)
                        {
                          break;
                        }

                        --v341;
                      }

LABEL_279:
                      v333 = v418;
                      goto LABEL_280;
                    }
                  }

                  goto LABEL_280;
                }

                (*(v417 + 8))(v404, v418);
              }

              v63 = v458;
              goto LABEL_227;
            }

            v386 = 5;
            v210 = v356;
            goto LABEL_148;
          }

          sub_1C4A95670(v383, v381, v382, v374);
          sub_1C4A95670(v397, v377, v378, v419);

          swift_bridgeObjectRelease_n();

          sub_1C47023EC(0, 0, 1);
          v165 = v400;
          v66 = v402;
LABEL_172:
          v244 = v404;
          v245 = sub_1C4EFEFF8();
          (*(v417 + 8))(v244, v62);
          if ((v245 & 1) == 0)
          {
            sub_1C4420C3C(v399, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C44DEEB4(&v444);

            swift_bridgeObjectRelease_n();

            sub_1C447EA28(v165, type metadata accessor for EntityTriple);
            v246 = type metadata accessor for EntityMatch(0);
            return sub_1C440BAA8(v411, 1, 1, v246);
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

      v220 = v377;
      v221 = v205;
      v222 = v383;
      v223 = v381;
      v419 = v205;
      v224 = v382;
      sub_1C4A92E24(v397, v377, v378, v221, v383, v381, v382, v196);
      LODWORD(v412) = v225;
      v385 = v227;
      v386 = v226;
      v384 = v228;
      sub_1C4A95670(v222, v223, v224, v196);
      if (v412)
      {
        v211 = &xmmword_1EDDFD000;
        v210 = v385;
        v205 = v419;
        goto LABEL_159;
      }

      sub_1C4A95670(v397, v220, v378, v419);

      swift_bridgeObjectRelease_n();

      sub_1C47023EC(v386, v385, v384);
      v62 = v418;
      goto LABEL_172;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v60, &qword_1EC0BA590, &qword_1C4F1F430);
    v54 = v59;
    v57 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v62 = v418;
    v63 = v458;
  }

  sub_1C440BAA8(v399, 1, 1, v62);
  v443 = v57;
  if (v58)
  {
    goto LABEL_14;
  }

LABEL_16:
  v66 = v402;
LABEL_17:
  v67 = v405;
  sub_1C4EFF008();
  sub_1C4420C3C(v399, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C440BAA8(v67, 0, 1, v62);
  sub_1C44CDA7C();
  v68 = (v403 + *(type metadata accessor for PeopleMatcher() + 20));
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Source();
  v70 = sub_1C442B738(v69, qword_1EDDFD0B0);
  v71 = *v68 == *v70 && v68[1] == v70[1];
  if (!v71 && (sub_1C4F02938() & 1) == 0)
  {
LABEL_73:

    goto LABEL_74;
  }

  v72 = *(v66 + 16);
  if (!v72)
  {
LABEL_61:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v122 = sub_1C4F00978();
    sub_1C442B738(v122, qword_1EDE2DE10);
    v123 = swift_allocObject();
    *(v123 + 16) = v66;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v124 = sub_1C4F00968();
    v125 = sub_1C4F01CE8();
    v126 = swift_allocObject();
    *(v126 + 16) = 0;
    v127 = swift_allocObject();
    *(v127 + 16) = 8;
    v128 = swift_allocObject();
    *(v128 + 16) = sub_1C4A9493C;
    *(v128 + 24) = v123;
    v129 = swift_allocObject();
    *(v129 + 16) = sub_1C4A94948;
    *(v129 + 24) = v128;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v130 = swift_allocObject();
    sub_1C466323C(v130, 3);
    *v131 = sub_1C44549EC;
    v131[1] = v126;
    v131[2] = sub_1C44549F4;
    v131[3] = v127;
    v131[4] = sub_1C4716C58;
    v131[5] = v129;

    if (!os_log_type_enabled(v124, v125))
    {

      goto LABEL_74;
    }

    v132 = swift_slowAlloc();
    *v132 = 134217984;
    v133 = *(v402 + 16);

    *(v132 + 4) = v133;

    _os_log_impl(&dword_1C43F8000, v124, v125, "Vision KVS should have vid-vid association as an entry. Source vision signals count: %ld", v132, 0xCu);
    MEMORY[0x1C6942830](v132, -1, -1);

    v134 = 0.8;
    goto LABEL_228;
  }

  v73 = 0;
  v74 = 0;
  v75 = v443;
  v419 = 0x80000001C4FAEDA0;
  v401 = (v72 - 1);
  v76 = 32;
  v396 = "association:identifierNoMatch";
  v397 = 0xD00000000000001BLL;
  v398 = 0;
  v389 = "association:userTaggedPhotos";
  v388 = "num_rejected_suggestions";
  v387 = "association:messages";
  v385 = "association:contactsInferred";
  v384 = "association:contactsConfirmed";
  v386 = "suggestedRelationshipConfidence";
  while (1)
  {
    if (v74 >= v72)
    {
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      v397 = 0xD00000000000001DLL;
      v219 = v385;
LABEL_205:
      v396 = v219;
LABEL_206:
      swift_isUniquelyReferenced_nonNull_native();
      v431[0] = v75;
      sub_1C44E737C();
      v443 = v431[0];
      goto LABEL_54;
    }

    v77 = *(v66 + v76);
    v78 = *(v66 + v76 + 16);
    v79 = *(v66 + v76 + 32);
    v441 = *(v66 + v76 + 48);
    v439 = v78;
    v440 = v79;
    v438 = v77;
    v80 = v441;
    if (v441 <= 6u && ((1 << v441) & 0x45) != 0)
    {
      v405 = v76;
      v412 = v74;
      v82 = *(&v438 + 1);
      v83 = v438;
      sub_1C461B90C(&v438, &v433);

      v404 = v82;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4851A34(&v438);
      v85 = v396;
      v84 = v397;
      v398 = v83;
      switch(v80)
      {
        case 1:
          break;
        case 2:
          v84 = 0xD000000000000014;
          v85 = v388;
          break;
        case 3:
          v84 = 0xD00000000000001CLL;
          v85 = v387;
          break;
        case 4:
          v84 = 0xD00000000000001DLL;
          v85 = v385;
          break;
        case 5:
          v84 = 0xD00000000000001DLL;
          v85 = v384;
          break;
        case 6:
          v84 = 0xD00000000000001CLL;
          v85 = v386;
          break;
        default:
          v84 = 0xD00000000000001DLL;
          v85 = v389;
          break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v433 = v75;
      v86 = sub_1C445FAA8(0xD000000000000011, v419);
      v88 = v75[2];
      v89 = (v87 & 1) == 0;
      v63 = v88 + v89;
      if (__OFADD__(v88, v89))
      {
        goto LABEL_199;
      }

      v90 = v86;
      v91 = v87;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      if (sub_1C4F02458())
      {
        v92 = v433;
        v93 = sub_1C445FAA8(0xD000000000000011, v419);
        v63 = v458;
        if ((v91 & 1) != (v94 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          goto LABEL_290;
        }

        v90 = v93;
      }

      else
      {
        v63 = v458;
      }

      v95 = v85 | 0x8000000000000000;
      v75 = v433;
      if (v91)
      {
        v96 = (*(v433 + 56) + 16 * v90);
        v97 = v96[1];
        *v96 = v84;
        v96[1] = v95;
      }

      else
      {
        *(v433 + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v98 = (v75[6] + 16 * v90);
        v99 = v419;
        *v98 = 0xD000000000000011;
        v98[1] = v99;
        v100 = (v75[7] + 16 * v90);
        *v100 = v84;
        v100[1] = v95;
        v101 = v75[2];
        v102 = __OFADD__(v101, 1);
        v103 = v101 + 1;
        if (v102)
        {
          __break(1u);
          goto LABEL_268;
        }

        v75[2] = v103;
      }

      v66 = v402;
      v74 = v412;
      v73 = v404;
      v76 = v405;
    }

    if (v401 == v74)
    {
      break;
    }

    v72 = *(v66 + 16);
    v76 += 56;
    ++v74;
  }

  v443 = v75;
  if (!v73)
  {
    goto LABEL_61;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C808A0(v398, v73, 0xD000000000000010, 0x80000001C4FAED80);
  v109 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

  if (!v109)
  {
    v142 = *(v403 + *(type metadata accessor for PhaseStores() + 32));
    v143 = VisionKeyValueStore.fetchNameEntities(for:)();
    v144 = sub_1C482FE08(v143);
    v145 = v394;
    v146 = sub_1C4A8F1A4(v144);
    v394 = v145;

    v147 = *(v146 + 16);
    if (!v147)
    {
LABEL_118:

      goto LABEL_54;
    }

    v148 = v147 - 1;
    for (m = 32; ; m += 56)
    {
      v151 = *(v146 + m + 16);
      v150 = *(v146 + m + 32);
      v152 = *(v146 + m);
      v436 = *(v146 + m + 48);
      v434 = v151;
      v435 = v150;
      v433 = v152;
      v153 = HIBYTE(*(&v151 + 1)) & 0xFLL;
      if ((*(&v151 + 1) & 0x2000000000000000) == 0)
      {
        v153 = v151 & 0xFFFFFFFFFFFFLL;
      }

      if (v153)
      {
        break;
      }

      if (!v148)
      {
        goto LABEL_118;
      }

      --v148;
    }

    v217 = v436;
    sub_1C461B90C(&v433, v431);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v218 = v443;
    swift_isUniquelyReferenced_nonNull_native();
    v431[0] = v218;
    sub_1C44E737C();
    v75 = v431[0];
    sub_1C4851A34(&v433);
    switch(v217)
    {
      case 1:
        goto LABEL_206;
      case 2:
        v397 = 0xD000000000000014;
        v219 = v388;
        goto LABEL_205;
      case 3:
        v397 = 0xD00000000000001CLL;
        v219 = v387;
        goto LABEL_205;
      case 4:
        goto LABEL_200;
      case 5:
        v397 = 0xD00000000000001DLL;
        v219 = v384;
        goto LABEL_205;
      case 6:
        v397 = 0xD00000000000001CLL;
        v219 = v386;
        goto LABEL_205;
      default:
        v397 = 0xD00000000000001DLL;
        v219 = v389;
        goto LABEL_205;
    }

    goto LABEL_206;
  }

LABEL_54:
  v110 = *(v403 + *(type metadata accessor for PhaseStores() + 32));
  v111 = VisionKeyValueStore.fetchRelationshipEntities(for:)();

  v112 = sub_1C482FE08(v111);
  v113 = v394;
  v114 = sub_1C4A8F1A4(v112);

  v115 = *(v114 + 16);
  v394 = v113;
  if (!v115)
  {
    goto LABEL_73;
  }

  v116 = v115 - 1;
  for (n = 32; ; n += 56)
  {
    v118 = *(v114 + n);
    v119 = *(v114 + n + 48);
    v120 = *(v114 + n + 32);
    v434 = *(v114 + n + 16);
    v435 = v120;
    v436 = v119;
    v433 = v118;
    v121 = HIBYTE(*(&v120 + 1)) & 0xFLL;
    if ((*(&v120 + 1) & 0x2000000000000000) == 0)
    {
      v121 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v121)
    {
      break;
    }

    if (!v116)
    {
      goto LABEL_73;
    }

    --v116;
  }

  sub_1C461B90C(&v433, v431);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v154 = v443;
  swift_isUniquelyReferenced_nonNull_native();
  v431[0] = v154;
  sub_1C44E737C();
  v155 = v431[0];
  v443 = v431[0];
  sub_1C4F01A78();
  sub_1C4851A34(&v433);
  swift_isUniquelyReferenced_nonNull_native();
  v431[0] = v155;
  sub_1C44E737C();
  v443 = v431[0];
LABEL_74:
  v134 = 0.8;
LABEL_228:
  v304 = v443;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v305 = sub_1C44E24F8(0xD000000000000010, 0x80000001C4FAED80, v304);

  if (v305)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v306 = sub_1C44E24F8(0xD000000000000011, 0x80000001C4FAEDA0, v304);

    if ((v306 & 1) == 0)
    {
      goto LABEL_232;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v307 = sub_1C44E24F8(0xD000000000000010, 0x80000001C4FAED80, v304);

  if ((v307 & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v308 = sub_1C44E24F8(0xD000000000000011, 0x80000001C4FAEDA0, v304);

    if (v308)
    {
LABEL_232:
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v309 = sub_1C4F00978();
      sub_1C442B738(v309, qword_1EDE2DE10);
      v310 = sub_1C4F00968();
      v311 = sub_1C4F01CD8();
      if (os_log_type_enabled(v310, v311))
      {
        v312 = swift_slowAlloc();
        *v312 = 0;
        _os_log_impl(&dword_1C43F8000, v310, v311, "Metadata invalid. Visual identifier and association reason were not simultaneously set on metadata.", v312, 2u);
        MEMORY[0x1C6942830](v312, -1, -1);
      }
    }
  }

  v419 = v304;
  v92 = v406;
  sub_1C44DDE2C();
  v313 = v418;
  if (sub_1C44157D4(v92, 1, v418) == 1)
  {
LABEL_290:
    sub_1C4420C3C(v92, &unk_1EC0BA0E0, &qword_1C4F105A0);
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {

    sub_1C44DEEB4(&v444);
    v314 = v417;
    v315 = v407;
    v412 = *(v417 + 32);
    (v412)(v407, v92, v313);
    v406 = type metadata accessor for PeopleMatcher();
    v316 = *(v63 + 16);
    v317 = v403;
    v316(v415, v403 + *(v406 + 6), v416);
    v318 = *(v314 + 16);
    v319 = v400;
    v318(v413, v400, v313);
    v318(v414, v315, v313);
    v320 = v408;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v322 = v321;
    (*(v409 + 8))(v320, v410);
    (*(v314 + 8))(v315, v313);
    sub_1C4420C3C(v399, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C447EA28(v319, type metadata accessor for EntityTriple);
    v323 = *(v317 + *(v406 + 8));
    v324 = v419;
    if (*(v419 + 16))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v325 = v324;
    }

    else
    {
      v325 = 0;
    }

    v326 = v411;
    (*(v458 + 32))(v411, v415, v416);
    v327 = type metadata accessor for EntityMatch(0);
    v328 = v412;
    v329 = v418;
    (v412)(v326 + v327[5], v413, v418);
    v328(v326 + v327[6], v414, v329);
    *(v326 + v327[7]) = v134;
    *(v326 + v327[8]) = v322;
    *(v326 + v327[9]) = v323;
    *(v326 + v327[10]) = v325;
    sub_1C440BAA8(v326, 0, 1, v327);
  }

  return result;
}