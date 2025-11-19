unint64_t sub_20CEED730(uint64_t a1)
{
  sub_20D567838();
  sub_20D568D48();
  sub_20D5678C8();
  v2 = sub_20D568D98();

  return sub_20CEEE11C(a1, v2);
}

unint64_t sub_20CEED7C0(uint64_t a1)
{
  sub_20D563818();
  v2 = MEMORY[0x277CC95F0];
  sub_20CEF5EB0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  v3 = sub_20D5677B8();
  return sub_20CEEE7F0(a1, v3, MEMORY[0x277CC95F0], qword_27C820680, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_20CEED894(uint64_t a1)
{
  v2 = sub_20D5687D8();

  return sub_20CEEE054(a1, v2);
}

unint64_t sub_20CEED8D8(void *a1, double a2, double a3)
{
  sub_20D568D48();
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x20F31E230](*&v6);
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x20F31E230](*&v7);
  sub_20D568D68();
  if (a1)
  {
    v8 = a1;
    sub_20D568408();
  }

  v9 = sub_20D568D98();

  return sub_20CEEE220(a1, v9, a2, a3);
}

unint64_t sub_20CEEDA04(uint64_t a1)
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.ElementID.hash(into:)();
  v2 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  MEMORY[0x20F31E200](*(a1 + *(v2 + 20)));
  v3 = sub_20D568D98();

  return sub_20CEEE414(a1, v3);
}

unint64_t sub_20CEEDA88(uint64_t a1)
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.ElementID.hash(into:)();
  v2 = sub_20D568D98();

  return sub_20CEEE5B8(a1, v2);
}

unint64_t sub_20CEEDAF4(uint64_t a1)
{
  sub_20D5637A8();
  v2 = MEMORY[0x277CC9578];
  sub_20CEF5EB0(&qword_27C820780, MEMORY[0x277CC9578]);
  v3 = sub_20D5677B8();
  return sub_20CEEE7F0(a1, v3, MEMORY[0x277CC9578], &qword_27C81C300, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_20CEEDC18(unsigned __int16 a1)
{
  v3 = MEMORY[0x20F31E1D0](*(v1 + 40), a1, 2);

  return sub_20CEEE714(a1, v3);
}

unint64_t sub_20CEEDC60(uint64_t a1)
{
  v2 = sub_20D568D38();

  return sub_20CEEE784(a1, v2);
}

unint64_t sub_20CEEDCA4(uint64_t a1)
{
  sub_20D563FC8();
  v2 = MEMORY[0x277D15558];
  sub_20CEF5EB0(&qword_27C81C070, MEMORY[0x277D15558]);
  v3 = sub_20D5677B8();
  return sub_20CEEE7F0(a1, v3, MEMORY[0x277D15558], &qword_27C81C078, v2, MEMORY[0x277D15588]);
}

unint64_t sub_20CEEDD78(uint64_t a1)
{
  sub_20D564868();
  v2 = MEMORY[0x277D16B10];
  sub_20CEF5EB0(&qword_27C81C060, MEMORY[0x277D16B10]);
  v3 = sub_20D5677B8();
  return sub_20CEEE7F0(a1, v3, MEMORY[0x277D16B10], &qword_27C81C068, v2, MEMORY[0x277D16B30]);
}

unint64_t sub_20CEEDE4C(uint64_t a1, uint64_t a2)
{
  sub_20D568D48();
  MEMORY[0x20F31E200](a1);
  sub_20D567838();
  sub_20D5678C8();

  v4 = sub_20D568D98();

  return sub_20CEEE990(a1, a2, v4);
}

unint64_t sub_20CEEDEE8(uint64_t a1)
{
  sub_20D568D48();
  type metadata accessor for CFString(0);
  sub_20CEF5EB0(&qword_27C81BFE0, type metadata accessor for CFString);
  sub_20D5648D8();
  v2 = sub_20D568D98();

  return sub_20CEEEAB0(a1, v2);
}

unint64_t sub_20CEEDF9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20D568BF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CEEE054(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20CEF9064(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F31DC90](v9, a1);
      sub_20CEF90C0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20CEEE11C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20D567838();
      v8 = v7;
      if (v6 == sub_20D567838() && v8 == v9)
      {
        break;
      }

      v11 = sub_20D568BF8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_20CEEE220(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v12 = ~v6;
    do
    {
      v13 = *(v8 + 48) + 24 * v7;
      if (*v13 == a3 && *(v13 + 8) == a4)
      {
        v15 = *(v13 + 16);
        if (v15)
        {
          if (a1)
          {
            sub_20CECF940(0, &qword_27C81BFC0);
            v16 = v15;
            v17 = a1;
            v18 = sub_20D5683F8();

            if (v18)
            {
              return v7;
            }
          }
        }

        else if (!a1)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_20CEEE348(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_20CECF940(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_20D5683F8();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CEEE414(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_20CEF8F9C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      if (_s6HomeUI32ControlCenterModuleConfigurationV9ElementIDO2eeoiySbAE_AEtFZ_0(v8, a1))
      {
        v13 = *&v8[*(v5 + 20)];
        sub_20CEF9004(v8, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_20CEF9004(v8, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_20CEEE5B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_20CEF8F9C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v13 = _s6HomeUI32ControlCenterModuleConfigurationV9ElementIDO2eeoiySbAE_AEtFZ_0(v8, a1);
      sub_20CEF9004(v8, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_20CEEE714(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20CEEE784(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20CEEE7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_20CEF5EB0(v23, v24);
      v19 = sub_20D5677E8();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_20CEEE990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    do
    {
      if (*(*(v3 + 48) + 16 * v5) == a1)
      {
        v8 = sub_20D567838();
        v10 = v9;
        if (v8 == sub_20D567838() && v10 == v11)
        {

          return v5;
        }

        v13 = sub_20D568BF8();

        if (v13)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CEEEAB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_20CEF5EB0(&qword_27C81BFE0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_20D5648C8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_20CEEEBBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_20D568D48();
  sub_20D5678C8();
  v6 = sub_20D568D98();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20D568BF8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20CEEC704();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_20CEEF008(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_20CEEECF8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    sub_20D5663C8();
    v4 = a1;
    v5 = sub_20D5687A8();

    if (v5)
    {
      v6 = sub_20CEEEEA0();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_20CECF940(0, &qword_281120AC0);
  v9 = sub_20D5683E8();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_20D5683F8();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20CEECA98(&unk_27C820C70);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_20CEEF1CC(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_20CEEEEA0()
{
  v1 = v0;

  v2 = sub_20D568768();
  v3 = swift_unknownObjectRetain();
  v4 = sub_20CF806F8(v3, v2);
  v13 = v4;

  v5 = sub_20D5683E8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_20CECF940(0, &qword_281120AC0);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_20D5683F8();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_20CEEF1CC(v7);
  result = sub_20D5683F8();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20CEEF008(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20D5686D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_20D568D48();
        sub_20D5663C8();
        sub_20D5678C8();
        v10 = sub_20D568D98();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_20CEEF1CC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20D5686D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_20D5683E8();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
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

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_20CEEF36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  result = sub_20CEED6E0(a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = result;
      sub_20CF9C6D8();
      result = v22;
      goto LABEL_8;
    }

    sub_20CF97EE8(v19, a6 & 1);
    result = sub_20CEED6E0(a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_14:
      sub_20CECF940(0, &qword_281120AC0);
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = (v24[7] + 32 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v25[3] = a4;
  }

  else
  {
    sub_20CF9C238(result, a5, a1, a2, a3, a4, v24);

    return a5;
  }

  return result;
}

uint64_t sub_20CEEF4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20CEED668(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_20CF9C840();
      v13 = v21;
      goto LABEL_8;
    }

    sub_20CF98158(v18, a5 & 1);
    v13 = sub_20CEED668(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_20CF9C284(v13, a3, a4, a1, a2, v23);

    return sub_20D5663C8();
  }
}

void sub_20CEEF618(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20CEED730(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20CF9C9E0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20CF98440(v13, a3 & 1);
    v8 = sub_20CEED730(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for HUSharedVisualEffectIdentifier(0);
      sub_20D568C68();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_20CF9C2D4(v8, a2, a1, v18);

    v21 = a2;
  }
}

_OWORD *sub_20CEEF74C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CEED668(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20CF9CB40();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20CF98704(v16, a4 & 1);
    v11 = sub_20CEED668(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_20CEC80B0(a1, v22);
  }

  else
  {
    sub_20CF9C318(v11, a2, a3, a1, v21);

    return sub_20D5663C8();
  }
}

uint64_t sub_20CEEF8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_20CEED894(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 32 * v16);
      *v23 = a1;
      v23[1] = a2;
      v23[2] = a3;
      v23[3] = a4;
      return result;
    }

    goto LABEL_11;
  }

  if (v21 >= result && (a6 & 1) == 0)
  {
    result = sub_20CF9CD1C();
    goto LABEL_7;
  }

  sub_20CF98A04(result, a6 & 1);
  result = sub_20CEED894(a5);
  if ((v20 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_20D568C68();
    __break(1u);
    return result;
  }

  v16 = result;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_20CEF9064(a5, v25);
  return sub_20CF9C384(v16, v25, a1, a2, a3, a4, v22);
}

id sub_20CEEFA2C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20CEED730(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20CF9CEB8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20CF98CAC(v13, a3 & 1);
    v8 = sub_20CEED730(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for HFItemResultKey(0);
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_20CF9C2D4(v8, a2, a1, v18);

    return a2;
  }
}

void sub_20CEEFB64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CEED668(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20CF9D01C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20CF98F74(v16, a4 & 1);
    v11 = sub_20CEED668(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_20D568C68();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_20CF9C3E4(v11, a2, a3, a1, v21);

    sub_20D5663C8();
  }
}

id sub_20CEEFCA8(uint64_t a1, void *a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_20CEED8D8(a2, a4, a5);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      v20 = v12;
      sub_20CF9D188();
      v12 = v20;
      goto LABEL_8;
    }

    sub_20CF99218(v17, a3 & 1);
    v12 = sub_20CEED8D8(a2, a4, a5);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  else
  {
    sub_20CF9C42C(v12, a2, a1, v22, a4, a5);

    return a2;
  }
}

void sub_20CEEFE04(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20CEED9B4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20CF9D304();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20CF99524(v13, a3 & 1);
    v8 = sub_20CEED9B4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_20CECF940(0, &qword_27C81BFA8);
      sub_20D568C68();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_20CF9C2D4(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_20CEEFF48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CEED668(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20CF9D464();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20CF9978C(v16, a4 & 1);
    v11 = sub_20CEED668(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_20CF9C3E4(v11, a2, a3, a1, v21);

    return sub_20D5663C8();
  }
}

uint64_t sub_20CEF0090(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20D563818();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_20CEED7C0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_20CF9D5D4();
      goto LABEL_9;
    }

    sub_20CF99A34(v16, a3 & 1);
    v19 = sub_20CEED7C0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_20D568C68();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_20CF9C47C(v13, v10, a1, v21);
  }
}

uint64_t sub_20CEF0274(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20D563818();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20CEED7C0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20CF9DB4C();
      goto LABEL_7;
    }

    sub_20CF9A570(v17, a3 & 1);
    v22 = sub_20CEED7C0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20CF9C558(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20D568C68();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

_OWORD *sub_20CEF0494(_OWORD *a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void), void (*a7)(unint64_t, void *, _OWORD *, uint64_t))
{
  v12 = v7;
  v15 = *v7;
  v16 = sub_20CEED730(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a4();
      v16 = v24;
      goto LABEL_8;
    }

    a5(v21, a3 & 1);
    v16 = sub_20CEED730(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a6(0);
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (*(v26 + 56) + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return sub_20CEC80B0(a1, v27);
  }

  else
  {
    a7(v16, a2, a1, v26);

    return a2;
  }
}

id sub_20CEF060C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_20CEEDE4C(a2, a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_20CF9E724();
      v10 = v18;
      goto LABEL_8;
    }

    sub_20CF9BBCC(v15, a4 & 1);
    v10 = sub_20CEEDE4C(a2, a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    *(v20[7] + 8 * v10) = a1;
  }

  else
  {
    sub_20CF9C3E4(v10, a2, a3, a1, v20);

    return a3;
  }
}

id sub_20CEF0754(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20CEED730(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20CF9E894();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20CF9BE94(v13, a3 & 1);
    v8 = sub_20CEED730(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for HUDashboardSectionIdentifier(0);
      result = sub_20D568C68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 72 * v8;

    return sub_20CEF8F2C(a1, v19);
  }

  else
  {
    sub_20CF9C678(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_20CEF088C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;
    result = sub_20D5663C8();
    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_20D568D48();
      sub_20D5663C8();
      sub_20D5678C8();
      v15 = sub_20D568D98();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_20D568BF8() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

void *sub_20CEF0A68(void *a1, int64_t a2, char a3)
{
  result = sub_20CEF0CB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CEF0A88(void *a1, int64_t a2, char a3)
{
  result = sub_20CEF0E00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CEF0AA8(char *a1, int64_t a2, char a3)
{
  result = sub_20CEF0F34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CEF0AC8(char *a1, int64_t a2, char a3)
{
  result = sub_20CEF1038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CEF0AE8(void *a1, int64_t a2, char a3)
{
  result = sub_20CEF1144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20CEF0B08(size_t a1, int64_t a2, char a3)
{
  result = sub_20CEF144C(a1, a2, a3, *v3, &qword_27C81C0D8, &unk_20D5BCE20, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_20CEF0B4C(size_t a1, int64_t a2, char a3)
{
  result = sub_20CEF144C(a1, a2, a3, *v3, &qword_27C81BF98, &unk_20D5BCCB8, MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

size_t sub_20CEF0B90(size_t a1, int64_t a2, char a3)
{
  result = sub_20CEF144C(a1, a2, a3, *v3, &qword_27C81C120, &unk_20D5BCE50, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  *v3 = result;
  return result;
}

void *sub_20CEF0BD4(void *a1, int64_t a2, char a3)
{
  result = sub_20CEF12F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CEF0BF4(char *a1, int64_t a2, char a3)
{
  result = sub_20CEF1628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20CEF0C14(size_t a1, int64_t a2, char a3)
{
  result = sub_20CEF144C(a1, a2, a3, *v3, &qword_27C81C288, &unk_20D5BCF90, MEMORY[0x277D15CB0]);
  *v3 = result;
  return result;
}

void *sub_20CEF0C58(void *a1, int64_t a2, char a3)
{
  result = sub_20CEF172C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CEF0C78(char *a1, int64_t a2, char a3)
{
  result = sub_20CEF1860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CEF0C98(void *a1, int64_t a2, char a3)
{
  result = sub_20CEF1964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CEF0CB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20CEF0E00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CEF0F34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2B8);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_20CEF1038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D470);
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

void *sub_20CEF1144(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20CEF12F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C170);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20CEF144C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_20CEF1628(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C0C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_20CEF172C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CEF1860(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_20CEF1964(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C020);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20CEF1AAC(void **a1)
{
  v2 = *(type metadata accessor for Utility() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D057C9C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CEF1B54(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20CEF1B54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20D568BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Utility();
        v6 = sub_20D567AE8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Utility() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20CEF1EE8(v8, v9, a1, v4);
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
    return sub_20CEF1C80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CEF1C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for Utility();
  v8 = MEMORY[0x28223BE20](v39);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *a4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_20CEF8F9C(v22, v17, type metadata accessor for Utility);
      sub_20CEF8F9C(v19, v13, type metadata accessor for Utility);
      v23 = *(v17 + 3);
      v37 = *(v17 + 2);
      v38 = v23;
      v24 = *(v13 + 3);
      v35 = *(v13 + 2);
      v36 = v24;
      sub_20CEF44D8();
      v25 = sub_20D5685D8();
      sub_20CEF9004(v13, type metadata accessor for Utility);
      result = sub_20CEF9004(v17, type metadata accessor for Utility);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_20CEF9224(v22, v10, type metadata accessor for Utility);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_20CEF9224(v10, v19, type metadata accessor for Utility);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CEF1EE8(int64_t *a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v5 = v4;
  v110 = a1;
  v122 = type metadata accessor for Utility();
  v117 = *(v122 - 8);
  v8 = MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v106 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v106 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v106 - v16;
  v18 = *(a3 + 8);
  v119 = a3;
  if (v18 >= 1)
  {
    v108 = a4;
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v19 + 1 >= v18)
      {
        v29 = v19 + 1;
      }

      else
      {
        v120 = v18;
        v21 = *(v117 + 72);
        v22 = v19;
        v23 = *a3 + v21 * (v19 + 1);
        v24 = *a3;
        v113 = v5;
        v114 = v24;
        sub_20CEF8F9C(v23, v17, type metadata accessor for Utility);
        sub_20CEF8F9C(v24 + v21 * v22, v14, type metadata accessor for Utility);
        v25 = *(v17 + 3);
        v125 = *(v17 + 2);
        v126 = v25;
        v26 = *(v14 + 3);
        v123 = *(v14 + 2);
        v124 = v26;
        v115 = sub_20CEF44D8();
        v116 = sub_20D5685D8();
        sub_20CEF9004(v14, type metadata accessor for Utility);
        result = sub_20CEF9004(v17, type metadata accessor for Utility);
        v109 = v22;
        v27 = v22 + 2;
        v118 = v21;
        v28 = v114 + v21 * (v22 + 2);
        while (1)
        {
          v29 = v120;
          if (v120 == v27)
          {
            break;
          }

          v30 = v20;
          v31 = v116 == -1;
          sub_20CEF8F9C(v28, v17, type metadata accessor for Utility);
          sub_20CEF8F9C(v23, v14, type metadata accessor for Utility);
          v32 = *(v17 + 3);
          v125 = *(v17 + 2);
          v126 = v32;
          v33 = *(v14 + 3);
          v123 = *(v14 + 2);
          v124 = v33;
          v34 = sub_20D5685D8();
          sub_20CEF9004(v14, type metadata accessor for Utility);
          result = sub_20CEF9004(v17, type metadata accessor for Utility);
          v35 = v31 ^ (v34 != -1);
          v20 = v30;
          ++v27;
          v28 += v118;
          v23 += v118;
          if ((v35 & 1) == 0)
          {
            v29 = v27 - 1;
            break;
          }
        }

        v5 = v113;
        a3 = v119;
        v19 = v109;
        if (v116 == -1)
        {
          if (v29 < v109)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return result;
          }

          if (v109 < v29)
          {
            v107 = v20;
            v36 = v118 * (v29 - 1);
            v37 = v29 * v118;
            v120 = v29;
            v38 = v109;
            v39 = v109 * v118;
            do
            {
              if (v38 != --v29)
              {
                v113 = v5;
                v40 = *v119;
                if (!*v119)
                {
                  goto LABEL_131;
                }

                sub_20CEF9224(v40 + v39, v111, type metadata accessor for Utility);
                if (v39 < v36 || v40 + v39 >= (v40 + v37))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v39 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_20CEF9224(v111, v40 + v36, type metadata accessor for Utility);
                v5 = v113;
              }

              ++v38;
              v36 -= v118;
              v37 -= v118;
              v39 += v118;
            }

            while (v38 < v29);
            a3 = v119;
            v29 = v120;
            v20 = v107;
            v19 = v109;
          }
        }
      }

      v41 = *(a3 + 8);
      if (v29 >= v41)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v29, v19))
      {
        goto LABEL_123;
      }

      if (v29 - v19 >= v108)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v19, v108))
      {
        goto LABEL_124;
      }

      if (v19 + v108 >= v41)
      {
        v42 = *(a3 + 8);
      }

      else
      {
        v42 = v19 + v108;
      }

      if (v42 < v19)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v29 == v42)
      {
LABEL_32:
        v43 = v29;
        if (v29 < v19)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v107 = v20;
        v113 = v5;
        v114 = v42;
        v90 = *a3;
        v91 = *(v117 + 72);
        v92 = *a3 + v91 * (v29 - 1);
        v93 = -v91;
        v109 = v19;
        a3 = v19 - v29;
        v112 = v91;
        v94 = v90 + v29 * v91;
        do
        {
          v120 = v29;
          v115 = v94;
          v116 = a3;
          v95 = v94;
          v118 = v92;
          v96 = v92;
          do
          {
            sub_20CEF8F9C(v95, v17, type metadata accessor for Utility);
            sub_20CEF8F9C(v96, v14, type metadata accessor for Utility);
            v97 = *(v17 + 3);
            v125 = *(v17 + 2);
            v126 = v97;
            v98 = *(v14 + 3);
            v123 = *(v14 + 2);
            v124 = v98;
            sub_20CEF44D8();
            v99 = sub_20D5685D8();
            sub_20CEF9004(v14, type metadata accessor for Utility);
            result = sub_20CEF9004(v17, type metadata accessor for Utility);
            if (v99 != -1)
            {
              break;
            }

            if (!v90)
            {
              goto LABEL_128;
            }

            v100 = v121;
            sub_20CEF9224(v95, v121, type metadata accessor for Utility);
            swift_arrayInitWithTakeFrontToBack();
            sub_20CEF9224(v100, v96, type metadata accessor for Utility);
            v96 += v93;
            v95 += v93;
          }

          while (!__CFADD__(a3++, 1));
          v29 = v120 + 1;
          v92 = v118 + v112;
          a3 = v116 - 1;
          v94 = v115 + v112;
          v43 = v114;
        }

        while (v120 + 1 != v114);
        v5 = v113;
        v20 = v107;
        v19 = v109;
        if (v114 < v109)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v114 = v43;
      if ((result & 1) == 0)
      {
        result = sub_20CEE81E4(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      v45 = *(v20 + 2);
      v44 = *(v20 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        result = sub_20CEE81E4((v44 > 1), v45 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v46;
      v47 = &v20[16 * v45];
      v48 = v114;
      *(v47 + 4) = v19;
      *(v47 + 5) = v48;
      if (!*v110)
      {
        goto LABEL_132;
      }

      if (v45)
      {
        a3 = *v110;
        while (1)
        {
          v19 = v46 - 1;
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_53:
            if (v52)
            {
              goto LABEL_111;
            }

            v65 = &v20[16 * v46];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_114;
            }

            v71 = &v20[16 * v19 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_118;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v19 = v46 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v75 = &v20[16 * v46];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_67:
          if (v70)
          {
            goto LABEL_113;
          }

          v78 = &v20[16 * v19];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_116;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_74:
          v86 = v19 - 1;
          if (v19 - 1 >= v46)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_125;
          }

          if (!*v119)
          {
            goto LABEL_129;
          }

          v87 = *&v20[16 * v86 + 32];
          v88 = *&v20[16 * v19 + 40];
          sub_20CEF2868(*v119 + *(v117 + 72) * v87, *v119 + *(v117 + 72) * *&v20[16 * v19 + 32], *v119 + *(v117 + 72) * v88, a3);
          if (v5)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_20D057C88(v20);
          }

          if (v86 >= *(v20 + 2))
          {
            goto LABEL_108;
          }

          v89 = &v20[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          v127 = v20;
          result = sub_20D057BFC(v19);
          v20 = v127;
          v46 = *(v127 + 2);
          if (v46 <= 1)
          {
            goto LABEL_3;
          }
        }

        v53 = &v20[16 * v46 + 32];
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_109;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_110;
        }

        v60 = &v20[16 * v46];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_112;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_115;
        }

        if (v64 >= v56)
        {
          v82 = &v20[16 * v19 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v51 < v85)
          {
            v19 = v46 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      a3 = v119;
      v18 = v119[1];
      v19 = v114;
      if (v114 >= v18)
      {
        goto LABEL_95;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_95:
  v19 = *v110;
  if (!*v110)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_20D057C88(v20);
    v20 = result;
  }

  v127 = v20;
  v102 = *(v20 + 2);
  if (v102 >= 2)
  {
    while (1)
    {
      v103 = *a3;
      if (!*a3)
      {
        goto LABEL_130;
      }

      v104 = *&v20[16 * v102];
      a3 = *&v20[16 * v102 + 24];
      sub_20CEF2868(v103 + *(v117 + 72) * v104, v103 + *(v117 + 72) * *&v20[16 * v102 + 16], v103 + *(v117 + 72) * a3, v19);
      if (v5)
      {
      }

      if (a3 < v104)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_20D057C88(v20);
      }

      if (v102 - 2 >= *(v20 + 2))
      {
        goto LABEL_121;
      }

      v105 = &v20[16 * v102];
      *v105 = v104;
      *(v105 + 1) = a3;
      v127 = v20;
      result = sub_20D057BFC(v102 - 1);
      v20 = v127;
      v102 = *(v127 + 2);
      a3 = v119;
      if (v102 <= 1)
      {
      }
    }
  }
}

uint64_t sub_20CEF2868(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Utility();
  v9 = MEMORY[0x28223BE20](v8);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v45 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v44 = result;
  v16 = (a2 - a1) / v14;
  v53 = a1;
  v52 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a2;
    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = a4 + v18;
      v40 = v27;
      v41 = a4;
      do
      {
        v38 = v26;
        v29 = v43;
        v42 = v43;
        v43 += v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v53 = v29;
            v51 = v38;
            goto LABEL_59;
          }

          v31 = a3;
          v39 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_20CEF8F9C(v32, v45, type metadata accessor for Utility);
          v34 = v46;
          sub_20CEF8F9C(v43, v46, type metadata accessor for Utility);
          v35 = *(v33 + 24);
          v49 = *(v33 + 16);
          v50 = v35;
          v36 = *(v34 + 24);
          v47 = *(v34 + 16);
          v48 = v36;
          sub_20CEF44D8();
          v37 = sub_20D5685D8();
          sub_20CEF9004(v34, type metadata accessor for Utility);
          sub_20CEF9004(v33, type metadata accessor for Utility);
          if (v37 == -1)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = v32;
          v29 = v42;
          v30 = v32 > v41;
          v27 = v40;
          if (!v30)
          {
            v43 = v42;
            goto LABEL_58;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v27 = v40;
        }

        else
        {
          v26 = v39;
          v27 = v40;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_58:
    v53 = v43;
    v51 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v51 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = v46;
      do
      {
        v21 = a3;
        v22 = v45;
        sub_20CEF8F9C(a2, v45, type metadata accessor for Utility);
        sub_20CEF8F9C(a4, v20, type metadata accessor for Utility);
        v23 = *(v22 + 24);
        v49 = *(v22 + 16);
        v50 = v23;
        v24 = *(v20 + 24);
        v47 = *(v20 + 16);
        v48 = v24;
        sub_20CEF44D8();
        v25 = sub_20D5685D8();
        sub_20CEF9004(v20, type metadata accessor for Utility);
        sub_20CEF9004(v22, type metadata accessor for Utility);
        if (v25 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v53 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_20CF4EC6C(&v53, &v52, &v51);
  return 1;
}

uint64_t sub_20CEF2D8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];
    sub_20D5663C8();
    sub_20D5663C8();
    v20 = sub_20CEED668(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_20D568BF8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20CEF2F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2B0);
    v3 = sub_20D568AD8();

    for (i = (a1 + 40); ; i = (i + 40))
    {
      v12 = i[1];
      v13 = *i;
      v5 = *(i - 1);
      result = sub_20CEED6E0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_20CEF30B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F31D1D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_20D5663C8();
      sub_20CEE9D8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20CEF3148(uint64_t a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CEF5EB0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F31D1D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20CEE9EDC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20CEF3314(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    v5 = sub_20CEF9114();
    result = MEMORY[0x20F31D1D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F31DD20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_20CEEA3F4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20D568768();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20CEF3570(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    v11 = sub_20CECF940(0, j);
    v12 = sub_20CEF7F74(a4, j);
    result = MEMORY[0x20F31D1D0](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x20F31DD20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_20D568768();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20CEF36C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F31D1D0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_20CEEB13C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_20CEF3760(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_20D568768();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_20D568838();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_20D568768();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x20F31DD20](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_20D5683E8();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_20CECF940(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_20D5683F8();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_20D5683E8();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_20CECF940(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_20D5683F8();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_20CEF3A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C308);
    v3 = sub_20D568AD8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_20D5663C8();
      sub_20D5663C8();
      result = sub_20CEED668(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_20CEF3B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE40);
    v3 = sub_20D568AD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CEF9178(v4, &v13, &unk_27C81BE70);
      v5 = v13;
      v6 = v14;
      result = sub_20CEED668(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20CEC80B0(&v15, (v3[7] + 32 * result));
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

uint64_t type metadata accessor for UtilityOnboardingContext()
{
  result = qword_27C81BEE0;
  if (!qword_27C81BEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CEF3E88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_20CEF4010(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D5637A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_20CEF9178(a1, &v21 - v13, &unk_27C8207C0);
  sub_20CEF9178(a2, &v14[v15], &unk_27C8207C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_20CEF9178(v14, v10, &unk_27C8207C0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_20CEF5EB0(&qword_27C81C300, MEMORY[0x277CC9578]);
      v18 = sub_20D5677E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_20CEF928C(v14, &unk_27C8207C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_20CEF928C(v14, &qword_27C81C2F8);
    v17 = 1;
    return v17 & 1;
  }

  sub_20CEF928C(v14, &unk_27C8207C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20CEF4330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEF4450(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

unint64_t sub_20CEF44D8()
{
  result = qword_281120060;
  if (!qword_281120060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120060);
  }

  return result;
}

unint64_t sub_20CEF4550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DEF0);
    v3 = sub_20D568AD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CEF9178(v4, &v13, &qword_27C81C2A0);
      v5 = v13;
      v6 = v14;
      result = sub_20CEED668(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20CEC80B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_20CEF4680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C1A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C1B0);
    v7 = sub_20D568AD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CEF9178(v9, v5, &qword_27C81C1A8);
      result = sub_20CEED7C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20D563818();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20CEF48B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_20D568AD8();
    v8 = a1 + 32;

    while (1)
    {
      sub_20CEF9178(v8, &v15, a4);
      v9 = v15;
      result = sub_20CEED730(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_20CEC80B0(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_20CEF49C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C230);
    v3 = sub_20D568AD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CEF9178(v4, v13, &qword_27C81D8D0);
      result = sub_20CEED894(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_20CEC80B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_20CEF4B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C210);
    v3 = sub_20D568AD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CEF9178(v4, v15, &qword_27C81C218);
      result = sub_20CEED894(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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

unint64_t sub_20CEF4C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BFB0);
    v3 = sub_20D568AD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_20CEED9B4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_20CEF4D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BFA0);
    v3 = sub_20D568AD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_20D5663C8();
      v8 = v7;
      result = sub_20CEED668(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_20CEF4E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C188);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C190);
    v7 = sub_20D568AD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_20CEF9178(v9, v5, &qword_27C81C188);
      result = sub_20CEED7C0(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_20D563818();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20CEF503C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C110);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DEB0);
    v7 = sub_20D568AD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CEF9178(v9, v5, &unk_27C81C110);
      result = sub_20CEEDA04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
      result = sub_20CEF9224(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20CEF5234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEA0);
    v3 = sub_20D568AD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CEF9178(v4, &v11, &qword_27C81C0B0);
      v5 = v11;
      result = sub_20CEEDBC8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20CEC80B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_20CEF535C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C0A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE90);
    v7 = sub_20D568AD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CEF9178(v9, v5, &unk_27C81C0A0);
      result = sub_20CEED7C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20D563818();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_20D564518();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_20CEF557C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C0B8);
  v3 = sub_20D568AD8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_20CEEDC18(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_20D5663C8();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 2 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 4);
    v15 = *v10;
    sub_20D5663C8();
    v8 = sub_20CEEDC18(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20CEF568C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C090);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE70);
    v7 = sub_20D568AD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CEF9178(v9, v5, &unk_27C81C090);
      result = sub_20CEEDCA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20D563FC8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20CEF5874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C080);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE80);
    v7 = sub_20D568AD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CEF9178(v9, v5, &unk_27C81C080);
      result = sub_20CEEDD78(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20D564868();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_20D563CF8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20CEF5A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF10);
    v3 = sub_20D568AD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_20D5663C8();
      result = sub_20CEED668(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_20CEF5BA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_20D568AD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_20D5663C8();
      sub_20D5663C8();
      result = sub_20CEED668(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_20CEF5CA0()
{
  result = qword_27C81BE80;
  if (!qword_27C81BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81BE80);
  }

  return result;
}

uint64_t sub_20CEF5CF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2E0);
    v3 = sub_20D568838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20D568D48();
      sub_20D5663C8();
      sub_20D5678C8();
      result = sub_20D568D98();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20D568BF8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_20CEF5E5C()
{
  result = qword_27C81BE90;
  if (!qword_27C81BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81BE90);
  }

  return result;
}

uint64_t sub_20CEF5EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CEF5EF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20CEF5F4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CEF5FFC;

  return sub_20CF1E050(a1, a2, v6);
}

uint64_t sub_20CEF5FFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_20CEF616C(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CEF6180()
{
  result = qword_27C81BEC8;
  if (!qword_27C81BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81BEC8);
  }

  return result;
}

unint64_t sub_20CEF61D8()
{
  result = qword_27C81BED0;
  if (!qword_27C81BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81BED0);
  }

  return result;
}

void sub_20CEF6234()
{
  sub_20CEF7EF8();
  if (v0 <= 0x3F)
  {
    sub_20D563948();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of UtilityOnboardingContext.submitTAF(fields:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x5C8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF934C;

  return v7(a1);
}

uint64_t dispatch thunk of UtilityOnboardingContext.verifyAddressAndSubmitTAF()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x5D0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF934C;

  return v5();
}

uint64_t dispatch thunk of UtilityOnboardingContext.requestOTP()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x5D8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF7788;

  return v5();
}

uint64_t sub_20CEF7788(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of UtilityOnboardingContext.verifyOTP(otpCode:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x5E0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CEF9350;

  return v9(a1, a2);
}

uint64_t dispatch thunk of UtilityOnboardingContext.createAccessToken(authCode:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x5E8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CEF5FFC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of UtilityOnboardingContext.fetchServiceLocations()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x5F0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF7788;

  return v5();
}

uint64_t dispatch thunk of UtilityOnboardingContext.createSubscription(serviceLocationID:address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x5F8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20CEF9350;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UtilityOnboardingContext.format(foundUtilities:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x608);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF934C;

  return v7(a1);
}

void sub_20CEF7EF8()
{
  if (!qword_27C81BEF0)
  {
    sub_20D5637A8();
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81BEF0);
    }
  }
}

uint64_t sub_20CEF7F74(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_20CECF940(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CEF7FC4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20D568768())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C1A0);
      v3 = sub_20D568838();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20D568768();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v34 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v32 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F31DD20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_20D5683E8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = *(v6 + 8 * v14);
      v16 = 1 << (v11 & v12);
      if ((v16 & v15) != 0)
      {
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
          v17 = *(*(v3 + 48) + 8 * v13);
          v18 = sub_20D5683F8();

          if (v18)
          {
            swift_unknownObjectRelease();
            v5 = v34;
            goto LABEL_12;
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while (((1 << v13) & v15) != 0);
        v5 = v34;
      }

      *(v6 + 8 * v14) = v16 | v15;
      *(*(v3 + 48) + 8 * v13) = v10;
      v19 = *(v3 + 16);
      v9 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v9)
      {
        goto LABEL_32;
      }

      *(v3 + 16) = v20;
LABEL_12:
      v1 = v32;
      if (v7 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v21 = 0;
    v31 = v1 + 32;
    v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v21 != v33)
    {
      v22 = *(v31 + 8 * v21);
      v23 = sub_20D5683E8();
      v24 = ~(-1 << *(v3 + 32));
      for (i = v23 & v24; ; i = (i + 1) & v24)
      {
        v26 = *(v6 + 8 * (i >> 6));
        if (((1 << i) & v26) == 0)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
        v27 = *(*(v3 + 48) + 8 * i);
        v28 = sub_20D5683F8();

        if (v28)
        {

          goto LABEL_22;
        }
      }

      *(v6 + 8 * (i >> 6)) = (1 << i) | v26;
      *(*(v3 + 48) + 8 * i) = v22;
      v29 = *(v3 + 16);
      v9 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v9)
      {
        goto LABEL_34;
      }

      *(v3 + 16) = v30;
LABEL_22:
      if (++v21 == v34)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20CEF82A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C278);
    v3 = sub_20D568838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_20D568D48();
      MEMORY[0x20F31E200](v10);
      result = sub_20D568D98();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20CEF83DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820C50);
    v3 = sub_20D568838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_20CEF9064(v6 + 40 * v4, v19);
      result = sub_20D5687D8();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_20CEF9064(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x20F31DC90](v18, v19);
        result = sub_20CEF90C0(v18);
        if (v11)
        {
          sub_20CEF90C0(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_20CEF8584(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20D568768())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BF80);
      v3 = sub_20D568838();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20D568768();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_20CEE7B20(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_20D5683E8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_20CECF940(0, &qword_28111FFF0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_20D5683F8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_20D5683E8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_20CECF940(0, &qword_28111FFF0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_20D5683F8();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_20CEF8898()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage);
  *(v1 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage) = v2;
  v4 = v2;
}

uint64_t sub_20CEF88D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF934C;

  return sub_20CEE3D8C(v2, v3, v4);
}

uint64_t sub_20CEF898C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D11C0E0(a1, v4, v5, v6);
}

uint64_t sub_20CEF8A58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CEE1B00(v2, v3);
}

uint64_t sub_20CEF8B04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF934C;

  return sub_20D11BFF8(v2, v3, v4);
}

uint64_t objectdestroy_202Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEF8C04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CEE0C98(v2, v3);
}

uint64_t objectdestroy_193Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEF8CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C100);
    v3 = sub_20D568838();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_20D567838();
      sub_20D568D48();
      v27 = v7;
      sub_20D5678C8();
      v8 = sub_20D568D98();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_20D567838();
        v18 = v17;
        if (v16 == sub_20D567838() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_20D568BF8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20CEF8F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEF8F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEF9004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEF9114()
{
  result = qword_28111FFB0;
  if (!qword_28111FFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81AF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28111FFB0);
  }

  return result;
}

uint64_t sub_20CEF9178(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEF91E0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__availableUtilities) = *(v0 + 24);
  sub_20D5663C8();
}

uint64_t sub_20CEF9224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEF928C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id InstructionItemModule.__allocating_init(itemUpdater:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  sub_20CECF940(0, &qword_27C820E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
  inited = swift_initStackObject();
  v10 = *MEMORY[0x277D13E20];
  *(inited + 32) = *MEMORY[0x277D13E20];
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  v11 = v10;
  sub_20CEF452C(inited);
  swift_setDeallocating();
  sub_20CEF9928(inited + 32);
  *&v8[OBJC_IVAR___HUInstructionItemModule_instructionItem] = sub_20D567E48();
  v14.receiver = v8;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_initWithItemUpdater_, a1);
  swift_unknownObjectRelease();
  return v12;
}

id InstructionItemModule.init(itemUpdater:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_20CECF940(0, &qword_27C820E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
  inited = swift_initStackObject();
  v9 = *MEMORY[0x277D13E20];
  *(inited + 32) = *MEMORY[0x277D13E20];
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  v10 = v9;
  sub_20CEF452C(inited);
  swift_setDeallocating();
  sub_20CEF9928(inited + 32);
  *&v4[OBJC_IVAR___HUInstructionItemModule_instructionItem] = sub_20D567E48();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for InstructionItemModule();
  v11 = objc_msgSendSuper2(&v13, sel_initWithItemUpdater_, a1);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_20CEF95E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  v2 = *(v0 + OBJC_IVAR___HUInstructionItemModule_instructionItem);
  *(inited + 32) = v2;
  v3 = v2;
  sub_20CEF302C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v5 = sub_20D567CD8();

  v6 = [v4 initWithItems_];

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_20D5BA040;
  *(v7 + 32) = v6;
  sub_20CEF7FC4(v7);
  v9 = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

id InstructionItemModule.__allocating_init(itemUpdater:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithItemUpdater_];
  swift_unknownObjectRelease();
  return v2;
}

id InstructionItemModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstructionItemModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CEF9928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CEF99B4()
{
  result = qword_281120AB0;
  if (!qword_281120AB0)
  {
    sub_20CECF940(255, &qword_281120AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120AB0);
  }

  return result;
}

__n128 sub_20CEF9A1C()
{
  v1 = objc_allocWithZone(MEMORY[0x277D14850]);
  v2 = sub_20D5677F8();
  v3 = [v1 initWithIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20D5BA040;
  v5 = *(v0 + OBJC_IVAR___HUInstructionItemModule_instructionItem);
  *(v4 + 32) = v5;
  sub_20CECF940(0, &qword_281120AC0);
  v6 = v5;
  v7 = sub_20D567A58();

  [v3 setItems_];

  v8 = swift_allocObject();
  result = xmmword_20D5BA040;
  *(v8 + 16) = xmmword_20D5BA040;
  *(v8 + 32) = v3;
  return result;
}

id CollectionLayoutManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20CEF9BB4(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v23 = MEMORY[0x277D84F90];
    sub_20CEF0A68(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v23;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F31DD20](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v20 = v11;
      a1(&v21, &v20);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v21;
      v13 = v22;
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v4 = (v15 + 1);
      if (v15 >= v14 >> 1)
      {
        v18 = v22;
        v17 = v21;
        sub_20CEF0A68((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v13 = v18;
        v9 = v23;
      }

      *(v9 + 16) = v4;
      v16 = v9 + 24 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_20CEF9D64(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  sub_20CEF0AC8(0, v4, 0);
  v5 = v18;
  v7 = *(type metadata accessor for ControlCenterModuleConfiguration.ElementID(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_20CEF0AC8((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEF9EC0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_20CEF0B90(0, v10, 0);
  v11 = v21;
  v12 = *(sub_20D564A48() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_20CEF0B90(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_20CEFF99C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEFA0F0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CEFA150(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HUCollectionLayoutManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t sub_20CEFA1E8()
{
  v1 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CEFA22C(char a1)
{
  v3 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_20CEFA2E4()
{
  sub_20D568858();
  MEMORY[0x20F31CDB0](0xD000000000000031, 0x800000020D5CD1E0);
  MEMORY[0x20F31CDB0](0xD000000000000015, 0x800000020D5CD220);
  sub_20D5689B8();
  sub_20D568A58();
  __break(1u);
}

void sub_20CEFA3C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v39 = sub_20D566268();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20D566288();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 8);
  v44 = *a3;
  v15 = *(a3 + 16);
  v16 = *((*MEMORY[0x277D85000] & *v5) + 0x1A8);
  v42 = a4;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = a1;
    v20 = a2;
    v21 = sub_20D5677F8();
    v22 = [v18 displayedItemsInSection_];

    swift_unknownObjectRelease();
    sub_20CECF940(0, &qword_281120AC0);
    v23 = sub_20D567A78();
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v23 = MEMORY[0x277D84F90];
  }

  v43 = v15;
  if (!v15)
  {
    v25 = v44;
    v28 = sub_20CEFC35C(v23, v44, v42);

    v24 = v20;
    v26 = v19;
    v27 = v14;
    goto LABEL_22;
  }

  v24 = v20;
  if (v15 == 1)
  {
    v25 = v44;
    *&v47 = v44;
    *(&v47 + 1) = v14;
    LOBYTE(v48) = 1;
    v26 = v19;
    v27 = v14;
    v28 = (*((*MEMORY[0x277D85000] & *v5) + 0xB0))(&v47, v23, v26, v24, v42);

    sub_20D5663C8();
LABEL_22:
    v36 = v43;
    sub_20CEFF424(v25, v27, v43);
    sub_20CEFF424(6, 0, 2);
    *&v47 = v25;
    *(&v47 + 1) = v27;
    LOBYTE(v48) = v36;
    sub_20CEFB924(v28, &v47, v26, v24);
    return;
  }

  v26 = v19;
  v25 = v44;
  v27 = v14;
  if (v44 <= 2)
  {
    if (!(v44 | v14))
    {

      (*(v38 + 104))(v11, *MEMORY[0x277D74D50], v39);
      sub_20D566278();
      sub_20CECF940(0, &qword_27C81C378);
      v28 = sub_20D568278();
      (*(v40 + 8))(v13, v41);
      goto LABEL_22;
    }

    v35 = sub_20CEFE7F0(v42, sub_20CF00914);
LABEL_21:
    v28 = v35;

    goto LABEL_22;
  }

  if (v44 > 4)
  {
    if (v44 ^ 5 | v14)
    {

      sub_20CEFF264(63.0);
      sub_20CEFF424(v25, v14, 2);
      sub_20CEFF424(v25, v14, 2);
      return;
    }

    goto LABEL_18;
  }

  if (v44 ^ 3 | v14)
  {
    v35 = sub_20CEFEB34();
    goto LABEL_21;
  }

  if (v23 >> 62)
  {
    if (sub_20D568768())
    {
      goto LABEL_13;
    }

LABEL_18:

    v28 = sub_20CEFF264(1.0);
    goto LABEL_22;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  v29 = *(v5 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v29)
  {
    v30 = v24;
    v31 = *((*MEMORY[0x277D85000] & *v5) + 0xD0);
    v32 = v29;
    v33 = v42;
    v31(&v47, v23, v42);
    v45[2] = v49;
    v45[3] = v50;
    v46 = v51;
    v45[0] = v47;
    v45[1] = v48;
    v34 = [v33 traitCollection];
    v28 = sub_20CEFCF8C(v45, v23, v32, v34);

    sub_20CEF928C(&v47, &qword_27C81C370);
    v24 = v30;
    v25 = v44;
    goto LABEL_22;
  }

  __break(1u);
}

id sub_20CEFAA2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v9 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v9;
  v24 = *(a3 + 64);
  v10 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v10;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = sub_20D5677F8();
      v15 = [v13 displayedItemsInSection_];

      swift_unknownObjectRelease();
      sub_20CECF940(0, &qword_281120AC0);
      v11 = sub_20D567A78();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }
  }

  v16 = *((*MEMORY[0x277D85000] & *v5) + 0x1A8);
  sub_20D5663C8();
  v17 = v16(a4);
  v18 = [a4 traitCollection];
  v19 = sub_20CEFCF8C(v23, v11, v17, v18);

  v21 = xmmword_20D5BA030;
  v22 = 2;
  sub_20CEFB924(v19, &v21, a1, a2);
  return v19;
}

uint64_t sub_20CEFABF8(unint64_t a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))(a2);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = sub_20CEFF264(1.0);
    goto LABEL_7;
  }

  result = sub_20D568768();
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(v2 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v8)
  {
    v9 = *((*v5 & *v2) + 0xD0);
    v10 = v8;
    v9(v21, a1, a2);
    v11 = [a2 traitCollection];
    v12 = sub_20CEFCF8C(&v20, a1, v10, v11);

    sub_20CEF928C(v21, &qword_27C81C370);
LABEL_7:
    [v6 sectionTopMargin];
    v14 = v13;
    [v6 sectionLeadingMargin];
    v16 = v15;
    [v6 sectionBottomMargin];
    v18 = v17;
    [v6 sectionTrailingMargin];
    [v12 setContentInsets_];

    return v12;
  }

  __break(1u);
  return result;
}

void sub_20CEFAEA4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x277D85000];
  if (a2)
  {
    v7 = v3;
    v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x1A8))(a2);
  }

  else
  {
    v9 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
    if (!v9)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v7 = v3;
    v8 = v9;
  }

  v28 = v8;
  if (a1 >> 62)
  {
    v10 = sub_20D568768();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v30 = MEMORY[0x277D84F90];
    sub_20CEF0A68(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v12 = 0;
    v13 = v30;
    v29 = *((*v6 & *v7) + 0x128);
    v14 = a1;
    do
    {
      v15 = v10;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x20F31DD20](v12, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v29();
      v31 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        v27 = v18;
        v23 = v19;
        sub_20CEF0A68((v20 > 1), v21 + 1, 1);
        v19 = v23;
        v18 = v27;
        v13 = v31;
      }

      ++v12;
      *(v13 + 16) = v21 + 1;
      v22 = (v13 + 24 * v21);
      v22[4] = v17;
      v22[5] = v18;
      v22[6] = v19;
      v10 = v15;
      v14 = a1;
    }

    while (v15 != v12);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v24 = [v28 numberOfColumns];
  *a3 = sub_20CEF2F30(v11);
  *(a3 + 64) = v11;
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v26 = sub_20D567AE8();
    *(v26 + 16) = v24;
    bzero((v26 + 32), 8 * v24);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  *(a3 + 8) = v24;
  *(a3 + 16) = v26;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v25;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  sub_20CEFB16C(v13, 0, 0, 1);
}

void sub_20CEFB16C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = 0;
  v11 = v4[1];
  v83 = v4[3];
  v84 = a1 + 32;
  v82 = *(v4 + 32);
  v81 = v4[6];
  v80 = *(v4 + 56);
  v77 = v11;
  v73 = *(a1 + 16);
  while (1)
  {
    v85 = v10;
    v14 = v84 + 24 * v10;
    v15 = *(v14 + 8);
    v91 = *v14;
    v16 = *(v14 + 16);
    v17 = *v6;
    v18 = v6[2];
    v19 = v6[5];
    v20 = v6[8];
    v105 = v82;
    v103 = v80;
    v115 = v17;
    v116 = v11;
    v92 = v18;
    v117 = v18;
    v118 = v83;
    v119 = v82;
    *v120 = *v104;
    *&v120[3] = *&v104[3];
    v121 = v19;
    v122 = v81;
    v123 = v80;
    v21 = v11;
    *&v124[3] = *&v102[3];
    *v124 = *v102;
    v125 = v20;
    sub_20CF930DC(v15, v16, &v99);
    if (v7)
    {
      v22 = v21;
      v11 = v21;
      if ((v101 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if (v15 == v9)
    {
      v11 = v21;
      v22 = v21;
      if (v16 == v8)
      {
        if ((v101 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }
    }

    v40 = *v6;
    v22 = v6[1];
    v42 = v6[2];
    v41 = v6[3];
    v19 = v6[5];
    v43 = v6[6];
    v44 = *(v6 + 56);
    v45 = v6[8];
    v98 = *(v6 + 32);
    v97 = v44;
    v106 = v40;
    v107 = v22;
    v92 = v42;
    v108 = v42;
    v109 = v41;
    v110 = v98;
    v111 = v19;
    v112 = v43;
    v113 = v44;
    v114 = v45;
    sub_20CF930DC(v9, v8, v95);
    if ((v96 & 1) == 0)
    {
      break;
    }

    v11 = v77;
    if ((v101 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_7:
    v10 = v85 + 1;
    if (v85 + 1 == v5)
    {
      return;
    }
  }

  if (v101)
  {
    goto LABEL_90;
  }

  if (*(v6 + 56) == 1)
  {
    v68 = *&v95[0] < v99;
    if (*&v95[0] == v99)
    {
      v68 = *(&v95[0] + 1) < *(&v99 + 1);
    }
  }

  else
  {
    v69 = v6[6];
    v70 = floor(*&v95[0] / v69);
    if (v70 <= -9.22337204e18)
    {
      goto LABEL_114;
    }

    if (v70 >= 9.22337204e18)
    {
      goto LABEL_115;
    }

    v71 = floor(v99 / v69);
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_116;
    }

    if (v71 <= -9.22337204e18)
    {
      goto LABEL_117;
    }

    if (v71 >= 9.22337204e18)
    {
      goto LABEL_118;
    }

    v68 = v70 < v71;
    if (*&v70 == *&v71)
    {
      v68 = v95[0] < v99;
    }
  }

  if (v68)
  {
LABEL_90:
    v99 = v95[0];
    v100 = v95[1];
    v101 = 0;
  }

  v11 = v77;
  if (v101)
  {
    goto LABEL_7;
  }

LABEL_14:
  v23 = v99;
  v24 = v99 + v100;
  if (__OFADD__(v99, v100))
  {
    goto LABEL_108;
  }

  if (v24 < v99)
  {
    goto LABEL_109;
  }

  v78 = v99;
  v79 = v100;
  if (v99 == v24)
  {
    v25 = v91;
    v26 = v91;
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v95[0] = *v6;
    v28 = *&v95[0];
    v29 = sub_20CEED6E0(v25);
    v31 = *(v28 + 16);
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    v7 = a4;
    v9 = a2;
    v8 = a3;
    v5 = v73;
    if (v33)
    {
      goto LABEL_110;
    }

    v35 = v30;
    if (*(v28 + 24) >= v34)
    {
      v38 = v78;
      v37 = v79;
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = *&v95[0];
        if ((v30 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v72 = v29;
        sub_20CF9C6D8();
        v38 = v78;
        v37 = v79;
        v29 = v72;
        v39 = *&v95[0];
        if ((v35 & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      sub_20CF97EE8(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_20CEED6E0(v25);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_119;
      }

      v38 = v78;
      v37 = v79;
      v39 = *&v95[0];
      if ((v35 & 1) == 0)
      {
LABEL_73:
        v39[(v29 >> 6) + 8] |= 1 << v29;
        *(v39[6] + 8 * v29) = v25;
        v64 = (v39[7] + 32 * v29);
        *v64 = v38;
        v64[1] = v37;
        v65 = v39[2];
        v33 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v33)
        {
          goto LABEL_113;
        }

        v39[2] = v66;
        v67 = v25;
        goto LABEL_4;
      }
    }

    v12 = (v39[7] + 32 * v29);
    *v12 = v38;
    v12[1] = v37;
LABEL_4:
    *v6 = v39;
    v13 = v25;
    MEMORY[0x20F31CEE0]();
    if (*((v6[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();

    v11 = v77;
    goto LABEL_7;
  }

  v46 = *(&v99 + 1);
  v47 = *(&v99 + 1) + *(&v100 + 1);
  if (__OFADD__(*(&v99 + 1), *(&v100 + 1)))
  {
    goto LABEL_111;
  }

  if (v47 < *(&v99 + 1))
  {
    goto LABEL_112;
  }

  v90 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v92 = sub_20CF3B7D4(v92);
  }

  v6[2] = v92;
  v94 = v92 + 32;
  v87 = v23 + 1;
  v88 = v46;
  v86 = v24;
  while (v23 < v24)
  {
    v93 = v23 + 1;
    v48 = v46;
    if (v46 != v47)
    {
      while (v48 < v47)
      {
        if (v48 < v22)
        {
          v50 = v19[2];
          if (__OFSUB__(v93, v50))
          {
            goto LABEL_99;
          }

          if (v93 - v50 >= 1)
          {
            if (v22 < 0)
            {
              goto LABEL_106;
            }

            v51 = v87 - v50;
            do
            {
              if (v22)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C81C3E8);
                v52 = sub_20D567AE8();
                *(v52 + 16) = v22;
                bzero((v52 + 32), 8 * v22);
              }

              else
              {
                v52 = MEMORY[0x277D84F90];
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_20CEE7E00(0, v19[2] + 1, 1, v19);
              }

              v54 = v19[2];
              v53 = v19[3];
              if (v54 >= v53 >> 1)
              {
                v19 = sub_20CEE7E00((v53 > 1), v54 + 1, 1, v19);
              }

              v19[2] = v54 + 1;
              v19[v54 + 4] = v52;
              --v51;
            }

            while (v51);
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v23 < 0)
            {
              goto LABEL_100;
            }
          }

          else
          {
            v19 = sub_20CF3B7FC(v19);
            if (v23 < 0)
            {
              goto LABEL_100;
            }
          }

          if (v23 >= v19[2])
          {
            goto LABEL_101;
          }

          v55 = v19 + 4;
          v56 = v19[v23 + 4];
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v19[v23 + 4] = v56;
          if (v57)
          {
            if (v48 < 0)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v56 = sub_20CF3B7E8();
            v55[v23] = v56;
            if (v48 < 0)
            {
              goto LABEL_102;
            }
          }

          if (v48 >= *(v56 + 16))
          {
            goto LABEL_103;
          }

          v58 = v56 + 8 * v48;
          v59 = *(v58 + 32);
          *(v58 + 32) = v91;
          v60 = v90;

          v89[5] = v19;
          if (v48 >= *(v92 + 2))
          {
            goto LABEL_104;
          }

          v49 = *&v94[8 * v48];
          v61 = v19[2];
          if (v61 < v49)
          {
            goto LABEL_105;
          }

          if (v49 < v61)
          {
            v62 = *&v94[8 * v48];
            while ((v49 & 0x8000000000000000) == 0)
            {
              v63 = v55[v62];
              if (v48 >= *(v63 + 16))
              {
                goto LABEL_97;
              }

              if (!*(v63 + 8 * v48 + 32))
              {
                v49 = v62;
                goto LABEL_36;
              }

              if (v61 == ++v62)
              {
                v49 = v19[2];
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_97:
            __break(1u);
            break;
          }

LABEL_36:
          *&v94[8 * v48] = v49;
          v46 = v88;
        }

        if (++v48 == v47)
        {
          goto LABEL_31;
        }
      }

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
      break;
    }

LABEL_31:
    v24 = v86;
    ++v87;
    ++v23;
    if (v93 == v86)
    {

      v6 = v89;
      v25 = v91;
      v89[2] = v92;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
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
  sub_20CECF940(0, &qword_281120AC0);
  sub_20D568C68();
  __break(1u);
}

void sub_20CEFB924(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v5)
  {
    v9 = *(a2 + 16);
    v71 = *a2;
    v72 = v9;
    v10 = *((*MEMORY[0x277D85000] & *v4) + 0x180);
    v11 = v5;
    v10(v73, &v71, a3, a4);
    if ((v74 & 1) == 0)
    {
      [a1 setContentInsets_];
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v69 = v11;
      v14 = [a1 boundarySupplementaryItems];
      sub_20CECF940(0, qword_28111FBA0);
      v15 = sub_20D567A78();

      v68 = a1;
      v70 = v13;
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
LABEL_53:
        v17 = sub_20D568768();
      }

      else
      {
        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = 0;
      v19 = *MEMORY[0x277D767D8];
      do
      {
        v20 = v18;
        if (v17 == v18)
        {
          break;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x20F31DD20](v18, v15);
        }

        else
        {
          if (v18 >= *(v16 + 16))
          {
            goto LABEL_50;
          }

          v21 = *(v15 + 8 * v18 + 32);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v23 = [v21 elementKind];
        v24 = sub_20D567838();
        v26 = v25;

        if (v24 == sub_20D567838() && v26 == v27)
        {

          break;
        }

        v29 = sub_20D568BF8();

        v18 = v20 + 1;
      }

      while ((v29 & 1) == 0);

      v30 = sub_20D5677F8();
      v31 = [v70 shouldShowHeaderForSection_];

      if (v17 == v20 && v31)
      {
        v32 = objc_opt_self();
        v33 = [v32 fractionalWidthDimension_];
        [v69 sectionHeaderCellHeight];
        v34 = [v32 estimatedDimension_];
        v35 = [objc_opt_self() sizeWithWidthDimension:v33 heightDimension:v34];

        v36 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v35 elementKind:v19 alignment:1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20D5BA040;
        *(inited + 32) = v36;
        v38 = v36;
        v39 = [v68 boundarySupplementaryItems];
        v15 = sub_20D567A78();

        sub_20CF6BDB0(inited);
        v40 = sub_20D567A58();

        [v68 setBoundarySupplementaryItems_];
      }

      v41 = [v68 boundarySupplementaryItems];
      v42 = sub_20D567A78();

      v16 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v42 >> 62)
      {
        v43 = sub_20D568768();
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = 0;
      v45 = *MEMORY[0x277D767D0];
      do
      {
        v46 = v44;
        if (v43 == v44)
        {
          break;
        }

        if ((v42 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x20F31DD20](v44, v42);
        }

        else
        {
          if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v47 = *(v42 + 8 * v44 + 32);
        }

        v48 = v47;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_51;
        }

        v49 = [v47 elementKind];
        v50 = sub_20D567838();
        v52 = v51;

        v53 = sub_20D567838();
        v15 = v54;
        if (v50 == v53 && v52 == v54)
        {

          break;
        }

        v56 = sub_20D568BF8();

        v44 = v46 + 1;
      }

      while ((v56 & 1) == 0);

      if ([v70 respondsToSelector_] & 1) != 0 && (swift_unknownObjectRetain(), v57 = sub_20D5677F8(), v58 = objc_msgSend(v70, sel_shouldShowFooterForSection_, v57), swift_unknownObjectRelease(), v57, (v58) && v43 == v46)
      {
        v59 = objc_opt_self();
        v60 = [v59 fractionalWidthDimension_];
        [v69 sectionBottomMargin];
        v61 = [v59 estimatedDimension_];
        v62 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v61];

        v63 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v62 elementKind:v45 alignment:5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v64 = swift_initStackObject();
        *(v64 + 16) = xmmword_20D5BA040;
        *(v64 + 32) = v63;
        v65 = v63;
        v66 = [v68 boundarySupplementaryItems];
        sub_20D567A78();

        sub_20CF6BDB0(v64);
        v67 = sub_20D567A58();

        [v68 setBoundarySupplementaryItems_];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_20CEFC0B8()
{
  v0 = [objc_opt_self() prominentInsetGroupedHeaderConfiguration];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  result = [v0 setDirectionalLayoutMargins_];
  qword_27C81C340 = v0;
  return result;
}

id sub_20CEFC1A8()
{
  v0 = [objc_opt_self() groupedFooterConfiguration];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  result = [v0 setDirectionalLayoutMargins_];
  qword_27C81C348 = v0;
  return result;
}

id sub_20CEFC274(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_20CEFC2F8(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_20CEFC35C(id result, uint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (!v4)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = v4;
  v9 = [v8 numberOfColumns];
  if (a2 != 2)
  {
    [v8 pointWidthForNumberOfColumns_];
    v13 = v18;
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v10 = v9 / 2;
  if (v7 >> 62)
  {
    v11 = sub_20D568768();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v8 pointWidthForNumberOfColumns_];
  v13 = v12;
  if (v10 >= v11)
  {
    goto LABEL_8;
  }

  [v8 sectionTrailingMargin];
  v15 = v14;
  [v8 columnSpacing];
  v13 = v13 - (v16 - v15 + 26.0) / v10;
  v17 = 1;
LABEL_9:
  if (v13 >= 1.0)
  {
    v21 = v13;
  }

  else
  {
    v19 = sub_20D567EA8();
    if (qword_28111FAD0 != -1)
    {
      swift_once();
    }

    v20 = qword_281120C08;
    v21 = 20.0;
    if (os_log_type_enabled(qword_281120C08, v19))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 134349570;
      *(v22 + 4) = v13;
      *(v22 + 12) = 1026;
      *(v22 + 14) = v17;
      *(v22 + 18) = 2114;
      *(v22 + 20) = v8;
      *v23 = v4;
      v24 = v8;
      _os_log_impl(&dword_20CEB6000, v20, v19, "CollectionLayoutManager: itemWidth is negative (%{public}f), scenesSectionNeedsScrolling:(%{BOOL,public}d), layoutOptions:(%{public}@)", v22, 0x1Cu);
      sub_20CEF928C(v23, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v23, -1, -1);
      MEMORY[0x20F31FC70](v22, -1, -1);
    }
  }

  v25 = objc_opt_self();
  v26 = &selRef__updateStatusTextNotifyingDelegate_;
  v27 = [v25 absoluteDimension_];
  v28 = [v25 fractionalHeightDimension_];
  v29 = objc_opt_self();
  v30 = [v29 sizeWithWidthDimension:v27 heightDimension:v28];

  v31 = [objc_opt_self() itemWithLayoutSize_];
  v32 = [a3 traitCollection];
  *&v33 = COERCE_DOUBLE(sub_20CEFE4F0(v32, sub_20CEFC904));
  v35 = v34;

  v36 = [v8 sceneCellOptions];
  [v36 cellHeight];
  v38 = v37;

  if (v17)
  {
    v39 = [v31 layoutSize];
    v40 = [v39 widthDimension];

    v26 = &selRef__updateStatusTextNotifyingDelegate_;
  }

  else
  {
    v40 = [v25 fractionalWidthDimension_];
  }

  v41 = *&v33;
  if (v35)
  {
    v41 = 0.0;
  }

  if (v38 <= v41)
  {
    v38 = v41;
  }

  v42 = v40;
  v43 = [v25 v26[114]];
  v44 = [v29 sizeWithWidthDimension:v42 heightDimension:v43];

  v45 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20D5BA040;
  *(v46 + 32) = v31;
  sub_20CECF940(0, &qword_28111FE40);
  v47 = v31;
  v48 = sub_20D567A58();

  v49 = [v45 horizontalGroupWithLayoutSize:v44 subitems:v48];

  v50 = objc_opt_self();
  [v8 columnSpacing];
  v51 = [v50 fixedSpacing_];
  [v49 setInterItemSpacing_];

  v52 = [objc_opt_self() sectionWithGroup_];
  [v8 rowSpacing];
  [v52 setInterGroupSpacing_];
  [v52 setOrthogonalScrollingBehavior_];

  return v52;
}

uint64_t sub_20CEFC904(uint64_t result)
{
  *(result + 32) = 1;
  *(result + 176) = 1;
  *(result + 96) = 2;
  return result;
}

uint64_t sub_20CEFC91C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x128))(a1);

  return v3;
}

uint64_t sub_20CEFC9BC(void *a1)
{
  v46 = &unk_28251AC90;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    [v3 accessoryRepresentableObject];
    swift_getObjectType();
    v4 = sub_20D567EF8();
    v5 = sub_20CEFE0E8(v4);
    v7 = v6;

    if (v7)
    {
      v8 = sub_20D568198();
      v5 = sub_20CEFE250();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v5;
  }

  v9 = [a1 latestResults];
  if (v9)
  {
    v10 = v9;
    v11 = sub_20D567758();

    v12 = sub_20D567838();
    if (*(v11 + 16))
    {
      v14 = v1;
      v15 = sub_20CEED668(v12, v13);
      v17 = v16;

      if (v17)
      {
        sub_20CED43FC(*(v11 + 56) + 32 * v15, v45);

        sub_20CECF940(0, &qword_28111FB20);
        v1 = v14;
        if (swift_dynamicCast())
        {
          v18 = [v44 BOOLValue];

          if (v18)
          {
            return 2;
          }
        }
      }

      else
      {

        v1 = v14;
      }
    }

    else
    {
    }
  }

  v19 = OBJC_IVAR___HUCollectionLayoutManager_layoutOptions;
  v20 = *(v1 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v20)
  {
    [v20 numberOfColumns];
    v21 = *(v1 + v19);
    if (v21)
    {
      v22 = v21;
      v23 = [v22 contentSizeCategory];
      sub_20D567838();
      v24 = sub_20D5677F8();
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 latestResults];
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = v25;
  v27 = sub_20D567758();

  v28 = sub_20D567838();
  if (!*(v27 + 16))
  {

    goto LABEL_27;
  }

  v30 = sub_20CEED668(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_20CED43FC(*(v27 + 56) + 32 * v30, v45);

  sub_20CECF940(0, &qword_28111FB20);
  if (swift_dynamicCast())
  {
    if ([v44 BOOLValue])
    {
      if (v24)
      {
        if (sub_20D568188())
        {

          return 3;
        }

        else
        {
          sub_20D568188();
          v42 = sub_20D568188();

          if (v42)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }

      return 1;
    }
  }

LABEL_28:
  v33 = [a1 latestResults];
  if (!v33)
  {
LABEL_38:

    return 1;
  }

  v34 = v33;
  v35 = sub_20D567758();

  v36 = sub_20D567838();
  if (!*(v35 + 16))
  {

    goto LABEL_37;
  }

  v38 = sub_20CEED668(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_37:

    goto LABEL_38;
  }

  sub_20CED43FC(*(v35 + 56) + 32 * v38, v45);

  sub_20CECF940(0, &qword_28111FB20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (![v44 BOOLValue])
  {

    goto LABEL_38;
  }

  if (v24)
  {
    sub_20D568188();
    if (sub_20D568188())
    {

      return 4;
    }

    else
    {
      v43 = sub_20D568188();

      if (v43)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {

    return 2;
  }
}

id sub_20CEFCF8C(__int128 *a1, unint64_t a2, void *a3, void *a4)
{
  *(swift_allocObject() + 16) = v4;
  v9 = v4;
  [a3 pointWidthForNumberOfColumns_];
  v11 = v10;
  v12 = v10 * 0.756097561;
  if (v12 <= 62.0)
  {
    v12 = 62.0;
  }

  if (v12 <= 72.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 72.0;
  }

  v14 = (*((*MEMORY[0x277D85000] & *v9) + 0x158))(a4);
  if (v15)
  {
    v16 = COERCE_DOUBLE(sub_20CEFE4F0(a4, sub_20CEFFA54));
    v18 = v17;

    if ((v18 & 1) == 0 && v13 <= v16)
    {
      v13 = v16;
    }
  }

  else
  {
    v19 = *&v14;

    v13 = v19;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if ([Strong respondsToSelector_])
    {
      v22 = [v21 allowsCondensedAccessoryTiles];
    }

    else
    {
      v22 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  v23 = a1[3];
  v49 = a1[2];
  v50 = v23;
  v51 = *(a1 + 8);
  v24 = a1[1];
  v47 = *a1;
  v48 = v24;
  v25 = sub_20CF00234(&v47, a2, a3, v22, v11, v13);
  v26 = v25;
  if (v25 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v28 = 0;
    v29 = 0.0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x20F31DD20](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v30 frame];
      v34 = v33;
      [v31 frame];
      v36 = v35;

      if (v29 <= v34 + v36)
      {
        v29 = v34 + v36;
      }

      ++v28;
      if (v32 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v29 = 0.0;
LABEL_34:
  v37 = objc_opt_self();
  v38 = [v37 fractionalWidthDimension_];
  v39 = [v37 absoluteDimension_];
  v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

  v41 = objc_opt_self();
  v42 = swift_allocObject();
  *(v42 + 16) = v26;
  *&v49 = sub_20CF008CC;
  *(&v49 + 1) = v42;
  *&v47 = MEMORY[0x277D85DD0];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_20CEFD3D0;
  *(&v48 + 1) = &block_descriptor_0;
  v43 = _Block_copy(&v47);

  v44 = [v41 customGroupWithLayoutSize:v40 itemProvider:v43];
  _Block_release(v43);
  v45 = [objc_opt_self() sectionWithGroup_];

  return v45;
}

id sub_20CEFD3D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  swift_unknownObjectRelease();
  sub_20CECF940(0, &unk_28111FD18);
  v3 = sub_20D567A58();

  return v3;
}

void sub_20CEFD480(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v5)
  {
    v7 = *(a1 + 16);
    v8 = v5;
    [v8 sectionTopMargin];
    v10 = v9;
    [v8 sectionLeadingMargin];
    v12 = v11;
    [v8 sectionBottomMargin];
    v14 = v13;
    [v8 sectionTrailingMargin];
    v16 = v15;
    if (v7 || !a2)
    {
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        v19 = sub_20D5677F8();
        v20 = [v18 shouldShowHeaderForSection_];
        swift_unknownObjectRelease();

        if (!v20)
        {
          v10 = 0.0;
        }
      }

      else
      {

        v10 = 0.0;
      }
    }

    *a3 = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v14;
    *(a3 + 24) = v16;
    *(a3 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

id sub_20CEFD5D4(void *a1, void *a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v9 = sub_20CEFD658(a1, a2, a3, a4);

  return v9;
}

id sub_20CEFD658(void *a1, void *a2, double a3, double a4)
{
  [a1 pointWidthForNumberOfColumns_];
  v10 = v9;
  v11 = v9 * 0.756097561;
  if (v11 <= 62.0)
  {
    v11 = 62.0;
  }

  if (v11 <= 72.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 72.0;
  }

  *&v13 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v4) + 0x158))(a2));
  if (v14)
  {
    v15 = COERCE_DOUBLE(sub_20CEFE4F0(a2, 0));
    if ((v16 & 1) == 0 && v12 <= v15)
    {
      v12 = v15;
    }
  }

  else
  {
    v12 = *&v13;
  }

  if (v10 > 0.0 && v12 > 0.0)
  {
    [a1 columnSpacing];
    v18 = v17;
    result = [a1 rowSpacing];
    v21 = floor((a3 + v18 * -0.5) / (v10 + v18));
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        v22 = floor((a4 + v20 * -0.5) / (v12 + v20));
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v22 > -9.22337204e18)
          {
            if (v22 < 9.22337204e18)
            {
              return (v22 & ~(v22 >> 63));
            }

            goto LABEL_31;
          }

LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v23 = sub_20D567EA8();
  if (qword_28111FAD0 != -1)
  {
    swift_once();
  }

  v24 = qword_281120C08;
  if (os_log_type_enabled(qword_281120C08, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v10;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v12;
    _os_log_impl(&dword_20CEB6000, v24, v23, "CollectionLayoutManager: Layout invalid gridPosition for columnSize %f rowSize %f", v25, 0x16u);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  return 0;
}

id sub_20CEFD914(void *a1, void *a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v9 = sub_20CEFD994(a1, a2, a3, a4);

  return v9;
}

id sub_20CEFD994(void *a1, void *a2, double a3, double a4)
{
  [a1 pointWidthForNumberOfColumns_];
  v10 = v9;
  v11 = v9 * 0.756097561;
  if (v11 <= 62.0)
  {
    v11 = 62.0;
  }

  if (v11 <= 72.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 72.0;
  }

  v13 = (*((*MEMORY[0x277D85000] & *v4) + 0x158))(a2);
  if (v14)
  {
    v16 = COERCE_DOUBLE(sub_20CEFE4F0(a2, 0));
    if (v12 > v16)
    {
      v16 = v12;
    }

    if ((v15 & 1) == 0)
    {
      v12 = v16;
    }

    if (v10 <= 0.0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *&v13;
    if (v10 <= 0.0)
    {
      goto LABEL_22;
    }
  }

  if (v12 > 0.0)
  {
    result = [a1 numberOfColumns];
    v18 = round(a3 / v10);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = round(a4 / v12);
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v19 > -9.22337204e18)
          {
            if (v19 < 9.22337204e18)
            {
              return v19;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_22:
  v20 = sub_20D567EA8();
  if (qword_28111FAD0 != -1)
  {
    swift_once();
  }

  v21 = qword_281120C08;
  if (os_log_type_enabled(qword_281120C08, v20))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = v10;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v12;
    _os_log_impl(&dword_20CEB6000, v21, v20, "CollectionLayoutManager: Layout invalid effectiveGridSize for columnSize %f rowSize %f", v22, 0x16u);
    MEMORY[0x20F31FC70](v22, -1, -1);
  }

  return 0;
}

uint64_t sub_20CEFDC1C()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    if ([Strong respondsToSelector_])
    {
      [v3 overrideContentSize];
      v5 = v4;
      swift_unknownObjectRelease();
      LOBYTE(v3) = v5;
    }

    else
    {
      swift_unknownObjectRelease();
      LOBYTE(v3) = 0;
    }
  }

  v6 = OBJC_IVAR___HUCollectionLayoutManager_layoutOptions;
  v7 = *(v0 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (!v7 || (swift_getObjectType(), v8 = v7, v24.is_nil = v3, v9 = NSCollectionLayoutEnvironment.isValid(for:overrideContentSize:)(v8, v24), v8, !v9))
  {
    swift_getObjectType();
    v23.is_nil = v3;
    NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(v10, v23);
    v11 = *(v0 + v6);
    *(v0 + v6) = v12;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  if (([v13 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_14:
    v19 = *(v1 + v6);
    v18 = v19;
    goto LABEL_15;
  }

  v15 = *(v1 + v6);
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v14 transform_];

  swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = v17;
LABEL_15:
  v20 = *(v1 + v6);
  *(v1 + v6) = v19;
  v21 = v18;

  if (v19)
  {
    return v21;
  }

  __break(1u);
LABEL_18:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

id CollectionLayoutManager.init()()
{
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes] = 0;
  *&v0[OBJC_IVAR___HUCollectionLayoutManager_layoutOptions] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionLayoutManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CollectionLayoutManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionLayoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_20CEFDF58(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F31DD20](a2, a3);
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
    *v3 = v4;
    return sub_20CF00918;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20CEFDFD8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F31DD20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_20CEFE058;
  }

  __break(1u);
  return result;
}

void (*sub_20CEFE060(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F31DD20](a2, a3);
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
    *v3 = v4;
    return sub_20CEFE0E0;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEFE0E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_20D567838();
    v4 = v3;
    if (v2 == sub_20D567838() && v4 == v5)
    {

      return 2;
    }

    v7 = sub_20D568BF8();
    v8 = v1;

    if (v7)
    {

      return 2;
    }

    v9 = sub_20D567838();
    v11 = v10;
    if (v9 == sub_20D567838() && v11 == v12)
    {
    }

    else
    {
      v14 = sub_20D568BF8();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_20CEFE250()
{
  v0 = sub_20D564508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  (*(v1 + 104))(v3, *MEMORY[0x277D15EE0], v0);
  sub_20D5644F8();
  (*(v1 + 8))(v3, v0);
  v5 = sub_20D568DB8();
  v6 = [v4 matterDeviceType_];

  sub_20CECF940(0, &qword_27C81C3E0);
  v7 = sub_20D5683F8();

  if (v7)
  {
    return 2;
  }

  v8 = [v4 serviceType_];
  v9 = sub_20D5683F8();

  if (v9)
  {
    return 2;
  }

  v10 = [v4 serviceType_];
  v11 = sub_20D5683F8();

  if (v11)
  {
    return 2;
  }

  v12 = [v4 serviceType_];
  v13 = sub_20D5683F8();

  if (v13)
  {
    return 2;
  }

  v14 = [v4 serviceType_];
  v15 = sub_20D5683F8();

  if (v15)
  {
    return 2;
  }

  v17 = [v4 serviceType_];
  v18 = sub_20D5683F8();

  if (v18)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_20CEFE4F0(void *a1, void (*a2)(id *))
{
  sub_20D00CF4C(__src);
  v26[3] = sub_20D5660D8();
  v26[4] = MEMORY[0x277D74BA8];
  __swift_allocate_boxed_opaque_existential_1(v26);
  v4 = a1;
  sub_20D5660A8();
  TileCellContentConfiguration.updated(for:)(v26, v28);
  memcpy(__dst, __src, sizeof(__dst));
  sub_20CEFFA00(__dst);
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (a2)
  {

    a2(v28);
    sub_20CEC8164(a2);
  }

  if (LOBYTE(v28[4]) == 1)
  {
    if (LOBYTE(v28[13]) == 1)
    {
      v5 = 0.0;
      v6 = 0.0;
      if (v28[22])
      {
        goto LABEL_21;
      }

      v7 = v28[21];
      v8 = v28[20];
      if (v28[21] > 1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v12 = v28[12];
    v13 = v28[11];
    v6 = 0.0;
    if (v28[12] > 1)
    {
      goto LABEL_16;
    }

LABEL_15:
    v12 = 1;
LABEL_16:
    [v13 lineHeight];
    v6 = v6 + (v12 - 1) + (v12 - 1) + v14 * v12;
    v5 = 0.0;
    goto LABEL_17;
  }

  v9 = v28[3];
  [v28[2] lineHeight];
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v5 = 0.0;
  v6 = v10 * v11 + (v11 - 1) + (v11 - 1) + 0.0;
  if (LOBYTE(v28[13]) != 1)
  {
    v12 = v28[12];
    v13 = v28[11];
    if (v28[12] > 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if (v28[22])
  {
    goto LABEL_21;
  }

  v8 = v28[20];
  v7 = v28[21];
  if (v28[21] <= 1)
  {
LABEL_19:
    v7 = 1;
  }

LABEL_20:
  [v8 lineHeight];
  v5 = (v7 - 1) + (v7 - 1) + v15 * v7;
LABEL_21:
  if ([objc_opt_self() shouldUseControlCenterMaterials])
  {
    MEMORY[0x20F31E320]([v4 displayScale]);
    v16 = UIRoundToScale();
    v18 = v17;
    MEMORY[0x20F31E320](v16);
    v19 = UIRoundToScale();
    MEMORY[0x20F31E320](v19);
    v20 = UIRoundToScale();
    v22 = v21;
    MEMORY[0x20F31E320](v20);
    UIRoundToScale();
  }

  else
  {
    v23 = [v4 preferredContentSizeCategory];
    v24 = sub_20D568168();

    if (v24)
    {
      v18 = 14.0;
    }

    else
    {
      v18 = 10.0;
    }

    v22 = v18;
  }

  memcpy(__src, v28, sizeof(__src));
  sub_20CEFFA00(__src);
  *&result = v5 + v6 + v18 + v22;
  return result;
}

id sub_20CEFE7F0(id result, void (*a2)(id *))
{
  v3 = *(v2 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    v7 = [v5 traitCollection];
    v8 = COERCE_DOUBLE(sub_20CEFE4F0(v7, a2));
    LOBYTE(v5) = v9;

    if (v5)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v8;
    }

    v11 = [objc_opt_self() isAMac];
    v12 = 74.0;
    if (v11)
    {
      v12 = 76.0;
    }

    if (v10 <= v12)
    {
      v10 = v12;
    }

    v13 = objc_opt_self();
    v14 = [v13 absoluteDimension_];
    [v6 pointWidthForNumberOfColumns_];
    v15 = [v13 absoluteDimension_];
    v16 = objc_opt_self();
    v17 = [v16 sizeWithWidthDimension:v15 heightDimension:v14];

    v18 = [objc_opt_self() itemWithLayoutSize_];
    v19 = [v13 fractionalWidthDimension_];
    v20 = [v16 sizeWithWidthDimension:v19 heightDimension:v14];

    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20D5BA040;
    *(v22 + 32) = v18;
    sub_20CECF940(0, &qword_28111FE40);
    v23 = v18;
    v24 = sub_20D567A58();

    v25 = [v21 horizontalGroupWithLayoutSize:v20 subitems:v24];

    v26 = objc_opt_self();
    [v6 columnSpacing];
    v27 = [v26 fixedSpacing_];
    [v25 setInterItemSpacing_];

    v28 = [objc_opt_self() sectionWithGroup_];
    [v6 rowSpacing];
    [v28 setInterGroupSpacing_];

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CEFEB34()
{
  if ([objc_opt_self() isAnIPad] && (v1 = *(v0 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions)) != 0)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    v5 = [v4 orientation];

    if (UIDeviceOrientationIsPortrait(v5))
    {
      v6 = 0.67;
    }

    else
    {
      v6 = 0.75;
    }

    [v3 viewSize];
    v8 = v7;
    v9 = [objc_opt_self() mainScreen];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v45.origin.x = v11;
    v45.origin.y = v13;
    v45.size.width = v15;
    v45.size.height = v17;
    Height = CGRectGetHeight(v45);

    v19 = objc_opt_self();
    if (v8 / Height >= v6)
    {
      v20 = 0;
      v21 = 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    v19 = objc_opt_self();
  }

  v20 = 1;
  v21 = 1.0;
LABEL_10:
  v22 = [v19 fractionalWidthDimension_];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 estimatedDimension_];
  v26 = objc_opt_self();
  v27 = [v26 sizeWithWidthDimension:v24 heightDimension:v25];

  v28 = [objc_opt_self() itemWithLayoutSize_];
  v29 = [v23 fractionalWidthDimension_];
  v30 = [v27 heightDimension];
  v31 = [v26 sizeWithWidthDimension:v29 heightDimension:v30];

  v32 = objc_opt_self();
  if (v20)
  {
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20D5BA040;
    *(v34 + 32) = v28;
    sub_20CECF940(0, &qword_28111FE40);
    v35 = v28;
    v36 = sub_20D567A58();

    v37 = [v33 horizontalGroupWithLayoutSize:v31 subitems:v36];
  }

  else
  {
    v37 = [v32 horizontalGroupWithLayoutSize:v31 repeatingSubitem:v28 count:2];
  }

  v38 = *(v0 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  v39 = v37;
  if (v38)
  {
    [v38 columnSpacing];
    v41 = v40;
  }

  else
  {
    v41 = 10.0;
  }

  v42 = [objc_opt_self() fixedSpacing_];
  [v37 setInterItemSpacing_];

  v43 = [objc_opt_self() sectionWithGroup_];
  return v43;
}

BOOL _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        if (v2 != v5 || v3 != v6)
        {
          v9 = sub_20D568BF8();
          sub_20CF008FC(v5, v6, 1);
          sub_20CF008FC(v2, v3, 1);
          sub_20CEFF424(v2, v3, 1);
          sub_20CEFF424(v5, v6, 1);
          return v9 & 1;
        }

        v11 = 1;
        sub_20CF008FC(*a1, v3, 1);
        sub_20CF008FC(v2, v3, 1);
        sub_20CEFF424(v2, v3, 1);
        v13 = v2;
        v14 = v3;
        v15 = 1;
        goto LABEL_33;
      }

      sub_20D5663C8();
      goto LABEL_19;
    }

    if (v2 <= 2)
    {
      if (v2 | v3)
      {
        if (!(v2 ^ 1 | v3))
        {
          if (v7 == 2 && v5 == 1 && !v6)
          {
            sub_20CEFF424(*a1, v3, 2);
            v11 = 1;
            v13 = 1;
            v14 = 0;
            v15 = 2;
LABEL_33:
            sub_20CEFF424(v13, v14, v15);
            return v11;
          }

          goto LABEL_19;
        }

        if (v7 == 2 && v5 == 2 && !v6)
        {
          sub_20CEFF424(*a1, v3, 2);
          v12 = 2;
          goto LABEL_49;
        }
      }

      else if (v7 == 2 && !(v6 | v5))
      {
        sub_20CEFF424(*a1, v3, 2);
        v12 = 0;
        goto LABEL_49;
      }
    }

    else if (v2 > 4)
    {
      if (v2 ^ 5 | v3)
      {
        if (v7 == 2 && v5 == 6 && !v6)
        {
          sub_20CEFF424(*a1, v3, 2);
          v12 = 6;
          goto LABEL_49;
        }
      }

      else if (v7 == 2 && v5 == 5 && !v6)
      {
        sub_20CEFF424(*a1, v3, 2);
        v12 = 5;
        goto LABEL_49;
      }
    }

    else if (v2 ^ 3 | v3)
    {
      if (v7 == 2 && v5 == 4 && !v6)
      {
        sub_20CEFF424(*a1, v3, 2);
        v12 = 4;
        goto LABEL_49;
      }
    }

    else if (v7 == 2 && v5 == 3 && !v6)
    {
      sub_20CEFF424(*a1, v3, 2);
      v12 = 3;
LABEL_49:
      sub_20CEFF424(v12, 0, 2);
      return 1;
    }

LABEL_19:
    sub_20CF008FC(v5, v6, v7);
    sub_20CEFF424(v2, v3, v4);
    sub_20CEFF424(v5, v6, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_19;
  }

  sub_20CEFF424(*a1, v3, 0);
  sub_20CEFF424(v5, v6, 0);
  return v2 == v5;
}

id sub_20CEFF264(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension_];
  v4 = [v2 absoluteDimension_];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = [objc_opt_self() itemWithLayoutSize_];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20D5BA040;
  *(v8 + 32) = v6;
  sub_20CECF940(0, &qword_28111FE40);
  v9 = v6;
  v10 = sub_20D567A58();

  v11 = [v7 verticalGroupWithLayoutSize:v5 subitems:v10];

  v12 = [objc_opt_self() sectionWithGroup_];
  return v12;
}

uint64_t sub_20CEFF424(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6HomeUI23CollectionLayoutManagerC5StyleO(uint64_t a1)
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