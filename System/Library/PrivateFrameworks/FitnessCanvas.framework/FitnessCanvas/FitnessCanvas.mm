void sub_1E5CDC6E8(uint64_t a1)
{
  v29 = 0;
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6370];
  v15 = *(a1 + 72);
  v16 = *(a1 + 168);
  v17 = v15;
  v18 = v16;
  v2 = sub_1E5D041A0();
  if (v3 <= 0x3F)
  {
    v30 = 0;
    v36 = v2;
    v4 = *(a1 + 64);
    v5 = *(a1 + 184);
    v6 = *(a1 + 32);
    v17 = *(a1 + 16);
    v18 = v6;
    v19 = *(a1 + 48);
    v20 = v4;
    v21 = v15;
    v7 = *(a1 + 104);
    v22 = *(a1 + 88);
    v23 = v7;
    v8 = *(a1 + 136);
    v24 = *(a1 + 120);
    v25 = v8;
    v26 = *(a1 + 152);
    v27 = v16;
    v28 = v5;
    State = type metadata accessor for CanvasLoadState(319, &v17);
    if (v10 <= 0x3F)
    {
      v31 = 0;
      v37 = State;
      v38 = &type metadata for CanvasInsetBehavior;
      sub_1E5CDC890();
      if (v12 <= 0x3F)
      {
        v32 = 0;
        v39 = v11;
        v13 = sub_1E5D03F80();
        if (v14 <= 0x3F)
        {
          v33 = 0;
          v40 = v13;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5CDC848()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E5CDC890()
{
  if (!qword_1EE2FA0D8)
  {
    v0 = sub_1E5D04620();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FA0D8);
    }
  }
}

uint64_t sub_1E5CDC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = *(a3 + 72);
    v12 = *(a3 + 168);
    v8 = sub_1E5D041A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      return (*(v9 + 48))(a1 + *(a3 + 200), a2, v8);
    }

    else
    {
      v10 = sub_1E5D03F80();
      return (*(*(v10 - 8) + 48))(a1 + *(a3 + 216), a2, v10);
    }
  }
}

uint64_t sub_1E5CDC9EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v11 = *(a4 + 72);
    v12 = *(a4 + 168);
    v8 = sub_1E5D041A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      return (*(v9 + 56))(v5 + *(a4 + 200), a2, a2, v8);
    }

    else
    {
      v10 = sub_1E5D03F80();
      return (*(*(v10 - 8) + 56))(v5 + *(a4 + 216), a2, a2, v10);
    }
  }

  return result;
}

uint64_t sub_1E5CDCBFC()
{
  v1 = sub_1E5D03F90();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 216) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 208);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5CDCCC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5CDCD08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1E5CDCD5C()
{
  v1 = *(v0 + 312);

  return swift_deallocObject();
}

uint64_t sub_1E5CDCD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    sub_1E5D04620();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
    swift_getFunctionTypeMetadata3();
    v11 = sub_1E5D03FC0();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v12 = v11;
      v13 = *(v11 - 8);
      v14 = *(a3 + 312);
    }

    else
    {
      v16 = *(a3 + 32);
      v15 = *(a3 + 40);
      swift_getFunctionTypeMetadata1();
      v17 = sub_1E5D03FC0();
      if (*(*(v17 - 8) + 84) == a2)
      {
        v12 = v17;
        v13 = *(v17 - 8);
        v14 = *(a3 + 316);
      }

      else
      {
        v18 = *(a3 + 48);
        swift_getFunctionTypeMetadata1();
        v19 = sub_1E5D03FC0();
        if (*(*(v19 - 8) + 84) == a2)
        {
          v12 = v19;
          v13 = *(v19 - 8);
          v14 = *(a3 + 320);
        }

        else
        {
          v20 = *(a3 + 56);
          swift_getFunctionTypeMetadata1();
          v21 = sub_1E5D03FC0();
          if (*(*(v21 - 8) + 84) == a2)
          {
            v12 = v21;
            v13 = *(v21 - 8);
            v14 = *(a3 + 324);
          }

          else
          {
            v22 = *(a3 + 64);
            v23 = *(a3 + 72);
            swift_getFunctionTypeMetadata1();
            v24 = sub_1E5D03FC0();
            if (*(*(v24 - 8) + 84) != a2)
            {
              v26 = *(a3 + 80);
              v27 = *(a3 + 144);
              sub_1E5D03F90();
              v37 = *(a3 + 128);
              v38 = *(a3 + 280);
              sub_1E5D041A0();
              swift_getFunctionTypeMetadata3();
              v28 = sub_1E5D03FC0();
              if (*(*(v28 - 8) + 84) == a2)
              {
                v29 = v28;
                v30 = *(v28 - 8);
                v31 = *(a3 + 332);
              }

              else
              {
                v32 = *(a3 + 104);
                v33 = *(a3 + 112);
                swift_getFunctionTypeMetadata1();
                v34 = sub_1E5D03FC0();
                if (*(*(v34 - 8) + 84) == a2)
                {
                  v29 = v34;
                  v30 = *(v34 - 8);
                  v31 = *(a3 + 336);
                }

                else
                {
                  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
                  if (*(*(v35 - 8) + 84) != a2)
                  {
                    v36 = sub_1E5D03F80();
                    return (*(*(v36 - 8) + 48))(a1 + *(a3 + 344), a2, v36);
                  }

                  v29 = v35;
                  v30 = *(v35 - 8);
                  v31 = *(a3 + 340);
                }
              }

              return (*(v30 + 48))(a1 + v31, a2, v29);
            }

            v12 = v24;
            v13 = *(v24 - 8);
            v14 = *(a3 + 328);
          }
        }
      }
    }

    v25 = *(v13 + 48);

    return v25(a1 + v14, a2, v12);
  }
}

uint64_t sub_1E5CDD1F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = *(a4 + 16);
    v9 = *(a4 + 24);
    sub_1E5D04620();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
    swift_getFunctionTypeMetadata3();
    v10 = sub_1E5D03FC0();
    if (*(*(v10 - 8) + 84) == a3)
    {
      v11 = v10;
      v12 = *(v10 - 8);
      v13 = *(a4 + 312);
    }

    else
    {
      v15 = *(a4 + 32);
      v14 = *(a4 + 40);
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5D03FC0();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v11 = v16;
        v12 = *(v16 - 8);
        v13 = *(a4 + 316);
      }

      else
      {
        v17 = *(a4 + 48);
        swift_getFunctionTypeMetadata1();
        v18 = sub_1E5D03FC0();
        if (*(*(v18 - 8) + 84) == a3)
        {
          v11 = v18;
          v12 = *(v18 - 8);
          v13 = *(a4 + 320);
        }

        else
        {
          v19 = *(a4 + 56);
          swift_getFunctionTypeMetadata1();
          v20 = sub_1E5D03FC0();
          if (*(*(v20 - 8) + 84) == a3)
          {
            v11 = v20;
            v12 = *(v20 - 8);
            v13 = *(a4 + 324);
          }

          else
          {
            v21 = *(a4 + 64);
            v22 = *(a4 + 72);
            swift_getFunctionTypeMetadata1();
            v23 = sub_1E5D03FC0();
            if (*(*(v23 - 8) + 84) != a3)
            {
              v25 = *(a4 + 80);
              v26 = *(a4 + 144);
              sub_1E5D03F90();
              v36 = *(a4 + 128);
              v37 = *(a4 + 280);
              sub_1E5D041A0();
              swift_getFunctionTypeMetadata3();
              v27 = sub_1E5D03FC0();
              if (*(*(v27 - 8) + 84) == a3)
              {
                v28 = v27;
                v29 = *(v27 - 8);
                v30 = *(a4 + 332);
              }

              else
              {
                v31 = *(a4 + 104);
                v32 = *(a4 + 112);
                swift_getFunctionTypeMetadata1();
                v33 = sub_1E5D03FC0();
                if (*(*(v33 - 8) + 84) == a3)
                {
                  v28 = v33;
                  v29 = *(v33 - 8);
                  v30 = *(a4 + 336);
                }

                else
                {
                  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
                  if (*(*(v34 - 8) + 84) != a3)
                  {
                    v35 = sub_1E5D03F80();
                    return (*(*(v35 - 8) + 56))(v5 + *(a4 + 344), a2, a2, v35);
                  }

                  v28 = v34;
                  v29 = *(v34 - 8);
                  v30 = *(a4 + 340);
                }
              }

              return (*(v29 + 56))(v5 + v30, a2, a2, v28);
            }

            v11 = v23;
            v12 = *(v23 - 8);
            v13 = *(a4 + 328);
          }
        }
      }
    }

    v24 = *(v12 + 56);

    return v24(v5 + v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5CDD64C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[8];
  v5 = a1[13];
  v6 = a1[18];
  v7 = a1[25];
  v8 = a1[32];
  v11 = *(a1 + 33);
  v12 = *(a1 + 7);
  v9 = a1[35];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = *(a1 + 9);
  v17 = *(a1 + 11);
  v18 = *(a1 + 8);
  v19 = *(a1 + 19);
  v20 = *(a1 + 21);
  v21 = *(a1 + 23);
  v22 = *(a1 + 13);
  v23 = *(a1 + 14);
  v24 = *(a1 + 15);
  sub_1E5D040D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  swift_getWitnessTable();
  sub_1E5CF3FBC();
  swift_getOpaqueTypeMetadata2();
  sub_1E5D04250();
  sub_1E5D042A0();
  sub_1E5D042A0();
  sub_1E5D04250();
  sub_1E5CF4038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5D040B0();
  sub_1E5D042A0();
  sub_1E5D04340();
  sub_1E5D041A0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5CDD9E4()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 272);
  v13 = *(v0 + 280);
  v53 = *(v0 + 16);
  v54 = v1;
  v55 = v3;
  v56 = v2;
  v57 = v5;
  v58 = v4;
  v59 = v6;
  v60 = v7;
  v61 = *(v0 + 80);
  v62 = v8;
  v63 = v9;
  v64 = *(v0 + 112);
  v65 = v10;
  v66 = v11;
  v14 = *(v0 + 160);
  v67 = *(v0 + 144);
  v68 = v14;
  v15 = *(v0 + 192);
  v69 = *(v0 + 176);
  v70 = v15;
  v16 = *(v0 + 224);
  v71 = *(v0 + 208);
  v72 = v16;
  v17 = *(v0 + 256);
  v73 = *(v0 + 240);
  v74 = v17;
  v75 = v12;
  v76 = v13;
  v77 = *(v0 + 288);
  v51 = v77;
  v18 = type metadata accessor for CanvasView(0, &v53);
  v19 = *(*(v18 - 1) + 80);
  v49 = *(*(v18 - 1) + 64);
  v53 = v10;
  v54 = v11;
  v20 = (v19 + 304) & ~v19;
  v55 = v13;
  v56 = v51;
  v52 = sub_1E5D041A0();
  v21 = *(v52 - 8);
  v22 = *(v21 + 80);
  v50 = *(v21 + 64);
  v48 = v20;
  v23 = v0 + v20;
  if (*(v23 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v24 = *(v23 + 40);

  v25 = *(v23 + 48);
  v26 = *(v23 + 56);
  v27 = *(v23 + 64);
  sub_1E5CF639C();
  v28 = v18[78];
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  v29 = sub_1E5D03FC0();
  (*(*(v29 - 8) + 8))(v23 + v28, v29);
  v30 = v18[79];
  swift_getFunctionTypeMetadata1();
  v31 = sub_1E5D03FC0();
  (*(*(v31 - 8) + 8))(v23 + v30, v31);
  v32 = v18[80];
  swift_getFunctionTypeMetadata1();
  v33 = sub_1E5D03FC0();
  (*(*(v33 - 8) + 8))(v23 + v32, v33);
  v34 = v18[81];
  swift_getFunctionTypeMetadata1();
  v35 = sub_1E5D03FC0();
  (*(*(v35 - 8) + 8))(v23 + v34, v35);
  v36 = v18[82];
  swift_getFunctionTypeMetadata1();
  v37 = sub_1E5D03FC0();
  (*(*(v37 - 8) + 8))(v23 + v36, v37);
  v38 = v18[83];
  sub_1E5D03F90();
  swift_getFunctionTypeMetadata3();
  v39 = sub_1E5D03FC0();
  (*(*(v39 - 8) + 8))(v23 + v38, v39);
  v40 = v18[84];
  swift_getFunctionTypeMetadata1();
  v41 = sub_1E5D03FC0();
  (*(*(v41 - 8) + 8))(v23 + v40, v41);
  v42 = v18[85];
  v43 = sub_1E5D04270();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v23 + v42, 1, v43))
  {
    (*(v44 + 8))(v23 + v42, v43);
  }

  v45 = v18[86];
  v46 = sub_1E5D03F80();
  (*(*(v46 - 8) + 8))(v23 + v45, v46);
  (*(v21 + 8))(v0 + ((v48 + v49 + v22) & ~v22), v52);
  return swift_deallocObject();
}

uint64_t sub_1E5CDDFEC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E5CDE074()
{
  v1 = v0[2];
  v15[0] = v0[1];
  v15[1] = v1;
  v2 = v0[4];
  v15[2] = v0[3];
  v15[3] = v2;
  v3 = v0[6];
  v15[4] = v0[5];
  v15[5] = v3;
  v4 = v0[8];
  v15[6] = v0[7];
  v15[7] = v4;
  v5 = v0[10];
  v15[8] = v0[9];
  v15[9] = v5;
  v15[10] = v0[11];
  v6 = (type metadata accessor for CanvasFeature(0, v15) - 8);
  v7 = *(*v6 + 64);
  v8 = (v0 + ((*(*v6 + 80) + 192) & ~*(*v6 + 80)));
  v9 = v8[1];

  v10 = v8[3];

  v11 = v8[5];

  __swift_destroy_boxed_opaque_existential_1(v8 + 6);
  v12 = v6[52];
  v13 = sub_1E5D03F80();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  return swift_deallocObject();
}

uint64_t sub_1E5CDE1A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5D03F80();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 200);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5CDE254(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5D03F80();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 200);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t CanvasEnvironment.init(onItemTappedWithIdentifier:onItemAppearedAtIndexPath:onItemDisappearedAtIndexPath:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1E5CDE320()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E5CDE370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5CDE3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CanvasState.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CanvasState.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  v7 = *(a1 + 72);
  v8 = *(a1 + 168);
  v5 = sub_1E5D041A0();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t CanvasState.layout.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 200);
  v7 = *(a2 + 72);
  v8 = *(a2 + 168);
  v5 = sub_1E5D041A0();
  return (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
}

uint64_t (*CanvasState.layout.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 200);
  return result;
}

uint64_t CanvasState.loadState.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 204);
  v3 = *v2;
  sub_1E5CDE5BC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1E5CDE5BC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t CanvasState.loadState.setter(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 204);
  result = sub_1E5CDE618(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_1E5CDE618(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t (*CanvasState.loadState.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 204);
  return result;
}

uint64_t (*CanvasState.preferredInsetBehavior.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 208);
  return result;
}

uint64_t CanvasState.scrollPositionIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 212));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t CanvasState.scrollPositionIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 212));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*CanvasState.scrollPositionIdentifier.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 212);
  return result;
}

uint64_t CanvasState.closureIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 216);
  v5 = sub_1E5D03F80();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasState.closureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 216);
  v5 = sub_1E5D03F80();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*CanvasState.closureIdentifier.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 216);
  return result;
}

uint64_t CanvasState.init(identifier:isInternalBuild:layout:loadState:preferredInsetBehavior:scrollPositionIdentifier:closureIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  v46 = a17;
  v47 = a18;
  v48 = a19;
  v49 = a20;
  v50 = a21;
  v51 = a22;
  v52 = a23;
  v53 = a24;
  v28 = type metadata accessor for CanvasState(0, &v41);
  v29 = (a9 + v28[53]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v30 = v28[50];
  v41 = a16;
  v42 = a23;
  v31 = sub_1E5D041A0();
  (*(*(v31 - 8) + 32))(a9 + v30, a4, v31);
  v32 = a9 + v28[51];
  *v32 = a5;
  *(v32 + 8) = a6;
  *(a9 + v28[52]) = a7 & 1;
  *v29 = a8;
  v29[1] = a10;
  v33 = v28[54];
  v34 = sub_1E5D03F80();
  return (*(*(v34 - 8) + 32))(a9 + v33, a11, v34);
}

uint64_t sub_1E5CDE9DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5D047F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_1E5D047F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5D047F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5D047F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5D0B920 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5D0B940 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5D0B960 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5D047F0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E5CDEC78(unsigned __int8 a1)
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](a1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CDECC0(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v4 = 0x6E7265746E497369;
    if (a1 != 1)
    {
      v4 = 0x74756F79616CLL;
    }

    if (a1)
    {
      return v4;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    if (a1 != 5)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000016;
    if (a1 == 3)
    {
      v2 = 0x7461745364616F6CLL;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

BOOL sub_1E5CDEDB8(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v17 = *(a3 + 176);
  v18 = *(a3 + 184);
  v15 = *(a3 + 144);
  v16 = *(a3 + 160);
  v13 = *(a3 + 112);
  v14 = *(a3 + 128);
  v11 = *(a3 + 80);
  v12 = *(a3 + 96);
  v10 = *(a3 + 64);
  return sub_1E5CDEC40(*a1, *a2);
}

uint64_t sub_1E5CDEE1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v17 = *(a1 + 184);
  v15 = *(a1 + 152);
  v16 = *(a1 + 168);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v11 = *(a1 + 88);
  v12 = *(a1 + 104);
  v10 = *(a1 + 72);
  return sub_1E5CDEC78(*v1);
}

uint64_t sub_1E5CDEE84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v17 = *(a2 + 176);
  v18 = *(a2 + 184);
  v15 = *(a2 + 144);
  v16 = *(a2 + 160);
  v13 = *(a2 + 112);
  v14 = *(a2 + 128);
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  v10 = *(a2 + 64);
  return sub_1E5CDEC50(a1, *v2);
}

uint64_t sub_1E5CDEEDC(uint64_t a1, uint64_t a2)
{
  sub_1E5D04840();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v18 = *(a2 + 176);
  v19 = *(a2 + 184);
  v16 = *(a2 + 144);
  v17 = *(a2 + 160);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  v12 = *(a2 + 80);
  v13 = *(a2 + 96);
  v11 = *(a2 + 64);
  sub_1E5CDEC50(v20, *v2);
  return sub_1E5D04860();
}

uint64_t sub_1E5CDEF54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v17 = *(a1 + 184);
  v15 = *(a1 + 152);
  v16 = *(a1 + 168);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v11 = *(a1 + 88);
  v12 = *(a1 + 104);
  v10 = *(a1 + 72);
  return sub_1E5CDECC0(*v1);
}

uint64_t sub_1E5CDEFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v19 = *(a3 + 176);
  v20 = *(a3 + 184);
  v17 = *(a3 + 144);
  v18 = *(a3 + 160);
  v15 = *(a3 + 112);
  v16 = *(a3 + 128);
  v13 = *(a3 + 80);
  v14 = *(a3 + 96);
  v12 = *(a3 + 64);
  result = sub_1E5CDE9DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5CDF030@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v18 = *(a1 + 176);
  v19 = *(a1 + 184);
  v16 = *(a1 + 144);
  v17 = *(a1 + 160);
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  result = sub_1E5CE086C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5CDF094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CDF0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v15 = *(a2 + 104);
  v14 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v18 = *(a2 + 136);
  v19 = *(a2 + 144);
  v20 = *(a2 + 152);
  v21 = *(a2 + 160);
  v22 = *(a2 + 168);
  v23 = *(a2 + 184);
  v68 = v4;
  *&v73 = v4;
  v67 = v5;
  *(&v73 + 1) = v5;
  *&v74 = v6;
  v53 = v6;
  v52 = v7;
  *(&v74 + 1) = v7;
  v75 = v8;
  v51 = v8;
  v50 = v9;
  v76 = v9;
  v77 = v10;
  v49 = v10;
  v65 = v11;
  v78 = v11;
  v63 = v12;
  v79 = v12;
  v80 = v13;
  v62 = v13;
  v61 = v15;
  v81 = v15;
  v82 = v14;
  v60 = v14;
  v59 = v16;
  v83 = v16;
  v58 = v17;
  v84 = v17;
  v85 = v18;
  v57 = v18;
  v56 = v19;
  v86 = v19;
  v87 = v20;
  v55 = v20;
  v54 = v21;
  v88 = v21;
  v66 = v22;
  v89 = v22;
  v64 = v23;
  v90 = v23;
  type metadata accessor for CanvasState.CodingKeys(255, &v73);
  swift_getWitnessTable();
  v24 = sub_1E5D047D0();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v28 = &v47 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v69;
  v31 = v24;
  sub_1E5D04880();
  v32 = *v30;
  v33 = v30[1];
  LOBYTE(v73) = 0;
  v34 = v91;
  sub_1E5D047A0();
  if (v34)
  {
    return (*(v25 + 8))(v28, v24);
  }

  v35 = v67;
  v36 = v68;
  v37 = *(v30 + 16);
  LOBYTE(v73) = 1;
  sub_1E5D047B0();
  v38 = *(a2 + 200);
  LOBYTE(v71) = 2;
  v74 = v66;
  v73 = v65;
  sub_1E5D041A0();
  v48 = v28;
  swift_getWitnessTable();
  v91 = v31;
  sub_1E5D047C0();
  v39 = (v30 + *(a2 + 204));
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v71 = v40;
  v72 = v39;
  v70 = 3;
  *&v73 = v36;
  *(&v73 + 1) = v35;
  *&v74 = v53;
  *(&v74 + 1) = v52;
  v75 = v51;
  v76 = v50;
  v77 = v49;
  *&v78 = v65;
  *(&v78 + 1) = v63;
  v79 = v62;
  v80 = v61;
  v81 = v60;
  v82 = v59;
  v83 = v58;
  v84 = v57;
  v85 = v56;
  v86 = v55;
  v87 = v54;
  v88 = v66;
  *&v89 = v64;
  type metadata accessor for CanvasLoadState(0, &v73);
  swift_getWitnessTable();
  sub_1E5D047C0();
  LOBYTE(v73) = *(v30 + *(a2 + 208));
  LOBYTE(v71) = 4;
  sub_1E5CDF744();
  sub_1E5D047C0();
  v42 = (v30 + *(a2 + 212));
  v43 = *v42;
  v44 = v42[1];
  LOBYTE(v73) = 5;
  sub_1E5D04790();
  v45 = *(a2 + 216);
  LOBYTE(v73) = 6;
  sub_1E5D03F80();
  sub_1E5CE0354(&qword_1ED066AD8);
  v46 = v48;
  sub_1E5D047C0();
  return (*(v25 + 8))(v46, v91);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5CDF744()
{
  result = qword_1ED066AD0;
  if (!qword_1ED066AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066AD0);
  }

  return result;
}

uint64_t CanvasState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, char *a12, char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v108 = a8;
  v106 = a7;
  v105 = a6;
  v104 = a5;
  v90 = a4;
  v135 = a3;
  v102 = a2;
  v103 = a1;
  v81 = a9;
  v110 = a24;
  v109 = a21;
  v100 = a20;
  v99 = a19;
  v98 = a18;
  v107 = a17;
  v96 = a16;
  v95 = a15;
  v94 = a14;
  v93 = a13;
  v92 = a12;
  v83 = sub_1E5D03F80();
  v80 = *(v83 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x1EEE9AC00]();
  v82 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a10;
  v91 = a10;
  v114 = a11;
  v115 = a22;
  v89 = a11;
  v97 = a22;
  v116 = a23;
  v86 = sub_1E5D041A0();
  v85 = *(v86 - 8);
  v28 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v84 = &v76 - v29;
  v113 = a2;
  v114 = v135;
  v115 = a4;
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v119 = v108;
  v120 = a10;
  v121 = a11;
  v122 = a12;
  v123 = a13;
  v124 = a14;
  v30 = v95;
  v31 = v96;
  v125 = v95;
  v126 = v96;
  v32 = v98;
  v127 = v107;
  v128 = v98;
  v33 = v99;
  v34 = v100;
  v129 = v99;
  v130 = v100;
  v131 = v109;
  v132 = a22;
  v133 = a23;
  v134 = v110;
  type metadata accessor for CanvasState.CodingKeys(255, &v113);
  swift_getWitnessTable();
  v88 = sub_1E5D04770();
  v87 = *(v88 - 8);
  v35 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v37 = &v76 - v36;
  v113 = v102;
  v114 = v135;
  v115 = v90;
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v119 = v108;
  v120 = v91;
  v121 = v89;
  v122 = v92;
  v123 = v93;
  v124 = v94;
  v125 = v30;
  v126 = v31;
  v127 = v107;
  v128 = v32;
  v129 = v33;
  v130 = v34;
  v131 = v109;
  v132 = v97;
  v133 = a23;
  v134 = v110;
  v38 = type metadata accessor for CanvasState(0, &v113);
  v39 = *(v38 - 8);
  v40 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v42 = (&v76 - v41);
  v43 = v103[4];
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v89 = v37;
  v44 = v101;
  sub_1E5D04870();
  if (v44)
  {
    v101 = v44;
    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v45 = v84;
  v46 = v102;
  v47 = v135;
  v77 = v39;
  v78 = v38;
  v79 = v42;
  v48 = v85;
  v49 = v86;
  LOBYTE(v113) = 0;
  v50 = sub_1E5D04730();
  v52 = v79;
  *v79 = v50;
  v52[1] = v53;
  LOBYTE(v113) = 1;
  v54 = sub_1E5D04740();
  v101 = 0;
  v55 = v87;
  *(v52 + 16) = v54 & 1;
  LOBYTE(v113) = 2;
  v56 = v49;
  swift_getWitnessTable();
  v57 = v45;
  v58 = v56;
  v59 = v101;
  sub_1E5D04750();
  v101 = v59;
  if (v59)
  {
    (*(v55 + 8))(v89, v88);
    __swift_destroy_boxed_opaque_existential_1(v103);
    v60 = v79[1];
  }

  v61 = v78;
  (*(v48 + 32))(v52 + v78[50], v57, v56);
  v113 = v46;
  v114 = v47;
  v115 = v90;
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v119 = v108;
  v120 = v91;
  v121 = v92;
  v122 = v93;
  v123 = v94;
  v124 = v95;
  v125 = v96;
  v126 = v107;
  v127 = v98;
  v128 = v99;
  v129 = v100;
  v130 = v109;
  v131 = v97;
  v132 = v110;
  type metadata accessor for CanvasLoadState(0, &v113);
  LOBYTE(v113) = 3;
  swift_getWitnessTable();
  v62 = v101;
  sub_1E5D04750();
  v63 = v62;
  if (v62)
  {
    (*(v87 + 8))(v89, v88);
    __swift_destroy_boxed_opaque_existential_1(v103);
    v135 = 0;
    v101 = v62;
    goto LABEL_10;
  }

  v64 = v112;
  v65 = v52 + v61[51];
  *v65 = v111;
  v65[8] = v64;
  LOBYTE(v111) = 4;
  sub_1E5CE0300();
  sub_1E5D04750();
  *(v52 + v61[52]) = v113;
  LOBYTE(v113) = 5;
  v66 = sub_1E5D04720();
  v101 = 0;
  v71 = (v52 + v61[53]);
  *v71 = v66;
  v71[1] = v67;
  v135 = v67;
  LOBYTE(v113) = 6;
  sub_1E5CE0354(&unk_1ED066AE8);
  v72 = v82;
  v73 = v83;
  v74 = v101;
  sub_1E5D04750();
  v101 = v74;
  if (v74)
  {
    (*(v87 + 8))(v89, v88);
    __swift_destroy_boxed_opaque_existential_1(v103);
    v58 = v56;
LABEL_10:
    v68 = v79;
    v69 = v79[1];

    v70 = v78;
    (*(v48 + 8))(v68 + v78[50], v58);
    if (!v63)
    {
      sub_1E5CDE618(*(v68 + v70[51]), *(v68 + v70[51] + 8));
    }
  }

  (*(v87 + 8))(v89, v88);
  (*(v80 + 32))(v52 + v61[54], v72, v73);
  v75 = v77;
  (*(v77 + 16))(v81, v52, v61);
  __swift_destroy_boxed_opaque_existential_1(v103);
  return (*(v75 + 8))(v52, v61);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1E5CE0300()
{
  result = qword_1ED066AE0;
  if (!qword_1ED066AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066AE0);
  }

  return result;
}

uint64_t sub_1E5CE0354(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5D03F80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CanvasState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E5D047F0() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_8;
  }

  v42[0] = a3;
  v42[1] = a4;
  v42[2] = a5;
  v42[3] = a6;
  v42[4] = a7;
  v42[5] = a8;
  v42[6] = a9;
  v42[7] = a10;
  v42[8] = a11;
  v42[9] = a12;
  v42[10] = a13;
  v42[11] = a14;
  v42[12] = a15;
  v42[13] = a16;
  v42[14] = a17;
  v42[15] = a18;
  v42[16] = a19;
  v42[17] = a20;
  v42[18] = a21;
  v42[19] = a22;
  v42[20] = a23;
  v42[21] = a24;
  v32 = type metadata accessor for CanvasState(0, v42);
  v33 = v32[50];
  if ((sub_1E5D04190() & 1) == 0 || (static CanvasLoadState.== infix(_:_:)(*(a1 + v32[51]), *(a1 + v32[51] + 8), *(a2 + v32[51]), *(a2 + v32[51] + 8)) & 1) == 0 || *(a1 + v32[52]) != *(a2 + v32[52]))
  {
    goto LABEL_8;
  }

  v36 = v32[53];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (v40 && (*v37 == *v39 && v38 == v40 || (sub_1E5D047F0() & 1) != 0))
    {
      goto LABEL_17;
    }
  }

  else if (!v40)
  {
LABEL_17:
    v41 = v32[54];
    v34 = sub_1E5D03F60();
    return v34 & 1;
  }

LABEL_8:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1E5CE06D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5CE0760(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E5CE0874(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5D0B9B0 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5D0B9D0 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEF736D6574496574 || (sub_1E5D047F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657070416D657469 && a2 == 0xEC00000064657261 || (sub_1E5D047F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617369446D657469 && a2 == 0xEF64657261657070 || (sub_1E5D047F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x694474756F79616CLL && a2 == 0xEF65676E61684364 || (sub_1E5D047F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5D0B9F0 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4368736572666572 && a2 == 0xED00007361766E61 || (sub_1E5D047F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614364616F6C6572 && a2 == 0xEC0000007361766ELL || (sub_1E5D047F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5D0BA10 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7449646570706174 && a2 == 0xEA00000000006D65 || (sub_1E5D047F0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5D047F0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E61437261656C63 && a2 == 0xEB00000000736176)
  {

    return 12;
  }

  else
  {
    v5 = sub_1E5D047F0();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1E5CE0CC0(char a1)
{
  result = 0x6164696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1835365481;
      goto LABEL_8;
    case 4:
      result = 0x617369446D657469;
      break;
    case 5:
      result = 0x694474756F79616CLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x4368736572666572;
      break;
    case 8:
      result = 0x614364616F6C6572;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x7449646570706174;
      break;
    case 11:
      v3 = 2003134838;
LABEL_8:
      result = v3 | 0x6570704100000000;
      break;
    case 12:
      result = 0x6E61437261656C63;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1E5CE0E78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461507865646E69 && a2 == 0xE900000000000068)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE0EF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE0F68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE0FE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE1098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE10EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1140(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v17 = *(a1 + 184);
  v15 = *(a1 + 152);
  v16 = *(a1 + 168);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v11 = *(a1 + 88);
  v12 = *(a1 + 104);
  v10 = *(a1 + 72);
  return sub_1E5CE0CC0(*v1);
}

uint64_t sub_1E5CE11A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v19 = *(a3 + 176);
  v20 = *(a3 + 184);
  v17 = *(a3 + 144);
  v18 = *(a3 + 160);
  v15 = *(a3 + 112);
  v16 = *(a3 + 128);
  v13 = *(a3 + 80);
  v14 = *(a3 + 96);
  v12 = *(a3 + 64);
  result = sub_1E5CE0874(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5CE1210@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v18 = *(a1 + 176);
  v19 = *(a1 + 184);
  v16 = *(a1 + 144);
  v17 = *(a1 + 160);
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  result = sub_1E5CE765C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5CE1274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE12C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE131C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE13C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE14D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  v6 = *(a3 + 80);
  v7 = *(a3 + 112);
  v8 = *(a3 + 144);
  result = a4(a1, a2, *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), *(a3 + 48), *(a3 + 56), *(a3 + 64), *(a3 + 72), *(a3 + 80), *(a3 + 88), *(a3 + 96), *(a3 + 104), *(a3 + 112), *(a3 + 120), *(a3 + 128), *(a3 + 136), *(a3 + 144), *(a3 + 152), *(a3 + 160), *(a3 + 168), *(a3 + 176), *(a3 + 184));
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E5CE15B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE160C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE16B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE175C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE17B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1804(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE18AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1900@<X0>(void *a1@<X2>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16], a1[17], a1[18], a1[19], a1[20], a1[21], a1[22], a1[23]);

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_1E5CE1988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE19DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1A84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  v6 = *(a3 + 80);
  v7 = *(a3 + 112);
  v8 = *(a3 + 144);
  result = a4(a1, a2, *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), *(a3 + 48), *(a3 + 56), *(a3 + 64), *(a3 + 72), *(a3 + 80), *(a3 + 88), *(a3 + 96), *(a3 + 104), *(a3 + 112), *(a3 + 120), *(a3 + 128), *(a3 + 136), *(a3 + 144), *(a3 + 152), *(a3 + 160), *(a3 + 168), *(a3 + 176), *(a3 + 184));
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E5CE1B80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1C28()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

uint64_t sub_1E5CE1C6C()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

uint64_t sub_1E5CE1CD8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16], a1[17], a1[18], a1[19], a1[20], a1[21], a1[22], a1[23]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5CE1D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasAction.encode(to:)(void *a1, uint64_t a2)
{
  v282 = a1;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v9 = *(a2 + 112);
  v8 = *(a2 + 120);
  v10 = *(a2 + 136);
  v320 = *(a2 + 128);
  v296 = v10;
  v11 = *(a2 + 152);
  v290 = *(a2 + 144);
  v291 = v11;
  v289 = *(a2 + 160);
  v280 = a2;
  v285 = *(a2 + 184);
  v304.i64[0] = v2;
  v284 = v2;
  v304.i64[1] = v3;
  *&v305 = v5;
  v287 = v3;
  v286 = v5;
  *(&v305 + 1) = v4;
  v306 = v7;
  v12 = v4;
  v295 = v4;
  v292 = v7;
  v307 = v6;
  v311 = v9;
  v312 = v8;
  v294 = v9;
  v288 = v8;
  v313 = v320;
  v314 = v10;
  v315 = v290;
  v316 = v11;
  v317 = v289;
  v319 = v285;
  v13 = *(a2 + 80);
  v299 = *(a2 + 64);
  v274 = v299.i64[1];
  v275 = v299.i64[0];
  v300 = *(a2 + 168);
  v276 = v300;
  v318 = v300;
  v14 = *(a2 + 96);
  v297 = v13;
  v273 = v13.i64[1];
  v308 = v299;
  v309 = v13;
  v298 = v14;
  v272 = v14;
  v310 = v14;
  v281 = vzip1q_s64(vdupq_laneq_s64(v299, 1), v13);
  v271 = *(&v14 + 1);
  v270 = type metadata accessor for CanvasAction.ClearCanvasCodingKeys(255, &v304);
  WitnessTable = swift_getWitnessTable();
  v268 = sub_1E5D047D0();
  v267 = *(v268 - 8);
  v15 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v266 = &v200 - v16;
  v304.i64[0] = v2;
  v304.i64[1] = v3;
  *&v305 = v5;
  *(&v305 + 1) = v12;
  v306 = v7;
  v307 = v6;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v311 = v9;
  v312 = v8;
  v17 = v320;
  v18 = v296;
  v313 = v320;
  v314 = v296;
  v19 = v290;
  v20 = v291;
  v315 = v290;
  v316 = v291;
  v318 = v300;
  v21 = v289;
  v317 = v289;
  v22 = v285;
  v319 = v285;
  v23 = type metadata accessor for CanvasAction.ViewAppearedCodingKeys(255, &v304);
  v24 = swift_getWitnessTable();
  v263 = v23;
  v262 = v24;
  v265 = sub_1E5D047D0();
  v208 = *(v265 - 8);
  v25 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v264 = &v200 - v26;
  v27 = v284;
  v304.i64[0] = v284;
  v28 = v287;
  v304.i64[1] = v287;
  *&v305 = v286;
  *(&v305 + 1) = v295;
  v306 = v292;
  v307 = v6;
  v293 = v6;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v311 = v294;
  v312 = v288;
  v313 = v17;
  v314 = v18;
  v315 = v19;
  v316 = v20;
  v318 = v300;
  v317 = v21;
  v319 = v22;
  v29 = type metadata accessor for CanvasAction.TappedItemCodingKeys(255, &v304);
  v30 = swift_getWitnessTable();
  v259 = v29;
  v257 = v30;
  v261 = sub_1E5D047D0();
  v207 = *(v261 - 8);
  v31 = *(v207 + 64);
  v32 = MEMORY[0x1EEE9AC00](v261);
  v258 = &v200 - v33;
  v260 = *(v295 - 8);
  v34 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v256 = &v200 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304.i64[0] = v27;
  v36 = v27;
  v37 = v286;
  v304.i64[1] = v28;
  *&v305 = v286;
  v38 = v292;
  *(&v305 + 1) = v39;
  v306 = v292;
  v307 = v6;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v40 = v294;
  v41 = v288;
  v311 = v294;
  v312 = v288;
  v313 = v320;
  v314 = v296;
  v42 = v290;
  v315 = v290;
  v316 = v291;
  v318 = v300;
  v43 = v21;
  v317 = v21;
  v319 = v22;
  v44 = type metadata accessor for CanvasAction.ScrolledToIdentifierCodingKeys(255, &v304);
  v45 = swift_getWitnessTable();
  v254 = v44;
  v252 = v45;
  v255 = sub_1E5D047D0();
  v206 = *(v255 - 8);
  v46 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v253 = &v200 - v47;
  v304.i64[0] = v36;
  v48 = v287;
  v304.i64[1] = v287;
  *&v305 = v37;
  *(&v305 + 1) = v295;
  v306 = v38;
  v49 = v293;
  v307 = v293;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v311 = v40;
  v312 = v41;
  v50 = v320;
  v51 = v296;
  v313 = v320;
  v314 = v296;
  v52 = v291;
  v315 = v42;
  v316 = v291;
  v318 = v300;
  v317 = v43;
  v319 = v285;
  v53 = type metadata accessor for CanvasAction.ReloadCanvasCodingKeys(255, &v304);
  v54 = swift_getWitnessTable();
  v251 = v53;
  v250 = v54;
  v249 = sub_1E5D047D0();
  v248 = *(v249 - 8);
  v55 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v247 = &v200 - v56;
  v57 = v284;
  v304.i64[0] = v284;
  v304.i64[1] = v48;
  *&v305 = v286;
  v58 = v295;
  v59 = v292;
  *(&v305 + 1) = v295;
  v306 = v292;
  v307 = v49;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v60 = v294;
  v311 = v294;
  v312 = v288;
  v313 = v50;
  v314 = v51;
  v61 = v290;
  v315 = v290;
  v316 = v52;
  v318 = v300;
  v317 = v289;
  v62 = v285;
  v319 = v285;
  refreshed = type metadata accessor for CanvasAction.RefreshCanvasCodingKeys(255, &v304);
  v64 = swift_getWitnessTable();
  v245 = refreshed;
  v243 = v64;
  v242 = sub_1E5D047D0();
  v241 = *(v242 - 8);
  v65 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v200 - v66;
  v304.i64[0] = v57;
  v67 = v287;
  v68 = v286;
  v304.i64[1] = v287;
  *&v305 = v286;
  *(&v305 + 1) = v58;
  v306 = v59;
  v307 = v293;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v69 = v288;
  v311 = v60;
  v312 = v288;
  v70 = v320;
  v313 = v320;
  v314 = v296;
  v71 = v291;
  v315 = v61;
  v316 = v291;
  v318 = v300;
  v72 = v289;
  v317 = v289;
  v319 = v62;
  v73 = type metadata accessor for CanvasAction.LoadedDescriptorsCodingKeys(255, &v304);
  v74 = swift_getWitnessTable();
  v239 = v73;
  v238 = v74;
  v246 = sub_1E5D047D0();
  v205 = *(v246 - 8);
  v75 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v244 = &v200 - v76;
  v77 = v284;
  v304.i64[0] = v284;
  v304.i64[1] = v67;
  *&v305 = v68;
  *(&v305 + 1) = v295;
  v306 = v292;
  v307 = v293;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v311 = v294;
  v312 = v69;
  v78 = v296;
  v313 = v70;
  v314 = v296;
  v315 = v61;
  v316 = v71;
  v318 = v300;
  v317 = v72;
  v319 = v62;
  v79 = type metadata accessor for CanvasAction.LayoutDidChangeCodingKeys(255, &v304);
  v80 = swift_getWitnessTable();
  v235 = v79;
  v234[1] = v80;
  v237 = sub_1E5D047D0();
  v204 = *(v237 - 8);
  v81 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v200 - v82;
  v305 = v300;
  v304 = v281;
  v281.i64[0] = sub_1E5D041A0();
  v279 = *(v281.i64[0] - 8);
  v83 = *(v279 + 64);
  v84 = MEMORY[0x1EEE9AC00](v281.i64[0]);
  v234[0] = &v200 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v233 = &v200 - v86;
  v87 = v77;
  v304.i64[0] = v77;
  v88 = v287;
  v304.i64[1] = v287;
  *&v305 = v68;
  v89 = v295;
  v90 = v292;
  *(&v305 + 1) = v295;
  v306 = v292;
  v91 = v293;
  v307 = v293;
  v310 = v298;
  v308 = v299;
  v309 = v297;
  v92 = v288;
  v311 = v294;
  v312 = v288;
  v313 = v320;
  v314 = v78;
  v93 = v291;
  v315 = v290;
  v316 = v291;
  v318 = v300;
  v317 = v289;
  v319 = v62;
  v94 = type metadata accessor for CanvasAction.ItemDisappearedCodingKeys(255, &v304);
  v95 = swift_getWitnessTable();
  v230 = v94;
  v229 = v95;
  v232 = sub_1E5D047D0();
  v203 = *(v232 - 8);
  v96 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v200 - v97;
  v304.i64[0] = v87;
  v304.i64[1] = v88;
  *&v305 = v68;
  *(&v305 + 1) = v89;
  v306 = v90;
  v307 = v91;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v98 = v294;
  v311 = v294;
  v312 = v92;
  v313 = v320;
  v314 = v296;
  v99 = v290;
  v315 = v290;
  v316 = v93;
  v318 = v300;
  v100 = v289;
  v317 = v289;
  v101 = v285;
  v319 = v285;
  v102 = type metadata accessor for CanvasAction.ItemAppearedCodingKeys(255, &v304);
  v103 = swift_getWitnessTable();
  v226 = v102;
  v225 = v103;
  v228 = sub_1E5D047D0();
  v202 = *(v228 - 8);
  v104 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v200 - v105;
  v278 = sub_1E5D03F90();
  v277 = *(v278 - 8);
  v106 = *(v277 + 64);
  v107 = MEMORY[0x1EEE9AC00](v278);
  v224 = &v200 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  v223 = &v200 - v109;
  v110 = v284;
  v304.i64[0] = v284;
  v111 = v286;
  v304.i64[1] = v88;
  *&v305 = v286;
  v112 = v295;
  v113 = v292;
  *(&v305 + 1) = v295;
  v306 = v292;
  v307 = v293;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v114 = v288;
  v311 = v98;
  v312 = v288;
  v313 = v320;
  v314 = v296;
  v315 = v99;
  v115 = v291;
  v316 = v291;
  v317 = v100;
  v318 = v300;
  v319 = v101;
  v116 = type metadata accessor for CanvasAction.InvalidateItemsCodingKeys(255, &v304);
  v117 = swift_getWitnessTable();
  v220 = v116;
  v219 = v117;
  v222 = sub_1E5D047D0();
  v201 = *(v222 - 8);
  v118 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v221 = &v200 - v119;
  v304.i64[0] = v110;
  v120 = v287;
  v304.i64[1] = v287;
  *&v305 = v111;
  v121 = v111;
  v122 = v112;
  *(&v305 + 1) = v112;
  v306 = v113;
  v123 = v293;
  v307 = v293;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v311 = v294;
  v312 = v114;
  v313 = v320;
  v314 = v296;
  v315 = v290;
  v316 = v115;
  v318 = v300;
  v124 = v289;
  v317 = v289;
  v319 = v285;
  v125 = type metadata accessor for CanvasAction.InvalidateAllItemsCodingKeys(255, &v304);
  v126 = swift_getWitnessTable();
  v218 = v125;
  v217 = v126;
  v216 = sub_1E5D047D0();
  v215 = *(v216 - 8);
  v127 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v214 = &v200 - v128;
  v304.i64[0] = v110;
  v304.i64[1] = v120;
  *&v305 = v121;
  *(&v305 + 1) = v122;
  v306 = v113;
  v307 = v123;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v129 = v294;
  v130 = v288;
  v311 = v294;
  v312 = v288;
  v131 = v320;
  v132 = v296;
  v313 = v320;
  v314 = v296;
  v133 = v290;
  v315 = v290;
  v316 = v115;
  v318 = v300;
  v317 = v124;
  v134 = v285;
  v319 = v285;
  v135 = type metadata accessor for CanvasAction.EndCanvasRefreshCodingKeys(255, &v304);
  v136 = swift_getWitnessTable();
  v213 = v135;
  v212 = v136;
  v211 = sub_1E5D047D0();
  v210 = *(v211 - 8);
  v137 = *(v210 + 64);
  v138 = MEMORY[0x1EEE9AC00](v211);
  v209 = &v200 - v139;
  v140 = v280;
  v141 = *(v280 - 8);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v144 = (&v200 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
  v304.i64[0] = v284;
  v304.i64[1] = v287;
  *&v305 = v286;
  *(&v305 + 1) = v295;
  v306 = v292;
  v307 = v293;
  v308 = v299;
  v309 = v297;
  v310 = v298;
  v311 = v129;
  v312 = v130;
  v313 = v131;
  v314 = v132;
  v315 = v133;
  v316 = v291;
  v318 = v300;
  v317 = v289;
  v319 = v134;
  type metadata accessor for CanvasAction.CodingKeys(255, &v304);
  swift_getWitnessTable();
  *&v300 = sub_1E5D047D0();
  *&v298 = *(v300 - 8);
  v145 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v147 = &v200 - v146;
  v148 = v282[4];
  __swift_project_boxed_opaque_existential_1(v282, v282[3]);
  v299.i64[0] = v147;
  sub_1E5D04880();
  (*(v141 + 16))(v144, v283, v140);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v174 = v277;
      v175 = v223;
      v176 = v278;
      (*(v277 + 32))(v223, v144, v278);
      v304.i8[0] = 3;
      v177 = v227;
      v171 = v300;
      v172 = v299.i64[0];
      sub_1E5D04780();
      sub_1E5CE6D74(&qword_1EE2FACA8);
      v178 = v228;
      sub_1E5D047C0();
      v179 = v234;
      goto LABEL_12;
    case 2u:
      v167 = v277;
      v168 = v224;
      v169 = v278;
      (*(v277 + 32))(v224, v144, v278);
      v304.i8[0] = 4;
      v170 = v231;
      v171 = v300;
      v172 = v299.i64[0];
      sub_1E5D04780();
      sub_1E5CE6D74(&qword_1EE2FACA8);
      v173 = v232;
      sub_1E5D047C0();
      (*(v203 + 8))(v170, v173);
      (*(v167 + 8))(v168, v169);
      return (*(v298 + 8))(v172, v171);
    case 3u:
      v174 = v279;
      v175 = v233;
      v176 = v281.i64[0];
      (*(v279 + 32))(v233, v144, v281.i64[0]);
      v304.i8[0] = 5;
      v177 = v236;
      v171 = v300;
      v172 = v299.i64[0];
      sub_1E5D04780();
      swift_getWitnessTable();
      v178 = v237;
      sub_1E5D047C0();
      v179 = &v235;
LABEL_12:
      (*(*(v179 - 32) + 8))(v177, v178);
      (*(v174 + 8))(v175, v176);
      return (*(v298 + 8))(v172, v171);
    case 4u:
      v157 = *v144;
      v304.i8[0] = 6;
      v158 = v244;
      v159 = v300;
      v160 = v299.i64[0];
      sub_1E5D04780();
      v303 = v157;
      v304.i64[0] = v284;
      v304.i64[1] = v287;
      *&v305 = v286;
      *(&v305 + 1) = v295;
      v306 = v292;
      v307 = v275;
      v308.i64[0] = v274;
      v308.i64[1] = v293;
      v309.i64[0] = v273;
      v309.i64[1] = v272;
      *&v310 = v271;
      *(&v310 + 1) = v294;
      v311 = v288;
      v312 = v320;
      v313 = v296;
      v314 = v290;
      v315 = v289;
      v316 = v276;
      v317 = v291;
      *&v318 = v285;
      sub_1E5D04140();
      sub_1E5D044A0();
      v302 = swift_getWitnessTable();
      swift_getWitnessTable();
      v161 = v246;
      sub_1E5D047C0();
      (*(v205 + 8))(v158, v161);
      (*(v298 + 8))(v160, v159);
      goto LABEL_5;
    case 5u:
      v188 = *v144;
      v187 = v144[1];
      v304.i8[0] = 9;
      v189 = v253;
      v184 = v300;
      v185 = v299.i64[0];
      sub_1E5D04780();
      v190 = v255;
      sub_1E5D047A0();

      (*(v206 + 8))(v189, v190);
      return (*(v298 + 8))(v185, v184);
    case 6u:
      v191 = v260;
      v192 = v256;
      v193 = v295;
      (*(v260 + 32))(v256, v144, v295);
      v304.i8[0] = 10;
      v194 = v258;
      v195 = v300;
      v196 = v299.i64[0];
      sub_1E5D04780();
      v197 = v261;
      sub_1E5D047C0();
      (*(v207 + 8))(v194, v197);
      (*(v191 + 8))(v192, v193);
      return (*(v298 + 8))(v196, v195);
    case 7u:
      v180 = v279;
      v181 = v234[0];
      v182 = v281.i64[0];
      (*(v279 + 32))(v234[0], v144, v281.i64[0]);
      v304.i8[0] = 11;
      v183 = v264;
      v184 = v300;
      v185 = v299.i64[0];
      sub_1E5D04780();
      swift_getWitnessTable();
      v186 = v265;
      sub_1E5D047C0();
      (*(v208 + 8))(v183, v186);
      (*(v180 + 8))(v181, v182);
      return (*(v298 + 8))(v185, v184);
    case 8u:
      v304.i8[0] = 0;
      v199 = v209;
      v155 = v300;
      v156 = v299.i64[0];
      sub_1E5D04780();
      (*(v210 + 8))(v199, v211);
      goto LABEL_19;
    case 9u:
      v304.i8[0] = 1;
      v166 = v214;
      v155 = v300;
      v156 = v299.i64[0];
      sub_1E5D04780();
      (*(v215 + 8))(v166, v216);
      goto LABEL_19;
    case 0xAu:
      v304.i8[0] = 7;
      v198 = v240;
      v155 = v300;
      v156 = v299.i64[0];
      sub_1E5D04780();
      (*(v241 + 8))(v198, v242);
      goto LABEL_19;
    case 0xBu:
      v304.i8[0] = 8;
      v154 = v247;
      v155 = v300;
      v156 = v299.i64[0];
      sub_1E5D04780();
      (*(v248 + 8))(v154, v249);
LABEL_19:
      result = (*(v298 + 8))(v156, v155);
      break;
    case 0xCu:
      v304.i8[0] = 12;
      v163 = v266;
      v164 = v300;
      v165 = v299.i64[0];
      sub_1E5D04780();
      (*(v267 + 8))(v163, v268);
      result = (*(v298 + 8))(v165, v164);
      break;
    default:
      v149 = *v144;
      v304.i8[0] = 2;
      v150 = v221;
      v151 = v300;
      v152 = v299.i64[0];
      sub_1E5D04780();
      v304.i64[0] = v149;
      sub_1E5D04590();
      v301 = v320;
      swift_getWitnessTable();
      v153 = v222;
      sub_1E5D047C0();
      (*(v201 + 8))(v150, v153);
      (*(v298 + 8))(v152, v151);
LABEL_5:

      break;
  }

  return result;
}

uint64_t CanvasAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v330 = a8;
  v338 = a7;
  v328 = a6;
  v332 = a5;
  v317 = a1;
  v313 = a9;
  v322 = a24;
  v321 = a20;
  v324 = a18;
  v339 = a16;
  v336 = a15;
  v335 = a14;
  v334 = a13;
  v333 = a12;
  v331 = a11;
  v337 = a10;
  *&v344 = a2;
  *(&v344 + 1) = a3;
  *&v345 = a4;
  *(&v345 + 1) = a5;
  v346 = a6;
  v347 = a7;
  v348 = a8;
  v349 = a10;
  v350 = a11;
  v351 = a12;
  v352 = a13;
  v353 = a14;
  v354 = a15;
  v355 = a16;
  v356 = a17;
  v357 = a18;
  v319 = a17;
  v358 = a19;
  v359 = a20;
  v320 = a19;
  v360 = a21;
  v361 = a22;
  v329 = a21;
  v325 = a22;
  v362 = a23;
  v363 = a24;
  v323 = a23;
  v307 = type metadata accessor for CanvasAction.ClearCanvasCodingKeys(255, &v344);
  WitnessTable = swift_getWitnessTable();
  v268 = sub_1E5D04770();
  v267 = *(v268 - 8);
  v27 = (*(v267 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v289 = &v235 - v28;
  v326 = a2;
  *&v344 = a2;
  v318 = a3;
  *(&v344 + 1) = a3;
  v327 = a4;
  *&v345 = a4;
  *(&v345 + 1) = v332;
  v346 = v328;
  v347 = v338;
  v348 = v330;
  v349 = a10;
  v350 = a11;
  v351 = a12;
  v352 = a13;
  v353 = a14;
  v354 = a15;
  v355 = a16;
  v356 = a17;
  v357 = a18;
  v358 = a19;
  v359 = a20;
  v360 = a21;
  v361 = a22;
  v362 = a23;
  v363 = a24;
  v29 = type metadata accessor for CanvasAction.ViewAppearedCodingKeys(255, &v344);
  v30 = swift_getWitnessTable();
  v305 = v29;
  v304 = v30;
  v266 = sub_1E5D04770();
  v248 = *(v266 - 8);
  v31 = (*(v248 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v288 = &v235 - v32;
  *&v344 = a2;
  *(&v344 + 1) = a3;
  v33 = v332;
  *&v345 = a4;
  *(&v345 + 1) = v332;
  v34 = v328;
  v35 = v338;
  v346 = v328;
  v347 = v338;
  v36 = v330;
  v37 = v337;
  v348 = v330;
  v349 = v337;
  v38 = v331;
  v350 = v331;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v354 = v336;
  v355 = v339;
  v356 = v319;
  v357 = a18;
  v39 = v320;
  v358 = v320;
  v359 = v321;
  v360 = v329;
  v361 = v325;
  v362 = v323;
  v363 = a24;
  v40 = type metadata accessor for CanvasAction.TappedItemCodingKeys(255, &v344);
  v41 = swift_getWitnessTable();
  v303 = v40;
  v302 = v41;
  v265 = sub_1E5D04770();
  v247 = *(v265 - 8);
  v42 = (*(v247 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v287 = &v235 - v43;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  *&v345 = v327;
  *(&v345 + 1) = v33;
  v346 = v34;
  v347 = v35;
  v348 = v36;
  v349 = v37;
  v44 = v333;
  v350 = v38;
  v351 = v333;
  v45 = v334;
  v46 = v335;
  v352 = v334;
  v353 = v335;
  v47 = v336;
  v48 = v339;
  v354 = v336;
  v355 = v339;
  v49 = v319;
  v50 = v324;
  v356 = v319;
  v357 = v324;
  v51 = v321;
  v358 = v39;
  v359 = v321;
  v360 = v329;
  v361 = v325;
  v362 = v323;
  v363 = v322;
  v52 = type metadata accessor for CanvasAction.ScrolledToIdentifierCodingKeys(255, &v344);
  v53 = swift_getWitnessTable();
  v301 = v52;
  v300 = v53;
  v264 = sub_1E5D04770();
  v246 = *(v264 - 8);
  v54 = (*(v246 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v286 = &v235 - v55;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v56 = v328;
  v346 = v328;
  v347 = v338;
  v348 = v330;
  v349 = v337;
  v350 = v331;
  v351 = v44;
  v352 = v45;
  v353 = v46;
  v354 = v47;
  v355 = v48;
  v356 = v49;
  v357 = v50;
  v358 = v320;
  v359 = v51;
  v57 = v329;
  v360 = v329;
  v361 = v325;
  v58 = v323;
  v59 = v322;
  v362 = v323;
  v363 = v322;
  v60 = type metadata accessor for CanvasAction.ReloadCanvasCodingKeys(255, &v344);
  v61 = swift_getWitnessTable();
  v299 = v60;
  v298 = v61;
  v263 = sub_1E5D04770();
  v262 = *(v263 - 8);
  v62 = (*(v262 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v285 = &v235 - v63;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  v64 = v332;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v65 = v338;
  v346 = v56;
  v347 = v338;
  v66 = v330;
  v348 = v330;
  v349 = v337;
  v67 = v331;
  v350 = v331;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v354 = v336;
  v355 = v339;
  v356 = v319;
  v357 = v324;
  v68 = v320;
  v358 = v320;
  v359 = v321;
  v69 = v325;
  v360 = v57;
  v361 = v325;
  v362 = v58;
  v363 = v59;
  refreshed = type metadata accessor for CanvasAction.RefreshCanvasCodingKeys(255, &v344);
  v71 = swift_getWitnessTable();
  v297 = refreshed;
  v296 = v71;
  v260 = sub_1E5D04770();
  v259 = *(v260 - 8);
  v72 = (*(v259 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v283 = &v235 - v73;
  v74 = v326;
  *&v344 = v326;
  v75 = v318;
  *(&v344 + 1) = v318;
  v76 = v327;
  *&v345 = v327;
  *(&v345 + 1) = v64;
  v346 = v328;
  v347 = v65;
  v348 = v66;
  v349 = v337;
  v350 = v67;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v354 = v336;
  v355 = v339;
  v77 = v319;
  v78 = v324;
  v356 = v319;
  v357 = v324;
  v358 = v68;
  v359 = v321;
  v360 = v329;
  v361 = v69;
  v362 = v323;
  v363 = v322;
  v79 = type metadata accessor for CanvasAction.LoadedDescriptorsCodingKeys(255, &v344);
  v80 = swift_getWitnessTable();
  v295 = v79;
  v294 = v80;
  v261 = sub_1E5D04770();
  v245 = *(v261 - 8);
  v81 = (*(v245 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v284 = &v235 - v82;
  *&v344 = v74;
  *(&v344 + 1) = v75;
  *&v345 = v76;
  *(&v345 + 1) = v332;
  v83 = v328;
  v346 = v328;
  v347 = v338;
  v84 = v337;
  v348 = v330;
  v349 = v337;
  v85 = v333;
  v350 = v331;
  v351 = v333;
  v86 = v334;
  v87 = v335;
  v352 = v334;
  v353 = v335;
  v88 = v336;
  v89 = v339;
  v354 = v336;
  v355 = v339;
  v356 = v77;
  v357 = v78;
  v90 = v321;
  v358 = v320;
  v359 = v321;
  v360 = v329;
  v361 = v325;
  v362 = v323;
  v363 = v322;
  v91 = type metadata accessor for CanvasAction.LayoutDidChangeCodingKeys(255, &v344);
  v92 = swift_getWitnessTable();
  v293 = v91;
  v292 = v92;
  v258 = sub_1E5D04770();
  v244 = *(v258 - 8);
  v93 = (*(v244 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v282 = &v235 - v94;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v346 = v83;
  v347 = v338;
  v348 = v330;
  v349 = v84;
  v350 = v331;
  v351 = v85;
  v352 = v86;
  v353 = v87;
  v354 = v88;
  v355 = v89;
  v356 = v319;
  v357 = v324;
  v95 = v320;
  v358 = v320;
  v359 = v90;
  v96 = v329;
  v360 = v329;
  v361 = v325;
  v97 = v323;
  v98 = v322;
  v362 = v323;
  v363 = v322;
  v99 = type metadata accessor for CanvasAction.ItemDisappearedCodingKeys(255, &v344);
  v100 = swift_getWitnessTable();
  v291 = v99;
  v280 = v100;
  v257 = sub_1E5D04770();
  v243 = *(v257 - 8);
  v101 = (*(v243 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v281 = &v235 - v102;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  v103 = v332;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v104 = v328;
  v105 = v338;
  v346 = v328;
  v347 = v338;
  v106 = v330;
  v348 = v330;
  v349 = v337;
  v107 = v331;
  v350 = v331;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v354 = v336;
  v355 = v339;
  v356 = v319;
  v357 = v324;
  v358 = v95;
  v359 = v321;
  v360 = v96;
  v108 = v325;
  v361 = v325;
  v362 = v97;
  v363 = v98;
  v109 = type metadata accessor for CanvasAction.ItemAppearedCodingKeys(255, &v344);
  v110 = swift_getWitnessTable();
  v312 = v109;
  v278 = v110;
  v256 = sub_1E5D04770();
  v242 = *(v256 - 8);
  v111 = (*(v242 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v279 = &v235 - v112;
  v113 = v326;
  *&v344 = v326;
  v114 = v318;
  *(&v344 + 1) = v318;
  *&v345 = v327;
  *(&v345 + 1) = v103;
  v346 = v104;
  v347 = v105;
  v115 = v337;
  v348 = v106;
  v349 = v337;
  v350 = v107;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v354 = v336;
  v355 = v339;
  v116 = v319;
  v117 = v324;
  v356 = v319;
  v357 = v324;
  v118 = v321;
  v358 = v320;
  v359 = v321;
  v360 = v329;
  v361 = v108;
  v362 = v323;
  v363 = v322;
  v119 = type metadata accessor for CanvasAction.InvalidateItemsCodingKeys(255, &v344);
  v120 = swift_getWitnessTable();
  v276 = v119;
  v275 = v120;
  v255 = sub_1E5D04770();
  v241 = *(v255 - 8);
  v121 = (*(v241 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v277 = &v235 - v122;
  *&v344 = v113;
  *(&v344 + 1) = v114;
  v123 = v327;
  v124 = v332;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v346 = v328;
  v347 = v338;
  v348 = v330;
  v349 = v115;
  v125 = v331;
  v350 = v331;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v126 = v339;
  v354 = v336;
  v355 = v339;
  v356 = v116;
  v357 = v117;
  v358 = v320;
  v359 = v118;
  v360 = v329;
  v361 = v108;
  v362 = v323;
  v363 = v322;
  v127 = type metadata accessor for CanvasAction.InvalidateAllItemsCodingKeys(255, &v344);
  v128 = swift_getWitnessTable();
  v274 = v127;
  v273 = v128;
  v254 = sub_1E5D04770();
  v253 = *(v254 - 8);
  v129 = (*(v253 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v272 = &v235 - v130;
  *&v344 = v326;
  *(&v344 + 1) = v114;
  *&v345 = v123;
  *(&v345 + 1) = v124;
  v346 = v328;
  v347 = v338;
  v348 = v330;
  v349 = v337;
  v131 = v333;
  v350 = v125;
  v351 = v333;
  v132 = v334;
  v133 = v335;
  v352 = v334;
  v353 = v335;
  v134 = v336;
  v354 = v336;
  v355 = v126;
  v356 = v319;
  v357 = v324;
  v135 = v320;
  v358 = v320;
  v359 = v118;
  v136 = v329;
  v360 = v329;
  v361 = v325;
  v137 = v323;
  v138 = v322;
  v362 = v323;
  v363 = v322;
  v139 = type metadata accessor for CanvasAction.EndCanvasRefreshCodingKeys(255, &v344);
  v140 = swift_getWitnessTable();
  v271 = v139;
  v270 = v140;
  v252 = sub_1E5D04770();
  v251 = *(v252 - 8);
  v141 = (*(v251 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v269 = &v235 - v142;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v346 = v328;
  v347 = v338;
  v143 = v330;
  v348 = v330;
  v349 = v337;
  v350 = v331;
  v351 = v131;
  v352 = v132;
  v353 = v133;
  v354 = v134;
  v355 = v339;
  v144 = v319;
  v145 = v324;
  v356 = v319;
  v357 = v324;
  v146 = v321;
  v358 = v135;
  v359 = v321;
  v360 = v136;
  v147 = v325;
  v361 = v325;
  v362 = v137;
  v363 = v138;
  v148 = type metadata accessor for CanvasAction.CodingKeys(255, &v344);
  v315 = swift_getWitnessTable();
  v310 = sub_1E5D04770();
  v309 = *(v310 - 8);
  v149 = (*(v309 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v151 = &v235 - v150;
  *&v344 = v326;
  *(&v344 + 1) = v318;
  *&v345 = v327;
  *(&v345 + 1) = v332;
  v346 = v328;
  v347 = v338;
  v348 = v143;
  v349 = v337;
  v350 = v331;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v354 = v336;
  v355 = v339;
  v356 = v144;
  v357 = v145;
  v358 = v320;
  v359 = v146;
  v360 = v329;
  v361 = v147;
  v362 = v137;
  v363 = v138;
  v308 = type metadata accessor for CanvasAction(0, &v344);
  v290 = *(v308 - 8);
  v152 = *(v290 + 64);
  v153 = (MEMORY[0x1EEE9AC00])();
  v250 = (&v235 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = MEMORY[0x1EEE9AC00](v153);
  v249 = &v235 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v239 = (&v235 - v158);
  v159 = MEMORY[0x1EEE9AC00](v157);
  v240 = (&v235 - v160);
  v161 = MEMORY[0x1EEE9AC00](v159);
  v163 = &v235 - v162;
  v164 = MEMORY[0x1EEE9AC00](v161);
  v166 = &v235 - v165;
  v167 = MEMORY[0x1EEE9AC00](v164);
  v169 = &v235 - v168;
  v170 = MEMORY[0x1EEE9AC00](v167);
  v172 = &v235 - v171;
  MEMORY[0x1EEE9AC00](v170);
  v174 = &v235 - v173;
  v175 = v317[4];
  __swift_project_boxed_opaque_existential_1(v317, v317[3]);
  v314 = v151;
  *&v311 = v148;
  v176 = v316;
  sub_1E5D04870();
  if (v176)
  {
LABEL_33:
    v223 = v317;
    return __swift_destroy_boxed_opaque_existential_1(v223);
  }

  v236 = v169;
  v235 = v172;
  v237 = v166;
  v238 = v163;
  v315 = v174;
  v177 = v339;
  v178 = v325;
  v316 = 0;
  v179 = v313;
  v180 = v310;
  *&v344 = sub_1E5D04760();
  sub_1E5D044A0();
  swift_getWitnessTable();
  *&v342 = sub_1E5D04640();
  *(&v342 + 1) = v181;
  *&v343 = v182;
  *(&v343 + 1) = v183;
  sub_1E5D04630();
  swift_getWitnessTable();
  sub_1E5D045D0();
  v184 = v180;
  if (v344 == 13 || (v311 = v342, v344 = v342, v345 = v343, (sub_1E5D045E0() & 1) == 0))
  {
    v192 = sub_1E5D04680();
    swift_allocError();
    v194 = v193;
    v195 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066B70, &qword_1E5D04FC0) + 48);
    *v194 = v308;
    v196 = v314;
    sub_1E5D04710();
    sub_1E5D04670();
    (*(*(v192 - 8) + 104))(v194, *MEMORY[0x1E69E6AF8], v192);
    swift_willThrow();
    (*(v309 + 8))(v196, v180);
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v185 = v316;
  v186 = v177;
  v187 = v338;
  switch(&v322)
  {
    case 1u:
      LOBYTE(v344) = 1;
      v213 = v272;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_31;
      }

      (*(v253 + 8))(v213, v254);
      (*(v309 + 8))(v189, v184);
      swift_unknownObjectRelease();
      v190 = v315;
      v191 = v308;
      goto LABEL_37;
    case 2u:
      LOBYTE(v344) = 2;
      v208 = v277;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_31;
      }

      sub_1E5D04590();
      v340 = v177;
      swift_getWitnessTable();
      v209 = v255;
      sub_1E5D04750();
      (*(v241 + 8))(v208, v209);
      (*(v309 + 8))(v314, v184);
      swift_unknownObjectRelease();
      v231 = v235;
      *v235 = v344;
      v191 = v308;
      swift_storeEnumTagMultiPayload();
      v232 = v290;
      v190 = v315;
      (*(v290 + 32))(v315, v231, v191);
      goto LABEL_40;
    case 3u:
      LOBYTE(v344) = 3;
      v210 = v279;
      v198 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_27;
      }

      sub_1E5D03F90();
      sub_1E5CE6D74(qword_1ED066B78);
      v202 = v236;
      v211 = v256;
      sub_1E5D04750();
      (*(v242 + 8))(v210, v211);
      (*(v309 + 8))(v198, v184);
      swift_unknownObjectRelease();
      v191 = v308;
      goto LABEL_38;
    case 4u:
      LOBYTE(v344) = 4;
      v201 = v281;
      v198 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_27;
      }

      sub_1E5D03F90();
      sub_1E5CE6D74(qword_1ED066B78);
      v202 = v237;
      v203 = v257;
      sub_1E5D04750();
      (*(v243 + 8))(v201, v203);
      (*(v309 + 8))(v198, v184);
      swift_unknownObjectRelease();
      v191 = v308;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v232 = v290;
      v190 = v315;
      (*(v290 + 32))(v315, v202, v191);
      goto LABEL_40;
    case 5u:
      LOBYTE(v344) = 5;
      v214 = v282;
      v198 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_27;
      }

      *&v344 = v337;
      *(&v344 + 1) = v331;
      *&v345 = v178;
      *(&v345 + 1) = v323;
      sub_1E5D041A0();
      swift_getWitnessTable();
      v199 = v238;
      v215 = v258;
      sub_1E5D04750();
      (*(v244 + 8))(v214, v215);
      (*(v309 + 8))(v198, v184);
      swift_unknownObjectRelease();
      v191 = v308;
      goto LABEL_39;
    case 6u:
      LOBYTE(v344) = 6;
      v216 = v284;
      v198 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_27;
      }

      v225 = v186;
      v226 = v184;
      *&v344 = v326;
      *(&v344 + 1) = v318;
      *&v345 = v327;
      *(&v345 + 1) = v332;
      v346 = v328;
      v347 = v330;
      v348 = v337;
      v349 = v187;
      v350 = v333;
      v351 = v334;
      v352 = v335;
      v353 = v336;
      v354 = v225;
      v355 = v319;
      v356 = v324;
      v357 = v320;
      v358 = v329;
      v359 = v178;
      v360 = v321;
      v361 = v322;
      sub_1E5D04140();
      sub_1E5D044A0();
      v341 = swift_getWitnessTable();
      swift_getWitnessTable();
      v227 = v261;
      sub_1E5D04750();
      (*(v245 + 8))(v216, v227);
      (*(v309 + 8))(v198, v226);
      swift_unknownObjectRelease();
      v233 = v240;
      *v240 = v364;
      v191 = v308;
      swift_storeEnumTagMultiPayload();
      v232 = v290;
      v190 = v315;
      (*(v290 + 32))(v315, v233, v191);
      v234 = v317;
      v179 = v313;
      goto LABEL_41;
    case 7u:
      LOBYTE(v344) = 7;
      v212 = v283;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_31;
      }

      (*(v259 + 8))(v212, v260);
      (*(v309 + 8))(v189, v184);
      swift_unknownObjectRelease();
      v190 = v315;
      v191 = v308;
      goto LABEL_37;
    case 8u:
      LOBYTE(v344) = 8;
      v222 = v285;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_31;
      }

      (*(v262 + 8))(v222, v263);
      (*(v309 + 8))(v189, v184);
      swift_unknownObjectRelease();
      v190 = v315;
      v191 = v308;
      goto LABEL_37;
    case 9u:
      LOBYTE(v344) = 9;
      v205 = v286;
      v198 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_27;
      }

      v206 = v184;
      v207 = v264;
      v228 = sub_1E5D04730();
      v230 = v229;
      (*(v246 + 8))(v205, v207);
      (*(v309 + 8))(v198, v206);
      swift_unknownObjectRelease();
      v199 = v239;
      *v239 = v228;
      v199[1] = v230;
      v191 = v308;
      goto LABEL_39;
    case 0xAu:
      LOBYTE(v344) = 10;
      v217 = v287;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_31;
      }

      v218 = v184;
      v219 = v249;
      v220 = v265;
      sub_1E5D04750();
      v221 = v309;
      (*(v247 + 8))(v217, v220);
      (*(v221 + 8))(v314, v218);
      swift_unknownObjectRelease();
      v191 = v308;
      swift_storeEnumTagMultiPayload();
      v232 = v290;
      v190 = v315;
      (*(v290 + 32))(v315, v219, v191);
      goto LABEL_40;
    case 0xBu:
      LOBYTE(v344) = 11;
      v197 = v288;
      v198 = v314;
      sub_1E5D04700();
      if (v185)
      {
LABEL_27:
        (*(v309 + 8))(v198, v184);
        goto LABEL_32;
      }

      *&v344 = v337;
      *(&v344 + 1) = v331;
      *&v345 = v178;
      *(&v345 + 1) = v323;
      sub_1E5D041A0();
      swift_getWitnessTable();
      v199 = v250;
      v200 = v266;
      sub_1E5D04750();
      (*(v248 + 8))(v197, v200);
      (*(v309 + 8))(v198, v184);
      swift_unknownObjectRelease();
      v191 = v308;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v232 = v290;
      v190 = v315;
      (*(v290 + 32))(v315, v199, v191);
LABEL_40:
      v234 = v317;
      goto LABEL_41;
    case 0xCu:
      LOBYTE(v344) = 12;
      v204 = v289;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
        goto LABEL_31;
      }

      (*(v267 + 8))(v204, v268);
      (*(v309 + 8))(v189, v184);
      swift_unknownObjectRelease();
      v190 = v315;
      v191 = v308;
      goto LABEL_37;
    default:
      LOBYTE(v344) = 0;
      v188 = v269;
      v189 = v314;
      sub_1E5D04700();
      if (v185)
      {
LABEL_31:
        (*(v309 + 8))(v189, v184);
        goto LABEL_32;
      }

      (*(v251 + 8))(v188, v252);
      (*(v309 + 8))(v189, v184);
      swift_unknownObjectRelease();
      v190 = v315;
      v191 = v308;
LABEL_37:
      swift_storeEnumTagMultiPayload();
      v234 = v317;
      v232 = v290;
LABEL_41:
      (*(v232 + 32))(v179, v190, v191);
      v223 = v234;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v223);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1E5CE6D74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5D03F90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E5CE6E40(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 136);
  sub_1E5D04590();
  if (v4 <= 0x3F)
  {
    sub_1E5CE6FF0();
    if (v5 <= 0x3F)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 168);
      sub_1E5D041A0();
      if (v6 <= 0x3F)
      {
        v11 = *(a1 + 16);
        v12 = *(a1 + 32);
        v13 = *(a1 + 48);
        v14 = *(a1 + 64);
        v15 = *(a1 + 56);
        v16 = *(a1 + 88);
        v17 = *(a1 + 104);
        v18 = *(a1 + 120);
        v19 = *(a1 + 144);
        v20 = *(a1 + 160);
        v21 = *(a1 + 152);
        v22 = *(a1 + 184);
        sub_1E5D04140();
        sub_1E5D044A0();
        if (v7 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v8 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5CE6FF0()
{
  if (!qword_1EE2FACB0)
  {
    v0 = sub_1E5D03F90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FACB0);
    }
  }
}

uint64_t sub_1E5CE7038(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5CE70C8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasFetchError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CanvasFetchError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

uint64_t sub_1E5CE76D4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];

  return MEMORY[0x1EEDDC738](v0);
}

uint64_t CanvasFetchError.hashValue.getter()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

unint64_t sub_1E5CE77A4()
{
  result = qword_1ED066C00;
  if (!qword_1ED066C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066C00);
  }

  return result;
}

uint64_t LazyCanvasFetcher.LazyCanvasFetcherError.hashValue.getter()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

uint64_t sub_1E5CE788C(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;
}

void *LazyCanvasFetcher.__allocating_init(batchSize:fetchLazySectionDescriptors:fetchItemForPlaceholders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1E5CEBA68(a1, a2, a3);

  return v6;
}

void *LazyCanvasFetcher.init(batchSize:fetchLazySectionDescriptors:fetchItemForPlaceholders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E5CEBA68(a1, a2, a3);

  return v3;
}

uint64_t sub_1E5CE794C()
{
  *(v1 + 184) = v0;
  *(v1 + 192) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1E5CE7994, v0, 0);
}

uint64_t sub_1E5CE7994()
{
  v1 = *(v0 + 192);
  v2 = *(*(v0 + 184) + 128);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = v1[10];
  v3[2] = v4;
  v5 = v1[11];
  v3[3] = v5;
  v6 = v1[12];
  v3[4] = v6;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v35 = v7;
  *&v7 = v6;
  *(&v7 + 1) = v1[13];
  v34 = v7;
  v3[5] = *(&v7 + 1);
  v8 = v1[14];
  v3[6] = v8;
  v9 = v1[15];
  v3[7] = v9;
  v10 = v1[16];
  v3[8] = v10;
  v11 = v1[17];
  v3[9] = v11;
  v3[10] = v1[18];
  *&v7 = v8;
  *(&v7 + 1) = v9;
  v33 = v7;
  *&v7 = v10;
  *(&v7 + 1) = v11;
  v32 = v7;
  v12 = v1[19];
  v3[11] = v12;
  v13 = v1[20];
  v3[12] = v13;
  v14 = v1[21];
  v15 = MEMORY[0x1E699D7A8];
  v3[13] = v14;
  v16 = v15[1];
  v36 = (v15 + *v15);
  v17 = v1[22];
  v3[14] = v17;
  v18 = swift_task_alloc();
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *&v20 = v14;
  *(&v20 + 1) = v17;
  v21 = v1[23];
  v3[15] = v21;
  v22 = v1[24];
  v3[16] = v22;
  v23 = v1[25];
  v3[17] = v23;
  v24 = v1[26];
  v3[18] = v24;
  v25 = v1[27];
  v3[19] = v25;
  v26 = v1[28];
  v3[20] = v26;
  v27 = v1[29];
  v3[21] = v27;
  v3[22] = v1[30];
  v28 = v1[31];
  v3[23] = v28;
  *(v0 + 16) = v35;
  *(v0 + 208) = v18;
  *(v0 + 32) = v34;
  *(v0 + 48) = v33;
  *(v0 + 64) = v32;
  *(v0 + 80) = v19;
  *&v19 = v21;
  *(&v19 + 1) = v22;
  *&v29 = v23;
  *(&v29 + 1) = v24;
  *(v0 + 112) = v19;
  *(v0 + 128) = v29;
  *(v0 + 96) = v20;
  *(v0 + 144) = v25;
  *(v0 + 152) = v26;
  *(v0 + 160) = v27;
  *(v0 + 168) = v28;
  sub_1E5D04140();
  v30 = sub_1E5D044A0();
  *v18 = v0;
  v18[1] = sub_1E5CE7BC8;

  return (v36)(v0 + 176, sub_1E5CEC37C, v3, v30);
}

uint64_t sub_1E5CE7BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E693BCD0);
  }

  v5 = *(v2 + 200);
  v6 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1E5CE7D08, v6, 0);
}

uint64_t sub_1E5CE7D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v82 = a1;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a10;
  v44 = a11;
  v45 = a12;
  v46 = a13;
  v47 = a14;
  v48 = a15;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v53 = a20;
  v54 = a21;
  v55 = a22;
  v56 = a23;
  v57 = a24;
  v58 = a25;
  v59 = a26;
  v60 = a2;
  v61 = a3;
  sub_1E5D04070();
  v27 = sub_1E5D044A0();
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v66 = a8;
  v67 = a10;
  v68 = a11;
  v69 = a12;
  v70 = a14;
  v71 = a15;
  v72 = a16;
  v73 = a17;
  v74 = a18;
  v75 = a19;
  v76 = a20;
  v77 = a21;
  v78 = a22;
  v79 = a23;
  v80 = a24;
  v81 = a26;
  v28 = sub_1E5D04140();
  WitnessTable = swift_getWitnessTable();
  result = sub_1E5CE8660(sub_1E5CEC3E0, v37, v27, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);
  *a9 = result;
  return result;
}

uint64_t sub_1E5CE7ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v69 = a3;
  v98 = a6;
  v99 = a8;
  v95 = a7;
  v96 = a5;
  v68 = a2;
  v80 = a1;
  v76 = a9;
  v88 = a22;
  v87 = a21;
  v86 = a20;
  v85 = a19;
  v84 = a18;
  v94 = a17;
  v93 = a16;
  v92 = a15;
  v82 = a10;
  v90 = a24;
  v78 = a25;
  v91 = a12;
  v77 = a13;
  v27 = sub_1E5D04620();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v75 = &v66 - v29;
  v30 = sub_1E5D040E0();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v74 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a4;
  v124 = a12;
  v97 = a4;
  v125 = a15;
  v126 = a24;
  sub_1E5D040F0();
  v33 = sub_1E5D04620();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v73 = &v66 - v35;
  v83 = a11;
  v123 = a11;
  v124 = a14;
  v89 = a23;
  v125 = a23;
  v126 = a26;
  v36 = sub_1E5D04100();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v72 = &v66 - v38;
  v40 = v95;
  v39 = v96;
  v123 = a4;
  v124 = v96;
  v125 = v98;
  v126 = v95;
  v41 = v82;
  v127 = v99;
  v128 = v82;
  v129 = a11;
  v130 = v91;
  v131 = a14;
  v132 = v92;
  v133 = v93;
  v134 = v94;
  v135 = v84;
  v136 = v85;
  v137 = v86;
  v138 = v87;
  v42 = v88;
  v139 = v88;
  v140 = a23;
  v141 = v90;
  v142 = a26;
  v71 = sub_1E5D04070();
  v67 = sub_1E5D04020();
  v143 = v67;
  v122[2] = v97;
  v122[3] = v39;
  v122[4] = v98;
  v122[5] = v40;
  v122[6] = v99;
  v122[7] = v41;
  v122[8] = v83;
  v122[9] = v91;
  v122[10] = v77;
  v122[11] = a14;
  v122[12] = v92;
  v122[13] = v93;
  v122[14] = v94;
  v43 = v84;
  v122[15] = v84;
  v122[16] = v85;
  v122[17] = v86;
  v122[18] = v87;
  v122[19] = v42;
  v122[20] = v89;
  v122[21] = v90;
  v122[22] = v78;
  v122[23] = a26;
  v122[24] = v68;
  v122[25] = v69;
  v123 = v97;
  v124 = v39;
  v125 = v98;
  v126 = v40;
  v127 = v99;
  v128 = a14;
  v79 = a14;
  v129 = v92;
  v130 = v93;
  v44 = v92;
  v45 = v93;
  v131 = v94;
  v132 = v84;
  v133 = v85;
  v134 = v86;
  v46 = v85;
  v47 = v86;
  v135 = v87;
  v136 = a26;
  v48 = v87;
  v81 = a26;
  sub_1E5D04000();
  v68 = sub_1E5D044A0();
  v123 = v97;
  v124 = v96;
  v125 = v98;
  v126 = v95;
  v127 = v99;
  v128 = a14;
  v129 = v44;
  v130 = v45;
  v49 = v94;
  v131 = v94;
  v132 = v43;
  v50 = v43;
  v133 = v46;
  v134 = v47;
  v135 = v48;
  v136 = a26;
  v51 = sub_1E5D04120();
  v69 = MEMORY[0x1E69E6340];
  v52 = v68;
  WitnessTable = swift_getWitnessTable();
  v54 = v70;
  v56 = sub_1E5CE8660(sub_1E5CEC44C, v122, v52, v51, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v55);
  v68 = v54;

  v123 = v56;
  v100 = v97;
  v101 = v96;
  v102 = v98;
  v103 = v95;
  v104 = v99;
  v105 = v82;
  v106 = v83;
  v107 = v91;
  v108 = v77;
  v109 = v79;
  v110 = v92;
  v111 = v93;
  v112 = v49;
  v113 = v50;
  v114 = v46;
  v115 = v47;
  v116 = v48;
  v117 = v88;
  v118 = v89;
  v119 = v90;
  v120 = v78;
  v121 = v81;
  sub_1E5D044A0();

  swift_getWitnessTable();
  v57 = v68;
  sub_1E5D046A0();
  v78 = v57;
  v123 = v56;
  swift_getWitnessTable();
  v58 = sub_1E5D045E0();
  v70 = v56;
  if (v58)
  {
  }

  else
  {
    v59 = sub_1E5D04480();

    if (v59 != sub_1E5D04480())
    {
      v77 = MEMORY[0x1E69E7CD0];
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C18, &qword_1E5D06250);
  v60 = sub_1E5D04160();
  v61 = *(v60 - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1E5D06020;
  (*(v61 + 104))(v64 + v63, *MEMORY[0x1E699D8C8], v60);
  v77 = sub_1E5CEC558(v64);
  swift_setDeallocating();
  (*(v61 + 8))(v64 + v63, v60);
  swift_deallocClassInstance();
LABEL_6:
  sub_1E5D04010();
  sub_1E5D04050();
  sub_1E5D04040();
  sub_1E5D04030();
  sub_1E5D04060();
  return sub_1E5D04130();
}

uint64_t sub_1E5CE8660(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1E5D045B0();
  if (!v26)
  {
    return sub_1E5D04470();
  }

  v48 = v26;
  v52 = sub_1E5D046D0();
  v39 = sub_1E5D046E0();
  sub_1E5D046B0();
  result = sub_1E5D045A0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1E5D045F0();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1E5D046C0();
      result = sub_1E5D045C0();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5CE8A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v32 = a1;
  v31[2] = a13;
  v31[3] = a14;
  v31[1] = a12;
  v31[0] = a11;
  v24 = sub_1E5D04150();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  v41 = a14;
  v42 = a19;
  sub_1E5D04120();
  v29 = sub_1E5D04110();
  (*(v25 + 104))(v28, *MEMORY[0x1E699D850], v24);
  LOBYTE(a5) = sub_1E5CE8C14(v28, v29);

  (*(v25 + 8))(v28, v24);
  return a5 & 1;
}

uint64_t sub_1E5CE8C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E5D04150();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1E5CEC878(&qword_1EE2FA110, MEMORY[0x1E699D858]), v9 = sub_1E5D04400(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1E5CEC878(&qword_1EE2FA108, MEMORY[0x1E699D858]);
      v17 = sub_1E5D04420();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1E5CE8E2C(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  *(v2 + 544) = v4;
  v5 = v3[11];
  *(v2 + 552) = v5;
  v6 = v3[12];
  *(v2 + 560) = v6;
  v7 = v3[13];
  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v2 + 568) = v7;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v10 = v3[14];
  *(v2 + 576) = v10;
  v11 = v3[17];
  *(v2 + 584) = v11;
  v12 = v3[15];
  *(v2 + 592) = v12;
  v13 = v3[16];
  *&v14 = v10;
  *(&v14 + 1) = v11;
  *(v2 + 600) = v13;
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v16 = v3[18];
  *(v2 + 608) = v16;
  v17 = v3[19];
  *(v2 + 616) = v17;
  v18 = v3[20];
  *(v2 + 624) = v18;
  v19 = v3[21];
  *&v20 = v16;
  *(&v20 + 1) = v17;
  *(v2 + 632) = v19;
  *&v21 = v18;
  *(&v21 + 1) = v19;
  v22 = v3[22];
  *(v2 + 640) = v22;
  v23 = v3[23];
  *(v2 + 648) = v23;
  v24 = v3[24];
  *(v2 + 656) = v24;
  v25 = v3[25];
  *&v26 = v22;
  *(&v26 + 1) = v23;
  *(v2 + 664) = v25;
  *&v27 = v24;
  *(&v27 + 1) = v25;
  v28 = v3[26];
  *(v2 + 672) = v28;
  v29 = v3[29];
  *(v2 + 680) = v29;
  v30 = v3[27];
  *(v2 + 688) = v30;
  v31 = v3[28];
  *(v2 + 696) = v31;
  v32 = v3[30];
  *(v2 + 704) = v32;
  v33 = v3[31];
  *(v2 + 16) = v8;
  *(v2 + 712) = v33;
  *(v2 + 32) = v9;
  *(v2 + 48) = v14;
  *(v2 + 64) = v15;
  *(v2 + 80) = v20;
  *&v8 = v28;
  *(&v8 + 1) = v29;
  *&v9 = v30;
  *(&v9 + 1) = v31;
  *(v2 + 96) = v21;
  *(v2 + 112) = v26;
  *(v2 + 144) = v8;
  *(v2 + 160) = v9;
  *(v2 + 128) = v27;
  *(v2 + 176) = v32;
  *(v2 + 184) = v33;
  v34 = type metadata accessor for CanvasAction(0, v2 + 16);
  *(v2 + 720) = v34;
  v35 = *(v34 - 8);
  *(v2 + 728) = v35;
  v36 = *(v35 + 64) + 15;
  *(v2 + 736) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9174, v1, 0);
}

uint64_t sub_1E5CE9174()
{
  v1 = *(v0[67] + 128);
  v2 = *(MEMORY[0x1E699D798] + 4);
  v6 = (*MEMORY[0x1E699D798] + MEMORY[0x1E699D798]);
  v3 = swift_task_alloc();
  v0[93] = v3;
  *v3 = v0;
  v3[1] = sub_1E5CE9224;
  v4 = v0[66];

  return v6(v4);
}

uint64_t sub_1E5CE9224()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[92];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[94] = v8;
    *v8 = v4;
    v8[1] = sub_1E5CE939C;
    v9 = v2[67];

    return sub_1E5CE794C();
  }
}

uint64_t sub_1E5CE939C(uint64_t a1)
{
  v2 = *(*v1 + 752);
  v3 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 760) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5CE94B4, v3, 0);
}

uint64_t sub_1E5CE94B4()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 712);
  v3 = *(v0 + 680);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(*(v0 + 536) + 144);

  v7 = *(v0 + 560);
  *(v0 + 368) = *(v0 + 544);
  *(v0 + 384) = v7;
  *(v0 + 400) = v5;
  *(v0 + 408) = *(v0 + 592);
  *(v0 + 424) = v4;
  v8 = *(v0 + 632);
  *(v0 + 432) = *(v0 + 616);
  *(v0 + 448) = v8;
  v9 = *(v0 + 664);
  *(v0 + 464) = *(v0 + 648);
  *(v0 + 480) = v9;
  *(v0 + 496) = *(v0 + 688);
  *(v0 + 512) = v3;
  *(v0 + 520) = v2;
  sub_1E5D04140();
  swift_getWitnessTable();
  LOBYTE(v1) = sub_1E5D044C0();

  if (v1)
  {
    v10 = *(v0 + 760);
    v11 = *(v0 + 680);
    v12 = *(v0 + 672);
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    v25 = *(v0 + 560);
    v26 = *(v0 + 544);
    v30 = *(v0 + 624);
    v31 = *(v0 + 608);
    v29 = *(v0 + 640);
    v27 = *(v0 + 592);
    v28 = *(v0 + 656);
    v32 = *(v0 + 688);
    v33 = *(v0 + 704);

    *(v0 + 192) = v26;
    *(v0 + 208) = v25;
    *(v0 + 224) = v14;
    *(v0 + 232) = v27;
    *(v0 + 248) = v13;
    *(v0 + 256) = v31;
    *(v0 + 272) = v30;
    *(v0 + 288) = v29;
    *(v0 + 304) = v28;
    *(v0 + 320) = v12;
    *(v0 + 328) = v32;
    *(v0 + 344) = v11;
    *(v0 + 352) = v33;
    type metadata accessor for LazyCanvasFetcher.LazyCanvasFetcherError(0, v0 + 192);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v15 = *(v0 + 736);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 760);
    v19 = *(v0 + 736);
    v20 = *(v0 + 720);
    v21 = *(v0 + 536);
    v22 = *(v21 + 144);
    *(v21 + 144) = v18;

    *(v0 + 768) = *(v21 + 136);
    *v19 = v18;
    swift_storeEnumTagMultiPayload();
    sub_1E5D041E0();
    swift_getWitnessTable();
    v24 = sub_1E5D044D0();

    return MEMORY[0x1EEE6DFA0](sub_1E5CE9770, v24, v23);
  }
}

uint64_t sub_1E5CE9770()
{
  v1 = v0[96];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  sub_1E5D041C0();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5CE980C()
{
  *(v1 + 192) = v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 232);
  v6 = *(*v0 + 96);
  v7 = *(*v0 + 120);
  v8 = *(*v0 + 144);
  v9 = *(*v0 + 160);
  v10 = *(*v0 + 176);
  v11 = *(*v0 + 192);
  v12 = *(*v0 + 216);
  v13 = *(*v0 + 240);
  *(v1 + 16) = *(*v0 + 80);
  *(v1 + 32) = v6;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  *(v1 + 96) = v9;
  *(v1 + 112) = v10;
  *(v1 + 128) = v11;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  v14 = type metadata accessor for CanvasAction(0, v1 + 16);
  *(v1 + 200) = v14;
  v15 = *(v14 - 8);
  *(v1 + 208) = v15;
  v16 = *(v15 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9984, v0, 0);
}

uint64_t sub_1E5CE9984()
{
  v1 = *(*(v0 + 192) + 128);
  v2 = *(MEMORY[0x1E699D7B8] + 4);
  v5 = (*MEMORY[0x1E699D7B8] + MEMORY[0x1E699D7B8]);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = sub_1E5CE9A2C;

  return v5();
}

uint64_t sub_1E5CE9A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 216);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 192);

    return MEMORY[0x1EEE6DFA0](sub_1E5CE9B78, v8, 0);
  }
}

uint64_t sub_1E5CE9B78()
{
  v1 = v0[27];
  v2 = v0[25];
  v0[29] = *(v0[24] + 136);
  swift_storeEnumTagMultiPayload();
  sub_1E5D041E0();
  swift_getWitnessTable();
  v4 = sub_1E5D044D0();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9C34, v4, v3);
}

uint64_t sub_1E5CE9C34()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  sub_1E5D041C0();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5CE9CCC(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 232);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 144);
  v10 = *(*v1 + 160);
  v11 = *(*v1 + 176);
  v12 = *(*v1 + 192);
  v13 = *(*v1 + 216);
  v14 = *(*v1 + 240);
  *(v2 + 16) = *(*v1 + 80);
  *(v2 + 32) = v7;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 96) = v10;
  *(v2 + 112) = v11;
  *(v2 + 128) = v12;
  *(v2 + 144) = v5;
  *(v2 + 152) = v6;
  *(v2 + 160) = v13;
  *(v2 + 176) = v14;
  v15 = type metadata accessor for CanvasAction(0, v2 + 16);
  *(v2 + 208) = v15;
  v16 = *(v15 - 8);
  *(v2 + 216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9E44, v1, 0);
}

uint64_t sub_1E5CE9E44()
{
  v1 = *(v0[25] + 128);
  v2 = *(MEMORY[0x1E699D7B0] + 4);
  v6 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1E5CE9EF4;
  v4 = v0[24];

  return v6(v4);
}

uint64_t sub_1E5CE9EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 224);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 200);

    return MEMORY[0x1EEE6DFA0](sub_1E5CEA040, v8, 0);
  }
}

uint64_t sub_1E5CEA040()
{
  v1 = v0[28];
  v2 = v0[26];
  v0[30] = *(v0[25] + 136);
  swift_storeEnumTagMultiPayload();
  sub_1E5D041E0();
  swift_getWitnessTable();
  v4 = sub_1E5D044D0();

  return MEMORY[0x1EEE6DFA0](sub_1E5CEA0FC, v4, v3);
}

uint64_t sub_1E5CEA0FC()
{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_1E5D041C0();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

void *LazyCanvasFetcher.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LazyCanvasFetcher.__deallocating_deinit()
{
  LazyCanvasFetcher.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t LazyCanvasFetcher.fetchSectionDescriptors(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E5CEA248, v1, 0);
}

uint64_t sub_1E5CEA248()
{
  v1 = v0[3];
  v2 = *(v1 + 120);
  v7 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E5CEA33C;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_1E5CEA33C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_1E5CEA818;
  }

  else
  {
    v4[6] = a1;
    v8 = sub_1E5CEA478;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E5CEA478()
{
  v1 = *(v0[3] + 128);
  v2 = *(MEMORY[0x1E699D7A0] + 4);
  v6 = (*MEMORY[0x1E699D7A0] + MEMORY[0x1E699D7A0]);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5CEA528;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E5CEA528()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1E5CEA684;
  v6 = *(v1 + 24);

  return sub_1E5CE794C();
}

uint64_t sub_1E5CEA684(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5CEA79C, v3, 0);
}

uint64_t sub_1E5CEA79C()
{
  v1 = v0[3];
  v2 = *(v1 + 144);
  *(v1 + 144) = v0[9];

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_1E5CEA818()
{
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1E5D04210();
  __swift_project_value_buffer(v2, qword_1EE2FC850);
  MEMORY[0x1E693BCE0](v1);
  v3 = sub_1E5D041F0();
  v4 = sub_1E5D04600();
  MEMORY[0x1E693BCD0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1E693BCE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1E5CDB000, v3, v4, "Failed to fetch section descriptor: %@", v6, 0xCu);
    sub_1E5CEC31C(v7, &qword_1ED066C08, &qword_1E5D06048);
    MEMORY[0x1E693BE80](v7, -1, -1);
    MEMORY[0x1E693BE80](v6, -1, -1);
  }

  v9 = *(v0 + 40);

  swift_willThrow();
  v10 = *(v0 + 8);
  v11 = *(v0 + 40);

  return v10();
}

uint64_t LazyCanvasFetcher.onItemAppeared(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_1E5D03F90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_1E5D04530();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v3[10];
  *(v14 + 40) = v3[11];
  *(v14 + 48) = v4[6];
  *(v14 + 64) = v3[14];
  *(v14 + 72) = *(v4 + 120);
  *(v14 + 88) = v3[17];
  *(v14 + 96) = v3[18];
  *(v14 + 104) = v3[19];
  *(v14 + 112) = v4[10];
  *(v14 + 128) = v3[22];
  *(v14 + 136) = *(v4 + 184);
  *(v14 + 152) = v3[25];
  *(v14 + 160) = v4[13];
  *(v14 + 176) = v4[14];
  *(v14 + 192) = v3[30];
  *(v14 + 200) = v3[31];
  *(v14 + 208) = v1;
  (*(v6 + 32))(v14 + v13, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1E5CEAE6C(0, 0, v11, &unk_1E5D06068, v14);
}

uint64_t sub_1E5CEACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5CEAD78;

  return sub_1E5CE8E2C(a5);
}

uint64_t sub_1E5CEAD78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5CEAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1E5CEC2AC(a3, v24 - v10);
  v12 = sub_1E5D04530();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5CEC31C(v11, &qword_1ED066C10, &qword_1E5D06058);
  }

  else
  {
    sub_1E5D04520();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E5D044D0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E5D04440() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1E5CEC31C(a3, &qword_1ED066C10, &qword_1E5D06058);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5CEC31C(a3, &qword_1ED066C10, &qword_1E5D06058);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t LazyCanvasFetcher.makeFetcherStream()(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 232);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 144);
  v10 = *(*v1 + 160);
  v11 = *(*v1 + 176);
  v12 = *(*v1 + 192);
  v13 = *(*v1 + 216);
  v14 = *(*v1 + 240);
  *(v2 + 16) = *(*v1 + 80);
  *(v2 + 32) = v7;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 96) = v10;
  *(v2 + 112) = v11;
  *(v2 + 128) = v12;
  *(v2 + 144) = v5;
  *(v2 + 152) = v6;
  *(v2 + 160) = v13;
  *(v2 + 176) = v14;
  *(v2 + 208) = type metadata accessor for CanvasAction(255, v2 + 16);
  v15 = sub_1E5D04540();
  *(v2 + 216) = v15;
  v16 = *(v15 - 8);
  *(v2 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CEB294, v1, 0);
}

uint64_t sub_1E5CEB294()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v0[30] = *(v0[25] + 136);
  swift_checkMetadataState();
  v4 = *MEMORY[0x1E69E8650];
  v5 = sub_1E5D04540();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  v3[3] = sub_1E5D04550();
  v3[4] = swift_getWitnessTable();
  v0[31] = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5D041E0();
  swift_getWitnessTable();
  v7 = sub_1E5D044D0();

  return MEMORY[0x1EEE6DFA0](sub_1E5CEB3EC, v7, v6);
}

uint64_t sub_1E5CEB3EC()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  sub_1E5D041B0();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall LazyCanvasFetcher.invalidateAllItems()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_1E5D04530();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1E5CEAE6C(0, 0, v4, &unk_1E5D06080, v6);
}

uint64_t sub_1E5CEB588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CEC8C0;

  return sub_1E5CE980C();
}

uint64_t LazyCanvasFetcher.invalidateItems(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E5D04530();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_1E5CEAE6C(0, 0, v6, &unk_1E5D06090, v8);
}

uint64_t sub_1E5CEB72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5CEC8C0;

  return sub_1E5CE9CCC(a5);
}

uint64_t sub_1E5CEB7C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5CEB860;

  return LazyCanvasFetcher.fetchSectionDescriptors(for:)(a1);
}

uint64_t sub_1E5CEB860(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E5CEB960(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5CEAD78;

  return LazyCanvasFetcher.makeFetcherStream()(a1);
}

void *sub_1E5CEBA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  swift_defaultActor_initialize();
  v7 = v5[11];
  v22 = v5[12];
  v21 = v5[13];
  v20 = v5[14];
  v8 = v5[17];
  v18 = v5[15];
  v17 = v5[16];
  v9 = v5[18];
  v10 = v5[19];
  v19 = v5[20];
  v16 = v5[21];
  v31 = v5[22];
  v30 = v5[23];
  v29 = v5[24];
  v11 = v5[25];
  v28 = v5[26];
  v23 = v5[29];
  v27 = v5[27];
  v26 = v5[28];
  v12 = v5[30];
  v25 = v5[31];
  v33 = v5[10];
  v6 = v33;
  v34 = v7;
  v35 = v22;
  v36 = v21;
  v37 = v20;
  v38 = v8;
  v39 = v18;
  v40 = v17;
  v41 = v9;
  v42 = v10;
  v43 = v19;
  v44 = v16;
  v45 = v31;
  v46 = v30;
  v47 = v29;
  v48 = v11;
  v49 = v28;
  v50 = v23;
  v51 = v27;
  v52 = v26;
  v53 = v12;
  v54 = v25;
  type metadata accessor for CanvasAction(255, &v33);
  sub_1E5D041E0();
  v4[17] = sub_1E5D041D0();
  v33 = v6;
  v34 = v7;
  v35 = v22;
  v36 = v21;
  v37 = v20;
  v38 = v18;
  v39 = v17;
  v40 = v8;
  v41 = v10;
  v42 = v19;
  v43 = v16;
  v44 = v31;
  v45 = v30;
  v46 = v29;
  v47 = v11;
  v48 = v28;
  v49 = v27;
  v50 = v26;
  v51 = v23;
  v52 = v25;
  sub_1E5D04140();
  v4[18] = sub_1E5D04470();
  v4[14] = a2;
  v4[15] = a3;
  v33 = v6;
  v34 = v7;
  v35 = v22;
  v36 = v21;
  v37 = v20;
  v38 = v18;
  v39 = v17;
  v40 = v8;
  v41 = v10;
  v42 = v19;
  v43 = v16;
  v44 = v31;
  v45 = v30;
  v46 = v29;
  v47 = v11;
  v48 = v28;
  v49 = v27;
  v50 = v26;
  v51 = v23;
  v52 = v25;
  sub_1E5D04070();
  swift_getWitnessTable();
  sub_1E5D04090();
  v13 = sub_1E5D04180();

  v14 = sub_1E5D04170();
  v36 = v13;
  v37 = MEMORY[0x1E699D8E8];
  v33 = v14;
  v4[16] = sub_1E5D04080();
  return v4;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E5CEBE90(uint64_t a1)
{
  v4 = *(sub_1E5D03F90() - 8);
  v5 = (*(v4 + 80) + 216) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[26];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5CEAD78;

  return sub_1E5CEACDC(a1, v6, v7, v8, v1 + v5);
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

uint64_t sub_1E5CEBFEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5CEC8C0;

  return sub_1E5CEB588();
}

uint64_t sub_1E5CEC0A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5CEC8C0;

  return sub_1E5CEB72C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E5CEC2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5CEC31C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5CEC44C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v7 = *(v0 + 88);
  v8 = *(v0 + 104);
  v9 = *(v0 + 120);
  v10 = *(v0 + 136);
  v11 = *(v0 + 184);
  sub_1E5D04000();
  return sub_1E5D03FF0();
}

uint64_t sub_1E5CEC558(uint64_t a1)
{
  v2 = sub_1E5D04160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C20, &unk_1E5D06258);
    v10 = sub_1E5D04650();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1E5CEC878(&qword_1EE2FA100, MEMORY[0x1E699D8D0]);
      v18 = sub_1E5D04400();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1E5CEC878(qword_1ED066C28, MEMORY[0x1E699D8D0]);
          v25 = sub_1E5D04420();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5CEC878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5CEC8C4()
{
  v0 = sub_1E5D04210();
  __swift_allocate_value_buffer(v0, qword_1EE2FC850);
  __swift_project_value_buffer(v0, qword_1EE2FC850);
  return sub_1E5D04200();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t static CanvasLoadState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 != 1)
    {
      if (a1)
      {
        if (a4 != 2 || a3 != 1)
        {
          goto LABEL_6;
        }
      }

      else if (a4 != 2 || a3)
      {
        goto LABEL_6;
      }

      v4 = 1;
      return v4 & 1;
    }

    if (a4 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (!a4)
  {
LABEL_11:
    sub_1E5D04140();
    swift_getWitnessTable();
    v4 = sub_1E5D044C0();
    return v4 & 1;
  }

LABEL_6:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1E5CECAC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5D047F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5D047F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5D047F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6968736572666572 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5D047F0();

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

uint64_t sub_1E5CECC34(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (a1 != 2)
  {
    v2 = 0x6968736572666572;
  }

  if (a1)
  {
    v1 = 0x676E696863746566;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5CECCAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1E5CECD28(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v16 = *(a3 + 160);
  v17 = *(a3 + 168);
  v14 = *(a3 + 128);
  v15 = *(a3 + 144);
  v12 = *(a3 + 96);
  v13 = *(a3 + 112);
  v10 = *(a3 + 64);
  v11 = *(a3 + 80);
  return sub_1E5CDEC40(*a1, *a2);
}

uint64_t sub_1E5CECD84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v16 = *(a1 + 168);
  v14 = *(a1 + 136);
  v15 = *(a1 + 152);
  v12 = *(a1 + 104);
  v13 = *(a1 + 120);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return sub_1E5CDEC78(*v1);
}

uint64_t sub_1E5CECDE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v16 = *(a2 + 160);
  v17 = *(a2 + 168);
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  v12 = *(a2 + 96);
  v13 = *(a2 + 112);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  return sub_1E5CDEC50(a1, *v2);
}

uint64_t sub_1E5CECE34(uint64_t a1, uint64_t a2)
{
  sub_1E5D04840();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = *(a2 + 160);
  v18 = *(a2 + 168);
  v15 = *(a2 + 128);
  v16 = *(a2 + 144);
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  sub_1E5CDEC50(v19, *v2);
  return sub_1E5D04860();
}

uint64_t sub_1E5CECEA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v16 = *(a1 + 168);
  v14 = *(a1 + 136);
  v15 = *(a1 + 152);
  v12 = *(a1 + 104);
  v13 = *(a1 + 120);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return sub_1E5CECC34(*v1);
}

uint64_t sub_1E5CECF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v18 = *(a3 + 160);
  v19 = *(a3 + 168);
  v16 = *(a3 + 128);
  v17 = *(a3 + 144);
  v14 = *(a3 + 96);
  v15 = *(a3 + 112);
  v12 = *(a3 + 64);
  v13 = *(a3 + 80);
  result = sub_1E5CECAC8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5CECF64@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v17 = *(a1 + 160);
  v18 = *(a1 + 168);
  v15 = *(a1 + 128);
  v16 = *(a1 + 144);
  v13 = *(a1 + 96);
  v14 = *(a1 + 112);
  v12 = *(a1 + 80);
  result = sub_1E5CEFA54();
  *a2 = result;
  return result;
}

uint64_t sub_1E5CECFC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED01C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED0FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED1BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED210@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 128);
  v6 = a2(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168));

  *a3 = v6 & 1;
  return result;
}

uint64_t sub_1E5CED298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v18 = *(a3 + 160);
  v19 = *(a3 + 168);
  v16 = *(a3 + 128);
  v17 = *(a3 + 144);
  v14 = *(a3 + 96);
  v15 = *(a3 + 112);
  v12 = *(a3 + 64);
  v13 = *(a3 + 80);
  result = sub_1E5CECCAC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E5CED3A4@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 128);
  result = a2(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5CED414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasLoadState.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v109 = a5;
  v94 = a3;
  v95 = a2;
  v93 = a1;
  v115 = a23;
  v113 = a21;
  v112 = a19;
  v111 = a18;
  v98 = a17;
  v96 = a16;
  v97 = a15;
  v107 = a14;
  v106 = a13;
  v105 = a11;
  v104 = a10;
  v118 = a4;
  v119 = a5;
  v108 = a4;
  v120 = a6;
  v121 = a7;
  v101 = a6;
  v110 = a7;
  v122 = a8;
  v123 = a9;
  v99 = a9;
  v124 = a10;
  v125 = a11;
  v126 = a12;
  v127 = a13;
  v100 = a12;
  v128 = a14;
  v129 = a15;
  v130 = a16;
  v131 = a17;
  v132 = a18;
  v133 = a19;
  v134 = a20;
  v135 = a21;
  v103 = a20;
  v136 = a22;
  v137 = a23;
  v114 = a22;
  v87 = type metadata accessor for CanvasLoadState.RefreshingCodingKeys(255, &v118);
  WitnessTable = swift_getWitnessTable();
  v91 = sub_1E5D047D0();
  v90 = *(v91 - 8);
  v27 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v72 - v28;
  v118 = a4;
  v29 = v109;
  v119 = v109;
  v120 = a6;
  v121 = a7;
  v122 = a8;
  v102 = a8;
  v123 = a9;
  v124 = a10;
  v125 = a11;
  v126 = a12;
  v127 = a13;
  v128 = a14;
  v129 = a15;
  v130 = a16;
  v131 = a17;
  v132 = a18;
  v133 = a19;
  v134 = a20;
  v135 = a21;
  v136 = a22;
  v137 = a23;
  v30 = type metadata accessor for CanvasLoadState.FetchedCodingKeys(255, &v118);
  v31 = swift_getWitnessTable();
  v84 = v30;
  v83 = v31;
  v88 = sub_1E5D047D0();
  v82 = *(v88 - 8);
  v32 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v72 - v33;
  v118 = v108;
  v119 = v29;
  v120 = v101;
  v121 = v110;
  v122 = a8;
  v123 = v99;
  v34 = v104;
  v35 = v105;
  v124 = v104;
  v125 = v105;
  v36 = v106;
  v126 = v100;
  v127 = v106;
  v37 = v107;
  v128 = v107;
  v129 = a15;
  v130 = a16;
  v131 = a17;
  v38 = v111;
  v39 = v112;
  v132 = v111;
  v133 = v112;
  v134 = v103;
  v135 = v113;
  v136 = v114;
  v137 = a23;
  v40 = type metadata accessor for CanvasLoadState.FetchingCodingKeys(255, &v118);
  v41 = swift_getWitnessTable();
  v81 = v40;
  v79 = v41;
  v80 = sub_1E5D047D0();
  v78 = *(v80 - 8);
  v42 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v72 - v43;
  v118 = v108;
  v119 = v109;
  v44 = v101;
  v120 = v101;
  v121 = v110;
  v45 = v99;
  v122 = v102;
  v123 = v99;
  v124 = v34;
  v125 = v35;
  v46 = v100;
  v126 = v100;
  v127 = v36;
  v47 = v97;
  v128 = v37;
  v129 = v97;
  v48 = v96;
  v49 = v98;
  v130 = v96;
  v131 = v98;
  v132 = v38;
  v133 = v39;
  v50 = v103;
  v51 = v113;
  v134 = v103;
  v135 = v113;
  v136 = v114;
  v137 = v115;
  v52 = type metadata accessor for CanvasLoadState.IdleCodingKeys(255, &v118);
  v53 = swift_getWitnessTable();
  v76 = v52;
  v74 = v53;
  v75 = sub_1E5D047D0();
  v73 = *(v75 - 8);
  v54 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v72 - v55;
  v118 = v108;
  v119 = v109;
  v120 = v44;
  v121 = v110;
  v122 = v102;
  v123 = v45;
  v124 = v104;
  v125 = v105;
  v126 = v46;
  v127 = v106;
  v128 = v107;
  v129 = v47;
  v56 = v47;
  v130 = v48;
  v131 = v49;
  v132 = v111;
  v133 = v112;
  v134 = v50;
  v135 = v51;
  v136 = v114;
  v137 = v115;
  type metadata accessor for CanvasLoadState.CodingKeys(255, &v118);
  swift_getWitnessTable();
  v57 = sub_1E5D047D0();
  v92 = *(v57 - 8);
  v58 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v72 - v59;
  v61 = v93[4];
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  sub_1E5D04880();
  if (v94)
  {
    if (v94 == 1)
    {
      LOBYTE(v118) = 3;
      v62 = v60;
      v63 = v89;
      sub_1E5D04780();
      v138 = v95;
      v118 = v108;
      v119 = v109;
      v120 = v101;
      v121 = v110;
      v122 = v102;
      v123 = v104;
      v124 = v105;
      v125 = v99;
      v126 = v100;
      v127 = v106;
      v128 = v107;
      v129 = v56;
      v130 = v48;
      v131 = v98;
      v132 = v111;
      v133 = v112;
      v134 = v113;
      v135 = v114;
      v136 = v103;
      v137 = v115;
      sub_1E5D04140();
      sub_1E5D044A0();
      v117 = swift_getWitnessTable();
      swift_getWitnessTable();
      v64 = v91;
      sub_1E5D047C0();
      (*(v90 + 8))(v63, v64);
      return (*(v92 + 8))(v62, v57);
    }

    else
    {
      v69 = (v92 + 8);
      if (v95)
      {
        LOBYTE(v118) = 1;
        v70 = v77;
        sub_1E5D04780();
        (*(v78 + 8))(v70, v80);
      }

      else
      {
        LOBYTE(v118) = 0;
        v71 = v72;
        sub_1E5D04780();
        (*(v73 + 8))(v71, v75);
      }

      return (*v69)(v60, v57);
    }
  }

  else
  {
    v66 = v82;
    LOBYTE(v118) = 2;
    v67 = v85;
    sub_1E5D04780();
    v138 = v95;
    v118 = v108;
    v119 = v109;
    v120 = v101;
    v121 = v110;
    v122 = v102;
    v123 = v104;
    v124 = v105;
    v125 = v99;
    v126 = v100;
    v127 = v106;
    v128 = v107;
    v129 = v56;
    v130 = v48;
    v131 = v98;
    v132 = v111;
    v133 = v112;
    v134 = v113;
    v135 = v114;
    v136 = v103;
    v137 = v115;
    sub_1E5D04140();
    sub_1E5D044A0();
    v116 = swift_getWitnessTable();
    swift_getWitnessTable();
    v68 = v88;
    sub_1E5D047C0();
    (*(v66 + 8))(v67, v68);
    return (*(v92 + 8))(v60, v57);
  }
}

uint64_t CanvasLoadState.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v129 = a6;
  v126 = a3;
  v113 = a1;
  v122 = a21;
  v123 = a20;
  v133 = a19;
  v132 = a18;
  v120 = a17;
  v125 = a15;
  v124 = a14;
  v119 = a13;
  v130 = a12;
  v115 = a10;
  *&v138 = a2;
  *(&v138 + 1) = a3;
  v114 = a2;
  *&v139 = a4;
  *(&v139 + 1) = a5;
  v128 = a4;
  v140 = a6;
  v141 = a7;
  v131 = a7;
  v142 = a8;
  v143 = a9;
  v118 = a8;
  v127 = a9;
  v144 = a10;
  v145 = a11;
  v117 = a11;
  v146 = a12;
  v147 = a13;
  v148 = a14;
  v149 = a15;
  v150 = a16;
  v151 = a17;
  v121 = a16;
  v152 = a18;
  v153 = a19;
  v154 = a20;
  v155 = a21;
  v109 = type metadata accessor for CanvasLoadState.RefreshingCodingKeys(255, &v138);
  WitnessTable = swift_getWitnessTable();
  v99 = sub_1E5D04770();
  v98 = *(v99 - 8);
  v26 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v111 = &v90 - v27;
  *&v138 = a2;
  v28 = v126;
  *(&v138 + 1) = v126;
  *&v139 = a4;
  v116 = a5;
  *(&v139 + 1) = a5;
  v140 = v129;
  v141 = a7;
  v142 = a8;
  v143 = a9;
  v144 = a10;
  v145 = a11;
  v146 = a12;
  v147 = a13;
  v148 = a14;
  v149 = a15;
  v150 = a16;
  v151 = a17;
  v152 = a18;
  v153 = a19;
  v154 = a20;
  v155 = a21;
  v29 = type metadata accessor for CanvasLoadState.FetchedCodingKeys(255, &v138);
  v30 = swift_getWitnessTable();
  v107 = v29;
  v106 = v30;
  v97 = sub_1E5D04770();
  v96 = *(v97 - 8);
  v31 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v110 = &v90 - v32;
  v33 = v114;
  *&v138 = v114;
  *(&v138 + 1) = v28;
  *&v139 = v128;
  *(&v139 + 1) = a5;
  v34 = v129;
  v140 = v129;
  v141 = v131;
  v142 = v118;
  v143 = v127;
  v144 = a10;
  v35 = v117;
  v36 = v130;
  v145 = v117;
  v146 = v130;
  v37 = v119;
  v147 = v119;
  v148 = a14;
  v38 = v125;
  v149 = v125;
  v150 = v121;
  v151 = a17;
  v39 = v132;
  v152 = v132;
  v153 = v133;
  v154 = a20;
  v155 = a21;
  v40 = type metadata accessor for CanvasLoadState.FetchingCodingKeys(255, &v138);
  v41 = swift_getWitnessTable();
  v105 = v40;
  v104 = v41;
  v95 = sub_1E5D04770();
  v94 = *(v95 - 8);
  v42 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v103 = &v90 - v43;
  *&v138 = v33;
  *(&v138 + 1) = v126;
  *&v139 = v128;
  *(&v139 + 1) = v116;
  v140 = v34;
  v141 = v131;
  v44 = v118;
  v142 = v118;
  v143 = v127;
  v45 = v115;
  v144 = v115;
  v145 = v35;
  v146 = v36;
  v147 = v37;
  v46 = v124;
  v148 = v124;
  v149 = v38;
  v47 = v121;
  v48 = v120;
  v150 = v121;
  v151 = v120;
  v152 = v39;
  v153 = v133;
  v49 = v123;
  v50 = v122;
  v154 = v123;
  v155 = v122;
  v51 = type metadata accessor for CanvasLoadState.IdleCodingKeys(255, &v138);
  v52 = swift_getWitnessTable();
  v102 = v51;
  v101 = v52;
  v93 = sub_1E5D04770();
  v92 = *(v93 - 8);
  v53 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v100 = &v90 - v54;
  *&v138 = v114;
  *(&v138 + 1) = v126;
  *&v139 = v128;
  *(&v139 + 1) = v116;
  v140 = v129;
  v141 = v131;
  v142 = v44;
  v143 = v127;
  v144 = v45;
  v145 = v117;
  v146 = v130;
  v147 = v37;
  v148 = v46;
  v149 = v125;
  v150 = v47;
  v151 = v48;
  v152 = v132;
  v153 = v133;
  v154 = v49;
  v155 = v50;
  type metadata accessor for CanvasLoadState.CodingKeys(255, &v138);
  swift_getWitnessTable();
  v55 = sub_1E5D04770();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v90 - v58;
  v60 = v113[4];
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  v61 = v112;
  sub_1E5D04870();
  if (!v61)
  {
    v62 = v124;
    v91 = 0;
    v112 = v56;
    *&v138 = sub_1E5D04760();
    sub_1E5D044A0();
    swift_getWitnessTable();
    *&v136 = sub_1E5D04640();
    *(&v136 + 1) = v63;
    *&v137 = v64;
    *(&v137 + 1) = v65;
    sub_1E5D04630();
    swift_getWitnessTable();
    sub_1E5D045D0();
    v66 = v138;
    if (v138 == 4 || (v90 = v136, v138 = v136, v139 = v137, (sub_1E5D045E0() & 1) == 0))
    {
      v70 = v59;
      v71 = sub_1E5D04680();
      swift_allocError();
      v73 = v72;
      v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066B70, &qword_1E5D04FC0) + 48);
      *&v138 = v114;
      *(&v138 + 1) = v126;
      *&v139 = v128;
      *(&v139 + 1) = v116;
      v140 = v129;
      v141 = v131;
      v142 = v118;
      v143 = v127;
      v144 = v115;
      v145 = v117;
      v146 = v130;
      v147 = v119;
      v148 = v62;
      v149 = v125;
      v150 = v121;
      v151 = v120;
      v152 = v132;
      v153 = v133;
      v154 = v123;
      v155 = v122;
      *v73 = type metadata accessor for CanvasLoadState(0, &v138);
      sub_1E5D04710();
      sub_1E5D04670();
      (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
      swift_willThrow();
      (*(v112 + 8))(v70, v55);
    }

    else if (v66 > 1)
    {
      if (v66 == 2)
      {
        LOBYTE(v138) = 2;
        v76 = v110;
        v77 = v91;
        sub_1E5D04700();
        v78 = v115;
        v79 = v128;
        v80 = v127;
        v81 = v126;
        v56 = &v142;
        v82 = v114;
        if (!v77)
        {
          *&v138 = v114;
          *(&v138 + 1) = v126;
          *&v139 = v128;
          *(&v139 + 1) = v116;
          v140 = v129;
          v141 = v118;
          v142 = v127;
          v143 = v131;
          v144 = v115;
          v145 = v117;
          v146 = v130;
          v147 = v119;
          v148 = v62;
          v149 = v125;
          v150 = v121;
          v151 = v120;
          v152 = v133;
          v153 = v123;
          v154 = v132;
          v155 = v122;
          sub_1E5D04140();
          sub_1E5D044A0();
          v134 = swift_getWitnessTable();
          swift_getWitnessTable();
          v83 = v97;
          sub_1E5D04750();
          (*(v96 + 8))(v76, v83);
          (*(v112 + 8))(v59, v55);
          swift_unknownObjectRelease();
          v56 = v156;
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v138) = 3;
        v87 = v111;
        v88 = v91;
        sub_1E5D04700();
        v78 = v115;
        v79 = v128;
        v80 = v127;
        v81 = v126;
        v56 = &v142;
        v82 = v114;
        if (!v88)
        {
          *&v138 = v114;
          *(&v138 + 1) = v126;
          *&v139 = v128;
          *(&v139 + 1) = v116;
          v140 = v129;
          v141 = v118;
          v142 = v127;
          v143 = v131;
          v144 = v115;
          v145 = v117;
          v146 = v130;
          v147 = v119;
          v148 = v62;
          v149 = v125;
          v150 = v121;
          v151 = v120;
          v152 = v133;
          v153 = v123;
          v154 = v132;
          v155 = v122;
          sub_1E5D04140();
          sub_1E5D044A0();
          v135 = swift_getWitnessTable();
          swift_getWitnessTable();
          v89 = v99;
          sub_1E5D04750();
          (*(v98 + 8))(v87, v89);
          (*(v112 + 8))(v59, v55);
          swift_unknownObjectRelease();
          v56 = v156;
          goto LABEL_10;
        }
      }

      (*(v112 + 8))(v59, v55, v78, v79, v80, v81, v82);
    }

    else
    {
      if (v66)
      {
        LOBYTE(v138) = 1;
        v84 = v103;
        v85 = v91;
        sub_1E5D04700();
        v69 = v112;
        if (!v85)
        {
          (*(v94 + 8))(v84, v95);
          (*(v69 + 8))(v59, v55);
          swift_unknownObjectRelease();
          v56 = 1;
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v138) = 0;
        v67 = v100;
        v68 = v91;
        sub_1E5D04700();
        v69 = v112;
        if (!v68)
        {
          (*(v92 + 8))(v67, v93);
          (*(v69 + 8))(v59, v55);
          swift_unknownObjectRelease();
          v56 = 0;
          goto LABEL_10;
        }
      }

      v86 = *(v69 + 8);
      v56 = v69 + 8;
      v86(v59, v55);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v113);
  return v56;
}

uint64_t sub_1E5CEF150@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = CanvasLoadState.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15], a2[16], a2[17], a2[18], a2[19], a2[20], a2[21]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
  }

  return result;
}

uint64_t CanvasLoadState.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 3;
LABEL_5:
    MEMORY[0x1E693BA70](v3);
    sub_1E5D04140();
    swift_getWitnessTable();
    return sub_1E5D044B0();
  }

  return MEMORY[0x1E693BA70](a2 != 0);
}

uint64_t CanvasLoadState.hashValue.getter(uint64_t a1, char a2)
{
  sub_1E5D04840();
  CanvasLoadState.hash(into:)(v5, a1, a2);
  return sub_1E5D04860();
}

uint64_t sub_1E5CEF500(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v13 = *(a1 + 128);
  v14 = *(a1 + 144);
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  return CanvasLoadState.hashValue.getter(*v1, *(v1 + 8));
}

uint64_t sub_1E5CEF558(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v16 = *(a2 + 168);
  v14 = *(a2 + 136);
  v15 = *(a2 + 152);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v9 = *(a2 + 56);
  return CanvasLoadState.hash(into:)(a1, *v2, *(v2 + 8));
}

uint64_t sub_1E5CEF5C4(uint64_t a1, uint64_t a2)
{
  sub_1E5D04840();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v17 = *(a2 + 168);
  v15 = *(a2 + 136);
  v16 = *(a2 + 152);
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  v10 = *(a2 + 56);
  CanvasLoadState.hash(into:)(v18, *v2, *(v2 + 8));
  return sub_1E5D04860();
}

uint64_t sub_1E5CEF64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v15 = *(a3 + 160);
  v16 = *(a3 + 168);
  v13 = *(a3 + 128);
  v14 = *(a3 + 144);
  v11 = *(a3 + 96);
  v12 = *(a3 + 112);
  v9 = *(a3 + 64);
  v10 = *(a3 + 80);
  v8 = *(a3 + 48);
  return static CanvasLoadState.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1;
}

uint64_t get_enum_tag_for_layout_string_13FitnessCanvas0B9LoadStateOyxq_q0_q1_q2_q3_q4_q5_q6_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E5CEF704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5CEF74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5CEF790(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1E5CEF7A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E5CEF838(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5CEFA64(uint64_t a1)
{
  v1 = *(a1 + 280);
  v3[0] = *(a1 + 128);
  v3[1] = v1;
  type metadata accessor for CanvasLayoutProviderSource(255, v3);
  sub_1E5D04370();
  return sub_1E5D04360();
}

uint64_t sub_1E5CEFABC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 104);
  v8 = *(a1 + 152);
  v9 = *(a1 + 168);
  v10 = *(a1 + 200);
  v11 = *(a1 + 256);
  v16[0] = *(a1 + 16);
  v16[1] = v5;
  v16[2] = v6;
  v17 = *(a1 + 88);
  v18 = v7;
  v12 = *(a1 + 136);
  v19 = *(a1 + 120);
  v20 = v12;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v13 = *(a1 + 240);
  v24 = *(a1 + 224);
  v25 = v13;
  v26 = v11;
  v14 = *(a1 + 288);
  v27 = *(a1 + 272);
  v28 = v14;
  type metadata accessor for CanvasFeature(255, v16);
  swift_getWitnessTable();
  sub_1E5D043F0();
  swift_getWitnessTable();
  return sub_1E5D04230();
}

uint64_t sub_1E5CEFBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  *(v32 + 32) = a5;
  *(v32 + 40) = a6;
  *(v32 + 48) = a7;
  *(v32 + 56) = a8;
  *(v32 + 64) = a9;
  *(v32 + 80) = a10;
  *(v32 + 96) = a11;
  *(v32 + 112) = a12;
  *(v32 + 128) = a13;
  *(v32 + 144) = a14;
  *(v32 + 160) = a15;
  *(v32 + 176) = a16;
  *(v32 + 192) = a17;
  *(v32 + 208) = a18;
  *(v32 + 224) = a19;
  *(v32 + 240) = a20;
  *(v32 + 256) = a21;
  *(v32 + 272) = a22;
  *(v32 + 288) = a23;
  *(v32 + 296) = a24;
  *(v32 + 304) = a1;
  *(v32 + 312) = a2;
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  return sub_1E5D03FA0();
}

uint64_t (*sub_1E5CEFD60(uint64_t a1))(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v2 = *(a1 + 312);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a1 + 48);
  *(v5 + 32) = *(a1 + 32);
  *(v5 + 48) = v6;
  v7 = *(a1 + 80);
  *(v5 + 64) = *(a1 + 64);
  *(v5 + 80) = v7;
  v8 = *(a1 + 112);
  *(v5 + 96) = *(a1 + 96);
  *(v5 + 112) = v8;
  v9 = *(a1 + 144);
  *(v5 + 128) = *(a1 + 128);
  *(v5 + 144) = v9;
  v10 = *(a1 + 176);
  *(v5 + 160) = *(a1 + 160);
  *(v5 + 176) = v10;
  v11 = *(a1 + 208);
  *(v5 + 192) = *(a1 + 192);
  *(v5 + 208) = v11;
  v12 = *(a1 + 240);
  *(v5 + 224) = *(a1 + 224);
  *(v5 + 240) = v12;
  v13 = *(a1 + 272);
  *(v5 + 256) = *(a1 + 256);
  *(v5 + 272) = v13;
  *(v5 + 288) = *(a1 + 288);
  *(v5 + 304) = v15;
  return sub_1E5CF7C20;
}

uint64_t sub_1E5CEFE78(uint64_t a1)
{
  v1 = *(a1 + 316);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v5;
}

uint64_t sub_1E5CEFECC(uint64_t a1)
{
  v1 = *(a1 + 320);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v5;
}

uint64_t sub_1E5CEFF24(uint64_t a1)
{
  v1 = *(a1 + 324);
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v5;
}

uint64_t sub_1E5CEFF7C(uint64_t a1)
{
  v1 = *(a1 + 328);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v5;
}

uint64_t sub_1E5CEFFD0(uint64_t a1)
{
  v2 = *(a1 + 332);
  v3 = *(a1 + 80);
  v4 = *(a1 + 144);
  sub_1E5D03F90();
  v6 = *(a1 + 128);
  v7 = *(a1 + 280);
  sub_1E5D041A0();
  swift_getFunctionTypeMetadata3();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v6;
}

uint64_t sub_1E5CF0074(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v5;
}

uint64_t CanvasView.init(store:layoutProvider:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:actionButtonViewBuilder:sectionHeaderSubtitleViewBuilder:scrollViewProxy:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36)
{
  v36 = swift_allocObject();
  *(v36 + 304) = a1;
  *(v36 + 16) = a18;
  *(v36 + 32) = a19;
  *(v36 + 40) = a20;
  *(v36 + 48) = a21;
  *(v36 + 64) = a22;
  *(v36 + 80) = a23;
  *(v36 + 96) = a24;
  *(v36 + 112) = a25;
  *(v36 + 128) = a26;
  *(v36 + 144) = a27;
  *(v36 + 160) = a28;
  *(v36 + 176) = a29;
  *(v36 + 192) = a30;
  *(v36 + 208) = a31;
  *(v36 + 224) = a32;
  *(v36 + 240) = a33;
  *(v36 + 256) = a34;
  *(v36 + 272) = a35;
  *(v36 + 288) = a36;
  *(v36 + 312) = a2;

  *&v66 = a18;
  *(&v66 + 1) = a19;
  v67 = a22;
  v68 = *(&a23 + 1);
  v69 = a24;
  *v70 = *(&a25 + 1);
  *&v70[8] = a26;
  *&v70[24] = a27;
  *&v70[40] = *(&a28 + 1);
  *v71 = *(&a30 + 1);
  *&v71[8] = a32;
  *&v71[24] = a33;
  *&v71[40] = a34;
  v72 = a35;
  v73 = a36;
  type metadata accessor for CanvasFeature(255, &v66);
  swift_getWitnessTable();
  sub_1E5D043F0();
  swift_getWitnessTable();
  *(a7 + 48) = sub_1E5D04220();
  *(a7 + 56) = v37;
  *(a7 + 64) = v38 & 1;
  v66 = a26;
  v67 = *(&a35 + 1);
  v68 = a36;
  v57 = type metadata accessor for CanvasLayoutProviderSource(0, &v66);
  v59 = *(v57 - 8);
  (*(v59 + 16))(v81, a3, v57);
  v66 = a26;
  v67 = *(&a35 + 1);
  v68 = a36;
  v39 = type metadata accessor for CanvasLayoutProviderSource(0, &v66);
  v40 = *(v39 - 8);
  (*(v40 + 16))(&v66, v81, v39);
  sub_1E5D04350();
  (*(v40 + 8))(v81, v39);
  v66 = a18;
  v67 = a19;
  v68 = a20;
  v69 = a21;
  *v70 = a22;
  *&v70[16] = a23;
  *&v70[32] = a24;
  *v71 = a25;
  *&v71[16] = a26;
  *&v71[32] = a27;
  v72 = a28;
  v73 = a29;
  v74 = a30;
  v75 = a31;
  v76 = a32;
  v77 = a33;
  v78 = a34;
  v79 = a35;
  v80 = a36;
  v41 = type metadata accessor for CanvasView(0, &v66);
  v42 = v41[79];

  *&v66 = a4;
  *(&v66 + 1) = v43;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();
  v44 = v41[80];

  *&v66 = a5;
  *(&v66 + 1) = v45;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();
  v46 = v41[81];

  *&v66 = a6;
  *(&v66 + 1) = v47;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();
  v48 = v41[82];

  *&v66 = a9;
  *(&v66 + 1) = v49;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();
  v50 = v41[83];

  v81[0] = a11;
  v81[1] = v51;
  sub_1E5D03F90();
  v66 = a26;
  v67 = *(&a35 + 1);
  v68 = a36;
  sub_1E5D041A0();
  swift_getFunctionTypeMetadata3();
  sub_1E5D03FA0();
  v52 = v41[78];

  sub_1E5CEFBC4(a13, a14, a18, *(&a18 + 1), a19, a20, a21, *(&a21 + 1), a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, *(&a36 + 1));
  v53 = v41[84];
  v66 = a15;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();

  (*(v59 + 8))(a3, v57);
  sub_1E5CF0A28(a16, a7 + v41[85]);
  v54 = v41[86];
  v55 = sub_1E5D03F80();
  return (*(*(v55 - 8) + 32))(a7 + v54, a17, v55);
}

uint64_t sub_1E5CF09D0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  return v1();
}

uint64_t sub_1E5CF0A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5CF0A98@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v248 = a1;
  v276 = a3;
  v4 = sub_1E5D03F80();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v259 = v242 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = *(a2 - 8);
  v8 = *(v279 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v257 = v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v249 = v242 - v12;
  v269 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v267 = v242 - v14;
  v313 = *(a2 + 128);
  v287 = vextq_s8(v313, v313, 8uLL);
  v315 = *(a2 + 280);
  *&v304 = v398;
  v372 = v315;
  v371 = v313;
  v15 = sub_1E5D041A0();
  v246 = *(v15 - 8);
  v247 = v15;
  v16 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v258 = v242 - v17;
  v18 = *(a2 + 40);
  v293 = *(a2 + 32);
  v19 = *(a2 + 56);
  v291 = *(a2 + 48);
  v292 = v18;
  v20 = *(a2 + 72);
  v297 = *(a2 + 64);
  v289 = v20;
  v290 = v19;
  v21 = *(a2 + 24);
  v302 = *(a2 + 16);
  v314 = v21;
  v22 = *(a2 + 88);
  v296 = *(a2 + 80);
  v308 = v22;
  v23 = *(a2 + 104);
  v307 = *(a2 + 96);
  v306 = v23;
  v24 = *(a2 + 120);
  v295 = *(a2 + 112);
  v305 = v24;
  v25 = *(a2 + 192);
  v294 = *(a2 + 184);
  v300 = v25;
  v26 = *(a2 + 208);
  v312 = *(a2 + 200);
  v299 = v26;
  v27 = *(a2 + 160);
  v28 = *(a2 + 224);
  v298 = *(a2 + 216);
  v288 = v28;
  v29 = *(a2 + 240);
  v311 = *(a2 + 232);
  v310 = v29;
  v30 = *(a2 + 248);
  v309 = *(a2 + 256);
  v31 = *(a2 + 264);
  v32 = *(a2 + 272);
  v284 = v30;
  v285 = v31;
  v303 = v32;
  v301 = *(a2 + 296);
  v33 = v301;
  v371.i64[0] = v302;
  v371.i64[1] = v293;
  v372.i64[0] = v18;
  v372.i64[1] = v291;
  v373 = v19;
  v374 = v297;
  v375 = v20;
  v376 = v296;
  *&v377 = v314;
  *(&v377 + 1) = v22;
  v378 = v307;
  v379 = v23;
  v380 = v295;
  v381 = v24;
  v385 = v294;
  v386 = v25;
  v387 = v312;
  v388 = v26;
  v389 = v298;
  v390 = v27;
  v34 = v27;
  v391 = v28;
  v392 = v311;
  v393 = v29;
  v394 = v30;
  v395 = v309;
  v396 = v31;
  *v304 = vextq_s8(v315, v315, 8uLL);
  v397 = v32;
  v398[2] = v33;
  v280 = *(a2 + 144);
  v304 = *(a2 + 168);
  v382 = v287;
  v383 = v280;
  v384 = v304;
  v35 = sub_1E5D040D0();
  v250 = *(v35 - 8);
  v36 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v260 = v242 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1E5CF3FBC();
  v281 = v35;
  v371.i64[0] = v35;
  v283 = v38;
  v371.i64[1] = v38;
  v277 = WitnessTable;
  v372.i64[0] = WitnessTable;
  v287.i64[0] = v40;
  v372.i64[1] = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v251 = *(OpaqueTypeMetadata2 - 8);
  v42 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v261 = v242 - v43;
  v252 = v44;
  v45 = sub_1E5D04250();
  v255 = *(v45 - 8);
  v46 = *(v255 + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v254 = v242 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v253 = v242 - v49;
  v275 = v50;
  v51 = sub_1E5D042A0();
  v264 = *(v51 - 8);
  v52 = *(v264 + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v263 = v242 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v262 = v242 - v55;
  v278 = sub_1E5D03FE0();
  v268 = *(v278 - 8);
  v56 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v58 = v242 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066ED0, &qword_1E5D06A68);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = (v242 - v61);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v66 = v242 - v65;
  v270 = v67;
  v274 = v51;
  v68 = sub_1E5D042A0();
  v272 = *(v68 - 8);
  v273 = v68;
  v69 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v271 = v242 - v70;
  v265 = a2;
  sub_1E5CEFABC(a2);
  v316 = v302;
  v317 = v314;
  v318 = v293;
  v319 = v292;
  v320 = v291;
  v321 = v290;
  v322 = v297;
  v323 = v289;
  v324 = v296;
  v325 = v308;
  v326 = v307;
  v327 = v306;
  v328 = v295;
  v329 = v305;
  v330 = v313;
  v331 = v280;
  v282 = v34;
  v332 = v34;
  v333 = v304;
  v334 = v294;
  v71 = v288;
  v335 = v300;
  v336 = v312;
  v337 = v299;
  v338 = v298;
  v339 = v288;
  v340 = v311;
  v341 = v310;
  v72 = v284;
  v342 = v284;
  v343 = v309;
  v344 = v285;
  v345 = v303;
  v346 = v315;
  v347 = v301;
  swift_getKeyPath();
  sub_1E5D043D0();

  v73 = v370.u8[8];
  if (v370.u8[8] >= 2u)
  {
    if (v370.i64[0])
    {
      v266 = v58;
      sub_1E5D03FD0();
      v81 = v268;
      (*(v268 + 16))(v62, v58, v278);
      swift_storeEnumTagMultiPayload();
      sub_1E5CF40C4();
      v82 = MEMORY[0x1E6981580];
      sub_1E5D04290();
      v315.i64[0] = sub_1E5CF4038();
      v83 = v281;
      v371.i64[0] = v281;
      v84 = v283;
      v371.i64[1] = v283;
      v85 = v277;
      v372.i64[0] = v277;
      v372.i64[1] = v287.i64[0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v86 = MEMORY[0x1E69805D0];
      v355 = MEMORY[0x1E69805D0];
      v87 = swift_getWitnessTable();
      v352 = v82;
      v353 = v87;
      swift_getWitnessTable();
      v88 = v271;
      sub_1E5CF27C4(v66, v270);
      v89 = v66;
      v90 = MEMORY[0x1E6981580];
      sub_1E5CEC31C(v89, &qword_1ED066EB8, &qword_1E5D068F8);
      (*(v81 + 8))(v266, v278);
    }

    else
    {
      *v62 = sub_1E5D04320();
      swift_storeEnumTagMultiPayload();
      sub_1E5CF40C4();

      v233 = MEMORY[0x1E6981580];
      sub_1E5D04290();
      sub_1E5CF4038();
      v83 = v281;
      v371.i64[0] = v281;
      v84 = v283;
      v371.i64[1] = v283;
      v85 = v277;
      v372.i64[0] = v277;
      v372.i64[1] = v287.i64[0];
      v350 = swift_getOpaqueTypeConformance2();
      v86 = MEMORY[0x1E69805D0];
      v351 = MEMORY[0x1E69805D0];
      v234 = swift_getWitnessTable();
      v348 = v233;
      v349 = v234;
      swift_getWitnessTable();
      v88 = v271;
      sub_1E5CF27C4(v66, v270);

      v235 = v66;
      v90 = MEMORY[0x1E6981580];
      sub_1E5CEC31C(v235, &qword_1ED066EB8, &qword_1E5D068F8);
    }
  }

  else
  {
    v245 = v370.i64[0];
    v371.i64[0] = v302;
    v371.i64[1] = v293;
    v372.i64[0] = v297;
    v372.i64[1] = v308;
    v373 = v307;
    v374 = v305;
    v278 = v313.i64[0];
    v375 = v313.i64[0];
    v376 = v306;
    v377 = v280;
    v74 = v304;
    v378 = v304;
    v379 = v312;
    v380 = v71;
    v381 = v311;
    v382.i64[0] = v310;
    v382.i64[1] = v72;
    *&v383 = v303;
    v75 = v315.i64[0];
    *(&v383 + 1) = v315.i64[0];
    *&v384 = v309;
    *(&v384 + 1) = v301;
    sub_1E5D04140();
    sub_1E5D044A0();
    swift_getWitnessTable();
    if (sub_1E5D045E0())
    {
      sub_1E5CDE618(v245, v73);
      v370.i64[0] = sub_1E5D04320();
      v76 = v281;
      v371.i64[0] = v281;
      v371.i64[1] = v283;
      v77 = v277;
      v372.i64[0] = v277;
      v78 = v287.i64[0];
      v372.i64[1] = v287.i64[0];
      v356 = swift_getOpaqueTypeConformance2();
      v79 = MEMORY[0x1E69805D0];
      v357 = MEMORY[0x1E69805D0];
      swift_getWitnessTable();
      v80 = v262;
      sub_1E5CF27C4(&v370, MEMORY[0x1E69815C0]);
    }

    else
    {
      v268 = v280;
      *&v280 = *(&v280 + 1);
      (*(v246 + 16))(v258, v248, v247);
      v91 = v265;
      v256 = v75;
      v92 = v286;
      v93 = sub_1E5CEFE78(v265);
      v242[11] = v94;
      v242[12] = v93;
      v95 = sub_1E5CEFECC(v91);
      v242[9] = v96;
      v242[10] = v95;
      v97 = sub_1E5CEFF24(v91);
      v242[7] = v98;
      v242[8] = v97;
      v99 = sub_1E5CEFF7C(v91);
      v242[5] = v100;
      v242[6] = v99;
      v101 = sub_1E5CEFFD0(v91);
      v242[3] = v102;
      v242[4] = v101;
      sub_1E5CEFD60(v91);
      v242[2] = v103;
      v104 = sub_1E5CF0074(v91);
      v242[0] = v105;
      v242[1] = v104;
      v106 = v279;
      v244 = *(v279 + 16);
      v247 = v279 + 16;
      v244(v267, v92, v91);
      v107 = (*(v106 + 80) + 304) & ~*(v106 + 80);
      v246 = *(v106 + 80);
      v108 = swift_allocObject();
      v266 = v74;
      v109 = v314;
      *(v108 + 2) = v302;
      *(v108 + 3) = v109;
      v110 = v291;
      v111 = v292;
      *(v108 + 4) = v293;
      *(v108 + 5) = v111;
      *(v108 + 6) = v110;
      v112 = v297;
      *(v108 + 7) = v290;
      *(v108 + 8) = v112;
      v113 = v296;
      *(v108 + 9) = v289;
      *(v108 + 10) = v113;
      v114 = v307;
      *(v108 + 11) = v308;
      *(v108 + 12) = v114;
      v115 = v295;
      *(v108 + 13) = v306;
      *(v108 + 14) = v115;
      v116 = v278;
      *(v108 + 15) = v305;
      *(v108 + 16) = v116;
      *(v108 + 17) = v314;
      v117 = v268;
      v118 = v280;
      *(v108 + 18) = v268;
      *(v108 + 19) = v118;
      *(v108 + 20) = v282;
      *(v108 + 21) = v74;
      *(v108 + 22) = v306;
      v119 = v300;
      *(v108 + 23) = v294;
      *(v108 + 24) = v119;
      v120 = v299;
      *(v108 + 25) = v312;
      *(v108 + 26) = v120;
      *(v108 + 27) = v298;
      *(v108 + 28) = v71;
      v121 = v310;
      *(v108 + 29) = v311;
      *(v108 + 30) = v121;
      v122 = v309;
      *(v108 + 31) = v72;
      *(v108 + 32) = v122;
      v123 = v303;
      *(v108 + 33) = v285;
      *(v108 + 34) = v123;
      *(v108 + 35) = v256;
      *(v108 + 36) = v315.i64[1];
      *(v108 + 37) = v301;
      v124 = *(v106 + 32);
      v279 = v106 + 32;
      v248 = v124;
      v243 = v107;
      v124(&v108[v107], v267, v91);
      v125 = v249;
      v126 = v244;
      v244(v249, v286, v91);
      v127 = swift_allocObject();
      *(v127 + 17) = v314;
      *(v127 + 22) = v306;
      *(v127 + 36) = v315.i64[1];
      v128 = v314;
      *(v127 + 2) = v302;
      *(v127 + 3) = v128;
      v129 = v293;
      v131 = v291;
      v130 = v292;
      *(v127 + 4) = v293;
      *(v127 + 5) = v130;
      v132 = v290;
      *(v127 + 6) = v131;
      *(v127 + 7) = v132;
      v133 = v289;
      *(v127 + 8) = v297;
      *(v127 + 9) = v133;
      v134 = v308;
      *(v127 + 10) = v296;
      *(v127 + 11) = v134;
      v135 = v306;
      *(v127 + 12) = v307;
      *(v127 + 13) = v135;
      v136 = v305;
      *(v127 + 14) = v295;
      *(v127 + 15) = v136;
      *(v127 + 16) = v278;
      v137 = v280;
      *(v127 + 18) = v117;
      *(v127 + 19) = v137;
      v138 = v266;
      *(v127 + 20) = v282;
      *(v127 + 21) = v138;
      v139 = v300;
      *(v127 + 23) = v294;
      *(v127 + 24) = v139;
      v140 = v299;
      *(v127 + 25) = v312;
      *(v127 + 26) = v140;
      v141 = v288;
      *(v127 + 27) = v298;
      *(v127 + 28) = v141;
      v142 = v310;
      *(v127 + 29) = v311;
      *(v127 + 30) = v142;
      v143 = v284;
      v144 = v309;
      *(v127 + 31) = v284;
      *(v127 + 32) = v144;
      v145 = v303;
      *(v127 + 33) = v285;
      *(v127 + 34) = v145;
      v146 = v256;
      *(v127 + 35) = v256;
      *(v127 + 37) = v301;
      v147 = v125;
      v148 = v265;
      v248(&v127[v243], v147, v265);
      v126(v257, v286, v148);
      v149 = swift_allocObject();
      *(v149 + 17) = v314;
      *(v149 + 22) = v306;
      *(v149 + 36) = v315.i64[1];
      v150 = v314;
      *(v149 + 2) = v302;
      *(v149 + 3) = v150;
      v152 = v291;
      v151 = v292;
      *(v149 + 4) = v129;
      *(v149 + 5) = v151;
      v153 = v289;
      v154 = v290;
      *(v149 + 6) = v152;
      *(v149 + 7) = v154;
      *(v149 + 8) = v297;
      *(v149 + 9) = v153;
      v155 = v308;
      *(v149 + 10) = v296;
      *(v149 + 11) = v155;
      v156 = v306;
      *(v149 + 12) = v307;
      *(v149 + 13) = v156;
      v157 = v305;
      *(v149 + 14) = v295;
      *(v149 + 15) = v157;
      *(v149 + 16) = v278;
      *(v149 + 18) = v268;
      *(v149 + 19) = v137;
      v158 = v266;
      *(v149 + 20) = v282;
      *(v149 + 21) = v158;
      v159 = v300;
      *(v149 + 23) = v294;
      *(v149 + 24) = v159;
      v160 = v299;
      *(v149 + 25) = v312;
      *(v149 + 26) = v160;
      v161 = v288;
      *(v149 + 27) = v298;
      *(v149 + 28) = v161;
      v162 = v310;
      *(v149 + 29) = v311;
      *(v149 + 30) = v162;
      v163 = v309;
      *(v149 + 31) = v143;
      *(v149 + 32) = v163;
      v164 = v303;
      *(v149 + 33) = v285;
      *(v149 + 34) = v164;
      *(v149 + 35) = v146;
      *(v149 + 37) = v301;
      v248(&v149[v243], v257, v148);
      v165 = sub_1E5CEFABC(v148);
      v257 = v242;
      MEMORY[0x1EEE9AC00](v165);
      swift_getKeyPath();
      sub_1E5D043D0();

      sub_1E5D040C0();
      v166 = v265;
      v167 = v286;
      v168 = sub_1E5CEFABC(v265);
      v259 = v242;
      MEMORY[0x1EEE9AC00](v168);
      v169 = v294;
      v170 = v302;
      v171 = v314;
      v172 = v293;
      v173 = v292;
      swift_getKeyPath();
      sub_1E5D043D0();

      v259 = v371.i64[1];
      v370 = v371;
      v174 = v267;
      v244(v267, v167, v166);
      v175 = v243;
      v176 = swift_allocObject();
      *(v176 + 17) = v314;
      *(v176 + 22) = v306;
      *(v176 + 36) = v315.i64[1];
      *(v176 + 2) = v170;
      *(v176 + 3) = v171;
      *(v176 + 4) = v172;
      *(v176 + 5) = v173;
      v177 = v290;
      *(v176 + 6) = v291;
      *(v176 + 7) = v177;
      v178 = v289;
      *(v176 + 8) = v297;
      *(v176 + 9) = v178;
      v179 = v308;
      *(v176 + 10) = v296;
      *(v176 + 11) = v179;
      v180 = v306;
      *(v176 + 12) = v307;
      *(v176 + 13) = v180;
      v181 = v305;
      *(v176 + 14) = v295;
      *(v176 + 15) = v181;
      *(v176 + 16) = v278;
      v182 = v280;
      *(v176 + 18) = v268;
      *(v176 + 19) = v182;
      v183 = v266;
      *(v176 + 20) = v282;
      *(v176 + 21) = v183;
      v184 = v300;
      *(v176 + 23) = v169;
      *(v176 + 24) = v184;
      v185 = v299;
      *(v176 + 25) = v312;
      *(v176 + 26) = v185;
      v186 = v288;
      *(v176 + 27) = v298;
      *(v176 + 28) = v186;
      v187 = v310;
      *(v176 + 29) = v311;
      *(v176 + 30) = v187;
      v188 = v285;
      v189 = v309;
      *(v176 + 31) = v284;
      *(v176 + 32) = v189;
      v190 = v303;
      *(v176 + 33) = v188;
      *(v176 + 34) = v190;
      *(v176 + 35) = v256;
      *(v176 + 37) = v301;
      v191 = v174;
      v248(&v176[v175], v174, v166);
      v192 = v260;
      v193 = v281;
      v194 = v283;
      v195 = v277;
      sub_1E5D04300();

      (*(v250 + 8))(v192, v193);
      v244(v191, v286, v166);
      v196 = swift_allocObject();
      v197 = v314;
      *(v196 + 2) = v302;
      *(v196 + 3) = v197;
      v199 = v291;
      v198 = v292;
      *(v196 + 4) = v293;
      *(v196 + 5) = v198;
      v200 = v290;
      *(v196 + 6) = v199;
      *(v196 + 7) = v200;
      v201 = v289;
      *(v196 + 8) = v297;
      *(v196 + 9) = v201;
      v202 = v308;
      *(v196 + 10) = v296;
      *(v196 + 11) = v202;
      v203 = v306;
      *(v196 + 12) = v307;
      *(v196 + 13) = v203;
      v204 = v305;
      *(v196 + 14) = v295;
      *(v196 + 15) = v204;
      *(v196 + 16) = v278;
      *(v196 + 17) = v314;
      v205 = v280;
      *(v196 + 18) = v268;
      *(v196 + 19) = v205;
      *(v196 + 22) = v306;
      v206 = v266;
      *(v196 + 20) = v282;
      *(v196 + 21) = v206;
      v207 = v300;
      *(v196 + 23) = v294;
      *(v196 + 24) = v207;
      v208 = v299;
      *(v196 + 25) = v312;
      *(v196 + 26) = v208;
      v209 = v288;
      *(v196 + 27) = v298;
      *(v196 + 28) = v209;
      v210 = v310;
      *(v196 + 29) = v311;
      *(v196 + 30) = v210;
      v211 = v309;
      *(v196 + 31) = v284;
      *(v196 + 32) = v211;
      v212 = v303;
      *(v196 + 33) = v188;
      *(v196 + 34) = v212;
      *(v196 + 35) = v256;
      *(v196 + 36) = v315.i64[1];
      *(v196 + 37) = v301;
      v248(&v196[v175], v191, v166);
      v371.i64[0] = v193;
      v371.i64[1] = v194;
      v372.i64[0] = v195;
      v372.i64[1] = v287.i64[0];
      v213 = swift_getOpaqueTypeConformance2();
      v214 = v254;
      v215 = v252;
      v216 = v261;
      sub_1E5D042E0();

      (*(v251 + 8))(v216, v215);
      v368 = v213;
      v369 = MEMORY[0x1E69805D0];
      v217 = v275;
      swift_getWitnessTable();
      v218 = v255;
      v219 = *(v255 + 16);
      v220 = v253;
      v219(v253, v214, v217);
      v221 = *(v218 + 8);
      v221(v214, v217);
      v219(v214, v220, v217);
      v80 = v262;
      sub_1E5CF28BC(v214, MEMORY[0x1E69815C0], v217);
      v222 = v214;
      v79 = MEMORY[0x1E69805D0];
      v221(v222, v217);
      v223 = v220;
      v77 = v277;
      v221(v223, v217);
      v76 = v281;
      v78 = v287.i64[0];
    }

    v224 = v274;
    v225 = MEMORY[0x1E6981580];
    v371.i64[0] = v76;
    v371.i64[1] = v283;
    v372.i64[0] = v77;
    v372.i64[1] = v78;
    v366 = swift_getOpaqueTypeConformance2();
    v367 = v79;
    v226 = swift_getWitnessTable();
    v364 = v225;
    v365 = v226;
    swift_getWitnessTable();
    v227 = v264;
    v228 = v225;
    v229 = v77;
    v230 = v263;
    (*(v264 + 16))(v263, v80, v224);
    sub_1E5CF4038();
    v88 = v271;
    sub_1E5CF28BC(v230, v270, v224);
    v231 = *(v227 + 8);
    v232 = v230;
    v85 = v229;
    v90 = v228;
    v231(v232, v224);
    v231(v80, v224);
    v86 = MEMORY[0x1E69805D0];
    v83 = v281;
    v84 = v283;
  }

  v236 = sub_1E5CF4038();
  v371.i64[0] = v83;
  v371.i64[1] = v84;
  v372.i64[0] = v85;
  v372.i64[1] = v287.i64[0];
  v362 = swift_getOpaqueTypeConformance2();
  v363 = v86;
  v237 = swift_getWitnessTable();
  v360 = v90;
  v361 = v237;
  v238 = swift_getWitnessTable();
  v358 = v236;
  v359 = v238;
  v239 = v273;
  swift_getWitnessTable();
  v240 = v272;
  (*(v272 + 16))(v276, v88, v239);
  return (*(v240 + 8))(v88, v239);
}

uint64_t sub_1E5CF27C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5D04280();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5D04290();
}

uint64_t sub_1E5CF28BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5D04280();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5D04290();
}

uint64_t sub_1E5CF29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, int a37)
{
  v68 = a7;
  v69 = a8;
  v65 = a4;
  v66 = a6;
  v46 = a3;
  v47 = a5;
  v72 = a2;
  v73 = a1;
  v70 = a23;
  v62 = a36;
  v61 = a35;
  v60 = a34;
  v71 = a33;
  v59 = a32;
  v58 = a31;
  v57 = a30;
  v56 = a29;
  v55 = a28;
  v64 = a24;
  v54 = a25;
  v63 = a21;
  v53 = a22;
  v52 = a20;
  v51 = a19;
  v50 = a18;
  v49 = a17;
  v48 = a16;
  v74 = a3;
  v75 = a5;
  v76 = a9;
  v77 = a12;
  v78 = a13;
  v79 = a14;
  v80 = a16;
  v81 = a17;
  v82 = a18;
  v83 = a19;
  v84 = a20;
  v85 = a22;
  v86 = a25;
  v87 = a28;
  v88 = a29;
  v89 = a30;
  v90 = a31;
  v91 = a32;
  v92 = a34;
  v93 = a35;
  v94 = a36;
  v45[0] = a15;
  v67 = a37;
  v45[2] = a27;
  v45[1] = a26;
  v37 = type metadata accessor for CanvasAction(0, &v74);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = v45 - v40;
  v74 = v46;
  v75 = v65;
  v76 = v47;
  v77 = v66;
  v78 = v68;
  v79 = v69;
  v80 = a9;
  v81 = a10;
  v82 = a11;
  v83 = a12;
  v84 = a13;
  v85 = a14;
  v86 = a15;
  v87 = a16;
  v88 = a17;
  v89 = a18;
  v90 = a19;
  v91 = a20;
  v92 = a21;
  v93 = a22;
  v94 = a23;
  v95 = a24;
  v96 = a25;
  v97 = a26;
  v98 = a27;
  v99 = a28;
  v100 = a29;
  v101 = a30;
  v102 = a31;
  v103 = a32;
  v104 = a33;
  v105 = a34;
  v106 = a35;
  v107 = a36;
  v42 = type metadata accessor for CanvasView(0, &v74);
  sub_1E5CEFABC(v42);
  v43 = sub_1E5D03F90();
  (*(*(v43 - 8) + 16))(v41, v73, v43);
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v38 + 8))(v41, v37);
}

uint64_t sub_1E5CF2CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36)
{
  v65 = a7;
  v66 = a8;
  v63 = a4;
  v64 = a6;
  v44 = a3;
  v45 = a5;
  v69 = a2;
  v70 = a1;
  v67 = a23;
  v60 = a36;
  v59 = a35;
  v58 = a34;
  v68 = a33;
  v57 = a32;
  v56 = a31;
  v55 = a30;
  v54 = a29;
  v53 = a28;
  v62 = a24;
  v52 = a25;
  v61 = a21;
  v51 = a22;
  v50 = a20;
  v49 = a19;
  v48 = a18;
  v47 = a17;
  v46 = a16;
  v71 = a3;
  v72 = a5;
  v73 = a9;
  v74 = a12;
  v75 = a13;
  v76 = a14;
  v77 = a16;
  v78 = a17;
  v79 = a18;
  v80 = a19;
  v81 = a20;
  v82 = a22;
  v83 = a25;
  v84 = a28;
  v85 = a29;
  v86 = a30;
  v87 = a31;
  v88 = a32;
  v89 = a34;
  v90 = a35;
  v91 = a36;
  v43[1] = a15;
  v43[3] = a27;
  v43[2] = a26;
  v36 = type metadata accessor for CanvasAction(0, &v71);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = v43 - v39;
  v71 = v44;
  v72 = v63;
  v73 = v45;
  v74 = v64;
  v75 = v65;
  v76 = v66;
  v77 = a9;
  v78 = a10;
  v79 = a11;
  v80 = a12;
  v81 = a13;
  v82 = a14;
  v83 = a15;
  v84 = a16;
  v85 = a17;
  v86 = a18;
  v87 = a19;
  v88 = a20;
  v89 = a21;
  v90 = a22;
  v91 = a23;
  v92 = a24;
  v93 = a25;
  v94 = a26;
  v95 = a27;
  v96 = a28;
  v97 = a29;
  v98 = a30;
  v99 = a31;
  v100 = a32;
  v101 = a33;
  v102 = a34;
  v103 = a35;
  v104 = a36;
  v41 = type metadata accessor for CanvasView(0, &v71);
  sub_1E5CEFABC(v41);
  (*(*(a12 - 8) + 16))(v40, v70, a12);
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v37 + 8))(v40, v36);
}

uint64_t sub_1E5CF2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v84 = a4;
  v85 = a8;
  v100 = a6;
  v101 = a7;
  v98 = a3;
  v99 = a5;
  v82 = a1;
  v83 = a2;
  v78 = a37;
  v96 = a36;
  v77 = a35;
  v81 = a33;
  v76 = a34;
  v94 = a32;
  v75 = a31;
  v93 = a30;
  v74 = a29;
  v80 = a27;
  v95 = a28;
  v79 = a26;
  v92 = a25;
  v97 = a22;
  v91 = a21;
  v86 = a19;
  v90 = a18;
  v89 = a17;
  v88 = a16;
  v87 = a15;
  v138 = a2;
  v139 = a4;
  v140 = a8;
  v141 = a11;
  v68 = a11;
  v69 = a12;
  v142 = a12;
  v143 = a13;
  v70 = a13;
  v144 = a15;
  v145 = a16;
  v146 = a17;
  v147 = a18;
  v148 = a19;
  v149 = a21;
  v150 = a25;
  v151 = a28;
  v152 = a29;
  v153 = a30;
  v154 = a31;
  v155 = a32;
  v156 = a34;
  v157 = a35;
  v158 = a36;
  v159 = a37;
  v72 = a20;
  v71 = a14;
  v73 = a24;
  v67 = a23;
  v66 = a10;
  v65 = a9;
  v37 = type metadata accessor for CanvasAction(0, &v138);
  v63 = *(v37 - 8);
  v64 = v37;
  v38 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v62 = (&v60 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v61 = &v60 - v42;
  v138 = v83;
  v139 = v98;
  v140 = v84;
  v141 = v99;
  v142 = v100;
  v143 = v101;
  v144 = v85;
  v145 = a9;
  v146 = a10;
  v147 = a11;
  v148 = a12;
  v149 = a13;
  v150 = a14;
  v151 = v87;
  v152 = v88;
  v153 = v89;
  v154 = v90;
  v155 = v86;
  v156 = a20;
  v157 = v91;
  v158 = v97;
  v159 = a23;
  v160 = a24;
  v161 = v92;
  v44 = v79;
  v43 = v80;
  v162 = v79;
  v163 = v80;
  v164 = v95;
  v46 = v74;
  v45 = v75;
  v165 = v74;
  v166 = v93;
  v167 = v75;
  v168 = v94;
  v47 = v81;
  v169 = v81;
  v49 = v76;
  v48 = v77;
  v170 = v76;
  v171 = v77;
  v172 = v96;
  v50 = v78;
  v173 = v78;
  v60 = type metadata accessor for CanvasView(0, &v138);
  sub_1E5CEFABC(v60);
  v102 = v83;
  v103 = v98;
  v104 = v84;
  v105 = v99;
  v106 = v100;
  v107 = v101;
  v108 = v85;
  v109 = v65;
  v110 = v66;
  v111 = v68;
  v112 = v69;
  v113 = v70;
  v114 = v71;
  v115 = v87;
  v116 = v88;
  v117 = v89;
  v118 = v90;
  v119 = v86;
  v120 = v72;
  v121 = v91;
  v122 = v97;
  v123 = v67;
  v124 = v73;
  v125 = v92;
  v126 = v44;
  v127 = v43;
  v128 = v95;
  v129 = v46;
  v130 = v93;
  v131 = v45;
  v132 = v94;
  v133 = v47;
  v134 = v49;
  v135 = v48;
  v136 = v96;
  v137 = v50;
  swift_getKeyPath();
  sub_1E5D043D0();

  v52 = v139;
  if (v139)
  {
    v53 = v138;
    v55 = v60;
    v54 = v61;
    sub_1E5CF7BB0(v82 + *(v60 + 340), v61);
    v56 = sub_1E5D04270();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v54, 1, v56) == 1)
    {
      sub_1E5CEC31C(v54, &qword_1ED066EB0, &qword_1E5D068F0);
    }

    else
    {
      v138 = v53;
      v139 = v52;
      sub_1E5D04260();
      (*(v57 + 8))(v54, v56);
    }

    sub_1E5CEFABC(v55);
    v58 = v62;
    *v62 = v53;
    v58[1] = v52;
    v59 = v64;
    swift_storeEnumTagMultiPayload();
    sub_1E5D043E0();

    return (*(v63 + 8))(v58, v59);
  }

  return result;
}

uint64_t CanvasView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v103 = a2;
  v100 = *(a1 - 8);
  v101 = *(v100 + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v99 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 128);
  v97 = vextq_s8(v5, v5, 8uLL);
  v6 = *(v3 + 280);
  v137 = v5;
  v138 = v6;
  *&v118 = v241;
  v215[1] = v6;
  v215[0] = v5;
  v110 = sub_1E5D041A0();
  v102 = *(v110 - 8);
  v7 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v115 = &v89 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v9 = *(a1 + 32);
  v131 = *(a1 + 40);
  v132 = v9;
  v10 = *(a1 + 48);
  v129 = *(a1 + 56);
  v130 = v10;
  v11 = *(a1 + 64);
  v127 = *(a1 + 72);
  v128 = v11;
  v12 = *(a1 + 24);
  v105 = *(a1 + 16);
  v116 = v12;
  v13 = *(a1 + 80);
  v125 = *(a1 + 88);
  v126 = v13;
  v14 = *(a1 + 96);
  v123 = *(a1 + 104);
  v124 = v14;
  v15 = *(a1 + 112);
  v121 = *(a1 + 120);
  v122 = v15;
  v16 = *(a1 + 184);
  v108 = *(a1 + 192);
  v109 = v16;
  v17 = *(a1 + 200);
  v18 = *(a1 + 208);
  v19 = *(a1 + 160);
  v20 = *(a1 + 224);
  v106 = *(a1 + 216);
  v107 = v18;
  v21 = *(a1 + 232);
  v135 = *(a1 + 240);
  v136 = v21;
  v22 = *(a1 + 248);
  v133 = *(a1 + 256);
  v134 = v22;
  v23 = *(a1 + 272);
  v113 = *(a1 + 264);
  v114 = v17;
  v119 = v19;
  v120 = v23;
  v111 = *(a1 + 296);
  v24 = v111;
  v112 = v20;
  *&v215[0] = v105;
  *(&v215[0] + 1) = v9;
  *&v215[1] = v131;
  *(&v215[1] + 1) = v10;
  v216.i64[0] = v129;
  v216.i64[1] = v11;
  v217 = v127;
  v218 = v13;
  v219 = v12;
  v220 = v125;
  v221 = v14;
  v222 = v123;
  v223 = v15;
  v224 = v121;
  v228 = v16;
  v229 = v108;
  v230 = v17;
  v231 = v18;
  v232 = v106;
  v233 = v19;
  v234 = v20;
  v235 = v21;
  v236 = v135;
  v237 = v22;
  v238 = v133;
  v239 = v113;
  *v118 = vextq_s8(v138, v138, 8uLL);
  v240 = v23;
  v241[2] = v24;
  v25 = *(a1 + 168);
  v117 = *(a1 + 144);
  v118 = v25;
  v225 = v97;
  v226 = v117;
  v227 = v25;
  v26 = sub_1E5D040D0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1E5CF3FBC();
  *&v215[0] = v26;
  *(&v215[0] + 1) = v27;
  *&v215[1] = WitnessTable;
  *(&v215[1] + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  sub_1E5D04250();
  sub_1E5D042A0();
  v104 = sub_1E5D042A0();
  v30 = sub_1E5D04250();
  v97.i64[0] = sub_1E5CF4038();
  *&v215[0] = v26;
  *(&v215[0] + 1) = v27;
  *&v215[1] = WitnessTable;
  *(&v215[1] + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x1E69805D0];
  v213 = OpaqueTypeConformance2;
  v214 = MEMORY[0x1E69805D0];
  v33 = swift_getWitnessTable();
  v211 = MEMORY[0x1E6981580];
  v212 = v33;
  v34 = swift_getWitnessTable();
  v209 = v97.i64[0];
  v210 = v34;
  v207 = swift_getWitnessTable();
  v208 = v32;
  v35 = swift_getWitnessTable();
  *&v215[0] = v30;
  *(v215 + 8) = v137;
  *(&v215[1] + 1) = v35;
  v216 = v138;
  sub_1E5D040B0();
  sub_1E5D042A0();
  v36 = sub_1E5D04340();
  v97.i64[0] = *(v36 - 8);
  v37 = *(v97.i64[0] + 64);
  MEMORY[0x1EEE9AC00](v36);
  v104 = &v89 - v38;
  v39 = swift_getWitnessTable();
  v205 = v35;
  v206 = v39;
  v89 = swift_getWitnessTable();
  v204 = v89;
  v40 = v36;
  v92 = v36;
  v41 = swift_getWitnessTable();
  v94 = v41;
  v42 = v110;
  v93 = swift_getWitnessTable();
  *&v215[0] = v40;
  *(&v215[0] + 1) = v42;
  *&v215[1] = v41;
  *(&v215[1] + 1) = v93;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  v96 = OpaqueTypeMetadata2;
  v44 = *(v95 + 64);
  v45 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v90 = &v89 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v91 = &v89 - v47;
  v48 = v105;
  v171 = v105;
  v49 = v116;
  v172 = v116;
  v173 = v132;
  v174 = v131;
  v175 = v130;
  v176 = v129;
  v177 = v128;
  v178 = v127;
  v179 = v126;
  v180 = v125;
  v181 = v124;
  v182 = v123;
  v183 = v122;
  v184 = v121;
  v185 = v137;
  v186 = v117;
  v187 = v119;
  v188 = v118;
  v50 = v108;
  v51 = v109;
  v189 = v109;
  v190 = v108;
  v191 = v114;
  v52 = v106;
  v53 = v107;
  v192 = v107;
  v193 = v106;
  v194 = v112;
  v195 = v136;
  v196 = v135;
  v197 = v134;
  v198 = v133;
  v199 = v113;
  v200 = v120;
  v201 = v138;
  v202 = v111;
  v54 = v98;
  v203 = v98;
  sub_1E5D04330();
  sub_1E5CEFABC(a1);
  v139 = v48;
  v140 = v49;
  v141 = v132;
  v142 = v131;
  v143 = v130;
  v144 = v129;
  v145 = v128;
  v146 = v127;
  v147 = v126;
  v148 = v125;
  v149 = v124;
  v150 = v123;
  v151 = v122;
  v152 = v121;
  v153 = v137;
  v154 = v117;
  v155 = v119;
  v156 = v118;
  v157 = v51;
  v158 = v50;
  v55 = v114;
  v159 = v114;
  v160 = v53;
  v161 = v52;
  v57 = v112;
  v56 = v113;
  v162 = v112;
  v163 = v136;
  v164 = v135;
  v165 = v134;
  v166 = v133;
  v167 = v113;
  v168 = v120;
  v169 = v138;
  v58 = v111;
  v170 = v111;
  swift_getKeyPath();
  sub_1E5D043D0();

  v60 = v99;
  v59 = v100;
  (*(v100 + 16))(v99, v54, a1);
  v61 = (*(v59 + 80) + 304) & ~*(v59 + 80);
  v62 = swift_allocObject();
  v63 = v116;
  *(v62 + 16) = v105;
  *(v62 + 24) = v63;
  v64 = v131;
  *(v62 + 32) = v132;
  *(v62 + 40) = v64;
  v65 = v129;
  *(v62 + 48) = v130;
  *(v62 + 56) = v65;
  v66 = v127;
  *(v62 + 64) = v128;
  *(v62 + 72) = v66;
  v67 = v125;
  *(v62 + 80) = v126;
  *(v62 + 88) = v67;
  v68 = v123;
  *(v62 + 96) = v124;
  *(v62 + 104) = v68;
  v69 = v121;
  *(v62 + 112) = v122;
  *(v62 + 120) = v69;
  v71 = v117;
  v70 = v118;
  *(v62 + 128) = v137;
  *(v62 + 144) = v71;
  *(v62 + 160) = v119;
  *(v62 + 168) = v70;
  v72 = v108;
  *(v62 + 184) = v109;
  *(v62 + 192) = v72;
  v73 = v106;
  v74 = v107;
  *(v62 + 200) = v55;
  *(v62 + 208) = v74;
  *(v62 + 216) = v73;
  *(v62 + 224) = v57;
  v75 = v135;
  *(v62 + 232) = v136;
  *(v62 + 240) = v75;
  v76 = v133;
  *(v62 + 248) = v134;
  *(v62 + 256) = v76;
  v77 = v120;
  *(v62 + 264) = v56;
  *(v62 + 272) = v77;
  *(v62 + 280) = v138;
  *(v62 + 296) = v58;
  (*(v59 + 32))(v62 + v61, v60, a1);
  v78 = v90;
  v79 = v115;
  v80 = v92;
  v81 = v110;
  v82 = v104;
  sub_1E5D042F0();

  (*(v102 + 8))(v79, v81);
  (*(v97.i64[0] + 8))(v82, v80);
  v84 = v95;
  v83 = v96;
  v85 = *(v95 + 16);
  v86 = v91;
  v85(v91, v78, v96);
  v87 = *(v84 + 8);
  v87(v78, v83);
  v85(v103, v86, v83);
  return (v87)(v86, v83);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1E5CF3FBC()
{
  result = qword_1EE2FA0D0;
  if (!qword_1EE2FA0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA0D0);
  }

  return result;
}

unint64_t sub_1E5CF4038()
{
  result = qword_1EE2FA0F0;
  if (!qword_1EE2FA0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
    sub_1E5CF40C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA0F0);
  }

  return result;
}

unint64_t sub_1E5CF40C4()
{
  result = qword_1EE2FA118;
  if (!qword_1EE2FA118)
  {
    sub_1E5D03FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA118);
  }

  return result;
}

uint64_t sub_1E5CF411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v217 = a7;
  v218 = a8;
  v215 = a6;
  v205 = a4;
  v206 = a5;
  v212 = a3;
  v210 = a2;
  v188 = a1;
  v193 = a9;
  v229 = a37;
  v230 = a36;
  v231 = a35;
  v228 = a34;
  v227 = a33;
  v226 = a32;
  v225 = a31;
  v224 = a30;
  v223 = a29;
  v222 = a28;
  v221 = a27;
  v220 = a26;
  v219 = a25;
  v216 = a24;
  v214 = a23;
  v213 = a22;
  v211 = a21;
  v209 = a20;
  v208 = a19;
  v207 = a18;
  v203 = *(&a17 + 1);
  v195 = a17;
  v202 = a16;
  v201 = a15;
  v200 = a14;
  v199 = a13;
  v198 = a12;
  v197 = a11;
  v196 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v240 = a10;
  v241 = a11;
  v242 = v212;
  v243 = a12;
  v244 = a13;
  v245 = a14;
  v246 = a15;
  v247 = a16;
  *&v248 = *(&a17 + 1);
  *(&v248 + 1) = a17;
  v249 = a18;
  v250 = a19;
  v251 = a21;
  v252 = a22;
  v253 = a23;
  v254 = a24;
  v255 = a25;
  v256 = a26;
  v257 = a27;
  v258 = a20;
  v259 = a28;
  v260 = a29;
  v261 = a30;
  v262 = a31;
  v263 = a32;
  v264 = a33;
  v265 = a34;
  v266 = a36;
  v267 = a35;
  v268 = a37;
  sub_1E5D040D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  swift_getWitnessTable();
  sub_1E5CF3FBC();
  swift_getOpaqueTypeMetadata2();
  sub_1E5D04250();
  sub_1E5D042A0();
  v194 = sub_1E5D042A0();
  v204 = sub_1E5D04250();
  v37 = sub_1E5CF4038();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x1E69805D0];
  v235[11] = OpaqueTypeConformance2;
  v235[12] = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v235[9] = MEMORY[0x1E6981580];
  v235[10] = WitnessTable;
  v235[7] = v37;
  v235[8] = swift_getWitnessTable();
  v180 = swift_getWitnessTable();
  v235[5] = v180;
  v235[6] = v39;
  v41 = v204;
  *v236 = v204;
  *&v236[8] = a17;
  v192 = swift_getWitnessTable();
  v237 = v192;
  v238 = a35;
  v239 = a36;
  v42 = sub_1E5D040B0();
  v181 = *(v42 - 8);
  v43 = *(v181 + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v183 = &v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v182 = (&v175 - v46);
  *v236 = v210;
  *&v236[8] = v212;
  *&v236[16] = v205;
  v237 = v206;
  v238 = v215;
  v239 = v217;
  v240 = v218;
  v241 = v196;
  v242 = v197;
  v243 = v198;
  v244 = v199;
  v245 = v200;
  v246 = v201;
  v247 = v202;
  v248 = a17;
  v249 = v207;
  v250 = v208;
  v251 = v209;
  v252 = v211;
  v253 = v213;
  v254 = v214;
  v255 = v216;
  v256 = v219;
  v257 = v220;
  v258 = v221;
  v259 = v222;
  v260 = v223;
  v261 = v224;
  v262 = v225;
  v263 = v226;
  v264 = v227;
  v265 = v228;
  v266 = a35;
  v267 = a36;
  v268 = v229;
  v47 = type metadata accessor for CanvasView(0, v236);
  v186 = *(v47 - 8);
  v48 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v185 = &v175 - v49;
  *v236 = a17;
  *&v236[16] = a35;
  v237 = a36;
  v50 = sub_1E5D041A0();
  v176 = *(v50 - 8);
  v177 = v50;
  v51 = *(v176 + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = (&v175 - v53);
  v178 = *(v194 - 8);
  v55 = *(v178 + 64);
  v56 = MEMORY[0x1EEE9AC00](v52);
  v184 = &v175 - v57;
  v58 = *(v41 - 8);
  v59 = *(v58 + 8);
  v60 = MEMORY[0x1EEE9AC00](v56);
  v62 = &v175 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v179 = &v175 - v63;
  v64 = v188;
  v187 = v42;
  v65 = sub_1E5D042A0();
  v190 = *(v65 - 8);
  v191 = v65;
  v66 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v189 = &v175 - v67;
  sub_1E5CEFA64(v47);
  if (v237)
  {
    sub_1E5CF6BAC(v236, v235);
    sub_1E5CF6BC4(v235, &v234);
    v68 = v185;
    v69 = v186;
    (*(v186 + 16))(v185, v64, v47);
    v70 = (*(v69 + 80) + 304) & ~*(v69 + 80);
    v71 = swift_allocObject();
    v72 = v212;
    *(v71 + 2) = v210;
    *(v71 + 3) = v72;
    v73 = v206;
    *(v71 + 4) = v205;
    *(v71 + 5) = v73;
    v74 = v217;
    v75 = v218;
    *(v71 + 6) = v215;
    *(v71 + 7) = v74;
    v76 = v196;
    v77 = v197;
    *(v71 + 8) = v75;
    *(v71 + 9) = v76;
    v78 = v198;
    v79 = v199;
    *(v71 + 10) = v77;
    *(v71 + 11) = v78;
    v80 = v200;
    v81 = v201;
    *(v71 + 12) = v79;
    *(v71 + 13) = v80;
    v82 = v202;
    v83 = v203;
    *(v71 + 14) = v81;
    *(v71 + 15) = v82;
    *(v71 + 16) = v195;
    *(v71 + 17) = v83;
    v84 = v208;
    *(v71 + 18) = v207;
    *(v71 + 19) = v84;
    v85 = v211;
    *(v71 + 20) = v209;
    *(v71 + 21) = v85;
    v86 = v214;
    *(v71 + 22) = v213;
    *(v71 + 23) = v86;
    v87 = v219;
    v88 = v220;
    *(v71 + 24) = v216;
    *(v71 + 25) = v87;
    v89 = v221;
    v90 = v222;
    *(v71 + 26) = v88;
    *(v71 + 27) = v89;
    v91 = v223;
    v92 = v224;
    *(v71 + 28) = v90;
    *(v71 + 29) = v91;
    v93 = v225;
    v94 = v226;
    *(v71 + 30) = v92;
    *(v71 + 31) = v93;
    v96 = v227;
    v95 = v228;
    *(v71 + 32) = v94;
    *(v71 + 33) = v96;
    v98 = v230;
    v97 = v231;
    *(v71 + 34) = v95;
    *(v71 + 35) = v97;
    v99 = v229;
    *(v71 + 36) = v98;
    *(v71 + 37) = v99;
    (*(v69 + 32))(&v71[v70], v68, v47);
    v173 = v98;
    v100 = v183;
    v101 = v192;
    sub_1E5D040A0();
    v102 = v187;
    v231 = swift_getWitnessTable();
    v104 = v181;
    v103 = v182;
    v105 = *(v181 + 16);
    v105(v182, v100, v102);
    v106 = *(v104 + 8);
    v106(v100, v102);
    v105(v100, v103, v102);
    v107 = v189;
    sub_1E5CF28BC(v100, v204, v102);
    v106(v100, v102);
    v106(v103, v102);
    __swift_destroy_boxed_opaque_existential_1(v235);
  }

  else
  {
    v175 = v47;
    v108 = sub_1E5CEFABC(v47);
    v182 = &v175;
    MEMORY[0x1EEE9AC00](v108);
    v109 = &v175 - 36;
    v111 = v217;
    v110 = v218;
    *(&v175 - 32) = v215;
    *(&v175 - 31) = v111;
    *(&v175 - 30) = v110;
    v112 = v197;
    *(&v175 - 29) = v196;
    *(&v175 - 28) = v112;
    v113 = v199;
    *(&v175 - 27) = v198;
    *(&v175 - 26) = v113;
    v114 = v201;
    *(&v175 - 25) = v200;
    *(&v175 - 24) = v114;
    v115 = v195;
    *(&v175 - 23) = v202;
    *(&v175 - 22) = v115;
    v117 = v207;
    v116 = v208;
    *(&v175 - 21) = v203;
    *(&v175 - 20) = v117;
    *(&v175 - 19) = v116;
    v118 = v211;
    *(&v175 - 18) = v209;
    *(&v175 - 17) = v118;
    v119 = v214;
    *(&v175 - 16) = v213;
    *(&v175 - 15) = v119;
    v121 = v219;
    v120 = v220;
    *(&v175 - 14) = v216;
    *(&v175 - 13) = v121;
    *(&v175 - 12) = v120;
    v122 = v222;
    *(&v175 - 11) = v221;
    *(&v175 - 10) = v122;
    v123 = v224;
    *(&v175 - 9) = v223;
    *(&v175 - 8) = v123;
    v124 = v226;
    *(&v175 - 7) = v225;
    *(&v175 - 6) = v124;
    v125 = v228;
    *(&v175 - 5) = v227;
    *(&v175 - 4) = v125;
    v126 = v230;
    *(&v175 - 3) = v231;
    v173 = v126;
    v174 = v229;
    v127 = v212;
    *v109 = v210;
    v109[1] = v127;
    v129 = v205;
    v128 = v206;
    v109[2] = v205;
    v109[3] = v128;
    swift_getKeyPath();
    v183 = v58;
    sub_1E5D043D0();

    v130 = v175;
    sub_1E5CF0A98(v54, v175, v184);
    (*(v176 + 8))(v54, v177);
    v131 = v185;
    v132 = v186;
    (*(v186 + 16))(v185, v64, v130);
    v133 = (*(v132 + 80) + 304) & ~*(v132 + 80);
    v134 = swift_allocObject();
    v135 = v212;
    *(v134 + 2) = v210;
    *(v134 + 3) = v135;
    *(v134 + 4) = v129;
    *(v134 + 5) = v128;
    v136 = v217;
    v137 = v218;
    *(v134 + 6) = v215;
    *(v134 + 7) = v136;
    v138 = v196;
    v139 = v197;
    *(v134 + 8) = v137;
    *(v134 + 9) = v138;
    v140 = v198;
    v141 = v199;
    *(v134 + 10) = v139;
    *(v134 + 11) = v140;
    v142 = v200;
    v143 = v201;
    *(v134 + 12) = v141;
    *(v134 + 13) = v142;
    v144 = v202;
    *(v134 + 14) = v143;
    *(v134 + 15) = v144;
    v145 = v203;
    *(v134 + 16) = v195;
    *(v134 + 17) = v145;
    v146 = v208;
    *(v134 + 18) = v207;
    *(v134 + 19) = v146;
    v147 = v211;
    *(v134 + 20) = v209;
    *(v134 + 21) = v147;
    v148 = v214;
    *(v134 + 22) = v213;
    *(v134 + 23) = v148;
    v149 = v219;
    v150 = v220;
    *(v134 + 24) = v216;
    *(v134 + 25) = v149;
    v151 = v221;
    v152 = v222;
    *(v134 + 26) = v150;
    *(v134 + 27) = v151;
    v153 = v223;
    v154 = v224;
    *(v134 + 28) = v152;
    *(v134 + 29) = v153;
    v155 = v225;
    v156 = v226;
    *(v134 + 30) = v154;
    *(v134 + 31) = v155;
    v157 = v227;
    v158 = v228;
    *(v134 + 32) = v156;
    *(v134 + 33) = v157;
    v160 = v230;
    v159 = v231;
    *(v134 + 34) = v158;
    *(v134 + 35) = v159;
    v161 = v229;
    *(v134 + 36) = v160;
    *(v134 + 37) = v161;
    (*(v132 + 32))(&v134[v133], v131, v130);
    v162 = v194;
    v163 = v184;
    sub_1E5D042E0();

    (*(v178 + 8))(v163, v162);
    v164 = v183;
    v165 = *(v183 + 2);
    v166 = v179;
    v167 = v204;
    v165(v179, v62, v204);
    v168 = *(v164 + 1);
    v183 = v164 + 8;
    v168(v62, v167);
    v165(v62, v166, v167);
    swift_getWitnessTable();
    v107 = v189;
    v101 = v192;
    sub_1E5CF27C4(v62, v167);
    v168(v62, v167);
    v168(v166, v167);
  }

  v169 = swift_getWitnessTable();
  v232 = v101;
  v233 = v169;
  v170 = v191;
  swift_getWitnessTable();
  v171 = v190;
  (*(v190 + 16))(v193, v107, v170);
  return (*(v171 + 8))(v107, v170);
}