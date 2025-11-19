uint64_t sub_22E6CA7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = sub_22E6CF9E8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Asset(0);
    v12 = sub_22E6CF9E8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for URL();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_22E6CF550(v10, a2, v9);
}

uint64_t sub_22E6CA890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = sub_22E6CF9E8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Asset(0);
    v14 = sub_22E6CF9E8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = type metadata accessor for URL();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return sub_22E6CF58C(v12, a2, a2, v11);
}

uint64_t sub_22E6CA9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6D162C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6CA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E6D3848();
  v7 = type metadata accessor for Asset.ID(v6);
  sub_22E6CF9E8(v7);
  if (*(v8 + 84) == a2)
  {
    v9 = sub_22E6D3830();

    return sub_22E6CF550(v9, a2, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20) + 8) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22E6CAAA4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_22E6D3778();
  v9 = type metadata accessor for Asset.ID(v8);
  result = sub_22E6CF9E8(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = sub_22E6D3860();

    return sub_22E6CF58C(v12, v13, v14, v15);
  }

  else
  {
    v16 = (v4 + *(a4 + 20));
    *v16 = 0;
    v16[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_22E6CAB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22E6D3848();
  v6 = type metadata accessor for URL();
  sub_22E6CF9E8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_22E6D3830();

    return sub_22E6CF550(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22E6CABEC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_22E6D3778();
  v8 = type metadata accessor for URL();
  result = sub_22E6CF9E8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22E6D3860();

    return sub_22E6CF58C(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22E6CACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E6D3778();
  v7 = type metadata accessor for Asset(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 12)
    {
      v10 = *(v3 + *(a3 + 20) + 8) >> 60;
      if (((4 * v10) & 0xC) != 0)
      {
        return 16 - ((4 * v10) & 0xC | (v10 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for Credential(0);
    v9 = v3 + *(a3 + 28);
  }

  return sub_22E6CF550(v9, a2, v8);
}

uint64_t sub_22E6CAD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22E6D3778();
  result = type metadata accessor for Asset(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 12)
    {
      v12 = (v4 + *(a4 + 20));
      *v12 = 0;
      v12[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = type metadata accessor for Credential(0);
    v11 = v4 + *(a4 + 28);
  }

  return sub_22E6CF58C(v11, a2, a2, v10);
}

uint64_t sub_22E6CAE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22E6CF550(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v8) & 0xC) != 0)
    {
      return 16 - ((4 * v8) & 0xC | (v8 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22E6CAF4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22E6CF58C(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_22E6CB058(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22E6D3778();
  v6 = type metadata accessor for UUID();
  v7 = sub_22E6CF9E8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_13:

    return sub_22E6CF550(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = type metadata accessor for URL();
    v14 = sub_22E6CF9E8(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v17 = type metadata accessor for Asset(0);
      v18 = sub_22E6CF9E8(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[7];
      }

      else
      {
        v9 = type metadata accessor for Credential(0);
        v16 = a3[10];
      }
    }

    v10 = v3 + v16;
    goto LABEL_13;
  }

  v11 = *(v3 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_22E6CB1A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22E6D3778();
  v8 = type metadata accessor for UUID();
  result = sub_22E6CF9E8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5] + 8) = (a2 - 1);
      return result;
    }

    v13 = type metadata accessor for URL();
    v14 = sub_22E6CF9E8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = type metadata accessor for Asset(0);
      v18 = sub_22E6CF9E8(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = type metadata accessor for Credential(0);
        v16 = a4[10];
      }
    }

    v12 = v4 + v16;
  }

  return sub_22E6CF58C(v12, a2, a2, v11);
}

uint64_t sub_22E6CB38C()
{
  v1 = (type metadata accessor for AssetStreamHandle(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (*(*v1 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Asset(0);
  v5 = sub_22E6E3A38(v4);
  v7 = *(v6 + 80);
  v8 = (v3 + v7 + 16) & ~v7;
  v61 = v8;
  v10 = *(v9 + 64);
  v11 = v5;
  v59 = v5;
  v12 = type metadata accessor for Credential(0);
  v72 = sub_22E6E3A38(v12);
  v14 = *(v13 + 80);
  v66 = (v8 + v10 + v14) & ~v14;
  v16 = (*(v15 + 64) + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = v16;
  v71 = type metadata accessor for UUID();
  sub_22E6CF988(v71);
  v70 = v17;
  v18 = *(v17 + 80);
  v62 = (v16 + v18 + 16) & ~v18;
  v20 = *(v19 + 64);
  v69 = sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  sub_22E6CF988(v69);
  v22 = v21;
  v65 = v21;
  v24 = v23;
  v25 = *(v22 + 80);
  v63 = (v62 + v20 + v25) & ~v25;
  v67 = *(v24 + 64);
  v64 = v2 | v7 | v14 | v18 | v25;
  v26 = *(v0 + 16);
  swift_unknownObjectRelease();
  v27 = v0 + ((v2 + 32) & ~v2);
  v28 = v0;
  v29 = type metadata accessor for URL();
  sub_22E6CF978(v29);
  v60 = *(v30 + 8);
  v31 = sub_22E6E3F40();
  v32(v31);
  v33 = type metadata accessor for Asset.ID(0);
  v34 = *(v27 + v33[5] + 8);

  v35 = sub_22E6E3DFC(v33[6]);
  sub_22E6CFBBC(v35, v36);
  v37 = sub_22E6E3DFC(v33[7]);
  sub_22E6CFBBC(v37, v38);
  v39 = v27 + *(v11 + 28);
  sub_22E6CFBBC(*v39, *(v39 + 8));
  sub_22E6CFBBC(*(v39 + 16), *(v39 + 24));
  v40 = (v27 + v1[7]);
  v41 = *(v40 + 1);

  v42 = *(v40 + 3);

  v43 = *(v40 + 5);

  v44 = *(v72 + 36);
  v45 = type metadata accessor for Date();
  sub_22E6CF978(v45);
  v47 = *(v46 + 8);
  v47(&v40[v44], v45);
  v48 = *(v27 + v1[8] + 8);

  v49 = *(v27 + v1[9] + 8);

  v50 = *(v27 + v1[10]);

  v51 = v28 + v61;
  v60(v28 + v61, v29);
  v52 = *(v28 + v61 + v33[5] + 8);

  sub_22E6CFBBC(*(v51 + v33[6]), *(v51 + v33[6] + 8));
  sub_22E6CFBBC(*(v51 + v33[7]), *(v51 + v33[7] + 8));
  v53 = v28 + v61 + *(v59 + 28);
  sub_22E6CFBBC(*v53, *(v53 + 8));
  sub_22E6CFBBC(*(v53 + 16), *(v53 + 24));
  v54 = *(v28 + v66 + 8);

  v55 = *(v28 + v66 + 24);

  v56 = *(v28 + v66 + 40);

  v47((v28 + v66 + *(v72 + 36)), v45);
  v57 = *(v28 + v68 + 8);

  (*(v70 + 8))(v28 + v62, v71);
  (*(v65 + 8))(v28 + v63, v69);

  return MEMORY[0x2821FE8E8](v28, v63 + v67, v64 | 7);
}

uint64_t sub_22E6CB80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E6D3778();
  v7 = type metadata accessor for Asset(v6);
  v8 = sub_22E6CF9E8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = v3;
LABEL_5:

    return sub_22E6CF550(v11, a2, v10);
  }

  v12 = type metadata accessor for Credential(0);
  v13 = sub_22E6CF9E8(v12);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = *(v3 + *(a3 + 24) + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_22E6CB8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22E6D3778();
  v9 = type metadata accessor for Asset(v8);
  v10 = sub_22E6CF9E8(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v4;
  }

  else
  {
    v14 = type metadata accessor for Credential(0);
    result = sub_22E6CF9E8(v14);
    if (*(v16 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v12 = result;
    v13 = v4 + *(a4 + 20);
  }

  return sub_22E6CF58C(v13, a2, a2, v12);
}

uint64_t sub_22E6CBA08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E6CBA48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22E6CBA84()
{
  sub_22E6EB3EC();
  if (v2)
  {
    return sub_22E6EB36C(*v0);
  }

  sub_22E6EB45C();
  v4 = sub_22E6EB3FC(*(v1 + 20));

  return sub_22E6CF550(v4, v5, v6);
}

void sub_22E6CBAE8()
{
  sub_22E6EB358();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for UnknownStorage();
    v5 = sub_22E6EB3A4(*(v4 + 20));

    sub_22E6CF58C(v5, v6, v7, v8);
  }
}

uint64_t sub_22E6CBB54()
{
  sub_22E6EB450();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for UnknownStorage();

  return sub_22E6CF550(v1 + v3, v0, v4);
}

uint64_t sub_22E6CBBA4()
{
  sub_22E6EB450();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for UnknownStorage();

  return sub_22E6CF58C(v1 + v3, v0, v0, v4);
}

uint64_t sub_22E6CBBF8()
{
  sub_22E6EB3EC();
  if (v3)
  {
    return sub_22E6EB36C(*(v1 + 8));
  }

  v5 = sub_22E6EB45C();
  sub_22E6CF9E8(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    v8 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
    sub_22E6CF9E8(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22E6EB52C();
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
      sub_22E6EB520();
    }
  }

  v10 = sub_22E6EB3FC(v7);

  return sub_22E6CF550(v10, v11, v12);
}

void sub_22E6CBCEC()
{
  sub_22E6EB358();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = sub_22E6EB4C0();
    sub_22E6CF9E8(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v8 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
      sub_22E6CF9E8(v8);
      if (*(v9 + 84) == v3)
      {
        sub_22E6EB514();
      }

      else
      {
        sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
        sub_22E6EB508();
      }
    }

    v10 = sub_22E6EB3A4(v7);

    sub_22E6CF58C(v10, v11, v12, v13);
  }
}

uint64_t sub_22E6CBDE0()
{
  sub_22E6EB3EC();
  if (v2)
  {
    return sub_22E6EB36C(*(v1 + 8));
  }

  v4 = sub_22E6EB45C();
  sub_22E6CF9E8(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22E6EB52C();
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
    sub_22E6EB520();
  }

  v7 = sub_22E6EB3FC(v6);

  return sub_22E6CF550(v7, v8, v9);
}

void sub_22E6CBE88()
{
  sub_22E6EB358();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = sub_22E6EB4C0();
    sub_22E6CF9E8(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22E6EB514();
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
      sub_22E6EB508();
    }

    v7 = sub_22E6EB3A4(v6);

    sub_22E6CF58C(v7, v8, v9, v10);
  }
}

uint64_t sub_22E6CBF30()
{
  sub_22E6EB3EC();
  if (v2)
  {
    return sub_22E6EB36C(*v1);
  }

  v4 = sub_22E6EB45C();
  sub_22E6CF9E8(v4);
  if (*(v5 + 84) == v0)
  {
    sub_22E6EB52C();
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
    sub_22E6EB520();
  }

  v7 = sub_22E6EB3FC(v6);

  return sub_22E6CF550(v7, v8, v9);
}

void sub_22E6CBFD8()
{
  sub_22E6EB358();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = sub_22E6EB4C0();
    sub_22E6CF9E8(v4);
    if (*(v5 + 84) == v2)
    {
      sub_22E6EB514();
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
      sub_22E6EB508();
    }

    v7 = sub_22E6EB3A4(v6);

    sub_22E6CF58C(v7, v8, v9, v10);
  }
}

uint64_t sub_22E6CC080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22E6EB450();
  v5 = type metadata accessor for UnknownStorage();
  sub_22E6CF9E8(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    v8 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
    sub_22E6CF9E8(v8);
    if (*(v9 + 84) == v3)
    {
      v7 = *(a3 + 24);
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
      sub_22E6EB52C();
    }
  }

  v10 = sub_22E6EB3FC(v7);

  return sub_22E6CF550(v10, v11, v12);
}

uint64_t sub_22E6CC164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22E6EB450();
  v6 = type metadata accessor for UnknownStorage();
  sub_22E6CF9E8(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 20);
  }

  else
  {
    v9 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
    sub_22E6CF9E8(v9);
    if (*(v10 + 84) == a3)
    {
      v8 = *(a4 + 24);
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
      sub_22E6EB514();
    }
  }

  v11 = sub_22E6EB3A4(v8);

  return sub_22E6CF58C(v11, v12, v13, v14);
}

uint64_t sub_22E6CC24C(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22E6EB45C();
    v5 = sub_22E6EB3FC(*(v2 + 24));

    return sub_22E6CF550(v5, v6, v7);
  }
}

void *sub_22E6CC2D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = v5 + *(a4 + 24);

    return sub_22E6CF58C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22E6CC358()
{
  sub_22E6EB3EC();
  if (v1)
  {
    return sub_22E6EB36C(*(v0 + 8));
  }

  sub_22E6EB45C();
  sub_22E6EB520();
  v4 = sub_22E6EB3FC(v3);

  return sub_22E6CF550(v4, v5, v6);
}

void sub_22E6CC3B8()
{
  sub_22E6EB358();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for UnknownStorage();
    sub_22E6EB508();
    v4 = sub_22E6EB3A4(v3);

    sub_22E6CF58C(v4, v5, v6, v7);
  }
}

uint64_t sub_22E6CC71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F12B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6CC90C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E6CC988()
{
  v33 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6CF988(v33);
  v2 = v1;
  v3 = *(v1 + 80);
  v5 = *(v4 + 64);
  v32 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  sub_22E6CF988(v32);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (((v3 + 32) & ~v3) + v5 + v8) & ~v8;
  v29 = v9;
  v11 = *(v10 + 64);
  v31 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6CF988(v31);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v30 = sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
  sub_22E6CF988(v30);
  v19 = v18;
  v21 = v20;
  v22 = *(v19 + 80);
  v23 = (v15 + v17 + v22) & ~v22;
  v24 = v3 | v8 | v14 | v22;
  v25 = (*(v21 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + ((v3 + 32) & ~v3), v33);
  (*(v7 + 8))(v0 + v29, v32);
  (*(v13 + 8))(v0 + v15, v31);
  (*(v19 + 8))(v0 + v23, v30);
  v27 = *(v0 + v25);

  return MEMORY[0x2821FE8E8](v0, ((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v24 | 7);
}

uint64_t sub_22E6CCC04()
{
  v1 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  sub_22E6CF988(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  sub_22E6CF988(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v5 + v11 + 8) & ~v11;
  v20 = v3 | v11;
  v13 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = sub_22E709CE4();
  v16(v15);
  v17 = *(v0 + v5);

  (*(v8 + 8))(v0 + v12, v6);
  v18 = *(v0 + v13);

  return MEMORY[0x2821FE8E8](v0, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v20 | 7);
}

uint64_t sub_22E6CCD8C()
{
  v3 = sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  sub_22E6CF988(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_22E70A108();
  v9 = *(v0 + 32);

  (*(v5 + 8))(v0 + ((v6 + 40) & ~v6), v3);
  v10 = *(v0 + v1);
  v11 = *(v0 + v1 + 8);
  j__swift_bridgeObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_22E6CCE94()
{
  sub_22E6EB570();
  v1 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6CF988(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6CF988(v6);
  v8 = v7;
  v9 = (((v3 + 32) & ~v3) + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = sub_22E709CE4();
  v14(v13);
  (*(v8 + 8))(v0 + v9, v6);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_22E6CCFD8()
{
  v3 = sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  sub_22E6CF988(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_22E70A108();
  v9 = *(v0 + 32);

  (*(v5 + 8))(v0 + ((v6 + 40) & ~v6), v3);
  v10 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_22E6CD0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F5D0C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6CD268()
{
  sub_22E6EB570();
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v3 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6CF988(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v8 = *(v1 - 8);
  v9 = (v6 + *(v7 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 8);

  (*(v5 + 8))(&v0[v6], v3);
  (*(v8 + 8))(&v0[v9], v1);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_22E6CD3C8()
{
  sub_22E6EB570();
  v2 = *(v0 + 16);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v3 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6CF988(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = sub_22E715E08();
  sub_22E6CF988(v9);
  v11 = v10;
  v12 = (v1 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  (*(v5 + 8))(v0 + v6, v3);
  v15 = *(v0 + v1);

  (*(v11 + 8))(v0 + v12, v9);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22E6CD514()
{
  sub_22E6EB570();
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_22E6F797C();
  v4 = v3;
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v7 = v5 + *(v6 + 64);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v8 = type metadata accessor for CheckedContinuation();
  sub_22E6CF988(v8);
  v10 = v9;
  v11 = (v7 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 2);
  swift_unknownObjectRelease();
  v15 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], v1);
  (*(v10 + 8))(&v0[v11], v8);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22E6CD66C()
{
  v1 = *(v0 + 24);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v2 = type metadata accessor for CheckedContinuation();
  sub_22E6CF978(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5);
  sub_22E6CF2F4((v0 + v6));

  return MEMORY[0x2821FE8E8](v0, ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_22E6CD730()
{
  v1 = (type metadata accessor for XPCAsyncSequenceResponse() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for UUID();
  sub_22E6CF978(v7);
  (*(v8 + 8))(v0 + v3);
  v9 = (v0 + v3 + v1[7]);
  v10 = v9[1];
  if (((v10 >> 60) | 4) != 0xF)
  {
    sub_22E6CFBBC(*v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22E6CD8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22E6CF550(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    v9 = (4 * v8) & 0xC | (v8 >> 2);
    v10 = __OFSUB__(13, v9);
    v11 = 13 - v9;
    if (v11 < 0 != v10)
    {
      v11 = -1;
    }

    if (((4 * v8) & 0xC) != 0)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22E6CD978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22E6CF58C(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((14 - a2) >> 2) & 3 | (4 * (14 - a2))) << 60;
  }

  return result;
}

uint64_t sub_22E6CDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_22E6CF550(v9, a2, v8);
  }
}

uint64_t sub_22E6CDB34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_22E6CF58C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22E6CDBDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22E6CDC50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = sub_22E6CF9E8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return sub_22E6CF550(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = type metadata accessor for URL();
    v14 = sub_22E6CF9E8(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = type metadata accessor for Credential(0);
      v16 = a3[10];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_22E6CDD60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  result = sub_22E6CF9E8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return result;
    }

    v13 = type metadata accessor for URL();
    v14 = sub_22E6CF9E8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = type metadata accessor for Credential(0);
      v16 = a4[10];
    }

    v12 = a1 + v16;
  }

  return sub_22E6CF58C(v12, a2, a2, v11);
}

uint64_t sub_22E6CDE94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E6CDFC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6CDF9C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6CE00C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E6CE02C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27DA6C550)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA6C550);
    }
  }
}

uint64_t AssetDownloadResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_22E6CF978(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t type metadata accessor for AssetDownloadResponse()
{
  result = qword_27DA6C630;
  if (!qword_27DA6C630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadResponse.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetDownloadResponse() + 24);
  v4 = type metadata accessor for URL();
  v5 = sub_22E6CF978(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AssetDownloadResponse.range.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetDownloadResponse() + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t AssetDownloadResponse.init(id:asset:fileURL:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for UUID();
  sub_22E6CF978(v14);
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for AssetDownloadResponse();
  sub_22E6CE328(a2, a7 + v16[5]);
  v17 = v16[6];
  v18 = type metadata accessor for URL();
  sub_22E6CF978(v18);
  result = (*(v19 + 32))(a7 + v17, a3);
  v21 = a7 + v16[7];
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = a6 & 1;
  return result;
}

uint64_t sub_22E6CE328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AssetDownloadResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadResponse();
  if (!static Asset.== infix(_:_:)(a1 + v4[5], a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = a2 + v6;
  if ((v8 & 1) == 0)
  {
    if (*(v9 + 16))
    {
      return 0;
    }

    return *v7 == *v9 && v7[1] == *(v9 + 8);
  }

  return (*(v9 + 16) & 1) != 0;
}

uint64_t sub_22E6CE438(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int sub_22E6CE5C0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](a1);
  return Hasher._finalize()();
}

uint64_t sub_22E6CE614(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7465737361;
      break;
    case 2:
      result = 0x4C5255656C6966;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_22E6CE6A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v1);
  return Hasher._finalize()();
}

uint64_t sub_22E6CE6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6CE438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6CE734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6CE580();
  *a1 = result;
  return result;
}

uint64_t sub_22E6CE75C(uint64_t a1)
{
  v2 = sub_22E6CF258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6CE798(uint64_t a1)
{
  v2 = sub_22E6CF258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetDownloadResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6C5C0, &unk_22E726150);
  v6 = sub_22E6CF988(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6CF258();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  type metadata accessor for UUID();
  sub_22E6CF948();
  sub_22E6CF4F4(v14, v15);
  sub_22E6CF99C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for AssetDownloadResponse();
    v17 = v16[5];
    LOBYTE(v27) = 1;
    type metadata accessor for Asset(0);
    sub_22E6CF9B0();
    sub_22E6CF4F4(v18, v19);
    sub_22E6CF99C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v16[6];
    LOBYTE(v27) = 2;
    type metadata accessor for URL();
    sub_22E6CF960();
    sub_22E6CF4F4(v21, v22);
    sub_22E6CF99C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = (v3 + v16[7]);
    v24 = *(v23 + 16);
    v27 = *v23;
    v28 = v24;
    v26[15] = 3;
    sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
    sub_22E6CF340(&qword_27DA6C5E8);
    sub_22E6CF99C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

void AssetDownloadResponse.hash(into:)()
{
  v1 = v0;
  type metadata accessor for UUID();
  sub_22E6CF948();
  sub_22E6CF4F4(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for AssetDownloadResponse();
  v5 = v0 + v4[5];
  Asset.hash(into:)();
  v6 = v4[6];
  type metadata accessor for URL();
  sub_22E6CF960();
  sub_22E6CF4F4(v7, v8);
  dispatch thunk of Hashable.hash(into:)();
  v9 = (v1 + v4[7]);
  if (*(v9 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *v9;
    v10 = v9[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x2318ECB90](v11);
    MEMORY[0x2318ECB90](v10);
  }
}

Swift::Int AssetDownloadResponse.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetDownloadResponse.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AssetDownloadResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for URL();
  v4 = sub_22E6CF988(v3);
  v60 = v5;
  v61 = v4;
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  sub_22E6CF9C8();
  v57 = v9 - v8;
  v59 = type metadata accessor for Asset(0);
  v10 = sub_22E6CF978(v59);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22E6CF9C8();
  v15 = v14 - v13;
  v16 = type metadata accessor for UUID();
  v17 = sub_22E6CF988(v16);
  v58 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22E6CF9C8();
  v63 = v22 - v21;
  v65 = sub_22E6CF1CC(&qword_27DA6C600, &qword_22E726160);
  v23 = sub_22E6CF988(v65);
  v62 = v24;
  v26 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v28 = &v55 - v27;
  v29 = type metadata accessor for AssetDownloadResponse();
  v30 = sub_22E6CF978(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22E6CF9C8();
  v35 = v34 - v33;
  v36 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6CF258();
  v64 = v28;
  v37 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    return sub_22E6CF2F4(a1);
  }

  v38 = v15;
  v39 = v29;
  v66 = v35;
  v40 = v60;
  v41 = v61;
  LOBYTE(v67) = 0;
  sub_22E6CF948();
  sub_22E6CF4F4(v42, v43);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = *(v58 + 32);
  v45 = v63;
  v63 = v16;
  v44(v66, v45, v16);
  LOBYTE(v67) = 1;
  sub_22E6CF9B0();
  sub_22E6CF4F4(v46, v47);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_22E6CE328(v38, v66 + v39[5]);
  LOBYTE(v67) = 2;
  sub_22E6CF960();
  sub_22E6CF4F4(v48, v49);
  v50 = v57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v40 + 32))(v66 + v39[6], v50, v41);
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  v69 = 3;
  sub_22E6CF340(&qword_27DA6C620);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v62 + 8))(v64, v65);
  v51 = v68;
  v52 = v66;
  v53 = v66 + v39[7];
  *v53 = v67;
  *(v53 + 16) = v51;
  sub_22E6CF3AC(v52, v56, type metadata accessor for AssetDownloadResponse);
  sub_22E6CF2F4(a1);
  return sub_22E6CF40C(v52, type metadata accessor for AssetDownloadResponse);
}

Swift::Int sub_22E6CF15C()
{
  Hasher.init(_seed:)();
  AssetDownloadResponse.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6CF1CC(uint64_t *a1, uint64_t *a2)
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

void *sub_22E6CF214(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22E6CF258()
{
  result = qword_27DA6C5C8;
  if (!qword_27DA6C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C5C8);
  }

  return result;
}

uint64_t sub_22E6CF2AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22E6CF2F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22E6CF340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6C5E0, &unk_22E7273C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E6CF3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22E6CF978(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22E6CF40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6CF4F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22E6CF5B4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Asset(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        sub_22E6CF668();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22E6CF668()
{
  if (!qword_27DA6C640)
  {
    sub_22E6CF2AC(&qword_27DA6C5E0, &unk_22E7273C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA6C640);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22E6CF844()
{
  result = qword_27DA6C648;
  if (!qword_27DA6C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C648);
  }

  return result;
}

unint64_t sub_22E6CF89C()
{
  result = qword_27DA6C650;
  if (!qword_27DA6C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C650);
  }

  return result;
}

unint64_t sub_22E6CF8F4()
{
  result = qword_27DA6C658;
  if (!qword_27DA6C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C658);
  }

  return result;
}

uint64_t sub_22E6CF9D8()
{
  v1 = *(*(v0 - 152) + 8);
  result = *(v0 - 136);
  v3 = *(v0 - 128);
  return result;
}

uint64_t Asset.ID.Builder.__allocating_init(partition:ownerID:signature:)()
{
  sub_22E6D3758();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Asset.ID.Builder.init(partition:ownerID:signature:)();
  return v3;
}

uint64_t Asset.ID.Builder.init(partition:ownerID:signature:)()
{
  sub_22E6D3758();
  v6 = v5;
  v7 = OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_partition;
  v8 = type metadata accessor for URL();
  sub_22E6CF978(v8);
  (*(v9 + 32))(v1 + v7, v6);
  v10 = (v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID);
  *v10 = v4;
  v10[1] = v3;
  v11 = (v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature);
  *v11 = v2;
  v11[1] = v0;
  *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature) = xmmword_22E7263B0;
  return v1;
}

uint64_t Asset.ID.Builder.setReferenceSignature(_:)(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature);
  v4 = *(v2 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature);
  v5 = *(v2 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_22E6CFB64(a1, a2);
  sub_22E6CFBBC(v4, v5);
}

uint64_t sub_22E6CFB64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22E6CFBBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Asset.ID.Builder.build()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_partition;
  v4 = type metadata accessor for URL();
  sub_22E6CF978(v4);
  (*(v5 + 16))(a1, v1 + v3);
  v7 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID);
  v6 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID + 8);
  v8 = type metadata accessor for Asset.ID(0);
  v9 = (a1 + v8[5]);
  *v9 = v7;
  v9[1] = v6;
  v10 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature);
  v11 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature + 8);
  v12 = (a1 + v8[6]);
  *v12 = v10;
  v12[1] = v11;
  v13 = v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature;
  v14 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature);
  v15 = *(v13 + 8);
  v16 = (a1 + v8[7]);
  *v16 = v14;
  v16[1] = v15;

  sub_22E6CFB64(v10, v11);

  return sub_22E6CFB64(v14, v15);
}

uint64_t Asset.ID.Builder.deinit()
{
  v1 = OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_partition;
  v2 = type metadata accessor for URL();
  sub_22E6CF978(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID + 8);

  sub_22E6CFBBC(*(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature), *(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature + 8));
  sub_22E6CFBBC(*(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature), *(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature + 8));
  return v0;
}

uint64_t Asset.ID.Builder.__deallocating_deinit()
{
  Asset.ID.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22E6CFE3C(uint64_t a1)
{
  v2 = sub_22E6D06DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6CFE78(uint64_t a1)
{
  v2 = sub_22E6D06DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Asset.ID.partition.getter()
{
  v0 = type metadata accessor for URL();
  sub_22E6CF978(v0);
  v2 = *(v1 + 16);
  v3 = sub_22E6D368C();

  return v4(v3);
}

uint64_t Asset.ID.storageLocation.getter()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_22E6CF988(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v7 = type metadata accessor for Asset.ID(0);
  sub_22E6D3710(v7);
  v10 = *v8;
  v11 = v8[1];
  (*(v4 + 104))(v0, *MEMORY[0x277CC91D8], v1);
  sub_22E6D0038();

  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v0, v1);
}

unint64_t sub_22E6D0038()
{
  result = qword_27DA6CA20;
  if (!qword_27DA6CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CA20);
  }

  return result;
}

uint64_t Asset.ID.ownerID.getter()
{
  v0 = type metadata accessor for Asset.ID(0);
  sub_22E6D3710(v0);
  v2 = *v1;
  v3 = v1[1];

  return sub_22E6D368C();
}

uint64_t Asset.ID.signature.getter()
{
  v1 = (v0 + *(type metadata accessor for Asset.ID(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_22E6D368C();
  sub_22E6CFB64(v4, v5);
  return sub_22E6D368C();
}

uint64_t Asset.ID.referenceSignature.getter()
{
  v1 = (v0 + *(type metadata accessor for Asset.ID(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_22E6D368C();
  sub_22E6CFB64(v4, v5);
  return sub_22E6D368C();
}

int *Asset.ID.init(storageLocation:signature:referenceSignature:)()
{
  sub_22E6D3758();
  v5 = v4;
  v7 = v6;
  URL.deletingLastPathComponent()();
  v8 = URL.lastPathComponent.getter();
  v10 = v9;
  v11 = type metadata accessor for URL();
  sub_22E6CF978(v11);
  (*(v12 + 8))(v5);
  result = type metadata accessor for Asset.ID(0);
  v14 = (v7 + result[5]);
  *v14 = v8;
  v14[1] = v10;
  v15 = (v7 + result[6]);
  *v15 = v3;
  v15[1] = v2;
  v16 = (v7 + result[7]);
  *v16 = v1;
  v16[1] = v0;
  return result;
}

void Asset.ID.init(from:)()
{
  sub_22E6D37D4();
  v2 = v1;
  v79 = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  sub_22E6D376C(v4);
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v81 = &v72 - v8;
  sub_22E6D37B0();
  v80 = type metadata accessor for URL();
  v9 = sub_22E6CF988(v80);
  v77 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22E6CF9C8();
  v76 = v14 - v13;
  v15 = sub_22E6D37B0();
  v78 = type metadata accessor for Asset.ID(v15);
  v16 = sub_22E6CF978(v78);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22E6CF9C8();
  v75 = v20 - v19;
  sub_22E6D37B0();
  v21 = type metadata accessor for BinaryDecodingOptions();
  v22 = sub_22E6D376C(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22E6CF9C8();
  v83 = (v26 - v25);
  v27 = sub_22E6D37B0();
  v28 = type metadata accessor for CloudAssets_Asset.ID(v27);
  v29 = sub_22E6CF978(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22E6D37EC();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v72 - v36;
  v38 = sub_22E6CF1CC(&qword_27DA6C660, &qword_22E7263C0);
  sub_22E6CF988(v38);
  v82 = v39;
  v41 = *(v40 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v42);
  v44 = &v72 - v43;
  v45 = v2[4];
  sub_22E6CF214(v2, v2[3]);
  sub_22E6D06DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v74 = v28;
    v73 = v34;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v72 = v44;
    v87 = v88;
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E6D371C();
    sub_22E6D0BD0(v46, v47);
    v48 = v37;
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    sub_22E6D36F8();
    v49 = v37;
    v50 = v73;
    sub_22E6D1894(v49, v73);
    v51 = *v50;
    v52 = v50[1];
    v83 = v48;
    v53 = v81;
    URL.init(string:)();
    v54 = v80;
    if (sub_22E6CF550(v53, 1, v80) != 1)
    {
      v58 = v76;
      v59 = *(v77 + 32);
      v59(v76, v53, v54);
      v60 = v75;
      v59(v75, v58, v54);
      v61 = v50[3];
      v62 = v78;
      v63 = (v60 + *(v78 + 20));
      *v63 = v50[2];
      v63[1] = v61;
      v65 = v50[4];
      v64 = v50[5];
      v66 = (v60 + *(v62 + 24));
      *v66 = v65;
      v66[1] = v64;
      v68 = v50[6];
      v67 = v50[7];

      sub_22E6CFB64(v65, v64);
      sub_22E6CFB64(v68, v67);
      sub_22E6D36B0();
      sub_22E6D2780();
      v69 = (v60 + *(v62 + 28));
      *v69 = v68;
      v69[1] = v67;
      sub_22E6D2780();
      v70 = sub_22E6D3874();
      v71(v70);
      sub_22E6D3640();
      sub_22E6D2224(v60, v79);
      v57 = v2;
      goto LABEL_5;
    }

    sub_22E6D3510(v53, &qword_27DA6C940, &qword_22E7273D0);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    sub_22E6D36B0();
    sub_22E6D2780();
    sub_22E6D2780();
    v55 = sub_22E6D3874();
    v56(v55);
  }

  v57 = v2;
LABEL_5:
  sub_22E6CF2F4(v57);
  sub_22E6D37BC();
}

unint64_t sub_22E6D06DC()
{
  result = qword_27DA6C668;
  if (!qword_27DA6C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C668);
  }

  return result;
}

unint64_t sub_22E6D0730()
{
  result = qword_27DA6C670;
  if (!qword_27DA6C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C670);
  }

  return result;
}

unint64_t sub_22E6D0784()
{
  result = qword_27DA6C680;
  if (!qword_27DA6C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C680);
  }

  return result;
}

void Asset.ID.encode(to:)()
{
  sub_22E6D37D4();
  v3 = v0;
  v4 = sub_22E6D3778();
  v5 = type metadata accessor for CloudAssets_Asset.ID(v4);
  v6 = sub_22E6CF978(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v44 = sub_22E6CF1CC(&qword_27DA6C688, &qword_22E7263C8);
  sub_22E6CF988(v44);
  v41[1] = v9;
  v11 = *(v10 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  v15 = v0[4];
  sub_22E6CF214(v0, v0[3]);
  sub_22E6D06DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *(v2 + 2) = xmmword_22E7263B0;
  *(v2 + 3) = xmmword_22E7263B0;
  v16 = v2 + *(v5 + 32);
  UnknownStorage.init()();
  *v2 = URL.absoluteString.getter();
  v2[1] = v17;
  v18 = type metadata accessor for Asset.ID(0);
  v19 = (v3 + v18[5]);
  v20 = v19[1];
  v2[2] = *v19;
  v2[3] = v20;
  v21 = (v3 + v18[6]);
  v22 = *v21;
  v23 = v21[1];
  v25 = v2[4];
  v24 = v2[5];

  sub_22E6CFB64(v22, v23);
  sub_22E6CFBBC(v25, v24);
  v2[4] = v22;
  v2[5] = v23;
  v26 = (v3 + v18[7]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v2[6];
  v30 = v2[7];
  v31 = sub_22E6D368C();
  sub_22E6CFB64(v31, v32);
  sub_22E6CFBBC(v29, v30);
  v2[6] = v27;
  v2[7] = v28;
  sub_22E6D371C();
  sub_22E6D0BD0(v33, v34);
  v35 = Message.serializedData(partial:)();
  if (v1)
  {
    sub_22E6D3854();
    v37(v14, v44);
    sub_22E6D35E0();
    sub_22E6D2780();
  }

  else
  {
    v38 = v35;
    v39 = v36;
    sub_22E6D35E0();
    sub_22E6D2780();
    v42 = v38;
    v43 = v39;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v42, v43);
    sub_22E6D3854();
    v40(v14, v44);
  }

  sub_22E6D38A0();
  sub_22E6D37BC();
}

unint64_t sub_22E6D0A5C()
{
  result = qword_27DA6C690;
  if (!qword_27DA6C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C690);
  }

  return result;
}

uint64_t static Asset.ID.== infix(_:_:)()
{
  if (static URL.== infix(_:_:)())
  {
    sub_22E6D3784();
    v2 = sub_22E6D3658(v1);
    v6 = v2 == v5 && v3 == v4;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = sub_22E6D3658(*(v0 + 24));
      if (MEMORY[0x2318EC160](v7))
      {
        sub_22E6D3658(*(v0 + 28));

        JUMPOUT(0x2318EC160);
      }
    }
  }

  return 0;
}

uint64_t Asset.ID.hash(into:)()
{
  sub_22E6D3848();
  v0 = type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v1, v2);
  sub_22E6D3830();
  dispatch thunk of Hashable.hash(into:)();
  sub_22E6D3784();
  sub_22E6D367C(v3);
  String.hash(into:)();
  sub_22E6D367C(*(v0 + 24));
  Data.hash(into:)();
  sub_22E6D367C(*(v0 + 28));

  return Data.hash(into:)();
}

uint64_t sub_22E6D0BD0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int Asset.ID.hashValue.getter()
{
  sub_22E6D38AC();
  type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for Asset.ID(0);
  sub_22E6D366C(v2[5]);
  String.hash(into:)();
  sub_22E6D366C(v2[6]);
  Data.hash(into:)();
  sub_22E6D366C(v2[7]);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E6D0CC0(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_22E6D0BD0(&qword_27DA6C5F8, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  Data.hash(into:)();
  v10 = (v2 + a2[7]);
  v11 = *v10;
  v12 = v10[1];
  Data.hash(into:)();
  return Hasher._finalize()();
}

double Asset.Protector.Builder.__allocating_init(securityKey:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  result = 0.0;
  *(v4 + 32) = xmmword_22E7263B0;
  return result;
}

uint64_t Asset.Protector.Builder.init(securityKey:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = xmmword_22E7263B0;
  return v2;
}

uint64_t Asset.Protector.Builder.setPrivacyKey(_:)(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_22E6CFB64(a1, a2);
  sub_22E6CFBBC(v3, v4);
}

uint64_t Asset.Protector.Builder.build()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  v4 = v1[4];
  v5 = v1[5];
  a1[2] = v4;
  a1[3] = v5;
  sub_22E6CFB64(v2, v3);
  v6 = sub_22E6D368C();

  return sub_22E6CFB64(v6, v7);
}

uint64_t Asset.Protector.Builder.deinit()
{
  sub_22E6CFBBC(*(v0 + 16), *(v0 + 24));
  sub_22E6CFBBC(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t Asset.Protector.Builder.__deallocating_deinit()
{
  Asset.Protector.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_22E6D0F14(uint64_t a1)
{
  v2 = sub_22E6D1274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D0F50(uint64_t a1)
{
  v2 = sub_22E6D1274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Asset.Protector.securityKey.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_22E6D368C();
  sub_22E6CFB64(v3, v4);
  return sub_22E6D368C();
}

uint64_t Asset.Protector.privacyKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22E6D368C();
  sub_22E6CFB64(v3, v4);
  return sub_22E6D368C();
}

uint64_t Asset.Protector.init(securityKey:privacyKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void Asset.Protector.init(from:)()
{
  sub_22E6D37D4();
  v2 = v1;
  v30 = v3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = sub_22E6D376C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v8 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v9 = sub_22E6CF978(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22E6CF9C8();
  v14 = (v13 - v12);
  v31 = sub_22E6CF1CC(&qword_27DA6C698, &qword_22E7263D0);
  sub_22E6CF988(v31);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v20 = v2[4];
  v32 = v2;
  sub_22E6CF214(v2, v2[3]);
  sub_22E6D1274();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_22E6D37FC();
    sub_22E6D36C8();
    sub_22E6D0BD0(v21, v22);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v23 = *(v16 + 8);
    v24 = sub_22E6D37A4();
    v25(v24);
    v26 = *v14;
    v27 = v14[1];
    v28 = v14[2];
    v29 = v14[3];
    sub_22E6CFB64(v26, v27);
    sub_22E6CFB64(v28, v29);
    sub_22E6D35F8();
    sub_22E6D2780();
    *v30 = v26;
    v30[1] = v27;
    v30[2] = v28;
    v30[3] = v29;
  }

  sub_22E6CF2F4(v32);
  sub_22E6D38A0();
  sub_22E6D37BC();
}

unint64_t sub_22E6D1274()
{
  result = qword_27DA6C6A0;
  if (!qword_27DA6C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6A0);
  }

  return result;
}

void Asset.Protector.encode(to:)()
{
  sub_22E6D37D4();
  v4 = v3;
  v33 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v5 = sub_22E6CF978(v33);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v37 = sub_22E6CF1CC(&qword_27DA6C6B0, &qword_22E7263D8);
  sub_22E6CF988(v37);
  v34 = v8;
  v10 = *(v9 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v15 = v0[3];
  v16 = v4[3];
  v17 = v4[4];
  v18 = v4;
  v20 = &v32 - v19;
  sub_22E6CF214(v18, v16);
  sub_22E6D1274();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *v2 = xmmword_22E7263B0;
  *(v2 + 16) = xmmword_22E7263B0;
  v21 = *(v33 + 24);
  sub_22E6CFB64(v13, v12);
  v22 = sub_22E6D3824();
  sub_22E6CFB64(v22, v23);
  UnknownStorage.init()();
  sub_22E6CFBBC(*v2, *(v2 + 8));
  *v2 = v13;
  *(v2 + 8) = v12;
  sub_22E6CFBBC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = v14;
  *(v2 + 24) = v15;
  sub_22E6D36C8();
  sub_22E6D0BD0(v24, v25);
  v26 = Message.serializedData(partial:)();
  if (v1)
  {
    sub_22E6D3854();
    v28(v20, v37);
    sub_22E6D35F8();
    sub_22E6D2780();
  }

  else
  {
    v29 = v26;
    v30 = v27;
    sub_22E6D35F8();
    sub_22E6D2780();
    v35 = v29;
    v36 = v30;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v35, v36);
    sub_22E6D3854();
    v31(v20, v37);
  }

  sub_22E6D38A0();
  sub_22E6D37BC();
}

uint64_t static Asset.Protector.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (MEMORY[0x2318EC160](*a1, a1[1], *a2, a2[1]))
  {
    sub_22E6D368C();

    JUMPOUT(0x2318EC160);
  }

  return 0;
}

uint64_t Asset.Protector.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int Asset.Protector.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22E6D38AC();
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6D162C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6675626F746F7270 && a2 == 0xEC00000061746144)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_22E6D16CC()
{
  sub_22E6D38AC();
  MEMORY[0x2318ECB90](0);
  return Hasher._finalize()();
}

Swift::Int sub_22E6D1710()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E6D17A8()
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  return Hasher._finalize()();
}

uint64_t sub_22E6D17E8(uint64_t a1)
{
  v2 = sub_22E6D21D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D1824(uint64_t a1)
{
  v2 = sub_22E6D21D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6D1894(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6CF978(v5);
  v7 = *(v6 + 16);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

uint64_t Asset.protector.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Asset(0);
  sub_22E6D3710(v2);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  sub_22E6CFB64(v4, v5);

  return sub_22E6CFB64(v6, v7);
}

void sub_22E6D1990()
{
  sub_22E6D37D4();
  v1 = v0;
  v83 = v2;
  v3 = sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
  sub_22E6D376C(v3);
  v5 = *(v4 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v81 = &v76 - v7;
  v8 = sub_22E6D37B0();
  v80 = type metadata accessor for CloudAssets_Asset.Protector(v8);
  v9 = sub_22E6CF978(v80);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22E6CF9C8();
  v82 = (v13 - v12);
  v14 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  sub_22E6D376C(v14);
  v16 = *(v15 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v20 = type metadata accessor for URL();
  v21 = sub_22E6CF988(v20);
  v79 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22E6CF9C8();
  v78 = v26 - v25;
  v27 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
  sub_22E6D376C(v27);
  v29 = *(v28 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v30);
  v32 = &v76 - v31;
  v33 = type metadata accessor for CloudAssets_Asset.ID(0);
  v34 = sub_22E6CF978(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22E6CF9C8();
  v39 = v38 - v37;
  v40 = type metadata accessor for Asset.ID(0);
  v41 = sub_22E6CF978(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22E6CF9C8();
  v46 = v45 - v44;
  v77 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6D3568(v1 + *(v77 + 24), v32, &qword_27DA6C738, &unk_22E727970);
  if (sub_22E6CF550(v32, 1, v33) == 1)
  {
    *v39 = 0;
    *(v39 + 8) = 0xE000000000000000;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0xE000000000000000;
    *(v39 + 32) = xmmword_22E7263B0;
    *(v39 + 48) = xmmword_22E7263B0;
    v47 = v39 + *(v33 + 32);
    UnknownStorage.init()();
    if (sub_22E6CF550(v32, 1, v33) != 1)
    {
      sub_22E6D3510(v32, &qword_27DA6C738, &unk_22E727970);
    }
  }

  else
  {
    sub_22E6D3734();
    sub_22E6D2224(v32, v39);
  }

  v48 = *v39;
  v49 = *(v39 + 8);
  URL.init(string:)();
  v50 = v1;
  if (sub_22E6CF550(v19, 1, v20) == 1)
  {
    sub_22E6D3510(v19, &qword_27DA6C940, &qword_22E7273D0);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    sub_22E6D35E0();
    sub_22E6D2780();
    sub_22E6D3628();
    sub_22E6D2780();
  }

  else
  {
    v51 = v78;
    v52 = *(v79 + 32);
    v52(v78, v19, v20);
    v52(v46, v51, v20);
    v53 = *(v39 + 24);
    v54 = (v46 + v40[5]);
    *v54 = *(v39 + 16);
    v54[1] = v53;
    v55 = *(v39 + 40);
    v56 = (v46 + v40[6]);
    *v56 = *(v39 + 32);
    v56[1] = v55;
    v57 = *(v39 + 48);
    v58 = *(v39 + 56);

    v59 = sub_22E6D383C();
    sub_22E6CFB64(v59, v60);
    sub_22E6CFB64(v57, v58);
    sub_22E6D35E0();
    sub_22E6D2780();
    v61 = (v46 + v40[7]);
    *v61 = v57;
    v61[1] = v58;
    sub_22E6D3640();
    v62 = v83;
    sub_22E6D2224(v46, v83);
    v63 = v81;
    sub_22E6D3568(v50 + *(v77 + 28), v81, &qword_27DA6C740, &unk_22E726B00);
    v64 = v80;
    if (sub_22E6CF550(v63, 1, v80) == 1)
    {
      v65 = v82;
      *v82 = xmmword_22E7263B0;
      v65[1] = xmmword_22E7263B0;
      v66 = v65 + *(v64 + 24);
      UnknownStorage.init()();
      if (sub_22E6CF550(v63, 1, v64) != 1)
      {
        sub_22E6D3510(v63, &qword_27DA6C740, &unk_22E726B00);
      }
    }

    else
    {
      sub_22E6D36E0();
      v65 = v82;
      sub_22E6D2224(v63, v82);
    }

    v67 = *v65;
    v68 = *(v65 + 1);
    v69 = *(v65 + 2);
    v70 = *(v65 + 3);
    v71 = sub_22E6D368C();
    sub_22E6CFB64(v71, v72);
    sub_22E6CFB64(v69, v70);
    sub_22E6D35F8();
    sub_22E6D2780();
    v73 = type metadata accessor for Asset(0);
    v74 = (v62 + *(v73 + 20));
    *v74 = v67;
    v74[1] = v68;
    v74[2] = v69;
    v74[3] = v70;
    v75 = *v50;
    sub_22E6D3628();
    sub_22E6D2780();
    *(v62 + *(v73 + 24)) = v75;
  }

  sub_22E6D37BC();
}

__n128 Asset.init(id:protector:size:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_22E6D3640();
  sub_22E6D2224(v6, v7);
  v8 = type metadata accessor for Asset(0);
  v9 = (a3 + *(v8 + 20));
  result = *a1;
  v11 = *(a1 + 16);
  *v9 = *a1;
  v9[1] = v11;
  *(a3 + *(v8 + 24)) = a2;
  return result;
}

void Asset.init(from:)()
{
  sub_22E6D37D4();
  v2 = v1;
  v37 = v3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = sub_22E6D376C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v39 = v9 - v8;
  v10 = sub_22E6D37B0();
  v11 = type metadata accessor for CloudAssets_Asset(v10);
  v12 = sub_22E6CF978(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22E6CF9C8();
  v15 = type metadata accessor for Asset(0);
  v16 = sub_22E6D376C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22E6CF9C8();
  v21 = v20 - v19;
  v22 = sub_22E6CF1CC(&qword_27DA6C6B8, &qword_22E7263E0);
  sub_22E6CF988(v22);
  v38 = v23;
  v25 = *(v24 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v26);
  v28 = &v34 - v27;
  v29 = v2[4];
  v40 = v2;
  sub_22E6CF214(v2, v2[3]);
  sub_22E6D21D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v30 = v38;
    v36 = v21;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v22;
    sub_22E6D37FC();
    sub_22E6D3698();
    sub_22E6D0BD0(v31, v32);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v33 = v36;
    sub_22E6D1990();
    (*(v30 + 8))(v28, v35);
    sub_22E6D2224(v33, v37);
  }

  sub_22E6CF2F4(v40);
  sub_22E6D37BC();
}

unint64_t sub_22E6D21D0()
{
  result = qword_27DA6C6C0;
  if (!qword_27DA6C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6C0);
  }

  return result;
}

uint64_t sub_22E6D2224(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6CF978(v5);
  v7 = *(v6 + 32);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

uint64_t sub_22E6D227C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v4 = sub_22E6CF978(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22E6D37EC();
  v58 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v55 = type metadata accessor for CloudAssets_Asset.ID(0);
  v12 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  sub_22E6D37EC();
  v56 = v13 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v54 = xmmword_22E7263B0;
  *(v18 + 2) = xmmword_22E7263B0;
  *(v18 + 3) = xmmword_22E7263B0;
  v19 = &v54 + *(v16 + 32) - v17;
  UnknownStorage.init()();
  *v18 = URL.absoluteString.getter();
  *(v18 + 1) = v20;
  v21 = type metadata accessor for Asset.ID(0);
  sub_22E6D3710(v21);
  v23 = v22[1];
  *(v18 + 2) = *v22;
  *(v18 + 3) = v23;
  v24 = (v1 + *(v21 + 24));
  v26 = *v24;
  v25 = v24[1];
  v27 = *(v18 + 4);
  v28 = *(v18 + 5);

  v29 = sub_22E6D37A4();
  sub_22E6CFB64(v29, v30);
  sub_22E6CFBBC(v27, v28);
  *(v18 + 4) = v26;
  *(v18 + 5) = v25;
  v31 = (v1 + *(v21 + 28));
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v18 + 6);
  v35 = *(v18 + 7);
  sub_22E6CFB64(*v31, v33);
  v36 = sub_22E6D3824();
  sub_22E6CFBBC(v36, v37);
  *(v18 + 6) = v32;
  *(v18 + 7) = v33;
  v57 = type metadata accessor for Asset(0);
  sub_22E6D3710(v57);
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  v43 = v54;
  *v11 = v54;
  *(v11 + 1) = v43;
  v44 = *(v3 + 24);
  sub_22E6CFB64(v39, v40);
  sub_22E6CFB64(v41, v42);
  UnknownStorage.init()();
  sub_22E6CFBBC(*v11, *(v11 + 1));
  *v11 = v39;
  *(v11 + 1) = v40;
  sub_22E6CFBBC(*(v11 + 2), *(v11 + 3));
  *(v11 + 2) = v41;
  *(v11 + 3) = v42;
  *a1 = 0;
  v45 = type metadata accessor for CloudAssets_Asset(0);
  v46 = a1 + v45[5];
  UnknownStorage.init()();
  v47 = v45[6];
  v48 = v55;
  sub_22E6CF58C(a1 + v47, 1, 1, v55);
  v49 = v45[7];
  v50 = v3;
  sub_22E6CF58C(a1 + v49, 1, 1, v3);
  sub_22E6D36F8();
  v51 = v56;
  sub_22E6D1894(v18, v56);
  sub_22E6D3510(a1 + v47, &qword_27DA6C738, &unk_22E727970);
  sub_22E6D3734();
  sub_22E6D2224(v51, a1 + v47);
  sub_22E6CF58C(a1 + v47, 0, 1, v48);
  v52 = v58;
  sub_22E6D1894(v11, v58);
  sub_22E6D3510(a1 + v49, &qword_27DA6C740, &unk_22E726B00);
  sub_22E6D36E0();
  sub_22E6D2224(v52, a1 + v49);
  sub_22E6CF58C(a1 + v49, 0, 1, v50);
  sub_22E6D35F8();
  sub_22E6D2780();
  sub_22E6D35E0();
  result = sub_22E6D2780();
  *a1 = *(v1 + *(v57 + 24));
  return result;
}

void Asset.encode(to:)()
{
  sub_22E6D37D4();
  v3 = sub_22E6D3778();
  v4 = type metadata accessor for CloudAssets_Asset(v3);
  v5 = sub_22E6CF978(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v10 = (v9 - v8);
  v11 = sub_22E6CF1CC(&qword_27DA6C6D0, &qword_22E7263E8);
  sub_22E6CF988(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  sub_22E6D3894();
  v17 = v0[4];
  sub_22E6CF214(v0, v0[3]);
  sub_22E6D21D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E6D227C(v10);
  sub_22E6D3698();
  sub_22E6D0BD0(v18, v19);
  v20 = Message.serializedData(partial:)();
  if (v1)
  {
    sub_22E6D3628();
    sub_22E6D2780();
  }

  else
  {
    v22 = v20;
    v23 = v21;
    sub_22E6D3628();
    sub_22E6D2780();
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v22, v23);
  }

  (*(v13 + 8))(v2, v11);
  sub_22E6D38A0();
  sub_22E6D37BC();
}

uint64_t sub_22E6D2780()
{
  v1 = sub_22E6D3848();
  v3 = v2(v1);
  sub_22E6CF978(v3);
  (*(v4 + 8))(v0);
  return v0;
}

BOOL static Asset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)())
  {
    sub_22E6D3784();
    v6 = sub_22E6D3658(v5);
    v10 = v6 == v9 && v7 == v8;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = sub_22E6D3658(*(v2 + 24));
      if (MEMORY[0x2318EC160](v11))
      {
        v12 = sub_22E6D3658(*(v2 + 28));
        if (MEMORY[0x2318EC160](v12))
        {
          v51 = type metadata accessor for Asset(0);
          v13 = *(v51 + 20);
          v14 = *(a1 + v13);
          v15 = *(a1 + v13 + 8);
          v16 = *(a1 + v13 + 16);
          v17 = *(a1 + v13 + 24);
          v18 = (a2 + v13);
          v20 = *v18;
          v19 = v18[1];
          v21 = v18[2];
          v22 = v18[3];
          v23 = sub_22E6D3888();
          sub_22E6CFB64(v23, v24);
          v25 = sub_22E6D383C();
          sub_22E6CFB64(v25, v26);
          v27 = sub_22E6D37A4();
          sub_22E6CFB64(v27, v28);
          v29 = sub_22E6D3824();
          sub_22E6CFB64(v29, v30);
          v31 = sub_22E6D3888();
          if (MEMORY[0x2318EC160](v31))
          {
            v32 = sub_22E6D383C();
            v50 = MEMORY[0x2318EC160](v32);
            v33 = sub_22E6D37A4();
            sub_22E6CFBBC(v33, v34);
            v35 = sub_22E6D3824();
            sub_22E6CFBBC(v35, v36);
            v37 = sub_22E6D3888();
            sub_22E6CFBBC(v37, v38);
            v39 = sub_22E6D383C();
            sub_22E6CFBBC(v39, v40);
            if (v50)
            {
              return *(a1 + *(v51 + 24)) == *(a2 + *(v51 + 24));
            }
          }

          else
          {
            v42 = sub_22E6D37A4();
            sub_22E6CFBBC(v42, v43);
            v44 = sub_22E6D3824();
            sub_22E6CFBBC(v44, v45);
            v46 = sub_22E6D3888();
            sub_22E6CFBBC(v46, v47);
            v48 = sub_22E6D383C();
            sub_22E6CFBBC(v48, v49);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t Asset.hash(into:)()
{
  sub_22E6D3848();
  v1 = type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v2, v3);
  sub_22E6D3830();
  dispatch thunk of Hashable.hash(into:)();
  sub_22E6D3784();
  sub_22E6D367C(v4);
  String.hash(into:)();
  sub_22E6D367C(*(v1 + 24));
  Data.hash(into:)();
  sub_22E6D367C(*(v1 + 28));
  Data.hash(into:)();
  v5 = type metadata accessor for Asset(0);
  sub_22E6D3710(v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  Data.hash(into:)();
  Data.hash(into:)();
  return MEMORY[0x2318ECB90](*(v0 + *(v5 + 24)));
}

Swift::Int Asset.hashValue.getter()
{
  sub_22E6D38AC();
  type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for Asset.ID(0);
  sub_22E6D366C(v3[5]);
  String.hash(into:)();
  sub_22E6D366C(v3[6]);
  Data.hash(into:)();
  sub_22E6D366C(v3[7]);
  Data.hash(into:)();
  v4 = type metadata accessor for Asset(0);
  sub_22E6D3710(v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v0 + *(v4 + 24)));
  return Hasher._finalize()();
}

Swift::Int sub_22E6D2AFC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_22E6D0BD0(&qword_27DA6C5F8, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for Asset.ID(0);
  v5 = (v2 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  v8 = (v2 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  Data.hash(into:)();
  v11 = (v2 + v4[7]);
  v12 = *v11;
  v13 = v11[1];
  Data.hash(into:)();
  v14 = (v2 + *(a2 + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

unint64_t sub_22E6D2C58()
{
  result = qword_27DA6C6E0;
  if (!qword_27DA6C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6E0);
  }

  return result;
}

uint64_t sub_22E6D2D50()
{
  result = type metadata accessor for Asset.ID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6D2DFC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6D2EA4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E6D2EDC()
{
  result = type metadata accessor for URL();
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

uint64_t sub_22E6D2FAC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_22E6D2FC8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22E6D2FD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22E6D3020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetSkeleton.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_22E6D314C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E6D31FC()
{
  result = qword_27DA6C6F0;
  if (!qword_27DA6C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6F0);
  }

  return result;
}

unint64_t sub_22E6D3254()
{
  result = qword_27DA6C6F8;
  if (!qword_27DA6C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6F8);
  }

  return result;
}

unint64_t sub_22E6D32AC()
{
  result = qword_27DA6C700;
  if (!qword_27DA6C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C700);
  }

  return result;
}

unint64_t sub_22E6D3304()
{
  result = qword_27DA6C708;
  if (!qword_27DA6C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C708);
  }

  return result;
}

unint64_t sub_22E6D335C()
{
  result = qword_27DA6C710;
  if (!qword_27DA6C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C710);
  }

  return result;
}

unint64_t sub_22E6D33B4()
{
  result = qword_27DA6C718;
  if (!qword_27DA6C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C718);
  }

  return result;
}

unint64_t sub_22E6D340C()
{
  result = qword_27DA6C720;
  if (!qword_27DA6C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C720);
  }

  return result;
}

unint64_t sub_22E6D3464()
{
  result = qword_27DA6C728;
  if (!qword_27DA6C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C728);
  }

  return result;
}

unint64_t sub_22E6D34BC()
{
  result = qword_27DA6C730;
  if (!qword_27DA6C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C730);
  }

  return result;
}

uint64_t sub_22E6D3510(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22E6CF1CC(a2, a3);
  sub_22E6CF978(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22E6D3568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22E6CF1CC(a3, a4);
  sub_22E6CF978(v5);
  v7 = *(v6 + 16);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

uint64_t sub_22E6D3658@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

void sub_22E6D366C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t sub_22E6D367C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  return v1;
}

uint64_t sub_22E6D3784()
{
  result = type metadata accessor for Asset.ID(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_22E6D37FC()
{
  *(v0 - 112) = *(v0 - 96);
  *(v0 - 128) = 0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;

  return BinaryDecodingOptions.init()();
}

uint64_t sub_22E6D38AC()
{

  return Hasher.init(_seed:)();
}

Swift::Int sub_22E6D38C4()
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  return Hasher._finalize()();
}

uint64_t sub_22E6D390C(uint64_t a1)
{
  v2 = sub_22E6D3D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D3948(uint64_t a1)
{
  v2 = sub_22E6D3D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetSkeleton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22E6CF9C8();
  v39 = v7 - v6;
  v8 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v9 = sub_22E6CF978(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22E6CF9C8();
  v14 = (v13 - v12);
  v15 = type metadata accessor for AssetSkeleton();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_22E6CF9C8();
  v19 = v18 - v17;
  v20 = sub_22E6CF1CC(&qword_27DA6C748, &qword_22E726B20);
  v21 = sub_22E6CF988(v20);
  v38 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v34 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v45 = a1;
  sub_22E6CF214(a1, v27);
  sub_22E6D3D48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v29 = v38;
    v36 = v19;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v20;
    v43 = v44;
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E6D5108();
    sub_22E6D4CC0(v30, v31);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v33 = v36;
    sub_22E6D3D9C(v14, v36);
    (*(v29 + 8))(v26, v35);
    sub_22E6D4F78(v33, v37);
  }

  return sub_22E6CF2F4(v45);
}

uint64_t type metadata accessor for AssetSkeleton()
{
  result = qword_27DA6C778;
  if (!qword_27DA6C778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22E6D3D48()
{
  result = qword_27DA6C750;
  if (!qword_27DA6C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C750);
  }

  return result;
}

uint64_t sub_22E6D3D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for Google_Protobuf_Timestamp();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for CloudAssets_Credential(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Asset(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v48 - v20;
  v22 = type metadata accessor for CloudAssets_Asset(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v48 - v27;
  sub_22E6F3B7C(*a1, v21);
  if (sub_22E6CF550(v21, 1, v22) == 1)
  {
    sub_22E6D3510(v21, &unk_27DA6C910, &unk_22E726D20);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    return sub_22E6D50A0(a1, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
  }

  sub_22E6D4F78(v21, v28);
  sub_22E6D4FD4(v28, v26);
  v29 = v52;
  sub_22E6D1990();
  if (v29)
  {
    sub_22E6D50A0(v28, type metadata accessor for CloudAssets_Asset);
    return sub_22E6D50A0(a1, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
  }

  v31 = v51;
  sub_22E6D4F78(v17, v51);
  v32 = a1[1];
  v33 = a1[2];
  v52 = type metadata accessor for AssetSkeleton();
  v34 = (v31 + *(v52 + 20));
  *v34 = v32;
  v34[1] = v33;
  v35 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  sub_22E6D5030(a1 + *(v35 + 32), v9);
  if (sub_22E6CF550(v9, 1, v10) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v36 = *(v10 + 28);
    sub_22E6CFB64(v32, v33);
    UnknownStorage.init()();
    sub_22E6CF58C(v13 + *(v10 + 32), 1, 1, v50);
    if (sub_22E6CF550(v9, 1, v10) != 1)
    {
      sub_22E6D3510(v9, &qword_27DA6C7A8, &unk_22E7273B0);
    }
  }

  else
  {
    sub_22E6D4F78(v9, v13);
    sub_22E6CFB64(v32, v33);
  }

  v37 = v52;
  v38 = v51;
  v39 = (v51 + *(v52 + 28));
  v40 = v13[1];
  *v39 = *v13;
  v39[1] = v40;
  v41 = v13[3];
  v39[2] = v13[2];
  v39[3] = v41;
  v42 = v13[5];
  v39[4] = v13[4];
  v39[5] = v42;

  v43 = v48;
  sub_22E6E4AE4(v48);
  v44 = v39 + *(type metadata accessor for Credential(0) + 28);
  Google_Protobuf_Timestamp.date.getter();
  (*(v49 + 8))(v43, v50);
  sub_22E6D50A0(v13, type metadata accessor for CloudAssets_Credential);
  sub_22E6D50A0(v28, type metadata accessor for CloudAssets_Asset);
  v45 = a1[3];
  v46 = a1[4];
  sub_22E6CFB64(v45, v46);
  result = sub_22E6D50A0(a1, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
  v47 = (v38 + *(v37 + 24));
  *v47 = v45;
  v47[1] = v46;
  return result;
}

uint64_t AssetSkeleton.init(asset:credential:storageReference:storageReferenceSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_22E6D4F78(a1, a7);
  v13 = type metadata accessor for AssetSkeleton();
  result = sub_22E6D4F78(a2, a7 + v13[7]);
  v15 = (a7 + v13[5]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a7 + v13[6]);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t sub_22E6D43A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Google_Protobuf_Timestamp();
  v47 = *(v41 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CloudAssets_Credential(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 1) = xmmword_22E7263B0;
  *(a1 + 3) = xmmword_22E7263B0;
  v12 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v13 = a1 + *(v12 + 28);
  UnknownStorage.init()();
  v42 = *(v12 + 32);
  sub_22E6CF58C(a1 + v42, 1, 1, v8);
  sub_22E6CF1CC(&qword_27DA6C7A0, &qword_22E726D18);
  v14 = *(type metadata accessor for CloudAssets_Asset(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22E726B10;
  sub_22E6D227C((v17 + v16));
  *a1 = v17;
  v18 = type metadata accessor for AssetSkeleton();
  v19 = (v1 + v18[5]);
  v21 = *v19;
  v20 = v19[1];
  v22 = a1[1];
  v23 = a1[2];
  sub_22E6CFB64(*v19, v20);
  sub_22E6CFBBC(v22, v23);
  a1[1] = v21;
  a1[2] = v20;
  v24 = (v1 + v18[7]);
  v40 = v8;
  v25 = &v11[*(v8 + 28)];
  UnknownStorage.init()();
  v26 = *(v8 + 32);
  v27 = v41;
  sub_22E6CF58C(&v11[v26], 1, 1, v41);
  v28 = *(v24 + 1);
  *v11 = *v24;
  *(v11 + 1) = v28;
  v29 = *(v24 + 3);
  *(v11 + 2) = *(v24 + 2);
  *(v11 + 3) = v29;
  v30 = *(v24 + 5);
  *(v11 + 4) = *(v24 + 4);
  *(v11 + 5) = v30;
  v31 = type metadata accessor for Credential(0);
  (*(v45 + 16))(v44, &v24[*(v31 + 28)], v46);

  v32 = v43;
  Google_Protobuf_Timestamp.init(date:)();
  sub_22E6D3510(&v11[v26], &qword_27DA6C930, &unk_22E727910);
  (*(v47 + 32))(&v11[v26], v32, v27);
  sub_22E6CF58C(&v11[v26], 0, 1, v27);
  v33 = v42;
  sub_22E6D3510(a1 + v42, &qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D4F78(v11, a1 + v33);
  sub_22E6CF58C(a1 + v33, 0, 1, v40);
  v34 = (v1 + v18[6]);
  v35 = *v34;
  v36 = v34[1];
  v37 = a1[3];
  v38 = a1[4];
  sub_22E6CFB64(*v34, v36);
  result = sub_22E6CFBBC(v37, v38);
  a1[3] = v35;
  a1[4] = v36;
  return result;
}

uint64_t AssetSkeleton.encode(to:)()
{
  v1 = sub_22E6D3778();
  v2 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(v1);
  v3 = sub_22E6CF978(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v8 = (v7 - v6);
  v9 = sub_22E6CF1CC(&qword_27DA6C760, &qword_22E726B28);
  v10 = sub_22E6CF988(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v26 - v15;
  v17 = v0[4];
  sub_22E6CF214(v0, v0[3]);
  sub_22E6D3D48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E6D43A4(v8);
  sub_22E6D5108();
  sub_22E6D4CC0(v18, v19);
  v20 = v28;
  v21 = Message.serializedData(partial:)();
  if (v20)
  {
    sub_22E6D5120();
  }

  else
  {
    v23 = v21;
    v24 = v22;
    sub_22E6D5120();
    v26 = v23;
    v27 = v24;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v26, v27);
  }

  return (*(v12 + 8))(v16, v9);
}

uint64_t static AssetSkeleton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static Asset.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AssetSkeleton();
  sub_22E6D5148(v4[5]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_22E6D5148(v4[6]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];

  return static Credential.== infix(_:_:)((a1 + v7), (a2 + v7));
}

uint64_t AssetSkeleton.hash(into:)()
{
  v1 = v0;
  type metadata accessor for URL();
  sub_22E6D4CC0(&qword_27DA6C5F8, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for Asset.ID(0);
  sub_22E6D50F8(v2[5]);
  String.hash(into:)();
  sub_22E6D50F8(v2[6]);
  Data.hash(into:)();
  sub_22E6D50F8(v2[7]);
  Data.hash(into:)();
  v3 = type metadata accessor for Asset(0);
  v4 = (v1 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v1 + *(v3 + 24)));
  v9 = type metadata accessor for AssetSkeleton();
  sub_22E6D50F8(v9[5]);
  Data.hash(into:)();
  sub_22E6D50F8(v9[6]);
  Data.hash(into:)();
  v10 = (v1 + v9[7]);
  v11 = *v10;
  v12 = v10[1];
  String.hash(into:)();
  v13 = v10[2];
  v14 = v10[3];
  String.hash(into:)();
  v15 = v10[4];
  v16 = v10[5];
  String.hash(into:)();
  LODWORD(v7) = *(type metadata accessor for Credential(0) + 28);
  type metadata accessor for Date();
  sub_22E6D4CC0(&qword_27DA6C768, MEMORY[0x277CC9578]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int AssetSkeleton.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetSkeleton.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E6D4C08()
{
  Hasher.init(_seed:)();
  AssetSkeleton.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6D4CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E6D4D30()
{
  result = type metadata accessor for Asset(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSkeleton.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E6D4E74()
{
  result = qword_27DA6C788;
  if (!qword_27DA6C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C788);
  }

  return result;
}

unint64_t sub_22E6D4ECC()
{
  result = qword_27DA6C790;
  if (!qword_27DA6C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C790);
  }

  return result;
}

unint64_t sub_22E6D4F24()
{
  result = qword_27DA6C798;
  if (!qword_27DA6C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C798);
  }

  return result;
}

uint64_t sub_22E6D4F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6D3778();
  v6 = v5(v4);
  sub_22E6CF978(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22E6D4FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6D3778();
  v6 = v5(v4);
  sub_22E6CF978(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22E6D5030(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6D50A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6D50F8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  return v1;
}

uint64_t sub_22E6D5120()
{

  return sub_22E6D50A0(v0, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
}

void sub_22E6D5148(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v2 + a1 + 8);
  v6 = (v1 + a1);
  v7 = *v6;
  v8 = v6[1];

  JUMPOUT(0x2318EC160);
}

uint64_t sub_22E6D51A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = sub_22E6CF1CC(a2, a3);
  v8 = sub_22E6CF978(v7);
  v10 = *(v9 + 16);

  return v10(a4, v4 + v6, v8);
}

uint64_t sub_22E6D5218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  v7 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__signals;
  v8 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6CF978(v8);
  (*(v9 + 32))(v3 + v7, a2);
  v10 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__results;
  v11 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6CF978(v11);
  (*(v12 + 32))(v3 + v10, a3);
  return v3;
}

uint64_t AssetsUploadCoordinator.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__signals;
  v3 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6CF978(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__results;
  v6 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6CF978(v6);
  (*(v7 + 8))(v0 + v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsUploadCoordinator.__deallocating_deinit()
{
  AssetsUploadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsUploadCoordinator()
{
  result = qword_281468550;
  if (!qword_281468550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22E6D5448()
{
  sub_22E6D55B0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22E6D5624();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22E6D55B0()
{
  if (!qword_2814681D8)
  {
    sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
    v0 = type metadata accessor for AsyncThrowingStream();
    if (!v1)
    {
      atomic_store(v0, &qword_2814681D8);
    }
  }
}

void sub_22E6D5624()
{
  if (!qword_2814681D0)
  {
    sub_22E6CF2AC(&qword_27DA6C7C8, &unk_22E727340);
    sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
    v0 = type metadata accessor for AsyncThrowingStream();
    if (!v1)
    {
      atomic_store(v0, &qword_2814681D0);
    }
  }
}

uint64_t XPCAsyncSequenceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t XPCAsyncSequenceRequest.data.getter()
{
  v1 = v0 + *(type metadata accessor for XPCAsyncSequenceRequest() + 20);
  v2 = *v1;
  sub_22E6CFB64(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for XPCAsyncSequenceRequest()
{
  result = qword_27DA6C7E8;
  if (!qword_27DA6C7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E6D57A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int sub_22E6D586C(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_22E6D58B4(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22E6D58E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6D57A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6D5910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6D5864();
  *a1 = result;
  return result;
}

uint64_t sub_22E6D5938(uint64_t a1)
{
  v2 = sub_22E6D5B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D5974(uint64_t a1)
{
  v2 = sub_22E6D5B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCAsyncSequenceRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6C7D0, &qword_22E726DE0);
  v6 = sub_22E6CF988(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D5B70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for UUID();
  sub_22E6D5FC8(&qword_27DA6C5D0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for XPCAsyncSequenceRequest() + 20));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 1;
    sub_22E6CFB64(v18, v15);
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v18, v19);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_22E6D5B70()
{
  result = qword_27DA6C7D8;
  if (!qword_27DA6C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C7D8);
  }

  return result;
}

uint64_t XPCAsyncSequenceRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = type metadata accessor for UUID();
  v4 = sub_22E6CF988(v33);
  v30 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22E6CF1CC(&qword_27DA6C7E0, &qword_22E726DE8);
  v31 = sub_22E6CF988(v10);
  v32 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = type metadata accessor for XPCAsyncSequenceRequest();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D5B70();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_22E6CF2F4(a1);
  }

  v28 = v14;
  v19 = v30;
  LOBYTE(v34) = 0;
  sub_22E6D5FC8(&qword_27DA6C608);
  v20 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v19 + 32);
  v27 = v17;
  v21(v17, v9, v20);
  v35 = 1;
  sub_22E6D0730();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = sub_22E6D6348();
  v23(v22);
  v24 = v27;
  *&v27[*(v28 + 20)] = v34;
  sub_22E6D5ED4(v24, v29);
  sub_22E6CF2F4(a1);
  return sub_22E6D5F38(v24);
}

uint64_t sub_22E6D5ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6D5F38(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E6D5FC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E6D6068()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22E6D6244()
{
  result = qword_27DA6C7F8;
  if (!qword_27DA6C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C7F8);
  }

  return result;
}

unint64_t sub_22E6D629C()
{
  result = qword_27DA6C800;
  if (!qword_27DA6C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C800);
  }

  return result;
}

unint64_t sub_22E6D62F4()
{
  result = qword_27DA6C808;
  if (!qword_27DA6C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C808);
  }

  return result;
}

uint64_t AssetDownloadRequest.id.getter()
{
  sub_22E6D9170();
  v0 = type metadata accessor for UUID();
  sub_22E6CF978(v0);
  v2 = *(v1 + 16);
  v3 = sub_22E6D368C();

  return v4(v3);
}

uint64_t AssetDownloadRequest.tenantName.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  sub_22E6D91C0(*(v0 + 20));

  return sub_22E6D368C();
}

uint64_t type metadata accessor for AssetDownloadRequest()
{
  result = qword_27DA6C858;
  if (!qword_27DA6C858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadRequest.workingDirectory.getter()
{
  sub_22E6D9170();
  v2 = *(type metadata accessor for AssetDownloadRequest() + 24);
  v3 = type metadata accessor for URL();
  v4 = sub_22E6CF978(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AssetDownloadRequest.asset.getter()
{
  sub_22E6D9170();
  v2 = type metadata accessor for AssetDownloadRequest();
  return sub_22E6D898C(v1 + *(v2 + 28), v0);
}

uint64_t AssetDownloadRequest.range.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetDownloadRequest() + 32));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t AssetDownloadRequest.fileURL.getter()
{
  sub_22E6D9170();
  v2 = *(type metadata accessor for AssetDownloadRequest() + 36);
  v3 = type metadata accessor for URL();
  v4 = sub_22E6CF978(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AssetDownloadRequest.credential.getter()
{
  sub_22E6D9170();
  v2 = *(type metadata accessor for AssetDownloadRequest() + 40);
  sub_22E6D90B0();
  return sub_22E6D898C(v1 + v3, v0);
}

uint64_t AssetDownloadRequest.storageReference.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  sub_22E6D91C0(*(v0 + 44));
  v1 = sub_22E6D368C();
  sub_22E6CFB64(v1, v2);
  return sub_22E6D368C();
}

uint64_t AssetDownloadRequest.storageReferenceSignature.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  sub_22E6D91C0(*(v0 + 48));
  v1 = sub_22E6D368C();
  sub_22E6CFB64(v1, v2);
  return sub_22E6D368C();
}

uint64_t AssetDownloadRequest.applicationID.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  sub_22E6D91C0(*(v0 + 52));

  return sub_22E6D368C();
}

double AssetDownloadRequest.init(asset:fileURL:credential:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  UUID.init()();
  v6 = type metadata accessor for AssetDownloadRequest();
  v7 = sub_22E6D9114(v6);
  sub_22E6D67B0(v7, 0xE900000000000079, a3 + v6[6]);
  v8 = v6[7];
  sub_22E6D8FE8();
  sub_22E6D675C(a1, v9);
  v10 = v6[9];
  v11 = type metadata accessor for URL();
  sub_22E6D901C(v11);
  v13 = *(v12 + 32);
  v14 = sub_22E6D91A8();
  v15(v14);
  v16 = v6[10];
  sub_22E6D9004();
  sub_22E6D675C(a2, a3 + v17);
  result = 0.0;
  *(a3 + v6[11]) = xmmword_22E7263B0;
  *(a3 + v6[12]) = xmmword_22E7263B0;
  v19 = (a3 + v6[13]);
  *v19 = 0;
  v19[1] = 0;
  v20 = a3 + v6[8];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  return result;
}

uint64_t sub_22E6D675C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6D901C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

void sub_22E6D67B0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v68 = type metadata accessor for URL.DirectoryHint();
  v3 = sub_22E6CF988(v68);
  v5 = v4;
  v74 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v10 = v9 - v8;
  v11 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - v13;
  v15 = type metadata accessor for URL();
  v72 = sub_22E6CF988(v15);
  v73 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v72);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  sub_22E6D91E4();
  v70 = v22;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v23);
  sub_22E6D91E4();
  v71 = v24;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v25);
  sub_22E6D91E4();
  v69 = v26;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v27);
  sub_22E6D91E4();
  v62 = v28;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v29);
  v63 = &v59 - v30;
  v31 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_22E6CF58C(v14, 1, 1, v15);
  v32 = *MEMORY[0x277CC91D8];
  v33 = *(v5 + 104);
  v34 = sub_22E6D917C();
  v35 = v68;
  v33(v34);
  URL.init(filePath:directoryHint:relativeTo:)();
  v75 = 0x7972617262694CLL;
  v76 = 0xE700000000000000;
  v36 = sub_22E6D917C();
  v37 = v35;
  v33(v36);
  v67 = sub_22E6D0038();
  URL.appending<A>(path:directoryHint:)();
  v38 = *(v74 + 8);
  v74 += 8;
  v38(v10, v35);
  v39 = v72;
  v40 = *(v73 + 8);
  v73 += 8;
  v40(v21, v72);
  v75 = 0x736568636143;
  v76 = 0xE600000000000000;
  v41 = sub_22E6D917C();
  v33(v41);
  v42 = v70;
  URL.appending<A>(path:directoryHint:)();
  v38(v10, v37);
  v40(v42, v39);
  v75 = 0x74694B64756F6C43;
  v76 = 0xE800000000000000;
  v61 = v32;
  v70 = v33;
  (v33)(v10, v32, v37);
  v43 = v71;
  URL.appending<A>(path:directoryHint:)();
  v44 = v37;
  v60 = v38;
  v38(v10, v37);
  v71 = v40;
  v40(v43, v72);
  v45 = [objc_opt_self() mainBundle];
  v46 = [v45 bundleIdentifier];

  if (v46)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v75 = v47;
    v76 = v49;
    v50 = v61;
    v70(v10);
    v51 = v62;
    v52 = v69;
    URL.appending<A>(path:directoryHint:)();
    v53 = v60;
    v60(v10, v44);
    v71(v52, v72);

    v75 = 0x73734164756F6C43;
    v76 = 0xEB00000000737465;
    v54 = v70;
    (v70)(v10, v50, v44);
    v55 = v63;
    URL.appending<A>(path:directoryHint:)();
    v53(v10, v44);
    v56 = v51;
    v57 = v72;
    v71(v56, v72);
    v75 = v64;
    v76 = v65;
    v58 = sub_22E6D917C();
    v54(v58);
    URL.appending<A>(path:directoryHint:)();
    v53(v10, v44);
    v71(v55, v57);
  }

  else
  {
    __break(1u);
  }
}

void AssetDownloadRequest.init(tenantName:asset:fileURL:credential:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  UUID.init()();
  v10 = type metadata accessor for AssetDownloadRequest();
  v11 = (a5 + v10[5]);
  *v11 = a1;
  v11[1] = a2;
  v12 = v10[6];

  sub_22E6D67B0(a1, a2, a5 + v12);

  v13 = v10[7];
  sub_22E6D8FE8();
  sub_22E6D675C(a3, v14);
  v15 = v10[9];
  v16 = type metadata accessor for URL();
  sub_22E6D901C(v16);
  v18 = *(v17 + 32);
  v19 = sub_22E6D91A8();
  v20(v19);
  v21 = v10[10];
  sub_22E6D9004();
  sub_22E6D675C(a4, a5 + v22);
  *(a5 + v10[11]) = xmmword_22E7263B0;
  *(a5 + v10[12]) = xmmword_22E7263B0;
  sub_22E6D9060();
}

void AssetDownloadRequest.init(skeleton:fileURL:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  v4 = type metadata accessor for AssetDownloadRequest();
  v5 = sub_22E6D9114(v4);
  sub_22E6D67B0(v5, 0xE900000000000079, a2 + v4[6]);
  v6 = v4[7];
  sub_22E6D8FE8();
  sub_22E6D675C(a1, v7);
  v8 = v4[9];
  v9 = type metadata accessor for URL();
  sub_22E6D901C(v9);
  v11 = *(v10 + 32);
  v12 = sub_22E6D91A8();
  v13(v12);
  v14 = type metadata accessor for AssetSkeleton();
  v15 = v14[7];
  v16 = v4[10];
  sub_22E6D9004();
  sub_22E6D675C(a1 + v17, a2 + v18);
  v19 = v4[11];
  sub_22E6D91CC(v14[5]);
  v20 = v4[12];
  sub_22E6D91CC(v14[6]);
  sub_22E6D9060();
}

void AssetDownloadRequest.init(tenantName:skeleton:fileURL:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init()();
  v8 = type metadata accessor for AssetDownloadRequest();
  v9 = (a4 + v8[5]);
  *v9 = a1;
  v9[1] = a2;
  v10 = v8[6];

  sub_22E6D67B0(a1, a2, a4 + v10);

  v11 = v8[7];
  sub_22E6D8FE8();
  sub_22E6D675C(a3, v12);
  v13 = v8[9];
  v14 = type metadata accessor for URL();
  sub_22E6D901C(v14);
  v16 = *(v15 + 32);
  v17 = sub_22E6D91A8();
  v18(v17);
  v19 = type metadata accessor for AssetSkeleton();
  v20 = v19[7];
  v21 = v8[10];
  sub_22E6D9004();
  sub_22E6D675C(a3 + v22, a4 + v23);
  v24 = v8[11];
  sub_22E6D91CC(v19[5]);
  v25 = v8[12];
  sub_22E6D91CC(v19[6]);
  sub_22E6D9060();
}

__n128 AssetDownloadRequest.init(asset:destination:credential:range:applicationID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  UUID.init()();
  v15 = *a3;
  v16 = a3[1];
  v17 = type metadata accessor for AssetDownloadRequest();
  v18 = (a9 + v17[5]);
  *v18 = v15;
  v18[1] = v16;
  v19 = v17[6];

  sub_22E6D67B0(v15, v16, a9 + v19);
  v20 = v17[7];
  sub_22E6D8FE8();
  sub_22E6D675C(a1, v21);
  v22 = a9 + v17[8];
  *v22 = a4;
  *(v22 + 8) = a5;
  *(v22 + 16) = a6 & 1;
  v23 = v17[9];
  v24 = type metadata accessor for URL();
  sub_22E6D901C(v24);
  (*(v25 + 32))(a9 + v23, a2);
  v26 = v17[10];
  sub_22E6D90B0();
  sub_22E6D898C(a3, a9 + v27);
  v28 = (a9 + v17[13]);
  *v28 = a7;
  v28[1] = a8;
  *(a9 + v17[11]) = xmmword_22E7263B0;
  sub_22E6D90E0();
  sub_22E6D89E0(a3, v29);
  result = xmmword_22E7263B0;
  *(a9 + v17[12]) = xmmword_22E7263B0;
  return result;
}

uint64_t static AssetDownloadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadRequest();
  v5 = sub_22E6D3658(v4[5]);
  v9 = v5 == v8 && v6 == v7;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[6]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_22E6D919C(v4[7]);
  if (!static Asset.== infix(_:_:)(v10, v11))
  {
    return 0;
  }

  v12 = v4[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 16);
  v15 = a2 + v12;
  if (v14)
  {
    if (!*(v15 + 16))
    {
      return 0;
    }

LABEL_18:
    sub_22E6D919C(v4[9]);
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    v18 = sub_22E6D919C(v4[10]);
    if ((static Credential.== infix(_:_:)(v18, v19) & 1) == 0)
    {
      return 0;
    }

    v20 = sub_22E6D3658(v4[11]);
    if ((MEMORY[0x2318EC160](v20) & 1) == 0)
    {
      return 0;
    }

    v21 = sub_22E6D3658(v4[12]);
    if ((MEMORY[0x2318EC160](v21) & 1) == 0)
    {
      return 0;
    }

    v22 = v4[13];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    v26 = v25[1];
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *v23 == *v25 && v24 == v26;
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(v15 + 16) & 1) == 0 && *v13 == *v15 && v13[1] == *(v15 + 8))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_22E6D732C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022E72CC60 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x800000022E72CC80 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x800000022E72CCA0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x746163696C707061 && a2 == 0xED000044496E6F69)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_22E6D764C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7465737361;
      break;
    case 4:
      result = 0x65676E6172;
      break;
    case 5:
      result = 0x4C5255656C6966;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x746163696C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E6D7778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6D732C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6D77A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6D7644();
  *a1 = result;
  return result;
}

uint64_t sub_22E6D77C8(uint64_t a1)
{
  v2 = sub_22E6D8938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D7804(uint64_t a1)
{
  v2 = sub_22E6D8938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetDownloadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6C810, &unk_22E726FE0);
  v6 = sub_22E6CF988(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v33 - v11;
  v13 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D8938();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v34) = 0;
  type metadata accessor for UUID();
  sub_22E6D9048();
  sub_22E6D8B54(v14, v15);
  sub_22E6D91F0();
  sub_22E6D9084();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for AssetDownloadRequest();
    sub_22E6D91D8(v16[5]);
    LOBYTE(v34) = 1;
    sub_22E6D90F8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v16[6];
    LOBYTE(v34) = 2;
    v18 = type metadata accessor for URL();
    sub_22E6D9030();
    sub_22E6D8B54(v19, v20);
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v33[1] = v18;
    v21 = v16[7];
    LOBYTE(v34) = 3;
    type metadata accessor for Asset(0);
    sub_22E6D90C8();
    sub_22E6D8B54(v22, v23);
    sub_22E6D9084();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = (v3 + v16[8]);
    v25 = *(v24 + 16);
    v34 = *v24;
    v35 = v25;
    v36 = 4;
    sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
    sub_22E6CF340(&qword_27DA6C5E8);
    sub_22E6D9084();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = v16[9];
    LOBYTE(v34) = 5;
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v16[10];
    LOBYTE(v34) = 6;
    type metadata accessor for Credential(0);
    sub_22E6D9098();
    sub_22E6D8B54(v28, v29);
    sub_22E6D9084();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v34 = sub_22E6D91D8(v16[11]);
    *(&v34 + 1) = v30;
    v36 = 7;
    sub_22E6CFB64(v34, v30);
    sub_22E6D0A5C();
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v34, *(&v34 + 1));
    *&v34 = sub_22E6D91D8(v16[12]);
    *(&v34 + 1) = v31;
    v36 = 8;
    sub_22E6CFB64(v34, v31);
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v34, *(&v34 + 1));
    sub_22E6D91D8(v16[13]);
    LOBYTE(v34) = 9;
    sub_22E6D90F8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

void AssetDownloadRequest.hash(into:)()
{
  v1 = v0;
  type metadata accessor for UUID();
  sub_22E6D9048();
  sub_22E6D8B54(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for AssetDownloadRequest();
  sub_22E6D367C(v4[5]);
  String.hash(into:)();
  v5 = v4[6];
  type metadata accessor for URL();
  sub_22E6D9030();
  sub_22E6D8B54(v6, v7);
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  v8 = v1 + v4[7];
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for Asset.ID(0);
  sub_22E6D367C(v9[5]);
  String.hash(into:)();
  sub_22E6D367C(v9[6]);
  Data.hash(into:)();
  sub_22E6D367C(v9[7]);
  Data.hash(into:)();
  v10 = type metadata accessor for Asset(0);
  v11 = (v8 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v8 + *(v10 + 24)));
  v16 = (v1 + v4[8]);
  if (*(v16 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *v16;
    v17 = v16[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x2318ECB90](v18);
    MEMORY[0x2318ECB90](v17);
  }

  v19 = v1 + v4[9];
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  v20 = (v1 + v4[10]);
  v21 = *v20;
  v22 = v20[1];
  String.hash(into:)();
  v23 = v20[2];
  v24 = v20[3];
  String.hash(into:)();
  v25 = v20[4];
  v26 = v20[5];
  String.hash(into:)();
  v27 = *(type metadata accessor for Credential(0) + 28);
  type metadata accessor for Date();
  sub_22E6D8B54(&qword_27DA6C768, MEMORY[0x277CC9578]);
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  v28 = (v1 + v4[11]);
  v29 = *v28;
  v30 = v28[1];
  Data.hash(into:)();
  v31 = (v1 + v4[12]);
  v32 = *v31;
  v33 = v31[1];
  Data.hash(into:)();
  v34 = (v1 + v4[13]);
  if (v34[1])
  {
    v35 = *v34;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AssetDownloadRequest.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetDownloadRequest.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AssetDownloadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v96 = type metadata accessor for Credential(0);
  v3 = sub_22E6CF978(v96);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v97 = v7 - v6;
  v99 = type metadata accessor for Asset(0);
  v8 = sub_22E6CF978(v99);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22E6CF9C8();
  v98 = v12 - v11;
  v13 = type metadata accessor for URL();
  v14 = sub_22E6CF988(v13);
  v107 = v15;
  v108 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v94 - v21;
  v23 = type metadata accessor for UUID();
  v24 = sub_22E6CF988(v23);
  v103 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22E6CF9C8();
  v102 = sub_22E6CF1CC(&qword_27DA6C828, &qword_22E726FF0);
  v28 = sub_22E6CF988(v102);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = v94 - v33;
  v109 = type metadata accessor for AssetDownloadRequest();
  v35 = sub_22E6CF978(v109);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22E6CF9C8();
  v104 = a1;
  v105 = v39 - v38;
  v40 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D8938();
  v100 = v34;
  v41 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v101 = v23;
  if (v41)
  {
    v106 = v41;
    return sub_22E6CF2F4(v104);
  }

  v42 = v98;
  v106 = v20;
  v94[2] = v30;
  LOBYTE(v110) = 0;
  sub_22E6D9048();
  sub_22E6D8B54(v43, v44);
  sub_22E6D91F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = *(v103 + 32);
  v52 = v105;
  v53 = sub_22E6D9164();
  v54(v53);
  LOBYTE(v110) = 1;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = (v52 + v109[5]);
  *v56 = v55;
  v56[1] = v57;
  LOBYTE(v110) = 2;
  sub_22E6D9030();
  v60 = sub_22E6D8B54(v58, v59);
  v61 = v22;
  v62 = v108;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v94[1] = v60;
  v63 = v61;
  v64 = *(v107 + 32);
  v64(v52 + v109[6], v63, v62);
  LOBYTE(v110) = 3;
  sub_22E6D90C8();
  sub_22E6D8B54(v65, v66);
  sub_22E6D91F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v67 = v109[7];
  sub_22E6D8FE8();
  sub_22E6D675C(v42, v68);
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  v112 = 4;
  sub_22E6CF340(&qword_27DA6C620);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v69 = v111;
  v70 = v52 + v109[8];
  *v70 = v110;
  *(v70 + 16) = v69;
  LOBYTE(v110) = 5;
  v71 = v106;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v72 = v109;
  v64(v52 + v109[9], v71, v62);
  LOBYTE(v110) = 6;
  sub_22E6D9098();
  sub_22E6D8B54(v73, v74);
  sub_22E6D91F0();
  v75 = v97;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = v72;
  v77 = v72[10];
  sub_22E6D9004();
  sub_22E6D675C(v75, v52 + v78);
  v112 = 7;
  sub_22E6D0730();
  sub_22E6D914C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v106 = 0;
  *(v52 + v72[11]) = v110;
  v112 = 8;
  sub_22E6D914C();
  v79 = v106;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v106 = v79;
  if (v79)
  {
    v80 = sub_22E6D913C();
    v81(v80);
    v82 = 0;
  }

  else
  {
    *(v52 + v72[12]) = v110;
    LOBYTE(v110) = 9;
    v83 = v106;
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v106 = v83;
    if (!v83)
    {
      v88 = v84;
      v89 = v85;
      v90 = sub_22E6D9188();
      v91(v90);
      v92 = v105;
      v93 = (v105 + v109[13]);
      *v93 = v88;
      v93[1] = v89;
      sub_22E6D898C(v92, v95);
      sub_22E6CF2F4(v104);
      return sub_22E6D89E0(v92, type metadata accessor for AssetDownloadRequest);
    }

    v86 = sub_22E6D9188();
    v87(v86);
    v82 = 1;
    v76 = v109;
    v52 = v105;
  }

  sub_22E6CF2F4(v104);
  (*(v103 + 8))(v52, v101);
  v46 = *(v52 + v76[5] + 8);

  v50 = v108;
  (*(v107 + 8))(v52 + v76[6], v108);
  sub_22E6D89E0(v52 + v76[7], type metadata accessor for Asset);
  (*(v107 + 8))(v52 + v76[9], v50);
  v47 = v76[10];
  sub_22E6D90E0();
  sub_22E6D89E0(v52 + v48, v49);
  result = sub_22E6CFBBC(*(v52 + v76[11]), *(v52 + v76[11] + 8));
  if (v82)
  {
    return sub_22E6CFBBC(*(v52 + v76[12]), *(v52 + v76[12] + 8));
  }

  return result;
}

Swift::Int sub_22E6D88C4()
{
  Hasher.init(_seed:)();
  AssetDownloadRequest.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_22E6D8938()
{
  result = qword_27DA6C818;
  if (!qword_27DA6C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C818);
  }

  return result;
}

uint64_t sub_22E6D898C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6D901C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

uint64_t sub_22E6D89E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6D8A38(void *a1)
{
  a1[1] = sub_22E6D8B54(&qword_27DA6C830, type metadata accessor for AssetDownloadRequest);
  a1[2] = sub_22E6D8B54(&qword_27DA6C838, type metadata accessor for AssetDownloadRequest);
  a1[3] = sub_22E6D8B54(&qword_27DA6C840, type metadata accessor for AssetDownloadRequest);
  result = sub_22E6D8B54(&qword_27DA6C848, type metadata accessor for AssetDownloadRequest);
  a1[4] = result;
  return result;
}

uint64_t sub_22E6D8B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E6D8C0C()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      v3 = type metadata accessor for Asset(319);
      if (v4 > 0x3F)
      {
        return v3;
      }

      sub_22E6CF668();
      if (v5 > 0x3F)
      {
        return v3;
      }

      else
      {
        v0 = type metadata accessor for Credential(319);
        if (v6 <= 0x3F)
        {
          sub_22E6D8D28();
          v0 = v7;
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_22E6D8D28()
{
  if (!qword_27DA6C868)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA6C868);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22E6D8EE0()
{
  result = qword_27DA6C870;
  if (!qword_27DA6C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C870);
  }

  return result;
}

unint64_t sub_22E6D8F38()
{
  result = qword_27DA6C878;
  if (!qword_27DA6C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C878);
  }

  return result;
}

unint64_t sub_22E6D8F90()
{
  result = qword_27DA6C880;
  if (!qword_27DA6C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C880);
  }

  return result;
}

void sub_22E6D9060()
{
  v2 = (v0 + *(v1 + 52));
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + *(v1 + 32);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
}

uint64_t sub_22E6D9114(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  result = 0x616C506572616853;
  *v2 = 0x616C506572616853;
  v2[1] = 0xE900000000000079;
  return result;
}

uint64_t sub_22E6D913C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 176);
  return result;
}

uint64_t sub_22E6D9188()
{
  v1 = *(*(v0 - 240) + 8);
  result = *(v0 - 192);
  v3 = *(v0 - 176);
  return result;
}

void sub_22E6D91C0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

__n128 sub_22E6D91CC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v3 + a1);
  *(v2 + v1) = result;
  return result;
}

uint64_t sub_22E6D91D8@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22E6D9234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = sub_22E6CF1CC(a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t sub_22E6D92AC(uint64_t *a1)
{
  v2[3] = v1;
  v4 = sub_22E6CF1CC(&qword_27DA6C888, &qword_22E7272A8);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[6] = v7;
  v2[7] = v8;

  return MEMORY[0x2822009F8](sub_22E6D9380, v1, 0);
}

uint64_t sub_22E6D9380()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v0[2] = v0[7];

  sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22E6D9454(uint64_t a1)
{
  v31 = a1;
  v29 = sub_22E6CF1CC(&qword_27DA6C898, &qword_22E727350);
  v2 = sub_22E6CF988(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v28 - v7;
  v30 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  v9 = sub_22E6CF988(v30);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v28 - v14;
  v16 = sub_22E6CF1CC(&qword_27DA6C8A0, &qword_22E727358);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  swift_defaultActor_initialize();
  v23 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__results;
  v24 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v1 + v23, v31, v24);
  v26 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6CF58C(v22, 1, 1, v26);
  v32 = v22;
  (*(v4 + 104))(v8, *MEMORY[0x277D858A0], v29);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v11 + 32))(v1 + OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__signals, v15, v30);
  sub_22E6D9E04(v22, v20);
  result = sub_22E6CF550(v20, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v25 + 8))(v31, v24);
    (*(*(v26 - 8) + 32))(v1 + OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator_continutation, v20, v26);
    sub_22E6D9E74(v22);
    return v1;
  }

  return result;
}

uint64_t sub_22E6D9794(uint64_t a1, uint64_t a2)
{
  sub_22E6D9E74(a2);
  v4 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_22E6CF58C(a2, 0, 1, v4);
}

uint64_t AssetsDownloadCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__results;
  v2 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6D9EDC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__signals;
  v5 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6D9EDC(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator_continutation;
  v8 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6D9EDC(v8);
  (*(v9 + 8))(v0 + v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsDownloadCoordinator.__deallocating_deinit()
{
  AssetsDownloadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsDownloadCoordinator()
{
  result = qword_2814682E8;
  if (!qword_2814682E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22E6D99C4()
{
  sub_22E6D5624();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22E6D9D80(319, &qword_2814681D8, MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22E6D9D80(319, &qword_2814681E0, MEMORY[0x277D858B0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssetsDownloadCoordinator.receive(signal:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22E6D9C8C;

  return v8(a1);
}

uint64_t sub_22E6D9C8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_22E6D9D80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
    v7 = a3(a1, &type metadata for Signal, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22E6D9E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6C8A0, &qword_22E727358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6D9E74(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6C8A0, &qword_22E727358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E6D9EF0(unint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v3 = MEMORY[0x277D84F90];
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_43;
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_35;
      }

      v47 = MEMORY[0x277D84F90];
      sub_22E7071AC(0, v8 & ~(v8 >> 63), 0);
      v38 = v7;
      v39 = v5;
      v36 = v6;
      if (v2)
      {
        if (v2 == 2)
        {
          v11 = *(v5 + 16);
        }

        else
        {
          v11 = v5;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v8 < 0)
      {
        goto LABEL_42;
      }

      v3 = v47;
      v37 = v5 >> 32;
      v34 = v5 >> 16;
      v35 = v5 >> 8;
      v32 = v5 >> 40;
      v33 = v5 >> 24;
      v30 = HIBYTE(v5);
      v31 = HIWORD(v5);
      v40 = v5;
      break;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }

  do
  {
    if (v2 == 1)
    {
      if (v11 < v39 || v11 >= v37)
      {
        goto LABEL_38;
      }

      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_45;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_40;
      }

LABEL_31:
      v12 = *(v15 + v17);
      goto LABEL_32;
    }

    if (v2)
    {
      if (v11 < *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v11 >= *(v5 + 24))
      {
        goto LABEL_39;
      }

      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        goto LABEL_46;
      }

      v15 = v18;
      v19 = __DataStorage._offset.getter();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v11 >= v38)
    {
      goto LABEL_37;
    }

    LOBYTE(v41) = v5;
    BYTE1(v41) = v35;
    BYTE2(v41) = v34;
    BYTE3(v41) = v33;
    BYTE4(v41) = v36;
    BYTE5(v41) = v32;
    BYTE6(v41) = v31;
    HIBYTE(v41) = v30;
    v42 = a2;
    v43 = BYTE2(a2);
    v44 = BYTE3(a2);
    v45 = BYTE4(a2);
    v46 = BYTE5(a2);
    v12 = *(&v41 + v11);
LABEL_32:
    sub_22E6CF1CC(&qword_27DA6C8B0, &qword_22E727368);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22E726B10;
    *(v20 + 56) = MEMORY[0x277D84B78];
    *(v20 + 64) = MEMORY[0x277D84BC0];
    *(v20 + 32) = v12;
    v21 = String.init(format:_:)();
    v23 = v22;
    v47 = v3;
    v25 = *(v3 + 16);
    v24 = *(v3 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22E7071AC((v24 > 1), v25 + 1, 1);
      v3 = v47;
    }

    *(v3 + 16) = v25 + 1;
    v26 = v3 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    ++v11;
    --v8;
    v5 = v40;
  }

  while (v8);
LABEL_35:
  v41 = v3;
  sub_22E6CF1CC(&qword_27DA6C8B8, &qword_22E728C80);
  sub_22E6DA77C();
  v27 = BidirectionalCollection<>.joined(separator:)();

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_22E6DA278()
{
  v2 = v0;
  v25[11] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6DA4D0();
  v8 = *(v4 + 16);
  v8(v7, v2, v3);
  v9 = sub_22E6DA514(v7);
  if (!v1)
  {
    v10 = v9;
    v11 = [v9 fileDescriptor];
    v25[0] = 65542;
    v12 = ffsctl(v11, 0xC0084A44uLL, v25, 0);
    if (v12)
    {
      v13 = v12;
      v14 = *MEMORY[0x277CCA5B8];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      sub_22E6CF1CC(&qword_27DA6C8A8, &qword_22E727360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22E726B10;
      v19 = *MEMORY[0x277CCA760];
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v20;
      *(inited + 72) = v3;
      v21 = sub_22E6DA66C((inited + 48));
      v8(v21, v2, v3);
      v22 = Dictionary.init(dictionaryLiteral:)();
      v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22E6DA6CC(v15, v17, v13, v22);
      swift_willThrow();
    }

    [v10 closeFile];
  }

  v24 = *MEMORY[0x277D85DE8];
}

unint64_t sub_22E6DA4D0()
{
  result = qword_27DA6C9F0;
  if (!qword_27DA6C9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA6C9F0);
  }

  return result;
}

id sub_22E6DA514(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v14);
  v3 = v2;
  v13 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t *sub_22E6DA66C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id sub_22E6DA6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x2318EC5C0]();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

unint64_t sub_22E6DA77C()
{
  result = qword_27DA6C8C0;
  if (!qword_27DA6C8C0)
  {
    sub_22E6CF2AC(&qword_27DA6C8B8, &qword_22E728C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C8C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCServiceNames(_BYTE *result, int a2, int a3)
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

uint64_t sub_22E6DA8F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_22E6E3D98() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
    if (v6 || (sub_22E6E3D98() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
      if (v7 || (sub_22E6E3D98() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == sub_22E6E3E14() && a2 == v8)
      {

        return 3;
      }

      else
      {
        v10 = sub_22E6E3D98();

        if (v10)
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

uint64_t sub_22E6DAA14(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      result = 0x69746E6564657263;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = sub_22E6E3E14();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E6DAAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6DA8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6DAAD8(uint64_t a1)
{
  v2 = sub_22E6E2CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6DAB14(uint64_t a1)
{
  v2 = sub_22E6E2CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6DAB50()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6C8D0);
  sub_22E6E3578(v0, qword_27DA6C8D0);
  type metadata accessor for AssetStreamHandle(0);
  sub_22E6CF1CC(&qword_27DA6CA18, &qword_22E727850);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E6DABF4()
{
  result = sub_22E6DAC14();
  qword_27DA6C8E8 = result;
  return result;
}

uint64_t sub_22E6DAC14()
{
  if (qword_27DA6C468 != -1)
  {
    swift_once();
  }

  v0 = 0xD000000000000022;
  v1 = off_27DA6D510;
  os_unfair_lock_lock(off_27DA6D510 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 5);
  if (os_unfair_lock_opaque_low)
  {
    v3 = 0x800000022E72CD60;
    if (!static TestConfigurations.isSystemInstalledBinary()())
    {
      v0 = sub_22E6DAD10();
      v3 = v4;
    }
  }

  else
  {
    v3 = 0x800000022E72CD10;
    v0 = 0xD00000000000001BLL;
  }

  type metadata accessor for AssetManager();
  swift_allocObject();
  return AssetManager.init(serviceName:)(v0, v3);
}

uint64_t sub_22E6DAD10()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

void AssetStreamHandle.init(from:)()
{
  sub_22E6D37D4();
  v114 = v2;
  v115 = v0;
  v113 = v3;
  v121 = v4;
  v5 = type metadata accessor for Google_Protobuf_Timestamp();
  v6 = sub_22E6CF988(v5);
  v108 = v7;
  v109 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22E6E39D4();
  v107 = v10;
  v11 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D376C(v11);
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  v105 = &v102 - v15;
  v16 = sub_22E6D37B0();
  v104 = type metadata accessor for CloudAssets_Credential(v16);
  v17 = sub_22E6CF978(v104);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22E6E39D4();
  v106 = v20;
  v21 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  sub_22E6D376C(v21);
  v23 = *(v22 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v24);
  v111 = &v102 - v25;
  v26 = sub_22E6D37B0();
  v112 = type metadata accessor for CloudAssets_Asset(v26);
  v27 = sub_22E6CF978(v112);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22E6E39D4();
  v110 = v30;
  v31 = sub_22E6D37B0();
  v32 = type metadata accessor for Asset(v31);
  v33 = sub_22E6D376C(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v36 = type metadata accessor for BinaryDecodingOptions();
  v37 = sub_22E6D376C(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22E6CF9C8();
  v40 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  v41 = sub_22E6CF978(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22E6CF9C8();
  v46 = (v45 - v44);
  v47 = type metadata accessor for AssetStreamHandle(0);
  v48 = *(v47 + 32);
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  v49 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  sub_22E6E2074();
  v50 = v113;
  *(v49 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v121 + v48) = v49;
  v51 = v46;
  v52 = v114;
  v119 = v50;
  v120 = v114;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  sub_22E6CFB64(v50, v114);
  BinaryDecodingOptions.init()();
  sub_22E6E3B4C();
  sub_22E6E224C(v53, v54);
  v55 = v115;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v55)
  {
    sub_22E6CFBBC(v50, v52);
  }

  else
  {
    v115 = v1;
    v102 = v47;
    v56 = v46 + *(v40 + 28);
    v58 = v110;
    v57 = v111;
    sub_22E6D3568(v56, v111, &unk_27DA6C910, &unk_22E726D20);
    if (sub_22E6CF550(v57, 1, v112) == 1)
    {
      *v58 = 0;
      v59 = v112;
      v60 = v58 + *(v112 + 20);
      UnknownStorage.init()();
      v103 = v51;
      v61 = v50;
      v62 = *(v59 + 24);
      type metadata accessor for CloudAssets_Asset.ID(0);
      sub_22E6E3D34();
      sub_22E6CF58C(v63, v64, v65, v66);
      v67 = *(v59 + 28);
      type metadata accessor for CloudAssets_Asset.Protector(0);
      v50 = v61;
      v51 = v103;
      sub_22E6E3D34();
      sub_22E6CF58C(v68, v69, v70, v71);
      sub_22E6E3F28();
      if (sub_22E6CF550(v72, v73, v74) != 1)
      {
        sub_22E6D3510(v57, &unk_27DA6C910, &unk_22E726D20);
      }
    }

    else
    {
      sub_22E6E3B1C();
      sub_22E6E2148(v57, v58);
    }

    v75 = v115;
    sub_22E6D1990();
    sub_22E6E3A78();
    sub_22E6E2148(v75, v121);
    v76 = v105;
    sub_22E6D3568(v51 + *(v40 + 32), v105, &qword_27DA6C7A8, &unk_22E7273B0);
    v77 = v104;
    v78 = sub_22E6CF550(v76, 1, v104);
    v103 = v51;
    if (v78 == 1)
    {
      v79 = v106;
      *v106 = 0;
      v79[1] = 0xE000000000000000;
      v79[2] = 0;
      v79[3] = 0xE000000000000000;
      v79[4] = 0;
      v79[5] = 0xE000000000000000;
      v80 = v79 + *(v77 + 28);
      UnknownStorage.init()();
      v81 = *(v77 + 32);
      sub_22E6E3D34();
      sub_22E6CF58C(v82, v83, v84, v109);
      v85 = sub_22E6CF550(v76, 1, v77);
      v86 = v107;
      v87 = v108;
      v88 = v102;
      if (v85 != 1)
      {
        sub_22E6D3510(v76, &qword_27DA6C7A8, &unk_22E7273B0);
      }
    }

    else
    {
      sub_22E6E3BC4();
      v79 = v106;
      sub_22E6E2148(v76, v106);
      v86 = v107;
      v87 = v108;
      v88 = v102;
    }

    v89 = (v121 + *(v88 + 20));
    v90 = v79[1];
    *v89 = *v79;
    v89[1] = v90;
    v91 = v79[3];
    v89[2] = v79[2];
    v89[3] = v91;
    v92 = v79[5];
    v89[4] = v79[4];
    v89[5] = v92;

    sub_22E6E4AE4(v86);
    v93 = v89 + *(type metadata accessor for Credential(0) + 28);
    Google_Protobuf_Timestamp.date.getter();
    sub_22E6CFBBC(v50, v52);
    (*(v87 + 8))(v86, v109);
    sub_22E6E20F0(v79, type metadata accessor for CloudAssets_Credential);
    v95 = v102;
    v94 = v103;
    v96 = v103[1];
    v97 = (v121 + *(v102 + 24));
    *v97 = *v103;
    v97[1] = v96;
    v99 = *(v94 + 16);
    v98 = *(v94 + 24);

    sub_22E6E3A90();
    sub_22E6E20F0(v94, v100);
    v101 = (v121 + *(v95 + 28));
    *v101 = v99;
    v101[1] = v98;
  }

  sub_22E6D37BC();
}

{
  sub_22E6D37D4();
  v60 = v0;
  v2 = v1;
  v53 = v3;
  v56 = type metadata accessor for Credential(0);
  v4 = sub_22E6CF978(v56);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22E6E39D4();
  v55 = v7;
  v8 = sub_22E6D37B0();
  v9 = type metadata accessor for Asset(v8);
  v10 = sub_22E6CF978(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22E6E39D4();
  v57 = v13;
  v59 = sub_22E6CF1CC(&unk_27DA6C990, &qword_22E7273E8);
  sub_22E6CF988(v59);
  v54 = v14;
  v16 = *(v15 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for AssetStreamHandle(0);
  v21 = sub_22E6CF978(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22E6CF9C8();
  v26 = v25 - v24;
  v28 = *(v27 + 32);
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  v30 = sub_22E6D3778();
  type metadata accessor for AssetStreamHandle.RangeReader(v30);
  sub_22E6E2074();
  *(v29 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v26 + v28) = v29;
  v32 = v2[3];
  v31 = v2[4];
  v61 = v2;
  sub_22E6CF214(v2, v32);
  sub_22E6E2CD4();
  v58 = v19;
  v33 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    sub_22E6CF2F4(v61);
  }

  else
  {
    sub_22E6E3B7C();
    sub_22E6E224C(v34, v35);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_22E6E3A78();
    v36 = v26;
    sub_22E6E2148(v57, v26);
    sub_22E6E3B64();
    sub_22E6E224C(v37, v38);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v20;
    v40 = *(v20 + 20);
    sub_22E6E3B34();
    sub_22E6E2148(v42, v36 + v41);
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = (v36 + *(v20 + 24));
    *v44 = v43;
    v44[1] = v45;
    v46 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = v47;
    v49 = sub_22E6E3EBC();
    v50(v49);
    v51 = (v36 + *(v39 + 28));
    *v51 = v46;
    v51[1] = v48;
    sub_22E6E3A00();
    sub_22E6E21A0(v36, v53);
    sub_22E6CF2F4(v61);
    sub_22E6E20F0(v36, type metadata accessor for AssetStreamHandle);
  }

  sub_22E6D37BC();
}

void AssetStreamHandle.serializedData()()
{
  sub_22E6D37D4();
  v63 = type metadata accessor for Date();
  v2 = sub_22E6CF988(v63);
  v61 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22E6E39D4();
  v60 = v6;
  sub_22E6D37B0();
  v59 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = sub_22E6CF988(v59);
  v64 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22E6E39D4();
  v11 = sub_22E6D37B0();
  v12 = type metadata accessor for CloudAssets_Credential(v11);
  v13 = sub_22E6CF978(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22E6CF9C8();
  v18 = (v17 - v16);
  v19 = type metadata accessor for CloudAssets_Asset(0);
  v20 = sub_22E6CF978(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22E6CF9C8();
  v25 = (v24 - v23);
  v62 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  v26 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  sub_22E6CF9C8();
  sub_22E6D3894();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v28 = v1 + *(v27 + 24);
  UnknownStorage.init()();
  v29 = *(v62 + 28);
  sub_22E6E3D34();
  sub_22E6CF58C(v30, v31, v32, v19);
  v33 = *(v62 + 32);
  sub_22E6E3D34();
  sub_22E6CF58C(v34, v35, v36, v12);
  v58 = v0;
  sub_22E6D227C(v25);
  sub_22E6D3510(v1 + v29, &unk_27DA6C910, &unk_22E726D20);
  sub_22E6E3B1C();
  sub_22E6E2148(v25, v1 + v29);
  sub_22E6CF58C(v1 + v29, 0, 1, v19);
  v56 = v12;
  v57 = type metadata accessor for AssetStreamHandle(0);
  v37 = (v0 + v57[5]);
  v38 = v18 + *(v12 + 28);
  UnknownStorage.init()();
  v39 = *(v12 + 32);
  sub_22E6E3D34();
  sub_22E6CF58C(v40, v41, v42, v59);
  v43 = v37[1];
  *v18 = *v37;
  v18[1] = v43;
  v44 = v37[3];
  v18[2] = v37[2];
  v18[3] = v44;
  v45 = v37[5];
  v18[4] = v37[4];
  v18[5] = v45;
  v46 = v37 + *(type metadata accessor for Credential(0) + 28);
  (*(v61 + 16))(v60, v46, v63);

  Google_Protobuf_Timestamp.init(date:)();
  sub_22E6D3510(v18 + v39, &qword_27DA6C930, &unk_22E727910);
  v47 = *(v64 + 32);
  sub_22E6E3F1C();
  v48();
  sub_22E6CF58C(v18 + v39, 0, 1, v59);
  sub_22E6D3510(v1 + v33, &qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6E3BC4();
  sub_22E6E2148(v18, v1 + v33);
  sub_22E6CF58C(v1 + v33, 0, 1, v56);
  v49 = v57[7];
  v50 = (v0 + v57[6]);
  v51 = v50[1];
  *v1 = *v50;
  v1[1] = v51;
  v52 = *(v0 + v49 + 8);
  v1[2] = *(v58 + v49);
  v1[3] = v52;
  sub_22E6E3B4C();
  sub_22E6E224C(v53, v54);

  Message.serializedData(partial:)();
  sub_22E6E3A90();
  sub_22E6E20F0(v1, v55);
  sub_22E6D368C();
  sub_22E6D37BC();
}

void static AssetStreamHandle.makeAssetStreamHandle(partition:owner:accessToken:requestorID:signature:referenceSignature:size:assetKey:filenameExtension:applicationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22E6D37D4();
  v80 = v30;
  v78 = v31;
  v79 = v32;
  v77 = v33;
  v35 = v34;
  v36 = type metadata accessor for Credential(0);
  v37 = sub_22E6D376C(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22E6CF9C8();
  v42 = (v41 - v40);
  v43 = type metadata accessor for Asset(0);
  v44 = sub_22E6CF978(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22E6CF9C8();
  v49 = v48 - v47;
  v50 = type metadata accessor for Asset.ID(0);
  v51 = sub_22E6CF978(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22E6CF9C8();
  v56 = v55 - v54;
  if (sub_22E6DBB80(a25, a26))
  {
    sub_22E6E21F8();
    swift_allocError();
    *v57 = xmmword_22E727390;
    *(v57 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v58 = type metadata accessor for URL();
    sub_22E6CF978(v58);
    (*(v59 + 16))(v56, v77);
    v60 = (v56 + v50[5]);
    *v60 = v78;
    v60[1] = v79;
    v61 = (v56 + v50[6]);
    *v61 = v80;
    v61[1] = a21;
    v62 = (v56 + v50[7]);
    *v62 = a22;
    v62[1] = a23;
    sub_22E6E21A0(v56, v49);
    v63 = v49 + *(v43 + 20);
    *v63 = a25;
    *(v63 + 8) = a26;
    *(v63 + 16) = xmmword_22E7263B0;
    *(v49 + *(v43 + 24)) = a24;
    v64 = type metadata accessor for Credential.Builder(0);
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();

    sub_22E6CFB64(v80, a21);
    sub_22E6CFB64(a22, a23);
    sub_22E6CFB64(a25, a26);

    Credential.Builder.init(tenantName:requestorID:accessToken:)();
    Credential.Builder.build()(v42);

    sub_22E6E398C();
    v67 = v35;
    sub_22E6E21A0(v49, v35);
    v68 = type metadata accessor for AssetStreamHandle(0);
    v69 = v68[5];
    sub_22E6E39E8();
    sub_22E6E21A0(v42, v35 + v70);
    v71 = v68[8];
    type metadata accessor for AssetStreamHandle.RangeReadersCache();
    v72 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
    type metadata accessor for AssetStreamHandle.RangeReader(0);
    sub_22E6E2074();
    *(v72 + 112) = Dictionary.init(dictionaryLiteral:)();
    sub_22E6E3A48();
    sub_22E6E20F0(v42, v73);
    sub_22E6E39BC();
    sub_22E6E20F0(v49, v74);
    sub_22E6E20F0(v56, type metadata accessor for Asset.ID);
    *(v67 + v71) = v72;
    v75 = (v67 + v68[6]);
    *v75 = a27;
    v75[1] = a28;
    v76 = (v67 + v68[7]);
    *v76 = a29;
    v76[1] = a30;
  }

  sub_22E6D37BC();
}

BOOL sub_22E6DBB80(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id AssetStreamHandle.makeAVPlayerItem(with:options:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v96 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = sub_22E6CF988(v2);
  v94 = v4;
  v95 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22E6E39D4();
  v93 = v7;
  sub_22E6D37B0();
  v91 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = sub_22E6CF978(v91);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22E6E39D4();
  v92 = v11;
  sub_22E6D37B0();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_22E6D376C(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22E6E39D4();
  v90 = v16;
  v17 = sub_22E6D37B0();
  v86 = type metadata accessor for AssetStreamHandle(v17);
  v18 = sub_22E6CF978(v86);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22E6E39D4();
  v87 = v21;
  sub_22E6D37B0();
  v22 = type metadata accessor for UUID();
  v23 = sub_22E6CF988(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22E6CF9C8();
  v30 = v29 - v28;
  v31 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  v32 = sub_22E6D376C(v31);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v85 - v38;
  v40 = type metadata accessor for URL();
  v41 = sub_22E6CF988(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22E6CF9C8();
  v48 = v47 - v46;
  sub_22E6D3568(v96, v39, &qword_27DA6C940, &qword_22E7273D0);
  sub_22E6E3F28();
  if (sub_22E6CF550(v49, v50, v51) != 1)
  {
    (*(v43 + 32))(v48, v39, v40);
LABEL_6:
    v62 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v63 = v88;

    v65 = sub_22E6E2294(v48, v63, v64);
    v66 = v89;
    v67 = (v89 + *(v86 + 24));
    v68 = *v67;
    v69 = v67[1];
    v70 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler());
    sub_22E6E3A00();
    sub_22E6E21A0(v66, v87);

    sub_22E6E3F1C();
    v74 = sub_22E6E2924(v71, v72, v73, v70);
    v75 = [v65 resourceLoader];
    sub_22E6E38DC(0, &qword_27DA6C950, 0x277D85C78);
    v76 = v74;
    static DispatchQoS.unspecified.getter();
    v97 = MEMORY[0x277D84F90];
    sub_22E6E3BAC();
    sub_22E6E224C(v77, v78);
    sub_22E6CF1CC(&qword_27DA6C960, &qword_22E7273D8);
    v79 = sub_22E6E2BC0();
    sub_22E6E3FA4(&v97, v80, v79, v91);
    (*(v94 + 104))(v93, *MEMORY[0x277D85260], v95);
    v81 = sub_22E6E3BE8();
    sub_22E6E3F10();
    [v82 v83];

    v84 = objc_allocWithZone(type metadata accessor for PlayerItem());
    return sub_22E6E2644(v65, v76, v84);
  }

  sub_22E6E3CA4();
  UUID.init()();
  sub_22E6E39A4();
  sub_22E6E224C(v52, v53);
  v54 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318EC630](v54);

  (*(v25 + 8))(v30, v22);
  URL.init(string:)();

  sub_22E6E3F28();
  result = sub_22E6CF550(v55, v56, v57);
  if (result != 1)
  {
    (*(v43 + 32))(v48, v37, v40);
    sub_22E6E3F28();
    if (sub_22E6CF550(v59, v60, v61) != 1)
    {
      sub_22E6D3510(v39, &qword_27DA6C940, &qword_22E7273D0);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void AssetStreamHandle.makeAVAssetExportSession(with:options:presetName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = sub_22E6CF988(v5);
  v85 = v7;
  v86 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22E6E39D4();
  v84 = v10;
  sub_22E6D37B0();
  v82 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = sub_22E6CF978(v82);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22E6E39D4();
  v83 = v14;
  sub_22E6D37B0();
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_22E6D376C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22E6E39D4();
  v81 = v19;
  v20 = sub_22E6D37B0();
  v77 = type metadata accessor for AssetStreamHandle(v20);
  v21 = sub_22E6CF978(v77);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22E6E39D4();
  v78 = v24;
  sub_22E6D37B0();
  v25 = type metadata accessor for UUID();
  v26 = sub_22E6CF988(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22E6CF9C8();
  v33 = v32 - v31;
  v34 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  v35 = sub_22E6D376C(v34);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v76 - v41;
  v43 = type metadata accessor for URL();
  v44 = sub_22E6CF988(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22E6CF9C8();
  sub_22E6D3894();
  sub_22E6D3568(v89, v42, &qword_27DA6C940, &qword_22E7273D0);
  if (sub_22E6E3FC4(v42) != 1)
  {
    (*(v46 + 32))(v4, v42, v43);
LABEL_6:
    v52 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v53 = v79;

    v55 = sub_22E6E2294(v4, v53, v54);
    v56 = v80;
    v57 = (v80 + *(v77 + 24));
    v58 = *v57;
    v59 = v57[1];
    v60 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler());
    sub_22E6E3A00();
    sub_22E6E21A0(v56, v78);

    sub_22E6E3F1C();
    v64 = sub_22E6E2924(v61, v62, v63, v60);
    v65 = [v55 resourceLoader];
    sub_22E6E38DC(0, &qword_27DA6C950, 0x277D85C78);
    v66 = v64;
    static DispatchQoS.unspecified.getter();
    v90 = MEMORY[0x277D84F90];
    sub_22E6E3BAC();
    sub_22E6E224C(v67, v68);
    sub_22E6CF1CC(&qword_27DA6C960, &qword_22E7273D8);
    v69 = sub_22E6E2BC0();
    sub_22E6E3FA4(&v90, v70, v69, v82);
    (*(v85 + 104))(v84, *MEMORY[0x277D85260], v86);
    v71 = sub_22E6E3BE8();
    sub_22E6E3F10();
    [v72 v73];

    v74 = objc_allocWithZone(type metadata accessor for AssetExportSession());
    v75 = v88;

    sub_22E6E2C24(v55, v87, v75, v66, v74);
    return;
  }

  sub_22E6E3CA4();
  UUID.init()();
  sub_22E6E39A4();
  sub_22E6E224C(v49, v50);
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318EC630](v51);

  (*(v28 + 8))(v33, v25);
  URL.init(string:)();

  if (sub_22E6E3FC4(v40) != 1)
  {
    (*(v46 + 32))(v4, v40, v43);
    if (sub_22E6E3FC4(v42) != 1)
    {
      sub_22E6D3510(v42, &qword_27DA6C940, &qword_22E7273D0);
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t AssetStreamHandle.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = sub_22E6CF1CC(&qword_27DA6C970, &qword_22E7273E0);
  sub_22E6CF988(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  sub_22E6D3894();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_22E6E3EF8();
  sub_22E6CF214(v14, v15);
  sub_22E6E2CD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Asset(0);
  sub_22E6E3B7C();
  sub_22E6E224C(v16, v17);
  sub_22E6E3F10();
  sub_22E6E3ED4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v18 = type metadata accessor for AssetStreamHandle(0);
    v19 = v18[5];
    type metadata accessor for Credential(0);
    sub_22E6E3B64();
    sub_22E6E224C(v20, v21);
    sub_22E6E3F10();
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = (v4 + v18[6]);
    v23 = *v22;
    v24 = v22[1];
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v4 + v18[7]);
    v26 = *v25;
    v27 = v25[1];
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_22E6DCD14()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6C8F0);
  sub_22E6E3578(v0, qword_27DA6C8F0);
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  sub_22E6CF1CC(&qword_27DA6C9E0, &qword_22E727808);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E6DCDB8@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  v23[0] = 0;
  v8 = [v7 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v23];

  v9 = v23[0];
  if (v8)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v6 defaultManager];
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v23[0] = 0;
    v15 = [v11 URLForDirectory:99 inDomain:1 appropriateForURL:v13 create:1 error:v23];

    v16 = v23[0];
    if (v15)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v20 = v23[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    result = (*(v2 + 8))(v5, v1);
  }

  else
  {
    v18 = v23[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_22E6DCFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v54 = a6;
  v7 = v6;
  v53 = a5;
  v12 = *v6;
  v51 = type metadata accessor for URL.DirectoryHint();
  v49 = *(v51 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for URL();
  v50 = *(v52 - 8);
  v15 = *(v50 + 64);
  v16 = MEMORY[0x28223BE20](v52);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v45 - v19;
  swift_defaultActor_initialize();
  v20 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset;
  v21 = a1;
  sub_22E6E21A0(a1, v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset);
  v22 = (v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
  v45 = a2;
  v46 = a3;
  *v22 = a2;
  v22[1] = a3;
  v23 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_credential;
  v56 = a4;
  sub_22E6E21A0(a4, v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_credential);
  v24 = (v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID);
  v25 = v54;
  *v24 = v53;
  v24[1] = v25;
  v54 = v18;
  v26 = v55;
  sub_22E6DCDB8(v18);
  if (v26)
  {
    sub_22E6E20F0(v6 + v20, type metadata accessor for Asset);
    sub_22E6E20F0(v6 + v23, type metadata accessor for Credential);
    v27 = v24[1];

    type metadata accessor for AssetStreamHandle.RangeReader(0);
    swift_defaultActor_destroy();
    sub_22E6E20F0(v56, type metadata accessor for Credential);
    sub_22E6E20F0(v21, type metadata accessor for Asset);
    v28 = *(*v6 + 48);
    v29 = *(*v6 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = type metadata accessor for Asset.ID(0);
    v31 = v21;
    v57 = sub_22E6D9EF0(*(v21 + *(v30 + 24)), *(v21 + *(v30 + 24) + 8));
    v58 = v32;
    MEMORY[0x2318EC630](95, 0xE100000000000000);
    v33 = sub_22E6D9EF0(*(v21 + *(v30 + 28)), *(v21 + *(v30 + 28) + 8));
    MEMORY[0x2318EC630](v33);

    MEMORY[0x2318EC630](95, 0xE100000000000000);
    v59 = v45;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318EC630](v34);

    MEMORY[0x2318EC630](95, 0xE100000000000000);
    v59 = v46;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318EC630](v35);

    v37 = v48;
    v36 = v49;
    v38 = v51;
    (*(v49 + 104))(v48, *MEMORY[0x277CC91D8], v51);
    sub_22E6D0038();
    v39 = v47;
    v40 = v54;
    URL.appending<A>(component:directoryHint:)();
    sub_22E6E20F0(v56, type metadata accessor for Credential);
    (*(v36 + 8))(v37, v38);

    v41 = v50;
    v42 = v40;
    v43 = v52;
    (*(v50 + 8))(v42, v52);
    sub_22E6E20F0(v31, type metadata accessor for Asset);
    (*(v41 + 32))(v7 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL, v39, v43);
    *(v7 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState) = 0;
  }

  return v7;
}

id sub_22E6DD4D8()
{
  v2 = v1;
  v3 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Asset(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22E6E38DC(0, &qword_27DA6C9F0, 0x277CCA9F8);
  (*(v9 + 16))(v12, v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL, v8);
  v14 = v12;
  v15 = v13;
  v16 = sub_22E6DA514(v14);
  if (!v1)
  {
    v48 = v4;
    v17 = v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range;
    v18 = *(v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v16;
      v49[0] = 0;
      v19 = [v16 seekToOffset:v18 error:v49];
      v15 = v49[0];
      if (!v19)
      {
        v39 = v49[0];
        _convertNSErrorToError(_:)();

LABEL_10:
        swift_willThrow();

        goto LABEL_11;
      }

      v47 = *(v17 + 8);
      if (!__OFSUB__(v47, v18))
      {
        v20 = v49[0];
        v21 = NSFileHandle.read(upToCount:)();
        if (v22 >> 60 != 15)
        {
          v15 = v21;

          goto LABEL_11;
        }

        if (qword_27DA6C3E0 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_7:
    v23 = type metadata accessor for Logger();
    sub_22E6E3578(v23, qword_27DA6C8F0);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = v25;
      v27 = v26;
      v46 = swift_slowAlloc();
      v49[0] = v46;
      *v27 = 136315650;
      sub_22E6E224C(&qword_27DA6C9F8, MEMORY[0x277CC9260]);
      v44 = v24;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = sub_22E706BF8(v28, v29, v49);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = sub_22E6E35C0();
      v33 = sub_22E706BF8(v31, v32, v49);

      *(v27 + 14) = v33;
      *(v27 + 22) = 2080;
      sub_22E6E21A0(v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset, v7);
      v34 = String.init<A>(describing:)();
      v36 = sub_22E706BF8(v34, v35, v49);

      *(v27 + 24) = v36;
      v37 = v44;
      _os_log_impl(&dword_22E6C9000, v44, v45, "read from %s for range %s of asset %s failed", v27, 0x20u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x2318ED210](v38, -1, -1);
      MEMORY[0x2318ED210](v27, -1, -1);
    }

    else
    {
    }

    v15 = 0x800000022E72CF40;
    sub_22E6E21F8();
    swift_allocError();
    *v42 = 0xD000000000000027;
    *(v42 + 8) = 0x800000022E72CF40;
    *(v42 + 16) = 2;
    goto LABEL_10;
  }

LABEL_11:
  v40 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_22E6DD97C()
{
  v1 = *v0;
  v2 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v5, 1, 1, v6);
  v7 = sub_22E6E224C(&qword_27DA6C9E8, type metadata accessor for AssetStreamHandle.RangeReader);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  v8[5] = v1;
  swift_retain_n();
  sub_22E6FA5E0();
}

uint64_t sub_22E6DDAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4[3] = a1;
  v4[4] = a4;
  v6 = type metadata accessor for AssetDownloadResponse();
  v4[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = type metadata accessor for Asset(0);
  v4[7] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = *(*(type metadata accessor for Credential(0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = type metadata accessor for AssetDownloadRequest();
  v4[17] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22E6DDCAC, a4, 0);
}

uint64_t sub_22E6DDCAC()
{
  v64 = v0;
  v63[1] = *MEMORY[0x277D85DE8];
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v58 = v0[10];
  v60 = v0[9];
  v62 = v0[15];
  v4 = v0[4];
  v0[19] = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset;
  v5 = v2[7];
  sub_22E6E398C();
  v55 = v6;
  sub_22E6E21A0(v4 + v6, v1 + v7);
  v8 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL;
  v0[20] = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL;
  v9 = v2[9];
  v10 = type metadata accessor for URL();
  sub_22E6CF978(v10);
  (*(v11 + 16))(v1 + v9, v4 + v8);
  sub_22E6E39E8();
  sub_22E6E21A0(v4 + v12, v3);
  v13 = v4 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range;
  v14 = *(v4 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
  v0[21] = v14;
  v15 = *(v13 + 8);
  v0[22] = v15;
  v16 = *(v4 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID + 8);
  v56 = v4;
  v57 = *(v4 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID);

  UUID.init()();
  v18 = *v3;
  v17 = v3[1];
  v19 = (v1 + v2[5]);
  *v19 = *v3;
  v19[1] = v17;
  v20 = v2[6];

  sub_22E6D8FE4(v18, v17);
  v21 = v1 + v2[8];
  *v21 = v14;
  *(v21 + 8) = v15;
  *(v21 + 16) = 0;
  sub_22E6E21A0(v3, v1 + v2[10]);
  v22 = (v1 + v2[13]);
  *v22 = v57;
  v22[1] = v16;
  *(v1 + v2[11]) = xmmword_22E7263B0;
  sub_22E6E3A48();
  sub_22E6E20F0(v3, v23);
  *(v1 + v2[12]) = xmmword_22E7263B0;
  v24 = *(v58 + 16);
  v0[23] = v24;
  v0[24] = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v62, v1, v60);
  if (qword_27DA6C3E0 != -1)
  {
    sub_22E6E3A18();
  }

  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[9];
  v28 = v0[4];
  v29 = type metadata accessor for Logger();
  v0[25] = sub_22E6E3578(v29, qword_27DA6C8F0);
  v24(v26, v25, v27);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[14];
  v35 = v0[9];
  v34 = v0[10];
  if (v32)
  {
    v59 = v0[8];
    v61 = v0[7];
    sub_22E6E3BA0();
    swift_slowAlloc();
    v63[0] = sub_22E6E3D60();
    *v28 = 136315650;
    sub_22E6E39A4();
    sub_22E6E224C(v36, v37);
    sub_22E6E3E74();
    sub_22E6E3EC8();
    v40 = *(v34 + 8);
    v38 = v34 + 8;
    v39 = v40;
    v41 = sub_22E6E3B94();
    v40(v41);
    v42 = sub_22E6E3F40();
    sub_22E706BF8(v42, v43, v44);
    sub_22E6E3FDC();
    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v45 = sub_22E6E35C0();
    sub_22E706BF8(v45, v46, v63);
    sub_22E6E3CFC();

    *(v28 + 14) = v38;
    *(v28 + 22) = 2080;
    sub_22E6E398C();
    sub_22E6E21A0(v56 + v55, v59);
    v47 = String.init<A>(describing:)();
    sub_22E706BF8(v47, v48, v63);
    sub_22E6E3CFC();

    *(v28 + 24) = v38;
    _os_log_impl(&dword_22E6C9000, v30, v31, "[requestID = %s] start downloading range %s of asset %s", v28, 0x20u);
    sub_22E6E3DCC();
    sub_22E6E3B00();
    sub_22E6E3C48();
  }

  else
  {

    v39 = *(v34 + 8);
    v49 = sub_22E6E3B94();
    v39(v49);
  }

  v0[26] = v39;
  if (qword_27DA6C3D8 != -1)
  {
    swift_once();
  }

  v50 = swift_task_alloc();
  v0[27] = v50;
  *v50 = v0;
  v50[1] = sub_22E6DE144;
  v51 = v0[18];
  v52 = v0[6];
  v53 = *MEMORY[0x277D85DE8];

  return AssetManager.process(request:)();
}

uint64_t sub_22E6DE144()
{
  sub_22E6E3D08();
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_22E6E3C28();
  *v4 = v3;
  v5 = *(v2 + 216);
  *v4 = *v1;
  *(v3 + 224) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_22E6DEBA8;
  }

  else
  {
    v7 = sub_22E6DE290;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_22E6DE290()
{
  v179 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 224);
  v3 = *(v1 + 32) + *(v1 + 160);
  sub_22E6DA278();
  v4 = *(v1 + 48);
  if (!v2)
  {
    v5 = v4 + *(*(v1 + 40) + 28);
    if (*(v5 + 16) == 1)
    {
      v6 = *(v1 + 192);
      v7 = *(v1 + 200);
      (*(v1 + 184))(*(v1 + 104), *(v1 + 120), *(v1 + 72));
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v1 + 208);
      v12 = *(v1 + 104);
      v13 = *(v1 + 72);
      v14 = *(v1 + 80);
      if (v10)
      {
        v173 = *(v1 + 208);
        v15 = swift_slowAlloc();
        sub_22E6E3BA0();
        v16 = swift_slowAlloc();
        v177 = v16;
        *v15 = 136315138;
        sub_22E6E39A4();
        sub_22E6E224C(v17, v18);
        dispatch thunk of CustomStringConvertible.description.getter();
        v19 = sub_22E6E3EF8();
        v173(v19);
        v20 = sub_22E6D3824();
        v23 = sub_22E706BF8(v20, v21, v22);

        *(v15 + 4) = v23;
        _os_log_impl(&dword_22E6C9000, v8, v9, "[requestID = %s] missing range information in download response", v15, 0xCu);
        sub_22E6CF2F4(v16);
        sub_22E6E3CC8();
        sub_22E6E3CE4();
      }

      else
      {

        v69 = sub_22E6E3EF8();
        v11(v69);
      }

      v70 = *(v1 + 160);
      v71 = *(v1 + 32);
      v0 = objc_opt_self();
      v72 = [v0 defaultManager];
      countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
      v74 = MEMORY[0x2318EC5C0](countAndFlagsBits);

      LODWORD(v70) = [v72 fileExistsAtPath_];

      if (v70)
      {
        v75 = *(v1 + 160);
        v76 = *(v1 + 32);
        v0 = [v0 defaultManager];
        URL._bridgeToObjectiveC()(v77);
        v79 = v78;
        *(v1 + 16) = 0;
        LODWORD(v76) = [v0 removeItemAtURL:v78 error:v1 + 16];

        v80 = *(v1 + 16);
        if (!v76)
        {
          sub_22E6E3CFC();
          v126 = _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v4 = *(v1 + 48);
      sub_22E6E21F8();
      swift_allocError();
      *v125 = 0xD00000000000002ELL;
      *(v125 + 8) = 0x800000022E72CED0;
    }

    else
    {
      v24 = *v5;
      v25 = *(v5 + 8);
      v26 = *(v1 + 192);
      v27 = *(v1 + 200);
      v28 = *(v1 + 184);
      v29 = *(v1 + 120);
      v30 = *(v1 + 72);
      v31 = *(v1 + 32);
      if (*(v1 + 168) >= v24)
      {
        v28(*(v1 + 96), v29, v30);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();

        v83 = os_log_type_enabled(v81, v82);
        v84 = *(v1 + 208);
        if (v83)
        {
          v175 = v82;
          v85 = *(v1 + 96);
          v86 = *(v1 + 72);
          v162 = *(v1 + 64);
          v165 = *(v1 + 152);
          v168 = *(v1 + 56);
          v151 = *(v1 + 80);
          v157 = *(v1 + 32);
          sub_22E6E3BA0();
          swift_slowAlloc();
          v171 = sub_22E6E3D60();
          v177 = v171;
          *v31 = 136315650;
          sub_22E6E39A4();
          sub_22E6E224C(v87, v88);
          v89 = sub_22E6E3E74();
          v91 = v90;
          v92 = sub_22E6E3B94();
          v84(v92);
          v93 = sub_22E706BF8(v89, v91, &v177);

          *(v31 + 4) = v93;
          *(v31 + 12) = 2080;
          v94 = sub_22E6E35C0();
          sub_22E6E3E8C(v94, v95, v96, v97, v98, v99, v100, v101, v151, v157);
          sub_22E6E3CFC();

          *(v31 + 14) = v24;
          *(v31 + 22) = 2080;
          sub_22E6E398C();
          sub_22E6E21A0(v158 + v165, v162);
          v102 = String.init<A>(describing:)();
          sub_22E6E3E8C(v102, v103, v104, v105, v106, v107, v108, v109, v152, v158);
          sub_22E6E3CFC();

          *(v31 + 24) = v24;
          sub_22E6E3E38(&dword_22E6C9000, v110, v111, "[requestID = %s] downloaded range %s of asset %s", v112, v113, v114, v115, v153, v159, v162, v165, v168, v171, v175);
          sub_22E6E3DCC();
          sub_22E6E3B00();
          sub_22E6E3C48();
        }

        else
        {
          v133 = *(v1 + 96);
          v134 = *(v1 + 72);
          v135 = *(v1 + 80);

          (v84)(v133, v134);
        }

        v136 = *(v1 + 32);
        v137 = sub_22E6DD4D8();
        v139 = v138;
        v140 = *(v1 + 208);
        v141 = *(v1 + 144);
        v142 = *(v1 + 120);
        v160 = *(v1 + 128);
        v163 = *(v1 + 112);
        v166 = *(v1 + 104);
        v169 = *(v1 + 96);
        v144 = *(v1 + 72);
        v143 = *(v1 + 80);
        v172 = *(v1 + 88);
        *v176 = *(v1 + 64);
        v145 = *(v1 + 24);
        sub_22E6E20F0(*(v1 + 48), type metadata accessor for AssetDownloadResponse);
        v140(v142, v144);
        sub_22E6E3A60();
        sub_22E6E20F0(v141, v146);
        *v145 = v137;
        v145[1] = v139;

        sub_22E6E3AD8();
        v147 = *MEMORY[0x277D85DE8];
LABEL_20:
        sub_22E6E3F4C();

        __asm { BRAA            X1, X16 }
      }

      v28(*(v1 + 88), v29, v30);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v1 + 208);
      if (v34)
      {
        v164 = *(v1 + 168);
        v167 = *(v1 + 176);
        v174 = v33;
        v36 = *(v1 + 88);
        v161 = *(v1 + 80);
        v37 = *(v1 + 72);
        sub_22E6E3BA0();
        swift_slowAlloc();
        v170 = sub_22E6E3D60();
        v177 = v170;
        *v31 = 136315650;
        sub_22E6E39A4();
        sub_22E6E224C(v38, v39);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        v43 = sub_22E6E3EEC();
        v35(v43);
        v44 = sub_22E706BF8(v40, v42, &v177);

        *(v31 + 4) = v44;
        *(v31 + 12) = 2080;
        v45 = sub_22E6E35C0();
        v53 = sub_22E6E3E8C(v45, v46, v47, v48, v49, v50, v51, v52, v148, v154);

        *(v31 + 14) = v53;
        *(v31 + 22) = 2080;
        v54 = sub_22E6E35C0();
        v62 = sub_22E6E3E8C(v54, v55, v56, v57, v58, v59, v60, v61, v149, v155);

        *(v31 + 24) = v62;
        sub_22E6E3E38(&dword_22E6C9000, v63, v64, "[requestID = %s] downloaded range %s is smaller than needed range %s", v65, v66, v67, v68, v150, v156, v161, v164, v167, v170, v174);
        sub_22E6E3DCC();
        sub_22E6E3B00();
        sub_22E6E3C48();
      }

      else
      {
        v117 = *(v1 + 80);
        v116 = *(v1 + 88);
        v118 = *(v1 + 72);

        v119 = sub_22E6E3EEC();
        v35(v119);
      }

      v121 = *(v1 + 168);
      v120 = *(v1 + 176);
      v4 = *(v1 + 48);
      v177 = 0;
      v178 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2318EC630](0xD000000000000011, 0x800000022E72CF00);
      v122 = sub_22E6E35C0();
      MEMORY[0x2318EC630](v122);

      MEMORY[0x2318EC630](0xD00000000000001ELL, 0x800000022E72CF20);
      v123 = sub_22E6E35C0();
      MEMORY[0x2318EC630](v123);

      v124 = v177;
      v0 = v178;
      sub_22E6E21F8();
      swift_allocError();
      *v125 = v124;
      *(v125 + 8) = v0;
    }

    *(v125 + 16) = 2;
    swift_willThrow();
  }

  sub_22E6E20F0(v4, type metadata accessor for AssetDownloadResponse);
  sub_22E6E3D40();
  v127 = *(v1 + 48);
  v128(v4);
  sub_22E6E3A60();
  sub_22E6E20F0(v0, v129);

  sub_22E6E3AD8();
  v130 = *MEMORY[0x277D85DE8];
  goto LABEL_20;
}

uint64_t sub_22E6DEBA8()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *(v1 + 224);
  sub_22E6E3D40();
  v3 = *(v1 + 48);
  v4(v2);
  sub_22E6E3A60();
  sub_22E6E20F0(v0, v5);

  sub_22E6E3AD8();
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_22E6DECC4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Asset(0);
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6DEDE4, v1, 0);
}

uint64_t sub_22E6DEDE4()
{
  v179 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState;
  v3 = *(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState);
  v0[17] = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = v1;
      if (qword_27DA6C3E0 != -1)
      {
        sub_22E6E3A18();
        v4 = v0[7];
      }

      v5 = v0[13];
      v6 = v0[10];
      v7 = v0[11];
      v8 = v0[6];
      v9 = type metadata accessor for Logger();
      sub_22E6E3578(v9, qword_27DA6C8F0);
      v10 = *(v7 + 16);
      v11 = sub_22E6E3EE0();
      v12(v11);

      v13 = Logger.logObject.getter();
      LOBYTE(v5) = static os_log_type_t.default.getter();

      v171 = v5;
      v14 = os_log_type_enabled(v13, v5);
      v15 = v0[13];
      v17 = v0[10];
      v16 = v0[11];
      if (v14)
      {
        v161 = v0[9];
        v166 = v0[8];
        v156 = v0[7];
        sub_22E6E3BA0();
        swift_slowAlloc();
        v178[0] = sub_22E6E3D60();
        *v4 = 136315650;
        sub_22E6E39A4();
        sub_22E6E224C(v18, v19);
        v20 = sub_22E6E3E74();
        v22 = v21;
        v23 = *(v16 + 8);
        v24 = sub_22E6E3B94();
        v25(v24);
        v26 = sub_22E706BF8(v20, v22, v178);

        *(v4 + 4) = v26;
        *(v4 + 12) = 2080;
        v27 = v156;
        sub_22E6E3DFC(OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
        v28 = sub_22E6E35C0();
        v36 = sub_22E6E3DB4(v28, v29, v30, v31, v32, v33, v34, v35, v156, v161, v166);

        *(v4 + 14) = v36;
        *(v4 + 22) = 2080;
        sub_22E6E398C();
        sub_22E6E21A0(v27 + v37, v162);
        v38 = String.init<A>(describing:)();
        v46 = sub_22E6E3DB4(v38, v39, v40, v41, v42, v43, v44, v45, v157, v162, v167);

        *(v4 + 24) = v46;
        _os_log_impl(&dword_22E6C9000, v13, v171, "[requestID = %s] range %s of asset %s available in cache", v4, 0x20u);
        sub_22E6E3DCC();
        sub_22E6E3B00();
        sub_22E6E3C48();
      }

      else
      {

        v126 = *(v16 + 8);
        v127 = sub_22E6E3B94();
        v128(v127);
      }

      v129 = v0[7];
      sub_22E6DD4D8();
      v137 = v0[15];
      v136 = v0[16];
      v139 = v0[13];
      v138 = v0[14];
      v140 = v0[12];
      v141 = v0[9];

      v142 = v0[1];
      sub_22E6E3EE0();
      sub_22E6E3F4C();

      __asm { BRAA            X3, X16 }
    }

    v85 = qword_27DA6C3E0;

    if (v85 != -1)
    {
      sub_22E6E3A18();
      v153 = v0[7];
    }

    v86 = v0[15];
    v87 = v0[10];
    v88 = v0[11];
    v89 = v0[6];
    v90 = type metadata accessor for Logger();
    v0[18] = sub_22E6E3578(v90, qword_27DA6C8F0);
    v92 = *(v88 + 16);
    v91 = v88 + 16;
    v0[19] = v92;
    v0[20] = v91 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v93 = sub_22E6E3EE0();
    v94(v93);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v0[15];
    v100 = v0[10];
    v99 = v0[11];
    if (v97)
    {
      v176 = v0[9];
      v177 = v0[8];
      v172 = v0[7];
      sub_22E6E3BA0();
      v101 = swift_slowAlloc();
      v178[0] = sub_22E6E3DE4();
      *v101 = 136315650;
      sub_22E6E39A4();
      sub_22E6E224C(v102, v103);
      sub_22E6E3E74();
      sub_22E6E3EC8();
      v174 = v96;
      v104 = *(v99 + 8);
      v105 = sub_22E6E3B94();
      v104(v105);
      v106 = sub_22E6E3F40();
      sub_22E706BF8(v106, v107, v108);
      sub_22E6E3FDC();
      *(v101 + 4) = v98;
      *(v101 + 12) = 2080;
      sub_22E6E3DFC(OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
      v109 = sub_22E6E35C0();
      sub_22E6E3DB4(v109, v110, v111, v112, v113, v114, v115, v116, v155, v160, v165);
      sub_22E6E3E5C();
      *(v101 + 14) = v91;
      *(v101 + 22) = 2080;
      sub_22E6E398C();
      sub_22E6E21A0(v172 + v117, v176);
      v118 = String.init<A>(describing:)();
      sub_22E6E3DB4(v118, v119, v120, v121, v122, v123, v124, v125, v159, v164, v169);
      sub_22E6E3E5C();
      *(v101 + 24) = v91;
      _os_log_impl(&dword_22E6C9000, v95, v174, "[requestID = %s] downloading range %s of asset %s", v101, 0x20u);
      sub_22E6E3DCC();
      sub_22E6E3B00();
      sub_22E6E3CE4();
    }

    else
    {

      v104 = *(v99 + 8);
      v133 = sub_22E6E3B94();
      v104(v133);
    }

    v0[21] = v104;
    v134 = *(MEMORY[0x277D857C8] + 4);
    v135 = swift_task_alloc();
    v0[22] = v135;
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    *v135 = v0;
    v135[1] = sub_22E6DF7F0;
  }

  else
  {
    if (qword_27DA6C3E0 != -1)
    {
      sub_22E6E3A18();
      v152 = v0[7];
    }

    v47 = v0[16];
    v48 = v0[10];
    v49 = v0[11];
    v50 = v0[6];
    v51 = type metadata accessor for Logger();
    sub_22E6E3578(v51, qword_27DA6C8F0);
    v53 = *(v49 + 16);
    v52 = v49 + 16;
    v53(v47, v50, v48);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[16];
    v59 = v0[10];
    v58 = v0[11];
    if (v56)
    {
      v173 = v0[9];
      v175 = v0[8];
      v170 = v0[7];
      sub_22E6E3BA0();
      v60 = swift_slowAlloc();
      v178[0] = sub_22E6E3DE4();
      *v60 = 136315650;
      sub_22E6E39A4();
      sub_22E6E224C(v61, v62);
      sub_22E6E3E74();
      sub_22E6E3EC8();
      v63 = *(v58 + 8);
      v64 = sub_22E6E3B94();
      v65(v64);
      sub_22E706BF8(v2, v52, v178);
      sub_22E6E3FDC();
      *(v60 + 4) = v57;
      *(v60 + 12) = 2080;
      v66 = *(v170 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
      v67 = *(v170 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range + 8);
      v68 = sub_22E6E35C0();
      sub_22E6E3DB4(v68, v69, v70, v71, v72, v73, v74, v75, v155, v160, v165);
      sub_22E6E3E5C();
      *(v60 + 14) = v52;
      *(v60 + 22) = 2080;
      sub_22E6E398C();
      sub_22E6E21A0(v170 + v76, v173);
      v77 = String.init<A>(describing:)();
      sub_22E6E3DB4(v77, v78, v79, v80, v81, v82, v83, v84, v158, v163, v168);
      sub_22E6E3E5C();
      *(v60 + 24) = v52;
      _os_log_impl(&dword_22E6C9000, v54, v55, "[requestID = %s] ready to download range %s of asset (%s", v60, 0x20u);
      sub_22E6E3DCC();
      sub_22E6E3B00();
      sub_22E6E3CC8();
    }

    else
    {

      v130 = *(v58 + 8);
      v131 = sub_22E6E3B94();
      v132(v131);
    }

    v145 = v0[6];
    v146 = v0[7];
    sub_22E6DD97C();
    v0[24] = v147;
    v148 = *(v1 + v2);
    *(v1 + v2) = v147;

    sub_22E6E35B0(v148);
    v149 = *(MEMORY[0x277D857C8] + 4);
    v150 = swift_task_alloc();
    v0[25] = v150;
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    *v150 = v0;
    v150[1] = sub_22E6DFBBC;
  }

  sub_22E6E3F4C();

  return MEMORY[0x282200430]();
}

uint64_t sub_22E6DF7F0()
{
  sub_22E6E3D08();
  v2 = *v1;
  sub_22E6E3C28();
  *v4 = v3;
  v5 = *(v2 + 176);
  *v4 = *v1;
  *(v3 + 184) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_22E6DFDA0;
  }

  else
  {
    v7 = sub_22E6DF910;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22E6DF910()
{
  v61 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v59 = *(v0 + 40);
  (*(v0 + 152))(*(v0 + 112), *(v0 + 48), *(v0 + 80));

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  if (v7)
  {
    v55 = *(v0 + 72);
    v56 = *(v0 + 64);
    v53 = *(v0 + 56);
    sub_22E6E3BA0();
    v57 = v13;
    v58 = v4;
    v14 = swift_slowAlloc();
    v60 = sub_22E6E3DE4();
    *v14 = 136315650;
    sub_22E6E39A4();
    sub_22E6E224C(v15, v16);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = sub_22E6E3EEC();
    v8(v20);
    v21 = sub_22E706BF8(v17, v19, &v60);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = v53;
    v23 = *(v53 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
    v24 = *(v53 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range + 8);
    v25 = sub_22E6E35C0();
    sub_22E6E3E8C(v25, v26, v27, v28, v29, v30, v31, v32, v51, v53);
    sub_22E6E3CFC();

    *(v14 + 14) = v17;
    *(v14 + 22) = 2080;
    sub_22E6E398C();
    sub_22E6E21A0(v22 + v33, v55);
    v34 = String.init<A>(describing:)();
    sub_22E6E3E8C(v34, v35, v36, v37, v38, v39, v40, v41, v52, v54);
    sub_22E6E3CFC();

    *(v14 + 24) = v17;
    _os_log_impl(&dword_22E6C9000, v5, v6, "[requestID = %s] downloaded range %s of asset %s", v14, 0x20u);
    sub_22E6E3DCC();
    sub_22E6E3B00();
    v4 = v58;
    sub_22E6E3CE4();
    sub_22E6E35B0(v57);
  }

  else
  {
    sub_22E6E35B0(*(v0 + 136));

    v42 = sub_22E6E3EEC();
    v8(v42);
  }

  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v47 = *(v0 + 96);
  v48 = *(v0 + 72);

  v49 = *(v0 + 8);

  return v49(v4, v59);
}

uint64_t sub_22E6DFBBC()
{
  sub_22E6E3D08();
  v2 = *v1;
  sub_22E6E3C28();
  *v4 = v3;
  v5 = *(v2 + 200);
  *v4 = *v1;
  *(v3 + 208) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_22E6DFE38;
  }

  else
  {
    v7 = sub_22E6DFCDC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22E6DFCDC()
{
  v1 = v0[24];

  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10(v3, v2);
}

uint64_t sub_22E6DFDA0()
{
  sub_22E6E3F34();
  sub_22E6E35B0(*(v0 + 136));
  v1 = *(v0 + 184);
  sub_22E6E3F84();

  sub_22E6E3AD8();

  return v2();
}

uint64_t sub_22E6DFE38()
{
  sub_22E6E3F34();
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  sub_22E6E3F84();

  sub_22E6E3AD8();

  return v3();
}

uint64_t sub_22E6DFED0()
{
  v1 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_opt_self();
  v7 = [v27 defaultManager];
  v8 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL;
  v26 = v3[2];
  v26(v6, v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL, v2);
  v9 = URL.path(percentEncoded:)(1);
  v10 = v3[1];
  v10(v6, v2);
  v11 = MEMORY[0x2318EC5C0](v9._countAndFlagsBits, v9._object);

  v12 = [v7 fileExistsAtPath_];

  if (v12)
  {
    v13 = [v27 defaultManager];
    v14 = v8;
    v26(v6, v1 + v8, v2);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v10(v6, v2);
    v28[0] = 0;
    v18 = [v13 removeItemAtURL:v17 error:v28];

    if (v18)
    {
      v19 = v28[0];
    }

    else
    {
      v20 = v28[0];
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v8 = v14;
  }

  sub_22E6E20F0(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset, type metadata accessor for Asset);
  sub_22E6E20F0(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_credential, type metadata accessor for Credential);
  v22 = *(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID + 8);

  v10((v1 + v8), v2);
  sub_22E6E35B0(*(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState));
  swift_defaultActor_destroy();
  v23 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_22E6E01C4()
{
  v0 = sub_22E6DFED0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22E6E01EC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22E714C00();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
}

uint64_t sub_22E6E0264()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AssetStreamHandle.range.getter()
{
  result = type metadata accessor for Asset(0);
  if ((*(v0 + *(result + 24)) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22E6E02F0(uint64_t result, uint64_t a2)
{
  v3 = result - result % 5242880;
  if (__OFSUB__(result, result % 5242880))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = a2 % 5242880;
  if (!(a2 % 5242880))
  {
LABEL_8:
    if (a2 >= v3)
    {
      return v3;
    }

    goto LABEL_11;
  }

  v5 = a2 + 5242880;
  if (__OFADD__(a2, 5242880))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5 - v4;
  if (!__OFSUB__(v5, v4))
  {
    result = type metadata accessor for Asset(0);
    if (*(v2 + *(result + 24)) >= v6)
    {
      a2 = v6;
    }

    else
    {
      a2 = *(v2 + *(result + 24));
    }

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22E6E037C(uint64_t a1, uint64_t a2)
{
  if (a1 >= a2)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v3 = a1;
    result = sub_22E6E254C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = result;
    while (1)
    {
      v6 = v3 + 5242880;
      if (__OFADD__(v3, 5242880))
      {
        break;
      }

      if (v6 >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v3 + 5242880;
      }

      if (v7 < v3)
      {
        goto LABEL_15;
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_22E6E254C(v8 > 1, v9 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v3;
      *(v10 + 40) = v7;
      v3 += 5242880;
      if (v6 >= a2)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t AssetStreamHandle.inputStream(for:)()
{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for Credential(0);
  sub_22E6E3A38(v5);
  v1[6] = v6;
  v1[7] = *(v7 + 64);
  v1[8] = sub_22E6E3EA4();
  v8 = type metadata accessor for Asset(0);
  sub_22E6E3A38(v8);
  v1[9] = v9;
  v1[10] = *(v10 + 64);
  v1[11] = sub_22E6E3EA4();
  v11 = type metadata accessor for AssetStreamHandle(0);
  v1[12] = v11;
  sub_22E6E3A38(v11);
  v1[13] = v12;
  v1[14] = *(v13 + 64);
  v1[15] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v14);
  v16 = *(v15 + 64);
  v1[16] = sub_22E6E3EA4();
  v17 = type metadata accessor for UUID();
  v1[17] = v17;
  sub_22E6E3A38(v17);
  v1[18] = v18;
  v1[19] = *(v19 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v20 = sub_22E6CF1CC(&qword_27DA6C9B0, &qword_22E727400);
  v1[22] = v20;
  sub_22E6E3A38(v20);
  v1[23] = v21;
  v23 = *(v22 + 64);
  v1[24] = sub_22E6E3EA4();
  v24 = sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  v1[25] = v24;
  sub_22E6E3A38(v24);
  v1[26] = v25;
  v1[27] = *(v26 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v27 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v27, v28, v29);
}