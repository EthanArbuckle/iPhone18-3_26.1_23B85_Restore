uint64_t sub_21438DE5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000214799500 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000214799520 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000214799540 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21438DF80()
{
  result = qword_27C911C00;
  if (!qword_27C911C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C00);
  }

  return result;
}

uint64_t sub_21438DFD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x8000000214799560 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C61565F6C7275 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x565F72656C616964 && a2 == 0xEC00000065756C61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756C61565F70616DLL && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xEE0065756C61565FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5F65736F706D6F63 && a2 == 0xED000065756C6156 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x565F656369766564 && a2 == 0xEC00000065756C61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xEE0065756C61565FLL)
  {

    return 7;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_21438E298()
{
  result = qword_27C911C08;
  if (!qword_27C911C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C08);
  }

  return result;
}

uint64_t sub_21438E2EC()
{
  v0 = sub_2146DA098();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21438E338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000028 && 0x8000000214799580 == a2;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEE0065756C61565FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002147995B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21438E464()
{
  result = qword_27C911C10;
  if (!qword_27C911C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C10);
  }

  return result;
}

uint64_t sub_21438E4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5F746F6274616863 && a2 == 0xEF6567617373654DLL;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002147995D0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x80000002147995F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21438E5E4()
{
  result = qword_27C911C18;
  if (!qword_27C911C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C18);
  }

  return result;
}

uint64_t sub_21438E638(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000214799620 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61565F796C706572 && a2 == 0xEB0000000065756CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x565F6E6F69746361 && a2 == 0xEC00000065756C61)
  {

    return 2;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21438E764()
{
  result = qword_27C911C20;
  if (!qword_27C911C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C20);
  }

  return result;
}

uint64_t sub_21438E7B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000214799640 == a2;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F6567617373656DLL && a2 == 0xED000065756C6156 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214799660 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21438E8E8()
{
  result = qword_27C911C28;
  if (!qword_27C911C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C28);
  }

  return result;
}

unint64_t sub_21438E93C()
{
  result = qword_27C911C38;
  if (!qword_27C911C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C38);
  }

  return result;
}

unint64_t sub_21438E990()
{
  result = qword_27C911C40;
  if (!qword_27C911C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C40);
  }

  return result;
}

unint64_t sub_21438E9E4()
{
  result = qword_27C911C50;
  if (!qword_27C911C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C50);
  }

  return result;
}

uint64_t sub_21438EA3C(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a2;
  return v3(a1, &v6) & 1;
}

uint64_t sub_21438EA84(char *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EAD8(__int128 *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EB28(int *a1, char *a2)
{
  v3 = *(a1 + 4);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_21438EB7C(int *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EBC8(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EC18(__int128 *a1, char *a2)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_21438EC70(__int128 *a1, char *a2)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_21438ECC4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = a1[1];
  v4 = **(v1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = v2;
  return v5(v9, &v8) & 1;
}

uint64_t sub_21438ED20(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v11[0] = v6;
  v11[1] = v5;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = v3;
  return v7(v11, &v10) & 1;
}

uint64_t sub_21438ED80(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v9[0] = *a1;
  v9[1] = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(v9, &v8) & 1;
}

uint64_t sub_21438EE00(uint64_t *a1, char *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v9 = *a1;
  v10 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v4;
  return v5(&v9, &v8) & 1;
}

uint64_t sub_21438EE58(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EEA8(int *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EEF8(__int16 *a1, char *a2)
{
  v3 = *a2;
  v8 = *a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_21438EF44(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5[2] = &v7;
  v6 = v3;
  return sub_214042458(sub_21438ECC4, v5, v2) & 1;
}

uint64_t sub_21438EFA4(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_2140479E4(sub_21438EDD8, v6, v4) & 1;
}

unint64_t sub_21438F02C()
{
  result = qword_27C911C98;
  if (!qword_27C911C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911C98);
  }

  return result;
}

unint64_t sub_21438F084()
{
  result = qword_27C911CA0;
  if (!qword_27C911CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CA0);
  }

  return result;
}

unint64_t sub_21438F0DC()
{
  result = qword_27C911CA8;
  if (!qword_27C911CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CA8);
  }

  return result;
}

unint64_t sub_21438F134()
{
  result = qword_27C911CB0;
  if (!qword_27C911CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CB0);
  }

  return result;
}

unint64_t sub_21438F188()
{
  result = qword_27C911CB8;
  if (!qword_27C911CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CB8);
  }

  return result;
}

uint64_t sub_21438FADC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

__n128 OrderPreview.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 480);
  result = *(v1 + 448);
  v4 = *(v1 + 464);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 OrderPreview.backgroundColor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 448) = *a1;
  *(v1 + 464) = v4;
  *(v1 + 480) = v2;
  return result;
}

uint64_t OrderPreview.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 536);
  *a1 = *(v1 + 488);
  *(a1 + 8) = v2;
  v4 = *(v1 + 520);
  *(a1 + 16) = *(v1 + 504);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 OrderPreview.primaryText.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = a1[3].n128_i8[0];
  v6 = *(v1 + 496);

  *(v1 + 488) = v3;
  *(v1 + 496) = v4;
  result = a1[1];
  v8 = a1[2];
  *(v1 + 504) = result;
  *(v1 + 520) = v8;
  *(v1 + 536) = v5;
  return result;
}

uint64_t OrderPreview.secondaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 584);
  v3 = *(v1 + 592);
  *a1 = *(v1 + 544);
  v4 = *(v1 + 568);
  *(a1 + 8) = *(v1 + 552);
  *(a1 + 24) = v4;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

__n128 OrderPreview.secondaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(v1 + 552);

  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 544) = *a1;
  *(v1 + 560) = v8;
  *(v1 + 576) = v3;
  *(v1 + 584) = v4;
  *(v1 + 592) = v5;
  return result;
}

uint64_t OrderPreview.tertiaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  v3 = *(v1 + 648);
  *a1 = *(v1 + 600);
  v4 = *(v1 + 624);
  *(a1 + 8) = *(v1 + 608);
  *(a1 + 24) = v4;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

__n128 OrderPreview.tertiaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(v1 + 608);

  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 600) = *a1;
  *(v1 + 616) = v8;
  *(v1 + 632) = v3;
  *(v1 + 640) = v4;
  *(v1 + 648) = v5;
  return result;
}

__n128 OrderPreview.init(headerImage:backgroundColor:primaryText:secondaryText:tertiaryText:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 32);
  v12 = *a3;
  v13 = a3[1];
  v14 = a6 + 480;
  v15 = *(a3 + 48);
  v24 = *(a4 + 40);
  v25 = *(a4 + 32);
  v23 = *(a4 + 48);
  v27 = *(a5 + 40);
  v28 = *(a5 + 32);
  v26 = *(a5 + 48);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0x1FFFFFFFELL;
  v16 = (a6 + 280);
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  v16[7] = 0u;
  v16[8] = 0u;
  v16[9] = 0u;
  *(a6 + 440) = 0;
  *(a6 + 448) = 0u;
  *(a6 + 464) = 0u;
  *(a6 + 480) = 1;
  *(a6 + 544) = 0u;
  *(a6 + 560) = 0u;
  *(a6 + 576) = 0u;
  *(a6 + 592) = 0;
  *(a6 + 648) = 0;
  *(v14 + 152) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 120) = 0u;
  sub_21402EDB8(a1, a6, &qword_27C911CC0, &qword_214731D20);
  v17 = *(a2 + 16);
  *(a6 + 448) = *a2;
  *(a6 + 464) = v17;
  *(a6 + 480) = v11;
  *(a6 + 488) = v12;
  *(a6 + 496) = v13;
  v18 = *(a3 + 1);
  *(v14 + 40) = *(a3 + 2);
  *(v14 + 24) = v18;
  *(a6 + 536) = v15;
  v19 = *(a6 + 552);

  v20 = *(a4 + 16);
  *(a6 + 544) = *a4;
  *(a6 + 560) = v20;
  *(a6 + 576) = v25;
  *(a6 + 584) = v24;
  *(a6 + 592) = v23;
  v21 = *(a6 + 608);

  result = *a5;
  *(v14 + 136) = *(a5 + 16);
  *(v14 + 120) = result;
  *(a6 + 632) = v28;
  *(a6 + 640) = v27;
  *(a6 + 648) = v26;
  return result;
}

uint64_t OrderPreview.OrderText.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 OrderPreview.OrderText.overrideColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void __swiftcall OrderPreview.OrderText.init(text:overrideColor:)(BlastDoor::OrderPreview::OrderText *__return_ptr retstr, Swift::String text, BlastDoor::Color_optional *overrideColor)
{
  is_nil = overrideColor->is_nil;
  retstr->text = text;
  v4 = *&overrideColor->value.blue;
  *&retstr->overrideColor.value.red = *&overrideColor->value.red;
  *&retstr->overrideColor.value.blue = v4;
  retstr->overrideColor.is_nil = is_nil;
}

uint64_t sub_214390030()
{
  if (*v0)
  {
    result = 0x656469727265766FLL;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_214390070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xED0000726F6C6F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214390154(uint64_t a1)
{
  v2 = sub_214390374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214390190(uint64_t a1)
{
  v2 = sub_214390374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrderPreview.OrderText.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911CC8, &qword_214731D28);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v10;
  v19 = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214390374();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v17 = v13;
    v16 = v14;
    v18 = v19;
    v20 = 1;
    sub_2142FCF88();
    sub_2146DA308();
  }

  return (*(v15 + 8))(v7, v4);
}

unint64_t sub_214390374()
{
  result = qword_27C911CD0;
  if (!qword_27C911CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CD0);
  }

  return result;
}

uint64_t OrderPreview.OrderText.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911CD8, &qword_214731D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214390374();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  v21 = 1;
  sub_2142FCE0C();
  sub_2146DA148();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v19[0];
  v17 = v19[1];
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OrderPreview.OrderImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 OrderPreview.OrderImage.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*OrderPreview.OrderImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *OrderPreview.OrderImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*OrderPreview.OrderImage.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

double static OrderPreview.OrderImage.with(image:ofType:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  LOWORD(v38[0]) = 0;
  sub_2140615D0(v38);
  v6 = v38[8];
  v7 = v38[10];
  v8 = v38[11];
  *(a3 + 392) = v38[9];
  *(a3 + 408) = v7;
  *(a3 + 424) = v8;
  v9 = v38[4];
  v10 = v38[6];
  v11 = v38[7];
  *(a3 + 328) = v38[5];
  *(a3 + 344) = v10;
  *(a3 + 360) = v11;
  *(a3 + 376) = v6;
  v12 = v38[1];
  *(a3 + 248) = v38[0];
  v13 = v38[2];
  v14 = v38[3];
  *(a3 + 264) = v12;
  *(a3 + 280) = v13;
  *(a3 + 296) = v14;
  *(a3 + 312) = v9;
  *(a3 + 240) = 0;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 440) = v5;
  sub_21407CF14(a1, v23);
  sub_213FB2DF4(a3, &qword_27C904858, &qword_214736F00);
  v15 = v35;
  *(a3 + 192) = v34;
  *(a3 + 208) = v15;
  *(a3 + 224) = v36;
  *(a3 + 240) = v37;
  v16 = v31;
  *(a3 + 128) = v30;
  *(a3 + 144) = v16;
  v17 = v33;
  *(a3 + 160) = v32;
  *(a3 + 176) = v17;
  v18 = v27;
  *(a3 + 64) = v26;
  *(a3 + 80) = v18;
  v19 = v29;
  *(a3 + 96) = v28;
  *(a3 + 112) = v19;
  v20 = v23[1];
  *a3 = v23[0];
  *(a3 + 16) = v20;
  result = *&v24;
  v22 = v25;
  *(a3 + 32) = v24;
  *(a3 + 48) = v22;
  return result;
}

uint64_t sub_214390A7C()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_214390AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214390B84(uint64_t a1)
{
  v2 = sub_214390DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214390BC0(uint64_t a1)
{
  v2 = sub_214390DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrderPreview.OrderImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911CE0, &qword_214731D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214390DB8();
  sub_2146DAA28();
  v12[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  if (!v2)
  {
    v12[14] = *(v3 + 440);
    v12[13] = 1;
    sub_214390E0C();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214390DB8()
{
  result = qword_27C911CE8;
  if (!qword_27C911CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CE8);
  }

  return result;
}

unint64_t sub_214390E0C()
{
  result = qword_27C911CF0;
  if (!qword_27C911CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911CF0);
  }

  return result;
}

uint64_t OrderPreview.OrderImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911CF8, &qword_214731D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7 - 8];
  LOWORD(v29[0]) = 0;
  sub_2140615D0(v29);
  v25 = v29[9];
  v26 = v29[10];
  v27 = v29[11];
  v21 = v29[5];
  v22 = v29[6];
  v23 = v29[7];
  v24 = v29[8];
  v17 = v29[1];
  v18 = v29[2];
  v19 = v29[3];
  v20 = v29[4];
  v16 = v29[0];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214390DB8();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v14, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v10 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    HIBYTE(v12) = 0;
    sub_2140A4DD4(&qword_280B30CB8);
    sub_2146DA1C8();
    sub_21402EDB8(v13, v14, &qword_27C905500, &qword_2146F2BE0);
    HIBYTE(v12) = 1;
    sub_21439112C();
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    v28 = v13[0];
    sub_214391180(v14, v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2143911B8(v14);
  }
}

unint64_t sub_21439112C()
{
  result = qword_27C911D00;
  if (!qword_27C911D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D00);
  }

  return result;
}

uint64_t OrderPreview.Constraints.workingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t OrderPreview.Constraints.init(workingDirectory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21439128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002147996C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_214391320(uint64_t a1)
{
  v2 = sub_214391518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21439135C(uint64_t a1)
{
  v2 = sub_214391518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrderPreview.Constraints.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911D08, &qword_214731D48);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214391518();

  sub_2146DAA28();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  sub_2140A6418();
  v11 = v13[0];
  sub_2146DA388();

  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_214391518()
{
  result = qword_27C911D10;
  if (!qword_27C911D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D10);
  }

  return result;
}

uint64_t OrderPreview.Constraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911D18, &qword_214731D50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214391518();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14[2];
    v12 = v15;
    *a2 = v14[1];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214391714()
{
  v1 = *v0;
  v2 = 0x6D49726564616568;
  v3 = 0x547972616D697270;
  v4 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x7972616974726574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756F72676B636162;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2143917E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214392C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214391808(uint64_t a1)
{
  v2 = sub_214391B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214391844(uint64_t a1)
{
  v2 = sub_214391B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrderPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911D20, &qword_214731D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214391B54();
  sub_2146DAA28();
  v22[0] = 0;
  sub_214391BA8();
  sub_2146DA308();
  if (!v2)
  {
    v11 = *(v3 + 480);
    v12 = *(v3 + 464);
    *v22 = *(v3 + 448);
    *&v22[16] = v12;
    v22[32] = v11;
    v24 = 1;
    sub_2142FCF88();
    sub_2146DA308();
    v13 = *(v3 + 496);
    v14 = *(v3 + 536);
    *v22 = *(v3 + 488);
    *&v22[8] = v13;
    v15 = *(v3 + 520);
    *&v22[16] = *(v3 + 504);
    *&v22[32] = v15;
    v23 = v14;
    v24 = 2;
    sub_214391BFC();

    sub_2146DA388();

    v16 = *(v3 + 584);
    v17 = *(v3 + 592);
    *v22 = *(v3 + 544);
    *&v22[8] = *(v3 + 552);
    *&v22[24] = *(v3 + 568);
    *&v22[40] = v16;
    v23 = v17;
    v24 = 3;

    sub_2146DA308();

    v18 = *(v3 + 640);
    v19 = *(v3 + 648);
    *v22 = *(v3 + 600);
    v20 = *(v3 + 624);
    *&v22[8] = *(v3 + 608);
    *&v22[24] = v20;
    *&v22[40] = v18;
    v23 = v19;
    v24 = 4;

    sub_2146DA308();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214391B54()
{
  result = qword_27C911D28;
  if (!qword_27C911D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D28);
  }

  return result;
}

unint64_t sub_214391BA8()
{
  result = qword_27C911D30;
  if (!qword_27C911D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D30);
  }

  return result;
}

unint64_t sub_214391BFC()
{
  result = qword_27C911D38;
  if (!qword_27C911D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D38);
  }

  return result;
}

uint64_t OrderPreview.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  *&v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911D40, &qword_214731D60);
  *&v19 = *(v20 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v15 - v5;
  memset(v26, 0, sizeof(v26));
  v27 = 0x1FFFFFFFELL;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v50 = 0u;
  v49 = 0;
  v52 = 0u;
  v51 = 0u;
  v53 = 0;
  v7 = a1[3];
  v8 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_214391B54();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_213FB2DF4(v26, &qword_27C911CC0, &qword_214731D20);
  }

  else
  {
    v9 = v19;
    v21 = 0;
    sub_21439208C();
    sub_2146DA148();
    sub_21402EDB8(&v22, v26, &qword_27C911CC0, &qword_214731D20);
    v21 = 1;
    sub_2142FCE0C();
    sub_2146DA148();
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v21 = 2;
    sub_2143920E0();
    sub_2146DA1C8();
    v42 = v22;
    v43 = v23;
    v44 = v24;
    v45 = v25;
    v21 = 3;
    sub_2146DA148();
    v10 = v24;
    v17 = v25;
    v15 = v23;
    v16 = v22;

    v46 = v16;
    v47 = v15;
    v48 = v10;
    v49 = v17;
    v21 = 4;
    v11 = v20;
    sub_2146DA148();
    (*(v9 + 8))(v6, v11);
    v12 = v24;
    v13 = v25;
    v19 = v23;
    v20 = v22;

    v50 = v20;
    v51 = v19;
    v52 = v12;
    v53 = v13;
    sub_214392134(v26, v18);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_21439216C(v26);
  }
}

unint64_t sub_21439208C()
{
  result = qword_27C911D48;
  if (!qword_27C911D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D48);
  }

  return result;
}

unint64_t sub_2143920E0()
{
  result = qword_27C911D50;
  if (!qword_27C911D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D50);
  }

  return result;
}

unint64_t sub_2143921A0()
{
  result = qword_27C911D58;
  if (!qword_27C911D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D58);
  }

  return result;
}

unint64_t sub_214392224()
{
  result = qword_27C911D60;
  if (!qword_27C911D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D60);
  }

  return result;
}

unint64_t sub_21439227C()
{
  result = qword_27C911D68;
  if (!qword_27C911D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D68);
  }

  return result;
}

unint64_t sub_2143922D0(uint64_t a1)
{
  result = sub_2143922F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2143922F8()
{
  result = qword_27C911D70;
  if (!qword_27C911D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D70);
  }

  return result;
}

uint64_t sub_214392378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143923B4()
{
  result = qword_27C911D78;
  if (!qword_27C911D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D78);
  }

  return result;
}

unint64_t sub_214392408()
{
  result = qword_27C911D80;
  if (!qword_27C911D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12OrderPreviewV0C5ImageVSg(uint64_t a1)
{
  if ((*(a1 + 272) >> 1) > 0x80000000)
  {
    return -(*(a1 + 272) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2143924BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 649))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 496);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214392504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 648) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 649) = 1;
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
      *(result + 496) = (a2 - 1);
      return result;
    }

    *(result + 649) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21439261C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_214392664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143926CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 441))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21439271C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 440) = 0;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 441) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 441) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214392858()
{
  result = qword_27C911D88;
  if (!qword_27C911D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D88);
  }

  return result;
}

unint64_t sub_2143928B0()
{
  result = qword_27C911D90;
  if (!qword_27C911D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D90);
  }

  return result;
}

unint64_t sub_214392908()
{
  result = qword_27C911D98;
  if (!qword_27C911D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911D98);
  }

  return result;
}

unint64_t sub_214392960()
{
  result = qword_27C911DA0;
  if (!qword_27C911DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DA0);
  }

  return result;
}

unint64_t sub_2143929B8()
{
  result = qword_27C911DA8;
  if (!qword_27C911DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DA8);
  }

  return result;
}

unint64_t sub_214392A10()
{
  result = qword_27C911DB0;
  if (!qword_27C911DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DB0);
  }

  return result;
}

unint64_t sub_214392A68()
{
  result = qword_27C911DB8;
  if (!qword_27C911DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DB8);
  }

  return result;
}

unint64_t sub_214392AC0()
{
  result = qword_27C911DC0;
  if (!qword_27C911DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DC0);
  }

  return result;
}

unint64_t sub_214392B18()
{
  result = qword_27C911DC8;
  if (!qword_27C911DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DC8);
  }

  return result;
}

unint64_t sub_214392B70()
{
  result = qword_27C911DD0;
  if (!qword_27C911DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DD0);
  }

  return result;
}

unint64_t sub_214392BC8()
{
  result = qword_27C911DD8;
  if (!qword_27C911DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DD8);
  }

  return result;
}

unint64_t sub_214392C20()
{
  result = qword_27C911DE0;
  if (!qword_27C911DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DE0);
  }

  return result;
}

uint64_t sub_214392C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D49726564616568 && a2 == 0xEB00000000656761;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEB00000000747865 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xEC00000074786554)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_214392E40()
{
  result = qword_27C911DE8;
  if (!qword_27C911DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911DE8);
  }

  return result;
}

unint64_t sub_214392EC8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  *(v3 + 32) = v9;
  v11 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143930D8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DFC4;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146EAEB0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF28;
  *(v6 + 24) = v3;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v8 + 16) = sub_21439DF54;
  *(v8 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21439DF64;
  *(v10 + 24) = v8;
  *(inited + 32) = v10;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2143932CC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_213FDC8D0;
  v5[3] = 0;
  v5[4] = 1;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_213FB7994;
  v7[3] = 0;
  v7[4] = 255;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_21439DF90;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214032610;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143934A4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DFC0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21408E9E0;
  *(v4 + 24) = v3;
  *(inited + 32) = v4;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_21439357C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143935D4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21439363C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_214393688(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[5].n128_u64[1];
  v6 = v1[6].n128_u64[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2143936E0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHealthInvitation(0) + 64));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_21439376C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHealthInvitation(0) + 64));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143937E4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHealthInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214393850(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHealthInvitation(0) + 68));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143938C8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHealthInvitation(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

__n128 sub_214393928(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for IDSHealthInvitation(0) + 88));
  v6 = v5->n128_u64[1];
  v7 = v5[1].n128_u64[0];

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_214393990()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_214393A10()
{
  if (*(v0 + 96))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214393A80()
{
  v1 = v0 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214393B10()
{
  v1 = v0 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214393BA0()
{
  if (*(v0 + *(type metadata accessor for IDSHealthInvitation(0) + 88) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214393C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214393CE8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214393D50@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214393DDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214393E54@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214393EC0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214393F3C()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214393FBC()
{
  v1 = v0 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_21439404C()
{
  v1 = v0 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214394110@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214394168(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143941D0()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

void (*sub_214394250(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_214394328(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_2143943C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439450C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_2143945E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_214394684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143946EC(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214394794(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v10 = *(v2 + 104);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 96);

    *(v2 + 96) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2143948D0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214394968;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214394968(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 80);
    v10 = *(v4 + 88);
    v14 = *(v4 + 104);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 96) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 80);
  v5 = *(v4 + 88);
  v14 = *(v4 + 104);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 96) = v3;
}

uint64_t sub_214394B48(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  return result;
}

void (*sub_214394BBC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214394C54;
}

void sub_214394C54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 88);
  v8 = *(v3 + 96);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 88);

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
  }

  free(v2);
}

uint64_t sub_214394D14()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_214394D44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_214394D9C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_214394DCC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_21439522C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2143952C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214395390(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143954E0(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 64);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2143955CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation(0) + 64));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439563C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2143956D4(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 64);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_214395780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439581C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143958E4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214395A34(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 68);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_214395B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214395B90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_214395C28(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 68);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_214395DAC@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IDSHealthInvitation(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t sub_214395DE0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IDSHealthInvitation(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t sub_214395E58()
{
  v1 = *(v0 + *(type metadata accessor for IDSHealthInvitation(0) + 80));
}

uint64_t sub_214395E8C(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSHealthInvitation(0) + 80);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_214395F14@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IDSHealthInvitation(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t sub_214395F48(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IDSHealthInvitation(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t sub_214395FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for IDSHealthInvitation(0) + 88) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214396054(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 88);
  sub_2140325F8(v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214396110(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IDSHealthInvitation(0) + 88);
  v11 = a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v10 = *(v3 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v3 + 16);

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214396258(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IDSHealthInvitation(0) + 88);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214396308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_21439636C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 88);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

void (*sub_2143963F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 88);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_2143964B4()
{
  if (*v0)
  {
    result = 0x74736575716572;
  }

  else
  {
    result = 0x657469766E69;
  }

  *v0;
  return result;
}

uint64_t sub_2143964EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657469766E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2143965C4(uint64_t a1)
{
  v2 = sub_2143969E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214396600(uint64_t a1)
{
  v2 = sub_2143969E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214396648(uint64_t a1)
{
  v2 = sub_214396A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214396684(uint64_t a1)
{
  v2 = sub_214396A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143966C0(uint64_t a1)
{
  v2 = sub_214396A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143966FC(uint64_t a1)
{
  v2 = sub_214396A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214396738(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911DF0, &qword_214732A18);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911DF8, &qword_214732A20);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E00, &qword_214732A28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143969E8();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_214396A3C();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_214396A90();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_2143969E8()
{
  result = qword_27C911E08;
  if (!qword_27C911E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911E08);
  }

  return result;
}

unint64_t sub_214396A3C()
{
  result = qword_27C911E10;
  if (!qword_27C911E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911E10);
  }

  return result;
}

unint64_t sub_214396A90()
{
  result = qword_27C911E18;
  if (!qword_27C911E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911E18);
  }

  return result;
}

uint64_t sub_214396B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E20, &qword_214732A30);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E28, &qword_214732A38);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E30, &unk_214732A40);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143969E8();
  v17 = v37;
  sub_2146DAA08();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_2146DA238();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_2146D9F58();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v25 = &type metadata for IDSHealthInvitation.InvitationType;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_214396A3C();
    sub_2146DA0B8();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_214396A90();
    sub_2146DA0B8();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_214396F68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_214396F9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_214396FD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_214397004()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

BOOL sub_214397038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_214397064()
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

uint64_t sub_2143970C8()
{
  if (*v0)
  {
    return 0x676E696D6F636E69;
  }

  else
  {
    return 0x676E696F6774756FLL;
  }
}

uint64_t sub_2143970FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696F6774756FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2143971D8(uint64_t a1)
{
  v2 = sub_2143975F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397214(uint64_t a1)
{
  v2 = sub_2143975F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397250(uint64_t a1)
{
  v2 = sub_214397644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21439728C(uint64_t a1)
{
  v2 = sub_214397644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143972C8(uint64_t a1)
{
  v2 = sub_214397698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397304(uint64_t a1)
{
  v2 = sub_214397698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397340(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E38, &qword_214732A50);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E40, &qword_214732A58);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E48, &qword_214732A60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143975F0();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_214397644();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_214397698();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_2143975F0()
{
  result = qword_27C911E50;
  if (!qword_27C911E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911E50);
  }

  return result;
}

unint64_t sub_214397644()
{
  result = qword_27C911E58;
  if (!qword_27C911E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911E58);
  }

  return result;
}

unint64_t sub_214397698()
{
  result = qword_27C911E60;
  if (!qword_27C911E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911E60);
  }

  return result;
}

uint64_t sub_2143976EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E68, &qword_214732A68);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E70, &qword_214732A70);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E78, &qword_214732A78);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143975F0();
  v17 = v37;
  sub_2146DAA08();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_2146DA238();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_2146D9F58();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v25 = &type metadata for IDSHealthInvitation.Direction;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_214397644();
    sub_2146DA0B8();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_214397698();
    sub_2146DA0B8();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_214397B70(uint64_t a1)
{
  v2 = sub_214398598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397BAC(uint64_t a1)
{
  v2 = sub_214398598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397BE8()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x64656E696C636564;
  v4 = 0x65646E6963736572;
  if (v1 != 3)
  {
    v4 = 0x64656B6F766572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465747065636361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214397C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21439DAF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214397CB0(uint64_t a1)
{
  v2 = sub_214398448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397CEC(uint64_t a1)
{
  v2 = sub_214398448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397D28(uint64_t a1)
{
  v2 = sub_214398544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397D64(uint64_t a1)
{
  v2 = sub_214398544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397DA0(uint64_t a1)
{
  v2 = sub_2143985EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397DDC(uint64_t a1)
{
  v2 = sub_2143985EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397E18(uint64_t a1)
{
  v2 = sub_2143984F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397E54(uint64_t a1)
{
  v2 = sub_2143984F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397E90(uint64_t a1)
{
  v2 = sub_21439849C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397ECC(uint64_t a1)
{
  v2 = sub_21439849C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397F08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E80, &qword_214732A80);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E88, &qword_214732A88);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E90, &qword_214732A90);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E98, &qword_214732A98);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EA0, &qword_214732AA0);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EA8, &qword_214732AA8);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_214398448();
  sub_2146DAA28();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_214398598();
      v38 = v52;
      sub_2146DA288();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_2143985EC();
      v38 = v52;
      sub_2146DA288();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_214398544();
      v29 = v40;
      v30 = v52;
      sub_2146DA288();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_2143984F0();
      v29 = v43;
      v30 = v52;
      sub_2146DA288();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_21439849C();
      v29 = v46;
      v30 = v52;
      sub_2146DA288();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_214398448()
{
  result = qword_27C911EB0;
  if (!qword_27C911EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911EB0);
  }

  return result;
}

unint64_t sub_21439849C()
{
  result = qword_27C911EB8;
  if (!qword_27C911EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911EB8);
  }

  return result;
}

unint64_t sub_2143984F0()
{
  result = qword_27C911EC0;
  if (!qword_27C911EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911EC0);
  }

  return result;
}

unint64_t sub_214398544()
{
  result = qword_27C911EC8;
  if (!qword_27C911EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911EC8);
  }

  return result;
}

unint64_t sub_214398598()
{
  result = qword_27C911ED0;
  if (!qword_27C911ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911ED0);
  }

  return result;
}

unint64_t sub_2143985EC()
{
  result = qword_27C911ED8;
  if (!qword_27C911ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911ED8);
  }

  return result;
}

uint64_t sub_214398640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EE0, &qword_214732AB0);
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v39[-v4];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EE8, &qword_214732AB8);
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v51 = &v39[-v6];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EF0, &qword_214732AC0);
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v53 = &v39[-v8];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EF8, &qword_214732AC8);
  v43 = *(v45 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F00, &qword_214732AD0);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F08, &qword_214732AD8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39[-v19];
  v22 = a1[3];
  v21 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_214398448();
  v23 = v55;
  sub_2146DAA08();
  if (!v23)
  {
    v41 = v12;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_2146DA238();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      v34 = v16;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v33 = &type metadata for IDSHealthInvitation.Status;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = *(v27 + 32);
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_214398598();
          sub_2146DA0B8();
          (*(v43 + 8))(v11, v45);
        }

        else
        {
          v57 = 0;
          sub_2143985EC();
          sub_2146DA0B8();
          (*(v42 + 8))(v15, v41);
        }

        (*(v55 + 8))(v20, v16);
      }

      else
      {
        v45 = v27;
        v37 = v55;
        if (v29 == 2)
        {
          v59 = 2;
          sub_214398544();
          sub_2146DA0B8();
          (*(v44 + 8))(v24, v46);
          (*(v37 + 8))(v26, v16);
        }

        else
        {
          if (v29 == 3)
          {
            v60 = 3;
            sub_2143984F0();
            v38 = v51;
            sub_2146DA0B8();
            (*(v47 + 8))(v38, v49);
          }

          else
          {
            v61 = 4;
            sub_21439849C();
            sub_2146DA0B8();
            (*(v48 + 8))(v25, v50);
          }

          (*(v37 + 8))(v26, v16);
        }
      }

      swift_unknownObjectRelease();
      *v52 = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_214398DD0(uint64_t a1)
{
  v2 = sub_2143993EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398E0C(uint64_t a1)
{
  v2 = sub_2143993EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214398E48()
{
  v1 = 0x676E69646E6570;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_214398E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21439DCA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214398EC4(uint64_t a1)
{
  v2 = sub_214399398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398F00(uint64_t a1)
{
  v2 = sub_214399398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214398F3C(uint64_t a1)
{
  v2 = sub_214399494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398F78(uint64_t a1)
{
  v2 = sub_214399494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214398FB4(uint64_t a1)
{
  v2 = sub_214399440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398FF0(uint64_t a1)
{
  v2 = sub_214399440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21439902C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F10, &qword_214732AE0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F18, &qword_214732AE8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F20, &qword_214732AF0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F28, &qword_214732AF8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214399398();
  sub_2146DAA28();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_214399440();
      v12 = v26;
      sub_2146DA288();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_2143993EC();
      v12 = v29;
      sub_2146DA288();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_214399494();
    sub_2146DA288();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_214399398()
{
  result = qword_27C911F30;
  if (!qword_27C911F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911F30);
  }

  return result;
}

unint64_t sub_2143993EC()
{
  result = qword_27C911F38;
  if (!qword_27C911F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911F38);
  }

  return result;
}

unint64_t sub_214399440()
{
  result = qword_27C911F40;
  if (!qword_27C911F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911F40);
  }

  return result;
}

unint64_t sub_214399494()
{
  result = qword_27C911F48;
  if (!qword_27C911F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911F48);
  }

  return result;
}

uint64_t sub_2143994E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F50, &qword_214732B00);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F58, &qword_214732B08);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F60, &qword_214732B10);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F68, &qword_214732B18);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214399398();
  v18 = v49;
  sub_2146DAA08();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_2146DA238();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_214399440();
          v33 = v40;
          sub_2146DA0B8();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_2143993EC();
          v37 = v40;
          sub_2146DA0B8();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_214399494();
        v35 = v40;
        sub_2146DA0B8();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_2146D9F58();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v28 = &type metadata for IDSHealthInvitation.NotificationStatus;
  sub_2146DA0E8();
  sub_2146D9F28();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_214399AEC()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 7562617;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746553746F6ELL;
  }
}

uint64_t sub_214399B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21439DDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214399B58(uint64_t a1)
{
  v2 = sub_21439A0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399B94(uint64_t a1)
{
  v2 = sub_21439A0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399BD0(uint64_t a1)
{
  v2 = sub_21439A14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399C0C(uint64_t a1)
{
  v2 = sub_21439A14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399C48(uint64_t a1)
{
  v2 = sub_21439A1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399C84(uint64_t a1)
{
  v2 = sub_21439A1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399CC0(uint64_t a1)
{
  v2 = sub_21439A0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399CFC(uint64_t a1)
{
  v2 = sub_21439A0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399D38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F70, &qword_214732B20);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F78, &qword_214732B28);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F80, &qword_214732B30);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F88, &qword_214732B38);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21439A0A4();
  sub_2146DAA28();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_21439A14C();
      v12 = v26;
      sub_2146DA288();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_21439A0F8();
      v12 = v29;
      sub_2146DA288();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_21439A1A0();
    sub_2146DA288();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_21439A0A4()
{
  result = qword_27C911F90;
  if (!qword_27C911F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911F90);
  }

  return result;
}

unint64_t sub_21439A0F8()
{
  result = qword_27C911F98;
  if (!qword_27C911F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911F98);
  }

  return result;
}

unint64_t sub_21439A14C()
{
  result = qword_27C911FA0;
  if (!qword_27C911FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FA0);
  }

  return result;
}

unint64_t sub_21439A1A0()
{
  result = qword_27C911FA8;
  if (!qword_27C911FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FA8);
  }

  return result;
}

uint64_t sub_21439A224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FB0, &qword_214732B40);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FB8, &qword_214732B48);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FC0, &qword_214732B50);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FC8, &qword_214732B58);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21439A0A4();
  v18 = v49;
  sub_2146DAA08();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_2146DA238();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_21439A14C();
          v33 = v40;
          sub_2146DA0B8();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_21439A0F8();
          v37 = v40;
          sub_2146DA0B8();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_21439A1A0();
        v35 = v40;
        sub_2146DA0B8();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_2146D9F58();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v28 = &type metadata for IDSHealthInvitation.WheelchairUse;
  sub_2146DA0E8();
  sub_2146D9F28();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_21439A818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439A95C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_21439AA34(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_21439AC84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439AD20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21439ADE8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439AF38(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21439B024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439B094(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21439B12C(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21439B1D8@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_21439B20C(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_21439B284@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439B320(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21439B3E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439B538(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21439B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439B694(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21439B72C(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21439B7D8()
{
  v1 = *(v0 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 40));
}

uint64_t sub_21439B80C(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21439B894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439B9D8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439BAB0;
  }

  return result;
}

void (*sub_21439BAB4(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439BB54;
}

uint64_t sub_21439BB58()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_21439BB88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_21439BBE0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_21439BC10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

BlastDoor::HKProfileType_optional __swiftcall HKProfileType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 2)
  {
    if (rawValue == 1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 2)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 100)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 4)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 3)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

unint64_t sub_21439BCF4()
{
  result = qword_27C911FD0;
  if (!qword_27C911FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FD0);
  }

  return result;
}

unint64_t sub_21439BD78()
{
  result = qword_27C911FD8;
  if (!qword_27C911FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FD8);
  }

  return result;
}

unint64_t sub_21439BDFC()
{
  result = qword_27C911FE0;
  if (!qword_27C911FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FE0);
  }

  return result;
}

unint64_t sub_21439BE80()
{
  result = qword_27C911FE8;
  if (!qword_27C911FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FE8);
  }

  return result;
}

unint64_t sub_21439BF04()
{
  result = qword_27C911FF0;
  if (!qword_27C911FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FF0);
  }

  return result;
}

uint64_t sub_21439BF84(uint64_t a1)
{
  *(a1 + 8) = sub_21439C008(&qword_27C9075D8, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  result = sub_21439C008(&qword_27C907678, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21439C008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21439C07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21439C0B8(uint64_t a1)
{
  *(a1 + 8) = sub_21439C008(&qword_27C90CB10, type metadata accessor for IDSHealthInvitation);
  result = sub_21439C008(&qword_27C90CAD8, type metadata accessor for IDSHealthInvitation);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21439C164()
{
  result = qword_27C911FF8;
  if (!qword_27C911FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C911FF8);
  }

  return result;
}

uint64_t sub_21439C1B8()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2147342B8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21439C240()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2147342B8[v1]);
  return sub_2146DA9B8();
}

void sub_21439C384()
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E568, &unk_27C904F20, &qword_2146EE8A0);
    if (v1 <= 0x3F)
    {
      sub_21439C90C(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21439C90C(319, &qword_27C912010, &type metadata for IDSHealthInvitation.InvitationType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21439C90C(319, &qword_27C912018, &type metadata for IDSHealthInvitation.Direction, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21439C90C(319, &qword_27C912020, &type metadata for IDSHealthInvitation.Status, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21439C6D4(319, &qword_27C912028, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21439C6D4(319, &qword_280B35230, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_21439C6D4(319, &qword_27C912030, type metadata accessor for CloudKitShareParticipant, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_21439C90C(319, &qword_27C912038, &type metadata for IDSHealthInvitation.NotificationStatus, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_21439C90C(319, &qword_27C912040, &type metadata for IDSHealthInvitation.SharingAuthorization, MEMORY[0x277D83940]);
                      if (v10 <= 0x3F)
                      {
                        sub_21439C90C(319, &qword_27C912048, &type metadata for IDSHealthInvitation.WheelchairUse, MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

void sub_21439C6D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21439C7B0()
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v0 <= 0x3F)
  {
    sub_21439C6D4(319, &qword_27C912030, type metadata accessor for CloudKitShareParticipant, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21439C90C(319, &qword_27C912060, &type metadata for HKProfileType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21439C6D4(319, &qword_27C912068, type metadata accessor for CloudKitSharingToken, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21439C90C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21439C980(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21439C9C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21439CB7C()
{
  result = qword_27C912070;
  if (!qword_27C912070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912070);
  }

  return result;
}

unint64_t sub_21439CBD4()
{
  result = qword_27C912078;
  if (!qword_27C912078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912078);
  }

  return result;
}

unint64_t sub_21439CC2C()
{
  result = qword_27C912080;
  if (!qword_27C912080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912080);
  }

  return result;
}

unint64_t sub_21439CC84()
{
  result = qword_27C912088;
  if (!qword_27C912088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912088);
  }

  return result;
}

unint64_t sub_21439CCDC()
{
  result = qword_27C912090;
  if (!qword_27C912090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912090);
  }

  return result;
}

unint64_t sub_21439CD34()
{
  result = qword_27C912098;
  if (!qword_27C912098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912098);
  }

  return result;
}

unint64_t sub_21439CD8C()
{
  result = qword_27C9120A0;
  if (!qword_27C9120A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120A0);
  }

  return result;
}

unint64_t sub_21439CDE4()
{
  result = qword_27C9120A8;
  if (!qword_27C9120A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120A8);
  }

  return result;
}

unint64_t sub_21439CE3C()
{
  result = qword_27C9120B0;
  if (!qword_27C9120B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120B0);
  }

  return result;
}

unint64_t sub_21439CE94()
{
  result = qword_27C9120B8;
  if (!qword_27C9120B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120B8);
  }

  return result;
}

unint64_t sub_21439CEEC()
{
  result = qword_27C9120C0;
  if (!qword_27C9120C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120C0);
  }

  return result;
}

unint64_t sub_21439CF44()
{
  result = qword_27C9120C8;
  if (!qword_27C9120C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120C8);
  }

  return result;
}

unint64_t sub_21439CF9C()
{
  result = qword_27C9120D0;
  if (!qword_27C9120D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120D0);
  }

  return result;
}

unint64_t sub_21439CFF4()
{
  result = qword_27C9120D8;
  if (!qword_27C9120D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120D8);
  }

  return result;
}

unint64_t sub_21439D04C()
{
  result = qword_27C9120E0;
  if (!qword_27C9120E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120E0);
  }

  return result;
}

unint64_t sub_21439D0A4()
{
  result = qword_27C9120E8;
  if (!qword_27C9120E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120E8);
  }

  return result;
}

unint64_t sub_21439D0FC()
{
  result = qword_27C9120F0;
  if (!qword_27C9120F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120F0);
  }

  return result;
}

unint64_t sub_21439D154()
{
  result = qword_27C9120F8;
  if (!qword_27C9120F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9120F8);
  }

  return result;
}

unint64_t sub_21439D1AC()
{
  result = qword_27C912100;
  if (!qword_27C912100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912100);
  }

  return result;
}

unint64_t sub_21439D204()
{
  result = qword_27C912108;
  if (!qword_27C912108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912108);
  }

  return result;
}

unint64_t sub_21439D25C()
{
  result = qword_27C912110;
  if (!qword_27C912110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912110);
  }

  return result;
}

unint64_t sub_21439D2B4()
{
  result = qword_27C912118;
  if (!qword_27C912118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912118);
  }

  return result;
}

unint64_t sub_21439D30C()
{
  result = qword_27C912120;
  if (!qword_27C912120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912120);
  }

  return result;
}

unint64_t sub_21439D364()
{
  result = qword_27C912128;
  if (!qword_27C912128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912128);
  }

  return result;
}

unint64_t sub_21439D3BC()
{
  result = qword_27C912130;
  if (!qword_27C912130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912130);
  }

  return result;
}

unint64_t sub_21439D414()
{
  result = qword_27C912138;
  if (!qword_27C912138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912138);
  }

  return result;
}

unint64_t sub_21439D46C()
{
  result = qword_27C912140;
  if (!qword_27C912140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912140);
  }

  return result;
}

unint64_t sub_21439D4C4()
{
  result = qword_27C912148;
  if (!qword_27C912148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912148);
  }

  return result;
}

unint64_t sub_21439D51C()
{
  result = qword_27C912150;
  if (!qword_27C912150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912150);
  }

  return result;
}

unint64_t sub_21439D574()
{
  result = qword_27C912158;
  if (!qword_27C912158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912158);
  }

  return result;
}

unint64_t sub_21439D5CC()
{
  result = qword_27C912160;
  if (!qword_27C912160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912160);
  }

  return result;
}

unint64_t sub_21439D624()
{
  result = qword_27C912168;
  if (!qword_27C912168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912168);
  }

  return result;
}

unint64_t sub_21439D67C()
{
  result = qword_27C912170;
  if (!qword_27C912170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912170);
  }

  return result;
}

unint64_t sub_21439D6D4()
{
  result = qword_27C912178;
  if (!qword_27C912178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912178);
  }

  return result;
}

unint64_t sub_21439D72C()
{
  result = qword_27C912180;
  if (!qword_27C912180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912180);
  }

  return result;
}

unint64_t sub_21439D784()
{
  result = qword_27C912188;
  if (!qword_27C912188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912188);
  }

  return result;
}

unint64_t sub_21439D7DC()
{
  result = qword_27C912190;
  if (!qword_27C912190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912190);
  }

  return result;
}

unint64_t sub_21439D834()
{
  result = qword_27C912198;
  if (!qword_27C912198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912198);
  }

  return result;
}

unint64_t sub_21439D88C()
{
  result = qword_27C9121A0;
  if (!qword_27C9121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121A0);
  }

  return result;
}

unint64_t sub_21439D8E4()
{
  result = qword_27C9121A8;
  if (!qword_27C9121A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121A8);
  }

  return result;
}

unint64_t sub_21439D93C()
{
  result = qword_27C9121B0;
  if (!qword_27C9121B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121B0);
  }

  return result;
}

unint64_t sub_21439D994()
{
  result = qword_27C9121B8;
  if (!qword_27C9121B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121B8);
  }

  return result;
}

unint64_t sub_21439D9EC()
{
  result = qword_27C9121C0;
  if (!qword_27C9121C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121C0);
  }

  return result;
}

unint64_t sub_21439DA44()
{
  result = qword_27C9121C8;
  if (!qword_27C9121C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121C8);
  }

  return result;
}

unint64_t sub_21439DA9C()
{
  result = qword_27C9121D0;
  if (!qword_27C9121D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121D0);
  }

  return result;
}

uint64_t sub_21439DAF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646E6963736572 && a2 == 0xE900000000000064 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656B6F766572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_21439DCA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21439DDC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562617 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21439DECC()
{
  result = qword_27C9121D8;
  if (!qword_27C9121D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9121D8);
  }

  return result;
}

unint64_t sub_21439DFD0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21439E120@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSFileTransferInfo() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for RCSFileTransferInfo()
{
  result = qword_27C9121E0;
  if (!qword_27C9121E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21439E1D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for RCSFileTransferInfo() + 24));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439E250()
{
  v1 = v0 + *(type metadata accessor for RCSFileTransferInfo() + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_21439E2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileInfo();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E3DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSFileTransferInfo() + 20);

  return sub_21439E420(v3, a1);
}

uint64_t sub_21439E420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E490(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSFileTransferInfo() + 20);

  return sub_21439E4D4(a1, v3);
}

uint64_t sub_21439E4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E58C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RCSFileTransferInfo() + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439E628(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for RCSFileTransferInfo() + 24);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21439E6F0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RCSFileTransferInfo() + 24);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439E840(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RCSFileTransferInfo() + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21439E92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RCSFileTransferInfo() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439E99C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for RCSFileTransferInfo() + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21439EA34(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for RCSFileTransferInfo() + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_21439EAE0(uint64_t a1)
{
  *(a1 + 8) = sub_21439EB48(&qword_27C90D4B8);
  result = sub_21439EB48(&qword_27C90D458);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21439EB48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSFileTransferInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21439EBB4()
{
  type metadata accessor for RCSFileInfo();
  if (v0 <= 0x3F)
  {
    sub_21439EC50();
    if (v1 <= 0x3F)
    {
      sub_214084AA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21439EC50()
{
  if (!qword_27C9121F0)
  {
    type metadata accessor for RCSFileInfo();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9121F0);
    }
  }
}

uint64_t sub_21439ECA8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = v1 + *(type metadata accessor for CloudKitSharingToken() + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CloudKitSharingToken()
{
  result = qword_27C912200;
  if (!qword_27C912200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21439EE8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439EEE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21439EF4C()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439EFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F02C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_i64[0];
  v8 = v1[2].n128_u64[1];

  sub_213FDC6BC(v7, v8);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439F094()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 32);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439F11C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F174(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_21439F1DC()
{
  v1 = *(v0 + 80);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 72);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439F264@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F2BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_u64[1];

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439F324@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F37C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21439F3E4()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439F46C()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_21439F4F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_21439F65C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_21439F7C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21439F81C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_21439F884@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F8DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_21439F944@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21439F99C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_u64[1];
  v7 = v1[11].n128_i64[0];
  v8 = v1[11].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439FA04()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 40);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439FA8C()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439FB14()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_21439FB9C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_21439FD04@<X0>(uint64_t (**a1)(uint64_t a1, char *a2)@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282652C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282652D30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

unint64_t sub_21439FE30@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21405980C;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21439FF50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21439FFA8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[18].n128_u64[1];
  v7 = v1[19].n128_i64[0];
  v8 = v1[19].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[18] = *a1;
  v1[19].n128_u64[0] = v3;
  v1[19].n128_u64[1] = v4;
  v1[20].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143A0058(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudKitSharingToken() + 24);

  return sub_2143A009C(a1, v3);
}

uint64_t sub_2143A009C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143A010C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CloudKitSharingToken() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2143A0178(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CloudKitSharingToken() + 28));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143A01F0()
{
  v1 = *(v0 + 312);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 304);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143A0278()
{
  v1 = v0 + *(type metadata accessor for CloudKitSharingToken() + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2143A0338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 24);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A03AC(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A045C(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A0528(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 32);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A05C8;
  }

  return result;
}

uint64_t sub_2143A05C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A0708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A075C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

void (*sub_2143A07E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A0884;
}

void sub_2143A0884(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v11 = *(v3 + 32);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 16);

    sub_213FDC6BC(v9, v11);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  free(v2);
}

uint64_t sub_2143A09B4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143A09E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 32);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A0A58(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A0B08(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A0BD4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 40);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 32);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A0C74;
  }

  return result;
}

uint64_t sub_2143A0C74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A0DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A0E08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

void (*sub_2143A0E90(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A0F30;
}

void sub_2143A0F30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 24);
  v9 = *(v3 + 32);
  v11 = *(v3 + 40);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 24);

    sub_213FDC6BC(v9, v11);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
  }

  free(v2);
}

uint64_t sub_2143A1010@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_2142EB0A8(v7, v6);
}

__n128 sub_2143A105C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  sub_2142EB000(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_2143A10DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 72);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A1150(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A1200(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A12CC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 80);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 72);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A136C;
  }

  return result;
}

uint64_t sub_2143A136C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A14AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A1500(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  return result;
}

void (*sub_2143A1588(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1628;
}

void sub_2143A1628(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 64);
  v9 = *(v3 + 72);
  v11 = *(v3 + 80);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 64);

    sub_213FDC6BC(v9, v11);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_2143A1728(uint64_t result)
{
  *(v1 + 92) = result;
  *(v1 + 96) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143A1760(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2143A17E4(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2143A183C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_2143A1888@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A18FC(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A19A8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A1A70(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

uint64_t sub_2143A1B10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A1C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A1C9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_2143A1D24(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

void sub_2143A1DC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 8);
  v9 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 8);

    sub_213FDC6BC(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_2143A1ED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 56);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A1F48(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A1FF8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A20C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2164;
  }

  return result;
}

uint64_t sub_2143A2164(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A22A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A22F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

void (*sub_2143A2380(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A2420;
}

void sub_2143A2420(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 48);
  v9 = *(v3 + 56);
  v11 = *(v3 + 64);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 48);

    sub_213FDC6BC(v9, v11);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  free(v2);
}

uint64_t sub_2143A2500@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t sub_2143A2544(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_2143A25B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 40);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143A2624(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A26D4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143A27A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 48);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 40);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A2840;
  }

  return result;
}

uint64_t sub_2143A2840(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143A2980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143A29D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

void (*sub_2143A2A5C(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A2AFC;
}

void sub_2143A2AFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 32);
  v9 = *(v3 + 40);
  v11 = *(v3 + 48);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 32);

    sub_214032564(v9, v11);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
  }

  free(v2);
}

void sub_2143A2BDC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 112);
  sub_2143A2C00(v2, v3, v4, v5, v6, v7);
}

void sub_2143A2C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {

    sub_213FDCA18(a5, a6);
  }
}

__n128 sub_2143A2C4C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(v1 + 112);
  sub_2143A2CA8(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v8;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  return result;
}

void sub_2143A2CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {

    sub_213FDC6BC(a5, a6);
  }
}

uint64_t sub_2143A2D14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 136);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A2D88(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A2E38(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A2F04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2FA4;
  }

  return result;
}

uint64_t sub_2143A2FA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A30E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A3138(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 128);
  v9 = *(a2 + 136);
  v10 = *(a2 + 144);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  return result;
}

void (*sub_2143A31C0(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A3260;
}

void sub_2143A3260(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 128);
  v9 = *(v3 + 136);
  v11 = *(v3 + 144);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 128);

    sub_213FDC6BC(v9, v11);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

uint64_t sub_2143A3340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 184);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 176);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143A33B4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A3464(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143A3530(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A35D0;
  }

  return result;
}

uint64_t sub_2143A35D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143A3710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 192);
  *a2 = *(a1 + 160);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}