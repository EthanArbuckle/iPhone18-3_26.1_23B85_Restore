uint64_t sub_1CF0933A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF093400()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF093460()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0934DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF093690()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0936C8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF093710()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  v10 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  v11 = *(v0 + v4);

  v12 = *(v0 + v5);

  v13 = *(v0 + v6);

  v14 = *(v0 + v7);

  v15 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF093850()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF0938C8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 24);

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0939B4()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(v0 + 24);

  v5 = (v0 + v2);

  v6 = v1[7];
  v7 = sub_1CF9E5A58();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1CF093AC0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF093B08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF093B60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF093BB0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF093C0C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF093C44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);
  swift_unknownObjectRelease();

  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF093D9C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093DE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF093E24()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093E60()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = *(v0 + 24);
  swift_unknownObjectRelease();

  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF093FB8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF094040()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094078()
{
  v1 = (type metadata accessor for FSDirectoryEnumerator() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);

  v5 = v0 + v2 + v1[7];
  v6 = *(v5 + 24);

  v7 = *(v5 + 40);

  v8 = *(type metadata accessor for LocalDomain() + 32);
  v9 = sub_1CF9E5A58();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = (v0 + v2 + v1[11]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF094298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0942E0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF094370()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0943A8()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0943E0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7A8, &qword_1CFA02E48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF09448C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CF094504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CF094584()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

__n128 sub_1CF0945D0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0945DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09461C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF094654()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF09468C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0946CC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF094738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1CF094810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2;
  }

  return result;
}

uint64_t sub_1CF0948DC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF094914()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF09494C()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF094984()
{
  v1 = *(v0 + 56);
  if (v1 > 0xC)
  {
    if (*(v0 + 56) > 0xEu)
    {
      if (v1 != 15)
      {
        if (v1 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v1 != 13 && v1 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_17;
  }

  if (*(v0 + 56) <= 2u)
  {
    if (v1 != 1 && v1 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    v2 = *(v0 + 24);

    goto LABEL_17;
  }

  if (v1 == 3 || v1 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF094AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CF094B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5A58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF094C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF094CD8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094F00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF094F4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF094F84()
{
  v1 = *(v0 + 16);

  if (*(v0 + 128))
  {
    v2 = *(v0 + 96);

    v3 = *(v0 + 128);

    v4 = *(v0 + 136);

    v5 = *(v0 + 152);
  }

  sub_1CF03D7A8(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  v6 = *(v0 + 216);
  if (v6 >> 60 != 15 && (v6 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 208), v6);
  }

  if (*(v0 + 320) != 1)
  {
    sub_1CEFE4714(*(v0 + 304), *(v0 + 312));
    v8 = *(v0 + 320);

    sub_1CEFE4714(*(v0 + 328), *(v0 + 336));
    v9 = *(v0 + 344);

    v10 = *(v0 + 360);
  }

  sub_1CF03D7A8(*(v0 + 376), *(v0 + 384), *(v0 + 392));
  v11 = *(v0 + 424);
  if (v11 >> 60 != 15 && (v11 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 416), v11);
  }

  v12 = *(v0 + 488);

  return swift_deallocObject();
}

uint64_t sub_1CF09509C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0950EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v8 = *(*(v7 - 1) + 48);
  if (!v8(v6, 1, v7))
  {
    v73 = v8;
    v74 = v4;
    v75 = v0;
    v9 = v6[8];

    v10 = v6[12];

    v11 = v6[13];

    v12 = v6[15];

    v13 = v6[17];

    v14 = v6 + v7[12];
    v15 = type metadata accessor for ItemMetadata();
    v16 = v15[7];
    v17 = sub_1CF9E5CF8();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(&v14[v16], v17);
    v19(&v14[v15[8]], v17);
    v20 = *&v14[v15[14] + 8];

    v21 = v15[30];
    if (!(*(v18 + 48))(&v14[v21], 1, v17))
    {
      v19(&v14[v21], v17);
    }

    v22 = *&v14[v15[31]];

    v23 = *&v14[v15[33]];

    v24 = &v14[v15[34]];
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1CEFE4714(*v24, v25);
    }

    v26 = *&v14[v15[38] + 8];

    v27 = v6 + v7[13];
    v28 = *(v27 + 2);
    v0 = v75;
    v8 = v73;
    v4 = v74;
    if (v28 != 1)
    {

      v29 = *(v27 + 6);

      v30 = *(v27 + 8);

      v31 = *(v27 + 11);

      v32 = *(v27 + 15);

      v33 = *(v27 + 17);

      v34 = *(v27 + 19);

      v35 = *(v27 + 21);

      v36 = *(v27 + 23);

      if (*(v27 + 24))
      {

        v37 = *(v27 + 25);
      }

      v38 = *(v27 + 28);

      v39 = *(v27 + 30);
    }

    sub_1CF07638C(*(v6 + v7[17]), *(v6 + v7[17] + 8));
  }

  v40 = (v0 + v4);
  if (!v8(v0 + v4, 1, v7))
  {
    v41 = v40[8];

    v42 = v40[12];

    v43 = v40[13];

    v44 = v40[15];

    v45 = v40[17];

    v46 = v40 + v7[12];
    v47 = type metadata accessor for ItemMetadata();
    v48 = v47[7];
    v49 = sub_1CF9E5CF8();
    v50 = *(v49 - 8);
    v51 = *(v50 + 8);
    v51(&v46[v48], v49);
    v51(&v46[v47[8]], v49);
    v52 = *&v46[v47[14] + 8];

    v53 = v47[30];
    if (!(*(v50 + 48))(&v46[v53], 1, v49))
    {
      v51(&v46[v53], v49);
    }

    v54 = *&v46[v47[31]];

    v55 = *&v46[v47[33]];

    v56 = &v46[v47[34]];
    v57 = v56[1];
    if (v57 >> 60 != 15)
    {
      sub_1CEFE4714(*v56, v57);
    }

    v58 = *&v46[v47[38] + 8];

    v59 = v40 + v7[13];
    v60 = *(v59 + 2);
    if (v60 != 1)
    {

      v61 = *(v59 + 6);

      v62 = *(v59 + 8);

      v63 = *(v59 + 11);

      v64 = *(v59 + 15);

      v65 = *(v59 + 17);

      v66 = *(v59 + 19);

      v67 = *(v59 + 21);

      v68 = *(v59 + 23);

      if (*(v59 + 24))
      {

        v69 = *(v59 + 25);
      }

      v70 = *(v59 + 28);

      v71 = *(v59 + 30);
    }

    sub_1CF07638C(*(v40 + v7[17]), *(v40 + v7[17] + 8));
  }

  return swift_deallocObject();
}

uint64_t sub_1CF095618()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = sub_1CF9E6068();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = *(v0 + v3);

  v8 = *(v0 + v4 + 8);

  v9 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09575C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1CF095774(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

__n128 sub_1CF09579C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0957B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v35 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = v2[8];

  v4 = v2[12];

  v5 = v2[13];

  v6 = v2[15];

  v7 = v2[17];

  v8 = v2 + v1[12];
  v9 = type metadata accessor for ItemMetadata();
  v10 = v9[7];
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(&v8[v10], v11);
  v13(&v8[v9[8]], v11);
  v14 = *&v8[v9[14] + 8];

  v15 = v9[30];
  if (!(*(v12 + 48))(&v8[v15], 1, v11))
  {
    v13(&v8[v15], v11);
  }

  v16 = *&v8[v9[31]];

  v17 = *&v8[v9[33]];

  v18 = &v8[v9[34]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1CEFE4714(*v18, v19);
  }

  v20 = *&v8[v9[38] + 8];

  v21 = v2 + v1[13];
  v22 = *(v21 + 2);
  if (v22 != 1)
  {

    v23 = *(v21 + 6);

    v24 = *(v21 + 8);

    v25 = *(v21 + 11);

    v26 = *(v21 + 15);

    v27 = *(v21 + 17);

    v28 = *(v21 + 19);

    v29 = *(v21 + 21);

    v30 = *(v21 + 23);

    if (*(v21 + 24))
    {

      v31 = *(v21 + 25);
    }

    v32 = *(v21 + 28);

    v33 = *(v21 + 30);
  }

  sub_1CF07638C(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF095A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v34 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_1CEFE4714(*(v2 + 16), *(v2 + 24));
  v3 = *(v2 + 32);

  sub_1CEFE4714(*(v2 + 40), *(v2 + 48));
  v4 = *(v2 + 56);

  v5 = *(v2 + 72);

  v6 = *(v2 + 88);

  v7 = v2 + v1[12];
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v12(v7 + v8[8], v10);
  v13 = *(v7 + v8[14] + 8);

  v14 = v8[30];
  if (!(*(v11 + 48))(v7 + v14, 1, v10))
  {
    v12(v7 + v14, v10);
  }

  v15 = *(v7 + v8[31]);

  v16 = *(v7 + v8[33]);

  v17 = (v7 + v8[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *(v7 + v8[38] + 8);

  v20 = v2 + v1[13];
  v21 = *(v20 + 16);
  if (v21 != 1)
  {

    v22 = *(v20 + 48);

    v23 = *(v20 + 64);

    v24 = *(v20 + 88);

    v25 = *(v20 + 120);

    v26 = *(v20 + 136);

    v27 = *(v20 + 152);

    v28 = *(v20 + 168);

    v29 = *(v20 + 184);

    if (*(v20 + 192))
    {

      v30 = *(v20 + 200);
    }

    v31 = *(v20 + 224);

    v32 = *(v20 + 240);
  }

  sub_1CF07638C(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF095D28()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 88);

    v2 = *(v0 + 120);

    v3 = *(v0 + 128);

    v4 = *(v0 + 144);
  }

  sub_1CF03D7A8(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v5 = *(v0 + 208);
  if (v5 >> 60 != 15 && (v5 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 200), v5);
  }

  if (*(v0 + 312) != 1)
  {
    sub_1CEFE4714(*(v0 + 296), *(v0 + 304));
    v7 = *(v0 + 312);

    sub_1CEFE4714(*(v0 + 320), *(v0 + 328));
    v8 = *(v0 + 336);

    v9 = *(v0 + 352);
  }

  sub_1CF03D7A8(*(v0 + 368), *(v0 + 376), *(v0 + 384));
  v10 = *(v0 + 416);
  if (v10 >> 60 != 15 && (v10 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 408), v10);
  }

  v11 = *(v0 + 480);

  return swift_deallocObject();
}

uint64_t sub_1CF095E58()
{

  return swift_deallocObject();
}

uint64_t sub_1CF095EB0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF095EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 52);
  v7 = sub_1CF9E6448();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + *(v2 + 64));

  v9 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF095FF4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = v1[15];
  v8 = sub_1CF9E6448();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[16]);

  v10 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF096134()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF09616C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + v2));

  v5 = v1[22];
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[26] + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF096288()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF481340(*(v0 + 16), *(v0 + 24));
  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = v1[15];
  v8 = sub_1CF9E6448();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[16]);

  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0963E4()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09641C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09645C()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09655C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF096594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v5 = *(v1 + 52);
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = *(v4 + *(v2 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF0966AC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0966FC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF096784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CF343AF8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF0967B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CF343BFC();
}

uint64_t sub_1CF0967E8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF096824()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1CF2F6594(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF096878()
{
  v33 = *(v0 + 16);
  v34 = *(v0 + 40);
  v35 = type metadata accessor for ItemReconciliation();
  v32 = *(*(v35 - 8) + 80);
  v31 = *(*(v35 - 8) + 64);
  v1 = *(v0 + 64);

  v2 = v0 + ((v32 + 72) & ~v32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v2, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v2, AssociatedTypeWitness);
  }

  v5 = type metadata accessor for ItemReconciliationHalf();
  v6 = v2 + v5[12];
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FileItemVersion();
  if (!(*(*(v9 - 1) + 48))(v6, 1, v9))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
    v10 = *(v6 + v9[13]);

    (*(*(v8 - 8) + 8))(v6 + v9[14], v8);
    v11 = *(v6 + v9[15]);

    v12 = *(v6 + v9[16] + 8);
  }

  sub_1CF03D7A8(*(v2 + v5[16]), *(v2 + v5[16] + 8), *(v2 + v5[16] + 16));
  v13 = v2 + v5[17];
  v14 = *(v13 + 24);
  if (v14 >> 60 != 15 && (v14 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v13 + 16), v14);
  }

  v16 = v2 + *(v35 + 52);
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  v19 = type metadata accessor for ItemReconciliationHalf();
  v20 = v16 + v19[12];
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for FileItemVersion();
  if (!(*(*(v23 - 1) + 48))(v20, 1, v23))
  {
    (*(*(v21 - 8) + 8))(v20, v21);
    v24 = *(v20 + v23[13]);

    (*(*(v22 - 8) + 8))(v20 + v23[14], v22);
    v25 = *(v20 + v23[15]);

    v26 = *(v20 + v23[16] + 8);
  }

  sub_1CF03D7A8(*(v16 + v19[16]), *(v16 + v19[16] + 8), *(v16 + v19[16] + 16));
  v27 = v16 + v19[17];
  v28 = *(v27 + 24);
  if (v28 >> 60 != 15 && (v28 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v27 + 16), v28);
  }

  v29 = *(v2 + *(v35 + 60));

  return swift_deallocObject();
}

uint64_t sub_1CF096E38()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = type metadata accessor for SnapshotItem();
  v5 = *(sub_1CF9E75D8() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 72) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = *(v1 + 64);

  v10 = v1 + v7;
  v11 = *(*(v4 - 1) + 48);
  if (!v11(v10, 1, v4))
  {
    v84 = v11;
    v85 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = *(*(AssociatedTypeWitness - 8) + 8);
    v13(v10, AssociatedTypeWitness);
    v13(v10 + v4[9], AssociatedTypeWitness);
    v14 = v10 + v4[10];
    v15 = swift_getAssociatedTypeWitness();
    (*(*(v15 - 8) + 8))(v14, v15);
    v86 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v16 = type metadata accessor for FileItemVersion();
    v17 = *(v14 + v16[13]);

    (*(*(v86 - 8) + 8))(v14 + v16[14], v86);
    v18 = *(v14 + v16[15]);

    v19 = *(v14 + v16[16] + 8);

    v20 = *(v10 + v4[11] + 8);

    v21 = v10 + v4[12];
    v22 = type metadata accessor for ItemMetadata();
    v23 = v22[7];
    v24 = sub_1CF9E5CF8();
    v25 = *(v24 - 8);
    v26 = *(v25 + 8);
    v26(v21 + v23, v24);
    v26(v21 + v22[8], v24);
    v27 = *(v21 + v22[14] + 8);

    v28 = v22[30];
    if (!(*(v25 + 48))(v21 + v28, 1, v24))
    {
      v26(v21 + v28, v24);
    }

    v29 = *(v21 + v22[31]);

    v30 = *(v21 + v22[33]);

    v31 = (v21 + v22[34]);
    v32 = v31[1];
    if (v32 >> 60 != 15)
    {
      sub_1CEFE4714(*v31, v32);
    }

    v33 = *(v21 + v22[38] + 8);

    v34 = v10 + v4[13];
    v35 = *(v34 + 16);
    v8 = v85;
    v11 = v84;
    if (v35 != 1)
    {

      v36 = *(v34 + 48);

      v37 = *(v34 + 64);

      v38 = *(v34 + 88);

      v39 = *(v34 + 120);

      v40 = *(v34 + 136);

      v41 = *(v34 + 152);

      v42 = *(v34 + 168);

      v43 = *(v34 + 184);

      if (*(v34 + 192))
      {

        v44 = *(v34 + 200);
      }

      v45 = *(v34 + 224);

      v46 = *(v34 + 240);
    }

    sub_1CF07638C(*(v10 + v4[17]), *(v10 + v4[17] + 8));
  }

  v47 = v1 + v8;
  if (!v11(v1 + v8, 1, v4))
  {
    v48 = swift_getAssociatedTypeWitness();
    v49 = *(*(v48 - 8) + 8);
    v49(v47, v48);
    v49(v47 + v4[9], v48);
    v50 = v47 + v4[10];
    v51 = swift_getAssociatedTypeWitness();
    (*(*(v51 - 8) + 8))(v50, v51);
    v87 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v52 = type metadata accessor for FileItemVersion();
    v53 = *(v50 + v52[13]);

    (*(*(v87 - 8) + 8))(v50 + v52[14], v87);
    v54 = *(v50 + v52[15]);

    v55 = *(v50 + v52[16] + 8);

    v56 = *(v47 + v4[11] + 8);

    v57 = v47 + v4[12];
    v58 = type metadata accessor for ItemMetadata();
    v59 = v58[7];
    v60 = sub_1CF9E5CF8();
    v61 = *(v60 - 8);
    v62 = *(v61 + 8);
    v62(v57 + v59, v60);
    v62(v57 + v58[8], v60);
    v63 = *(v57 + v58[14] + 8);

    v64 = v58[30];
    if (!(*(v61 + 48))(v57 + v64, 1, v60))
    {
      v62(v57 + v64, v60);
    }

    v65 = *(v57 + v58[31]);

    v66 = *(v57 + v58[33]);

    v67 = (v57 + v58[34]);
    v68 = v67[1];
    if (v68 >> 60 != 15)
    {
      sub_1CEFE4714(*v67, v68);
    }

    v69 = *(v57 + v58[38] + 8);

    v70 = v47 + v4[13];
    v71 = *(v70 + 16);
    if (v71 != 1)
    {

      v72 = *(v70 + 48);

      v73 = *(v70 + 64);

      v74 = *(v70 + 88);

      v75 = *(v70 + 120);

      v76 = *(v70 + 136);

      v77 = *(v70 + 152);

      v78 = *(v70 + 168);

      v79 = *(v70 + 184);

      if (*(v70 + 192))
      {

        v80 = *(v70 + 200);
      }

      v81 = *(v70 + 224);

      v82 = *(v70 + 240);
    }

    sub_1CF07638C(*(v47 + v4[17]), *(v47 + v4[17] + 8));
  }

  return swift_deallocObject();
}

uint64_t sub_1CF097668()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF097740()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  v6 = *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0977F8()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v4);

  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF097924()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = sub_1CF9E6068();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = *(v0 + v3);

  v8 = *(v0 + v4 + 8);

  v9 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF097A50()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF097A8C()
{
  v1 = *(v0 + 32);

  sub_1CF2F63CC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));
  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF097ADC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF097B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CF097BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5A58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF098114()
{

  return swift_deallocObject();
}

__n128 sub_1CF098188(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1CF0981A0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0983B0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0983EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalDomain();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CF0984F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalDomain();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CF9E5D98();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF098604()
{

  return swift_deallocObject();
}

uint64_t sub_1CF098644()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF098690(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CF9E5A58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CF09873C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CF9E5A58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CF0987E0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF098828()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF098860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0988A0()
{
  v1 = (type metadata accessor for FSDirectoryEnumerator() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);

  v5 = v0 + v2 + v1[7];
  v6 = *(v5 + 24);

  v7 = *(v5 + 40);

  v8 = *(type metadata accessor for LocalDomain() + 32);
  v9 = sub_1CF9E5A58();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = (v0 + v2 + v1[11]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_1CF098A00(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1CF098A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CF098B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CF098C80()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1CF50E9C0(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF098CC8()
{
  if (v0[10])
  {
    v1 = v0[6];

    v2 = v0[10];

    v3 = v0[11];

    v4 = v0[13];
  }

  v5 = v0[15];

  v6 = v0[18];

  return swift_deallocObject();
}

uint64_t sub_1CF098E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6098();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CF098EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E6098();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CF09903C()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF099074()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 104) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = v0 + v2;
  v8 = sub_1CF9E6068();
  (*(*(v8 - 8) + 8))(v7, v8);

  v9 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1CF09919C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x74616761706F7270;
  }

  return 0xD000000000000010;
}

uint64_t sub_1CF09937C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  sub_1CF540FDC(*(v0 + v6));
  v8 = *(v0 + v7);

  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF099460()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(sub_1CF9E75D8() - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(v0 + 7);

  (*(v6 + 8))(&v0[v7], AssociatedTypeWitness);
  v14 = *(v9 - 8);
  if (!(*(v14 + 48))(&v0[v11], 1, v9))
  {
    (*(v14 + 8))(&v0[v11], v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF099638()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1CF540FDC(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF099690()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF0996D8()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 7);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF0997B4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 7);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF099890()
{
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = *(v0 + 40);
  v1 = (_s20ParentIDLookupResultVMa() - 8);
  v2 = (*(*v1 + 80) + 97) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  sub_1CF540FDC(*(v0 + 80));
  v6 = *(v0 + 88);

  v7 = *(v0 + v2);

  v8 = v1[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  if (!(*(v10 + 48))(v0 + v2 + v8, 1, AssociatedTypeWitness))
  {
    (*(v10 + 8))(v0 + v2 + v8, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF099A24()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  sub_1CF540FDC(*(v0 + 9));
  (*(v2 + 8))(&v0[v3], v1);
  v7 = *&v0[v4];

  return swift_deallocObject();
}

uint64_t sub_1CF099B04()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF099B3C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 6);

  v8 = *(v0 + 7);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF099C20()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1CF9E6448();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + v7 + 8) & ~*(v9 + 80);
  v14 = *(v9 + 64);
  v11 = *(v0 + 7);

  v12 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  sub_1CF540FDC(*&v0[v6]);

  (*(v9 + 8))(&v0[v10], v8);

  return swift_deallocObject();
}

uint64_t sub_1CF099DCC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 6);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF099EBC()
{
  v1 = v0[2];

  sub_1CF540FDC(v0[3]);
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF099F14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  sub_1CF540FDC(*(v0 + v6));
  v8 = *(v0 + v7);

  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF099FF4()
{
  v1 = *(v0 + 56);

  sub_1CF540FDC(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF09A034()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v4);

  sub_1CF540FDC(*(v0 + ((v4 + 17) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF09A0F4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 72);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v5);

  sub_1CF540FDC(*(v0 + v6));

  return swift_deallocObject();
}

uint64_t sub_1CF09A1DC()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1CF518C00(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09A224()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  sub_1CF540FDC(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF09A274()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 8);

  v6 = *(v0 + 10);

  v7 = *(v0 + 11);

  (*(v2 + 8))(&v0[v3], v1);
  sub_1CF540FDC(*&v0[v4 + 8]);

  return swift_deallocObject();
}

uint64_t sub_1CF09A364()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF09A3B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CF540FDC(*(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF09A494()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09A4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09A5A0()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF09A5DC()
{
  v1 = v0[3];

  sub_1CF540FDC(v0[4]);
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF09A62C()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1CF540FDC(v0[5]);
  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1CF09A684()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1CF540FDC(v0[5]);
  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF09A6D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  sub_1CF540FDC(*(v0 + v5));
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09A7D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  sub_1CF540FDC(*(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF09A8C0()
{
  v1 = v0[5];

  v2 = v0[6];

  sub_1CF540FDC(v0[7]);

  return swift_deallocObject();
}

uint64_t sub_1CF09A908()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    v6 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v7 = sub_1CF9E6098();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
    v8 = *(v4 + *(v5 + 20));
  }

  v9 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09AA68()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_1CF540FDC(*(v0 + 48));
  v4 = v0 + v2;
  v5 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    v6 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v7 = sub_1CF9E6098();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
    v8 = *(v4 + *(v5 + 20));
  }

  v9 = (v2 + v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  v12 = *(v0 + v9);

  v13 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  v14 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09AC1C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v4);

  sub_1CF540FDC(*(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));
  v8 = *(v0 + v5);

  return swift_deallocObject();
}

uint64_t sub_1CF09AD0C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v6 = *(v0 + v3 + 8);

  sub_1CF540FDC(*(v0 + v4));
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  v8 = *(v0 + v5);

  return swift_deallocObject();
}

uint64_t sub_1CF09ADFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  sub_1CF540FDC(*(v0 + 96));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09AEE0()
{
  sub_1CF540FDC(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF09AF18()
{
  v1 = type metadata accessor for VFSItem(0);
  v40 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v39 = (v40 + 24) & ~v40;
  v3 = v0 + v39;
  v4 = *(v0 + v39 + 40);

  v5 = v0 + v39 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = (v39 + v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF540FDC(*(v0 + ((v39 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v36 = *(v0 + v35 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09B2A8()
{
  v1 = type metadata accessor for VFSItem(0);
  v72 = *(*(v1 - 8) + 80);
  v2 = (v72 + 24) & ~v72;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v4 = *(*(v71 - 8) + 80);
  v70 = *(*(v71 - 8) + 64);
  v5 = *(v0 + 16);

  v73 = v0;
  v6 = v0 + v2;
  v7 = *(v6 + 40);

  v69 = v1;
  v8 = v6 + *(v1 + 28);
  v9 = type metadata accessor for ItemMetadata();
  v10 = v9[7];
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v8 + v10, v11);
  v13(v8 + v9[8], v11);
  v14 = *(v8 + v9[14] + 8);

  v15 = v9[30];
  v68 = *(v12 + 48);
  if (!v68(v8 + v15, 1, v11))
  {
    v13(v8 + v15, v11);
  }

  v16 = *(v8 + v9[31]);

  v17 = *(v8 + v9[33]);

  v18 = (v8 + v9[34]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1CEFE4714(*v18, v19);
  }

  v20 = *(v8 + v9[38] + 8);

  v21 = v6 + v69[8];
  v22 = *(v21 + 16);
  if (v22 != 1)
  {

    v23 = *(v21 + 48);

    v24 = *(v21 + 64);

    v25 = *(v21 + 88);

    v26 = *(v21 + 120);

    v27 = *(v21 + 136);

    v28 = *(v21 + 152);

    v29 = *(v21 + 168);

    v30 = *(v21 + 184);

    if (*(v21 + 192))
    {

      v31 = *(v21 + 200);
    }

    v32 = *(v21 + 224);

    v33 = *(v21 + 240);
  }

  v74 = (v3 + v4 + 16) & ~v4;
  v34 = v69[12];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v66 = *(*(v35 - 8) + 48);
  v67 = v35;
  if (!v66(v6 + v34, 1))
  {
    v36 = sub_1CF9E5A58();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v6 + v34, 1, v36))
    {
      (*(v37 + 8))(v6 + v34, v36);
    }
  }

  v38 = *(v73 + v3 + 8);

  v39 = v73 + v74;
  v40 = *(v73 + v74 + 40);

  v41 = v73 + v74 + v69[7];
  v13(v41 + v9[7], v11);
  v13(v41 + v9[8], v11);
  v42 = *(v41 + v9[14] + 8);

  v43 = v9[30];
  if (!v68(v41 + v43, 1, v11))
  {
    v13(v41 + v43, v11);
  }

  v44 = *(v41 + v9[31]);

  v45 = *(v41 + v9[33]);

  v46 = (v41 + v9[34]);
  v47 = v46[1];
  if (v47 >> 60 != 15)
  {
    sub_1CEFE4714(*v46, v47);
  }

  v48 = *(v41 + v9[38] + 8);

  v49 = v39 + v69[8];
  v50 = *(v49 + 16);
  if (v50 != 1)
  {

    v51 = *(v49 + 48);

    v52 = *(v49 + 64);

    v53 = *(v49 + 88);

    v54 = *(v49 + 120);

    v55 = *(v49 + 136);

    v56 = *(v49 + 152);

    v57 = *(v49 + 168);

    v58 = *(v49 + 184);

    if (*(v49 + 192))
    {

      v59 = *(v49 + 200);
    }

    v60 = *(v49 + 224);

    v61 = *(v49 + 240);
  }

  v62 = v69[12];
  if (!(v66)(v39 + v62, 1, v67))
  {
    v63 = sub_1CF9E5A58();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(v39 + v62, 1, v63))
    {
      (*(v64 + 8))(v39 + v62, v63);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09B8E0()
{
  v1 = type metadata accessor for VFSItem(0);
  v44 = *(*(v1 - 1) + 80);
  v42 = *(*(v1 - 1) + 64);
  v43 = (v44 + 16) & ~v44;
  v2 = v0 + v43;
  v3 = *(v0 + v43 + 40);

  v4 = v0 + v43 + v1[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v2 + v1[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v1[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v2 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v2 + v30, 1, v32))
    {
      (*(v33 + 8))(v2 + v30, v32);
    }
  }

  v34 = (v42 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v34 + 8);

  v38 = *(v0 + v35);

  v39 = *(v0 + v36);

  v40 = *(v0 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09BC80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF09BCD0()
{
  v1 = type metadata accessor for VFSItem(0);
  v76 = *(*(v1 - 8) + 80);
  v2 = (v76 + 16) & ~v76;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v4 = *(*(v75 - 8) + 80);
  v74 = *(*(v75 - 8) + 64);
  v5 = v0 + v2;
  v6 = *(v5 + 40);

  v73 = v1;
  v72 = v5;
  v7 = v5 + *(v1 + 28);
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v78 = v12;
  v12(v7 + v8[8], v10);
  v13 = *(v7 + v8[14] + 8);

  v14 = v8[30];
  v71 = *(v11 + 48);
  if (!v71(v7 + v14, 1, v10))
  {
    v12(v7 + v14, v10);
  }

  v77 = v0;
  v15 = *(v7 + v8[31]);

  v16 = *(v7 + v8[33]);

  v17 = (v7 + v8[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *(v7 + v8[38] + 8);

  v20 = v72 + v73[8];
  v21 = *(v20 + 16);
  if (v21 != 1)
  {

    v22 = *(v20 + 48);

    v23 = *(v20 + 64);

    v24 = *(v20 + 88);

    v25 = *(v20 + 120);

    v26 = *(v20 + 136);

    v27 = *(v20 + 152);

    v28 = *(v20 + 168);

    v29 = *(v20 + 184);

    if (*(v20 + 192))
    {

      v30 = *(v20 + 200);
    }

    v31 = *(v20 + 224);

    v32 = *(v20 + 240);
  }

  v79 = (v3 + v4 + 8) & ~v4;
  v33 = v73[12];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v70 = *(*(v69 - 8) + 48);
  if (!v70(v72 + v33, 1))
  {
    v34 = sub_1CF9E5A58();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v72 + v33, 1, v34))
    {
      (*(v35 + 8))(v72 + v33, v34);
    }
  }

  v36 = *(v77 + v3);

  v37 = v77 + v79;
  v38 = *(v77 + v79 + 40);

  v39 = v77 + v79 + v73[7];
  v78(v39 + v8[7], v10);
  v78(v39 + v8[8], v10);
  v40 = *(v39 + v8[14] + 8);

  v41 = v8[30];
  if (!v71(v39 + v41, 1, v10))
  {
    v78(v39 + v41, v10);
  }

  v42 = *(v39 + v8[31]);

  v43 = *(v39 + v8[33]);

  v44 = (v39 + v8[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  v46 = *(v39 + v8[38] + 8);

  v47 = v37 + v73[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    v49 = *(v47 + 48);

    v50 = *(v47 + 64);

    v51 = *(v47 + 88);

    v52 = *(v47 + 120);

    v53 = *(v47 + 136);

    v54 = *(v47 + 152);

    v55 = *(v47 + 168);

    v56 = *(v47 + 184);

    if (*(v47 + 192))
    {

      v57 = *(v47 + 200);
    }

    v58 = *(v47 + 224);

    v59 = *(v47 + 240);
  }

  v60 = v73[12];
  if (!(v70)(v37 + v60, 1, v69))
  {
    v61 = sub_1CF9E5A58();
    v62 = *(v61 - 8);
    if (!(*(v62 + 48))(v37 + v60, 1, v61))
    {
      (*(v62 + 8))(v37 + v60, v61);
    }
  }

  v63 = (v74 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;

  v65 = *(v77 + v63 + 8);

  v66 = *(v77 + v64 + 8);

  v67 = *(v77 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09C34C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09C38C()
{
  sub_1CF540FDC(v0[4]);
  v1 = v0[5];

  v2 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF09C4FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09C554()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF09C598(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocalDomain();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CF09C644(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalDomain();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CF09C6E8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF09C7C0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09C7F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09C838()
{
  v1 = (type metadata accessor for FSDirectoryEnumerator() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);

  v5 = v0 + v2 + v1[7];
  v6 = *(v5 + 24);

  v7 = *(v5 + 40);

  v8 = *(type metadata accessor for LocalDomain() + 32);
  v9 = sub_1CF9E5A58();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = (v0 + v2 + v1[11]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09C978()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09C9B0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF09CA00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09CA38()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = type metadata accessor for VFSItem(0);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v47 = v4;
      v7 = *(v5 + 40);

      v46 = v6;
      v8 = v5 + *(v6 + 28);
      v9 = type metadata accessor for ItemMetadata();
      v10 = v9[7];
      v11 = sub_1CF9E5CF8();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v8 + v10, v11);
      v13(v8 + v9[8], v11);
      v14 = *(v8 + v9[14] + 8);

      v15 = v9[30];
      if (!(*(v12 + 48))(v8 + v15, 1, v11))
      {
        v13(v8 + v15, v11);
      }

      v16 = *(v8 + v9[31]);

      v17 = *(v8 + v9[33]);

      v18 = (v8 + v9[34]);
      v19 = v18[1];
      if (v19 >> 60 != 15)
      {
        sub_1CEFE4714(*v18, v19);
      }

      v20 = *(v8 + v9[38] + 8);

      v4 = v47;
      v21 = v5 + *(v46 + 32);
      v22 = *(v21 + 16);
      v3 = (v2 + 64) & ~v2;
      if (v22 != 1)
      {

        v23 = *(v21 + 48);

        v24 = *(v21 + 64);

        v25 = *(v21 + 88);

        v26 = *(v21 + 120);

        v27 = *(v21 + 136);

        v28 = *(v21 + 152);

        v29 = *(v21 + 168);

        v30 = *(v21 + 184);

        if (*(v21 + 192))
        {

          v31 = *(v21 + 200);
        }

        v32 = *(v21 + 224);

        v33 = *(v21 + 240);
      }

      v34 = *(v46 + 48);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
      if (!(*(*(v35 - 8) + 48))(v5 + v34, 1, v35))
      {
        v36 = sub_1CF9E5A58();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v34, 1, v36))
        {
          (*(v37 + 8))(v5 + v34, v36);
        }
      }
    }
  }

  v38 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v0 + v38);

  v42 = *(v0 + v39);

  v43 = *(v0 + v40 + 8);

  v44 = *(v0 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF09CE98()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(sub_1CF9E75D8() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 10);

  v8 = *(v0 + 11);

  v9 = *(v0 + 13);

  v10 = *(AssociatedTypeWitness - 8);
  if (!(*(v10 + 48))(&v0[v5], 1, AssociatedTypeWitness))
  {
    (*(v10 + 8))(&v0[v5], AssociatedTypeWitness);
  }

  v11 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *&v0[v11];

  sub_1CF574B84(*&v0[v12]);

  return swift_deallocObject();
}

uint64_t sub_1CF09D0B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = *(sub_1CF9E8238() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(*(v4 - 8) + 80) + v9 + 16) & ~*(*(v4 - 8) + 80);
  v20 = *(*(v4 - 8) + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v11 = *(AssociatedTypeWitness - 8);
    if (!(*(v11 + 48))(v0 + v6, 1, AssociatedTypeWitness))
    {
      (*(v11 + 8))(v0 + v6, AssociatedTypeWitness);
    }
  }

  v12 = *(v0 + v7);

  v13 = *(v0 + v8);

  v14 = *(v0 + v9 + 8);

  v15 = *(AssociatedTypeWitness - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, AssociatedTypeWitness))
  {
    (*(v15 + 8))(v0 + v10, AssociatedTypeWitness);
  }

  v16 = (v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v16);

  sub_1CF574B84(*(v0 + v17));

  return swift_deallocObject();
}

uint64_t sub_1CF09D374()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09D3C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF09D408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09D440()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09D478()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09D4B0()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF09D4E8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1CF09D540()
{
  sub_1CF518C00(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1CF09D65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CF09D71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E6448();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 52);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF09D7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1CF9E5CF8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1CF09D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1CF09D904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF09D9F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v5 = *(v1 + 52);
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = *(v4 + *(v2 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF09DB08()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09DB40()
{
  v11 = *(v0 + 16);
  v12 = *(v0 + 40);
  v1 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 52);
  v7 = sub_1CF9E6448();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + *(v2 + 64));

  v9 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF09DC4C()
{
  v16 = *(v0 + 40);
  v17 = *(v0 + 16);
  v1 = (type metadata accessor for ConcreteDatabase.MaterializationRequest() - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  *&v17 = *(v6 + 64);
  v8 = *(v0 + 64);

  v9 = *(v0 + 80);

  v10 = v0 + v2;
  v11 = v1[15];
  v12 = sub_1CF9E6448();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  v13 = *(v10 + v1[16]);

  v14 = *(v0 + v3 + 8);

  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_1CF09DE34()
{
  v9 = *(v0 + 16);
  v10 = *(v0 + 40);
  type metadata accessor for UserRequest();
  sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  sub_1CF9E6448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v1 = (swift_getTupleTypeMetadata() - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 72);

  sub_1CF5DE5B8(*(v0 + v2));

  v5 = v1[22];
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[26] + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09DFB4()
{
  v17 = *(v0 + 40);
  v18 = *(v0 + 16);
  v1 = (type metadata accessor for ConcreteDatabase.MaterializationRequest() - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (*(v7 + 80) + v5 + 8) & ~*(v7 + 80);
  *&v18 = *(v7 + 64);
  sub_1CF481340(*(v0 + 64), *(v0 + 72));
  v9 = *(v0 + 88);

  v10 = v0 + v2;
  v11 = v1[15];
  v12 = sub_1CF9E6448();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  v13 = *(v10 + v1[16]);

  v14 = *(v0 + v3 + 8);

  v15 = *(v0 + v5);

  (*(v7 + 8))(v0 + v8, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_1CF09E1BC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09E1F4()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF09E22C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09E31C()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09E434()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(type metadata accessor for ReconciliationID() - 8);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v10 = *(type metadata accessor for ThrottlingKey() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 8);

  v15 = *(v0 + 9);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v6;
  }

  else
  {
    v16 = AssociatedTypeWitness;
  }

  (*(*(v16 - 8) + 8))(&v0[v9]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v6;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(*(v17 - 8) + 8))(&v0[v11]);
  return swift_deallocObject();
}

uint64_t sub_1CF09E680()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_1CF9E6068();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09E780()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v4);

  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09E8E0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09E920()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF09E958()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF09E9B0()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  v9 = *(v0 + 9);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09EA9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF09EAE4()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1CF5DE5B8(v0[7]);

  return swift_deallocObject();
}

uint64_t sub_1CF09EB2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 sub_1CF09EB7C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1CF09EB90()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09EBCC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09EC04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 80);

  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  sub_1CF5DE5B8(*(v0 + v6));
  v10 = *(v0 + v7);

  v11 = *(v0 + v8);

  v12 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF09ED3C()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[9];

  sub_1CF5DE5B8(v0[10]);
  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_1CF09EDC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF09EDFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 72);

  v10 = *(v0 + 88);

  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  sub_1CF5DE5B8(*(v0 + v6));
  v11 = *(v0 + v7);

  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF09EF40()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[9];

  sub_1CF5DE5B8(v0[10]);
  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_1CF09F0E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF09F13C()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v10 = *&v0[v6];

  return swift_deallocObject();
}

uint64_t sub_1CF09F23C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09F274()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = TupleTypeMetadata2;
  v4 = *(sub_1CF9E8238() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v22 = *(v4 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (v0 + v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v11 = *(v1 - 8);
    if (!(*(v11 + 48))(v0 + v5, 1, v1))
    {
      (*(v11 + 8))(v0 + v5, v1);
    }
  }

  v12 = (v5 + v22 + v8) & ~v8;
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v12, AssociatedTypeWitness);
  v16 = *(v0 + v13);

  v17 = *(v0 + v14);

  v18 = *(v0 + v15);

  v19 = *(v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF09F534()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  v69 = *(v0 + 4);
  v71 = *(v0 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness;
  v60 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v5 = v60 + *(v4 + 64);
  swift_getAssociatedConformanceWitness();
  v6 = (type metadata accessor for ItemState() - 8);
  v57 = (v5 + *(*v6 + 80)) & ~*(*v6 + 80);
  v62 = (*(*v6 + 64) + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v65 = v7;
  v66 = v8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = type metadata accessor for FileItemVersion();
  v68 = *(*(v64 - 1) + 80);
  v61 = (v63 + v68 + 64) & ~v68;
  v58 = *(*(v64 - 1) + 64) + v61;
  v70 = swift_getAssociatedTypeWitness();
  v72 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FileItemVersion();
  v10 = *(*(v9 - 1) + 80);
  v67 = *(*(v9 - 1) + 64);
  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  v13 = *(v4 + 8);
  v13(&v0[v60], v59);
  v13(&v0[v57], v59);
  v14 = *&v0[v57 + 8 + v6[11]];

  v15 = &v0[v57 + v6[12]];
  v16 = type metadata accessor for ItemMetadata();
  v17 = v16[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(&v15[v17], v18);
  v20(&v15[v16[8]], v18);
  v21 = *&v15[v16[14] + 8];

  v22 = v16[30];
  if (!(*(v19 + 48))(&v15[v22], 1, v18))
  {
    v20(&v15[v22], v18);
  }

  v23 = *&v15[v16[31]];

  v24 = *&v15[v16[33]];

  v25 = &v15[v16[34]];
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_1CEFE4714(*v25, v26);
  }

  v27 = (v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = *&v15[v16[38] + 8];

  v29 = *&v0[v62];

  v30 = *&v0[v63 + 24];
  if (v30 >> 60 != 15 && (v30 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*&v0[v63 + 16], v30);
  }

  (*(*(v65 - 8) + 8))(&v0[v61]);
  v32 = *&v0[v61 + v64[13]];

  (*(*(v66 - 8) + 8))(&v0[v61 + v64[14]]);
  v33 = *&v0[v61 + v64[15]];

  v34 = *&v0[v61 + 8 + v64[16]];

  v35 = &v0[v27];
  v36 = *&v0[v27 + 16];
  if (v36 != 1)
  {

    v37 = v35[6];

    v38 = v35[8];

    v39 = v35[11];

    v40 = v35[15];

    v41 = v35[17];

    v42 = v35[19];

    v43 = v35[21];

    v44 = v35[23];

    if (v35[24])
    {

      v45 = v35[25];
    }

    v46 = v35[28];

    v47 = v35[30];
  }

  v48 = (v27 + 255) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = *&v0[v48 + 8];

  v51 = *&v0[v49];

  v52 = &v0[(v49 + v10 + 8) & ~v10];
  (*(*(v70 - 8) + 8))(v52);
  v53 = *&v52[v9[13]];

  (*(*(v72 - 8) + 8))(&v52[v9[14]]);
  v54 = *&v52[v9[15]];

  v55 = *&v52[v9[16] + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF09FC38()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 6);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v8 = *&v0[v6 + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF09FD2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09FD6C()
{
  sub_1CF481340(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF09FDB0()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v37 = (*(v6 + 80) + 144) & ~*(v6 + 80);
  v7 = v37 + *(v6 + 64);
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ItemState();
  v40 = *(*(v8 - 8) + 80);
  v43 = (v7 + v40) & ~v40;
  v39 = *(*(v8 - 8) + 64);
  v41 = swift_getAssociatedTypeWitness();
  v42 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FileItemVersion();
  v10 = *(*(v9 - 1) + 80);
  v38 = *(*(v9 - 1) + 64);
  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  v13 = *(v0 + 9);

  v14 = *(v0 + 13);
  if (v14 >> 60 != 15 && (v14 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 12), v14);
  }

  v15 = *(v6 + 8);
  v15(&v0[v37], AssociatedTypeWitness);
  v15(&v0[v43], AssociatedTypeWitness);
  v16 = *&v0[v43 + 8 + *(v8 + 36)];

  v17 = &v0[v43 + *(v8 + 40)];
  v18 = type metadata accessor for ItemMetadata();
  v19 = v18[7];
  v20 = sub_1CF9E5CF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v22(&v17[v19], v20);
  v22(&v17[v18[8]], v20);
  v23 = *&v17[v18[14] + 8];

  v24 = v18[30];
  if (!(*(v21 + 48))(&v17[v24], 1, v20))
  {
    v22(&v17[v24], v20);
  }

  v25 = *&v17[v18[31]];

  v26 = *&v17[v18[33]];

  v27 = &v17[v18[34]];
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_1CEFE4714(*v27, v28);
  }

  v29 = (v39 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = *&v17[v18[38] + 8];

  v31 = *&v0[v29];

  v32 = &v0[(v29 + v10 + 8) & ~v10];
  (*(*(v41 - 8) + 8))(v32);
  v33 = *&v32[v9[13]];

  (*(*(v42 - 8) + 8))(&v32[v9[14]]);
  v34 = *&v32[v9[15]];

  v35 = *&v32[v9[16] + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A025C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v46 = type metadata accessor for ItemPropagationResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v45 = TupleTypeMetadata2;
  v6 = sub_1CF9E8238();
  v58 = *(*(v6 - 8) + 80);
  v47 = (v58 + 48) & ~v58;
  v48 = (*(*(v6 - 8) + 64) + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v48 + 71) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(v8 + 80) + v52 + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  swift_getAssociatedConformanceWitness();
  v49 = type metadata accessor for ItemState();
  v59 = *(*(v49 - 8) + 80);
  v50 = v9;
  v11 = v9 + v10 + v59;
  v55 = *(*(v49 - 8) + 64);
  v56 = swift_getAssociatedTypeWitness();
  v57 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion();
  v54 = *(*(v12 - 1) + 80);
  v53 = *(*(v12 - 1) + 64);
  v13 = &v0[v47];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    if (!(*(*(v46 - 8) + 48))(v13, 1, v46))
    {
      (*(*(v2 - 8) + 8))(v13);
      v14 = v13 + *(v46 + 44);
      v15 = *(v14 + 3);
      if (v15 >> 60 != 15 && (v15 & 0xF000000000000000) != 0xB000000000000000)
      {
        sub_1CEFE4714(*(v14 + 2), v15);
      }
    }
  }

  v17 = v11 & ~v59;
  v18 = *&v0[v48 + 24];
  if (v18 >> 60 != 15 && (v18 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*&v0[v48 + 16], v18);
  }

  v20 = *&v0[v51];

  v21 = *&v0[v52];

  v22 = *(v8 + 8);
  v22(&v0[v50], AssociatedTypeWitness);
  v22(&v0[v17], AssociatedTypeWitness);
  v23 = *&v0[v17 + 8 + *(v49 + 36)];

  v24 = &v0[v17 + *(v49 + 40)];
  v25 = type metadata accessor for ItemMetadata();
  v26 = v25[7];
  v27 = sub_1CF9E5CF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v29(&v24[v26], v27);
  v29(&v24[v25[8]], v27);
  v30 = *&v24[v25[14] + 8];

  v31 = v25[30];
  if (!(*(v28 + 48))(&v24[v31], 1, v27))
  {
    v29(&v24[v31], v27);
  }

  v32 = *&v24[v25[31]];

  v33 = *&v24[v25[33]];

  v34 = &v24[v25[34]];
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_1CEFE4714(*v34, v35);
  }

  v36 = (v55 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + v54 + 8) & ~v54;
  v38 = *&v24[v25[38] + 8];

  v39 = *&v0[v36];

  (*(*(v56 - 8) + 8))(&v0[v37]);
  v40 = *&v0[v37 + v12[13]];

  (*(*(v57 - 8) + 8))(&v0[v37 + v12[14]]);
  v41 = *&v0[v37 + v12[15]];

  v42 = *&v0[v37 + 8 + v12[16]];

  v43 = *&v0[((v53 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A0908()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 5);
  v3 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v60 = (*(v57 + 80) + 168) & ~*(v57 + 80);
  v6 = v60 + *(v57 + 64);
  swift_getAssociatedConformanceWitness();
  v61 = AssociatedTypeWitness;
  v59 = type metadata accessor for ItemState();
  v70 = *(*(v59 - 8) + 80);
  v69 = *(*(v59 - 8) + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v66 = v7;
  v67 = v8;
  v62 = type metadata accessor for FileItemVersion();
  v9 = *(*(v62 - 1) + 80);
  v58 = (v6 + v70) & ~v70;
  v10 = (v58 + v69 + v9) & ~v9;
  v11 = *(*(v62 - 1) + 64);
  v64 = swift_getAssociatedTypeWitness();
  v65 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion();
  v63 = v10;
  v68 = *(*(v12 - 1) + 80);
  v56 = (v10 + v11 + v68) & ~v68;
  v13 = *(*(v12 - 1) + 64) + v56;
  v14 = *(v0 + 8);

  v15 = *(v0 + 10);

  v16 = *(v0 + 11);

  v17 = *(v0 + 12);

  v18 = *(v0 + 16);
  if (v18 >> 60 != 15 && (v18 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 15), v18);
  }

  v19 = v13 + 7;
  v20 = *(v57 + 8);
  v20(&v0[v60], v61);
  v20(&v0[v58], v61);
  v21 = *&v0[v58 + 8 + *(v59 + 36)];

  v22 = &v0[v58 + *(v59 + 40)];
  v23 = type metadata accessor for ItemMetadata();
  v24 = v23[7];
  v25 = sub_1CF9E5CF8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  v27(&v22[v24], v25);
  v27(&v22[v23[8]], v25);
  v28 = *&v22[v23[14] + 8];

  v29 = v23[30];
  if (!(*(v26 + 48))(&v22[v29], 1, v25))
  {
    v27(&v22[v29], v25);
  }

  v30 = v19 & 0xFFFFFFFFFFFFFFF8;
  v31 = *&v22[v23[31]];

  v32 = *&v22[v23[33]];

  v33 = &v22[v23[34]];
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_1CEFE4714(*v33, v34);
  }

  v35 = *&v22[v23[38] + 8];

  (*(*(v66 - 8) + 8))(&v0[v63]);
  v36 = *&v0[v63 + v62[13]];

  (*(*(v67 - 8) + 8))(&v0[v63 + v62[14]]);
  v37 = *&v0[v63 + v62[15]];

  v38 = *&v0[v63 + 8 + v62[16]];

  (*(*(v64 - 8) + 8))(&v0[v56]);
  v39 = *&v0[v56 + v12[13]];

  (*(*(v65 - 8) + 8))(&v0[v56 + v12[14]]);
  v40 = *&v0[v56 + v12[15]];

  v41 = *&v0[v56 + 8 + v12[16]];

  v42 = &v0[v30];
  v43 = *&v0[v30 + 16];
  if (v43 != 1)
  {

    v44 = v42[6];

    v45 = v42[8];

    v46 = v42[11];

    v47 = v42[15];

    v48 = v42[17];

    v49 = v42[19];

    v50 = v42[21];

    v51 = v42[23];

    if (v42[24])
    {

      v52 = v42[25];
    }

    v53 = v42[28];

    v54 = v42[30];
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A0FE4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0A103C()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v35 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v34 = (*(v6 + 64) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedConformanceWitness();
  v7 = (type metadata accessor for ItemState() - 8);
  v40 = (v34 + *(*v7 + 80) + 8) & ~*(*v7 + 80);
  v37 = *(*v7 + 64);
  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  v9 = *(*(v8 - 1) + 80);
  v36 = *(*(v8 - 1) + 64);
  v10 = *(v0 + 6);

  v11 = *(v0 + 8);

  v12 = *(v6 + 8);
  v12(&v0[v35], AssociatedTypeWitness);
  v13 = *&v0[v34];

  v12(&v0[v40], AssociatedTypeWitness);
  v14 = *&v0[v40 + 8 + v7[11]];

  v15 = &v0[v40 + v7[12]];
  v16 = type metadata accessor for ItemMetadata();
  v17 = v16[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(&v15[v17], v18);
  v20(&v15[v16[8]], v18);
  v21 = *&v15[v16[14] + 8];

  v22 = v16[30];
  if (!(*(v19 + 48))(&v15[v22], 1, v18))
  {
    v20(&v15[v22], v18);
  }

  v23 = *&v15[v16[31]];

  v24 = *&v15[v16[33]];

  v25 = &v15[v16[34]];
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_1CEFE4714(*v25, v26);
  }

  v27 = (v40 + v37 + v9) & ~v9;
  v28 = *&v15[v16[38] + 8];

  (*(*(v38 - 8) + 8))(&v0[v27]);
  v29 = *&v0[v27 + v8[13]];

  (*(*(v39 - 8) + 8))(&v0[v27 + v8[14]]);
  v30 = *&v0[v27 + v8[15]];

  v31 = *&v0[v27 + 8 + v8[16]];

  v32 = *&v0[(v36 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A14D8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = sub_1CF9E8238();
  v48 = *(*(v5 - 8) + 80);
  v6 = *(*(v5 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v42 = (((v48 + 48) & ~v48) + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v9 = (*(v8 + 64) + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ItemState();
  v46 = *(*(v10 - 8) + 80);
  v49 = (v9 + v46 + 8) & ~v46;
  v44 = *(*(v10 - 8) + 64);
  v45 = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion();
  v12 = *(*(v11 - 1) + 80);
  v43 = *(*(v11 - 1) + 64);
  v13 = &v0[(v48 + 48) & ~v48];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1CF60F704(*v13, *(v13 + 1), v13[16]);
        break;
      case 1:
        v41 = *v13;

        break;
      case 0:
        (*(*(v2 - 8) + 8))(v13);
        break;
    }
  }

  v14 = *(v8 + 8);
  v14(&v0[v42], AssociatedTypeWitness);
  v15 = *&v0[v9];

  v14(&v0[v49], AssociatedTypeWitness);
  v16 = *&v0[v49 + 8 + *(v10 + 36)];

  v17 = &v0[v49 + *(v10 + 40)];
  v18 = type metadata accessor for ItemMetadata();
  v19 = v18[7];
  v20 = sub_1CF9E5CF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v22(&v17[v19], v20);
  v22(&v17[v18[8]], v20);
  v23 = *&v17[v18[14] + 8];

  v24 = v18[30];
  if (!(*(v21 + 48))(&v17[v24], 1, v20))
  {
    v22(&v17[v24], v20);
  }

  v25 = *&v17[v18[31]];

  v26 = *&v17[v18[33]];

  v27 = &v17[v18[34]];
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_1CEFE4714(*v27, v28);
  }

  v29 = (v49 + v44 + v12) & ~v12;
  v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *&v17[v18[38] + 8];

  (*(*(v45 - 8) + 8))(&v0[v29]);
  v33 = *&v0[v29 + v11[13]];

  (*(*(v47 - 8) + 8))(&v0[v29 + v11[14]]);
  v34 = *&v0[v29 + v11[15]];

  v35 = *&v0[v29 + 8 + v11[16]];

  v36 = *&v0[v30];

  v37 = *&v0[v31];

  v38 = *&v0[((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A1AC4()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = (type metadata accessor for ItemState() - 8);
  v7 = (*(*v6 + 80) + 80) & ~*(*v6 + 80);
  v34 = *(*v6 + 64);
  v36 = swift_getAssociatedTypeWitness();
  v37 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  v9 = *(*(v8 - 1) + 80);
  v33 = *(*(v8 - 1) + 64);
  v10 = *(v0 + 6);

  v11 = *(v0 + 8);

  v12 = *(v0 + 9);

  v35 = v7;
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v7], AssociatedTypeWitness);
  v13 = *&v0[v7 + 8 + v6[11]];

  v14 = &v0[v7 + v6[12]];
  v15 = type metadata accessor for ItemMetadata();
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(&v14[v16], v17);
  v19(&v14[v15[8]], v17);
  v20 = *&v14[v15[14] + 8];

  v21 = v15[30];
  if (!(*(v18 + 48))(&v14[v21], 1, v17))
  {
    v19(&v14[v21], v17);
  }

  v22 = *&v14[v15[31]];

  v23 = *&v14[v15[33]];

  v24 = &v14[v15[34]];
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_1CEFE4714(*v24, v25);
  }

  v26 = (v35 + v34 + v9) & ~v9;
  v27 = *&v14[v15[38] + 8];

  (*(*(v36 - 8) + 8))(&v0[v26]);
  v28 = *&v0[v26 + v8[13]];

  (*(*(v37 - 8) + 8))(&v0[v26 + v8[14]]);
  v29 = *&v0[v26 + v8[15]];

  v30 = *&v0[v26 + 8 + v8[16]];

  v31 = *&v0[(v33 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A1EE8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v5 = type metadata accessor for ItemPropagationResult();
  v6 = *(sub_1CF9E75D8() - 8);
  v39 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v7 = v39 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v40 = type metadata accessor for ItemState();
  v43 = *(*(v40 - 8) + 80);
  v46 = (v7 + v43) & ~v43;
  v42 = *(*(v40 - 8) + 64);
  v44 = swift_getAssociatedTypeWitness();
  v45 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FileItemVersion();
  v10 = *(*(v9 - 1) + 80);
  v41 = *(*(v9 - 1) + 64);
  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  v13 = *(v0 + 9);

  v14 = &v0[v39];
  if (!(*(*(v5 - 8) + 48))(&v0[v39], 1, v5))
  {
    (*(*(v2 - 8) + 8))(v14, v2);
    v15 = &v14[*(v5 + 44)];
    v16 = *(v15 + 3);
    if (v16 >> 60 != 15 && (v16 & 0xF000000000000000) != 0xB000000000000000)
    {
      sub_1CEFE4714(*(v15 + 2), v16);
    }
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v46], AssociatedTypeWitness);
  v18 = *&v0[v46 + 8 + *(v40 + 36)];

  v19 = &v0[v46 + *(v40 + 40)];
  v20 = type metadata accessor for ItemMetadata();
  v21 = v20[7];
  v22 = sub_1CF9E5CF8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  v24(&v19[v21], v22);
  v24(&v19[v20[8]], v22);
  v25 = *&v19[v20[14] + 8];

  v26 = v20[30];
  if (!(*(v23 + 48))(&v19[v26], 1, v22))
  {
    v24(&v19[v26], v22);
  }

  v27 = *&v19[v20[31]];

  v28 = *&v19[v20[33]];

  v29 = &v19[v20[34]];
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_1CEFE4714(*v29, v30);
  }

  v31 = (v46 + v42 + v10) & ~v10;
  v32 = (v41 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *&v19[v20[38] + 8];

  (*(*(v44 - 8) + 8))(&v0[v31]);
  v34 = *&v0[v31 + v9[13]];

  (*(*(v45 - 8) + 8))(&v0[v31 + v9[14]]);
  v35 = *&v0[v31 + v9[15]];

  v36 = *&v0[v31 + 8 + v9[16]];

  v37 = *&v0[(v32 + 15) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A2438()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A2474()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = (type metadata accessor for ItemState() - 8);
  v7 = (*(*v6 + 80) + 80) & ~*(*v6 + 80);
  v53 = *(*v6 + 64);
  v51 = swift_getAssociatedTypeWitness();
  v52 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  v9 = *(*(v8 - 1) + 80);
  v49 = (v7 + v53 + v9) & ~v9;
  v50 = (*(*(v8 - 1) + 64) + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 6);

  v12 = *(v0 + 8);

  v13 = *(v0 + 9);

  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v7], AssociatedTypeWitness);
  v14 = *&v0[v7 + 8 + v6[11]];

  v15 = &v0[v7 + v6[12]];
  v16 = type metadata accessor for ItemMetadata();
  v17 = v16[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(&v15[v17], v18);
  v20(&v15[v16[8]], v18);
  v21 = *&v15[v16[14] + 8];

  v22 = v16[30];
  if (!(*(v19 + 48))(&v15[v22], 1, v18))
  {
    v20(&v15[v22], v18);
  }

  v23 = *&v15[v16[31]];

  v24 = *&v15[v16[33]];

  v25 = &v15[v16[34]];
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_1CEFE4714(*v25, v26);
  }

  v27 = (v10 + 71) & 0xFFFFFFFFFFFFFFF8;
  v28 = *&v15[v16[38] + 8];

  (*(*(v51 - 8) + 8))(&v0[v49]);
  v29 = *&v0[v49 + v8[13]];

  (*(*(v52 - 8) + 8))(&v0[v49 + v8[14]]);
  v30 = *&v0[v49 + v8[15]];

  v31 = *&v0[v49 + 8 + v8[16]];

  v32 = *&v0[v50];

  v33 = *&v0[v10 + 24];
  if (v33 >> 60 != 15 && (v33 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*&v0[v10 + 16], v33);
  }

  v35 = &v0[v27];
  v36 = *&v0[v27 + 16];
  if (v36 != 1)
  {

    v37 = v35[6];

    v38 = v35[8];

    v39 = v35[11];

    v40 = v35[15];

    v41 = v35[17];

    v42 = v35[19];

    v43 = v35[21];

    v44 = v35[23];

    if (v35[24])
    {

      v45 = v35[25];
    }

    v46 = v35[28];

    v47 = v35[30];
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A29FC()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = *(type metadata accessor for JobLockRule() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for FileTreeWriter.FileTreeChange() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v28 = *(v6 + 64);
  v8 = v0[8];

  v9 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = v7;
  if (EnumCaseMultiPayload <= 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
LABEL_10:
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
        break;
      case 1:
        v24 = swift_getAssociatedTypeWitness();
        v25 = *(*(v24 - 8) + 8);
        v25(v9, v24);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v25(&v9[*(TupleTypeMetadata3 + 48)], v24);
        v25(&v9[*(TupleTypeMetadata3 + 64)], v24);
        break;
      case 2:
        v11 = swift_getAssociatedTypeWitness();
        v12 = *(v11 - 8);
        v27 = *(v12 + 8);
        v27(v9, v11);
        sub_1CF9E75D8();
        v13 = *(swift_getTupleTypeMetadata2() + 48);
        if (!(*(v12 + 48))(&v9[v13], 1, v11))
        {
          v27(&v9[v13], v11);
        }

        break;
    }
  }

  else if (EnumCaseMultiPayload <= 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_10;
  }

  v15 = v0 + v29;
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 2)
  {
    if (v16 == 3 || v16 == 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_21;
      }

LABEL_17:
      v17 = swift_getAssociatedTypeWitness();
      (*(*(v17 - 8) + 8))(v15, v17);
      goto LABEL_21;
    }

    v18 = swift_getAssociatedTypeWitness();
    (*(*(v18 - 8) + 8))(v15, v18);
    sub_1CF9E75D8();
    type metadata accessor for JobLockAggregator();
    sub_1CF9E75D8();
    v19 = swift_getTupleTypeMetadata3();
    v20 = *(v19 + 48);
    v21 = *(v1 - 8);
    if (!(*(v21 + 48))(&v15[v20], 1, v1))
    {
      (*(v21 + 8))(&v15[v20], v1);
    }

    v22 = *&v15[*(v19 + 64)];
  }

LABEL_21:

  return swift_deallocObject();
}

uint64_t sub_1CF0A2F4C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_1CF0A2FAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A2FE4()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 9);

  v6 = *(v0 + 10);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A30A8()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A316C()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  v7 = *(v0 + 10);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A3238()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 49) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v6 = *(v0 + v3);

  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A3320()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0A341C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_1CF060D50(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_1CF0A348C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A34DC()
{
  v1 = v0[4];

  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1CF0A3588()
{
  v1 = *(v0 + 2);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 8);

  v7 = *(v0 + 9);

  v8 = &v0[v4];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v9 = *(v1 - 8);
    if (!(*(v9 + 48))(&v0[v4], 1, v1))
    {
      (*(v9 + 8))(&v0[v4], v1);
    }
  }

  v10 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v0[v10];

  v13 = *&v0[v11 + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A3780()
{
  v90 = *(v0 + 40);
  v92 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FileItemVersion();
  v77 = *(v3 - 1);
  v88 = (*(v77 + 80) + 112) & ~*(v77 + 80);
  v83 = (*(v77 + 64) + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = type metadata accessor for ItemReconciliation();
  v82 = *(*(v94 - 8) + 80);
  v76 = (v83 + v82 + 8) & ~v82;
  v81 = *(*(v94 - 8) + 64) + v76;
  v4 = type metadata accessor for SnapshotItem();
  v95 = *(*(v4 - 8) + 80);
  v96 = v4;
  v80 = *(*(v4 - 8) + 64);
  v91 = swift_getAssociatedTypeWitness();
  v93 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  v6 = *(v5 - 1);
  v79 = *(v6 + 80);
  v78 = *(v6 + 64);
  v7 = *(v0 + 64);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 104);

  v11 = v0 + v88;
  v86 = *(*(AssociatedTypeWitness - 8) + 8);
  v87 = AssociatedTypeWitness;
  v86(v0 + v88, AssociatedTypeWitness);
  v12 = *(v0 + v88 + v3[13]);

  v89 = v2;
  v85 = *(*(v2 - 8) + 8);
  v85(v11 + v3[14], v2);
  v13 = *(v11 + v3[15]);

  v14 = *(v11 + v3[16] + 8);

  v15 = *(v0 + v83);

  v84 = v0;
  v16 = v0 + v76;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  v19 = type metadata accessor for ItemReconciliationHalf();
  v20 = v16 + v19[12];
  if (!(*(v6 + 48))(v20, 1, v5))
  {
    (*(*(v91 - 8) + 8))(v20);
    v21 = *(v20 + v5[13]);

    (*(*(v93 - 8) + 8))(v20 + v5[14]);
    v22 = *(v20 + v5[15]);

    v23 = *(v20 + v5[16] + 8);
  }

  sub_1CF03D7A8(*(v16 + v19[16]), *(v16 + v19[16] + 8), *(v16 + v19[16] + 16));
  v24 = v16 + v19[17];
  v25 = *(v24 + 24);
  if (v25 >> 60 != 15 && (v25 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v24 + 16), v25);
  }

  v26 = v16 + *(v94 + 52);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  v29 = type metadata accessor for ItemReconciliationHalf();
  v30 = v26 + v29[12];
  if (!(*(v77 + 48))(v30, 1, v3))
  {
    v86(v30, v87);
    v31 = *(v30 + v3[13]);

    v85(v30 + v3[14], v89);
    v32 = *(v30 + v3[15]);

    v33 = *(v30 + v3[16] + 8);
  }

  v34 = (((v81 + 7) & 0xFFFFFFFFFFFFFFF8) + v95 + 9) & ~v95;
  sub_1CF03D7A8(*(v26 + v29[16]), *(v26 + v29[16] + 8), *(v26 + v29[16] + 16));
  v35 = v26 + v29[17];
  v36 = *(v35 + 24);
  if (v36 >> 60 != 15 && (v36 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v35 + 16), v36);
  }

  v37 = *(v16 + *(v94 + 60));

  v38 = v84 + v34;
  v39 = *(v28 + 8);
  v39(v84 + v34, v27);
  v39(v84 + v34 + v96[9], v27);
  v40 = v84 + v34 + v96[10];
  v86(v40, v87);
  v41 = *(v40 + v3[13]);

  v85(v40 + v3[14], v89);
  v42 = *(v40 + v3[15]);

  v43 = *(v40 + v3[16] + 8);

  v44 = *(v84 + v34 + v96[11] + 8);

  v45 = v84 + v34 + v96[12];
  v46 = type metadata accessor for ItemMetadata();
  v47 = v46[7];
  v48 = sub_1CF9E5CF8();
  v49 = *(v48 - 8);
  v50 = *(v49 + 8);
  v50(v45 + v47, v48);
  v50(v45 + v46[8], v48);
  v51 = *(v45 + v46[14] + 8);

  v52 = v46[30];
  if (!(*(v49 + 48))(v45 + v52, 1, v48))
  {
    v50(v45 + v52, v48);
  }

  v53 = *(v45 + v46[31]);

  v54 = *(v45 + v46[33]);

  v55 = (v45 + v46[34]);
  v56 = v55[1];
  if (v56 >> 60 != 15)
  {
    sub_1CEFE4714(*v55, v56);
  }

  v57 = *(v45 + v46[38] + 8);

  v58 = v38 + v96[13];
  v59 = *(v58 + 16);
  if (v59 != 1)
  {

    v60 = *(v58 + 48);

    v61 = *(v58 + 64);

    v62 = *(v58 + 88);

    v63 = *(v58 + 120);

    v64 = *(v58 + 136);

    v65 = *(v58 + 152);

    v66 = *(v58 + 168);

    v67 = *(v58 + 184);

    if (*(v58 + 192))
    {

      v68 = *(v58 + 200);
    }

    v69 = *(v58 + 224);

    v70 = *(v58 + 240);
  }

  sub_1CF07638C(*(v38 + v96[17]), *(v38 + v96[17] + 8));
  v71 = v84 + ((v34 + v80 + v79) & ~v79);
  (*(*(v91 - 8) + 8))(v71);
  v72 = *(v71 + v5[13]);

  (*(*(v93 - 8) + 8))(v71 + v5[14]);
  v73 = *(v71 + v5[15]);

  v74 = *(v71 + v5[16] + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A4244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(*(TupleTypeMetadata3 - 8) + 64);
  v24 = *(*(TupleTypeMetadata3 - 8) + 80);
  v8 = (v24 + 48) & ~v24;
  v9 = v0 + v8;
  v10 = *(v0 + v8 + 24);
  if (v10 >> 60 != 15)
  {
    sub_1CEFE4714(*(v9 + 16), v10);
  }

  v11 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = v9 + *(TupleTypeMetadata3 + 48);
  (*(*(AssociatedTypeWitness - 8) + 8))(v15, AssociatedTypeWitness);
  v16 = *(v15 + v5[13]);

  (*(*(v4 - 8) + 8))(v15 + v5[14], v4);
  v17 = *(v15 + v5[15]);

  v18 = *(v15 + v5[16] + 8);

  v19 = *(v0 + v11);

  v20 = *(v0 + v13);

  v21 = *(v0 + v14);

  v22 = *(v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A44D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = (*(*(TupleTypeMetadata3 - 8) + 80) + 80) & ~*(*(TupleTypeMetadata3 - 8) + 80);
  v8 = *(*(TupleTypeMetadata3 - 8) + 64);
  v9 = *(v0 + 48);

  v10 = *(v0 + 64);

  v11 = *(v0 + 72);

  v12 = v0 + v7;
  v13 = *(v0 + v7 + 24);
  if (v13 >> 60 != 15)
  {
    sub_1CEFE4714(*(v12 + 16), v13);
  }

  v14 = v12 + *(TupleTypeMetadata3 + 48);
  (*(*(AssociatedTypeWitness - 8) + 8))(v14, AssociatedTypeWitness);
  v15 = *(v14 + v5[13]);

  (*(*(v4 - 8) + 8))(v14 + v5[14], v4);
  v16 = *(v14 + v5[15]);

  v17 = *(v14 + v5[16] + 8);

  v18 = *(v0 + ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A472C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(*(TupleTypeMetadata3 - 8) + 64);
  v8 = (*(*(TupleTypeMetadata3 - 8) + 80) + 48) & ~*(*(TupleTypeMetadata3 - 8) + 80);
  v9 = v0 + v8;
  v10 = *(v0 + v8 + 24);
  if (v10 >> 60 != 15)
  {
    sub_1CEFE4714(*(v9 + 16), v10);
  }

  v11 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v9 + *(TupleTypeMetadata3 + 48);
  (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
  v13 = *(v12 + v5[13]);

  (*(*(v4 - 8) + 8))(v12 + v5[14], v4);
  v14 = *(v12 + v5[15]);

  v15 = *(v12 + v5[16] + 8);

  v16 = *(v0 + v11);

  v17 = *(v0 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A4978()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A49B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(sub_1CF9E75D8() - 8);
  v24 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v27 = (*(v3 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for FileItemVersion();
  v5 = *(sub_1CF9E75D8() - 8);
  v6 = (((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + *(v5 + 80) + 20) & ~*(v5 + 80);
  v8 = *(v5 + 64);
  v9 = *(v0 + 48);

  v10 = v0 + v24;
  v11 = (*(*(TupleTypeMetadata2 - 8) + 48))(v0 + v24, 1, TupleTypeMetadata2);
  v12 = v27;
  if (!v11)
  {
    v13 = *(v10 + 24);
    if (v13 >> 60 != 15)
    {
      sub_1CEFE4714(*(v10 + 16), v13);
    }

    (*(*(v1 - 8) + 8))(v10 + *(TupleTypeMetadata2 + 48), v1);
    v12 = v27;
  }

  v14 = *(v0 + v26);

  v15 = *(v0 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));

  v16 = *(v0 + v6 + 8);

  v17 = v0 + v7;
  if (!(*(*(v4 - 1) + 48))(v0 + v7, 1, v4))
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7);
    v18 = *(v17 + v4[13]);

    (*(*(v23 - 8) + 8))(v17 + v4[14]);
    v19 = *(v17 + v4[15]);

    v20 = *(v17 + v4[16] + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A4D70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  v10 = *(v0 + v6);

  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8);

  v13 = *(v0 + v9);

  return swift_deallocObject();
}

uint64_t sub_1CF0A4E78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0A4ECC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  v6 = *(sub_1CF9E75D8() - 8);
  v7 = (*(v6 + 80) + 120) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  v9 = *(v0 + 72);

  v10 = *(v0 + 88);

  v11 = *(v0 + 96);

  v12 = *(v0 + 112);

  v13 = v0 + v7;
  if (!(*(*(v5 - 1) + 48))(v0 + v7, 1, v5))
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7, AssociatedTypeWitness);
    v14 = *(v13 + v5[13]);

    (*(*(v4 - 8) + 8))(v13 + v5[14], v4);
    v15 = *(v13 + v5[15]);

    v16 = *(v13 + v5[16] + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A5104()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = v0 + v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1CF60F704(*v6, *(v6 + 8), *(v6 + 16));
        break;
      case 1:
        v16 = *v6;

        break;
      case 0:
        (*(*(v1 - 8) + 8))(v0 + v4, v1);
        break;
    }
  }

  v7 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v8);

  v12 = *(v0 + v9);

  v13 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0A53EC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (*(v6 + 80) + 112) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 10);

  v14 = *(v0 + 11);

  sub_1CF65C684(*(v0 + 12));
  (*(v6 + 8))(&v0[v7], AssociatedTypeWitness);
  (*(v10 + 8))(&v0[v11], v9);
  v15 = *&v0[v12 + 8];

  v16 = *&v0[((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A565C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A5694()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 8);

  v14 = *(v0 + 9);

  sub_1CF65C684(*(v0 + 10));
  (*(v6 + 8))(&v0[v7], AssociatedTypeWitness);
  (*(v10 + 8))(&v0[v11], v9);
  v15 = *&v0[v12 + 8];

  v16 = *&v0[((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A5858()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  sub_1CF65C684(*&v0[v6]);
  v10 = *&v0[v7];

  v11 = *&v0[v8 + 8];

  v12 = *&v0[((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A5998()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  sub_1CF65C684(*&v0[v6]);
  v9 = *&v0[v7];

  v10 = *&v0[((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0A5ABC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF0A5B0C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A5EE0()
{
  sub_1CF66DD30(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1CF9E5CF8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1CF0A60C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1CF0A6140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 sub_1CF0A6188(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0A61DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A6214()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0A625C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for SnapshotItem();
  v42 = *(*(v3 - 1) + 80);
  v41 = *(*(v3 - 1) + 64);
  v4 = v0 + ((v42 + 64) & ~v42);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);
  v6(v4, AssociatedTypeWitness);
  v6(v4 + v3[9], AssociatedTypeWitness);
  v7 = v4 + v3[10];
  v8 = swift_getAssociatedTypeWitness();
  (*(*(v8 - 8) + 8))(v7, v8);
  v43 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FileItemVersion();
  v10 = *(v7 + v9[13]);

  (*(*(v43 - 8) + 8))(v7 + v9[14], v43);
  v11 = *(v7 + v9[15]);

  v12 = *(v7 + v9[16] + 8);

  v13 = *(v4 + v3[11] + 8);

  v14 = v4 + v3[12];
  v15 = type metadata accessor for ItemMetadata();
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(v14 + v16, v17);
  v19(v14 + v15[8], v17);
  v20 = *(v14 + v15[14] + 8);

  v21 = v15[30];
  if (!(*(v18 + 48))(v14 + v21, 1, v17))
  {
    v19(v14 + v21, v17);
  }

  v22 = *(v14 + v15[31]);

  v23 = *(v14 + v15[33]);

  v24 = (v14 + v15[34]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_1CEFE4714(*v24, v25);
  }

  v26 = *(v14 + v15[38] + 8);

  v27 = v4 + v3[13];
  v28 = *(v27 + 16);
  if (v28 != 1)
  {

    v29 = *(v27 + 48);

    v30 = *(v27 + 64);

    v31 = *(v27 + 88);

    v32 = *(v27 + 120);

    v33 = *(v27 + 136);

    v34 = *(v27 + 152);

    v35 = *(v27 + 168);

    v36 = *(v27 + 184);

    if (*(v27 + 192))
    {

      v37 = *(v27 + 200);
    }

    v38 = *(v27 + 224);

    v39 = *(v27 + 240);
  }

  sub_1CF07638C(*(v4 + v3[17]), *(v4 + v3[17] + 8));
  return swift_deallocObject();
}

uint64_t sub_1CF0A683C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A6874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A693C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CF0A69B0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A69E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A6A28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A6A64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A6A9C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A6AD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v36 = *(*(v1 - 1) + 80);
  v35 = *(*(v1 - 1) + 64);

  v2 = (v0 + ((v36 + 32) & ~v36));
  v3 = v2[8];

  v4 = v2[12];

  v5 = v2[13];

  v6 = v2[15];

  v7 = v2[17];

  v8 = v2 + v1[12];
  v9 = type metadata accessor for ItemMetadata();
  v10 = v9[7];
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(&v8[v10], v11);
  v13(&v8[v9[8]], v11);
  v14 = *&v8[v9[14] + 8];

  v15 = v9[30];
  if (!(*(v12 + 48))(&v8[v15], 1, v11))
  {
    v13(&v8[v15], v11);
  }

  v16 = *&v8[v9[31]];

  v17 = *&v8[v9[33]];

  v18 = &v8[v9[34]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1CEFE4714(*v18, v19);
  }

  v20 = *&v8[v9[38] + 8];

  v21 = v2 + v1[13];
  v22 = *(v21 + 2);
  if (v22 != 1)
  {

    v23 = *(v21 + 6);

    v24 = *(v21 + 8);

    v25 = *(v21 + 11);

    v26 = *(v21 + 15);

    v27 = *(v21 + 17);

    v28 = *(v21 + 19);

    v29 = *(v21 + 21);

    v30 = *(v21 + 23);

    if (*(v21 + 24))
    {

      v31 = *(v21 + 25);
    }

    v32 = *(v21 + 28);

    v33 = *(v21 + 30);
  }

  sub_1CF07638C(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF0A6D98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0A6E80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A6EBC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 3);

  v9 = *(v0 + 4);

  v10 = *(v0 + 6);

  v11 = *(v2 + 8);
  v11(&v0[v5], v1);
  v11(&v0[v6], v1);
  v12 = *&v0[v7];

  v13 = &v0[(((((v7 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8];
  if (*v13)
  {
    v14 = *(v13 + 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A7000()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0A7050()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1CF0A70C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7124()
{
  sub_1CEFE4714(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0A717C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

BOOL sub_1CF0A733C(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1CF06EE80(*a1, *a2);
}

uint64_t sub_1CF0A7350(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF5AF91C(*v1);
}

uint64_t sub_1CF0A7370(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1CF0BA820(a1, *v2);
}

uint64_t sub_1CF0A737C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF1FEF68(*v1);
}

uint64_t sub_1CF0A73C8(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_1CF0A73A0(a1);
}

uint64_t sub_1CF0A73E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF735448(a1, a2);
  *a4 = result & 1;
  return result;
}

void sub_1CF0A749C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr))
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1CF742834(a1, a2, a3, a4, a5, a6, a7);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF0A750C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A7558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5D98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CF0A7624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5D98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CF0A76DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7724()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7770()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7890()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A78C8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7920()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7968()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A79A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  return swift_deallocObject();
}

uint64_t sub_1CF0A7A38()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0A7A88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  v11 = v0[13];

  v12 = v0[14];

  v13 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1CF0A7C14()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7C4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7C9C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7CEC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0A7D3C()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A7D7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1CF0A7DB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1CF0A7DE8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7E40()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7E88()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7EE8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A7F24()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 3);

  sub_1CEFD0A98(*(v0 + 4));
  v6 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A800C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A80D8()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8150()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A822C()
{
  sub_1CEFD0A98(*(v0 + 16));
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0A850C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A85F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A8634()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8670()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A86B0()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v4);

  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A87E0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = (v0 + v3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if (!(*(*(v8 - 1) + 48))(v0 + v3, 1, v8))
  {
    v49 = v4;
    v50 = (v2 + 32) & ~v2;
    v9 = v7[8];

    v10 = v7[12];

    v11 = v7[13];

    v12 = v7[15];

    v13 = v7[17];

    v14 = v7 + v8[12];
    v15 = type metadata accessor for ItemMetadata();
    v16 = v15[7];
    v17 = sub_1CF9E5CF8();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(&v14[v16], v17);
    v19(&v14[v15[8]], v17);
    v20 = *&v14[v15[14] + 8];

    v21 = v15[30];
    if (!(*(v18 + 48))(&v14[v21], 1, v17))
    {
      v19(&v14[v21], v17);
    }

    v22 = *&v14[v15[31]];

    v23 = *&v14[v15[33]];

    v24 = &v14[v15[34]];
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1CEFE4714(*v24, v25);
    }

    v26 = *&v14[v15[38] + 8];

    v27 = v7 + v8[13];
    v28 = *(v27 + 2);
    v4 = v49;
    if (v28 != 1)
    {

      v29 = *(v27 + 6);

      v30 = *(v27 + 8);

      v31 = *(v27 + 11);

      v32 = *(v27 + 15);

      v33 = *(v27 + 17);

      v34 = *(v27 + 19);

      v35 = *(v27 + 21);

      v36 = *(v27 + 23);

      if (*(v27 + 24))
      {

        v37 = *(v27 + 25);
      }

      v38 = *(v27 + 28);

      v39 = *(v27 + 30);
    }

    sub_1CF07638C(*(v7 + v8[17]), *(v7 + v8[17] + 8));
    v3 = v50;
  }

  v40 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (((v42 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = *(v0 + v40);

  v46 = *(v0 + v43 + 8);

  v47 = *(v0 + v44);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8B5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8B94()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8BE4()
{
  v1 = v0[2];

  if (v0[13])
  {
    v2 = v0[9];

    v3 = v0[13];

    v4 = v0[14];

    v5 = v0[16];
  }

  v6 = v0[17];

  v7 = v0[19];
  swift_unknownObjectRelease();
  v8 = v0[21];

  return swift_deallocObject();
}

uint64_t sub_1CF0A8C6C()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF7B9940(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  v6 = *(v0 + v5);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8D88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A8DC0()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8DF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8E38()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8F18()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v4);

  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9068()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A90A0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A90D8()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9190()
{
  v1 = *(v0 + 16);

  sub_1CEFE4714(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0A91E0()
{
  sub_1CEFE4714(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

id sub_1CF0A93DC()
{
  v1 = [*v0 lastError];

  return v1;
}

id sub_1CF0A943C()
{
  v1 = [*v0 userVersion];

  return v1;
}

uint64_t sub_1CF0A94BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A94F4()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A952C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0A956C()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9648()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_1CF9E6068();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9748()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v4);

  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9890()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0A98D0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CF0A997C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CF0A9A0C()
{
  v1 = *(v0 + 56);
  if (v1 > 0xC)
  {
    if (*(v0 + 56) > 0xEu)
    {
      if (v1 != 15)
      {
        if (v1 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v1 != 13 && v1 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_17;
  }

  if (*(v0 + 56) <= 2u)
  {
    if (v1 != 1 && v1 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    v2 = *(v0 + 24);

    goto LABEL_17;
  }

  if (v1 == 3 || v1 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF0A9EC8()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9F00()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9FEC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AA024()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v6 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA0F4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0AA204()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_1CF9E6068();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA31C()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  v8 = sub_1CF9E6068();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  v9 = *(v0 + v3 + 8);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA4BC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA594()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA638()
{
  sub_1CEFD0994(*(v0 + 16), *(v0 + 24), *(v0 + 25));

  return swift_deallocObject();
}

uint64_t sub_1CF0AA680()
{
  sub_1CEFD0A98(*(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA6E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA7A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CF9E5D98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1CF9E5CF8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF0AA91C()
{
  _Block_release(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF0AAA18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0AAB48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0AAB90()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0AABE4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0AAC38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0AAC74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  sub_1CF8E3958(v0);

  return swift_deallocObject();
}

uint64_t sub_1CF0AACCC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0AADFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CF343AC4();
  *a2 = result;
  return result;
}

uint64_t sub_1CF0AAE28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CF343AD8();
}

__n128 sub_1CF0AAE5C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0AAE68()
{
  v1 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = sub_1CF9E5D98();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = v1[5];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[6];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  v11 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v1[7]);

  v13 = *(v4 + v1[8]);

  v14 = *(v4 + v1[9]);

  v9(v4 + v1[13], v7);
  v15 = *(v0 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB088()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for ChangeEnumeratorAnchor();
    if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
    {
      v6 = sub_1CF9E5D98();
      (*(*(v6 - 8) + 8))(v0 + v2, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AB1EC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB288()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB2E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0AB338()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0AB390()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0AB3D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB430()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1CEFD0994(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  if (*(v0 + 168))
  {
    v3 = *(v0 + 136);

    v4 = *(v0 + 168);

    v5 = *(v0 + 176);

    v6 = *(v0 + 192);
  }

  sub_1CF03D7A8(*(v0 + 208), *(v0 + 216), *(v0 + 224));
  v7 = *(v0 + 256);
  if (v7 >> 60 != 15 && (v7 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 248), v7);
  }

  if (*(v0 + 360) != 1)
  {
    sub_1CEFE4714(*(v0 + 344), *(v0 + 352));
    v9 = *(v0 + 360);

    sub_1CEFE4714(*(v0 + 368), *(v0 + 376));
    v10 = *(v0 + 384);

    v11 = *(v0 + 400);
  }

  sub_1CF03D7A8(*(v0 + 416), *(v0 + 424), *(v0 + 432));
  v12 = *(v0 + 464);
  if (v12 >> 60 != 15 && (v12 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 456), v12);
  }

  v13 = *(v0 + 528);

  v14 = *(v0 + 592);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB598()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB62C()
{
  v1 = v0[2];

  sub_1CEFD0A98(v0[5]);
  v2 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF0AB678()
{
  v1 = type metadata accessor for VFSItem(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v45 = *(v2 - 8);
  v46 = v2;
  v40 = *(v45 + 80);
  v44 = *(v45 + 64);
  v42 = (v43 + 16) & ~v43;
  v3 = v0 + v42;
  v4 = *(v0 + v42 + 40);

  v5 = v0 + v42 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32) && !(*(v45 + 48))(v3 + v31, 1, v46))
  {
    (*(v45 + 8))(v3 + v31, v46);
  }

  v33 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + v33));
  v37 = *(v0 + v34 + 8);

  v38 = *(v0 + v35);

  (*(v45 + 8))(v0 + ((v40 + v36 + 8) & ~v40), v46);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABA58()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0ABA98()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABB6C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABC48()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v44 = *(*(v6 - 1) + 80);
  v42 = *(*(v6 - 1) + 64);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v5);

  v43 = (v5 + v44 + 8) & ~v44;
  v9 = v0 + v43;

  sub_1CEFE4714(*(v9 + 16), *(v9 + 24));
  v10 = *(v0 + v43 + 32);

  sub_1CEFE4714(*(v9 + 40), *(v9 + 48));
  v11 = *(v0 + v43 + 56);

  v12 = *(v0 + v43 + 72);

  v13 = *(v0 + v43 + 88);

  v14 = v0 + v43 + v6[12];
  v15 = type metadata accessor for ItemMetadata();
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(v14 + v16, v17);
  v19(v14 + v15[8], v17);
  v20 = *(v14 + v15[14] + 8);

  v21 = v15[30];
  if (!(*(v18 + 48))(v14 + v21, 1, v17))
  {
    v19(v14 + v21, v17);
  }

  v22 = *(v14 + v15[31]);

  v23 = *(v14 + v15[33]);

  v24 = (v14 + v15[34]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_1CEFE4714(*v24, v25);
  }

  v26 = *(v14 + v15[38] + 8);

  v27 = v9 + v6[13];
  v28 = *(v27 + 16);
  if (v28 != 1)
  {

    v29 = *(v27 + 48);

    v30 = *(v27 + 64);

    v31 = *(v27 + 88);

    v32 = *(v27 + 120);

    v33 = *(v27 + 136);

    v34 = *(v27 + 152);

    v35 = *(v27 + 168);

    v36 = *(v27 + 184);

    if (*(v27 + 192))
    {

      v37 = *(v27 + 200);
    }

    v38 = *(v27 + 224);

    v39 = *(v27 + 240);
  }

  sub_1CF07638C(*(v9 + v6[17]), *(v9 + v6[17] + 8));
  v40 = *(v0 + ((v42 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABFE8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v47 = *(*(v8 - 1) + 80);
  v45 = *(*(v8 - 1) + 64);
  v9 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);

  v11 = *(v0 + v7);

  v46 = (v47 + v7 + 8) & ~v47;
  v12 = v0 + v46;

  sub_1CEFE4714(*(v12 + 16), *(v12 + 24));
  v13 = *(v0 + v46 + 32);

  sub_1CEFE4714(*(v12 + 40), *(v12 + 48));
  v14 = *(v0 + v46 + 56);

  v15 = *(v0 + v46 + 72);

  v16 = *(v0 + v46 + 88);

  v17 = v0 + v46 + v8[12];
  v18 = type metadata accessor for ItemMetadata();
  v19 = v18[7];
  v20 = sub_1CF9E5CF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v22(v17 + v19, v20);
  v22(v17 + v18[8], v20);
  v23 = *(v17 + v18[14] + 8);

  v24 = v18[30];
  if (!(*(v21 + 48))(v17 + v24, 1, v20))
  {
    v22(v17 + v24, v20);
  }

  v25 = *(v17 + v18[31]);

  v26 = *(v17 + v18[33]);

  v27 = (v17 + v18[34]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_1CEFE4714(*v27, v28);
  }

  v29 = *(v17 + v18[38] + 8);

  v30 = v12 + v8[13];
  v31 = *(v30 + 16);
  if (v31 != 1)
  {

    v32 = *(v30 + 48);

    v33 = *(v30 + 64);

    v34 = *(v30 + 88);

    v35 = *(v30 + 120);

    v36 = *(v30 + 136);

    v37 = *(v30 + 152);

    v38 = *(v30 + 168);

    v39 = *(v30 + 184);

    if (*(v30 + 192))
    {

      v40 = *(v30 + 200);
    }

    v41 = *(v30 + 224);

    v42 = *(v30 + 240);
  }

  sub_1CF07638C(*(v12 + v8[17]), *(v12 + v8[17] + 8));
  v43 = *(v0 + ((v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AC3C0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AC408()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;

  v6 = v1[7];
  v7 = sub_1CF9E5A58();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = *(v0 + v4);

  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0AC52C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 16) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v52 = *(*(v53 - 1) + 80);
  v50 = *(*(v53 - 1) + 64);
  v10 = *(v0 + 16);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v12 = *(v0 + v6 + 8);

  v11(v0 + v7, v1);
  v13 = *(v0 + v8);

  v14 = *(v0 + v9);

  v51 = (v52 + v9 + 8) & ~v52;
  v15 = v0 + v51;

  sub_1CEFE4714(*(v15 + 16), *(v15 + 24));
  v16 = *(v0 + v51 + 32);

  sub_1CEFE4714(*(v15 + 40), *(v15 + 48));
  v17 = *(v0 + v51 + 56);

  v18 = *(v0 + v51 + 72);

  v19 = *(v0 + v51 + 88);

  v20 = v0 + v51 + v53[12];
  v21 = type metadata accessor for ItemMetadata();
  v22 = v21[7];
  v23 = sub_1CF9E5CF8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v25(v20 + v22, v23);
  v25(v20 + v21[8], v23);
  v26 = *(v20 + v21[14] + 8);

  v27 = v21[30];
  if (!(*(v24 + 48))(v20 + v27, 1, v23))
  {
    v25(v20 + v27, v23);
  }

  v28 = *(v20 + v21[31]);

  v29 = *(v20 + v21[33]);

  v30 = (v20 + v21[34]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_1CEFE4714(*v30, v31);
  }

  v32 = *(v20 + v21[38] + 8);

  v33 = v15 + v53[13];
  v34 = *(v33 + 16);
  if (v34 != 1)
  {

    v35 = *(v33 + 48);

    v36 = *(v33 + 64);

    v37 = *(v33 + 88);

    v38 = *(v33 + 120);

    v39 = *(v33 + 136);

    v40 = *(v33 + 152);

    v41 = *(v33 + 168);

    v42 = *(v33 + 184);

    if (*(v33 + 192))
    {

      v43 = *(v33 + 200);
    }

    v44 = *(v33 + 224);

    v45 = *(v33 + 240);
  }

  v46 = (v50 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF07638C(*(v15 + v53[17]), *(v15 + v53[17] + 8));
  v47 = *(v0 + v46 + 8);

  v48 = *(v0 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AC940()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 24);

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ACA2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0ACA74()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0ACB78()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  if (*(v0 + 112) != 1)
  {
    sub_1CEFE4714(*(v0 + 96), *(v0 + 104));
    v7 = *(v0 + 112);

    sub_1CEFE4714(*(v0 + 120), *(v0 + 128));
    v8 = *(v0 + 136);

    v9 = *(v0 + 152);
  }

  sub_1CF03D7A8(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  v10 = *(v0 + 216);
  if (v10 >> 60 != 15 && (v10 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 208), v10);
  }

  if (*(v0 + 376))
  {
    v12 = *(v0 + 344);

    v13 = *(v0 + 376);

    v14 = *(v0 + 384);

    v15 = *(v0 + 400);
  }

  sub_1CF03D7A8(*(v0 + 416), *(v0 + 424), *(v0 + 432));
  v16 = *(v0 + 464);
  if (v16 >> 60 != 15 && (v16 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 456), v16);
  }

  v17 = (v3 + 584) & ~v3;
  v18 = (v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;

  v20 = *(v0 + 528);

  (*(v2 + 8))(v0 + v17, v1);

  v21 = *(v0 + v19 + 8);

  sub_1CEFD0A98(*(v0 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0ACD64()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

  sub_1CEFD0A98(*(v0 + 7));
  v7 = *(v0 + 9);

  (*(v2 + 8))(&v0[v3], v1);
  v8 = *&v0[v4];

  return swift_deallocObject();
}

uint64_t sub_1CF0ACE6C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  sub_1CEFD0A98(*(v0 + 5));
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v3], v1);
  v8 = *&v0[v4 + 8];

  v9 = *&v0[v5];

  return swift_deallocObject();
}

uint64_t sub_1CF0ACF80()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4 + 8);

  v10 = *(v0 + v5);

  sub_1CEFD0A98(*(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD0A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  sub_1CEFD0A98(*(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD108()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + 56));
  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1CF0AD168()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  if (*(v0 + 96) != 1)
  {
    sub_1CEFE4714(*(v0 + 80), *(v0 + 88));
    v6 = *(v0 + 96);

    sub_1CEFE4714(*(v0 + 104), *(v0 + 112));
    v7 = *(v0 + 120);

    v8 = *(v0 + 136);
  }

  sub_1CF03D7A8(*(v0 + 152), *(v0 + 160), *(v0 + 168));
  v9 = *(v0 + 200);
  if (v9 >> 60 != 15 && (v9 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 192), v9);
  }

  if (*(v0 + 360))
  {
    v11 = *(v0 + 328);

    v12 = *(v0 + 360);

    v13 = *(v0 + 368);

    v14 = *(v0 + 384);
  }

  sub_1CF03D7A8(*(v0 + 400), *(v0 + 408), *(v0 + 416));
  v15 = *(v0 + 448);
  if (v15 >> 60 != 15 && (v15 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 440), v15);
  }

  v16 = (v3 + 568) & ~v3;
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;

  v20 = *(v0 + 512);

  (*(v2 + 8))(v0 + v16, v1);
  v21 = *(v0 + v17 + 8);

  v22 = *(v0 + v19 + 8);

  sub_1CEFD0A98(*(v0 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD368()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v5);

  v10 = *(v0 + v6 + 8);

  sub_1CEFD0A98(*(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD494()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_1CEFD0A98(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD4F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0AD544()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4 + 8);

  v9 = *(v0 + v5 + 8);

  sub_1CEFD0A98(*(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD664()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4 + 8);

  v10 = *(v0 + v5 + 8);

  sub_1CEFD0A98(*(v0 + v6));
  v11 = *(v0 + v7 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AD7A8()
{
  v1 = type metadata accessor for VFSItem(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v42 = (v43 + 16) & ~v43;
  v2 = v0 + v42;
  v3 = *(v0 + v42 + 40);

  v4 = v0 + v42 + v1[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v2 + v1[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v1[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v2 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v2 + v30, 1, v32))
    {
      (*(v33 + 8))(v2 + v30, v32);
    }
  }

  v34 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v34 + 8);

  v38 = *(v0 + v35);

  sub_1CEFD0A98(*(v0 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)));
  v39 = *(v0 + v36);

  return swift_deallocObject();
}

uint64_t sub_1CF0ADB70()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ADC4C()
{
  v1 = type metadata accessor for VFSItem(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v42 = (v43 + 16) & ~v43;
  v2 = v0 + v42;
  v3 = *(v0 + v42 + 40);

  v4 = v0 + v42 + v1[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v2 + v1[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v1[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v2 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v2 + v30, 1, v32))
    {
      (*(v33 + 8))(v2 + v30, v32);
    }
  }

  v34 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v34 + 8);

  sub_1CEFD0A98(*(v0 + v35));
  v38 = *(v0 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));

  v39 = *(v0 + v36);

  return swift_deallocObject();
}

uint64_t sub_1CF0ADFF8()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_1CEFD0A98(*(v0 + 64));

  v5 = v0 + ((v39 + 88) & ~v39);
  v6 = *(v5 + 40);

  v7 = v5 + v1[7];
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v12(v7 + v8[8], v10);
  v13 = *(v7 + v8[14] + 8);

  v14 = v8[30];
  if (!(*(v11 + 48))(v7 + v14, 1, v10))
  {
    v12(v7 + v14, v10);
  }

  v15 = *(v7 + v8[31]);

  v16 = *(v7 + v8[33]);

  v17 = (v7 + v8[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *(v7 + v8[38] + 8);

  v20 = v5 + v1[8];
  v21 = *(v20 + 16);
  if (v21 != 1)
  {

    v22 = *(v20 + 48);

    v23 = *(v20 + 64);

    v24 = *(v20 + 88);

    v25 = *(v20 + 120);

    v26 = *(v20 + 136);

    v27 = *(v20 + 152);

    v28 = *(v20 + 168);

    v29 = *(v20 + 184);

    if (*(v20 + 192))
    {

      v30 = *(v20 + 200);
    }

    v31 = *(v20 + 224);

    v32 = *(v20 + 240);
  }

  v33 = v1[12];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v34 - 8) + 48))(v5 + v33, 1, v34))
  {
    v35 = sub_1CF9E5A58();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v5 + v33, 1, v35))
    {
      (*(v36 + 8))(v5 + v33, v35);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AE374()
{
  v1 = *(v0 + 16);

  sub_1CEFD0A98(*(v0 + 40));
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0AE3CC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0AE4CC()
{
  sub_1CEFD0A98(v0[2]);
  v1 = v0[3];

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF0AE514()
{
  v1 = v0[2];

  v2 = v0[5];

  sub_1CEFD0A98(v0[6]);

  return swift_deallocObject();
}

uint64_t sub_1CF0AE55C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1CF0AE5E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0AE630()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);

  v4 = *(v0 + 24);

  v5 = v0 + ((v2 + 32) & ~v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {

          v44 = *(v5 + 8);
          goto LABEL_99;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_100;
        }
      }

      v44 = *v5;
LABEL_99:

      goto LABEL_100;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_100;
        }

        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
        v8 = v5 + v7[12];
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
        {
          v242 = v7;

          sub_1CEFE4714(*(v8 + 16), *(v8 + 24));
          v10 = *(v8 + 32);

          sub_1CEFE4714(*(v8 + 40), *(v8 + 48));
          v11 = *(v8 + 56);

          v12 = *(v8 + 72);

          v13 = *(v8 + 88);

          v14 = v8 + v9[12];
          v15 = type metadata accessor for ItemMetadata();
          v230 = v15[7];
          v16 = sub_1CF9E5CF8();
          v17 = *(v16 - 8);
          v18 = *(v17 + 8);
          v18(v14 + v230, v16);
          v231 = v18;
          v18(v14 + v15[8], v16);
          v19 = *(v14 + v15[14] + 8);

          v20 = v15[30];
          if (!(*(v17 + 48))(v14 + v20, 1, v16))
          {
            v231(v14 + v20, v16);
          }

          v21 = *(v14 + v15[31]);

          v22 = *(v14 + v15[33]);

          v23 = (v14 + v15[34]);
          v24 = v23[1];
          if (v24 >> 60 != 15)
          {
            sub_1CEFE4714(*v23, v24);
          }

          v25 = *(v14 + v15[38] + 8);

          v7 = v242;
          v26 = v8 + v9[13];
          v27 = *(v26 + 16);
          if (v27 != 1)
          {

            v28 = *(v26 + 48);

            v29 = *(v26 + 64);

            v30 = *(v26 + 88);

            v31 = *(v26 + 120);

            v32 = *(v26 + 136);

            v33 = *(v26 + 152);

            v34 = *(v26 + 168);

            v35 = *(v26 + 184);

            if (*(v26 + 192))
            {

              v36 = *(v26 + 200);
            }

            v37 = *(v26 + 224);

            v38 = *(v26 + 240);
          }

          sub_1CF07638C(*(v8 + v9[17]), *(v8 + v9[17] + 8));
        }

        v39 = (v5 + v7[20]);
        if (v39[8])
        {
          v40 = v39[4];

          v41 = v39[8];

          v42 = v39[9];

          v43 = v39[11];
        }

        v44 = *(v5 + v7[32]);
        goto LABEL_99;
      }

      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v174 = v5 + *(v173 + 48);
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if ((*(*(v195 - 8) + 48))(v174, 1, v195))
      {
        goto LABEL_94;
      }

      v244 = v173;

      sub_1CEFE4714(*(v174 + 16), *(v174 + 24));
      v196 = *(v174 + 32);

      sub_1CEFE4714(*(v174 + 40), *(v174 + 48));
      v197 = *(v174 + 56);

      v198 = *(v174 + 72);

      v199 = *(v174 + 88);

      v241 = v195;
      v200 = v174 + *(v195 + 48);
      v201 = type metadata accessor for ItemMetadata();
      v237 = v201[7];
      v202 = sub_1CF9E5CF8();
      v203 = *(v202 - 8);
      v204 = *(v203 + 8);
      v204(v200 + v237, v202);
      v238 = v204;
      v204(v200 + v201[8], v202);
      v205 = *(v200 + v201[14] + 8);

      v206 = v201[30];
      if (!(*(v203 + 48))(v200 + v206, 1, v202))
      {
        v238(v200 + v206, v202);
      }

      v207 = *(v200 + v201[31]);

      v208 = *(v200 + v201[33]);

      v209 = (v200 + v201[34]);
      v210 = v209[1];
      if (v210 >> 60 != 15)
      {
        sub_1CEFE4714(*v209, v210);
      }

      v211 = *(v200 + v201[38] + 8);

      v194 = v241;
      goto LABEL_89;
    }

    if (EnumCaseMultiPayload == 2)
    {

      if (*(v5 + 88))
      {
        v225 = *(v5 + 56);

        v226 = *(v5 + 88);

        v227 = *(v5 + 96);

        v228 = *(v5 + 112);
      }

      v44 = *(v5 + 128);
      goto LABEL_99;
    }

    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
    v118 = v5 + *(v117 + 48);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (!(*(*(v119 - 8) + 48))(v118, 1, v119))
    {
      v243 = v117;

      sub_1CEFE4714(*(v118 + 16), *(v118 + 24));
      v120 = *(v118 + 32);

      sub_1CEFE4714(*(v118 + 40), *(v118 + 48));
      v121 = *(v118 + 56);

      v122 = *(v118 + 72);

      v123 = *(v118 + 88);

      v240 = v119;
      v124 = v118 + *(v119 + 48);
      v125 = type metadata accessor for ItemMetadata();
      v233 = v125[7];
      v126 = sub_1CF9E5CF8();
      v127 = *(v126 - 8);
      v128 = *(v127 + 8);
      v128(v124 + v233, v126);
      v234 = v128;
      v128(v124 + v125[8], v126);
      v129 = *(v124 + v125[14] + 8);

      v130 = v125[30];
      if (!(*(v127 + 48))(v124 + v130, 1, v126))
      {
        v234(v124 + v130, v126);
      }

      v131 = *(v124 + v125[31]);

      v132 = *(v124 + v125[33]);

      v133 = (v124 + v125[34]);
      v134 = v133[1];
      if (v134 >> 60 != 15)
      {
        sub_1CEFE4714(*v133, v134);
      }

      v135 = *(v124 + v125[38] + 8);

      v136 = v240;
LABEL_71:
      v159 = v118 + *(v136 + 52);
      v160 = *(v159 + 16);
      v117 = v243;
      if (v160 != 1)
      {

        v161 = *(v159 + 48);

        v162 = *(v159 + 64);

        v163 = *(v159 + 88);

        v164 = *(v159 + 120);

        v165 = *(v159 + 136);

        v166 = *(v159 + 152);

        v167 = *(v159 + 168);

        v168 = *(v159 + 184);

        if (*(v159 + 192))
        {

          v169 = *(v159 + 200);
        }

        v170 = *(v159 + 224);

        v171 = *(v159 + 240);
      }

      sub_1CF07638C(*(v118 + *(v136 + 68)), *(v118 + *(v136 + 68) + 8));
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v45 = swift_getEnumCaseMultiPayload();
  if (v45 <= 1)
  {
    if (v45)
    {
      if (v45 != 1)
      {
        goto LABEL_100;
      }

      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
      v80 = (v5 + v79[12]);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
      {
        v82 = v80[8];

        v83 = v80[12];

        v84 = v80[13];

        v85 = v80[15];

        v86 = v80[17];

        v232 = v81;
        v239 = v80;
        v87 = v80 + *(v81 + 48);
        v88 = type metadata accessor for ItemMetadata();
        v89 = v88[7];
        v90 = sub_1CF9E5CF8();
        v91 = *(v90 - 8);
        v92 = *(v91 + 8);
        v92(&v87[v89], v90);
        v92(&v87[v88[8]], v90);
        v93 = *&v87[v88[14] + 8];

        v94 = v88[30];
        if (!(*(v91 + 48))(&v87[v94], 1, v90))
        {
          v92(&v87[v94], v90);
        }

        v95 = *&v87[v88[31]];

        v96 = *&v87[v88[33]];

        v97 = &v87[v88[34]];
        v98 = v97[1];
        if (v98 >> 60 != 15)
        {
          sub_1CEFE4714(*v97, v98);
        }

        v99 = *&v87[v88[38] + 8];

        v100 = v239 + *(v232 + 52);
        v101 = *(v100 + 2);
        if (v101 != 1)
        {

          v102 = *(v100 + 6);

          v103 = *(v100 + 8);

          v104 = *(v100 + 11);

          v105 = *(v100 + 15);

          v106 = *(v100 + 17);

          v107 = *(v100 + 19);

          v108 = *(v100 + 21);

          v109 = *(v100 + 23);

          if (*(v100 + 24))
          {

            v110 = *(v100 + 25);
          }

          v111 = *(v100 + 28);

          v112 = *(v100 + 30);
        }

        sub_1CF07638C(*(v239 + *(v232 + 68)), *(v239 + *(v232 + 68) + 8));
      }

      v113 = (v5 + v79[20]);
      if (v113[2] != 1)
      {
        sub_1CEFE4714(*v113, v113[1]);
        v114 = v113[2];

        sub_1CEFE4714(v113[3], v113[4]);
        v115 = v113[5];

        v116 = v113[7];
      }

      v44 = *(v5 + v79[32]);
      goto LABEL_99;
    }

    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
    v174 = v5 + *(v173 + 48);
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    if ((*(*(v175 - 8) + 48))(v174, 1, v175))
    {
      goto LABEL_94;
    }

    v244 = v173;
    v176 = *(v174 + 64);

    v177 = *(v174 + 96);

    v178 = *(v174 + 104);

    v179 = *(v174 + 120);

    v180 = *(v174 + 136);

    v236 = v175;
    v181 = v174 + *(v175 + 48);
    v182 = type metadata accessor for ItemMetadata();
    v183 = v182[7];
    v184 = sub_1CF9E5CF8();
    v185 = *(v184 - 8);
    v186 = *(v185 + 8);
    v186(v181 + v183, v184);
    v186(v181 + v182[8], v184);
    v187 = *(v181 + v182[14] + 8);

    v188 = v182[30];
    if (!(*(v185 + 48))(v181 + v188, 1, v184))
    {
      v186(v181 + v188, v184);
    }

    v189 = *(v181 + v182[31]);

    v190 = *(v181 + v182[33]);

    v191 = (v181 + v182[34]);
    v192 = v191[1];
    if (v192 >> 60 != 15)
    {
      sub_1CEFE4714(*v191, v192);
    }

    v193 = *(v181 + v182[38] + 8);

    v194 = v236;
LABEL_89:
    v212 = v174 + *(v194 + 52);
    v213 = *(v212 + 16);
    v173 = v244;
    if (v213 != 1)
    {

      v214 = *(v212 + 48);

      v215 = *(v212 + 64);

      v216 = *(v212 + 88);

      v217 = *(v212 + 120);

      v218 = *(v212 + 136);

      v219 = *(v212 + 152);

      v220 = *(v212 + 168);

      v221 = *(v212 + 184);

      if (*(v212 + 192))
      {

        v222 = *(v212 + 200);
      }

      v223 = *(v212 + 224);

      v224 = *(v212 + 240);
    }

    sub_1CF07638C(*(v174 + *(v194 + 68)), *(v174 + *(v194 + 68) + 8));
LABEL_94:
    v44 = *(v5 + *(v173 + 80));
    goto LABEL_99;
  }

  switch(v45)
  {
    case 2:

      if (*(v5 + 40) != 1)
      {
        sub_1CEFE4714(*(v5 + 24), *(v5 + 32));
        v137 = *(v5 + 40);

        sub_1CEFE4714(*(v5 + 48), *(v5 + 56));
        v138 = *(v5 + 64);

        v139 = *(v5 + 80);
      }

      v44 = *(v5 + 96);
      goto LABEL_99;
    case 3:
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
      v118 = v5 + *(v117 + 48);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      if (!(*(*(v140 - 8) + 48))(v118, 1, v140))
      {
        v243 = v117;
        v141 = *(v118 + 64);

        v142 = *(v118 + 96);

        v143 = *(v118 + 104);

        v144 = *(v118 + 120);

        v145 = *(v118 + 136);

        v235 = v140;
        v146 = v118 + *(v140 + 48);
        v147 = type metadata accessor for ItemMetadata();
        v148 = v147[7];
        v149 = sub_1CF9E5CF8();
        v150 = *(v149 - 8);
        v151 = *(v150 + 8);
        v151(v146 + v148, v149);
        v151(v146 + v147[8], v149);
        v152 = *(v146 + v147[14] + 8);

        v153 = v147[30];
        if (!(*(v150 + 48))(v146 + v153, 1, v149))
        {
          v151(v146 + v153, v149);
        }

        v154 = *(v146 + v147[31]);

        v155 = *(v146 + v147[33]);

        v156 = (v146 + v147[34]);
        v157 = v156[1];
        if (v157 >> 60 != 15)
        {
          sub_1CEFE4714(*v156, v157);
        }

        v158 = *(v146 + v147[38] + 8);

        v136 = v235;
        goto LABEL_71;
      }

LABEL_76:
      v172 = *(v5 + *(v117 + 64) + 8);

      break;
    case 6:
      v46 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
      v47 = type metadata accessor for VFSItem(0);
      if (!(*(*(v47 - 1) + 48))(v46, 1, v47))
      {
        v48 = *(v46 + 40);

        v49 = v46 + v47[7];
        v50 = type metadata accessor for ItemMetadata();
        v51 = v50[7];
        v52 = sub_1CF9E5CF8();
        v53 = *(v52 - 8);
        v54 = *(v53 + 8);
        v54(v49 + v51, v52);
        v54(v49 + v50[8], v52);
        v55 = *(v49 + v50[14] + 8);

        v56 = v50[30];
        if (!(*(v53 + 48))(v49 + v56, 1, v52))
        {
          v54(v49 + v56, v52);
        }

        v57 = *(v49 + v50[31]);

        v58 = *(v49 + v50[33]);

        v59 = (v49 + v50[34]);
        v60 = v59[1];
        if (v60 >> 60 != 15)
        {
          sub_1CEFE4714(*v59, v60);
        }

        v61 = *(v49 + v50[38] + 8);

        v62 = v46 + v47[8];
        v63 = *(v62 + 16);
        if (v63 != 1)
        {

          v64 = *(v62 + 48);

          v65 = *(v62 + 64);

          v66 = *(v62 + 88);

          v67 = *(v62 + 120);

          v68 = *(v62 + 136);

          v69 = *(v62 + 152);

          v70 = *(v62 + 168);

          v71 = *(v62 + 184);

          if (*(v62 + 192))
          {

            v72 = *(v62 + 200);
          }

          v73 = *(v62 + 224);

          v74 = *(v62 + 240);
        }

        v75 = v47[12];
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
        if (!(*(*(v76 - 8) + 48))(v46 + v75, 1, v76))
        {
          v77 = sub_1CF9E5A58();
          v78 = *(v77 - 8);
          if (!(*(v78 + 48))(v46 + v75, 1, v77))
          {
            (*(v78 + 8))(v46 + v75, v77);
          }
        }
      }

      break;
  }

LABEL_100:

  return swift_deallocObject();
}

uint64_t sub_1CF0AF990()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1CF0AF9F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0AFA40()
{
  v1 = type metadata accessor for VFSItem(0);
  v46 = *(*(v1 - 1) + 80);
  v43 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v47 = *(v2 - 8);
  v48 = v2;
  v45 = *(v47 + 80);
  v42 = *(v47 + 64);
  v3 = *(v0 + 16);

  v44 = (v46 + 24) & ~v46;
  v4 = v0 + v44;
  v5 = *(v0 + v44 + 40);

  v6 = v0 + v44 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33) && !(*(v47 + 48))(v4 + v32, 1, v48))
  {
    (*(v47 + 8))(v4 + v32, v48);
  }

  v34 = (v43 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + v45 + 16) & ~v45;
  v37 = (v42 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;

  v38 = *(v0 + v35 + 8);

  (*(v47 + 8))(v0 + v36, v48);
  v39 = *(v0 + v37);

  v40 = *(v0 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0AFE4C()
{
  v1 = type metadata accessor for VFSItem(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v44 = *(v2 - 8);
  v45 = v2;
  v40 = *(v44 + 80);
  v39 = *(v44 + 64);
  v3 = *(v0 + 16);

  v42 = (v43 + 24) & ~v43;
  v4 = v0 + v42;
  v5 = *(v0 + v42 + 40);

  v6 = v0 + v42 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33) && !(*(v44 + 48))(v4 + v32, 1, v45))
  {
    (*(v44 + 8))(v4 + v32, v45);
  }

  v34 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + v40 + 16) & ~v40;

  v37 = *(v0 + v35 + 8);

  (*(v44 + 8))(v0 + v36, v45);

  return swift_deallocObject();
}