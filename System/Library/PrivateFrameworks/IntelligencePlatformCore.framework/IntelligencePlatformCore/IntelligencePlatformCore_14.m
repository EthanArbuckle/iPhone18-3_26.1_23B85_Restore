uint64_t sub_1C45363A0()
{
  sub_1C440F6B8();
  v2 = type metadata accessor for Source();
  v3 = sub_1C43FCF8C(v2);
  if (*(v4 + 84) == v1)
  {

    return sub_1C44157D4(v0, v1, v3);
  }

  else
  {
    sub_1C440355C();
    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }
}

uint64_t sub_1C4536438()
{
  sub_1C43FC36C();
  v4 = type metadata accessor for Source();
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C440AB04();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

uint64_t sub_1C45364C0()
{
  sub_1C440F6B8();
  v2 = type metadata accessor for Configuration();
  v3 = sub_1C43FCF8C(v2);
  if (*(v4 + 84) == v1)
  {

    return sub_1C44157D4(v0, v1, v3);
  }

  else
  {
    sub_1C440355C();
    return (v6 + 1);
  }
}

uint64_t sub_1C453654C()
{
  sub_1C43FC36C();
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C440AB04();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

BOOL sub_1C45365DC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1C4536608(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_1C441FFE8(a1);
}

uint64_t sub_1C4536628(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1C4536664(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1C4536680(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot();
    v10 = sub_1C4F000F8();
    v11 = a1 + *(a3 + 40);

    return sub_1C44157D4(v11, a2, v10);
  }
}

void *sub_1C4536718(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot();
    v9 = sub_1C4F000F8();
    v10 = v5 + *(a4 + 40);

    return sub_1C440BAA8(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C45367E4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C453681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4F00A98();
    v9 = a1 + *(a3 + 72);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C45368A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4F00A98();
    v8 = v5 + *(a4 + 72);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4536924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 24));
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C4536A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4536AEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4536B3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4536B7C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_8:

    return sub_1C44157D4(v10, a2, v9);
  }

  v11 = type metadata accessor for Source();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = v3 + v14;
    goto LABEL_8;
  }

  v15 = sub_1C4EFD548();
  v16 = sub_1C43FCF8C(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_7;
  }

  v19 = *(v3 + a3[9]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1C4536CA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1C4EFD548();
      result = sub_1C43FCF8C(v17);
      if (*(v19 + 84) != a3)
      {
        *(v4 + a4[9]) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[6];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4536F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C453700C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4537118(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 252)
    {
      v11 = *(v3 + a3[5]);
      if (v11 >= 4)
      {
        return v11 - 3;
      }

      else
      {
        return 0;
      }
    }

    v13 = type metadata accessor for PhaseStores();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = sub_1C4EFD548();
      v16 = a3[7];
    }

    v10 = v3 + v16;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C4537218(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for Source();
  result = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 252)
    {
      *(v4 + a4[5]) = a2 + 3;
      return result;
    }

    v13 = type metadata accessor for PhaseStores();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = sub_1C4EFD548();
      v16 = a4[7];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4537318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C45373CC()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C440AB04();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C4537480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C4537538()
{
  sub_1C43FF404();
  v4 = sub_1C4EF9CD8();
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C440AB04();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_1C45376A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return sub_1C44157D4(v10, a2, v9);
  }

  v11 = type metadata accessor for Source();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_1C4EFD548();
  v16 = sub_1C43FCF8C(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[9]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1C45377CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Source();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1C4EFD548();
      result = sub_1C43FCF8C(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[6];
    }

    v12 = a1 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C45378F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453793C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4537B10()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537B3C()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerValueInteger.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C4537B98()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerValueDouble.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C4537D1C()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerSource.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C4537D48()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537D9C()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.firstName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537DF0()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.lastName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537E44()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.phoneNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537E98()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.emailAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537EEC()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.to.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537F40()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.from.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537F94()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.relationshipName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537FE8()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.address.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C45380FC()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.app.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4538150()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.interest.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C45383E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for PhaseStores();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(a1 + a3[6]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v14 = a3[7];
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C45384F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for PhaseStores();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return result;
      }

      v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4538680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C453872C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Configuration();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4538848()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for PhotoInteractionEventSourceAdapter() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);
  sub_1C440962C((v0 + v5 + v3[11]));

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1C4538938()
{
  v1 = *(type metadata accessor for Configuration() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_1C4EF98F8();
  sub_1C43FD3F8(v6);
  (*(v7 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4538A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF9CD8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4538AC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF9CD8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4538B98()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4538BCC()
{
  v1 = *(v0 + 16);

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4538C00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4538C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFFAA8();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4538CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFFAA8();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C4538D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4538E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4538F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4538F9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4539060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(a1 + a3[6]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v14 = a3[7];
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C4539170(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return result;
      }

      v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4539294()
{
  v1 = (type metadata accessor for PHPersonSourceIngestor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1C4EF98F8();
  sub_1C43FBCE0(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = type metadata accessor for PhaseStores();
  v8 = *(v0 + v3 + v7[5]);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7]);

  v11 = *(v0 + v3 + v7[8]);

  v12 = *(v0 + v3 + v7[9]);

  v13 = *(v0 + v3 + v7[10]);

  v14 = *(v0 + v3 + v7[11]);

  v15 = *(v0 + v3 + v7[12]);

  v16 = v0 + v3 + v1[7];
  v17 = *(v16 + 8);

  v18 = *(type metadata accessor for Source() + 24);
  v19 = sub_1C4EFD548();
  sub_1C43FBCE0(v19);
  (*(v20 + 8))(v16 + v18);
  v21 = v1[9];
  v22 = sub_1C4EFF1C8();
  if (!sub_1C44157D4(v0 + v3 + v21, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v0 + v3 + v21, v22);
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v0 + v23);

  v31 = *(v0 + v24);

  v32 = *(v0 + v25);

  v33 = *(v0 + v26);

  v34 = *(v0 + v27);

  v35 = *(v0 + v28 + 8);

  v36 = *(v0 + v29);

  return MEMORY[0x1EEE6BDD0](v0, v29 + 8, v2 | 7);
}

uint64_t sub_1C45394F4()
{
  v1 = *(v0 + 16);

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4539528()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4539580()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4539648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 4)
    {
      return v8 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C45396F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Configuration();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1C4539858()
{
  v2 = type metadata accessor for Source();
  sub_1C441EAC8(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v1 + 16);

  v18 = v1 + v5;
  v19 = *(v18 + 8);

  v20 = *(v0 + 32);
  v21 = sub_1C4EFD548();
  sub_1C43FD3F8(v21);
  (*(v22 + 8))(v18 + v20);
  (*(v10 + 8))(v1 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v1, v14 + v15, v16 | 7);
}

uint64_t sub_1C45399B4()
{
  v2 = type metadata accessor for Source();
  sub_1C441EAC8(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = *(v1 + v8 + 8);

  v12 = *(v0 + 32);
  v13 = sub_1C4EFD548();
  sub_1C43FD3F8(v13);
  (*(v14 + 8))(v10 + v12);
  v15 = *(v1 + v9);

  return MEMORY[0x1EEE6BDD0](v1, v9 + 8, v7 | 7);
}

uint64_t sub_1C4539A98()
{
  v1 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1C4EF98F8();
  sub_1C43FD3F8(v6);
  (*(v7 + 8))(v0 + ((v3 + 16) & ~v3));
  v8 = sub_1C445BFD0();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_1C4539BB0()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4539CF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4539ED8()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4539F1C()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4539F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0x3E)
    {
      return v8 - 61;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C453A02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2 + 61;
  }

  return result;
}

uint64_t sub_1C453A134()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453A17C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for PhaseStores();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 24));
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453A2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for PhaseStores();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453A4D0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(v3 + a3[7]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v14 = a3[8];
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453A5DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[7]) = a2 + 3;
        return result;
      }

      v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v16 = a4[8];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453A6E8()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C453A71C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C453A7BC()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C453A7E8()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C453A81C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C453A85C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_1C440962C(v0 + 4);
  v2 = v0[10];

  v3 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C453A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Configuration();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C453A93C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Configuration();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C453A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453AAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C453AC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_1C453ACFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453AD34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453AE4C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C453AED4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for SessionDataAsyncSequenceWrapper();

  return swift_getWitnessTable();
}

uint64_t sub_1C453AF60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453AFAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453AFE8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C453B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for PhaseStores();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453B218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for PhaseStores();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453B31C()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C453B360()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C453B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1C44157D4(v10, a2, v9);
  }

  v11 = type metadata accessor for Source();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1C453B4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453B5A0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(v3 + a3[6]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v14 = a3[8];
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453B6A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return result;
      }

      v11 = sub_1C4EFD548();
      v16 = a4[8];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453B7A0()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[5], v5);
  v8 = (v0 + v3 + v1[6]);
  if (v8[3])
  {
    sub_1C440962C(v8);
  }

  sub_1C440962C((v0 + v3 + v1[7]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C453B8C4()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FCE64();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C453B9CC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(v3 + a3[6]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v14 = a3[8];
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453BACC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return result;
      }

      v11 = sub_1C4EFD548();
      v16 = a4[8];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453BBF4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453BC2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453BD2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C4EFEEF8();
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[5];
    }

    else
    {
      v14 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
      v15 = sub_1C43FCF8C(v14);
      if (*(v16 + 84) == a2)
      {
        v12 = v15;
        v13 = a3[6];
      }

      else
      {
        v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
        v13 = a3[7];
      }
    }

    return sub_1C44157D4(a1 + v13, a2, v12);
  }
}

uint64_t sub_1C453BE58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1C4EFEEF8();
    v9 = sub_1C43FCF8C(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
        v12 = a4[7];
      }
    }

    return sub_1C440BAA8(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C453C020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3998, &unk_1C4F53120);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C453C074(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0C3998, &unk_1C4F53120);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

void sub_1C453C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  v15 = type metadata accessor for TranslatedEntityTriple(v14);
  v16 = sub_1C441C4F0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  sub_1C441CDB4(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C443F36C();
  if (v30)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v29);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C441A560();
      sub_1C44B95C0(&unk_1EDDF3A50, v31);
      sub_1C4471D34();
      sub_1C443DFC8();
      sub_1C443F788();
      sub_1C44BCC4C(v11, v32);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for TranslatedEntityTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v30)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v37)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v33 = sub_1C4404BB0();
      sub_1C44856C8(v33, v34);
      sub_1C4459BEC();
      if (v35)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  v15 = type metadata accessor for EventTriple(v14);
  v16 = sub_1C441C4F0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  sub_1C441CDB4(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C443F36C();
  if (v30)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v29);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C4403770();
      sub_1C44B95C0(&qword_1EDDFE2F0, v31);
      sub_1C4471D34();
      sub_1C443DFC8();
      sub_1C4418588();
      sub_1C44BCC4C(v11, v32);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for EventTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v30)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v37)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v33 = sub_1C4404BB0();
      sub_1C44856C8(v33, v34);
      sub_1C4459BEC();
      if (v35)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  v15 = type metadata accessor for GraphTriple(v14);
  v16 = sub_1C441C4F0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  sub_1C441CDB4(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C443F36C();
  if (v30)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v29);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C43FDE74();
      sub_1C44B95C0(&qword_1EDDFE218, v31);
      sub_1C4471D34();
      sub_1C443DFC8();
      sub_1C4435CBC();
      sub_1C44BCC4C(v11, v32);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for GraphTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v30)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v37)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v33 = sub_1C4404BB0();
      sub_1C44856C8(v33, v34);
      sub_1C4459BEC();
      if (v35)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  v15 = type metadata accessor for ConstructionEventTriple(v14);
  v16 = sub_1C441C4F0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  sub_1C441CDB4(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C443F36C();
  if (v30)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v29);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C4432A24();
      sub_1C44B95C0(&unk_1EDDE2780, v31);
      sub_1C4471D34();
      sub_1C443DFC8();
      sub_1C441B030();
      sub_1C44BCC4C(v11, v32);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for ConstructionEventTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v30)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v37)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v33 = sub_1C4404BB0();
      sub_1C44856C8(v33, v34);
      sub_1C4459BEC();
      if (v35)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  v15 = type metadata accessor for ConstructionGraphTriple(v14);
  v16 = sub_1C441C4F0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  sub_1C441CDB4(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C443F36C();
  if (v30)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v29);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C44137C4();
      sub_1C44B95C0(&qword_1EDDE2668, v31);
      sub_1C4471D34();
      sub_1C443DFC8();
      sub_1C4434254();
      sub_1C44BCC4C(v11, v32);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for ConstructionGraphTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v30)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v37)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v33 = sub_1C4404BB0();
      sub_1C44856C8(v33, v34);
      sub_1C4459BEC();
      if (v35)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453CB08()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for TranslatedEntityTriple(v9);
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  sub_1C440C744(v15, v16, v17, v18, v19, v20, v21, v22, v88);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440BF74(v24, v25, v26, v27, v28, v29, v30, v31, v89);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C440610C(v33, v34, v35, v36, v37, v38, v39, v40, v90);
  if (v80 != v81)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_94:
    sub_1C44608D0();
    if (!v84)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      sub_1C4B58F88();
      while (v3 >= 2)
      {
        sub_1C4428A18();
        if (!v85)
        {
          goto LABEL_133;
        }

        sub_1C4400E14(v85);
        sub_1C453E7A0();
        if (v1)
        {
          break;
        }

        if (v6 < v5)
        {
          goto LABEL_121;
        }

        sub_1C4488988();
        if (v53)
        {
          goto LABEL_122;
        }

        sub_1C4413F88();
        if (!v53)
        {
          goto LABEL_123;
        }

        sub_1C447E4A0(v86, v87);
        sub_1C4488850();
      }

LABEL_105:

      sub_1C447585C();
      sub_1C43FBC80();
      return;
    }

LABEL_130:
    v41 = sub_1C46194F4(v41);
    goto LABEL_96;
  }

  sub_1C4B58FDC();
  v41 = MEMORY[0x1E69E7CC0];
  v94 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v80 == v81)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for TranslatedEntityTriple;
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C4462470();
    sub_1C441A560();
    sub_1C44B95C0(&unk_1EDDF3A50, v42);
    v43 = sub_1C442F718();
    sub_1C440186C(v43);
    sub_1C441784C();
    sub_1C44BCC4C(v4, v44);
    v45 = sub_1C441E0C0();
    sub_1C44BCC4C(v45, v46);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v80 == v81)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C44224C4();
      v7 = v93;
      sub_1C4471BAC(v3, v93);
      sub_1C447E350();
      sub_1C444AD8C();
      sub_1C44E76F8();
      sub_1C447E7AC();
      sub_1C443F788();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v47;
LABEL_9:
    sub_1C4443484();
    if (v80 != v81)
    {
      sub_1C4B58FA0();
      if (v80 != v81)
      {
        goto LABEL_127;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v93)
          {
            goto LABEL_134;
          }

          v0 = v93 + v3;
          sub_1C4426060();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v80 != v81 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v41)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C4426060();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v80 != v81);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v80 != v81)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_126;
      }

      sub_1C4486020();
      if (v80 != v81)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v41 = v82;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v41 = v83;
    }

    sub_1C4435404();
    if (!v63)
    {
      goto LABEL_135;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v64)
          {
            goto LABEL_112;
          }

          sub_1C44EC860();
          if (v81)
          {
            goto LABEL_115;
          }

          sub_1C4455988(v70);
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_120;
          }

          if (v72 + v75 >= v73)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_114;
        }

        sub_1C445AB14();
        v74 = v81;
LABEL_74:
        if (v74)
        {
          goto LABEL_117;
        }

        sub_1C4485BD0(v71);
        if (v81)
        {
          goto LABEL_119;
        }

        if (v76 < v77)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
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

        sub_1C4428A18();
        if (!v79)
        {
          goto LABEL_132;
        }

        sub_1C441250C(v79);
        sub_1C453E7A0();
        if (v1)
        {
          goto LABEL_105;
        }

        if (v5 < v4)
        {
          goto LABEL_107;
        }

        sub_1C4B58FAC();
        if (!(v80 ^ v81 | v51))
        {
          goto LABEL_108;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v80 == v81)
        {
          goto LABEL_109;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v81)
      {
        goto LABEL_110;
      }

      sub_1C445FC20();
      if (v81)
      {
        goto LABEL_111;
      }

      sub_1C44A3ADC();
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30(v65);
        if (v81)
        {
          goto LABEL_124;
        }

        sub_1C44A14DC();
        if (v80 != v81)
        {
          v10 = v78;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v80 == v81)
    {
      goto LABEL_94;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_128;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C44290C4();
    sub_1C441A560();
    sub_1C44B95C0(&unk_1EDDF3A50, v57);
    sub_1C442F718();
    v0 = sub_1C4455448();
    sub_1C441784C();
    sub_1C44BCC4C(v7, v58);
    v59 = sub_1C441E0C0();
    sub_1C44BCC4C(v59, v60);
    if (v10 >= v0)
    {
      v10 = v94;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v91)
    {
      break;
    }

    v0 = type metadata accessor for TranslatedEntityTriple;
    v41 = v92;
    sub_1C44856C8(v2, v92);
    sub_1C442A4C0();
    v61 = sub_1C440A9B8();
    sub_1C44856C8(v61, v62);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
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
}

void sub_1C453D0C0()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for EventTriple(v9);
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  sub_1C440C744(v15, v16, v17, v18, v19, v20, v21, v22, v88);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440BF74(v24, v25, v26, v27, v28, v29, v30, v31, v89);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C440610C(v33, v34, v35, v36, v37, v38, v39, v40, v90);
  if (v80 != v81)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_94:
    sub_1C44608D0();
    if (!v84)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      sub_1C4B58F88();
      while (v3 >= 2)
      {
        sub_1C4428A18();
        if (!v85)
        {
          goto LABEL_133;
        }

        sub_1C4400E14(v85);
        sub_1C453EA88();
        if (v1)
        {
          break;
        }

        if (v6 < v5)
        {
          goto LABEL_121;
        }

        sub_1C4488988();
        if (v53)
        {
          goto LABEL_122;
        }

        sub_1C4413F88();
        if (!v53)
        {
          goto LABEL_123;
        }

        sub_1C447E4A0(v86, v87);
        sub_1C4488850();
      }

LABEL_105:

      sub_1C447585C();
      sub_1C43FBC80();
      return;
    }

LABEL_130:
    v41 = sub_1C46194F4(v41);
    goto LABEL_96;
  }

  sub_1C4B58FDC();
  v41 = MEMORY[0x1E69E7CC0];
  v94 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v80 == v81)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for EventTriple;
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C4462470();
    sub_1C4403770();
    sub_1C44B95C0(&qword_1EDDFE2F0, v42);
    v43 = sub_1C442F718();
    sub_1C440186C(v43);
    sub_1C4434724();
    sub_1C44BCC4C(v4, v44);
    v45 = sub_1C441E0C0();
    sub_1C44BCC4C(v45, v46);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v80 == v81)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C443668C();
      v7 = v93;
      sub_1C4471BAC(v3, v93);
      sub_1C447E350();
      sub_1C444AD8C();
      sub_1C44E76F8();
      sub_1C447E7AC();
      sub_1C4418588();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v47;
LABEL_9:
    sub_1C4443484();
    if (v80 != v81)
    {
      sub_1C4B58FA0();
      if (v80 != v81)
      {
        goto LABEL_127;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v93)
          {
            goto LABEL_134;
          }

          v0 = v93 + v3;
          sub_1C440EE6C();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v80 != v81 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v41)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C440EE6C();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v80 != v81);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v80 != v81)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_126;
      }

      sub_1C4486020();
      if (v80 != v81)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v41 = v82;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v41 = v83;
    }

    sub_1C4435404();
    if (!v63)
    {
      goto LABEL_135;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v64)
          {
            goto LABEL_112;
          }

          sub_1C44EC860();
          if (v81)
          {
            goto LABEL_115;
          }

          sub_1C4455988(v70);
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_120;
          }

          if (v72 + v75 >= v73)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_114;
        }

        sub_1C445AB14();
        v74 = v81;
LABEL_74:
        if (v74)
        {
          goto LABEL_117;
        }

        sub_1C4485BD0(v71);
        if (v81)
        {
          goto LABEL_119;
        }

        if (v76 < v77)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
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

        sub_1C4428A18();
        if (!v79)
        {
          goto LABEL_132;
        }

        sub_1C441250C(v79);
        sub_1C453EA88();
        if (v1)
        {
          goto LABEL_105;
        }

        if (v5 < v4)
        {
          goto LABEL_107;
        }

        sub_1C4B58FAC();
        if (!(v80 ^ v81 | v51))
        {
          goto LABEL_108;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v80 == v81)
        {
          goto LABEL_109;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v81)
      {
        goto LABEL_110;
      }

      sub_1C445FC20();
      if (v81)
      {
        goto LABEL_111;
      }

      sub_1C44A3ADC();
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30(v65);
        if (v81)
        {
          goto LABEL_124;
        }

        sub_1C44A14DC();
        if (v80 != v81)
        {
          v10 = v78;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v80 == v81)
    {
      goto LABEL_94;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_128;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C44290C4();
    sub_1C4403770();
    sub_1C44B95C0(&qword_1EDDFE2F0, v57);
    sub_1C442F718();
    v0 = sub_1C4455448();
    sub_1C4434724();
    sub_1C44BCC4C(v7, v58);
    v59 = sub_1C441E0C0();
    sub_1C44BCC4C(v59, v60);
    if (v10 >= v0)
    {
      v10 = v94;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v91)
    {
      break;
    }

    v0 = type metadata accessor for EventTriple;
    v41 = v92;
    sub_1C44856C8(v2, v92);
    sub_1C442A4C0();
    v61 = sub_1C440A9B8();
    sub_1C44856C8(v61, v62);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
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
}

void sub_1C453D678()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for GraphTriple(v9);
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  sub_1C440C744(v15, v16, v17, v18, v19, v20, v21, v22, v88);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440BF74(v24, v25, v26, v27, v28, v29, v30, v31, v89);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C440610C(v33, v34, v35, v36, v37, v38, v39, v40, v90);
  if (v80 != v81)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_94:
    sub_1C44608D0();
    if (!v84)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      sub_1C4B58F88();
      while (v3 >= 2)
      {
        sub_1C4428A18();
        if (!v85)
        {
          goto LABEL_133;
        }

        sub_1C4400E14(v85);
        sub_1C453ED70();
        if (v1)
        {
          break;
        }

        if (v6 < v5)
        {
          goto LABEL_121;
        }

        sub_1C4488988();
        if (v53)
        {
          goto LABEL_122;
        }

        sub_1C4413F88();
        if (!v53)
        {
          goto LABEL_123;
        }

        sub_1C447E4A0(v86, v87);
        sub_1C4488850();
      }

LABEL_105:

      sub_1C447585C();
      sub_1C43FBC80();
      return;
    }

LABEL_130:
    v41 = sub_1C46194F4(v41);
    goto LABEL_96;
  }

  sub_1C4B58FDC();
  v41 = MEMORY[0x1E69E7CC0];
  v94 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v80 == v81)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for GraphTriple;
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C4462470();
    sub_1C43FDE74();
    sub_1C44B95C0(&qword_1EDDFE218, v42);
    v43 = sub_1C442F718();
    sub_1C440186C(v43);
    sub_1C446C068();
    sub_1C44BCC4C(v4, v44);
    v45 = sub_1C441E0C0();
    sub_1C44BCC4C(v45, v46);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v80 == v81)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C4433DF0();
      v7 = v93;
      sub_1C4471BAC(v3, v93);
      sub_1C447E350();
      sub_1C444AD8C();
      sub_1C44E76F8();
      sub_1C447E7AC();
      sub_1C4435CBC();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v47;
LABEL_9:
    sub_1C4443484();
    if (v80 != v81)
    {
      sub_1C4B58FA0();
      if (v80 != v81)
      {
        goto LABEL_127;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v93)
          {
            goto LABEL_134;
          }

          v0 = v93 + v3;
          sub_1C442647C();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v80 != v81 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v41)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C442647C();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v80 != v81);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v80 != v81)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_126;
      }

      sub_1C4486020();
      if (v80 != v81)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v41 = v82;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v41 = v83;
    }

    sub_1C4435404();
    if (!v63)
    {
      goto LABEL_135;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v64)
          {
            goto LABEL_112;
          }

          sub_1C44EC860();
          if (v81)
          {
            goto LABEL_115;
          }

          sub_1C4455988(v70);
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_120;
          }

          if (v72 + v75 >= v73)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_114;
        }

        sub_1C445AB14();
        v74 = v81;
LABEL_74:
        if (v74)
        {
          goto LABEL_117;
        }

        sub_1C4485BD0(v71);
        if (v81)
        {
          goto LABEL_119;
        }

        if (v76 < v77)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
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

        sub_1C4428A18();
        if (!v79)
        {
          goto LABEL_132;
        }

        sub_1C441250C(v79);
        sub_1C453ED70();
        if (v1)
        {
          goto LABEL_105;
        }

        if (v5 < v4)
        {
          goto LABEL_107;
        }

        sub_1C4B58FAC();
        if (!(v80 ^ v81 | v51))
        {
          goto LABEL_108;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v80 == v81)
        {
          goto LABEL_109;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v81)
      {
        goto LABEL_110;
      }

      sub_1C445FC20();
      if (v81)
      {
        goto LABEL_111;
      }

      sub_1C44A3ADC();
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30(v65);
        if (v81)
        {
          goto LABEL_124;
        }

        sub_1C44A14DC();
        if (v80 != v81)
        {
          v10 = v78;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v80 == v81)
    {
      goto LABEL_94;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_128;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C44290C4();
    sub_1C43FDE74();
    sub_1C44B95C0(&qword_1EDDFE218, v57);
    sub_1C442F718();
    v0 = sub_1C4455448();
    sub_1C446C068();
    sub_1C44BCC4C(v7, v58);
    v59 = sub_1C441E0C0();
    sub_1C44BCC4C(v59, v60);
    if (v10 >= v0)
    {
      v10 = v94;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v91)
    {
      break;
    }

    v0 = type metadata accessor for GraphTriple;
    v41 = v92;
    sub_1C44856C8(v2, v92);
    sub_1C442A4C0();
    v61 = sub_1C440A9B8();
    sub_1C44856C8(v61, v62);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
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
}

void sub_1C453DC30()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for ConstructionEventTriple(v9);
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  sub_1C440C744(v15, v16, v17, v18, v19, v20, v21, v22, v88);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440BF74(v24, v25, v26, v27, v28, v29, v30, v31, v89);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C440610C(v33, v34, v35, v36, v37, v38, v39, v40, v90);
  if (v80 != v81)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_94:
    sub_1C44608D0();
    if (!v84)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      sub_1C4B58F88();
      while (v3 >= 2)
      {
        sub_1C4428A18();
        if (!v85)
        {
          goto LABEL_133;
        }

        sub_1C4400E14(v85);
        sub_1C453F058();
        if (v1)
        {
          break;
        }

        if (v6 < v5)
        {
          goto LABEL_121;
        }

        sub_1C4488988();
        if (v53)
        {
          goto LABEL_122;
        }

        sub_1C4413F88();
        if (!v53)
        {
          goto LABEL_123;
        }

        sub_1C447E4A0(v86, v87);
        sub_1C4488850();
      }

LABEL_105:

      sub_1C447585C();
      sub_1C43FBC80();
      return;
    }

LABEL_130:
    v41 = sub_1C46194F4(v41);
    goto LABEL_96;
  }

  sub_1C4B58FDC();
  v41 = MEMORY[0x1E69E7CC0];
  v94 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v80 == v81)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for ConstructionEventTriple;
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C4462470();
    sub_1C4432A24();
    sub_1C44B95C0(&unk_1EDDE2780, v42);
    v43 = sub_1C442F718();
    sub_1C440186C(v43);
    sub_1C446929C();
    sub_1C44BCC4C(v4, v44);
    v45 = sub_1C441E0C0();
    sub_1C44BCC4C(v45, v46);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v80 == v81)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C444121C();
      v7 = v93;
      sub_1C4471BAC(v3, v93);
      sub_1C447E350();
      sub_1C444AD8C();
      sub_1C44E76F8();
      sub_1C447E7AC();
      sub_1C441B030();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v47;
LABEL_9:
    sub_1C4443484();
    if (v80 != v81)
    {
      sub_1C4B58FA0();
      if (v80 != v81)
      {
        goto LABEL_127;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v93)
          {
            goto LABEL_134;
          }

          v0 = v93 + v3;
          sub_1C4424A10();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v80 != v81 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v41)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C4424A10();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v80 != v81);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v80 != v81)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_126;
      }

      sub_1C4486020();
      if (v80 != v81)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v41 = v82;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v41 = v83;
    }

    sub_1C4435404();
    if (!v63)
    {
      goto LABEL_135;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v64)
          {
            goto LABEL_112;
          }

          sub_1C44EC860();
          if (v81)
          {
            goto LABEL_115;
          }

          sub_1C4455988(v70);
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_120;
          }

          if (v72 + v75 >= v73)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_114;
        }

        sub_1C445AB14();
        v74 = v81;
LABEL_74:
        if (v74)
        {
          goto LABEL_117;
        }

        sub_1C4485BD0(v71);
        if (v81)
        {
          goto LABEL_119;
        }

        if (v76 < v77)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
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

        sub_1C4428A18();
        if (!v79)
        {
          goto LABEL_132;
        }

        sub_1C441250C(v79);
        sub_1C453F058();
        if (v1)
        {
          goto LABEL_105;
        }

        if (v5 < v4)
        {
          goto LABEL_107;
        }

        sub_1C4B58FAC();
        if (!(v80 ^ v81 | v51))
        {
          goto LABEL_108;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v80 == v81)
        {
          goto LABEL_109;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v81)
      {
        goto LABEL_110;
      }

      sub_1C445FC20();
      if (v81)
      {
        goto LABEL_111;
      }

      sub_1C44A3ADC();
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30(v65);
        if (v81)
        {
          goto LABEL_124;
        }

        sub_1C44A14DC();
        if (v80 != v81)
        {
          v10 = v78;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v80 == v81)
    {
      goto LABEL_94;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_128;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C44290C4();
    sub_1C4432A24();
    sub_1C44B95C0(&unk_1EDDE2780, v57);
    sub_1C442F718();
    v0 = sub_1C4455448();
    sub_1C446929C();
    sub_1C44BCC4C(v7, v58);
    v59 = sub_1C441E0C0();
    sub_1C44BCC4C(v59, v60);
    if (v10 >= v0)
    {
      v10 = v94;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v91)
    {
      break;
    }

    v0 = type metadata accessor for ConstructionEventTriple;
    v41 = v92;
    sub_1C44856C8(v2, v92);
    sub_1C442A4C0();
    v61 = sub_1C440A9B8();
    sub_1C44856C8(v61, v62);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
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
}

void sub_1C453E1E8()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for ConstructionGraphTriple(v9);
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  sub_1C440C744(v15, v16, v17, v18, v19, v20, v21, v22, v88);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440BF74(v24, v25, v26, v27, v28, v29, v30, v31, v89);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C440610C(v33, v34, v35, v36, v37, v38, v39, v40, v90);
  if (v80 != v81)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_94:
    sub_1C44608D0();
    if (!v84)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      sub_1C4B58F88();
      while (v3 >= 2)
      {
        sub_1C4428A18();
        if (!v85)
        {
          goto LABEL_133;
        }

        sub_1C4400E14(v85);
        sub_1C453F340();
        if (v1)
        {
          break;
        }

        if (v6 < v5)
        {
          goto LABEL_121;
        }

        sub_1C4488988();
        if (v53)
        {
          goto LABEL_122;
        }

        sub_1C4413F88();
        if (!v53)
        {
          goto LABEL_123;
        }

        sub_1C447E4A0(v86, v87);
        sub_1C4488850();
      }

LABEL_105:

      sub_1C447585C();
      sub_1C43FBC80();
      return;
    }

LABEL_130:
    v41 = sub_1C46194F4(v41);
    goto LABEL_96;
  }

  sub_1C4B58FDC();
  v41 = MEMORY[0x1E69E7CC0];
  v94 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v80 == v81)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for ConstructionGraphTriple;
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C4462470();
    sub_1C44137C4();
    sub_1C44B95C0(&qword_1EDDE2668, v42);
    v43 = sub_1C442F718();
    sub_1C440186C(v43);
    sub_1C4460430();
    sub_1C44BCC4C(v4, v44);
    v45 = sub_1C441E0C0();
    sub_1C44BCC4C(v45, v46);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v80 == v81)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C445FE98();
      v7 = v93;
      sub_1C4471BAC(v3, v93);
      sub_1C447E350();
      sub_1C444AD8C();
      sub_1C44E76F8();
      sub_1C447E7AC();
      sub_1C4434254();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v47;
LABEL_9:
    sub_1C4443484();
    if (v80 != v81)
    {
      sub_1C4B58FA0();
      if (v80 != v81)
      {
        goto LABEL_127;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v93)
          {
            goto LABEL_134;
          }

          v0 = v93 + v3;
          sub_1C44257A0();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v80 != v81 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v41)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C44257A0();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v80 != v81);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v80 != v81)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_126;
      }

      sub_1C4486020();
      if (v80 != v81)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v41 = v82;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v41 = v83;
    }

    sub_1C4435404();
    if (!v63)
    {
      goto LABEL_135;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v64)
          {
            goto LABEL_112;
          }

          sub_1C44EC860();
          if (v81)
          {
            goto LABEL_115;
          }

          sub_1C4455988(v70);
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_120;
          }

          if (v72 + v75 >= v73)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_114;
        }

        sub_1C445AB14();
        v74 = v81;
LABEL_74:
        if (v74)
        {
          goto LABEL_117;
        }

        sub_1C4485BD0(v71);
        if (v81)
        {
          goto LABEL_119;
        }

        if (v76 < v77)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
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

        sub_1C4428A18();
        if (!v79)
        {
          goto LABEL_132;
        }

        sub_1C441250C(v79);
        sub_1C453F340();
        if (v1)
        {
          goto LABEL_105;
        }

        if (v5 < v4)
        {
          goto LABEL_107;
        }

        sub_1C4B58FAC();
        if (!(v80 ^ v81 | v51))
        {
          goto LABEL_108;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v80 == v81)
        {
          goto LABEL_109;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v81)
      {
        goto LABEL_110;
      }

      sub_1C445FC20();
      if (v81)
      {
        goto LABEL_111;
      }

      sub_1C44A3ADC();
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30(v65);
        if (v81)
        {
          goto LABEL_124;
        }

        sub_1C44A14DC();
        if (v80 != v81)
        {
          v10 = v78;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v80 == v81)
    {
      goto LABEL_94;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_128;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v93;
    sub_1C4471BAC(v2, v93);
    sub_1C44290C4();
    sub_1C44137C4();
    sub_1C44B95C0(&qword_1EDDE2668, v57);
    sub_1C442F718();
    v0 = sub_1C4455448();
    sub_1C4460430();
    sub_1C44BCC4C(v7, v58);
    v59 = sub_1C441E0C0();
    sub_1C44BCC4C(v59, v60);
    if (v10 >= v0)
    {
      v10 = v94;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v91)
    {
      break;
    }

    v0 = type metadata accessor for ConstructionGraphTriple;
    v41 = v92;
    sub_1C44856C8(v2, v92);
    sub_1C442A4C0();
    v61 = sub_1C440A9B8();
    sub_1C44856C8(v61, v62);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
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
}

void sub_1C453E7A0()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for TranslatedEntityTriple(v10);
  v12 = sub_1C444B2CC(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v15, v16, v17, v18, v19, v20, v21, v22, v69);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440A0E8(v24, v25, v26, v27, v28, v29, v30, v31, v70);
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v34 = v34 && v33 == -1;
  if (v34)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v34 && v33 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v36 != v37)
  {
    v38 = sub_1C4430718();
    sub_1C44E64F0(v38, v39, v40);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v41 = v41 || v3 >= v2;
      if (v41)
      {
        break;
      }

      sub_1C44224C4();
      v42 = v3;
      v43 = v3;
      v3 = v74;
      sub_1C4471BAC(v42, v74);
      sub_1C44AE900();
      sub_1C441A560();
      sub_1C44B95C0(&unk_1EDDF3A50, v44);
      sub_1C445BFE0();
      v45 = sub_1C4416B58();
      sub_1C441784C();
      sub_1C44BCC4C(v5, v46);
      v47 = sub_1C440DE0C();
      sub_1C44BCC4C(v47, v48);
      if (v2 >= v45)
      {
        sub_1C4401EE0();
        if (!v41 || v1 >= v45)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v43;
          if (!v51)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v41 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v43)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v52 = sub_1C4422BA0();
    sub_1C44E64F0(v52, v53, v54);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v55);
    while (1)
    {
      sub_1C4480608();
      if (v34 || !v41)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C44224C4();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C441A560();
      sub_1C44B95C0(&unk_1EDDF3A50, v56);
      v57 = sub_1C448F1DC();
      sub_1C4495D68(v57);
      sub_1C443F788();
      sub_1C44BCC4C(v33, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v36 != v37)
      {
        sub_1C4B59024();
        if (!v41 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v33 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB444(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453EA88()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for EventTriple(v10);
  v12 = sub_1C444B2CC(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v15, v16, v17, v18, v19, v20, v21, v22, v69);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440A0E8(v24, v25, v26, v27, v28, v29, v30, v31, v70);
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v34 = v34 && v33 == -1;
  if (v34)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v34 && v33 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v36 != v37)
  {
    v38 = sub_1C4430718();
    sub_1C459C5AC(v38, v39, v40);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v41 = v41 || v3 >= v2;
      if (v41)
      {
        break;
      }

      sub_1C443668C();
      v42 = v3;
      v43 = v3;
      v3 = v74;
      sub_1C4471BAC(v42, v74);
      sub_1C44AE900();
      sub_1C4403770();
      sub_1C44B95C0(&qword_1EDDFE2F0, v44);
      sub_1C445BFE0();
      v45 = sub_1C4416B58();
      sub_1C4434724();
      sub_1C44BCC4C(v5, v46);
      v47 = sub_1C440DE0C();
      sub_1C44BCC4C(v47, v48);
      if (v2 >= v45)
      {
        sub_1C4401EE0();
        if (!v41 || v1 >= v45)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v43;
          if (!v51)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v41 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v43)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v52 = sub_1C4422BA0();
    sub_1C459C5AC(v52, v53, v54);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v55);
    while (1)
    {
      sub_1C4480608();
      if (v34 || !v41)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C443668C();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C4403770();
      sub_1C44B95C0(&qword_1EDDFE2F0, v56);
      v57 = sub_1C448F1DC();
      sub_1C4495D68(v57);
      sub_1C4418588();
      sub_1C44BCC4C(v33, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v36 != v37)
      {
        sub_1C4B59024();
        if (!v41 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v33 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB45C(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453ED70()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for GraphTriple(v10);
  v12 = sub_1C444B2CC(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v15, v16, v17, v18, v19, v20, v21, v22, v69);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440A0E8(v24, v25, v26, v27, v28, v29, v30, v31, v70);
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v34 = v34 && v33 == -1;
  if (v34)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v34 && v33 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v36 != v37)
  {
    v38 = sub_1C4430718();
    sub_1C44F1A5C(v38, v39, v40);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v41 = v41 || v3 >= v2;
      if (v41)
      {
        break;
      }

      sub_1C4433DF0();
      v42 = v3;
      v43 = v3;
      v3 = v74;
      sub_1C4471BAC(v42, v74);
      sub_1C44AE900();
      sub_1C43FDE74();
      sub_1C44B95C0(&qword_1EDDFE218, v44);
      sub_1C445BFE0();
      v45 = sub_1C4416B58();
      sub_1C446C068();
      sub_1C44BCC4C(v5, v46);
      v47 = sub_1C440DE0C();
      sub_1C44BCC4C(v47, v48);
      if (v2 >= v45)
      {
        sub_1C4401EE0();
        if (!v41 || v1 >= v45)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v43;
          if (!v51)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v41 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v43)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v52 = sub_1C4422BA0();
    sub_1C44F1A5C(v52, v53, v54);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v55);
    while (1)
    {
      sub_1C4480608();
      if (v34 || !v41)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C4433DF0();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C43FDE74();
      sub_1C44B95C0(&qword_1EDDFE218, v56);
      v57 = sub_1C448F1DC();
      sub_1C4495D68(v57);
      sub_1C4435CBC();
      sub_1C44BCC4C(v33, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v36 != v37)
      {
        sub_1C4B59024();
        if (!v41 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v33 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB474(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453F058()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for ConstructionEventTriple(v10);
  v12 = sub_1C444B2CC(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v15, v16, v17, v18, v19, v20, v21, v22, v69);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440A0E8(v24, v25, v26, v27, v28, v29, v30, v31, v70);
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v34 = v34 && v33 == -1;
  if (v34)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v34 && v33 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v36 != v37)
  {
    v38 = sub_1C4430718();
    sub_1C459CA34(v38, v39, v40);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v41 = v41 || v3 >= v2;
      if (v41)
      {
        break;
      }

      sub_1C444121C();
      v42 = v3;
      v43 = v3;
      v3 = v74;
      sub_1C4471BAC(v42, v74);
      sub_1C44AE900();
      sub_1C4432A24();
      sub_1C44B95C0(&unk_1EDDE2780, v44);
      sub_1C445BFE0();
      v45 = sub_1C4416B58();
      sub_1C446929C();
      sub_1C44BCC4C(v5, v46);
      v47 = sub_1C440DE0C();
      sub_1C44BCC4C(v47, v48);
      if (v2 >= v45)
      {
        sub_1C4401EE0();
        if (!v41 || v1 >= v45)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v43;
          if (!v51)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v41 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v43)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v52 = sub_1C4422BA0();
    sub_1C459CA34(v52, v53, v54);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v55);
    while (1)
    {
      sub_1C4480608();
      if (v34 || !v41)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C444121C();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C4432A24();
      sub_1C44B95C0(&unk_1EDDE2780, v56);
      v57 = sub_1C448F1DC();
      sub_1C4495D68(v57);
      sub_1C441B030();
      sub_1C44BCC4C(v33, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v36 != v37)
      {
        sub_1C4B59024();
        if (!v41 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v33 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB48C(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453F340()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for ConstructionGraphTriple(v10);
  v12 = sub_1C444B2CC(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v15, v16, v17, v18, v19, v20, v21, v22, v69);
  v24 = MEMORY[0x1EEE9AC00](v23);
  sub_1C440A0E8(v24, v25, v26, v27, v28, v29, v30, v31, v70);
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v34 = v34 && v33 == -1;
  if (v34)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v34 && v33 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v36 != v37)
  {
    v38 = sub_1C4430718();
    sub_1C44EE930(v38, v39, v40);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v41 = v41 || v3 >= v2;
      if (v41)
      {
        break;
      }

      sub_1C445FE98();
      v42 = v3;
      v43 = v3;
      v3 = v74;
      sub_1C4471BAC(v42, v74);
      sub_1C44AE900();
      sub_1C44137C4();
      sub_1C44B95C0(&qword_1EDDE2668, v44);
      sub_1C445BFE0();
      v45 = sub_1C4416B58();
      sub_1C4460430();
      sub_1C44BCC4C(v5, v46);
      v47 = sub_1C440DE0C();
      sub_1C44BCC4C(v47, v48);
      if (v2 >= v45)
      {
        sub_1C4401EE0();
        if (!v41 || v1 >= v45)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v43;
          if (!v51)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v41 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v43)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v52 = sub_1C4422BA0();
    sub_1C44EE930(v52, v53, v54);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v55);
    while (1)
    {
      sub_1C4480608();
      if (v34 || !v41)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C445FE98();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C44137C4();
      sub_1C44B95C0(&qword_1EDDE2668, v56);
      v57 = sub_1C448F1DC();
      sub_1C4495D68(v57);
      sub_1C4434254();
      sub_1C44BCC4C(v33, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v36 != v37)
      {
        sub_1C4B59024();
        if (!v41 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v33 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB4A4(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

uint64_t sub_1C453F628(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C4EFD548();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for Source();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) != a2)
      {
        v19 = *(v3 + a3[7]);
        if (v19 >= 4)
        {
          return v19 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = v16;
      v14 = a3[6];
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C453F74C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1C4EFD548();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for Source();
      result = sub_1C43FCF8C(v17);
      if (*(v19 + 84) != a3)
      {
        *(v4 + a4[7]) = a2 + 3;
        return result;
      }

      v11 = result;
      v16 = a4[6];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453F870(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_15:

    return sub_1C44157D4(v10, a2, v9);
  }

  v11 = sub_1C4EFD548();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_14:
    v10 = v3 + v14;
    goto LABEL_15;
  }

  if (a2 != 2147483645)
  {
    v9 = type metadata accessor for PhaseStores();
    v14 = a3[9];
    goto LABEL_14;
  }

  v15 = *(v3 + a3[8]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  v17 = v16 <= 0;
  if (v16 < 0)
  {
    v16 = -1;
  }

  if (v17)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_1C453F988(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1C4EFD548();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 2147483645)
      {
        *(v4 + a4[8]) = (a2 + 1);
        return result;
      }

      v11 = type metadata accessor for PhaseStores();
      v16 = a4[9];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_1C44157D4(v10, a2, v9);
  }

  v11 = type metadata accessor for Source();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C453FBB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EFD548();
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C453FD24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFD548();
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C453FDDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 8));
  }

  sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  v5 = sub_1C4412B9C(*(a3 + 24));

  return sub_1C44157D4(v5, v6, v7);
}

void sub_1C453FE60()
{
  sub_1C4432A70();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
    v5 = sub_1C4412B9C(*(v4 + 24));

    sub_1C440BAA8(v5, v6, v0, v7);
  }
}

uint64_t sub_1C453FF54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 24));
  }

  sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  v5 = sub_1C4412B9C(*(a3 + 32));

  return sub_1C44157D4(v5, v6, v7);
}

void sub_1C453FFD8()
{
  sub_1C4432A70();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
    v5 = sub_1C4412B9C(*(v4 + 32));

    sub_1C440BAA8(v5, v6, v0, v7);
  }
}

uint64_t sub_1C45400B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_7:

    return sub_1C44157D4(a1 + v10, a2, v9);
  }

  v11 = sub_1C4EFEEF8();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_7;
  }

  v14 = sub_1C4EFF8A8();
  v15 = sub_1C43FCF8C(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[7];
    goto LABEL_7;
  }

  v18 = *(a1 + a3[9] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1C45401E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_1C4EFEEF8();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v16 = sub_1C4EFF8A8();
      result = sub_1C43FCF8C(v16);
      if (*(v18 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v12 = a4[7];
    }
  }

  return sub_1C440BAA8(a1 + v12, a2, a2, v11);
}

uint64_t sub_1C45403E0()
{
  v1 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1C4EF98F8();
  sub_1C43FD3F8(v7);
  (*(v8 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C45404A4()
{
  v1 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = sub_1C4EF98F8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(v0 + v4);
  v10 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C45405C0()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v6 + v7;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 2, v4 | 7);
}

uint64_t sub_1C4540678(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C454070C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4540B78()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C4540C28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_7:

    return sub_1C44157D4(a1 + v10, a2, v9);
  }

  v11 = sub_1C4EFEEF8();
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_7;
  }

  v14 = sub_1C4EFF8A8();
  v15 = sub_1C43FCF8C(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[7];
    goto LABEL_7;
  }

  v18 = *(a1 + a3[9] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1C4540D58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_1C4EFEEF8();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v16 = sub_1C4EFF8A8();
      result = sub_1C43FCF8C(v16);
      if (*(v18 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v12 = a4[7];
    }
  }

  return sub_1C440BAA8(a1 + v12, a2, a2, v11);
}

uint64_t sub_1C4540FB4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(v3 + a3[6]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v14 = a3[9];
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C45410B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return result;
      }

      v11 = sub_1C4EFD548();
      v16 = a4[9];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4541258@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationGraphUpdateBatchSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C454129C@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationSubjectIdBatchSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C45412E0@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationMaxAttempts.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541324@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationMaxRemoteDevices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541368@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.sqlite3ReducedCacheSpillSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C45413AC@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.sqlite3MediumCacheSpillSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541698@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.maxSubjectIdSetSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C45417EC@<X0>(_BYTE *a1@<X8>)
{
  result = static NSUserDefaults.isESDataCollectionDaily.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C4541A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_1C4541B04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4541C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C4EFC318();

  return sub_1C44157D4(a1 + v5, a2, v6);
}

uint64_t sub_1C4541C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C4EFC318();

  return sub_1C440BAA8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C4541F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s10ViewConfigVMa(0);
    v9 = a1 + *(a3 + 68);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4541FD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = _s10ViewConfigVMa(0);
    v8 = v5 + *(a4 + 68);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C454224C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EFBE38();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C45422D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFBE38();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4542418()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4542464(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF98F8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C45424EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF98F8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4542594()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C45425D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4542634(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF98F8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C45426BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF98F8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4542748()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1C440962C(v0 + 7);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C4542888()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45428D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4542910()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4542954()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C45429B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF98F8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
    v10 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C4542A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C4EF98F8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v11 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
    v12 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4542B04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF98F8();
    v9 = sub_1C43FCF8C(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
      v12 = *(a3 + 24);
    }

    return sub_1C44157D4(a1 + v12, a2, v11);
  }
}

void *sub_1C4542BD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C4EF98F8();
    v9 = sub_1C43FCF8C(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
      v12 = *(a4 + 24);
    }

    return sub_1C440BAA8(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C4542CFC()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  sub_1C440962C(v0 + 10);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4542D50()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  sub_1C440962C(v0 + 10);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4542DDC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4542E1C()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  sub_1C440962C(v0 + 10);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4542E74()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  v11 = *(v0 + 5);

  v12 = *(v0 + 7);

  v13 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C4542F60()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 104) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 5);

  v10 = *(v0 + 7);

  v11 = *(v0 + 9);

  v12 = *(v0 + 10);

  v13 = *(v0 + 11);

  v14 = *(v0 + 12);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C4543054()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C454309C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45430E4()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  v11 = *(v0 + 5);

  v12 = *(v0 + 6);

  v13 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C45431DC()
{
  v1 = sub_1C4EFF0C8();
  sub_1C43FCDF8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  v10 = *(v0 + 40);

  v11 = *(v0 + 48);

  v12 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C45432D0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4543340()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C45433B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  a2[3] = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  *a2 = v4;

  return v4;
}

uint64_t sub_1C4543414()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C4543450()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4543484()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1C45434BC()
{
  v1 = *(v0 + 24);

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C45434F0()
{
  v1 = *(v0 + 16);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4543524()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4543568()
{
  sub_1C440962C((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45435E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
    v8 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4543684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4EFF0C8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
    v10 = v4 + *(a4 + 20);
  }

  return sub_1C440BAA8(v10, a2, a2, v9);
}

uint64_t sub_1C4543730()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45437E8()
{
  sub_1C440962C((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4543820()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C4543888()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C45438E8()
{
  sub_1C43FE96C();
  v75[0] = v0;
  v88 = v1;
  v2 = sub_1C4EFFA28();
  v3 = sub_1C43FCDF8(v2);
  v87 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  v78 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v79 = v9;
  v10 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBFDC();
  v80 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v83 = v14;
  v15 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v77 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v81 = (v75 - v21);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v82 = v23;
  v76 = sub_1C456902C(&qword_1EC0C4DD0, &qword_1C4F5E308);
  AssociatedConformanceWitness = *(v76 - 8);
  v24 = *(AssociatedConformanceWitness + 64);
  MEMORY[0x1EEE9AC00](v76);
  v26 = v75 - v25;
  v89 = sub_1C456902C(&qword_1EC0C4F88, &qword_1C4F5E430);
  v27 = sub_1C43FCDF8(v89);
  v75[1] = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = v75 - v31;
  v33 = sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  v34 = sub_1C4401CBC(&qword_1EDDEFF80, &qword_1EC0C0CE0, &unk_1C4F40610);
  v90 = v33;
  v91 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v88;
  v36 = sub_1C4F01488();
  v90 = MEMORY[0x1E69E7CC0];
  sub_1C459F038();
  v37 = v90;
  (*(AssociatedConformanceWitness + 16))(v26, v35, v76);
  v88 = v32;
  sub_1C4F01478();
  if (v36 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v85 = v15;
  if (v36)
  {
    v84 = v37;
    v38 = (v87 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v39 = &qword_1EC0C4F80;
    v40 = v80;
    while (1)
    {
      sub_1C4F01FA8();
      if (sub_1C44157D4(v40, 1, v15) == 1)
      {
        goto LABEL_22;
      }

      v41 = v77;
      sub_1C4460050(v40, v77, v39, &qword_1C4F5E5B0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = v78;
      if (EnumCaseMultiPayload == 1)
      {
        v55 = *v41;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        swift_willThrowTypedImpl();
        v56 = sub_1C440926C();
        v57(v56);

        sub_1C4420C3C(v40, &qword_1EC0C4F80, &qword_1C4F5E5B0);
        goto LABEL_20;
      }

      v44 = v39;
      v45 = *v38;
      v46 = v41;
      v47 = v2;
      (*v38)(v78, v46, v2);
      v48 = v44;
      sub_1C4420C3C(v40, v44, &qword_1C4F5E5B0);
      v49 = v84;
      v90 = v84;
      v51 = *(v84 + 16);
      v50 = *(v84 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1C43FCFE8(v50);
        sub_1C459F038();
        v43 = v78;
        v49 = v90;
      }

      *(v49 + 16) = v51 + 1;
      sub_1C4426168();
      v84 = v52;
      v45(v52 + v53 + *(v54 + 72) * v51, v43, v47);
      --v36;
      v2 = v47;
      v15 = v85;
      v39 = v48;
      v40 = v80;
      if (!v36)
      {
        v59 = v82;
        v58 = v83;
        v37 = v84;
        goto LABEL_12;
      }
    }
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v82;
  v58 = v83;
LABEL_12:
  v60 = (v87 + 32);
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v58, 1, v15) == 1)
    {
      v70 = sub_1C440926C();
      v71(v70);
      sub_1C4420C3C(v58, &qword_1EC0C4F78, &unk_1C4F5E420);
      goto LABEL_20;
    }

    sub_1C44CD9E0(v58, v59, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v61 = v81;
    sub_1C4460050(v59, v81, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v62 = *v60;
    v63 = v61;
    v64 = v79;
    (*v60)(v79, v63, v2);
    sub_1C4420C3C(v59, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v90 = v37;
    v65 = v2;
    v67 = *(v37 + 16);
    v66 = *(v37 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_1C43FCFE8(v66);
      sub_1C459F038();
      v64 = v79;
      v37 = v90;
    }

    *(v37 + 16) = v67 + 1;
    sub_1C4426168();
    v62(v37 + v68 + *(v69 + 72) * v67, v64, v65);
    v2 = v65;
    v59 = v82;
    v58 = v83;
    v15 = v85;
  }

  v72 = *v61;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C4420C3C(v59, &qword_1EC0C4F80, &qword_1C4F5E5B0);
  v73 = sub_1C440926C();
  v74(v73);

LABEL_20:
  sub_1C43FBC80();
}

uint64_t sub_1C454403C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4544078()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C45440B0(uint64_t a1)
{
  v50 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = sub_1C43FCDF8(v50);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = v41 - v7;
  v47 = sub_1C4F00258();
  v8 = sub_1C43FCDF8(v47);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v45 = v14 - v13;
  sub_1C456902C(&qword_1EC0C4F18, &qword_1C4F5E3C0);
  sub_1C4F02538();
  v15 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v18 = *(v16 - 32);
  sub_1C43FD030();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v42 = v24 + 64;
  v43 = v10 + 16;
  v46 = v10;
  v49 = v4;
  v41[2] = v4 + 32;
  v41[3] = v10 + 32;
  v44 = v24;
  if (v21)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v21));
      v52 = (v21 - 1) & v21;
LABEL_8:
      v28 = v25 | (v15 << 6);
      v29 = v51;
      v30 = *(v51 + 48);
      v31 = v45;
      v32 = v46;
      v53 = *(v46 + 72) * v28;
      v33 = v47;
      (*(v46 + 16))(v45, v30 + v53, v47);
      v34 = *(*(v29 + 56) + 8 * v28);
      v35 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v36 = v48;
      sub_1C4EF93F8();
      *(v42 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v37 = v44;
      (*(v32 + 32))(*(v44 + 48) + v53, v31, v33);
      (*(v49 + 32))(*(v37 + 56) + *(v49 + 72) * v28, v36, v50);
      v38 = *(v37 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      *(v37 + 16) = v40;
      v21 = v52;
      if (!v52)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v15 >= v23)
      {
        return;
      }

      v27 = *(v16 + 8 * v15);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C45444AC()
{
  v1 = *(v0 + 16);

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C45444E0()
{
  v1 = sub_1C4EF98F8();
  sub_1C43FCDF8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  v11 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C45445B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0C4FF8, &qword_1C4F5E680);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1C4EF98F8();
    v8 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4544658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C456902C(&qword_1EC0C4FF8, &qword_1C4F5E680);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1C4EF98F8();
    v10 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v10, a2, a2, v9);
}

uint64_t sub_1C4544708(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s15ConfigReferenceOMa(0);
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C4544790(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s15ConfigReferenceOMa(0);
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4544818()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4544878(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C4EF98F8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_5:

    return sub_1C44157D4(a1 + v10, a2, v9);
  }

  v11 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[7]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C4544970(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C4EF98F8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[6];
  }

  return sub_1C440BAA8(a1 + v12, a2, a2, v11);
}

uint64_t sub_1C4544A98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4544B2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4544BA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4544BDC()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4544C10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4544C50()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4544C84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C4544CF0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C4544D50()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4544D98()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4544E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4544E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C4544EF0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4544F38()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C4544F98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4544FCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4545024()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C454506C()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C45450A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45450E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4545120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_1C440800C(*(a3 + 24));
  }

  return sub_1C44157D4(v3, a2, v7);
}

uint64_t sub_1C45451B4()
{
  v4 = sub_1C440122C();
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C440AB04();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C4545238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_1C440800C(*(a3 + 20));
  }

  return sub_1C44157D4(v3, a2, v7);
}

uint64_t sub_1C45452CC()
{
  v4 = sub_1C440122C();
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C440AB04();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C454561C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4545664()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1C440962C(v0 + 7);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C45456B4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  if (v0[12])
  {

    v7 = v0[14];

    v8 = v0[16];
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C4545730()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  if (v0[12])
  {

    v7 = v0[14];

    v8 = v0[16];
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C45457AC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[11];

  v6 = v0[13];

  if (v0[15])
  {

    v7 = v0[17];

    v8 = v0[19];
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1C4545830()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45459F0()
{
  v1 = *(v0 + 16);

  v2 = sub_1C4406518();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4545A20()
{
  v1 = *(v0 + 24);

  v2 = sub_1C4406518();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4545B4C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_1C4545C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C939C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4545C60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C93AC4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4545D18(char a1)
{
  if (a1)
  {
    return 7565423;
  }

  else
  {
    return 0x727453656D6F6962;
  }
}

uint64_t sub_1C4545F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9942C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4545FA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C9A164();
  *a1 = result;
  return result;
}

uint64_t sub_1C4545FF8(char a1)
{
  if (a1)
  {
    return 0x65766C6F736572;
  }

  else
  {
    return 0x74636172747865;
  }
}

uint64_t sub_1C4546080()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C45460B8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C45460F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1C4546134()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1C4546178()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C454710C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C4547144()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C4547180()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1C45471C0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4547208()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1C4547384()
{
  v1 = *(v0 + 16);

  v2 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C45473E0()
{
  v1 = _s10ViewConfigVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[3];

  if (v0[7])
  {
    sub_1C4CD7B5C(v0 + 4);
  }

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  v11 = v0[14];

  v12 = v0[15];

  v13 = v0[16];

  v14 = v0 + v3;
  v15 = *(v0 + v3 + 8);

  v16 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 48))
  {

    v17 = *(v14 + 7);

    v18 = *(v14 + 8);
  }

  v19 = *(v14 + 9);

  v20 = v14[112];
  if (v20 <= 0xFD)
  {
    sub_1C4C10CF8(*(v14 + 10), *(v14 + 11), *(v14 + 12), *(v14 + 13), v20);
  }

  v21 = *(v14 + 16);

  v22 = *(v14 + 18);

  v23 = *(v14 + 20);

  if (*(v14 + 22))
  {

    v24 = *(v14 + 24);
  }

  if (*(v14 + 26))
  {

    v25 = *(v14 + 28);
  }

  v26 = *(v14 + 29);

  v27 = *(v14 + 30);

  v28 = *(v14 + 31);

  v29 = *(v14 + 32);

  v30 = *(v14 + 33);

  v31 = *(v14 + 34);

  v32 = *(v14 + 35);

  v33 = *(v14 + 37);

  v34 = &v14[v1[18]];
  v35 = _s6ConfigVMa();
  if (!sub_1C44157D4(v34, 1, v35))
  {
    v36 = *(v34 + 2);

    if (*(v34 + 4))
    {

      v37 = *(v34 + 5);

      v38 = *(v34 + 6);

      v39 = *(v34 + 7);
    }

    if (*(v34 + 9))
    {

      v40 = *(v34 + 10);

      v41 = *(v34 + 12);

      v42 = *(v34 + 13);

      v43 = *(v34 + 14);

      v44 = *(v34 + 15);

      v45 = *(v34 + 17);

      v46 = *(v34 + 19);

      v47 = *(v34 + 20);
    }

    if (*(v34 + 22))
    {

      v48 = *(v34 + 23);

      v49 = *(v34 + 25);

      v50 = *(v34 + 26);

      v51 = *(v34 + 27);
    }

    if (*(v34 + 29))
    {

      v52 = *(v34 + 30);
    }

    v53 = *(v34 + 33);

    v54 = &v34[v35[11]];
    v55 = type metadata accessor for VectorDB.Config(0);
    if (!sub_1C44157D4(v54, 1, v55))
    {
      v102 = v4;
      v56 = *(v54 + 2);

      v57 = *(v54 + 4);

      v58 = *(v54 + 5);

      if (*(v54 + 7))
      {

        v59 = *(v54 + 8);
      }

      v60 = &v54[*(v55 + 40)];
      v61 = type metadata accessor for VectorDB.EmbeddingConfig(0);
      if (!sub_1C44157D4(v60, 1, v61))
      {
        v62 = *(v61 + 20);
        v63 = sub_1C4EFC318();
        sub_1C43FBCE0(v63);
        (*(v64 + 8))(v60 + v62);
      }

      v65 = *&v54[*(v55 + 44)];

      v4 = v102;
      v3 = (v2 + 136) & ~v2;
    }

    v66 = &v34[v35[13]];
    if (*(v66 + 1))
    {

      v67 = *(v66 + 3);

      v68 = *(v66 + 5);
    }

    v69 = *&v34[v35[14] + 8];

    v70 = &v34[v35[15]];
    if (*(v70 + 1))
    {

      v71 = *(v70 + 2);
    }

    v72 = &v34[v35[16]];
    if (*(v72 + 1))
    {

      v73 = *(v72 + 2);

      v74 = *(v72 + 3);

      v75 = *(v72 + 5);

      v76 = *(v72 + 7);

      if (*(v72 + 9))
      {

        v77 = *(v72 + 10);
      }
    }

    v78 = *&v34[v35[17] + 8];

    v79 = &v34[v35[18]];
    if (*(v79 + 1))
    {

      v80 = *(v79 + 2);

      v81 = *(v79 + 3);
    }
  }

  v82 = &v14[v1[19]];
  if (*(v82 + 1))
  {

    v83 = *(v82 + 3);

    v84 = *(v82 + 5);

    v85 = *(v82 + 7);
  }

  v86 = v1[20];
  v87 = sub_1C4F001E8();
  if (!sub_1C44157D4(&v14[v86], 1, v87))
  {
    (*(*(v87 - 8) + 8))(&v14[v86], v87);
  }

  v88 = *&v14[v1[21]];

  v89 = &v14[v1[25]];
  if (*(v89 + 1))
  {

    v90 = *(v89 + 2);
  }

  v91 = *&v14[v1[26]];

  v92 = *&v14[v1[27]];

  v93 = &v14[v1[28]];
  if (*v93)
  {

    v94 = *(v93 + 1);
  }

  v95 = *&v14[v1[29]];

  v96 = &v14[v1[31]];
  if (*(v96 + 1))
  {

    v97 = *(v96 + 3);

    v98 = *(v96 + 5);
  }

  v99 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = *(v0 + v99);

  return MEMORY[0x1EEE6BDD0](v0, v99 + 9, v2 | 7);
}

uint64_t sub_1C454799C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4547A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C4EF9D38();

  return sub_1C44157D4(a1 + v5, a2, v6);
}

uint64_t sub_1C4547A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C4EF9D38();

  return sub_1C440BAA8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C4547AC8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4547B00()
{
  v1 = (_s12JobSchedulerC13JobIdentifierVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v1[7];
  v8 = sub_1C4EF9D38();
  sub_1C43FBCE0(v8);
  (*(v9 + 8))(v7 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4547BE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4547C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4547CD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4547DA8()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4547DDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C454813C()
{
  v1 = *(v0 + 64);

  sub_1C4406298();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4548170()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_1C4434000(*(v0 + 56), v1);
  }

  sub_1C4406298();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C45481B4()
{
  v1 = v0[5];

  v2 = v0[10];
  if (v2 >> 60 != 15)
  {
    sub_1C4434000(v0[9], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4548204()
{
  v1 = v0[6];

  v2 = v0[10];
  if (v2 >> 60 != 15)
  {
    sub_1C4434000(v0[9], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1C45488AC(uint64_t a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  sub_1C4548644(a1, *a2, a2[1]);
}

uint64_t sub_1C45488D0()
{
  v1 = *(v0 + 16);

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4548914()
{
  v1 = *(v0 + 24);

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C4548A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    updated = _s17ViewUpdateRequestVMa(0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, updated);
  }
}

uint64_t sub_1C4548AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    updated = _s17ViewUpdateRequestVMa(0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, updated);
  }

  return result;
}

uint64_t sub_1C4548C0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1C444AB08();
}

uint64_t sub_1C4548C70()
{
  sub_1C440DD3C();
  if (v1 == v2)
  {
    return sub_1C4475524();
  }

  v4 = v0;
  sub_1C4EF9CD8();
  v5 = sub_1C4412B9C(*(v4 + 20));

  return sub_1C44157D4(v5, v6, v7);
}

void sub_1C4548CE0(uint64_t a1, uint64_t a2)
{
  sub_1C440DD3C();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1C4EF9CD8();
    v8 = sub_1C4412B9C(*(v7 + 20));

    sub_1C440BAA8(v8, v9, a2, v10);
  }
}

uint64_t sub_1C4548D58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4548D90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4548E50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4548E8C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4549058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFCE48();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4549104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EFCE48();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C45491AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C454923C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4549274()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FCDF8(v1);
  v3 = v2;
  v98 = *(v2 + 80);
  v4 = (v98 + 40) & ~v98;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4413D10();
  v73 = v12;
  sub_1C4413D10();
  v74 = v13;
  sub_1C4413D10();
  v75 = v14;
  sub_1C4413D10();
  v76 = v15;
  sub_1C4413D10();
  v77 = v16;
  sub_1C4413D10();
  v78 = v17;
  sub_1C4413D10();
  v79 = v18;
  sub_1C4413D10();
  v80 = v19;
  sub_1C4413D10();
  v81 = v20;
  sub_1C4413D10();
  v82 = v21;
  sub_1C4413D10();
  v83 = v22;
  sub_1C4413D10();
  v84 = v23;
  sub_1C4413D10();
  v85 = v24;
  sub_1C4413D10();
  v86 = v25;
  sub_1C4413D10();
  v87 = v26;
  sub_1C4413D10();
  v88 = v27;
  sub_1C4413D10();
  v89 = v28;
  sub_1C4413D10();
  v90 = v29;
  sub_1C4413D10();
  v91 = v30;
  sub_1C4413D10();
  v92 = v31;
  sub_1C4413D10();
  v93 = v32;
  sub_1C4413D10();
  v94 = v33;
  sub_1C4413D10();
  v95 = v34;
  sub_1C4413D10();
  v96 = v35;
  sub_1C4413D10();
  v97 = v36;
  v37 = *(v0 + 2);

  v38 = *(v0 + 3);

  v39 = *(v0 + 4);

  (*(v3 + 8))(&v0[v4], v1);
  v40 = *&v0[v6];

  v41 = *&v0[v7];

  v42 = *&v0[v8];

  v43 = *&v0[v9];

  v44 = *&v0[v10];

  v45 = *&v0[v11];

  v46 = *&v0[(v11 + 15) & 0xFFFFFFFFFFFFFFF8];

  v47 = *&v0[v73];

  v48 = *&v0[v74];

  v49 = *&v0[v75];

  v50 = *&v0[v76];

  v51 = *&v0[v77];

  v52 = *&v0[v78];

  v53 = *&v0[v79];

  v54 = *&v0[v80];

  v55 = *&v0[v81];

  v56 = *&v0[v82];

  v57 = *&v0[v83];

  v58 = *&v0[v84];

  v59 = *&v0[v85];

  v60 = *&v0[v86];

  v61 = *&v0[v87];

  v62 = *&v0[v88];

  v63 = *&v0[v89];

  v64 = *&v0[v90];

  v65 = *&v0[v91];

  v66 = *&v0[v92];

  v67 = *&v0[v93];

  v68 = *&v0[v94];

  v69 = *&v0[v95];

  v70 = *&v0[v96];

  v71 = *&v0[v97];

  return MEMORY[0x1EEE6BDD0](v0, v97 + 8, v98 | 7);
}

uint64_t sub_1C454969C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C454970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_1C43FCE3C(*(a1 + *(a3 + 28) + 8));
    }

    v7 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
    v8 = a1 + *(a3 + 36);
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C45497E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
    v10 = a1 + *(a4 + 36);
  }

  return sub_1C440BAA8(v10, a2, a2, v9);
}

uint64_t sub_1C45498BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 24));
  }

  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v8 = a1 + *(a3 + 28);

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4549944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
    v8 = v5 + *(a4 + 28);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}