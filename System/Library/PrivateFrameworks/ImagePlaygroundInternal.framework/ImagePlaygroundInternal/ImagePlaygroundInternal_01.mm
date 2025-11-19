uint64_t sub_1D229447C@<X0>(_BYTE *a1@<X8>)
{
  sub_1D26A9A70();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2294520()
{
  v1 = *(type metadata accessor for Bubble(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  type metadata accessor for Bubble.BubbleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {

        v76 = *(type metadata accessor for Prompt(0) + 36);
        v77 = sub_1D2871798();
        (*(*(v77 - 8) + 8))(v3 + v76, v77);
        goto LABEL_64;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_15;
      }

      v41 = type metadata accessor for PhotosPersonAsset();
      if (!(*(*(v41 - 8) + 48))(v0 + v2, 1, v41))
      {

        if (*(v3 + 32))
        {
        }

        v42 = v3 + *(v41 + 20);

        v43 = (v42 + *(type metadata accessor for PhotosPersonImage() + 24));

        v44 = type metadata accessor for PlaygroundImage();
        v45 = v44[8];
        v46 = sub_1D2871818();
        (*(*(v46 - 8) + 8))(v43 + v45, v46);
        v47 = (v43 + v44[10]);
        v48 = v47[1];
        if (v48 >> 60 != 15)
        {
          sub_1D22D6D60(*v47, v48);
        }

        v49 = v44[11];
        v50 = sub_1D2873AA8();
        v51 = *(v50 - 8);
        if (!(*(v51 + 48))(v43 + v49, 1, v50))
        {
          (*(v51 + 8))(v43 + v49, v50);
        }
      }

      v5 = *(type metadata accessor for PersonConditioningImage() + 20);
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload == 8)
    {
LABEL_15:

      v6 = type metadata accessor for PlaygroundImage();
      v7 = v6[8];
      v8 = sub_1D2871818();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      v9 = (v3 + v6[10]);
      v10 = v9[1];
      if (v10 >> 60 != 15)
      {
        sub_1D22D6D60(*v9, v10);
      }

      v11 = v6[11];
      v12 = sub_1D2873AA8();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v3 + v11, 1, v12))
      {
        (*(v13 + 8))(v3 + v11, v12);
      }

      goto LABEL_64;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_64;
      }

      goto LABEL_15;
    }

LABEL_62:

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = sub_1D2872008();
      (*(*(v24 - 8) + 8))(v0 + v2, v24);
      goto LABEL_64;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_64;
    }

    v14 = type metadata accessor for CuratedPrompt();
    v15 = (v3 + v14[8]);
    v16 = type metadata accessor for PlaygroundImage();
    v17 = *(*(v16 - 1) + 48);
    if (v17(v15, 1, v16))
    {
      goto LABEL_55;
    }

    v18 = v16[8];
    v19 = sub_1D2871818();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    v20 = (v15 + v16[10]);
    v21 = v20[1];
    if (v21 >> 60 != 15)
    {
      sub_1D22D6D60(*v20, v21);
    }

    v22 = v16[11];
    v23 = sub_1D2873AA8();
    v80 = *(v23 - 8);
    v82 = v22;
    if ((*(v80 + 48))(v15 + v22, 1, v23))
    {
      goto LABEL_55;
    }

LABEL_54:
    (*(v80 + 8))(v15 + v82, v23);
LABEL_55:
    v66 = (v3 + v14[9]);
    if (!v17(v66, 1, v16))
    {

      v67 = v16[8];
      v68 = sub_1D2871818();
      (*(*(v68 - 8) + 8))(v66 + v67, v68);
      v69 = (v66 + v16[10]);
      v70 = v69[1];
      if (v70 >> 60 != 15)
      {
        sub_1D22D6D60(*v69, v70);
      }

      v71 = v16[11];
      v72 = sub_1D2873AA8();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v66 + v71, 1, v72))
      {
        (*(v73 + 8))(v66 + v71, v72);
      }
    }

    v74 = v3 + v14[23];
    v75 = *(v74 + 48);
    if (v75 != 255)
    {
      sub_1D23B7DA0(*v74, *(v74 + 8), *(v74 + 16), *(v74 + 24), *(v74 + 32), *(v74 + 40), v75 & 1);
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v14 = type metadata accessor for CuratedPrompt();
    v15 = (v3 + v14[8]);
    v16 = type metadata accessor for PlaygroundImage();
    v17 = *(*(v16 - 1) + 48);
    if (v17(v15, 1, v16))
    {
      goto LABEL_55;
    }

    v61 = v16[8];
    v62 = sub_1D2871818();
    (*(*(v62 - 8) + 8))(v15 + v61, v62);
    v63 = (v15 + v16[10]);
    v64 = v63[1];
    if (v64 >> 60 != 15)
    {
      sub_1D22D6D60(*v63, v64);
    }

    v65 = v16[11];
    v23 = sub_1D2873AA8();
    v80 = *(v23 - 8);
    v82 = v65;
    if ((*(v80 + 48))(v15 + v65, 1, v23))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (EnumCaseMultiPayload != 3)
  {

    if (*(v3 + 32))
    {
    }

    v3 += *(type metadata accessor for PhotosPersonAsset() + 20);

    v5 = *(type metadata accessor for PhotosPersonImage() + 24);
LABEL_45:
    v52 = v3 + v5;

    v53 = type metadata accessor for PlaygroundImage();
    v54 = v53[8];
    v55 = sub_1D2871818();
    (*(*(v55 - 8) + 8))(v52 + v54, v55);
    v56 = (v52 + v53[10]);
    v57 = v56[1];
    if (v57 >> 60 != 15)
    {
      sub_1D22D6D60(*v56, v57);
    }

    v58 = v53[11];
    v59 = sub_1D2873AA8();
    v60 = *(v59 - 8);
    if (!(*(v60 + 48))(v52 + v58, 1, v59))
    {
      (*(v60 + 8))(v52 + v58, v59);
    }

    goto LABEL_64;
  }

  v25 = type metadata accessor for PlaygroundImage();
  v26 = v25[8];
  v27 = sub_1D2871818();
  v83 = *(*(v27 - 8) + 8);
  v83(v3 + v26, v27);
  v28 = (v3 + v25[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1D22D6D60(*v28, v29);
  }

  v30 = v25[11];
  v31 = sub_1D2873AA8();
  v32 = *(v31 - 8);
  v81 = *(v32 + 48);
  if (!v81(v3 + v30, 1, v31))
  {
    (*(v32 + 8))(v3 + v30, v31);
  }

  v79 = v32;
  v33 = type metadata accessor for CharacterAsset();
  v34 = (v3 + *(v33 + 20));
  if (!(*(*(v25 - 1) + 48))(v34, 1, v25))
  {

    v83(v34 + v25[8], v27);
    v35 = (v34 + v25[10]);
    v36 = v35[1];
    if (v36 >> 60 != 15)
    {
      sub_1D22D6D60(*v35, v36);
    }

    v37 = v25[11];
    if (!v81(v34 + v37, 1, v31))
    {
      (*(v79 + 8))(v34 + v37, v31);
    }
  }

  v38 = *(v33 + 24);
  v39 = v38 + *(type metadata accessor for CharacterRecipe() + 20);
  v40 = sub_1D28737A8();
  (*(*(v40 - 8) + 8))(v3 + v39, v40);
LABEL_64:

  return swift_deallocObject();
}

uint64_t sub_1D229526C()
{

  return swift_deallocObject();
}

double sub_1D22952A4@<D0>(_OWORD *a1@<X8>)
{
  sub_1D26B7BC0();
  sub_1D2875638();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D22952F8()
{
  v1 = type metadata accessor for CreationFloatingBubblesView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for Bubble(0) - 8) + 80);
  v5 = v2 + v3 + v4;
  swift_unknownObjectRelease();
  v6 = v0 + v2;
  sub_1D2273818(*(v0 + v2), *(v0 + v2 + 8));
  sub_1D2273818(*(v6 + 16), *(v6 + 24));

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2875E18();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v5 & ~v4;
  sub_1D2273818(*(v6 + v1[16]), *(v6 + v1[16] + 8));
  v13 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D2874EA8();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
  }

  v15 = v0 + v12;
  type metadata accessor for Bubble.BubbleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {

        v84 = *(type metadata accessor for Prompt(0) + 36);
        v85 = sub_1D2871798();
        (*(*(v85 - 8) + 8))(v15 + v84, v85);
        goto LABEL_66;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_22;
      }

      v64 = type metadata accessor for PhotosPersonAsset();
      if (!(*(*(v64 - 8) + 48))(v0 + v12, 1, v64))
      {

        if (*(v15 + 32))
        {
        }

        v65 = v15 + *(v64 + 20);

        v66 = (v65 + *(type metadata accessor for PhotosPersonImage() + 24));

        v67 = type metadata accessor for PlaygroundImage();
        v68 = v67[8];
        v69 = sub_1D2871818();
        (*(*(v69 - 8) + 8))(v66 + v68, v69);
        v70 = (v66 + v67[10]);
        v71 = v70[1];
        if (v71 >> 60 != 15)
        {
          sub_1D22D6D60(*v70, v71);
        }

        v72 = v67[11];
        v73 = sub_1D2873AA8();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v66 + v72, 1, v73))
        {
          (*(v74 + 8))(v66 + v72, v73);
        }
      }

      v17 = *(type metadata accessor for PersonConditioningImage() + 20);
      goto LABEL_60;
    }

    if (EnumCaseMultiPayload == 8)
    {
LABEL_22:

      v18 = type metadata accessor for PlaygroundImage();
      v19 = v18[8];
      v20 = sub_1D2871818();
      (*(*(v20 - 8) + 8))(v15 + v19, v20);
      v21 = (v15 + v18[10]);
      v22 = v21[1];
      if (v22 >> 60 != 15)
      {
        sub_1D22D6D60(*v21, v22);
      }

      v23 = v18[11];
      v24 = sub_1D2873AA8();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v15 + v23, 1, v24))
      {
        (*(v25 + 8))(v15 + v23, v24);
      }

      goto LABEL_66;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_66;
      }

      goto LABEL_22;
    }

LABEL_40:

    goto LABEL_66;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v47 = sub_1D2872008();
      (*(*(v47 - 8) + 8))(v0 + v12, v47);
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_28:

    v26 = type metadata accessor for CuratedPrompt();
    v27 = (v15 + v26[8]);
    v28 = type metadata accessor for PlaygroundImage();
    v29 = *(*(v28 - 1) + 48);
    if (!v29(v27, 1, v28))
    {
      v91 = v29;

      v30 = v28[8];
      v31 = sub_1D2871818();
      (*(*(v31 - 8) + 8))(v27 + v30, v31);
      v32 = (v27 + v28[10]);
      v33 = v32[1];
      if (v33 >> 60 != 15)
      {
        sub_1D22D6D60(*v32, v33);
      }

      v34 = v28[11];
      v35 = sub_1D2873AA8();
      v88 = *(v35 - 8);
      v90 = v34;
      v36 = (*(v88 + 48))(v27 + v34, 1, v35);
      v29 = v91;
      if (!v36)
      {
        (*(v88 + 8))(v27 + v90, v35);
      }
    }

    v37 = (v15 + v26[9]);
    if (!v29(v37, 1, v28))
    {

      v38 = v28[8];
      v39 = sub_1D2871818();
      (*(*(v39 - 8) + 8))(v37 + v38, v39);
      v40 = (v37 + v28[10]);
      v41 = v40[1];
      if (v41 >> 60 != 15)
      {
        sub_1D22D6D60(*v40, v41);
      }

      v42 = v28[11];
      v43 = sub_1D2873AA8();
      v44 = *(v43 - 8);
      if (!(*(v44 + 48))(v37 + v42, 1, v43))
      {
        (*(v44 + 8))(v37 + v42, v43);
      }
    }

    v45 = v15 + v26[23];
    v46 = *(v45 + 48);
    if (v46 != 255)
    {
      sub_1D23B7DA0(*v45, *(v45 + 8), *(v45 + 16), *(v45 + 24), *(v45 + 32), *(v45 + 40), v46 & 1);
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 3)
  {

    if (*(v15 + 32))
    {
    }

    v15 += *(type metadata accessor for PhotosPersonAsset() + 20);

    v17 = *(type metadata accessor for PhotosPersonImage() + 24);
LABEL_60:
    v75 = v15 + v17;

    v76 = type metadata accessor for PlaygroundImage();
    v77 = v76[8];
    v78 = sub_1D2871818();
    (*(*(v78 - 8) + 8))(v75 + v77, v78);
    v79 = (v75 + v76[10]);
    v80 = v79[1];
    if (v80 >> 60 != 15)
    {
      sub_1D22D6D60(*v79, v80);
    }

    v81 = v76[11];
    v82 = sub_1D2873AA8();
    v83 = *(v82 - 8);
    if (!(*(v83 + 48))(v75 + v81, 1, v82))
    {
      (*(v83 + 8))(v75 + v81, v82);
    }

    goto LABEL_66;
  }

  v48 = type metadata accessor for PlaygroundImage();
  v49 = v48[8];
  v50 = sub_1D2871818();
  v92 = *(*(v50 - 8) + 8);
  v92(v15 + v49, v50);
  v51 = (v15 + v48[10]);
  v52 = v51[1];
  if (v52 >> 60 != 15)
  {
    sub_1D22D6D60(*v51, v52);
  }

  v53 = v48[11];
  v54 = sub_1D2873AA8();
  v55 = *(v54 - 8);
  v89 = *(v55 + 48);
  if (!v89(v15 + v53, 1, v54))
  {
    (*(v55 + 8))(v15 + v53, v54);
  }

  v87 = v55;
  v56 = type metadata accessor for CharacterAsset();
  v57 = (v15 + *(v56 + 20));
  if (!(*(*(v48 - 1) + 48))(v57, 1, v48))
  {

    v92(v57 + v48[8], v50);
    v58 = (v57 + v48[10]);
    v59 = v58[1];
    if (v59 >> 60 != 15)
    {
      sub_1D22D6D60(*v58, v59);
    }

    v60 = v48[11];
    if (!v89(v57 + v60, 1, v54))
    {
      (*(v87 + 8))(v57 + v60, v54);
    }
  }

  v61 = *(v56 + 24);
  v62 = v61 + *(type metadata accessor for CharacterRecipe() + 20);
  v63 = sub_1D28737A8();
  (*(*(v63 - 8) + 8))(v15 + v62, v63);
LABEL_66:

  return swift_deallocObject();
}

uint64_t sub_1D229613C()
{
  v1 = type metadata accessor for CreationFloatingBubblesView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1D2273818(*(v0 + v2), *(v0 + v2 + 8));
  sub_1D2273818(*(v3 + 16), *(v3 + 24));

  v4 = v1[9];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2875E18();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  v9 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874EA8();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2296434()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22964A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D22964E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB48);
  sub_1D26B7F34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2296584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D22965F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2296660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PlaygroundImage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D229675C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PlaygroundImage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D2296864(uint64_t a1)
{
  result = sub_1D26B975C(&qword_1EC6DFBB0, type metadata accessor for PersonConditioningImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D22968BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22968F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22969C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2296A98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[11];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[13]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE8);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[15];
      goto LABEL_5;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBF0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[18];
      goto LABEL_5;
    }

    v16 = sub_1D28714E8();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[19];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1D2296CC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE8);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[15];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBF0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[18];
    goto LABEL_5;
  }

  v16 = sub_1D28714E8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + a4[19];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D2296F24()
{
  v1 = type metadata accessor for BubbleView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1D2273818(*(v0 + v2), *(v0 + v2 + 8));
  sub_1D2273818(*(v3 + 16), *(v3 + 24));

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  sub_1D2273818(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v3 + v1[11];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE80);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE88);

  v9 = v3 + v1[15];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE90);
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE98);

  v11 = v3 + v1[18];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEA0);
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEA8);

  v13 = v1[19];
  v14 = sub_1D28714E8();
  v15 = *(*(v14 - 8) + 8);
  v15(v3 + v13, v14);
  v15(v3 + v1[20], v14);
  v15(v3 + v1[21], v14);

  return swift_deallocObject();
}

uint64_t sub_1D2297308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2875388();
  *a1 = result;
  return result;
}

uint64_t sub_1D2297388()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC50);
  sub_1D26CD92C();
  swift_getOpaqueTypeConformance2();
  sub_1D22EBCFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2297494()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22974DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D2297514()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22975C4@<X0>(void *a1@<X8>)
{
  sub_1D26E6C7C();
  result = sub_1D28749B8();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2297618(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[15];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[18];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D22977AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D2297950()
{

  return swift_deallocObject();
}

uint64_t sub_1D2297998()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2297A0C()
{
  v1 = type metadata accessor for ComposingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v16 = sub_1D2877778();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2874EA8();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[15];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  v11 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D2875E18();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v6 + v1[19]), *(v6 + v1[19] + 8));
  sub_1D2273818(*(v6 + v1[20]), *(v6 + v1[20] + 8));

  j__swift_release();
  sub_1D2273818(*(v6 + v1[23]), *(v6 + v1[23] + 8));
  sub_1D2273818(*(v6 + v1[24]), *(v6 + v1[24] + 8));

  (*(v4 + 8))(v0 + ((v3 + v15 + v5) & ~v5), v16);

  return swift_deallocObject();
}

uint64_t sub_1D2297E24()
{
  v1 = type metadata accessor for ComposingView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874EA8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[15];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2875E18();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[19]), *(v2 + v1[19] + 8));
  sub_1D2273818(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  j__swift_release();
  sub_1D2273818(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  sub_1D2273818(*(v2 + v1[24]), *(v2 + v1[24] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D22981D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229821C()
{
  v1 = sub_1D2870CC8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ComposingView();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2874EA8();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v5[15];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  v12 = v5[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1D2875E18();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v7 + v5[19]), *(v7 + v5[19] + 8));
  sub_1D2273818(*(v7 + v5[20]), *(v7 + v5[20] + 8));

  j__swift_release();
  sub_1D2273818(*(v7 + v5[23]), *(v7 + v5[23] + 8));
  sub_1D2273818(*(v7 + v5[24]), *(v7 + v5[24] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D229862C@<X0>(_BYTE *a1@<X8>)
{
  sub_1D245CAA4();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D22986C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CF978();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2298708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2875518();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D22987F0@<X0>(void *a1@<X8>)
{
  result = sub_1D2875318();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2298890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2875508();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D22988C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01C8);
  type metadata accessor for StickerSaveAnimation.Coordinator();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0198);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0190);
  sub_1D26EC268();
  sub_1D22EBCFC();
  swift_getOpaqueTypeConformance2();
  sub_1D2403664();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2298B34()
{
  type metadata accessor for ComposingViewSharingPicker();
  swift_getWitnessTable();
  sub_1D2875D08();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2298C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D2298D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1D2298E74()
{

  return swift_deallocObject();
}

uint64_t sub_1D2298F0C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D2298FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D229902C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D22990C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2299144()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BE0);
  sub_1D270B960();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2299218()
{
  v1 = sub_1D2871988();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22992F0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D26421EC();

  return sub_1D2870F68();
}

__n128 sub_1D2299350(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D229935C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22993C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229940C()
{
  v1 = sub_1D2872438();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2299548()
{

  return swift_deallocObject();
}

uint64_t sub_1D22995AC()
{

  return swift_deallocObject();
}

double sub_1D2299618@<D0>(_OWORD *a1@<X8>)
{
  sub_1D271FAAC();
  sub_1D28749B8();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D229967C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1D2299738(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2299880()
{
  v1 = type metadata accessor for DetailView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  sub_1D2273818(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D2299AC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2299ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28754E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D2299B60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2299BB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D2299BF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2299C3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23D08F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2299CF8@<X0>(_BYTE *a1@<X8>)
{
  sub_1D27359C0();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2299D94()
{

  sub_1D22EE66C(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D2299DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E11D0);
  sub_1D27357E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2299E68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D2299FA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D229A124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D229A1A4()
{
  v1 = type metadata accessor for DescriptionFieldWithSuggestions();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874438();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1D229A374(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D229A430(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229A4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D229A568()
{

  return swift_deallocObject();
}

uint64_t sub_1D229A5BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_1D2871818();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + v2 + *(v3 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_1D229A724()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229A774(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2874288();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1D229A820(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2874288();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229A8E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229A930@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1D389DFD0]();
  *a1 = result;
  return result;
}

uint64_t sub_1D229AA7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229AAF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229AB3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D229ABF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229ACEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D229AD38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229AD70()
{

  return swift_deallocObject();
}

uint64_t sub_1D229ADC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D229ADFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1D2746764(v3);
}

uint64_t sub_1D229AE44()
{

  return swift_deallocObject();
}

uint64_t sub_1D229AE88()
{

  return swift_deallocObject();
}

uint64_t sub_1D229AEC8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D229AF9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229B0A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B0F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229B154()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229B194()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B1E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 > 1)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D229B3C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1D229B5D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B644()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17A0);
  sub_1D275BD1C();
  sub_1D2403664();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D229B6CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA400);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D229B6FC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1880);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D229B72C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229B764()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229B79C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B7DC()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229B814()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B854()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229B894()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229B8DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B920()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B960()
{

  return swift_deallocObject();
}

uint64_t sub_1D229B998()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229B9E0()
{
  v1 = sub_1D2871988();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_1D229BAC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D229BB0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229BB4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229BB84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229BBCC()
{

  return swift_deallocObject();
}

uint64_t sub_1D229BC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229BD04(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2871988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D229BDB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2871988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229BE54()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229BE8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229BECC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1D229BF88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229C050()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229C088()
{

  return swift_deallocObject();
}

uint64_t sub_1D229C0F4()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229C230()
{

  return swift_deallocObject();
}

uint64_t sub_1D229C278()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229C344()
{

  return swift_deallocObject();
}

uint64_t sub_1D229C384()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229C3DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D229C424()
{

  return swift_deallocObject();
}

uint64_t sub_1D229C468(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D229C524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229C5D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A50);
  sub_1D2878F18();
  swift_getTupleTypeMetadata2();
  sub_1D2877A58();
  swift_getWitnessTable();
  sub_1D28774C8();
  sub_1D2874F68();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_1D229C704@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

id sub_1D229C754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_1D229C7A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appleConnectTokenProvider];
  *a2 = result;
  return result;
}

id sub_1D229C7F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLoadingRecipe];
  *a2 = result;
  return result;
}

id sub_1D229C83C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipe];
  *a2 = result;
  return result;
}

id sub_1D229C8A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

id sub_1D229C8F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sourceImage];
  *a2 = result;
  return result;
}

id sub_1D229C948@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLoadingRecipe];
  *a2 = result;
  return result;
}

id sub_1D229C990@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipe];
  *a2 = result;
  return result;
}

id sub_1D229C9E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 sourceImageIsSketch];
  *a2 = result;
  return result;
}

id sub_1D229CA30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_1D229CA80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appleConnectTokenProvider];
  *a2 = result;
  return result;
}

uint64_t sub_1D229CAD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229CB1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1D229CB90@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAnimating];
  *a2 = result;
  return result;
}

id sub_1D229CBD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isShowingError];
  *a2 = result;
  return result;
}

id sub_1D229CC20@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rampSize];
  *a2 = v4;
  return result;
}

id sub_1D229CC68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transitionToImageDuration];
  *a2 = v4;
  return result;
}

id sub_1D229CCB0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 progress];
  *a2 = v4;
  return result;
}

uint64_t sub_1D229CD40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D229CDAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAnimating];
  *a2 = result;
  return result;
}

uint64_t sub_1D229CE04()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229CE3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229CE74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D229CED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D229CF84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229D044(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IdentifiedEntity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D229D0F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IdentifiedEntity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229D194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D229D200(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2871818();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D229D284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2871798();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D229D330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2871798();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229D78C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229D7C4()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v6 = (v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  v7 = *(v5 + 28);
  v8 = sub_1D2871318();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1D229D99C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v10 = *(*(v1 - 8) + 64);
  v11 = sub_1D2871818();
  v4 = *(v11 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = *(v1 + 28);
  v7 = sub_1D2871318();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  (*(v4 + 8))(v0 + ((((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v11);

  return swift_deallocObject();
}

uint64_t sub_1D229DC5C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229DCD8()
{

  return swift_deallocObject();
}

uint64_t sub_1D229DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bubble(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 7)
    {
      return v12 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D229DDCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bubble(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1D229DF00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1D229E124(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 8) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D229E370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D229E3E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D229E470()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08);
  sub_1D27B95CC();
  sub_1D27B9820(&qword_1ED8A1E10, sub_1D245C9B0);
  swift_getOpaqueTypeConformance2();
  sub_1D27B9918();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D229E608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D229E674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D229E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1EE0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D229E7EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1600);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1EE0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D229E900(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for PromptText();
  v6 = sub_1D2877538();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D2878048();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[8];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D229EA90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for PromptText();
  v8 = sub_1D2877538();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D2878048();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[12];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D229EC20()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D229EC58()
{

  return swift_deallocObject();
}

uint64_t sub_1D229ECA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D229ECE8()
{
  v1 = *(v0 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08);
  v2 = *(v15 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (type metadata accessor for AmbiguityData() - 8);
  v6 = (v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v16 = *(*v5 + 64);
  v7 = type metadata accessor for PromptAmbiguity.Candidate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);

  v10 = v0 + v3;
  v11 = v6;
  (*(v2 + 8))(v10, v15);

  v12 = v0 + v6 + v5[9];
  if (!(*(v8 + 48))(v12, 1, v7))
  {

    (*(*(v1 - 8) + 8))(v12 + *(v7 + 32), v1);
  }

  v13 = v0 + ((v11 + v16 + v9) & ~v9);

  (*(*(v1 - 8) + 8))(v13 + *(v7 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1D229EF84()
{

  return swift_deallocObject();
}

uint64_t sub_1D229EFC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D229F008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D229F0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D229F1A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D229F2D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229F308()
{
  v1 = sub_1D2873D98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D229F448()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229F480()
{

  return swift_deallocObject();
}

uint64_t sub_1D229F5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D263B83C();
  *a1 = result & 1;
  return result;
}

__n128 sub_1D229F620(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D229F62C()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for AsyncMultipleValuesFetcher.State();
  return sub_1D2872738();
}

uint64_t sub_1D229F688()
{

  return swift_deallocObject();
}

uint64_t sub_1D229F6D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D229F714()
{

  return swift_deallocObject();
}

uint64_t sub_1D229F7CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229F840@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D27DBB10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D229F86C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D27DBC8C(v1, v2);
}

uint64_t sub_1D229F8E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229F96C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229F9A4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D229F9EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D229FA24()
{

  return swift_deallocObject();
}

uint64_t sub_1D229FA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1D229FAA4()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for AsyncValueFetcher.State();
  return sub_1D2872738();
}

uint64_t sub_1D229FAF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2510);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[7];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[13];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[14];

  return v19(v20, a2, v18);
}

uint64_t sub_1D229FCEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2510);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D229FF1C()
{
  v1 = sub_1D28719B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D229FFE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CE580();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D22A0034()
{
  v1 = type metadata accessor for OBKCarouselView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for CarouselFace() - 8) + 80);
  v5 = v2 + v3 + v4;
  swift_unknownObjectRelease();
  v6 = v0 + v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25E0);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25E8);

  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  sub_1D22EE66C(*(v6 + v1[8]), *(v6 + v1[8] + 8));

  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D2874438();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v5 & ~v4;
  v13 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D2875E18();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v0 + v12;

  if (*(v0 + v12 + 32))
  {
  }

  v17 = v16 + *(type metadata accessor for PhotosPersonAsset() + 20);

  v18 = (v17 + *(type metadata accessor for PhotosPersonImage() + 24));

  v19 = type metadata accessor for PlaygroundImage();
  v20 = v19[8];
  v21 = sub_1D2871818();
  (*(*(v21 - 8) + 8))(v18 + v20, v21);
  v22 = (v18 + v19[10]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_1D22D6D60(*v22, v23);
  }

  v24 = v19[11];
  v25 = sub_1D2873AA8();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v18 + v24, 1, v25))
  {
    (*(v26 + 8))(v18 + v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1D22A0548()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A0584()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E27C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E27C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC628);
  sub_1D22BB9D8(&qword_1ED89D438, &qword_1EC6E27C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A0734()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E27D8);
  sub_1D22BB9D8(&qword_1EC6E27F8, &qword_1EC6E27D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A081C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A086C()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A08A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D22A08F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D27F8D80(v1, v2);
}

uint64_t sub_1D22A0940()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22A0978()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A09B8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A0A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D22A0A9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A0B0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22A0B44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A0C08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1D233EA00(*a1, v2, v3);
  return sub_1D2801194(v1, v2, v3);
}

uint64_t sub_1D22A0C90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D22A0CE0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D22A0EF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A0F58()
{
  v1 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  sub_1D22D6D60(*(v0 + 40), *(v0 + 48));
  v3 = v0 + v2;
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v3 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_1D22A10B0()
{
  v1 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1D2871818();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_1D22A11C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A11F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A1294()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A1310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
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

uint64_t sub_1D22A13DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
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

uint64_t sub_1D22A14A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2AF0);
  type metadata accessor for ComposingAnimationCoordinator();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B00);
  type metadata accessor for HomeAnimationCoordinator();
  sub_1D281B3D4();
  sub_1D281B544(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  swift_getOpaqueTypeConformance2();
  sub_1D281B544(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A1614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D22A1754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D22A18C0@<X0>(_BYTE *a1@<X8>)
{
  sub_1D26D8AA4();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D22A1B10()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0) - 8);
  v6 = (v4 + v3 + *(*v5 + 80) + 1) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6 + v5[10];
  v8 = type metadata accessor for ImageGenerationPerson();
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
    if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
    {
      v10 = *(v9 + 20);
      v11 = type metadata accessor for ImageGenerationPerson.SkinTone();
      if (!(*(*(v11 - 8) + 48))(v7 + v10, 1, v11))
      {
        v12 = sub_1D28737A8();
        (*(*(v12 - 8) + 8))(v7 + v10, v12);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D22A1EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A1F38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1D22A2168(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 8) = a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[10];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D22A2388(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
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

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1D22A2530(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D22A2828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D22A28F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1D22A29B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D22A2A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D22A2AB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  sub_1D28308E0();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A2B80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3280);
  sub_1D28318AC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A2CBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E32F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E32F0);
  sub_1D2831BB8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A2E58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D70);
  sub_1D282D71C();
  sub_1D2876538();
  sub_1D28750E8();
  swift_getWitnessTable();
  sub_1D2833A20(&qword_1ED89D748, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3348);
  sub_1D2874F68();
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1EC6E3358, &qword_1EC6E3348);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D22A3044()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30B8);
  sub_1D282FA64();
  sub_1D2876538();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30A8);
  sub_1D2874F68();
  sub_1D2875E08();
  swift_getWitnessTable();
  sub_1D22BB9D8(&qword_1ED89D2C8, &qword_1EC6E30A8);
  swift_getWitnessTable();
  sub_1D2833A20(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90B0);
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0);
  return swift_getWitnessTable();
}

uint64_t sub_1D22A3264()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A32AC()
{
  v1 = sub_1D2873C28();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1D2873728();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D22A3410()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22A3448()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A3480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D22A3534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22A35E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D22A3660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble.BubbleType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D22A36CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble.BubbleType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D22A3740(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D22A37FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22A38BC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for ImageGenerationPerson.SkinTone();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D22A396C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for ImageGenerationPerson.SkinTone();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22A3A0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A3A4C@<X0>(void *a1@<X8>)
{
  sub_1D284F7F4();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D22A3AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3538);
  sub_1D2874F68();
  sub_1D22BB9D8(qword_1EC6E3540, &qword_1EC6E3538);
  return swift_getWitnessTable();
}

uint64_t sub_1D22A3B4C()
{
  type metadata accessor for ExtensionStateTrackingContentView();

  return swift_getWitnessTable();
}

uint64_t sub_1D22A3B9C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ExtensionStateTrackingContentView() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_1D22A3C8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3538);
  sub_1D2874F68();
  sub_1D2874F68();
  sub_1D22BB9D8(qword_1EC6E3540, &qword_1EC6E3538);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D22A3D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A3E08()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D22A3E44()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22A3F3C()
{
  v1 = *(v0 + 3);
  v2 = *(*(v0 + 2) - 8);
  v3 = *(v0 + 4);
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v2 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v3 - 8);
  v8 = (v6 + *(v5 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(&v0[v4]);
  (*(v5 + 8))(&v0[v6], v1);
  (*(v7 + 8))(&v0[v8], v3);

  return swift_deallocObject();
}

uint64_t sub_1D22A40B8()
{
  v1 = *(v0 + 3);
  v11 = *(v0 + 5);
  v12 = *(v0 + 4);
  v2 = *(*(v0 + 2) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v12 - 8);
  v7 = (v5 + *(v4 + 64) + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v11 - 8);
  v9 = (v7 + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  (*(v2 + 8))(&v0[v3]);
  (*(v4 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v7], v12);
  (*(v8 + 8))(&v0[v9], v11);

  return swift_deallocObject();
}

uint64_t sub_1D22A42B0()
{
  v14 = *(v0 + 4);
  v15 = *(v0 + 3);
  v12 = *(v0 + 6);
  v13 = *(v0 + 5);
  v1 = *(*(v0 + 2) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = *(v15 - 8);
  v4 = (v2 + *(v1 + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v14 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v13 - 8);
  v8 = (v6 + *(v5 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v12 - 8);
  v10 = (v8 + *(v7 + 64) + *(v9 + 80)) & ~*(v9 + 80);
  (*(v1 + 8))(&v0[v2]);
  (*(v3 + 8))(&v0[v4], v15);
  (*(v5 + 8))(&v0[v6], v14);
  (*(v7 + 8))(&v0[v8], v13);
  (*(v9 + 8))(&v0[v10], v12);

  return swift_deallocObject();
}

uint64_t sub_1D22A4524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_1D2870F78();
}

uint64_t sub_1D22A45D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return sub_1D2870F78();
}

uint64_t sub_1D22A4634()
{
  type metadata accessor for GPSceneBuilder._GPAppExtensionScene();

  return swift_getWitnessTable();
}

uint64_t sub_1D22A46C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A4744()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22A4794()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A47FC()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v1[8];
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = (v0 + v2 + v1[10]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_1D22D6D60(*v6, v7);
  }

  v8 = v1[11];
  v9 = sub_1D2873AA8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1D22A49D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A4A1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22A4A74()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A4AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3960);
  sub_1D2875B08();
  sub_1D285EB28();
  return swift_getWitnessTable();
}

uint64_t sub_1D22A4BF8()
{
  v6 = *(v0 + 24);
  v1 = *(type metadata accessor for VariantSelectorView() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1D2878F18();
  v3 = *(sub_1D2877538() + 32);
  v4 = *(v6 - 8);
  if (!(*(v4 + 48))(v2 + v3, 1, v6))
  {
    (*(v4 + 8))(v2 + v3, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D22A4D90()
{
  v8 = *(v0 + 24);
  v1 = *(type metadata accessor for VariantSelectorView() - 8);
  v2 = *(v1 + 64);
  v3 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v4 = *(v8 - 8);
  v5 = *(v4 + 80);

  sub_1D2878F18();
  v6 = *(sub_1D2877538() + 32);
  if (!(*(v4 + 48))(v0 + v3 + v6, 1, v8))
  {
    (*(v4 + 8))(v0 + v3 + v6, v8);
  }

  (*(v4 + 8))(v0 + ((v3 + v2 + v5) & ~v5), v8);
  return swift_deallocObject();
}

uint64_t sub_1D22A4F7C()
{
  sub_1D28784C8();
  swift_getAssociatedTypeWitness();
  sub_1D28773A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6F8);
  sub_1D2874F68();
  sub_1D28750E8();
  swift_getWitnessTable();
  sub_1D2861774();
  swift_getWitnessTable();
  sub_1D28617D8(&qword_1ED89D748, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  sub_1D2874F68();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1D2877598();
  swift_getOpaqueTypeConformance2();
  sub_1D28617D8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D28773C8();
  return swift_getWitnessTable();
}

uint64_t sub_1D22A5230(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlaygroundImage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D22A52DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlaygroundImage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22A5390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E39A8);
  sub_1D28629B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22A53F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PhotosPersonImage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D22A54A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PhotosPersonImage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22A5544()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D22A55A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A55D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D22A5618()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D22A576C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1D22A5828@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D22A585C@<X0>(void *a1@<X8>)
{
  result = sub_1D28749D8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D22A58B8(uint64_t result)
{
  if (result)
  {
    return sub_1D2870F78();
  }

  return result;
}

uint64_t __vfx_script_GPnew137NoLensblur_graph_127()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v58 = *(arguments_buffer + 32);
  v57 = *(arguments_buffer + 48);
  v56 = *(arguments_buffer + 56);
  v55 = *(arguments_buffer + 72);
  v2 = *(arguments_buffer + 88);
  v53 = *(arguments_buffer + 96);
  v3 = *(arguments_buffer + 120);
  v50 = *(arguments_buffer + 144);
  v48 = *(arguments_buffer + 160);
  v4 = *(arguments_buffer + 176);
  v5 = *(arguments_buffer + 192);
  v6 = *(arguments_buffer + 208);
  v7 = *(arguments_buffer + 224);
  v8 = *(arguments_buffer + 240);
  v9 = *(arguments_buffer + 248);
  v54 = **(arguments_buffer + 64);
  v51 = **(arguments_buffer + 104);
  v52 = **(arguments_buffer + 80);
  v10 = **(arguments_buffer + 112);
  v49 = **(arguments_buffer + 128);
  v47 = **(arguments_buffer + 136);
  v11 = **(arguments_buffer + 152);
  v12 = **(arguments_buffer + 168);
  v13 = **(arguments_buffer + 184);
  v14 = **(arguments_buffer + 200);
  v15 = **(arguments_buffer + 216);
  v16 = **(arguments_buffer + 232);
  v18 = __sincosf_stret(**(arguments_buffer + 8) + 1.5708);
  *&v17 = v18.__sinval;
  *(&v17 + 1) = -v18.__cosval;
  *v9 = v17;
  v20 = __sincosf_stret(v16 + 1.5708);
  *&v19 = v20.__sinval;
  *(&v19 + 1) = -v20.__cosval;
  *v8 = v19;
  v22 = __sincosf_stret(v15 + 1.5708);
  *&v21 = v22.__sinval;
  *(&v21 + 1) = -v22.__cosval;
  *v7 = v21;
  v24 = __sincosf_stret(v14 + 1.5708);
  *&v23 = v24.__sinval;
  *(&v23 + 1) = -v24.__cosval;
  *v6 = v23;
  v26 = __sincosf_stret(v13 + 1.5708);
  *&v25 = v26.__sinval;
  *(&v25 + 1) = -v26.__cosval;
  *v5 = v25;
  v28 = __sincosf_stret(v12 + 1.5708);
  *&v27 = v28.__sinval;
  *(&v27 + 1) = -v28.__cosval;
  *v4 = v27;
  v30 = __sincosf_stret(v11 + 1.5708);
  *&v29 = v30.__sinval;
  *(&v29 + 1) = -v30.__cosval;
  *v48 = v29;
  v32 = __sincosf_stret(v47 + 1.5708);
  *&v31 = v32.__sinval;
  *(&v31 + 1) = -v32.__cosval;
  *v50 = v31;
  vfx_script_clock_delta_time();
  v34 = v10 + ((*v3 - v10) * exp2f(-(v49 * v33)));
  if (v34 < 0.0000001)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 1.0;
  }

  *v3 = v34 * v35;
  vfx_script_clock_delta_time();
  v37 = *v53 + ((v36 + v36) * (v51 + ((0.0 - v51) * (1.0 - ((1.0 - *v2) * ((1.0 - *v2) * (1.0 - *v2)))))));
  if (v52 < 0.5)
  {
    v37 = 0.0;
  }

  *v53 = v37;
  vfx_script_clock_delta_time();
  v39 = fminf(*v2 + (v38 * 0.6), 1.0);
  if (v52 < 0.5)
  {
    v39 = 0.0;
  }

  *v2 = v39;
  vfx_script_clock_time();
  v41 = v40;
  if (v54)
  {
    v41 = *v1;
  }

  *v1 = v41;
  vfx_script_curve_create();
  vfx_script_clock_time();
  vfx_script_curve_evaluate();
  *v55 = v42 * v54;
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  *v56 = v43;
  vfx_script_texture_sample1d();
  *v57 = v44;
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  *v58 = v45;
  return vfx_script_curve_destroy();
}

void __vfx_script_GPnew137NoLensblur_graph_128()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v50 = *(arguments_buffer + 16);
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  v3 = *(arguments_buffer + 56);
  v4 = *(arguments_buffer + 64);
  v5 = *(arguments_buffer + 120);
  v6 = **(arguments_buffer + 24);
  v7 = **(arguments_buffer + 32);
  v8 = *(arguments_buffer + 144);
  v9 = **(arguments_buffer + 72);
  v45 = **(arguments_buffer + 80);
  v10 = **(arguments_buffer + 88);
  v48 = **(arguments_buffer + 96);
  v49 = **(arguments_buffer + 8);
  v47 = **(arguments_buffer + 112);
  v11 = **(arguments_buffer + 128);
  v46 = **(arguments_buffer + 136);
  v12 = **(arguments_buffer + 152);
  v13 = *(arguments_buffer + 208);
  v14 = **(arguments_buffer + 160);
  v15 = *(arguments_buffer + 216);
  v41 = **(arguments_buffer + 176);
  v42 = **(arguments_buffer + 168);
  v16 = *(arguments_buffer + 232);
  v17 = *(arguments_buffer + 240);
  v43 = **(arguments_buffer + 200);
  v44 = **(arguments_buffer + 192);
  v18 = *(arguments_buffer + 248);
  v19 = *(arguments_buffer + 256);
  v20 = **(arguments_buffer + 104);
  **(arguments_buffer + 264) = vmul_f32(v11, **(arguments_buffer + 224));
  *v19 = xmmword_1D287C990;
  if (v20)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22 = vdupq_n_s32(v21);
  *v18 = vbslq_s8(v22, xmmword_1D287C9B0, xmmword_1D287C9A0);
  *v17 = vbslq_s8(v22, xmmword_1D287C9D0, xmmword_1D287C9C0);
  v23 = -(v6 - ((v6 + v6) * v7));
  *v16 = v23 * -0.5;
  v24 = 1.5;
  if (!v20)
  {
    v24 = 1.4;
  }

  v40 = v24;
  if (v20)
  {
    v25 = 1.3;
  }

  else
  {
    v25 = 1.1;
  }

  vfx_script_clock_time();
  *&v26 = v26;
  v27 = fminf(fmaxf((*&v26 + -0.7) / 1.3, 0.0), 1.0);
  if (v27 >= 0.5)
  {
    v28 = (((v27 * -2.0) + 4.0) * v27) + -1.0;
  }

  else
  {
    v28 = (v27 * v27) + (v27 * v27);
  }

  v29 = (v9 * v28) + ((v45 - (v9 * v28)) * v10);
  if (v29 < 0.01)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  *v15 = v29 * v30;
  vfx_script_texture_sample1d();
  *v13 = (((v43 * 5.0) + 0.0) + (v44 + (v12 + (((v14 + ((v42 - v14) * v41)) - v12) * v31)))) * 0.01;
  v32 = vmla_n_f32(v11, vsub_f32(v46, v11), powf(v10, 1.5));
  __asm { FMOV            V0.2S, #1.0 }

  *v8 = vmul_f32(v32, COERCE_FLOAT32X2_T(-_D0));
  *v5 = v40 * ((v48 * v25) + (((v47 * 2.5) - (v48 * v25)) * powf(v10, 0.15)));
  *v4 = xmmword_1D287C9E0;
  *v3 = xmmword_1D287C9F0;
  __asm { FMOV            V0.4S, #1.0 }

  *v2 = _Q0;
  *v1 = v23 * 0.5;
  v39 = 1.0 / v49;
  if (v49 == 0.0)
  {
    v39 = 0.0;
  }

  *v50 = v39;
}

float __vfx_script_GPnew137NoLensblur_graph_129()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v117 = *(arguments_buffer + 56);
  v118 = *(arguments_buffer + 40);
  v115 = *(arguments_buffer + 96);
  v116 = *(arguments_buffer + 72);
  v113 = *(arguments_buffer + 128);
  v114 = *(arguments_buffer + 112);
  v111 = *(arguments_buffer + 152);
  v112 = *(arguments_buffer + 136);
  v110 = *(arguments_buffer + 168);
  v108 = *(arguments_buffer + 200);
  v109 = *(arguments_buffer + 184);
  v107 = *(arguments_buffer + 216);
  v106 = *(arguments_buffer + 240);
  v1 = **(arguments_buffer + 16);
  v100 = *(arguments_buffer + 248);
  v97 = *(arguments_buffer + 272);
  v98 = *(arguments_buffer + 264);
  v104 = **(arguments_buffer + 48);
  v105 = **(arguments_buffer + 32);
  v2 = **(arguments_buffer + 64);
  v95 = *(arguments_buffer + 288);
  v94 = **(arguments_buffer + 88);
  v102 = **(arguments_buffer + 104);
  v103 = **(arguments_buffer + 80);
  v101 = **(arguments_buffer + 120);
  v3 = *(arguments_buffer + 320);
  v90 = **(arguments_buffer + 144);
  v99 = **(arguments_buffer + 160);
  v4 = *(arguments_buffer + 328);
  v5 = **(arguments_buffer + 176);
  v6 = **(arguments_buffer + 192);
  v7 = *(arguments_buffer + 344);
  v8 = *(arguments_buffer + 352);
  v96 = **(arguments_buffer + 208);
  LODWORD(v9) = **(arguments_buffer + 224);
  v87 = v9;
  v10 = *(arguments_buffer + 368);
  v93 = **(arguments_buffer + 256);
  v11.i32[1] = v93.i32[1];
  v92 = **(arguments_buffer + 296);
  v91 = **(arguments_buffer + 336);
  v12 = *(arguments_buffer + 448);
  v88 = **(arguments_buffer + 360);
  v89 = **(arguments_buffer + 312);
  v11.i32[0] = **(arguments_buffer + 392);
  v13.i64[0] = **(arguments_buffer + 400);
  v14 = **(arguments_buffer + 440);
  v15 = **(arguments_buffer + 456);
  v16 = *(arguments_buffer + 472);
  v17 = vsub_f32(**(arguments_buffer + 8), v1);
  v18 = vmul_f32(v17, v17);
  v19 = vdup_lane_s32(vadd_f32(v18, vdup_lane_s32(v18, 1)), 0);
  v20 = vrsqrte_f32(v19);
  v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
  v22 = vbsl_s8(vceqz_f32(v19), v17, vmul_f32(v17, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21)))));
  v23 = vsub_f32(**(arguments_buffer + 552), v1);
  v24 = vmul_f32(v23, v23);
  v25 = vdup_lane_s32(vadd_f32(v24, vdup_lane_s32(v24, 1)), 0);
  v26 = vrsqrte_f32(v25);
  v27 = vmul_f32(v26, vrsqrts_f32(v25, vmul_f32(v26, v26)));
  v28 = vsub_f32(**(arguments_buffer + 528), v1);
  v29 = vmul_f32(v28, v28);
  v30 = vbsl_s8(vceqz_f32(v25), v23, vmul_f32(v23, vmul_f32(v27, vrsqrts_f32(v25, vmul_f32(v27, v27)))));
  v31 = vdup_lane_s32(vadd_f32(v29, vdup_lane_s32(v29, 1)), 0);
  v32 = vrsqrte_f32(v31);
  v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
  v34 = vbsl_s8(vceqz_f32(v31), v28, vmul_f32(v28, vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33)))));
  v35 = vsub_f32(**(arguments_buffer + 504), v1);
  v36 = vmul_f32(v35, v35);
  v37 = **(arguments_buffer + 464);
  v38 = vdup_lane_s32(vadd_f32(v36, vdup_lane_s32(v36, 1)), 0);
  v39 = vrsqrte_f32(v38);
  v40 = vmul_f32(v39, vrsqrts_f32(v38, vmul_f32(v39, v39)));
  v41 = **(arguments_buffer + 480);
  v42 = vbsl_s8(vceqz_f32(v38), v35, vmul_f32(v35, vmul_f32(v40, vrsqrts_f32(v38, vmul_f32(v40, v40)))));
  v43 = vdup_n_s32(0x3F4CCCCDu);
  *&v44 = vmul_f32(v22, v43);
  *&v45 = 1.0 - **(arguments_buffer + 24);
  *(&v44 + 2) = *&v45;
  v46 = *(arguments_buffer + 376);
  v47 = *(arguments_buffer + 384);
  HIDWORD(v9) = **(arguments_buffer + 232);
  v86 = v9;
  v48 = *(arguments_buffer + 408);
  v49 = *(arguments_buffer + 416);
  v50 = *(arguments_buffer + 432);
  v51 = *(arguments_buffer + 496);
  v52 = *(arguments_buffer + 520);
  v53 = *(arguments_buffer + 544);
  v54 = *(arguments_buffer + 568);
  v55 = **(arguments_buffer + 280);
  v56 = **(arguments_buffer + 304);
  v40.i32[0] = **(arguments_buffer + 488);
  LODWORD(v9) = **(arguments_buffer + 512);
  v57 = **(arguments_buffer + 536);
  v58 = **(arguments_buffer + 560);
  LOBYTE(v45) = **(arguments_buffer + 424);
  **(arguments_buffer + 576) = v44;
  *&v44 = vmul_f32(v30, v43);
  *(&v44 + 2) = 1.0 - v58;
  *v54 = v44;
  *&v44 = vmul_f32(v34, v43);
  *(&v44 + 2) = 1.0 - v57;
  *v53 = v44;
  *&v44 = vmul_f32(v42, v43);
  *(&v44 + 2) = 1.0 - *&v9;
  v59 = vsub_f32(v41, v1);
  v60 = vmul_f32(v59, v59);
  *v52 = v44;
  *&v44 = vdup_lane_s32(vadd_f32(v60, vdup_lane_s32(v60, 1)), 0);
  v61 = vrsqrte_f32(*&v44);
  v62 = vmul_f32(v61, vrsqrts_f32(*&v44, vmul_f32(v61, v61)));
  *&v44 = vmul_f32(vbsl_s8(vceqz_f32(*&v44), v59, vmul_f32(v59, vmul_f32(v62, vrsqrts_f32(*&v44, vmul_f32(v62, v62))))), v43);
  *(&v44 + 2) = 1.0 - v40.f32[0];
  *v51 = v44;
  v63 = vsub_f32(v15, v1);
  *&v44 = vmul_f32(v63, v63);
  *&v44 = vdup_lane_s32(vadd_f32(*&v44, vdup_lane_s32(*&v44, 1)), 0);
  v64 = vrsqrte_f32(*&v44);
  v65 = vmul_f32(v64, vrsqrts_f32(*&v44, vmul_f32(v64, v64)));
  *&v66 = vmul_f32(vbsl_s8(vceqz_f32(*&v44), v63, vmul_f32(v63, vmul_f32(v65, vrsqrts_f32(*&v44, vmul_f32(v65, v65))))), v43);
  *(&v66 + 2) = 1.0 - v37;
  *v16 = v66;
  *v12 = v14;
  *v50 = v45;
  *v49 = v11.i32[0];
  *(v48 + 8) = v13.i32[1];
  *v48 = vzip1q_s32(v11, v13).u64[0];
  if (v5 == 0.0)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = 1.0 / v5;
  }

  v85 = v6;
  v68 = fmaxf(v6.f32[0], v6.f32[1]);
  v69 = v68 == 0.0;
  v70 = 1.0 / v68;
  if (v69)
  {
    v71 = 0.0;
  }

  else
  {
    v71 = v70;
  }

  *v47 = v67 + ((v71 - v67) * powf(v2, 0.7));
  *v46 = v90;
  *v10 = v88;
  if (v56)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.0;
  }

  vfx_script_clock_time();
  *&v73 = v73;
  v74 = *&v73 - v89;
  v75 = 0.1;
  if (v55)
  {
    v75 = 0.3;
  }

  v76 = fminf(fmaxf(v74 / v75, 0.0), 1.0);
  if (!v55)
  {
    v76 = 1.0;
  }

  *&v77 = v72 * v76;
  *v8 = v77;
  *v7 = v91;
  *v4 = v92;
  *v3 = __PAIR64__(v77, v92);
  v78 = 1.1;
  if (!v55)
  {
    v78 = 0.0;
  }

  *v95 = v78;
  v79 = fminf(fmaxf(v94 / 0.7, 0.0), 1.0);
  v80 = (v79 * v79) * ((v79 * -2.0) + 3.0);
  *v97 = v80;
  *v98 = vmul_f32(vmla_n_f32(v93, vsub_f32(v1, v93), v94), COERCE_FLOAT32X2_T(--0.0000305175998));
  *v100 = v87;
  *v106 = v86;
  *v107 = v96;
  *v108 = vmul_f32(v85, 0x3F0000003F000000);
  v81 = ((v5 * 0.75) + ((v5 - (v5 * 0.75)) * v79)) * 11.0;
  *v109 = v81 + ((10.0 - v81) * v2);
  v82 = fminf(fmaxf(v80, 0.0), 1.0);
  v83 = fabsf(sqrtf(v99));
  if (v99 == -INFINITY)
  {
    v83 = INFINITY;
  }

  *v110 = v82 * v83;
  *v111 = v90;
  *v112 = v94;
  *v113 = v101;
  *v114 = 1.0 - v102;
  *v115 = powf(v103 * v94, 2.2);
  *v116 = v2;
  *v117 = v104;
  result = 1.0 - v105;
  *v118 = 1.0 - v105;
  return result;
}

void __vfx_script_GPnew137NoLensblur_graph_130()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 48);
  v4 = *(arguments_buffer + 64);
  v5 = *(arguments_buffer + 80);
  v6 = *(arguments_buffer + 96);
  v7 = *(arguments_buffer + 112);
  v8 = *(arguments_buffer + 128);
  v9 = *(arguments_buffer + 144);
  v10 = **(arguments_buffer + 8);
  v11 = **(arguments_buffer + 24);
  v12 = **(arguments_buffer + 40);
  v13 = **(arguments_buffer + 88);
  v14 = **(arguments_buffer + 104);
  v15 = **(arguments_buffer + 120);
  v16 = **(arguments_buffer + 136);
  LOBYTE(v17) = **(arguments_buffer + 72);
  LOBYTE(v18) = **(arguments_buffer + 56);
  **(arguments_buffer + 152) = vmul_f32(**arguments_buffer, 0x3F0000003F000000);
  *v9 = v16 + v16;
  *v8 = v15;
  *v7 = v14;
  *v6 = vmul_f32(v13, 0x3F0000003F000000);
  *v5 = v17;
  *v4 = v18;
  *v3 = ((1.0 - v10) * (1.0 - v10)) * ((((fminf(fmaxf(v12, 0.0), 1.0) * 0.3) + 0.85) * 0.132) * 0.6);
  *v2 = v11;
  *v1 = powf(v10, 0.7);
}

uint64_t __vfx_script_GPnew137NoLensblur_graph_131()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 16);
  v2 = **result;
  v3 = **(result + 8) ^ 1;
  **(result + 24) = v2 > 0.001;
  *v1 = (v2 <= 0.999) & v3;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_134()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_137()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_140()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_141()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_144()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_148()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_151()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_GPnew137NoLensblur_graph_153()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 80);
  v2 = **(arguments_buffer + 24);
  v3 = **(arguments_buffer + 56);
  v31 = **(arguments_buffer + 48);
  v32 = **(arguments_buffer + 64);
  v33 = **(arguments_buffer + 72);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v29 = v4;
  *v4.f32 = vdup_n_s32(0x3F266666u);
  v5 = vrsqrte_f32(*v4.f32);
  v6 = vmul_f32(v5, vrsqrts_f32(*v4.f32, vmul_f32(v5, v5)));
  v7 = vmul_f32(v6, vrsqrts_f32(*v4.f32, vmul_f32(v6, v6)));
  v8 = vmul_f32(v2, v2);
  v9 = vdup_lane_s32(vadd_f32(v8, vdup_lane_s32(v8, 1)), 0);
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vbsl_s8(vceqz_f32(v9), v2, vmul_f32(v2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11)))));
  v13 = vmul_f32(vmul_f32(v7, 0x3F3333333ECCCCCDLL), v12);
  v34 = fminf(fmaxf(vaddv_f32(vmul_f32(vmul_f32(v7, 0x3ECCCCCDBF333333), v12)), 0.0), 1.0);
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v15 = vmul_f32(vmul_f32(v7, 0xBF3333333ECCCCCDLL), v12);
  __asm { FMOV            V2.2S, #1.0 }

  v28 = vminnm_f32(vmaxnm_f32(vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15)), 0), _D2);
  v30 = vaddq_f32(vmulq_n_f32(v29, v28.f32[0]), vmulq_n_f32(v14, v34));
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v21.i32[1] = v28.i32[1];
  *v21.i32 = fmaxf(v34 + vaddv_f32(v28), 0.001);
  v23 = vdupq_lane_s32(v21, 0);
  v35 = vbslq_s8(vceqzq_f32(v23), 0, vdivq_f32(vaddq_f32(vmulq_lane_f32(v22, v28, 1), v30), v23));
  vfx_script_clock_time();
  vfx_script_texture_sample3d();
  v25 = vmulq_n_f32(v35, v31 * (fminf(fmaxf((v24 + 1.0) * 0.5, 0.0), 1.0) + 1.0));
  v26 = 8.0;
  if (v3)
  {
    v26 = 4.0;
  }

  result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v25, v26), 1.0 - v32), v33);
  *v1 = result;
  return result;
}

double __vfx_script_GPnew137NoLensblur_graph_156()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  *&v1 = vadd_f32(**arguments_buffer, **arguments_buffer);
  **(arguments_buffer + 8) = v1;
  return *&v1;
}

double __vfx_script_GPnew137NoLensblur_graph_157()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  *&v1 = vadd_f32(**arguments_buffer, **arguments_buffer);
  **(arguments_buffer + 8) = v1;
  return *&v1;
}

float __vfx_script_GPnew137NoLensblur_graph_158()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  result = **arguments_buffer;
  *arguments_buffer[1] = result;
  return result;
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_133()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_135()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_139()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_143()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_146()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_147()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_150()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

uint64_t __vfx_script_GPnew137NoLensblur_particleInit_154()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_132()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_136()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_138()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_142()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_145()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_149()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_152()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void __vfx_script_GPnew137NoLensblur_particleUpdate_155()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_GPnew137NoLensblur_graph_127_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke()
{
  _vfx_objc_sel_setValue_forKeyPath_ = sel_registerName("setValue:forKeyPath:");
  _vfx_objc_sel_valueForKeyPath_ = sel_registerName("valueForKeyPath:");
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_VFXTransaction = objc_lookUpClass("VFXTransaction");
  _vfx_objc_sel_begin = sel_registerName("begin");
  _vfx_objc_sel_setAnimationDurationAsFloat_ = sel_registerName("setAnimationDurationAsFloat:");
  _vfx_objc_sel_commit = sel_registerName("commit");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSValue = objc_lookUpClass("NSValue");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithFloat_ = sel_registerName("numberWithFloat:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimationAsset_forKey_ = sel_registerName("addAnimationAsset:forKey:");
  _vfx_objc_sel_removeAllAnimations = sel_registerName("removeAllAnimations");
  _vfx_objc_sel_removeAnimationForKey_ = sel_registerName("removeAnimationForKey:");
  _vfx_objc_sel_script_rootNode = sel_registerName("script_rootNode");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_childNodes = sel_registerName("childNodes");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_convertPosition_toNode_ = sel_registerName("convertPosition:toNode:");
  _vfx_objc_sel_convertVector_toNode_ = sel_registerName("convertVector:toNode:");
  _vfx_objc_sel_convertTransform_toNode_ = sel_registerName("convertTransform:toNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_projectPoint_ = sel_registerName("projectPoint:");
  _vfx_objc_sel_unprojectPoint_ = sel_registerName("unprojectPoint:");
  _vfx_objc_sel_script_hitTest_options_ = sel_registerName("script_hitTest:options:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_setState_ = sel_registerName("setState:");
  _vfx_objc_sel_setStateNamed_ = sel_registerName("setStateNamed:");
  _vfx_objc_sel__contentsScaleFactor = sel_registerName("_contentsScaleFactor");
  _vfx_objc_sel__screenSize = sel_registerName("_screenSize");
  _vfx_objc_sel_physicsBody = sel_registerName("physicsBody");
  _vfx_objc_sel_script_instantiate_ = sel_registerName("script_instantiate:");
  _vfx_objc_sel_geometryIndex = sel_registerName("geometryIndex");
  _vfx_objc_sel_faceIndex = sel_registerName("faceIndex");
  _vfx_objc_sel_localCoordinates = sel_registerName("localCoordinates");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  _vfx_objc_sel_localNormal = sel_registerName("localNormal");
  _vfx_objc_sel_worldNormal = sel_registerName("worldNormal");
  _vfx_objc_sel_modelTransform = sel_registerName("modelTransform");
  _vfx_objc_sel_boneNode = sel_registerName("boneNode");
  _vfx_objc_sel_uv0 = sel_registerName("uv0");
  _vfx_objc_sel_presentationBoneNode = sel_registerName("presentationBoneNode");
  _vfx_objc_sel_presentationNode = sel_registerName("presentationNode");
  _vfx_objc_sel_applyForce_impulse_ = sel_registerName("applyForce:impulse:");
  _vfx_objc_sel_applyForce_atPosition_impulse_ = sel_registerName("applyForce:atPosition:impulse:");
  _vfx_objc_sel_applyTorque_impulse_ = sel_registerName("applyTorque:impulse:");
  result = sel_registerName("presentationObject");
  _vfx_objc_sel_presentationObject = result;
  return result;
}

float32x2_t Main_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91(double a1, float a2, float a3, float a4, float32x2_t a5, float32x2_t a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, _OWORD *a12, float32x4_t *a13, float *a14, float *a15, float *a16, float32x2_t *a17, float *a18, float *a19, float *a20, _OWORD *a21, int8x16_t *a22, int8x16_t *a23, float32x2_t *a24)
{
  vfx_script_texture_sample1d_curve();
  v32 = v31;
  if (a11)
  {
    v33 = -1;
  }

  else
  {
    v33 = 0;
  }

  v34 = vdupq_n_s32(v33);
  v59 = vbslq_s8(v34, xmmword_1D287C9B0, xmmword_1D287C9A0);
  v58 = vbslq_s8(v34, xmmword_1D287C9D0, xmmword_1D287C9C0);
  v35 = (a7 * 120.0) + -60.0;
  v36 = (powf(a4, 0.2) * -0.5) + 0.5;
  v37 = powf(a3, 5.0) * v36;
  v57 = v37 * (v35 * 0.5);
  v56 = (v37 * 0.1) + 1.0;
  v38 = v37 * (v35 * -0.5);
  v39 = vmul_f32(vmul_f32(a5, 0x3F0000003F000000), a6);
  if (a4 < 1.0 && a2 < 1.0)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = 0.0;
  }

  v55 = _simd_cos_f4(0);
  _Q0 = _simd_sin_f4(0);
  v43 = vextq_s8(v55, v55, 4uLL);
  v44 = vmulq_f32(vzip1q_s32(vrev64q_s32(v55), v55), vextq_s8(vzip1q_s32(v43, _Q0), v43, 8uLL));
  v45 = vzip2q_s32(vzip1q_s32(v55, _Q0), _Q0);
  v45.f32[3] = -_Q0.f32[0];
  v46 = vextq_s8(_Q0, _Q0, 8uLL);
  v47 = vtrn1q_s32(_Q0, vextq_s8(v55, v55, 8uLL));
  _Q0.i32[3] = _Q0.i32[1];
  v48 = vtrn1q_s32(v46, v55);
  v48.f32[1] = -v55.f32[0];
  *a12 = xmmword_1D287C9F0;
  *a13 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(_Q0, v45), v48)), v47, v44);
  __asm { FMOV            V0.2S, #1.0 }

  *a14 = v32 + ((2.0 - v32) * a2);
  *a15 = ((1.0 - a4) * a3) * 0.12;
  *a16 = v41;
  *a17 = v39;
  *a18 = v38;
  *a19 = v56;
  *a20 = v57;
  *a21 = xmmword_1D287C990;
  result = vmul_f32(a5, COERCE_FLOAT32X2_T(-*_Q0.i64));
  *a22 = v59;
  *a23 = v58;
  *a24 = result;
  return result;
}

float32x2_t __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 88);
  v2 = *(arguments_buffer + 96);
  v3 = *(arguments_buffer + 104);
  v4 = *(arguments_buffer + 112);
  v5 = *(arguments_buffer + 120);
  v6 = *(arguments_buffer + 128);
  v7 = *(arguments_buffer + 136);
  v9 = *(arguments_buffer + 144);
  v8 = *(arguments_buffer + 152);
  v44 = *(arguments_buffer + 160);
  v47 = *(arguments_buffer + 168);
  v46 = *(arguments_buffer + 176);
  v45 = *(arguments_buffer + 184);
  v10 = **(arguments_buffer + 32);
  v11 = **(arguments_buffer + 40);
  v12 = **(arguments_buffer + 48);
  v37 = **(arguments_buffer + 56);
  v38 = **(arguments_buffer + 64);
  v13 = **(arguments_buffer + 72);
  v14 = **(arguments_buffer + 80);
  vfx_script_texture_sample1d_curve();
  v16 = v15;
  if (v14)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdupq_n_s32(v17);
  v43 = vbslq_s8(v18, xmmword_1D287C9B0, xmmword_1D287C9A0);
  v42 = vbslq_s8(v18, xmmword_1D287C9D0, xmmword_1D287C9C0);
  v19 = (v13 * 120.0) + -60.0;
  v20 = (powf(v12, 0.2) * -0.5) + 0.5;
  v21 = powf(v11, 5.0) * v20;
  v41 = v21 * (v19 * 0.5);
  v40 = (v21 * 0.1) + 1.0;
  v22 = v21 * (v19 * -0.5);
  v23 = vmul_f32(vmul_f32(v37, 0x3F0000003F000000), v38);
  if (v12 < 1.0 && v10 < 1.0)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v39 = _simd_cos_f4(0);
  _Q0 = _simd_sin_f4(0);
  v27 = vextq_s8(v39, v39, 4uLL);
  v28 = vmulq_f32(vzip1q_s32(vrev64q_s32(v39), v39), vextq_s8(vzip1q_s32(v27, _Q0), v27, 8uLL));
  v29 = vzip2q_s32(vzip1q_s32(v39, _Q0), _Q0);
  v29.f32[3] = -_Q0.f32[0];
  v30 = vextq_s8(_Q0, _Q0, 8uLL);
  v31 = vtrn1q_s32(_Q0, vextq_s8(v39, v39, 8uLL));
  _Q0.i32[3] = _Q0.i32[1];
  v32 = vtrn1q_s32(v30, v39);
  v32.f32[1] = -v39.f32[0];
  *v1 = xmmword_1D287C9F0;
  *v2 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(_Q0, v29), v32)), v31, v28);
  __asm { FMOV            V0.2S, #1.0 }

  *v3 = v16 + ((2.0 - v16) * v10);
  *v4 = (v11 * (1.0 - v12)) * 0.12;
  *v5 = v25;
  *v6 = v23;
  *v7 = v22;
  *v9 = v40;
  *v8 = v41;
  *v44 = xmmword_1D287C990;
  result = vmul_f32(v37, COERCE_FLOAT32X2_T(-*_Q0.i64));
  *v47 = v43;
  *v46 = v42;
  *v45 = result;
  return result;
}

uint64_t Main_wandDesign0355_graph_7696F38A_EBDC_41E7_8CAE_4987BC7B661C(const void *a1, unsigned int a2, BOOL a3, const void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = xmmword_1D287CA00;
  v9 = xmmword_1D287CA10;
  v10 = xmmword_1D287CA20;
  v11 = xmmword_1D287CA30;
  v12 = xmmword_1D287CA00;
  v6 = xmmword_1D287CB10;
  v7 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v8, &v6, 5, 1);
  v8 = xmmword_1D287CA00;
  v9 = xmmword_1D287CA40;
  v10 = xmmword_1D287CA20;
  v11 = xmmword_1D287CA30;
  v12 = xmmword_1D287CA00;
  v6 = xmmword_1D287CB24;
  v7 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v8, &v6, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

uint64_t __vfx_script_wandDesign0355_graph_7696F38A_EBDC_41E7_8CAE_4987BC7B661C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_arguments_buffer();
  v5 = xmmword_1D287CA00;
  v6 = xmmword_1D287CA10;
  v7 = xmmword_1D287CA20;
  v8 = xmmword_1D287CA30;
  v9 = xmmword_1D287CA00;
  v3 = xmmword_1D287CB10;
  v4 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v5, &v3, 5, 1);
  v5 = xmmword_1D287CA00;
  v6 = xmmword_1D287CA40;
  v7 = xmmword_1D287CA20;
  v8 = xmmword_1D287CA30;
  v9 = xmmword_1D287CA00;
  v3 = xmmword_1D287CB24;
  v4 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v5, &v3, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

uint64_t Main_wandDesign0355_graph_C3CF643B_F736_4C71_8B18_D6AEF33F5C37(const void *a1, unsigned int a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = xmmword_1D287CA50;
  v8 = xmmword_1D287CA60;
  v9 = xmmword_1D287CA70;
  v10 = xmmword_1D287CA80;
  v11 = xmmword_1D287CA90;
  v5 = xmmword_1D287CB38;
  v6 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v7, &v5, 5, 1);
  v7 = xmmword_1D287CA50;
  v8 = xmmword_1D287CAA0;
  v9 = xmmword_1D287CAB0;
  v10 = xmmword_1D287CAC0;
  v11 = xmmword_1D287CA90;
  v5 = xmmword_1D287CB38;
  v6 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v7, &v5, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

uint64_t __vfx_script_wandDesign0355_graph_C3CF643B_F736_4C71_8B18_D6AEF33F5C37(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_arguments_buffer();
  v5 = xmmword_1D287CA50;
  v6 = xmmword_1D287CA60;
  v7 = xmmword_1D287CA70;
  v8 = xmmword_1D287CA80;
  v9 = xmmword_1D287CA90;
  v3 = xmmword_1D287CB38;
  v4 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v5, &v3, 5, 1);
  v5 = xmmword_1D287CA50;
  v6 = xmmword_1D287CAA0;
  v7 = xmmword_1D287CAB0;
  v8 = xmmword_1D287CAC0;
  v9 = xmmword_1D287CA90;
  v3 = xmmword_1D287CB38;
  v4 = 1065353216;
  MEMORY[0x1D38A3730](a1, &v5, &v3, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

uint64_t Main_wandDesign0355_graph_D23FB51D_5EE4_408E_A1E2_B2F544D8B3CC(float a1, float a2, float a3, float a4, float32x2_t a5, int32x2_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float *a10, float *a11, _DWORD *a12, _DWORD *a13, float *a14)
{
  vfx_script_clock_delta_time();
  v36 = v21;
  vfx_script_clock_delta_time();
  v23 = v22;
  vfx_script_clock_time();
  vfx_script_texture_sample1d_curve();
  v37 = v24;
  v25 = fminf((v23 * 0.6) + a3, 1.0);
  if (a4 >= 0.5)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  if (a4 >= 0.5)
  {
    v27 = ((a2 + ((0.0 - a2) * (1.0 - ((1.0 - a3) * ((1.0 - a3) * (1.0 - a3)))))) * (v36 + v36)) + a1;
  }

  else
  {
    v27 = 0.0;
  }

  result = vfx_script_texture_sample1d_curve();
  __asm { FMOV            V2.2S, #1.0 }

  v34 = vsub_f32(_D2, vadd_f32(vabs_f32(a5), vdup_lane_s32(a6, 0)));
  *a10 = v27;
  *a11 = v26;
  *a12 = v37;
  *a13 = v35;
  *a14 = fminf(fmaxf((fminf(v34.f32[0], v34.f32[1]) + -0.3) / -0.3, 0.0), 1.0) + 1.0;
  return result;
}

uint64_t __vfx_script_wandDesign0355_graph_D23FB51D_5EE4_408E_A1E2_B2F544D8B3CC()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 64);
  v2 = *(arguments_buffer + 72);
  v3 = *(arguments_buffer + 80);
  v4 = *(arguments_buffer + 88);
  v5 = *(arguments_buffer + 96);
  v6 = *(arguments_buffer + 104);
  v7 = **(arguments_buffer + 24);
  v8 = **(arguments_buffer + 32);
  v28 = **(arguments_buffer + 40);
  v29 = **(arguments_buffer + 16);
  v9 = **(arguments_buffer + 56);
  v10 = vld1_dup_f32(v1);
  v30 = v10;
  vfx_script_clock_delta_time();
  v27 = v11;
  vfx_script_clock_delta_time();
  v25 = v12;
  vfx_script_clock_time();
  vfx_script_texture_sample1d_curve();
  v26 = v13;
  v14 = fminf(v8 + (v25 * 0.6), 1.0);
  if (v28 >= 0.5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  if (v28 >= 0.5)
  {
    v16 = v29 + ((v27 + v27) * (v7 + ((0.0 - v7) * (1.0 - ((1.0 - v8) * ((1.0 - v8) * (1.0 - v8)))))));
  }

  else
  {
    v16 = 0.0;
  }

  result = vfx_script_texture_sample1d_curve();
  __asm { FMOV            V2.2S, #1.0 }

  v23 = vsub_f32(_D2, vadd_f32(v30, (v9 & 0x7FFFFFFF7FFFFFFFLL)));
  *v2 = v16;
  *v3 = v15;
  *v4 = v26;
  *v5 = v24;
  *v6 = fminf(fmaxf((fminf(v23.f32[0], v23.f32[1]) + -0.3) / -0.3, 0.0), 1.0) + 1.0;
  return result;
}

float Main_wandDesign0355_graph_901FC120_8DA4_4357_A1FE_BCE496B403FD(float32x2_t a1, float a2, float a3, float a4, double a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, int a11, float32x2_t *a12, float *a13, float *a14, float *a15, float32x2_t *a16, float *a17, float *a18)
{
  v24 = fminf(fmaxf(a2 / 0.7, 0.0), 1.0);
  v25.f32[0] = fmaxf(*&a5, *(&a5 + 1));
  v25.f32[1] = a8 * 1.1;
  __asm { FMOV            V18.2S, #1.0 }

  v40 = vbic_s8(vdiv_f32(_D18, v25), vorn_s8(vcge_f32(0x3400000034000000, vabs_f32(v25)), vceq_f32(v25, v25)));
  v31 = ((a6 * 0.5) + ((a6 - (a6 * 0.5)) * v24)) * 11.0;
  v32 = v31 + ((10.0 - v31) * a7);
  v33 = vmul_f32(*&a5, 0x3F0000003F000000);
  v34 = 1.0 - a4;
  v35 = ((v24 * v24) * ((v24 * -2.0) + 3.0)) * a3;
  v36 = vmul_f32(a1, COERCE_FLOAT32X2_T(--0.0000305175998));
  v37 = powf(a7, 0.7);
  *a12 = v36;
  if (a11)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  *a13 = v38;
  *a14 = v35;
  result = *&v40.i32[1] + ((*v40.i32 - *&v40.i32[1]) * v37);
  *a15 = v34;
  *a16 = v33;
  *a17 = v32;
  *a18 = result;
  return result;
}

float __vfx_script_wandDesign0355_graph_901FC120_8DA4_4357_A1FE_BCE496B403FD()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 88);
  v2 = *(arguments_buffer + 96);
  v3 = *(arguments_buffer + 104);
  v4 = *(arguments_buffer + 112);
  v5 = *(arguments_buffer + 120);
  v6 = *(arguments_buffer + 128);
  v7 = *(arguments_buffer + 136);
  v8 = **(arguments_buffer + 24);
  v9 = **(arguments_buffer + 56);
  v10 = **(arguments_buffer + 72);
  v11 = fminf(fmaxf(**(arguments_buffer + 32) / 0.7, 0.0), 1.0);
  v12.f32[0] = fmaxf(v9.f32[0], v9.f32[1]);
  v12.f32[1] = **(arguments_buffer + 80) * 1.1;
  __asm { FMOV            V18.2S, #1.0 }

  v27 = vbic_s8(vdiv_f32(_D18, v12), vorn_s8(vcge_f32(0x3400000034000000, vabs_f32(v12)), vceq_f32(v12, v12)));
  v18 = ((**(arguments_buffer + 64) * 0.5) + ((**(arguments_buffer + 64) - (**(arguments_buffer + 64) * 0.5)) * v11)) * 11.0;
  v19 = v18 + ((10.0 - v18) * v10);
  v20 = vmul_f32(v9, 0x3F0000003F000000);
  v21 = 1.0 - **(arguments_buffer + 48);
  v22 = **(arguments_buffer + 40) * ((v11 * v11) * ((v11 * -2.0) + 3.0));
  v23 = vmul_f32(**(arguments_buffer + 16), COERCE_FLOAT32X2_T(--0.0000305175998));
  v24 = powf(v10, 0.7);
  *v1 = v23;
  if (v8)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  *v2 = v25;
  *v3 = v22;
  result = *&v27.i32[1] + ((*v27.i32 - *&v27.i32[1]) * v24);
  *v4 = v21;
  *v5 = v20;
  *v6 = v19;
  *v7 = result;
  return result;
}

void Main_wandDesign0355_graph_FD164728_9001_423B_93F1_64452CDCAA0E(float32x2_t a1, float a2, float a3, float a4, float32x2_t a5, uint64_t a6, uint64_t a7, int a8, float32x2_t *a9, float *a10, float32x2_t *a11, float *a12, float *a13, float *a14, float32x2_t *a15)
{
  v22 = vmul_f32(a1, 0x3F0000003F000000);
  v23 = a2 + a2;
  v24 = ((1.0 - a4) * (1.0 - a4)) * ((((fminf(fmaxf(a3, 0.0), 1.0) * 0.3) + 0.85) * 0.132) * 0.6);
  v25 = powf(a4, 0.7);
  v26 = vmul_f32(a5, 0x3F0000003F000000);
  *a9 = v22;
  *a10 = v23;
  *a11 = v22;
  if (a8)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  *a12 = v27;
  *a13 = v24;
  *a14 = v25;
  *a15 = v26;
}

void __vfx_script_wandDesign0355_graph_FD164728_9001_423B_93F1_64452CDCAA0E()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 64);
  v2 = *(arguments_buffer + 72);
  v3 = *(arguments_buffer + 80);
  v4 = *(arguments_buffer + 88);
  v5 = *(arguments_buffer + 96);
  v6 = *(arguments_buffer + 104);
  v7 = *(arguments_buffer + 112);
  v8 = **(arguments_buffer + 32);
  v9 = **(arguments_buffer + 48);
  v10 = **(arguments_buffer + 56);
  v11 = vmul_f32(**(arguments_buffer + 16), 0x3F0000003F000000);
  v12 = **(arguments_buffer + 24) + **(arguments_buffer + 24);
  v13 = ((1.0 - v9) * (1.0 - v9)) * ((((fminf(fmaxf(**(arguments_buffer + 40), 0.0), 1.0) * 0.3) + 0.85) * 0.132) * 0.6);
  v14 = powf(v9, 0.7);
  v15 = vmul_f32(v10, 0x3F0000003F000000);
  *v1 = v11;
  *v2 = v12;
  *v3 = v11;
  if (v8)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  *v4 = v16;
  *v5 = v13;
  *v6 = v14;
  *v7 = v15;
}

double Main_wandDesign0355_graph_E4D1F5E3_04E1_4A55_B5B3_4171D83844E9(float32x4_t a1, float32x4_t a2, float a3, float a4, uint64_t a5, int a6, unsigned int a7, int a8, unsigned int a9, uint64_t a10, int a11, int8x16_t *a12, float *a13, _BYTE *a14, void *a15, float *a16, float *a17)
{
  v45 = *a12;
  vfx_script_clock_time();
  v27 = v26;
  v43 = cosf(v27 + v27);
  v44 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a7), 0x1FuLL)), vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf(v27)), LODWORD(v43)), 0x3F4CCCCD3F333333), *a1.f32);
  v28 = vsubq_f32(a2, a1);
  v29 = vmulq_f32(v28, v28);
  v30 = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
  vfx_script_clock_delta_time();
  v32 = ((v31 * -10.0) + 1.0) * a3;
  if (v30 <= a3)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  v34 = a8 ^ a9;
  if (!v34)
  {
    LOBYTE(a9) = a8;
  }

  v35 = v34 + a10;
  vfx_script_clock_delta_time();
  v37 = fmaxf(a4 + (v36 * -5.0), 0.0);
  if (!a11)
  {
    v37 = 1.0;
  }

  v38 = 277803737 * (((747796405 * a6 + 2112654314) >> (((747796405 * a6 + 2112654314) >> 28) + 4)) ^ (747796405 * a6 + 2112654314));
  *a13 = v33;
  *a14 = a9;
  *a15 = v35;
  *a16 = v37;
  *a17 = COERCE_FLOAT((v38 >> 31) ^ (v38 >> 9) | 0x3F800000) + -1.0;
  *&result = vextq_s8(v45, v45, 8uLL).u64[0];
  *v40.i8 = v44;
  *&v40.i64[1] = result;
  *a12 = v40;
  return result;
}

double __vfx_script_wandDesign0355_graph_E4D1F5E3_04E1_4A55_B5B3_4171D83844E9()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 88);
  v32 = *(arguments_buffer + 104);
  v33 = *(arguments_buffer + 96);
  v31 = *(arguments_buffer + 112);
  v2 = *(arguments_buffer + 120);
  v3 = *(arguments_buffer + 128);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 24);
  v26 = **(arguments_buffer + 32);
  v27 = **(arguments_buffer + 16);
  v6 = **(arguments_buffer + 40);
  v7 = **(arguments_buffer + 48);
  v8 = **(arguments_buffer + 56);
  v9 = **(arguments_buffer + 64);
  v10 = **(arguments_buffer + 72);
  v11 = **(arguments_buffer + 80);
  v30 = *v1;
  vfx_script_clock_time();
  v13 = v12;
  v28 = cosf(v13 + v13);
  v29 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v5), 0x1FuLL)), vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf(v13)), LODWORD(v28)), 0x3F4CCCCD3F333333), *v27.f32);
  v14 = vsubq_f32(v26, v27);
  v15 = vmulq_f32(v14, v14);
  v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  vfx_script_clock_delta_time();
  v18 = v6 * ((v17 * -10.0) + 1.0);
  if (v16 <= v6)
  {
    v16 = v18;
  }

  if ((v7 ^ v8))
  {
    v19 = v8;
  }

  else
  {
    v19 = v7;
  }

  v20 = v9 + ((v7 ^ v8) & 1);
  vfx_script_clock_delta_time();
  v22 = fmaxf(v10 + (v21 * -5.0), 0.0);
  if (!v11)
  {
    v22 = 1.0;
  }

  v23 = 277803737 * (((747796405 * v4 + 2112654314) >> (((747796405 * v4 + 2112654314) >> 28) + 4)) ^ (747796405 * v4 + 2112654314));
  *v33 = v16;
  *v32 = v19;
  *v31 = v20;
  *v2 = v22;
  *v3 = COERCE_FLOAT((v23 >> 31) ^ (v23 >> 9) | 0x3F800000) + -1.0;
  *v24.i8 = v29;
  *&result = vextq_s8(v30, v30, 8uLL).u64[0];
  *&v24.i64[1] = result;
  *v1 = v24;
  return result;
}

void Spawn_wandDesign0355_graph_C843AC9E_2B56_452B_A24F_5456580F2B53(const void *a1, unsigned int a2, int a3, float *a4)
{
  v4 = 150.0;
  if (!a3)
  {
    v4 = 0.0;
  }

  *a4 = v4;
}

uint64_t __vfx_script_wandDesign0355_graph_C843AC9E_2B56_452B_A24F_5456580F2B53()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = 150.0;
  if (!**(result + 16))
  {
    v1 = 0.0;
  }

  **(result + 24) = v1;
  return result;
}

void Init_wandDesign0355_graph_5D2CFFC5_E30F_4132_BE76_59B31A0A6567(float a1, float a2, uint64_t a3, uint64_t a4, float *a5, float *a6)
{
  *a5 = a1;
  a5[1] = a1;
  *a6 = a2;
  a6[1] = a2;
}

float __vfx_script_wandDesign0355_graph_5D2CFFC5_E30F_4132_BE76_59B31A0A6567()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  result = *v1;
  v5 = **(arguments_buffer + 24);
  *v2 = *v1;
  v2[1] = result;
  *v3 = v5;
  v3[1] = v5;
  return result;
}

void Main_wandDesign0355_graph_B3B2C560_FD91_4556_975C_A4A30270FDFA(__n128 a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, __n128 *a7, BOOL *a8)
{
  a1.n128_u64[0] = vadd_f32(a1.n128_u64[0], a1.n128_u64[0]);
  v9 = fmaxf(a3, a4) > 0.001 && a2 > 0.002;
  *a7 = a1;
  *a8 = v9;
}

uint64_t __vfx_script_wandDesign0355_graph_B3B2C560_FD91_4556_975C_A4A30270FDFA()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 56);
  *&v2 = vadd_f32(**(result + 16), **(result + 16));
  v4 = fmaxf(**(result + 32), **(result + 40)) > 0.001 && **(result + 24) > 0.002;
  **(result + 48) = v2;
  *v1 = v4;
  return result;
}

void Main_wandDesign0355_graph_7FDCB4DA_DF2D_4E84_B58A_DCB202FFD809(__n128 a1, float a2, uint64_t a3, uint64_t a4, __n128 *a5, BOOL *a6)
{
  a1.n128_u64[0] = vadd_f32(a1.n128_u64[0], a1.n128_u64[0]);
  *a5 = a1;
  *a6 = a2 <= 0.999;
}

uint64_t __vfx_script_wandDesign0355_graph_7FDCB4DA_DF2D_4E84_B58A_DCB202FFD809()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 40);
  *&v2 = vadd_f32(**(result + 16), **(result + 16));
  v3 = **(result + 24) <= 0.999;
  **(result + 32) = v2;
  *v1 = v3;
  return result;
}

int32x4_t Main_wandDesign0355_graph_EA13C624_CE49_4A69_AE87_E8AD0439CA0A(uint64_t a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4)
{
  *a3 = vdupq_n_s32(0xBE4CCCCD);
  result = vdupq_n_s32(0x3E4CCCCDu);
  *a4 = result;
  return result;
}

int32x4_t __vfx_script_wandDesign0355_graph_EA13C624_CE49_4A69_AE87_E8AD0439CA0A()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  **(arguments_buffer + 16) = vdupq_n_s32(0xBE4CCCCD);
  result = vdupq_n_s32(0x3E4CCCCDu);
  *v1 = result;
  return result;
}

__n128 Main_wandDesign0355_graph_21C598C9_6379_4515_BB57_CA5AE8B79AA5(__n128 a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  a1.n128_u32[2] = a4->n128_u32[2];
  *a4 = a1;
  result.n128_u64[0] = a1.n128_u64[0];
  result.n128_u32[2] = a1.n128_u32[2];
  return result;
}

__n128 __vfx_script_wandDesign0355_graph_21C598C9_6379_4515_BB57_CA5AE8B79AA5()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = **(arguments_buffer + 16);
  DWORD2(v2) = *(v1 + 8);
  *v1 = v2;
  result.n128_u64[0] = v2;
  result.n128_u32[2] = DWORD2(v2);
  return result;
}

float Init_wandDesign0355_graph_7C9DA92D_B6F3_4B1E_8240_63F3721646B1(float a1, uint64_t a2, uint64_t a3, float *a4)
{
  result = a1 * 6.0;
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_wandDesign0355_graph_7C9DA92D_B6F3_4B1E_8240_63F3721646B1()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = **(arguments_buffer + 16) * 6.0;
  *v1 = result;
  v1[1] = result;
  return result;
}

__n128 ParticleInit_wandDesign0355_particleInit_13(int8x16_t a1, int8x16_t a2, float a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, float32x4_t *a10, int32x4_t *a11, __n128 *a12)
{
  *a2.i32 = a8 / a9;
  if (fabsf(a9) <= 0.00000011921)
  {
    *a2.i32 = 0.0;
  }

  *a1.i32 = *a2.i32 + *a1.i32;
  *a2.i32 = *a1.i32 - truncf(*a1.i32);
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v30 = *a12;
  v31 = vbslq_s8(v15, a2, a1).u64[0];
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v17 = vmulq_f32(v16, xmmword_1D287CAD0);
  v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  v18 = vdupq_lane_s32(*v17.f32, 0);
  v19 = vmlaq_n_f32(v18, vsubq_f32(v16, v18), a3);
  v19.i32[3] = 1.0;
  __asm { FMOV            V0.4S, #1.0 }

  *a10 = vmlaq_n_f32(v19, vsubq_f32(_Q0, v19), a4);
  v25 = &unk_1D287CAF0;
  v26 = vld1q_dup_f32(v25);
  *a11 = vdupq_lane_s32(v31, 0);
  result = v30;
  v26.i64[0] = v30.n128_u64[0];
  *a12 = v26;
  return result;
}

uint64_t __vfx_script_wandDesign0355_particleInit_13()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

double ParticleInit_wandDesign0355_particleInit_20(float32x4_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, int a5, int a6, float32x4_t *a7, _OWORD *a8, float32x4_t *a9)
{
  v9 = vdupq_n_s32(0x3F8CCCCDu);
  if (a5)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  __asm { FMOV            V4.4S, #2.5 }

  v16 = vmulq_f32(a1, vbslq_s8(vdupq_n_s32(v10), v9, _Q4));
  v17 = 1.2;
  if (!a6)
  {
    v17 = 1.0;
  }

  v16.i32[3] = 1.0;
  *a7 = v16;
  result = 0.0;
  *a8 = 0u;
  *a9 = vmulq_n_f32(a2, v17);
  return result;
}

uint64_t __vfx_script_wandDesign0355_particleInit_20()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleUpdate_wandDesign0355_particleUpdate_12(double a1, double a2, float a3, float a4, double a5, float a6, double a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, float a17, uint64_t a18, float a19, uint64_t a20, float32x4_t *a21, float *a22, float *a23)
{
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v52 = v27;
  v28 = a13 & ~(a13 >> 63);
  v29 = a12 + 20 - v28;
  if (a12 + 20 < v28)
  {
    v29 = 0;
  }

  v30 = fminf(v29, 20.0) / 20.0;
  vfx_script_texture_sample1d();
  v53 = v31;
  vfx_script_texture_sample1d_curve();
  v33 = v32;
  v34 = vmulq_f32(v52, xmmword_1D287CAD0);
  v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
  v35 = vdupq_lane_s32(*v34.f32, 0);
  v35.i32[3] = 1061997773;
  if (fabsf(a13) > 0.00000011921)
  {
    v36 = a12 / a13;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = vmlaq_n_f32(v35, vsubq_f32(v52, v35), a3);
  __asm { FMOV            V0.4S, #1.0 }

  v56 = vmlaq_n_f32(v37, vsubq_f32(_Q0, v37), a4);
  *v43.i32 = powf(v30, 1.7) * 0.9;
  v57 = vaddq_f32(vdupq_lane_s32(v43, 0), v56);
  v44 = a6 * v53;
  vfx_script_texture_sample1d_curve();
  v46 = a8;
  if (!a16)
  {
    v46 = 0.0;
  }

  v59 = vmulq_n_f32(v57, v44 * (1.0 - (v46 * v33)));
  v47 = (sqrtf(fmaxf(v36, 0.07)) * a17) * v45;
  if (a16)
  {
    v48 = v33 * a19;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = v47 + v48;
  vfx_script_texture_sample1d_curve();
  *a22 = v49;
  *a23 = v48 + v50;
  result = v59;
  *a21 = v59;
  return result;
}

uint64_t __vfx_script_wandDesign0355_particleUpdate_12()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

float32x4_t ParticleUpdate_wandDesign0355_particleUpdate_21(float32x4_t a1, float a2, uint64_t a3, uint64_t a4, float32x4_t *a5)
{
  result = vmulq_n_f32(a1, a2);
  *a5 = result;
  return result;
}

__n128 __vfx_script_wandDesign0355_particleUpdate_21()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

float32x4_t ParticleUpdate_wandDesign0355_particleUpdate_40(float32x4_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, float32x4_t *a7)
{
  vfx_script_clock_delta_time();
  *v12.i32 = v11 * 5.0;
  __asm { FMOV            V2.4S, #1.0 }

  v18 = vminnmq_f32(vmaxnmq_f32(vaddq_f32(vdupq_lane_s32(v12, 0), a1), 0), _Q2);
  v19 = vmulq_n_f32(a1, (v11 * -10.0) + 1.0);
  if ((a4 & ~a5) != 0)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vbslq_s8(vdupq_n_s32(v20), v18, v19);
  v22 = 0.87;
  if (a6)
  {
    v22 = 1.0;
  }

  result = vmulq_n_f32(v21, v22);
  *a7 = result;
  return result;
}

uint64_t __vfx_script_wandDesign0355_particleUpdate_40()
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_wandDesign0355_graph_E459FECF_5572_4FF9_A344_1E1D4D61CA91_cold_1();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_0()
{
  _vfx_objc_sel_setValue_forKeyPath_ = sel_registerName("setValue:forKeyPath:");
  _vfx_objc_sel_valueForKeyPath_ = sel_registerName("valueForKeyPath:");
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_VFXTransaction = objc_lookUpClass("VFXTransaction");
  _vfx_objc_sel_begin = sel_registerName("begin");
  _vfx_objc_sel_setAnimationDurationAsFloat_ = sel_registerName("setAnimationDurationAsFloat:");
  _vfx_objc_sel_commit = sel_registerName("commit");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSValue = objc_lookUpClass("NSValue");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithFloat_ = sel_registerName("numberWithFloat:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimationAsset_forKey_ = sel_registerName("addAnimationAsset:forKey:");
  _vfx_objc_sel_removeAllAnimations = sel_registerName("removeAllAnimations");
  _vfx_objc_sel_removeAnimationForKey_ = sel_registerName("removeAnimationForKey:");
  _vfx_objc_sel_script_rootNode = sel_registerName("script_rootNode");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_childNodes = sel_registerName("childNodes");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_convertPosition_toNode_ = sel_registerName("convertPosition:toNode:");
  _vfx_objc_sel_convertVector_toNode_ = sel_registerName("convertVector:toNode:");
  _vfx_objc_sel_convertTransform_toNode_ = sel_registerName("convertTransform:toNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_projectPoint_ = sel_registerName("projectPoint:");
  _vfx_objc_sel_unprojectPoint_ = sel_registerName("unprojectPoint:");
  _vfx_objc_sel_script_hitTest_options_ = sel_registerName("script_hitTest:options:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_setState_ = sel_registerName("setState:");
  _vfx_objc_sel_setStateNamed_ = sel_registerName("setStateNamed:");
  _vfx_objc_sel__contentsScaleFactor = sel_registerName("_contentsScaleFactor");
  _vfx_objc_sel__screenSize = sel_registerName("_screenSize");
  _vfx_objc_sel_physicsBody = sel_registerName("physicsBody");
  _vfx_objc_sel_script_instantiate_ = sel_registerName("script_instantiate:");
  _vfx_objc_sel_geometryIndex = sel_registerName("geometryIndex");
  _vfx_objc_sel_faceIndex = sel_registerName("faceIndex");
  _vfx_objc_sel_localCoordinates = sel_registerName("localCoordinates");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  _vfx_objc_sel_localNormal = sel_registerName("localNormal");
  _vfx_objc_sel_worldNormal = sel_registerName("worldNormal");
  _vfx_objc_sel_modelTransform = sel_registerName("modelTransform");
  _vfx_objc_sel_boneNode = sel_registerName("boneNode");
  _vfx_objc_sel_uv0 = sel_registerName("uv0");
  _vfx_objc_sel_presentationBoneNode = sel_registerName("presentationBoneNode");
  _vfx_objc_sel_presentationNode = sel_registerName("presentationNode");
  _vfx_objc_sel_applyForce_impulse_ = sel_registerName("applyForce:impulse:");
  _vfx_objc_sel_applyForce_atPosition_impulse_ = sel_registerName("applyForce:atPosition:impulse:");
  _vfx_objc_sel_applyTorque_impulse_ = sel_registerName("applyTorque:impulse:");
  result = sel_registerName("presentationObject");
  _vfx_objc_sel_presentationObject = result;
  return result;
}

uint64_t sub_1D22ADB30()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    _s22OnDeviceImageGeneratorCMa(0);
    swift_allocObject();
    v2 = sub_1D2870F78();
    v1 = sub_1D235F244(v2, 5);
    *(v0 + 24) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t NonUIGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  NonUIGenerator.init()();
  return v0;
}

char *NonUIGenerator.init()()
{
  type metadata accessor for ServicesFetcher();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  *(v0 + 2) = v1;
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E30);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_nextGenerations] = v2;
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_rateLimiter;
  type metadata accessor for NonUIGenerator.RateLimiter(0);
  v6 = swift_allocObject();
  sub_1D2879318();
  *(v6 + OBJC_IVAR____TtCC23ImagePlaygroundInternal14NonUIGeneratorP33_A4A6B2279B4943086706F677B8B22A2211RateLimiter_slidingWindow) = v2;
  v7 = v6 + OBJC_IVAR____TtCC23ImagePlaygroundInternal14NonUIGeneratorP33_A4A6B2279B4943086706F677B8B22A2211RateLimiter_metrics;
  *v7 = xmmword_1D287CB50;
  *(v7 + 16) = 20;
  *&v0[v5] = v6;
  return v0;
}

uint64_t sub_1D22ADD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D2878568();
  v4[3] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D22ADDC4, v6, v5);
}

void sub_1D22ADDC4()
{
  if (__OFADD__(qword_1EC6E3C60, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EC6E3C60;
    *(v0 + 48) = sub_1D22ADB30();
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1D22ADE78;

    sub_1D2356284();
  }
}

uint64_t sub_1D22ADE78()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D22ADFBC, v3, v2);
}

uint64_t sub_1D22ADFBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22AE01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D22BD1D0(a3, v25 - v10, &qword_1EC6D8E60);
  v12 = sub_1D28785F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1D2870F78();
  if (v14 == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D28784F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2878138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D2870F78();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D22BD238(a3, &qword_1EC6D8E60);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D22BD238(a3, &qword_1EC6D8E60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D22AE31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D22BD1D0(a3, v25 - v10, &qword_1EC6D8E60);
  v12 = sub_1D28785F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1D2870F78();
  if (v14 == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D28784F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2878138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9410);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D22BD238(a3, &qword_1EC6D8E60);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D22BD238(a3, &qword_1EC6D8E60);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9410);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D22AE630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D22BD1D0(a3, v25 - v10, &qword_1EC6D8E60);
  v12 = sub_1D28785F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1D2870F78();
  if (v14 == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D28784F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2878138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D22BD238(a3, &qword_1EC6D8E60);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D22BD238(a3, &qword_1EC6D8E60);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D22AE984(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D2878568();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v4;
  v11[5] = v5;
  sub_1D22AE01C(0, 0, v8, a2, v11);
}

uint64_t sub_1D22AEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D2878568();
  v4[3] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D22AEB64, v6, v5);
}

void sub_1D22AEB64()
{
  v1 = qword_1EC6E3C60 - 1;
  if (__OFSUB__(qword_1EC6E3C60, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_1EC6E3C60;
    if (v1)
    {

      v2 = v0[1];

      v2();
    }

    else
    {
      v0[6] = sub_1D22ADB30();
      v3 = swift_task_alloc();
      v0[7] = v3;
      *v3 = v0;
      v3[1] = sub_1D22AEC54;

      sub_1D2356E38();
    }
  }
}

uint64_t sub_1D22AEC54()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D22BE034, v3, v2);
}

uint64_t sub_1D22AEDB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D2878568();
  swift_retain_n();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = v6;
  sub_1D22AE01C(0, 0, v9, a4, v12);
}

Swift::Void __swiftcall NonUIGenerator.stopGeneration(_:)(NSUUID a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D2878568();
  sub_1D2870F78();
  v8 = a1.super.isa;
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v2;
  v10[5] = v8;
  sub_1D22AE01C(0, 0, v6, &unk_1D287CBB8, v10);
}

uint64_t sub_1D22AF048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1D2871818();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_1D2878568();
  v5[18] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22AF1C8, v8, v7);
}

void sub_1D22AF1C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_nextGenerations;
  swift_beginAccess();
  v4 = sub_1D22BBBCC((v1 + v3), v2);

  v5 = *(*(v1 + v3) + 16);
  if (v5 < v4)
  {
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = *(v0 + 64);
  sub_1D278CF98(v6, v5);
  swift_endAccess();
  v8 = v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E30);
  v10 = 1;
  v35 = *(*(v9 - 8) + 48);
  v36 = v9;
  if (!v35(v8, 1))
  {
    (*(*(v0 + 88) + 16))(*(v0 + 136), v8, *(v0 + 80));
    v10 = 0;
  }

  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 112);
  v37 = v8;
  v38 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v14 + 56);
  v16(v11, v10, 1, v15);
  sub_1D28717F8();
  v16(v12, 0, 1, v15);
  v17 = v13;
  v18 = *(v38 + 48);
  sub_1D22BD1D0(v11, v17, &qword_1EC6D8F70);
  sub_1D22BD1D0(v12, v17 + v18, &qword_1EC6D8F70);
  v19 = *(v14 + 48);
  if (v19(v17, 1, v15) == 1)
  {
    v20 = *(v0 + 136);
    v21 = *(v0 + 80);
    sub_1D22BD238(*(v0 + 128), &qword_1EC6D8F70);
    sub_1D22BD238(v20, &qword_1EC6D8F70);
    if (v19(v17 + v18, 1, v21) == 1)
    {
      sub_1D22BD238(*(v0 + 112), &qword_1EC6D8F70);
LABEL_11:
      if (!(v35)(v37, 1, v36))
      {
        sub_1D2870F78();
        sub_1D28786B8();
      }

      sub_1D22ADB30();
      sub_1D2357288();

      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v22 = *(v0 + 80);
  sub_1D22BD1D0(*(v0 + 112), *(v0 + 120), &qword_1EC6D8F70);
  v23 = v19(v17 + v18, 1, v22);
  v25 = *(v0 + 128);
  v24 = *(v0 + 136);
  v26 = *(v0 + 120);
  if (v23 == 1)
  {
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    sub_1D22BD238(*(v0 + 128), &qword_1EC6D8F70);
    sub_1D22BD238(v24, &qword_1EC6D8F70);
    (*(v28 + 8))(v26, v27);
LABEL_9:
    sub_1D22BD238(*(v0 + 112), &qword_1EC6D94F0);
    goto LABEL_14;
  }

  v39 = *(v0 + 112);
  v29 = *(v0 + 88);
  v30 = *(v0 + 96);
  v31 = *(v0 + 80);
  (*(v29 + 32))(v30, v17 + v18, v31);
  sub_1D22BA450(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v32 = sub_1D2877F98();
  v33 = *(v29 + 8);
  v33(v30, v31);
  sub_1D22BD238(v25, &qword_1EC6D8F70);
  sub_1D22BD238(v24, &qword_1EC6D8F70);
  v33(v26, v31);
  sub_1D22BD238(v39, &qword_1EC6D8F70);
  if (v32)
  {
    goto LABEL_11;
  }

LABEL_14:

  v34 = *(v0 + 8);

  v34();
}

uint64_t NonUIGenerator.fetchAvailableStyles(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  sub_1D22AE01C(0, 0, v8, &unk_1D287CBC8, v11);
}

uint64_t sub_1D22AF994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1D2872008();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_1D2878568();
  v6[8] = sub_1D2878558();
  v9 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22AFA8C, v9, v8);
}

uint64_t sub_1D22AFA8C()
{

  sub_1D22ADB30();
  v1 = sub_1D23574F8();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v13 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *(v4 + 56);
    do
    {
      v8 = *(v0 + 56);
      v9 = *(v0 + 40);
      v13(v8, v6, v9);
      sub_1D2871F98();
      sub_1D2878068();

      (*(v4 - 8))(v8, v9);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v6 += v7;
      --v2;
    }

    while (v2);

    v10 = v14;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  (*(v0 + 24))(v10);

  v11 = *(v0 + 8);

  return v11();
}

void sub_1D22AFDC4(uint64_t a1, uint64_t a2)
{
  sub_1D22BCFD0(0, &qword_1EC6D9420);
  v3 = sub_1D28783C8();
  (*(a2 + 16))(a2, v3);
}

uint64_t NonUIGenerator.startGeneration(style:promptElements:personalizationPolicyValue:replyHandler:batchID:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_1D28785F8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D2878568();
  v18 = a6;
  sub_1D2870F78();
  sub_1D2870F78();
  v19 = a3;
  v20 = a1;
  sub_1D2870F68();
  v21 = sub_1D2878558();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v18;
  v22[5] = v7;
  v22[6] = a4;
  v22[7] = a5;
  v22[8] = v19;
  v22[9] = v20;
  v22[10] = a2;
  sub_1D22AE01C(0, 0, v16, &unk_1D287CBD8, v22);
}

uint64_t sub_1D22AFFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v15;
  v8[11] = v16;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E68);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v8[13] = swift_task_alloc();
  v9 = sub_1D2871818();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = sub_1D2873CB8();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = sub_1D2878568();
  v8[22] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v8[23] = v12;
  v8[24] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D22B01B0, v12, v11);
}

uint64_t sub_1D22B01B0()
{
  v1 = v0[5];
  sub_1D2872718();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D28789F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_1D226E000, v3, v4, "Rate limiter checking request for batch: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];

  v12 = *(v11 + 8);
  v0[25] = v12;
  v0[26] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = sub_1D2878558();
  v0[27] = v13;
  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_1D22B037C;

  return sub_1D22B0BB0(v13);
}

uint64_t sub_1D22B037C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1D22B0A18;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1D22B0498;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D22B0498()
{
  v1 = *(v0 + 40);
  sub_1D2872718();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D28789F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D226E000, v3, v4, "Waiting for previous generations for batch: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  *(v0 + 240) = v6;
  (*(v0 + 200))(*(v0 + 152), *(v0 + 136));
  sub_1D28717F8();
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_1D22B0638;
  v11 = *(v0 + 128);

  return sub_1D22B194C(v11);
}

uint64_t sub_1D22B0638()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 256) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 192);
  v7 = *(v2 + 184);
  if (v0)
  {
    v8 = sub_1D22B0AE8;
  }

  else
  {
    v8 = sub_1D22B07D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D22B07D0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v22 = v0[7];
  v8 = v0[5];

  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_1D2870F78();
  v11 = v6;
  v12 = v3;
  sub_1D2870F68();
  sub_1D2870F78();
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v7;
  v14[5] = v10;
  v14[6] = v11;
  v14[7] = v12;
  v14[8] = v4;
  v14[9] = v22;
  v14[10] = v5;
  v16 = sub_1D22AE01C(0, 0, v2, &unk_1D287D3E0, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E30);
  v18 = *(v17 + 48);
  sub_1D28717F8();
  *(v1 + v18) = v16;
  (*(*(v17 - 8) + 56))(v1, 0, 1, v17);
  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration;
  swift_beginAccess();
  sub_1D22BD298(v1, v7 + v19, &qword_1EC6D8E68);
  swift_endAccess();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D22B0A18()
{

  v1 = v0[29];
  v2 = v0[7];

  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D22B0AE8()
{
  v1 = v0[32];
  v2 = v0[7];

  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D22B0BB0(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_1D2871798();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = sub_1D2873CB8();
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = sub_1D2879308();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_1D28784F8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v2[18] = v7;
  v2[19] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D22B0DAC, v7, v9);
}

uint64_t sub_1D22B0DAC()
{
  v66 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[2];
  sub_1D28792B8();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = OBJC_IVAR____TtCC23ImagePlaygroundInternal14NonUIGeneratorP33_A4A6B2279B4943086706F677B8B22A2211RateLimiter_slidingWindow;
  v8 = *(v5 + OBJC_IVAR____TtCC23ImagePlaygroundInternal14NonUIGeneratorP33_A4A6B2279B4943086706F677B8B22A2211RateLimiter_slidingWindow);
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  sub_1D2870F68();
  sub_1D27C777C(sub_1D22BD138, v9, v8);
  v11 = v10;

  *(v5 + v7) = v11;

  v12 = *(v5 + v7);
  v63 = *(v12 + 16);
  v64 = v5;
  if (v63 >= 0x14)
  {
    v61 = v6;
    v6(v0[15], v12 + ((*(v0[12] + 80) + 32) & ~*(v0[12] + 80)) + *(v0[12] + 72) * (v63 - 20), v0[11]);
    sub_1D28792F8();
    sub_1D28798F8();
    sub_1D2872718();
    v13 = sub_1D2873CA8();
    v14 = sub_1D28789F8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[10];
    v17 = v0[6];
    v18 = v0[7];
    if (v15)
    {
      v58 = v0[6];
      v19 = swift_slowAlloc();
      v57 = v16;
      v20 = swift_slowAlloc();
      v65[0] = v20;
      *v19 = 136315138;
      v21 = sub_1D28798D8();
      v23 = sub_1D23D7C84(v21, v22, v65);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D226E000, v13, v14, "Rate limiter throttling request for :%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38A3520](v20, -1, -1);
      MEMORY[0x1D38A3520](v19, -1, -1);

      (*(v18 + 8))(v57, v58);
    }

    else
    {

      (*(v18 + 8))(v16, v17);
    }

    v24 = v0[16];
    v26 = v0[14];
    v25 = v0[15];
    v28 = v0[11];
    v27 = v0[12];
    sub_1D28792E8();
    v29 = *(v27 + 8);
    v29(v25, v28);
    v29(v24, v28);
    (*(v27 + 32))(v24, v26, v28);
    v5 = v64;
    v6 = v61;
  }

  v6(v0[13], v0[16], v0[11]);
  v30 = *(v5 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v7) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_1D27CC7F0(0, v30[2] + 1, 1, v30);
    *(v5 + v7) = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_1D27CC7F0(v32 > 1, v33 + 1, 1, v30);
  }

  v35 = v0[12];
  v34 = v0[13];
  v36 = v0[11];
  v30[2] = v33 + 1;
  (*(v35 + 32))(v30 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v34, v36);
  *(v5 + v7) = v30;
  sub_1D2872718();
  v37 = sub_1D2873CA8();
  v38 = sub_1D28789F8();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[9];
  v42 = v0[6];
  v41 = v0[7];
  if (v39)
  {
    v44 = v0[4];
    v43 = v0[5];
    v45 = v0[3];
    v46 = swift_slowAlloc();
    v62 = v42;
    v59 = swift_slowAlloc();
    v65[0] = v59;
    *v46 = 136315138;
    sub_1D2871778();
    sub_1D22BA450(&qword_1EC6D94E8, MEMORY[0x1E6969530]);
    v47 = sub_1D28795C8();
    v60 = v40;
    v49 = v48;
    (*(v44 + 8))(v43, v45);
    v50 = sub_1D23D7C84(v47, v49, v65);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1D226E000, v37, v38, "Rate limiter adding request to sliding window at instant: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1D38A3520](v59, -1, -1);
    MEMORY[0x1D38A3520](v46, -1, -1);

    v51 = *(v41 + 8);
    v51(v60, v62);
  }

  else
  {

    v51 = *(v41 + 8);
    v51(v40, v42);
  }

  v0[20] = v51;
  if (v63 < 0x14)
  {
    v54 = *(v0[12] + 8);
    v54(v0[16], v0[11]);
    v54(v0[17], v0[11]);

    v55 = v0[1];

    return v55();
  }

  else
  {
    v52 = swift_task_alloc();
    v0[21] = v52;
    *v52 = v0;
    v52[1] = sub_1D22B1448;
    v53 = v0[16];

    return MEMORY[0x1EEE6DC10](v53, 0, 0, 1);
  }
}

uint64_t sub_1D22B1448()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1D22B183C;
  }

  else
  {
    v5 = sub_1D22B1584;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D22B1584()
{
  v29 = v0;
  sub_1D2872718();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[6];
  if (v3)
  {
    v26 = v0[11];
    v27 = v0[16];
    v10 = v0[4];
    v11 = v0[5];
    v22 = v2;
    v12 = v0[3];
    v25 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    sub_1D2871778();
    sub_1D22BA450(&qword_1EC6D94E8, MEMORY[0x1E6969530]);
    v23 = v8;
    v24 = v4;
    v15 = sub_1D28795C8();
    v17 = v16;
    (*(v10 + 8))(v11, v12);
    v18 = sub_1D23D7C84(v15, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1D226E000, v1, v22, "Rate limiter dequeuing throttled request at instant: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D38A3520](v14, -1, -1);
    MEMORY[0x1D38A3520](v13, -1, -1);

    v24(v23, v25);
    v19 = *(v7 + 8);
    v19(v27, v26);
  }

  else
  {

    v4(v8, v9);
    v19 = *(v7 + 8);
    v19(v5, v6);
  }

  v19(v0[17], v0[11]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D22B183C()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  v3(v0[16], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D22B194C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E68);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1D2878568();
  v2[9] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D22B1A20, v4, v3);
}

uint64_t sub_1D22B1A20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v3, v2, &qword_1EC6D8E68);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E30);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v6 = *(v0 + 56);
  if (v5 == 1)
  {

    sub_1D22BD238(v6, &qword_1EC6D8E68);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v11 = *(v0 + 40);
    sub_1D22BD238(v6, &qword_1EC6D8E68);
    *(v0 + 96) = sub_1D2878558();
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    v9[1] = vextq_s8(v11, v11, 8uLL);
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_1D22B1C3C;

    return MEMORY[0x1EEE6DE38]();
  }
}

uint64_t sub_1D22B1C3C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D22B1DCC;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D22B1D60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D22B1D60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22B1DCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22B1E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v19;
  v8[15] = v20;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_1D2873CB8();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v8[20] = swift_task_alloc();
  v10 = sub_1D2871818();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v8[24] = swift_task_alloc();
  v11 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v8[28] = swift_task_alloc();
  v8[29] = type metadata accessor for ImageGeneration.GenerationParameters();
  v8[30] = swift_task_alloc();
  v12 = sub_1D2872038();
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_1D2872008();
  v8[35] = v13;
  v8[36] = *(v13 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v14 = sub_1D2871E18();
  v8[39] = v14;
  v8[40] = *(v14 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9498);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D94A0);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  sub_1D2878568();
  v8[50] = sub_1D2878558();
  v16 = sub_1D28784F8();
  v8[51] = v16;
  v8[52] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D22B22CC, v16, v15);
}

size_t sub_1D22B22CC()
{
  v1 = *(v0 + 72);
  sub_1D22ADB30();
  sub_1D2357D60();

  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v0 + 80);
    sub_1D22BCFD0(0, &unk_1EC6D94C8);
    v4 = v2;
    v5 = v3;
    v6 = sub_1D2878D78();

    if (v6)
    {
      v7 = *(v0 + 72);
      sub_1D2870F78();
      v8 = sub_1D23B8344(0x8000000000000000);
      sub_1D2358C20(v8);

      *(v0 + 512) = *(v7 + 24);
      sub_1D2870F78();
      v9 = swift_task_alloc();
      *(v0 + 520) = v9;
      *v9 = v0;
      v9[1] = sub_1D22B41D8;

      return sub_1D23591EC();
    }
  }

  v11 = *(v0 + 384);
  v12 = *(v0 + 392);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v17 = *(v0 + 88);
  v76 = sub_1D23C719C();
  *(v0 + 424) = v76;
  v75 = sub_1D23C7314();
  *(v0 + 432) = v75;
  [v17 integerValue];
  sub_1D2871E08();
  v77 = sub_1D23C7044();
  *(v0 + 440) = v77;
  v71 = v15[13];
  v71(v11, *MEMORY[0x1E696E2B0], v16);
  v70 = v15[7];
  v70(v11, 0, 1, v16);
  v72 = v14;
  v18 = *(v14 + 48);
  sub_1D22BD1D0(v12, v13, &unk_1EC6D94A0);
  sub_1D22BD1D0(v11, v13 + v18, &unk_1EC6D94A0);
  v19 = v15[6];
  if (v19(v13, 1, v16) == 1)
  {
    v20 = *(v0 + 312);
    sub_1D22BD238(*(v0 + 384), &unk_1EC6D94A0);
    if (v19(v13 + v18, 1, v20) == 1)
    {
      v21 = (v0 + 352);
LABEL_14:
      sub_1D22BD238(*v21, &unk_1EC6D94A0);
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v22 = *(v0 + 312);
  sub_1D22BD1D0(*(v0 + 352), *(v0 + 376), &unk_1EC6D94A0);
  v23 = v19(v13 + v18, 1, v22);
  v24 = *(v0 + 376);
  v25 = *(v0 + 384);
  if (v23 == 1)
  {
    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    sub_1D22BD238(*(v0 + 384), &unk_1EC6D94A0);
    (*(v26 + 8))(v24, v27);
LABEL_11:
    v69 = v19;
    sub_1D22BD238(*(v0 + 352), &qword_1EC6D9498);
    goto LABEL_12;
  }

  v69 = v19;
  v73 = *(v0 + 352);
  v42 = *(v0 + 320);
  v43 = *(v0 + 328);
  v44 = *(v0 + 312);
  (*(v42 + 32))(v43, v13 + v18, v44);
  sub_1D22BA450(&qword_1EC6D94C0, MEMORY[0x1E696E2B8]);
  v45 = sub_1D2877F98();
  v46 = *(v42 + 8);
  v46(v43, v44);
  sub_1D22BD238(v25, &unk_1EC6D94A0);
  v46(v24, v44);
  sub_1D22BD238(v73, &unk_1EC6D94A0);
  if (v45)
  {
LABEL_20:
    v41 = v77;
    v40 = 1;
    if ((*(v77 + 16) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_12:
  v28 = *(v0 + 392);
  v29 = *(v0 + 368);
  v21 = (v0 + 344);
  v30 = *(v0 + 344);
  v31 = *(v0 + 312);
  v71(v29, *MEMORY[0x1E696E2A0], v31);
  v70(v29, 0, 1, v31);
  v32 = *(v72 + 48);
  sub_1D22BD1D0(v28, v30, &unk_1EC6D94A0);
  sub_1D22BD1D0(v29, v30 + v32, &unk_1EC6D94A0);
  if (v69(v30, 1, v31) == 1)
  {
    v33 = *(v0 + 312);
    sub_1D22BD238(*(v0 + 368), &unk_1EC6D94A0);
    if (v69(v30 + v32, 1, v33) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = *(v0 + 312);
    sub_1D22BD1D0(*(v0 + 344), *(v0 + 360), &unk_1EC6D94A0);
    v35 = v69(v30 + v32, 1, v34);
    v36 = *(v0 + 360);
    v37 = *(v0 + 368);
    if (v35 != 1)
    {
      v74 = *(v0 + 344);
      v66 = *(v0 + 320);
      v65 = *(v0 + 328);
      v67 = *(v0 + 312);
      (*(v66 + 32))(v65, v30 + v32, v67);
      sub_1D22BA450(&qword_1EC6D94C0, MEMORY[0x1E696E2B8]);
      v40 = sub_1D2877F98();
      v68 = *(v66 + 8);
      v68(v65, v67);
      sub_1D22BD238(v37, &unk_1EC6D94A0);
      v68(v36, v67);
      sub_1D22BD238(v74, &unk_1EC6D94A0);
      v41 = v77;
      if ((v40 & 1) != *(v77 + 16))
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v39 = *(v0 + 312);
    v38 = *(v0 + 320);
    sub_1D22BD238(*(v0 + 368), &unk_1EC6D94A0);
    (*(v38 + 8))(v36, v39);
  }

  sub_1D22BD238(*v21, &qword_1EC6D9498);
  v40 = 0;
  v41 = v77;
  if (*(v77 + 16))
  {
LABEL_21:
    swift_getKeyPath();
    v47 = swift_task_alloc();
    *(v47 + 16) = v41;
    *(v47 + 24) = v40 & 1;
    *(v0 + 40) = v41;
    sub_1D22BA450(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
    sub_1D28719D8();

    goto LABEL_22;
  }

LABEL_18:
  *(v41 + 16) = v40 & 1;
LABEL_22:
  v48 = *(v0 + 104);
  *(v0 + 35) = sub_1D27ED8C8() & 1;
  sub_1D28780A8();
  sub_1D2871EA8();
  if (v48 >> 62)
  {
    v49 = sub_1D2879368();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v78 = MEMORY[0x1E69E7CC0];
    result = sub_1D23D84C4(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      return result;
    }

    v50 = v78;
    v51 = *(v0 + 256);
    if ((v48 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v49; ++i)
      {
        MEMORY[0x1D38A1C30](i, *(v0 + 104));
        sub_1D2872048();
        v54 = *(v78 + 16);
        v53 = *(v78 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1D23D84C4(v53 > 1, v54 + 1, 1);
        }

        v55 = *(v0 + 272);
        v56 = *(v0 + 248);
        *(v78 + 16) = v54 + 1;
        (*(v51 + 32))(v78 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v54, v55, v56);
      }
    }

    else
    {
      v57 = (*(v0 + 104) + 32);
      do
      {
        v58 = *v57;
        sub_1D2872048();
        v60 = *(v78 + 16);
        v59 = *(v78 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1D23D84C4(v59 > 1, v60 + 1, 1);
        }

        v61 = *(v0 + 264);
        v62 = *(v0 + 248);
        *(v78 + 16) = v60 + 1;
        (*(v51 + 32))(v78 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v60, v61, v62);
        ++v57;
        --v49;
      }

      while (v49);
    }
  }

  v63 = swift_task_alloc();
  *(v0 + 448) = v63;
  *v63 = v0;
  v63[1] = sub_1D22B2CB8;
  v64 = *(v0 + 304);

  return sub_1D242FCF0(v50, v64, v76, v75);
}

uint64_t sub_1D22B2CB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 456) = a1;
  *(v4 + 464) = v1;

  v5 = *(v3 + 416);
  v6 = *(v3 + 408);
  if (v1)
  {
    v7 = sub_1D22B5408;
  }

  else
  {
    v7 = sub_1D22B2DFC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D22B2DFC()
{
  (*(*(v0 + 176) + 56))(*(v0 + 224), 1, 1, *(v0 + 168));
  sub_1D2870F78();
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_1D22B2ECC;
  v2 = *(v0 + 456);
  v3 = *(v0 + 35);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);

  return sub_1D238E3AC(v4, v2, v3, v5);
}

uint64_t sub_1D22B2ECC()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = v2[28];

  sub_1D22BD238(v3, &qword_1EC6D8F70);
  v4 = v2[52];
  v5 = v2[51];
  if (v0)
  {
    v6 = sub_1D22B59E4;
  }

  else
  {
    v6 = sub_1D22B304C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D22B304C()
{
  v1 = *(v0 + 240);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    *(v0 + 488) = *(*(v0 + 72) + 24);
    sub_1D2870F78();
    v4 = swift_task_alloc();
    *(v0 + 496) = v4;
    *v4 = v0;
    v4[1] = sub_1D22B38BC;

    return sub_1D2357EAC(v3, v2);
  }

  v6 = *(v0 + 480);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v9 = *(v0 + 280);
  v10 = *(*(v0 + 232) + 52);
  sub_1D2870F78();
  sub_1D2871FC8();
  v11 = MEMORY[0x1D389AA00](v1 + v10, v7);
  v58 = *(v8 + 8);
  v58(v7, v9);
  v12 = *(v0 + 240);
  if (v11)
  {
    sub_1D2362A04(v12);
    if (v6)
    {
LABEL_7:
      v56 = v6;
      v13 = *(v0 + 392);
      v14 = *(v0 + 304);
      v15 = *(v0 + 280);
      v54 = *(v0 + 240);

      v58(v14, v15);
      sub_1D22BD238(v13, &unk_1EC6D94A0);
      sub_1D22BCF70(v54, type metadata accessor for ImageGeneration.GenerationParameters);
      *(v0 + 48) = v56;
      v16 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
      {
        v17 = *(v0 + 112);

        sub_1D22BCE64();
        v18 = swift_allocError();
        *v19 = xmmword_1D287CB60;
        *(v19 + 16) = -96;
        v17(0, v18);

        v20 = *(v0 + 48);
LABEL_45:

        sub_1D22B7698(*(v0 + 72));

        v53 = *(v0 + 8);

        return v53();
      }

      sub_1D2872718();
      v30 = v56;
      v31 = sub_1D2873CA8();
      v32 = sub_1D2878A18();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = v56;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_1D226E000, v31, v32, "Failed to generate image with error: %@", v33, 0xCu);
        sub_1D22BD238(v34, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v34, -1, -1);
        MEMORY[0x1D38A3520](v33, -1, -1);
      }

      v38 = *(v0 + 136);
      v37 = *(v0 + 144);
      v39 = *(v0 + 128);

      (*(v38 + 8))(v37, v39);
      *(v0 + 56) = v56;
      v40 = v56;
      if ((swift_dynamicCast() & 1) == 0)
      {
        *(v0 + 64) = v56;
        v49 = v56;
        if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
        {
          (*(v0 + 112))(0, 0);
          v20 = v56;
        }

        else
        {
          v50 = *(v0 + 112);
          v51 = v56;
          v50(0, v56);

          v20 = v56;
        }

        goto LABEL_45;
      }

      v41 = *(v0 + 16);
      v42 = *(v0 + 24);
      v43 = *(v0 + 32);
      v44 = sub_1D2871D98();
      sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
      v45 = swift_allocError();
      v47 = v46;
      if (sub_1D22B7FC4(v41, v42, v43))
      {
        v48 = MEMORY[0x1E696E260];
LABEL_44:
        v52 = *(v0 + 112);
        (*(*(v44 - 8) + 104))(v47, *v48, v44);
        v52(0, v45);

        sub_1D22BCDC4(v41, v42, v43);
        v20 = v45;
        goto LABEL_45;
      }

      if ((v43 & 0xF0) == 0xA0)
      {
        if (!(v42 | v41) && v43 == 160)
        {
          v48 = MEMORY[0x1E696E248];
          goto LABEL_44;
        }

        if (v41 == 2 && !v42 && v43 == 160)
        {
          v48 = MEMORY[0x1E696E238];
          goto LABEL_44;
        }

        if (v41 == 5 && !v42 && v43 == 160)
        {
          v48 = MEMORY[0x1E696E268];
          goto LABEL_44;
        }

        if (v41 == 6 && !v42 && v43 == 160)
        {
          v48 = MEMORY[0x1E696E258];
          goto LABEL_44;
        }

        if (v41 == 10 && !v42 && v43 == 160)
        {
          v48 = MEMORY[0x1E696E240];
          goto LABEL_44;
        }
      }

      v48 = MEMORY[0x1E696E250];
      goto LABEL_44;
    }
  }

  else
  {
    sub_1D23655B0(v12);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v21 = *(v0 + 304);
  v22 = *(v0 + 280);
  v55 = *(v0 + 392);
  v57 = *(v0 + 240);
  v23 = *(v0 + 72);
  v24 = *(v0 + 80);

  v58(v21, v22);
  sub_1D22BD238(v55, &unk_1EC6D94A0);
  sub_1D22BCF70(v57, type metadata accessor for ImageGeneration.GenerationParameters);
  v25 = *(v23 + 32);
  *(v23 + 32) = v24;

  v26 = *(v0 + 72);
  sub_1D2870F78();
  v27 = v24;
  v28 = sub_1D23B8344(0x8000000000000000);
  sub_1D2358C20(v28);

  *(v0 + 512) = *(v26 + 24);
  sub_1D2870F78();
  v29 = swift_task_alloc();
  *(v0 + 520) = v29;
  *v29 = v0;
  v29[1] = sub_1D22B41D8;

  return sub_1D23591EC();
}

uint64_t sub_1D22B38BC()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_1D22B5FCC;
  }

  else
  {
    v5 = sub_1D22B3A10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D22B3A10()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = *(*(v0 + 232) + 52);
  sub_1D2870F78();
  sub_1D2871FC8();
  LOBYTE(v5) = MEMORY[0x1D389AA00](v5 + v6, v2);
  v54 = *(v3 + 8);
  v54(v2, v4);
  v7 = *(v0 + 240);
  if (v5)
  {
    sub_1D2362A04(v7);
    if (v1)
    {
LABEL_3:
      v52 = v1;
      v8 = *(v0 + 392);
      v9 = *(v0 + 304);
      v10 = *(v0 + 280);
      v50 = *(v0 + 240);

      v54(v9, v10);
      sub_1D22BD238(v8, &unk_1EC6D94A0);
      sub_1D22BCF70(v50, type metadata accessor for ImageGeneration.GenerationParameters);
      *(v0 + 48) = v52;
      v11 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
      {
        v12 = *(v0 + 112);

        sub_1D22BCE64();
        v13 = swift_allocError();
        *v14 = xmmword_1D287CB60;
        *(v14 + 16) = -96;
        v12(0, v13);

        v15 = *(v0 + 48);
LABEL_41:

        sub_1D22B7698(*(v0 + 72));

        v49 = *(v0 + 8);

        return v49();
      }

      sub_1D2872718();
      v26 = v52;
      v27 = sub_1D2873CA8();
      v28 = sub_1D2878A18();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = v52;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_1D226E000, v27, v28, "Failed to generate image with error: %@", v29, 0xCu);
        sub_1D22BD238(v30, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v30, -1, -1);
        MEMORY[0x1D38A3520](v29, -1, -1);
      }

      v34 = *(v0 + 136);
      v33 = *(v0 + 144);
      v35 = *(v0 + 128);

      (*(v34 + 8))(v33, v35);
      *(v0 + 56) = v52;
      v36 = v52;
      if ((swift_dynamicCast() & 1) == 0)
      {
        *(v0 + 64) = v52;
        v45 = v52;
        if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
        {
          (*(v0 + 112))(0, 0);
          v15 = v52;
        }

        else
        {
          v46 = *(v0 + 112);
          v47 = v52;
          v46(0, v52);

          v15 = v52;
        }

        goto LABEL_41;
      }

      v37 = *(v0 + 16);
      v38 = *(v0 + 24);
      v39 = *(v0 + 32);
      v40 = sub_1D2871D98();
      sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
      v41 = swift_allocError();
      v43 = v42;
      if (sub_1D22B7FC4(v37, v38, v39))
      {
        v44 = MEMORY[0x1E696E260];
LABEL_40:
        v48 = *(v0 + 112);
        (*(*(v40 - 8) + 104))(v43, *v44, v40);
        v48(0, v41);

        sub_1D22BCDC4(v37, v38, v39);
        v15 = v41;
        goto LABEL_41;
      }

      if ((v39 & 0xF0) == 0xA0)
      {
        if (!(v38 | v37) && v39 == 160)
        {
          v44 = MEMORY[0x1E696E248];
          goto LABEL_40;
        }

        if (v37 == 2 && !v38 && v39 == 160)
        {
          v44 = MEMORY[0x1E696E238];
          goto LABEL_40;
        }

        if (v37 == 5 && !v38 && v39 == 160)
        {
          v44 = MEMORY[0x1E696E268];
          goto LABEL_40;
        }

        if (v37 == 6 && !v38 && v39 == 160)
        {
          v44 = MEMORY[0x1E696E258];
          goto LABEL_40;
        }

        if (v37 == 10 && !v38 && v39 == 160)
        {
          v44 = MEMORY[0x1E696E240];
          goto LABEL_40;
        }
      }

      v44 = MEMORY[0x1E696E250];
      goto LABEL_40;
    }
  }

  else
  {
    sub_1D23655B0(v7);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v51 = *(v0 + 392);
  v53 = *(v0 + 240);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);

  v54(v16, v17);
  sub_1D22BD238(v51, &unk_1EC6D94A0);
  sub_1D22BCF70(v53, type metadata accessor for ImageGeneration.GenerationParameters);
  v20 = *(v18 + 32);
  *(v18 + 32) = v19;

  v21 = *(v0 + 72);
  sub_1D2870F78();
  v22 = v19;
  v23 = sub_1D23B8344(0x8000000000000000);
  sub_1D2358C20(v23);

  *(v0 + 512) = *(v21 + 24);
  sub_1D2870F78();
  v24 = swift_task_alloc();
  *(v0 + 520) = v24;
  *v24 = v0;
  v24[1] = sub_1D22B41D8;

  return sub_1D23591EC();
}

uint64_t sub_1D22B41D8()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_1D22B65D4;
  }

  else
  {

    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_1D22B42F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D22B42F4()
{
  v0[67] = *(v0[9] + 24);
  sub_1D2870F78();
  v1 = swift_task_alloc();
  v0[68] = v1;
  *v1 = v0;
  v1[1] = sub_1D22B43B0;

  return sub_1D2359A3C(0, 0, 0, 0, 3, 0);
}

uint64_t sub_1D22B43B0(uint64_t a1)
{
  v3 = *v2;
  v3[69] = a1;
  v3[70] = v1;

  if (v1)
  {
    v4 = v3[51];
    v5 = v3[52];
    v6 = sub_1D22B6B64;
  }

  else
  {

    v4 = v3[51];
    v5 = v3[52];
    v6 = sub_1D22B44D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D22B44D0()
{
  v1 = *(v0 + 552);
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  sub_1D2871808();
  ImageGeneration.PreviewImage.init(id:batchNumber:images:hasAlpha:)(v5, 0, v1, 0, v4);
  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = *(v0 + 192);
  if (v6 == 1)
  {

    sub_1D22BD238(v7, &qword_1EC6D9490);
LABEL_5:
    sub_1D22BCEB8();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    *(v0 + 48) = v8;
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
    {
      v11 = *(v0 + 112);

      sub_1D22BCE64();
      v12 = swift_allocError();
      *v13 = xmmword_1D287CB60;
      *(v13 + 16) = -96;
      v11(0, v12);

      v14 = *(v0 + 48);
LABEL_42:

      sub_1D22B7698(*(v0 + 72));

      v43 = *(v0 + 8);

      return v43();
    }

    sub_1D2872718();
    v15 = v8;
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v8;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D226E000, v16, v17, "Failed to generate image with error: %@", v18, 0xCu);
      sub_1D22BD238(v19, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v19, -1, -1);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);

    (*(v23 + 8))(v22, v24);
    *(v0 + 56) = v8;
    v25 = v8;
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 64) = v8;
      v39 = v8;
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
      {
        (*(v0 + 112))(0, 0);
        v14 = v8;
      }

      else
      {
        v40 = *(v0 + 112);
        v41 = v8;
        v40(0, v8);

        v14 = v8;
      }

      goto LABEL_42;
    }

    v26 = *(v0 + 16);
    v27 = *(v0 + 24);
    v28 = *(v0 + 32);
    v29 = sub_1D2871D98();
    sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
    v30 = swift_allocError();
    v32 = v31;
    if (sub_1D22B7FC4(v26, v27, v28))
    {
      v33 = MEMORY[0x1E696E260];
LABEL_41:
      v42 = *(v0 + 112);
      (*(*(v29 - 8) + 104))(v32, *v33, v29);
      v42(0, v30);

      sub_1D22BCDC4(v26, v27, v28);
      v14 = v30;
      goto LABEL_42;
    }

    if ((v28 & 0xF0) == 0xA0)
    {
      if (!(v27 | v26) && v28 == 160)
      {
        v33 = MEMORY[0x1E696E248];
        goto LABEL_41;
      }

      if (v26 == 2 && !v27 && v28 == 160)
      {
        v33 = MEMORY[0x1E696E238];
        goto LABEL_41;
      }

      if (v26 == 5 && !v27 && v28 == 160)
      {
        v33 = MEMORY[0x1E696E268];
        goto LABEL_41;
      }

      if (v26 == 6 && !v27 && v28 == 160)
      {
        v33 = MEMORY[0x1E696E258];
        goto LABEL_41;
      }

      if (v26 == 10 && !v27 && v28 == 160)
      {
        v33 = MEMORY[0x1E696E240];
        goto LABEL_41;
      }
    }

    v33 = MEMORY[0x1E696E250];
    goto LABEL_41;
  }

  v34 = *(v0 + 72);
  sub_1D22BCF0C(*(v0 + 192), *(v0 + 216));
  *(v0 + 568) = *(v34 + 24);
  sub_1D2870F78();
  v35 = swift_task_alloc();
  *(v0 + 576) = v35;
  *v35 = v0;
  v35[1] = sub_1D22B4BA8;
  v36 = *(v0 + 216);
  v37 = *(v0 + 160);

  return sub_1D235AF94(v37, v36, 0, 0, 3);
}