uint64_t sub_1D23389EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v39 - v9;
  v10 = (v8 >> 62);
  if (v8 >> 62)
  {
    goto LABEL_41;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 != result)
    {
      goto LABEL_43;
    }

LABEL_5:
    if (!v11)
    {
      goto LABEL_29;
    }

    v13 = v8 & 0xFFFFFFFFFFFFFF8;
    v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v41 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 < 0)
    {
      v13 = v8;
    }

    if (v10)
    {
      v14 = v13;
    }

    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v40 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    if (a2 >> 62)
    {
      v16 = v15;
    }

    if (v14 == v16)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v8) & 0xC000000000000001) != 0)
    {
      v46 = a2 & 0xC000000000000001;
      v47 = v8 & 0xC000000000000001;
      v44 = a2;
      v45 = (v4 + 16);
      v17 = (v4 + 8);
      v18 = 4;
      v42 = v11;
      v43 = v8;
      v19 = v48;
      while (1)
      {
        v4 = v18 - 4;
        v20 = v18 - 3;
        if (__OFADD__(v18 - 4, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        if (v47)
        {
          v21 = MEMORY[0x1D38A1C30](v18 - 4);
          if (!v46)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(v41 + 16))
          {
            goto LABEL_39;
          }

          v21 = *(v8 + 8 * v18);
          sub_1D2870F78();
          if (!v46)
          {
LABEL_24:
            if (v4 >= *(v40 + 16))
            {
              goto LABEL_40;
            }

            v22 = *(a2 + 8 * v18);
            sub_1D2870F78();
            goto LABEL_26;
          }
        }

        v22 = MEMORY[0x1D38A1C30](v18 - 4, a2);
LABEL_26:
        v23 = *v45;
        (*v45)(v19, *(v21 + 16) + *(**(v21 + 16) + 160), v3);
        v23(v7, *(v22 + 16) + *(**(v22 + 16) + 160), v3);
        LOBYTE(v4) = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        v10 = *v17;
        (*v17)(v7, v3);
        v10(v19, v3);

        if (v4)
        {
          ++v18;
          v8 = v43;
          a2 = v44;
          if (v20 != v42)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v24 = (v8 + 32);
    v25 = (a2 + 32);
    a2 = *(v41 + 16);
    v26 = *(v40 + 16);
    v43 = (v4 + 8);
    v44 = (v4 + 16);
    v27 = v11 - 1;
    while (1)
    {
      if (!a2)
      {
        goto LABEL_37;
      }

      if (!v26)
      {
        break;
      }

      v28 = *v24;
      v29 = *v25;
      v45 = v25 + 1;
      v46 = (v24 + 1);
      v30 = *v44;
      v31 = *(v28 + 16) + *(**(v28 + 16) + 160);
      v32 = v48;
      v47 = v27;
      v30(v48, v31, v3);
      v30(v7, *(v29 + 16) + *(**(v29 + 16) + 160), v3);
      sub_1D2870F78();
      sub_1D2870F78();
      v4 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      v33 = v7;
      v10 = v43;
      v34 = *v43;
      v35 = v33;
      (*v43)();
      (v34)(v32, v3);

      v27 = v47 - 1;
      if (v4)
      {
        --v26;
        --a2;
        v7 = v35;
        v25 = v45;
        v24 = v46;
        if (v47)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v36 = v8;
    v37 = sub_1D2879368();
    v8 = v36;
    v11 = v37;
  }

  v38 = v8;
  result = sub_1D2879368();
  v8 = v38;
  if (v11 == result)
  {
    goto LABEL_5;
  }

LABEL_43:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1D2338E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v37 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v38 = *(v8 + 72);
    for (i = v11 - 1; ; --i)
    {
      sub_1D233DEB0(v13, v10, type metadata accessor for PhotosPersonAsset);
      sub_1D233DEB0(v14, v7, type metadata accessor for PhotosPersonAsset);
      v16 = v10[1];
      v48[0] = *v10;
      v48[1] = v16;
      v17 = v10[3];
      v19 = *v10;
      v18 = v10[1];
      v48[2] = v10[2];
      v48[3] = v17;
      v44 = v19;
      v45 = v18;
      v20 = v10[3];
      v46 = v10[2];
      v47 = v20;
      v21 = *v7;
      v22 = v7[1];
      v23 = v7[3];
      v49[2] = v7[2];
      v49[3] = v23;
      v24 = v7[1];
      v25 = v7[2];
      v26 = *v7;
      v49[0] = v21;
      v49[1] = v24;
      v40 = v26;
      v41 = v22;
      v27 = v7[3];
      v42 = v25;
      v43 = v27;
      sub_1D22D63B0(v48, v39);
      sub_1D22D63B0(v49, v39);
      v28 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v44, &v40);
      v50[0] = v40;
      v50[1] = v41;
      v50[2] = v42;
      v50[3] = v43;
      sub_1D22D640C(v50);
      v51[0] = v44;
      v51[1] = v45;
      v51[2] = v46;
      v51[3] = v47;
      sub_1D22D640C(v51);
      if (!v28)
      {
        break;
      }

      v29 = *(v4 + 20);
      v30 = v10 + v29;
      v31 = v7 + v29;
      if ((*(v10 + v29) != *(v7 + v29) || *(v10 + v29 + 8) != *(v7 + v29 + 8)) && (sub_1D2879618() & 1) == 0)
      {
        break;
      }

      v32 = v31[24];
      if (v30[24])
      {
        if (!v31[24])
        {
          break;
        }
      }

      else
      {
        if (*(v30 + 2) != *(v31 + 2))
        {
          v32 = 1;
        }

        if (v32)
        {
          break;
        }
      }

      type metadata accessor for PhotosPersonImage();
      type metadata accessor for PlaygroundImage();
      if ((_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v33 = *(v4 + 24);
      v34 = *(v10 + v33);
      v35 = *(v7 + v33);
      sub_1D22FD9A8(v7, type metadata accessor for PhotosPersonAsset);
      sub_1D22FD9A8(v10, type metadata accessor for PhotosPersonAsset);
      if (v34 != v35)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v14 += v38;
      v13 += v38;
    }

    sub_1D22FD9A8(v7, type metadata accessor for PhotosPersonAsset);
    sub_1D22FD9A8(v10, type metadata accessor for PhotosPersonAsset);
  }

  return 0;
}

uint64_t sub_1D2339170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D2879618() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D2339200(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA158);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D38A1C30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1D38A1C30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D2878D78();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1D2878D78();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D2879368();
  }

  result = sub_1D2879368();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D23394A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1D233DEB0(v20, v17, a4);
        sub_1D233DEB0(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1D22FD9A8(v14, a6);
        sub_1D22FD9A8(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D2339640(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1D22BC8FC;

  return v5();
}

uint64_t sub_1D2339740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D2339864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1D2339938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode);
  return result;
}

uint64_t sub_1D2339A10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages);
  return result;
}

uint64_t sub_1D2339AE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2339B98()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2339C68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 32);
  return sub_1D2870F78();
}

uint64_t sub_1D2339D14()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719D8();
}

void sub_1D2339DE0(uint64_t a1, void *a2)
{
  v40 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v40);
  v39 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2878AA8();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = sub_1D263A720();
  (*(v13 + 16))(v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v15, v12);
  v42 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v43 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  aBlock[0] = a2;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  v19 = (a2 + *(*a2 + 216));
  v21 = *v19;
  v20 = v19[1];
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v21;
  *(v22 + 32) = v20;
  *(v22 + 40) = v16 & 1;
  *(v22 + 48) = sub_1D233F1F0;
  *(v22 + 56) = v18;
  swift_beginAccess();
  v23 = a2[10];
  if (v23)
  {
    sub_1D22BCFD0(0, &unk_1EC6DF5C0);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v41 = v23;
    v34 = sub_1D233F280(v41);
    v33 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
    [v33 setVariant_];
    v32[2] = sub_1D22BCFD0(0, &qword_1ED89CD50);
    v32[1] = "shareableImage()";
    (*(v35 + 104))(v37, *MEMORY[0x1E69E8098], v36);
    sub_1D2877B58();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D233B278(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
    sub_1D2879088();
    v26 = sub_1D2878AD8();
    v27 = v33;
    [v33 setResultHandlerQueue_];

    v28 = swift_allocObject();
    *(v28 + 16) = sub_1D233F26C;
    *(v28 + 24) = v22;
    aBlock[4] = sub_1D233F344;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23372C0;
    aBlock[3] = &block_descriptor_484;
    v29 = _Block_copy(aBlock);
    sub_1D2870F78();

    v30 = v34;
    [v34 exportWithOptions:v27 completionHandler:v29];
    _Block_release(v29);
    v31 = [v30 progress];
  }

  else
  {
    sub_1D233F184();
    v24 = swift_allocError();
    *v25 = 0;
    *v11 = v24;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    sub_1D233A5C4(v11, a2, v21, v20, v16 & 1, sub_1D233F1F0, v18);
    sub_1D22BD238(v11, &qword_1EC6DAE30);

    v31 = 0;
  }
}

uint64_t sub_1D233A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v53 = a7;
  v54 = a6;
  v44 = a5;
  v46 = a2;
  v47 = a4;
  v45 = a3;
  v52 = a1;
  v51 = sub_1D2873CB8();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v43[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = sub_1D28716B8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43[-v24];
  sub_1D22BD1D0(v52, &v43[-v24], &qword_1EC6DAE30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    sub_1D28724F8();
    v27 = v26;
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A18();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v26;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1D226E000, v28, v29, "Could not fetch asset export URL with error: %@", v30, 0xCu);
      sub_1D22BD238(v31, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v31, -1, -1);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    (*(v49 + 8))(v8, v51);
    v34 = type metadata accessor for PlaygroundImage();
    v35 = v50;
    (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
    v54(v35);

    return sub_1D22BD238(v35, &unk_1EC6DE5A0);
  }

  else
  {
    v37 = v20;
    (*(v20 + 32))(v22, v25, v19);
    sub_1D233AB5C(v22, v45, v47, v44 & 1, v18);
    sub_1D22BD1D0(v18, v13, &unk_1EC6DE5A0);
    v38 = type metadata accessor for PlaygroundImage();
    v39 = (*(v38 - 8) + 48);
    v40 = (*v39)(v13, 1, v38);
    v41 = (v39 + 1);
    if (v40 == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6DE5A0);
      v42 = v48;
      (*v41)(v48, 1, 1, v38);
    }

    else
    {
      v42 = v48;
      sub_1D233DEB0(v13, v48, type metadata accessor for PlaygroundImage);
      (*v41)(v42, 0, 1, v38);
      sub_1D22FD9A8(v13, type metadata accessor for PlaygroundImage);
    }

    v54(v42);
    sub_1D22BD238(v42, &unk_1EC6DE5A0);
    sub_1D22BD238(v18, &unk_1EC6DE5A0);
    return (*(v37 + 8))(v22, v19);
  }
}

uint64_t sub_1D233AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v45) = a4;
  v46 = a3;
  v44 = a2;
  v7 = sub_1D28716B8();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871658();
  v14 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v15 = sub_1D2878068();

  v16 = [v14 initWithContentsOfFile_];

  if (v16)
  {
    v17 = sub_1D28715B8();
    v18 = CGImageSourceCreateWithURL(v17, 0);

    if (v18)
    {
      v19 = CGImageSourceCopyPropertiesAtIndex(v18, 0, 0);
      if (v19)
      {
        v20 = v19;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v47 = 0;
          sub_1D2877E88();

          v21 = v47;
LABEL_13:
          v35 = type metadata accessor for PlaygroundImage();
          v36 = (a5 + v35[9]);
          *v36 = 0u;
          v36[1] = 0u;
          *(a5 + v35[10]) = xmmword_1D28809A0;
          v37 = v35[11];
          v38 = sub_1D2873AA8();
          (*(*(v38 - 8) + 56))(a5 + v37, 1, 1, v38);
          *a5 = v16;
          *(a5 + 8) = 2;
          v39 = v16;
          [v39 imageOrientation];
          *(a5 + 24) = sub_1D2878C88();
          *(a5 + 16) = v21;
          v40 = v46;
          *(a5 + 32) = v44;
          *(a5 + 40) = v40;
          *(a5 + v35[12]) = v45 & 1;
          sub_1D2870F68();
          sub_1D2871808();

          v41 = *(*(v35 - 1) + 56);

          return v41(a5, 0, 1, v35);
        }
      }

      else
      {
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  v45 = v11;
  v46 = v10;
  v22 = v13;
  sub_1D28724F8();
  v24 = v42;
  v23 = v43;
  (*(v42 + 16))(v9, a1, v43);
  v25 = sub_1D2873CA8();
  v26 = sub_1D2878A18();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v27 = 136315138;
    sub_1D233B278(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
    v28 = sub_1D28795C8();
    v30 = v29;
    (*(v24 + 8))(v9, v23);
    v31 = sub_1D23D7C84(v28, v30, &v47);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1D226E000, v25, v26, "Failed to create image from file url %s", v27, 0xCu);
    v32 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1D38A3520](v32, -1, -1);
    MEMORY[0x1D38A3520](v27, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v9, v23);
  }

  (*(v45 + 8))(v22, v46);
  v33 = type metadata accessor for PlaygroundImage();
  return (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
}

uint64_t sub_1D233B0A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles);
  return sub_1D2870F68();
}

uint64_t sub_1D233B180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle);
  return result;
}

uint64_t sub_1D233B278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D233B2C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation);
  return result;
}

uint64_t sub_1D233B398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation);
  return result;
}

uint64_t sub_1D233B470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport);
  return result;
}

uint64_t sub_1D233B548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion);
  return result;
}

uint64_t sub_1D233B620@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D233B6DC()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D233B7AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D233B898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D233B968@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
  sub_1D28719E8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1D233BA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D2879308();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D233BB38, 0, 0);
}

uint64_t sub_1D233BB38()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D2879328();
  v5 = sub_1D233B278(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D233B278(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D233BCC8;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D233BCC8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D233BE84, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D233BE84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D233BEF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D233BFE8;

  return v6(a1);
}

uint64_t sub_1D233BFE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D233C0E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExternalProviderInfoManager.WeakExternalProviderInfoManagerObserver();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_1F4DCE368;
  swift_unknownObjectWeakAssign();
  v4 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v4);
  if (*((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return swift_endAccess();
}

uint64_t sub_1D233C1C0()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D2870F78();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1D233C27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  sub_1D2871778();
  *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel__feedbackInputProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel____lazy_storage___dateFormatter) = 0;
  sub_1D2871A18();
  *(a3 + 16) = a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D2870F78();
  sub_1D28719D8();

  return a3;
}

uint64_t sub_1D233C3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28727F8();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872858();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA188);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - v17;
  v19 = *(v16 + 56);
  sub_1D233DEB0(a1, &v30 - v17, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  sub_1D233DEB0(a2, &v18[v19], type metadata accessor for ComposingViewModel.AvailabilityStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D233DEB0(v18, v12, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v32 + 8))(v12, v33);
        goto LABEL_13;
      }

      v22 = v32;
      v21 = v33;
      v23 = &v18[v19];
      v24 = v30;
      (*(v32 + 32))(v30, v23, v33);
      v25 = sub_1D28727D8();
      v26 = *(v22 + 8);
      v26(v24, v21);
      v26(v12, v21);
    }

    else
    {
      sub_1D233DEB0(v18, v14, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v31 + 8))(v14, v6);
LABEL_13:
        sub_1D22BD238(v18, &qword_1EC6DA188);
        v25 = 0;
        return v25 & 1;
      }

      v27 = v31;
      (*(v31 + 32))(v8, &v18[v19], v6);
      v25 = sub_1D2872838();
      v28 = *(v27 + 8);
      v28(v8, v6);
      v28(v14, v6);
    }

    sub_1D22FD9A8(v18, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    return v25 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_1D22FD9A8(v18, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1D233C800(uint64_t a1)
{
  v2 = type metadata accessor for Bubble(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D233B278(qword_1ED89E4E0, type metadata accessor for Bubble);
  result = MEMORY[0x1D38A1260](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D233DEB0(v12, v6, type metadata accessor for Bubble);
      sub_1D25B5CA8(v8, v6);
      sub_1D22FD9A8(v8, type metadata accessor for Bubble);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D233C990(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38A1260](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_1D2870F68();
      sub_1D25B5F28(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D233CA58(uint64_t a1, uint64_t a2)
{
  v4 = _s16AnalyticsContextV12SessionStateVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D233CBC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D22BDFF8;

  return sub_1D23191A4(v2, v3);
}

void sub_1D233CCB8()
{
  sub_1D2871DD8();
  if (v0 <= 0x3F)
  {
    sub_1D2871818();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ComposingViewModel.AvailabilityStatus(319);
      if (v2 <= 0x3F)
      {
        sub_1D2872008();
        if (v3 <= 0x3F)
        {
          _s16AnalyticsContextVMa(319);
          if (v4 <= 0x3F)
          {
            sub_1D233D0BC(319, &qword_1ED8A52A0, type metadata accessor for PlaygroundImage);
            if (v5 <= 0x3F)
            {
              sub_1D233D0BC(319, &qword_1ED8A6BB0, MEMORY[0x1E69DFFE0]);
              if (v6 <= 0x3F)
              {
                sub_1D22D0568();
                if (v7 <= 0x3F)
                {
                  sub_1D2871A28();
                  if (v8 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_1D233D0BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PersonAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonAttribute(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s16AnalyticsContextV18LatencyMeasurementOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10AppearanceVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D233D3BC()
{
  result = sub_1D2872858();
  if (v1 <= 0x3F)
  {
    result = sub_1D28727F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D233D434()
{
  result = qword_1EC6DA138;
  if (!qword_1EC6DA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA138);
  }

  return result;
}

unint64_t sub_1D233D48C()
{
  result = qword_1EC6DA140;
  if (!qword_1EC6DA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA140);
  }

  return result;
}

uint64_t sub_1D233D4E0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles) = *(v0 + 24);
  sub_1D2870F68();

  return sub_1D2307670();
}

uint64_t sub_1D233D67C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D233D6B4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F78();
}

uint64_t sub_1D233D72C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2330660(a1, v4, v5, v6);
}

unint64_t sub_1D233D7E0()
{
  result = qword_1EC6D8AD8;
  if (!qword_1EC6D8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AD8);
  }

  return result;
}

uint64_t sub_1D233D890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v20 - v12, &unk_1EC6DE5A0);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6DE5A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &unk_1EC6DE5A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D233FFEC(&v13[v15], v7, type metadata accessor for PlaygroundImage);
      v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D22FD9A8(v7, type metadata accessor for PlaygroundImage);
      sub_1D22FD9A8(v10, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v13, &unk_1EC6DE5A0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D22FD9A8(v10, type metadata accessor for PlaygroundImage);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D9AA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &unk_1EC6DE5A0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D233DB78(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D233B278(&qword_1ED8A6C10, MEMORY[0x1E696E310]);
  result = MEMORY[0x1D38A1260](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_1D25B6078(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D233DD14(uint64_t a1)
{
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D233B278(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D38A1260](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_1D25B59C8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D233DEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D233DFD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2325908(a1, v4, v5, v6, v7);
}

uint64_t sub_1D233E098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2321C8C(a1, v4, v5, v6);
}

uint64_t sub_1D233E14C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2321C8C(a1, v4, v5, v6);
}

unint64_t sub_1D233E200()
{
  result = qword_1EC6DA170;
  if (!qword_1EC6DA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA170);
  }

  return result;
}

uint64_t sub_1D233E254()
{
  v1 = *(type metadata accessor for Analytics.ImageGenerationEventPayload() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D23147B4(v2, v3);
}

uint64_t sub_1D233E2B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BDFF8;

  return sub_1D2315370(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_261Tm()
{
  v1 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v3 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_1D233E51C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BDFF8;

  return sub_1D2314A00(a1, v7, v8, v9, v1 + v6, v11, v12);
}

id sub_1D233E72C(id result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 <= 4)
  {
    if ((a3 >> 4) <= 1u || v3 == 2 || v3 == 3 || v3 == 4)
    {
      return result;
    }

    return result;
  }

  if ((a3 >> 4) > 6u)
  {
    if (v3 != 7 && v3 != 8 && v3 != 9)
    {
      return result;
    }

    return sub_1D2870F68();
  }

  if (v3 == 5)
  {
    return sub_1D2870F68();
  }

  if (v3 == 6)
  {
    return sub_1D233E7B4(result, a2, a3 & 0xF);
  }

  return result;
}

uint64_t sub_1D233E7B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return sub_1D2870F68();
  }

  return result;
}

uint64_t sub_1D233E7CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2329ACC(a1, v4, v5, v6);
}

uint64_t sub_1D233E880(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D2327948(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D233E9E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    return sub_1D2870F68();
  }

  return result;
}

uint64_t sub_1D233EA00(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D233E9E8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D233EA14()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  return sub_1D22FCFE4();
}

uint64_t sub_1D233EA7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D230577C(a1, v4, v5, v6);
}

uint64_t sub_1D233EB30()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D233EBC4(uint64_t result)
{
  if (result)
  {
    sub_1D2870F78();

    return sub_1D2870F68();
  }

  return result;
}

uint64_t sub_1D233EC1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D23B6184(a1, v4, v5, v7, v6);
}

uint64_t sub_1D233ED2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2323038(a1, v4, v5, v6);
}

void *sub_1D233EDE0(void *result)
{
  if (result >= 3)
  {
    v2 = result;

    return sub_1D2870F78();
  }

  return result;
}

void *sub_1D233EE24(void *result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

{
  return sub_1D23C3EE4(a2 + 32, a1 + 32);
}

unint64_t sub_1D233EEC8()
{
  result = qword_1ED8A3538;
  if (!qword_1ED8A3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A3538);
  }

  return result;
}

uint64_t sub_1D233EFD0(uint64_t a1)
{
  v3 = *(sub_1D2871DD8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D2782248(a1, v1 + v4, v5);
}

unint64_t sub_1D233F184()
{
  result = qword_1EC6E0FC0;
  if (!qword_1EC6E0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0FC0);
  }

  return result;
}

uint64_t sub_1D233F1F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);

  return sub_1D263E72C(a1);
}

id sub_1D233F280(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() exportRequestForAsset:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D233F34C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2325628(a1, v4, v5, v7, v6);
}

uint64_t sub_1D233F40C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2404E50(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_496Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1D2871CA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D233F64C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2403EAC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D233F75C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BC8FC;

  return sub_1D2336548(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1D233F944()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for PlaygroundImage() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D22BDFF8;

  return sub_1D230FA6C(v0 + v3, v7, v0 + v6);
}

uint64_t sub_1D233FA94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D2339640(a1, v4);
}

uint64_t sub_1D233FC98()
{
  v2 = *(sub_1D2872438() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D22BDFF8;

  return sub_1D2317A58(v4, v0 + v3);
}

uint64_t objectdestroy_587Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D233FE7C()
{
  v2 = *(sub_1D2872008() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D22BDFF8;

  return sub_1D231CCD4(v4, v0 + v3);
}

uint64_t sub_1D233FF54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D22BDFF8;

  return sub_1D231DA00(v2, v3);
}

uint64_t sub_1D233FFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2340054()
{
  v2 = *(type metadata accessor for PlaygroundImage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22BDFF8;

  return sub_1D231C53C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1D234019C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_356Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2340228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D232259C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D234036C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23403D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D22FBA80(a1, v4, v5, v6);
}

uint64_t sub_1D2340494()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D232BCC4();
}

uint64_t sub_1D2340558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D232C5CC(a1, v4, v5, v6);
}

uint64_t sub_1D234060C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BDFF8;

  return sub_1D232CB7C(a1, a2, v2);
}

uint64_t sub_1D23406B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D232CE80(a1, v4, v5, v6);
}

uint64_t sub_1D234076C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D232DA24(a1, v4, v5, v6);
}

uint64_t sub_1D2340820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D232DBEC(a1, v4, v5, v6);
}

uint64_t sub_1D23408D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D233BEF0(a1, v4);
}

uint64_t sub_1D234098C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA118) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D232D5CC(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_162Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2340B30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D232B1C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1D2340C14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D2870F68();

    return sub_1D2870F78();
  }

  return result;
}

uint64_t sub_1D2340C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D230ED3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D2340D40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D22BDFF8;

  return sub_1D23D1030(v2, v3, v4);
}

uint64_t sub_1D2340E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D23D0DAC(a1, v4, v5, v6);
}

void *sub_1D2340EEC(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2340F4C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D2340F98(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

uint64_t sub_1D2341048()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset);
  v5 = *v4;
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_1D233EBC4(v1);
  return sub_1D22FDA08(v5);
}

uint64_t sub_1D2341140()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1D22A58B8(v1);
  return sub_1D22A576C(v4);
}

uint64_t sub_1D23411A8(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D23411EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D2341258(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BDFF8;

  return sub_1D231FD78(a1, v1);
}

uint64_t objectdestroy_487Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2341334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D27F746C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D23413F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D23418D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D234191C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2341988@<X0>(void *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = HIBYTE(a2);
  v8 = a2 & 1;
  sub_1D2341EF0(a1, a2 & 1);
  v9 = v5 & 1;
  v10 = sub_1D2875798();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v8;
  *(v18 + 25) = v9;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *a5 = KeyPath;
  *(a5 + 8) = 0;
  *(a5 + 16) = v10;
  *(a5 + 24) = v12;
  *(a5 + 32) = v14 & 1;
  *(a5 + 40) = v16;
  *(a5 + 48) = 0xD000000000000029;
  *(a5 + 56) = 0x80000001D28B0CF0;
  *(a5 + 64) = sub_1D2341C68;
  *(a5 + 72) = v18;
  sub_1D2870F78();

  return sub_1D2870F78();
}

uint64_t sub_1D2341B04@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1D2341988(*v1, v2 | *(v1 + 8), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_1D2341B30@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = qword_1ED89E0E8;
  sub_1D2870F68();
  sub_1D2870F68();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED8B0058;
  v7 = sub_1D2876668();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1D2341EF0(v3, v4);
  v15 = sub_1D2875DA8();
  sub_1D26EF8F0(v15, (v14 & 1) == 0, v7, v9, v11 & 1, v13, a1);
  sub_1D22ED6E0(v7, v9, v11 & 1);
}

unint64_t sub_1D2341C90()
{
  result = qword_1ED8A4920;
  if (!qword_1ED8A4920)
  {
    type metadata accessor for DebugSettings(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4920);
  }

  return result;
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

uint64_t sub_1D2341CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2341D44(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D2341DA0()
{
  result = qword_1EC6D7DE8;
  if (!qword_1EC6D7DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA238);
    sub_1D2341E2C();
    sub_1D2341E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DE8);
  }

  return result;
}

unint64_t sub_1D2341E2C()
{
  result = qword_1EC6D87C0;
  if (!qword_1EC6D87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D87C0);
  }

  return result;
}

unint64_t sub_1D2341E80()
{
  result = qword_1EC6D88B8;
  if (!qword_1EC6D88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D88B8);
  }

  return result;
}

uint64_t sub_1D2341EF0(void *a1, char a2)
{
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2872068();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E696E398], v8, v10);
  v13 = sub_1D2872058();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (a2)
    {
      v18 = a1;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v15 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v18 = off_1ED8A4930;
    sub_1D2341C90();
    sub_1D28719E8();
    sub_1D2870F78();
    v14 = sub_1D23CE580();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_1D23421B0()
{
  result = qword_1EC6D79A0;
  if (!qword_1EC6D79A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA240);
    sub_1D2342268();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79A0);
  }

  return result;
}

unint64_t sub_1D2342268()
{
  result = qword_1EC6D79C8;
  if (!qword_1EC6D79C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA248);
    sub_1D2342320();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79C8);
  }

  return result;
}

unint64_t sub_1D2342320()
{
  result = qword_1EC6D7A30;
  if (!qword_1EC6D7A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA250);
    sub_1D23423D8();
    sub_1D22BB9D8(&qword_1ED89D388, &unk_1EC6DE930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A30);
  }

  return result;
}

unint64_t sub_1D23423D8()
{
  result = qword_1EC6D7AC0;
  if (!qword_1EC6D7AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA258);
    sub_1D2342490();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AC0);
  }

  return result;
}

unint64_t sub_1D2342490()
{
  result = qword_1EC6D7BA8;
  if (!qword_1EC6D7BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA260);
    sub_1D234251C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BA8);
  }

  return result;
}

unint64_t sub_1D234251C()
{
  result = qword_1ED89DCE8;
  if (!qword_1ED89DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA268);
    sub_1D22BB9D8(&qword_1ED89D2B8, &qword_1EC6DA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCE8);
  }

  return result;
}

uint64_t sub_1D23425D4()
{
  swift_getKeyPath();
  sub_1D2342C14();
  sub_1D28719E8();

  return *(v0 + 16);
}

uint64_t sub_1D2342644(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2342C14();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D234271C()
{
  swift_getKeyPath();
  sub_1D2342C14();
  sub_1D28719E8();

  return *(v0 + 17);
}

uint64_t sub_1D234278C(uint64_t result)
{
  if (*(v1 + 17) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2342C14();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2342864(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  swift_getKeyPath();
  sub_1D2342C14();
  sub_1D28719E8();

  v5 = *(v1 + 16);
  if (*(v2 + 17) != v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();

    v5 = *(v2 + 16);
  }

  if (v5 == v3)
  {
    *(v2 + 16) = v3;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2342A10()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal17NavigationManager___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NavigationManager()
{
  result = qword_1EC6D87A0;
  if (!qword_1EC6D87A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2342B00()
{
  result = sub_1D2871A28();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D2342BB0()
{
  result = qword_1EC6DA280;
  if (!qword_1EC6DA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA280);
  }

  return result;
}

unint64_t sub_1D2342C14()
{
  result = qword_1EC6D87B0;
  if (!qword_1EC6D87B0)
  {
    type metadata accessor for NavigationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D87B0);
  }

  return result;
}

uint64_t sub_1D2342CD8@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v3 = round(a2 * 0.02);
  v4 = v3 + a2 * 0.5 + a2 * 0.119999997 - a2 * 0.5;
  v5 = *(sub_1D2875188() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1D2875868();
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  *a1 = v4;
  a1[1] = v4;
  *(a1 + *(sub_1D2875178() + 20)) = v3 * 1.8;
  v8 = sub_1D28770A8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA288);
  *(a1 + *(v9 + 52)) = v8;
  *(a1 + *(v9 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA290);
  v11 = (a1 + *(result + 36));
  *v11 = v3 * 0.8;
  *(v11 + 8) = 0;
  return result;
}

unint64_t sub_1D2342E14()
{
  result = qword_1ED89DD50;
  if (!qword_1ED89DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA290);
    sub_1D2342EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD50);
  }

  return result;
}

unint64_t sub_1D2342EA0()
{
  result = qword_1ED89E098;
  if (!qword_1ED89E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E098);
  }

  return result;
}

uint64_t sub_1D2342F04@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v58 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v50 - v12;
  v14 = sub_1D2876618();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v53 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CommonMessages.Metrics();
  MEMORY[0x1EEE9AC00](v16);
  v51 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - v19;
  v21 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v50 - v23;
  v25 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v25 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED8B0058;
  v27 = sub_1D28718F8();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  v61 = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  sub_1D2871308();
  sub_1D28764B8();
  sub_1D2876438();
  v29 = sub_1D2876488();

  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = v29;
  v20[24] = 1;
  v30 = *(v16 + 28);
  sub_1D2870F78();
  sub_1D2876588();
  v31 = sub_1D2876598();
  v32 = *(*(v31 - 8) + 56);
  v32(&v20[v30], 0, 1, v31);
  sub_1D234496C(v20);
  v61 = v29;
  sub_1D23449C8();
  sub_1D2871338();
  sub_1D28764B8();
  sub_1D2876438();
  v33 = sub_1D2876488();

  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = v33;
  v20[24] = 1;
  v34 = *(v16 + 28);
  sub_1D2876588();
  v32(&v20[v34], 0, 1, v31);
  sub_1D234496C(v20);
  v61 = 0;
  sub_1D2344A1C();
  sub_1D2871338();
  v50[1] = v13;
  sub_1D28765A8();
  v35 = sub_1D28765B8();
  (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
  v36 = v59;
  sub_1D28765A8();
  v37 = sub_1D28765D8();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = v52;
  sub_1D2876578();
  v39 = sub_1D28765F8();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_1D28764B8();
  sub_1D2876438();
  v40 = sub_1D2876488();

  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = v40;
  v20[24] = 1;
  v41 = *(v16 + 28);
  sub_1D2876588();
  v32(&v20[v41], 0, 1, v31);
  sub_1D22BD1D0(&v20[v41], v56, &qword_1EC6DA2A8);
  sub_1D234496C(v20);
  sub_1D28770E8();
  sub_1D28764B8();
  sub_1D2876438();
  v42 = sub_1D2876488();

  v43 = v51;
  *(v51 + 1) = 0;
  *(v43 + 16) = 0;
  *v43 = v42;
  *(v43 + 24) = 1;
  v44 = *(v16 + 28);
  sub_1D2876588();
  v32((v43 + v44), 0, 1, v31);
  sub_1D234496C(v43);
  v45 = v53;
  sub_1D2876608();
  v47 = v54;
  v46 = v55;
  v48 = v57;
  (*(v54 + 16))(v57, v45, v55);
  (*(v47 + 56))(v48, 0, 1, v46);
  sub_1D22BD1D0(v48, v58, &qword_1EC6DA2A0);
  sub_1D2344A70();
  sub_1D2871338();
  sub_1D2344AC4(v48);
  return (*(v47 + 8))(v45, v46);
}

uint64_t sub_1D23437C4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v27);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2871318();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1D28712D8();
  v25 = v6;
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED8B0058;
  v20 = sub_1D28718F8();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  sub_1D2871308();
  sub_1D2342F04(v9);
  sub_1D28712F8();
  v22 = *(v7 + 8);
  v23 = v26;
  v22(v9, v26);
  sub_1D28712F8();
  v22(v12, v23);
  v22(v15, v23);
  return (v22)(v18, v23);
}

uint64_t sub_1D2343B7C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v27);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2871318();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1D28712D8();
  v25 = v6;
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED8B0058;
  v20 = sub_1D28718F8();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  sub_1D2871308();
  sub_1D2342F04(v9);
  sub_1D28712F8();
  v22 = *(v7 + 8);
  v23 = v26;
  v22(v9, v26);
  sub_1D28712F8();
  v22(v12, v23);
  v22(v15, v23);
  return (v22)(v18, v23);
}

uint64_t sub_1D2343F34()
{
  v0 = sub_1D2871318();
  __swift_allocate_value_buffer(v0, qword_1EC6E3B48);
  v1 = __swift_project_value_buffer(v0, qword_1EC6E3B48);
  return sub_1D2343F80(v1);
}

uint64_t sub_1D2343F80@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v27);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2871318();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1D28712D8();
  v25 = v6;
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED8B0058;
  v20 = sub_1D28718F8();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  sub_1D2871308();
  sub_1D2342F04(v9);
  sub_1D28712F8();
  v22 = *(v7 + 8);
  v23 = v26;
  v22(v9, v26);
  sub_1D28712F8();
  v22(v12, v23);
  v22(v15, v23);
  return (v22)(v18, v23);
}

uint64_t sub_1D2344338()
{
  v0 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2871318();
  __swift_allocate_value_buffer(v5, qword_1EC6E3C68);
  __swift_project_value_buffer(v5, qword_1EC6E3C68);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED8B0058;
  v7 = sub_1D28718F8();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  return sub_1D2871308();
}

uint64_t sub_1D234459C()
{
  v0 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2871318();
  __swift_allocate_value_buffer(v5, qword_1EC6E3C80);
  __swift_project_value_buffer(v5, qword_1EC6E3C80);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED8B0058;
  v7 = sub_1D28718F8();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  return sub_1D2871308();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1D2344864()
{
  result = qword_1ED8A6CE8;
  if (!qword_1ED8A6CE8)
  {
    sub_1D28712E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CE8);
  }

  return result;
}

unint64_t sub_1D23448BC()
{
  result = qword_1ED89CF48;
  if (!qword_1ED89CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CF48);
  }

  return result;
}

uint64_t type metadata accessor for CommonMessages.Metrics()
{
  result = qword_1ED8A4500;
  if (!qword_1ED8A4500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D234496C(uint64_t a1)
{
  v2 = type metadata accessor for CommonMessages.Metrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D23449C8()
{
  result = qword_1ED8A6CF8;
  if (!qword_1ED8A6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CF8);
  }

  return result;
}

unint64_t sub_1D2344A1C()
{
  result = qword_1ED8A6D00;
  if (!qword_1ED8A6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6D00);
  }

  return result;
}

unint64_t sub_1D2344A70()
{
  result = qword_1ED8A6D08;
  if (!qword_1ED8A6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6D08);
  }

  return result;
}

uint64_t sub_1D2344AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2344B54()
{
  sub_1D22F3EA0(319, &qword_1ED89D258);
  if (v0 <= 0x3F)
  {
    sub_1D22F3EA0(319, &qword_1ED8A6C30);
    if (v1 <= 0x3F)
    {
      sub_1D2344C20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2344C20()
{
  if (!qword_1ED89D288)
  {
    sub_1D2876598();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D288);
    }
  }
}

uint64_t sub_1D2344CC0()
{
  result = sub_1D2871818();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2344D74()
{
  sub_1D2344E20();
  if (v0 <= 0x3F)
  {
    _s16AnalyticsContextV12SessionStateVMa(319);
    if (v1 <= 0x3F)
    {
      sub_1D2344ED8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2344E20()
{
  if (!qword_1ED89CF98)
  {
    sub_1D2344E84();
    v0 = sub_1D2877EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF98);
    }
  }
}

unint64_t sub_1D2344E84()
{
  result = qword_1ED8A27C0[0];
  if (!qword_1ED8A27C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A27C0);
  }

  return result;
}

void sub_1D2344ED8()
{
  if (!qword_1ED89CF90)
  {
    sub_1D2879308();
    sub_1D2344E84();
    v0 = sub_1D2877EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF90);
    }
  }
}

uint64_t sub_1D2344FA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D23477AC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  return sub_1D2870F68();
}

uint64_t sub_1D23450A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v56 - v5;
  v64 = sub_1D2871818();
  v67 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  swift_getKeyPath();
  v68 = v1;
  sub_1D23477AC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v61 = *(v1 + 40);
  v19 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(&v19[v20], &v68, &qword_1EC6D9A58);
  if (v69)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    v21 = type metadata accessor for CharacterAsset();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(v18, v22 ^ 1u, 1, v21);
  }

  else
  {
    sub_1D22BD238(&v68, &qword_1EC6D9A58);
    v21 = type metadata accessor for CharacterAsset();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  type metadata accessor for CharacterAsset();
  v23 = *(*(v21 - 8) + 48);
  v65 = 1;
  v63 = v18;
  v60 = v23(v18, 1, v21);
  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(&v19[v24], v15, &qword_1EC6DA2C8);
  v25 = type metadata accessor for SceneConditioningImage();
  LODWORD(v24) = (*(*(v25 - 8) + 48))(v15, 1, v25);
  sub_1D22BD238(v15, &qword_1EC6DA2C8);
  if (v24 == 1)
  {
    sub_1D22BD1D0(&v19[v20], &v68, &qword_1EC6D9A58);
    if (v69)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v26 = type metadata accessor for PersonConditioningImage();
      v27 = swift_dynamicCast();
      (*(*(v26 - 8) + 56))(v12, v27 ^ 1u, 1, v26);
    }

    else
    {
      sub_1D22BD238(&v68, &qword_1EC6D9A58);
      v26 = type metadata accessor for PersonConditioningImage();
      (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    }

    type metadata accessor for PersonConditioningImage();
    v65 = (*(*(v26 - 8) + 48))(v12, 1, v26) == 0;
    sub_1D22BD238(v12, &qword_1EC6D9A40);
  }

  sub_1D22BD1D0(&v19[v20], &v68, &qword_1EC6D9A58);
  v59 = v69;
  sub_1D22BD238(&v68, &qword_1EC6D9A58);
  v28 = *(sub_1D22FFBF8() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v68 = v28;
  sub_1D23477AC(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v29 = *(v28 + 16);
  sub_1D2870F68();

  v58 = *(v29 + 16);

  sub_1D23969C0(v19, 0, &v68);
  v30 = sub_1D2391C00();
  v57 = v31;
  sub_1D233E6C8(&v68);
  v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v33 = *&v19[v32];
  v34 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v35 = *(*&v19[v34] + 16);
  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v37 = sub_1D2872008();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v9, &v19[v36], v37);
  (*(v38 + 56))(v9, 0, 1, v37);
  sub_1D2870F68();
  v39 = sub_1D24198DC(v9);
  v40 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext;
  swift_beginAccess();
  v41 = _s16AnalyticsContextVMa(0);
  v42 = v64;
  (*(v67 + 16))(v66, v40 + *(v41 + 24), v64);
  v43 = v62;
  sub_1D2327204(v62);
  v44 = type metadata accessor for ImageGeneration.PreviewImage(0);
  if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
  {
    sub_1D22BD238(v43, &qword_1EC6D9490);
LABEL_13:
    v46 = 0;
    v48 = 0;
    goto LABEL_14;
  }

  v45 = *(v43 + *(v44 + 32));
  sub_1D2870F68();
  sub_1D23477F4(v43, type metadata accessor for ImageGeneration.PreviewImage);
  if (!v45)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
  v46 = sub_1D2877EA8();
  v48 = v47;

LABEL_14:
  *a1 = 0x4040001010302uLL >> (8 * v61);
  *(a1 + 1) = 774;
  v49 = v59;
  *(a1 + 8) = 0;
  *(a1 + 16) = v60 == 0;
  *(a1 + 17) = v65;
  *(a1 + 18) = v49 != 0;
  *(a1 + 19) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v50 = v58;
  *(a1 + 88) = 0;
  *(a1 + 96) = v50;
  v51 = v57;
  *(a1 + 104) = v30;
  *(a1 + 112) = v51;
  *(a1 + 120) = v33;
  *(a1 + 128) = v35;
  *(a1 + 136) = 0;
  *(a1 + 144) = 5;
  *(a1 + 145) = v39;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  v52 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  (*(v67 + 32))(a1 + v52[25], v66, v42);
  v53 = (a1 + v52[26]);
  *v53 = v46;
  v53[1] = v48;
  v54 = (a1 + v52[27]);
  *v54 = 0;
  v54[1] = 0;
  return sub_1D22BD238(v63, &unk_1EC6DDDA0);
}

uint64_t sub_1D2345B60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA168);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = sub_1D2879308();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26[-v15];
  result = _s16AnalyticsContextVMa(0);
  v18 = *(v1 + *(result + 28));
  if (*(v18 + 16))
  {
    result = sub_1D25DB1BC(a1);
    if (v19)
    {
      (*(v8 + 16))(v13, *(v18 + 56) + *(v8 + 72) * result, v7);
      (*(v8 + 32))(v16, v13, v7);
      sub_1D28792C8();
      sub_1D28792F8();
      v27 = a1;
      v20 = *(v8 + 8);
      v20(v10, v7);
      v21 = sub_1D28798C8();
      sub_1D28798C8();
      v23 = v22 * 1.0e-18 + v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v2 + 8);
      v25 = v27;
      sub_1D24E8618(v27, isUniquelyReferenced_nonNull_native, v23);
      *(v2 + 8) = v28;
      sub_1D25F6800(v25, v6);
      sub_1D22BD238(v6, &qword_1EC6DA168);
      return (v20)(v16, v7);
    }
  }

  return result;
}

uint64_t sub_1D2345DF8(int a1, int a2, int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v81 = a5;
  v80 = a3;
  v85 = a2;
  v84 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v79[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v79[-v11];
  v13 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v79[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79[-v18];
  v82 = swift_allocBox();
  v21 = v20;
  sub_1D22BD1D0(a4, v12, &qword_1EC6DA160);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DA160);
    sub_1D23450A0(v16);
    v19 = v16;
  }

  else
  {
    sub_1D23466FC(v12, v19);
  }

  sub_1D23466FC(v19, v21);
  v22 = v84;
  *(v21 + 1) = v84;
  *(v21 + 2) = v85;
  v23 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext);
  swift_beginAccess();
  v24 = v23[1];
  if (*(v24 + 16) && (v25 = sub_1D25DB1BC(3), (v26 & 1) != 0))
  {
    v27 = 0;
    v28 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v28 = 0;
    v27 = 1;
  }

  *(v21 + 72) = v28;
  *(v21 + 80) = v27;
  v29 = v23[1];
  if (*(v29 + 16) && (v30 = sub_1D25DB1BC(0), (v31 & 1) != 0))
  {
    v32 = 0;
    v33 = *(*(v29 + 56) + 8 * v30);
  }

  else
  {
    v33 = 0;
    v32 = 1;
  }

  *(v21 + 24) = v33;
  *(v21 + 32) = v32;
  v34 = v23[1];
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = 1;
    v37 = sub_1D25DB1BC(1);
    if (v38)
    {
      v36 = 0;
      v35 = *(*(v34 + 56) + 8 * v37);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v36 = 1;
  }

  *(v21 + 40) = v35;
  *(v21 + 48) = v36;
  v39 = v23[1];
  if (*(v39 + 16) && (v40 = sub_1D25DB1BC(2), (v41 & 1) != 0))
  {
    v42 = 0;
    v43 = *(*(v39 + 56) + 8 * v40);
  }

  else
  {
    v43 = 0;
    v42 = 1;
  }

  swift_endAccess();
  *(v21 + 56) = v43;
  *(v21 + 64) = v42;
  swift_getKeyPath();
  v87[0] = v6;
  sub_1D23477AC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D2870F78();
  v44 = sub_1D2870F68();
  v45 = sub_1D2347454(v44, v6);

  v46 = *(v45 + 16);

  swift_getKeyPath();
  v87[0] = v6;
  sub_1D28719E8();

  v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  result = swift_beginAccess();
  v49 = *(*(v6 + v47) + 16);
  v50 = __OFADD__(v46, v49);
  v51 = v46 + v49;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 88) = v51;
    *(v21 + 144) = v80;
    *(v21 + 136) = *v23;
    v52 = sub_1D22FFBF8();
    swift_getKeyPath();
    v87[0] = v52;
    sub_1D23477AC(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    swift_beginAccess();
    v53 = *(*(v52 + 40) + 16);

    *(v21 + 152) = v53;
    *(v21 + 160) = 0;
    v54 = v81;
    v55 = v81;
    if (!v81)
    {
      swift_getKeyPath();
      v86 = v6;
      sub_1D28719E8();

      v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
      swift_beginAccess();
      sub_1D22BD1D0(v6 + v56, v87, &qword_1EC6DA108);
      v57 = v88;
      if (v88)
      {
        v58 = __swift_project_boxed_opaque_existential_1(v87, v88);
        v59 = *(v57 - 8);
        v60 = MEMORY[0x1EEE9AC00](v58);
        v62 = &v79[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v59 + 16))(v62, v60);
        v63 = sub_1D28795F8();
        if (v63)
        {
          v55 = v63;
          (*(v59 + 8))(v62, v57);
        }

        else
        {
          v55 = swift_allocError();
          (*(v59 + 32))(v64, v62, v57);
        }

        __swift_destroy_boxed_opaque_existential_0(v87);
      }

      else
      {
        sub_1D22BD238(v87, &qword_1EC6DA108);
        v55 = 0;
      }
    }

    v65 = *(v21 + 8);
    *(v21 + 8) = v55;
    v66 = v54;

    v67 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v68 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    swift_beginAccess();
    sub_1D22BD1D0(v67 + v68, v87, &qword_1EC6D9A58);
    v69 = v88;
    if (v88)
    {
      v70 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v69 = (*(v70 + 16))(v69, v70);
      v72 = v71;
      __swift_destroy_boxed_opaque_existential_0(v87);
    }

    else
    {
      sub_1D22BD238(v87, &qword_1EC6D9A58);
      v72 = 0;
    }

    v73 = sub_1D28785F8();
    v74 = v83;
    (*(*(v73 - 8) + 56))(v83, 1, 1, v73);
    sub_1D2878568();
    sub_1D2870F78();
    v75 = v82;
    sub_1D2870F78();
    v76 = sub_1D2878558();
    v77 = swift_allocObject();
    v78 = MEMORY[0x1E69E85E0];
    *(v77 + 16) = v76;
    *(v77 + 24) = v78;
    *(v77 + 32) = v6;
    *(v77 + 40) = v69;
    *(v77 + 48) = v72;
    *(v77 + 56) = v75;
    *(v77 + 64) = v22;
    sub_1D22AE01C(0, 0, v74, &unk_1D28826D8, v77);
  }

  return result;
}

unint64_t sub_1D23466A8()
{
  result = qword_1ED8A27B8;
  if (!qword_1ED8A27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A27B8);
  }

  return result;
}

uint64_t sub_1D23466FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2346760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 352) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 240) = a4;
  *(v8 + 264) = *(type metadata accessor for CuratedPrompt() - 8);
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for Analytics.ImageGenerationEventPayload();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_projectBox();
  *(v8 + 296) = sub_1D2878568();
  *(v8 + 304) = sub_1D2878558();
  *(v8 + 312) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v8 + 320) = v10;
  *(v8 + 328) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D23468A4, v10, v9);
}

uint64_t sub_1D23468A4()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    *(v0 + 336) = sub_1D23C6DDC();
    v2 = swift_task_alloc();
    *(v0 + 344) = v2;
    *v2 = v0;
    v2[1] = sub_1D23469C0;
    v3 = *(v0 + 248);

    return sub_1D2560400(v3, v1);
  }

  else
  {

    *(v0 + 354) = 2;
    v6 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D2346B78, v6, v5);
  }
}

uint64_t sub_1D23469C0(char a1)
{
  v2 = *v1;
  *(*v1 + 353) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1D2346AE8, v4, v3);
}

uint64_t sub_1D2346AE8()
{
  v1 = *(v0 + 353);
  v2 = *(v0 + 336);

  *(v0 + 354) = v1;
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2346B78, v4, v3);
}

uint64_t sub_1D2346B78()
{
  v1 = *(v0 + 354);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  swift_beginAccess();
  *(v3 + 19) = v1;
  swift_beginAccess();
  sub_1D2347724(v3, v2, type metadata accessor for Analytics.ImageGenerationEventPayload);
  sub_1D279C0D0(v2);
  sub_1D23477F4(v2, type metadata accessor for Analytics.ImageGenerationEventPayload);
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 264);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v21 = *(v0 + 272);
    sub_1D2870F68();
    swift_beginAccess();
    v20 = *(v6 + 72);
    do
    {
      v8 = *(v0 + 288);
      v9 = *(v0 + 272);
      v10 = *(v0 + 352);
      sub_1D2347724(v7, v9, type metadata accessor for CuratedPrompt);
      v11 = *v8;
      v12 = *v9;
      v13 = *(v21 + 8);
      sub_1D2870F68();
      sub_1D23477F4(v9, type metadata accessor for CuratedPrompt);
      *(v0 + 88) = &type metadata for Analytics.BubbleUsagePayload;
      *(v0 + 96) = &off_1F4DC4340;
      v14 = swift_allocObject();
      *(v0 + 64) = v14;
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      *(v14 + 32) = v13;
      *(v14 + 40) = v10;
      sub_1D2870F68();
      v15 = sub_1D2878068();
      sub_1D22D7044(v0 + 64, v0 + 104);
      v16 = swift_allocObject();
      sub_1D227268C((v0 + 104), v16 + 16);
      *(v0 + 48) = sub_1D234778C;
      *(v0 + 56) = v16;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_1D2346E8C;
      *(v0 + 40) = &block_descriptor_2;
      v17 = _Block_copy((v0 + 16));

      AnalyticsSendEventLazy();

      _Block_release(v17);

      __swift_destroy_boxed_opaque_existential_0(v0 + 64);
      v7 += v20;
      --v5;
    }

    while (v5);
  }

  v18 = *(v0 + 8);

  return v18();
}

id sub_1D2346E8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1D2870F78();
  v3 = v1(v2);

  if (v3)
  {
    sub_1D22ED23C();
    v4 = sub_1D2877E78();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t *sub_1D2346F18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1D2870F78();
    v8 = sub_1D2346FB4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D2346FB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE00);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v38 - v9;
  v10 = sub_1D2871818();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v13 = *(a3 + 64);
  v42 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v50 = a4;
  v45 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  v46 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  result = swift_beginAccess();
  v18 = 0;
  v19 = 0;
  v20 = (v14 + 63) >> 6;
  v44 = v11 + 16;
  v47 = v11;
  v48 = v7;
  v51 = (v11 + 8);
  v52 = v20;
  while (1)
  {
    v41 = v18;
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v21 = __clz(__rbit64(v16));
      v54 = (v16 - 1) & v16;
LABEL_11:
      v24 = v21 | (v19 << 6);
      v25 = v53;
      v26 = *(v47 + 16);
      v27 = v55;
      v26(v55, v53[6] + *(v47 + 72) * v24, v10);
      v28 = v25[7];
      v43 = v24;
      v29 = *(v28 + 8 * v24);
      v30 = v56;
      v31 = v10;
      v26(v56, v27, v10);
      *(v30 + *(v49 + 48)) = v29;
      swift_getKeyPath();
      v32 = v50;
      v57 = v50;
      sub_1D23477AC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      swift_retain_n();
      sub_1D28719E8();

      v33 = *(v32 + v45);
      v34 = v48;
      sub_1D22BD1D0(v30, v48, &qword_1EC6DDE00);
      sub_1D2870F68();

      if (!*(v33 + 16))
      {
        break;
      }

      sub_1D25D064C(v34);
      if ((v35 & 1) == 0)
      {
        break;
      }

      sub_1D2870F78();
      sub_1D22BD238(v56, &qword_1EC6DDE00);

      v36 = *v51;
      v10 = v31;
      (*v51)(v34, v31);

      result = (v36)(v55, v31);
      v20 = v52;
      v16 = v54;
      if (!v54)
      {
        goto LABEL_6;
      }
    }

    sub_1D22BD238(v56, &qword_1EC6DDE00);
    v37 = *v51;
    v10 = v31;
    (*v51)(v34, v31);

    result = (v37)(v55, v31);
    *(v40 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v18 = v41 + 1;
    v20 = v52;
    v16 = v54;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      return sub_1D2625D68(v40, v39, v41, v53);
    }
  }

LABEL_6:
  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      return sub_1D2625D68(v40, v39, v41, v53);
    }

    v23 = *(v42 + 8 * v19);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v54 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2347454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {
    sub_1D2870F78();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_1D2870F78();
      v11 = sub_1D2346F18(v13, v8, a1, a2);
      MEMORY[0x1D38A3520](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);
  sub_1D2870F78();
  v11 = sub_1D2346FB4((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1D2347648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BC8FC;

  return sub_1D2346760(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D2347724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D23477AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23477F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.imageGenerationCharacterEditingSheet(isPresented:selectedCharacter:allowsYellowEmojiSkinTone:usesCharacterSharedStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a8;
  v45 = a9;
  v46 = a7;
  v42 = a5;
  LODWORD(v43) = a6;
  v44 = a4;
  v39 = type metadata accessor for ImageGenerationPerson();
  v12 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  sub_1D22BD1D0(v44, &v38 - v23, &qword_1EC6DA2E0);
  v40 = a3 & 1;
  v56 = a3;
  v25 = qword_1EC6D8BF8;
  v44 = a1;
  swift_retain_n();
  swift_retain_n();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC6DA2D8;
  sub_1D2870F78();
  MEMORY[0x1D389FF60](v20);
  if ((*(v12 + 48))(v16, 1, v39))
  {
    sub_1D22BD238(v16, &qword_1EC6D8F80);
    v27 = type metadata accessor for CharacterAsset();
    (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  }

  else
  {
    v28 = v38;
    sub_1D2348E28(v16, v38, type metadata accessor for ImageGenerationPerson);
    sub_1D22BD238(v16, &qword_1EC6D8F80);
    sub_1D23523A0(v19);
    sub_1D23489BC(v28);
  }

  type metadata accessor for CharacterEditingViewModel();
  swift_allocObject();
  v29 = sub_1D2653EAC(v26, v19, v42 & 1, v43 & 1);

  v30 = v41;
  sub_1D22BD1D0(v24, v41, &qword_1EC6DA2E0);
  type metadata accessor for ImageGenerationCharacterEditingView.Coordinator();
  v31 = swift_allocObject();
  v43 = v24;
  v32 = v44;
  *(v31 + 16) = v44;
  *(v31 + 24) = a2;
  *(v31 + 32) = v40;
  sub_1D234894C(v30, v31 + OBJC_IVAR____TtCV23ImagePlaygroundInternalP33_F7A31DD48C0E6047AECEDAEA9316698D35ImageGenerationCharacterEditingView11Coordinator__character);
  v55 = v31;
  sub_1D2870F78();
  sub_1D28772F8();
  v33 = v48;
  v34 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2F0);
  sub_1D2877308();
  v35 = v55;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v38 - 4) = v29;
  *(&v38 - 3) = v35;
  *(&v38 - 2) = &off_1F4DC1478;
  v48 = v29;
  sub_1D2348F34(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v43, &qword_1EC6DA2E0);

  v48 = v32;
  v49 = a2;
  v50 = v56;
  v51 = v29;
  v52 = 0;
  v53 = v33;
  v54 = v34;
  MEMORY[0x1D389F9A0](&v48, v46, &type metadata for ImageGenerationCharacterEditingView, v47);
}

uint64_t View.imageGenerationCharacterEditingSheet(isPresented:selectedCharacter:allowsYellowEmojiSkinTone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a7;
  v44 = a8;
  v45 = a6;
  LODWORD(v42) = a5;
  v43 = a4;
  v39 = type metadata accessor for ImageGenerationPerson();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  MEMORY[0x1EEE9AC00](v19);
  v41 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  sub_1D22BD1D0(v43, &v37 - v22, &qword_1EC6DA2E0);
  v40 = a3 & 1;
  v55 = a3;
  v24 = qword_1EC6D8BF8;
  v43 = a1;
  swift_retain_n();
  swift_retain_n();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1EC6DA2D8;
  sub_1D2870F78();
  MEMORY[0x1D389FF60](v19);
  if ((*(v11 + 48))(v15, 1, v39))
  {
    sub_1D22BD238(v15, &qword_1EC6D8F80);
    v26 = type metadata accessor for CharacterAsset();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  }

  else
  {
    v27 = v38;
    sub_1D2348E28(v15, v38, type metadata accessor for ImageGenerationPerson);
    sub_1D22BD238(v15, &qword_1EC6D8F80);
    sub_1D23523A0(v18);
    sub_1D23489BC(v27);
  }

  type metadata accessor for CharacterEditingViewModel();
  swift_allocObject();
  v28 = sub_1D2653EAC(v25, v18, v42 & 1, 0);

  v29 = v41;
  sub_1D22BD1D0(v23, v41, &qword_1EC6DA2E0);
  type metadata accessor for ImageGenerationCharacterEditingView.Coordinator();
  v30 = swift_allocObject();
  v42 = v23;
  v31 = v43;
  *(v30 + 16) = v43;
  *(v30 + 24) = a2;
  *(v30 + 32) = v40;
  sub_1D234894C(v29, v30 + OBJC_IVAR____TtCV23ImagePlaygroundInternalP33_F7A31DD48C0E6047AECEDAEA9316698D35ImageGenerationCharacterEditingView11Coordinator__character);
  v54 = v30;
  sub_1D2870F78();
  sub_1D28772F8();
  v32 = v47;
  v33 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2F0);
  sub_1D2877308();
  v34 = v54;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v37 - 4) = v28;
  *(&v37 - 3) = v34;
  *(&v37 - 2) = &off_1F4DC1478;
  v47 = v28;
  sub_1D2348F34(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v42, &qword_1EC6DA2E0);

  v47 = v31;
  v48 = a2;
  v49 = v55;
  v50 = v28;
  v51 = 0;
  v52 = v32;
  v53 = v33;
  MEMORY[0x1D389F9A0](&v47, v45, &type metadata for ImageGenerationCharacterEditingView, v46);
}

unint64_t sub_1D234837C()
{
  type metadata accessor for ServicesFetcher();
  v0 = swift_allocObject();
  result = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  qword_1EC6DA2D8 = v0;
  return result;
}

uint64_t sub_1D23483C8()
{

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternalP33_F7A31DD48C0E6047AECEDAEA9316698D35ImageGenerationCharacterEditingView11Coordinator__character, &qword_1EC6DA2E0);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23484B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15[0] = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v3 = type metadata accessor for CharacterEditingView();
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v3[8];
  sub_1D261ECDC(v15);
  v8 = v15[7];
  *(v7 + 6) = v15[6];
  *(v7 + 7) = v8;
  *(v7 + 16) = v16;
  v9 = v15[3];
  *(v7 + 2) = v15[2];
  *(v7 + 3) = v9;
  v10 = v15[5];
  *(v7 + 4) = v15[4];
  *(v7 + 5) = v10;
  v11 = v15[1];
  *v7 = v15[0];
  *(v7 + 1) = v11;
  type metadata accessor for CharacterEditingViewModel();
  result = sub_1D28772F8();
  *a2 = v13;
  a2[1] = v14;
  return result;
}

uint64_t sub_1D23485EC()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  v10 = *(v0 + 6);
  v5 = v7;
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D2877518();
  v2 = swift_allocObject();
  v3 = v8;
  *(v2 + 16) = v7;
  *(v2 + 32) = v3;
  *(v2 + 48) = v9;
  *(v2 + 64) = v10;
  sub_1D2348E98(&v7, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA320);
  type metadata accessor for CharacterEditingView();
  sub_1D2348ED0();
  sub_1D2348F34(&qword_1EC6DA330, type metadata accessor for CharacterEditingView);
  sub_1D2876E48();
}

uint64_t sub_1D2348780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2348F34(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2348830()
{
  swift_getKeyPath();
  sub_1D2348F34(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719D8();
}

uint64_t type metadata accessor for ImageGenerationCharacterEditingView.Coordinator()
{
  result = qword_1EC6DA2F8;
  if (!qword_1EC6DA2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D234894C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23489BC(uint64_t a1)
{
  v2 = type metadata accessor for ImageGenerationPerson();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2348A20()
{
  sub_1D2348ABC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D2348ABC()
{
  if (!qword_1EC6DA308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F80);
    v0 = sub_1D2877538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DA308);
    }
  }
}

unint64_t sub_1D2348B20()
{
  result = qword_1EC6DA310;
  if (!qword_1EC6DA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA310);
  }

  return result;
}

uint64_t sub_1D2348B74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D2348BBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2348C34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-1] - v10;
  v15[3] = type metadata accessor for CharacterAsset();
  v15[4] = sub_1D2348F34(&qword_1EC6D9A78, type metadata accessor for CharacterAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1D2348E28(a1, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
  sub_1D2352940(v15, v11);
  sub_1D22BD1D0(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternalP33_F7A31DD48C0E6047AECEDAEA9316698D35ImageGenerationCharacterEditingView11Coordinator__character, v5, &qword_1EC6DA2E0);
  sub_1D22BD1D0(v11, v8, &qword_1EC6D8F80);
  sub_1D28774F8();
  sub_1D22BD238(v5, &qword_1EC6DA2E0);
  return sub_1D22BD238(v11, &qword_1EC6D8F80);
}

uint64_t sub_1D2348E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2348ED0()
{
  result = qword_1EC6DA328;
  if (!qword_1EC6DA328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA328);
  }

  return result;
}

uint64_t sub_1D2348F34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImageGenerationPersonSelectionState.__allocating_init(selection:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection;
  v7 = type metadata accessor for ImageGenerationPerson();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_1D2871A18();
  sub_1D23491A0(a1, v4);
  ImageGenerationPersonSelectionState.selection.setter(v4);
  sub_1D22BD238(a1, &qword_1EC6D8F80);
  return v5;
}

uint64_t ImageGenerationPersonSelectionState.init(selection:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection;
  v7 = type metadata accessor for ImageGenerationPerson();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  sub_1D2871A18();
  sub_1D23491A0(a1, v5);
  ImageGenerationPersonSelectionState.selection.setter(v5);
  sub_1D22BD238(a1, &qword_1EC6D8F80);
  return v1;
}

uint64_t sub_1D23491A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImageGenerationPersonSelectionState.selection.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection;
  swift_beginAccess();
  sub_1D23491A0(v1 + v6, v5);
  v7 = sub_1D23498CC(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8F80);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2349BC8();
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D2349B3C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F80);
}

uint64_t ImageGenerationPersonSelectionState.selection.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D2349BC8();
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection;
  swift_beginAccess();
  return sub_1D23491A0(v5 + v3, a1);
}

uint64_t sub_1D234945C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2349BC8();
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection;
  swift_beginAccess();
  return sub_1D23491A0(v3 + v4, a2);
}

uint64_t sub_1D23494F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D23491A0(a1, &v6 - v3);
  return ImageGenerationPersonSelectionState.selection.setter(v4);
}

uint64_t sub_1D2349588(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection;
  swift_beginAccess();
  sub_1D2349B3C(a2, a1 + v4);
  return swift_endAccess();
}

void (*ImageGenerationPersonSelectionState.selection.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D2349BC8();
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  return sub_1D234970C;
}

void sub_1D234970C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1D28719F8();

  free(v1);
}

uint64_t ImageGenerationPersonSelectionState.deinit()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection, &qword_1EC6D8F80);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ImageGenerationPersonSelectionState.__deallocating_deinit()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection, &qword_1EC6D8F80);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23498CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D23491A0(a1, &v20 - v13);
  sub_1D23491A0(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D23491A0(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D2349DC4(&v14[v15], v7);
      v18 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D23489BC(v7);
      sub_1D23489BC(v10);
      sub_1D22BD238(v14, &qword_1EC6D8F80);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D23489BC(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6DA348);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F80);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D2349B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2349BC8()
{
  result = qword_1EC6DA340;
  if (!qword_1EC6DA340)
  {
    type metadata accessor for ImageGenerationPersonSelectionState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA340);
  }

  return result;
}

uint64_t type metadata accessor for ImageGenerationPersonSelectionState()
{
  result = qword_1EC6D8A90;
  if (!qword_1EC6D8A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2349C74()
{
  sub_1D2349D6C();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2349D6C()
{
  if (!qword_1ED8A5CA8)
  {
    type metadata accessor for ImageGenerationPerson();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A5CA8);
    }
  }
}

uint64_t sub_1D2349DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2349E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D2349E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D2349EEC()
{
  v0 = sub_1D2400188(&unk_1F4DBD4B8);
  result = swift_arrayDestroy();
  qword_1EC6DA350 = v0;
  return result;
}

uint64_t sub_1D2349F58()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = sub_1D2878068();
  v3 = [v2 length];
  v0[6] = sub_1D234AAA8;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D234AAB0;
  v0[5] = &block_descriptor_3;
  v4 = _Block_copy(v0 + 2);
  sub_1D2870F78();

  [v2 _enumerateEmojiTokensInRange_block_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  v0[16] = v6;
  v0[17] = sub_1D234AB58();
  sub_1D2870F68();

  v0[13] = v5;
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 13, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  *boxed_opaque_existential_1 = *v9;
  boxed_opaque_existential_1[1] = 0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 13));
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  sub_1D2878F38();
  v11 = v0[22];
  if (v11)
  {
    v12 = v0[21];
    v13 = *MEMORY[0x1E699BA50];
    v0[27] = v11;
    v0[28] = v12;
    v0[26] = v13;
    sub_1D234A6F4();
    if (v14)
    {
      v15 = 0;
LABEL_8:
      v25 = v0[27];
      v24 = v0[28];
      sub_1D234AC28();
      swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v25;
      *(v26 + 16) = v15;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0((v0 + 8));
      v16 = v0[1];
      goto LABEL_9;
    }

    v17 = [objc_opt_self() _emojiSetForIdentifier_];
    if (v17)
    {
      v20 = v17;
      v21 = sub_1D28783E8();

      v0[23] = v12;
      v0[24] = v11;
      v22 = swift_task_alloc();
      *(v22 + 16) = v0 + 23;
      v23 = sub_1D286430C(sub_1D234ABBC, v22, v21);
      v0[29] = 0;

      if (v23)
      {
        v15 = 1;
        goto LABEL_8;
      }

      *(v0 + 62) = *(type metadata accessor for EmojiValidator() + 20);
      sub_1D2878568();
      v0[30] = sub_1D2878558();
      v28 = sub_1D28784F8();
      v30 = v29;
      v17 = sub_1D234A3D8;
      v18 = v28;
      v19 = v30;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  v16 = v0[1];
LABEL_9:

  return v16();
}

uint64_t sub_1D234A3D8()
{

  *(v0 + 252) = sub_1D2391DAC();

  return MEMORY[0x1EEE6DFA0](sub_1D234A458, 0, 0);
}

uint64_t sub_1D234A458()
{
  if (*(v0 + 252))
  {
    if (qword_1EC6D8C00 != -1)
    {
      swift_once();
    }

    if (sub_1D25A5FF4(*(v0 + 224), *(v0 + 216), qword_1EC6DA350))
    {
      v1 = 2;
      goto LABEL_13;
    }
  }

  __swift_mutable_project_boxed_opaque_existential_1(v0 + 64, *(v0 + 88));
  sub_1D2878F38();
  v2 = *(v0 + 176);
  if (v2)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 232);
    *(v0 + 216) = v2;
    *(v0 + 224) = v3;
    sub_1D234A6F4();
    if ((v5 & 1) == 0)
    {
      v7 = [objc_opt_self() _emojiSetForIdentifier_];
      if (v7)
      {
        v10 = v7;
        v11 = sub_1D28783E8();

        *(v0 + 184) = v3;
        *(v0 + 192) = v2;
        v12 = swift_task_alloc();
        *(v12 + 16) = v0 + 184;
        v13 = sub_1D286430C(sub_1D234ABBC, v12, v11);
        *(v0 + 232) = v4;

        if (v13)
        {
          v1 = 1;
          goto LABEL_13;
        }

        *(v0 + 248) = *(type metadata accessor for EmojiValidator() + 20);
        sub_1D2878568();
        *(v0 + 240) = sub_1D2878558();
        v18 = sub_1D28784F8();
        v20 = v19;
        v7 = sub_1D234A3D8;
        v8 = v18;
        v9 = v20;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DFA0](v7, v8, v9);
    }

    v1 = 0;
LABEL_13:
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    sub_1D234AC28();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = v1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
    v6 = *(v0 + 8);
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  v6 = *(v0 + 8);
LABEL_14:

  return v6();
}

void sub_1D234A6F4()
{
  v0 = objc_opt_self();
  v1 = sub_1D2878068();
  v2 = [v0 _normalizeMultiPersonGroupToLongFormEncoding_];

  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = objc_opt_self();
  if ([v3 _isMultiPersonFamilySkinToneEmoji_])
  {
  }

  else
  {
    v4 = [v3 _supportsCoupleSkinToneSelection_];

    if (!v4)
    {
      return;
    }
  }

  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED8B0010;
  v6 = sub_1D2878068();
  v7 = [objc_opt_self() emojiTokenWithString:v6 localeData:v5];

  if (!v7)
  {
    goto LABEL_22;
  }

  if (![v7 emojiTokenRef])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!CEMEmojiTokenCreateCopyRemovingModifiers())
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  String = CEMEmojiTokenGetString();
  if (!String)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v9 = String;
  if (sub_1D28780A8() == 2644811760 && v10 == 0xA400000000000000)
  {

    return;
  }

  v11 = sub_1D2879618();

  if ((v11 & 1) == 0)
  {
    if (sub_1D28780A8() != 0xF08D80E2B1AB9FF0 || v12 != 0xAB00000000B2AB9FLL)
    {
      sub_1D2879618();

      return;
    }
  }
}

void sub_1D234A970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v16 = a1;
    v6 = [v16 string];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D28780A8();
      v10 = v9;

      swift_beginAccess();
      v11 = *(a5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1D27CC674(0, *(v11 + 2) + 1, 1, v11);
        *(a5 + 16) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_1D27CC674((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = v8;
      *(v15 + 5) = v10;
      *(a5 + 16) = v11;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_1D234AAB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  sub_1D2870F78();
  v10 = a2;
  v9(a2, a3, a4, a5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D234AB58()
{
  result = qword_1EC6D7580;
  if (!qword_1EC6D7580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7580);
  }

  return result;
}

uint64_t type metadata accessor for EmojiValidator()
{
  result = qword_1EC6D88A0;
  if (!qword_1EC6D88A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D234AC28()
{
  result = qword_1EC6DA360;
  if (!qword_1EC6DA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA360);
  }

  return result;
}

uint64_t sub_1D234ACA4()
{
  result = type metadata accessor for ImageGeneration.GenerationParameters();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D234AD20(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  return result;
}

void sub_1D234AE30(char a1)
{
  if (*(v1 + 25) == (a1 & 1))
  {
    *(v1 + 25) = a1 & 1;
    swift_getKeyPath();
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719E8();

    if ((*(v1 + 25) & 1) == 0)
    {
      v3 = sub_1D23C6DDC();
      sub_1D255B4E8(0, 0xD000000000000049, 0x80000001D28B14C0);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }
}

uint64_t sub_1D234AFF0(uint64_t result)
{
  if (*(v1 + 26) == (result & 1))
  {
    *(v1 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D234B100(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v9 = v5[1];
  if (v9)
  {
    v10 = *v5;
    sub_1D2870F68();
    sub_1D234B8A0();
    sub_1D2547B58(v10, v9);
  }

  return result;
}

uint64_t sub_1D234B300(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D234B404(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D23522F0(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D234B684(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D8F80);
  v7 = sub_1D23502EC(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8F80);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v5, &qword_1EC6D8F80);
    swift_beginAccess();
    sub_1D22D7384(v5, v1 + v6, &qword_1EC6D8F80);
    swift_endAccess();
    sub_1D234CC84();
    sub_1D22BD238(v5, &qword_1EC6D8F80);
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F80);
}

uint64_t sub_1D234B8A0()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator____lazy_storage___peoplePickerViewModel;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator____lazy_storage___peoplePickerViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator____lazy_storage___peoplePickerViewModel);
  }

  else
  {
    v2 = sub_1D234D284();
    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D234B91C()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D234B9C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return sub_1D2870F78();
}

uint64_t sub_1D234BA6C()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719D8();
}

uint64_t sub_1D234BB38(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  sub_1D2870F78();
}

uint64_t sub_1D234BB74()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  return *(v0 + 24);
}

uint64_t sub_1D234BC14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D234BCE4()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  return *(v0 + 25);
}

uint64_t sub_1D234BD84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  *a2 = *(v3 + 25);
  return result;
}

void sub_1D234BE54(uint64_t a1, char a2)
{
  *(a1 + 25) = a2;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  if ((*(a1 + 25) & 1) == 0)
  {
    v3 = sub_1D23C6DDC();
    sub_1D255B4E8(0, 0xD000000000000049, 0x80000001D28B14C0);
  }
}

uint64_t sub_1D234BF3C()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  return *(v0 + 26);
}

uint64_t sub_1D234BFDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  *a2 = *(v3 + 26);
  return result;
}

uint64_t sub_1D234C124(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__shouldDismissPeoplePickerTrigger;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D8F70);
  v7 = sub_1D2351860(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8F70);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &qword_1EC6D8F70);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70);
}

uint64_t sub_1D234C320(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__shouldDismissPeoplePickerTrigger;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v4, &qword_1EC6D8F70);
  return swift_endAccess();
}

uint64_t sub_1D234C434(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D234C4E8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D234C5F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  v4 = sub_1D2872008();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D234C6F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D234C7E8(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D234B404(v5);
}

uint64_t sub_1D234C8B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D234C950()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D234CA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D234CAC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D234B100(v1, v2);
}

uint64_t sub_1D234CB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  *v3 = a2;
  v3[1] = a3;
  sub_1D2870F68();

  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v5 = v3[1];
  if (v5)
  {
    v6 = *v3;
    sub_1D2870F68();
    sub_1D234B8A0();
    sub_1D2547B58(v6, v5);
  }

  return result;
}

uint64_t sub_1D234CC84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  swift_getKeyPath();
  v9 = v0;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  if (*(v0 + 16))
  {
    swift_getKeyPath();
    v9 = v0;
    sub_1D2870F78();
    sub_1D28719E8();

    v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
    swift_beginAccess();
    sub_1D22BD1D0(v1 + v5, v4, &qword_1EC6D8F80);
    ImageGenerationPersonSelectionState.selection.setter(v4);
  }

  sub_1D234B8A0();
  swift_getKeyPath();
  v8 = v1;
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v4, &qword_1EC6D8F80);
  sub_1D2547CB8(v4);

  return sub_1D22BD238(v4, &qword_1EC6D8F80);
}

uint64_t sub_1D234CECC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v7 = *a1;
  swift_beginAccess();
  return sub_1D22BD1D0(v9 + v7, a3, a2);
}

uint64_t sub_1D234CFD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v8 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v7 + v8, a4, a3);
}

uint64_t sub_1D234D0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1D22BD1D0(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_1D234D188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D22BD1D0(a2, &v9 - v5, &qword_1EC6D8F80);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  sub_1D22D7384(v6, a1 + v7, &qword_1EC6D8F80);
  swift_endAccess();
  sub_1D234CC84();
  return sub_1D22BD238(v6, &qword_1EC6D8F80);
}

uint64_t sub_1D234D284()
{
  v1 = v0;
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43[2] = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43[1] = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGenerationPerson();
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_servicesFetcher);
  v48 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_representationsManager);
  v49 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_sessionUndoManager);
  swift_getKeyPath();
  v55 = v0;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v17 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__allowsYellowEmojiSkinTone);
  swift_getKeyPath();
  v55 = v0;
  sub_1D28719E8();

  v18 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName + 8);
  v47 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  swift_getKeyPath();
  v55 = v0;
  sub_1D2870F68();
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  v51 = v14;
  sub_1D22BD1D0(v1 + v19, v14, &qword_1EC6D8F80);
  type metadata accessor for PeoplePickerViewModel();
  v20 = swift_allocObject();
  *(v20 + 64) = 1;
  *(v20 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + 120) = 0;
  *(v20 + 104) = 0u;
  *(v20 + 88) = 0u;
  v21 = *(v53 + 56);
  v52 = v6;
  v22 = v6;
  v23 = v48;
  v43[3] = v53 + 56;
  v44 = v21;
  v21(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson, 1, 1, v22);
  v24 = (v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel____lazy_storage___appProtectionShieldViewModel) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems) = MEMORY[0x1E69E7CC0];
  *(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people) = v25;
  sub_1D2871A18();
  v26 = v49;
  *(v20 + 24) = v16;
  *(v20 + 32) = v23;
  *(v20 + 16) = v26;
  *(v20 + 40) = v17;
  *(v20 + 41) = 1;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  if (v18)
  {
    v27 = v23;
    v28 = v47;
  }

  else
  {
    sub_1D2877FE8();
    sub_1D28718C8();
    v28 = sub_1D28780E8();
    v18 = v29;
    v27 = v23;
  }

  *(v20 + 48) = v28;
  *(v20 + 56) = v18;
  sub_1D25484FC();
  v31 = sub_1D26795F4(v30);

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v43[-2] = v20;
  v43[-1] = v31;
  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel___observationRegistrar;
  v54 = v20;
  sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  v49 = v33;
  sub_1D28719D8();

  sub_1D28719C8();
  v34 = sub_1D2870F78();
  sub_1D2350210(v34, v27, &off_1F4DCA5D8);

  sub_1D254932C();
  v35 = v50;
  v36 = v51;
  sub_1D22BD1D0(v51, v50, &qword_1EC6D8F80);
  v37 = v52;
  if ((*(v53 + 48))(v35, 1, v52) == 1)
  {
    sub_1D22BD238(v36, &qword_1EC6D8F80);
    v36 = v35;
  }

  else
  {
    v38 = v35;
    v39 = v46;
    sub_1D2351528(v38, v46, type metadata accessor for ImageGenerationPerson);
    v40 = v45;
    sub_1D23515C8(v39, v45, type metadata accessor for ImageGenerationPerson);
    v44(v40, 0, 1, v37);
    sub_1D2547CB8(v40);
    sub_1D22BD238(v40, &qword_1EC6D8F80);
    sub_1D2351664(v39, type metadata accessor for ImageGenerationPerson);
  }

  sub_1D22BD238(v36, &qword_1EC6D8F80);
  v41 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v41);
  v43[-4] = v20;
  v43[-3] = v1;
  v43[-2] = &off_1F4DC1678;
  v54 = v20;
  sub_1D28719D8();

  return v20;
}

uint64_t sub_1D234DA7C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_servicesFetcher);
  sub_1D22BD1D0(a1, &v14 - v5, &unk_1EC6DDDA0);
  swift_getKeyPath();
  v15 = v2;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D2870F78();
  sub_1D28719E8();

  v8 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__allowsYellowEmojiSkinTone);
  swift_getKeyPath();
  v15 = v2;
  sub_1D28719E8();

  LODWORD(a1) = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__usesCharacterSharedStorage);
  type metadata accessor for CharacterEditingViewModel();
  swift_allocObject();
  v9 = sub_1D2653EAC(v7, v6, v8, a1);

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_characterEditingViewModel;
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_characterEditingViewModel) = v9;

  v12 = *(v2 + v10);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v14 - 4) = v12;
    *(&v14 - 3) = v2;
    *(&v14 - 2) = &off_1F4DC1658;
    v15 = v12;
    sub_1D23522F0(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D234DD2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_servicesFetcher);
  sub_1D23515C8(a1, v10, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v22 = v2;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D2870F78();
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v12, v4);
  swift_getKeyPath();
  v21 = v2;
  sub_1D28719E8();

  v13 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  v14 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName + 8);
  type metadata accessor for FacePickerCarouselViewModel();
  swift_allocObject();
  sub_1D2870F68();
  sub_1D2482A10(v11, v10, v7, v13, v14);
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_facePickerCarouselViewModel;
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_facePickerCarouselViewModel) = v16;

  v18 = *(v2 + v15);
  if (v18)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v20[-32] = v18;
    *&v20[-24] = v2;
    *&v20[-16] = &off_1F4DC1620;
    v21 = v18;
    sub_1D23522F0(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }

  return result;
}

void sub_1D234E08C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 localIdentifier];
    if (!v7)
    {
      sub_1D28780A8();
      v7 = sub_1D2878068();
    }

    v8 = [objc_opt_self() uuidFromLocalIdentifier_];

    if (!v8)
    {
      __break(1u);
      return;
    }

    sub_1D28780A8();

    sub_1D28717A8();

    v9 = sub_1D2871818();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9) != 1)
    {
      v11 = sub_1D28717B8();
      v13 = v12;
      (*(v10 + 8))(v4, v9);
      v14 = sub_1D23C6DDC();
      sub_1D2612E14(v11, v13);

      return;
    }
  }

  else
  {
    v15 = sub_1D2871818();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  }

  sub_1D22BD238(v4, &qword_1EC6D8F70);
}

uint64_t sub_1D234E2CC(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v31 - v4;
  v5 = type metadata accessor for ImageGenerationPerson();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  swift_getKeyPath();
  v36 = v1;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v19 = v35;
  sub_1D22BD1D0(v2 + v17, v16, &qword_1EC6D8F80);
  sub_1D22BD1D0(v19, &v16[v18], &qword_1EC6D8F80);
  v20 = *(v6 + 48);
  if (v20(v16, 1, v5) == 1)
  {
    if (v20(&v16[v18], 1, v5) == 1)
    {
      return sub_1D22BD238(v16, &qword_1EC6D8F80);
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v16, v12, &qword_1EC6D8F80);
  if (v20(&v16[v18], 1, v5) == 1)
  {
    sub_1D2351664(v12, type metadata accessor for ImageGenerationPerson);
LABEL_6:
    sub_1D22BD238(v16, &qword_1EC6DA348);
LABEL_7:
    v22 = sub_1D28785F8();
    v23 = v34;
    (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
    v24 = v33;
    sub_1D22BD1D0(v19, v33, &qword_1EC6D8F80);
    sub_1D2878568();
    sub_1D2870F78();
    v25 = sub_1D2878558();
    v26 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 16) = v25;
    *(v27 + 24) = v28;
    sub_1D23516C4(v24, v27 + v26);
    *(v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    sub_1D22AE01C(0, 0, v23, &unk_1D2882E50, v27);
  }

  v29 = v31;
  sub_1D2351528(&v16[v18], v31, type metadata accessor for ImageGenerationPerson);
  v30 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v12, v29);
  sub_1D2351664(v29, type metadata accessor for ImageGenerationPerson);
  sub_1D2351664(v12, type metadata accessor for ImageGenerationPerson);
  result = sub_1D22BD238(v16, &qword_1EC6D8F80);
  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D234E7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  sub_1D2878568();
  v5[21] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D234E8C0, v7, v6);
}

uint64_t sub_1D234E8C0()
{
  v1 = *(v0 + 160);
  sub_1D22BD1D0(*(v0 + 136), v1, &qword_1EC6D8F80);
  v2 = type metadata accessor for ImageGenerationPerson();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 160);

    sub_1D22BD238(v3, &qword_1EC6D8F80);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1D22BD238(v0 + 56, &unk_1EC6E1D30);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = sub_1D23C7314();
    *(v0 + 192) = v6;
    *(v0 + 120) = type metadata accessor for _PeopleRetrieval();
    *(v0 + 128) = &off_1F4DCA8A8;
    *(v0 + 96) = sub_1D23C6DDC();
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_1D234EA94;

    return sub_1D2353BA4(v0 + 56, v6, v0 + 96);
  }
}

uint64_t sub_1D234EA94()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  __swift_destroy_boxed_opaque_existential_0(v1 + 96);
  sub_1D2351664(v2, type metadata accessor for ImageGenerationPerson);
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D234EC14, v4, v3);
}

uint64_t sub_1D234EC14()
{

  if (*(v0 + 80))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 136);
    sub_1D22D79FC((v0 + 56), v0 + 16);
    sub_1D234ECF8(v0 + 16);
    sub_1D22BD1D0(v2, v1, &qword_1EC6D8F80);
    sub_1D234B684(v1);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    sub_1D22BD238(v0 + 56, &unk_1EC6E1D30);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D234ECF8(uint64_t a1)
{
  v3 = type metadata accessor for AddImageConditioningRepresentationOperation();
  sub_1D22D7044(a1, v16);
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_representationsManager);
  v5 = v17;
  v6 = v18;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v11 + 16))(v10, v8);
  sub_1D2870F78();
  v12 = sub_1D27FDCE0(v10, v4, 0, v3, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v16);
  v13 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_sessionUndoManager);
  sub_1D2870F78();
  sub_1D27FDB14();
  sub_1D27DF058(v12, v13);
}

void sub_1D234EE7C(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot select representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1D234F048()
{
  v0 = sub_1D234B8A0();
  sub_1D23C7B7C();
  v1 = sub_1D22BF738();

  if (v1 == *(v0 + 65))
  {
    *(v0 + 65) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }

  sub_1D23C7B7C();
  v3 = sub_1D22BF738();

  if (v3)
  {
    sub_1D23C7B7C();
    v5 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D22BEAF4(sub_1D2352338, v5);
  }

  return result;
}

uint64_t sub_1D234F228(unsigned __int8 a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1D234B8A0();
    v4 = (a1 ^ 1) & 1;
    if (v4 == *(v3 + 65))
    {

      *(v3 + 65) = v4;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
      sub_1D28719D8();
    }
  }

  return result;
}

void sub_1D234F394()
{
  if (*(v0 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  else
  {
    *(v0 + 24) = 0;
  }
}

uint64_t sub_1D234F49C(_OWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-v8];
  sub_1D234E08C(a1);
  v10 = sub_1D23C6DDC();
  sub_1D255B4E8(0, 0xD00000000000002ELL, 0x80000001D28B1510);

  v11 = sub_1D23C6DDC();
  v12 = a1[1];
  v27[0] = *a1;
  v27[1] = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v27[2] = a1[2];
  v27[3] = v13;
  v23 = v15;
  v17 = a1[2];
  v16 = a1[3];
  v24 = v14;
  v25 = v17;
  v26 = v16;
  sub_1D22D63B0(v27, v28);
  sub_1D255EA98(a1, &v23);

  v28[0] = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  sub_1D22D640C(v28);
  if (*(v2 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v22[-16] = v2;
    v22[-8] = 0;
    *&v23 = v2;
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + 24) = 0;
  }

  sub_1D2871808();
  v19 = sub_1D2871818();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  sub_1D234C124(v9);
  *(&v24 + 1) = type metadata accessor for PhotosPersonAsset();
  *&v25 = sub_1D23522F0(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_1D23515C8(a1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  sub_1D2352940(&v23, v6);
  sub_1D234E2CC(v6);
  return sub_1D22BD238(v6, &qword_1EC6D8F80);
}

uint64_t sub_1D234F7FC()
{

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__shouldDismissPeoplePickerTrigger, &qword_1EC6D8F70);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson, &qword_1EC6D8F80);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D234F958()
{
  sub_1D234F7FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeoplePickerInternalCoordinator()
{
  result = qword_1EC6DA3C8;
  if (!qword_1EC6DA3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D234FA04()
{
  sub_1D234FBC4(319, &qword_1ED8A6C80, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1D2872008();
    if (v1 <= 0x3F)
    {
      sub_1D234FBC4(319, &qword_1ED8A5CA8, type metadata accessor for ImageGenerationPerson);
      if (v2 <= 0x3F)
      {
        sub_1D2871A28();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D234FBC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PeoplePickerInternalCoordinator.PresentationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditioningImageGenerationSupport.UnsupportedReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D234FD88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for ImageGenerationPerson();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1D234B684(v2);
}

uint64_t sub_1D234FEB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D234FF60()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2350030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people);
  return sub_1D2870F68();
}

uint64_t sub_1D23500E4()
{
  swift_getKeyPath();
  sub_1D23522F0(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2350210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ImageConditioningRepresentationsManager.WeakImageConditioningRepresentationsManagerObserver();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v6);
  if (*((*(a2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return swift_endAccess();
}

uint64_t sub_1D23502EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v20 - v13, &qword_1EC6D8F80);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D8F80);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D8F80);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D2351528(&v14[v15], v7, type metadata accessor for ImageGenerationPerson);
      v18 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D2351664(v7, type metadata accessor for ImageGenerationPerson);
      sub_1D2351664(v10, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v14, &qword_1EC6D8F80);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D2351664(v10, type metadata accessor for ImageGenerationPerson);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6DA348);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F80);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D2350624()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D2350660(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = v63 - v8;
  v9 = type metadata accessor for PhotosPersonAsset();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = v63 - v12;
  v13 = type metadata accessor for CharacterAsset();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v63 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v63 - v25;
  CharacterPickerItem = type metadata accessor for CreateCharacterPickerItem();
  MEMORY[0x1EEE9AC00](CharacterPickerItem);
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1D22D7044(a1, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  if (swift_dynamicCast())
  {
    sub_1D2351664(v29, type metadata accessor for CreateCharacterPickerItem);
    sub_1D234AE30(1);
    (*(v14 + 56))(v26, 1, 1, v13);
    sub_1D234DA7C(v26);
    sub_1D22BD238(v26, &unk_1EC6DDDA0);
  }

  v31 = v14;
  v32 = v1;
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator___observationRegistrar;
  v74[0] = v32;
  v63[0] = sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  v63[1] = v33;
  sub_1D28719E8();

  v73 = v32;
  v34 = (v31 + 56);
  if (*(v32 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__isGenmojiMacThemeEnabled) == 1)
  {
    sub_1D22D7044(a1, v74);
    v35 = swift_dynamicCast();
    v36 = *v34;
    if (v35)
    {
      v36(v23, 0, 1, v13);
      v37 = v66;
      sub_1D2351528(v23, v66, type metadata accessor for CharacterAsset);
      sub_1D23515C8(v37, v26, type metadata accessor for CharacterAsset);
      v36(v26, 0, 1, v13);
      sub_1D234DA7C(v26);
      sub_1D22BD238(v26, &unk_1EC6DDDA0);
      sub_1D234AE30(1);
      v38 = type metadata accessor for CharacterAsset;
LABEL_17:
      v46 = v38;
      v47 = v37;
      return sub_1D2351664(v47, v46);
    }

    v36(v23, 1, 1, v13);
    sub_1D22BD238(v23, &unk_1EC6DDDA0);
    sub_1D22D7044(a1, v74);
    v48 = v68;
    v49 = v72;
    v50 = swift_dynamicCast();
    v51 = *(v71 + 56);
    if (v50)
    {
      v51(v48, 0, 1, v49);
      v52 = v65;
      sub_1D2351528(v48, v65, type metadata accessor for PhotosPersonAsset);
      v53 = sub_1D2613014(*(v52 + 16), *(v52 + 24));
      if (v53 && (v54 = *(v53 + 16), , v54))
      {
        sub_1D234E08C(v52);
        sub_1D22D7044(a1, v74);
        v55 = v70;
        sub_1D2353914(v74, v70);
        sub_1D234E2CC(v55);
        sub_1D22BD238(v55, &qword_1EC6D8F80);
      }

      else
      {
        v61 = v73;
        sub_1D234DD2C(v52);
        if (*(v61 + 24) == 1)
        {
          *(v61 + 24) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v63[-2] = v61;
          LOBYTE(v63[-1]) = 1;
          v74[0] = v61;
          sub_1D28719D8();
        }
      }

      v46 = type metadata accessor for PhotosPersonAsset;
      v47 = v52;
      return sub_1D2351664(v47, v46);
    }

    goto LABEL_18;
  }

  sub_1D22D7044(a1, v74);
  v39 = swift_dynamicCast();
  v40 = *v34;
  if (!v39)
  {
    v40(v20, 1, 1, v13);
    sub_1D22BD238(v20, &unk_1EC6DDDA0);
    sub_1D22D7044(a1, v74);
    v48 = v69;
    v49 = v72;
    v56 = swift_dynamicCast();
    v51 = *(v71 + 56);
    if (v56)
    {
      v51(v48, 0, 1, v49);
      v37 = v64;
      sub_1D2351528(v48, v64, type metadata accessor for PhotosPersonAsset);
      v57 = sub_1D2613014(*(v37 + 16), *(v37 + 24));
      if (v57)
      {
        v58 = *(v57 + 16);

        if (v58)
        {
          sub_1D234E08C(v37);
          sub_1D22D7044(a1, v74);
          v59 = v70;
          sub_1D2353914(v74, v70);
          sub_1D234E2CC(v59);
          sub_1D22BD238(v59, &qword_1EC6D8F80);
        }
      }

      v38 = type metadata accessor for PhotosPersonAsset;
      goto LABEL_17;
    }

LABEL_18:
    v51(v48, 1, 1, v49);
    return sub_1D22BD238(v48, &unk_1EC6DDDC0);
  }

  v40(v20, 0, 1, v13);
  v41 = v67;
  sub_1D2351528(v20, v67, type metadata accessor for CharacterAsset);
  v42 = sub_1D23C6DDC();
  v43 = CharacterAsset.id.getter();
  sub_1D2612E14(v43, v44);

  sub_1D22D7044(v30, v74);
  v45 = v70;
  sub_1D2353914(v74, v70);
  sub_1D234E2CC(v45);
  sub_1D22BD238(v45, &qword_1EC6D8F80);
  v46 = type metadata accessor for CharacterAsset;
  v47 = v41;
  return sub_1D2351664(v47, v46);
}

uint64_t sub_1D2350FD8(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = type metadata accessor for PhotosPersonAsset();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v27 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for CharacterAsset();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator___observationRegistrar;
  v30[0] = v2;
  v26[1] = sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  v26[2] = v18;
  sub_1D28719E8();

  if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__isGenmojiMacThemeEnabled) & 1) == 0)
  {
    sub_1D22D7044(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    v20 = swift_dynamicCast();
    v21 = *(v15 + 56);
    if (v20)
    {
      v21(v13, 0, 1, v14);
      sub_1D2351528(v13, v17, type metadata accessor for CharacterAsset);
      sub_1D23515C8(v17, v10, type metadata accessor for CharacterAsset);
      v21(v10, 0, 1, v14);
      sub_1D234DA7C(v10);
      sub_1D22BD238(v10, &unk_1EC6DDDA0);
      sub_1D234AE30(1);
      return sub_1D2351664(v17, type metadata accessor for CharacterAsset);
    }

    else
    {
      v21(v13, 1, 1, v14);
      sub_1D22BD238(v13, &unk_1EC6DDDA0);
      sub_1D22D7044(v29, v30);
      v22 = swift_dynamicCast();
      v23 = *(v28 + 56);
      if (v22)
      {
        v23(v5, 0, 1, v6);
        v24 = v27;
        sub_1D2351528(v5, v27, type metadata accessor for PhotosPersonAsset);
        sub_1D234DD2C(v24);
        if (*(v2 + 24) == 1)
        {
          result = sub_1D2351664(v24, type metadata accessor for PhotosPersonAsset);
          *(v2 + 24) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v26[-2] = v2;
          LOBYTE(v26[-1]) = 1;
          v30[0] = v2;
          sub_1D28719D8();

          return sub_1D2351664(v24, type metadata accessor for PhotosPersonAsset);
        }
      }

      else
      {
        v23(v5, 1, 1, v6);
        return sub_1D22BD238(v5, &unk_1EC6DDDC0);
      }
    }
  }

  return result;
}

uint64_t sub_1D2351528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23515C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2351664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D23516C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2351734(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D234E7E4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D2351860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v21 - v13, &qword_1EC6D8F70);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D8F70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D8F70);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D23522F0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v14, &qword_1EC6D8F70);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6D94F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F70);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D2351B80(uint64_t a1)
{
  v2 = v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ImageGenerationPerson();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v45 = type metadata accessor for CharacterAsset();
  v49 = v45;
  v44 = sub_1D23522F0(&qword_1EC6D9A78, type metadata accessor for CharacterAsset);
  v50 = v44;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_1D23515C8(a1, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
  sub_1D2352940(v48, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    return sub_1D22BD238(v15, &qword_1EC6D8F80);
  }

  v40 = a1;
  sub_1D2351528(v15, v21, type metadata accessor for ImageGenerationPerson);
  v41 = v21;
  sub_1D23515C8(v21, v12, type metadata accessor for ImageGenerationPerson);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_getKeyPath();
  v48[0] = v2;
  sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  v26 = *(v47 + 48);
  sub_1D22BD1D0(v12, v5, &qword_1EC6D8F80);
  sub_1D22BD1D0(v2 + v25, &v5[v26], &qword_1EC6D8F80);
  if (v23(v5, 1, v16) != 1)
  {
    v30 = v43;
    sub_1D22BD1D0(v5, v43, &qword_1EC6D8F80);
    if (v23(&v5[v26], 1, v16) != 1)
    {
      v37 = v42;
      sub_1D2351528(&v5[v26], v42, type metadata accessor for ImageGenerationPerson);
      v38 = v30;
      v39 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v30, v37);
      sub_1D2351664(v37, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v12, &qword_1EC6D8F80);
      sub_1D2351664(v38, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v5, &qword_1EC6D8F80);
      v31 = v40;
      v28 = v41;
      if (v39)
      {
        return sub_1D2351664(v28, type metadata accessor for ImageGenerationPerson);
      }

      goto LABEL_9;
    }

    sub_1D22BD238(v12, &qword_1EC6D8F80);
    sub_1D2351664(v30, type metadata accessor for ImageGenerationPerson);
    v28 = v41;
LABEL_8:
    sub_1D22BD238(v5, &qword_1EC6DA348);
    v31 = v40;
LABEL_9:
    v32 = sub_1D23C6DDC();
    v33 = CharacterAsset.id.getter();
    sub_1D2612E14(v33, v34);

    v49 = v45;
    v50 = v44;
    v35 = __swift_allocate_boxed_opaque_existential_1(v48);
    sub_1D23515C8(v31, v35, type metadata accessor for CharacterAsset);
    v36 = v46;
    sub_1D2352940(v48, v46);
    sub_1D234E2CC(v36);
    v29 = v36;
    goto LABEL_10;
  }

  sub_1D22BD238(v12, &qword_1EC6D8F80);
  v27 = v23(&v5[v26], 1, v16);
  v28 = v41;
  if (v27 != 1)
  {
    goto LABEL_8;
  }

  v29 = v5;
LABEL_10:
  sub_1D22BD238(v29, &qword_1EC6D8F80);
  return sub_1D2351664(v28, type metadata accessor for ImageGenerationPerson);
}

void sub_1D23521D0()
{
  if (*(v0 + 26) == 1)
  {
    *(v0 + 26) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D23522F0(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }
}

uint64_t sub_1D23522F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23523A0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for PlaygroundImage();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  sub_1D22BD1D0(v1, v12, &qword_1EC6DA3E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DA3E0);
  }

  else
  {
    sub_1D2356210(v12, v16, type metadata accessor for ImageGenerationPerson.DemographicTraits);
    sub_1D22BD1D0(&v16[*(v13 + 20)], v6, &unk_1EC6E33C0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D23560F8(v16, type metadata accessor for ImageGenerationPerson.DemographicTraits);
      sub_1D22BD238(v6, &unk_1EC6E33C0);
    }

    else
    {
      v17 = v36;
      sub_1D2356210(v6, v36, type metadata accessor for ImageGenerationPerson.SkinTone);
      v18 = *(v35 + *(type metadata accessor for ImageGenerationPerson() + 28));
      if (v18)
      {
        v19 = v34;
        v20 = v32;
        v21 = &v32[v34[9]];
        *v21 = 0u;
        *(v21 + 1) = 0u;
        *(v20 + v19[10]) = xmmword_1D28809A0;
        v22 = v19[11];
        v23 = sub_1D2873AA8();
        (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
        *v20 = v18;
        *(v20 + 8) = 0;
        *(v20 + 24) = 1;
        *(v20 + 16) = 0;
        *(v20 + 32) = 0;
        *(v20 + 40) = 0;
        *(v20 + v19[12]) = 0;
        v24 = v18;
        sub_1D2871808();
        v25 = v37;
        sub_1D2356090(v20, v37, type metadata accessor for PlaygroundImage);
        v26 = type metadata accessor for CharacterAsset();
        v27 = v26[5];
        sub_1D2356210(v20, v25 + v27, type metadata accessor for PlaygroundImage);
        (*(v33 + 56))(v25 + v27, 0, 1, v19);
        LOBYTE(v27) = *v16;
        sub_1D23560F8(v16, type metadata accessor for ImageGenerationPerson.DemographicTraits);
        v28 = (v25 + v26[6]);
        v29 = type metadata accessor for CharacterRecipe();
        sub_1D2356210(v17, &v28[*(v29 + 20)], type metadata accessor for ImageGenerationPerson.SkinTone);
        *v28 = v27;
        *(v25 + v26[7]) = 0;
        return (*(*(v26 - 1) + 56))(v25, 0, 1, v26);
      }

      sub_1D23560F8(v17, type metadata accessor for ImageGenerationPerson.SkinTone);
      sub_1D23560F8(v16, type metadata accessor for ImageGenerationPerson.DemographicTraits);
    }
  }

  v31 = type metadata accessor for CharacterAsset();
  return (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
}

void sub_1D2352940(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v110 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v108 - v5;
  v6 = type metadata accessor for PlaygroundImage();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v108 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v108 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v108 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v108 - v16;
  v18 = type metadata accessor for CharacterAsset();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v108 - v23;
  v25 = type metadata accessor for PhotosPersonAsset();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for ImageGenerationPerson();
  v116 = *(v29 - 8);
  v117 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v114 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a1;
  sub_1D22BD1D0(a1, v124, &unk_1EC6E1D30);
  if (v125)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    v31 = swift_dynamicCast();
    (*(v26 + 56))(v24, v31 ^ 1u, 1, v25);
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      sub_1D2356210(v24, v28, type metadata accessor for PhotosPersonAsset);
      v32 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
      v33 = v113;
      (*(*(v32 - 8) + 56))(v113, 1, 1, v32);
      v34 = v28 + *(v25 + 20);
      v35 = type metadata accessor for PhotosPersonImage();
      sub_1D2356090(&v34[*(v35 + 24)], v10, type metadata accessor for PlaygroundImage);
      if (v10[8] == 2)
      {
        v36 = *v10;
        v37 = v112;
      }

      else
      {
        v57 = sub_1D262B684();
        v37 = v112;
        if (v57)
        {
          v58 = v57;
          v59 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v57 imageOrientation:sub_1D263073C(*(v10 + 6))];
          if (!v59)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v36 = v59;
        }

        else
        {
          v36 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        }
      }

      sub_1D23560F8(v10, type metadata accessor for PlaygroundImage);
      v112 = [v36 CGImage];

      v64 = v28[1];
      v111 = *v28;
      v65 = v28[7];
      if (!v65)
      {
        v74 = sub_1D2871818();
        (*(*(v74 - 8) + 56))(v37, 1, 1, v74);
        sub_1D2870F68();
        goto LABEL_35;
      }

      sub_1D2870F68();
      v66 = v65;
      v67 = [v66 localIdentifier];
      if (!v67)
      {
        sub_1D28780A8();
        v67 = sub_1D2878068();
      }

      v68 = [objc_opt_self() uuidFromLocalIdentifier_];

      if (v68)
      {
        sub_1D28780A8();

        sub_1D28717A8();

        v69 = sub_1D2871818();
        v70 = *(v69 - 8);
        if ((*(v70 + 48))(v37, 1, v69) != 1)
        {
          v71 = sub_1D28717B8();
          v73 = v72;
          (*(v70 + 8))(v37, v69);
LABEL_36:
          v75 = *(v34 + 2);
          v76 = v34[24];
          v77 = v28[4];
          if (v77)
          {
            v79 = v28[5];
            v78 = v28[6];
            v124[0] = v28[4];
            v124[1] = v79;
            v124[2] = v78;
            sub_1D2870F68();
            sub_1D2870F68();
            v77 = sub_1D24FBD9C();
            v81 = v80;
            sub_1D22BD238(v115, &unk_1EC6E1D30);
          }

          else
          {
            sub_1D22BD238(v115, &unk_1EC6E1D30);
            v81 = 0;
          }

          v82 = v33;
          v83 = v114;
          sub_1D2356158(v82, v114);
          v49 = v117;
          *(v83 + v117[5]) = 0;
          *(v83 + v49[6]) = 0;
          *(v83 + v49[7]) = v112;
          v84 = (v83 + v49[8]);
          *v84 = v111;
          v84[1] = v64;
          v50 = v83;
          v85 = (v83 + v49[9]);
          *v85 = v71;
          v85[1] = v73;
          v86 = v83 + v49[10];
          *v86 = v75;
          *(v86 + 8) = v76;
          v87 = (v83 + v49[11]);
          *v87 = v77;
          v87[1] = v81;
          sub_1D23560F8(v28, type metadata accessor for PhotosPersonAsset);
          goto LABEL_45;
        }

LABEL_35:
        sub_1D22BD238(v37, &qword_1EC6D8F70);
        v71 = 0;
        v73 = 0;
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_60;
    }
  }

  else
  {
    sub_1D22BD238(v124, &unk_1EC6E1D30);
    (*(v26 + 56))(v24, 1, 1, v25);
  }

  sub_1D22BD238(v24, &unk_1EC6DDDC0);
  v38 = v115;
  sub_1D22BD1D0(v115, v124, &unk_1EC6E1D30);
  if (v125)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    v39 = swift_dynamicCast();
    (*(v19 + 56))(v17, v39 ^ 1u, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_1D2356210(v17, v21, type metadata accessor for CharacterAsset);
      v40 = *(v18 + 24);
      v41 = v21[v40];
      v42 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
      v43 = *(v42 + 20);
      v44 = &v21[v40];
      v45 = v109;
      sub_1D2356090(v44, v109, type metadata accessor for CharacterRecipe);
      v46 = v111;
      sub_1D2356210(v45 + *(v110 + 20), &v111[v43], type metadata accessor for ImageGenerationPerson.SkinTone);
      v47 = type metadata accessor for ImageGenerationPerson.SkinTone();
      (*(*(v47 - 8) + 56))(&v46[v43], 0, 1, v47);
      *v46 = v41;
      (*(*(v42 - 8) + 56))(v46, 0, 1, v42);
      if (v21[8] == 2)
      {
        v48 = *v21;
        v49 = v117;
        v50 = v114;
      }

      else
      {
        v61 = sub_1D262B684();
        v49 = v117;
        v50 = v114;
        if (v61)
        {
          v62 = v61;
          v63 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v61 imageOrientation:sub_1D263073C(*(v21 + 6))];
          if (!v63)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v48 = v63;
        }

        else
        {
          v48 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        }
      }

      v92 = [v48 CGImage];

      sub_1D22BD238(v38, &unk_1EC6E1D30);
      sub_1D23560F8(v21, type metadata accessor for CharacterAsset);
      sub_1D2356158(v46, v50);
      *(v50 + v49[5]) = 0;
      *(v50 + v49[6]) = 0;
      *(v50 + v49[7]) = v92;
      v93 = (v50 + v49[8]);
      *v93 = 0;
      v93[1] = 0;
      v94 = (v50 + v49[9]);
      *v94 = 0;
      v94[1] = 0;
      v95 = v50 + v49[10];
      *v95 = 0;
      *(v95 + 8) = 1;
      v96 = (v50 + v49[11]);
      *v96 = 0;
      v96[1] = 0;
LABEL_45:
      v52 = v118;
LABEL_46:
      sub_1D2356210(v50, v52, type metadata accessor for ImageGenerationPerson);
      v60 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    sub_1D22BD238(v124, &unk_1EC6E1D30);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_1D22BD238(v17, &unk_1EC6DDDA0);
  sub_1D22BD1D0(v38, v119, &unk_1EC6E1D30);
  if (!v120)
  {
    sub_1D22BD238(v38, &unk_1EC6E1D30);
    sub_1D22BD238(v119, &unk_1EC6E1D30);
    v121 = 0u;
    v122 = 0u;
    v123 = 0;
    v49 = v117;
    v52 = v118;
LABEL_22:
    sub_1D22BD238(&v121, &qword_1EC6DA3E8);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0);
  v51 = swift_dynamicCast();
  v49 = v117;
  v52 = v118;
  if ((v51 & 1) == 0)
  {
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    goto LABEL_21;
  }

  if (!*(&v122 + 1))
  {
LABEL_21:
    sub_1D22BD238(v38, &unk_1EC6E1D30);
    goto LABEL_22;
  }

  sub_1D227268C(&v121, v124);
  v53 = v125;
  v54 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v55 = v108;
  (*(v54 + 24))(v53, v54);
  if (*(v55 + 8) == 2)
  {
    v56 = *v55;
LABEL_49:
    v91 = v56;
    sub_1D23560F8(v55, type metadata accessor for PlaygroundImage);
    goto LABEL_50;
  }

  v88 = sub_1D262B684();
  if (!v88)
  {
    v56 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_49;
  }

  v89 = v88;
  v90 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v88 imageOrientation:sub_1D263073C(*(v55 + 24))];
  if (v90)
  {
    v91 = v90;
    sub_1D23560F8(v55, type metadata accessor for PlaygroundImage);

LABEL_50:
    v97 = [v91 CGImage];

    if (v97)
    {
      v98 = v125;
      v99 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      v100 = (*(v99 + 32))(v98, v99);
      sub_1D22BD238(v38, &unk_1EC6E1D30);
      v101 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
      v50 = v114;
      (*(*(v101 - 8) + 56))(v114, 1, 1, v101);
      if (v100)
      {
        v102 = v97;
      }

      else
      {
        v102 = 0;
      }

      if (v100)
      {
        v103 = 0;
      }

      else
      {
        v103 = v97;
      }

      *(v50 + v49[5]) = v102;
      *(v50 + v49[6]) = v103;
      *(v50 + v49[7]) = 0;
      v104 = (v50 + v49[8]);
      *v104 = 0;
      v104[1] = 0;
      v105 = (v50 + v49[9]);
      *v105 = 0;
      v105[1] = 0;
      v106 = v50 + v49[10];
      *v106 = 0;
      *(v106 + 8) = 1;
      v107 = (v50 + v49[11]);
      *v107 = 0;
      v107[1] = 0;
      __swift_destroy_boxed_opaque_existential_0(v124);
      goto LABEL_46;
    }

    sub_1D22BD238(v38, &unk_1EC6E1D30);
    __swift_destroy_boxed_opaque_existential_0(v124);
LABEL_23:
    v60 = 1;
LABEL_47:
    (*(v116 + 56))(v52, v60, 1, v49);
    return;
  }

LABEL_62:
  __break(1u);
}

uint64_t sub_1D2353914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5 - 8];
  sub_1D22BD1D0(a1, v14, &qword_1EC6D9A70);
  if (!v15)
  {
    sub_1D22BD238(v14, &qword_1EC6D9A70);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    sub_1D22BD238(a1, &qword_1EC6D9A70);
    v9 = &unk_1EC6E1D30;
    v10 = &v16;
    goto LABEL_9;
  }

  sub_1D227268C(&v16, v19);
  sub_1D22D7044(v19, &v16);
  sub_1D2352940(&v16, v6);
  sub_1D22BD238(a1, &qword_1EC6D9A70);
  __swift_destroy_boxed_opaque_existential_0(v19);
  v7 = type metadata accessor for ImageGenerationPerson();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    sub_1D2356210(v6, a2, type metadata accessor for ImageGenerationPerson);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  v9 = &qword_1EC6D8F80;
  v10 = v6;
LABEL_9:
  sub_1D22BD238(v10, v9);
  v11 = type metadata accessor for ImageGenerationPerson();
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t sub_1D2353BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = type metadata accessor for PlaygroundImage();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v4[20] = swift_task_alloc();
  v5 = type metadata accessor for CharacterAsset();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for PhotosPersonAsset();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = sub_1D2878568();
  v4[32] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v4[33] = v8;
  v4[34] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2353DEC, v8, v7);
}

uint64_t sub_1D2353DEC()
{
  v1 = v0[17];
  v2 = type metadata accessor for ImageGenerationPerson();
  v3 = (v1 + *(v2 + 36));
  v4 = *v3;
  v0[35] = *v3;
  v5 = v3[1];
  v0[36] = v5;
  v67 = v5;
  if (v5)
  {
    v66 = v4;
    v6 = v0[16];
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = (*(v8 + 128))(v7, v8);
    v12 = v9;
    v13 = *(v9 + 16);
    if (!v13)
    {
LABEL_17:
      v29 = v0[30];
      v30 = v0[25];
      v31 = v0[26];

      (*(v31 + 56))(v29, 1, 1, v30);
      v0[37] = sub_1D2878558();
      v32 = sub_1D28784F8();
      v11 = v33;
      v0[38] = v32;
      v0[39] = v33;
      v9 = sub_1D23545C0;
      v10 = v32;

      return MEMORY[0x1EEE6DFA0](v9, v10, v11);
    }

    v14 = 0;
    v69 = v0[26];
    v70 = v0[27];
    v68 = v9 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v9, v10, v11);
      }

      sub_1D2356090(v68 + *(v69 + 72) * v14, v0[27], type metadata accessor for PhotosPersonAsset);
      v17 = *(v70 + 56);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = [v18 localIdentifier];
      if (!v19)
      {
        sub_1D28780A8();
        v19 = sub_1D2878068();
      }

      v20 = [objc_opt_self() uuidFromLocalIdentifier_];

      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = v0[24];
      sub_1D28780A8();

      sub_1D28717A8();

      v22 = sub_1D2871818();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v21, 1, v22) == 1)
      {
        goto LABEL_5;
      }

      v24 = v0[24];
      v25 = sub_1D28717B8();
      v27 = v26;
      (*(v23 + 8))(v24, v22);
      if (v25 == v66 && v67 == v27)
      {

LABEL_27:

        v55 = v0[29];
        v54 = v0[30];
        v56 = v0[26];
        v57 = v0[25];
        sub_1D2356210(v0[27], v54, type metadata accessor for PhotosPersonAsset);
        (*(v56 + 56))(v54, 0, 1, v57);

        sub_1D22BD1D0(v54, v55, &unk_1EC6DDDC0);
        v58 = (*(v56 + 48))(v55, 1, v57);
        v59 = v0[29];
        v60 = v0[30];
        if (v58 == 1)
        {
          v61 = v0[14];
          sub_1D22BD238(v0[30], &unk_1EC6DDDC0);
          sub_1D22BD238(v59, &unk_1EC6DDDC0);
          *v61 = 0u;
          *(v61 + 16) = 0u;
          *(v61 + 32) = 0;
        }

        else
        {
          v62 = v0[14];
          v62[3] = v0[25];
          v62[4] = sub_1D23561C8(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
          sub_1D2356210(v59, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
          sub_1D22BD238(v60, &unk_1EC6DDDC0);
        }

LABEL_31:

        v65 = v0[1];

        return v65();
      }

      v28 = sub_1D2879618();

      if (v28)
      {
        goto LABEL_27;
      }

LABEL_6:
      ++v14;
      v9 = sub_1D23560F8(v0[27], type metadata accessor for PhotosPersonAsset);
      if (v13 == v14)
      {
        goto LABEL_17;
      }
    }

    v15 = v0[24];
    v16 = sub_1D2871818();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_1D22BD238(v0[24], &qword_1EC6D8F70);
    goto LABEL_6;
  }

  v34 = v2;
  v35 = v0[21];
  v36 = v0[22];
  v37 = v0[20];
  sub_1D23523A0(v37);
  if ((*(v36 + 48))(v37, 1, v35) != 1)
  {
    v49 = v0[23];
    v50 = v0[20];
    v51 = v0[21];
    v52 = v0[14];

    sub_1D2356210(v50, v49, type metadata accessor for CharacterAsset);
    v52[3] = v51;
    v52[4] = sub_1D23561C8(&qword_1EC6D9A78, type metadata accessor for CharacterAsset);
    v53 = __swift_allocate_boxed_opaque_existential_1(v52);
    sub_1D2356210(v49, v53, type metadata accessor for CharacterAsset);
    goto LABEL_31;
  }

  v38 = v0[17];
  sub_1D22BD238(v0[20], &unk_1EC6DDDA0);
  v39 = *(v38 + *(v34 + 20));
  if (!v39)
  {
    v64 = v0[14];

    *(v64 + 32) = 0;
    *v64 = 0u;
    *(v64 + 16) = 0u;
    goto LABEL_31;
  }

  v41 = v0[18];
  v40 = v0[19];
  v42 = (v40 + v41[9]);
  *v42 = 0u;
  v42[1] = 0u;
  *(v40 + v41[10]) = xmmword_1D28809A0;
  v43 = v41[11];
  v44 = sub_1D2873AA8();
  (*(*(v44 - 8) + 56))(v40 + v43, 1, 1, v44);
  *v40 = v39;
  *(v40 + 8) = 0;
  *(v40 + 24) = 1;
  *(v40 + 16) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  *(v40 + v41[12]) = 0;
  v45 = v39;
  sub_1D2871808();
  v0[41] = sub_1D2878558();
  v46 = swift_task_alloc();
  v0[42] = v46;
  *v46 = v0;
  v46[1] = sub_1D2354A48;
  v47 = v0[19];

  return sub_1D28421E4((v0 + 2), v47, 1);
}

uint64_t sub_1D23545C0()
{
  v1 = v0[36];
  v2 = v0[16];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v9 = (*(v4 + 168) + **(v4 + 168));
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_1D2354704;
  v6 = v0[35];
  v7 = v0[28];

  return v9(v7, v6, v1, v3, v4);
}

uint64_t sub_1D2354704()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1D2354824, v3, v2);
}

uint64_t sub_1D2354824()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1D2354888, v1, v2);
}

uint64_t sub_1D2354888()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];

  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[30];
  v6 = v0[28];
  if (v4 == 1)
  {
    v7 = v0[14];
    sub_1D22BD238(v0[30], &unk_1EC6DDDC0);
    sub_1D22BD238(v6, &unk_1EC6DDDC0);
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0;
  }

  else
  {
    v8 = v0[14];
    v8[3] = v0[25];
    v8[4] = sub_1D23561C8(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    sub_1D2356210(v6, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
    sub_1D22BD238(v5, &unk_1EC6DDDC0);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D2354A48()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  *(v1 + 344) = *(v1 + 16);
  *(v1 + 360) = v2;
  *(v1 + 65) = *(v1 + 48);
  *(v1 + 66) = *(v1 + 64);

  *(v1 + 376) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v1 + 384) = v4;
  *(v1 + 392) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2354BAC, v4, v3);
}

uint64_t sub_1D2354BAC()
{
  v1 = *(v0 + 65);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v16 = *(v0 + 66);
    v17 = *(v0 + 65);
    v18 = *(v0 + 152);

    sub_1D23C7044();
    v19 = sub_1D27ED8C8();

    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if ((v19 | (v17 & ~v16)))
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = type metadata accessor for SceneConditioningImage();
    *(v0 + 96) = v22;
    *(v0 + 104) = sub_1D23561C8(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    sub_1D2356090(v18, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v22 + 20)) = v21;
    v12 = sub_1D28784F8();
    v14 = v24;
    v15 = sub_1D2354F58;
  }

  else
  {
    v4 = *(v0 + 360);
    v3 = *(v0 + 368);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = type metadata accessor for PersonConditioningImage();
    *(v0 + 96) = v9;
    *(v0 + 104) = sub_1D23561C8(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
    v10 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    *(v0 + 400) = v10;
    v11 = v10 + *(v9 + 20);
    sub_1D2356090(v7, v11, type metadata accessor for PlaygroundImage);
    v27.origin.x = v6 - v4 * 0.5;
    v27.origin.y = v5 - v3 * 0.5;
    v27.size.width = v4 + v4;
    v27.size.height = v3 + v3;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = 1.0;
    v28.size.height = 1.0;
    *(v11 + *(v8 + 36)) = CGRectIntersection(v27, v28);
    *(v0 + 408) = sub_1D2878558();
    v12 = sub_1D28784F8();
    v14 = v13;
    v15 = sub_1D2354E44;
  }

  return MEMORY[0x1EEE6DFA0](v15, v12, v14);
}

uint64_t sub_1D2354E44()
{
  v1 = v0[50];
  v2 = v0[25];
  v3 = v0[26];

  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = v0[48];
  v5 = v0[49];

  return MEMORY[0x1EEE6DFA0](sub_1D2354ED4, v4, v5);
}

uint64_t sub_1D2354ED4()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2354F58, v1, v0);
}

uint64_t sub_1D2354F58()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1D2354FBC, v1, v2);
}

uint64_t sub_1D2354FBC()
{
  v1 = v0[19];
  v2 = v0[14];

  v3 = v0[12];
  v4 = v0[13];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 9, v3);
  v2[3] = v3;
  v2[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  sub_1D23560F8(v1, type metadata accessor for PlaygroundImage);
  __swift_destroy_boxed_opaque_existential_0((v0 + 9));

  v7 = v0[1];

  return v7();
}

void *ImageGenerationPerson.conditioningImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImageGenerationPerson() + 20));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for ImageGenerationPerson()
{
  result = qword_1ED8A6DC8;
  if (!qword_1ED8A6DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ImageGenerationPerson.unsupportedConditioningImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImageGenerationPerson() + 24));
  v2 = v1;
  return v1;
}

void *ImageGenerationPerson.faceImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImageGenerationPerson() + 28));
  v2 = v1;
  return v1;
}

uint64_t ImageGenerationPerson.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImageGenerationPerson() + 32));
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D2355260()
{
  v1 = *(v0 + *(type metadata accessor for ImageGenerationPerson() + 36));
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D23552D4()
{
  v1 = *(v0 + *(type metadata accessor for ImageGenerationPerson() + 44));
  sub_1D2870F68();
  return v1;
}

uint64_t ImageGenerationPerson.debugDescription.getter()
{
  v1 = v0;
  v2 = 0xEE00746573734172;
  v3 = 0x6574636172616843;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000027, 0x80000001D28B1540);
  sub_1D22BD1D0(v0, v14, &qword_1EC6DA3E0);
  v15 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v47 = v16 + 48;
  v48 = v17;
  v18 = v17(v14, 1, v15);
  sub_1D22BD238(v14, &qword_1EC6DA3E0);
  if (v18 == 1 && *(v1 + *(type metadata accessor for ImageGenerationPerson() + 36) + 8))
  {
    v2 = 0x80000001D28B1600;
    v3 = 0xD000000000000011;
  }

  v19 = 7104878;
  MEMORY[0x1D38A0C50](v3, v2);

  MEMORY[0x1D38A0C50](0xD000000000000015, 0x80000001D28B1570);
  v20 = type metadata accessor for ImageGenerationPerson();
  v21 = (v1 + v20[9]);
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  else
  {
    v23 = 0xE300000000000000;
    v22 = 7104878;
  }

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v22, v23);

  MEMORY[0x1D38A0C50](0x202D202020200A0ALL, 0xEE00203A656D614ELL);
  v24 = (v1 + v20[8]);
  if (v24[1])
  {
    v25 = *v24;
    v26 = v24[1];
  }

  else
  {
    v26 = 0xE300000000000000;
    v25 = 7104878;
  }

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v25, v26);

  MEMORY[0x1D38A0C50](0xD000000000000014, 0x80000001D28B1590);
  sub_1D22BD1D0(v1, v11, &qword_1EC6DA3E0);
  v27 = v48;
  if (v48(v11, 1, v15) == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6DA3E0);
    v28 = 0xE300000000000000;
    v29 = 7104878;
  }

  else
  {
    v30 = *v11;
    sub_1D23560F8(v11, type metadata accessor for ImageGenerationPerson.DemographicTraits);
    LOBYTE(v49) = v30;
    v29 = ImageGenerationPerson.Appearance.localizedGenderDescription.getter();
    v28 = v31;
  }

  MEMORY[0x1D38A0C50](v29, v28);

  MEMORY[0x1D38A0C50](0xD000000000000013, 0x80000001D28B15B0);
  sub_1D22BD1D0(v1, v8, &qword_1EC6DA3E0);
  if (v27(v8, 1, v15) == 1)
  {
    v32 = &qword_1EC6DA3E0;
    v33 = v8;
LABEL_17:
    sub_1D22BD238(v33, v32);
    v37 = 0xE300000000000000;
    v38 = 7104878;
    goto LABEL_19;
  }

  v34 = &v8[*(v15 + 20)];
  v35 = v46;
  sub_1D22BD1D0(v34, v46, &unk_1EC6E33C0);
  sub_1D23560F8(v8, type metadata accessor for ImageGenerationPerson.DemographicTraits);
  v36 = type metadata accessor for ImageGenerationPerson.SkinTone();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    v32 = &unk_1EC6E33C0;
    v33 = v35;
    goto LABEL_17;
  }

  v49 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v50 = v39;
  sub_1D22BD06C();
  v40 = sub_1D2878F68();
  v37 = v41;

  sub_1D23560F8(v35, type metadata accessor for ImageGenerationPerson.SkinTone);
  v38 = v40;
LABEL_19:
  MEMORY[0x1D38A0C50](v38, v37);

  MEMORY[0x1D38A0C50](0xD000000000000020, 0x80000001D28B15D0);
  v42 = (v1 + v20[11]);
  if (v42[1])
  {
    v19 = *v42;
    v43 = v42[1];
  }

  else
  {
    v43 = 0xE300000000000000;
  }

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v19, v43);

  MEMORY[0x1D38A0C50](10, 0xE100000000000000);
  return v51;
}

uint64_t _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for ImageGenerationPerson();
  v14 = v13[5];
  v15 = *(a2 + v14);
  if (*(a1 + v14))
  {
    if (!v15)
    {
      goto LABEL_17;
    }

    v57 = v9;
    type metadata accessor for CGImage(0);
    v56 = v10;
    sub_1D23561C8(&qword_1ED89CDF8, type metadata accessor for CGImage);
    v16 = v15;
    v10 = v56;
    v17 = sub_1D2871C48();

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v57 = v9;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  v18 = v13[6];
  v19 = *(a1 + v18);
  v56 = a2;
  v20 = *(a2 + v18);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_17;
    }

    type metadata accessor for CGImage(0);
    sub_1D23561C8(&qword_1ED89CDF8, type metadata accessor for CGImage);
    v21 = v20;
    v22 = sub_1D2871C48();

    if ((v22 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v20)
  {
    goto LABEL_17;
  }

  v23 = *(v10 + 48);
  sub_1D22BD1D0(a1, v12, &qword_1EC6DA3E0);
  v24 = v56;
  sub_1D22BD1D0(v56, &v12[v23], &qword_1EC6DA3E0);
  v25 = *(v58 + 48);
  if (v25(v12, 1, v4) == 1)
  {
    if (v25(&v12[v23], 1, v4) == 1)
    {
      sub_1D22BD238(v12, &qword_1EC6DA3E0);
      goto LABEL_20;
    }

LABEL_16:
    sub_1D22BD238(v12, &qword_1EC6DA3F8);
    goto LABEL_17;
  }

  v26 = v57;
  sub_1D22BD1D0(v12, v57, &qword_1EC6DA3E0);
  if (v25(&v12[v23], 1, v4) == 1)
  {
    sub_1D23560F8(v26, type metadata accessor for ImageGenerationPerson.DemographicTraits);
    goto LABEL_16;
  }

  sub_1D2356210(&v12[v23], v6, type metadata accessor for ImageGenerationPerson.DemographicTraits);
  v29 = _s23ImagePlaygroundInternal0A16GenerationPersonV17DemographicTraitsV2eeoiySbAE_AEtFZ_0(v26, v6);
  sub_1D23560F8(v6, type metadata accessor for ImageGenerationPerson.DemographicTraits);
  sub_1D23560F8(v26, type metadata accessor for ImageGenerationPerson.DemographicTraits);
  sub_1D22BD238(v12, &qword_1EC6DA3E0);
  if (!v29)
  {
    goto LABEL_17;
  }

LABEL_20:
  v30 = v13;
  v31 = v13[7];
  v32 = *(v24 + v31);
  if (*(a1 + v31))
  {
    if (!v32)
    {
      goto LABEL_17;
    }

    type metadata accessor for CGImage(0);
    sub_1D23561C8(&qword_1ED89CDF8, type metadata accessor for CGImage);
    v33 = v32;
    v34 = sub_1D2871C48();

    if ((v34 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v32)
  {
    goto LABEL_17;
  }

  v35 = v30[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (v24 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1D2879618() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v39)
  {
    goto LABEL_17;
  }

  v40 = v30[9];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (v24 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1D2879618() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v44)
  {
    goto LABEL_17;
  }

  v45 = v30[10];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (v24 + v45);
  v49 = *(v24 + v45 + 8);
  if (v47)
  {
    if (v49)
    {
      goto LABEL_45;
    }

LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  if (*v46 != *v48)
  {
    LOBYTE(v49) = 1;
  }

  if (v49)
  {
    goto LABEL_17;
  }

LABEL_45:
  v50 = v30[11];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (v24 + v50);
  v54 = v53[1];
  v27 = (v52 | v54) == 0;
  if (v52 && v54)
  {
    if (*v51 == *v53 && v52 == v54)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_1D2879618();
    }
  }

  return v27 & 1;
}

void sub_1D2355F24()
{
  sub_1D235603C(319, qword_1ED8A6EC8, type metadata accessor for ImageGenerationPerson.DemographicTraits);
  if (v0 <= 0x3F)
  {
    sub_1D235603C(319, &qword_1ED8A6D10, type metadata accessor for CGImage);
    if (v1 <= 0x3F)
    {
      sub_1D22F3EA0(319, qword_1ED8A6D28);
      if (v2 <= 0x3F)
      {
        sub_1D22F3EA0(319, &qword_1ED8A6D20);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D235603C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2356090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23560F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2356158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23561C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2356210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}